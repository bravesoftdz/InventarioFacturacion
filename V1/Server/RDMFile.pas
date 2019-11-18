unit RDMFile;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, DataServer_TLB, StdVcl, IBDatabase, DB, IBCustomDataSet,
  IBTable, IBQuery, Provider, IBStoredProc, Variants, SUIForm;

type
  TRemoteModule = class(TRemoteDataModule, IRemoteModule)
    InfoTransaction: TIBTransaction;
    SrchQ2: TIBQuery;
    SrchPr2: TDataSetProvider;
    InfoDataBase: TIBDatabase;
    Mensajes: TsuiMSNPopForm;
    Validation: TIBTable;
    ValidationIntervalStart: TIBStringField;
    ValidationIntervalEnd: TIBStringField;
    ValidationRegistration: TIBStringField;
    ValidationExecution: TIntegerField;
    qrReporter: TIBQuery;
    prReporter: TDataSetProvider;
    SrchQ: TIBQuery;
    SrchPr: TDataSetProvider;
    procedure prFacturasUpdateData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure RemoteDataModuleCreate(Sender: TObject);
    procedure prSalidas_InventarioBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prCompra_ProductosBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prFacturasBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prNotas_CreditoUpdateData(Sender: TObject;
      DataSet: TCustomClientDataSet);
  private
    { Private declarations }
    function GetChildRDM(const COMObjectFactory: TCOMObjectFactory): IrdmAbsChild;
    function GetGeneralesChildRDM(const COMObjectFactory: TCOMObjectFactory): IrdmAbsChild;
  protected
    procedure LoginToDb(const DB_Name, User_Name, PassWord, Terminal: WideString);
      safecall;
    procedure ReloadLink; safecall;
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
    function ServerDate: TDateTime; safecall;
    function ServerTime: TDateTime; safecall;
    function LastTableCode(const TableName: WideString): Integer; safecall;
    function OriginalProductSQL: WideString; safecall;
    function Get_Inventario_RDM: IrdmAbsChild; safecall;
    function Get_Caja_RDM: IrdmAbsChild; safecall;
    function Get_Seguridad_RDM: IrdmAbsChild; safecall;
    function Get_Mov_Inventario_RDM: IrdmAbsChild; safecall;
    function Get_CtasXCobrar_RDM: IrdmAbsChild; safecall;
    function Get_CtasXPagar_RDM: IrdmAbsChild; safecall;
    function Get_Libro_Banco_RDM: IrdmAbsChild; safecall;
    function Get_Generales_RDM: IrdmAbsChild; safecall;
  public
    { Public declarations }
  end;

implementation

uses Utilidades, Display, RegKeys, Caja_RDMFile, CtasXCobrar_RDMFile,
  CtasXPagar_RDMFile, Generales_RDMFile, Inventario_RDMFile,
  Libro_Banco_RDMFile, Mov_Inventario_RDMFile, Seguridad_RDMFile;

{$R *.DFM}

class procedure TRemoteModule.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
begin
  if Register then
  begin
    inherited UpdateRegistry(Register, ClassID, ProgID);
    EnableSocketTransport(ClassID);
    EnableWebTransport(ClassID);
  end else
  begin
    DisableSocketTransport(ClassID);
    DisableWebTransport(ClassID);
    inherited UpdateRegistry(Register, ClassID, ProgID);
  end;
end;

procedure TRemoteModule.RemoteDataModuleCreate(Sender: TObject);
begin
      {Configurar las Bases De Datos}

      // Inventario y Facturacion
      If GeneralesObjectFactory.tConfigDatasetModulo_Inventario.Value Then
        Begin
          InfoDataBase.Params.Clear;
          InfoDataBase.DatabaseName := Trim(UnEncrypt(tConfigDatasetInventario_Facturacion.Value));
          InfoDataBase.Params.Add('user_name='+ Trim(UnEncrypt(tConfigDatasetUserName.Value)));
          InfoDataBase.Params.Add('password='+ Trim(UnEncrypt(tConfigDatasetPassword.Value)));
          InfoDataBase.Params.Add('sql_role_name=Admin');
        End;


