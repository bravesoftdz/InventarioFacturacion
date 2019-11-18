unit DataModuloContabilidad;

interface

uses
  SysUtils, Classes, DBClient, DB, MConnect, SConnect;

type
  TModuloContabilidad = class(TDataModule)
    Enlace: TSocketConnection;
    Concentrador: TConnectionBroker;
    tCuentas: TClientDataSet;
    dCuentas: TDataSource;
    tCuentasTipo: TStringField;
    tCuentasNumero: TStringField;
    tCuentasPrincipal: TStringField;
    tCuentasControl: TStringField;
    tCuentasSecuencia: TIntegerField;
    tCuentasDescripcion: TStringField;
    tCuentasOrigen: TStringField;
    tCuentasTotal_Debitos: TBCDField;
    tCuentasTotal_Creditos: TBCDField;
    tCuentasBalance: TBCDField;
    tListado_Cuentas: TClientDataSet;
    dListado_Cuentas: TDataSource;
    tTransacciones: TClientDataSet;
    dTransacciones: TDataSource;
    tDetalle_Transacciones: TClientDataSet;
    dDetalle_Transacciones: TDataSource;
    tListado_CuentasTipo: TStringField;
    tListado_CuentasNumero: TStringField;
    tListado_CuentasPrincipal: TStringField;
    tListado_CuentasControl: TStringField;
    tListado_CuentasSecuencia: TIntegerField;
    tListado_CuentasDescripcion: TStringField;
    tListado_CuentasOrigen: TStringField;
    tListado_CuentasTotal_Debitos: TBCDField;
    tListado_CuentasTotal_Creditos: TBCDField;
    tListado_CuentasBalance: TBCDField;
    tTransaccionesNumero: TIntegerField;
    tTransaccionesProceso: TStringField;
    tTransaccionesFecha: TDateField;
    tTransaccionesHora: TTimeField;
    tTransaccionesDescripcion: TStringField;
    tTransaccionesReferencia: TStringField;
    tTransaccionesStatus: TStringField;
    tTransaccionesTotal_Debitos: TBCDField;
    tTransaccionesTotal_Creditos: TBCDField;
    tTransaccionesqrDetalle_Transacciones: TDataSetField;
    tDetalle_TransaccionesProceso: TStringField;
    tDetalle_TransaccionesSecuencia: TIntegerField;
    tDetalle_TransaccionesCuenta: TStringField;
    tDetalle_TransaccionesPrincipal: TStringField;
    tDetalle_TransaccionesControl: TStringField;
    tDetalle_TransaccionesFecha: TDateField;
    tDetalle_TransaccionesHora: TTimeField;
    tDetalle_TransaccionesNombre_Cuenta: TStringField;
    tDetalle_TransaccionesDebito: TBCDField;
    tDetalle_TransaccionesCredito: TBCDField;
    tPrincipales: TClientDataSet;
    dPrincipales: TDataSource;
    tPrincipalesTipo: TStringField;
    tPrincipalesNumero: TStringField;
    tPrincipalesPrincipal: TStringField;
    tPrincipalesControl: TStringField;
    tPrincipalesSecuencia: TIntegerField;
    tPrincipalesDescripcion: TStringField;
    tPrincipalesOrigen: TStringField;
    tPrincipalesTotal_Debitos: TBCDField;
    tPrincipalesTotal_Creditos: TBCDField;
    tPrincipalesBalance: TBCDField;
    tControles: TClientDataSet;
    dControles: TDataSource;
    tControlesTipo: TStringField;
    tControlesNumero: TStringField;
    tControlesPrincipal: TStringField;
    tControlesControl: TStringField;
    tControlesSecuencia: TIntegerField;
    tControlesDescripcion: TStringField;
    tControlesOrigen: TStringField;
    tControlesTotal_Debitos: TBCDField;
    tControlesTotal_Creditos: TBCDField;
    tControlesBalance: TBCDField;
    tAuxiliares: TClientDataSet;
    dAuxiliares: TDataSource;
    tTransaccionesBalance: TCurrencyField;
    tDetalle_TransaccionesRegistro: TIntegerField;
    tDetalle_TransaccionesOrigen: TStringField;
    tTransaccionesComentario: TStringField;
    tTransaccionesRegistrado: TDateField;
    tTransaccionesUsuario: TStringField;
    tEstado_Situacion: TClientDataSet;
    dEstado_Situacion: TDataSource;
    tEstado_Ingresos_Gastos: TClientDataSet;
    dEstado_Ingresos_Gastos: TDataSource;
    tBalanza_Comprobacion: TClientDataSet;
    dBalanza_Comprobacion: TDataSource;
    tMayor: TClientDataSet;
    dMayor: TDataSource;
    tListado_Transacciones: TClientDataSet;
    dListado_Transacciones: TDataSource;
    tListado_TransaccionesNumero: TIntegerField;
    tListado_TransaccionesProceso: TStringField;
    tListado_TransaccionesFecha: TDateField;
    tListado_TransaccionesHora: TTimeField;
    tListado_TransaccionesDescripcion: TStringField;
    tListado_TransaccionesReferencia: TStringField;
    tListado_TransaccionesStatus: TStringField;
    tListado_TransaccionesTotal_Debitos: TBCDField;
    tListado_TransaccionesTotal_Creditos: TBCDField;
    tListado_TransaccionesComentario: TStringField;
    tListado_TransaccionesRegistrado: TDateField;
    tListado_TransaccionesUsuario: TStringField;
    tMayorProceso: TStringField;
    tMayorSecuencia: TIntegerField;
    tMayorCuenta: TStringField;
    tMayorPrincipal: TStringField;
    tMayorControl: TStringField;
    tMayorFecha: TDateField;
    tMayorHora: TTimeField;
    tMayorNombre_Cuenta: TStringField;
    tMayorDebito: TBCDField;
    tMayorCredito: TBCDField;
    tMayorRegistro: TIntegerField;
    tMayorOrigen: TStringField;
    tEstado_SituacionControl: TStringField;
    tEstado_SituacionOrigen: TStringField;
    tEstado_SituacionPrincipal: TStringField;
    tEstado_SituacionTotal_Debitos: TBCDField;
    tEstado_SituacionTotal_Creditos: TBCDField;
    tEstado_SituacionNombre_Cuenta_Control: TStringField;
    tEstado_SituacionBalance: TCurrencyField;
    tIngresos: TClientDataSet;
    dIngresos: TDataSource;
    tGastos: TClientDataSet;
    dGastos: TDataSource;
    tIngresosTotal_Debitos: TBCDField;
    tIngresosTotal_Creditos: TBCDField;
    tGastosTotal_Debitos: TBCDField;
    tGastosTotal_Creditos: TBCDField;
    tParametros: TClientDataSet;
    dParametros: TDataSource;
    tParametrosTerminal: TStringField;
    tParametrosCuenta_Capital: TStringField;
    tParametrosCuenta_Utilidades: TStringField;
    tAuxiliaresTipo: TStringField;
    tAuxiliaresNumero: TStringField;
    tAuxiliaresPrincipal: TStringField;
    tAuxiliaresControl: TStringField;
    tAuxiliaresSecuencia: TIntegerField;
    tAuxiliaresDescripcion: TStringField;
    tAuxiliaresOrigen: TStringField;
    tAuxiliaresTotal_Debitos: TBCDField;
    tAuxiliaresTotal_Creditos: TBCDField;
    tAuxiliaresBalance: TBCDField;
    tEstado_Ingresos_GastosControl: TStringField;
    tEstado_Ingresos_GastosOrigen: TStringField;
    tEstado_Ingresos_GastosPrincipal: TStringField;
    tEstado_Ingresos_GastosTotal_Debitos: TBCDField;
    tEstado_Ingresos_GastosTotal_Creditos: TBCDField;
    tEstado_Ingresos_GastosNombre_Cuenta_Control: TStringField;
    tEstado_Ingresos_GastosBalance: TCurrencyField;
    tBalanza_ComprobacionBalance: TCurrencyField;
    tBalanza_ComprobacionCuenta: TStringField;
    tBalanza_ComprobacionNombre_Cuenta: TStringField;
    tBalanza_ComprobacionOrigen: TStringField;
    tBalanza_ComprobacionPrincipal: TStringField;
    tBalanza_ComprobacionControl: TStringField;
    tBalanza_ComprobacionTotal_Debitos: TBCDField;
    tBalanza_ComprobacionTotal_Creditos: TBCDField;
    procedure tDetalle_TransaccionesBeforePost(DataSet: TDataSet);
    procedure tBalanza_ComprobacionCalcFields(DataSet: TDataSet);
    procedure tEstado_Ingresos_GastosCalcFields(DataSet: TDataSet);
    procedure tEstado_SituacionCalcFields(DataSet: TDataSet);
    procedure tCuentasPrincipalValidate(Sender: TField);
    procedure tCuentasControlValidate(Sender: TField);
    procedure tTransaccionesCalcFields(DataSet: TDataSet);
    procedure tTransaccionesBeforePost(DataSet: TDataSet);
    procedure tDetalle_TransaccionesCreditoValidate(Sender: TField);
    procedure tDetalle_TransaccionesDebitoValidate(Sender: TField);
    procedure tDetalle_TransaccionesCuentaValidate(Sender: TField);
    procedure ActualizarTotalesTransaccion(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure ChkRefresh(DataSet: TDataSet);
    procedure DataSetReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModuloContabilidad: TModuloContabilidad;

implementation

uses Utilidades, RegKeys;

{$R *.dfm}

procedure TModuloContabilidad.ActualizarTotalesTransaccion(DataSet: TDataSet);
  Var
    CurrentRecord   : TBookmark;
    Total_Debitos   ,
    Total_Creditos  : Currency;

begin
  CurrentRecord := tDetalle_Transacciones.GetBookmark;
  Try
    Total_Creditos   := 0;
    Total_Debitos     := 0;

    tDetalle_Transacciones.DisableControls;
    tDetalle_Transacciones.First;

    While Not tDetalle_Transacciones.Eof Do
      Begin
        Total_Debitos     := tDetalle_TransaccionesDebito.Value + Total_Debitos;
        Total_Creditos    := tDetalle_TransaccionesCredito.Value + Total_Creditos;
        tDetalle_Transacciones.Next
      End;{While}

    If Not (tTransacciones.State In DsEditModes) Then tTransacciones.Edit;
    tTransaccionesTotal_Debitos.Value := Total_Debitos;
    tTransaccionesTotal_Creditos.Value := Total_Creditos;
  Finally
    tDetalle_Transacciones.GotoBookmark(CurrentRecord);
    tDetalle_Transacciones.FreeBookmark(CurrentRecord);
    tDetalle_Transacciones.EnableControls
  End {Try}
end;

procedure TModuloContabilidad.DataModuleCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Cerrar La Conección (Si es necesario)}
      If Enlace.Connected Then Enlace.Close;

      RegInfo.CloseKey;
      RegInfo.OpenKey(_Acc_DataRouteKey,_AutoConfig);
      Enlace.Host       := UnEncrypt(RegInfo.ReadString(_ConectionURL));
      Enlace.ServerName := UnEncrypt(RegInfo.ReadString(_ConectionServerPath));

      tParametros.Params.ParamByName('Terminal').AsString := _CurrentTerminal;
      tParametros.Open;
      _Current_Capital_Acc := tParametrosCuenta_Capital.Value;
      _Current_Gains_Acc := tParametrosCuenta_Utilidades.Value;
      tParametros.Close
    End; {If _Load_Create}
