unit NotasDebito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, wwDataInspector, AdvPageControl, ComCtrls, Wwdbigrd,
  Wwdbgrid, ActnMan, Buttons, ActnList, XPStyleActnCtrls,
  ToolWin, ActnCtrls, Db, StdCtrls, wwdbdatetimepicker, Mask, DBCtrls, ExtCtrls,
  RegKeys, SUIButton, Menus, wwdblook, SUIPopupMenu, wwclearbuttongroup,
  wwradiogroup;

type
  TFNotas_Debito = class(TForm)
    Panel_Facturas: TAdvPageControl;
    Pg_Facturas: TAdvTabSheet;
    Opciones: TActionManager;
    Salir: TAction;
    Buscar_Cliente: TAction;
    Panel_Botones: TAdvPageControl;
    Pg_Botones: TAdvTabSheet;
    Botones: TActionToolBar;
    Pagar: TAction;
    Estado_Cuentas: TAction;
    Imprimir_Comprobante: TAction;
    Panel_Debitos: TPanel;
    LValorPago: TLabel;
    Valor: TDBEdit;
    LFechaPago: TLabel;
    Fecha: TwwDBDateTimePicker;
    chk_Imprimir_Recibo: TCheckBox;
    Label1: TLabel;
    Concepto: TDBEdit;
    Aplicar: TAction;
    Cancelar: TAction;
    bt_Aplicar_Credito: TsuiButton;
    Bt_Cancelar_Credito: TsuiButton;
    Imprimir_Ficha_Prestamo: TAction;
    Configuracion_Comprobante_Nota: TAction;
    Opciones_Miscelaneas: TsuiPopupMenu;
    Pop_Imprimir_Factura: TMenuItem;
    Pop_Configuracion_Nota_Credito: TMenuItem;
    Configuracion_Ficha_Prestamo: TAction;
    Pop_Configuracion_Facturas: TMenuItem;
    N1: TMenuItem;
    chk_Vista_Previa: TCheckBox;
    Panel_Notas: TAdvPageControl;
    Pg_Notas: TAdvTabSheet;
    Aplicado_A: TwwRadioGroup;
    Label2: TLabel;
    Vence: TwwDBDateTimePicker;
    Panel_Clientes: TAdvPageControl;
    Pg_Clientes: TAdvTabSheet;
    Recuadro_Foto: TShape;
    FOTO: TImage;
    Bt_Buscar_Cliente: TsuiButton;
    Datos_Cliente: TwwDataInspector;
    Facturas_Cliente: TwwDBGrid;
    Facturas_ClienteIButton: TwwIButton;
    Notas_Cliente: TwwDBGrid;
    procedure Estado_CuentasExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Buscar_ClienteExecute(Sender: TObject);
    procedure PagarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AplicarExecute(Sender: TObject);
    procedure Facturas_ClienteCalcCellColors(Sender: TObject;
      Field: TField; State: TGridDrawState; Highlight: Boolean;
      AFont: TFont; ABrush: TBrush);
    procedure Imprimir_ComprobanteExecute(Sender: TObject);
    procedure Imprimir_Ficha_PrestamoExecute(Sender: TObject);
    procedure Configuracion_Comprobante_NotaExecute(Sender: TObject);
    procedure Configuracion_Ficha_PrestamoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNotas_Debito : TFNotas_Debito;

implementation

uses DataModulo, Utilidades, Reports_Forms, Generales, CnfgForms;

{$R *.dfm}

procedure TFNotas_Debito.FormCreate(Sender: TObject);
 Var
    I : Integer;
begin
  If _Load_Create Then
    Begin
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
      Datos_Cliente.CaptionColor := Color;

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
      RegInfo.OpenKey(_NotadeDebitoKey,False);

      chk_Vista_Previa.Checked := RegInfo.ReadBool(_PreviewForm);

      {Abrir las Tablas Requeridas}
      Modulo.tParametros.Params.ParamByName('Terminal').AsString := _CurrentTerminal;
      Modulo.tParametros.Open;

      Modulo.tFacturas_Cliente.Params.ParamByName('Cliente').Clear;
      Modulo.tNotas_Debito.Params.ParamByName('Cliente').Clear;
      Modulo.tClientes.Params.ParamByName('Cedula_Rnc_Pasaporte').Clear;

      Modulo.tClientes.Open;
      Modulo.tFacturas_Cliente.Open;
      Modulo.tNotas_Debito.Open
    End; {If _Load_Create}

  end;

procedure TFNotas_Debito.Buscar_ClienteExecute(Sender: TObject);
  Var
    R : Integer;
    S : String;
