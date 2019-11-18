unit ConfigForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, ActnList, XPStyleActnCtrls, ActnMan,
  DB, IBDatabase, IBCustomDataSet, IBTable, ComCtrls, Grids, ValEdit, ImgList,
  AdvCardList, DBAdvCardList, treelist, AdvPanel, AdvPageControl, DBClient,
  Mask, wwdbedit, Wwdotdot, Wwdbcomb, DBCtrls, wwcheckbox, Wwdbigrd, Wwdbgrid,
  wwrcdpnl;

type
  TFMainConfig = class(TForm)
    bOk: TBitBtn;
    bCancel: TBitBtn;
    MainActionManager: TActionManager;
    TestDBConnection: TAction;
    DB: TIBDatabase;
    TR: TIBTransaction;
    OpenDB: TOpenDialog;
    SystemImages: TImageList;
    Opciones: TTreeList;
    Control_Paginas: TPageControl;
    tabAutenticacion: TTabSheet;
    tabModulos: TTabSheet;
    tabDirecciones: TTabSheet;
    Label9: TLabel;
    Label17: TLabel;
    bDatos_Generales: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    bInventario_Facturacion: TBitBtn;
    bCuentas_Cobrar: TBitBtn;
    bCuentas_Pagar: TBitBtn;
    bManejo_Caja: TBitBtn;
    bLibro_Banco: TBitBtn;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    bNomina: TBitBtn;
    bContabilidad: TBitBtn;
    LoadFiles: TAction;
    tConfigDataset: TClientDataSet;
    dConfigDataset: TDataSource;
    tConfigDatasetUserName: TWideStringField;
    tConfigDatasetPassword: TWideStringField;
    tConfigDatasetModulo_Inventario: TBooleanField;
    tConfigDatasetModulo_CtasxCobrar: TBooleanField;
    tConfigDatasetModulo_CtasxPagar: TBooleanField;
    tConfigDatasetModulo_Caja: TBooleanField;
    tConfigDatasetModulo_LibroBanco: TBooleanField;
    tConfigDatasetModulo_Nomina: TBooleanField;
    tConfigDatasetModulo_Contabilidad: TBooleanField;
    tConfigDatasetDatos_Generales: TWideStringField;
    tConfigDatasetInventario_Facturacion: TWideStringField;
    tConfigDatasetCuentas_Cobrar: TWideStringField;
    tConfigDatasetCuentas_Pagar: TWideStringField;
    tConfigDatasetManejo_Caja: TWideStringField;
    tConfigDatasetLibro_Banco: TWideStringField;
    tConfigDatasetNomina: TWideStringField;
    tConfigDatasetContabilidad: TWideStringField;
    Datos_Generales: TwwDBComboBox;
    Cuentas_Cobrar: TwwDBComboBox;
    Cuentas_Pagar: TwwDBComboBox;
    Manejo_Caja: TwwDBComboBox;
    Libro_Banco: TwwDBComboBox;
    Nomina: TwwDBComboBox;
    Contabilidad: TwwDBComboBox;
    Inventario_Facturacion: TwwDBComboBox;
    UserName: TDBEdit;
    Password: TDBEdit;
    Modulo_Inventario: TwwCheckBox;
    Modulo_CtasxCobrar: TwwCheckBox;
    Modulo_CtasxPagar: TwwCheckBox;
    Modulo_Caja: TwwCheckBox;
    Modulo_LibroBanco: TwwCheckBox;
    Modulo_Nomina: TwwCheckBox;
    Modulo_Contabilidad: TwwCheckBox;
    tConfigDatasetProcessor_INFO: TWideStringField;
    tConfigDatasetVolume_INFO: TWideStringField;
    tConfigDatasetNIC_INFO: TWideStringField;
    TestLog: TTabSheet;
    log: TMemo;
    procedure bCancelClick(Sender: TObject);
    procedure bOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TestDBConnectionExecute(Sender: TObject);
    procedure bDatos_GeneralesClick(Sender: TObject);
    procedure OpcionesClick(Sender: TObject);
    procedure LoadFilesExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bInventario_FacturacionClick(Sender: TObject);
    procedure bCuentas_PagarClick(Sender: TObject);
    procedure bManejo_CajaClick(Sender: TObject);
    procedure bLibro_BancoClick(Sender: TObject);
    procedure bNominaClick(Sender: TObject);
    procedure bCuentas_CobrarClick(Sender: TObject);
    procedure bContabilidadClick(Sender: TObject);
    procedure tabDireccionesShow(Sender: TObject);
  private
    { Private declarations }
    Function GetFilePath (Const CurrentFileName : WideString) : TFileName;
    Procedure ChkConnection (Const DoCheck :Boolean; Const Module, DbFile : String);
  public
    { Public declarations }
  end;