end;

procedure TModuloContabilidad.tBalanza_ComprobacionCalcFields(
  DataSet: TDataSet);
begin
  If (Trim(tBalanza_ComprobacionOrigen.Value) = 'Activos') Or
     (Trim(tBalanza_ComprobacionOrigen.Value) = 'Gastos') Then
     tBalanza_ComprobacionBalance.Value := tBalanza_ComprobacionTotal_Debitos.Value - tBalanza_ComprobacionTotal_Creditos.Value
  Else
     tBalanza_ComprobacionBalance.Value := tBalanza_ComprobacionTotal_Creditos.Value - tBalanza_ComprobacionTotal_Debitos.Value
end;

procedure TModuloContabilidad.tCuentasControlValidate(Sender: TField);
begin
  tCuentasPrincipal.Value := tControlesPrincipal.Value;
  tCuentasOrigen.Value := tPrincipalesOrigen.Value
end;

procedure TModuloContabilidad.tCuentasPrincipalValidate(Sender: TField);
begin
  tCuentasOrigen.Value := tPrincipalesOrigen.Value;
  If tCuentasTipo.Value = 'Control' Then
    tCuentasNumero.Value := tPrincipalesNumero.Value
end;

procedure TModuloContabilidad.DataSetReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Utilidades.DataSetReconcileError(DataSet,E,UpdateKind,Action)
end;

