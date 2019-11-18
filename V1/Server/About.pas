unit About;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    Comments: TLabel;
    Image1: TImage;
    procedure ProgramIconClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

uses Utilidades;

{$R *.dfm}

procedure TAboutBox.ProgramIconClick(Sender: TObject);
begin
  Close
end;

procedure TAboutBox.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Activar Los Hints Disponibles}
      LoadHints(Self);

      ProductName.Caption := Trim(Application.Title);
      ProgramIcon.Picture.Icon := Application.Icon
    End; {If _Load_Create}
end;

Initialization
  RegisterClass(TAboutBox);

end.

