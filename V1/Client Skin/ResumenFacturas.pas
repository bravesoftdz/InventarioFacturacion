unit ResumenFacturas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Wwdbigrd, Grids, Wwdbgrid, ExtCtrls, StdCtrls, Mask,
  DBCtrls, ActnList, XPStyleActnCtrls, ActnMan, ToolWin, ActnCtrls, SUIButton;

type
  TFResumenFacturas = class(TForm)
    Panel_Facturas: TPanel;
    Facturas: TwwDBGrid;
    Facturas_ClienteIButton: TwwIButton;
    Opciones: TActionManager;
    Cerrar: TAction;
    Label24: TLabel;
    Balance: TDBEdit;
    Label1: TLabel;
    bt_Cerrar: TsuiButton;
    Imagen: TImage;
    procedure CerrarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FResumenFacturas: TFResumenFacturas;

implementation

uses Utilidades, RegKeys, DataModulo, Generales;

{$R *.dfm}

procedure TFResumenFacturas.CerrarExecute(Sender: TObject);
begin
  Close
end;

procedure TFResumenFacturas.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);

      {Configuracion de la Pantalla}
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
      Self.Top := 0;
      Self.Left := Screen.Width - Self.Width;

      {Configuracion DataSource}
      If _Source = 'Proveedor' Then
        Facturas.DataSource := Modulo.dFacturas_Proveedor;

      If _Source = 'Cliente' Then
        Facturas.DataSource := Modulo.dFacturas_Cliente;
    End {If _Load_Create}
end;

Initialization
  RegisterClass(TFResumenFacturas);


end.
