unit Despacho_Cobradores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, wwDataInspector, AdvPageControl, ComCtrls, Wwdbigrd,
  Wwdbgrid, ActnMan, Buttons, ActnList, XPStyleActnCtrls,
  ToolWin, ActnCtrls, Db, StdCtrls, wwdbdatetimepicker, Mask, DBCtrls, ExtCtrls,
  RegKeys, SUIButton, Menus, wwdblook, SUIPopupMenu, wwriched;

type
  TFDespacho_Cobradores = class(TForm)
    Panel_Cobradores: TAdvPageControl;
    Pg_Cobradores: TAdvTabSheet;
    Panel_Despacho: TAdvPageControl;
    Pg_Despacho: TAdvTabSheet;
    Opciones: TActionManager;
    Salir: TAction;
    Buscar_Cobrador: TAction;
    Panel_Botones: TAdvPageControl;
    Pg_Botones: TAdvTabSheet;
    Botones: TActionToolBar;
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
    Comentarios: TwwDBRichEdit;
    Label8: TLabel;
    Status: TDBEdit;
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
    procedure BuscarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function ImprimirRecibo(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;

var
  FDespacho_Cobradores : TFDespacho_Cobradores;

implementation

uses Utilidades,  Reports_Forms, Generales, CnfgForms,
  Autorizar, DotmatrX, DataModulo;

{$R *.dfm}

procedure TFDespacho_Cobradores.FormCreate(Sender: TObject);
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
      RegInfo.OpenKey(_DespachoCobradorKey,False);

      chk_Vista_Previa.Checked := RegInfo.ReadBool(_PreviewForm);

      {Abrir las Tablas Requeridas}
      Modulo.tParametros.Params.ParamByName('Terminal').AsString := _CurrentTerminal;
      Modulo.tParametros.Open;

      Modulo.tCuadre_Cobrador.Params.ParamByName('Empleado').Clear;
      Modulo.tEmpleados.Params.ParamByName('Cedula_Rnc_Pasaporte').Clear;

      Modulo.tEmpleados.Open;
      Modulo.tCuadre_Cobrador.Open;
    End; {If _Load_Create}

  end;

procedure TFDespacho_Cobradores.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFDespacho_Cobradores.BuscarExecute(Sender: TObject);
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

      Modulo.tCuadre_Cobrador.Filtered := False;
      Modulo.tCuadre_Cobrador.Cancel;
      Modulo.tCuadre_Cobrador.Params.ParamByName('Proceso').AsString := S;
      Modulo.tCuadre_Cobrador.Refresh;
      FOTOLoadAndDisplay(Modulo.tEmpleadosFoto,FOTO,_DefaultClientImg);

      Modulo.tEmpleados.Cancel;
      Modulo.tEmpleados.Params.ParamByName('Cedula_Rnc_Pasaporte').AsString := Modulo.tCuadre_CobradorEmpleado.Value;
      Modulo.tEmpleados.Refresh;

      If Modulo.tCuadre_CobradorStatus.Value <> _stACTIVO Then
        Mensaje ('Despacho numero : ' + Modulo.tCuadre_CobradorNumero.Text + ' con estatus NO MODIFICABLE ' + Modulo.tCuadre_CobradorStatus.Text);

      Modulo.tCuadre_Cobrador.Filtered := False;
      FOTOLoadAndDisplay(Modulo.tEmpleadosFoto,FOTO,_DefaultClientImg)
    end;
end;

procedure TFDespacho_Cobradores.Buscar_CobradorExecute(Sender: TObject);
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

  If R = MrOk Then
    Begin
      Modulo.tEmpleados.Cancel;
      Modulo.tEmpleados.CancelUpdates;
      Modulo.tEmpleados.Params.ParamByName('Cedula_Rnc_Pasaporte').AsString := S;
      Modulo.tEmpleados.Refresh;

      NuevoExecute(Buscar_Cobrador);
    End;
end;

procedure TFDespacho_Cobradores.NuevoExecute(Sender: TObject);
begin
  If Trim(Modulo.tEmpleadosCedula_Rnc_Pasaporte.Value) = '' Then
    Begin
      Mensaje ('Debe Seleccionar el Cobrador');
      Exit;
    End;

  Modulo.tReporter.Close;
  Modulo.tReporter.CommandText := 'Select * From "Cuadre_Cobrador" Where ("Empleado" = :Empleado) And ("Status" = :Status)';
  Modulo.tReporter.Params.ParamByName('Empleado').AsString := Modulo.tEmpleadosCedula_Rnc_Pasaporte.Value;
  Modulo.tReporter.Params.ParamByName('Status').AsString := _stACTIVO;
  Modulo.tReporter.Open;

  If Modulo.tReporter.RecordCount > 0 Then
    Begin
      If Ask('Este Cobrador TIENE un despacho ACTIVO'#13'Desea visualizarlo?','Despacho Activo') = IDYES Then
        Begin
          Modulo.tCuadre_Cobrador.Params.ParamByName('Empleado').Clear;
          Modulo.tCuadre_Cobrador.Params.ParamByName('Proceso').Clear;

          Modulo.tCuadre_Cobrador.Filtered := False;
          Modulo.tCuadre_Cobrador.Cancel;
          Modulo.tCuadre_Cobrador.Params.ParamByName('Proceso').AsString := Modulo.tReporter.FieldByName('Proceso').AsString;
          Modulo.tCuadre_Cobrador.Refresh;

          Modulo.tEmpleados.Cancel;
          Modulo.tEmpleados.Params.ParamByName('Cedula_Rnc_Pasaporte').AsString := Modulo.tCuadre_CobradorEmpleado.Value;
          Modulo.tEmpleados.Refresh;
        End;
      Exit;
    End;


  Modulo.tCuadre_Cobrador.Cancel;
  Modulo.tCuadre_Cobrador.Append;

  Modulo.tCuadre_CobradorProceso.Value := Gen_ProcessNumber(_CurrentUser);
  Modulo.tCuadre_CobradorFecha.Value := Modulo.Enlace.AppServer.ServerDate;
  Modulo.tCuadre_CobradorHora_Apertura.Value := Modulo.Enlace.AppServer.ServerTime;
  Modulo.tCuadre_CobradorUsuario.Value := _CurrentUser;
  Modulo.tCuadre_CobradorEmpleado.Value := Modulo.tEmpleadosCedula_Rnc_Pasaporte.Value;
  Modulo.tCuadre_CobradorStatus.Value := _stACTIVO;

  Modulo.tDetalles_Dieta_Cuadre.Append;
  Modulo.tDetalles_Dieta_CuadreID.Value := Modulo.tEmpleadosCedula_Rnc_Pasaporte.Value;
  Modulo.tDetalles_Dieta_CuadreNombre.Value := Modulo.tEmpleadosNombreCompleto.Value;
  Modulo.tDetalles_Dieta_CuadreMonto.Value := 0;
  Modulo.tDetalles_Dieta_Cuadre.Post;

  Cantidad_Tarjetas_Despachadas.SetFocus
end;

procedure TFDespacho_Cobradores.Configuracion_Recibo_DespachoExecute(Sender: TObject);
begin
  FConfigForms := TFConfigForms.Create(Nil);
  FConfigForms._Seccion := _DespachoCobradorKey;
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

procedure TFDespacho_Cobradores.Cuotas_FacturaCalcCellColors(Sender: TObject;
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

procedure TFDespacho_Cobradores.Cuotas_FacturaDblClick(Sender: TObject);
begin
  Mensaje(Modulo.tCuotas_FacturasConcepto.Value + #13'PENDIENTE :' +Modulo.tCuotas_FacturasTotal_Pendiente.Text) 
end;

procedure TFDespacho_Cobradores.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFDespacho_Cobradores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Modulo.tEmpleados.Params.ParamByName('Cedula_Rnc_Pasaporte').AsString := '';
  Modulo.tCuadre_Cobrador.Params.ParamByName('Proceso').AsString := '';
end;

procedure TFDespacho_Cobradores.GuardarExecute(Sender: TObject);
begin
  Comentarios.SetFocus;

  If Modulo.tCuadre_CobradorStatus.Value <> _stACTIVO Then
    begin
      Mensaje('Despacho con Estatus NO MODIFICABLE : ' + Modulo.tCuadre_CobradorStatus.Value);
      Modulo.tCuadre_Cobrador.CancelUpdates;
      Exit;
    end;

  If Modulo.tCuadre_Cobrador.State In DsEditModes Then Modulo.tCuadre_Cobrador.Post;

  If Modulo.tCuadre_Cobrador.ChangeCount > 0 Then Modulo.tCuadre_Cobrador.ApplyUpdates(0);

  Modulo.tCuadre_Cobrador.Refresh;

  Modulo.tEmpleados.Refresh;

  PopUpMessage(Modulo.Mensajes,_DatosGuardados);
end;

procedure TFDespacho_Cobradores.ImprimirExecute(Sender: TObject);
  Var
    DoPreview    : Boolean;
    OutputFormat : ShortInt;
    PrintFormat  : ShortInt;

begin
  GuardarExecute(Imprimir);
  RegInfo.CloseKey;
  RegInfo.OpenKey(_DespachoCobradorKey,False);

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
                     RegInfo.OpenKey(_DespachoCobradorKey,False);
                     With ReportsAndForms.FormDespacho_Cobrador Do
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

                         ReportsAndForms._Seccion  := _DespachoCobradorKey;

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
    RegInfo.OpenKey(_DespachoCobradorKey,False);

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
  RegisterClass(TFDespacho_Cobradores);

  end.
