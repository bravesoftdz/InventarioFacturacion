unit Splash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, AdvProgr, StdCtrls, Shader;

type
  TFSplash = class(TForm)
    Animate1: TAnimate;
    Shader1: TShader;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSplash: TFSplash;

implementation

uses Utilidades, RegKeys;

{$R *.dfm}

procedure TFSplash.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
      Shader1.FromColor := Color;
      Shader1.ToColor := color + 230;
      Animate1.Active := True;
    End
    {If _Load_Create}
end;

Initialization
  RegisterClass(TFSplash);


end.
