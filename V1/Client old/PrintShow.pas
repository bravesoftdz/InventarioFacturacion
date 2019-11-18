unit PrintShow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFPrintShow = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrintShow: TFPrintShow;

implementation

uses Utilidades;

{$R *.dfm}

procedure TFPrintShow.Button1Click(Sender: TObject);
begin
  _Breakout := True
end;

end.
