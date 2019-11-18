unit CtasCobrar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, wwDataInspector, AdvPageControl, ComCtrls, Wwdbigrd,
  Wwdbgrid, ActnMan, Buttons, ActnList, XPStyleActnCtrls,
  ToolWin, ActnCtrls, Db, StdCtrls, wwdbdatetimepicker, Mask, DBCtrls, ExtCtrls,
  RegKeys, SUIButton, Menus, wwdblook, SUIPopupMenu;

type
  TFCtas_Cobrar = class(TForm)
    Panel_Clientes: TAdvPageControl;
    Pg_Clientes: TAdvTabSheet;
    Panel_Facturas: TAdvPageControl;
    Pg_Facturas: TAdvTabSheet;
    Facturas_Cliente: TwwDBGrid;
    Opciones: TActionManager;
    Salir: TAction;
    Buscar_Cliente: TAction;
    Panel_Botones: TAdvPageControl;
    Pg_Botones: TAdvTabSheet;
    Botones: TActionToolBar;
    Pagar: TAction;
    Estado_Cuentas: TAction;
    Imprimir_Comprobante: TAction;
    Panel_Desgloce_Pagos: TPanel;
    LValorPago: TLabel;
    Valor_Pagar: TDBEdit;
    LFechaPago: TLabel;
    Fecha_Pago: TwwDBDateTimePicker;
    chk_Imprimir_Recibo: TCheckBox;
    Label1: TLabel;
    Concepto: TDBEdit;
    Aplicar: TAction;
    Cancelar: TAction;
    Facturas_ClienteIButton: TwwIButton;
    bt_Aplicar_Pago: TsuiButton;
    Bt_Cancelar_Credito: TsuiButton;
    Bt_Buscar_Cliente: TsuiButton;
    Imprimir_Ficha: TAction;
    Recuadro_Foto: TShape;
    FOTO: TImage;
    Configuracion_Recibo_Pago: TAction;
    Opciones_Miscelaneas: TsuiPopupMenu;
    Pop_Imprimir_Factura: TMenuItem;
    Pop_Configuracion_Nota_Credito: TMenuItem;
    Configuracion_Factura: TAction;
    Pop_Configuracion_Facturas: TMenuItem;
    N1: TMenuItem;
    PagarMora: TCheckBox;
    PagarInteres: TCheckBox;
    PagarCapital: TCheckBox;
    Panel_Cuotas: TAdvPageControl;
    Pg_Cuotas: TAdvTabSheet;
    Cuotas_Factura: TwwDBGrid;
    Panel_Pagos: TAdvPageControl;
    Pg_Pagos: TAdvTabSheet;
    Pagos_Cliente: TwwDBGrid;
    chk_Vista_Previa: TCheckBox;
    PagarOtros: TCheckBox;
    Saldar: TAction;
    Anular_Pago: TAction;
    Opciones_Recibos: TsuiPopupMenu;
    AnularPago1: TMenuItem;
    Datos_Cliente: TwwDataInspector;
    Cliente_Diario: TAction;
    suiButton1: TsuiButton;
    procedure Estado_CuentasExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Buscar_ClienteExecute(Sender: TObject);
    procedure PagarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AplicarExecute(Sender: TObject);
    Function PagarFactura (Const Monto: Currency) : Currency;
    Function PagarCuotas (Const Monto: Currency; Var Capital,Interes,Mora,Otros : Currency) : Currency;
    procedure Facturas_ClienteCalcCellColors(Sender: TObject;
      Field: TField; State: TGridDrawState; Highlight: Boolean;
      AFont: TFont; ABrush: TBrush);
    procedure Imprimir_ComprobanteExecute(Sender: TObject);
    procedure Imprimir_FichaExecute(Sender: TObject);
    procedure Configuracion_Recibo_PagoExecute(Sender: TObject);
    procedure Configuracion_FacturaExecute(Sender: TObject);
    procedure Facturas_ClienteRowChanged(Sender: TObject);
    procedure Cuotas_FacturaCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure SaldarExecute(Sender: TObject);
    procedure Cuotas_FacturaDblClick(Sender: TObject);
    procedure Anular_PagoExecute(Sender: TObject);
    procedure Pagos_ClienteCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    Procedure LoadData (Const Customer : String);
    procedure Cliente_DiarioExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function ImprimirRecibo(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;

var
  FCtas_Cobrar : TFCtas_Cobrar;

implementation

uses DataModulo, Utilidades,  Reports_Forms, Generales, CnfgForms,
  Autorizar, DotmatrX;

{$R *.dfm}

procedure TFCtas_Cobrar.FormCreate(Sender: TObject);
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
      RegInfo.OpenKey(_PagosClienteKey,False);

      chk_Vista_Previa.Checked := RegInfo.ReadBool(_PreviewForm);

      {Abrir las Tablas Requeridas}
      Modulo.tParametros.Params.ParamByName('Terminal').AsString := _CurrentTerminal;
      Modulo.tParametros.Open;

      Modulo.tFacturas_Cliente.Params.ParamByName('Cliente').Clear;
      Modulo.tPagos_Clientes.Params.ParamByName('Cliente').Clear;
      Modulo.tClientes.Params.ParamByName('Cedula_Rnc_Pasaporte').Clear;

      Modulo.tClientes.Open;
      Modulo.tFacturas_Cliente.Open;
      Modulo.tPagos_Clientes.Open;

      If Trim(_Cliente) <> '' Then LoadData(_Cliente)
    End; {If _Load_Create}

  end;

Procedure TFCtas_Cobrar.LoadData (Const Customer : String);
  Begin
    Modulo.tClientes.Cancel;
    Modulo.tClientes.Params.ParamByName('Cedula_Rnc_Pasaporte').AsString := Customer;
    Modulo.tClientes.Refresh;

    Modulo.tFacturas_Cliente.Cancel;
    Modulo.tFacturas_Cliente.Params.ParamByName('Cliente').AsString := Trim(Modulo.tClientesCedula_Rnc_Pasaporte.AsString);
    Modulo.tFacturas_Cliente.Refresh;
    Facturas_ClienteRowChanged(Buscar_Cliente);


    Modulo.tPagos_Clientes.Cancel;
    Modulo.tPagos_Clientes.Params.ParamByName('Cliente').AsString := Trim(Modulo.tClientesCedula_Rnc_Pasaporte.AsString);
    Modulo.tPagos_Clientes.Refresh;

    FOTOLoadAndDisplay(Modulo.tClientesFoto,FOTO,_DefaultClientImg)
  End;

procedure TFCtas_Cobrar.Buscar_ClienteExecute(Sender: TObject);
  Var
    R : Integer;
    S : String;
begin
  S := DoSearch(Nil,
                'Clientes',                                          (* TableName *)
                'SrchPr',                                         (* Provider *)
                Modulo.tClientesCedula_Rnc_Pasaporte.FieldName, (* CampoClave *)
                Modulo.tClientesNombreCompleto.FieldName,      (* CampoInicial *)
                '',      (* AltQry *)
                Modulo.Enlace,                                   (* RemoteServer *)
                'A',                                                              (* SortOrder *)
                -1,                                                               (* Packet Records *)
                wsMaximized,
                R);
  If R = MrOk Then
    Begin
           LoadData (S);

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

procedure TFCtas_Cobrar.PagarExecute(Sender: TObject);
begin
  If Modulo.tClientesBalance_Actual.Value <= _Margen Then
    Begin
      PopUpMessage(ModuloGenerales.Mensajes,_NoBalanceFacturasPendientes);
      Exit
    End;


  RegInfo.CloseKey;
  RegInfo.OpenKey(_PagosClienteKey,False);

  chk_Imprimir_Recibo.Checked := RegInfo.ReadBool(_Desglosar_Formularios);

  Modulo.tPagos_Clientes.Cancel;
  Modulo.tPagos_Clientes.Append;
  Modulo.tPagos_ClientesProceso.Value := Gen_ProcessNumber(_CurrentUser);
  Modulo.tPagos_ClientesFecha.Value := Modulo.Enlace.AppServer.ServerDate;
  Modulo.tPagos_ClientesHora.Value := Modulo.Enlace.AppServer.ServerTime;
  Modulo.tPagos_ClientesRecibido_Por.Value := _CurrentUser;
  Modulo.tPagos_ClientesConcepto.Value := Format(_ConceptoPagosFacturas,[Modulo.tPagos_ClientesFecha.Text,Modulo.tFacturas_ClienteNumero.Text]);
  Modulo.tPagos_ClientesCliente.Value := Modulo.tClientesCedula_Rnc_Pasaporte.Value;
  Modulo.tPagos_ClientesFactura.Value := Modulo.tFacturas_ClienteProceso.Value;
  Panel_Desgloce_Pagos.Visible := True;

  Botones.Enabled := False;
  Buscar_Cliente.Enabled := False;

  Valor_Pagar.SetFocus
end;

procedure TFCtas_Cobrar.CancelarExecute(Sender: TObject);
begin
  Botones.Enabled := True;
  Buscar_Cliente.Enabled := True;
  Modulo.tPagos_Clientes.Cancel;
  Modulo.tPagos_Clientes.CancelUpdates;
  PagarCapital.Visible := True;
  PagarInteres.Visible := True;
  PagarMora.Visible := True;
  PagarOtros.Visible := True;
  Valor_Pagar.ReadOnly := False;
  Valor_Pagar.Color := clWindow;
  Panel_Desgloce_Pagos.Visible := False
end;

procedure TFCtas_Cobrar.Cliente_DiarioExecute(Sender: TObject);
  Var
    N : Currency;
begin
  Cancelar.Execute;
  LoadData ('000-0000000-0');

  RegInfo.CloseKey;
  RegInfo.OpenKey(_PagosClienteKey,False);

  chk_Imprimir_Recibo.Checked := RegInfo.ReadBool(_Desglosar_Formularios);

  Modulo.tPagos_Clientes.Cancel;
  Modulo.tPagos_Clientes.Append;
  Modulo.tPagos_ClientesProceso.Value := Gen_ProcessNumber(_CurrentUser);
  Modulo.tPagos_ClientesFecha.Value := Modulo.Enlace.AppServer.ServerDate;
  Modulo.tPagos_ClientesHora.Value := Modulo.Enlace.AppServer.ServerTime;
  Modulo.tPagos_ClientesRecibido_Por.Value := _CurrentUser;
  Modulo.tPagos_ClientesConcepto.Value := 'Pago Diario : ' + DateToStr(Modulo.tPagos_ClientesFecha.Value);
  Modulo.tPagos_ClientesCliente.Value := Modulo.tClientesCedula_Rnc_Pasaporte.Value;
  Modulo.tPagos_ClientesFactura.Value := 'DIARIO';
  Reginfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,True);
  Try
    N := StrToCurr(RegInfo.ReadString(_PagoDiario));
    Modulo.tPagos_ClientesMonto.Value := N;
  Except End;

  Panel_Desgloce_Pagos.Visible := True;

  Botones.Enabled := False;
  Buscar_Cliente.Enabled := False;

  Valor_Pagar.SetFocus
