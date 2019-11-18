unit CompaniasUnit;
{*****************************************************************************}
{*                                                                           *}
{* Desarrollado por    : Ing. Moises Gumbs Peralta                           *}
{* Derechos Reservados : 2014, Gumbs Development                             *}
{*                                                                           *}
{* CompaniasUnit.pas                                                         *}
{*                                                                           *}
{* Esta pantalla se utiliza para el control de y actualización de las        *}
{* compañías administradas por el sistema                                    *}
{*                                                                           *}
{*****************************************************************************}

{ TODO -oIng. Moises Gumbs Peralta -cCompaniasUnit : Cuando Este Lista la pantalla de Datos Generales, hay que adecuar  el responsable de la compania de manera que se pueda seleccionar y/o agregar }
{ TODO -oIng. Moises Gumbs Peralta -cCompaniasUnit : Validar la Secuencia de los NCF }
{ TODO -oIng. Moises Gumbs Peralta -cCompaniasUnit : Determinar el modo de operacion del campo CBS }

interface

uses
  Windows, Sysutils, Variants, Graphics, Forms, Db,
  DBCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy,dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Classes,
  ActnList, ActnMan, cxDBEdit,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, Mask,
  AdvGlowButton, AdvPicture, DBAdvPicture, Controls, ToolPanels, TaskDialog,
  cxCheckBox, W7Classes, W7ListViewItems, wwdblook,
  XPStyleActnCtrls, ExtCtrls;