var
  FMainConfig: TFMainConfig;

implementation

uses Utilidades, Registry, RegKeys;

{$R *.dfm}

procedure TFMainConfig.bCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFMainConfig.bLibro_BancoClick(Sender: TObject);
begin
  If _ProperConfig Then
    Begin
      tConfigDataset.Edit;
      tConfigDatasetLibro_Banco.AsString := GetFilePath(tConfigDatasetLibro_Banco.AsString);
    End;
end;

procedure TFMainConfig.bManejo_CajaClick(Sender: TObject);
begin
  If _ProperConfig Then
    Begin
      tConfigDataset.Edit;
      tConfigDatasetManejo_Caja.AsString := GetFilePath(tConfigDatasetManejo_Caja.AsString);
    End;
end;

procedure TFMainConfig.bNominaClick(Sender: TObject);
begin
  If _ProperConfig Then
    Begin
      tConfigDataset.Edit;
      tConfigDatasetNomina.AsString := GetFilePath(tConfigDatasetNomina.AsString);
    End;
end;

procedure TFMainConfig.bOkClick(Sender: TObject);
Var
  I : Integer;
  S : String;
begin
  If tConfigDataset.Active Then
    Begin
      tConfigDataset.Edit;
      For I := 0 To tConfigDataset.FieldCount - 1 Do
        Begin
          If (tConfigDataset.Fields[I] Is TStringField) Then
            If (Trim(tConfigDataset.Fields[I].AsString) <> '') Then
              Begin
                S := tConfigDataset.Fields[I].AsString;
                tConfigDataset.Fields[I].AsString := Encrypt(S);
              End;
        End; {For}
      tConfigDataset.SaveToFile(_ConfigFileName,dfXML);
      tConfigDataset.Close;
    End; {If}
  Close
end;

procedure TFMainConfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tConfigDataset.Close
end;

procedure TFMainConfig.FormCreate(Sender: TObject);
Var
  I : Integer;
begin
  {Inicia el Registro}
  Reginfo := TRegistry.Create;
  RegInfo.RootKey := HKEY_LOCAL_MACHINE;

  If _ProperConfig Then
    Begin
      tConfigDataset.LoadFromFile(_ConfigFileName);
      tConfigDataset.Edit;
      For I := 0 To tConfigDataset.FieldCount - 1 Do
        Begin
          If (tConfigDataset.Fields[I] Is TStringField) Then
            If (Trim(tConfigDataset.Fields[I].AsString) <> '') Then
              tConfigDataset.Fields[I].AsString := UnEncrypt(tConfigDataset.Fields[I].AsString)
        End; {For}
    End; {If}

  Control_Paginas.ActivePage := tabAutenticacion
end;

procedure TFMainConfig.tabDireccionesShow(Sender: TObject);
begin
  Inventario_Facturacion.Enabled := Modulo_Inventario.Checked;
  Cuentas_Cobrar.Enabled := Modulo_CtasxCobrar.Checked;
  Cuentas_Pagar.Enabled := Modulo_CtasxPagar.Checked;
  Manejo_Caja.Enabled := Modulo_Caja.Checked;
  Libro_Banco.Enabled := Modulo_LibroBanco.Checked;
  Nomina.Enabled := Modulo_Nomina.Checked;
  Contabilidad.Enabled := Modulo_Contabilidad.Checked;

  bInventario_Facturacion.Enabled := Inventario_Facturacion.Enabled;
  bCuentas_Cobrar.Enabled := Cuentas_Cobrar.Enabled;
  bCuentas_Pagar.Enabled := Cuentas_Pagar.Enabled;
  bManejo_Caja.Enabled := Manejo_Caja.Enabled;
  bLibro_Banco.Enabled := Libro_Banco.Enabled;
  bNomina.Enabled := Nomina.Enabled;
  bContabilidad.Enabled := Contabilidad.Enabled;
end;

procedure TFMainConfig.LoadFilesExecute(Sender: TObject);
begin
  If Ask ('Are You ABSOLUTELY SURE?','Do This Thing') = Id_Yes Then
    Begin
      Try
        If Not DirectoryExists(_WorkFolder) Then CreateDir(_WorkFolder);
        tConfigDataset.Close;
        If FileExists(_ConfigFileName) Then DeleteFile(_ConfigFileName);
        tConfigDataset.CreateDataSet;
        tConfigDataset.Edit;
        tConfigDatasetProcessor_INFO.AsString := _CPU_ID;
        tConfigDatasetNIC_INFO.AsString := _MAC_ID;
        tConfigDatasetVolume_INFO.AsString := _VOLUME_ID;
      Except
        Mensaje('ERROR LOADING CONFIGURATION FILE')
      End;
    End;
