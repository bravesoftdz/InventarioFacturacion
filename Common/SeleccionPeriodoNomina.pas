unit SeleccionPeriodoNomina;

interface

uses
  Windows, Utilidades, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxPC, cxGroupBox, cxRadioGroup, cxDBEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  AdvGlowButton, AdvSmoothEdit, AdvSmoothEditButton, AdvSmoothDatePicker,
  DBAdvSmoothDatePicker, ExtCtrls, ComCtrls, wwriched, ActnList,
  PlatformDefaultStyleActnCtrls, ActnMan, W7Classes, W7ListViewItems,
  cxMemo, cxRichEdit, cxDBRichEdit, wwrichedspellxp,
  cxMRUEdit, TaskDialog, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxCheckBox;

type
  TfrmSeleccionar_Documentos = class(TForm)
    gbt_Finalizar: TAdvGlowButton;
    Opciones_Pantalla: TActionManager;
    Finalizar: TAction;
    Cancelar: TAction;
    gbt_Cancelar: TAdvGlowButton;
    InfoBoard: TW7TaskItem;
    tbcPanel_Datos: TcxTabControl;
    Archivo: TDBEdit;
    grdDocumentos: TcxGrid;
    grdDocumentosTV: TcxGridDBTableView;
    grdDocumentosTVNombre: TcxGridDBColumn;
    grdDocumentosLevel: TcxGridLevel;
    grdDocumentosTVSelected: TcxGridDBColumn;
    procedure FinalizarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SetCursor(Sender: TObject);
    procedure NoCursor(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure grdDocumentosTVStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Category : String;
  public
    { Public declarations }
    Constructor Create(Aowner : TComponent; const CategoryName : String); overload;
  end;

var
  frmSeleccionar_Documentos: TfrmSeleccionar_Documentos;

implementation

uses DataModulo, Generales;

{$R *.dfm}

procedure TfrmSeleccionar_Documentos.CancelarExecute(Sender: TObject);
begin
  ModalResult := MrCancel;
//  Close
end;

constructor TfrmSeleccionar_Documentos.Create(Aowner : TComponent; const CategoryName : String);
begin
  inherited Create(AOwner); // Call the inherited constructor
  If _Load_Create Then
    Begin
      // Informacion Inicial
      UpdateInfoBoard(InfoBoard,
                      'Seleccion de Documentos',
                      'Seleccione los documentos que desea procesar y luego haga click en el boton FINALIZAR',
                      21,
                      clGreen,
                      clWindowText);

      Category := CategoryName;

      grdDocumentos.LookAndFeel.SkinName := ModuloGenerales.EditStyleController.Style.LookAndFeel.SkinName;

      ModuloGenerales.tDocumentos.Filter := Category;
      ModuloGenerales.tDocumentos.Filtered := (Trim(Category) <> '');

      ModuloGenerales.tDocumentos.Open;
    End
end;

procedure TfrmSeleccionar_Documentos.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    {Activar Los Permisos del Usuario}
    ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
end;

procedure TfrmSeleccionar_Documentos.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  KeyPreviewMoving (Sender,Key,Shift,(Self As TForm),grdDocumentos);
end;

procedure TfrmSeleccionar_Documentos.grdDocumentosTVStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if (ARecord is TcxGridDataRow) and not ARecord.Selected and
    (ARecord.Values[grdDocumentosTVSelected.Index] = True) then
    AStyle := ModuloGenerales.styChecked;
end;

procedure TfrmSeleccionar_Documentos.NoCursor(Sender: TObject);
begin
  _FormCursors := False
end;

procedure TfrmSeleccionar_Documentos.SetCursor(
  Sender: TObject);
begin
  _FormCursors := True
end;

procedure TfrmSeleccionar_Documentos.FinalizarExecute(Sender: TObject);
Begin
  ModalResult := MrOk
end;

Initialization
  RegisterClass(TfrmSeleccionar_Documentos);

end.
