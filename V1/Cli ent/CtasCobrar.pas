unit CtasCobrar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, wwDataInspector, AdvPageControl, ComCtrls, Wwdbigrd,
  Wwdbgrid, ActnMan, ActnColorMaps, Buttons, ActnList, XPStyleActnCtrls,
  ToolWin, ActnCtrls, Db, StdCtrls, wwdbdatetimepicker, Mask, DBCtrls, ExtCtrls,
  ppDB, ppDBPipe, ppModule, raCodMod, ppBands, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport;

type
  TFCtasCobrar = class(TForm)
    Datos_Factura: TAdvPageControl;
    Page_Facturas: TAdvTabSheet;
    DatosCliente: TwwDataInspector;
    AdvPageControl1: TAdvPageControl;
    AdvTabSheet1: TAdvTabSheet;
    AdvPageControl2: TAdvPageControl;
    AdvTabSheet2: TAdvTabSheet;
    Facturas_Cliente: TwwDBGrid;
    Pagos_Cliente: TwwDBGrid;
    Opciones: TActionManager;
    Salir: TAction;
    Buscar_Cliente: TAction;
    btBuscarCliente: TSpeedButton;
    Botones: TAdvPageControl;
    Page_Botones: TAdvTabSheet;
    ActionToolBar1: TActionToolBar;
    Pagar: TAction;
    Saldar: TAction;
    Estado_Cuentas: TAction;
    Imprimir_Recibo: TAction;
    PanelPagos: TPanel;
    LValorPago: TLabel;
    ValorPago: TDBEdit;
    LFechaPago: TLabel;
    FechaPago: TwwDBDateTimePicker;
    ImpRecibo: TCheckBox;
    Label1: TLabel;
    Concepto: TDBEdit;
    Automatica: TCheckBox;
    Aplicar: TAction;
    Cancelar: TAction;
    Facturas_ClienteIButton: TwwIButton;
    PanelDistribucion: TPanel;
    MsgPagoFactura: TLabel;
    Blink: TTimer;
    ActionToolBar2: TActionToolBar;
    Finalizar: TAction;
    atv_Acept_Cancel: TActionToolBar;
    procedure Estado_CuentasExecute(Sender: TObject);
    procedure FinalizarExecute(Sender: TObject);
    procedure Facturas_ClienteMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure Buscar_ClienteExecute(Sender: TObject);
    procedure PagarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AplicarExecute(Sender: TObject);
    Function PagarFactura (Const Monto: Currency) : Currency;
    procedure Facturas_ClienteCalcCellColors(Sender: TObject;
      Field: TField; State: TGridDrawState; Highlight: Boolean;
      AFont: TFont; ABrush: TBrush);
    procedure Pagos_ClienteCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure Imprimir_ReciboExecute(Sender: TObject);
    procedure BlinkTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCtasCobrar : TFCtasCobrar;
  DoBlink     : Boolean = False;
  Restante    : Currency = 0;

implementation

uses DataModulo, Utilidades, SrchDlg, Reports_Forms, Aplicar_Pago;

{$R *.dfm}

procedure TFCtasCobrar.FormCreate(Sender: TObject);
 Var
    I : Integer;
begin
  Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
  DatosCliente.CaptionColor := Color;

  {Activar Los Permisos del Usuario}
//  ActivateOptions(Sender,_CurrentLevel,Modulo.tAccesos);

  {Asigna a los Botones Los ShortCuts Del Menu y Action Lists}
  For I := 0 To (Self.ComponentCount - 1) Do
    Begin
      If (Self.Components[I] Is TAdvPageControl) Then
         (Self.Components[I] As TAdvPageControl).TabBackGroundColor := Color;
    End;

  Modulo.tClientes.Open;
  Modulo.tFacturas_Cliente.Open;
  Modulo.tPagos_Clientes.Open;

  {Insertar Registro en Blanco}
//  Nuevo.Execute
end;

