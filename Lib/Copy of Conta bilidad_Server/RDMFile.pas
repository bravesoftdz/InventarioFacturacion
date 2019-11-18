unit RDMFile;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, Acc_Server_TLB, StdVcl, IBDatabase, DB, IBCustomDataSet,
  IBTable, IBQuery, Provider, IBStoredProc, Variants, Controls;

type
  TRemoteModule = class(TRemoteDataModule, IRemoteModule)
    InfoDataBase: TIBDatabase;
    InfoTransaction: TIBTransaction;
    SrchQ: TIBQuery;
    SrchPr: TDataSetProvider;
    qrReporter: TIBQuery;
    prReporter: TDataSetProvider;
    qrCuentas: TIBQuery;
    prCuentas: TDataSetProvider;
    qrCuentasTipo: TIBStringField;
    qrCuentasNumero: TIBStringField;
    qrCuentasPrincipal: TIBStringField;
    qrCuentasControl: TIBStringField;
    qrCuentasSecuencia: TIntegerField;
    qrCuentasDescripcion: TIBStringField;
    qrCuentasOrigen: TIBStringField;
    qrCuentasTotal_Debitos: TIBBCDField;
    qrCuentasTotal_Creditos: TIBBCDField;
    qrCuentasBalance: TIBBCDField;
    qrListado_Cuentas: TIBQuery;
    prListado_Cuentas: TDataSetProvider;
    qrListado_CuentasTipo: TIBStringField;
    qrListado_CuentasNumero: TIBStringField;
    qrListado_CuentasPrincipal: TIBStringField;
    qrListado_CuentasControl: TIBStringField;
    qrListado_CuentasSecuencia: TIntegerField;
    qrListado_CuentasDescripcion: TIBStringField;
    qrListado_CuentasOrigen: TIBStringField;
    qrListado_CuentasTotal_Debitos: TIBBCDField;
    qrListado_CuentasTotal_Creditos: TIBBCDField;
    qrListado_CuentasBalance: TIBBCDField;
    qrTransacciones: TIBQuery;
    prTransacciones: TDataSetProvider;
    qrTransaccionesNumero: TIntegerField;
    qrTransaccionesProceso: TIBStringField;
    qrTransaccionesFecha: TDateField;
    qrTransaccionesHora: TTimeField;
    qrTransaccionesDescripcion: TIBStringField;
    qrTransaccionesReferencia: TIBStringField;
    qrTransaccionesStatus: TIBStringField;
    qrTransaccionesTotal_Debitos: TIBBCDField;
    qrTransaccionesTotal_Creditos: TIBBCDField;
    qrDetalle_Transacciones: TIBQuery;
    qrDetalle_TransaccionesProceso: TIBStringField;
    qrDetalle_TransaccionesSecuencia: TIntegerField;
    qrDetalle_TransaccionesCuenta: TIBStringField;
    qrDetalle_TransaccionesPrincipal: TIBStringField;
    qrDetalle_TransaccionesControl: TIBStringField;
    qrDetalle_TransaccionesFecha: TDateField;
    qrDetalle_TransaccionesHora: TTimeField;
    qrDetalle_TransaccionesNombre_Cuenta: TIBStringField;
    qrDetalle_TransaccionesDebito: TIBBCDField;
    qrDetalle_TransaccionesCredito: TIBBCDField;
    lnkTransacciones: TDataSource;
    qrPrincipales: TIBQuery;
    prPrincipales: TDataSetProvider;
    qrPrincipalesTipo: TIBStringField;
    qrPrincipalesNumero: TIBStringField;
    qrPrincipalesPrincipal: TIBStringField;
    qrPrincipalesControl: TIBStringField;
    qrPrincipalesSecuencia: TIntegerField;
    qrPrincipalesDescripcion: TIBStringField;
    qrPrincipalesOrigen: TIBStringField;
    qrPrincipalesTotal_Debitos: TIBBCDField;
    qrPrincipalesTotal_Creditos: TIBBCDField;
    qrPrincipalesBalance: TIBBCDField;
    qrControles: TIBQuery;
    prControles: TDataSetProvider;
    qrAuxiliares: TIBQuery;
    prAuxiliares: TDataSetProvider;
    qrControlesTipo: TIBStringField;
    qrControlesNumero: TIBStringField;
    qrControlesPrincipal: TIBStringField;
    qrControlesControl: TIBStringField;
    qrControlesSecuencia: TIntegerField;
    qrControlesDescripcion: TIBStringField;
    qrControlesOrigen: TIBStringField;
    qrControlesTotal_Debitos: TIBBCDField;
    qrControlesTotal_Creditos: TIBBCDField;
    qrControlesBalance: TIBBCDField;
    qrAuxiliaresTipo: TIBStringField;
    qrAuxiliaresNumero: TIBStringField;
    qrAuxiliaresPrincipal: TIBStringField;
    qrAuxiliaresControl: TIBStringField;
    qrAuxiliaresSecuencia: TIntegerField;
    qrAuxiliaresDescripcion: TIBStringField;
    qrAuxiliaresOrigen: TIBStringField;
    qrAuxiliaresTotal_Debitos: TIBBCDField;
    qrAuxiliaresTotal_Creditos: TIBBCDField;
    qrAuxiliaresBalance: TIBBCDField;
    procedure RemoteDataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
    function ServerDate: TDateTime; safecall;
    function ServerTime: TDateTime; safecall;
    function LastTableCode(const TableName: WideString): Integer; safecall;
    procedure SetRootKey(const RootKey: WideString); safecall;
  public
    { Public declarations }
  end;

implementation

uses Utilidades, Display;

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
  InfoDataBase.Close;

  RegInfo.CloseKey;
  RegInfo.OpenKey(_DataRouteKey,True);

  InfoDataBase.Params.Clear;
  InfoDataBase.DatabaseName := Trim(UnEncrypt(RegInfo.ReadString(_ConectionURL)));
  InfoDataBase.Params.Add('user_name='+ Trim(UnEncrypt(RegInfo.ReadString(_ServerUserName))));
  InfoDataBase.Params.Add('password='+ Trim(UnEncrypt(RegInfo.ReadString(_ServerUserPassword))));
  InfoDataBase.Params.Add('sql_role_name=Admin');

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
  SrchQ.SQL.Clear;
  SrchQ.SQL.Add(Format('Select Max("Numero")Ultimo From %s',[DoubleQuoted(Trim(TableName))]));
  SrchQ.Prepare;
  SrchQ.Open;
  Result := SrchQ.FieldByName('Ultimo').AsInteger;
  SrchQ.Close;
  SrchQ.UnPrepare
end;

procedure TRemoteModule.SetRootKey(const RootKey: WideString);
begin
end;

initialization
  TComponentFactory.Create(ComServer, TRemoteModule,
    Class_RemoteModule, ciMultiInstance, tmApartment);
end.
