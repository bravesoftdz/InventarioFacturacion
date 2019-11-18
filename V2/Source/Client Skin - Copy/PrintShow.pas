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
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrintShow: TFPrintShow;

implementation

uses Utilidades, DataModulo, Generales;

{$R *.dfm}

procedure TFPrintShow.Button1Click(Sender: TObject);
begin
  _Breakout := True
end;

procedure TFPrintShow.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);
    End
    {If _Load_Create}
end;

Initialization
  RegisterClass(TFPrintShow);

  end.
