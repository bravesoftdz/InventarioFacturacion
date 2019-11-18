unit ConfigForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, ActnList, XPStyleActnCtrls, ActnMan,
  DB, IBDatabase, IBCustomDataSet, IBTable;

type
  TFMainConfig = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label9: TLabel;
    Edit10: TEdit;
    Label17: TLabel;
    Edit12: TEdit;
    ActionManager1: TActionManager;
    PostToRegistry: TAction;
    PostToDB: TAction;
    GetKey: TAction;
    Edit1: TEdit;
    Edit2: TEdit;
    UnKey: TAction;
    Compare: TAction;
    BitBtn3: TBitBtn;
    OpenDB: TOpenDialog;
    Label1: TLabel;
    Edit3: TEdit;
    Main: TCheckBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PostToRegistryExecute(Sender: TObject);
    procedure GetKeyExecute(Sender: TObject);
    procedure UnKeyExecute(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMainConfig: TFMainConfig;

implementation

uses Utilidades, Registry;

{$R *.dfm}

procedure TFMainConfig.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFMainConfig.BitBtn1Click(Sender: TObject);
begin
  {Conexion}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_DataRouteKey,True);
  RegInfo.WriteString(_ConectionURL,Encrypt(Edit10.Text));
  RegInfo.WriteString(_ConectionLocalURL,Encrypt(Edit12.Text));

  RegInfo.WriteString(_ServerUserName,Encrypt(Trim(Edit1.Text)));
  RegInfo.WriteString(_ServerUserPassword,Encrypt(Trim(Edit2.Text)));

  RegInfo.CloseKey;
  Close
end;

procedure TFMainConfig.FormCreate(Sender: TObject);
begin
  {Inicia el Registro}
  Reginfo := TRegistry.Create;
  RegInfo.RootKey := HKEY_LOCAL_MACHINE;

  {Conexion}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_DataRouteKey,True);
  Edit10.Text := UnEncrypt(RegInfo.ReadString(_ConectionURL));
  Edit12.Text := UnEncrypt(RegInfo.ReadString(_ConectionLocalURL));

  Edit1.Text := UnEncrypt(RegInfo.ReadString(_ServerUserName));
  Edit2.Text := UnEncrypt(RegInfo.ReadString(_ServerUserPassword))

end;

procedure TFMainConfig.PostToRegistryExecute(Sender: TObject);
  Var
    D      : String;
    chkcpu : Boolean;

begin
  AssignRootKey(Trim(Edit3.Text));
  D := GetCurrentDir();
  RegInfo.CloseKey;
  RegInfo.OpenKey(_DataRouteKey,True);
  chkCpu := Main.Checked;
  RegInfo.WriteBool(_ChkCPU,chkcpu);
  If chkcpu Then
    RegInfo.WriteString(_ServicePackID,Encrypt(GenCPUID + '/' + GetVolumeID(D[1])))
  Else
    RegInfo.WriteString(_ServicePackID,Encrypt(GetVolumeID(D[1])));
  Caption := 'Datos Registrados'
end;

procedure TFMainConfig.GetKeyExecute(Sender: TObject);
begin
  Height := Height + 100
end;

procedure TFMainConfig.UnKeyExecute(Sender: TObject);
begin
  Height := Height - 100
end;

procedure TFMainConfig.BitBtn3Click(Sender: TObject);
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,False);
  OpenDB.FileName := '';
  OpenDB.InitialDir := RegInfo.ReadString(_LastDbDir);
  If OpenDB.Execute Then
    Begin
      Edit10.Text := OpenDB.FileName;
      RegInfo.WriteString(_LastDbDir,ExtractFileDir(OpenDB.FileName))
    End
end;

end.
