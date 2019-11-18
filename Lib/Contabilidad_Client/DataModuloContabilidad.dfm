object ModuloContabilidad: TModuloContabilidad
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 589
  Width = 595
  object Enlace: TSocketConnection
    ServerGUID = '{72BCE1D4-41DC-42A0-8A61-746E8304C220}'
    ServerName = 'Acc_Server.RemoteModule'
    Host = 'rms-mobile'
    Left = 24
    Top = 5
  end
  object Concentrador: TConnectionBroker
    Connection = Enlace
    Left = 120
    Top = 5
  end
  object tCuentas: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Numero'
        ParamType = ptInput
      end>
    ProviderName = 'prCuentas'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 24
    Top = 49
    object tCuentasTipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo'
      Size = 25
    end
    object tCuentasNumero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Size = 25
    end
    object tCuentasPrincipal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Principal'
      OnValidate = tCuentasPrincipalValidate
      Size = 25
    end
    object tCuentasControl: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Control'
      OnValidate = tCuentasControlValidate
      Size = 25
    end
    object tCuentasSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
    end
    object tCuentasDescripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Size = 100
    end
    object tCuentasOrigen: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Origen'
      Size = 25
    end
    object tCuentasTotal_Debitos: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Debitos'
      Precision = 18
      Size = 2
    end
    object tCuentasTotal_Creditos: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Creditos'
      Precision = 18
      Size = 2
    end
    object tCuentasBalance: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Precision = 18
      Size = 2
    end
  end
  object dCuentas: TDataSource
    DataSet = tCuentas
    Left = 120
    Top = 49
  end
  object tListado_Cuentas: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <>
    ProviderName = 'prListado_Cuentas'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 24
    Top = 97
    object tListado_CuentasDescripcion: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descripci'#243'n'
      DisplayWidth = 50
      FieldName = 'Descripcion'
      Size = 100
    end
    object tListado_CuentasNumero: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 20
      FieldName = 'Numero'
      Size = 25
    end
    object tListado_CuentasTipo: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Tipo'
      Size = 25
    end
    object tListado_CuentasPrincipal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Principal'
      Visible = False
      Size = 25
    end
    object tListado_CuentasControl: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Control'
      Visible = False
      Size = 25
    end
    object tListado_CuentasSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Visible = False
    end
    object tListado_CuentasOrigen: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Origen'
      Visible = False
      Size = 25
    end
    object tListado_CuentasTotal_Debitos: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Debitos'
      Visible = False
      Precision = 18
      Size = 2
    end
    object tListado_CuentasTotal_Creditos: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Creditos'
      Visible = False
      Precision = 18
      Size = 2
    end
    object tListado_CuentasBalance: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Visible = False
      Precision = 18
      Size = 2
    end
  end
  object dListado_Cuentas: TDataSource
    DataSet = tListado_Cuentas
    Left = 120
    Top = 97
  end
  object tTransacciones: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    ProviderName = 'prTransacciones'
    BeforePost = tTransaccionesBeforePost
    BeforeRefresh = ChkRefresh
    OnCalcFields = tTransaccionesCalcFields
    OnReconcileError = DataSetReconcileError
    Left = 24
    Top = 145
    object tTransaccionesNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Transacciones"."Numero"'
      DisplayFormat = #39'Tr-'#39'0000000000'
    end
    object tTransaccionesProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Transacciones"."Proceso"'
      Size = 25
    end
    object tTransaccionesFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Transacciones"."Fecha"'
    end
    object tTransaccionesHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Transacciones"."Hora"'
    end
    object tTransaccionesDescripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Transacciones"."Descripcion"'
      Size = 100
    end
    object tTransaccionesReferencia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Referencia'
      Origin = '"Transacciones"."Referencia"'
      Size = 25
    end
    object tTransaccionesStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Transacciones"."Status"'
      Size = 15
    end
    object tTransaccionesTotal_Debitos: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Debitos'
      Origin = '"Transacciones"."Total_Debitos"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tTransaccionesTotal_Creditos: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Creditos'
      Origin = '"Transacciones"."Total_Creditos"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tTransaccionesqrDetalle_Transacciones: TDataSetField
      AutoGenerateValue = arDefault
      FieldName = 'qrDetalle_Transacciones'
    end
    object tTransaccionesBalance: TCurrencyField
      AutoGenerateValue = arDefault
      FieldKind = fkCalculated
      FieldName = 'Balance'
      Calculated = True
    end
    object tTransaccionesComentario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario'
      Size = 255
    end
    object tTransaccionesRegistrado: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Registrado'
    end
    object tTransaccionesUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Size = 100
    end
  end
  object dTransacciones: TDataSource
    DataSet = tTransacciones
    Left = 120
    Top = 145
  end
  object tDetalle_Transacciones: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    DataSetField = tTransaccionesqrDetalle_Transacciones
    Params = <
      item
        DataType = ftString
        Name = 'Numero'
        ParamType = ptInput
      end>
    BeforePost = tDetalle_TransaccionesBeforePost
    AfterPost = ActualizarTotalesTransaccion
    AfterDelete = ActualizarTotalesTransaccion
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 24
    Top = 193
    object tDetalle_TransaccionesProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Size = 25
    end
    object tDetalle_TransaccionesSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
    end
    object tDetalle_TransaccionesCuenta: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cuenta'
      OnValidate = tDetalle_TransaccionesCuentaValidate
      Size = 25
    end
    object tDetalle_TransaccionesPrincipal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Principal'
      Size = 25
    end
    object tDetalle_TransaccionesControl: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Control'
      Size = 25
    end
    object tDetalle_TransaccionesFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
    end
    object tDetalle_TransaccionesHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
    end
    object tDetalle_TransaccionesNombre_Cuenta: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Cuenta'
      Size = 100
    end
    object tDetalle_TransaccionesDebito: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Debito'
      OnValidate = tDetalle_TransaccionesDebitoValidate
      Precision = 18
      Size = 2
    end
    object tDetalle_TransaccionesCredito: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Credito'
      OnValidate = tDetalle_TransaccionesCreditoValidate
      Precision = 18
      Size = 2
    end
    object tDetalle_TransaccionesRegistro: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Registro'
    end
    object tDetalle_TransaccionesOrigen: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Origen'
      Size = 25
    end
  end
  object dDetalle_Transacciones: TDataSource
    DataSet = tDetalle_Transacciones
    Left = 120
    Top = 193
  end
  object tPrincipales: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <>
    ProviderName = 'prPrincipales'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 24
    Top = 249
    object tPrincipalesDescripcion: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descripci'#243'n'
      DisplayWidth = 35
      FieldName = 'Descripcion'
      Size = 100
    end
    object tPrincipalesNumero: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 20
      FieldName = 'Numero'
      Size = 25
    end
    object tPrincipalesTipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo'
      Visible = False
      Size = 25
    end
    object tPrincipalesPrincipal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Principal'
      Visible = False
      Size = 25
    end
    object tPrincipalesControl: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Control'
      Visible = False
      Size = 25
    end
    object tPrincipalesSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Visible = False
    end
    object tPrincipalesOrigen: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Origen'
      Visible = False
      Size = 25
    end
    object tPrincipalesTotal_Debitos: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Debitos'
      Visible = False
      Precision = 18
      Size = 2
    end
    object tPrincipalesTotal_Creditos: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Creditos'
      Visible = False
      Precision = 18
      Size = 2
    end
    object tPrincipalesBalance: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Visible = False
      Precision = 18
      Size = 2
    end
  end
  object dPrincipales: TDataSource
    DataSet = tPrincipales
    Left = 120
    Top = 249
  end
  object tControles: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <>
    ProviderName = 'prControles'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 24
    Top = 297
    object tControlesTipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo'
      Size = 25
    end
    object tControlesNumero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Size = 25
    end
    object tControlesPrincipal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Principal'
      Size = 25
    end
    object tControlesControl: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Control'
      Size = 25
    end
    object tControlesSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
    end
    object tControlesDescripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Size = 100
    end
    object tControlesOrigen: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Origen'
      Size = 25
    end
    object tControlesTotal_Debitos: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Debitos'
      Precision = 18
      Size = 2
    end
    object tControlesTotal_Creditos: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Creditos'
      Precision = 18
      Size = 2
    end
    object tControlesBalance: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Precision = 18
      Size = 2
    end
  end
  object dControles: TDataSource
    DataSet = tControles
    Left = 120
    Top = 297
  end
  object tAuxiliares: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <>
    ProviderName = 'prAuxiliares'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 24
    Top = 345
    object tAuxiliaresNumero: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Numero'
      Size = 25
    end
    object tAuxiliaresDescripcion: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 30
      FieldName = 'Descripcion'
      Size = 100
    end
    object tAuxiliaresControl: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Control'
      Size = 25
    end
    object tAuxiliaresOrigen: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Origen'
      Size = 25
    end
    object tAuxiliaresTipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo'
      Visible = False
      Size = 25
    end
    object tAuxiliaresPrincipal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Principal'
      Visible = False
      Size = 25
    end
    object tAuxiliaresSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Visible = False
    end
    object tAuxiliaresTotal_Debitos: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Debitos'
      Visible = False
      Precision = 18
      Size = 2
    end
    object tAuxiliaresTotal_Creditos: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Creditos'
      Visible = False
      Precision = 18
      Size = 2
    end
    object tAuxiliaresBalance: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Visible = False
      Precision = 18
      Size = 2
    end
  end
  object dAuxiliares: TDataSource
    DataSet = tAuxiliares
    Left = 120
    Top = 345
  end
  object tEstado_Situacion: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftDate
        Name = 'Fecha_Inicio'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Fecha_Fin'
        ParamType = ptInput
      end>
    ProviderName = 'prEstado_Situacion'
    BeforeRefresh = ChkRefresh
    OnCalcFields = tEstado_SituacionCalcFields
    OnReconcileError = DataSetReconcileError
    Left = 24
    Top = 393
    object tEstado_SituacionControl: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Control'
      Size = 25
    end
    object tEstado_SituacionOrigen: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Origen'
      Size = 25
    end
    object tEstado_SituacionPrincipal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Principal'
      Size = 25
    end
    object tEstado_SituacionTotal_Debitos: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Debitos'
      Precision = 18
      Size = 2
    end
    object tEstado_SituacionTotal_Creditos: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Creditos'
      Precision = 18
      Size = 2
    end
    object tEstado_SituacionNombre_Cuenta_Control: TStringField
      AutoGenerateValue = arDefault
      FieldKind = fkLookup
      FieldName = 'Nombre_Cuenta_Control'
      LookupDataSet = tListado_Cuentas
      LookupKeyFields = 'Numero'
      LookupResultField = 'Descripcion'
      KeyFields = 'Control'
      Size = 100
      Lookup = True
    end
    object tEstado_SituacionBalance: TCurrencyField
      AutoGenerateValue = arDefault
      FieldKind = fkCalculated
      FieldName = 'Balance'
      Calculated = True
    end
  end
  object dEstado_Situacion: TDataSource
    DataSet = tEstado_Situacion
    Left = 120
    Top = 393
  end
  object tEstado_Ingresos_Gastos: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftDate
        Name = 'Fecha_Inicio'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Fecha_Fin'
        ParamType = ptInput
      end>
    ProviderName = 'prEstado_Ingresos_Gastos'
    BeforeRefresh = ChkRefresh
    OnCalcFields = tEstado_Ingresos_GastosCalcFields
    OnReconcileError = DataSetReconcileError
    Left = 24
    Top = 441
    object tEstado_Ingresos_GastosControl: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Control'
      Size = 25
    end
    object tEstado_Ingresos_GastosOrigen: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Origen'
      Size = 25
    end
    object tEstado_Ingresos_GastosPrincipal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Principal'
      Size = 25
    end
    object tEstado_Ingresos_GastosTotal_Debitos: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Debitos'
      Precision = 18
      Size = 2
    end
    object tEstado_Ingresos_GastosTotal_Creditos: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Creditos'
      Precision = 18
      Size = 2
    end
    object tEstado_Ingresos_GastosNombre_Cuenta_Control: TStringField
      AutoGenerateValue = arDefault
      FieldKind = fkLookup
      FieldName = 'Nombre_Cuenta_Control'
      LookupDataSet = tListado_Cuentas
      LookupKeyFields = 'Numero'
      LookupResultField = 'Descripcion'
      KeyFields = 'Control'
      Size = 100
      Lookup = True
    end
    object tEstado_Ingresos_GastosBalance: TCurrencyField
      AutoGenerateValue = arDefault
      FieldKind = fkCalculated
      FieldName = 'Balance'
      Calculated = True
    end
  end
  object dEstado_Ingresos_Gastos: TDataSource
    DataSet = tEstado_Ingresos_Gastos
    Left = 120
    Top = 441
  end
  object tBalanza_Comprobacion: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftDate
        Name = 'Fecha_Inicio'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Fecha_Fin'
        ParamType = ptInput
      end>
    ProviderName = 'prBalanza_Comprobacion'
    BeforeRefresh = ChkRefresh
    OnCalcFields = tBalanza_ComprobacionCalcFields
    OnReconcileError = DataSetReconcileError
    Left = 24
    Top = 489
    object tBalanza_ComprobacionCuenta: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cuenta'
      Size = 25
    end
    object tBalanza_ComprobacionNombre_Cuenta: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Cuenta'
      Size = 100
    end
    object tBalanza_ComprobacionOrigen: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Origen'
      Size = 25
    end
    object tBalanza_ComprobacionPrincipal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Principal'
      Size = 25
    end
    object tBalanza_ComprobacionControl: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Control'
      Size = 25
    end
    object tBalanza_ComprobacionTotal_Debitos: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Debitos'
      Precision = 18
      Size = 2
    end
    object tBalanza_ComprobacionTotal_Creditos: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Creditos'
      Precision = 18
      Size = 2
    end
    object tBalanza_ComprobacionBalance: TCurrencyField
      AutoGenerateValue = arDefault
      FieldKind = fkCalculated
      FieldName = 'Balance'
      Calculated = True
    end
  end
  object dBalanza_Comprobacion: TDataSource
    DataSet = tBalanza_Comprobacion
    Left = 120
    Top = 489
  end
  object tMayor: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Numero_Cuenta'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Control'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Principal'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Fecha_Inicio'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Fecha_Fin'
        ParamType = ptInput
      end>
    ProviderName = 'prMayor'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 216
    Top = 49
    object tMayorProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalle_Transacciones"."Proceso"'
      Size = 25
    end
    object tMayorSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Detalle_Transacciones"."Secuencia"'
    end
    object tMayorCuenta: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cuenta'
      Origin = '"Detalle_Transacciones"."Cuenta"'
      Size = 25
    end
    object tMayorPrincipal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Principal'
      Origin = '"Detalle_Transacciones"."Principal"'
      Size = 25
    end
    object tMayorControl: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Control'
      Origin = '"Detalle_Transacciones"."Control"'
      Size = 25
    end
    object tMayorFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Detalle_Transacciones"."Fecha"'
    end
    object tMayorHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Detalle_Transacciones"."Hora"'
    end
    object tMayorNombre_Cuenta: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Cuenta'
      Origin = '"Detalle_Transacciones"."Nombre_Cuenta"'
      Size = 100
    end
    object tMayorDebito: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Debito'
      Origin = '"Detalle_Transacciones"."Debito"'
      Precision = 18
      Size = 2
    end
    object tMayorCredito: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Credito'
      Origin = '"Detalle_Transacciones"."Credito"'
      Precision = 18
      Size = 2
    end
    object tMayorRegistro: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Registro'
      Origin = '"Detalle_Transacciones"."Registro"'
    end
    object tMayorOrigen: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Origen'
      Origin = '"Detalle_Transacciones"."Origen"'
      Size = 25
    end
  end
  object dMayor: TDataSource
    DataSet = tMayor
    Left = 312
    Top = 49
  end
  object tListado_Transacciones: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftDate
        Name = 'Fecha_Inicio'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Fecha_Fin'
        ParamType = ptInput
      end>
    ProviderName = 'prListado_Transacciones'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 216
    Top = 97
    object tListado_TransaccionesNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Transacciones"."Numero"'
    end
    object tListado_TransaccionesProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Transacciones"."Proceso"'
      Size = 25
    end
    object tListado_TransaccionesFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Transacciones"."Fecha"'
    end
    object tListado_TransaccionesHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Transacciones"."Hora"'
    end
    object tListado_TransaccionesDescripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Transacciones"."Descripcion"'
      Size = 100
    end
    object tListado_TransaccionesReferencia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Referencia'
      Origin = '"Transacciones"."Referencia"'
      Size = 25
    end
    object tListado_TransaccionesStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Transacciones"."Status"'
      Size = 15
    end
    object tListado_TransaccionesTotal_Debitos: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Debitos'
      Origin = '"Transacciones"."Total_Debitos"'
      Precision = 18
      Size = 2
    end
    object tListado_TransaccionesTotal_Creditos: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Creditos'
      Origin = '"Transacciones"."Total_Creditos"'
      Precision = 18
      Size = 2
    end
    object tListado_TransaccionesComentario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario'
      Origin = '"Transacciones"."Comentario"'
      Size = 255
    end
    object tListado_TransaccionesRegistrado: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Registrado'
      Origin = '"Transacciones"."Registrado"'
    end
    object tListado_TransaccionesUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Transacciones"."Usuario"'
      Size = 100
    end
  end
  object dListado_Transacciones: TDataSource
    DataSet = tListado_Transacciones
    Left = 312
    Top = 97
  end
  object tIngresos: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftDate
        Name = 'Fecha_Inicio'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Fecha_Fin'
        ParamType = ptInput
      end>
    ProviderName = 'prIngresos'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 216
    Top = 145
    object tIngresosTotal_Debitos: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Debitos'
      ProviderFlags = []
      currency = True
      Precision = 18
      Size = 2
    end
    object tIngresosTotal_Creditos: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Creditos'
      ProviderFlags = []
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object dIngresos: TDataSource
    DataSet = tIngresos
    Left = 312
    Top = 145
  end
  object tGastos: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftDate
        Name = 'Fecha_Inicio'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Fecha_Fin'
        ParamType = ptInput
      end>
    ProviderName = 'prGastos'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 216
    Top = 193
    object tGastosTotal_Debitos: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Debitos'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object tGastosTotal_Creditos: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Creditos'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
  end
  object dGastos: TDataSource
    DataSet = tGastos
    Left = 312
    Top = 193
  end
  object tParametros: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Terminal'
        ParamType = ptInput
      end>
    ProviderName = 'prParametros'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 216
    Top = 5
    object tParametrosTerminal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Terminal'
      Size = 50
    end
    object tParametrosCuenta_Capital: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cuenta_Capital'
      Size = 25
    end
    object tParametrosCuenta_Utilidades: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cuenta_Utilidades'
      Size = 25
    end
  end
  object dParametros: TDataSource
    DataSet = tParametros
    Left = 312
    Top = 5
  end
end