procedure TModuloContabilidad.tDetalle_TransaccionesBeforePost(
  DataSet: TDataSet);
begin
  tDetalle_TransaccionesFecha.Value := tTransaccionesFecha.Value
end;

procedure TModuloContabilidad.tDetalle_TransaccionesCreditoValidate(
  Sender: TField);
begin
  Try
    tDetalle_TransaccionesDebito.OnValidate := Nil;
    tDetalle_TransaccionesDebito.Clear
  finally
    tDetalle_TransaccionesDebito.OnValidate := tDetalle_TransaccionesDebitoValidate
  end
end;

procedure TModuloContabilidad.tDetalle_TransaccionesCuentaValidate(
  Sender: TField);
  Var
    Secuencia : LongInt;
    Mes, Anio : Word;
    Name      : String;

begin
  Name := '';
  tCuentas.Params.ParamByName('Numero').AsString := Trim (UpperCase(tDetalle_TransaccionesCuenta.Value));
  tCuentas.Refresh;

  If tCuentas.RecordCount <= 0 Then
    Begin
      Mensaje(_CuentaContableNoRegistrada,self);
      SysUtils.Abort
    end;

//  tDetalle_TransaccionesCuenta.Value := tCuentasNumero.Value;

  tDetalle_TransaccionesNombre_Cuenta.Value   := Trim(tCuentasDescripcion.Value);
  tDetalle_TransaccionesPrincipal.Value   := Trim(tCuentasPrincipal.Value);
  tDetalle_TransaccionesControl.Value   := Trim(tCuentasControl.Value);
  tDetalle_TransaccionesSecuencia.Value   := tCuentasSecuencia.Value;
  tDetalle_TransaccionesOrigen.Value   := Trim(tCuentasOrigen.Value);
  tDetalle_TransaccionesFecha.Value   := tTransaccionesFecha.Value;
  tDetalle_TransaccionesHora.Value   := tTransaccionesHora.Value
