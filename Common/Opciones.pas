unit Opciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  ActnList, ActnMan, ToolWin, ActnCtrls, DbClient,
  RegKeys, Shader, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, AdvGlowButton, SUIProgressBar,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  XPStyleActnCtrls;

type
  TfrmOpciones_Sistema = class(TForm)
    Opciones: TActionManager;
    Salir: TAction;
    Cargar_Opciones: TAction;
    Eliminar_Opciones: TAction;
    Shader1: TShader;
    Label2: TLabel;
    Image1: TImage;
    Shader2: TShader;
    Image2: TImage;
    Label3: TLabel;
    Shader3: TShader;
    Label1: TLabel;
    Elimina_Todas: TAction;
    grdFormularios: TcxGrid;
    grdFormulariosDBTV: TcxGridDBTableView;
    grdFormulariosDBTVDescription: TcxGridDBColumn;
    grdFormulariosLevel: TcxGridLevel;
    grdOpciones_Disponibles: TcxGrid;
    grdOpciones_DisponiblesDBTV: TcxGridDBTableView;
    grdOpciones_DisponiblesDBTVOption: TcxGridDBColumn;
    grdOpciones_DisponiblesDBTVDescription: TcxGridDBColumn;
    grdOpciones_DisponiblesDBTVComponet_Type: TcxGridDBColumn;
    grdOpciones_DisponiblesLevel: TcxGridLevel;
    gbt_Cargar_Opciones: TAdvGlowButton;
    gbt_Eliminar_Todas: TAdvGlowButton;
    gbt_Eliminar_Opciones: TAdvGlowButton;
    gbt_Salir: TAdvGlowButton;
    Progreso: TsuiProgressBar;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Cargar_OpcionesExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure Eliminar_OpcionesExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Elimina_TodasExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOpciones_Sistema: TfrmOpciones_Sistema;

implementation

uses Utilidades, DataModulo, Generales;

{$R *.dfm}

procedure TfrmOpciones_Sistema.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Color de la Pantalla}
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
      grdFormularios.LookAndFeel.SkinName := ModuloGenerales.EditStyleController.Style.LookAndFeel.SkinName;
      grdOpciones_Disponibles.LookAndFeel.SkinName := ModuloGenerales.EditStyleController.Style.LookAndFeel.SkinName;

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);

      {Activar Los Hints Disponibles}
      LoadHints(Self);

      ModuloGenerales.tOpciones.Open;
      ModuloGenerales.tForms.Open
    End
end;

procedure TfrmOpciones_Sistema.FormKeyPress(Sender: TObject; var Key: Char);
 Var
  Found : TWinControl;
begin
  If Key = Chr(VK_RETURN) Then
    Begin
      Found := FindNextControl(ActiveControl,True, True, False);
      Found.SetFocus
    End
end;

procedure TfrmOpciones_Sistema.Cargar_OpcionesExecute(Sender: TObject);
  Var
    C : String;
begin
  C := Label1.Caption;
  Label1.Caption := 'Cargando Opciones...';
  Label1.Update;
  If Not EnumResourceNames(0, RT_RCDATA, @enumrestypes, Integer(ModuloGenerales.tForms)) Then
    Mensaje('Error, getlasterror returns'+IntToHex(getlasterror, 8),Self);
  Try
    _Load_Create := False;
    Progreso.Position := 0;
    Progreso.Max := ModuloGenerales.tForms.RecordCount;
    Progreso.Visible := True;
    ModuloGenerales.tForms.First;
    While Not ModuloGenerales.tForms.Eof Do
      Begin
        AnadirForms(ModuloGenerales.tOpciones,ModuloGenerales.tFormsName.Value, Self);
        ModuloGenerales.tForms.Next;
        Progreso.Position := Progreso.Position + 1;
        Progreso.Update;
      End
  Finally
    _Load_Create := True;
    Label1.Caption := C;
    Progreso.Visible := False;
    Mensaje ('Proceso Terminado',Self);
  End;
end;

procedure TfrmOpciones_Sistema.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TfrmOpciones_Sistema.Eliminar_OpcionesExecute(Sender: TObject);
  var
    CurrentCursor : TCursor;
    R : Integer;
    Q : TClientDataset;
begin
  CurrentCursor := Screen.Cursor;
  Try
    {Eliminar Listado de Opciones}
    Q := TClientDataset.Create(Self);
    Q.RemoteServer := Modulo.Enlace;
    Q.ProviderName := 'SrchPr';
    Q.CommandText := 'Delete From "Opciones" Where "Form" = ' + QuotedStr(Trim(ModuloGenerales.tFormsName.Value));
    Q.Execute;
    ModuloGenerales.tOpciones.Refresh;
    Mensaje ('Eliminadas las Opciones de: ' + ModuloGenerales.tFormsDescription.Value,Self)
  Finally
    Q.Close;
    Q.Free;
    Screen.Cursor := CurrentCursor
  End {Try}
end;

procedure TfrmOpciones_Sistema.Elimina_TodasExecute(Sender: TObject);
  var
    CurrentCursor : TCursor;
    R : Integer;
    Q : TClientDataset;
begin
  CurrentCursor := Screen.Cursor;
  Try
    {Eliminar Listado de Opciones}
    Q := TClientDataset.Create(Self);
    Q.RemoteServer := Modulo.Enlace;
    Q.ProviderName := 'SrchPr';
    Q.CommandText := 'Delete From "Opciones"';
    Q.Execute;

    {Eliminar Listado de Formularios}
    Q.CommandText := 'Delete From "Forms"';
    Q.Execute;

    ModuloGenerales.tOpciones.CancelUpdates;
    ModuloGenerales.tOpciones.Refresh;

    ModuloGenerales.tForms.CancelUpdates;
    ModuloGenerales.tForms.Refresh;

    Mensaje ('Eliminadas todas las Opciones y Formularios',Self)
  Finally
    Q.Close;
    Q.Free;
    Screen.Cursor := CurrentCursor
  End;
end;

procedure TfrmOpciones_Sistema.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ModuloGenerales.tForms.Close;
  ModuloGenerales.tOpciones.Close
end;

Initialization
  RegisterClass(TfrmOpciones_Sistema);

  end.
