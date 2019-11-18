unit dotmatrx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, Buttons, RegKeys, ActnList, XPStyleActnCtrls,
  ActnMan, SUIButton;

type
  TPreviewForm = class(TForm)
    Vista: TMemo;
    bt_Imprimir: TsuiButton;
    bt_Cerrar: TsuiButton;
    Opciones: TActionManager;
    Imprimir: TAction;
    Cerrar: TAction;
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure VistaKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure CerrarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PreviewForm   : TPreviewForm;

implementation

uses DataModulo, Utilidades, Generales;

{$R *.DFM}

procedure TPreviewForm.FormShow(Sender: TObject);
begin
  bt_Imprimir.SetFocus;
end;


procedure TPreviewForm.ImprimirExecute(Sender: TObject);
begin
  ModalResult := MrOk
end;

procedure TPreviewForm.CerrarExecute(Sender: TObject);
begin
  ModalResult := MrCancel
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
  If _Load_Create Then
    Begin
      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor)
    End; {If _Load_Create}
end;

Initialization
  RegisterClass(TPreviewForm);


end.
