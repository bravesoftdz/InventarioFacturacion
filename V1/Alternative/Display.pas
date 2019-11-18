unit Display;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ShellApi, Menus, ExtCtrls;

type
  TFDisplayWindow = class(TForm)
    Opciones: TPopupMenu;
    Menu_About: TMenuItem;
    Image1: TImage;
    DisplayTrayIcon: TTrayIcon;
    procedure Menu_AboutClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    IconData : TNotifyIconData;
    Procedure WMSysCommand(Var Msg: TWMSysCommand); Message WM_SYSCOMMAND;
    Procedure Restaura(Var Msg : TMessage); Message WM_USER + 1;
  public
    { Public declarations }
  end;

var
  FDisplayWindow: TFDisplayWindow;

implementation

uses About, Utilidades;

{$R *.dfm}
Procedure TFDisplayWindow.WMSysCommand(Var Msg: TWMSysCommand);
Begin
end;

procedure TFDisplayWindow.Restaura(Var Msg : TMessage);
Begin
End;

procedure TFDisplayWindow.FormCreate(Sender: TObject);
begin
  DisplayTrayIcon.Icon := Application.Icon
end;

procedure TFDisplayWindow.Menu_AboutClick(Sender: TObject);
begin
  OpenForm(TAboutBox,AboutBox);
end;

Initialization
  RegisterClass(TFDisplayWindow);

end.