procedure TFCtasCobrar.Buscar_ClienteExecute(Sender: TObject);
begin
    Try
      Application.CreateForm(TDlgSearch,DlgSearch);
      DlgSearch.OpenDlg('Clientes',Modulo.tClientesNombreCompleto.FieldName,'A',wsMaximized);
      If DlgSearch.ModalResult = MrOk Then
        Begin
          Modulo.tClientes.Cancel;
          Modulo.tClientes.Params.ParamByName('Cedula_Rnc_Pasaporte').AsString := Trim(DlgSearch.SrchCds.FieldByName('Cedula_Rnc_Pasaporte').AsString);
          Modulo.tClientes.Refresh;

          Modulo.tFacturas_Cliente.Cancel;
          Modulo.tFacturas_Cliente.Params.ParamByName('Cliente').AsString := Trim(Modulo.tClientesCedula_Rnc_Pasaporte.AsString);
          Modulo.tFacturas_Cliente.Refresh;

          Modulo.tPagos_Clientes.Cancel;
          Modulo.tPagos_Clientes.Params.ParamByName('Cliente').AsString := Trim(Modulo.tClientesCedula_Rnc_Pasaporte.AsString);
          Modulo.tPagos_Clientes.Refresh;

          Modulo.tNotas_Credito.Cancel;
          Modulo.tNotas_Credito.Params.ParamByName('Cliente').AsString := Trim(Modulo.tClientesCedula_Rnc_Pasaporte.AsString)
        End
    Finally
      DlgSearch.CloseDlg
    End {Try}
end;

procedure TFCtasCobrar.PagarExecute(Sender: TObject);
begin
  If Modulo.tClientesBalance_Actual.Value <= _Margen Then Exit;

  Modulo.tPagos_Clientes.Cancel;
  Modulo.tPagos_Clientes.Append;
  Modulo.tPagos_ClientesProceso.Value := Gen_ProcessNumber(_CurrentUser);
  Modulo.tPagos_ClientesFecha.Value := Modulo.Enlace.AppServer.ServerDate;
  Modulo.tPagos_ClientesHora.Value := Modulo.Enlace.AppServer.ServerTime;
  Modulo.tPagos_ClientesUsuario.Value := _CurrentUser;
  Modulo.tPagos_ClientesConcepto.Value := Format(_ConceptoPagosFacturas,[Modulo.tPagos_ClientesFecha.Text]);
  Modulo.tPagos_ClientesCliente.Value := Modulo.tClientesCedula_Rnc_Pasaporte.Value;
  PanelPagos.Visible := True;
  ValorPago.SetFocus
end;

procedure TFCtasCobrar.CancelarExecute(Sender: TObject);
begin
  Modulo.tPagos_Clientes.Cancel;
  Modulo.tPagos_Clientes.CancelUpdates;
  PanelPagos.Visible := False;
  Facturas_Cliente.OnMouseUp := Nil;
  PanelDistribucion.Visible := False
end;

procedure TFCtasCobrar.Estado_CuentasExecute(Sender: TObject);
begin
  If Modulo.tClientes.RecordCount > 0 Then
    Begin
      Modulo.tNotas_Credito.Open;
      ReportsAndForms.Estado_Cuenta_Clientes.Print;
      Modulo.tNotas_Credito.Close
    End
end;

procedure TFCtasCobrar.SalirExecute(Sender: TObject);
begin
  Close
end;

Function TFCtasCobrar.PagarFactura(Const Monto : Currency) : Currency;
  Begin
    Result := Monto;
    If Modulo.tFacturas_ClientePendiente.Value > _Margen Then
      Begin
        {Añadir a Detalle de Pagos}
        Modulo.tDetalle_Pago_Clientes.Append;
        Modulo.tDetalle_Pago_ClientesFecha.Value := Modulo.tPagos_ClientesFecha.Value;
        Modulo.tDetalle_Pago_ClientesHora.Value := Modulo.tPagos_ClientesHora.Value;
        Modulo.tDetalle_Pago_ClientesProceso_Factura.Value := Modulo.tFacturas_ClienteProceso.Value;
        Modulo.tDetalle_Pago_ClientesCliente.Value := Modulo.tClientesCedula_Rnc_Pasaporte.Value;
        If Modulo.tFacturas_ClientePendiente.Value > Monto Then
          Modulo.tDetalle_Pago_ClientesMonto.Value := Monto
        Else Modulo.tDetalle_Pago_ClientesMonto.Value := Modulo.tFacturas_ClientePendiente.Value;

        Result := Monto - Modulo.tDetalle_Pago_ClientesMonto.Value;

        Modulo.tFacturas_Cliente.Edit;
        Modulo.tFacturas_ClientePagado.Value := Modulo.tFacturas_ClientePagado.Value + Modulo.tDetalle_Pago_ClientesMonto.Value;
        Modulo.tFacturas_ClientePendiente.Value := Modulo.tFacturas_ClienteTotalNeto.Value - Modulo.tFacturas_ClientePagado.Value;
        Modulo.tFacturas_ClienteUltimoPago.Value := Modulo.tPagos_ClientesFecha.Value;
        Modulo.tFacturas_Cliente.Post;

        Modulo.tDetalle_Pago_ClientesPendiente_Factura.Value := Modulo.tFacturas_ClientePendiente.Value;

        Modulo.tDetalle_Pago_Clientes.Post
      End
  End;