type
  TfrmCompanias = class(TForm)
    adv_OptionPanel: TAdvToolPanel;
    gbt_Nuevo_Registro: TAdvGlowButton;
    gbt_Guardar_Registro: TAdvGlowButton;
    adv_DataPanel: TAdvToolPanel;
    Label1: TLabel;
    ID: TDBEdit;
    Label2: TLabel;
    Nombre: TDBEdit;
    Nombre_Linea_2: TDBEdit;
    Nombre_Linea_3: TDBEdit;
    Label5: TLabel;
    Direccion: TDBEdit;
    Direccion_Linea_2: TDBEdit;
    Telefono_Principal: TDBEdit;
    Telefono_Secundario: TDBEdit;
    Telefono_Tercero: TDBEdit;
    Telefono_Otro: TDBEdit;
    Label15: TLabel;
    Slogan_Comentario: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Responsable: TDBEdit;
    Label20: TLabel;
    Serie_NCF: TDBEdit;
    Division_NCF: TDBEdit;
    Punto_Emision_NCF: TDBEdit;
    Label26: TLabel;
    Label27: TLabel;
    Fecha_Registro: TDBEdit;
    Label28: TLabel;
    Label3: TLabel;
    Opciones_Pantalla: TActionManager;
    Guardar_Registro: TAction;
    Buscar_Registro: TAction;
    Nuevo_Registro: TAction;
    Eliminar_Registro: TAction;
    Salir: TAction;
    gbt_Buscar_Registro: TAdvGlowButton;
    gbt_Eliminar_Registro: TAdvGlowButton;
    gbt_Salir: TAdvGlowButton;
    RNC: TEdit;
    Agregar_Foto: TAction;
    imgFrame: TShape;
    LOGO: TDBAdvPicture;
    Label4: TLabel;
    URL: TDBEdit;
    email: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    FaceBook: TDBEdit;
    Label8: TLabel;
    twitter: TDBEdit;
    Paises: TcxDBLookupComboBox;
    Ciudades: TcxDBLookupComboBox;
    Fecha_Institucion: TcxDBDateEdit;
    Tipo_Telefono_Principal: TcxDBComboBox;
    Tipo_Telefono_Tercero: TcxDBComboBox;
    Tipo_Telefono_Secundario: TcxDBComboBox;
    Tipo_Telefono_Otro: TcxDBComboBox;
    Estatus: TcxDBLookupComboBox;
    Area_Impresion_NCF: TDBEdit;
    Genera_NCF: TcxDBCheckBox;
    CBS: TcxDBCheckBox;
    InfoBoard: TW7TaskItem;
    procedure FormCreate(Sender: TObject);
    procedure Guardar_RegistroExecute(Sender: TObject);
    procedure Buscar_RegistroExecute(Sender: TObject);
    procedure Nuevo_RegistroExecute(Sender: TObject);
    procedure Eliminar_RegistroExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure RNCExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Agregar_FotoExecute(Sender: TObject);
    procedure HintToInfoBoard(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
     CATEGORIA_IMPRESON : String;
  end;

var
  frmCompanias: TfrmCompanias;

implementation

uses Utilidades, DataModulo, Generales;

{$R *.dfm}

procedure TfrmCompanias.Agregar_FotoExecute(Sender: TObject);
begin
    ModuloGenerales.tCompania.Edit;
    AgregarTMSFoto(ModuloGenerales.tCompaniaLogo)
end;

procedure TfrmCompanias.Buscar_RegistroExecute(Sender: TObject);
  Var
    R : Integer;
    S : String;
begin
  S := DoSearch(Self,
                'Compania',                                   (* TableName *)
                'SrchPr',                                 (* Provider *)
                ModuloGenerales.tCompaniaRNC.FieldName,     (* CampoClave *)
                ModuloGenerales.tCompaniaNombre.FieldName,  (* CampoInicial *)
                '',                                           (* AltQry *)
                Modulo.Enlace,               (* RemoteServer *)
                'A',                                          (* SortOrder *)
                -1,                                           (* Packet Records *)
                wsMaximized,
                R);
  If R = MrOk Then
    Begin
      RNC.Text := S;
      RNCExit(RNC);
      ValidateEmptyField(Self,Nombre_Linea_2)
    End
end;

procedure TfrmCompanias.Eliminar_RegistroExecute(Sender: TObject);
begin
  If Trim(ModuloGenerales.tCompaniaRNC.Value) <> '' Then
    Begin
      If AdvAsk('Confirmar Eliminar',
            _ConfirmarEliminar,
            'Para confirmar seleccione Si, para cancelar seleccione NO',
            tiQuestion,
            [cbYes, cbNo],
            Self) = ID_NO Then Exit;

      ModuloGenerales.tCompania.Delete
    End;

  If ModuloGenerales.tCompania.ChangeCount > 0 Then
    ModuloGenerales.tCompania.ApplyUpdates(0);

  ModuloGenerales.tCompania.Refresh;
  Nuevo_Registro.Execute;

  PopUpMessage(ModuloGenerales.Mensajes,_DatosEliminados)
end;

procedure TfrmCompanias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If Not VerificarEdicionCerrar(ModuloGenerales.tCompania, Self) Then Action := caNone;
end;

procedure TfrmCompanias.FormCreate(Sender: TObject);
  Var
    I : Integer;
begin
  If _Load_Create Then
    Begin
      CATEGORIA_IMPRESON := 'COMPAÑIAS';
      {Configuracion de la Pantalla}

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloSeguridad.tLevel_Detail);
      if (Trim(_CurrentLevel) <> _SysAdmin) AND (Trim(_CurrentLevel) <> _SuperUserLevel) then
        CBS.Visible := False;

      {Activar Los Hints Disponibles}
      LoadHints(Self);
      HintToStatusBar(Self,HintToInfoBoard);
      InfoBoard.OnEnter := Nil;

      {Abrir los Datasets Requeridos por esta pantalla}
      ModuloGenerales.tCompania.Open;
      ModuloGenerales.tListado_Paises.Params.ParamByName('Status').AsString := _stACTIVO;
      ModuloGenerales.tListado_Paises.Open;
      ModuloGenerales.tStatus_lst_Compania.Open;

     {Insertar Registro en Blanco}
      Nuevo_Registro.Execute
    End {If _Load_Create}
end;

