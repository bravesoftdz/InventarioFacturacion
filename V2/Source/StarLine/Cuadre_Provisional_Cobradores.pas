unit Cuadre_Provisional_Cobradores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, wwDataInspector, AdvPageControl, ComCtrls, Wwdbigrd,
  Wwdbgrid, ActnMan, Buttons, ActnList, XPStyleActnCtrls,
  ToolWin, ActnCtrls, Db, StdCtrls, wwdbdatetimepicker, Mask, DBCtrls, ExtCtrls,
  RegKeys, SUIButton, Menus, wwdblook, SUIPopupMenu, wwriched;

type
  TFCuadre_Cobradores = class(TForm)
    Panel_Cobradores: TAdvPageControl;
    Pg_Cobradores: TAdvTabSheet;
    Panel_Despacho: TAdvPageControl;
    Pg_Despacho: TAdvTabSheet;
    Opciones: TActionManager;
    Salir: TAction;
    Buscar_Cobrador: TAction;
    Nuevo: TAction;
    Imprimir: TAction;
    Guardar: TAction;
    Buscar: TAction;
    Bt_Buscar_Cobrador: TsuiButton;
    Recuadro_Foto: TShape;
    FOTO: TImage;
    Configuracion_Recibo_Despacho: TAction;
    Opciones_Miscelaneas: TsuiPopupMenu;
    Pop_Imprimir_Factura: TMenuItem;
    Pop_Configuracion_Nota_Credito: TMenuItem;
    Pop_Configuracion_Facturas: TMenuItem;
    N1: TMenuItem;
    chk_Vista_Previa: TCheckBox;
    Opciones_Recibos: TsuiPopupMenu;
    AnularPago1: TMenuItem;
    Datos_Cobrador: TwwDataInspector;
    Label1: TLabel;
    Numero: TDBEdit;
    Label2: TLabel;
    Fecha: TDBEdit;
    Label3: TLabel;
    Hora_Apertura: TDBEdit;
    Label4: TLabel;
    Recibos_Desde: TDBEdit;
    Label5: TLabel;
    Recibos_Hasta: TDBEdit;
    Label6: TLabel;
    Efectivo_Entregado: TDBEdit;
    Label7: TLabel;
    Cantidad_Tarjetas_Despachadas: TDBEdit;
    Status: TDBEdit;
    Label9: TLabel;
    Contratos_Saldados: TDBEdit;
    Label10: TLabel;
    Devoluciones: TDBEdit;
    Label11: TLabel;
    Mudados: TDBEdit;
    Monto_Cobrado: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    Contratos_Abonados: TDBEdit;
    Monto_Recibido: TDBEdit;
    Label14: TLabel;
    Detalles_Gastos: TwwDBGrid;
    Facturas_ClienteIButton: TwwIButton;
    Label8: TLabel;
    Comentarios: TwwDBRichEdit;
    Detalles_Dietas: TwwDBGrid;
    wwIButton1: TwwIButton;
    Label15: TLabel;
    Total_Gastos: TDBEdit;
    Label16: TLabel;
    Prestamos: TDBEdit;
    Label17: TLabel;
    Total_Dieta: TDBEdit;
    Label18: TLabel;
    Diferencia: TDBEdit;
    bt_Anadir_Gastos: TSpeedButton;
    Agregar_Gastos: TAction;
    Tipo_Diferencia: TDBEdit;
    Botones: TActionToolBar;
    Label19: TLabel;
    Cantidad_Facturas_Gastos: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure Buscar_CobradorExecute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GuardarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure Configuracion_Recibo_DespachoExecute(Sender: TObject);
    procedure Cuotas_FacturaCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure Cuotas_FacturaDblClick(Sender: TObject);
    Procedure LoadData (Const ID : String);
    Procedure Load_Details;
    procedure BuscarExecute(Sender: TObject);
    procedure bt_Anadir_GastosClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Agregar_GastosExecute(Sender: TObject);
    procedure Detalles_DietasEnter(Sender: TObject);
    procedure Detalles_DietasExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function ImprimirRecibo(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;

var
  FCuadre_Cobradores : TFCuadre_Cobradores;

implementation

uses DataModulo, Utilidades,  Reports_Forms, Generales, CnfgForms,
  Autorizar, DotmatrX;

{$R *.dfm}

procedure TFCuadre_Cobradores.FormCreate(Sender: TObject);
 Var
    I : Integer;
begin
  If _Load_Create Then
    Begin
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
      Datos_Cobrador.CaptionColor := Color;

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);

      {Asigna a los Botones Los ShortCuts Del Menu y Action Lists}
      For I := 0 To (Self.ComponentCount - 1) Do
        Begin
          If (Self.Components[I] Is TAdvPageControl) Then
             (Self.Components[I] As TAdvPageControl).TabBackGroundColor := Color
        End;

      RegInfo.CloseKey;
      RegInfo.OpenKey(_CuadreCobradorKey,False);

      chk_Vista_Previa.Checked := RegInfo.ReadBool(_PreviewForm);

      {Abrir las Tablas Requeridas}
      Modulo.tParametros.Params.ParamByName('Terminal').AsString := _CurrentTerminal;
      Modulo.tParametros.Open;

      Modulo.tCuadre_Cobrador.Params.ParamByName('Empleado').Clear;
      Modulo.tEmpleados.Params.ParamByName('Cedula_Rnc_Pasaporte').Clear;

      Modulo.tEmpleados.Open;
      Modulo.tCuadre_Cobrador.Open;

      If Trim(_Cliente) <> '' Then LoadData(_Cliente)
    End; {If _Load_Create}

  end;

