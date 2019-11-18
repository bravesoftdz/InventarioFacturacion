unit Nivelesa;

interface

uses
  RegKeys, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, TaskDialog, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, ActnList,
  PlatformDefaultStyleActnCtrls, ActnMan, AdvGlowButton, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, ToolPanels, AdvOfficePager, SUIProgressBar,
  cxContainer, cxLabel, cxDBLabel, DbClient;

type
  TfrmNiveles_Acceso = class(TForm)
    Opciones: TActionManager;
    Salir: TAction;
    Data_Group_Pannel: TAdvOfficePager;
    pg_Niveles_Acceso: TAdvOfficePage;
    Panel_Formularios_Opciones: TAdvToolPanel;
    grdFormularios: TcxGrid;
    grdFormulariosDBTV: TcxGridDBTableView;
    grdFormulariosDBTVDescription: TcxGridDBColumn;
    grdFormulariosLevel: TcxGridLevel;
    gbt_Salir: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    Activar_Autorizacion: TAction;
    Desactivar_Autorizacion: TAction;
    grdAutorizaciones: TcxGrid;
    grdAutorizacionesDBTV: TcxGridDBTableView;
    grdAutorizacionesDBTVNombre: TcxGridDBColumn;
    grdAutorizacionesLevel: TcxGridLevel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SalirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdOpciones_DisponiblesDBTVStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure Activar_AutorizacionExecute(Sender: TObject);
    procedure Desactivar_AutorizacionExecute(Sender: TObject);
  private
    { Private declarations }
    procedure Anadir;
    procedure Eliminar;
  public
    { Public declarations }
  end;

var
  frmNiveles_Acceso: TfrmNiveles_Acceso;

implementation

uses Utilidades, Registry, DataModulo, Generales;

{$R *.dfm}

procedure TfrmNiveles_Acceso.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Color de la Pantalla}
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
      grdFormularios.LookAndFeel.SkinName := ModuloGenerales.EditStyleController.Style.LookAndFeel.SkinName;
      grdOpciones_Disponibles.LookAndFeel.SkinName := ModuloGenerales.EditStyleController.Style.LookAndFeel.SkinName;
      grdNiveles_Acceso.LookAndFeel.SkinName := ModuloGenerales.EditStyleController.Style.LookAndFeel.SkinName;
      grdOpciones_Activadas.LookAndFeel.SkinName := ModuloGenerales.EditStyleController.Style.LookAndFeel.SkinName;

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);

      {Activar Los Hints Disponibles}
      LoadHints(Self);

      ModuloGenerales.tAccesos.Open;
      ModuloGenerales.tNiveles.Open;
      ModuloGenerales.tOpciones.Open;
      ModuloGenerales.tForms.Open
    End
  end;

procedure TfrmNiveles_Acceso.FormKeyPress(Sender: TObject; var Key: Char);
 Var
  Found : TWinControl;
begin
  If Key = Chr(VK_RETURN) Then
    Begin
      Found := FindNextControl(ActiveControl,True, True, False);
      Found.SetFocus
    End
end;

procedure TfrmNiveles_Acceso.grdOpciones_DisponiblesDBTVStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if (ARecord is TcxGridDataRow) and not ARecord.Selected and
    (Not(VarIsNull(ARecord.Values[grdOpciones_DisponiblesDBTVforeign.Index]))) then
    AStyle := ModuloGenerales.styChecked;
end;

procedure TfrmNiveles_Acceso.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TfrmNiveles_Acceso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ModuloGenerales.tForms.Close;
  ModuloGenerales.tNiveles.Close;
  ModuloGenerales.tOpciones.Close;
  ModuloGenerales.tAccesos.Close
end;

procedure TfrmNiveles_Acceso.Anadir;
begin
  If Not ModuloGenerales.tAccesos.Locate(ModuloGenerales.tAccesosForm.FieldName+';'+
                                         ModuloGenerales.tAccesosOpcion.FieldName,
                                         VarArrayOf([ModuloGenerales.tOpcionesForm.Value,
                                                     ModuloGenerales.tOpcionesOpcion.Value]),
                                         []) Then
    ModuloGenerales.tAccesos.Append
  Else
    ModuloGenerales.tAccesos.Edit;
  ModuloGenerales.tAccesosForm.Value := ModuloGenerales.tOpcionesForm.Value;
  ModuloGenerales.tAccesosNivel.Value := ModuloGenerales.tNivelesCodigo.Value;
  ModuloGenerales.tAccesosOpcion.Value := ModuloGenerales.tOpcionesOpcion.Value;
  ModuloGenerales.tAccesos.Post
end;

procedure TfrmNiveles_Acceso.Eliminar;
begin
  If Not ModuloGenerales.tAccesos.Eof Then ModuloGenerales.tAccesos.Delete
end;

procedure TfrmNiveles_Acceso.Activar_AutorizacionExecute(Sender: TObject);
begin
  If Not ModuloGenerales.tAutorizaciones.Locate('Nombre',ModuloGenerales.tNivelesCodigo.Value,[]) Then
    Begin
      ModuloGenerales.tAutorizaciones.Append;
      ModuloGenerales.tAutorizacionesForm.Value := ModuloGenerales.tFormsName.Value;
      ModuloGenerales.tAutorizacionesNombre.Value := ModuloGenerales.tNivelesCodigo.Value;
      ModuloGenerales.tAutorizacionesTipo.Value := 'NIVEL';
      ModuloGenerales.tAutorizaciones.Post;
      ModuloGenerales.tAutorizaciones.ApplyUpdates(0);
    End;
end;

procedure TfrmNiveles_Acceso.Desactivar_AutorizacionExecute(Sender: TObject);
Var
    R : Integer;
begin
    R := AdvAsk('Desactivar Quitar la Autorizacion para : ' + ModuloGenerales.tAutorizacionesNombre.Value,
                'Realmente desea ELIMINAR LA AUTORIZACION este nivel?',
                'Para confirmar que desea Eliminar la tecla [ENTER] o haga click en el boton SI',
                tiWarning,
                [cbYes,cbNo],
                Self);

    If R = ID_YES Then
      If ModuloGenerales.tAutorizaciones.RecordCount > 0 Then
        Begin
          ModuloGenerales.tAutorizaciones.Delete;
          ModuloGenerales.tAutorizaciones.ApplyUpdates(0);
        End;
end;

Initialization
  RegisterClass(TfrmNiveles_Acceso);

end.
