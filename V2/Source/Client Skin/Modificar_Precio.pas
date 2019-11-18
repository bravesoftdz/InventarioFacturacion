{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
unit Modificar_Precio;

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
  dxSkinXmas2008Blue, wwdbedit, Wwdotdot, Wwdbcomb, cxGroupBox, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalc;

type
  TFModificar_Precio = class(TForm)
    bt_Aceptar: TsuiButton;
    bt_Cancelar: TsuiButton;
    gbSeleccion_Precio: TcxGroupBox;
    rbPrecio_1: TcxRadioButton;
    Precio_Venta_Por_Mayor_Contado: TDBEdit;
    rbPrecio_2: TcxRadioButton;
    Precio_Venta_Por_Mayor_Credito: TDBEdit;
    rbPrecio_3: TcxRadioButton;
    Precio_Venta_Contado: TDBEdit;
    rbPrecio_4: TcxRadioButton;
    Precio_Venta_Credito: TDBEdit;
    rbPrecio_Unidad: TcxRadioButton;
    Precio_Unidad: TDBEdit;
    rbPrecio_Minimo: TcxRadioButton;
    Precio_Venta_Minimo: TDBEdit;
    rbOtro_Precio: TcxRadioButton;
    Nuevo_Precio: TcxCalcEdit;
    procedure FormCreate(Sender: TObject);
    procedure bt_AceptarClick(Sender: TObject);
    procedure bt_CancelarClick(Sender: TObject);
    procedure UncheckOther(Sender : TObject);
  private
    { Private declarations }
    _Selected : Boolean;
  public
    { Public declarations }
  end;

var
  FModificar_Precio: TFModificar_Precio;

implementation

uses RegKeys, Utilidades, Generales, DataModulo, Autorizar;

{$R *.dfm}

procedure TFModificar_Precio.bt_AceptarClick(Sender: TObject);
begin
  Try
   _NuevoPrecio := 0;
   Case _Selected Of
     True : Begin
              _NuevoPrecio := Nuevo_Precio.Value;
              ModalResult := mrOk;
            End;
     False: ModalResult := mrCancel;
   End; {Case}
  Except
  End;
end;

procedure TFModificar_Precio.bt_CancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFModificar_Precio.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      _Selected := False;
      Self.Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);

      Try
        RegInfo.CloseKey;
        RegInfo.OpenKey(_LabelProductosKey,False);
        // Cargar Precios
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
        rbPrecio_1.Caption := RegInfo.ReadString(_lPrecio1);
        rbPrecio_2.Caption := RegInfo.ReadString(_lPrecio2);
        rbPrecio_3.Caption := RegInfo.ReadString(_lPrecio3);
        rbPrecio_4.Caption := RegInfo.ReadString(_lPrecio4);
      Except

      End;
    End
    {If _Load_Create}
end;

procedure TFModificar_Precio.UncheckOther(Sender: TObject);
  Var
    I : Integer;
begin
  for I := 0 to Self.ComponentCount - 1 do
    If (Self.Components[I] Is TcxRadioButton) And (Self.Components[I].Name <> (Sender as TcxRadioButton).Name) Then
      Begin
        _Selected := True;
        (Self.Components[I] As TcxRadioButton).Checked := False;
        Nuevo_Precio.ParentColor := True;
        Nuevo_Precio.Properties.ReadOnly := True;
        Case (Sender as TcxRadioButton).Tag Of
          0 : Nuevo_Precio.Value := Modulo.tProductosPrecio_Venta_Por_Mayor_Contado.Value;
          1 : Nuevo_Precio.Value := Modulo.tProductosPrecio_Venta_Por_Mayor_Credito.Value;
          2 : Nuevo_Precio.Value := Modulo.tProductosPrecio_Venta_Contado.Value;
          3 : Nuevo_Precio.Value := Modulo.tProductosPrecio_Venta_Credito.Value;
          4 : Nuevo_Precio.Value := Modulo.tProductosPrecio_Unidad.Value;
          5 : Nuevo_Precio.Value := Modulo.tProductosPrecio_Venta_Minimo.Value;
          6 : Begin
                Nuevo_Precio.ParentColor := False;
                Nuevo_Precio.Style.Color := clWindow;
                Nuevo_Precio.Properties.ReadOnly := False;
                Nuevo_Precio.SetFocus;
              End;
        End;{Case}
      End;
end;

Initialization
  RegisterClass(TFModificar_Precio);

end.
