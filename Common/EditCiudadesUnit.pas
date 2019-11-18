unit EditCiudadesUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, StdCtrls, Mask, DBCtrls, ExtCtrls, ToolPanels,
  ActnList, ActnMan, Db, wwdblook, AdvSmoothEdit,
  AdvSmoothEditButton, AdvSmoothDatePicker, DBAdvSmoothDatePicker, AdvPicture,
  DBAdvPicture, XPStyleActnCtrls;

type
  TfrmEditCiudades = class(TForm)
    adv_DataPanel: TAdvToolPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label26: TLabel;
    Serie_Codigo: TDBEdit;
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
  frmEditCiudades: TfrmEditCiudades;

implementation

uses Generales, Utilidades;

{$R *.dfm}

procedure TfrmEditCiudades.act_AceptarExecute(Sender: TObject);
begin
  If ModuloGenerales.tCiudades.State In DsEditModes then
    ModuloGenerales.tCiudades.Post;

  ModalResult := MrOk
end;

procedure TfrmEditCiudades.act_CancelarExecute(Sender: TObject);
begin
  ModuloGenerales.tCiudades.Cancel;
  ModalResult := mrCancel
end;

procedure TfrmEditCiudades.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    {Activar Los Permisos del Usuario}
    ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
end;

procedure TfrmEditCiudades.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  KeyPreviewMoving (Sender,Key,Shift,(Self As TForm),Serie_Codigo);
end;

Initialization
  RegisterClass(TfrmEditCiudades);

end.
