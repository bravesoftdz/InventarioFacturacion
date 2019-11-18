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
    DB: TIBDatabase;
    GetKey: TAction;
    Edit1: TEdit;
    Edit2: TEdit;
    UnKey: TAction;
    TR: TIBTransaction;
    TP: TIBTable;
    Compare: TAction;
    BitBtn3: TBitBtn;
    OpenDB: TOpenDialog;
    TPIntervalStart: TIBStringField;
    TPIntervalEnd: TIBStringField;
    TPRegistration: TIBStringField;
    TPExecution: TIntegerField;
    BitBtn4: TBitBtn;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PostToRegistryExecute(Sender: TObject);
    procedure GetKeyExecute(Sender: TObject);
    procedure UnKeyExecute(Sender: TObject);
    procedure PostToDBExecute(Sender: TObject);
    procedure CompareExecute(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMainConfig: TFMainConfig;

implementation

uses Utilidades, Registry, RegKeys;

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

  {Configuracion General}
  Reginfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,True);


  RegInfo.CloseKey;
  Close
end;

procedure TFMainConfig.FormCreate(Sender: TObject);
begin
  {Inicia el Registro}
  Reginfo := TRegistry.Create;
  RegInfo.RootKey := HKEY_LOCAL_MACHINE;

  {Color de la Pantalla}
  Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

  {Conexion}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_DataRouteKey,True);
  Edit10.Text := UnEncrypt(RegInfo.ReadString(_ConectionURL));
  Edit12.Text := UnEncrypt(RegInfo.ReadString(_ConectionLocalURL));

  Edit1.Text := UnEncrypt(RegInfo.ReadString(_ServerUserName));
  Edit2.Text := UnEncrypt(RegInfo.ReadString(_ServerUserPassword))

end;

procedure TFMainConfig.PostToRegistryExecute(Sender: TObject);
  Var D : String;
begin
  D := GetCurrentDir();
  RegInfo.CloseKey;
  RegInfo.OpenKey(_CurrentVersion,False);
  RegInfo.WriteString(_ServicePackID,Encrypt(GenCPUID + '/' + GetVolumeID(D[1])));
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

procedure TFMainConfig.PostToDBExecute(Sender: TObject);
  Var D : String;
begin
  D := GetCurrentDir();
  Db.Params.Clear;
  RegInfo.CloseKey;
  RegInfo.OpenKey(_DataRouteKey,True);
  DB.DatabaseName := UnEncrypt(RegInfo.ReadString(_ConectionURL));
  Db.Params.Add('user_name='+UnEncrypt(RegInfo.ReadString(_ServerUserName)));
  Db.Params.Add('password='+UnEncrypt(RegInfo.ReadString(_ServerUserPassword)));
  Db.Params.Add('sql_role_name=Admin');
  Db.Open;
  Tr.StartTransaction;
  TP.Open;
  If TP.RecordCount <= 0 Then TP.Append Else TP.Edit;
  TPIntervalStart.Value := Encrypt(DateToStr(Date()));
  TPIntervalEnd.Value := Encrypt(DateToStr(Date()));
  TPRegistration.Value := Encrypt(GenCPUID + '/' + GetVolumeID(D[1]));
  TP.Post;
  Tr.Commit;
  Tp.Close;
  DB.Close;
  Caption := 'Datos Guardados'
end;

procedure TFMainConfig.CompareExecute(Sender: TObject);
  Var R,D : String;
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_CurrentVersion,False);
  R := UnEncrypt(RegInfo.ReadString(_ServicePackID));

  Db.Params.Clear;
  RegInfo.CloseKey;
  RegInfo.OpenKey(_DataRouteKey,True);
  DB.DatabaseName := UnEncrypt(RegInfo.ReadString(_ConectionURL));
  Db.Params.Add('user_name='+UnEncrypt(RegInfo.ReadString(_ServerUserName)));
  Db.Params.Add('password='+UnEncrypt(RegInfo.ReadString(_ServerUserPassword)));
  Db.Params.Add('sql_role_name=Admin');
  Db.Open;
  TP.Open;
  D := UnEncrypt(TPRegistration.Value);
  Tp.Close;
  DB.Close;
  Mensaje (R + #13 + D)
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

procedure TFMainConfig.BitBtn4Click(Sender: TObject);
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,False);
  OpenDB.FileName := '';
  OpenDB.InitialDir := RegInfo.ReadString(_LastDbDir);
  If OpenDB.Execute Then
    Begin
      Edit12.Text := OpenDB.FileName;
      RegInfo.WriteString(_LastDbDir,ExtractFileDir(OpenDB.FileName))
    End
end;

end.
