unit Autorizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvPageControl, ComCtrls, StdCtrls, Mask, DBCtrls, ToolWin,
  ActnMan, ActnCtrls, ActnList, XPStyleActnCtrls, ActnColorMaps, ExtCtrls;

type
  TFAutorizar = class(TForm)
    Datos_Usuario: TAdvPageControl;
    Page_Login: TAdvTabSheet;
    LNombre_Usuario: TLabel;
    Label10: TLabel;
    Nombre_Usuario: TEdit;
    Contrasena: TEdit;
    ColorConfig: TXPColorMap;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAutorizar: TFAutorizar;

implementation

uses DataModulo, Utilidades, RegKeys, Generales;

{$R *.dfm}

procedure TFAutorizar.FormCreate(Sender: TObject);
begin
  Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
  ColorConfig.Color := Color - 5;
  Circulo.Pen.Color := Color - 5;
  Circulo.Brush.Color := color and clLtGray;

  Datos_Usuario.TabBackGroundColor := Color;
end;

procedure TFAutorizar.LoginExecute(Sender: TObject);
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

  Grant := (Trim(ModuloGenerales.tUsuariosNivel_Acceso.Value) = _SysAdmin) Or
           (Trim(ModuloGenerales.tUsuariosNivel_Acceso.Value) = _SuperVisor) Or
           (Trim(ModuloGenerales.tUsuariosNivel_Acceso.Value) = _SuperUserLevel);

  Granted     := Grant;
  ModalResult := MrOk
end;

procedure TFAutorizar.SalirExecute(Sender: TObject);
begin
  Granted := False;
  Close
end;

procedure TFAutorizar.Nombre_UsuarioExit(Sender: TObject);
begin
  Modulo.tUsuarios.Params.ParamByName('NickName').AsString := Trim(Nombre_Usuario.Text);
  Modulo.tUsuarios.Open;
  Modulo.tUsuarios.Refresh;
  Login.Enabled :=  Modulo.tUsuarios.RecordCount > 0;
  If Modulo.tUsuarios.RecordCount <= 0 Then Nombre_Completo.Text := 'No Registrado'
end;

procedure TFAutorizar.ContrasenaEnter(Sender: TObject);
begin
  Contrasena.Text := ''
end;

procedure TFAutorizar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Modulo.tUsuarios.Close
end;

end.