begin
  S := DoSearch(Nil,
                'Clientes',                                    (* TableName *)
                'SrchPr',                                      (* Provider *)
                Modulo.tClientesCedula_Rnc_Pasaporte.FieldName,(* CampoClave *)
                Modulo.tClientesNombreCompleto.FieldName,      (* CampoInicial *)
                '',                                            (* AltQry *)
                Modulo.Enlace,                                 (* RemoteServer *)
                'A',                                           (* SortOrder *)
                -1,                                            (* Packet Records *)
                wsMaximized,
                R);
  If R = MrOk Then
    Begin
          Modulo.tClientes.Cancel;
          Modulo.tClientes.Params.ParamByName('Cedula_Rnc_Pasaporte').AsString := S;
          Modulo.tClientes.Refresh;

          Modulo.tFacturas_Cliente.Cancel;
          Modulo.tFacturas_Cliente.Params.ParamByName('Cliente').AsString := Trim(Modulo.tClientesCedula_Rnc_Pasaporte.AsString);
          Modulo.tFacturas_Cliente.Refresh;

          Modulo.tNotas_Debito.Cancel;
          Modulo.tNotas_Debito.Params.ParamByName('Cliente').AsString := Trim(Modulo.tClientesCedula_Rnc_Pasaporte.AsString);
          Modulo.tNotas_Debito.Refresh;

          FOTOLoadAndDisplay(Modulo.tClientesFoto,FOTO,_DefaultClientImg)

{      Cedula_Rnc_Pasaporte.Text := S;
      Cedula_Rnc_PasaporteExit(Cedula_Rnc_Pasaporte);
      CommentTypeFilter(GenericDataModule.tComentarios,True,chk_MostrarHistorial.Checked,chk_MostrarSistema.Checked);
      ValidateEmptyField(Self,Apellido);
      UpdateInfoBoard(InfoBoard,
                      'Buscar',
                      'Cargados los datos de ' + LowerCase(_Tipo_Relacion),
                      Buscar_Registro.ImageIndex,
                      clGreen,
                      clWindowText)}
    End
end;

procedure TFNotas_Debito.PagarExecute(Sender: TObject);
begin
  If Modulo.tFacturas_ClientePendiente.Value <= _Margen Then
    Begin
      PopUpMessage(ModuloGenerales.Mensajes,_NoBalanceFacturasPendientes);
      Exit
    End;


  RegInfo.CloseKey;
  RegInfo.OpenKey(_NotadeDebitoKey,False);

  chk_Imprimir_Recibo.Checked := RegInfo.ReadBool(_Desglosar_Formularios);

  Modulo.tNotas_Debito.Cancel;
  Modulo.tNotas_Debito.Append;
  Modulo.tNotas_DebitoProceso.Value := Gen_ProcessNumber(_CurrentUser);
  Modulo.tNotas_Debito.Params.ParamByName('Proceso').AsString := Modulo.tNotas_DebitoProceso.Value;
  Modulo.tNotas_DebitoFecha.Value := Modulo.Enlace.AppServer.ServerDate;
//  Modulo.tNotas_DebitoVence.Value := Modulo.Enlace.AppServer.ServerDate;
  Modulo.tNotas_DebitoHora.Value := Modulo.Enlace.AppServer.ServerTime;
//  Modulo.tNotas_DebitoUsuario.Value := _CurrentUser;
  Modulo.tNotas_DebitoConcepto.Value := Format(_ConceptoNotasDebito,[Modulo.tNotas_DebitoFecha.Text,Modulo.tFacturas_ClienteNumero.Text]);
  Modulo.tNotas_DebitoCliente.Value := Modulo.tClientesCedula_Rnc_Pasaporte.Value;
//  Modulo.tNotas_DebitoFactura.Value := Modulo.tFacturas_ClienteProceso.Value;
  Panel_Debitos.Visible := True;

  Botones.Enabled := False;
  Buscar_Cliente.Enabled := False;

  Valor.SetFocus
end;

procedure TFNotas_Debito.CancelarExecute(Sender: TObject);
begin
  Botones.Enabled := True;
  Buscar_Cliente.Enabled := True;
  Modulo.tNotas_Debito.Cancel;
  Modulo.tNotas_Debito.CancelUpdates;
  Panel_Debitos.Visible := False
end;