procedure TFCtasCobrar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Modulo.tClientes.Params.ParamByName('Cedula_Rnc_Pasaporte').AsString := '';
  Modulo.tFacturas_Cliente.Params.ParamByName('Cliente').AsString := '';
  Modulo.tPagos_Clientes.Params.ParamByName('Cliente').AsString := '';

  Modulo.tFacturas_Cliente.Close;
  Modulo.tPagos_Clientes.Close;
  Modulo.tClientes.Close
end;

procedure TFCtasCobrar.AplicarExecute(Sender: TObject);
  Var
    Actual   : String;
begin
  Concepto.SetFocus;

  If Modulo.tPagos_ClientesMonto.Value <= 0 Then
    Raise Exception.Create(_ErrMontoMenorCero);

  If Modulo.tPagos_ClientesMonto.Value > Modulo.tClientesBalance_Actual.Value Then
    Raise Exception.Create(Format(_ErrMontoMayorReal,[Modulo.tClientesBalance_Actual.Value]));

  Modulo.tPagos_Clientes.Post;
  Restante := Modulo.tPagos_ClientesMonto.Value;
  If Automatica.Checked Then {Distribucion Automatica del Pago}
    Begin
      Modulo.tFacturas_Cliente.First;
      While Not Modulo.tFacturas_Cliente.Eof Do
        Begin
          If Restante >= _Margen Then Restante := PagarFactura(Restante);
          Modulo.tFacturas_Cliente.Next;
        End;

      If Restante = Modulo.tPagos_ClientesMonto.Value Then {Si No Se ha Restado nada del Monto Original Entonces Cancela}
        Begin
          Modulo.tPagos_Clientes.Cancel;
          Modulo.tPagos_Clientes.CancelUpdates;
          Modulo.Mensajes.Text := _NoFacturasPendientes;
          Modulo.Mensajes.ShowPopUp
        End
      Else {De lo Contrario Actualiza el Monto Pagado y Aplica el Pago}
        Begin
          Modulo.tPagos_ClientesMonto.Value := Modulo.tPagos_ClientesMonto.Value - Restante;
          Modulo.tPagos_Clientes.Post;
          Actual := Modulo.tPagos_ClientesProceso.Value;
          Modulo.tPagos_Clientes.ApplyUpdates(0);
          Modulo.tPagos_Clientes.Refresh;
          Modulo.tPagos_Clientes.Locate('Proceso',Trim(Actual),[]);

          Modulo.tFacturas_Cliente.ApplyUpdates(0);     {Actualiza el Bancance del la Factura}
          Modulo.Mensajes.Text := Format(_FacturasPagadas,[Modulo.tPagos_ClientesMonto.Value]);
          Modulo.Mensajes.ShowPopUp;
          Modulo.tClientes.Refresh;

          If ImpRecibo.Checked Then Imprimir_Recibo.Execute {Imprime el Recibo}
        End;
      Cancelar.Execute;
    End
  Else {Distrubicion Manual del Pago}
    Begin
      PanelPagos.Visible := False;
      PanelDistribucion.Left := PanelPagos.Left;
      PanelDistribucion.Top := PanelPagos.Top;
      PanelDistribucion.Visible := True;
      Facturas_Cliente.OnMouseUp := Facturas_ClienteMouseUp
    End;
