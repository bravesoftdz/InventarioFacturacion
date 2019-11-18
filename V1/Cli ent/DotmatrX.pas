unit dotmatrx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, Buttons;

type
  TPreviewForm = class(TForm)
    PrintButton: TBitBtn;
    BitBtn1: TBitBtn;
    Vista: TMemo;
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure VistaKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PreviewForm   : TPreviewForm;

implementation

uses DataModulo, Utilidades;

{$R *.DFM}

procedure TPreviewForm.FormShow(Sender: TObject);
begin
  PrintButton.SetFocus;
end;


procedure TPreviewForm.FormActivate(Sender: TObject);
begin
  WindowState := wsMaximized
end;

procedure TPreviewForm.VistaKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then ModalResult := MrOk;
  If Key = #27 Then ModalResult := MrCancel;
end;

procedure TPreviewForm.FormCreate(Sender: TObject);
begin
  AddFontResource('c:\FONTS\FUENTE.TTF');
  SendMessage(HWND_BROADCAST, WM_FONTCHANGE, 0, 0);

  Color := GetRegColor(_GeneralConfigKey,_WindowsColor)
end;

end.