procedure TFNotas_Debito.Configuracion_Ficha_PrestamoExecute(Sender: TObject);
begin
  FConfigForms := TFConfigForms.Create(Nil);
  FConfigForms._Seccion := _FacturaProductosKey;
  FConfigForms.Caption := Configuracion_Ficha_Prestamo.Caption;
  FConfigForms.Desgloce.Caption := 'Imprimir Factura';
  FConfigForms.Saltar_al_Detalle.Enabled := False;
  FConfigForms.Listado.Enabled := False;
  FConfigForms.Doble_Impresion.Enabled := False;
  FConfigForms.Nuevo_Imprimir.Enabled := False;
  FConfigForms.Formato.Enabled := False;

  FConfigForms.AnchoLinea.Enabled := False;
  FConfigForms.Filas.Enabled := False;
  FConfigForms.LineasPie.Enabled := False;

  FConfigForms.AnchoLinea.Text := '0';
  FConfigForms.Filas.Text := '0';
  FConfigForms.LineasPie.Text := '0';

  If Trim(FConfigForms._Seccion) <> '' Then
    Try
      FConfigForms.LoadValues
    Finally
      FConfigForms.ShowModal;
      FConfigForms.Free
    End; // Try
end;

procedure TFNotas_Debito.Configuracion_Comprobante_NotaExecute(Sender: TObject);
begin
  FConfigForms := TFConfigForms.Create(Nil);
  FConfigForms._Seccion := _NotadeDebitoKey;
  FConfigForms.Caption := Configuracion_Comprobante_Nota.Caption;
  FConfigForms.Desgloce.Caption := 'Imprimir Comprobante';
  FConfigForms.Saltar_al_Detalle.Enabled := False;
  FConfigForms.Listado.Enabled := False;
  FConfigForms.Doble_Impresion.Enabled := False;
  FConfigForms.Nuevo_Imprimir.Enabled := False;
  FConfigForms.Formato.Enabled := False;

  FConfigForms.AnchoLinea.Enabled := False;
  FConfigForms.Filas.Enabled := False;
  FConfigForms.LineasPie.Enabled := False;

  FConfigForms.AnchoLinea.Text := '0';
  FConfigForms.Filas.Text := '0';
  FConfigForms.LineasPie.Text := '0';

  If Trim(FConfigForms._Seccion) <> '' Then
    Try
      FConfigForms.LoadValues
    Finally
      FConfigForms.ShowModal;
      FConfigForms.Free
    End; // Try
end;

procedure TFNotas_Debito.Estado_CuentasExecute(Sender: TObject);
begin
  If Modulo.tClientes.RecordCount > 0 Then
    ReportsAndForms.Estado_Cuenta_Clientes.Print
end;

procedure TFNotas_Debito.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFNotas_Debito.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Modulo.tClientes.Params.ParamByName('Cedula_Rnc_Pasaporte').AsString := '';
  Modulo.tFacturas_Cliente.Params.ParamByName('Cliente').AsString := '';
  Modulo.tNotas_Debito.Params.ParamByName('Cliente').AsString := '';
end;

procedure TFNotas_Debito.AplicarExecute(Sender: TObject);
begin
  Concepto.SetFocus;

//  If Modulo.tNotas_Debito.Value <= 0 Then
  //  Raise Exception.Create(_ErrMontoMenorCero);

  If Modulo.tFacturas_ClientePendiente.Value <= _Margen Then
    Begin
      PopUpMessage(ModuloGenerales.Mensajes,_NoBalancePendientes);
      Exit
    End;

  Modulo.tDetalles_Notas_Debito.Append;
  Modulo.tDetalles_Notas_DebitoProceso.Value := Modulo.tFacturas_ClienteProceso.Value;
//  Modulo.tDetalles_Notas_DebitoNota.Value := Modulo.tNotas_DebitoProceso.Value;
  Modulo.tReporter.Close;
  Modulo.tReporter.CommandText := 'Select Max("Numero") Ultima From "Cuotas" Where "Proceso" = ' + QuotedStr(Trim(Modulo.tFacturas_ClienteProceso.Value));
  Modulo.tReporter.Open;
  Modulo.tDetalles_Notas_DebitoNumero.Value := Modulo.tReporter.FieldByName('Ultima').AsInteger + 1;
  Modulo.tReporter.Close;
  Modulo.tDetalles_Notas_DebitoFecha.Value := Modulo.tNotas_DebitoFecha.Value;
//  Modulo.tDetalles_Notas_DebitoVence.Value := Modulo.tNotas_DebitoVence.Value;
  Modulo.tDetalles_Notas_DebitoConcepto.Value := Modulo.tNotas_DebitoConcepto.Value;
  Modulo.tDetalles_Notas_DebitoPrioridad.Value := 'N';
