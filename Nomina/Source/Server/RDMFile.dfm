object RemoteModule: TRemoteModule
  OldCreateOrder = False
  OnCreate = RemoteDataModuleCreate
  Height = 750
  Width = 1023
  object InfoDataBase: TIBDatabase
    DatabaseName = 'C:\Development\Database\Interbase\PayRoll\PAYROLL.RMS'
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
    Left = 401
    Top = 8
  end
  object prReporter: TDataSetProvider
    DataSet = qrReporter
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 488
    Top = 8
  end
  object qrParametros: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select * From "Parametros"'
      'Where  ("Terminal" = :Terminal)')
    UniDirectional = True
    Left = 401
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
    Left = 488
    Top = 413
  end
  object qrEmpleados: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Empleados"'
      'Where "Cedula_Rnc_Pasaporte" = :Cedula_Rnc_Pasaporte'
      'Order By "Nombre", "Apellido"')
    UniDirectional = True
    Left = 40
    Top = 59
    ParamData = <
      item
        DataType = ftString
        Name = 'Cedula_RNC_Pasaporte'
        ParamType = ptInput
      end>
    object qrEmpleadosCedula_Rnc_Pasaporte: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 
        'Debe introducir el numero de documento de identificaci'#243'n del emp' +
        'leado (C'#233'dula / Pasaporte  / Ficha / Otros)'
      FieldName = 'Cedula_Rnc_Pasaporte'
      Origin = '"Empleados"."Cedula_Rnc_Pasaporte"'
      EditMask = '>aaaaaaaaaaaaaaaaaaaaaaaaa;1; '
      Size = 25
    end
    object qrEmpleadosTipo_Documento: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'C'#233'dula'#39
      FieldName = 'Tipo_Documento'
      Origin = '"Empleados"."Tipo_Documento"'
      Size = 25
    end
    object qrEmpleadosSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Secuencia'
      Origin = '"Empleados"."Secuencia"'
      DisplayFormat = #39'EMP-'#39'0000000'
    end
    object qrEmpleadosNombre: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir el nombre del empleado'
      FieldName = 'Nombre'
      Origin = '"Empleados"."Nombre"'
      Size = 100
    end
    object qrEmpleadosApellido: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir el apellido del empleado'
      FieldName = 'Apellido'
      Origin = '"Empleados"."Apellido"'
      Size = 100
    end
    object qrEmpleadosNacionalidad: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Dominicano'#39
      FieldName = 'Nacionalidad'
      Origin = '"Empleados"."Nacionalidad"'
      Size = 25
    end
    object qrEmpleadosSexo: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Masculino'#39
      FieldName = 'Sexo'
      Origin = '"Empleados"."Sexo"'
      Size = 25
    end
    object qrEmpleadosTipo_Telefono_1: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Tel'#233'fono'#39
      FieldName = 'Tipo_Telefono_1'
      Origin = '"Empleados"."Tipo_Telefono_1"'
    end
    object qrEmpleadosTipo_Telefono_2: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Celular'#39
      FieldName = 'Tipo_Telefono_2'
      Origin = '"Empleados"."Tipo_Telefono_2"'
    end
    object qrEmpleadosTipo_Telefono_3: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Beeper'#39
      FieldName = 'Tipo_Telefono_3'
      Origin = '"Empleados"."Tipo_Telefono_3"'
    end
    object qrEmpleadosTipo_Telefono_4: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Otro'#39
      FieldName = 'Tipo_Telefono_4'
      Origin = '"Empleados"."Tipo_Telefono_4"'
    end
    object qrEmpleadosNumero_Telefono_1: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'(809) '#39
      FieldName = 'Numero_Telefono_1'
      Origin = '"Empleados"."Numero_Telefono_1"'
      EditMask = '!\(999\) 000-0000;1; '
    end
    object qrEmpleadosNumero_Telefono_2: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'(809) '#39
      FieldName = 'Numero_Telefono_2'
      Origin = '"Empleados"."Numero_Telefono_2"'
      EditMask = '!\(999\) 000-0000;1; '
    end
    object qrEmpleadosNumero_Telefono_3: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'(809) '#39
      FieldName = 'Numero_Telefono_3'
      Origin = '"Empleados"."Numero_Telefono_3"'
      EditMask = '!\(999\) 000-0000;1; '
    end
    object qrEmpleadosNumero_Telefono_4: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'(809) '#39
      FieldName = 'Numero_Telefono_4'
      Origin = '"Empleados"."Numero_Telefono_4"'
      EditMask = '!\(999\) 000-0000;1; '
    end
    object qrEmpleadosDireccion: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Direccion'
      Origin = '"Empleados"."Direccion"'
      Size = 255
    end
    object qrEmpleadosPais: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Pais'
      Origin = '"Empleados"."Pais"'
      Size = 100
    end
    object qrEmpleadosCiudad: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Ciudad'
      Origin = '"Empleados"."Ciudad"'
      Size = 100
    end
    object qrEmpleadosSector: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Sector'
      Origin = '"Empleados"."Sector"'
      Size = 100
    end
    object qrEmpleadosNombreCompleto: TIBStringField
      AutoGenerateValue = arDefault
      FieldKind = fkInternalCalc
      FieldName = 'NombreCompleto'
      Origin = '"Empleados"."NombreCompleto"'
      ProviderFlags = []
      ReadOnly = True
      Size = 201
    end
    object qrEmpleadosNumero_Tarjeta: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Numero_Tarjeta'
      Origin = '"Empleados"."Numero_Tarjeta"'
      Size = 25
    end
    object qrEmpleadosNumero_Cuenta: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Numero_Cuenta'
      Origin = '"Empleados"."Numero_Cuenta"'
      Size = 25
    end
    object qrEmpleadosRegistrado_En_Fecha: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Registrado_En_Fecha'
      Origin = '"Empleados"."Registrado_En_Fecha"'
    end
    object qrEmpleadosmail: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'mail'
      Origin = '"Empleados"."mail"'
      Size = 100
    end
    object qrEmpleadosFoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Foto'
      Origin = '"Empleados"."Foto"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qrEmpleadosFecha_Nacimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Nacimiento'
      Origin = '"Empleados"."Fecha_Nacimiento"'
    end
    object qrEmpleadosEstado_Civil: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Soltero(a)'#39
      FieldName = 'Estado_Civil'
      Origin = '"Empleados"."Estado_Civil"'
      Size = 15
    end
    object qrEmpleadosCodigo_Banco: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Codigo_Banco'
      Origin = '"Empleados"."Codigo_Banco"'
      Size = 25
    end
  end
  object prEmpleados: TDataSetProvider
    DataSet = qrEmpleados
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 126
    Top = 59
  end
  object qrInformacion_Laboral: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkEmpleados
    SQL.Strings = (
      'Select  * From  "Informacion_Laboral"'
      'Where "Cedula_Rnc_Pasaporte" = :Cedula_Rnc_Pasaporte'
      'Order By "Registrado_En_Fecha"')
    UniDirectional = True
    Left = 40
    Top = 108
    ParamData = <
      item
        DataType = ftString
        Name = 'Cedula_RNC_Pasaporte'
        ParamType = ptInput
      end>
    object qrInformacion_LaboralCedula_Rnc_Pasaporte: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cedula_Rnc_Pasaporte'
      Origin = '"Informacion_Laboral"."Cedula_Rnc_Pasaporte"'
      Size = 25
    end
    object qrInformacion_LaboralCompania: TIntegerField
      AutoGenerateValue = arDefault
      CustomConstraint = 'value > 0'
      ConstraintErrorMessage = 'Debe seleccionar la compa'#241#237'a'
      FieldName = 'Compania'
      Origin = '"Informacion_Laboral"."Compania"'
    end
    object qrInformacion_LaboralDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      CustomConstraint = 'value > 0'
      ConstraintErrorMessage = 'Debe seleccionar el departamento'
      FieldName = 'Departamento'
      Origin = '"Informacion_Laboral"."Departamento"'
    end
    object qrInformacion_LaboralCargo: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'value <> '#39#39
      ConstraintErrorMessage = 'Especifique el cargo del empleado'
      FieldName = 'Cargo'
      Origin = '"Informacion_Laboral"."Cargo"'
      Size = 100
    end
    object qrInformacion_LaboralSalario: TIBBCDField
      AutoGenerateValue = arDefault
      CustomConstraint = 'value > 0'
      ConstraintErrorMessage = 'especifique el salario del empleado'
      DefaultExpression = '0'
      FieldName = 'Salario'
      Origin = '"Informacion_Laboral"."Salario"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrInformacion_LaboralGrupo_Deducciones: TIntegerField
      AutoGenerateValue = arDefault
      CustomConstraint = 'value > 0'
      ConstraintErrorMessage = 'Debe seleccionar el grupo de nomina'
      FieldName = 'Grupo_Deducciones'
      Origin = '"Informacion_Laboral"."Grupo_Deducciones"'
    end
    object qrInformacion_LaboralTipo_Empleado: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Fijo'#39
      FieldName = 'Tipo_Empleado'
      Origin = '"Informacion_Laboral"."Tipo_Empleado"'
      Size = 15
    end
    object qrInformacion_LaboralStatus: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'ACTIVO'#39
      FieldName = 'Status'
      Origin = '"Informacion_Laboral"."Status"'
      Size = 15
    end
    object qrInformacion_LaboralRegistrado_En_Fecha: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Registrado_En_Fecha'
      Origin = '"Informacion_Laboral"."Registrado_En_Fecha"'
    end
    object qrInformacion_LaboralFecha_Inicio: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Inicio'
      Origin = '"Informacion_Laboral"."Fecha_Inicio"'
    end
    object qrInformacion_LaboralFecha_Salida: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Salida'
      Origin = '"Informacion_Laboral"."Fecha_Salida"'
    end
    object qrInformacion_LaboralTipo_Salario: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe seleccionar el tipo de salario'
      FieldName = 'Tipo_Salario'
      Origin = '"Informacion_Laboral"."Tipo_Salario"'
      Size = 15
    end
    object qrInformacion_LaboralPeriodo_Nomina: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe seleccionar el periodo'
      FieldName = 'Periodo_Nomina'
      Origin = '"Informacion_Laboral"."Periodo_Nomina"'
      Size = 25
    end
    object qrInformacion_LaboralForma_Cobro: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe seleccionar la forma de cobro'
      FieldName = 'Forma_Cobro'
      Origin = '"Informacion_Laboral"."Forma_Cobro"'
      Size = 15
    end
    object qrInformacion_LaboralUnidad_Organizativa: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Unidad_Organizativa'
      Origin = '"Informacion_Laboral"."Unidad_Organizativa"'
      Size = 25
    end
    object qrInformacion_LaboralSimbolo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Simbolo'
      Origin = '"Informacion_Laboral"."Simbolo"'
      Size = 25
    end
  end
  object lnkEmpleados: TDataSource
    DataSet = qrEmpleados
    Left = 126
    Top = 108
  end
  object qrDetalle_Empleado: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkEmpleados
    SQL.Strings = (
      'Select  * From  "Detalle_Empleado"'
      'Where "Cedula_Rnc_Pasaporte" = :Cedula_Rnc_Pasaporte'
      'Order By "Numero_Registro"')
    UniDirectional = True
    Left = 40
    Top = 156
    ParamData = <
      item
        DataType = ftString
        Name = 'Cedula_RNC_Pasaporte'
        ParamType = ptInput
      end>
    object qrDetalle_EmpleadoCedula_Rnc_Pasaporte: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cedula_Rnc_Pasaporte'
      Origin = '"Detalle_Empleado"."Cedula_Rnc_Pasaporte"'
      Size = 25
    end
    object qrDetalle_EmpleadoTipo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo'
      Origin = '"Detalle_Empleado"."Tipo"'
      Size = 25
    end
    object qrDetalle_EmpleadoNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Detalle_Empleado"."Numero"'
    end
    object qrDetalle_EmpleadoDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe especificar una descripcion para la deducci'#243'n'
      FieldName = 'Descripcion'
      Origin = '"Detalle_Empleado"."Descripcion"'
      Size = 100
    end
    object qrDetalle_EmpleadoTipo_Aplicacion: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Porcentual'#39
      FieldName = 'Tipo_Aplicacion'
      Origin = '"Detalle_Empleado"."Tipo_Aplicacion"'
      Size = 15
    end
    object qrDetalle_EmpleadoMonto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Monto'
      Origin = '"Detalle_Empleado"."Monto"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrDetalle_EmpleadoDeducir_De: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Deducir_De'
      Origin = '"Detalle_Empleado"."Deducir_De"'
      Size = 50
    end
    object qrDetalle_EmpleadoAplicable_A: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Aplicable_A'
      Origin = '"Detalle_Empleado"."Aplicable_A"'
      Size = 15
    end
    object qrDetalle_EmpleadoRango_Inicial: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Rango_Inicial'
      Origin = '"Detalle_Empleado"."Rango_Inicial"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrDetalle_EmpleadoRango_Final: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Rango_Final'
      Origin = '"Detalle_Empleado"."Rango_Final"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrDetalle_EmpleadoRegistrado_En_Fecha: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Registrado_En_Fecha'
      Origin = '"Detalle_Empleado"."Registrado_En_Fecha"'
    end
    object qrDetalle_EmpleadoUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Detalle_Empleado"."Usuario"'
      Size = 100
    end
  end
  object qrCompania: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Compania"'
      'Order By "Nombre_Compania"')
    UniDirectional = True
    Left = 40
    Top = 204
    object qrCompaniaNumero_Compania: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero_Compania'
      Origin = '"Compania"."Numero_Compania"'
      DisplayFormat = #39'CO-'#39'000000'
    end
    object qrCompaniaNombre_Compania: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir el nombre de la compa'#241#237'a'
      FieldName = 'Nombre_Compania'
      Origin = '"Compania"."Nombre_Compania"'
      Size = 100
    end
    object qrCompaniaRegistrado_En_Fecha: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Registrado_En_Fecha'
      Origin = '"Compania"."Registrado_En_Fecha"'
    end
    object qrCompaniaRNC: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'RNC'
      Origin = '"Compania"."RNC"'
      Size = 25
    end
    object qrCompaniaCuenta_Nomina: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cuenta_Nomina'
      Origin = '"Compania"."Cuenta_Nomina"'
      Size = 25
    end
  end
  object prCompania: TDataSetProvider
    DataSet = qrCompania
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 126
    Top = 204
  end
  object qrDepartamentos: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Departamentos"'
      'Order By "Descripcion"')
    UniDirectional = True
    Left = 40
    Top = 249
    object qrDepartamentosNumero: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero'
      Origin = '"Departamentos"."Numero"'
      DisplayFormat = #39'DEP-'#39'000000'
    end
    object qrDepartamentosDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir la descripci'#243'n del departamento'
      FieldName = 'Descripcion'
      Origin = '"Departamentos"."Descripcion"'
      Size = 100
    end
    object qrDepartamentosUsuario: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Usuario'
      Origin = '"Departamentos"."Usuario"'
      Size = 100
    end
    object qrDepartamentosCompania: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Compania'
      Origin = '"Departamentos"."Compania"'
    end
    object qrDepartamentosRegistrado_En_Fecha: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Registrado_En_Fecha'
      Origin = '"Departamentos"."Registrado_En_Fecha"'
    end
    object qrDepartamentosUnidad_Organizativa: TIBStringField
      FieldName = 'Unidad_Organizativa'
      Origin = '"Departamentos"."Unidad_Organizativa"'
      Size = 25
    end
    object qrDepartamentosSimbolo: TIBStringField
      FieldName = 'Simbolo'
      Origin = '"Departamentos"."Simbolo"'
      Size = 25
    end
    object qrDepartamentosCuenta_Nomina: TIBStringField
      FieldName = 'Cuenta_Nomina'
      Origin = '"Departamentos"."Cuenta_Nomina"'
      Size = 25
    end
    object qrDepartamentosBanco: TIBStringField
      FieldName = 'Banco'
      Origin = '"Departamentos"."Banco"'
      Size = 100
    end
  end
  object prDepartamentos: TDataSetProvider
    DataSet = qrDepartamentos
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 126
    Top = 249
  end
  object qrJornal_Diario: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select * From "Jornal_Diario" '
      'Where "Compania" = :Compania'
      'AND "Departamento" = :Departamento'
      'AND "Fecha" = :Fecha')
    UniDirectional = True
    Left = 40
    Top = 299
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Compania'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Departamento'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Fecha'
        ParamType = ptInput
      end>
    object qrJornal_DiarioCompania: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Compania'
      Origin = '"Jornal_Diario"."Compania"'
      DisplayFormat = #39'CO-'#39'000000'
    end
    object qrJornal_DiarioDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Departamento'
      Origin = '"Jornal_Diario"."Departamento"'
      DisplayFormat = #39'DEP-'#39'000000'
    end
    object qrJornal_DiarioFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Jornal_Diario"."Fecha"'
    end
    object qrJornal_DiarioRegistrado_En_Fecha: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Registrado_En_Fecha'
      Origin = '"Jornal_Diario"."Registrado_En_Fecha"'
    end
    object qrJornal_DiarioEmpleado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Empleado'
      Origin = '"Jornal_Diario"."Empleado"'
      Size = 25
    end
    object qrJornal_DiarioUsuario: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Usuario'
      Origin = '"Jornal_Diario"."Usuario"'
      Size = 100
    end
    object qrJornal_DiarioHoras: TSmallintField
      FieldName = 'Horas'
      Origin = '"Jornal_Diario"."Horas"'
      DisplayFormat = '00'
      EditFormat = '#0'
    end
    object qrJornal_DiarioHoras_Extraordinarias: TSmallintField
      FieldName = 'Horas_Extraordinarias'
      Origin = '"Jornal_Diario"."Horas_Extraordinarias"'
      DisplayFormat = '00'
      EditFormat = '#0'
    end
    object qrJornal_DiarioHoras_Extra: TSmallintField
      FieldName = 'Horas_Extra'
      Origin = '"Jornal_Diario"."Horas_Extra"'
      DisplayFormat = '00'
      EditFormat = '#0'
    end
  end
  object prJornal_Diario: TDataSetProvider
    DataSet = qrJornal_Diario
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 126
    Top = 299
  end
  object qrDeducciones: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Deducciones"'
      'Order By "Descripcion"')
    UniDirectional = True
    Left = 40
    Top = 349
    object qrDeduccionesNumero: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero'
      Origin = '"Deducciones"."Numero"'
      DisplayFormat = #39'DC-'#39'0000000'
    end
    object qrDeduccionesDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir una descripci'#243'n para la deducci'#243'n'
      FieldName = 'Descripcion'
      Origin = '"Deducciones"."Descripcion"'
      Size = 100
    end
    object qrDeduccionesTipo: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Porcentual'#39
      FieldName = 'Tipo'
      Origin = '"Deducciones"."Tipo"'
      Size = 15
    end
    object qrDeduccionesMonto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Monto'
      Origin = '"Deducciones"."Monto"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object qrDeduccionesDeducir_De: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Salario Bruto'#39
      FieldName = 'Deducir_De'
      Origin = '"Deducciones"."Deducir_De"'
      Size = 50
    end
    object qrDeduccionesAplicable_A: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Aplicable_A'
      Origin = '"Deducciones"."Aplicable_A"'
      Size = 15
    end
    object qrDeduccionesRango_Inicial: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Rango_Inicial'
      Origin = '"Deducciones"."Rango_Inicial"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrDeduccionesRango_Final: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Rango_Final'
      Origin = '"Deducciones"."Rango_Final"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrDeduccionesRegistrado_En_Fecha: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Registrado_En_Fecha'
      Origin = '"Deducciones"."Registrado_En_Fecha"'
    end
    object qrDeduccionesEntrada_En_Vigencia: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Entrada_En_Vigencia'
      Origin = '"Deducciones"."Entrada_En_Vigencia"'
    end
    object qrDeduccionesDescontinuado: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Descontinuado'
      Origin = '"Deducciones"."Descontinuado"'
    end
    object qrDeduccionesUsuario: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Usuario'
      Origin = '"Deducciones"."Usuario"'
      Size = 100
    end
  end
  object prDeducciones: TDataSetProvider
    DataSet = qrDeducciones
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 126
    Top = 349
  end
  object qrPagos_Incentivos: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Pagos_Incentivos"'
      'Order By "Descripcion"')
    UniDirectional = True
    Left = 40
    Top = 401
    object qrPagos_IncentivosNumero: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero'
      Origin = '"Pagos_Incentivos"."Numero"'
      DisplayFormat = #39'PG-'#39'0000000'
    end
    object qrPagos_IncentivosDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir una descripcion para el pago / incentivo'
      FieldName = 'Descripcion'
      Origin = '"Pagos_Incentivos"."Descripcion"'
      Size = 100
    end
    object qrPagos_IncentivosTipo: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Porcentual'#39
      FieldName = 'Tipo'
      Origin = '"Pagos_Incentivos"."Tipo"'
      Size = 15
    end
    object qrPagos_IncentivosMonto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto'
      Origin = '"Pagos_Incentivos"."Monto"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object qrPagos_IncentivosAplicar_A: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Aplicar_A'
      Origin = '"Pagos_Incentivos"."Aplicar_A"'
      Size = 50
    end
    object qrPagos_IncentivosRango_Inicial: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Rango_Inicial'
      Origin = '"Pagos_Incentivos"."Rango_Inicial"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrPagos_IncentivosRango_Final: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Rango_Final'
      Origin = '"Pagos_Incentivos"."Rango_Final"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrPagos_IncentivosRegistrado_En_Fecha: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Registrado_En_Fecha'
      Origin = '"Pagos_Incentivos"."Registrado_En_Fecha"'
    end
    object qrPagos_IncentivosEntrada_En_Vigencia: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Entrada_En_Vigencia'
      Origin = '"Pagos_Incentivos"."Entrada_En_Vigencia"'
    end
    object qrPagos_IncentivosDescontinuado: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Descontinuado'
      Origin = '"Pagos_Incentivos"."Descontinuado"'
    end
    object qrPagos_IncentivosUsuario: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Usuario'
      Origin = '"Pagos_Incentivos"."Usuario"'
      Size = 100
    end
  end
  object prPagos_Incentivos: TDataSetProvider
    DataSet = qrPagos_Incentivos
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 126
    Top = 401
  end
  object qrGrupo_Nomina: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Grupo_Nomina" '
      'Where ("Proceso" = :Proceso)'
      'Or ("Numero" = :Numero)')
    UniDirectional = True
    Left = 40
    Top = 457
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Numero'
        ParamType = ptInput
      end>
    object qrGrupo_NominaNumero: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero'
      Origin = '"Grupo_Nomina"."Numero"'
      DisplayFormat = #39'GN-'#39'0000000'
    end
    object qrGrupo_NominaDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = #39'Debe introducir una descripci'#243'n para el grupo de n'#243'mina'#39
      FieldName = 'Descripcion'
      Origin = '"Grupo_Nomina"."Descripcion"'
      Size = 100
    end
    object qrGrupo_NominaRegistrado_En_Fecha: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Registrado_En_Fecha'
      Origin = '"Grupo_Nomina"."Registrado_En_Fecha"'
    end
    object qrGrupo_NominaProceso: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Proceso'
      Origin = '"Grupo_Nomina"."Proceso"'
      Size = 25
    end
    object qrGrupo_NominaUsuario: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Usuario'
      Origin = '"Grupo_Nomina"."Usuario"'
      Size = 100
    end
    object qrGrupo_NominaStatus: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'ACTIVO'#39
      FieldName = 'Status'
      Origin = '"Grupo_Nomina"."Status"'
      Size = 15
    end
  end
  object prGrupo_Nomina: TDataSetProvider
    DataSet = qrGrupo_Nomina
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 126
    Top = 457
  end
  object qrDetalle_Grupo_Nomina: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkGrupo_Nomina
    SQL.Strings = (
      'Select  * From "Detalle_Grupo_Nomina"'
      'Where "Proceso" = :Proceso'
      'Order By "Tipo", "Descripcion"')
    UniDirectional = True
    Left = 40
    Top = 506
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrDetalle_Grupo_NominaProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalle_Grupo_Nomina"."Proceso"'
      Size = 25
    end
    object qrDetalle_Grupo_NominaTipo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo'
      Origin = '"Detalle_Grupo_Nomina"."Tipo"'
      Size = 25
    end
    object qrDetalle_Grupo_NominaNumero_Deducion_Pago: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Deducion_Pago'
      Origin = '"Detalle_Grupo_Nomina"."Numero_Deducion_Pago"'
    end
    object qrDetalle_Grupo_NominaDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Detalle_Grupo_Nomina"."Descripcion"'
      Size = 100
    end
  end
  object lnkGrupo_Nomina: TDataSource
    DataSet = qrGrupo_Nomina
    Left = 126
    Top = 506
  end
  object qrResumen_Detalle_Deducciones: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      
        'Select Distinct "Deduccion", Sum("Total_Deduccion") Total_Deducc' +
        'iones'
      'From "Detalle_Deducciones" '
      'Where "Proceso" = :Proceso '
      'group By "Deduccion"'
      'Order By "Deduccion"')
    UniDirectional = True
    Left = 40
    Top = 565
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrResumen_Detalle_DeduccionesDeduccion: TIntegerField
      FieldName = 'Deduccion'
      ProviderFlags = []
    end
    object qrResumen_Detalle_DeduccionesTOTAL_DEDUCCIONES: TIBBCDField
      FieldName = 'TOTAL_DEDUCCIONES'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
  end
  object prResumen_Detalle_Deducciones: TDataSetProvider
    DataSet = qrResumen_Detalle_Deducciones
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 126
    Top = 565
  end
  object qrSalarioEmpleado_Rango: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  '
      '           SUM("Salario_Bruto") "Total_Salario_Rango", '
      '           Count("Proceso") "Cantidad_Salarios" '
      'From "Detalle_Nomina" '
      'Where "Empleado" = :Empleado'
      'And "Fecha_Inicio" Between :Fecha_1 AND :Fecha_2')
    UniDirectional = True
    Left = 48
    Top = 619
    ParamData = <
      item
        DataType = ftString
        Name = 'Empleado'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Fecha_1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Fecha_2'
        ParamType = ptInput
      end>
    object qrSalarioEmpleado_RangoTotal_Salario_Rango: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Salario_Rango'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object qrSalarioEmpleado_RangoCantidad_Salarios: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad_Salarios'
      ProviderFlags = []
    end
  end
  object prSalarioEmpleado_Rango: TDataSetProvider
    DataSet = qrSalarioEmpleado_Rango
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 126
    Top = 619
  end
  object qrNomina: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Nomina"'
      
        'Where ("Proceso" = :Proceso) OR  ("Numero_Nomina"= :Numero_Nomin' +
        'a)')
    UniDirectional = True
    Left = 212
    Top = 61
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Numero_Nomina'
        ParamType = ptInput
      end>
    object qrNominaNumero_Nomina: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Nomina'
      Origin = '"Nomina"."Numero_Nomina"'
      DisplayFormat = #39'N-'#39'0000000000'
    end
    object qrNominaCompania: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Compania'
      Origin = '"Nomina"."Compania"'
    end
    object qrNominaDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Departamento'
      Origin = '"Nomina"."Departamento"'
    end
    object qrNominaPeriodo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Periodo'
      Origin = '"Nomina"."Periodo"'
      Size = 25
    end
    object qrNominaFecha_Nomina: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Nomina'
      Origin = '"Nomina"."Fecha_Nomina"'
    end
    object qrNominaFecha_Inicio: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Inicio'
      Origin = '"Nomina"."Fecha_Inicio"'
    end
    object qrNominaFecha_Final: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Final'
      Origin = '"Nomina"."Fecha_Final"'
    end
    object qrNominaFecha_Pago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Pago'
      Origin = '"Nomina"."Fecha_Pago"'
    end
    object qrNominaTipo_Nomina: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Nomina'
      Origin = '"Nomina"."Tipo_Nomina"'
      Size = 25
    end
    object qrNominaProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Nomina"."Proceso"'
      Size = 25
    end
    object qrNominaTotal_Bruto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Bruto'
      Origin = '"Nomina"."Total_Bruto"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrNominaTotal_Extra: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Extra'
      Origin = '"Nomina"."Total_Extra"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrNominaTotal_Extraordinarias: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Extraordinarias'
      Origin = '"Nomina"."Total_Extraordinarias"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrNominaTotal_Deducciones: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Deducciones'
      Origin = '"Nomina"."Total_Deducciones"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrNominaTotal_Otros_Pagos: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Otros_Pagos'
      Origin = '"Nomina"."Total_Otros_Pagos"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrNominaTotal_Antes_Deducciones: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Antes_Deducciones'
      Origin = '"Nomina"."Total_Antes_Deducciones"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrNominaTotal_Neto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Neto'
      Origin = '"Nomina"."Total_Neto"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrNominaTotal_Pago_Banco: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Pago_Banco'
      Origin = '"Nomina"."Total_Pago_Banco"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrNominaTotal_Pago_Cheque: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Pago_Cheque'
      Origin = '"Nomina"."Total_Pago_Cheque"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrNominaTotal_Pago_Efectivo: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Pago_Efectivo'
      Origin = '"Nomina"."Total_Pago_Efectivo"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrNominaUnidad_Organizativa: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Unidad_Organizativa'
      Origin = '"Nomina"."Unidad_Organizativa"'
      Size = 25
    end
    object qrNominaSimbolo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Simbolo'
      Origin = '"Nomina"."Simbolo"'
      Size = 25
    end
    object qrNominaStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Nomina"."Status"'
      Size = 15
    end
    object qrNominaDetalle_Dias: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Detalle_Dias'
      Origin = '"Nomina"."Detalle_Dias"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qrNominaArchivo_Detalle_Dias: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Archivo_Detalle_Dias'
      Origin = '"Nomina"."Archivo_Detalle_Dias"'
      Size = 100
    end
  end
  object prNomina: TDataSetProvider
    DataSet = qrNomina
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 299
    Top = 61
  end
  object qrDetalle_Nomina: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkNomina
    SQL.Strings = (
      'Select  * From "Detalle_Nomina"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 212
    Top = 107
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrDetalle_NominaProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalle_Nomina"."Proceso"'
      Size = 25
    end
    object qrDetalle_NominaEmpleado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Empleado'
      Origin = '"Detalle_Nomina"."Empleado"'
      Size = 25
    end
    object qrDetalle_NominaFecha_Inicio: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Inicio'
      Origin = '"Detalle_Nomina"."Fecha_Inicio"'
    end
    object qrDetalle_NominaFecha_Final: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Final'
      Origin = '"Detalle_Nomina"."Fecha_Final"'
    end
    object qrDetalle_NominaTotal_Horas_Trabajadas: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Horas_Trabajadas'
      Origin = '"Detalle_Nomina"."Total_Horas_Trabajadas"'
      Precision = 18
      Size = 2
    end
    object qrDetalle_NominaTotal_Horas_Extra: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Horas_Extra'
      Origin = '"Detalle_Nomina"."Total_Horas_Extra"'
      Precision = 18
      Size = 2
    end
    object qrDetalle_NominaTotal_Horas_Extraordinarias: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Horas_Extraordinarias'
      Origin = '"Detalle_Nomina"."Total_Horas_Extraordinarias"'
      Precision = 18
      Size = 2
    end
    object qrDetalle_NominaTotal_Deducciones: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Deducciones'
      Origin = '"Detalle_Nomina"."Total_Deducciones"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrDetalle_NominaBase_Pago_Hora: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Base_Pago_Hora'
      Origin = '"Detalle_Nomina"."Base_Pago_Hora"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrDetalle_NominaPago_Hora: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pago_Hora'
      Origin = '"Detalle_Nomina"."Pago_Hora"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrDetalle_NominaPago_Horas_Extra: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pago_Horas_Extra'
      Origin = '"Detalle_Nomina"."Pago_Horas_Extra"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrDetalle_NominaPago_Horas_Extraordinaria: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pago_Horas_Extraordinaria'
      Origin = '"Detalle_Nomina"."Pago_Horas_Extraordinaria"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrDetalle_NominaSalario_Bruto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Salario_Bruto'
      Origin = '"Detalle_Nomina"."Salario_Bruto"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrDetalle_NominaSalario_Extra: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Salario_Extra'
      Origin = '"Detalle_Nomina"."Salario_Extra"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrDetalle_NominaFecha: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Detalle_Nomina"."Fecha"'
    end
    object qrDetalle_NominaSalario_Extraordinarias: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Salario_Extraordinarias'
      Origin = '"Detalle_Nomina"."Salario_Extraordinarias"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrDetalle_NominaCargo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cargo'
      Origin = '"Detalle_Nomina"."Cargo"'
      Size = 100
    end
    object qrDetalle_NominaOtras_Deducciones: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Otras_Deducciones'
      Origin = '"Detalle_Nomina"."Otras_Deducciones"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrDetalle_NominaDeducciones: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Deducciones'
      Origin = '"Detalle_Nomina"."Deducciones"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrDetalle_NominaTotal_Neto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Neto'
      Origin = '"Detalle_Nomina"."Total_Neto"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrDetalle_NominaOtros_Pagos: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Otros_Pagos'
      Origin = '"Detalle_Nomina"."Otros_Pagos"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrDetalle_NominaStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Detalle_Nomina"."Status"'
      Size = 15
    end
    object qrDetalle_NominaNumero_Cuenta: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Cuenta'
      Origin = '"Detalle_Nomina"."Numero_Cuenta"'
      Size = 25
    end
    object qrDetalle_NominaCheque_Numero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Cheque_Numero'
      Origin = '"Detalle_Nomina"."Cheque_Numero"'
    end
    object qrDetalle_NominaProceso_Cheque: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso_Cheque'
      Origin = '"Detalle_Nomina"."Proceso_Cheque"'
      Size = 25
    end
    object qrDetalle_NominaFecha_Cheque: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Cheque'
      Origin = '"Detalle_Nomina"."Fecha_Cheque"'
    end
    object qrDetalle_NominaCheque_Anterior: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Cheque_Anterior'
      Origin = '"Detalle_Nomina"."Cheque_Anterior"'
    end
    object qrDetalle_NominaProceso_Cheque_Anterior: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso_Cheque_Anterior'
      Origin = '"Detalle_Nomina"."Proceso_Cheque_Anterior"'
      Size = 25
    end
    object qrDetalle_NominaFecha_Cheque_Anterior: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Cheque_Anterior'
      Origin = '"Detalle_Nomina"."Fecha_Cheque_Anterior"'
    end
  end
  object lnkNomina: TDataSource
    DataSet = qrNomina
    Left = 299
    Top = 107
  end
  object qrDetalle_Deducciones: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkDetalle_Nomina
    SQL.Strings = (
      'Select  * From "Detalle_Deducciones"'
      'Where ("Proceso" = :Proceso) And ("Empleado" = :Empleado)')
    UniDirectional = True
    Left = 212
    Top = 156
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Empleado'
        ParamType = ptInput
      end>
    object qrDetalle_DeduccionesProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalle_Deducciones"."Proceso"'
      Size = 25
    end
    object qrDetalle_DeduccionesEmpleado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Empleado'
      Origin = '"Detalle_Deducciones"."Empleado"'
      Size = 25
    end
    object qrDetalle_DeduccionesDeduccion: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Deduccion'
      Origin = '"Detalle_Deducciones"."Deduccion"'
    end
    object qrDetalle_DeduccionesSalario: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Salario'
      Origin = '"Detalle_Deducciones"."Salario"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrDetalle_DeduccionesMonto_Deducir: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Monto_Deducir'
      Origin = '"Detalle_Deducciones"."Monto_Deducir"'
      Precision = 18
      Size = 2
    end
    object qrDetalle_DeduccionesTipo_Deduccion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Deduccion'
      Origin = '"Detalle_Deducciones"."Tipo_Deduccion"'
      Size = 25
    end
    object qrDetalle_DeduccionesTotal_Deduccion: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Deduccion'
      Origin = '"Detalle_Deducciones"."Total_Deduccion"'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object lnkDetalle_Nomina: TDataSource
    DataSet = qrDetalle_Nomina
    Left = 299
    Top = 156
  end
  object qrDetalle_Pagos: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkDetalle_Nomina
    SQL.Strings = (
      'Select  * From "Detalle_Pagos"'
      'Where ("Proceso" = :Proceso) And ("Empleado" = :Empleado)')
    UniDirectional = True
    Left = 212
    Top = 204
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Empleado'
        ParamType = ptInput
      end>
    object qrDetalle_PagosProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalle_Pagos"."Proceso"'
      Size = 25
    end
    object qrDetalle_PagosEmpleado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Empleado'
      Origin = '"Detalle_Pagos"."Empleado"'
      Size = 25
    end
    object qrDetalle_PagosPago: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Pago'
      Origin = '"Detalle_Pagos"."Pago"'
    end
    object qrDetalle_PagosSalario: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Salario'
      Origin = '"Detalle_Pagos"."Salario"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrDetalle_PagosMonto_Pagar: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Monto_Pagar'
      Origin = '"Detalle_Pagos"."Monto_Pagar"'
      Precision = 18
      Size = 2
    end
    object qrDetalle_PagosTipo_Pago: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Pago'
      Origin = '"Detalle_Pagos"."Tipo_Pago"'
      Size = 25
    end
    object qrDetalle_PagosTotal_Pago: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Pago'
      Origin = '"Detalle_Pagos"."Total_Pago"'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object qrHistorial_Nomina: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Historial_Nomina"'
      'Where "Compania" = :Compania'
      'And "Departamento" = :Departamento'
      'And "Fecha_Final" = :Fecha_Final'
      'And "Fecha_Inicio" = :Fecha_Inicio'
      'And  "Periodo" = :Periodo')
    UniDirectional = True
    Left = 212
    Top = 249
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Compania'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Departamento'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Fecha_Final'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Fecha_Inicio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Periodo'
        ParamType = ptInput
      end>
    object qrHistorial_NominaCompania: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Compania'
      Origin = '"Historial_Nomina"."Compania"'
    end
    object qrHistorial_NominaDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Departamento'
      Origin = '"Historial_Nomina"."Departamento"'
    end
    object qrHistorial_NominaFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Historial_Nomina"."Fecha"'
    end
    object qrHistorial_NominaFecha_Inicio: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Inicio'
      Origin = '"Historial_Nomina"."Fecha_Inicio"'
    end
    object qrHistorial_NominaFecha_Final: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Final'
      Origin = '"Historial_Nomina"."Fecha_Final"'
    end
    object qrHistorial_NominaStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Historial_Nomina"."Status"'
      Size = 15
    end
    object qrHistorial_NominaPeriodo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Periodo'
      Origin = '"Historial_Nomina"."Periodo"'
      Size = 25
    end
    object qrHistorial_NominaProceso_Nomina: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso_Nomina'
      Origin = '"Historial_Nomina"."Proceso_Nomina"'
      Size = 25
    end
  end
  object prHistorial_Nomina: TDataSetProvider
    DataSet = qrHistorial_Nomina
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 299
    Top = 247
  end
  object qrUltima_Nomina_Periodo: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  '
      'Max("Fecha_Inicio") "Ultima_Fecha_Inicio", '
      'Max("Fecha_Final") "Ultima_Fecha_Final"'
      'From "Historial_Nomina"'
      'Where "Compania" = :Compania'
      'And "Departamento" = :Departamento'
      'And  "Periodo" = :Periodo')
    UniDirectional = True
    Left = 212
    Top = 299
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Compania'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Departamento'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Periodo'
        ParamType = ptInput
      end>
    object qrUltima_Nomina_PeriodoUltima_Fecha_Inicio: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Ultima_Fecha_Inicio'
      ProviderFlags = []
    end
    object qrUltima_Nomina_PeriodoUltima_Fecha_Final: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Ultima_Fecha_Final'
      ProviderFlags = []
    end
  end
  object prUltima_Nomina_Periodo: TDataSetProvider
    DataSet = qrUltima_Nomina_Periodo
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 299
    Top = 299
  end
  object qrJornal_Empleado: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select * From "Jornal_Diario" '
      'Where "Compania" = :Compania'
      'AND "Departamento" = :Departamento'
      'AND "Empleado" = :Empleado'
      'AND "Fecha" Between :Fecha_Inicio And :Fecha_Final')
    UniDirectional = True
    Left = 212
    Top = 345
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Compania'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Departamento'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Empleado'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Fecha_Inicio'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Fecha_Final'
        ParamType = ptInput
      end>
    object qrJornal_EmpleadoCompania: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Compania'
      Origin = '"Jornal_Diario"."Compania"'
    end
    object qrJornal_EmpleadoDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Departamento'
      Origin = '"Jornal_Diario"."Departamento"'
    end
    object qrJornal_EmpleadoFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Jornal_Diario"."Fecha"'
    end
    object qrJornal_EmpleadoRegistrado_En_Fecha: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Registrado_En_Fecha'
      Origin = '"Jornal_Diario"."Registrado_En_Fecha"'
    end
    object qrJornal_EmpleadoEmpleado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Empleado'
      Origin = '"Jornal_Diario"."Empleado"'
      Size = 25
    end
    object qrJornal_EmpleadoUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Jornal_Diario"."Usuario"'
      Size = 100
    end
    object qrJornal_EmpleadoHoras: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Horas'
      Origin = '"Jornal_Diario"."Horas"'
    end
    object qrJornal_EmpleadoHoras_Extraordinarias: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Horas_Extraordinarias'
      Origin = '"Jornal_Diario"."Horas_Extraordinarias"'
    end
    object qrJornal_EmpleadoHoras_Extra: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Horas_Extra'
      Origin = '"Jornal_Diario"."Horas_Extra"'
    end
  end
  object prJornal_Empleado: TDataSetProvider
    DataSet = qrJornal_Empleado
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 299
    Top = 345
  end
  object qrListado_Empleados: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Empleados" '
      'Order By "NombreCompleto"')
    UniDirectional = True
    Left = 212
    Top = 399
    object qrListado_EmpleadosCedula_Rnc_Pasaporte: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cedula_Rnc_Pasaporte'
      Origin = '"Empleados"."Cedula_Rnc_Pasaporte"'
      Size = 25
    end
    object qrListado_EmpleadosTipo_Documento: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Documento'
      Origin = '"Empleados"."Tipo_Documento"'
      Size = 25
    end
    object qrListado_EmpleadosSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Empleados"."Secuencia"'
    end
    object qrListado_EmpleadosNombre: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Origin = '"Empleados"."Nombre"'
      Size = 100
    end
    object qrListado_EmpleadosApellido: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Apellido'
      Origin = '"Empleados"."Apellido"'
      Size = 100
    end
    object qrListado_EmpleadosNacionalidad: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nacionalidad'
      Origin = '"Empleados"."Nacionalidad"'
      Size = 25
    end
    object qrListado_EmpleadosSexo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Sexo'
      Origin = '"Empleados"."Sexo"'
      Size = 25
    end
    object qrListado_EmpleadosTipo_Telefono_1: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_1'
      Origin = '"Empleados"."Tipo_Telefono_1"'
    end
    object qrListado_EmpleadosTipo_Telefono_2: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_2'
      Origin = '"Empleados"."Tipo_Telefono_2"'
    end
    object qrListado_EmpleadosTipo_Telefono_3: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_3'
      Origin = '"Empleados"."Tipo_Telefono_3"'
    end
    object qrListado_EmpleadosTipo_Telefono_4: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_4'
      Origin = '"Empleados"."Tipo_Telefono_4"'
    end
    object qrListado_EmpleadosNumero_Telefono_1: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_1'
      Origin = '"Empleados"."Numero_Telefono_1"'
    end
    object qrListado_EmpleadosNumero_Telefono_2: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_2'
      Origin = '"Empleados"."Numero_Telefono_2"'
    end
    object qrListado_EmpleadosNumero_Telefono_3: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_3'
      Origin = '"Empleados"."Numero_Telefono_3"'
    end
    object qrListado_EmpleadosNumero_Telefono_4: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_4'
      Origin = '"Empleados"."Numero_Telefono_4"'
    end
    object qrListado_EmpleadosDireccion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion'
      Origin = '"Empleados"."Direccion"'
      Size = 255
    end
    object qrListado_EmpleadosPais: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pais'
      Origin = '"Empleados"."Pais"'
      Size = 100
    end
    object qrListado_EmpleadosCiudad: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ciudad'
      Origin = '"Empleados"."Ciudad"'
      Size = 100
    end
    object qrListado_EmpleadosSector: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Sector'
      Origin = '"Empleados"."Sector"'
      Size = 100
    end
    object qrListado_EmpleadosNombreCompleto: TIBStringField
      AutoGenerateValue = arDefault
      FieldKind = fkInternalCalc
      FieldName = 'NombreCompleto'
      Origin = '"Empleados"."NombreCompleto"'
      ProviderFlags = []
      ReadOnly = True
      Size = 201
    end
    object qrListado_EmpleadosNumero_Tarjeta: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Tarjeta'
      Origin = '"Empleados"."Numero_Tarjeta"'
      Size = 25
    end
    object qrListado_EmpleadosNumero_Cuenta: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Cuenta'
      Origin = '"Empleados"."Numero_Cuenta"'
      Size = 25
    end
    object qrListado_EmpleadosRegistrado_En_Fecha: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Registrado_En_Fecha'
      Origin = '"Empleados"."Registrado_En_Fecha"'
    end
    object qrListado_Empleadosmail: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'mail'
      Origin = '"Empleados"."mail"'
      Size = 100
    end
    object qrListado_EmpleadosFoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Foto'
      Origin = '"Empleados"."Foto"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qrListado_EmpleadosFecha_Nacimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Nacimiento'
      Origin = '"Empleados"."Fecha_Nacimiento"'
    end
    object qrListado_EmpleadosEstado_Civil: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Estado_Civil'
      Origin = '"Empleados"."Estado_Civil"'
      Size = 15
    end
    object qrListado_EmpleadosCodigo_Banco: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo_Banco'
      Origin = '"Empleados"."Codigo_Banco"'
      Size = 25
    end
  end
  object prListado_Empleados: TDataSetProvider
    DataSet = qrListado_Empleados
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 299
    Top = 399
  end
  object qrListado_Laboral: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  "Cedula_Rnc_Pasaporte", '
      '            "Cargo",'
      '            "Compania", '
      '            "Departamento", '
      '            "Fecha_Inicio", '
      '            "Fecha_Salida", '
      '            "Grupo_Deducciones", '
      '            "Periodo_Nomina", '
      '            "Salario",'
      '            "Status", '
      '            "Tipo_Empleado", '
      '            "Tipo_Salario",'
      '            "Unidad_Organizativa",'
      '            "Simbolo",'
      '            "NombreCompleto" '
      'From  "Informacion_Laboral", "Empleados"'
      'Where "Informacion_Laboral"."Compania" = :Compania'
      'AND "Informacion_Laboral"."Departamento" = :Departamento'
      
        'AND "Informacion_Laboral"."Cedula_Rnc_Pasaporte" = "Empleados"."' +
        'Cedula_Rnc_Pasaporte"'
      'Order By "Empleados"."NombreCompleto"')
    UniDirectional = True
    Left = 212
    Top = 448
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Compania'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Departamento'
        ParamType = ptInput
      end>
    object qrListado_LaboralCedula_Rnc_Pasaporte: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cedula_Rnc_Pasaporte'
      Origin = '"Informacion_Laboral"."Cedula_Rnc_Pasaporte"'
      Size = 25
    end
    object qrListado_LaboralCompania: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Compania'
      Origin = '"Informacion_Laboral"."Compania"'
    end
    object qrListado_LaboralDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Departamento'
      Origin = '"Informacion_Laboral"."Departamento"'
    end
    object qrListado_LaboralCargo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cargo'
      Origin = '"Informacion_Laboral"."Cargo"'
      Size = 100
    end
    object qrListado_LaboralSalario: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Salario'
      Origin = '"Informacion_Laboral"."Salario"'
      Precision = 18
      Size = 2
    end
    object qrListado_LaboralGrupo_Deducciones: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Grupo_Deducciones'
      Origin = '"Informacion_Laboral"."Grupo_Deducciones"'
    end
    object qrListado_LaboralPeriodo_Nomina: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Periodo_Nomina'
      Origin = '"Informacion_Laboral"."Periodo_Nomina"'
      Size = 25
    end
    object qrListado_LaboralTipo_Empleado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Empleado'
      Origin = '"Informacion_Laboral"."Tipo_Empleado"'
      Size = 15
    end
    object qrListado_LaboralStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Informacion_Laboral"."Status"'
      Size = 15
    end
    object qrListado_LaboralFecha_Inicio: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Inicio'
      Origin = '"Informacion_Laboral"."Fecha_Inicio"'
    end
    object qrListado_LaboralFecha_Salida: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Salida'
      Origin = '"Informacion_Laboral"."Fecha_Salida"'
    end
    object qrListado_LaboralTipo_Salario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Salario'
      Origin = '"Informacion_Laboral"."Tipo_Salario"'
      Size = 15
    end
    object qrListado_LaboralNombreCompleto: TIBStringField
      AutoGenerateValue = arDefault
      FieldKind = fkInternalCalc
      FieldName = 'NombreCompleto'
      Origin = '"Empleados"."NombreCompleto"'
      ProviderFlags = []
      ReadOnly = True
      Size = 201
    end
    object qrListado_LaboralUnidad_Organizativa: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Unidad_Organizativa'
      Origin = '"Informacion_Laboral"."Unidad_Organizativa"'
      Size = 25
    end
    object qrListado_LaboralSimbolo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Simbolo'
      Origin = '"Informacion_Laboral"."Simbolo"'
      Size = 25
    end
  end
  object prListado_Laboral: TDataSetProvider
    DataSet = qrListado_Laboral
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 299
    Top = 448
  end
  object qrListado_Grupo_Nomina: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Grupo_Nomina" '
      'Order By "Descripcion"')
    UniDirectional = True
    Left = 212
    Top = 497
    object qrListado_Grupo_NominaNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Grupo_Nomina"."Numero"'
      DisplayFormat = #39'GN-'#39'0000000'
    end
    object qrListado_Grupo_NominaDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Grupo_Nomina"."Descripcion"'
      Size = 100
    end
    object qrListado_Grupo_NominaRegistrado_En_Fecha: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Registrado_En_Fecha'
      Origin = '"Grupo_Nomina"."Registrado_En_Fecha"'
    end
    object qrListado_Grupo_NominaProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Grupo_Nomina"."Proceso"'
      Size = 25
    end
    object qrListado_Grupo_NominaUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Grupo_Nomina"."Usuario"'
      Size = 100
    end
    object qrListado_Grupo_NominaStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Grupo_Nomina"."Status"'
      Size = 15
    end
  end
  object prListado_Grupo_Nomina: TDataSetProvider
    DataSet = qrListado_Grupo_Nomina
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 299
    Top = 495
  end
end
