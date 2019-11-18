unit dotmatrx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, Buttons, RegKeys, ActnList,
  ActnMan, ToolPanels, PlatformDefaultStyleActnCtrls, SUIButton, AdvGlowButton;

type
  TPreviewForm = class(TForm)
    bt_Imprimir: TsuiButton;
    bt_Cerrar: TsuiButton;
    Panel_Pago: TAdvToolPanel;
    Vista: TMemo;
    gbt_Eliminar_Registro: TAdvGlowButton;
    gbt_Guardar_Registro: TAdvGlowButton;
    Opciones_Pantalla: TActionManager;
    Aceptar: TAction;
    Cancelar: TAction;
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure CerrarExecute(Sender: TObject);
    procedure AceptarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PreviewForm   : TPreviewForm;

implementation

uses Utilidades, MainModuleUnit, SecurityDataUnit;

{$R *.DFM}

procedure TPreviewForm.FormShow(Sender: TObject);
begin
  bt_Imprimir.SetFocus;
end;


procedure TPreviewForm.ImprimirExecute(Sender: TObject);
begin
  ModalResult := MrOk
end;

procedure TPreviewForm.AceptarExecute(Sender: TObject);
begin
  ModalResult := MrOk;
end;

procedure TPreviewForm.CancelarExecute(Sender: TObject);
begin
  ModalResult := MrCancel;
end;

procedure TPreviewForm.CerrarExecute(Sender: TObject);
begin
  ModalResult := MrCancel
end;

procedure TPreviewForm.FormActivate(Sender: TObject);
begin
  WindowState := wsMaximized
end;

procedure TPreviewForm.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,SecurityDataModule.tLevel_Detail);

      {Activar Los Hints Disponibles}
      LoadHints(Self);
//      Color := GetRegColor(_GeneralConfigKey,_WindowsColor)
    End; {If _Load_Create}
end;

Initialization
  RegisterClass(TPreviewForm);


end.
