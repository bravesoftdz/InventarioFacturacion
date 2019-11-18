unit PagosFacturas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, Mask, DBCtrls,
  ActnList, XPStyleActnCtrls, ActnMan, ppDB, ppCtrls, ppPrnabl, ppClass,
  ppBands, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppModule,
  raCodMod, ppVar, Db, Menus;

type
  TFPago_Factura = class(TForm)
    Detalles: TwwDBGrid;
    Label85: TLabel;
    DBEdit67: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label84: TLabel;
    DBEdit66: TDBEdit;
    DBEdit68: TDBEdit;
    Label86: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
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
  FPago_Factura: TFPago_Factura;
  TotalImpuesto : Currency = 0;

implementation

uses DataModulo, Utilidades;

{$R *.dfm}

procedure TFPago_Factura.FormCreate(Sender: TObject);
begin
  {Configuracion de la Pantalla}
  Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
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
end;

procedure TFPago_Factura.DetallesCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  If (Field = Modulo.tDetalle_Pago_FacturaValor_Devolver) Then
    Begin
      AFont.Style := [fsBold];
      ABrush.Color := Self.Color;
    End
end;

procedure TFPago_Factura.DetallesEnter(Sender: TObject);
begin
  Detalles.SelectedField := Modulo.tDetalle_Pago_FacturaValor_Recibido
end;

procedure TFPago_Factura.Procesar_PagoExecute(Sender: TObject);
begin
  If Modulo.tFacturasPendiente.Value < 0 Then
    Raise Exception.Create(_ErrPendienteMenorCero);

  If (Trim(Modulo.tFacturasCondicion.Value) = 'Contado') And
     (Modulo.tFacturasPendiente.Value > _Margen) Then
    Raise Exception.Create(_ErrPendienteMayorCero);

  // Limpiar Devoluciones Anteriores

  If Not (Modulo.tDetalle_Pago_Factura.State In DsEditModes) Then Modulo.tDetalle_Pago_Factura.Edit;
  Modulo.tDetalle_Pago_FacturaValor_Devolver.Value := Modulo.tDetalle_Pago_FacturaDevolver_Forma_Pago.Value;
  Modulo.tDetalle_Pago_Factura.Post;
  Close
end;

procedure TFPago_Factura.DetallesDblClick(Sender: TObject);
begin
  Modulo.tDetalle_Pago_FacturaBeforePost(Modulo.tDetalle_Pago_Factura)
end;

end.
