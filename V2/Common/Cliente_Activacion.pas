unit Cliente_Activacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvPageControl, ComCtrls, StdCtrls, Mask, DBCtrls, ToolWin,
  ActnMan, ActnCtrls, ActnList, XPStyleActnCtrls, ActnColorMaps, ExtCtrls,
  SUIButton;

type
  TFCliente_Activacion = class(TForm)
    ColorConfig: TXPColorMap;
    Opciones: TActionManager;
    Salir: TAction;
    Login: TAction;
    LNombre_Usuario: TLabel;
    bt_Aceptar: TsuiButton;
    procedure FormCreate(Sender: TObject);
    procedure LoginExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure Nombre_UsuarioExit(Sender: TObject);
    procedure ContrasenaEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCliente_Activacion: TFCliente_Activacion;

implementation

uses DataModulo, Utilidades, RegKeys, Generales;

{$R *.dfm}

procedure TFCliente_Activacion.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Activar Los Hints Disponibles}
      LoadHints(Self);
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
      ColorConfig.Color := Color - 5;
      Circulo.Pen.Color := Color - 5;
      Circulo.Brush.Color := color and clLtGray;

      Datos_Usuario.TabBackGroundColor := Color;
    End; {If _Load_Create}
end;

procedure TFCliente_Activacion.LoginExecute(Sender: TObject);
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

  Granted      := Grant;
  _GrantedUser := Trim(Nombre_Usuario.Text);
  ModalResult  := MrOk
end;

procedure TFCliente_Activacion.SalirExecute(Sender: TObject);
begin
  Granted := False;
  Close
end;

procedure TFCliente_Activacion.Nombre_UsuarioExit(Sender: TObject);
begin
  ModuloGenerales.tUsuarios.Params.ParamByName('NickName').AsString := Trim(Nombre_Usuario.Text);
  ModuloGenerales.tUsuarios.Open;
  ModuloGenerales.tUsuarios.Refresh;
  Login.Enabled :=  ModuloGenerales.tUsuarios.RecordCount > 0;
  If ModuloGenerales.tUsuarios.RecordCount <= 0 Then Nombre_Completo.Text := 'No Registrado';
  If (ModuloGenerales.tUsuariosNivel_Acceso.Value <> _SysAdmin) And
     (ModuloGenerales.tUsuariosNivel_Acceso.Value <> _SuperUserLevel) And
     (ModuloGenerales.tUsuariosNivel_Acceso.Value <> _SuperVisor) Then
    Begin
      Login.Enabled :=  False;
      Nombre_Completo.Text := 'No Tiene Acceso a Esta Operación';
    End;
end;

procedure TFCliente_Activacion.ContrasenaEnter(Sender: TObject);
begin
  Contrasena.Text := ''
end;

procedure TFCliente_Activacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ModuloGenerales.tUsuarios.Close
end;

Initialization
  RegisterClass(TFCliente_Activacion);

end.
