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
    prCuentas: TDataSetProvider;
    qrListado_Cuentas: TIBQuery;
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
    prListado_Cuentas: TDataSetProvider;
    qrTransacciones: TIBQuery;
    qrTransaccionesNumero: TIntegerField;
    qrTransaccionesProceso: TIBStringField;
    qrTransaccionesFecha: TDateField;
    qrTransaccionesHora: TTimeField;
    qrTransaccionesDescripcion: TIBStringField;
    qrTransaccionesReferencia: TIBStringField;
    qrTransaccionesStatus: TIBStringField;
    qrTransaccionesTotal_Debitos: TIBBCDField;
    qrTransaccionesTotal_Creditos: TIBBCDField;
    prTransacciones: TDataSetProvider;
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
    prPrincipales: TDataSetProvider;
    qrControles: TIBQuery;
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
    prControles: TDataSetProvider;
    qrAuxiliares: TIBQuery;
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
    prAuxiliares: TDataSetProvider;
    qrDetalle_TransaccionesRegistro: TIntegerField;
    qrDetalle_TransaccionesOrigen: TIBStringField;
    qrTransaccionesComentario: TIBStringField;
    qrTransaccionesRegistrado: TDateField;
    qrTransaccionesUsuario: TIBStringField;
    qrEstado_Situacion: TIBQuery;
    prEstado_Situacion: TDataSetProvider;
    qrEstado_Ingresos_Gastos: TIBQuery;
    prEstado_Ingresos_Gastos: TDataSetProvider;
    qrBalanza_Comprobacion: TIBQuery;
    prBalanza_Comprobacion: TDataSetProvider;
    qrMayorProceso: TIBStringField;
    qrMayorSecuencia: TIntegerField;
    qrMayorCuenta: TIBStringField;
    qrMayorPrincipal: TIBStringField;
    qrMayorControl: TIBStringField;
    qrMayorFecha: TDateField;
    qrMayorHora: TTimeField;
    qrMayorNombre_Cuenta: TIBStringField;
    qrMayorDebito: TIBBCDField;
    qrMayorCredito: TIBBCDField;
    qrMayorRegistro: TIntegerField;
    qrMayorOrigen: TIBStringField;
    qrListado_Transacciones: TIBQuery;
    prListado_Transacciones: TDataSetProvider;
    qrListado_TransaccionesNumero: TIntegerField;
    qrListado_TransaccionesProceso: TIBStringField;
    qrListado_TransaccionesFecha: TDateField;
    qrListado_TransaccionesHora: TTimeField;
    qrListado_TransaccionesDescripcion: TIBStringField;
    qrListado_TransaccionesReferencia: TIBStringField;
    qrListado_TransaccionesStatus: TIBStringField;
    qrListado_TransaccionesTotal_Debitos: TIBBCDField;
    qrListado_TransaccionesTotal_Creditos: TIBBCDField;
    qrListado_TransaccionesComentario: TIBStringField;
    qrListado_TransaccionesRegistrado: TDateField;
    qrListado_TransaccionesUsuario: TIBStringField;
    qrEstado_SituacionControl: TIBStringField;
    qrEstado_SituacionOrigen: TIBStringField;
    qrEstado_SituacionPrincipal: TIBStringField;
    qrEstado_SituacionTotal_Debitos: TIBBCDField;
    qrEstado_SituacionTotal_Creditos: TIBBCDField;
    qrIngresos: TIBQuery;
    prIngresos: TDataSetProvider;
    qrIngresosTotal_Debitos: TIBBCDField;
    qrIngresosTotal_Creditos: TIBBCDField;
    qrGastos: TIBQuery;
    prGastos: TDataSetProvider;
    qrGastosTotal_Debitos: TIBBCDField;
    qrGastosTotal_Creditos: TIBBCDField;
    qrParametros: TIBQuery;
    prParametros: TDataSetProvider;
    qrParametrosTerminal: TIBStringField;
    qrParametrosCuenta_Capital: TIBStringField;
    qrParametrosCuenta_Utilidades: TIBStringField;
    qrEstado_Ingresos_GastosControl: TIBStringField;
    qrEstado_Ingresos_GastosOrigen: TIBStringField;
    qrEstado_Ingresos_GastosPrincipal: TIBStringField;
    qrEstado_Ingresos_GastosTotal_Debitos: TIBBCDField;
    qrEstado_Ingresos_GastosTotal_Creditos: TIBBCDField;
    qrBalanza_ComprobacionCuenta: TIBStringField;
    qrBalanza_ComprobacionNombre_Cuenta: TIBStringField;
    qrBalanza_ComprobacionOrigen: TIBStringField;
    qrBalanza_ComprobacionPrincipal: TIBStringField;
    qrBalanza_ComprobacionControl: TIBStringField;
    qrBalanza_ComprobacionTotal_Debitos: TIBBCDField;
    qrBalanza_ComprobacionTotal_Creditos: TIBBCDField;
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
