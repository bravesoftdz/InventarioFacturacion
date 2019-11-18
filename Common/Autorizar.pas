unit Autorizar;

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
  ActnList, ActnMan, AdvPicture, DBAdvPicture,
  ExtCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Mask, DBCtrls,
  AdvOfficePager, AdvGlowButton, W7Classes, W7ListViewItems, ToolPanels,
  cxCheckBox, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, XPStyleActnCtrls, dxGDIPlusClasses;

type
  TfrmUser_Grant = class(TForm)
    Opciones: TActionManager;
    Cancelar: TAction;
    Login: TAction;
    adv_OptionPanel: TAdvToolPanel;
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
    Autorizar: TImage;
    gbt_Login: TAdvGlowButton;
    gbt_Cancelar: TAdvGlowButton;
    chk_Aplicar_Todos: TcxCheckBox;
    Template: TDBEdit;
    lInfo: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure LoginExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure Nombre_UsuarioExit(Sender: TObject);
    procedure ContrasenaEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    frmName       : String;
    Constructor Create(Aowner : TComponent; const FormName : String); overload;
  end;

var
  frmUser_Grant: TfrmUser_Grant;

implementation

uses Utilidades, Generales;

{$R *.dfm}

procedure TfrmUser_Grant.FormCreate(Sender: TObject);
begin
  Granted := False;
  Granted_all   := False;
end;

procedure TfrmUser_Grant.LoginExecute(Sender: TObject);
  Var
    Grant     : Boolean;
    CamposVacios : Integer;
begin
  If (Length(Trim(Contrasena.Text)) < 5) Then
    Begin
      lInfo.Caption := _ErrContrasenaMenor5 + '. Por Favor, verifique';
      Exit;
    End;

  CamposVacios := ValidateEmptyField(Self,Template);

  If CamposVacios > 0 Then
    Begin
      lInfo.Caption := 'Estos ' + IntToStr(CamposVacios) + ' campos son requeridos. por favor, VERIFIQUE :'+
                      _Last_Error_Message;
      Exit;
    End;

  Grant := Trim(Contrasena.Text) = UnEncrypt(ModuloGenerales.tUsuariosPassword.Value);

  If Not Grant Then
    Begin
      lInfo.Caption :=  _ErrAccesoDenegado + '. Por Favor, verifique';
      Exit;
    End;

  Granted       := True;
  _GrantedUser  := Nombre_Usuario.Text;
  _GrantedLevel := Trim(ModuloGenerales.tUsuariosNivel_Acceso.Value);
  Granted_all   := chk_Aplicar_Todos.Checked;
  ModalResult:= MrOk
end;

procedure TfrmUser_Grant.CancelarExecute(Sender: TObject);
begin
  ModalResult := mrCancel
end;

procedure TfrmUser_Grant.Nombre_UsuarioExit(Sender: TObject);
begin
  ModuloGenerales.tUsuarios.Close;
  ModuloGenerales.tUsuarios.Params.ParamByName('UserName').AsString := Trim(Nombre_Usuario.Text);
  ModuloGenerales.tUsuarios.Open;
  Login.Enabled :=  ModuloGenerales.tUsuarios.RecordCount > 0;

  If ModuloGenerales.tUsuarios.RecordCount <= 0 Then
    Begin
      Login.Enabled :=  False;
      lInfo.Caption := 'Usuario no registrado. ' +
                      'Por Favor, verifique el nombre de usuario';
      Nombre_Completo.Text := 'No Registrado';
      Nombre_Completo.SetFocus;
      Exit;
    End;

  ParamSearchKey(ModuloGenerales.tAutorizaciones,'Form',frmName);

  If (ModuloGenerales.tUsuariosNivel_Acceso.Value = _SysAdmin) Or
     (ModuloGenerales.tUsuariosNivel_Acceso.Value = _SuperUserLevel) Or
     (ModuloGenerales.tUsuariosNivel_Acceso.Value = _SuperVisor) Then

    Begin
      lInfo.Caption := '';
      Login.Enabled :=  True;
      Exit;
    End;


  lInfo.Caption := '';

  If Not ModuloGenerales.tAutorizaciones.Locate('Nombre',Trim(Nombre_Usuario.Text),[]) Then
    Begin
      Login.Enabled :=  False;
      lInfo.Caption := 'No tiene permisos para realizar la operacion' +
                      'Por Favor, verifique el nombre de usuario';
      Nombre_Completo.Text := 'No Registrado';
      Nombre_Completo.SetFocus;
    End;

end;

procedure TfrmUser_Grant.ContrasenaEnter(Sender: TObject);
begin
  Contrasena.Text := ''
end;

constructor TfrmUser_Grant.Create(Aowner: TComponent; const FormName: String);
begin
  inherited Create(AOwner); // Call the inherited constructor
  If _Load_Create Then
    Try
      frmName := FormName;
      {Activar Los Hints Disponibles}
      LoadHints(Self);

      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

      Nombre_Usuario.Text := '';
    Except
      On E:Exception Do
        Begin
          Login.Enabled := False;
          Mensaje(E.Message,Self);
        End;
    End; {Try} {If _Load_Create}
end;

procedure TfrmUser_Grant.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ModuloGenerales.tUsuarios.Close;
end;

Initialization
  RegisterClass(TfrmUser_Grant);

end.
