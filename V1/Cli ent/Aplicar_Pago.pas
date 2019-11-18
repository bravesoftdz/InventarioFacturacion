unit Aplicar_Pago;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, XPStyleActnCtrls, ActnMan, ToolWin, ActnCtrls, StdCtrls,
  Mask, DBCtrls, ExtCtrls, fcCombo, fcCalcEdit;

type
  TFAplicar_Monto = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Pendiente: TDBEdit;
    atv_Acept_Cancel: TActionToolBar;
    Opciones: TActionManager;
    Login: TAction;
    Salir: TAction;
    Monto: TfcCalcEdit;
    Label1: TLabel;
    Restante: TEdit;
    procedure SalirExecute(Sender: TObject);
    procedure LoginExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAplicar_Monto: TFAplicar_Monto;

implementation

uses Utilidades, DataModulo;

{$R *.dfm}

procedure TFAplicar_Monto.FormCreate(Sender: TObject);
begin
  Color := GetRegColor(_GeneralConfigKey,_WindowsColor)
end;

procedure TFAplicar_Monto.LoginExecute(Sender: TObject);
begin
  ModalResult := MrOk
end;

procedure TFAplicar_Monto.SalirExecute(Sender: TObject);
begin
  ModalResult := MrCancel
end;

end.
