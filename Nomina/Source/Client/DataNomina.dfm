object ModuloNomina: TModuloNomina
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 603
  Width = 753
  object tEmpleados: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Cedula_RNC_Pasaporte'
        ParamType = ptInput
      end>
    ProviderName = 'prEmpleados'
    AfterEdit = EditReminder
    OnReconcileError = DataSetReconcileErrors
    Left = 144
    Top = 5
    object tEmpleadosCedula_Rnc_Pasaporte: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cedula_Rnc_Pasaporte'
      Origin = '"Empleados"."Cedula_Rnc_Pasaporte"'
      EditMask = '>aaaaaaaaaaaaaaaaaaaaaaaaa;1; '
      Size = 25
    end
    object tEmpleadosNombre: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Origin = '"Empleados"."Nombre"'
      Size = 100
    end
    object tEmpleadosApellido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Apellido'
      Origin = '"Empleados"."Apellido"'
      Size = 100
    end
    object tEmpleadosTipo_Telefono_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_1'
      Origin = '"Empleados"."Tipo_Telefono_1"'
    end
    object tEmpleadosTipo_Telefono_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_2'
      Origin = '"Empleados"."Tipo_Telefono_2"'
    end
    object tEmpleadosTipo_Telefono_3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_3'
      Origin = '"Empleados"."Tipo_Telefono_3"'
    end
    object tEmpleadosTipo_Telefono_4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_4'
      Origin = '"Empleados"."Tipo_Telefono_4"'
    end
    object tEmpleadosNumero_Telefono_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_1'
      Origin = '"Empleados"."Numero_Telefono_1"'
      EditMask = '!\(999\) 000-0000;1; '
    end
    object tEmpleadosNumero_Telefono_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_2'
      Origin = '"Empleados"."Numero_Telefono_2"'
      EditMask = '!\(999\) 000-0000;1; '
    end
    object tEmpleadosNumero_Telefono_3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_3'
      Origin = '"Empleados"."Numero_Telefono_3"'
      EditMask = '!\(999\) 000-0000;1; '
    end
    object tEmpleadosNumero_Telefono_4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_4'
      Origin = '"Empleados"."Numero_Telefono_4"'
      EditMask = '!\(999\) 000-0000;1; '
    end
    object tEmpleadosDireccion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion'
      Origin = '"Empleados"."Direccion"'
      Size = 255
    end
    object tEmpleadosPais: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pais'
      Origin = '"Empleados"."Pais"'
      Size = 100
    end
    object tEmpleadosCiudad: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ciudad'
      Origin = '"Empleados"."Ciudad"'
      Size = 100
    end
    object tEmpleadosSector: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Sector'
      Origin = '"Empleados"."Sector"'
      Size = 100
    end
    object tEmpleadosNombreCompleto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NombreCompleto'
      Origin = '"Empleados"."NombreCompleto"'
      ProviderFlags = []
      ReadOnly = True
      Size = 201
    end
    object tEmpleadosNumero_Tarjeta: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Tarjeta'
      Origin = '"Empleados"."Numero_Tarjeta"'
      Size = 25
    end
    object tEmpleadosNumero_Cuenta: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Cuenta'
      Origin = '"Empleados"."Numero_Cuenta"'
      Size = 25
    end
    object tEmpleadosmail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mail'
      Origin = '"Empleados"."mail"'
      Size = 100
    end
    object tEmpleadosSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Empleados"."Secuencia"'
      DisplayFormat = #39'EMP-'#39'0000000'
    end
    object tEmpleadosSexo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Sexo'
      Origin = '"Empleados"."Sexo"'
      Size = 25
    end
    object tEmpleadosFecha_Nacimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Nacimiento'
      Origin = '"Empleados"."Fecha_Nacimiento"'
    end
    object tEmpleadosTipo_Documento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Documento'
      Origin = '"Empleados"."Tipo_Documento"'
      Size = 25
    end
    object tEmpleadosqrInformacion_Laboral: TDataSetField
      AutoGenerateValue = arDefault
      FieldName = 'qrInformacion_Laboral'
    end
    object tEmpleadosNacionalidad: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nacionalidad'
      Origin = '"Empleados"."Nacionalidad"'
      Size = 25
    end
    object tEmpleadosRegistrado_En_Fecha: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Registrado_En_Fecha'
      Origin = '"Empleados"."Registrado_En_Fecha"'
    end
    object tEmpleadosEstado_Civil: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Estado_Civil'
      Origin = '"Empleados"."Estado_Civil"'
      Size = 15
    end
    object tEmpleadosFoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Foto'
      Origin = '"Empleados"."Foto"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object tEmpleadosCodigo_Banco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo_Banco'
      Origin = '"Empleados"."Codigo_Banco"'
      Size = 25
    end
    object tEmpleadosqrDetalle_Empleado: TDataSetField
      AutoGenerateValue = arDefault
      FieldName = 'qrDetalle_Empleado'
    end
  end
  object dEmpleados: TDataSource
    DataSet = tEmpleados
    Left = 260
    Top = 5
  end
  object tInformacion_Laboral: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    DataSetField = tEmpleadosqrInformacion_Laboral
    Params = <>
    OnReconcileError = DataSetReconcileErrors
    Left = 144
    Top = 47
    object tInformacion_LaboralNombre_Compania: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Compa'#241#237'a'
      DisplayWidth = 23
      FieldKind = fkLookup
      FieldName = 'Nombre_Compania'
      LookupDataSet = tCompania
      LookupKeyFields = 'Numero_Compania'
      LookupResultField = 'Nombre_Compania'
      KeyFields = 'Compania'
      Size = 75
      Lookup = True
    end
    object tInformacion_LaboralNombre_Departamento: TStringField
      AutoGenerateValue = arDefault
      FieldKind = fkLookup
      FieldName = 'Nombre_Departamento'
      LookupDataSet = tDepartamentos
      LookupKeyFields = 'Numero'
      LookupResultField = 'Descripcion'
      KeyFields = 'Departamento'
      Size = 100
      Lookup = True
    end
    object tInformacion_LaboralCargo: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 11
      FieldName = 'Cargo'
      Origin = '"Informacion_Laboral"."Cargo"'
      Size = 100
    end
    object tInformacion_LaboralSalario: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Salario'
      Origin = '"Informacion_Laboral"."Salario"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tInformacion_LaboralPeriodo_Nomina: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Per'#237'odo'
      DisplayWidth = 10
      FieldName = 'Periodo_Nomina'
      Origin = '"Informacion_Laboral"."Periodo_Nomina"'
      Size = 25
    end
    object tInformacion_LaboralTipo_Empleado: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo Empleado'
      DisplayWidth = 13
      FieldName = 'Tipo_Empleado'
      Origin = '"Informacion_Laboral"."Tipo_Empleado"'
      Size = 15
    end
    object tInformacion_LaboralTipo_Salario: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo Salario'
      DisplayWidth = 11
      FieldName = 'Tipo_Salario'
      Origin = '"Informacion_Laboral"."Tipo_Salario"'
      Size = 15
    end
    object tInformacion_LaboralCedula_Rnc_Pasaporte: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Cedula_Rnc_Pasaporte'
      Origin = '"Informacion_Laboral"."Cedula_Rnc_Pasaporte"'
      Visible = False
      Size = 25
    end
    object tInformacion_LaboralCompania: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Compania'
      Origin = '"Informacion_Laboral"."Compania"'
      Visible = False
    end
    object tInformacion_LaboralDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Departamento'
      Origin = '"Informacion_Laboral"."Departamento"'
      Visible = False
      OnValidate = tInformacion_LaboralDepartamentoValidate
    end
    object tInformacion_LaboralGrupo_Deducciones: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Grupo_Deducciones'
      Origin = '"Informacion_Laboral"."Grupo_Deducciones"'
      Visible = False
      OnValidate = tInformacion_LaboralGrupo_DeduccionesValidate
    end
    object tInformacion_LaboralStatus: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 15
      FieldName = 'Status'
      Origin = '"Informacion_Laboral"."Status"'
      Visible = False
      Size = 15
    end
    object tInformacion_LaboralRegistrado_En_Fecha: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Registrado_En_Fecha'
      Origin = '"Informacion_Laboral"."Registrado_En_Fecha"'
      Visible = False
    end
    object tInformacion_LaboralFecha_Inicio: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Inicio'
      Origin = '"Informacion_Laboral"."Fecha_Inicio"'
      Visible = False
    end
    object tInformacion_LaboralFecha_Salida: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Salida'
      Origin = '"Informacion_Laboral"."Fecha_Salida"'
      Visible = False
    end
    object tInformacion_LaboralForma_Cobro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Forma_Cobro'
      Size = 15
    end
    object tInformacion_LaboralUnidad_Organizativa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Unidad_Organizativa'
      Size = 25
    end
    object tInformacion_LaboralSimbolo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Simbolo'
      Size = 25
    end
  end
  object dInformacion_Laboral: TDataSource
    DataSet = tInformacion_Laboral
    Left = 260
    Top = 47
  end
  object tCompania: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <>
    ProviderName = 'prCompania'
    AfterEdit = EditReminder
    OnReconcileError = DataSetReconcileErrors
    Left = 144
    Top = 138
    object tCompaniaNombre_Compania: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Compa'#241#237'a'
      DisplayWidth = 45
      FieldName = 'Nombre_Compania'
      Origin = '"Compania"."Nombre_Compania"'
      Size = 100
    end
    object tCompaniaNumero_Compania: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Numero_Compania'
      Origin = '"Compania"."Numero_Compania"'
      DisplayFormat = #39'CO-'#39'000000'
    end
    object tCompaniaRNC: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 15
      FieldName = 'RNC'
      Origin = '"Compania"."RNC"'
      Size = 25
    end
    object tCompaniaRegistrado_En_Fecha: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Registrado_En_Fecha'
      Origin = '"Compania"."Registrado_En_Fecha"'
      Visible = False
    end
  end
  object dCompania: TDataSource
    DataSet = tCompania
    Left = 260
    Top = 138
  end
  object tDepartamentos: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <>
    ProviderName = 'prDepartamentos'
    OnCalcFields = tDepartamentosCalcFields
    OnReconcileError = DataSetReconcileErrors
    Left = 144
    Top = 181
    object tDepartamentosDescripcion: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descripci'#243'n'
      DisplayWidth = 50
      FieldName = 'Descripcion'
      Origin = '"Departamentos"."Descripcion"'
      Size = 100
    end
    object tDepartamentosNumero: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 20
      FieldName = 'Numero'
      Origin = '"Departamentos"."Numero"'
      DisplayFormat = #39'DEP-'#39'000000'
    end
    object tDepartamentosUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Departamentos"."Usuario"'
      Visible = False
      Size = 100
    end
    object tDepartamentosCompania: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Compania'
      Origin = '"Departamentos"."Compania"'
      Visible = False
    end
    object tDepartamentosNombre_Compania: TStringField
      AutoGenerateValue = arDefault
      FieldKind = fkLookup
      FieldName = 'Nombre_Compania'
      LookupDataSet = tCompania
      LookupKeyFields = 'Numero_Compania'
      LookupResultField = 'Nombre_Compania'
      KeyFields = 'Compania'
      Visible = False
      Size = 75
      Lookup = True
    end
    object tDepartamentosRegistrado_En_Fecha: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Registrado_En_Fecha'
      Origin = '"Departamentos"."Registrado_En_Fecha"'
      Visible = False
    end
    object tDepartamentosUnidad_Organizativa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Unidad_Organizativa'
      Origin = '"Departamentos"."Unidad_Organizativa"'
      Visible = False
      Size = 25
    end
    object tDepartamentosSimbolo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Simbolo'
      Origin = '"Departamentos"."Simbolo"'
      Visible = False
      Size = 25
    end
    object tDepartamentosCuenta_Nomina: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cuenta_Nomina'
      Origin = '"Departamentos"."Cuenta_Nomina"'
      Visible = False
      Size = 25
    end
    object tDepartamentosBanco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Banco'
      Origin = '"Departamentos"."Banco"'
      Visible = False
      Size = 100
    end
    object tDepartamentosSimbolo_Combinado: TStringField
      AutoGenerateValue = arDefault
      FieldKind = fkCalculated
      FieldName = 'Simbolo_Combinado'
      Visible = False
      Size = 25
      Calculated = True
    end
  end
  object dDepartamentos: TDataSource
    DataSet = tDepartamentos
    Left = 260
    Top = 181
  end
  object tJornal_Diario: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
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
    ProviderName = 'prJornal_Diario'
    OnReconcileError = DataSetReconcileErrors
    Left = 144
    Top = 225
    object tJornal_DiarioCompania: TIntegerField
      FieldName = 'Compania'
    end
    object tJornal_DiarioDepartamento: TIntegerField
      FieldName = 'Departamento'
    end
    object tJornal_DiarioFecha: TDateField
      FieldName = 'Fecha'
    end
    object tJornal_DiarioRegistrado_En_Fecha: TDateTimeField
      FieldName = 'Registrado_En_Fecha'
    end
    object tJornal_DiarioEmpleado: TStringField
      FieldName = 'Empleado'
      Size = 25
    end
    object tJornal_DiarioUsuario: TStringField
      FieldName = 'Usuario'
      Size = 100
    end
    object tJornal_DiarioHoras: TSmallintField
      FieldName = 'Horas'
    end
    object tJornal_DiarioHoras_Extraordinarias: TSmallintField
      FieldName = 'Horas_Extraordinarias'
    end
    object tJornal_DiarioHoras_Extra: TSmallintField
      FieldName = 'Horas_Extra'
    end
    object tJornal_DiarioNombre_Empleado: TStringField
      AutoGenerateValue = arDefault
      FieldKind = fkLookup
      FieldName = 'Nombre_Empleado'
      LookupDataSet = tListado_Empleados
      LookupKeyFields = 'Cedula_Rnc_Pasaporte'
      LookupResultField = 'NombreCompleto'
      KeyFields = 'Empleado'
      Size = 75
      Lookup = True
    end
  end
  object dJornal_Diario: TDataSource
    DataSet = tJornal_Diario
    Left = 260
    Top = 225
  end
  object tDeducciones: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    PacketRecords = 10
    Params = <>
    ProviderName = 'prDeducciones'
    OnReconcileError = DataSetReconcileErrors
    Left = 144
    Top = 268
    object tDeduccionesDescripcion: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 39
      FieldName = 'Descripcion'
      Origin = '"Deducciones"."Descripcion"'
      Size = 100
    end
    object tDeduccionesTipo: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 15
      FieldName = 'Tipo'
      Origin = '"Deducciones"."Tipo"'
      Size = 15
    end
    object tDeduccionesMonto: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 15
      FieldName = 'Monto'
      Origin = '"Deducciones"."Monto"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object tDeduccionesNumero: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Numero'
      Origin = '"Deducciones"."Numero"'
      Visible = False
      DisplayFormat = #39'DC-'#39'0000000'
    end
    object tDeduccionesDeducir_De: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 50
      FieldName = 'Deducir_De'
      Origin = '"Deducciones"."Deducir_De"'
      Visible = False
      Size = 50
    end
    object tDeduccionesAplicable_A: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 15
      FieldName = 'Aplicable_A'
      Origin = '"Deducciones"."Aplicable_A"'
      Visible = False
      Size = 15
    end
    object tDeduccionesRango_Inicial: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 19
      FieldName = 'Rango_Inicial'
      Origin = '"Deducciones"."Rango_Inicial"'
      Visible = False
      currency = True
      Precision = 18
      Size = 2
    end
    object tDeduccionesRango_Final: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 19
      FieldName = 'Rango_Final'
      Origin = '"Deducciones"."Rango_Final"'
      Visible = False
      currency = True
      Precision = 18
      Size = 2
    end
    object tDeduccionesRegistrado_En_Fecha: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayWidth = 18
      FieldName = 'Registrado_En_Fecha'
      Origin = '"Deducciones"."Registrado_En_Fecha"'
      Visible = False
    end
    object tDeduccionesEntrada_En_Vigencia: TDateField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Entrada_En_Vigencia'
      Origin = '"Deducciones"."Entrada_En_Vigencia"'
      Visible = False
    end
    object tDeduccionesDescontinuado: TDateField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Descontinuado'
      Origin = '"Deducciones"."Descontinuado"'
      Visible = False
    end
    object tDeduccionesUsuario: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 100
      FieldName = 'Usuario'
      Origin = '"Deducciones"."Usuario"'
      Visible = False
      Size = 100
    end
    object tDeduccionesSelected: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'Selected'
      Calculated = True
    end
  end
  object dDeducciones: TDataSource
    DataSet = tDeducciones
    Left = 260
    Top = 268
  end
  object tPagos_Incentivos: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    PacketRecords = 10
    Params = <>
    ProviderName = 'prPagos_Incentivos'
    OnReconcileError = DataSetReconcileErrors
    Left = 144
    Top = 311
    object tPagos_IncentivosNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Pagos_Incentivos"."Numero"'
      DisplayFormat = #39'PG-'#39'0000000'
    end
    object tPagos_IncentivosDescripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Pagos_Incentivos"."Descripcion"'
      Size = 100
    end
    object tPagos_IncentivosTipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo'
      Origin = '"Pagos_Incentivos"."Tipo"'
      Size = 15
    end
    object tPagos_IncentivosMonto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto'
      Origin = '"Pagos_Incentivos"."Monto"'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object tPagos_IncentivosAplicar_A: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Aplicar_A'
      Origin = '"Pagos_Incentivos"."Aplicar_A"'
      Size = 50
    end
    object tPagos_IncentivosRango_Inicial: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Rango_Inicial'
      Origin = '"Pagos_Incentivos"."Rango_Inicial"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tPagos_IncentivosRango_Final: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Rango_Final'
      Origin = '"Pagos_Incentivos"."Rango_Final"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tPagos_IncentivosRegistrado_En_Fecha: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Registrado_En_Fecha'
      Origin = '"Pagos_Incentivos"."Registrado_En_Fecha"'
    end
    object tPagos_IncentivosEntrada_En_Vigencia: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Entrada_En_Vigencia'
      Origin = '"Pagos_Incentivos"."Entrada_En_Vigencia"'
    end
    object tPagos_IncentivosDescontinuado: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Descontinuado'
      Origin = '"Pagos_Incentivos"."Descontinuado"'
    end
    object tPagos_IncentivosUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Pagos_Incentivos"."Usuario"'
      Size = 100
    end
    object tPagos_IncentivosSelected: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'Selected'
      Calculated = True
    end
  end
  object dPagos_Incentivos: TDataSource
    DataSet = tPagos_Incentivos
    Left = 260
    Top = 311
  end
  object tGrupo_Nomina: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    PacketRecords = 10
    Params = <
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
    ProviderName = 'prGrupo_Nomina'
    OnReconcileError = DataSetReconcileErrors
    Left = 144
    Top = 356
    object tGrupo_NominaNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Grupo_Nomina"."Numero"'
      DisplayFormat = #39'GN-'#39'0000000'
    end
    object tGrupo_NominaDescripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Grupo_Nomina"."Descripcion"'
      Size = 100
    end
    object tGrupo_NominaRegistrado_En_Fecha: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Registrado_En_Fecha'
      Origin = '"Grupo_Nomina"."Registrado_En_Fecha"'
    end
    object tGrupo_NominaProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Grupo_Nomina"."Proceso"'
      Size = 25
    end
    object tGrupo_NominaUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Grupo_Nomina"."Usuario"'
      Size = 100
    end
    object tGrupo_NominaStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Grupo_Nomina"."Status"'
      Size = 15
    end
    object tGrupo_NominaqrDetalle_Grupo_Nomina: TDataSetField
      AutoGenerateValue = arDefault
      FieldName = 'qrDetalle_Grupo_Nomina'
    end
  end
  object dGrupo_Nomina: TDataSource
    DataSet = tGrupo_Nomina
    Left = 260
    Top = 356
  end
  object tDetalle_Grupo_Nomina: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    DataSetField = tGrupo_NominaqrDetalle_Grupo_Nomina
    PacketRecords = 10
    Params = <>
    OnReconcileError = DataSetReconcileErrors
    Left = 144
    Top = 401
    object tDetalle_Grupo_NominaProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalle_Grupo_Nomina"."Proceso"'
      Size = 25
    end
    object tDetalle_Grupo_NominaTipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo'
      Origin = '"Detalle_Grupo_Nomina"."Tipo"'
      Size = 25
    end
    object tDetalle_Grupo_NominaNumero_Deducion_Pago: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Deducion_Pago'
      Origin = '"Detalle_Grupo_Nomina"."Numero_Deducion_Pago"'
    end
    object tDetalle_Grupo_NominaDescripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Detalle_Grupo_Nomina"."Descripcion"'
      Size = 100
    end
  end
  object dDetalle_Grupo_Nomina: TDataSource
    DataSet = tDetalle_Grupo_Nomina
    Left = 260
    Top = 401
  end
  object dDias_Laborados: TDataSource
    DataSet = tDias_Laborados
    Left = 260
    Top = 446
  end
  object tJornal_Empleado: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
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
    ProviderName = 'prJornal_Empleado'
    OnReconcileError = DataSetReconcileErrors
    Left = 144
    Top = 491
    object tJornal_EmpleadoCompania: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Compania'
    end
    object tJornal_EmpleadoDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Departamento'
    end
    object tJornal_EmpleadoFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
    end
    object tJornal_EmpleadoRegistrado_En_Fecha: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Registrado_En_Fecha'
    end
    object tJornal_EmpleadoEmpleado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Empleado'
      Size = 25
    end
    object tJornal_EmpleadoUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Size = 100
    end
    object tJornal_EmpleadoHoras: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Horas'
    end
    object tJornal_EmpleadoHoras_Extraordinarias: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Horas_Extraordinarias'
    end
    object tJornal_EmpleadoHoras_Extra: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Horas_Extra'
    end
  end
  object dJornal_Empleado: TDataSource
    DataSet = tJornal_Empleado
    Left = 260
    Top = 491
  end
  object tDias_Laborados: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    IndexFieldNames = 'Empleado'
    MasterFields = 'Empleado'
    MasterSource = dDetalle_Nomina
    PacketRecords = 0
    Params = <>
    OnReconcileError = DataSetReconcileErrors
    Left = 144
    Top = 446
  end
  object dHistorial_Nomina: TDataSource
    DataSet = tHistorial_Nomina
    Left = 519
    Top = 181
  end
  object tHistorial_Nomina: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
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
    ProviderName = 'prHistorial_Nomina'
    AfterEdit = EditReminder
    OnReconcileError = DataSetReconcileErrors
    Left = 392
    Top = 181
    object tHistorial_NominaCompania: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Compania'
    end
    object tHistorial_NominaDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Departamento'
    end
    object tHistorial_NominaFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
    end
    object tHistorial_NominaFecha_Inicio: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Inicio'
    end
    object tHistorial_NominaFecha_Final: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Final'
    end
    object tHistorial_NominaStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Size = 15
    end
    object tHistorial_NominaPeriodo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Periodo'
      Size = 25
    end
    object tHistorial_NominaProceso_Nomina: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso_Nomina'
      Size = 25
    end
  end
  object tNomina: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    PacketRecords = 10
    Params = <
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
    ProviderName = 'prNomina'
    AfterEdit = tNominaAfterEdit
    OnCalcFields = tNominaCalcFields
    OnReconcileError = DataSetReconcileErrors
    Left = 392
    Top = 5
    object tNominaNumero_Nomina: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Nomina'
      Origin = '"Nomina"."Numero_Nomina"'
      DisplayFormat = #39'N-'#39'0000000000'
    end
    object tNominaCompania: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Compania'
      Origin = '"Nomina"."Compania"'
      OnValidate = ValidarFechas
    end
    object tNominaDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Departamento'
      Origin = '"Nomina"."Departamento"'
      OnValidate = tNominaDepartamentoValidate
    end
    object tNominaPeriodo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Periodo'
      Origin = '"Nomina"."Periodo"'
      OnValidate = ValidarFechas
      Size = 25
    end
    object tNominaFecha_Nomina: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Nomina'
      Origin = '"Nomina"."Fecha_Nomina"'
    end
    object tNominaFecha_Inicio: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Inicio'
      Origin = '"Nomina"."Fecha_Inicio"'
      OnValidate = tNominaFecha_InicioValidate
    end
    object tNominaFecha_Final: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Final'
      Origin = '"Nomina"."Fecha_Final"'
    end
    object tNominaFecha_Pago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Pago'
      Origin = '"Nomina"."Fecha_Pago"'
    end
    object tNominaTipo_Nomina: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Nomina'
      Origin = '"Nomina"."Tipo_Nomina"'
      Size = 25
    end
    object tNominaProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Nomina"."Proceso"'
      Size = 25
    end
    object tNominaqrDetalle_Nomina: TDataSetField
      AutoGenerateValue = arDefault
      FieldName = 'qrDetalle_Nomina'
    end
    object tNominaNombre_Compania: TStringField
      AutoGenerateValue = arDefault
      FieldKind = fkLookup
      FieldName = 'Nombre_Compania'
      LookupDataSet = tCompania
      LookupKeyFields = 'Numero_Compania'
      LookupResultField = 'Nombre_Compania'
      KeyFields = 'Compania'
      Size = 100
      Lookup = True
    end
    object tNominaNombre_Departamento: TStringField
      AutoGenerateValue = arDefault
      FieldKind = fkLookup
      FieldName = 'Nombre_Departamento'
      LookupDataSet = tDepartamentos
      LookupKeyFields = 'Numero'
      LookupResultField = 'Descripcion'
      KeyFields = 'Departamento'
      Size = 100
      Lookup = True
    end
    object tNominaTotal_Bruto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Bruto'
      Origin = '"Nomina"."Total_Bruto"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tNominaTotal_Extra: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Extra'
      Origin = '"Nomina"."Total_Extra"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tNominaTotal_Extraordinarias: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Extraordinarias'
      Origin = '"Nomina"."Total_Extraordinarias"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tNominaTotal_Deducciones: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Deducciones'
      Origin = '"Nomina"."Total_Deducciones"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tNominaTotal_Otros_Pagos: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Otros_Pagos'
      Origin = '"Nomina"."Total_Otros_Pagos"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tNominaTotal_Antes_Deducciones: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Antes_Deducciones'
      Origin = '"Nomina"."Total_Antes_Deducciones"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tNominaTotal_Neto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Neto'
      Origin = '"Nomina"."Total_Neto"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tNominaTotal_Pago_Banco: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Pago_Banco'
      Origin = '"Nomina"."Total_Pago_Banco"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tNominaTotal_Pago_Cheque: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Pago_Cheque'
      Origin = '"Nomina"."Total_Pago_Cheque"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tNominaTotal_Pago_Efectivo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Pago_Efectivo'
      Origin = '"Nomina"."Total_Pago_Efectivo"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tNominaUnidad_Organizativa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Unidad_Organizativa'
      Origin = '"Nomina"."Unidad_Organizativa"'
      Size = 25
    end
    object tNominaSimbolo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Simbolo'
      Origin = '"Nomina"."Simbolo"'
      Size = 25
    end
    object tNominaReferencia: TStringField
      AutoGenerateValue = arDefault
      FieldKind = fkCalculated
      FieldName = 'Referencia'
      Size = 25
      Calculated = True
    end
    object tNominaStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Nomina"."Status"'
      Size = 15
    end
    object tNominaDetalle_Dias: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Detalle_Dias'
      Size = 8
    end
    object tNominaArchivo_Detalle_Dias: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Archivo_Detalle_Dias'
      Size = 100
    end
  end
  object dNomina: TDataSource
    DataSet = tNomina
    Left = 519
    Top = 5
  end
  object tDetalle_Nomina: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    DataSetField = tNominaqrDetalle_Nomina
    PacketRecords = 10
    Params = <>
    OnCalcFields = tDetalle_NominaCalcFields
    OnReconcileError = DataSetReconcileErrors
    Left = 392
    Top = 47
    object tDetalle_NominaProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalle_Nomina"."Proceso"'
      Size = 25
    end
    object tDetalle_NominaEmpleado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Empleado'
      Origin = '"Detalle_Nomina"."Empleado"'
      Size = 25
    end
    object tDetalle_NominaFecha_Inicio: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Inicio'
      Origin = '"Detalle_Nomina"."Fecha_Inicio"'
    end
    object tDetalle_NominaFecha_Final: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Final'
      Origin = '"Detalle_Nomina"."Fecha_Final"'
    end
    object tDetalle_NominaTotal_Horas_Trabajadas: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Horas_Trabajadas'
      Origin = '"Detalle_Nomina"."Total_Horas_Trabajadas"'
      Precision = 18
      Size = 2
    end
    object tDetalle_NominaTotal_Horas_Extra: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Horas_Extra'
      Origin = '"Detalle_Nomina"."Total_Horas_Extra"'
      Precision = 18
      Size = 2
    end
    object tDetalle_NominaTotal_Horas_Extraordinarias: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Horas_Extraordinarias'
      Origin = '"Detalle_Nomina"."Total_Horas_Extraordinarias"'
      Precision = 18
      Size = 2
    end
    object tDetalle_NominaTotal_Deducciones: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Deducciones'
      Origin = '"Detalle_Nomina"."Total_Deducciones"'
      OnValidate = CalcularTotalNeto
      currency = True
      Precision = 18
      Size = 2
    end
    object tDetalle_NominaBase_Pago_Hora: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Base_Pago_Hora'
      Origin = '"Detalle_Nomina"."Base_Pago_Hora"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tDetalle_NominaPago_Hora: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pago_Hora'
      Origin = '"Detalle_Nomina"."Pago_Hora"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tDetalle_NominaPago_Horas_Extra: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pago_Horas_Extra'
      Origin = '"Detalle_Nomina"."Pago_Horas_Extra"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tDetalle_NominaPago_Horas_Extraordinaria: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pago_Horas_Extraordinaria'
      Origin = '"Detalle_Nomina"."Pago_Horas_Extraordinaria"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tDetalle_NominaSalario_Bruto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Salario_Bruto'
      Origin = '"Detalle_Nomina"."Salario_Bruto"'
      OnValidate = CalcularTotalNeto
      currency = True
      Precision = 18
      Size = 2
    end
    object tDetalle_NominaSalario_Extra: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Salario_Extra'
      Origin = '"Detalle_Nomina"."Salario_Extra"'
      OnValidate = CalcularTotalNeto
      currency = True
      Precision = 18
      Size = 2
    end
    object tDetalle_NominaFecha: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Detalle_Nomina"."Fecha"'
    end
    object tDetalle_NominaSalario_Extraordinarias: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Salario_Extraordinarias'
      Origin = '"Detalle_Nomina"."Salario_Extraordinarias"'
      OnValidate = CalcularTotalNeto
      currency = True
      Precision = 18
      Size = 2
    end
    object tDetalle_NominaqrDetalle_Deducciones: TDataSetField
      AutoGenerateValue = arDefault
      FieldName = 'qrDetalle_Deducciones'
    end
    object tDetalle_NominaTotal_Salario: TCurrencyField
      AutoGenerateValue = arDefault
      FieldKind = fkCalculated
      FieldName = 'Total_Salario'
      Calculated = True
    end
    object tDetalle_NominaNombre_Empleado: TStringField
      AutoGenerateValue = arDefault
      FieldKind = fkLookup
      FieldName = 'Nombre_Empleado'
      LookupDataSet = tListado_Empleados
      LookupKeyFields = 'Cedula_Rnc_Pasaporte'
      LookupResultField = 'NombreCompleto'
      KeyFields = 'Empleado'
      Size = 100
      Lookup = True
    end
    object tDetalle_NominaCargo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cargo'
      Origin = '"Detalle_Nomina"."Cargo"'
      Size = 100
    end
    object tDetalle_NominaOtras_Deducciones: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Otras_Deducciones'
      Origin = '"Detalle_Nomina"."Otras_Deducciones"'
      OnValidate = CalcularDeducciones
      currency = True
      Precision = 18
      Size = 2
    end
    object tDetalle_NominaDeducciones: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Deducciones'
      Origin = '"Detalle_Nomina"."Deducciones"'
      OnValidate = CalcularDeducciones
      currency = True
      Precision = 18
      Size = 2
    end
    object tDetalle_NominaTotal_Neto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Neto'
      Origin = '"Detalle_Nomina"."Total_Neto"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tDetalle_NominaOtros_Pagos: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Otros_Pagos'
      Origin = '"Detalle_Nomina"."Otros_Pagos"'
      OnValidate = CalcularTotalNeto
      currency = True
      Precision = 18
      Size = 2
    end
    object tDetalle_NominaqrDetalle_Pagos: TDataSetField
      AutoGenerateValue = arDefault
      FieldName = 'qrDetalle_Pagos'
    end
    object tDetalle_NominaTotal_Horas: TIntegerField
      AutoGenerateValue = arDefault
      FieldKind = fkCalculated
      FieldName = 'Total_Horas'
      Calculated = True
    end
    object tDetalle_NominaCuenta_Banco: TStringField
      AutoGenerateValue = arDefault
      FieldKind = fkLookup
      FieldName = 'Cuenta_Banco'
      LookupDataSet = tListado_Empleados
      LookupKeyFields = 'Cedula_Rnc_Pasaporte'
      LookupResultField = 'Numero_Cuenta'
      KeyFields = 'Empleado'
      Size = 15
      Lookup = True
    end
    object tDetalle_NominaCodigo_Banco: TStringField
      AutoGenerateValue = arDefault
      FieldKind = fkLookup
      FieldName = 'Codigo_Banco'
      LookupDataSet = tListado_Empleados
      LookupKeyFields = 'Cedula_Rnc_Pasaporte'
      LookupResultField = 'Codigo_Banco'
      KeyFields = 'Empleado'
      Size = 25
      Lookup = True
    end
    object tDetalle_NominaStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Size = 15
    end
    object tDetalle_NominaNumero_Cuenta: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Cuenta'
      Size = 25
    end
    object tDetalle_NominaCheque_Numero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Cheque_Numero'
    end
    object tDetalle_NominaProceso_Cheque: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso_Cheque'
      Size = 25
    end
    object tDetalle_NominaFecha_Cheque: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Cheque'
    end
    object tDetalle_NominaCheque_Anterior: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Cheque_Anterior'
    end
    object tDetalle_NominaProceso_Cheque_Anterior: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso_Cheque_Anterior'
      Size = 25
    end
    object tDetalle_NominaFecha_Cheque_Anterior: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Cheque_Anterior'
    end
  end
  object dDetalle_Nomina: TDataSource
    DataSet = tDetalle_Nomina
    Left = 519
    Top = 47
  end
  object tDetalle_Deducciones: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    DataSetField = tDetalle_NominaqrDetalle_Deducciones
    PacketRecords = 10
    Params = <
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
    OnReconcileError = DataSetReconcileErrors
    Left = 392
    Top = 91
    object tDetalle_DeduccionesProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalle_Deducciones"."Proceso"'
      Size = 25
    end
    object tDetalle_DeduccionesEmpleado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Empleado'
      Origin = '"Detalle_Deducciones"."Empleado"'
      Size = 25
    end
    object tDetalle_DeduccionesDeduccion: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Deduccion'
      Origin = '"Detalle_Deducciones"."Deduccion"'
    end
    object tDetalle_DeduccionesSalario: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Salario'
      Origin = '"Detalle_Deducciones"."Salario"'
      Precision = 18
      Size = 2
    end
    object tDetalle_DeduccionesMonto_Deducir: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Deducir'
      Origin = '"Detalle_Deducciones"."Monto_Deducir"'
      Precision = 18
      Size = 2
    end
    object tDetalle_DeduccionesTipo_Deduccion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Deduccion'
      Origin = '"Detalle_Deducciones"."Tipo_Deduccion"'
      Size = 25
    end
    object tDetalle_DeduccionesTotal_Deduccion: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Deduccion'
      Origin = '"Detalle_Deducciones"."Total_Deduccion"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tDetalle_DeduccionesNombre_Deduccion: TStringField
      FieldKind = fkLookup
      FieldName = 'Nombre_Deduccion'
      LookupDataSet = tDeducciones
      LookupKeyFields = 'Numero'
      LookupResultField = 'Descripcion'
      KeyFields = 'Deduccion'
      Size = 75
      Lookup = True
    end
  end
  object dDetalle_Deducciones: TDataSource
    DataSet = tDetalle_Deducciones
    Left = 519
    Top = 91
  end
  object tDetalle_Pagos: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    DataSetField = tDetalle_NominaqrDetalle_Pagos
    PacketRecords = 10
    Params = <
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
    OnReconcileError = DataSetReconcileErrors
    Left = 392
    Top = 138
    object tDetalle_PagosProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalle_Pagos"."Proceso"'
      Size = 25
    end
    object tDetalle_PagosEmpleado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Empleado'
      Origin = '"Detalle_Pagos"."Empleado"'
      Size = 25
    end
    object tDetalle_PagosPago: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Pago'
      Origin = '"Detalle_Pagos"."Pago"'
    end
    object tDetalle_PagosSalario: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Salario'
      Origin = '"Detalle_Pagos"."Salario"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tDetalle_PagosMonto_Pagar: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Pagar'
      Origin = '"Detalle_Pagos"."Monto_Pagar"'
      Precision = 18
      Size = 2
    end
    object tDetalle_PagosTipo_Pago: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Pago'
      Origin = '"Detalle_Pagos"."Tipo_Pago"'
      Size = 25
    end
    object tDetalle_PagosTotal_Pago: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Pago'
      Origin = '"Detalle_Pagos"."Total_Pago"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tDetalle_PagosNombre_Pago: TStringField
      FieldKind = fkLookup
      FieldName = 'Nombre_Pago'
      LookupDataSet = tPagos_Incentivos
      LookupKeyFields = 'Numero'
      LookupResultField = 'Descripcion'
      KeyFields = 'Pago'
      Size = 75
      Lookup = True
    end
  end
  object dDetalle_Pagos: TDataSource
    DataSet = tDetalle_Pagos
    Left = 519
    Top = 138
  end
  object tResumen_Detalle_Deducciones: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    PacketRecords = 10
    Params = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    ProviderName = 'prResumen_Detalle_Deducciones'
    OnReconcileError = DataSetReconcileErrors
    Left = 392
    Top = 225
    object tResumen_Detalle_DeduccionesDeduccion: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Deduccion'
    end
    object tResumen_Detalle_DeduccionesTOTAL_DEDUCCIONES: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_DEDUCCIONES'
      Precision = 18
      Size = 2
    end
    object tResumen_Detalle_DeduccionesNombre_Deduccion: TStringField
      FieldKind = fkLookup
      FieldName = 'Nombre_Deduccion'
      LookupDataSet = tDeducciones
      LookupKeyFields = 'Numero'
      LookupResultField = 'Descripcion'
      KeyFields = 'Deduccion'
      Size = 50
      Lookup = True
    end
  end
  object dResumen_Detalle_Deducciones: TDataSource
    DataSet = tResumen_Detalle_Deducciones
    Left = 519
    Top = 225
  end
  object tUltima_Nomina_Periodo: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
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
    ProviderName = 'prUltima_Nomina_Periodo'
    AfterEdit = EditReminder
    OnReconcileError = DataSetReconcileErrors
    Left = 392
    Top = 268
    object tUltima_Nomina_PeriodoUltima_Fecha_Inicio: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Ultima_Fecha_Inicio'
    end
    object tUltima_Nomina_PeriodoUltima_Fecha_Final: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Ultima_Fecha_Final'
    end
  end
  object tListado_Empleados: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <>
    ProviderName = 'prListado_Empleados'
    OnCalcFields = tListado_EmpleadosCalcFields
    OnReconcileError = DataSetReconcileErrors
    Left = 392
    Top = 311
    object tListado_EmpleadosCedula_Rnc_Pasaporte: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cedula_Rnc_Pasaporte'
      Origin = '"Empleados"."Cedula_Rnc_Pasaporte"'
      Size = 25
    end
    object tListado_EmpleadosTipo_Documento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Documento'
      Origin = '"Empleados"."Tipo_Documento"'
      Size = 25
    end
    object tListado_EmpleadosSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Empleados"."Secuencia"'
    end
    object tListado_EmpleadosNombre: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Origin = '"Empleados"."Nombre"'
      Size = 100
    end
    object tListado_EmpleadosApellido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Apellido'
      Origin = '"Empleados"."Apellido"'
      Size = 100
    end
    object tListado_EmpleadosNacionalidad: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nacionalidad'
      Origin = '"Empleados"."Nacionalidad"'
      Size = 25
    end
    object tListado_EmpleadosSexo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Sexo'
      Origin = '"Empleados"."Sexo"'
      Size = 25
    end
    object tListado_EmpleadosTipo_Telefono_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_1'
      Origin = '"Empleados"."Tipo_Telefono_1"'
    end
    object tListado_EmpleadosTipo_Telefono_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_2'
      Origin = '"Empleados"."Tipo_Telefono_2"'
    end
    object tListado_EmpleadosTipo_Telefono_3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_3'
      Origin = '"Empleados"."Tipo_Telefono_3"'
    end
    object tListado_EmpleadosTipo_Telefono_4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_4'
      Origin = '"Empleados"."Tipo_Telefono_4"'
    end
    object tListado_EmpleadosNumero_Telefono_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_1'
      Origin = '"Empleados"."Numero_Telefono_1"'
    end
    object tListado_EmpleadosNumero_Telefono_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_2'
      Origin = '"Empleados"."Numero_Telefono_2"'
    end
    object tListado_EmpleadosNumero_Telefono_3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_3'
      Origin = '"Empleados"."Numero_Telefono_3"'
    end
    object tListado_EmpleadosNumero_Telefono_4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_4'
      Origin = '"Empleados"."Numero_Telefono_4"'
    end
    object tListado_EmpleadosDireccion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion'
      Origin = '"Empleados"."Direccion"'
      Size = 255
    end
    object tListado_EmpleadosPais: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pais'
      Origin = '"Empleados"."Pais"'
      Size = 100
    end
    object tListado_EmpleadosCiudad: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ciudad'
      Origin = '"Empleados"."Ciudad"'
      Size = 100
    end
    object tListado_EmpleadosSector: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Sector'
      Origin = '"Empleados"."Sector"'
      Size = 100
    end
    object tListado_EmpleadosNombreCompleto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NombreCompleto'
      Origin = '"Empleados"."NombreCompleto"'
      ProviderFlags = []
      ReadOnly = True
      Size = 201
    end
    object tListado_EmpleadosNumero_Tarjeta: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Tarjeta'
      Origin = '"Empleados"."Numero_Tarjeta"'
      Size = 25
    end
    object tListado_EmpleadosNumero_Cuenta: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Cuenta'
      Origin = '"Empleados"."Numero_Cuenta"'
      Size = 25
    end
    object tListado_EmpleadosRegistrado_En_Fecha: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Registrado_En_Fecha'
      Origin = '"Empleados"."Registrado_En_Fecha"'
    end
    object tListado_Empleadosmail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mail'
      Origin = '"Empleados"."mail"'
      Size = 100
    end
    object tListado_EmpleadosFoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Foto'
      Origin = '"Empleados"."Foto"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object tListado_EmpleadosFecha_Nacimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Nacimiento'
      Origin = '"Empleados"."Fecha_Nacimiento"'
    end
    object tListado_EmpleadosEstado_Civil: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Estado_Civil'
      Origin = '"Empleados"."Estado_Civil"'
      Size = 15
    end
    object tListado_EmpleadosCodigo_Banco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo_Banco'
      Origin = '"Empleados"."Codigo_Banco"'
      Size = 25
    end
    object tListado_EmpleadosInicial: TStringField
      FieldKind = fkCalculated
      FieldName = 'Inicial'
      Size = 1
      Calculated = True
    end
  end
  object dListado_Empleados: TDataSource
    DataSet = tListado_Empleados
    Left = 519
    Top = 311
  end
  object tListado_Laboral: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
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
    ProviderName = 'prListado_Laboral'
    OnReconcileError = DataSetReconcileErrors
    Left = 392
    Top = 356
    object tListado_LaboralCedula_Rnc_Pasaporte: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cedula_Rnc_Pasaporte'
      Size = 25
    end
    object tListado_LaboralCompania: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Compania'
    end
    object tListado_LaboralDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Departamento'
    end
    object tListado_LaboralCargo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cargo'
      Size = 100
    end
    object tListado_LaboralSalario: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Salario'
      Precision = 18
      Size = 2
    end
    object tListado_LaboralGrupo_Deducciones: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Grupo_Deducciones'
    end
    object tListado_LaboralPeriodo_Nomina: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Periodo_Nomina'
      Size = 25
    end
    object tListado_LaboralTipo_Empleado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Empleado'
      Size = 15
    end
    object tListado_LaboralStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Size = 15
    end
    object tListado_LaboralFecha_Inicio: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Inicio'
    end
    object tListado_LaboralFecha_Salida: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Salida'
    end
    object tListado_LaboralTipo_Salario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Salario'
      Size = 15
    end
    object tListado_LaboralNombreCompleto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NombreCompleto'
      ReadOnly = True
      Size = 201
    end
    object tListado_LaboralUnidad_Organizativa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Unidad_Organizativa'
      Size = 25
    end
    object tListado_LaboralSimbolo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Simbolo'
      Size = 25
    end
  end
  object dListado_Laboral: TDataSource
    DataSet = tListado_Laboral
    Left = 519
    Top = 356
  end
  object dListado_Grupo_Nomina: TDataSource
    DataSet = tListado_Grupo_Nomina
    Left = 519
    Top = 401
  end
  object tListado_Grupo_Nomina: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <>
    ProviderName = 'prListado_Grupo_Nomina'
    OnReconcileError = DataSetReconcileErrors
    Left = 392
    Top = 401
    object tListado_Grupo_NominaDescripcion: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 65
      FieldName = 'Descripcion'
      Size = 100
    end
    object tListado_Grupo_NominaNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Visible = False
    end
    object tListado_Grupo_NominaRegistrado_En_Fecha: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Registrado_En_Fecha'
      Visible = False
    end
    object tListado_Grupo_NominaProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Visible = False
      Size = 25
    end
    object tListado_Grupo_NominaUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Visible = False
      Size = 100
    end
    object tListado_Grupo_NominaStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Visible = False
      Size = 15
    end
  end
  object tDetalle_Empleado: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    DataSetField = tEmpleadosqrDetalle_Empleado
    Params = <>
    OnReconcileError = DataSetReconcileErrors
    Left = 144
    Top = 91
    object tDetalle_EmpleadoCedula_Rnc_Pasaporte: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cedula_Rnc_Pasaporte'
      Size = 25
    end
    object tDetalle_EmpleadoTipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo'
      Size = 25
    end
    object tDetalle_EmpleadoNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
    end
    object tDetalle_EmpleadoDescripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Size = 100
    end
    object tDetalle_EmpleadoTipo_Aplicacion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Aplicacion'
      Size = 15
    end
    object tDetalle_EmpleadoMonto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto'
      Precision = 18
      Size = 2
    end
    object tDetalle_EmpleadoDeducir_De: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Deducir_De'
      Size = 50
    end
    object tDetalle_EmpleadoAplicable_A: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Aplicable_A'
      Size = 15
    end
    object tDetalle_EmpleadoRango_Inicial: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Rango_Inicial'
      Precision = 18
      Size = 2
    end
    object tDetalle_EmpleadoRango_Final: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Rango_Final'
      Precision = 18
      Size = 2
    end
    object tDetalle_EmpleadoRegistrado_En_Fecha: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Registrado_En_Fecha'
    end
    object tDetalle_EmpleadoUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Size = 100
    end
  end
  object dDetalle_Empleado: TDataSource
    DataSet = tDetalle_Empleado
    Left = 260
    Top = 91
  end
  object dSalarioEmpleado_Rango: TDataSource
    DataSet = tSalarioEmpleado_Rango
    Left = 263
    Top = 539
  end
  object tSalarioEmpleado_Rango: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Empleado'
        ParamType = ptInput
        Value = '026-0015931-9'
      end
      item
        DataType = ftDate
        Name = 'Fecha_1'
        ParamType = ptInput
        Value = '01/01/2006'
      end
      item
        DataType = ftDate
        Name = 'Fecha_2'
        ParamType = ptInput
        Value = '12/31/2006'
      end>
    ProviderName = 'prSalarioEmpleado_Rango'
    AfterEdit = EditReminder
    OnReconcileError = DataSetReconcileErrors
    Left = 144
    Top = 539
    object tSalarioEmpleado_RangoTotal_Salario_Rango: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Salario_Rango'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object tSalarioEmpleado_RangoCantidad_Salarios: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad_Salarios'
      ProviderFlags = []
    end
  end
  object Enlace: TSocketConnection
    ServerGUID = '{36D3ECC4-D488-4FBB-8548-0CDD7B8D2C08}'
    ServerName = 'PayRoll_Server.RemoteModule'
    Host = 'rms-mobile'
    Left = 24
    Top = 5
  end
  object Concentrador: TConnectionBroker
    Connection = Enlace
    Left = 24
    Top = 55
  end
  object DataSource1: TDataSource
    DataSet = tDesgloce_Efectivo
    Left = 508
    Top = 454
  end
  object tDesgloce_Efectivo: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    FileName = 'Desgloce_Efectivo.XML'
    IndexFieldNames = 'Empleado'
    MasterFields = 'Empleado'
    MasterSource = dDetalle_Nomina
    PacketRecords = 0
    Params = <>
    OnReconcileError = DataSetReconcileErrors
    Left = 392
    Top = 454
    object tDesgloce_EfectivoEmpleado: TStringField
      FieldName = 'Empleado'
      Size = 25
    end
    object tDesgloce_EfectivoMoneda: TCurrencyField
      FieldName = 'Moneda'
    end
    object tDesgloce_EfectivoCantidad: TIntegerField
      FieldName = 'Cantidad'
    end
    object tDesgloce_EfectivoTotal: TCurrencyField
      FieldName = 'Total'
    end
  end
end
