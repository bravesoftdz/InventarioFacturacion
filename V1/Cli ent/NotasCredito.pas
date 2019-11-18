unit NotasCredito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, wwDataInspector, AdvPageControl, ComCtrls, Wwdbigrd,
  Wwdbgrid, ActnMan, ActnColorMaps, Buttons, ActnList, XPStyleActnCtrls,
  ToolWin, ActnCtrls, Db, StdCtrls, wwdbdatetimepicker, Mask, DBCtrls, ExtCtrls,
  ppDB, ppDBPipe, ppModule, raCodMod, ppBands, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport;

type
  TFNotas_Credito = class(TForm)
    Page_Clientes: TAdvPageControl;
    Tab_Clientes: TAdvTabSheet;
    DatosCliente: TwwDataInspector;
    Page_Facturas: TAdvPageControl;
    AdvTabSheet1: TAdvTabSheet;
    Page_Creditos: TAdvPageControl;
    Tab_Creditos: TAdvTabSheet;
    Facturas_Cliente: TwwDBGrid;
    Pagos_Cliente: TwwDBGrid;
    Opciones: TActionManager;
    Salir: TAction;
    Buscar_Cliente: TAction;
    btBuscarCliente: TSpeedButton;
    Botones: TAdvPageControl;
    Page_Botones: TAdvTabSheet;
    ActionToolBar1: TActionToolBar;
    Acreditar: TAction;
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
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Facturas_ClienteIButton: TwwIButton;
    procedure Estado_CuentasExecute(Sender: TObject);
    procedure Facturas_ClienteDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Buscar_ClienteExecute(Sender: TObject);
    procedure AcreditarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AplicarExecute(Sender: TObject);
    procedure Facturas_ClienteIButtonClick(Sender: TObject);
    Function PagarFactura (Const Monto: Currency) : Currency;
    procedure Facturas_ClienteCalcCellColors(Sender: TObject;
      Field: TField; State: TGridDrawState; Highlight: Boolean;
      AFont: TFont; ABrush: TBrush);
    procedure Pagos_ClienteCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure Imprimir_ReciboExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNotas_Credito : TFNotas_Credito;

implementation

uses DataModulo, Utilidades, SrchDlg, Reports_Forms;

{$R *.dfm}

procedure TFNotas_Credito.FormCreate(Sender: TObject);
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
  Modulo.tNotas_Credito.Open;

  {Insertar Registro en Blanco}
//  Nuevo.Execute
end;

procedure TFNotas_Credito.Buscar_ClienteExecute(Sender: TObject);
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

          Modulo.tNotas_Credito.Cancel;
          Modulo.tNotas_Credito.Params.ParamByName('Cliente').AsString := Trim(Modulo.tClientesCedula_Rnc_Pasaporte.AsString);
          Modulo.tNotas_Credito.Refresh
        End
    Finally
      DlgSearch.CloseDlg
    End {Try}
end;

procedure TFNotas_Credito.AcreditarExecute(Sender: TObject);
begin
  Modulo.tNotas_Credito.Cancel;
  Modulo.tNotas_Credito.Append;
  Modulo.tNotas_CreditoProceso.Value := Gen_ProcessNumber(_CurrentUser);
  Modulo.tNotas_CreditoFecha.Value := Modulo.Enlace.AppServer.ServerDate;
  Modulo.tNotas_CreditoHora.Value := Modulo.Enlace.AppServer.ServerTime;
  Modulo.tNotas_CreditoUsuario.Value := _CurrentUser;
  Modulo.tNotas_CreditoConcepto.Value := Format(_ConceptoNotaCredito,[Modulo.tNotas_CreditoFecha.Text,Modulo.tFacturas_ClienteConcepto_Factura.Value]);
  Modulo.tNotas_CreditoCliente.Value := Modulo.tClientesCedula_Rnc_Pasaporte.Value;
  PanelPagos.Visible := True;
  ValorPago.SetFocus
end;

procedure TFNotas_Credito.CancelarExecute(Sender: TObject);
begin
  Modulo.tNotas_Credito.Cancel;
  Modulo.tNotas_Credito.CancelUpdates;
  PanelPagos.Visible := False
end;

procedure TFNotas_Credito.Estado_CuentasExecute(Sender: TObject);
begin
  If Modulo.tClientes.RecordCount > 0 Then
    Begin
      Modulo.tPagos_Clientes.Open;
      ReportsAndForms.Estado_Cuenta_Clientes.Print;
      Modulo.tPagos_Clientes.Close
    End
end;

procedure TFNotas_Credito.SalirExecute(Sender: TObject);
begin
  Close
end;

