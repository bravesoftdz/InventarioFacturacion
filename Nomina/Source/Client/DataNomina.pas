unit DataNomina;

interface

uses
  SysUtils, Classes, DB, DBClient, DateUtils, ESBDates, Forms, Windows, Variants,
  Controls, MConnect, SConnect;

type
  TModuloNomina = class(TDataModule)
    tEmpleados: TClientDataSet;
    tEmpleadosCedula_Rnc_Pasaporte: TStringField;
    tEmpleadosNombre: TStringField;
    tEmpleadosApellido: TStringField;
    tEmpleadosTipo_Telefono_1: TStringField;
    tEmpleadosTipo_Telefono_2: TStringField;
    tEmpleadosTipo_Telefono_3: TStringField;
    tEmpleadosTipo_Telefono_4: TStringField;
    tEmpleadosNumero_Telefono_1: TStringField;
    tEmpleadosNumero_Telefono_2: TStringField;
    tEmpleadosNumero_Telefono_3: TStringField;
    tEmpleadosNumero_Telefono_4: TStringField;
    tEmpleadosDireccion: TStringField;
    tEmpleadosPais: TStringField;
    tEmpleadosCiudad: TStringField;
    tEmpleadosSector: TStringField;
    tEmpleadosNombreCompleto: TStringField;
    tEmpleadosNumero_Tarjeta: TStringField;
    tEmpleadosNumero_Cuenta: TStringField;
    tEmpleadosmail: TStringField;
    tEmpleadosSecuencia: TIntegerField;
    tEmpleadosSexo: TStringField;
    tEmpleadosFecha_Nacimiento: TDateField;
    tEmpleadosTipo_Documento: TStringField;
    tEmpleadosqrInformacion_Laboral: TDataSetField;
    tEmpleadosNacionalidad: TStringField;
    tEmpleadosRegistrado_En_Fecha: TDateTimeField;
    tEmpleadosEstado_Civil: TStringField;
    tEmpleadosFoto: TBlobField;
    tEmpleadosCodigo_Banco: TStringField;
    dEmpleados: TDataSource;
    tInformacion_Laboral: TClientDataSet;
    tInformacion_LaboralNombre_Compania: TStringField;
    tInformacion_LaboralNombre_Departamento: TStringField;
    tInformacion_LaboralCargo: TStringField;
    tInformacion_LaboralSalario: TBCDField;
    tInformacion_LaboralPeriodo_Nomina: TStringField;
    tInformacion_LaboralTipo_Empleado: TStringField;
    tInformacion_LaboralTipo_Salario: TStringField;
    tInformacion_LaboralCedula_Rnc_Pasaporte: TStringField;
    tInformacion_LaboralCompania: TIntegerField;
    tInformacion_LaboralDepartamento: TIntegerField;
    tInformacion_LaboralGrupo_Deducciones: TIntegerField;
    tInformacion_LaboralStatus: TStringField;
    tInformacion_LaboralRegistrado_En_Fecha: TDateTimeField;
    tInformacion_LaboralFecha_Inicio: TDateField;
    tInformacion_LaboralFecha_Salida: TDateField;
    tInformacion_LaboralForma_Cobro: TStringField;
    tInformacion_LaboralUnidad_Organizativa: TStringField;
    tInformacion_LaboralSimbolo: TStringField;
    dInformacion_Laboral: TDataSource;
    tCompania: TClientDataSet;
    tCompaniaNombre_Compania: TStringField;
    tCompaniaNumero_Compania: TIntegerField;
    tCompaniaRegistrado_En_Fecha: TDateTimeField;
    tCompaniaRNC: TStringField;
    dCompania: TDataSource;
    tDepartamentos: TClientDataSet;
    tDepartamentosDescripcion: TStringField;
    tDepartamentosNumero: TIntegerField;
    tDepartamentosUsuario: TStringField;
    tDepartamentosCompania: TIntegerField;
    tDepartamentosNombre_Compania: TStringField;
    tDepartamentosRegistrado_En_Fecha: TDateTimeField;
    tDepartamentosUnidad_Organizativa: TStringField;
    tDepartamentosSimbolo: TStringField;
    tDepartamentosCuenta_Nomina: TStringField;
    tDepartamentosBanco: TStringField;
    tDepartamentosSimbolo_Combinado: TStringField;
    dDepartamentos: TDataSource;
    tJornal_Diario: TClientDataSet;
    tJornal_DiarioCompania: TIntegerField;
    tJornal_DiarioDepartamento: TIntegerField;
    tJornal_DiarioFecha: TDateField;
    tJornal_DiarioRegistrado_En_Fecha: TDateTimeField;
    tJornal_DiarioEmpleado: TStringField;
    tJornal_DiarioUsuario: TStringField;
    tJornal_DiarioHoras: TSmallintField;
    tJornal_DiarioHoras_Extraordinarias: TSmallintField;
    tJornal_DiarioHoras_Extra: TSmallintField;
    tJornal_DiarioNombre_Empleado: TStringField;
    dJornal_Diario: TDataSource;
    tDeducciones: TClientDataSet;
    tDeduccionesDescripcion: TStringField;
    tDeduccionesTipo: TStringField;
    tDeduccionesMonto: TBCDField;
    tDeduccionesNumero: TIntegerField;
    tDeduccionesDeducir_De: TStringField;
    tDeduccionesAplicable_A: TStringField;
    tDeduccionesRango_Inicial: TBCDField;
    tDeduccionesRango_Final: TBCDField;
    tDeduccionesRegistrado_En_Fecha: TDateTimeField;
    tDeduccionesEntrada_En_Vigencia: TDateField;
    tDeduccionesDescontinuado: TDateField;
    tDeduccionesUsuario: TStringField;
    tDeduccionesSelected: TBooleanField;
    dDeducciones: TDataSource;
    tPagos_Incentivos: TClientDataSet;
    tPagos_IncentivosNumero: TIntegerField;
    tPagos_IncentivosDescripcion: TStringField;
    tPagos_IncentivosTipo: TStringField;
    tPagos_IncentivosMonto: TBCDField;
    tPagos_IncentivosAplicar_A: TStringField;
    tPagos_IncentivosRango_Inicial: TBCDField;
    tPagos_IncentivosRango_Final: TBCDField;
    tPagos_IncentivosRegistrado_En_Fecha: TDateTimeField;
    tPagos_IncentivosEntrada_En_Vigencia: TDateField;
    tPagos_IncentivosDescontinuado: TDateField;
    tPagos_IncentivosUsuario: TStringField;
    tPagos_IncentivosSelected: TBooleanField;
    dPagos_Incentivos: TDataSource;
    tGrupo_Nomina: TClientDataSet;
    tGrupo_NominaNumero: TIntegerField;
    tGrupo_NominaDescripcion: TStringField;
    tGrupo_NominaRegistrado_En_Fecha: TDateTimeField;
    tGrupo_NominaProceso: TStringField;
    tGrupo_NominaUsuario: TStringField;
    tGrupo_NominaStatus: TStringField;
    tGrupo_NominaqrDetalle_Grupo_Nomina: TDataSetField;
    dGrupo_Nomina: TDataSource;
    tDetalle_Grupo_Nomina: TClientDataSet;
    tDetalle_Grupo_NominaProceso: TStringField;
    tDetalle_Grupo_NominaTipo: TStringField;
    tDetalle_Grupo_NominaNumero_Deducion_Pago: TIntegerField;
    tDetalle_Grupo_NominaDescripcion: TStringField;
    dDetalle_Grupo_Nomina: TDataSource;
    dDias_Laborados: TDataSource;
    tJornal_Empleado: TClientDataSet;
    tJornal_EmpleadoCompania: TIntegerField;
    tJornal_EmpleadoDepartamento: TIntegerField;
    tJornal_EmpleadoFecha: TDateField;
    tJornal_EmpleadoRegistrado_En_Fecha: TDateTimeField;
    tJornal_EmpleadoEmpleado: TStringField;
    tJornal_EmpleadoUsuario: TStringField;
    tJornal_EmpleadoHoras: TSmallintField;
    tJornal_EmpleadoHoras_Extraordinarias: TSmallintField;
    tJornal_EmpleadoHoras_Extra: TSmallintField;
    dJornal_Empleado: TDataSource;
    tDias_Laborados: TClientDataSet;
    dHistorial_Nomina: TDataSource;
    tHistorial_Nomina: TClientDataSet;
    tHistorial_NominaCompania: TIntegerField;
    tHistorial_NominaDepartamento: TIntegerField;
    tHistorial_NominaFecha: TDateField;
    tHistorial_NominaFecha_Inicio: TDateField;
    tHistorial_NominaFecha_Final: TDateField;
    tHistorial_NominaStatus: TStringField;
    tHistorial_NominaPeriodo: TStringField;
    tHistorial_NominaProceso_Nomina: TStringField;
    tNomina: TClientDataSet;
    tNominaNumero_Nomina: TIntegerField;
    tNominaCompania: TIntegerField;
    tNominaDepartamento: TIntegerField;
    tNominaPeriodo: TStringField;
    tNominaFecha_Nomina: TDateField;
    tNominaFecha_Inicio: TDateField;
    tNominaFecha_Final: TDateField;
    tNominaFecha_Pago: TDateField;
    tNominaTipo_Nomina: TStringField;
    tNominaProceso: TStringField;
    tNominaqrDetalle_Nomina: TDataSetField;
    tNominaNombre_Compania: TStringField;
    tNominaNombre_Departamento: TStringField;
    tNominaTotal_Bruto: TBCDField;
    tNominaTotal_Extra: TBCDField;
    tNominaTotal_Extraordinarias: TBCDField;
    tNominaTotal_Deducciones: TBCDField;
    tNominaTotal_Otros_Pagos: TBCDField;
    tNominaTotal_Antes_Deducciones: TBCDField;
    tNominaTotal_Neto: TBCDField;
    tNominaTotal_Pago_Banco: TBCDField;
    tNominaTotal_Pago_Cheque: TBCDField;
    tNominaTotal_Pago_Efectivo: TBCDField;
    tNominaUnidad_Organizativa: TStringField;
    tNominaSimbolo: TStringField;
    tNominaReferencia: TStringField;
    dNomina: TDataSource;
    tDetalle_Nomina: TClientDataSet;
    tDetalle_NominaProceso: TStringField;
    tDetalle_NominaEmpleado: TStringField;
    tDetalle_NominaFecha_Inicio: TDateField;
    tDetalle_NominaFecha_Final: TDateField;
    tDetalle_NominaTotal_Horas_Trabajadas: TBCDField;
    tDetalle_NominaTotal_Horas_Extra: TBCDField;
    tDetalle_NominaTotal_Horas_Extraordinarias: TBCDField;
    tDetalle_NominaTotal_Deducciones: TBCDField;
    tDetalle_NominaBase_Pago_Hora: TBCDField;
    tDetalle_NominaPago_Hora: TBCDField;
    tDetalle_NominaPago_Horas_Extra: TBCDField;
    tDetalle_NominaPago_Horas_Extraordinaria: TBCDField;
    tDetalle_NominaSalario_Bruto: TBCDField;
    tDetalle_NominaSalario_Extra: TBCDField;
    tDetalle_NominaFecha: TDateTimeField;
    tDetalle_NominaSalario_Extraordinarias: TBCDField;
    tDetalle_NominaqrDetalle_Deducciones: TDataSetField;
    tDetalle_NominaTotal_Salario: TCurrencyField;
    tDetalle_NominaNombre_Empleado: TStringField;
    tDetalle_NominaCargo: TStringField;
    tDetalle_NominaOtras_Deducciones: TBCDField;
    tDetalle_NominaDeducciones: TBCDField;
    tDetalle_NominaTotal_Neto: TBCDField;
    tDetalle_NominaOtros_Pagos: TBCDField;
    tDetalle_NominaqrDetalle_Pagos: TDataSetField;
    tDetalle_NominaTotal_Horas: TIntegerField;
    tDetalle_NominaCuenta_Banco: TStringField;
    tDetalle_NominaCodigo_Banco: TStringField;
    dDetalle_Nomina: TDataSource;
    tDetalle_Deducciones: TClientDataSet;
    tDetalle_DeduccionesProceso: TStringField;
    tDetalle_DeduccionesEmpleado: TStringField;
    tDetalle_DeduccionesDeduccion: TIntegerField;
    tDetalle_DeduccionesSalario: TBCDField;
    tDetalle_DeduccionesMonto_Deducir: TBCDField;
    tDetalle_DeduccionesTipo_Deduccion: TStringField;
    tDetalle_DeduccionesTotal_Deduccion: TBCDField;
    tDetalle_DeduccionesNombre_Deduccion: TStringField;
    dDetalle_Deducciones: TDataSource;
    tDetalle_Pagos: TClientDataSet;
    tDetalle_PagosProceso: TStringField;
    tDetalle_PagosEmpleado: TStringField;
    tDetalle_PagosPago: TIntegerField;
    tDetalle_PagosSalario: TBCDField;
    tDetalle_PagosMonto_Pagar: TBCDField;
    tDetalle_PagosTipo_Pago: TStringField;
    tDetalle_PagosTotal_Pago: TBCDField;
    tDetalle_PagosNombre_Pago: TStringField;
    dDetalle_Pagos: TDataSource;
    tResumen_Detalle_Deducciones: TClientDataSet;
    tResumen_Detalle_DeduccionesDeduccion: TIntegerField;
    tResumen_Detalle_DeduccionesTOTAL_DEDUCCIONES: TBCDField;
    tResumen_Detalle_DeduccionesNombre_Deduccion: TStringField;
    dResumen_Detalle_Deducciones: TDataSource;
    tUltima_Nomina_Periodo: TClientDataSet;
    tUltima_Nomina_PeriodoUltima_Fecha_Inicio: TDateField;
    tUltima_Nomina_PeriodoUltima_Fecha_Final: TDateField;
    tListado_Empleados: TClientDataSet;
    tListado_EmpleadosCedula_Rnc_Pasaporte: TStringField;
    tListado_EmpleadosTipo_Documento: TStringField;
    tListado_EmpleadosSecuencia: TIntegerField;
    tListado_EmpleadosNombre: TStringField;
    tListado_EmpleadosApellido: TStringField;
    tListado_EmpleadosNacionalidad: TStringField;
    tListado_EmpleadosSexo: TStringField;
    tListado_EmpleadosTipo_Telefono_1: TStringField;
    tListado_EmpleadosTipo_Telefono_2: TStringField;
    tListado_EmpleadosTipo_Telefono_3: TStringField;
    tListado_EmpleadosTipo_Telefono_4: TStringField;
    tListado_EmpleadosNumero_Telefono_1: TStringField;
    tListado_EmpleadosNumero_Telefono_2: TStringField;
    tListado_EmpleadosNumero_Telefono_3: TStringField;
    tListado_EmpleadosNumero_Telefono_4: TStringField;
    tListado_EmpleadosDireccion: TStringField;
    tListado_EmpleadosPais: TStringField;
    tListado_EmpleadosCiudad: TStringField;
    tListado_EmpleadosSector: TStringField;
    tListado_EmpleadosNombreCompleto: TStringField;
    tListado_EmpleadosNumero_Tarjeta: TStringField;
    tListado_EmpleadosNumero_Cuenta: TStringField;
    tListado_EmpleadosRegistrado_En_Fecha: TDateTimeField;
    tListado_Empleadosmail: TStringField;
    tListado_EmpleadosFoto: TBlobField;
    tListado_EmpleadosFecha_Nacimiento: TDateField;
    tListado_EmpleadosEstado_Civil: TStringField;
    tListado_EmpleadosCodigo_Banco: TStringField;
    dListado_Empleados: TDataSource;
    tListado_Laboral: TClientDataSet;
    tListado_LaboralCedula_Rnc_Pasaporte: TStringField;
    tListado_LaboralCompania: TIntegerField;
    tListado_LaboralDepartamento: TIntegerField;
    tListado_LaboralCargo: TStringField;
    tListado_LaboralSalario: TBCDField;
    tListado_LaboralGrupo_Deducciones: TIntegerField;
    tListado_LaboralPeriodo_Nomina: TStringField;
    tListado_LaboralTipo_Empleado: TStringField;
    tListado_LaboralStatus: TStringField;
    tListado_LaboralFecha_Inicio: TDateField;
    tListado_LaboralFecha_Salida: TDateField;
    tListado_LaboralTipo_Salario: TStringField;
    tListado_LaboralNombreCompleto: TStringField;
    tListado_LaboralUnidad_Organizativa: TStringField;
    tListado_LaboralSimbolo: TStringField;
    dListado_Laboral: TDataSource;
    dListado_Grupo_Nomina: TDataSource;
    tListado_Grupo_Nomina: TClientDataSet;
    tListado_Grupo_NominaDescripcion: TStringField;
    tListado_Grupo_NominaNumero: TIntegerField;
    tListado_Grupo_NominaRegistrado_En_Fecha: TDateTimeField;
    tListado_Grupo_NominaProceso: TStringField;
    tListado_Grupo_NominaUsuario: TStringField;
    tListado_Grupo_NominaStatus: TStringField;
    tEmpleadosqrDetalle_Empleado: TDataSetField;
    tDetalle_Empleado: TClientDataSet;
    dDetalle_Empleado: TDataSource;
    tDetalle_EmpleadoCedula_Rnc_Pasaporte: TStringField;
    tDetalle_EmpleadoTipo: TStringField;
    tDetalle_EmpleadoNumero: TIntegerField;
    tDetalle_EmpleadoDescripcion: TStringField;
    tDetalle_EmpleadoTipo_Aplicacion: TStringField;
    tDetalle_EmpleadoMonto: TBCDField;
    tDetalle_EmpleadoDeducir_De: TStringField;
    tDetalle_EmpleadoAplicable_A: TStringField;
    tDetalle_EmpleadoRango_Inicial: TBCDField;
    tDetalle_EmpleadoRango_Final: TBCDField;
    tDetalle_EmpleadoRegistrado_En_Fecha: TDateTimeField;
    tDetalle_EmpleadoUsuario: TStringField;
    tNominaStatus: TStringField;
    tDetalle_NominaStatus: TStringField;
    tDetalle_NominaNumero_Cuenta: TStringField;
    tDetalle_NominaCheque_Numero: TIntegerField;
    tDetalle_NominaProceso_Cheque: TStringField;
    tDetalle_NominaFecha_Cheque: TDateField;
    tDetalle_NominaCheque_Anterior: TIntegerField;
    tDetalle_NominaProceso_Cheque_Anterior: TStringField;
    tDetalle_NominaFecha_Cheque_Anterior: TDateField;
    dSalarioEmpleado_Rango: TDataSource;
    tSalarioEmpleado_Rango: TClientDataSet;
    tSalarioEmpleado_RangoTotal_Salario_Rango: TBCDField;
    tSalarioEmpleado_RangoCantidad_Salarios: TIntegerField;
    Enlace: TSocketConnection;
    Concentrador: TConnectionBroker;
    tNominaDetalle_Dias: TBlobField;
    tNominaArchivo_Detalle_Dias: TStringField;
    DataSource1: TDataSource;
    tDesgloce_Efectivo: TClientDataSet;
    tDesgloce_EfectivoEmpleado: TStringField;
    tDesgloce_EfectivoMoneda: TCurrencyField;
    tDesgloce_EfectivoCantidad: TIntegerField;
    tDesgloce_EfectivoTotal: TCurrencyField;
    tListado_EmpleadosInicial: TStringField;
    procedure tListado_EmpleadosCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure tNominaAfterEdit(DataSet: TDataSet);
    procedure tInformacion_LaboralGrupo_DeduccionesValidate(Sender: TField);
    procedure DataSetReconcileErrors(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure EditReminder(DataSet: TDataSet);
    procedure tNominaCalcFields(DataSet: TDataSet);
    procedure tNominaDepartamentoValidate(Sender: TField);
    procedure tInformacion_LaboralDepartamentoValidate(Sender: TField);
    procedure tDepartamentosCalcFields(DataSet: TDataSet);
    procedure tNominaFecha_InicioValidate(Sender: TField);
    procedure ValidarFechas(Sender: TField);
    procedure CalcularTotalNomina(DataSet: TDataSet);
    procedure CalcularTotalNeto(Sender: TField);
    procedure CalcularDeducciones(Sender: TField);
    procedure tDetalle_NominaCalcFields(DataSet: TDataSet);
    procedure Filtrar_Departamentos(Sender: TField);
    procedure tEmpleadosPaisValidate(Sender: TField);
    procedure tEmpleadosCiudadValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function SearchCustomer (SrchCode : String): Integer;

var
  ModuloNomina: TModuloNomina;

implementation

uses Utilidades, DataModulo, Autorizar, Generales, RegKeys;

{$R *.dfm}

Function SearchCustomer (SrchCode : String): Integer;
  Begin
    If Trim(SrchCode) = '' Then
      Begin
        Result := _NoCodeToSearch; {Nothing To Search}
        Exit
      End;

    ModuloNomina.tEmpleados.Cancel;
    ModuloNomina.tEmpleados.CancelUpdates;
    ModuloNomina.tEmpleados.Params.ParamByName('Cedula_RNC_Pasaporte').AsString := Trim(SrchCode);
    ModuloNomina.tEmpleados.Refresh;

    If ModuloNomina.tEmpleados.RecordCount <= 0 Then
      Begin
        Result := _CodeNotFound; {Nothing Found In Search}
        Exit
      End;

    Result := _SearchCodeFound {Search Done}
  End;

procedure TModuloNomina.CalcularDeducciones(Sender: TField);
begin
  tDetalle_NominaTotal_Deducciones.Value := tDetalle_NominaDeducciones.Value + tDetalle_NominaOtras_Deducciones.Value
end;

procedure TModuloNomina.CalcularTotalNeto(Sender: TField);
begin
  tDetalle_NominaTotal_Neto.Value := (tDetalle_NominaSalario_Bruto.Value +
                                      tDetalle_NominaSalario_Extra.Value +
                                      tDetalle_NominaSalario_Extraordinarias.Value +
                                      tDetalle_NominaOtros_Pagos.Value) - tDetalle_NominaTotal_Deducciones.Value
end;

procedure TModuloNomina.CalcularTotalNomina(DataSet: TDataSet);
  Var
    Neto, Deducciones, Bruto, Extra : Currency;
    Current_Record                  : TBookMark;
begin
  Current_Record := tDetalle_Nomina.GetBookmark;

  tDetalle_Nomina.First;
  tDetalle_Nomina.DisableControls;

  Neto := 0;
  Deducciones := 0;
  Bruto := 0;
  Extra := 0;

  While Not tDetalle_Nomina.Eof Do
    Begin
      Neto := Neto + tDetalle_NominaTotal_Neto.Value;
      Extra := Extra + tDetalle_NominaSalario_Extra.Value;
      Bruto := Bruto + tDetalle_NominaSalario_Bruto.Value;
      Deducciones := Deducciones + tDetalle_NominaDeducciones.Value + tDetalle_NominaOtras_Deducciones.Value;
      tDetalle_Nomina.Next;
    end;

  tNominaTotal_Bruto.Value := Bruto;
  tNominaTotal_Neto.Value := Neto;
  tNominaTotal_Deducciones.Value := Deducciones;
  tNominaTotal_Extra.Value := Extra;

  tDetalle_Nomina.GotoBookmark(Current_Record);
  tDetalle_Nomina.FreeBookmark(Current_Record);
  tDetalle_Nomina.EnableControls
end;

procedure TModuloNomina.EditReminder(DataSet: TDataSet);
begin
  //Modulo.EditReminder(DataSet)
end;

procedure TModuloNomina.tNominaAfterEdit(DataSet: TDataSet);
begin
  If tNominaStatus.Value <> _stACTIVO Then
    Begin
      PopupMessage(Modulo.Mensajes,'Esta Nomina ya fue procesada'#13'Para ser modificada deberá introducir una clave de acceso con permisos para esos fines');
      ModuloGenerales.Autorizar_Opcion(Self,self.Name);
      If Not Granted Then
        Begin
          Mensaje(_ErrAccesoDenegadoOpcion,self);
          SysUtils.Abort;
        end;
    end
end;

procedure TModuloNomina.tNominaCalcFields(DataSet: TDataSet);
begin
  tNominaReferencia.Value := IntToStr(MonthOf(tNominaFecha_Inicio.Value)) + '-' +
                             IntToStr(YearOf(tNominaFecha_Inicio.Value)) +  '-' +
                             Trim(tNominaUnidad_Organizativa.Value) +
                             Trim(tNominaSimbolo.Value);
end;

procedure TModuloNomina.tNominaDepartamentoValidate(Sender: TField);
begin
 tNominaUnidad_Organizativa.Value := tDepartamentosUnidad_Organizativa.Value;
 tNominaSimbolo.Value := tDepartamentosSimbolo.Value;
 ValidarFechas(Sender)
end;

procedure TModuloNomina.tNominaFecha_InicioValidate(Sender: TField);
begin
  If tNominaFecha_Inicio.Value < (tUltima_Nomina_PeriodoUltima_Fecha_Final.Value + 1) Then
    Begin
      PopupMessage(Modulo.Mensajes,'La fecha de inicio para este departamento y periodo debe ser mayor o igual a ' + DateToStr((tUltima_Nomina_PeriodoUltima_Fecha_Final.Value + 1)));
      SysUtils.Abort
    end;

  If tNominaPeriodo.Value = 'ANUAL' Then tNominaFecha_Final.Value := IncYear(tNominaFecha_Inicio.Value);
  If tNominaPeriodo.Value = 'BIMENSUAL' Then tNominaFecha_Final.Value := IncMonth(tNominaFecha_Inicio.Value,2);
  If tNominaPeriodo.Value = 'CUATRIMESTRAL' Then tNominaFecha_Final.Value := IncMonth(tNominaFecha_Inicio.Value,4);
  If tNominaPeriodo.Value = 'DIARIO' Then tNominaFecha_Final.Value := tNominaFecha_Inicio.Value;
  If tNominaPeriodo.Value = 'MENSUAL' Then tNominaFecha_Final.Value := IncMonth(tNominaFecha_Inicio.Value);
  If tNominaPeriodo.Value = 'QUINCENAL' Then tNominaFecha_Final.Value := AddFortnights(tNominaFecha_Inicio.Value,1);
  If tNominaPeriodo.Value = 'SEMANAL' Then tNominaFecha_Final.Value := AddWeeks(tNominaFecha_Inicio.Value,1);
  If tNominaPeriodo.Value = 'SEMESTRAL' Then tNominaFecha_Final.Value := IncMonth(tNominaFecha_Inicio.Value,6);
  If tNominaPeriodo.Value = 'TRIMESTRAL' Then tNominaFecha_Final.Value := IncMonth(tNominaFecha_Inicio.Value,3)
end;

procedure TModuloNomina.Filtrar_Departamentos(Sender: TField);
begin
  tDepartamentos.Filter := 'Compania = ' + tCompaniaNumero_Compania.AsString;
  tDepartamentos.Filtered := True
end;

procedure TModuloNomina.tDepartamentosCalcFields(DataSet: TDataSet);
begin
  tDepartamentosSimbolo_Combinado.Value := Trim(tDepartamentosUnidad_Organizativa.Value) +
                                           Trim(tDepartamentosSimbolo.Value)
end;

procedure TModuloNomina.tDetalle_NominaCalcFields(DataSet: TDataSet);
begin
  tDetalle_NominaTotal_Salario.Value := tDetalle_NominaSalario_Bruto.Value +
                                        tDetalle_NominaSalario_Extra.Value +
                                        tDetalle_NominaOtros_Pagos.Value +
                                        tDetalle_NominaSalario_Extraordinarias.Value;

  tDetalle_NominaTotal_Horas.Value := Round(tDetalle_NominaTotal_Horas_Trabajadas.Value +
                                      tDetalle_NominaTotal_Horas_Extra.Value +
                                      tDetalle_NominaTotal_Horas_Extraordinarias.Value)
end;

procedure TModuloNomina.ValidarFechas(Sender: TField);
begin
  If ((tNominaCompania.Value > 0) And Not (tNominaCompania.IsNull)) And
     ((tNominaDepartamento.Value > 0) And Not (tNominaDepartamento.IsNull)) And
     (Trim(tNominaPeriodo.Value) <> '') And (_Validar_Fecha) Then
    Begin
      tUltima_Nomina_Periodo.Close;
      tUltima_Nomina_Periodo.Params.ParamByName('Compania').AsInteger := tNominaCompania.Value;
      tUltima_Nomina_Periodo.Params.ParamByName('Departamento').AsInteger := tNominaDepartamento.Value;
      tUltima_Nomina_Periodo.Params.ParamByName('Periodo').AsString := tNominaPeriodo.Value;
      tUltima_Nomina_Periodo.Open;

      tHistorial_Nomina.Close;
      tHistorial_Nomina.Params.ParamByName('Compania').AsInteger := tNominaCompania.Value;
      tHistorial_Nomina.Params.ParamByName('Departamento').AsInteger := tNominaDepartamento.Value;
      tHistorial_Nomina.Params.ParamByName('Periodo').AsString := tNominaPeriodo.Value;
      tHistorial_Nomina.Params.ParamByName('Fecha_Inicio').AsDate := tUltima_Nomina_PeriodoUltima_Fecha_Inicio.Value;
      tHistorial_Nomina.Params.ParamByName('Fecha_Final').AsDate := tUltima_Nomina_PeriodoUltima_Fecha_Final.Value;
      tHistorial_Nomina.Open;

      If (tHistorial_Nomina.RecordCount > 0) AND
         (tHistorial_NominaStatus.Value <> _stCERRADO) Then
        Begin
          PopupMessage(Modulo.Mensajes,Format ('Existe una Nomina para %s - %s con Estatus %s, DEBE POSTEARLA ANTES DE CONTINUAR CON OTRA NOMINA PARA ESTE MISMO DEPARTAMENTO',
                                               [tCompaniaNombre_Compania.Value,
                                                tDepartamentosDescripcion.Value,
                                                tHistorial_NominaStatus.Value]));

          tNomina.Cancel;
          tNomina.CancelUpdates;
          tNomina.Params.ParamByName('Proceso').AsString := tHistorial_NominaProceso_Nomina.Value;
          tNomina.Refresh;
          Sysutils.Abort
        End;
      If Not (tHistorial_NominaFecha_Final.IsNull) Then
        tNominaFecha_Inicio.Value := tHistorial_NominaFecha_Final.Value + 1
      Else
        tNominaFecha_Inicio.Value := Modulo.Enlace.AppServer.ServerDate
    End
end;

procedure TModuloNomina.tEmpleadosPaisValidate(Sender: TField);
begin
//  ModuloGenerales.tListado_PaisesAfterScroll(ModuloGenerales.tListado_Paises);
  tEmpleadosCiudad.Clear
end;

procedure TModuloNomina.DataModuleCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Cerrar La Conección (Si es necesario)}
      If Enlace.Connected Then Enlace.Close;

      RegInfo.CloseKey;
      RegInfo.OpenKey(_Prl_DataRouteKey,_AutoConfig);
      Enlace.Host       := UnEncrypt(RegInfo.ReadString(_ConectionURL));
      Enlace.ServerName := UnEncrypt(RegInfo.ReadString(_ConectionServerPath))
    End; {If _Load_Create}
end;

procedure TModuloNomina.DataSetReconcileErrors(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Modulo.DataSetReconcileError(DataSet,E,UpdateKind,Action)
end;

procedure TModuloNomina.tInformacion_LaboralDepartamentoValidate(Sender: TField);
begin
  tInformacion_LaboralUnidad_Organizativa.Value := tDepartamentosUnidad_Organizativa.Value;
  tInformacion_LaboralSimbolo.Value := tDepartamentosSimbolo.Value;
end;

procedure TModuloNomina.tInformacion_LaboralGrupo_DeduccionesValidate(
  Sender: TField);
begin
  Try
    tEmpleados.AfterEdit := Nil;
    tGrupo_Nomina.Params.ParamByName('Proceso').AsString := tListado_Grupo_NominaProceso.Value;
    tGrupo_Nomina.Open;
    tDeducciones.Open;
    tPagos_Incentivos.Open;
    tDetalle_Empleado.DisableControls;
    If tDetalle_Empleado.RecordCount > 0 Then
      Begin
        If Application.MessageBox(PChar(_ConfirmarEliminarDetalles),
                                  PChar('Eliminar Detalles de Empleado'),
                                  MB_YESNO + MB_ICONQUESTION) = ID_Yes Then
          Begin
            tDetalle_Empleado.First;
            While Not tDetalle_Empleado.Eof Do tDetalle_Empleado.Delete
          End // If Application.....
      End; // If tDetalle_Empleado.RecordCount

    tDetalle_Grupo_Nomina.First;

    While Not tDetalle_Grupo_Nomina.Eof Do
      Begin
        If tDetalle_Grupo_NominaTipo.Value = 'Deducción' Then
          Begin
            If tDeducciones.Locate(tDeduccionesNumero.FieldName,tDetalle_Grupo_NominaNumero_Deducion_Pago.Value,[]) Then
              Begin
                If Not tDetalle_Empleado.Locate('Tipo;Numero',VarArrayOf(['Deducción',tDeduccionesNumero.Value]),[]) Then tDetalle_Empleado.Append
                Else tDetalle_Empleado.Edit;

                tDetalle_EmpleadoTipo.Value := 'Deducción';
                tDetalle_EmpleadoDescripcion.Value := tDeduccionesDescripcion.Value;
                tDetalle_EmpleadoNumero.Value := tDeduccionesNumero.Value;
                tDetalle_EmpleadoTipo_Aplicacion.Value := tDeduccionesTipo.Value;
                tDetalle_EmpleadoMonto.Value := tDeduccionesMonto.Value;
                tDetalle_EmpleadoDeducir_De.Value := tDeduccionesDeducir_De.Value;
                tDetalle_EmpleadoAplicable_A.Value := tDeduccionesAplicable_A.Value;
                tDetalle_EmpleadoRango_Inicial.Value := tDeduccionesRango_Inicial.Value;
                tDetalle_EmpleadoRango_Final.Value := tDeduccionesRango_Final.Value;
                tDetalle_EmpleadoUsuario.Value := _CurrentUser;
                tDetalle_Empleado.Post
              end
          End;

        If tDetalle_Grupo_NominaTipo.Value = 'Pago/Incentivo' Then
          Begin
            If tPagos_Incentivos.Locate(tPagos_IncentivosNumero.FieldName,tDetalle_Grupo_NominaNumero_Deducion_Pago.Value,[]) Then
              Begin
                If Not tDetalle_Empleado.Locate('Tipo;Numero',VarArrayOf(['Pago/Incentivo',tPagos_IncentivosNumero.Value]),[]) Then tDetalle_Empleado.Append
                Else tDetalle_Empleado.Edit;

                tDetalle_EmpleadoTipo.Value := 'Pago/Incentivo';
                tDetalle_EmpleadoDescripcion.Value := tPagos_IncentivosDescripcion.Value;
                tDetalle_EmpleadoNumero.Value := tPagos_IncentivosNumero.Value;
                tDetalle_EmpleadoTipo_Aplicacion.Value := tPagos_IncentivosTipo.Value;
                tDetalle_EmpleadoMonto.Value := tPagos_IncentivosMonto.Value;
                tDetalle_EmpleadoDeducir_De.Value := '-';
                tDetalle_EmpleadoAplicable_A.Value := tPagos_IncentivosAplicar_A.Value;
                tDetalle_EmpleadoRango_Inicial.Value := tPagos_IncentivosRango_Inicial.Value;
                tDetalle_EmpleadoRango_Final.Value := tPagos_IncentivosRango_Final.Value;
                tDetalle_EmpleadoUsuario.Value := _CurrentUser;
                tDetalle_Empleado.Post
              end
          End;
        tDetalle_Grupo_Nomina.Next
      end // While
  finally
    tEmpleados.AfterEdit := EditReminder;
    tDetalle_Empleado.EnableControls;
    tGrupo_Nomina.Close;
    tDeducciones.Close;
    tPagos_Incentivos.Close
  end;

end;

procedure TModuloNomina.tListado_EmpleadosCalcFields(DataSet: TDataSet);
begin
  tListado_EmpleadosInicial.Value := Copy (tListado_EmpleadosNombreCompleto.Value,1,1)
end;

procedure TModuloNomina.tEmpleadosCiudadValidate(Sender: TField);
begin
//  ModuloGenerales.tCiudadesAfterScroll(ModuloGenerales.tCiudades);
//  tEmpleadosZona.Clear;
  tEmpleadosSector.Clear
end;

Initialization
  Classes.RegisterClass(TModuloNomina);

end.
