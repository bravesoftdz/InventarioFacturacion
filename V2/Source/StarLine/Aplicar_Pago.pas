unit Aplicar_Pago;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, XPStyleActnCtrls, ActnMan, ToolWin, ActnCtrls, StdCtrls,
  Mask, DBCtrls, ExtCtrls, RegKeys, Spin, SUIButton, MoneyEdit, dbmnyed;

type
  TFAplicar_Monto = class(TForm)
    Panel_Aplicar: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Pendiente: TDBEdit;
    Opciones: TActionManager;
    Aceptar: TAction;
    Cancelar: TAction;
    Label1: TLabel;
    Restante: TEdit;
    bt_Cancelar: TsuiButton;
    bt_Aceptar: TsuiButton;
    Monto: TDBMoneyEdit;
    procedure CancelarExecute(Sender: TObject);
    procedure AceptarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAplicar_Monto: TFAplicar_Monto;

implementation

uses Utilidades, DataModulo, Generales;

{$R *.dfm}

procedure TFAplicar_Monto.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);

      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
      Monto.CalculatorLook.Color := Color;
      Monto.Button.Width := 24;
      Monto.CalculatorLook.ButtonColor := Color - 5
    End; {If _Load_Create}
end;

procedure TFAplicar_Monto.AceptarExecute(Sender: TObject);
begin
  ModalResult := MrOk
end;

procedure TFAplicar_Monto.CancelarExecute(Sender: TObject);
begin
  ModalResult := MrCancel
end;

Initialization
  RegisterClass(TFAplicar_Monto);

end.
