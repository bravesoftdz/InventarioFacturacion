unit EditZonasUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, StdCtrls, Mask, DBCtrls, ExtCtrls, ToolPanels,
  ActnList, ActnMan, Db, wwdblook, AdvSmoothEdit,
  AdvSmoothEditButton, AdvSmoothDatePicker, DBAdvSmoothDatePicker, AdvPicture,
  DBAdvPicture, XPStyleActnCtrls;

type
  TfrmEditZonas = class(TForm)
    adv_DataPanel: TAdvToolPanel;
    Label2: TLabel;
    Label26: TLabel;
    Nombre: TDBEdit;
    adv_OptionPanel: TAdvToolPanel;
    gbt_Aceptar: TAdvGlowButton;
    gbt_Cancelar: TAdvGlowButton;
    Opciones_Pantalla: TActionManager;
    act_Aceptar: TAction;
    act_Cancelar: TAction;
    procedure act_AceptarExecute(Sender: TObject);
    procedure act_CancelarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditZonas: TfrmEditZonas;

implementation

uses Generales, Utilidades;

{$R *.dfm}

procedure TfrmEditZonas.act_AceptarExecute(Sender: TObject);
begin
  If ModuloGenerales.tZonas.State In DsEditModes then
    ModuloGenerales.tZonas.Post;

  ModalResult := MrOk
end;

procedure TfrmEditZonas.act_CancelarExecute(Sender: TObject);
begin
  ModuloGenerales.tZonas.Cancel;
  ModalResult := mrCancel
end;

procedure TfrmEditZonas.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    {Activar Los Permisos del Usuario}
    ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
end;

procedure TfrmEditZonas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  KeyPreviewMoving (Sender,Key,Shift,(Self As TForm),Nombre);
end;

Initialization
  RegisterClass(TfrmEditZonas);

end.