end;

procedure TFMainConfig.OpcionesClick(Sender: TObject);
begin
  Control_Paginas.ActivePageIndex := Opciones.Selected.AbsoluteIndex
end;

Procedure TFMainConfig.ChkConnection (Const DoCheck :Boolean; Const Module, DbFile : String);
  Begin
    If Not DoCheck Then Exit;
    If Trim(DbFile) <> '' Then
      Try
        Db.Params.Clear;
        DB.DatabaseName := DbFile;
        Db.Params.Add('user_name='+tConfigDatasetUserName.AsString);
        Db.Params.Add('password='+tConfigDatasetPassword.AsString);
        Db.Params.Add('sql_role_name=Admin');
        Db.Open;
        Log.Lines.Add(Module + ': Conectado Correctamente')
      Except
        On E:Exception Do Log.Lines.Add(Module + ': '#13#13 + E.Message)
      End;
    DB.Close;
  End;


procedure TFMainConfig.TestDBConnectionExecute(Sender: TObject);
begin
  Log.Lines.Clear;
  Control_Paginas.ActivePageIndex := 3;
  ChkConnection(True,'Datos Generales',tConfigDatasetDatos_Generales.AsString);
  ChkConnection(Modulo_Inventario.Checked,'Inventario & Facturación',tConfigDatasetInventario_Facturacion.AsString);
  ChkConnection(Modulo_CtasxCobrar.Checked,'Cuentas x Cobrar',tConfigDatasetCuentas_Cobrar.AsString);
  ChkConnection(Modulo_CtasxPagar.Checked,'Cuentas x Pagar',tConfigDatasetCuentas_Pagar.AsString);
  ChkConnection(Modulo_Caja.Checked,'Manejo de Caja',tConfigDatasetManejo_Caja.AsString);
  ChkConnection(Modulo_LibroBanco.Checked,'Libro de Banco',tConfigDatasetLibro_Banco.AsString);
  ChkConnection(Modulo_Nomina.Checked,'Nómina',tConfigDatasetNomina.AsString);
  ChkConnection(Modulo_Contabilidad.Checked,'Contabilidad',tConfigDatasetContabilidad.AsString);
end;

Function TFMainConfig.GetFilePath (Const CurrentFileName : WideString) : TFileName;
  Begin
    Result := CurrentFileName;
    OpenDB.FileName := '';
    If Trim(CurrentFileName) <> '' Then
    OpenDB.InitialDir := ExtractFileDir(Trim(CurrentFileName));
    If OpenDB.Execute Then Result := OpenDB.FileName;
  End;

procedure TFMainConfig.bContabilidadClick(Sender: TObject);
begin
  If _ProperConfig Then
    Begin
      tConfigDataset.Edit;
      tConfigDatasetContabilidad.AsString := GetFilePath(tConfigDatasetContabilidad.AsString);
    End;
end;

procedure TFMainConfig.bCuentas_CobrarClick(Sender: TObject);
begin
  If _ProperConfig Then
    Begin
      tConfigDataset.Edit;
      tConfigDatasetCuentas_Cobrar.AsString := GetFilePath(tConfigDatasetCuentas_Cobrar.AsString);
    End;
end;

procedure TFMainConfig.bCuentas_PagarClick(Sender: TObject);
begin
  If _ProperConfig Then
    Begin
      tConfigDataset.Edit;
      tConfigDatasetCuentas_Pagar.AsString := GetFilePath(tConfigDatasetCuentas_Pagar.AsString);
    End;
end;

procedure TFMainConfig.bDatos_GeneralesClick(Sender: TObject);
begin
  If _ProperConfig Then
    Begin
      tConfigDataset.Edit;
      tConfigDatasetDatos_Generales.AsString := GetFilePath(tConfigDatasetDatos_Generales.AsString);
    End;
end;

procedure TFMainConfig.bInventario_FacturacionClick(Sender: TObject);
begin
  If _ProperConfig Then
    Begin
      tConfigDataset.Edit;
      tConfigDatasetInventario_Facturacion.AsString := GetFilePath(tConfigDatasetInventario_Facturacion.AsString);
    End;
end;

end.

