unit User_Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvPageControl, ComCtrls, StdCtrls, Mask, DBCtrls, ToolWin,
  ActnMan, ActnCtrls, ActnList, XPStyleActnCtrls, RegKeys,
  ExtCtrls, SUIButton, SUIEdit, SUIDBCtrls, SUIForm, SuiThemes, Buttons;

type
  TFUser_Login = class(TForm)
    Opciones: TActionManager;
    Salir: TAction;
    Login: TAction;
    Label10: TLabel;
    LNombre_Usuario: TLabel;
    Nombre_Completo: TDBEdit;
    Contrasena: TEdit;
    Nombre_Usuario: TEdit;
    bt_Aceptar: TBitBtn;
    bt_Salir: TBitBtn;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LoginExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure suitempNombre_UsuarioExit(Sender: TObject);
    procedure suitempContrasenaEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUser_Login: TFUser_Login;

implementation

uses DataModulo, Utilidades, Generales, Splash;

{$R *.dfm}

procedure TFUser_Login.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Activar Los Hints Disponibles}
      LoadHints(Self);

      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

{      Circulo.Pen.Color := Color - 5;
      Circulo.Brush.Color := color + 230;}

      RegInfo.CloseKey;
      RegInfo.OpenKey(_GeneralConfigKey,False);
      Try
        Nombre_Usuario.Text := UnEncrypt(RegInfo.ReadString(_LastUser));
      Except
        Nombre_Usuario.Text := 'ESCRIBA SU NOMBRE DE USUARIO'
      End; {Try}

//      Datos_Usuario.TabBackGroundColor := Color
    End
    {If _Load_Create}
end;

procedure TFUser_Login.FormShow(Sender: TObject);
begin
  FSplash.Free
end;

procedure TFUser_Login.LoginExecute(Sender: TObject);
  Var
    Grant     : Boolean;
begin
  If (Length(Trim(Contrasena.Text)) < 5) Then
    Begin
      Mensaje(_ErrContrasenaMenor5);
      Contrasena.SetFocus;
      Exit
    End;

  Grant := Trim(Contrasena.Text) = UnEncrypt(ModuloGenerales.tUsuariosPassword.Value);

  If Not Grant Then
    Begin
      Mensaje(_ErrAccesoDenegado);
      Nombre_Usuario.SetFocus;
      Exit
    End;

  Granted      := True;
  _CurrentUser := Nombre_Usuario.Text;
  _CurrentLevel:= Trim(ModuloGenerales.tUsuariosNivel_Acceso.Value);

{  Modulo.tApertura_Caja.Params.ParamByName('Usuario').AsString := Trim(_CurrentUser);
  Modulo.tApertura_Caja.Params.ParamByName('Abierto').Value := 'TRUE';

  Modulo.tApertura_Caja.Open;

  _CurrentApertura := '_NO_';

  If Modulo.tApertura_Caja.RecordCount > 0 Then _CurrentApertura := Modulo.tApertura_CajaProceso.Value;
  Modulo.tApertura_Caja.Close;}

  RegInfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,False);
  RegInfo.WriteString(_LastUser,Encrypt(_CurrentUser));
  Close
end;

procedure TFUser_Login.SalirExecute(Sender: TObject);
begin
  Application.Terminate
end;

procedure TFUser_Login.suitempNombre_UsuarioExit(Sender: TObject);
begin
  ModuloGenerales.tUsuarios.Params.ParamByName('NickName').AsString := Trim(Nombre_Usuario.Text);
  ModuloGenerales.tUsuarios.Open;
  ModuloGenerales.tUsuarios.Refresh;
  Login.Enabled :=  ModuloGenerales.tUsuarios.RecordCount > 0;
  If ModuloGenerales.tUsuarios.RecordCount <= 0 Then Nombre_Completo.Text := 'No Registrado'
end;

procedure TFUser_Login.suitempContrasenaEnter(Sender: TObject);
begin
  Contrasena.Text := ''
end;

procedure TFUser_Login.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ModuloGenerales.tUsuarios.Close;
  If Not Granted Then Application.Terminate
end;

procedure TFUser_Login.FormActivate(Sender: TObject);
begin
  Nombre_Usuario.SetFocus;
  If (Trim(Nombre_Usuario.Text) <> '') AND
     (Trim(Nombre_Usuario.Text) <> 'ESCRIBA SU NOMBRE DE USUARIO') Then
    Contrasena.SetFocus
end;


Initialization
  RegisterClass(TFUser_Login);

end.
