unit DisplayMessage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, SUIButton, ActnList, XPStyleActnCtrls,
  ActnMan;

type
  TFDisplayMessage = class(TForm)
    Panel: TGroupBox;
    Titulo: TLabel;
    bt_Aceptar: TsuiButton;
    Opciones: TActionManager;
    Aceptar: TAction;
    Imagen: TImage;
    Chech_Time: TTimer;
    Mensaje: TRichEdit;
    procedure FormCreate(Sender: TObject);
    procedure AceptarExecute(Sender: TObject);
    procedure Chech_TimeTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDisplayMessage: TFDisplayMessage;

implementation

uses Utilidades, RegKeys;

{$R *.dfm}

procedure TFDisplayMessage.AceptarExecute(Sender: TObject);
begin
  Close
end;

procedure TFDisplayMessage.Chech_TimeTimer(Sender: TObject);
begin
  If Now() >= _End_Display Then Aceptar.Execute
end;

procedure TFDisplayMessage.FormCreate(Sender: TObject);
begin
  {Activar Los Hints Disponibles}
  LoadHints(Self);
  Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
end;

end.