end;

procedure TModuloContabilidad.tDetalle_TransaccionesDebitoValidate(
  Sender: TField);
begin
  Try
    tDetalle_TransaccionesCredito.OnValidate := Nil;
    tDetalle_TransaccionesCredito.Clear
  finally
    tDetalle_TransaccionesCredito.OnValidate := tDetalle_TransaccionesCreditoValidate
  end
end;

procedure TModuloContabilidad.tEstado_Ingresos_GastosCalcFields(
  DataSet: TDataSet);
begin
  If Trim(tEstado_Ingresos_GastosOrigen.Value) = 'Gastos' Then
     tEstado_Ingresos_GastosBalance.Value := tEstado_Ingresos_GastosTotal_Debitos.Value - tEstado_Ingresos_GastosTotal_Creditos.Value
  Else
     tEstado_Ingresos_GastosBalance.Value := tEstado_Ingresos_GastosTotal_Creditos.Value - tEstado_Ingresos_GastosTotal_Debitos.Value
end;

procedure TModuloContabilidad.tEstado_SituacionCalcFields(DataSet: TDataSet);
begin
  If Trim(tEstado_SituacionOrigen.Value) = 'Activos' Then
     tEstado_SituacionBalance.Value := tEstado_SituacionTotal_Debitos.Value - tEstado_SituacionTotal_Creditos.Value
  Else
     tEstado_SituacionBalance.Value := tEstado_SituacionTotal_Creditos.Value - tEstado_SituacionTotal_Debitos.Value
end;

procedure TModuloContabilidad.tTransaccionesBeforePost(DataSet: TDataSet);
begin
  If tTransaccionesTotal_Debitos.Value <> tTransaccionesTotal_Creditos.Value Then
    Begin
      Mensaje(Format(_ErrTransaccionNoBalanceada,[Abs(tTransaccionesTotal_Debitos.Value - tTransaccionesTotal_Creditos.Value)]),self);
      SysUtils.Abort
    end;
  
  If Trim(tTransaccionesDescripcion.Value) = '' Then
    tTransaccionesDescripcion.Value := Format('Transacción realizada el %s a las %s',[tTransaccionesFecha.Text,tTransaccionesHora.Text]);


end;

procedure TModuloContabilidad.tTransaccionesCalcFields(DataSet: TDataSet);
begin
  tTransaccionesBalance.Value := Abs(tTransaccionesTotal_Debitos.Value - tTransaccionesTotal_Creditos.Value);
end;

procedure TModuloContabilidad.ChkRefresh(DataSet: TDataSet);
begin
  DoBeforeRefresh(DataSet);
end;

Initialization
  RegisterClass(TModuloContabilidad);

end.