end;

procedure TFCtas_Cobrar.Configuracion_FacturaExecute(Sender: TObject);
begin
  FConfigForms := TFConfigForms.Create(Nil);
  FConfigForms._Seccion := _FacturaProductosKey;
  FConfigForms.Caption := Configuracion_Factura.Caption;
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

procedure TFCtas_Cobrar.Configuracion_Recibo_PagoExecute(Sender: TObject);
begin
  FConfigForms := TFConfigForms.Create(Nil);
  FConfigForms._Seccion := _PagosClienteKey;
  FConfigForms.Caption := Configuracion_Recibo_Pago.Caption;
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

procedure TFCtas_Cobrar.Cuotas_FacturaCalcCellColors(Sender: TObject;
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

procedure TFCtas_Cobrar.Cuotas_FacturaDblClick(Sender: TObject);
begin
  Mensaje(Modulo.tCuotas_FacturasConcepto.Value + #13'PENDIENTE :' +Modulo.tCuotas_FacturasTotal_Pendiente.Text) 
end;

procedure TFCtas_Cobrar.Estado_CuentasExecute(Sender: TObject);
begin
  If Modulo.tClientes.RecordCount > 0 Then
    Try
      Modulo.tPagos_Clientes.Filter := 'Status <> ' + QuotedStr('ANULADO');
      Modulo.tPagos_Clientes.Filtered := True;

      Modulo.tNotas_Credito.Cancel;
      Modulo.tNotas_Credito.Params.ParamByName('Cliente').AsString := Trim(Modulo.tClientesCedula_Rnc_Pasaporte.AsString);
      Modulo.tNotas_Credito.Open;

      Modulo.tNotas_Credito.Filter := 'Status <> ' + QuotedStr('ANULADO');
      Modulo.tNotas_Credito.Filtered := True;

      ReportsAndForms.Estado_Cuenta_Clientes.Print
    Finally
      Modulo.tPagos_Clientes.Filter := '';
      Modulo.tPagos_Clientes.Filtered := False;

      Modulo.tNotas_Credito.Params.ParamByName('Cliente').Clear;
      Modulo.tNotas_Credito.Refresh;
      Modulo.tNotas_Credito.Filter := '';
      Modulo.tNotas_Credito.Filtered := False;
      Modulo.tNotas_Credito.Close
    End
end;

procedure TFCtas_Cobrar.SaldarExecute(Sender: TObject);
begin
  If Modulo.tClientesBalance_Actual.Value <= _Margen Then
    Begin
      PopUpMessage(ModuloGenerales.Mensajes,_NoBalanceFacturasPendientes);
      Exit
    End;


  RegInfo.CloseKey;
  RegInfo.OpenKey(_PagosClienteKey,False);

  chk_Imprimir_Recibo.Checked := RegInfo.ReadBool(_Desglosar_Formularios);

  Modulo.tPagos_Clientes.Cancel;
  Modulo.tPagos_Clientes.Append;
  Modulo.tPagos_ClientesProceso.Value := Gen_ProcessNumber(_CurrentUser);
  Modulo.tPagos_ClientesFecha.Value := Modulo.Enlace.AppServer.ServerDate;
  Modulo.tPagos_ClientesHora.Value := Modulo.Enlace.AppServer.ServerTime;
//  Modulo.tPagos_ClientesUsuario.Value := _CurrentUser;
  Modulo.tPagos_ClientesConcepto.Value := Format(_ConceptoSaldoFacturas,[Modulo.tFacturas_ClienteNumero.Text, Modulo.tPagos_ClientesFecha.Text]);
  Modulo.tPagos_ClientesCliente.Value := Modulo.tClientesCedula_Rnc_Pasaporte.Value;
  Modulo.tPagos_ClientesFactura.Value := Modulo.tFacturas_ClienteProceso.Value;
  Modulo.tPagos_ClientesMonto.Value := Modulo.tClientesBalance_Actual.Value;
  PagarCapital.Visible := False;
  PagarInteres.Visible := False;
  PagarMora.Visible := False;
  PagarOtros.Visible := False;
  Valor_Pagar.ReadOnly := True;
  Valor_Pagar.ParentColor := True;


  Panel_Desgloce_Pagos.Visible := True;

  Botones.Enabled := False;
  Buscar_Cliente.Enabled := False;

  bt_Aplicar_Pago.SetFocus
end;

procedure TFCtas_Cobrar.SalirExecute(Sender: TObject);
begin
  Close
end;

Function TFCtas_Cobrar.PagarFactura(Const Monto : Currency) : Currency;
  Begin
    Result := Monto;
    If Modulo.tFacturas_ClientePendiente.Value > _Margen Then
      Begin
        {Añadir a Detalle de Pagos}
        Modulo.tDetalle_Pago_Clientes.Append;
        Modulo.tDetalle_Pago_ClientesFecha.Value := Modulo.tPagos_ClientesFecha.Value;
        Modulo.tDetalle_Pago_ClientesHora.Value := Modulo.tPagos_ClientesHora.Value;
        Modulo.tDetalle_Pago_ClientesFactura.Value := Modulo.tFacturas_ClienteProceso.Value;
        Modulo.tDetalle_Pago_ClientesCliente.Value := Modulo.tClientesCedula_Rnc_Pasaporte.Value;

        If Modulo.tFacturas_ClientePendiente.Value > Monto Then
          Modulo.tDetalle_Pago_ClientesCapital.Value := Monto
        Else Modulo.tDetalle_Pago_ClientesCapital.Value := Modulo.tFacturas_ClientePendiente.Value;

        Result := Monto - Modulo.tDetalle_Pago_ClientesCapital.Value;

        Modulo.tFacturas_Cliente.Edit;
        Modulo.tFacturas_ClientePagado.Value := Modulo.tFacturas_ClientePagado.Value + Modulo.TDetalle_Pago_ClientesCapital.Value;
        Modulo.tFacturas_ClientePendiente.Value := Modulo.tFacturas_ClientePendiente.Value - Modulo.tFacturas_ClientePagado.Value;
        Modulo.tFacturas_Cliente.Post;

        Modulo.tDetalle_Pago_ClientesPendiente.Value := Modulo.tFacturas_ClientePendiente.Value;

        Modulo.tDetalle_Pago_Clientes.Post
      End
  End;

procedure TFCtas_Cobrar.Pagos_ClienteCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  If Trim(Modulo.tPagos_ClientesStatus.Value) = _stANULADO Then
    Begin
      If (not Highlight) Then ABrush.Color := clWebAquamarine;
      AFont.Color := clBlack
    End;
end;

procedure TFCtas_Cobrar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Modulo.tClientes.Params.ParamByName('Cedula_Rnc_Pasaporte').AsString := '';
  Modulo.tFacturas_Cliente.Params.ParamByName('Cliente').AsString := '';
  Modulo.tPagos_Clientes.Params.ParamByName('Cliente').AsString := '';
end;

procedure TFCtas_Cobrar.Anular_PagoExecute(Sender: TObject);
begin

  If Trim(Modulo.tPagos_ClientesStatus.Value) = _stANULADO Then
    Begin
      Mensaje('Ese Recibo ya fue ANULADO'#13'Por Favor, VERIFIQUE');
      Exit
    End;

  If Application.MessageBox(PChar(Format(_ConfirmarAnularRecibo,[Modulo.tPagos_ClientesNumero.Text])),
                    'ANULAR RECIBO DE PAGO',
                    MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

  Granted := False;
  OpenForm(TFAutorizar,FAutorizar);
  If (Not Granted) Then
    Begin
      Mensaje(_ErrAccesoDenegadoOpcion);
      Exit
    End;

  If Modulo.tFacturas_Cliente.Locate('Proceso',Modulo.tPagos_ClientesFactura.Value,[]) Then
  Begin
    Facturas_ClienteRowChanged(Sender);
    Modulo.TDetalle_Pago_Clientes.First;
    While Not Modulo.TDetalle_Pago_Clientes.Eof Do
      Begin
        If Modulo.tCuotas_Facturas.Locate('Numero',Modulo.TDetalle_Pago_ClientesCuota.Value,[]) Then
          Begin
            Modulo.tCuotas_Facturas.Edit;
            Modulo.tCuotas_FacturasCapital_Pendiente.Value := Modulo.tCuotas_FacturasCapital_Pendiente.Value + Modulo.TDetalle_Pago_ClientesCapital.Value;
            Modulo.tCuotas_FacturasInteres_Pendiente.Value := Modulo.tCuotas_FacturasInteres_Pendiente.Value + Modulo.TDetalle_Pago_ClientesInteres.Value;
            Modulo.tCuotas_FacturasMora_Pendiente.Value := Modulo.tCuotas_FacturasMora_Pendiente.Value + Modulo.TDetalle_Pago_ClientesMora.Value;
            Modulo.tCuotas_FacturasOtros_Pendiente.Value := Modulo.tCuotas_FacturasOtros_Pendiente.Value + Modulo.TDetalle_Pago_ClientesOtros.Value;
            Modulo.tCuotas_Facturas.Post;
          End;
        Modulo.TDetalle_Pago_Clientes.Next
      End;
    Modulo.tPagos_Clientes.Edit;
    Modulo.tPagos_ClientesConcepto.Value := Modulo.tPagos_ClientesConcepto.Value +
                                   Format(' ANULADO el %s *> %m <* Por %s -> %s',
                                          [DateToStr(Modulo.Enlace.AppServer.ServerDate),
                                           Modulo.tPagos_ClientesTotal_Pagado.Value,
                                           _GrantedUser,
                                           _CurrentUser]);
    Modulo.tPagos_ClientesPagado_Capital.Value := 0;
    Modulo.tPagos_ClientesPagado_Interes.Value := 0;
    Modulo.tPagos_ClientesPagado_Mora.Value := 0;
    Modulo.tPagos_ClientesPagado_Otros.Value := 0;
    Modulo.tPagos_ClientesTotal_Pagado.Value := 0;
    Modulo.tPagos_ClientesMonto.Value := 0;
    Modulo.tPagos_ClientesStatus.Value := _stANULADO;
    Modulo.tPagos_Clientes.Post;

    If Modulo.tCuotas_Facturas.ChangeCount > 0 Then
      Modulo.tCuotas_Facturas.ApplyUpdates(0);

    Modulo.tPagos_Clientes.ApplyUpdates(0);
    Modulo.tFacturas_Cliente.Refresh
  End
end;

Function TFCtas_Cobrar.PagarCuotas (Const Monto: Currency; Var Capital,Interes,Mora,Otros : Currency) : Currency;
  Var
    ValorOtro,
    Restante : Currency;
    ValorStr : String;
  Begin
    Restante := Monto;
    If Trim(Modulo.tPagos_ClientesFactura.Value) <> 'DIARIO' Then
      Begin
        Modulo.TCuotas_Facturas.DisableControls;
        Modulo.TCuotas_Facturas.First;

        {Pagar las Moras}
        Modulo.TCuotas_Facturas.First;
        If PagarMora.Checked Then
        While Not Modulo.TCuotas_Facturas.Eof Do
          Begin
            If (Modulo.tCuotas_FacturasMora_Pendiente.Value > _Margen) And (Restante > 0) And (PagarMora.Checked) Then
              Begin
                If Not (Modulo.TCuotas_Facturas.State In DsEditModes) Then Modulo.TCuotas_Facturas.Edit;
                Modulo.TDetalle_Pago_Clientes.Append;
                Modulo.tDetalle_Pago_ClientesFactura.Value := Modulo.tFacturas_ClienteNumero.Text;
                Modulo.TDetalle_Pago_ClientesCuota.Value := Modulo.tCuotas_FacturasNumero.Value;
                Modulo.TDetalle_Pago_ClientesVencimiento.Value := Modulo.tCuotas_FacturasVence.Value;

                If (Modulo.TCuotas_FacturasMora_Pendiente.Value > Restante) Then
                  Begin
                    Modulo.TDetalle_Pago_ClientesMora.Value := Restante;
                    Restante := 0
                  End
                Else
                  Begin
                    Modulo.TDetalle_Pago_ClientesMora.Value := Modulo.TCuotas_FacturasMora_Pendiente.Value;
                    Restante := Restante - Modulo.TCuotas_FacturasMora_Pendiente.Value
                  End;

                {Guardar El Detalle de Pago}
                Modulo.TDetalle_Pago_Clientes.Post;

                {Actualizar La Cuota}
                Modulo.TCuotas_FacturasMora_Pendiente.Value := Modulo.TCuotas_FacturasMora_Pendiente.Value - Modulo.TDetalle_Pago_ClientesMora.Value;
                Modulo.tCuotas_FacturasFecha_Ultimo_Pago.Value := Modulo.tPagos_ClientesFecha.Value;

                Mora := Mora + Modulo.TDetalle_Pago_ClientesMora.Value;

                Modulo.tCuotas_FacturasTotal_Pagado.Value := (Modulo.tCuotas_FacturasMora.Value +
                                                               Modulo.tCuotas_FacturasInteres.Value +
                                                               Modulo.tCuotas_FacturasCapital.Value) -

                                                              (Modulo.tCuotas_FacturasMora_Pendiente.Value +
                                                               Modulo.tCuotas_FacturasInteres_Pendiente.Value +
                                                               Modulo.tCuotas_FacturasCapital_Pendiente.Value);

                Modulo.tCuotas_FacturasTotal_Pendiente.Value := (Modulo.tCuotas_FacturasMora_Pendiente.Value +
                                                                  Modulo.tCuotas_FacturasInteres_Pendiente.Value +
                                                                  Modulo.tCuotas_FacturasCapital_Pendiente.Value);
                Modulo.TCuotas_Facturas.Post
              End;
            Modulo.TCuotas_Facturas.Next
          End; {While}

        {Pagar Otros Recargos}
        Modulo.TCuotas_Facturas.First;
        If PagarOtros.Checked Then
        While Not Modulo.TCuotas_Facturas.Eof Do
          Begin
            If (Modulo.tCuotas_FacturasOtros_Pendiente.Value > _Margen) And (Restante > 0) And (PagarOtros.Checked) Then
              Begin
                If Not (Modulo.TCuotas_Facturas.State In DsEditModes) Then Modulo.TCuotas_Facturas.Edit;
                Modulo.TDetalle_Pago_Clientes.Append;
                Modulo.tDetalle_Pago_ClientesFactura.Value := Modulo.tFacturas_ClienteNumero.Text;
                Modulo.TDetalle_Pago_ClientesCuota.Value := Modulo.tCuotas_FacturasNumero.Value;
                Modulo.TDetalle_Pago_ClientesVencimiento.Value := Modulo.tCuotas_FacturasVence.Value;

                ValorStr := InputBox('Monto a Pagar',Modulo.tCuotas_FacturasConcepto.Value +
                                     #13'PENDIENTE : ' +
                                     Modulo.tCuotas_FacturasOtros_Pendiente.Text + #13 +
                                     'RESTANTE POR APLICAR : ' +
                                     Format('%m',[Restante]),'0.00');
                Try
                  ValorOtro := StrToCurr(ValorStr)
                Except
                  ValorOtro := 0;
                  PopupMessage(ModuloGenerales.Mensajes,'Valor Invalido'#13'No se aplicó ningun pago al concepto actual');
                End;

                If (ValorOtro > Restante) Then
                  Begin
                    ValorOtro := Restante;
                    PopupMessage(ModuloGenerales.Mensajes,'Distribución del valor diferente del monto especificado'#13'Se aplicó el Monto Disponible');
                  End;

                If (Modulo.tCuotas_FacturasOtros_Pendiente.Value < ValorOtro) Then
                  Begin
                    ValorOtro := Modulo.tCuotas_FacturasOtros_Pendiente.Value;
                    PopupMessage(ModuloGenerales.Mensajes,'El valor especificado es mayor que el monto pendiente'#13'Se aplicó el Monto Pendiente');
                  End;

                Modulo.TDetalle_Pago_ClientesOtros.Value := ValorOtro;
                Restante := Restante - ValorOtro;

                {Guardar El Detalle de Pago}
                If ValorOtro > 0 Then
                  Modulo.TDetalle_Pago_Clientes.Post
                Else
                  Modulo.TDetalle_Pago_Clientes.Cancel;

                {Actualizar La Cuota}
                Modulo.tCuotas_FacturasOtros_Pendiente.Value := Modulo.tCuotas_FacturasOtros_Pendiente.Value - Modulo.TDetalle_Pago_ClientesOtros.Value;
                Modulo.tCuotas_FacturasFecha_Ultimo_Pago.Value := Modulo.tPagos_ClientesFecha.Value;

                Otros := Otros + Modulo.TDetalle_Pago_ClientesOtros.Value;

                Modulo.tCuotas_FacturasTotal_Pagado.Value := (Modulo.tCuotas_FacturasMora.Value +
                                                               Modulo.tCuotas_FacturasInteres.Value +
                                                               Modulo.tCuotas_FacturasCapital.Value +
                                                               Modulo.tCuotas_FacturasOtros.Value) -

                                                              (Modulo.tCuotas_FacturasMora_Pendiente.Value +
                                                               Modulo.tCuotas_FacturasInteres_Pendiente.Value +
                                                               Modulo.tCuotas_FacturasCapital_Pendiente.Value +
                                                               Modulo.tCuotas_FacturasOtros_Pendiente.Value);

                Modulo.tCuotas_FacturasTotal_Pendiente.Value := (Modulo.tCuotas_FacturasMora_Pendiente.Value +
                                                                  Modulo.tCuotas_FacturasInteres_Pendiente.Value +
                                                                  Modulo.tCuotas_FacturasCapital_Pendiente.Value +
                                                                  Modulo.tCuotas_FacturasOtros_Pendiente.Value);
                Modulo.TCuotas_Facturas.Post
              End;
            Modulo.TCuotas_Facturas.Next
          End; {While}

        Modulo.tCuotas_Facturas.First;
        If (Modulo.tFacturas_ClienteModalidad.Value = 'Cuotas Fijas') Or (Modulo.tFacturas_ClienteModalidad.Value = 'Amortizado Fijo') Then
          While Not (Modulo.tCuotas_Facturas.Eof) Do
            Begin
              {Pagar El Interes y El Capital}
              If (Modulo.tCuotas_FacturasTotal_Pendiente.Value >= _Margen) And (Restante > 0) Then
                Begin
                  Modulo.TDetalle_Pago_Clientes.Append;
                  Modulo.tDetalle_Pago_ClientesFactura.Value := Modulo.tFacturas_ClienteNumero.Text;
                  Modulo.TDetalle_Pago_ClientesCuota.Value := Modulo.tCuotas_FacturasNumero.Value;
                  Modulo.TDetalle_Pago_ClientesVencimiento.Value := Modulo.tCuotas_FacturasVence.Value;
                  {Pagar Interes}
                  If (PagarInteres.Checked) Then
                    If (Modulo.tCuotas_FacturasInteres_Pendiente.Value > Restante) Then
                      Begin
                        Modulo.TDetalle_Pago_ClientesInteres.Value := Restante;
                        Restante := 0
                      End
                    Else
                      Begin
                        Modulo.TDetalle_Pago_ClientesInteres.Value := Modulo.tCuotas_FacturasInteres_Pendiente.Value;
                        Restante := Restante - Modulo.tCuotas_FacturasInteres_Pendiente.Value
                      End;

                  Interes := Interes + Modulo.TDetalle_Pago_ClientesInteres.Value;

                  {Pagar Capital}
                  If (PagarCapital.Checked) Then
                    If (Modulo.tCuotas_FacturasCapital_Pendiente.Value > Restante) Then
                      Begin
                        Modulo.TDetalle_Pago_ClientesCapital.Value := Restante;
                        Restante := 0
                      End
                    Else
                      Begin
                        Modulo.TDetalle_Pago_ClientesCapital.Value := Modulo.tCuotas_FacturasCapital_Pendiente.Value;
                        Restante := Restante - Modulo.tCuotas_FacturasCapital_Pendiente.Value
                      End;

                  Capital := Capital + Modulo.TDetalle_Pago_ClientesCapital.Value;

                  {Guardar El Detalle de Pago}
                  Modulo.TDetalle_Pago_Clientes.Post;

                  {Actualizar La Cuota}
                  If Not (Modulo.tCuotas_Facturas.State In DsEditModes) Then Modulo.tCuotas_Facturas.Edit;

                  Modulo.tCuotas_FacturasInteres_Pendiente.Value := Modulo.tCuotas_FacturasInteres_Pendiente.Value - Modulo.TDetalle_Pago_ClientesInteres.Value;
                  Modulo.tCuotas_FacturasCapital_Pendiente.Value := Modulo.tCuotas_FacturasCapital_Pendiente.Value - Modulo.TDetalle_Pago_ClientesCapital.Value;

                  Modulo.tCuotas_FacturasTotal_Pagado.Value := (Modulo.tCuotas_FacturasMora.Value +
                                                                 Modulo.tCuotas_FacturasInteres.Value +
                                                                 Modulo.tCuotas_FacturasCapital.Value) -

                                                                (Modulo.tCuotas_FacturasMora_Pendiente.Value +
                                                                 Modulo.tCuotas_FacturasInteres_Pendiente.Value +
                                                                 Modulo.tCuotas_FacturasCapital_Pendiente.Value);

                  Modulo.tCuotas_FacturasTotal_Pendiente.Value := (Modulo.tCuotas_FacturasMora_Pendiente.Value +
                                                                    Modulo.tCuotas_FacturasInteres_Pendiente.Value +
                                                                    Modulo.tCuotas_FacturasCapital_Pendiente.Value);

                  Modulo.tCuotas_Facturas.Post
                End;
              Modulo.tCuotas_Facturas.Next
            End; {While}

        If Modulo.tFacturas_ClienteModalidad.Value = 'Amortizado Variable' Then
          Begin
            {Pagar El Interes}
            Modulo.tCuotas_Facturas.First;
            While Not (Modulo.tCuotas_Facturas.Eof) Do
              Begin
                If (Modulo.tCuotas_FacturasInteres_Pendiente.Value >= _Margen) And (Restante > 0) And (PagarInteres.Checked) Then
                  Begin
                    Modulo.TDetalle_Pago_Clientes.Append;
                    Modulo.tDetalle_Pago_ClientesFactura.Value := Modulo.tFacturas_ClienteNumero.Text;
                    Modulo.TDetalle_Pago_ClientesCuota.Value := Modulo.tCuotas_FacturasNumero.Value;
                    Modulo.TDetalle_Pago_ClientesVencimiento.Value := Modulo.tCuotas_FacturasVence.Value;

                    If (Modulo.tCuotas_FacturasInteres_Pendiente.Value > Restante) Then
                      Begin
                        Modulo.TDetalle_Pago_ClientesInteres.Value := Restante;
                        Restante := 0
                      End
                    Else
                      Begin
                        Modulo.TDetalle_Pago_ClientesInteres.Value := Modulo.tCuotas_FacturasInteres_Pendiente.Value;
                        Restante := Restante - Modulo.tCuotas_FacturasInteres_Pendiente.Value
                      End;

                    Interes := Interes + Modulo.TDetalle_Pago_ClientesInteres.Value;

                    {Guardar El Detalle de Pago}
                    Modulo.TDetalle_Pago_Clientes.Post;

                    {Actualizar La Cuota}
                    If Not (Modulo.tCuotas_Facturas.State In DsEditModes) Then Modulo.tCuotas_Facturas.Edit;
                    Modulo.tCuotas_FacturasInteres_Pendiente.Value := Modulo.tCuotas_FacturasInteres_Pendiente.Value - Modulo.TDetalle_Pago_ClientesInteres.Value;
                    Modulo.tCuotas_FacturasFecha_Ultimo_Pago.Value := Modulo.tPagos_ClientesFecha.Value;

                    Modulo.tCuotas_FacturasTotal_Pagado.Value := (Modulo.tCuotas_FacturasMora.Value +
                                                                   Modulo.tCuotas_FacturasInteres.Value +
                                                                   Modulo.tCuotas_FacturasCapital.Value) -

                                                                  (Modulo.tCuotas_FacturasMora_Pendiente.Value +
                                                                   Modulo.tCuotas_FacturasInteres_Pendiente.Value +
                                                                   Modulo.tCuotas_FacturasCapital_Pendiente.Value);

                    Modulo.tCuotas_FacturasTotal_Pendiente.Value := (Modulo.tCuotas_FacturasMora_Pendiente.Value +
                                                                      Modulo.tCuotas_FacturasInteres_Pendiente.Value +
                                                                      Modulo.tCuotas_FacturasCapital_Pendiente.Value);

                    Modulo.tCuotas_Facturas.Post
                  End; {If}
                Modulo.tCuotas_Facturas.Next
              End; {While}

            {Pagar El Capital}
            Modulo.tCuotas_Facturas.First;
            While Not (Modulo.tCuotas_Facturas.Eof) Do
              Begin
                If (Modulo.tCuotas_FacturasCapital_Pendiente.Value >= _Margen) And (Restante > 0) And (PagarCapital.Checked) Then
                  Begin
                    Modulo.TDetalle_Pago_Clientes.Append;
                    Modulo.TDetalle_Pago_ClientesCuota.Value := Modulo.tCuotas_FacturasNumero.Value;
                    Modulo.TDetalle_Pago_ClientesVencimiento.Value := Modulo.tCuotas_FacturasVence.Value;
                    If (Modulo.tCuotas_FacturasCapital_Pendiente.Value > Restante) Then
                      Begin
                        Modulo.TDetalle_Pago_ClientesCapital.Value := Restante;
                        Restante := 0
                      End
                    Else
                      Begin
                        Modulo.TDetalle_Pago_ClientesCapital.Value := Modulo.tCuotas_FacturasCapital_Pendiente.Value;
                        Restante := Restante - Modulo.tCuotas_FacturasCapital_Pendiente.Value
                      End;

                    Capital := Capital + Modulo.TDetalle_Pago_ClientesCapital.Value;

                    {Guardar El Detalle de Pago}
                    Modulo.TDetalle_Pago_Clientes.Post;

                    {Actualizar La Cuota}
                    If Not (Modulo.tCuotas_Facturas.State In DsEditModes) Then Modulo.tCuotas_Facturas.Edit;
                    Modulo.tCuotas_FacturasCapital_Pendiente.Value := Modulo.tCuotas_FacturasCapital_Pendiente.Value - Modulo.TDetalle_Pago_ClientesCapital.Value;
                    Modulo.tCuotas_FacturasFecha_Ultimo_Pago.Value := Modulo.tPagos_ClientesFecha.Value;

                    Modulo.tCuotas_FacturasTotal_Pagado.Value := (Modulo.tCuotas_FacturasMora.Value +
                                                                   Modulo.tCuotas_FacturasInteres.Value +
                                                                   Modulo.tCuotas_FacturasCapital.Value) -

                                                                  (Modulo.tCuotas_FacturasMora_Pendiente.Value +
                                                                   Modulo.tCuotas_FacturasInteres_Pendiente.Value +
                                                                   Modulo.tCuotas_FacturasCapital_Pendiente.Value);

                    Modulo.tCuotas_FacturasTotal_Pendiente.Value := (Modulo.tCuotas_FacturasMora_Pendiente.Value +
                                                                      Modulo.tCuotas_FacturasInteres_Pendiente.Value +
                                                                      Modulo.tCuotas_FacturasCapital_Pendiente.Value);

                    Modulo.tCuotas_Facturas.Post
                  End; {Capital}
                Modulo.tCuotas_Facturas.Next
              End; {While}
          End; {Tipo Factura}
      End {If Diario}
    Else
      Begin
        Modulo.TDetalle_Pago_Clientes.Append;
        Modulo.tDetalle_Pago_ClientesFactura.Value := Modulo.tPagos_ClientesFactura.Value;
        Modulo.TDetalle_Pago_ClientesCuota.Value := 1;
        Modulo.TDetalle_Pago_ClientesVencimiento.Value := Modulo.tPagos_ClientesFecha.Value;

        Modulo.tDetalle_Pago_ClientesCapital.Value := Restante;
        Capital := Restante;
        Interes := 0;
        Mora := 0;
        Otros := 0;
        Restante := 0;
        {Guardar El Detalle de Pago}
        Modulo.TDetalle_Pago_Clientes.Post;
      End;
   Result := Restante
  End;

procedure TFCtas_Cobrar.AplicarExecute(Sender: TObject);
  Var
    Capital        ,
    Mora           ,
    Interes        ,
    Otros          ,
    Restante       : Currency;
begin
  Concepto.SetFocus;

  Capital        := 0;
  Mora           := 0;
  Interes        := 0;
  Otros          := 0;

  If Modulo.tPagos_ClientesMonto.Value <= 0 Then
    Raise Exception.Create(_ErrMontoMenorCero);

  If Trim(Modulo.tPagos_ClientesFactura.Value) <> 'DIARIO' Then
    Begin
      If Modulo.tPagos_ClientesMonto.Value > Modulo.tFacturas_ClientePendiente.Value Then
        Raise Exception.Create(Format(_ErrMontoMayorReal,[Modulo.tFacturas_ClientePendiente.Value]));

      If Modulo.tFacturas_ClientePendiente.Value <= _Margen Then
        Begin
          PopUpMessage(ModuloGenerales.Mensajes,_NoBalancePendientes);
          Exit
        End;
    End; {If DIARIO}

  Restante := Modulo.tPagos_ClientesMonto.Value;

  PagarCuotas(Restante,Capital,Interes,Mora,Otros);

  {Acutalizar el Resumen del Pago}
  Modulo.tPagos_Clientes.Edit;
  Modulo.tPagos_ClientesPagado_Mora.Value := Mora;
  Modulo.tPagos_ClientesPagado_Capital.Value := Capital;
  Modulo.tPagos_ClientesPagado_Interes.Value := Interes;
  Modulo.tPagos_ClientesPagado_Otros.Value := Otros;
  Modulo.tPagos_ClientesMonto.Value := Modulo.tPagos_ClientesPagado_Capital.Value + Modulo.tPagos_ClientesPagado_Mora.Value + Modulo.tPagos_ClientesPagado_Interes.Value + Modulo.tPagos_ClientesPagado_Otros.Value;
  Modulo.tPagos_ClientesTotal_Pagado.Value := Modulo.tPagos_ClientesMonto.Value;
  Modulo.tPagos_Clientes.Post;

  If Not (Modulo.tFacturas_Cliente.State In DsEditModes) Then Modulo.tFacturas_Cliente.Edit;

//  Modulo.tFacturas_ClienteMonto_Ultimo_Pago.Value := Modulo.tPagos_ClientesTotal_Pagado.Value;
  Modulo.tFacturas_Cliente.Post;
  Modulo.tFacturas_Cliente.ApplyUpdates(0);

  {Volver a la Primera Cuota}
  Modulo.tCuotas_Facturas.First;
  Modulo.tCuotas_Facturas.EnableControls;

  If Modulo.tCuotas_Facturas.ChangeCount > 0 Then Modulo.tCuotas_Facturas.ApplyUpdates(0);

  If Modulo.tPagos_Clientes.ChangeCount > 0 Then Modulo.tPagos_Clientes.ApplyUpdates(0);
  Modulo.tPagos_Clientes.Refresh;

  Modulo.tFacturas_Cliente.Refresh;
  Modulo.tClientes.Refresh;

  Cancelar.Execute;

  If chk_Imprimir_Recibo.Checked Then Imprimir_ComprobanteExecute(Sender)
end;

procedure TFCtas_Cobrar.Facturas_ClienteCalcCellColors(Sender: TObject;
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

procedure TFCtas_Cobrar.Facturas_ClienteRowChanged(Sender: TObject);
begin
  Modulo.tCuotas_Facturas.Close;
  Modulo.tCuotas_Facturas.Params.ParamByName('Proceso').AsString := Trim(Modulo.tFacturas_ClienteProceso.AsString);
  Modulo.tCuotas_Facturas.Open
end;

procedure TFCtas_Cobrar.Imprimir_ComprobanteExecute(Sender: TObject);
  Var
    DoPreview    : Boolean;
    OutputFormat : ShortInt;
    PrintFormat  : ShortInt;

begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_PagosClienteKey,False);

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
                   End // _GraphicForm
  End; // Case

// break

{  If Modulo.tPagos_Clientes.RecordCount > 0 Then
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

procedure TFCtas_Cobrar.Imprimir_FichaExecute(Sender: TObject);
  Var
    DoPreview    : Boolean;

  Const
    DeviceTypes  : Array [False..True] Of String = ('Printer','Screen');

begin
  Try
    Modulo.tFacturas.Params.ParamByName('Proceso').AsString := Modulo.tFacturas_ClienteProceso.AsString;
    Modulo.tFacturas.Open;

    RegInfo.CloseKey;
    RegInfo.OpenKey(_FacturaProductosKey,False);

    DoPreview := True;

    ReportsAndForms.PipeListadoClientes.DataSource := Modulo.DClientes;

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

(*
          ReportsAndForms.InvoiceTaxLabel.Visible       := DoPreview;
          ReportsAndForms.InvoiceTax.Visible            := DoPreview;
          ReportsAndForms.InvoiceDiscountLabel.Visible  := DoPreview;
          ReportsAndForms.InvoiceDiscount.Visible       := DoPreview;
          ReportsAndForms.InvoicePaidLabel.Visible      := DoPreview;
          ReportsAndForms.InvoicePaidAmmount.Visible    := DoPreview;
          ReportsAndForms.InvoicePendingLabel.Visible   := DoPreview;
          ReportsAndForms.InvoicePendingAmmount.Visible := DoPreview;
    
*)        Print
      End // With
  Finally
    ReportsAndForms.PipeListadoClientes.DataSource := Modulo.dListado_Clientes;
    Modulo.tFacturas.Params.ParamByName('Proceso').Clear;
    Modulo.tFacturas.Close;
  End {Try}
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
    RegInfo.OpenKey(_PagosClienteKey,False);

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
          RBrush(FormatDateTime('hh:mm am/pm',Modulo.tPagos_ClientesHora.Value),AnchoLinea Div 2));

    PrnLn(LBrush(UnEncrypt(RegInfo.ReadString(_UserCompPhone1)),AnchoLinea Div 2)+
          RBrush(FormatDateTime('hh:mm am/pm',Modulo.tPagos_ClientesHora.Value),AnchoLinea Div 2));

    PrnLn(#32);

    // Tipo de Recibo
    If OutDevice = _Port Then Prn(_BigFont);

    If Duplex Then
      Prn(CBrush('COMPROBANTE DE PAGO',(AnchoLinea Div Factor)));

    PrnLn(CBrush('COMPROBANTE DE PAGO',(AnchoLinea Div Factor)));

    If Duplex Then
      Prn(CBrush(UPPERCASE(Modulo.tPagos_ClientesNumero.Text),(AnchoLinea Div Factor)));

    PrnLn(CBrush(UPPERCASE(Modulo.tPagos_ClientesNumero.Text),(AnchoLinea Div Factor)));

    If OutDevice = _Port Then Prn(_NoBigFont);

    PrnLn(#32);

    If OutDevice = _Port Then
      Begin
        Prn(_NoBigFont);
        Prn(_Draft)
      End;

    // Fecha de Pago
    If Duplex Then
      Prn(LBrush(FormatDateTime('dddd dd "de" mmmm "del" yyyy',Modulo.tPagos_ClientesFecha.Value),AnchoLinea));

    PrnLn(LBrush(FormatDateTime('dddd dd "de" mmmm "del" yyyy',Modulo.tPagos_ClientesFecha.Value),AnchoLinea));

    PrnLn(#32);

{Cuerpo del Recibo}
    Split2Lines('Recibido de : '+Trim(Modulo.tClientesNombreCompleto.Value),AnchoLinea,Duplex);
    PrnLn(#32);

    Split2Lines('La Suma de  : ' + RealNumToAlpha(Modulo.tPagos_ClientesTotal_Pagado.Value),AnchoLinea,Duplex);
    PrnLn(#32);

    Split2Lines('Por Concepto de ' + Modulo.tPagos_ClientesConcepto.Value,AnchoLinea,Duplex);
    PrnLn(#32);

    PrnLn(LBrush('Distribuidos de la siguiente manera :',AnchoLinea));

    If Duplex Then
      Prn(Fill('-',AnchoLinea));

    PrnLn(Fill('-',AnchoLinea));

    If Duplex Then
      Prn(CBrush('#'          ,04)+
          CBrush('V. Factura' ,11)+
          CBrush('Interes'    ,11)+
          CBrush('Recar.'     ,07)+
          CBrush('Otros'      ,07));

    Prnln(CBrush('#'          ,04)+
          CBrush('V. Factura' ,11)+
          CBrush('Interes'    ,11)+
          CBrush('Recar.'     ,07)+
          CBrush('Otros'      ,07));

    If Duplex Then
      Prn(Fill('-',AnchoLinea));

    PrnLn(Fill('-',AnchoLinea));

    Modulo.tDetalle_Pago_Clientes.First;

    T_Capital := 0;
    T_Interes := 0;
    T_Mora := 0;
    T_Otros := 0;
    F := '';
    While Not Modulo.tDetalle_Pago_Clientes.EOF Do
       Begin
         T_Capital := T_Capital + Modulo.tDetalle_Pago_ClientesCapital.Value;
         T_Interes := T_Interes + Modulo.tDetalle_Pago_ClientesInteres.Value;
         T_Mora := T_Mora + Modulo.tDetalle_Pago_ClientesMora.Value;
         T_Otros := T_Otros + Modulo.tDetalle_Pago_ClientesOtros.Value;

         If Trim(F) <> Trim(Modulo.tDetalle_Pago_ClientesFactura.Text) Then
           Begin
             If Trim (F) <> '' Then PrnLn(#32);
             F := Modulo.tDetalle_Pago_ClientesFactura.Text;
             If Duplex Then
               Prn(LBrush(Format('Factura : %s',[Modulo.tDetalle_Pago_ClientesFactura.Text]),AnchoLinea));
             PrnLn(LBrush(Format('Factura : %s',[Modulo.tDetalle_Pago_ClientesFactura.Text]),AnchoLinea));
           End;

         If Duplex Then
           Prn(LBrush(RBrush(Modulo.tDetalle_Pago_ClientesCuota.Text                          ,04)+
                      RBrush(Format('%*.*f',[8,1,Modulo.tDetalle_Pago_ClientesCapital.Value]) ,11)+
                      RBrush(Format('%*.*f',[8,1,Modulo.tDetalle_Pago_ClientesInteres.Value]) ,11)+
                      RBrush(Format('%*.*f',[8,1,Modulo.tDetalle_Pago_ClientesMora.Value])    ,07)+
                      RBrush(Format('%*.*f',[8,1,Modulo.tDetalle_Pago_ClientesOtros.Value])   ,07),AnchoLinea));

         PrnLn(LBrush(RBrush(Modulo.tDetalle_Pago_ClientesCuota.Text                          ,04)+
                      RBrush(Format('%*.*f',[8,1,Modulo.tDetalle_Pago_ClientesCapital.Value]) ,11)+
                      RBrush(Format('%*.*f',[8,1,Modulo.tDetalle_Pago_ClientesInteres.Value]) ,11)+
                      RBrush(Format('%*.*f',[8,1,Modulo.tDetalle_Pago_ClientesMora.Value])    ,07)+
                      RBrush(Format('%*.*f',[8,1,Modulo.tDetalle_Pago_ClientesOtros.Value])   ,07),AnchoLinea));

         Modulo.tDetalle_Pago_Clientes.Next;
       End; {While}


{Sumario / Totales del Recibo}
    If Duplex Then
      Prn(Fill('-',AnchoLinea));

    PrnLn(Fill('-',AnchoLinea));

    If Duplex Then
      Prn(RBrush(RBrush('Total Facturas :',AnchoLinea - 15) +
                 RBrush(Format('%m',[T_Capital]),15),AnchoLinea-1));

    PrnLn(RBrush(RBrush('Total Facturas :',AnchoLinea - 15) +
                 RBrush(Format('%m',[T_Capital]),15),AnchoLinea-1));

    If Duplex Then
      Prn(RBrush(RBrush('Total Interes :',AnchoLinea - 15) +
                 RBrush(Format('%m',[T_Interes]),15),AnchoLinea-1));

    PrnLn(RBrush(RBrush('Total Interes :',AnchoLinea - 15) +
                 RBrush(Format('%m',[T_Interes]),15),AnchoLinea-1));

    If Duplex Then
      Prn(RBrush(RBrush('Total Regarcos :',AnchoLinea - 15) +
                 RBrush(Format('%m',[T_Mora]),15),AnchoLinea-1));

    PrnLn(RBrush(RBrush('Total Recargos :',AnchoLinea - 15) +
                 RBrush(Format('%m',[T_Mora]),15),AnchoLinea-1));

    If Duplex Then
      Prn(RBrush(RBrush('Total Otros :',AnchoLinea - 15) +
                 RBrush(Format('%m',[T_Otros]),15),AnchoLinea-1));

    PrnLn(RBrush(RBrush('Total Otros :',AnchoLinea - 15) +
                 RBrush(Format('%m',[T_Otros]),15),AnchoLinea-1));

    If Duplex Then
      Prn(RBrush(Fill('-',AnchoLinea Div 2),AnchoLinea));

    PrnLn(RBrush(Fill('-',AnchoLinea Div 2),AnchoLinea));

    // Total Recibo
    If Duplex Then
      Prn(RBrush(RBrush('Total Cobrado:',AnchoLinea - 15) +
                 RBrush(Format('%m',[Modulo.tPagos_ClientesTotal_Pagado.Value]),15),AnchoLinea-1));

    PrnLn(RBrush(RBrush('Total Cobrado:',AnchoLinea - 15) +
                 RBrush(Format('%m',[Modulo.tPagos_ClientesTotal_Pagado.Value]),15),AnchoLinea-1));

    If Duplex Then
      Prn(RBrush(Fill('=',AnchoLinea Div 2),AnchoLinea));

    PrnLn(RBrush(Fill('=',AnchoLinea Div 2),AnchoLinea));

    PrnLn(#32);

    If OutDevice = _Port Then
      Begin
        Prn(_NoBigFont);
        Prn(_Draft)
      End;
    PrnLn(#32);
    PrnLn(#32);

    If Duplex Then
      Prn(CBrush(Fill('_',20)+Fill(' ',2)+Fill('_',20),AnchoLinea));

    PrnLn(CBrush(Fill('_',20)+Fill(' ',2)+Fill('_',20),AnchoLinea));

    If Duplex Then
      Prn(CBrush('Entregado Por',20) +
            Fill(' ',2)+
          CBrush('Recibido Por',20));

    PrnLn(CBrush('Entregado Por',20) +
            Fill(' ',2)+
          CBrush('Recibido Por',20));

    If Trim(Coment_Pie1) <> '' Then
      Begin
        If Duplex Then
          Prn(CBrush(Coment_Pie1,AnchoLinea));

        PrnLn(CBrush(Coment_Pie1,AnchoLinea))
      End;

    If Trim(Coment_Pie2) <> '' Then
      Begin
        If Duplex Then
          Prn(CBrush(Coment_Pie2,AnchoLinea));

        PrnLn(CBrush(Coment_Pie2,AnchoLinea))
      End;

    If Trim(Coment_Pie3) <> '' Then
      Begin
        If Duplex Then
          Prn(CBrush(Coment_Pie3,AnchoLinea));

        PrnLn(CBrush(Coment_Pie3,AnchoLinea))
      End;

    If Trim(Coment_Pie4) <> '' Then
      Begin
        If Duplex Then
          Prn(CBrush(Coment_Pie4,AnchoLinea));

        PrnLn(CBrush(Coment_Pie4,AnchoLinea))
      End;

    If Duplex Then
       Prn(CBrush('Le Atendió : ' + _CurrentUser,AnchoLinea));

    PrnLn(CBrush('Le Atendió : ' + _CurrentUser,AnchoLinea));

    For I := 1 To LineasDespues Do
      PrnLn(#32);

    If OutDevice = _Port Then
      PrnLn(_PartialCut);

    EndPrn;
    Result := True
  End;


Initialization
  RegisterClass(TFCtas_Cobrar);

  end.
