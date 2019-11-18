unit AddDocumentsToDB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
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
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmAnadir_Documentos = class(TForm)
    gbt_Finalizar: TAdvGlowButton;
    Opciones_Pantalla: TActionManager;
    Finalizar: TAction;
    Cancelar: TAction;
    gbt_Cancelar: TAdvGlowButton;
    Label7: TLabel;
    Status: TDBText;
    InfoBoard: TW7TaskItem;
    tbcPanel_Datos: TcxTabControl;
    Label2: TLabel;
    Descripcion: TDBEdit;
    Archivo: TDBEdit;
    Label1: TLabel;
    bt_Agregar_Renglon: TAdvGlowButton;
    Agregar_Renglon: TAction;
    Template: TDBEdit;
    Companias: TcxDBLookupComboBox;
    Label3: TLabel;
    procedure FinalizarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SetCursor(Sender: TObject);
    procedure NoCursor(Sender: TObject);
    procedure Agregar_RenglonExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
  private
    { Private declarations }
    DocName : String;
    DocDir : String;
  public
    { Public declarations }
    Constructor Create(Aowner : TComponent; const DocumentFileName : String); overload;
  end;

var
  frmAnadir_Documentos: TfrmAnadir_Documentos;

implementation

uses DataModulo, Utilidades, Generales;

{$R *.dfm}

procedure TfrmAnadir_Documentos.CancelarExecute(Sender: TObject);
begin
  Close
end;

constructor TfrmAnadir_Documentos.Create(Aowner : TComponent; const DocumentFileName : String);
  Var
    Adding : Boolean;
begin
  inherited Create(AOwner); // Call the inherited constructor
  If _Load_Create Then
    Begin
      // Informacion Inicial
      UpdateInfoBoard(InfoBoard,
                      'Datos del Documento',
                      'Complete los datos del Documento y luego haga click en el boton FINALIZAR',
                      21,
                      clGreen,
                      clWindowText);

      DocName := ExtractFileName(DocumentFileName);
      DocDir := ExtractFileDir(DocumentFileName);
      Adding := True;

      ModuloGenerales.tCategorias.Open;

      If Not ModuloGenerales.tDocumentos.Active Then ModuloGenerales.tDocumentos.Open;
      ModuloGenerales.tDocumentos.Refresh;

      ModuloGenerales.tDocumentos.Open;

      If ModuloGenerales.tDocumentos.Locate('Archivo',DocumentFileName,[]) Then
        Adding := False;

      If Adding Then
        Begin
          ModuloGenerales.tDocumentos.Append;
          ModuloGenerales.tDocumentosID.AsString := Gen_ProcessNumber(_CurrentUser);
          ModuloGenerales.tDocumentosArchivo.AsString := DocumentFileName;
          ModuloGenerales.tDocumentosNombre.AsString := DocName;
          ModuloGenerales.tDocumentosStatus.AsString := _stACTIVO;
          ModuloGenerales.tDocumentosTipo.AsString := 'ARCHIVO';
        End;

      {Activar Los Permisos del Usuario}
      ActivateOptions(self,_CurrentLevel,ModuloGenerales.tAccesos);
    End
end;

procedure TfrmAnadir_Documentos.Agregar_RenglonExecute(Sender: TObject);
begin
  ModuloGenerales.AddCategory('',
                                Gen_ProcessNumber(_CurrentUser),
                                'DOCUMENTOS')
end;

procedure TfrmAnadir_Documentos.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
Var
  FirstComponent : TWinControl;
begin
  FirstComponent := Descripcion;
  {$I ..\..\Common\formkeys.Cnt}
end;

procedure TfrmAnadir_Documentos.NoCursor(Sender: TObject);
begin
  _FormCursors := False
end;

procedure TfrmAnadir_Documentos.SetCursor(
  Sender: TObject);
begin
  _FormCursors := True
end;

procedure TfrmAnadir_Documentos.FinalizarExecute(Sender: TObject);
  Var
    CamposVacios : Integer;
begin
  CamposVacios := ValidateEmptyField(Self,Template);

  If CamposVacios > 0 Then
    Begin
      UpdateInfoBoard(InfoBoard,
                      'Campos Requeridos',
                      'Estos ' + IntToStr(CamposVacios) + ' campos son requeridos. por favor, VERIFIQUE :'#13+
                      _Last_Error_Message,
                      68,
                      clRed,
                      clRed);
      Exit
    End;

  If ModuloGenerales.tDocumentos.State In DsEditModes Then
    ModuloGenerales.tDocumentos.Post;

  If ModuloGenerales.tDocumentos.ChangeCount > 0 Then
    ModuloGenerales.tDocumentos.ApplyUpdates(0);

  ModalResult := MrOk
end;

Initialization
  RegisterClass(TfrmAnadir_Documentos);

end.
