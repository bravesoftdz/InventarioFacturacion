unit PayRollConfigForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, wwcheckbox, RegKeys;

type
  TFPayRollConfig = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    AbrirLogo: TOpenDialog;
    WindowsColor: TColorDialog;
    Label9: TLabel;
    Edit10: TEdit;
    Label16: TLabel;
    Edit11: TEdit;
    Label17: TLabel;
    Edit12: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPayRollConfig: TFPayRollConfig;

implementation

uses Utilidades, Registry, DataModulo, Generales;

{$R *.dfm}

procedure TFPayRollConfig.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFPayRollConfig.BitBtn1Click(Sender: TObject);
begin
  {Conexion}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_Prl_DataRouteKey,True);
  RegInfo.WriteString(_ConectionServerPath,Encrypt(Edit1.Text));
  RegInfo.WriteString(_ConectionURL,Encrypt(Edit10.Text));
  RegInfo.WriteString(_ConectionLocalServerPath,Encrypt(Edit11.Text));
  RegInfo.WriteString(_ConectionLocalURL,Encrypt(Edit12.Text));
end;

procedure TFPayRollConfig.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);

      {Inicia el Registro}
      Reginfo := TRegistry.Create;
      RegInfo.RootKey := HKEY_LOCAL_MACHINE;

      {Color de la Pantalla}
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

      {Conexion}
      RegInfo.CloseKey;
      RegInfo.OpenKey(_Prl_DataRouteKey,True);

      Edit1.Text  := UnEncrypt(RegInfo.ReadString(_ConectionServerPath));
      Edit10.Text := UnEncrypt(RegInfo.ReadString(_ConectionURL));
      Edit11.Text := UnEncrypt(RegInfo.ReadString(_ConectionLocalServerPath));
      Edit12.Text := UnEncrypt(RegInfo.ReadString(_ConectionLocalURL));

      WindowsColor.Color := GetRegColor(_GeneralConfigKey,_WindowsColor)

    End
    {If _Load_Create}
end;

procedure TFPayRollConfig.FormKeyPress(Sender: TObject; var Key: Char);
 Var
  Found : TWinControl;
begin
  If Key = Chr(VK_RETURN) Then
    Begin
      Found := FindNextControl(ActiveControl,True, True, False);
      Found.SetFocus
    End
end;

Initialization
  RegisterClass(TFPayRollConfig);

  end.
