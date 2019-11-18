unit Display;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus;

type
  TFDisplayWindow = class(TForm)
    Opciones: TPopupMenu;
    Restaurar1: TMenuItem;
    Salir1: TMenuItem;
    N1: TMenuItem;
    About1: TMenuItem;
    Image1: TImage;
    DisplayTrayIcon: TTrayIcon;
    procedure About1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDisplayWindow: TFDisplayWindow;

implementation

uses About;

{$R *.dfm}

procedure TFDisplayWindow.About1Click(Sender: TObject);
begin
  Application.CreateForm(TAboutBox,AboutBox);
  AboutBox.ShowModal;
  AboutBox.Free
end;

end.
