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
    Top = 62
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
      FieldName = 'Principal'
      Origin = '"Cuentas"."Principal"'
      Size = 25
    end
    object qrCuentasControl: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Control'
      Origin = '"Cuentas"."Control"'
      Size = 25
    end
    object qrCuentasSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Cuentas"."Secuencia"'
    end
    object qrCuentasDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Cuentas"."Descripcion"'
      Size = 100
    end
    object qrCuentasOrigen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Origen'
      Origin = '"Cuentas"."Origen"'
      Size = 25
    end
    object qrCuentasTotal_Debitos: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Debitos'
      Origin = '"Cuentas"."Total_Debitos"'
      Precision = 18
      Size = 2
    end
    object qrCuentasTotal_Creditos: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Creditos'
      Origin = '"Cuentas"."Total_Creditos"'
      Precision = 18
      Size = 2
    end
    object qrCuentasBalance: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Origin = '"Cuentas"."Balance"'
      Precision = 18
      Size = 2
    end
  end
  object prCuentas: TDataSetProvider
    DataSet = qrCuentas
    Options = [poIncFieldProps, poCascadeDeletes, poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 126
    Top = 62
  end
  object qrListado_Cuentas: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Cuentas"'
      'Order By "Numero", "Descripcion"')
    UniDirectional = True
    Left = 40
    Top = 126
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
      Precision = 18
      Size = 2
    end
    object qrListado_CuentasTotal_Creditos: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Creditos'
      Origin = '"Cuentas"."Total_Creditos"'
      Precision = 18
      Size = 2
    end
    object qrListado_CuentasBalance: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Origin = '"Cuentas"."Balance"'
      Precision = 18
      Size = 2
    end
  end
  object prListado_Cuentas: TDataSetProvider
    DataSet = qrListado_Cuentas
    Options = [poIncFieldProps, poCascadeDeletes, poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 126
    Top = 126
  end
  object qrTransacciones: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Transacciones"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 40
    Top = 190
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrTransaccionesNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Transacciones"."Numero"'
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
      FieldName = 'Referencia'
      Origin = '"Transacciones"."Referencia"'
      Size = 25
    end
    object qrTransaccionesStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Transacciones"."Status"'
      Size = 15
    end
    object qrTransaccionesTotal_Debitos: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Debitos'
      Origin = '"Transacciones"."Total_Debitos"'
      Precision = 18
      Size = 2
    end
    object qrTransaccionesTotal_Creditos: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Creditos'
      Origin = '"Transacciones"."Total_Creditos"'
      Precision = 18
      Size = 2
    end
  end
  object prTransacciones: TDataSetProvider
    DataSet = qrTransacciones
    Options = [poIncFieldProps, poCascadeDeletes, poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 126
    Top = 190
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
    Top = 246
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
      Precision = 18
      Size = 2
    end
    object qrDetalle_TransaccionesCredito: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Credito'
      Origin = '"Detalle_Transacciones"."Credito"'
      Precision = 18
      Size = 2
    end
  end
  object lnkTransacciones: TDataSource
    DataSet = qrTransacciones
    Left = 128
    Top = 246
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
    Top = 294
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
      Precision = 18
      Size = 2
    end
    object qrPrincipalesTotal_Creditos: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Creditos'
      Origin = '"Cuentas"."Total_Creditos"'
      Precision = 18
      Size = 2
    end
    object qrPrincipalesBalance: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Origin = '"Cuentas"."Balance"'
      Precision = 18
      Size = 2
    end
  end
  object prPrincipales: TDataSetProvider
    DataSet = qrPrincipales
    Options = [poIncFieldProps, poCascadeDeletes, poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 126
    Top = 294
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
    Top = 342
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
      Precision = 18
      Size = 2
    end
    object qrControlesTotal_Creditos: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Creditos'
      Origin = '"Cuentas"."Total_Creditos"'
      Precision = 18
      Size = 2
    end
    object qrControlesBalance: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Origin = '"Cuentas"."Balance"'
      Precision = 18
      Size = 2
    end
  end
  object prControles: TDataSetProvider
    DataSet = qrControles
    Options = [poIncFieldProps, poCascadeDeletes, poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 126
    Top = 342
  end
  object qrAuxiliares: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Cuentas"'
      'Where "Tipo" = '#39'Auxiliar'#39
      'Order By "Numero", "Descripcion"')
    UniDirectional = True
    Left = 40
    Top = 390
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
      Precision = 18
      Size = 2
    end
    object qrAuxiliaresTotal_Creditos: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Creditos'
      Origin = '"Cuentas"."Total_Creditos"'
      Precision = 18
      Size = 2
    end
    object qrAuxiliaresBalance: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Origin = '"Cuentas"."Balance"'
      Precision = 18
      Size = 2
    end
  end
  object prAuxiliares: TDataSetProvider
    DataSet = qrAuxiliares
    Options = [poIncFieldProps, poCascadeDeletes, poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 126
    Top = 390
  end
end