end;

procedure TFCtasCobrar.Facturas_ClienteMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  If (Restante > _Margen) And (Modulo.tFacturas_ClientePendiente.Value > _Margen) Then
    Begin
      Application.CreateForm(TFAplicar_Monto,FAplicar_Monto);
      if Modulo.tFacturas_ClientePendiente.Value > Restante then
        FAplicar_Monto.Monto.Value := Restante
      Else
      FAplicar_Monto.Monto.Value := Modulo.tFacturas_ClientePendiente.Value;
      FAplicar_Monto.Restante.Text := Format ('%m',[Restante]);
      FAplicar_Monto.ShowModal;

      If FAplicar_Monto.Monto.Value > Restante  Then
        Begin
          FAplicar_Monto.Monto.Value := Restante;
          Modulo.Mensajes.Text := Format('Solo se aplicaran los %m restantes',[Restante]);
          Modulo.Mensajes.ShowPopUp
        end;

      PagarFactura(FAplicar_Monto.Monto.Value);
      Restante := Restante - Modulo.tDetalle_Pago_ClientesMonto.Value
    end;

  If Restante <= _Margen Then Finalizar.Execute
  
end;

procedure TFCtasCobrar.FinalizarExecute(Sender: TObject);
  Var
    Actual   : String;
begin
  If Restante = Modulo.tPagos_ClientesMonto.Value Then {Si No Se ha Restado nada del Monto Original Entonces Cancela}
    Begin
      Modulo.tPagos_Clientes.Cancel;
      Modulo.tPagos_Clientes.CancelUpdates;
      Modulo.Mensajes.Text := _NoFacturasPendientes;
      Modulo.Mensajes.ShowPopUp
    End
  Else {De lo Contrario Actualiza el Monto Pagado y Aplica el Pago}
    Begin
      Modulo.tPagos_ClientesMonto.Value := Modulo.tPagos_ClientesMonto.Value - Restante;
      Modulo.tPagos_Clientes.Post;
      Actual := Modulo.tPagos_ClientesProceso.Value;
      Modulo.tPagos_Clientes.ApplyUpdates(0);
      Modulo.tPagos_Clientes.Refresh;
      Modulo.tPagos_Clientes.Locate('Proceso',Trim(Actual),[]);

      Modulo.tFacturas_Cliente.ApplyUpdates(0);     {Actualiza el Bancance del la Factura}
      Modulo.Mensajes.Text := Format(_FacturasPagadas,[Modulo.tPagos_ClientesMonto.Value]);
      Modulo.Mensajes.ShowPopUp;
      Modulo.tClientes.Refresh;

      If ImpRecibo.Checked Then Imprimir_Recibo.Execute {Imprime el Recibo}
    End;
  Cancelar.Execute;
end;

procedure TFCtasCobrar.Facturas_ClienteCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  If (Modulo.tFacturas_ClientePendiente.Value <= _Margen) And
     (Field = Modulo.tFacturas_ClientePendiente) Then
    Begin
      If (not Highlight) Then ABrush.Color := $00A5F1C1;
      AFont.Color := clBlue
    End;

  If Highlight Then AFont.Color := clYellow
end;

procedure TFCtasCobrar.Pagos_ClienteCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  If (Pagos_Cliente.GetActiveRow + 1) = Modulo.tPagos_Clientes.RecNo Then
     Begin
       ABrush.Color := clHighlight;
       AFont.Color := clHighlightText
     End;
end;

procedure TFCtasCobrar.Imprimir_ReciboExecute(Sender: TObject);
begin
  If Modulo.TPagos_Clientes.RecordCount > 0 Then
    ReportsAndForms.ReciboPagoCliente.Print
end;

procedure TFCtasCobrar.BlinkTimer(Sender: TObject);
  Var
    BlinkColor : Array [False..True] Of Integer;
begin
  BlinkColor [False] := Self.Color;
  BlinkColor [True] := clRed;
  MsgPagoFactura.Font.Color := BlinkColor[DoBlink];
  DoBlink := Not(DoBlink)
end;

end.
