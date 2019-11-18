unit EditSectoresUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, StdCtrls, Mask, DBCtrls, ExtCtrls, ToolPanels,
  ActnList, ActnMan, Db, wwdblook, AdvSmoothEdit,
  AdvSmoothEditButton, AdvSmoothDatePicker, DBAdvSmoothDatePicker, AdvPicture,
  DBAdvPicture, XPStyleActnCtrls;

type
  TfrmEditSectores = class(TForm)
    adv_DataPanel: TAdvToolPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label26: TLabel;
    Iniciales: TDBEdit;
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
  frmEditSectores: TfrmEditSectores;

implementation

uses Generales, Utilidades;

{$R *.dfm}

procedure TfrmEditSectores.act_AceptarExecute(Sender: TObject);
begin
  If ModuloGenerales.tSectores.State In DsEditModes then
    ModuloGenerales.tSectores.Post;

  ModalResult := MrOk
end;

procedure TfrmEditSectores.act_CancelarExecute(Sender: TObject);
begin
  ModuloGenerales.tSectores.Cancel;
  ModalResult := mrCancel
end;

procedure TfrmEditSectores.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    {Activar Los Permisos del Usuario}
    ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
end;

procedure TfrmEditSectores.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  KeyPreviewMoving (Sender,Key,Shift,(Self As TForm),Iniciales);
end;

Initialization
  RegisterClass(TfrmEditSectores);

end.
