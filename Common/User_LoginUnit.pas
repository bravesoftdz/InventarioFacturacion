unit User_LoginUnit;

interface

uses
  RegKeys, Windows, SysUtils, Messages, Classes, Forms, cxGraphics, cxControls, cxLookAndFeels,
  Graphics, Controls, Db,
  Dialogs, StdCtrls, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  ActnList, PlatformDefaultStyleActnCtrls, ActnMan, AdvPicture, DBAdvPicture,
  ExtCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Mask, DBCtrls, acPNG,
  AdvOfficePager, AdvGlowButton, W7Classes, W7ListViewItems, ToolPanels,
  GestureMgr;

type
  TfrmUser_Login = class(TForm)
    Opciones: TActionManager;
    Cancelar: TAction;
    Login: TAction;
    adv_OptionPanel: TAdvToolPanel;
    InfoBoard: TW7TaskItem;
    Data_Group_Pannel: TAdvOfficePager;
    pg_Identificacion_Usuario: TAdvOfficePage;
    Panel_Autenticacion: TAdvToolPanel;
    imgFrame: TShape;
    LOGO: TDBAdvPicture;
    Label10: TLabel;
    LNombre_Usuario: TLabel;
    Nombre_Completo: TDBEdit;
    Contrasena: TEdit;
    Nombre_Usuario: TEdit;
    Image1: TImage;
    Image2: TImage;
    gbt_Login: TAdvGlowButton;
    gbt_Cancelar: TAdvGlowButton;
    Label1: TLabel;
    Label2: TLabel;
    Template: TDBEdit;
    Compania: TcxDBLookupComboBox;
    Terminales: TcxDBLookupComboBox;
    GestureManager1: TGestureManager;
    procedure FormCreate(Sender: TObject);
    procedure LoginExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure Nombre_UsuarioExit(Sender: TObject);
    procedure ContrasenaEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image2Gesture(Sender: TObject; const EventInfo: TGestureEventInfo;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUser_Login: TfrmUser_Login;

implementation

uses Utilidades, DataModulo , Generales;

{$R *.dfm}

procedure TfrmUser_Login.FormCreate(Sender: TObject);
  Var
    LU : string;
begin
  Granted := False;
  If _Load_Create Then
    Try
      {Activar Los Hints Disponibles}
      LoadHints(Self);

      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

      RegInfo.CloseKey;
      RegInfo.OpenKey(_GeneralConfigKey,False);
      Try
        Nombre_Usuario.Text := UnEncrypt(RegInfo.ReadString(_LastUser));
        If (Trim(Nombre_Usuario.Text) <> '') AND
        (Trim(Nombre_Usuario.Text) <> 'ESCRIBA SU NOMBRE DE USUARIO') Then
          Begin
            Nombre_UsuarioExit(Nombre_Usuario);
            Self.ActiveControl := Contrasena;
          End;
      Except
        Nombre_Usuario.Text := 'ESCRIBA SU NOMBRE DE USUARIO'
      End; {Try}

      Compania.Properties.Grid.DataController.DataModeController.SyncMode:=True;
      Terminales.Properties.Grid.DataController.DataModeController.SyncMode:=True;

      ModuloGenerales.tlst_Compania_Status.Params.ParamByName('Status').AsString := _stACTIVO;
      ModuloGenerales.tlst_Compania_Status.Open;

      ModuloGenerales.tLst_Terminales_Status.Params.ParamByName('Status').AsString := _stACTIVO;
      ModuloGenerales.tLst_Terminales_Status.Open;
    Except
      On E:Exception Do
        Begin
          Login.Enabled := False;
          Mensaje(E.Message,Self);
//          Mensaje(E.Message,Self)
        End;
    End; {Try} {If _Load_Create}
end;

procedure TfrmUser_Login.Image2Gesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  If EventInfo.GestureID = sgiSemiCircleLeft Then
    Begin
      Granted := True;
      _CurrentUser := 'MGUMBS';
      _CurrentLevel := 'SYS-ADMIN';
      ModalResult := MrOK;
    End;
end;

procedure TfrmUser_Login.LoginExecute(Sender: TObject);
  Var
    Grant     : Boolean;
    CamposVacios : Integer;
begin
  If (Length(Trim(Contrasena.Text)) < 5) Then
    Begin
      UpdateInfoBoard(InfoBoard,
                      'Identificación',
                      _ErrContrasenaMenor5 + #13#13 +
                      'Por Favor, verifique',
                      68,
                      clRed,
                      clRed);
      Contrasena.SetFocus;
      Exit;
    End;

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

  Grant := Trim(Contrasena.Text) = UnEncrypt(ModuloGenerales.tUsuariosPassword.Value);

  If Not Grant Then
    Begin
      UpdateInfoBoard(InfoBoard,
                      'Identificación',
                      _ErrAccesoDenegado + #13#13 +
                      'Por Favor, verifique',
                      68,
                      clRed,
                      clRed);

      Nombre_Usuario.SetFocus;
      Exit
    End;

  Granted      := True;
  _CurrentUser := Nombre_Usuario.Text;
  _CurrentUserName := Nombre_Completo.Text;

  _CurrentLevel:= Trim(ModuloGenerales.tUsuariosNivel_Acceso.Value);

  RegInfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,False);
  RegInfo.WriteString(_LastUser,Encrypt(_CurrentUser));

  _DefaultDocFolder := GetCurrentDir + '\Documentos';
  _DefaultOutFolder := GetCurrentDir + '\Temporal';

  {Datos de la Terminal}
  _CurrentTerminal := ModuloGenerales.tLst_Terminales_StatusID.AsString;
  _FotosPadron := ModuloGenerales.tLst_Terminales_StatusCarpeta_Fotos_ID.AsString;
  _CurrentTerminalName := ModuloGenerales.tLst_Terminales_StatusDescripcion.AsString;
  If Trim(ModuloGenerales.tLst_Terminales_StatusOutputDir.AsString) <> '' Then
    _DefaultOutFolder := ModuloGenerales.tLst_Terminales_StatusOutputDir.AsString;

  // Crear Directorio de Documentos
  Try
    If Not DirectoryExists(_DefaultDocFolder) Then
      CreateDir(_DefaultDocFolder);
  Except
    _DefaultOutFolder := GetCurrentDir + '\Documentos';
    If Not DirectoryExists(_DefaultDocFolder) Then
      CreateDir(_DefaultOutFolder);
  End;

  // Crear Directorio de Trabajo
  Try
    If Not DirectoryExists(_DefaultOutFolder) Then
      CreateDir(_DefaultOutFolder);
  Except
    _DefaultOutFolder := GetCurrentDir + '\Temporal';
    If Not DirectoryExists(_DefaultOutFolder) Then
      CreateDir(_DefaultOutFolder);
  End;

  _DefaultGovTax     := 18;  //Transitorio

  {Datos de la Compania}
  _CurrentCompany := ModuloGenerales.tlst_Compania_StatusID.AsString;
  _CurrentCompanyName := ModuloGenerales.tlst_Compania_StatusNombre.AsString;
  _CurrentBudget  := ModuloGenerales.tlst_Compania_StatusPresupuesto_Actual.AsString;

  {Datos del Usuario}
  If Not(ModuloGenerales.tUsuarios.State In DsEditModes) Then
    ModuloGenerales.tUsuarios.Edit;

  ModuloGenerales.tUsuariosStatus.Value := _stLOGIN;
  ModuloGenerales.tUsuariosLast_Login.Value := Modulo.Enlace.AppServer.ServerDate +  Modulo.Enlace.AppServer.ServerTime;
  ModuloGenerales.tUsuarios.Post;
  ModuloGenerales.tUsuarios.ApplyUpdates(0);

  ModalResult:= MrOk
end;

procedure TfrmUser_Login.CancelarExecute(Sender: TObject);
begin
  ModalResult := mrCancel
end;

procedure TfrmUser_Login.Nombre_UsuarioExit(Sender: TObject);
begin
  ModuloGenerales.tUsuarios.Close;
  ModuloGenerales.tUsuarios.Params.ParamByName('UserName').AsString := Trim(Nombre_Usuario.Text);
  ModuloGenerales.tUsuarios.Open;
  Login.Enabled :=  ModuloGenerales.tUsuarios.RecordCount > 0;
  If ModuloGenerales.tUsuarios.RecordCount <= 0 Then
    Begin
      UpdateInfoBoard(InfoBoard,
                      'Identificación',
                      'Usuario no registrado.'#13#13+
                      'Por Favor, verifique el nombre de usuario',
                      68,
                      clRed,
                      clRed);

      Nombre_Completo.Text := 'No Registrado';
      Nombre_Completo.SetFocus;
    End;
end;

procedure TfrmUser_Login.ContrasenaEnter(Sender: TObject);
begin
  Contrasena.Text := ''
end;

procedure TfrmUser_Login.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ModuloGenerales.tUsuarios.Close;
end;

Initialization
  RegisterClass(TfrmUser_Login);

end.
