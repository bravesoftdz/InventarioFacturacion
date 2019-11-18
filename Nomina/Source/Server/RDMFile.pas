unit RDMFile;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, PayRoll_Server_TLB, StdVcl, IBDatabase, DB, IBCustomDataSet,
  IBTable, IBQuery, Provider, IBStoredProc, Variants, Controls;

type
  TRemoteModule = class(TRemoteDataModule, IRemoteModule)
    InfoDataBase: TIBDatabase;
    InfoTransaction: TIBTransaction;
    SrchQ: TIBQuery;
    SrchPr: TDataSetProvider;
    qrReporter: TIBQuery;
    prReporter: TDataSetProvider;
    qrParametros: TIBQuery;
    prParametros: TDataSetProvider;
    qrParametrosTerminal: TIBStringField;
    qrParametrosCuenta_Capital: TIBStringField;
    qrParametrosCuenta_Utilidades: TIBStringField;
    qrEmpleados: TIBQuery;
    qrEmpleadosCedula_Rnc_Pasaporte: TIBStringField;
    qrEmpleadosTipo_Documento: TIBStringField;
    qrEmpleadosSecuencia: TIntegerField;
    qrEmpleadosNombre: TIBStringField;
    qrEmpleadosApellido: TIBStringField;
    qrEmpleadosNacionalidad: TIBStringField;
    qrEmpleadosSexo: TIBStringField;
    qrEmpleadosTipo_Telefono_1: TIBStringField;
    qrEmpleadosTipo_Telefono_2: TIBStringField;
    qrEmpleadosTipo_Telefono_3: TIBStringField;
    qrEmpleadosTipo_Telefono_4: TIBStringField;
    qrEmpleadosNumero_Telefono_1: TIBStringField;
    qrEmpleadosNumero_Telefono_2: TIBStringField;
    qrEmpleadosNumero_Telefono_3: TIBStringField;
    qrEmpleadosNumero_Telefono_4: TIBStringField;
    qrEmpleadosDireccion: TIBStringField;
    qrEmpleadosPais: TIBStringField;
    qrEmpleadosCiudad: TIBStringField;
    qrEmpleadosSector: TIBStringField;
    qrEmpleadosNombreCompleto: TIBStringField;
    qrEmpleadosNumero_Tarjeta: TIBStringField;
    qrEmpleadosNumero_Cuenta: TIBStringField;
    qrEmpleadosRegistrado_En_Fecha: TDateTimeField;
    qrEmpleadosmail: TIBStringField;
    qrEmpleadosFoto: TBlobField;
    qrEmpleadosFecha_Nacimiento: TDateField;
    qrEmpleadosEstado_Civil: TIBStringField;
    qrEmpleadosCodigo_Banco: TIBStringField;
    prEmpleados: TDataSetProvider;
    qrInformacion_Laboral: TIBQuery;
    qrInformacion_LaboralCedula_Rnc_Pasaporte: TIBStringField;
    qrInformacion_LaboralCompania: TIntegerField;
    qrInformacion_LaboralDepartamento: TIntegerField;
    qrInformacion_LaboralCargo: TIBStringField;
    qrInformacion_LaboralSalario: TIBBCDField;
    qrInformacion_LaboralGrupo_Deducciones: TIntegerField;
    qrInformacion_LaboralTipo_Empleado: TIBStringField;
    qrInformacion_LaboralStatus: TIBStringField;
    qrInformacion_LaboralRegistrado_En_Fecha: TDateTimeField;
    qrInformacion_LaboralFecha_Inicio: TDateField;
    qrInformacion_LaboralFecha_Salida: TDateField;
    qrInformacion_LaboralTipo_Salario: TIBStringField;
    qrInformacion_LaboralPeriodo_Nomina: TIBStringField;
    qrInformacion_LaboralForma_Cobro: TIBStringField;
    qrInformacion_LaboralUnidad_Organizativa: TIBStringField;
    qrInformacion_LaboralSimbolo: TIBStringField;
    lnkEmpleados: TDataSource;
    qrDetalle_Empleado: TIBQuery;
    qrDetalle_EmpleadoCedula_Rnc_Pasaporte: TIBStringField;
    qrDetalle_EmpleadoTipo: TIBStringField;
    qrDetalle_EmpleadoNumero: TIntegerField;
    qrDetalle_EmpleadoDescripcion: TIBStringField;
    qrDetalle_EmpleadoTipo_Aplicacion: TIBStringField;
    qrDetalle_EmpleadoMonto: TIBBCDField;
    qrDetalle_EmpleadoDeducir_De: TIBStringField;
    qrDetalle_EmpleadoAplicable_A: TIBStringField;
    qrDetalle_EmpleadoRango_Inicial: TIBBCDField;
    qrDetalle_EmpleadoRango_Final: TIBBCDField;
    qrDetalle_EmpleadoRegistrado_En_Fecha: TDateTimeField;
    qrDetalle_EmpleadoUsuario: TIBStringField;
    qrCompania: TIBQuery;
    qrCompaniaNumero_Compania: TIntegerField;
    qrCompaniaNombre_Compania: TIBStringField;
    qrCompaniaRegistrado_En_Fecha: TDateTimeField;
    qrCompaniaRNC: TIBStringField;
    qrCompaniaCuenta_Nomina: TIBStringField;
    prCompania: TDataSetProvider;
    qrDepartamentos: TIBQuery;
    qrDepartamentosNumero: TIntegerField;
    qrDepartamentosDescripcion: TIBStringField;
    qrDepartamentosUsuario: TIBStringField;
    qrDepartamentosCompania: TIntegerField;
    qrDepartamentosRegistrado_En_Fecha: TDateTimeField;
    qrDepartamentosUnidad_Organizativa: TIBStringField;
    qrDepartamentosSimbolo: TIBStringField;
    qrDepartamentosCuenta_Nomina: TIBStringField;
    qrDepartamentosBanco: TIBStringField;
    prDepartamentos: TDataSetProvider;
    qrJornal_Diario: TIBQuery;
    qrJornal_DiarioCompania: TIntegerField;
    qrJornal_DiarioDepartamento: TIntegerField;
    qrJornal_DiarioFecha: TDateField;
    qrJornal_DiarioRegistrado_En_Fecha: TDateTimeField;
    qrJornal_DiarioEmpleado: TIBStringField;
    qrJornal_DiarioUsuario: TIBStringField;
    qrJornal_DiarioHoras: TSmallintField;
    qrJornal_DiarioHoras_Extraordinarias: TSmallintField;
    qrJornal_DiarioHoras_Extra: TSmallintField;
    prJornal_Diario: TDataSetProvider;
    qrDeducciones: TIBQuery;
    qrDeduccionesNumero: TIntegerField;
    qrDeduccionesDescripcion: TIBStringField;
    qrDeduccionesTipo: TIBStringField;
    qrDeduccionesMonto: TIBBCDField;
    qrDeduccionesDeducir_De: TIBStringField;
    qrDeduccionesAplicable_A: TIBStringField;
    qrDeduccionesRango_Inicial: TIBBCDField;
    qrDeduccionesRango_Final: TIBBCDField;
    qrDeduccionesRegistrado_En_Fecha: TDateTimeField;
    qrDeduccionesEntrada_En_Vigencia: TDateField;
    qrDeduccionesDescontinuado: TDateField;
    qrDeduccionesUsuario: TIBStringField;
    prDeducciones: TDataSetProvider;
    qrPagos_Incentivos: TIBQuery;
    qrPagos_IncentivosNumero: TIntegerField;
    qrPagos_IncentivosDescripcion: TIBStringField;
    qrPagos_IncentivosTipo: TIBStringField;
    qrPagos_IncentivosMonto: TIBBCDField;
    qrPagos_IncentivosAplicar_A: TIBStringField;
    qrPagos_IncentivosRango_Inicial: TIBBCDField;
    qrPagos_IncentivosRango_Final: TIBBCDField;
    qrPagos_IncentivosRegistrado_En_Fecha: TDateTimeField;
    qrPagos_IncentivosEntrada_En_Vigencia: TDateField;
    qrPagos_IncentivosDescontinuado: TDateField;
    qrPagos_IncentivosUsuario: TIBStringField;
    prPagos_Incentivos: TDataSetProvider;
    qrGrupo_Nomina: TIBQuery;
    qrGrupo_NominaNumero: TIntegerField;
    qrGrupo_NominaDescripcion: TIBStringField;
    qrGrupo_NominaRegistrado_En_Fecha: TDateTimeField;
    qrGrupo_NominaProceso: TIBStringField;
    qrGrupo_NominaUsuario: TIBStringField;
    qrGrupo_NominaStatus: TIBStringField;
    prGrupo_Nomina: TDataSetProvider;
    qrDetalle_Grupo_Nomina: TIBQuery;
    qrDetalle_Grupo_NominaProceso: TIBStringField;
    qrDetalle_Grupo_NominaTipo: TIBStringField;
    qrDetalle_Grupo_NominaNumero_Deducion_Pago: TIntegerField;
    qrDetalle_Grupo_NominaDescripcion: TIBStringField;
    lnkGrupo_Nomina: TDataSource;
    qrResumen_Detalle_Deducciones: TIBQuery;
    qrResumen_Detalle_DeduccionesDeduccion: TIntegerField;
    qrResumen_Detalle_DeduccionesTOTAL_DEDUCCIONES: TIBBCDField;
    prResumen_Detalle_Deducciones: TDataSetProvider;
    qrSalarioEmpleado_Rango: TIBQuery;
    qrSalarioEmpleado_RangoTotal_Salario_Rango: TIBBCDField;
    qrSalarioEmpleado_RangoCantidad_Salarios: TIntegerField;
    prSalarioEmpleado_Rango: TDataSetProvider;
    qrNomina: TIBQuery;
    qrNominaNumero_Nomina: TIntegerField;
    qrNominaCompania: TIntegerField;
    qrNominaDepartamento: TIntegerField;
    qrNominaPeriodo: TIBStringField;
    qrNominaFecha_Nomina: TDateField;
    qrNominaFecha_Inicio: TDateField;
    qrNominaFecha_Final: TDateField;
    qrNominaFecha_Pago: TDateField;
    qrNominaTipo_Nomina: TIBStringField;
    qrNominaProceso: TIBStringField;
    qrNominaTotal_Bruto: TIBBCDField;
    qrNominaTotal_Extra: TIBBCDField;
    qrNominaTotal_Extraordinarias: TIBBCDField;
    qrNominaTotal_Deducciones: TIBBCDField;
    qrNominaTotal_Otros_Pagos: TIBBCDField;
    qrNominaTotal_Antes_Deducciones: TIBBCDField;
    qrNominaTotal_Neto: TIBBCDField;
    qrNominaTotal_Pago_Banco: TIBBCDField;
    qrNominaTotal_Pago_Cheque: TIBBCDField;
    qrNominaTotal_Pago_Efectivo: TIBBCDField;
    qrNominaUnidad_Organizativa: TIBStringField;
    qrNominaSimbolo: TIBStringField;
    qrNominaStatus: TIBStringField;
    prNomina: TDataSetProvider;
    qrDetalle_Nomina: TIBQuery;
    qrDetalle_NominaProceso: TIBStringField;
    qrDetalle_NominaEmpleado: TIBStringField;
    qrDetalle_NominaFecha_Inicio: TDateField;
    qrDetalle_NominaFecha_Final: TDateField;
    qrDetalle_NominaTotal_Horas_Trabajadas: TIBBCDField;
    qrDetalle_NominaTotal_Horas_Extra: TIBBCDField;
    qrDetalle_NominaTotal_Horas_Extraordinarias: TIBBCDField;
    qrDetalle_NominaTotal_Deducciones: TIBBCDField;
    qrDetalle_NominaBase_Pago_Hora: TIBBCDField;
    qrDetalle_NominaPago_Hora: TIBBCDField;
    qrDetalle_NominaPago_Horas_Extra: TIBBCDField;
    qrDetalle_NominaPago_Horas_Extraordinaria: TIBBCDField;
    qrDetalle_NominaSalario_Bruto: TIBBCDField;
    qrDetalle_NominaSalario_Extra: TIBBCDField;
    qrDetalle_NominaFecha: TDateTimeField;
    qrDetalle_NominaSalario_Extraordinarias: TIBBCDField;
    qrDetalle_NominaCargo: TIBStringField;
    qrDetalle_NominaOtras_Deducciones: TIBBCDField;
    qrDetalle_NominaDeducciones: TIBBCDField;
    qrDetalle_NominaTotal_Neto: TIBBCDField;
    qrDetalle_NominaOtros_Pagos: TIBBCDField;
    qrDetalle_NominaStatus: TIBStringField;
    qrDetalle_NominaNumero_Cuenta: TIBStringField;
    qrDetalle_NominaCheque_Numero: TIntegerField;
    qrDetalle_NominaProceso_Cheque: TIBStringField;
    qrDetalle_NominaFecha_Cheque: TDateField;
    qrDetalle_NominaCheque_Anterior: TIntegerField;
    qrDetalle_NominaProceso_Cheque_Anterior: TIBStringField;
    qrDetalle_NominaFecha_Cheque_Anterior: TDateField;
    lnkNomina: TDataSource;
    qrDetalle_Deducciones: TIBQuery;
    qrDetalle_DeduccionesProceso: TIBStringField;
    qrDetalle_DeduccionesEmpleado: TIBStringField;
    qrDetalle_DeduccionesDeduccion: TIntegerField;
    qrDetalle_DeduccionesSalario: TIBBCDField;
    qrDetalle_DeduccionesMonto_Deducir: TIBBCDField;
    qrDetalle_DeduccionesTipo_Deduccion: TIBStringField;
    qrDetalle_DeduccionesTotal_Deduccion: TIBBCDField;
    lnkDetalle_Nomina: TDataSource;
    qrDetalle_Pagos: TIBQuery;
    qrDetalle_PagosProceso: TIBStringField;
    qrDetalle_PagosEmpleado: TIBStringField;
    qrDetalle_PagosPago: TIntegerField;
    qrDetalle_PagosSalario: TIBBCDField;
    qrDetalle_PagosMonto_Pagar: TIBBCDField;
    qrDetalle_PagosTipo_Pago: TIBStringField;
    qrDetalle_PagosTotal_Pago: TIBBCDField;
    qrHistorial_Nomina: TIBQuery;
    qrHistorial_NominaCompania: TIntegerField;
    qrHistorial_NominaDepartamento: TIntegerField;
    qrHistorial_NominaFecha: TDateField;
    qrHistorial_NominaFecha_Inicio: TDateField;
    qrHistorial_NominaFecha_Final: TDateField;
    qrHistorial_NominaStatus: TIBStringField;
    qrHistorial_NominaPeriodo: TIBStringField;
    qrHistorial_NominaProceso_Nomina: TIBStringField;
    prHistorial_Nomina: TDataSetProvider;
    qrUltima_Nomina_Periodo: TIBQuery;
    qrUltima_Nomina_PeriodoUltima_Fecha_Inicio: TDateField;
    qrUltima_Nomina_PeriodoUltima_Fecha_Final: TDateField;
    prUltima_Nomina_Periodo: TDataSetProvider;
    qrJornal_Empleado: TIBQuery;
    qrJornal_EmpleadoCompania: TIntegerField;
    qrJornal_EmpleadoDepartamento: TIntegerField;
    qrJornal_EmpleadoFecha: TDateField;
    qrJornal_EmpleadoRegistrado_En_Fecha: TDateTimeField;
    qrJornal_EmpleadoEmpleado: TIBStringField;
    qrJornal_EmpleadoUsuario: TIBStringField;
    qrJornal_EmpleadoHoras: TSmallintField;
    qrJornal_EmpleadoHoras_Extraordinarias: TSmallintField;
    qrJornal_EmpleadoHoras_Extra: TSmallintField;
    prJornal_Empleado: TDataSetProvider;
    qrListado_Empleados: TIBQuery;
    qrListado_EmpleadosCedula_Rnc_Pasaporte: TIBStringField;
    qrListado_EmpleadosTipo_Documento: TIBStringField;
    qrListado_EmpleadosSecuencia: TIntegerField;
    qrListado_EmpleadosNombre: TIBStringField;
    qrListado_EmpleadosApellido: TIBStringField;
    qrListado_EmpleadosNacionalidad: TIBStringField;
    qrListado_EmpleadosSexo: TIBStringField;
    qrListado_EmpleadosTipo_Telefono_1: TIBStringField;
    qrListado_EmpleadosTipo_Telefono_2: TIBStringField;
    qrListado_EmpleadosTipo_Telefono_3: TIBStringField;
    qrListado_EmpleadosTipo_Telefono_4: TIBStringField;
    qrListado_EmpleadosNumero_Telefono_1: TIBStringField;
    qrListado_EmpleadosNumero_Telefono_2: TIBStringField;
    qrListado_EmpleadosNumero_Telefono_3: TIBStringField;
    qrListado_EmpleadosNumero_Telefono_4: TIBStringField;
    qrListado_EmpleadosDireccion: TIBStringField;
    qrListado_EmpleadosPais: TIBStringField;
    qrListado_EmpleadosCiudad: TIBStringField;
    qrListado_EmpleadosSector: TIBStringField;
    qrListado_EmpleadosNombreCompleto: TIBStringField;
    qrListado_EmpleadosNumero_Tarjeta: TIBStringField;
    qrListado_EmpleadosNumero_Cuenta: TIBStringField;
    qrListado_EmpleadosRegistrado_En_Fecha: TDateTimeField;
    qrListado_Empleadosmail: TIBStringField;
    qrListado_EmpleadosFoto: TBlobField;
    qrListado_EmpleadosFecha_Nacimiento: TDateField;
    qrListado_EmpleadosEstado_Civil: TIBStringField;
    qrListado_EmpleadosCodigo_Banco: TIBStringField;
    prListado_Empleados: TDataSetProvider;
    qrListado_Laboral: TIBQuery;
    qrListado_LaboralCedula_Rnc_Pasaporte: TIBStringField;
    qrListado_LaboralCompania: TIntegerField;
    qrListado_LaboralDepartamento: TIntegerField;
    qrListado_LaboralCargo: TIBStringField;
    qrListado_LaboralSalario: TIBBCDField;
    qrListado_LaboralGrupo_Deducciones: TIntegerField;
    qrListado_LaboralPeriodo_Nomina: TIBStringField;
    qrListado_LaboralTipo_Empleado: TIBStringField;
    qrListado_LaboralStatus: TIBStringField;
    qrListado_LaboralFecha_Inicio: TDateField;
    qrListado_LaboralFecha_Salida: TDateField;
    qrListado_LaboralTipo_Salario: TIBStringField;
    qrListado_LaboralNombreCompleto: TIBStringField;
    qrListado_LaboralUnidad_Organizativa: TIBStringField;
    qrListado_LaboralSimbolo: TIBStringField;
    prListado_Laboral: TDataSetProvider;
    qrListado_Grupo_Nomina: TIBQuery;
    qrListado_Grupo_NominaNumero: TIntegerField;
    qrListado_Grupo_NominaDescripcion: TIBStringField;
    qrListado_Grupo_NominaRegistrado_En_Fecha: TDateTimeField;
    qrListado_Grupo_NominaProceso: TIBStringField;
    qrListado_Grupo_NominaUsuario: TIBStringField;
    qrListado_Grupo_NominaStatus: TIBStringField;
    prListado_Grupo_Nomina: TDataSetProvider;
    qrNominaDetalle_Dias: TBlobField;
    qrNominaArchivo_Detalle_Dias: TIBStringField;
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

uses Utilidades, Display, RegKeys;

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
