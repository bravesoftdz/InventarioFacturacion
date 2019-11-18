unit Modificar_Medida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, DBCtrls, SUIButton;

type
  TFModificar_Medida = class(TForm)
    Medidas: TRadioGroup;
    bt_Aceptar: TsuiButton;
    bt_Cancelar: TsuiButton;
    Contenido: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure MedidasClick(Sender: TObject);
    procedure bt_AceptarClick(Sender: TObject);
    procedure bt_CancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FModificar_Medida: TFModificar_Medida;

implementation

uses RegKeys, Utilidades, Generales, DataModulo, Autorizar, DB;

{$R *.dfm}

procedure TFModificar_Medida.bt_AceptarClick(Sender: TObject);
begin
  Try
    _Contenido := StrToFloat(Contenido.Text);
  Except
    _Contenido := 1;
  End;
  _WindowsExitMode := mrOk;
end;

procedure TFModificar_Medida.bt_CancelarClick(Sender: TObject);
begin
  _WindowsExitMode := mrCancel
end;

procedure TFModificar_Medida.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      Self.Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);

      Try
        // Cargar Medidas
        If Modulo.tProductos.Active Then
          Begin
            Modulo.tProductos.Cancel;
            Modulo.tProductos.CancelUpdates;
            Modulo.tProductos.Close;
          End;

        Modulo.tProductos.Params.ParamByName('Codigo').Clear;
        Modulo.tProductos.Params.ParamByName('Barra').Clear;
        Modulo.tProductos.Params.ParamByName('Secuencia').Clear;
        Modulo.tProductos.Params.ParamByName('Proceso').Clear;
        Modulo.tProductos.Params.ParamByName('Referencia').Clear;

        ParamSearchKey(Modulo.tProductos,'Codigo',Modulo.tDetalles_FacturaCodigo_Real.Value);

        {Etiquetas}
        Medidas.Items.Clear;
        Medidas.Items.Add(Modulo.tProductosMedida_Venta.Text);
        Medidas.Items.Add('Unidad');
        Medidas.ItemIndex := 0;
      Except

      End;


    End
    {If _Load_Create}
end;

procedure TFModificar_Medida.MedidasClick(Sender: TObject);
begin
  Contenido.ReadOnly := True;
  Case Medidas.ItemIndex Of
    0 : Begin
          Contenido.Text := Modulo.tProductosUnidades_Medida_Venta.Text;
          _NuevoPrecio := Modulo.tProductosPrecio_Venta_Por_Mayor_Contado.Value;
          _Medida := Modulo.tProductosMedida_Venta.Text;
        End;
    1 : Begin
          Contenido.Text := '1';
          _NuevoPrecio := Modulo.tProductosPrecio_Unidad.Value;
          _Medida := 'Unidad';
        End;
  End;{Case}
end;

Initialization
  RegisterClass(TFModificar_Medida);

end.