Function TFNotas_Credito.PagarFactura(Const Monto : Currency) : Currency;
  Begin
    Result := Monto;
    If Modulo.tFacturas_ClientePendiente.Value > _Margen Then
      Begin
        {Añadir a Detalle de Pagos}
        Modulo.tDetalle_Notas_Credito.Append;
        Modulo.tDetalle_Notas_CreditoFecha.Value := Modulo.tNotas_CreditoFecha.Value;
        Modulo.tDetalle_Notas_CreditoHora.Value := Modulo.tNotas_CreditoHora.Value;
        Modulo.tDetalle_Notas_CreditoProceso_Factura.Value := Modulo.tFacturas_ClienteProceso.Value;
        Modulo.tDetalle_Notas_CreditoCliente.Value := Modulo.tClientesCedula_Rnc_Pasaporte.Value;
        If Modulo.tFacturas_ClientePendiente.Value > Monto Then
          Modulo.tDetalle_Notas_CreditoMonto.Value := Monto
        Else Modulo.tDetalle_Notas_CreditoMonto.Value := Modulo.tFacturas_ClientePendiente.Value;

        Result := Monto - Modulo.tDetalle_Notas_CreditoMonto.Value;

        Modulo.tFacturas_Cliente.Edit;
        Modulo.tFacturas_ClientePagado.Value := Modulo.tFacturas_ClientePagado.Value + Modulo.tDetalle_Notas_CreditoMonto.Value;
        Modulo.tFacturas_ClientePendiente.Value := Modulo.tFacturas_ClienteTotalNeto.Value - Modulo.tFacturas_ClientePagado.Value;
        Modulo.tFacturas_Cliente.Post;

        Modulo.tDetalle_Notas_CreditoPendiente_Factura.Value := Modulo.tFacturas_ClientePendiente.Value;

        Modulo.tDetalle_Notas_Credito.Post
      End
  End;

procedure TFNotas_Credito.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Modulo.tClientes.Params.ParamByName('Cedula_Rnc_Pasaporte').AsString := '';
  Modulo.tFacturas_Cliente.Params.ParamByName('Cliente').AsString := '';
  Modulo.tNotas_Credito.Params.ParamByName('Cliente').AsString := '';

  Modulo.tFacturas_Cliente.Close;
  Modulo.tNotas_Credito.Close;
  Modulo.tClientes.Close
end;

procedure TFNotas_Credito.AplicarExecute(Sender: TObject);
  Var
    Restante : Currency;
    Actual   : String;
begin
  Concepto.SetFocus;

  If Modulo.tNotas_CreditoMonto.Value <= 0 Then
    Raise Exception.Create(_ErrMontoMenorCero);

  If Modulo.tNotas_CreditoMonto.Value > Modulo.tClientesBalance_Actual.Value Then
    Raise Exception.Create(Format(_ErrMontoMayorReal,[Modulo.tClientesBalance_Actual.Value]));

  Modulo.tNotas_Credito.Post;
  Restante := Modulo.tNotas_CreditoMonto.Value;
  If Restante >= _Margen Then Restante := PagarFactura(Restante);

  If Restante = Modulo.tNotas_CreditoMonto.Value Then {Si No Se ha Restado nada del Monto Original Entonces Cancela}
    Begin
      Modulo.tNotas_Credito.Cancel;
      Modulo.tNotas_Credito.CancelUpdates;
      Modulo.Mensajes.Text := _NoFacturasPendientes;
      Modulo.Mensajes.ShowPopUp
    End
  Else {De lo Contrario Actualiza el Monto Pagado y Aplica el Pago}
    Begin
      Modulo.tNotas_CreditoMonto.Value := Modulo.tNotas_CreditoMonto.Value - Restante;
      Modulo.tNotas_Credito.Post;
      Actual := Modulo.tNotas_CreditoProceso.Value;
      Modulo.tNotas_Credito.ApplyUpdates(0);
      Modulo.tNotas_Credito.Refresh;
      Modulo.tNotas_Credito.Locate('Proceso',Trim(Actual),[]);

      Modulo.tFacturas_Cliente.ApplyUpdates(0);     {Actualiza el Bancance del la Factura}
      Modulo.Mensajes.Text := Format(_FacturasAcreditadas,[Modulo.tNotas_CreditoMonto.Value]);
      Modulo.Mensajes.ShowPopUp;
      Modulo.tClientes.Refresh;

      If ImpRecibo.Checked Then Imprimir_Recibo.Execute {Imprime el Recibo}
    End;
  Cancelar.Execute;
end;

procedure TFNotas_Credito.Facturas_ClienteIButtonClick(Sender: TObject);
begin
  Mensaje('Boo')
end;

procedure TFNotas_Credito.Facturas_ClienteCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
{  If  Then
    If (not Highlight) Then ABrush.Color := $00A5F1C1;}

  If (Modulo.tFacturas_ClientePendiente.Value <= _Margen) And
     (Field = Modulo.tFacturas_ClientePendiente) Then
    Begin
      If (not Highlight) Then ABrush.Color := $00A5F1C1;
      AFont.Color := clBlue
    End;

  If Highlight Then AFont.Color := clYellow
end;

procedure TFNotas_Credito.Facturas_ClienteDblClick(Sender: TObject);
  Var Restante : Currency;
begin
  Restante := Modulo.tNotas_CreditoMonto.Value;
  PagarFactura(Restante)
end;

procedure TFNotas_Credito.Pagos_ClienteCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
 { If (Pagos_Cliente.GetActiveRow + 1) = Modulo.tNotas_Credito.RecNo Then
     Begin
       ABrush.Color := clHighlight;
       AFont.Color := clHighlightText
     End;}
end;

procedure TFNotas_Credito.Imprimir_ReciboExecute(Sender: TObject);
begin
  If Modulo.TNotas_Credito.RecordCount > 0 Then
    ReportsAndForms.Recibo_Nota_Credito.Print
end;

end.
