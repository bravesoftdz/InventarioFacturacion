object RemoteModule: TRemoteModule
  OldCreateOrder = False
  OnCreate = RemoteDataModuleCreate
  Height = 750
  Width = 1023
  object InfoDataBase: TIBDatabase
    DatabaseName = 'C:\Development\Database\Interbase\Accounting\ACCOUNTING.RMS'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'sql_role_name=Admin')
    LoginPrompt = False
    DefaultTransaction = InfoTransaction
    Left = 40
    Top = 8
  end
  object InfoTransaction: TIBTransaction
    DefaultDatabase = InfoDataBase
    IdleTimer = 300
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saCommit
    Left = 126
    Top = 8
  end
  object SrchQ: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    UniDirectional = True
    Left = 212
    Top = 8
  end
  object SrchPr: TDataSetProvider
    DataSet = SrchQ
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 299
    Top = 8
  end
  object qrReporter: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    UniDirectional = True
    Left = 385
    Top = 8
  end
  object prReporter: TDataSetProvider
    DataSet = qrReporter
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 472
    Top = 8
  end
  object qrCuentas: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Cuentas"'
      'Where "Numero" = :Numero')
    UniDirectional = True
    Left = 40
    Top = 59
    ParamData = <
      item
        DataType = ftString
        Name = 'Numero'
        ParamType = ptInput
      end>
    object qrCuentasTipo: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Auxiliar'#39
      FieldName = 'Tipo'
      Origin = '"Cuentas"."Tipo"'
      Size = 25
    end
    object qrCuentasNumero: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Cuentas"."Numero"'
      Size = 25
    end
    object qrCuentasPrincipal: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Principal'
      Origin = '"Cuentas"."Principal"'
      Size = 25
    end
    object qrCuentasControl: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Control'
      Origin = '"Cuentas"."Control"'
      Size = 25
    end
    object qrCuentasSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Secuencia'
      Origin = '"Cuentas"."Secuencia"'
      DisplayFormat = '00000'
    end
    object qrCuentasDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe escribir una descripci'#243'n para la Cuenta'
      FieldName = 'Descripcion'
      Origin = '"Cuentas"."Descripcion"'
      Size = 100
    end
    object qrCuentasOrigen: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Acitivos'#39
      FieldName = 'Origen'
      Origin = '"Cuentas"."Origen"'
      Size = 25
    end
    object qrCuentasTotal_Debitos: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Debitos'
      Origin = '"Cuentas"."Total_Debitos"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrCuentasTotal_Creditos: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Creditos'
      Origin = '"Cuentas"."Total_Creditos"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrCuentasBalance: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Balance'
      Origin = '"Cuentas"."Balance"'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object prCuentas: TDataSetProvider
    DataSet = qrCuentas
    Options = [poIncFieldProps, poCascadeDeletes, poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 126
    Top = 59
  end
  object qrListado_Cuentas: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Cuentas"'
      'Order By "Numero", "Descripcion"')
    UniDirectional = True
    Left = 40
    Top = 111
    object qrListado_CuentasTipo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo'
      Origin = '"Cuentas"."Tipo"'
      Size = 25
    end
    object qrListado_CuentasNumero: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Cuentas"."Numero"'
      Size = 25
    end
    object qrListado_CuentasPrincipal: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Principal'
      Origin = '"Cuentas"."Principal"'
      Size = 25
    end
    object qrListado_CuentasControl: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Control'
      Origin = '"Cuentas"."Control"'
      Size = 25
    end
    object qrListado_CuentasSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Cuentas"."Secuencia"'
      DisplayFormat = '00000'
    end
    object qrListado_CuentasDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Cuentas"."Descripcion"'
      Size = 100
    end
    object qrListado_CuentasOrigen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Origen'
      Origin = '"Cuentas"."Origen"'
      Size = 25
    end
    object qrListado_CuentasTotal_Debitos: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Debitos'
      Origin = '"Cuentas"."Total_Debitos"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrListado_CuentasTotal_Creditos: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Creditos'
      Origin = '"Cuentas"."Total_Creditos"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrListado_CuentasBalance: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Origin = '"Cuentas"."Balance"'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object prListado_Cuentas: TDataSetProvider
    DataSet = qrListado_Cuentas
    Options = [poIncFieldProps, poCascadeDeletes, poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 126
    Top = 111
  end
  object qrTransacciones: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Transacciones"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 40
    Top = 162
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrTransaccionesNumero: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero'
      Origin = '"Transacciones"."Numero"'
      DisplayFormat = #39'Tr-'#39'0000000000'
    end
    object qrTransaccionesProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Transacciones"."Proceso"'
      Size = 25
    end
    object qrTransaccionesFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Transacciones"."Fecha"'
    end
    object qrTransaccionesHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Transacciones"."Hora"'
    end
    object qrTransaccionesDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Transacciones"."Descripcion"'
      Size = 100
    end
    object qrTransaccionesReferencia: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Referencia'
      Origin = '"Transacciones"."Referencia"'
      Size = 25
    end
    object qrTransaccionesStatus: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'ACTIVO'#39
      FieldName = 'Status'
      Origin = '"Transacciones"."Status"'
      Size = 15
    end
    object qrTransaccionesTotal_Debitos: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Debitos'
      Origin = '"Transacciones"."Total_Debitos"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrTransaccionesTotal_Creditos: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Creditos'
      Origin = '"Transacciones"."Total_Creditos"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrTransaccionesComentario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario'
      Origin = '"Transacciones"."Comentario"'
      Size = 255
    end
    object qrTransaccionesRegistrado: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Registrado'
      Origin = '"Transacciones"."Registrado"'
    end
    object qrTransaccionesUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Transacciones"."Usuario"'
      Size = 100
    end
  end
  object prTransacciones: TDataSetProvider
    DataSet = qrTransacciones
    Options = [poIncFieldProps, poCascadeDeletes, poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 126
    Top = 162
  end
  object qrDetalle_Transacciones: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkTransacciones
    SQL.Strings = (
      'Select  * From "Detalle_Transacciones"'
      'Where "Proceso" = :Proceso'
      'Order By "Secuencia"')
    UniDirectional = True
    Left = 40
    Top = 214
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrDetalle_TransaccionesProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalle_Transacciones"."Proceso"'
      Size = 25
    end
    object qrDetalle_TransaccionesSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Detalle_Transacciones"."Secuencia"'
    end
    object qrDetalle_TransaccionesCuenta: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe seleccionar un n'#250'mero de cuenta'
      FieldName = 'Cuenta'
      Origin = '"Detalle_Transacciones"."Cuenta"'
      Size = 25
    end
    object qrDetalle_TransaccionesPrincipal: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Principal'
      Origin = '"Detalle_Transacciones"."Principal"'
      Size = 25
    end
    object qrDetalle_TransaccionesControl: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Control'
      Origin = '"Detalle_Transacciones"."Control"'
      Size = 25
    end
    object qrDetalle_TransaccionesFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Detalle_Transacciones"."Fecha"'
    end
    object qrDetalle_TransaccionesHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Detalle_Transacciones"."Hora"'
    end
    object qrDetalle_TransaccionesNombre_Cuenta: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Cuenta'
      Origin = '"Detalle_Transacciones"."Nombre_Cuenta"'
      Size = 100
    end
    object qrDetalle_TransaccionesDebito: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Debito'
      Origin = '"Detalle_Transacciones"."Debito"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrDetalle_TransaccionesCredito: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Credito'
      Origin = '"Detalle_Transacciones"."Credito"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrDetalle_TransaccionesRegistro: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Registro'
      Origin = '"Detalle_Transacciones"."Registro"'
    end
    object qrDetalle_TransaccionesOrigen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Origen'
      Origin = '"Detalle_Transacciones"."Origen"'
      Size = 25
    end
  end
  object lnkTransacciones: TDataSource
    DataSet = qrTransacciones
    Left = 126
    Top = 214
  end
  object qrPrincipales: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Cuentas"'
      'Where "Tipo" = '#39'Principal'#39
      'Order By "Numero", "Descripcion"')
    UniDirectional = True
    Left = 40
    Top = 265
    object qrPrincipalesTipo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo'
      Origin = '"Cuentas"."Tipo"'
      Size = 25
    end
    object qrPrincipalesNumero: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Cuentas"."Numero"'
      Size = 25
    end
    object qrPrincipalesPrincipal: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Principal'
      Origin = '"Cuentas"."Principal"'
      Size = 25
    end
    object qrPrincipalesControl: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Control'
      Origin = '"Cuentas"."Control"'
      Size = 25
    end
    object qrPrincipalesSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Cuentas"."Secuencia"'
      DisplayFormat = '00000'
    end
    object qrPrincipalesDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Cuentas"."Descripcion"'
      Size = 100
    end
    object qrPrincipalesOrigen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Origen'
      Origin = '"Cuentas"."Origen"'
      Size = 25
    end
    object qrPrincipalesTotal_Debitos: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Debitos'
      Origin = '"Cuentas"."Total_Debitos"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrPrincipalesTotal_Creditos: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Creditos'
      Origin = '"Cuentas"."Total_Creditos"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrPrincipalesBalance: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Origin = '"Cuentas"."Balance"'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object prPrincipales: TDataSetProvider
    DataSet = qrPrincipales
    Options = [poIncFieldProps, poCascadeDeletes, poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 126
    Top = 265
  end
  object qrControles: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Cuentas"'
      'Where "Tipo" = '#39'Control'#39
      'Order By "Numero", "Descripcion"')
    UniDirectional = True
    Left = 40
    Top = 317
    object qrControlesTipo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo'
      Origin = '"Cuentas"."Tipo"'
      Size = 25
    end
    object qrControlesNumero: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Cuentas"."Numero"'
      Size = 25
    end
    object qrControlesPrincipal: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Principal'
      Origin = '"Cuentas"."Principal"'
      Size = 25
    end
    object qrControlesControl: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Control'
      Origin = '"Cuentas"."Control"'
      Size = 25
    end
    object qrControlesSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Cuentas"."Secuencia"'
      DisplayFormat = '00000'
    end
    object qrControlesDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Cuentas"."Descripcion"'
      Size = 100
    end
    object qrControlesOrigen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Origen'
      Origin = '"Cuentas"."Origen"'
      Size = 25
    end
    object qrControlesTotal_Debitos: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Debitos'
      Origin = '"Cuentas"."Total_Debitos"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrControlesTotal_Creditos: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Creditos'
      Origin = '"Cuentas"."Total_Creditos"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrControlesBalance: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Origin = '"Cuentas"."Balance"'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object prControles: TDataSetProvider
    DataSet = qrControles
    Options = [poIncFieldProps, poCascadeDeletes, poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 126
    Top = 317
  end
  object qrAuxiliares: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Cuentas"'
      'Where "Tipo" = '#39'Auxiliar'#39
      'Order By "Descripcion"')
    UniDirectional = True
    Left = 40
    Top = 369
    object qrAuxiliaresTipo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo'
      Origin = '"Cuentas"."Tipo"'
      Size = 25
    end
    object qrAuxiliaresNumero: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Cuentas"."Numero"'
      Size = 25
    end
    object qrAuxiliaresPrincipal: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Principal'
      Origin = '"Cuentas"."Principal"'
      Size = 25
    end
    object qrAuxiliaresControl: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Control'
      Origin = '"Cuentas"."Control"'
      Size = 25
    end
    object qrAuxiliaresSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Cuentas"."Secuencia"'
      DisplayFormat = '00000'
    end
    object qrAuxiliaresDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Cuentas"."Descripcion"'
      Size = 100
    end
    object qrAuxiliaresOrigen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Origen'
      Origin = '"Cuentas"."Origen"'
      Size = 25
    end
    object qrAuxiliaresTotal_Debitos: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Debitos'
      Origin = '"Cuentas"."Total_Debitos"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrAuxiliaresTotal_Creditos: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Creditos'
      Origin = '"Cuentas"."Total_Creditos"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrAuxiliaresBalance: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Origin = '"Cuentas"."Balance"'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object prAuxiliares: TDataSetProvider
    DataSet = qrAuxiliares
    Options = [poIncFieldProps, poCascadeDeletes, poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 126
    Top = 369
  end
  object qrEstado_Situacion: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select Distinct "Control",'
      '                       "Origen",'
      '                       "Principal",'
      '                       Sum("Debito") "Total_Debitos",'
      '                       Sum("Credito") "Total_Creditos"'
      ''
      'From "Detalle_Transacciones"'
      ''
      'Where (("Origen" = '#39'Activos'#39') Or'
      '             ("Origen" = '#39'Pasivos'#39') Or'
      '             ("Origen" = '#39'Capital'#39'))'
      ''
      'And     ("Fecha" Between :Fecha_Inicio And :Fecha_Fin)'
      ''
      'Group By "Control",'
      '         "Origen",'
      '         "Principal"'
      ''
      'Order By "Control",'
      '         "Origen",'
      '         "Principal"'
      '')
    UniDirectional = True
    Left = 385
    Top = 59
    ParamData = <
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
    object qrEstado_SituacionControl: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Control'
      ProviderFlags = []
      Size = 25
    end
    object qrEstado_SituacionOrigen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Origen'
      ProviderFlags = []
      Size = 25
    end
    object qrEstado_SituacionPrincipal: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Principal'
      ProviderFlags = []
      Size = 25
    end
    object qrEstado_SituacionTotal_Debitos: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Debitos'
      ProviderFlags = []
      currency = True
      Precision = 18
      Size = 2
    end
    object qrEstado_SituacionTotal_Creditos: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Creditos'
      ProviderFlags = []
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object prEstado_Situacion: TDataSetProvider
    DataSet = qrEstado_Situacion
    Options = [poIncFieldProps, poCascadeDeletes, poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 472
    Top = 59
  end
  object qrEstado_Ingresos_Gastos: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select Distinct "Control",'
      '                       "Origen",'
      '                       "Principal",'
      '                       Sum("Debito") "Total_Debitos",'
      '                       Sum("Credito") "Total_Creditos"'
      ''
      'From "Detalle_Transacciones"'
      ''
      'Where (("Origen" = '#39'Ingresos'#39') Or'
      '             ("Origen" = '#39'Gastos'#39'))'
      ''
      'And     ("Fecha" Between :Fecha_Inicio And :Fecha_Fin)'
      ''
      'Group By "Control",'
      '         "Origen",'
      '         "Principal"'
      ''
      'Order By "Control",'
      '         "Origen",'
      '         "Principal"'
      '')
    UniDirectional = True
    Left = 385
    Top = 111
    ParamData = <
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
    object qrEstado_Ingresos_GastosControl: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Control'
      ProviderFlags = []
      Size = 25
    end
    object qrEstado_Ingresos_GastosOrigen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Origen'
      ProviderFlags = []
      Size = 25
    end
    object qrEstado_Ingresos_GastosPrincipal: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Principal'
      ProviderFlags = []
      Size = 25
    end
    object qrEstado_Ingresos_GastosTotal_Debitos: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Debitos'
      ProviderFlags = []
      currency = True
      Precision = 18
      Size = 2
    end
    object qrEstado_Ingresos_GastosTotal_Creditos: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Creditos'
      ProviderFlags = []
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object prEstado_Ingresos_Gastos: TDataSetProvider
    DataSet = qrEstado_Ingresos_Gastos
    Options = [poIncFieldProps, poCascadeDeletes, poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 472
    Top = 111
  end
  object qrBalanza_Comprobacion: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select Distinct "Cuenta",'
      '                       "Nombre_Cuenta",'
      '                       "Origen",'
      '                       "Principal",'
      '                       "Control",'
      '                       Sum("Debito") "Total_Debitos",'
      '                       Sum("Credito") "Total_Creditos"'
      ''
      'From "Detalle_Transacciones"'
      ''
      'Where ("Fecha" Between :Fecha_Inicio And :Fecha_Fin)'
      ''
      'Group By "Cuenta",'
      '                "Nombre_Cuenta",  '
      '                "Origen",'
      '                "Principal",'
      '                "Control"'
      ''
      'Order By "Cuenta",'
      '                "Nombre_Cuenta",  '
      '                "Origen",'
      '                "Principal",'
      '                "Control"')
    UniDirectional = True
    Left = 385
    Top = 162
    ParamData = <
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
    object qrBalanza_ComprobacionCuenta: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cuenta'
      ProviderFlags = []
      Size = 25
    end
    object qrBalanza_ComprobacionNombre_Cuenta: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Cuenta'
      ProviderFlags = []
      Size = 100
    end
    object qrBalanza_ComprobacionOrigen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Origen'
      ProviderFlags = []
      Size = 25
    end
    object qrBalanza_ComprobacionPrincipal: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Principal'
      ProviderFlags = []
      Size = 25
    end
    object qrBalanza_ComprobacionControl: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Control'
      ProviderFlags = []
      Size = 25
    end
    object qrBalanza_ComprobacionTotal_Debitos: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Debitos'
      ProviderFlags = []
      currency = True
      Precision = 18
      Size = 2
    end
    object qrBalanza_ComprobacionTotal_Creditos: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Creditos'
      ProviderFlags = []
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object prBalanza_Comprobacion: TDataSetProvider
    DataSet = qrBalanza_Comprobacion
    Options = [poIncFieldProps, poCascadeDeletes, poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 472
    Top = 162
  end
  object qrMayor: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select * From "Detalle_Transacciones"'
      'Where  (("Cuenta" = :Numero_Cuenta) Or'
      '              ("Control" = :Control) Or'
      '              ("Principal" = :Principal))'
      ' '
      'And     ("Fecha" Between :Fecha_Inicio And :Fecha_Fin)')
    UniDirectional = True
    Left = 385
    Top = 210
    ParamData = <
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
    object qrMayorProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalle_Transacciones"."Proceso"'
      Size = 25
    end
    object qrMayorSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Detalle_Transacciones"."Secuencia"'
    end
    object qrMayorCuenta: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cuenta'
      Origin = '"Detalle_Transacciones"."Cuenta"'
      Size = 25
    end
    object qrMayorPrincipal: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Principal'
      Origin = '"Detalle_Transacciones"."Principal"'
      Size = 25
    end
    object qrMayorControl: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Control'
      Origin = '"Detalle_Transacciones"."Control"'
      Size = 25
    end
    object qrMayorFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Detalle_Transacciones"."Fecha"'
    end
    object qrMayorHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Detalle_Transacciones"."Hora"'
    end
    object qrMayorNombre_Cuenta: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Cuenta'
      Origin = '"Detalle_Transacciones"."Nombre_Cuenta"'
      Size = 100
    end
    object qrMayorDebito: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Debito'
      Origin = '"Detalle_Transacciones"."Debito"'
      Precision = 18
      Size = 2
    end
    object qrMayorCredito: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Credito'
      Origin = '"Detalle_Transacciones"."Credito"'
      Precision = 18
      Size = 2
    end
    object qrMayorRegistro: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Registro'
      Origin = '"Detalle_Transacciones"."Registro"'
    end
    object qrMayorOrigen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Origen'
      Origin = '"Detalle_Transacciones"."Origen"'
      Size = 25
    end
  end
  object prMayor: TDataSetProvider
    DataSet = qrMayor
    Options = [poIncFieldProps, poCascadeDeletes, poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 472
    Top = 210
  end
  object qrListado_Transacciones: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select * From "Transacciones"'
      'Where  ("Fecha" Between :Fecha_Inicio And :Fecha_Fin)')
    UniDirectional = True
    Left = 385
    Top = 258
    ParamData = <
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
    object qrListado_TransaccionesNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Transacciones"."Numero"'
    end
    object qrListado_TransaccionesProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Transacciones"."Proceso"'
      Size = 25
    end
    object qrListado_TransaccionesFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Transacciones"."Fecha"'
    end
    object qrListado_TransaccionesHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Transacciones"."Hora"'
    end
    object qrListado_TransaccionesDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Transacciones"."Descripcion"'
      Size = 100
    end
    object qrListado_TransaccionesReferencia: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Referencia'
      Origin = '"Transacciones"."Referencia"'
      Size = 25
    end
    object qrListado_TransaccionesStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Transacciones"."Status"'
      Size = 15
    end
    object qrListado_TransaccionesTotal_Debitos: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Debitos'
      Origin = '"Transacciones"."Total_Debitos"'
      Precision = 18
      Size = 2
    end
    object qrListado_TransaccionesTotal_Creditos: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Creditos'
      Origin = '"Transacciones"."Total_Creditos"'
      Precision = 18
      Size = 2
    end
    object qrListado_TransaccionesComentario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario'
      Origin = '"Transacciones"."Comentario"'
      Size = 255
    end
    object qrListado_TransaccionesRegistrado: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Registrado'
      Origin = '"Transacciones"."Registrado"'
    end
    object qrListado_TransaccionesUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Transacciones"."Usuario"'
      Size = 100
    end
  end
  object prListado_Transacciones: TDataSetProvider
    DataSet = qrListado_Transacciones
    Options = [poIncFieldProps, poCascadeDeletes, poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 472
    Top = 258
  end
  object qrIngresos: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select Sum("Debito") "Total_Debitos",'
      '          Sum("Credito") "Total_Creditos" '
      ''
      'From "Detalle_Transacciones"'
      ''
      'Where  ("Origen" = '#39'Ingresos'#39')  '
      'And      ("Fecha" Between :Fecha_Inicio And :Fecha_Fin)')
    UniDirectional = True
    Left = 385
    Top = 306
    ParamData = <
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
    object qrIngresosTotal_Debitos: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Debitos'
      ProviderFlags = []
      currency = True
      Precision = 18
      Size = 2
    end
    object qrIngresosTotal_Creditos: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Creditos'
      ProviderFlags = []
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object prIngresos: TDataSetProvider
    DataSet = qrIngresos
    Options = [poIncFieldProps, poCascadeDeletes, poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 472
    Top = 306
  end
  object qrGastos: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select Sum("Debito") "Total_Debitos",'
      '          Sum("Credito") "Total_Creditos" '
      ''
      'From "Detalle_Transacciones"'
      ''
      'Where  ("Origen" = '#39'Gastos'#39')  '
      'And      ("Fecha" Between :Fecha_Inicio And :Fecha_Fin)')
    UniDirectional = True
    Left = 385
    Top = 362
    ParamData = <
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
    object qrGastosTotal_Debitos: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Debitos'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object qrGastosTotal_Creditos: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Creditos'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
  end
  object prGastos: TDataSetProvider
    DataSet = qrGastos
    Options = [poIncFieldProps, poCascadeDeletes, poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 472
    Top = 362
  end
  object qrParametros: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select * From "Parametros"'
      'Where  ("Terminal" = :Terminal)')
    UniDirectional = True
    Left = 385
    Top = 413
    ParamData = <
      item
        DataType = ftString
        Name = 'Terminal'
        ParamType = ptInput
      end>
    object qrParametrosTerminal: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Terminal'
      Origin = '"Parametros"."Terminal"'
      Size = 50
    end
    object qrParametrosCuenta_Capital: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cuenta_Capital'
      Origin = '"Parametros"."Cuenta_Capital"'
      Size = 25
    end
    object qrParametrosCuenta_Utilidades: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cuenta_Utilidades'
      Origin = '"Parametros"."Cuenta_Utilidades"'
      Size = 25
    end
  end
  object prParametros: TDataSetProvider
    DataSet = qrParametros
    Options = [poIncFieldProps, poCascadeDeletes, poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 472
    Top = 413
  end
end
