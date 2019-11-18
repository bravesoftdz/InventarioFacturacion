unit PagosCtas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, Mask, DBCtrls,
  ActnList, XPStyleActnCtrls, ActnMan, Db, Menus, ToolWin, ActnCtrls, RegKeys,
  AdvGlowButton, TaskDialog;

type
  TfrmPago_Cuentas = class(TForm)
    Detalles: TwwDBGrid;
    Label85: TLabel;
    Total_Neto: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Tasa: TDBEdit;
    Monto_Moneda_Local: TDBEdit;
    Opciones: TActionManager;
    Procesar_Pago: TAction;
    Cancelar: TAction;
    gbt_Aceptar: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    Aplicar_Nota_Credito: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetallesExit(Sender: TObject);
    procedure DetallesFieldChanged(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure DetallesCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure DetallesEnter(Sender: TObject);
    procedure Procesar_PagoExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPago_Cuentas: TfrmPago_Cuentas;
  TotalImpuesto : Currency = 0;

implementation

uses DataModulo, Utilidades, Generales;

{$R *.dfm}

procedure TfrmPago_Cuentas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Detalles.OnFieldChanged := Nil
end;

procedure TfrmPago_Cuentas.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Configuracion de la Pantalla}
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
      _CanCancel := True;

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);

      Try
        Modulo.tForma_Pagos_Clientes.Open;
        Modulo.tFormas_Pago.Filter := 'Numero >= 0';
        Modulo.tFormas_Pago.Filtered := True;
        Modulo.tFormas_Pago.Open;
        Modulo.tFormas_Pago.First;
        Modulo.tForma_Pagos_Clientes.BeforePost := Nil;
        While Not Modulo.tFormas_Pago.Eof Do
          Begin

            If Not Modulo.tForma_Pagos_Clientes.Locate(Modulo.tForma_Pagos_ClientesForma_Pago.FieldName,
                                                       Modulo.tFormas_PagoNumero.Value,[]) Then
              Modulo.tForma_Pagos_Clientes.Append
            Else
              Modulo.tForma_Pagos_Clientes.Edit;

            Modulo.tForma_Pagos_ClientesForma_Pago.Value := Modulo.tFormas_PagoNumero.Value;
            Modulo.tForma_Pagos_ClientesTasa.Value := Modulo.tFormas_PagoTasa.Value;
            Modulo.tForma_Pagos_ClientesEs_Efectivo.Value := Modulo.tFormas_PagoEs_Efectivo.Value;
            Modulo.tForma_Pagos_ClientesRequiere_Documento.Value := Modulo.tFormas_PagoRequiere_Documento.Value;
            Modulo.tForma_Pagos_ClientesRequiere_Vencimiento.Value := Modulo.tFormas_PagoRequiere_Vencimiento.Value;
            Modulo.tForma_Pagos_ClientesRequiere_Aprobacion.Value := Modulo.tFormas_PagoRequiere_Aprobacion.Value;
            Modulo.tForma_Pagos_ClientesFecha.Value := Modulo.tPagos_ClientesFecha.Value;
            Modulo.tForma_Pagos_ClientesHora.Value := Modulo.tPagos_ClientesHora.Value;
            Modulo.tForma_Pagos_ClientesID.Value := _CurrentTerminal;
            Modulo.tForma_Pagos_Clientes.Post;
            Modulo.tFormas_Pago.Next
          End
      Finally
        Modulo.tFormas_Pago.Filtered := False;
        Modulo.tForma_Pagos_Clientes.First
      End {Try}

    End
    {If _Load_Create}
end;

procedure TfrmPago_Cuentas.DetallesCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  If (Field = Modulo.tForma_Pagos_ClientesValor_Devolver) Then
    Begin
      AFont.Style := [fsBold];
      ABrush.Color := Self.Color;
    End
end;

procedure TfrmPago_Cuentas.DetallesEnter(Sender: TObject);
begin
  Detalles.SelectedField := Modulo.tForma_Pagos_ClientesValor_Recibido;
  Detalles.OnFieldChanged := DetallesFieldChanged
end;

procedure TfrmPago_Cuentas.DetallesExit(Sender: TObject);
begin
  Detalles.OnFieldChanged := Nil
end;

procedure TfrmPago_Cuentas.DetallesFieldChanged(Sender: TObject; Field: TField);
begin

  If Field.FieldName = Modulo.tForma_Pagos_ClientesValor_Recibido.FieldName Then
    Begin
      Detalles.OnFieldChanged := Nil;
      Modulo.tForma_Pagos_Clientes.Post;
      Detalles.OnFieldChanged := DetallesFieldChanged
    end
end;

procedure TfrmPago_Cuentas.Procesar_PagoExecute(Sender: TObject);
  Var
    Current_Record : TBookMark;
begin
  Try
    Modulo.tForma_Pagos_Clientes.BeforePost := Nil;

    If Modulo.tForma_Pagos_Clientes.State In DsEditModes Then
      Modulo.tForma_Pagos_Clientes.Post;

    If Not (Modulo.tForma_Pagos_Clientes.State In DsEditModes) Then Modulo.tForma_Pagos_Clientes.Edit;
{    Modulo.tForma_Pagos_ClientesValor_Devolver_Local.Value := Modulo.tPagos_ClientesDevuelto.Value;
    Modulo.tForma_Pagos_ClientesValor_Devolver.Value := Modulo.tPagos_ClientesTDevueltoTotal_Efectivo_Devuelto.Value / Modulo.tForma_Pagos_ClientesTasa.Value;}
    Modulo.tForma_Pagos_Clientes.Post;

    ModalResult := MrOk
  Finally
  end // Try
end;

procedure TfrmPago_Cuentas.CancelarExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
  Close
end;

Initialization
  RegisterClass(TfrmPago_Cuentas);

  end.
