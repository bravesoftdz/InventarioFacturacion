unit TimerMessage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Gauges;

type
  TFTimerMessage = class(TForm)
    GroupBox1: TGroupBox;
    Titulo: TLabel;
    Linea1: TLabel;
    Linea2: TLabel;
    Indicador: TGauge;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTimerMessage: TFTimerMessage;

implementation

uses Utilidades, RegKeys;

{$R *.dfm}

procedure TFTimerMessage.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
    End
    {If _Load_Create}
end;

Initialization
  RegisterClass(TFTimerMessage);

end.