{  InfoTransaction.Active := False;
  InfoDataBase.Close;

  ComunesTransaction.Active := False;
  ComunesDb.Close;

  RegInfo.CloseKey;
  RegInfo.OpenKey(_CurrentVersion,False);
  RegistryReference := UnEncrypt(RegInfo.ReadString(_ServicePackID));

  _OriginaProduct := qrListadoProductos.SQL.Text;

  RegInfo.CloseKey;
  RegInfo.OpenKey(_DataRouteKey,False);

  InfoDataBase.Params.Clear;
  InfoDataBase.DatabaseName := Trim(UnEncrypt(RegInfo.ReadString(_ConectionURL)));
  InfoDataBase.Params.Add('user_name='+ Trim(UnEncrypt(RegInfo.ReadString(_ServerUserName))));
  InfoDataBase.Params.Add('password='+ Trim(UnEncrypt(RegInfo.ReadString(_ServerUserPassword))));
  InfoDataBase.Params.Add('sql_role_name=Admin');

  ComunesDB.Params.Clear;
  ComunesDB.DatabaseName := Trim(UnEncrypt(RegInfo.ReadString(_ConectionLocalURL)));
  ComunesDB.Params.Add('user_name='+ Trim(UnEncrypt(RegInfo.ReadString(_ServerUserName))));
  ComunesDB.Params.Add('password='+ Trim(UnEncrypt(RegInfo.ReadString(_ServerUserPassword))));
  ComunesDB.Params.Add('sql_role_name=Admin');

  ComunesDB.Open;

  Validation.Open;
  DatabaseReference := UnEncrypt(ValidationRegistration.Value);

{  If Trim(RegistryReference) <> Trim(DatabaseReference) Then
    Begin
      RegInfo.CloseKey;
      RegInfo.OpenKey(_CurrentVersion,False);
      RegInfo.WriteString(_ServicePackID,Encrypt('Invalid Command Reference'));
      InfoDataBase.ForceClose;
      Halt(0)
    End;

  DatabaseReference := GetCurrentDir();

  If Trim(RegistryReference) <> Trim(GenCPUID + '/' + GetVolumeID(DatabaseReference[1])) Then
    Begin
      RegInfo.CloseKey;
      RegInfo.OpenKey(_CurrentVersion,False);
      RegInfo.WriteString(_ServicePackID,Encrypt('Forbiden Command Interface'));
      Halt(0)
    End;}

end;

function TRemoteModule.ServerDate: TDateTime;
begin
  Result := Date()
end;

function TRemoteModule.ServerTime: TDateTime;
begin
  Result := Time()
end;

function TRemoteModule.LastTableCode(const TableName: WideString): Integer;
begin
{  SrchQ.SQL.Clear;
  SrchQ.SQL.Add(Format('Select Max("Numero")Ultimo From %s',[DoubleQuoted(Trim(TableName))]));
  SrchQ.Prepare;
  SrchQ.Open;
  Result := SrchQ.FieldByName('Ultimo').AsInteger;
  SrchQ.Close;
  SrchQ.UnPrepare}
end;

procedure TRemoteModule.prSalidas_InventarioBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
{  If (UpdateKind = ukInsert) And (SourceDS = qrDetalles_Salida) Then
    Begin
      If (DeltaDS.FieldByName('Mes').AsInteger > 0) And (DeltaDS.FieldByName('Mes').AsInteger <= 12) Then
        Begin
          spUpdate_Vencimiento_Producto.ParamByName('CODIGO_PRODUCTO').AsString := Trim(DeltaDS.FieldByName('Codigo_Real').AsString);
          spUpdate_Vencimiento_Producto.ParamByName('MES_PRODUCTO').AsInteger := DeltaDS.FieldByName('Mes').AsInteger;
          spUpdate_Vencimiento_Producto.ParamByName('ANIO_PRODUCTO').AsInteger := DeltaDS.FieldByName('Ano').AsInteger;
          spUpdate_Vencimiento_Producto.ParamByName('CANTIDAD_PRODUCTO').AsFloat := -(DeltaDS.FieldByName('Cantidad').AsFloat * DeltaDS.FieldByName('Contenido').AsFloat);
          spUpdate_Vencimiento_Producto.Prepare;
          spUpdate_Vencimiento_Producto.ExecProc;
          spUpdate_Vencimiento_Producto.Close;
          spUpdate_Vencimiento_Producto.UnPrepare
        End
    End
 }
end;

procedure TRemoteModule.prCompra_ProductosBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
 { If (UpdateKind = ukInsert) And (SourceDS = qrDetalles_Compra) Then
    If (DeltaDS.FieldByName('Mes').AsInteger > 0) And (DeltaDS.FieldByName('Mes').AsInteger <= 12) Then
      Begin
        qrVencimientos.ParamByName('Codigo').AsString := Trim(DeltaDS.FieldByName('Codigo_Real').AsString);
        qrVencimientos.Prepare;
        qrVencimientos.Open;
        If qrVencimientos.Locate('Mes;Ano',VarArrayOf([DeltaDS.FieldByName('Mes').AsInteger,
                                                       DeltaDS.FieldByName('Ano').AsInteger]),[]) Then
          Begin
            spUpdate_Vencimiento_Producto.ParamByName('CODIGO_PRODUCTO').AsString := Trim(DeltaDS.FieldByName('Codigo_Real').AsString);
            spUpdate_Vencimiento_Producto.ParamByName('MES_PRODUCTO').AsInteger := DeltaDS.FieldByName('Mes').AsInteger;
            spUpdate_Vencimiento_Producto.ParamByName('ANIO_PRODUCTO').AsInteger := DeltaDS.FieldByName('Ano').AsInteger;
            spUpdate_Vencimiento_Producto.ParamByName('CANTIDAD_PRODUCTO').AsFloat := (DeltaDS.FieldByName('Cantidad').AsFloat * DeltaDS.FieldByName('Contenido').AsFloat);
            spUpdate_Vencimiento_Producto.Prepare;
            spUpdate_Vencimiento_Producto.ExecProc;
            spUpdate_Vencimiento_Producto.Close;
            spUpdate_Vencimiento_Producto.UnPrepare
          End
        Else
          Begin
            spInsert_Vencimiento_Producto.ParamByName('CODIGO_PRODUCTO').AsString := Trim(DeltaDS.FieldByName('Codigo_Real').AsString);
            spInsert_Vencimiento_Producto.ParamByName('MES_PRODUCTO').AsInteger := DeltaDS.FieldByName('Mes').AsInteger;
            spInsert_Vencimiento_Producto.ParamByName('ANIO_PRODUCTO').AsInteger := DeltaDS.FieldByName('Ano').AsInteger;
            spInsert_Vencimiento_Producto.ParamByName('CANTIDAD_PRODUCTO').AsFloat := (DeltaDS.FieldByName('Cantidad').AsFloat * DeltaDS.FieldByName('Contenido').AsFloat);
            spInsert_Vencimiento_Producto.Prepare;
            spInsert_Vencimiento_Producto.ExecProc;
            spInsert_Vencimiento_Producto.Close;
            spInsert_Vencimiento_Producto.UnPrepare
          End;
        qrVencimientos.Close;
        qrVencimientos.UnPrepare
      End}
end;

procedure TRemoteModule.prFacturasBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
{  If (UpdateKind = ukInsert) And (SourceDS = qrDetalles_Factura) Then
    If (DeltaDS.FieldByName('Mes').AsInteger > 0) And (DeltaDS.FieldByName('Mes').AsInteger <= 12) Then
      Begin
        spUpdate_Vencimiento_Producto.ParamByName('CODIGO_PRODUCTO').AsString := Trim(DeltaDS.FieldByName('Codigo_Real').AsString);
        spUpdate_Vencimiento_Producto.ParamByName('MES_PRODUCTO').AsInteger := DeltaDS.FieldByName('Mes').AsInteger;
        spUpdate_Vencimiento_Producto.ParamByName('ANIO_PRODUCTO').AsInteger := DeltaDS.FieldByName('Ano').AsInteger;
        spUpdate_Vencimiento_Producto.ParamByName('CANTIDAD_PRODUCTO').AsFloat := -(DeltaDS.FieldByName('Cantidad').AsFloat * DeltaDS.FieldByName('Contenido').AsFloat);
        spUpdate_Vencimiento_Producto.Prepare;
        spUpdate_Vencimiento_Producto.ExecProc;
        spUpdate_Vencimiento_Producto.Close;
        spUpdate_Vencimiento_Producto.UnPrepare
      End}
end;

procedure TRemoteModule.prFacturasUpdateData(Sender: TObject;
  DataSet: TCustomClientDataSet);
begin
{  If (Dataset.UpdateStatus = usInserted) Then
    Begin
      Tipo := DataSet.FieldByName('Tipo_NCF').AsString;
      If Trim(Tipo) = '00' Then
        Begin
          qrFacturas.Database := ComunesDb;
          qrDetalles_Factura.Database := ComunesDb;
          qrDetalle_Pago_Factura.Database := ComunesDb;

          qrFacturas.Transaction := ComunesTransaction;
          qrDetalles_Factura.Transaction := ComunesTransaction;
          qrDetalle_Pago_Factura.Transaction := ComunesTransaction
        end
      Else
          Begin
            qrFacturas.Database := InfoDataBase;
            qrDetalles_Factura.Database := InfoDataBase;
            qrDetalle_Pago_Factura.Database := InfoDataBase;

            qrFacturas.Transaction := InfoTransaction;
            qrDetalles_Factura.Transaction := InfoTransaction;
            qrDetalle_Pago_Factura.Transaction := InfoTransaction;
          end;
    end;}
end;

procedure TRemoteModule.prNotas_CreditoUpdateData(Sender: TObject;
  DataSet: TCustomClientDataSet);
begin
 {If (Dataset.UpdateStatus = usInserted) Then
    Begin
      Tipo := DataSet.FieldByName('Tipo_NCF').AsString;
      If Trim(Tipo) = '00' Then
        Begin
          qrNotas_Credito.Database := ComunesDb;
          qrDetalle_Notas_Credito.Database := ComunesDb;

          qrNotas_Credito.Transaction := ComunesTransaction;
          qrDetalle_Notas_Credito.Transaction := ComunesTransaction;
        end
      Else
          Begin
            qrNotas_Credito.Database := InfoDataBase;
            qrDetalle_Notas_Credito.Database := InfoDataBase;

            qrNotas_Credito.Transaction := InfoTransaction;
            qrDetalle_Notas_Credito.Transaction := InfoTransaction;
          end;
    end;}
end;

function TRemoteModule.OriginalProductSQL: WideString;
begin
  Result := _OriginaProduct
end;

procedure TRemoteModule.ReloadLink;
begin
{  qrFacturas.Database := InfoDataBase;
  qrDetalles_Factura.Database := InfoDataBase;
  qrDetalle_Pago_Factura.Database := InfoDataBase;

  qrFacturas.Transaction := InfoTransaction;
  qrDetalles_Factura.Transaction := InfoTransaction;
  qrDetalle_Pago_Factura.Transaction := InfoTransaction}
end;

procedure TRemoteModule.LoginToDb(const DB_Name, User_Name, PassWord,
  Terminal: WideString);
Var
  RegistryReference,DatabaseReference : String;
begin
{  InfoTransaction.Active := False;
  InfoDataBase.Close;

//  ComunesTransaction.Active := False;
//  ComunesDb.Close;

  RegInfo.CloseKey;
  RegInfo.OpenKey(_CurrentVersion,False);
  RegistryReference := UnEncrypt(RegInfo.ReadString(_ServicePackID));
  _OriginaProduct := qrListadoProductos.SQL.Text;
  RegInfo.CloseKey;
  RegInfo.OpenKey(_DataRouteKey,False);
  InfoDataBase.Params.Clear;
  InfoDataBase.DatabaseName := Db_Name;
  InfoDataBase.Params.Add('user_name='+ Trim(UnEncrypt(RegInfo.ReadString(_ServerUserName))));
  InfoDataBase.Params.Add('password='+ Trim(UnEncrypt(RegInfo.ReadString(_ServerUserPassword))));
  InfoDataBase.Params.Add('sql_role_name=Admin');

    (*
    ComunesDB.Params.Clear;
      ComunesDB.DatabaseName := Trim(UnEncrypt(RegInfo.ReadString(_ConectionLocalURL)));
      ComunesDB.Params.Add('user_name='+ Trim(UnEncrypt(RegInfo.ReadString(_ServerUserName))));
      ComunesDB.Params.Add('password='+ Trim(UnEncrypt(RegInfo.ReadString(_ServerUserPassword))));
      ComunesDB.Params.Add('sql_role_name=Admin');
  *)

//  ComunesDB.Open;

  Validation.Open;
  DatabaseReference := UnEncrypt(ValidationRegistration.Value);

{  If Trim(RegistryReference) <> Trim(DatabaseReference) Then
    Begin
      RegInfo.CloseKey;
      RegInfo.OpenKey(_CurrentVersion,False);
      RegInfo.WriteString(_ServicePackID,Encrypt('Invalid Command Reference'));
      InfoDataBase.ForceClose;
      Halt(0)
    End;

  DatabaseReference := GetCurrentDir();

  If Trim(RegistryReference) <> Trim(GenCPUID + '/' + GetVolumeID(DatabaseReference[1])) Then
    Begin
      RegInfo.CloseKey;
      RegInfo.OpenKey(_CurrentVersion,False);
      RegInfo.WriteString(_ServicePackID,Encrypt('Forbiden Command Interface'));
      Halt(0)
    End;}
end;

function TRemoteModule.GetChildRDM(const COMObjectFactory: TCOMObjectFactory): IrdmAbsChild;
begin
  Result := COMObjectFactory.CreateCOMObject(nil) as IrdmAbsChild;
  // set up new Child RDM
  Result.IB_Database := Integer(InfoDataBase);
end;

function TRemoteModule.GetGeneralesChildRDM(const COMObjectFactory: TCOMObjectFactory): IrdmAbsChild;
begin
  Result := COMObjectFactory.CreateCOMObject(nil) as IrdmAbsChild;
  // set up new Child RDM
//  Result.IB_Database := Integer(GeneralesDB);
end;

{function TRemoteModule.Get_GeneralesRDM: IrdmAbsChild;
begin
  Result := GetChildRDM(GeneralesObjectFactory);
end;
 }
function TRemoteModule.Get_Inventario_RDM: IrdmAbsChild;
begin
  Result := GetChildRDM(InventarioObjectFactory);
end;

function TRemoteModule.Get_Caja_RDM: IrdmAbsChild;
begin
  Result := GetChildRDM(CajaObjectFactory);
end;

function TRemoteModule.Get_Seguridad_RDM: IrdmAbsChild;
begin
  Result := GetChildRDM(SeguridadObjectFactory);
end;

function TRemoteModule.Get_Mov_Inventario_RDM: IrdmAbsChild;
begin
  Result := GetChildRDM(Mov_InventarioObjectFactory);
end;

function TRemoteModule.Get_CtasXCobrar_RDM: IrdmAbsChild;
begin
  Result := GetChildRDM(CtasXCobrarObjectFactory);
end;

function TRemoteModule.Get_CtasXPagar_RDM: IrdmAbsChild;
begin
  Result := GetChildRDM(CtasXPagarObjectFactory);
end;

function TRemoteModule.Get_Libro_Banco_RDM: IrdmAbsChild;
begin
  Result := GetChildRDM(Libro_BancoObjectFactory);
end;

function TRemoteModule.Get_Generales_RDM: IrdmAbsChild;
begin
  Result := GetGeneralesChildRDM(GeneralesObjectFactory);
end;

initialization
  TComponentFactory.Create(ComServer, TRemoteModule,
    Class_RemoteModule, ciMultiInstance, tmApartment);
end.
