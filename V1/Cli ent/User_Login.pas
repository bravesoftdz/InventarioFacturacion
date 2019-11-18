unit User_Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvPageControl, ComCtrls, StdCtrls, Mask, DBCtrls, ToolWin,
  ActnMan, ActnCtrls, ActnList, XPStyleActnCtrls, ActnColorMaps, ExtCtrls;

type
  TFUser_Login = class(TForm)
    Datos_Usuario: TAdvPageControl;
    Page_Login: TAdvTabSheet;
    LNombre_Usuario: TLabel;
    Label10: TLabel;
    Nombre_Usuario: TEdit;
    Contrasena: TEdit;
    Opciones: TActionManager;
    Salir: TAction;
    Login: TAction;
    atv_Acept_Cancel: TActionToolBar;
    Circulo: TShape;
    Nombre_Completo: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure LoginExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure Nombre_UsuarioExit(Sender: TObject);
    procedure ContrasenaEnter(Sender: TObject);
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

uses DataModulo, Utilidades;

{$R *.dfm}

procedure TFUser_Login.FormCreate(Sender: TObject);
begin
  Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
  Circulo.Pen.Color := Color - 5;
  Circulo.Brush.Color := color + 230;

  RegInfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,False);
  Try
    Nombre_Usuario.Text := UnEncrypt(RegInfo.ReadString(_LastUser));
  Except
    Nombre_Usuario.Text := 'ESCRIBA SU NOMBRE DE USUARIO'
  End; {Try}

  Datos_Usuario.TabBackGroundColor := Color;
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

  Grant := Trim(Contrasena.Text) = UnEncrypt(Modulo.tUsuariosPassword.Value);

  If Not Grant Then
    Begin
      Mensaje(_ErrAccesoDenegado);
      Nombre_Usuario.SetFocus;
      Exit
    End;

  Granted      := True;
  _CurrentUser := Nombre_Usuario.Text;
  _CurrentLevel:= Trim(Modulo.tUsuariosNivel_Acceso.Value);

  RegInfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,False);
  RegInfo.WriteString(_LastUser,Encrypt(_CurrentUser));
  Close
end;

procedure TFUser_Login.SalirExecute(Sender: TObject);
begin
  Application.Terminate
end;

procedure TFUser_Login.Nombre_UsuarioExit(Sender: TObject);
begin
  Modulo.tUsuarios.Params.ParamByName('NickName').AsString := Trim(Nombre_Usuario.Text);
  Modulo.tUsuarios.Open;
  Modulo.tUsuarios.Refresh;
  Login.Enabled :=  Modulo.tUsuarios.RecordCount > 0;
  If Modulo.tUsuarios.RecordCount <= 0 Then Nombre_Completo.Text := 'No Registrado'
end;

procedure TFUser_Login.ContrasenaEnter(Sender: TObject);
begin
  Contrasena.Text := ''
end;

procedure TFUser_Login.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Modulo.tUsuarios.Close;
  If Not Granted Then Application.Terminate
end;

procedure TFUser_Login.FormActivate(Sender: TObject);
begin
  Nombre_Usuario.SetFocus;
  If (Trim(Nombre_Usuario.Text) <> '') AND
     (Trim(Nombre_Usuario.Text) <> 'ESCRIBA SU NOMBRE DE USUARIO') Then
    Contrasena.SetFocus
end;

end.