procedure TFCuadre_Cobradores.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  Found : TWinControl;
begin
  Case Key Of

    VK_RETURN,
    VK_NEXT    :
      Begin
        Found := FindNextControl(ActiveControl,True, True, False);
        Found.SetFocus
      End;

    VK_PRIOR   :
      Begin
        Found := FindNextControl(ActiveControl,False, True, False);
        Found.SetFocus
      End;
  End {Case}
end;

Procedure TFCuadre_Cobradores.LoadData (Const ID : String);
  Begin
    Diferencia.Visible := False;
    Tipo_Diferencia.Visible := False;

    Modulo.tEmpleados.Cancel;
    Modulo.tEmpleados.Params.ParamByName('Cedula_Rnc_Pasaporte').AsString := ID;
    Modulo.tEmpleados.Refresh;

    Modulo.tReporter.Close;
    Modulo.tReporter.CommandText := 'Select * From "Cuadre_Cobrador" Where ("Empleado" = :Empleado) And ("Status" = :Status)';
    Modulo.tReporter.Params.ParamByName('Empleado').AsString := Modulo.tEmpleadosCedula_Rnc_Pasaporte.Value;
    Modulo.tReporter.Params.ParamByName('Status').AsString := _stACTIVO;
    Modulo.tReporter.Open;

    If Modulo.tReporter.RecordCount = 0 Then
      Begin
        Mensaje ('Este Cobrador NO TIENE un despacho ACTIVO'#13'Por Favor, Verifique');
        Exit;
      End;

    Modulo.tCuadre_Cobrador.Params.ParamByName('Empleado').Clear;
    Modulo.tCuadre_Cobrador.Params.ParamByName('Proceso').Clear;

    Modulo.tCuadre_Cobrador.Filtered := False;
    Modulo.tCuadre_Cobrador.Cancel;
    Modulo.tCuadre_Cobrador.Params.ParamByName('Proceso').AsString := Modulo.tReporter.FieldByName('Proceso').AsString;
    Modulo.tCuadre_Cobrador.Refresh;

    Load_Details;
    FOTOLoadAndDisplay(Modulo.tEmpleadosFoto,FOTO,_DefaultClientImg);
    Mensaje ('Modificando Despacho ACTIVO Numero : ' + Modulo.tCuadre_CobradorNumero.Text);
  End;

procedure TFCuadre_Cobradores.Agregar_GastosExecute(Sender: TObject);
  Var
    S : String;
begin
  S := '';
  S := InputBox('Descripcion del Renglon','Digite la descripcion para el renglon:',S);
  If Trim(S) <> '' Then
    Begin
      S := UpperCase(S);
      If Modulo.tRenglones_Gastos.Locate ('Nombre',S,[]) Then Exit;
      Modulo.tRenglones_Gastos.Append;
      Modulo.tRenglones_GastosNombre.Value := S;
      Modulo.tRenglones_GastosStatus.Value := _stACTIVO;
      Modulo.tRenglones_Gastos.Post;
      Modulo.tRenglones_Gastos.ApplyUpdates(0);

      If Modulo.tDetalle_Gastos_Cuadre.Locate ('Renglon',S,[]) Then Exit;
      Modulo.tDetalle_Gastos_Cuadre.Append;
      Modulo.tDetalle_Gastos_CuadreRenglon.Value := S;
    End;

end;

procedure TFCuadre_Cobradores.bt_Anadir_GastosClick(Sender: TObject);
begin
  Agregar_Gastos.Execute
end;

Procedure TFCuadre_Cobradores.Load_Details;
  Begin
      // Renglones de Gastos
      Try
        Modulo.tRenglones_Gastos.Open;
        Modulo.tRenglones_Gastos.First;
        Modulo.tDetalle_Gastos_Cuadre.BeforePost := Nil;
        While Not Modulo.tRenglones_Gastos.Eof Do
          Begin
            If Modulo.tRenglones_GastosStatus.Value <> _stACTIVO Then Continue;

            If Not Modulo.tDetalle_Gastos_Cuadre.Locate(Modulo.tDetalle_Gastos_CuadreRenglon.FieldName,
                                                       Modulo.tRenglones_GastosNombre.Value,[]) Then
              Modulo.tDetalle_Gastos_Cuadre.Append
            Else
              Modulo.tDetalle_Gastos_Cuadre.Edit;

            Modulo.tDetalle_Gastos_CuadreRenglon.Value := Modulo.tRenglones_GastosNombre.Value;
            If Trim (Modulo.tDetalle_Gastos_CuadreUsuario_Recibido.Value) = '' Then Modulo.tDetalle_Gastos_CuadreUsuario_Recibido.Value := _CurrentUser;
            Modulo.tDetalle_Gastos_Cuadre.Post;
            Modulo.tRenglones_Gastos.Next;
          End
      Finally
//        Modulo.tDetalle_Gastos_Cuadre.BeforePost := Modulo.tDetalle_Gastos_CuadreBeforePost;
        Modulo.tDetalle_Gastos_Cuadre.First;
      End; {Try}

      // Detalles de Dietas
      Try
        Modulo.tListadoVendedores.Open;
        Modulo.tListadoVendedores.First;
        Modulo.tDetalles_Dieta_Cuadre.BeforePost := Nil;
        While Not Modulo.tListadoVendedores.Eof Do
          Begin
            If Modulo.tListadoVendedoresStatus.Value <> _stACTIVO Then Continue;

            If Not Modulo.tDetalles_Dieta_Cuadre.Locate(Modulo.tDetalles_Dieta_CuadreID.FieldName,
                                                       Modulo.tListadoVendedoresCedula_Rnc_Pasaporte.Value,[]) Then
              Modulo.tDetalles_Dieta_Cuadre.Append
            Else
              Modulo.tDetalles_Dieta_Cuadre.Edit;

            Modulo.tDetalles_Dieta_CuadreID.Value := Modulo.tListadoVendedoresCedula_Rnc_Pasaporte.Value;
            Modulo.tDetalles_Dieta_CuadreNombre.Value := Modulo.tListadoVendedoresNombreCompleto.Value;
            Modulo.tDetalles_Dieta_Cuadre.Post;
            Modulo.tListadoVendedores.Next
          End;

        Modulo.tReporter.Close;
        Modulo.tReporter.CommandText := 'Select * From "Empleados" Where "Status" = ' + QuotedStr(_stACTIVO);
        Modulo.tReporter.Open;

        While Not Modulo.tReporter.Eof Do
          Begin

            If Not Modulo.tDetalles_Dieta_Cuadre.Locate(Modulo.tDetalles_Dieta_CuadreID.FieldName,
                                                       Modulo.tReporter.FieldByName('Cedula_Rnc_Pasaporte').AsString,[]) Then
              Modulo.tDetalles_Dieta_Cuadre.Append
            Else
              Modulo.tDetalles_Dieta_Cuadre.Edit;

            Modulo.tDetalles_Dieta_CuadreID.Value := Modulo.tReporter.FieldByName('Cedula_Rnc_Pasaporte').AsString;
            Modulo.tDetalles_Dieta_CuadreNombre.Value := Modulo.tReporter.FieldByName('NombreCompleto').AsString;
            Modulo.tDetalles_Dieta_Cuadre.Post;
            Modulo.tReporter.Next
          End;
      Finally
//        Modulo.tDetalles_Dieta_Cuadre.BeforePost := Modulo.tDetalles_Dieta_CuadreBeforePost;
        Modulo.tListadoVendedores.Close;
        Modulo.tDetalles_Dieta_Cuadre.First
      End {Try}

  End;

procedure TFCuadre_Cobradores.BuscarExecute(Sender: TObject);
  Var
    R : Integer;
    S : String;
begin
  S := DoSearch(Nil,
                'Cuadre_Cobrador',                               (* TableName *)
                'SrchPr',                                        (* Provider *)
                Modulo.tCuadre_CobradorProceso.FieldName,        (* CampoClave *)
                Modulo.tCuadre_CobradorNombre_Empleado.FieldName,(* CampoInicial *)
                '',                                              (* AltQry *)
                Modulo.Enlace,                                   (* RemoteServer *)
                'A',                                             (* SortOrder *)
                -1,                                              (* Packet Records *)
                wsMaximized,
                R);

  If R = MrOk Then
    begin
      Modulo.tCuadre_Cobrador.Params.ParamByName('Empleado').Clear;
      Modulo.tCuadre_Cobrador.Params.ParamByName('Proceso').Clear;

      Modulo.tCuadre_Cobrador.Cancel;
      Modulo.tCuadre_Cobrador.CancelUpdates;
      Modulo.tCuadre_Cobrador.Params.ParamByName('Proceso').AsString := S;
      Modulo.tCuadre_Cobrador.Refresh;

      Modulo.tEmpleados.Cancel;
      Modulo.tEmpleados.Params.ParamByName('Cedula_Rnc_Pasaporte').AsString := Modulo.tCuadre_CobradorEmpleado.Value;
      Modulo.tEmpleados.Refresh;

      If Modulo.tCuadre_CobradorStatus.Value <> _stACTIVO Then
        Mensaje ('Despacho numero : ' + Modulo.tCuadre_CobradorNumero.Text + ' con estatus NO MODIFICABLE ' + Modulo.tCuadre_CobradorStatus.Text);

      FOTOLoadAndDisplay(Modulo.tEmpleadosFoto,FOTO,_DefaultClientImg);
      Load_Details;
      Diferencia.Visible := True;
      Tipo_Diferencia.Visible := True;
    end;
end;

procedure TFCuadre_Cobradores.Buscar_CobradorExecute(Sender: TObject);
  Var
    R : Integer;
    S : String;
begin
  S := DoSearch(Nil,
                'Empleados',                                     (* TableName *)
                'SrchPr',                                        (* Provider *)
                Modulo.tEmpleadosCedula_Rnc_Pasaporte.FieldName, (* CampoClave *)
                Modulo.tEmpleadosNombreCompleto.FieldName,       (* CampoInicial *)
                '',                                              (* AltQry *)
                Modulo.Enlace,                                   (* RemoteServer *)
                'A',                                             (* SortOrder *)
                -1,                                              (* Packet Records *)
                wsMaximized,
                R);

  If R = MrOk Then LoadData(S);
end;

procedure TFCuadre_Cobradores.NuevoExecute(Sender: TObject);
begin
  Modulo.tEmpleados.CancelUpdates;
  Modulo.tEmpleados.Append;
  Modulo.tCuadre_Cobrador.CancelUpdates;
  Modulo.tCuadre_Cobrador.Append;
  Modulo.tCuadre_CobradorStatus.Value := '*';

  Diferencia.Visible := False;
  Tipo_Diferencia.Visible := False;

  Bt_Buscar_Cobrador.SetFocus
end;

procedure TFCuadre_Cobradores.Configuracion_Recibo_DespachoExecute(Sender: TObject);
begin
  FConfigForms := TFConfigForms.Create(Nil);
  FConfigForms._Seccion := _CuadreCobradorKey;
  FConfigForms.Caption := Configuracion_Recibo_Despacho.Caption;
  FConfigForms.Desgloce.Caption := 'Imprimir Comprobante';
  FConfigForms.Saltar_al_Detalle.Enabled := False;
  FConfigForms.Listado.Enabled := False;
//  FConfigForms.Doble_Impresion.Enabled := False;
  FConfigForms.Nuevo_Imprimir.Enabled := False;
//  FConfigForms.Formato.Enabled := False;

//  FConfigForms.AnchoLinea.Enabled := False;
//  FConfigForms.Filas.Enabled := False;
//  FConfigForms.LineasPie.Enabled := False;

//  FConfigForms.AnchoLinea.Text := '0';
//  FConfigForms.Filas.Text := '0';
//  FConfigForms.LineasPie.Text := '0';

  If Trim(FConfigForms._Seccion) <> '' Then
    Try
      FConfigForms.LoadValues
    Finally
      FConfigForms.ShowModal;
      FConfigForms.Free
    End; // Try
end;

procedure TFCuadre_Cobradores.Cuotas_FacturaCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  If (Modulo.tCuotas_FacturasTipo.Value = _Otros_Cargos) Then
    Begin
      If (not Highlight) Then ABrush.Color := clWebYellow;
      AFont.Color := clBlue
    End;

  If (Modulo.tCuotas_FacturasTipo.Value = _Mora) Then
    Begin
      If (not Highlight) Then ABrush.Color := clWebOrangeRed;
      AFont.Color := clBlack
    End;

  If (Modulo.tCuotas_FacturasTipo.Value = _Solo_Capital) Or
     ((Field = Modulo.tCuotas_FacturasCapital_Pendiente) And
      (Modulo.tCuotas_FacturasCapital_Pendiente.Value > _Margen)) Then
    Begin
      If (not Highlight) Then ABrush.Color := clWebSkyBlue;
      AFont.Color := clBlack
    End;

  If (Modulo.tCuotas_FacturasVence.Value = Modulo.Enlace.AppServer.ServerDate) And
     (Modulo.tCuotas_FacturasTotal_Pendiente.Value > _Margen) Then
    Begin
      If (not Highlight) Then ABrush.Color := clWebOrange;
      AFont.Color := clBlack;
    End;

  If (Modulo.tCuotas_FacturasVence.Value < Modulo.Enlace.AppServer.ServerDate) And
     (Modulo.tCuotas_FacturasTotal_Pendiente.Value > _Margen) Then
    Begin
      If (not Highlight) Then ABrush.Color := clRed;
      AFont.Color := clYellow;
    End;

  If Highlight Then
    AFont.Color := clYellow;

  If (Modulo.tCuotas_FacturasTotal_Pendiente.Value <= _Margen) Then
    Begin
      If (not Highlight) Then ABrush.Color := $00A5F1C1;
      AFont.Color := clBlack
    End;
end;

procedure TFCuadre_Cobradores.Cuotas_FacturaDblClick(Sender: TObject);
begin
  Mensaje(Modulo.tCuotas_FacturasConcepto.Value + #13'PENDIENTE :' +Modulo.tCuotas_FacturasTotal_Pendiente.Text) 
end;

procedure TFCuadre_Cobradores.Detalles_DietasEnter(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TFCuadre_Cobradores.Detalles_DietasExit(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TFCuadre_Cobradores.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFCuadre_Cobradores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Modulo.tEmpleados.Params.ParamByName('Cedula_Rnc_Pasaporte').AsString := '';
  Modulo.tCuadre_Cobrador.Params.ParamByName('Proceso').AsString := '';
end;

procedure TFCuadre_Cobradores.GuardarExecute(Sender: TObject);
begin
  Comentarios.SetFocus;
  Try
    If Modulo.tCuadre_CobradorStatus.Value <> _stACTIVO Then
      begin
        Mensaje('Despacho con Estatus NO MODIFICABLE : ' + Modulo.tCuadre_CobradorStatus.Value);
        Modulo.tCuadre_Cobrador.CancelUpdates;
        Exit;
      end;

    If Modulo.tCuadre_Cobrador.State In DsEditModes Then
      Begin
        If Modulo.tCuadre_CobradorDiferencia.Value <> 0 Then
          If Ask('Existe una DIFERENCIA EN EL CUADRE'#13'Desea continuar?','Diferencia') = IdNO Then Exit;

        Modulo.tCuadre_CobradorStatus.Value := _stRECIBIDO;
        Modulo.tCuadre_CobradorHora_Cuadre.Value := Time();

        Modulo.tCuadre_Cobrador.Post;
      End;

    If Modulo.tCuadre_Cobrador.ChangeCount > 0 Then Modulo.tCuadre_Cobrador.ApplyUpdates(0);

    Diferencia.Visible := True;
    Tipo_Diferencia.Visible := True;

    Modulo.tCuadre_Cobrador.Refresh;

    Modulo.tEmpleados.Refresh;

    PopUpMessage(Modulo.Mensajes,_DatosGuardados);
  Finally
    If Sender = Guardar Then Nuevo.Execute;
  End;
end;

procedure TFCuadre_Cobradores.ImprimirExecute(Sender: TObject);
  Var
    DoPreview    : Boolean;
    OutputFormat : ShortInt;
    PrintFormat  : ShortInt;

begin
  GuardarExecute(Imprimir);
  RegInfo.CloseKey;
  RegInfo.OpenKey(_CuadreCobradorKey,False);

  DoPreview := chk_Vista_Previa.Checked;
  OutputFormat := RegInfo.ReadInteger(_OutputFormat);
//  PrintFormat := RegInfo.ReadInteger(_PrinterStyle);

  Case OutputFormat Of
    _Ticket : Begin
                If DoPreview Then
                  Begin
                    Application.CreateForm(TPreviewForm,PreviewForm);
                    ImprimirRecibo(_Screen,True);
                    PreviewForm.Vista.Lines.LoadFromFile(_PreviewFile);
                    PreviewForm.ShowModal;
                    If PreviewForm.ModalResult = MrOk Then DoPreview := False;
                    PreviewForm.Free
                  End; {If DoPreview}

                  If Not (DoPreview) Then ImprimirRecibo(_Port,True);
              End; // _Ticket

    _TextFormat : Begin
                    If DoPreview Then
                      Begin
                        Application.CreateForm(TPreviewForm,PreviewForm);
//                        ImprimirFactura(_Screen,Desglosar.Checked);
                        PreviewForm.Vista.Lines.LoadFromFile(_PreviewFile);
                        PreviewForm.ShowModal;
                        If PreviewForm.ModalResult = MrOk Then DoPreview := False;
                        PreviewForm.Free
                      End; {If DoPreview}

//                      If Not (DoPreview) Then ImprimirFactura(_Port,Desglosar.Checked);
                  End; // _TextFormat

    _GraphicForm : Begin
                     RegInfo.CloseKey;
                     RegInfo.OpenKey(_CuadreCobradorKey,False);
                     With ReportsAndForms.FormCuadre_Cobrador Do
                       Begin
                         Template.FileName := RegInfo.ReadString(_TemplateFileName);

                         If (Trim(Template.FileName) <> _NoneStr) And (Trim(Template.FileName) <> '') Then
                           Template.LoadFromFile;

                         DeviceType                := DeviceTypes[chk_Vista_Previa.Checked];
                         ShowPrintDialog           := RegInfo.ReadBool(_ShowPrintDialog);
                         PrinterSetup.Copies       := RegInfo.ReadInteger(_PrintCopies);
                         PrinterSetup.PaperName    := RegInfo.ReadString(_PaperName);
                         PrinterSetup.PaperHeight  := RegInfo.ReadFloat(_PaperHeight);
                         PrinterSetup.PaperWidth   := RegInfo.ReadFloat(_PaperWidth);
                         PrinterSetup.PrinterName  := RegInfo.ReadString(_PrinterName);
                         PrinterSetup.MarginBottom := RegInfo.ReadFloat(_MarginBottom);
                         PrinterSetup.MarginTop    := RegInfo.ReadFloat(_MarginTop);
                         PrinterSetup.MarginLeft   := RegInfo.ReadFloat(_MarginLeft);
                         PrinterSetup.MarginRight  := RegInfo.ReadFloat(_MarginRight);

                         ReportsAndForms._Seccion  := _CuadreCobradorKey;

                         Print
                       End // With
                   End // _GraphicForm
  End; // Case

// break

{  If Modulo.tCuadre_Cobrador.RecordCount > 0 Then
    Begin
      RegInfo.CloseKey;
      RegInfo.OpenKey(_PagosClienteKey,False);

         With ReportsAndForms.ReciboPagoCliente Do
           Begin
             Template.FileName := RegInfo.ReadString(_TemplateFileName);

             If (Trim(Template.FileName) <> _NoneStr) And (Trim(Template.FileName) <> '') Then
               Template.LoadFromFile;

             DeviceType                := DeviceTypes[chk_Vista_Previa.Checked];
             ShowPrintDialog           := RegInfo.ReadBool(_ShowPrintDialog);
             PrinterSetup.Copies       := RegInfo.ReadInteger(_PrintCopies);
             PrinterSetup.PaperName    := RegInfo.ReadString(_PaperName);
             PrinterSetup.PaperHeight  := RegInfo.ReadFloat(_PaperHeight);
             PrinterSetup.PaperWidth   := RegInfo.ReadFloat(_PaperWidth);
             PrinterSetup.PrinterName  := RegInfo.ReadString(_PrinterName);
             PrinterSetup.MarginBottom := RegInfo.ReadFloat(_MarginBottom);
             PrinterSetup.MarginTop    := RegInfo.ReadFloat(_MarginTop);
             PrinterSetup.MarginLeft   := RegInfo.ReadFloat(_MarginLeft);
             PrinterSetup.MarginRight  := RegInfo.ReadFloat(_MarginRight);

             ReportsAndForms._Seccion  := _PagosClienteKey;

             Print
           End // With

    End}
end;

Function ImprimirRecibo(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;
  Var
    Duplex              : Boolean;
    Factor              : Byte;
    LineasDespues       ,
    Idx                 ,
    I,N                 : Integer;
    Salida              ,
    Impresora           ,
    Coment_Enc          ,
    Coment_Pie1         ,
    Coment_Pie2         ,
    Coment_Pie3         ,
    Coment_Pie4         ,
    RNC                 ,
    Format_Num_Tel_Hora ,
    Format_Fecha        ,
    Separador           ,
    A,C                 ,
    F                   ,
    NumSize             : String;
    T_Capital           ,
    T_Interes           ,
    T_Mora              ,
    T_Otros             : Currency;
  Begin
    {Leer el Tipo de Impresora a Utilizar}
    RegInfo.CloseKey;
    RegInfo.OpenKey(_CuadreCobradorKey,False);

    Impresora           := RegInfo.ReadString(_Printer);
    AnchoLinea          := RegInfo.ReadInteger(_LineWidth);
    Coment_Enc          := RegInfo.ReadString(_Enc_Coment);
    Coment_Pie1         := RegInfo.ReadString(_Foot_Coment1);
    Coment_Pie2         := RegInfo.ReadString(_Foot_Coment2);
    Coment_Pie3         := RegInfo.ReadString(_Foot_Coment3);
    Separador           := RegInfo.ReadString(_LineSeparator);
    Format_Num_Tel_Hora := RegInfo.ReadString(_Format_NPH);
    Format_Fecha        := RegInfo.ReadString(_DateFormat);
    NumSize             := RegInfo.ReadString(_Num_Size);
    LineasDespues       := RegInfo.ReadInteger(_LinesAfter);
    Salida              := RegInfo.ReadString(_Salida);
    Duplex              := RegInfo.ReadBool(_Duplex);

    RegInfo.CloseKey;
    RegInfo.OpenKey(_GeneralConfigKey,False);
    Format_Fecha := RegInfo.ReadString(Trim(Format_Fecha));

    SetPrinterCodes(Impresora);

    Factor := 1;
    If OutDevice = _Port Then Factor := 2;

    BeginPrn(OutDevice,Salida);

{Encabezado}
    If OutDevice = _Port Then
      Begin
        Prn(_Init);
        Prn(_BigFont);
        Prn(_WBigFont);
      End;

    RegInfo.CloseKey;
    RegInfo.OpenKey(_CompanyInfoKey,False);
    RNC := UnEncrypt(RegInfo.ReadString(_UserCompRNC));

    // Nombre
    If Duplex Then
      Prn(CBrush(UnEncrypt(RegInfo.ReadString(_UserCompName)),AnchoLinea Div Factor));

    PrnLn(CBrush(UnEncrypt(RegInfo.ReadString(_UserCompName)),AnchoLinea Div Factor));

    If OutDevice = _Port Then Prn(_NoBigFont);

    // Comentario / Slogan
    If Trim(Coment_Enc) <> '' Then
      Begin
        If Duplex Then
          Prn(CBrush(Coment_Enc,AnchoLinea));
        PrnLn(CBrush(Coment_Enc,AnchoLinea))
      End;

    // Direccion
    If Duplex Then
      Prn(CBrush(UnEncrypt(RegInfo.ReadString(_UserCompAddres)),AnchoLinea));
    PrnLn(CBrush(UnEncrypt(RegInfo.ReadString(_UserCompAddres)),AnchoLinea));

    // RNC
    If Trim(RNC) <> '' Then
      Begin
        If Duplex Then
          Prn(CBrush(RNC,AnchoLinea));
        PrnLn(CBrush(RNC,AnchoLinea))
      End;


      // # Recibo , Telefono y Hora de Venta
    If Duplex Then
      Prn(LBrush(UnEncrypt(RegInfo.ReadString(_UserCompPhone1)),AnchoLinea Div 2)+
          RBrush(FormatDateTime('hh:mm am/pm',Modulo.tCuadre_CobradorHora_Apertura.Value),AnchoLinea Div 2));

    PrnLn(LBrush(UnEncrypt(RegInfo.ReadString(_UserCompPhone1)),AnchoLinea Div 2)+
          RBrush(FormatDateTime('hh:mm am/pm',Modulo.tCuadre_CobradorHora_Apertura.Value),AnchoLinea Div 2));

    PrnLn(#32);

    // Tipo de Recibo
    If OutDevice = _Port Then Prn(_BigFont);

    If Duplex Then
      Prn(CBrush('COMPROBANTE DE DESPACHO',(AnchoLinea Div Factor)));

    PrnLn(CBrush('COMPROBANTE DE DESPACHO',(AnchoLinea Div Factor)));

    If Duplex Then
      Prn(CBrush(UPPERCASE(Modulo.tCuadre_CobradorNumero.Text),(AnchoLinea Div Factor)));

    PrnLn(CBrush(UPPERCASE(Modulo.tCuadre_CobradorNumero.Text),(AnchoLinea Div Factor)));

    If OutDevice = _Port Then Prn(_NoBigFont);

    PrnLn(#32);

    If OutDevice = _Port Then
      Begin
        Prn(_NoBigFont);
        Prn(_Draft)
      End;

    // Fecha de Pago
    If Duplex Then
      Prn(LBrush(FormatDateTime('dddd dd "de" mmmm "del" yyyy',Modulo.tCuadre_CobradorFecha.Value),AnchoLinea));

    PrnLn(LBrush(FormatDateTime('dddd dd "de" mmmm "del" yyyy',Modulo.tCuadre_CobradorFecha.Value),AnchoLinea));

    PrnLn(#32);

{Cuerpo del Recibo}
    Split2Lines('Cobrador : '+Trim(Modulo.tEmpleadosNombreCompleto.Value),AnchoLinea,Duplex);
    PrnLn(#32);

    PrnLn(LBrush('Detalles de Despacho :',AnchoLinea));

    If Duplex Then
      Prn(Fill('-',AnchoLinea));

    PrnLn(Fill('-',AnchoLinea));


    If Duplex Then
      Prn(LBrush(UPPERCASE('Tarjetas Despachadas'),20) +
            ':'+
          RBrush(Modulo.tCuadre_CobradorCantidad_Tarjetas_Despachadas.Text,19));

    PrnLn(LBrush(UPPERCASE('Tarjetas Despachadas'),20) +
            ':'+
          RBrush(Modulo.tCuadre_CobradorCantidad_Tarjetas_Despachadas.Text,19));

    If Duplex Then
      Prn(LBrush(UPPERCASE('Recibos desde'),20) +
            ':'+
          RBrush(Modulo.tCuadre_CobradorRecibos_Desde.Text,19));

    PrnLn(LBrush(UPPERCASE('Recibos desde'),20) +
            ':'+
          RBrush(Modulo.tCuadre_CobradorRecibos_Desde.Text,19));


    If Duplex Then
      Prn(LBrush(UPPERCASE('Recibos hasta'),20) +
            ':'+
          RBrush(Modulo.tCuadre_CobradorRecibos_Hasta.Text,19));

    PrnLn(LBrush(UPPERCASE('Recibos hasta'),20) +
            ':'+
          RBrush(Modulo.tCuadre_CobradorRecibos_Hasta.Text,19));

    If Duplex Then
      Prn(LBrush(UPPERCASE('Efectivo Entregado'),20) +
            ':'+
          RBrush(Modulo.tCuadre_CobradorEfectivo_Entregado.Text,19));

    PrnLn(LBrush(UPPERCASE('Efectivo Entregado'),20) +
            ':'+
          RBrush(Modulo.tCuadre_CobradorEfectivo_Entregado.Text,19));

    If Duplex Then
      Prn(Fill('-',AnchoLinea));

    PrnLn(Fill('-',AnchoLinea));

    // Comentario
    C := Trim(Modulo.tCuadre_CobradorComentarios.Value);
    I := Length(C);
    While I > 0 Do
      Begin
        A := LBrush (Copy(C,1,AnchoLinea),AnchoLinea);
        PrnLn(A);
        Delete(C,1,AnchoLinea);
        I := Length(C)
      End;

    PrnLn(#32);
    PrnLn(#32);

    If Duplex Then
      Prn(CBrush(Fill('_',20),20) +
            Fill(' ',2)+
          CBrush(Fill('_',20),20));

    PrnLn(CBrush(Fill('_',20),20) +
            Fill(' ',2)+
          CBrush(Fill('_',20),20));

    If Duplex Then
      Prn(CBrush('Preparado Por',20) +
            Fill(' ',2)+
          CBrush('Cobrador',20));

    PrnLn(CBrush('Preparado Por',20) +
            Fill(' ',2)+
          CBrush('Cobrador',20));

    For I := 1 To LineasDespues Do
      PrnLn(#32);

    If OutDevice = _Port Then
      PrnLn(_PartialCut);

    EndPrn;
    Result := True
  End;


Initialization
  RegisterClass(TFCuadre_Cobradores);

  end.
