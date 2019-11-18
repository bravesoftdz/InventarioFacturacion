unit opMisc_Productos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIButton;

type
  TFOpciones_Misc_Productos = class(TForm)
    GroupBox1: TGroupBox;
    Precio1: TEdit;
    Label1: TLabel;
    Precio2: TEdit;
    Label2: TLabel;
    Precio3: TEdit;
    Label3: TLabel;
    Precio4: TEdit;
    Label4: TLabel;
    bt_Aceptar: TsuiButton;
    bt_Cancelar: TsuiButton;
    GroupBox2: TGroupBox;
    Posicion: TCheckBox;
    Orientacion: TCheckBox;
    Modelo: TCheckBox;
    Marca: TCheckBox;
    ProdColor: TCheckBox;
    Anio: TCheckBox;
    Formato: TEdit;
    Label5: TLabel;
    Remember: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure bt_AceptarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOpciones_Misc_Productos: TFOpciones_Misc_Productos;

implementation

uses Utilidades, RegKeys, Generales, Registry;

{$R *.dfm}

procedure TFOpciones_Misc_Productos.bt_AceptarClick(Sender: TObject);
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_LabelProductosKey,False);

  Try
    RegInfo.CloseKey;
    RegInfo.OpenKey(_GeneralConfigKey,False);

    RegInfo.WriteString(_Format_Descriptions,Formato.Text);

    RegInfo.CloseKey;
    RegInfo.OpenKey(_LabelProductosKey,False);
    {Etiquetas}
    RegInfo.WriteString(_lPrecio1,Precio1.Text);
    RegInfo.WriteString(_lPrecio2,Precio2.Text);
    RegInfo.WriteString(_lPrecio3,Precio3.Text);
    RegInfo.WriteString(_lPrecio4,Precio4.Text);

    {Campos}
    RegInfo.WriteBool(_ChkPosicon,Posicion.Checked);
    RegInfo.WriteBool(_ChkOrientacion,Orientacion.Checked);
    RegInfo.WriteBool(_ChkColor,ProdColor.Checked);
    RegInfo.WriteBool(_ChkMarca,Marca.Checked);
    RegInfo.WriteBool(_ChkModelo,Modelo.Checked);
    RegInfo.WriteBool(_ChkAno,Anio.Checked);
    RegInfo.WriteBool(_Remember,Remember.Checked);
  Except

  End;
end;

procedure TFOpciones_Misc_Productos.FormCreate(Sender: TObject);
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
        RegInfo.OpenKey(_GeneralConfigKey,False);

        Formato.Text := UpperCase(RegInfo.ReadString(_Format_Descriptions));

        RegInfo.CloseKey;
        RegInfo.OpenKey(_LabelProductosKey,False);

        {Etiquetas}
        Precio1.Text := RegInfo.ReadString(_lPrecio1);
        Precio2.Text := RegInfo.ReadString(_lPrecio2);
        Precio3.Text := RegInfo.ReadString(_lPrecio3);
        Precio4.Text := RegInfo.ReadString(_lPrecio4);

        {Campos}
        Posicion.Checked := RegInfo.ReadBool(_ChkPosicon);
        Orientacion.Checked := RegInfo.ReadBool(_ChkOrientacion);
        ProdColor.Checked := RegInfo.ReadBool(_ChkColor);
        Marca.Checked := RegInfo.ReadBool(_ChkMarca);
        Modelo.Checked := RegInfo.ReadBool(_ChkModelo);
        Anio.Checked := RegInfo.ReadBool(_ChkAno);
        Remember.Checked := RegInfo.ReadBool(_Remember);
      Except

      End;


    End
    {If _Load_Create}
end;

end.