procedure TfrmCompanias.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  KeyPreviewMoving (Sender,Key,Shift,(Self As TForm),RNC);
end;

procedure TfrmCompanias.Guardar_RegistroExecute(Sender: TObject);
  Var
    CamposVacios : Integer;
    S            : String;
begin
  CamposVacios := ValidateEmptyField(Self,Nombre_Linea_2);

  S := 'Existe(n) ' + IntToStr(CamposVacios) + ' campo(s) vacio(s).' +
       'Estos son campos requeridos (Marcados en color Rojo)';

  If CamposVacios > 0 Then
    Begin
      UpdateInfoBoard(InfoBoard,
                      'Campos Requeridos',
                      S + #13#13 +
                      'Por Favor, verifique',
                      68,
                      clRed,
                      clRed);
      Exit
    End;

  If ModuloGenerales.tCompania.State In DsEditModes Then ModuloGenerales.tCompania.Post;

  If ModuloGenerales.tCompania.ChangeCount > 0 Then ModuloGenerales.tCompania.ApplyUpdates(0);

  ModuloGenerales.tCompania.Refresh;

  If (Sender as TAction).Name = Guardar_Registro.Name Then Nuevo_Registro.Execute;

  PopUpMessage(ModuloGenerales.Mensajes,_DatosGuardados)
end;

procedure TfrmCompanias.HintToInfoBoard(Sender: TObject);
begin
  UpdateInfoBoard(InfoBoard,
                  'Actualización de Compañías',
                  (Sender As TWinControl).Hint,
                  68,
                  clGreen,
                  clBlue);
end;

procedure TfrmCompanias.Nuevo_RegistroExecute(Sender: TObject);
var
  Uid: TGuid;
  Result: HResult;

begin
  UpdateInfoBoard(InfoBoard,
                  'Actualización de Compañías',
                  'Registro, modificación y actualización de datos de compañías',
                  68,
                  clWindowText,
                  clWindowText);

  If ModuloGenerales.tCompania.State In DsEditModes Then
   If AdvAsk('Datos en Edición',
              _DatosEnEdicion,
              'Para confirmar seleccione Si, para cancelar seleccione NO',
              tiQuestion,
              [cbYes, cbNo],
              Self) = ID_NO Then Exit;

  ModuloGenerales.tCompania.Cancel;
  ModuloGenerales.tCompania.Params.ParamByName('ID').Clear;
  ModuloGenerales.tCompania.Params.ParamByName('RNC').Clear;
  ModuloGenerales.tCompania.Append;


  Result := CreateGuid(Uid);
  If Result = S_OK Then ModuloGenerales.tCompaniaID.AsString := GuidToString(Uid);

  ModuloGenerales.tCompaniaFecha_Creacion.Value := Modulo.GetServerDate;

  Logo.Picture.LoadFromFile(_DefaultClientImg);

  If Self.Visible And _MoveFocus Then
    Begin
      RNC.SetFocus;
      RNC.Clear
    End

end;

procedure TfrmCompanias.RNCExit(Sender: TObject);
Var
    SearchResult : Integer;
begin
  If Trim(RNC.Text) = '' Then Exit;

  RNC.Text := TrimChar('-',RNC.Text);
  RNC.Text := TrimChar(#32,RNC.Text);
  RNC.Text := TrimChar('/',RNC.Text);
  SearchResult := ParamSearchKey(ModuloGenerales.tCompania,'RNC',RNC.Text);

  If SearchResult = _CodeNotFound Then
    Begin
      _MoveFocus := False;
      Nuevo_RegistroExecute(Sender);
      _MoveFocus := True;

      ModuloGenerales.tCompaniaRNC.Value := Trim(RNC.Text)
    End;

  ModuloGenerales.tCompaniaPaisValidate(ModuloGenerales.tCompaniaPais);
end;

procedure TfrmCompanias.SalirExecute(Sender: TObject);
begin
  Close
end;

Initialization
  RegisterClass(TfrmCompanias);

end.