//  Modulo.tDetalles_Notas_DebitoTotal_Pendiente.Value := Modulo.tNotas_DebitoMonto.Value;
//  Modulo.tDetalles_Notas_DebitoMonto.Value := Modulo.tNotas_DebitoMonto.Value;
  Case Aplicado_A.ItemIndex Of
    0 : Begin
          Modulo.tDetalles_Notas_DebitoTipo.Value := _Solo_Capital;
    //      Modulo.tDetalles_Notas_DebitoCapital.Value := Modulo.tNotas_DebitoMonto.Value;
  //        Modulo.tDetalles_Notas_DebitoCapital_Pendiente.Value := Modulo.tNotas_DebitoMonto.Value;
      //    Modulo.tNotas_DebitoCapital.Value := Modulo.tNotas_DebitoMonto.Value;
        End;

    1 : Begin
          Modulo.tDetalles_Notas_DebitoTipo.Value := _Solo_Interes;
        //  Modulo.tDetalles_Notas_DebitoInteres.Value := Modulo.tNotas_DebitoMonto.Value;
          //Modulo.tDetalles_Notas_DebitoInteres_Pendiente.Value := Modulo.tNotas_DebitoMonto.Value;
          //Modulo.tNotas_DebitoInteres.Value := Modulo.tNotas_DebitoMonto.Value;
        End;

    2 : Begin
          Modulo.tDetalles_Notas_DebitoTipo.Value := _Mora;
//          Modulo.tDetalles_Notas_DebitoMora.Value := Modulo.tNotas_DebitoMonto.Value;
  //        Modulo.tDetalles_Notas_DebitoMora_Pendiente.Value := Modulo.tNotas_DebitoMonto.Value;
    //      Modulo.tNotas_DebitoMora.Value := Modulo.tNotas_DebitoMonto.Value;
        End;

    3 : Begin
          Modulo.tDetalles_Notas_DebitoTipo.Value := _Otros_Cargos;
      //    Modulo.tDetalles_Notas_DebitoOtros.Value := Modulo.tNotas_DebitoMonto.Value;
        //  Modulo.tDetalles_Notas_DebitoOtros_Pendiente.Value := Modulo.tNotas_DebitoMonto.Value;
          //Modulo.tNotas_DebitoOtros.Value := Modulo.tNotas_DebitoMonto.Value;
        End;

  End; {Case}

  {Guardar El Detalle}
  Modulo.tDetalles_Notas_Debito.Post;

  {Actualizar La Nota}
//  Modulo.tNotas_DebitoTotal_Nota.Value := Modulo.tNotas_DebitoMonto.Value;
  Modulo.tNotas_Debito.Post;

  If Modulo.tNotas_Debito.ChangeCount > 0 Then Modulo.tNotas_Debito.ApplyUpdates(0);
  Modulo.tNotas_Debito.Refresh;

  //Modulo.Enlace.AppServer.Set_Loan_Balance(Modulo.tFacturas_ClienteProceso.Value);
  Modulo.tFacturas_Cliente.Refresh;

  Cancelar.Execute;

  If chk_Imprimir_Recibo.Checked Then Imprimir_ComprobanteExecute(Sender)
end;

procedure TFNotas_Debito.Facturas_ClienteCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  If (Modulo.tFacturas_ClientePendiente.Value <= _Margen) Then
    Begin
      If (not Highlight) Then ABrush.Color := $00A5F1C1;
      AFont.Color := clBlue
    End;

  If Highlight Then AFont.Color := clYellow
end;

procedure TFNotas_Debito.Imprimir_ComprobanteExecute(Sender: TObject);
begin
  If Modulo.tNotas_Debito.RecordCount > 0 Then
    Begin
      RegInfo.CloseKey;
      RegInfo.OpenKey(_NotadeDebitoKey,False);

       With ReportsAndForms.Comprobante_Nota_Debito Do
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

           ReportsAndForms._Seccion  := _NotadeDebitoKey;

           Print
         End // With

    End
end;

procedure TFNotas_Debito.Imprimir_Ficha_PrestamoExecute(Sender: TObject);
  Var
    DoPreview    : Boolean;

  Const
    DeviceTypes  : Array [False..True] Of String = ('Printer','Screen');

begin
  Try
    Modulo.tFacturas.Close;
    Modulo.tFacturas.Params.ParamByName('Proceso').AsString := Modulo.tFacturas_ClienteProceso.AsString;
    Modulo.tFacturas.Open;
//    Modulo.tPeriodos.Open;

    RegInfo.CloseKey;
    RegInfo.OpenKey(_FacturaProductosKey,False);
    DoPreview := RegInfo.ReadBool(_PreviewForm);
    With ReportsAndForms.FormFactura Do
      Begin
        Template.FileName := RegInfo.ReadString(_TemplateFileName);

        If (Trim(Template.FileName) <> _NoneStr) And (Trim(Template.FileName) <> '') Then
          Template.LoadFromFile;

        DeviceType                := DeviceTypes[DoPreview];
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

        ReportsAndForms._Seccion  := _FacturaProductosKey;
        Print
      End // With

  Finally
    Modulo.tFacturas.Params.ParamByName('Proceso').Clear
  End {Try}
end;

Initialization
  RegisterClass(TFNotas_Debito);

end.
