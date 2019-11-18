unit Modificar_Precio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, DBCtrls, SUIButton;

type
  TFModificar_Precio = class(TForm)
    Precios: TRadioGroup;
    bt_Aceptar: TsuiButton;
    bt_Cancelar: TsuiButton;
    Nuevo_Precio: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure PreciosClick(Sender: TObject);
    procedure Nuevo_PrecioKeyPress(Sender: TObject; var Key: Char);
    procedure bt_AceptarClick(Sender: TObject);
    procedure bt_CancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FModificar_Precio: TFModificar_Precio;

implementation

uses RegKeys, Utilidades, Generales, DataModulo;

{$R *.dfm}

procedure TFModificar_Precio.bt_AceptarClick(Sender: TObject);
begin
  _NuevoPrecio := StrToFloat(Nuevo_Precio.Text);
  _WindowsExitMode := mrOk;
end;

procedure TFModificar_Precio.bt_CancelarClick(Sender: TObject);
begin
  _WindowsExitMode := mrCancel
end;

procedure TFModificar_Precio.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      Self.Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);

      Try
        RegInfo.CloseKey;
        RegInfo.OpenKey(_LabelProductosKey,False);

        {Etiquetas}
        Precios.Items.Clear;
        Precios.Items.Add(RegInfo.ReadString(_lPrecio1) + '-> ' + Modulo.tProductosPrecio_Venta_Por_Mayor_Contado.Text);
        Precios.Items.Add(RegInfo.ReadString(_lPrecio2) + '-> ' + Modulo.tProductosPrecio_Venta_Por_Mayor_Credito.Text);
        Precios.Items.Add(RegInfo.ReadString(_lPrecio3) + '-> ' + Modulo.tProductosPrecio_Venta_Contado.Text);
        Precios.Items.Add(RegInfo.ReadString(_lPrecio4) + '-> ' + Modulo.tProductosPrecio_Venta_Credito.Text);
        Precios.Items.Add('Precio Mínimo' + '-> ' + Modulo.tProductosPrecio_Venta_Minimo.Text);
        Precios.Items.Add('Otro');
      Except

      End;


    End
    {If _Load_Create}
end;

procedure TFModificar_Precio.Nuevo_PrecioKeyPress(Sender: TObject;
  var Key: Char);
begin
  Try
   Precios.OnClick := Nil;
   Precios.ItemIndex := 5;
  Finally
   Precios.OnClick := PreciosClick;
  End;
end;

procedure TFModificar_Precio.PreciosClick(Sender: TObject);
begin
  Case Precios.ItemIndex Of
    0 : Nuevo_Precio.Text := Modulo.tProductosPrecio_Venta_Por_Mayor_Contado.Text;
    1 : Nuevo_Precio.Text := Modulo.tProductosPrecio_Venta_Por_Mayor_Credito.Text;
    2 : Nuevo_Precio.Text := Modulo.tProductosPrecio_Venta_Contado.Text;
    3 : Nuevo_Precio.Text := Modulo.tProductosPrecio_Venta_Credito.Text;
    4 : Nuevo_Precio.Text := Modulo.tProductosPrecio_Venta_Minimo.Text;
    5 : Nuevo_Precio.SetFocus
  End;{Case}
end;

end.
