unit Aplicar_Descuento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, DBCtrls, SUIButton, cxRadioGroup,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, wwdbedit, Wwdotdot, Wwdbcomb, cxGroupBox, MoneyEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc;

type
  TfrmAplicar_Descuento = class(TForm)
    bt_Aceptar: TsuiButton;
    bt_Cancelar: TsuiButton;
    rgTipo_Descuento: TcxRadioGroup;
    Label1: TLabel;
    Monto_Descuento: TcxCalcEdit;
    procedure FormCreate(Sender: TObject);
    procedure PreciosClick(Sender: TObject);
    procedure bt_CancelarClick(Sender: TObject);
    procedure rgTipo_DescuentoPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAplicar_Descuento: TfrmAplicar_Descuento;

implementation

uses RegKeys, Utilidades, Generales, DataModulo, Autorizar;

{$R *.dfm}

procedure TfrmAplicar_Descuento.bt_CancelarClick(Sender: TObject);
begin
  _WindowsExitMode := mrCancel
end;

procedure TfrmAplicar_Descuento.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      Self.Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);

    End
    {If _Load_Create}
end;

procedure TfrmAplicar_Descuento.PreciosClick(Sender: TObject);
begin
{  Nuevo_Precio.ReadOnly := True;
  Case Precios.ItemIndex Of
    0 : Nuevo_Precio.Text := Modulo.tProductosPrecio_Venta_Por_Mayor_Contado.Text;
    1 : Nuevo_Precio.Text := Modulo.tProductosPrecio_Venta_Por_Mayor_Credito.Text;
    2 : Nuevo_Precio.Text := Modulo.tProductosPrecio_Venta_Contado.Text;
    3 : Nuevo_Precio.Text := Modulo.tProductosPrecio_Venta_Credito.Text;
    4 : Begin
          If Trim(UpperCase(_Medida)) <> 'UNIDAD' Then
            Begin
              Mensaje('Este precio NO APLICA para ' + _Medida + #13'Se ha Seleccionando: '+ Precios.Items[0],self);
              Precios.ItemIndex := 0;
              Exit;
            End;
          Nuevo_Precio.Text := Modulo.tProductosPrecio_Unidad.Text;
        End;
    5 : Begin
          Granted := False;
          ModuloGenerales.Autorizar_Opcion(Self,self.Name);
            If (Not Granted) Then
              Begin
                bt_Aceptar.SetFocus;
                Raise Exception.Create(_ErrAccesoDenegadoOpcion);
              End;
          Nuevo_Precio.Text := Modulo.tProductosPrecio_Venta_Minimo.Text;
        End;
    6 : Begin
          Granted := False;
          ModuloGenerales.Autorizar_Opcion(Self,self.Name);
            If (Not Granted) Then
              Begin
                bt_Aceptar.SetFocus;
                Raise Exception.Create(_ErrAccesoDenegadoOpcion);
              End;
          Nuevo_Precio.ReadOnly := False;
          Nuevo_Precio.SetFocus;
        End;
  End;{Case}
end;

procedure TfrmAplicar_Descuento.rgTipo_DescuentoPropertiesChange(
  Sender: TObject);
begin
  Case rgTipo_Descuento.ItemIndex Of
    0 : Begin
          Monto_Descuento.Value := 0;
          Monto_Descuento.Properties.ReadOnly := True;
          Monto_Descuento.ParentColor := True;
          bt_Aceptar.SetFocus;
        End;
    Else Begin
          Monto_Descuento.Properties.ReadOnly := False;
          Monto_Descuento.ParentColor := False;
          Monto_Descuento.Style.Color := clWindow;
          Monto_Descuento.SetFocus;
        End;

  End;{Case}
end;

Initialization
  RegisterClass(TfrmAplicar_Descuento);

end.
