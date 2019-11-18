unit PagosCompras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, Mask, DBCtrls,
  ActnList, XPStyleActnCtrls, ActnMan, Db, Menus;

type
  TFPago_Compra = class(TForm)
    Detalles: TwwDBGrid;
    Label85: TLabel;
    Total_Neto: TDBEdit;
    btn_Procesar: TBitBtn;
    btn_Cancelar: TBitBtn;
    Label84: TLabel;
    Total_Pagado: TDBEdit;
    Pendiente_Cobrar: TDBEdit;
    Label86: TLabel;
    Total_Metodo_Pago: TDBEdit;
    Label4: TLabel;
    Valor_Devolver: TDBEdit;
    Valor_Devolver_Metodo_Pago: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Tasa: TDBEdit;
    Monto_Moneda_Local: TDBEdit;
    Opciones: TActionManager;
    Procesar_Pago: TAction;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure DetallesCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure DetallesEnter(Sender: TObject);
    procedure Procesar_PagoExecute(Sender: TObject);
    procedure DetallesDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPago_Compra: TFPago_Compra;
  TotalImpuesto : Currency = 0;

implementation

uses DataModulo, Utilidades, Generales;

{$R *.dfm}

procedure TFPago_Compra.FormCreate(Sender: TObject);
begin
  {Configuracion de la Pantalla}
  If _Load_Create Then
    Begin
      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);

        {  Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
        _CanCancel := True;

        Try
          Modulo.tDetalle_Pago_Factura.Open;
          Modulo.tFormas_Pago.Open;
          Modulo.tFormas_Pago.First;
          Modulo.tDetalle_Pago_Factura.BeforePost := Nil;
          While Not Modulo.tFormas_Pago.Eof Do
            Begin

              If Not Modulo.tDetalle_Pago_Factura.Locate(Modulo.tDetalle_Pago_FacturaForma_Pago.FieldName,
                                                         Modulo.tFormas_PagoNumero.Value,[]) Then
                Modulo.tDetalle_Pago_Factura.Append
              Else
                Modulo.tDetalle_Pago_Factura.Edit;

              Modulo.tDetalle_Pago_FacturaForma_Pago.Value := Modulo.tFormas_PagoNumero.Value;
              Modulo.tDetalle_Pago_FacturaTasa.Value := Modulo.tFormas_PagoTasa.Value;
              Modulo.tDetalle_Pago_FacturaEs_Efectivo.Value := Modulo.tFormas_PagoEs_Efectivo.Value;
              Modulo.tDetalle_Pago_FacturaRequiere_Documento.Value := Modulo.tFormas_PagoRequiere_Documento.Value;
              Modulo.tDetalle_Pago_FacturaRequiere_Vencimiento.Value := Modulo.tFormas_PagoRequiere_Vencimiento.Value;
              Modulo.tDetalle_Pago_FacturaRequiere_Aprobacion.Value := Modulo.tFormas_PagoRequiere_Aprobacion.Value;
              Modulo.tDetalle_Pago_FacturaFecha.Value := Modulo.tFacturasFecha.Value;
              Modulo.tDetalle_Pago_FacturaHora.Value := Modulo.tFacturasHora.Value;
              If (Trim(Modulo.tFacturasCondicion.Value) = 'Contado') And
                 (Modulo.tFacturasPendiente.Value > _Margen) And
                 (Modulo.tDetalle_Pago_FacturaForma_Pago.Value = Modulo.tParametrosTermino_COD.Value)
                 Then Modulo.tDetalle_Pago_FacturaValor_Recibido.Value := Modulo.tDetalle_Pago_FacturaValor_Recibido.Value + Modulo.tFacturasPendiente.Value;
              Modulo.tDetalle_Pago_Factura.Post;
              Modulo.tFormas_Pago.Next
            End
        Finally
          Modulo.tDetalle_Pago_Factura.BeforePost := Modulo.tDetalle_Pago_FacturaBeforePost;
          If Not (Modulo.tDetalle_Pago_Factura.Locate(Modulo.tDetalle_Pago_FacturaForma_Pago.FieldName,Modulo.tParametrosTermino_COD.Value,[])) Then
            Modulo.tDetalle_Pago_Factura.First
        End {Try}

    End
    {If _Load_Create}
end;

procedure TFPago_Compra.DetallesCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  If (Field = Modulo.tDetalle_Pago_FacturaValor_Devolver) Then
    Begin
      AFont.Style := [fsBold];
      ABrush.Color := Self.Color;
    End
end;

procedure TFPago_Compra.DetallesEnter(Sender: TObject);
begin
 // Detalles.SelectedField := Modulo.tDetalle_Pago_FacturaValor_Recibido
end;

procedure TFPago_Compra.Procesar_PagoExecute(Sender: TObject);
begin
{  If Modulo.tFacturasPendiente.Value < 0 Then
    Raise Exception.Create(_ErrPendienteMenorCero);

  If (Trim(Modulo.tFacturasCondicion.Value) = 'Contado') And
     (Modulo.tFacturasPendiente.Value > _Margen) Then
    Raise Exception.Create(_ErrPendienteMayorCero);

  // Limpiar Devoluciones Anteriores

  If Not (Modulo.tDetalle_Pago_Factura.State In DsEditModes) Then Modulo.tDetalle_Pago_Factura.Edit;
  Modulo.tDetalle_Pago_FacturaValor_Devolver.Value := Modulo.tDetalle_Pago_FacturaDevolver_Forma_Pago.Value;
  Modulo.tDetalle_Pago_Factura.Post;}
  Close
end;

procedure TFPago_Compra.DetallesDblClick(Sender: TObject);
begin
//  Modulo.tDetalle_Pago_FacturaBeforePost(Modulo.tDetalle_Pago_Factura)
end;

Initialization
  RegisterClass(TFPago_Compra);

  end.
