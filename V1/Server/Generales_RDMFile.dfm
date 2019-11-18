object Generales_RDM: TGenerales_RDM
  OldCreateOrder = False
  Height = 628
  Width = 845
  object qrClientes: TIBQuery
    SQL.Strings = (
      'Select  * From  "Clientes"'
      'Where "Cedula_Rnc_Pasaporte" = :Cedula_Rnc_Pasaporte'
      'Order By "Nombre", "Apellido"')
    UniDirectional = True
    Left = 44
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Cedula_Rnc_Pasaporte'
        ParamType = ptUnknown
      end>
    object qrClientesCedula_Rnc_Pasaporte: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir el N'#250'mero de C'#233'dula, RNC o Pasaporte del Cliente'
      FieldName = 'Cedula_Rnc_Pasaporte'
      Origin = '"Clientes"."Cedula_Rnc_Pasaporte"'
      Size = 25
    end
    object qrClientesNombre: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir el Nombre del Cliente'
      FieldName = 'Nombre'
      Origin = '"Clientes"."Nombre"'
      Size = 100
    end
    object qrClientesApellido: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Apellido'
      Origin = '"Clientes"."Apellido"'
      Size = 100
    end
    object qrClientesTipo_Cliente: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Persona'#39
      FieldName = 'Tipo_Cliente'
      Origin = '"Clientes"."Tipo_Cliente"'
    end
    object qrClientesTipo_Telefono_1: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Residencia'#39
      FieldName = 'Tipo_Telefono_1'
      Origin = '"Clientes"."Tipo_Telefono_1"'
    end
    object qrClientesTipo_Telefono_2: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Celular'#39
      FieldName = 'Tipo_Telefono_2'
      Origin = '"Clientes"."Tipo_Telefono_2"'
    end
    object qrClientesTipo_Telefono_3: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Trabajo'#39
      FieldName = 'Tipo_Telefono_3'
      Origin = '"Clientes"."Tipo_Telefono_3"'
    end
    object qrClientesTipo_Telefono_4: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Otro'#39
      FieldName = 'Tipo_Telefono_4'
      Origin = '"Clientes"."Tipo_Telefono_4"'
    end
    object qrClientesNumero_Telefono_1: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_1'
      Origin = '"Clientes"."Numero_Telefono_1"'
      EditMask = '!\(999\)000-0000;1; '
    end
    object qrClientesNumero_Telefono_2: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_2'
      Origin = '"Clientes"."Numero_Telefono_2"'
      EditMask = '!\(999\)000-0000;1; '
    end
    object qrClientesNumero_Telefono_3: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_3'
      Origin = '"Clientes"."Numero_Telefono_3"'
      EditMask = '!\(999\)000-0000;1; '
    end
    object qrClientesNumero_Telefono_4: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_4'
      Origin = '"Clientes"."Numero_Telefono_4"'
      EditMask = '!\(999\)000-0000;1; '
    end
    object qrClientesDireccion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion'
      Origin = '"Clientes"."Direccion"'
      Size = 255
    end
    object qrClientesPais: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'DOM'#39
      FieldName = 'Pais'
      Origin = '"Clientes"."Pais"'
      Size = 100
    end
    object qrClientesCiudad: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ciudad'
      Origin = '"Clientes"."Ciudad"'
      Size = 100
    end
    object qrClientesEstado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Estado'
      Origin = '"Clientes"."Estado"'
      Size = 100
    end
    object qrClientesLimite_Credito: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Limite_Credito'
      Origin = '"Clientes"."Limite_Credito"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrClientesCondicion_Cliente: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 
        'Debe seleccionar la condici'#243'n de facturaci'#243'n que se utilizar'#225' pa' +
        'ra este cliente'
      DefaultExpression = #39'Contado'#39
      FieldName = 'Condicion_Cliente'
      Origin = '"Clientes"."Condicion_Cliente"'
    end
    object qrClientesNombreCompleto: TIBStringField
      AutoGenerateValue = arDefault
      FieldKind = fkInternalCalc
      FieldName = 'NombreCompleto'
      Origin = '"Clientes"."NombreCompleto"'
      ProviderFlags = []
      ReadOnly = True
      Size = 201
    end
    object qrClientesTerminosFacturacion: TIntegerField
      AutoGenerateValue = arDefault
      CustomConstraint = '(Value > 0) And (Value <> Null)'
      ConstraintErrorMessage = 
        'Debe seleccionar el termino de facturaci'#243'n que se utilizar'#225' regu' +
        'larmente para este cliente '
      FieldName = 'TerminosFacturacion'
      Origin = '"Clientes"."TerminosFacturacion"'
    end
    object qrClientesNumero_Tarjeta: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Numero_Tarjeta'
      Origin = '"Clientes"."Numero_Tarjeta"'
      Size = 25
    end
    object qrClientesNumero_Cuenta: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Numero_Cuenta'
      Origin = '"Clientes"."Numero_Cuenta"'
      Size = 25
    end
    object qrClientesDescuento_Asignado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Asignado'
      Origin = '"Clientes"."Descuento_Asignado"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrClientesStatus: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'ACTIVO'#39
      FieldName = 'Status'
      Origin = '"Clientes"."Status"'
      Size = 15
    end
    object qrClientesFecha_Registro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Registro'
      Origin = '"Clientes"."Fecha_Registro"'
    end
    object qrClientesBalance_Actual: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Balance_Actual'
      Origin = '"Clientes"."Balance_Actual"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrClientesUltima_Factura: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Ultima_Factura'
      Origin = '"Clientes"."Ultima_Factura"'
      DisplayFormat = #39'F'#39'0000000000'
    end
    object qrClientesFecha_Ultima_Factura: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Ultima_Factura'
      Origin = '"Clientes"."Fecha_Ultima_Factura"'
    end
    object qrClientesmail: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'mail'
      Origin = '"Clientes"."mail"'
      Size = 100
    end
    object qrClientesSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Secuencia'
      Origin = '"Clientes"."Secuencia"'
      DisplayFormat = '000000'
    end
    object qrClientesProceso: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Proceso'
      Origin = '"Clientes"."Proceso"'
      Size = 25
    end
    object qrClientesFoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Foto'
      Origin = '"Clientes"."Foto"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qrClientesNacionalidad: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nacionalidad'
      Origin = '"Clientes"."Nacionalidad"'
      Size = 25
    end
    object qrClientesSexo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Sexo'
      Origin = '"Clientes"."Sexo"'
      Size = 25
    end
    object qrClientesSector: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Sector'
      Origin = '"Clientes"."Sector"'
    end
    object qrClientesFecha_Nacimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Nacimiento'
      Origin = '"Clientes"."Fecha_Nacimiento"'
    end
    object qrClientesEstado_Civil: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Estado_Civil'
      Origin = '"Clientes"."Estado_Civil"'
      Size = 15
    end
    object qrClientesZona: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Zona'
      Origin = '"Clientes"."Zona"'
    end
    object qrClientesLugar_Trabajo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Lugar_Trabajo'
      Origin = '"Clientes"."Lugar_Trabajo"'
      Size = 100
    end
  end
  object prClientes: TDataSetProvider
    DataSet = qrClientes
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 144
    Top = 136
  end
  object qrListado_Clientes: TIBQuery
    SQL.Strings = (
      'Select  * From  "Clientes"'
      'Where "Status" = '#39'ACTIVO'#39
      'Order By "NombreCompleto"')
    UniDirectional = True
    Left = 492
    Top = 567
    object qrListado_ClientesCedula_Rnc_Pasaporte: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cedula_Rnc_Pasaporte'
      Origin = '"Clientes"."Cedula_Rnc_Pasaporte"'
      Size = 25
    end
    object qrListado_ClientesNombre: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Origin = '"Clientes"."Nombre"'
      Size = 100
    end
    object qrListado_ClientesApellido: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Apellido'
      Origin = '"Clientes"."Apellido"'
      Size = 100
    end
    object qrListado_ClientesTipo_Cliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Cliente'
      Origin = '"Clientes"."Tipo_Cliente"'
    end
    object qrListado_ClientesTipo_Telefono_1: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_1'
      Origin = '"Clientes"."Tipo_Telefono_1"'
    end
    object qrListado_ClientesTipo_Telefono_2: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_2'
      Origin = '"Clientes"."Tipo_Telefono_2"'
    end
    object qrListado_ClientesTipo_Telefono_3: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_3'
      Origin = '"Clientes"."Tipo_Telefono_3"'
    end
    object qrListado_ClientesTipo_Telefono_4: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_4'
      Origin = '"Clientes"."Tipo_Telefono_4"'
    end
    object qrListado_ClientesNumero_Telefono_1: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_1'
      Origin = '"Clientes"."Numero_Telefono_1"'
    end
    object qrListado_ClientesNumero_Telefono_2: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_2'
      Origin = '"Clientes"."Numero_Telefono_2"'
    end
    object qrListado_ClientesNumero_Telefono_3: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_3'
      Origin = '"Clientes"."Numero_Telefono_3"'
    end
    object qrListado_ClientesNumero_Telefono_4: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_4'
      Origin = '"Clientes"."Numero_Telefono_4"'
    end
    object qrListado_ClientesDireccion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion'
      Origin = '"Clientes"."Direccion"'
      Size = 255
    end
    object qrListado_ClientesPais: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pais'
      Origin = '"Clientes"."Pais"'
      Size = 100
    end
    object qrListado_ClientesCiudad: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ciudad'
      Origin = '"Clientes"."Ciudad"'
      Size = 100
    end
    object qrListado_ClientesEstado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Estado'
      Origin = '"Clientes"."Estado"'
      Size = 100
    end
    object qrListado_ClientesLimite_Credito: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Limite_Credito'
      Origin = '"Clientes"."Limite_Credito"'
      Precision = 12
      Size = 2
    end
    object qrListado_ClientesCondicion_Cliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Condicion_Cliente'
      Origin = '"Clientes"."Condicion_Cliente"'
    end
    object qrListado_ClientesNombreCompleto: TIBStringField
      AutoGenerateValue = arDefault
      FieldKind = fkInternalCalc
      FieldName = 'NombreCompleto'
      Origin = '"Clientes"."NombreCompleto"'
      ProviderFlags = []
      ReadOnly = True
      Size = 201
    end
    object qrListado_ClientesTerminosFacturacion: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TerminosFacturacion'
      Origin = '"Clientes"."TerminosFacturacion"'
    end
    object qrListado_ClientesNumero_Tarjeta: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Tarjeta'
      Origin = '"Clientes"."Numero_Tarjeta"'
      Size = 25
    end
    object qrListado_ClientesNumero_Cuenta: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Cuenta'
      Origin = '"Clientes"."Numero_Cuenta"'
      Size = 25
    end
    object qrListado_ClientesDescuento_Asignado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Asignado'
      Origin = '"Clientes"."Descuento_Asignado"'
      Precision = 12
      Size = 2
    end
    object qrListado_ClientesStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Clientes"."Status"'
      Size = 15
    end
    object qrListado_ClientesFecha_Registro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Registro'
      Origin = '"Clientes"."Fecha_Registro"'
    end
    object qrListado_ClientesBalance_Actual: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Actual'
      Origin = '"Clientes"."Balance_Actual"'
      Precision = 12
      Size = 2
    end
    object qrListado_ClientesUltima_Factura: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ultima_Factura'
      Origin = '"Clientes"."Ultima_Factura"'
    end
    object qrListado_ClientesFecha_Ultima_Factura: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Ultima_Factura'
      Origin = '"Clientes"."Fecha_Ultima_Factura"'
    end
    object qrListado_Clientesmail: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'mail'
      Origin = '"Clientes"."mail"'
      Size = 100
    end
    object qrListado_ClientesSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Clientes"."Secuencia"'
    end
    object qrListado_ClientesProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Clientes"."Proceso"'
      Size = 25
    end
    object qrListado_ClientesFoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Foto'
      Origin = '"Clientes"."Foto"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qrListado_ClientesNacionalidad: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nacionalidad'
      Origin = '"Clientes"."Nacionalidad"'
      Size = 25
    end
    object qrListado_ClientesSexo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Sexo'
      Origin = '"Clientes"."Sexo"'
      Size = 25
    end
    object qrListado_ClientesSector: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Sector'
      Origin = '"Clientes"."Sector"'
    end
    object qrListado_ClientesFecha_Nacimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Nacimiento'
      Origin = '"Clientes"."Fecha_Nacimiento"'
    end
    object qrListado_ClientesEstado_Civil: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Estado_Civil'
      Origin = '"Clientes"."Estado_Civil"'
      Size = 15
    end
    object qrListado_ClientesZona: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Zona'
      Origin = '"Clientes"."Zona"'
    end
    object qrListado_ClientesLugar_Trabajo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Lugar_Trabajo'
      Origin = '"Clientes"."Lugar_Trabajo"'
      Size = 100
    end
  end
  object prListado_Clientes: TDataSetProvider
    DataSet = qrListado_Clientes
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 592
    Top = 567
  end
  object qrDepartamentos: TIBQuery
    SQL.Strings = (
      'Select  * From  "Departamentos"'
      'Order By "Descripcion"')
    UniDirectional = True
    Left = 40
    Top = 214
    object qrDepartamentosID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Departamentos"."ID"'
      Size = 50
    end
    object qrDepartamentosNumero: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero'
      Origin = '"Departamentos"."Numero"'
      DisplayFormat = '000000'
    end
    object qrDepartamentosDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir una Descripci'#243'n para el Departamento'
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
  end
  object prDepartamentos: TDataSetProvider
    DataSet = qrDepartamentos
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 144
    Top = 214
  end
  object qrCategoria: TIBQuery
    SQL.Strings = (
      'Select  * From  "Categorias"'
      'Order By "Descripcion"')
    UniDirectional = True
    Left = 40
    Top = 286
    object qrCategoriaNumero: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero'
      Origin = '"Categorias"."Numero"'
      DisplayFormat = '000000'
    end
    object qrCategoriaDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir una Descripci'#243'n para la Categor'#237'a'
      FieldName = 'Descripcion'
      Origin = '"Categorias"."Descripcion"'
      Size = 100
    end
    object qrCategoriaUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Categorias"."Usuario"'
      Size = 100
    end
  end
  object prCategoria: TDataSetProvider
    DataSet = qrCategoria
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 144
    Top = 286
  end
  object qrParametros: TIBQuery
    SQL.Strings = (
      'Select  * From "Parametros"'
      'Where ("Terminal" = :Terminal)')
    UniDirectional = True
    Left = 44
    Top = 63
    ParamData = <
      item
        DataType = ftString
        Name = 'Terminal'
        ParamType = ptInput
      end>
  end
  object prParametros: TDataSetProvider
    DataSet = qrParametros
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 144
    Top = 63
  end
  object qrFabricante: TIBQuery
    SQL.Strings = (
      'Select  * From  "Fabricantes"'
      'Order By "Nombre"')
    UniDirectional = True
    Left = 224
    Top = 88
    object qrFabricanteNumero: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero'
      Origin = '"Fabricantes"."Numero"'
      DisplayFormat = '000000'
    end
    object qrFabricanteCedula_Rnc_Pasaporte: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cedula_Rnc_Pasaporte'
      Origin = '"Fabricantes"."Cedula_Rnc_Pasaporte"'
      Size = 25
    end
    object qrFabricanteNombre: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe Introducir el Nombre del Fabricante'
      FieldName = 'Nombre'
      Origin = '"Fabricantes"."Nombre"'
      Size = 100
    end
    object qrFabricanteRepresentante: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'PROVEEDOR'#39
      FieldName = 'Representante'
      Origin = '"Fabricantes"."Representante"'
      Size = 100
    end
    object qrFabricanteDireccion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion'
      Origin = '"Fabricantes"."Direccion"'
      Size = 255
    end
    object qrFabricantePais: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pais'
      Origin = '"Fabricantes"."Pais"'
      Size = 100
    end
    object qrFabricanteCiudad: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ciudad'
      Origin = '"Fabricantes"."Ciudad"'
      Size = 100
    end
    object qrFabricanteEstado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Estado'
      Origin = '"Fabricantes"."Estado"'
      Size = 100
    end
    object qrFabricanteSector: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Sector'
      Origin = '"Fabricantes"."Sector"'
      Size = 100
    end
    object qrFabricanteStatus: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'ACTIVO'#39
      FieldName = 'Status'
      Origin = '"Fabricantes"."Status"'
      Size = 15
    end
    object qrFabricanteFecha_Registro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Registro'
      Origin = '"Fabricantes"."Fecha_Registro"'
    end
    object qrFabricanteFoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Foto'
      Origin = '"Fabricantes"."Foto"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
  end
  object prFabricante: TDataSetProvider
    DataSet = qrFabricante
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 328
    Top = 88
  end
  object qrProveedores: TIBQuery
    SQL.Strings = (
      'Select  * From  "Proveedores"'
      'Order By "Nombre"')
    UniDirectional = True
    Left = 408
    Top = 88
    object qrProveedoresNumero: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero'
      Origin = '"Proveedores"."Numero"'
      DisplayFormat = '000000'
    end
    object qrProveedoresCedula_Rnc_Pasaporte: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir la C'#233'dula, RNC o Pasaporte del Proveedor'
      FieldName = 'Cedula_Rnc_Pasaporte'
      Origin = '"Proveedores"."Cedula_Rnc_Pasaporte"'
      Size = 25
    end
    object qrProveedoresNombre: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir el Nombre del Proveedor'
      FieldName = 'Nombre'
      Origin = '"Proveedores"."Nombre"'
      Size = 100
    end
    object qrProveedoresContacto: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Vendedor'#39
      FieldName = 'Contacto'
      Origin = '"Proveedores"."Contacto"'
      Size = 100
    end
    object qrProveedoresTipo_Suplidor: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Compa'#241#237'a'#39
      FieldName = 'Tipo_Suplidor'
      Origin = '"Proveedores"."Tipo_Suplidor"'
    end
    object qrProveedoresTipo_Telefono_1: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Oficina'#39
      FieldName = 'Tipo_Telefono_1'
      Origin = '"Proveedores"."Tipo_Telefono_1"'
    end
    object qrProveedoresTipo_Telefono_2: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Fax'#39
      FieldName = 'Tipo_Telefono_2'
      Origin = '"Proveedores"."Tipo_Telefono_2"'
    end
    object qrProveedoresTipo_Telefono_3: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Otro'#39
      FieldName = 'Tipo_Telefono_3'
      Origin = '"Proveedores"."Tipo_Telefono_3"'
    end
    object qrProveedoresTipo_Telefono_4: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Celular'#39
      FieldName = 'Tipo_Telefono_4'
      Origin = '"Proveedores"."Tipo_Telefono_4"'
    end
    object qrProveedoresNumero_Telefono_1: TIBStringField
      AutoGenerateValue = arDefault
      DisplayLabel = '(###)###-####'
      FieldName = 'Numero_Telefono_1'
      Origin = '"Proveedores"."Numero_Telefono_1"'
      EditMask = '!\(999\)000-0000;1; '
    end
    object qrProveedoresNumero_Telefono_2: TIBStringField
      AutoGenerateValue = arDefault
      DisplayLabel = '(###)###-####'
      FieldName = 'Numero_Telefono_2'
      Origin = '"Proveedores"."Numero_Telefono_2"'
      EditMask = '!\(999\)000-0000;1; '
    end
    object qrProveedoresNumero_Telefono_3: TIBStringField
      AutoGenerateValue = arDefault
      DisplayLabel = '(###)###-####'
      FieldName = 'Numero_Telefono_3'
      Origin = '"Proveedores"."Numero_Telefono_3"'
      EditMask = '!\(999\)000-0000;1; '
    end
    object qrProveedoresNumero_Telefono_4: TIBStringField
      AutoGenerateValue = arDefault
      DisplayLabel = '(###)###-####'
      FieldName = 'Numero_Telefono_4'
      Origin = '"Proveedores"."Numero_Telefono_4"'
      EditMask = '!\(999\)000-0000;1; '
    end
    object qrProveedoresDireccion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion'
      Origin = '"Proveedores"."Direccion"'
      Size = 255
    end
    object qrProveedoresPais: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pais'
      Origin = '"Proveedores"."Pais"'
      Size = 100
    end
    object qrProveedoresCiudad: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ciudad'
      Origin = '"Proveedores"."Ciudad"'
      Size = 100
    end
    object qrProveedoresEstado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Estado'
      Origin = '"Proveedores"."Estado"'
      Size = 100
    end
    object qrProveedoresSector: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Sector'
      Origin = '"Proveedores"."Sector"'
      Size = 100
    end
    object qrProveedoresLimite_Credito: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Limite_Credito'
      Origin = '"Proveedores"."Limite_Credito"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrProveedoresCondicion_Suplidor: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 
        'Debe seleccionar la condici'#243'n de facturaci'#243'n utilizada con este ' +
        'proveedor'
      DefaultExpression = #39'Cr'#233'dito'#39
      FieldName = 'Condicion_Suplidor'
      Origin = '"Proveedores"."Condicion_Suplidor"'
    end
    object qrProveedoresNombreCompleto: TIBStringField
      AutoGenerateValue = arDefault
      FieldKind = fkInternalCalc
      FieldName = 'NombreCompleto'
      Origin = '"Proveedores"."NombreCompleto"'
      ProviderFlags = []
      ReadOnly = True
      Size = 203
    end
    object qrProveedoresTerminosFacturacion: TIntegerField
      AutoGenerateValue = arDefault
      CustomConstraint = '(Value > 0) And (Value <> Null)'
      ConstraintErrorMessage = 
        'Debe seleccionar el termino de facturaci'#243'n utilizado para este p' +
        'roveedor'
      DefaultExpression = '1'
      FieldName = 'TerminosFacturacion'
      Origin = '"Proveedores"."TerminosFacturacion"'
    end
    object qrProveedoresNumero_Tarjeta: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Numero_Tarjeta'
      Origin = '"Proveedores"."Numero_Tarjeta"'
      Size = 25
    end
    object qrProveedoresNumero_Cuenta: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Numero_Cuenta'
      Origin = '"Proveedores"."Numero_Cuenta"'
      Size = 25
    end
    object qrProveedoresDescuento_Asignado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Asignado'
      Origin = '"Proveedores"."Descuento_Asignado"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrProveedoresStatus: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'ACTIVO'#39
      FieldName = 'Status'
      Origin = '"Proveedores"."Status"'
      Size = 15
    end
    object qrProveedoresFecha_Registro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Registro'
      Origin = '"Proveedores"."Fecha_Registro"'
    end
    object qrProveedoresBalance_Actual: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Balance_Actual'
      Origin = '"Proveedores"."Balance_Actual"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrProveedoresUltima_Factura: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Ultima_Factura'
      Origin = '"Proveedores"."Ultima_Factura"'
      DisplayFormat = #39'F'#39'0000000000'
    end
    object qrProveedoresFecha_Ultima_Factura: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Ultima_Factura'
      Origin = '"Proveedores"."Fecha_Ultima_Factura"'
    end
    object qrProveedoresmail: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'mail'
      Origin = '"Proveedores"."mail"'
      Size = 100
    end
    object qrProveedoresFoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Foto'
      Origin = '"Proveedores"."Foto"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qrProveedoresZona: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Zona'
      Origin = '"Proveedores"."Zona"'
    end
  end
  object prProveedores: TDataSetProvider
    DataSet = qrProveedores
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 512
    Top = 88
  end
  object qrTerminos: TIBQuery
    SQL.Strings = (
      'Select  * From  "Terminos"'
      'Order By "Descripcion"')
    UniDirectional = True
    Left = 40
    Top = 355
    object qrTerminosNumero_Termino: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Termino'
      Origin = '"Terminos"."Numero_Termino"'
    end
    object qrTerminosDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir una Descripci'#243'n para el T'#233'rmino de Facturaci'#243'n'
      FieldName = 'Descripcion'
      Origin = '"Terminos"."Descripcion"'
      Size = 100
    end
    object qrTerminosFormaDeVencimiento: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'FormaDeVencimiento'
      Origin = '"Terminos"."FormaDeVencimiento"'
      Size = 25
    end
    object qrTerminosDiasDeGracia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DiasDeGracia'
      Origin = '"Terminos"."DiasDeGracia"'
    end
    object qrTerminosMargenDeDias: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MargenDeDias'
      Origin = '"Terminos"."MargenDeDias"'
    end
  end
  object prTerminos: TDataSetProvider
    DataSet = qrTerminos
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 144
    Top = 355
  end
  object qrCiudades: TIBQuery
    SQL.Strings = (
      'Select  * From "Ciudades_Estados"'
      'Where "Pais"= :Pais'
      'Order By "Nombre", "Pais"')
    UniDirectional = True
    Left = 224
    Top = 221
    ParamData = <
      item
        DataType = ftString
        Name = 'Pais'
        ParamType = ptInput
      end>
    object qrCiudadesSerie_Codigo: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 
        'Debe escribir el n'#250'mero de serie, c'#243'digo postal o de identificac' +
        'i'#243'n de la ciudad'
      FieldName = 'Serie_Codigo'
      Origin = '"Ciudades_Estados"."Serie_Codigo"'
      Size = 25
    end
    object qrCiudadesPais: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'DOM'#39
      FieldName = 'Pais'
      Origin = '"Ciudades_Estados"."Pais"'
      Size = 25
    end
    object qrCiudadesNombre: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe escribir el nombre de la ciudad'
      FieldName = 'Nombre'
      Origin = '"Ciudades_Estados"."Nombre"'
      Size = 100
    end
  end
  object prCiudades: TDataSetProvider
    DataSet = qrCiudades
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 328
    Top = 229
  end
  object qrPaises: TIBQuery
    SQL.Strings = (
      'Select  * From "Paises"'
      
        'Where ("Iso_3_Char" = :Iso_3_Char) Or ("Iso_2_Char" = :Iso_2_Cha' +
        'r)')
    UniDirectional = True
    Left = 224
    Top = 161
    ParamData = <
      item
        DataType = ftString
        Name = 'Iso_3_Char'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Iso_2_Char'
        ParamType = ptInput
      end>
    object qrPaisesIso_3_Char: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir el c'#243'digo del pa'#237's (3 caracteres)'
      FieldName = 'Iso_3_Char'
      Origin = '"Paises"."Iso_3_Char"'
      EditMask = 'AAA;1; '
      Size = 25
    end
    object qrPaisesIso_2_Char: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir el c'#243'digo del pa'#237's (2 caracteres)'
      FieldName = 'Iso_2_Char'
      Origin = '"Paises"."Iso_2_Char"'
      EditMask = 'AA;1; '
      Size = 25
    end
    object qrPaisesNombre: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = #39'Debe escribir el nombre del pa'#237's'#39
      FieldName = 'Nombre'
      Origin = '"Paises"."Nombre"'
      Size = 100
    end
    object qrPaisesRegion: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Region'
      Origin = '"Paises"."Region"'
      Size = 100
    end
    object qrPaisesIdioma: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Idioma'
      Origin = '"Paises"."Idioma"'
      Size = 25
    end
  end
  object prPaises: TDataSetProvider
    DataSet = qrPaises
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 328
    Top = 160
  end
  object qrSector: TIBQuery
    SQL.Strings = (
      'Select  * From "Sector"'
      'Where ("Ciudad" = :Ciudad)'
      'Order By "Nombre", "Ciudad"')
    UniDirectional = True
    Left = 224
    Top = 353
    ParamData = <
      item
        DataType = ftString
        Name = 'Ciudad'
        ParamType = ptInput
      end>
    object qrSectorNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Sector"."Numero"'
    end
    object qrSectorCiudad: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe seleccionar la ciudad a la que pertenece el sector'
      FieldName = 'Ciudad'
      Origin = '"Sector"."Ciudad"'
      Size = 25
    end
    object qrSectorNombre: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe escribir el nombre del sector'
      FieldName = 'Nombre'
      Origin = '"Sector"."Nombre"'
      Size = 100
    end
    object qrSectorAbreviatura: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Abreviatura'
      Origin = '"Sector"."Abreviatura"'
      Size = 25
    end
  end
  object prSector: TDataSetProvider
    DataSet = qrSector
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 328
    Top = 350
  end
  object qrZona: TIBQuery
    SQL.Strings = (
      'Select  * From "Zona"'
      'Where ("Ciudad" = :Ciudad)'
      'Order By "Descripcion", "Ciudad"')
    UniDirectional = True
    Left = 224
    Top = 285
    ParamData = <
      item
        DataType = ftString
        Name = 'Ciudad'
        ParamType = ptInput
      end>
    object qrZonaNumero: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero'
      Origin = '"Zona"."Numero"'
      DisplayFormat = '000000'
    end
    object qrZonaCiudad: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe seleccionar la ciudad a la que pertenece la zona'
      FieldName = 'Ciudad'
      Origin = '"Zona"."Ciudad"'
      Size = 25
    end
    object qrZonaDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe escribir una descripci'#243'n para la zona'
      FieldName = 'Descripcion'
      Origin = '"Zona"."Descripcion"'
      Size = 100
    end
  end
  object prZona: TDataSetProvider
    DataSet = qrZona
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 328
    Top = 284
  end
  object qrListado_Paises: TIBQuery
    SQL.Strings = (
      'Select  * From "Paises"'
      'Order By "Nombre", "Region"')
    UniDirectional = True
    Left = 224
    Top = 408
    object IBStringField5: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir el c'#243'digo del pa'#237's (3 caracteres)'
      FieldName = 'Iso_3_Char'
      Origin = '"Paises"."Iso_3_Char"'
      EditMask = 'AAA;1; '
      Size = 25
    end
    object IBStringField6: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir el c'#243'digo del pa'#237's (2 caracteres)'
      FieldName = 'Iso_2_Char'
      Origin = '"Paises"."Iso_2_Char"'
      EditMask = 'AA;1; '
      Size = 25
    end
    object IBStringField7: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = #39'Debe escribir el nombre del pa'#237's'#39
      FieldName = 'Nombre'
      Origin = '"Paises"."Nombre"'
      Size = 100
    end
    object IBStringField8: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Region'
      Origin = '"Paises"."Region"'
      Size = 100
    end
    object IBStringField9: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Idioma'
      Origin = '"Paises"."Idioma"'
      Size = 25
    end
  end
  object prListado_Paises: TDataSetProvider
    DataSet = qrListado_Paises
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 328
    Top = 408
  end
  object prComprobantes_Fiscales: TDataSetProvider
    DataSet = qrComprobantes_Fiscales
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 142
    Top = 482
  end
  object qrComprobantes_Fiscales: TIBQuery
    SQL.Strings = (
      'Select  * From  "Comprobantes_Fiscales"'
      'Where "Aplicable" = :Aplicable Or "Aplicable" = '#39'AL'#39
      'Order By "Tipo"')
    UniDirectional = True
    Left = 36
    Top = 482
    ParamData = <
      item
        DataType = ftString
        Name = 'Aplicable'
        ParamType = ptInput
      end>
    object qrComprobantes_FiscalesTipo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo'
      Origin = '"Comprobantes_Fiscales"."Tipo"'
      Size = 2
    end
    object qrComprobantes_FiscalesAplicable: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Aplicable'
      Origin = '"Comprobantes_Fiscales"."Aplicable"'
      Size = 2
    end
    object qrComprobantes_FiscalesSucursal: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Sucursal'
      Origin = '"Comprobantes_Fiscales"."Sucursal"'
      Size = 50
    end
    object qrComprobantes_FiscalesDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Comprobantes_Fiscales"."Descripcion"'
      Size = 100
    end
    object qrComprobantes_FiscalesTitulo_Impresion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Titulo_Impresion'
      Origin = '"Comprobantes_Fiscales"."Titulo_Impresion"'
      Size = 255
    end
    object qrComprobantes_FiscalesSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Comprobantes_Fiscales"."Secuencia"'
    end
    object qrComprobantes_FiscalesID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Comprobantes_Fiscales"."ID"'
      Size = 50
    end
  end
  object prTerminales: TDataSetProvider
    DataSet = qrTerminales
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 432
    Top = 13
  end
  object qrTerminales: TIBQuery
    SQL.Strings = (
      'SELECT * '
      'FROM "Terminales" '
      'ORDER BY "Descripcion", "ID"')
    UniDirectional = True
    Left = 336
    Top = 13
    object qrTerminalesID: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe Introducir una Identificacion para la Terminal'
      FieldName = 'ID'
      Origin = '"Terminales"."ID"'
      Size = 25
    end
    object qrTerminalesDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Terminal'#39
      FieldName = 'Descripcion'
      Origin = '"Terminales"."Descripcion"'
      Size = 100
    end
    object qrTerminalesStatus: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'ACTIVO'#39
      FieldName = 'Status'
      Origin = '"Terminales"."Status"'
      Size = 25
    end
    object qrTerminalesHora_Apertura: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora_Apertura'
      Origin = '"Terminales"."Hora_Apertura"'
    end
    object qrTerminalesHora_Cierre: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora_Cierre'
      Origin = '"Terminales"."Hora_Cierre"'
    end
    object qrTerminalesNombre: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Nombre de la Terminal'#39
      FieldName = 'Nombre'
      Origin = '"Terminales"."Nombre"'
      Size = 100
    end
    object qrTerminalesNombre_2: TIBStringField
      FieldName = 'Nombre_2'
      Origin = '"Terminales"."Nombre_2"'
      Size = 100
    end
    object qrTerminalesNombre_3: TIBStringField
      FieldName = 'Nombre_3'
      Origin = '"Terminales"."Nombre_3"'
      Size = 100
    end
    object qrTerminalesDireccion: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'La Romana'#39
      FieldName = 'Direccion'
      Origin = '"Terminales"."Direccion"'
      Size = 100
    end
    object qrTerminalesDireccion_2: TIBStringField
      FieldName = 'Direccion_2'
      Origin = '"Terminales"."Direccion_2"'
      Size = 100
    end
    object qrTerminalesCiudad: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'La Romana'#39
      FieldName = 'Ciudad'
      Origin = '"Terminales"."Ciudad"'
      Size = 100
    end
    object qrTerminalesPais: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Rep. Dom.'#39
      FieldName = 'Pais'
      Origin = '"Terminales"."Pais"'
      Size = 100
    end
    object qrTerminalesTelefono: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefono'
      Origin = '"Terminales"."Telefono"'
      Size = 15
    end
    object qrTerminalesImpresora: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'EPSON'#39
      FieldName = 'Impresora'
      Origin = '"Terminales"."Impresora"'
      Size = 15
    end
    object qrTerminalesPuerto: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'LPT1:'#39
      FieldName = 'Puerto'
      Origin = '"Terminales"."Puerto"'
      Size = 15
    end
    object qrTerminalesFormato_Numeros: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Formato_Numeros'
      Origin = '"Terminales"."Formato_Numeros"'
    end
    object qrTerminalesComentario_1: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_1'
      Origin = '"Terminales"."Comentario_1"'
      Size = 100
    end
    object qrTerminalesComentario_2: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_2'
      Origin = '"Terminales"."Comentario_2"'
      Size = 100
    end
    object qrTerminalesComentario_3: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_3'
      Origin = '"Terminales"."Comentario_3"'
      Size = 100
    end
    object qrTerminalesComentario_4: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_4'
      Origin = '"Terminales"."Comentario_4"'
      Size = 100
    end
    object qrTerminalesSeparador_Linea: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Separador_Linea'
      Origin = '"Terminales"."Separador_Linea"'
      FixedChar = True
      Size = 1
    end
    object qrTerminalesSimbolo_Moneda: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Simbolo_Moneda'
      Origin = '"Terminales"."Simbolo_Moneda"'
      Size = 6
    end
    object qrTerminalesFormato_Fecha: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Formato_Fecha'
      Origin = '"Terminales"."Formato_Fecha"'
      Size = 100
    end
    object qrTerminalesFormato_Hora: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Formato_Hora'
      Origin = '"Terminales"."Formato_Hora"'
      Size = 100
    end
    object qrTerminalesFormato_Fecha_Largo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Formato_Fecha_Largo'
      Origin = '"Terminales"."Formato_Fecha_Largo"'
      Size = 100
    end
    object qrTerminalesFormato_Hora_Largo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Formato_Hora_Largo'
      Origin = '"Terminales"."Formato_Hora_Largo"'
      Size = 100
    end
    object qrTerminalesFormato_N_T_H: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Formato_N_T_H'
      Origin = '"Terminales"."Formato_N_T_H"'
      Size = 100
    end
    object qrTerminalesCtrl_Alt_Del: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Ctrl_Alt_Del'
      Origin = '"Terminales"."Ctrl_Alt_Del"'
    end
    object qrTerminalesAlt_F4: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Alt_F4'
      Origin = '"Terminales"."Alt_F4"'
    end
    object qrTerminalesBarra: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Barra'
      Origin = '"Terminales"."Barra"'
    end
    object qrTerminalesPanel: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Panel'
      Origin = '"Terminales"."Panel"'
    end
    object qrTerminalesRun: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Run'
      Origin = '"Terminales"."Run"'
    end
    object qrTerminalesFind: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Find'
      Origin = '"Terminales"."Find"'
    end
    object qrTerminalesWinKey: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'WinKey'
      Origin = '"Terminales"."WinKey"'
    end
    object qrTerminalesColor_Pantallas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Color_Pantallas'
      Origin = '"Terminales"."Color_Pantallas"'
    end
    object qrTerminalesApagar_Salir: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Apagar_Salir'
      Origin = '"Terminales"."Apagar_Salir"'
    end
    object qrTerminalesLineas_Despues: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Lineas_Despues'
      Origin = '"Terminales"."Lineas_Despues"'
    end
    object qrTerminalesAncho_Linea: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ancho_Linea'
      Origin = '"Terminales"."Ancho_Linea"'
    end
    object qrTerminalesDireccion_Local: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion_Local'
      Origin = '"Terminales"."Direccion_Local"'
      Size = 100
    end
    object qrTerminalesIcon: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Icon'
      Origin = '"Terminales"."Icon"'
    end
    object qrTerminalesBalance: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Origin = '"Terminales"."Balance"'
      Precision = 12
      Size = 2
    end
    object qrTerminalesUltima_Cta: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ultima_Cta'
      Origin = '"Terminales"."Ultima_Cta"'
    end
    object qrTerminalesFecha_Ultima_Cta: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Ultima_Cta'
      Origin = '"Terminales"."Fecha_Ultima_Cta"'
    end
    object qrTerminalesRNC: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'RNC'
      Origin = '"Terminales"."RNC"'
      Size = 50
    end
    object qrTerminalesNombre_Impuesto: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Impuesto'
      Origin = '"Terminales"."Nombre_Impuesto"'
      Size = 25
    end
    object qrTerminalesCondicion_Facturas: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Condicion_Facturas'
      Origin = '"Terminales"."Condicion_Facturas"'
      Size = 25
    end
    object qrTerminalesTipo_Factura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Factura'
      Origin = '"Terminales"."Tipo_Factura"'
      Size = 25
    end
    object qrTerminalesTermino_Facturacion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Termino_Facturacion'
      Origin = '"Terminales"."Termino_Facturacion"'
      Size = 25
    end
    object qrTerminalesInventario_Restringido: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Inventario_Restringido'
      Origin = '"Terminales"."Inventario_Restringido"'
    end
    object qrTerminalesAperturar_Caja: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Aperturar_Caja'
      Origin = '"Terminales"."Aperturar_Caja"'
    end
    object qrTerminalesDecimales_Cantidades: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Decimales_Cantidades'
      Origin = '"Terminales"."Decimales_Cantidades"'
      Size = 25
    end
    object qrTerminalesAlmacen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Origin = '"Terminales"."Almacen"'
      Size = 25
    end
  end
  object prTerminal: TDataSetProvider
    DataSet = qrTerminal
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 496
    Top = 156
  end
  object qrTerminal: TIBQuery
    SQL.Strings = (
      'SELECT * '
      'FROM "Terminales" '
      'Where "ID" = :ID')
    UniDirectional = True
    Left = 408
    Top = 156
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
      end>
    object qrTerminalID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Terminales"."ID"'
      Size = 50
    end
    object qrTerminalDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Terminales"."Descripcion"'
      Size = 100
    end
    object qrTerminalStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Terminales"."Status"'
      Size = 50
    end
    object qrTerminalImpresora: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Impresora'
      Origin = '"Terminales"."Impresora"'
    end
    object qrTerminalPuerto: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Puerto'
      Origin = '"Terminales"."Puerto"'
    end
    object qrTerminalFormato_Numeros: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Formato_Numeros'
      Origin = '"Terminales"."Formato_Numeros"'
    end
    object qrTerminalComentario_1: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_1'
      Origin = '"Terminales"."Comentario_1"'
      Size = 100
    end
    object qrTerminalComentario_2: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_2'
      Origin = '"Terminales"."Comentario_2"'
      Size = 100
    end
    object qrTerminalComentario_3: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_3'
      Origin = '"Terminales"."Comentario_3"'
      Size = 100
    end
    object qrTerminalComentario_4: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_4'
      Origin = '"Terminales"."Comentario_4"'
      Size = 100
    end
    object qrTerminalSeparador_Linea: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Separador_Linea'
      Origin = '"Terminales"."Separador_Linea"'
      FixedChar = True
      Size = 1
    end
    object qrTerminalSimbolo_Moneda: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Simbolo_Moneda'
      Origin = '"Terminales"."Simbolo_Moneda"'
      Size = 6
    end
    object qrTerminalFormato_Fecha: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Formato_Fecha'
      Origin = '"Terminales"."Formato_Fecha"'
      Size = 100
    end
    object qrTerminalFormato_Hora: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Formato_Hora'
      Origin = '"Terminales"."Formato_Hora"'
      Size = 100
    end
    object qrTerminalFormato_Fecha_Largo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Formato_Fecha_Largo'
      Origin = '"Terminales"."Formato_Fecha_Largo"'
      Size = 100
    end
    object qrTerminalFormato_Hora_Largo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Formato_Hora_Largo'
      Origin = '"Terminales"."Formato_Hora_Largo"'
      Size = 100
    end
    object qrTerminalFormato_N_T_H: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Formato_N_T_H'
      Origin = '"Terminales"."Formato_N_T_H"'
      Size = 100
    end
    object qrTerminalCtrl_Alt_Del: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Ctrl_Alt_Del'
      Origin = '"Terminales"."Ctrl_Alt_Del"'
    end
    object qrTerminalAlt_F4: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Alt_F4'
      Origin = '"Terminales"."Alt_F4"'
    end
    object qrTerminalBarra: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Barra'
      Origin = '"Terminales"."Barra"'
    end
    object qrTerminalPanel: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Panel'
      Origin = '"Terminales"."Panel"'
    end
    object qrTerminalRun: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Run'
      Origin = '"Terminales"."Run"'
    end
    object qrTerminalFind: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Find'
      Origin = '"Terminales"."Find"'
    end
    object qrTerminalWinKey: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'WinKey'
      Origin = '"Terminales"."WinKey"'
    end
    object qrTerminalColor_Pantallas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Color_Pantallas'
      Origin = '"Terminales"."Color_Pantallas"'
    end
    object qrTerminalApagar_Salir: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Apagar_Salir'
      Origin = '"Terminales"."Apagar_Salir"'
    end
    object qrTerminalLineas_Despues: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Lineas_Despues'
      Origin = '"Terminales"."Lineas_Despues"'
    end
    object qrTerminalAncho_Linea: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ancho_Linea'
      Origin = '"Terminales"."Ancho_Linea"'
    end
    object qrTerminalDireccion_Local: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion_Local'
      Origin = '"Terminales"."Direccion_Local"'
      Size = 100
    end
    object qrTerminalIcon: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Icon'
      Origin = '"Terminales"."Icon"'
    end
    object qrTerminalBalance: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Origin = '"Terminales"."Balance"'
      Precision = 12
      Size = 2
    end
    object qrTerminalUltima_Cta: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ultima_Cta'
      Origin = '"Terminales"."Ultima_Cta"'
    end
    object qrTerminalFecha_Ultima_Cta: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Ultima_Cta'
      Origin = '"Terminales"."Fecha_Ultima_Cta"'
    end
    object qrTerminalRNC: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'RNC'
      Origin = '"Terminales"."RNC"'
      Size = 50
    end
    object qrTerminalNombre_Impuesto: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Impuesto'
      Origin = '"Terminales"."Nombre_Impuesto"'
      Size = 25
    end
    object qrTerminalCondicion_Facturas: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Condicion_Facturas'
      Origin = '"Terminales"."Condicion_Facturas"'
      Size = 25
    end
    object qrTerminalTipo_Factura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Factura'
      Origin = '"Terminales"."Tipo_Factura"'
      Size = 25
    end
    object qrTerminalTermino_Facturacion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Termino_Facturacion'
      Origin = '"Terminales"."Termino_Facturacion"'
      Size = 25
    end
    object qrTerminalInventario_Restringido: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Inventario_Restringido'
      Origin = '"Terminales"."Inventario_Restringido"'
    end
    object qrTerminalAperturar_Caja: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Aperturar_Caja'
      Origin = '"Terminales"."Aperturar_Caja"'
    end
    object qrTerminalDecimales_Cantidades: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Decimales_Cantidades'
      Origin = '"Terminales"."Decimales_Cantidades"'
      Size = 25
    end
    object qrTerminalAlmacen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Origin = '"Terminales"."Almacen"'
      Size = 25
    end
  end
  object qrStatus: TIBQuery
    SQL.Strings = (
      'Select  * From  "Status"'
      'Order By "Status"')
    UniDirectional = True
    Left = 40
    Top = 422
    object qrStatusNumero: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero'
      Origin = '"Status"."Numero"'
      DisplayFormat = '000000'
    end
    object qrStatusStatus: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir la Descripci'#243'n del Estatus'
      FieldName = 'Status'
      Origin = '"Status"."Status"'
      Size = 100
    end
    object qrStatusUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Status"."Usuario"'
      Size = 100
    end
  end
  object prStatus: TDataSetProvider
    DataSet = qrStatus
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 144
    Top = 422
  end
  object GeneralesTr: TIBTransaction
    DefaultDatabase = GeneralesDB
    IdleTimer = 300
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saCommit
    Left = 152
    Top = 8
  end
  object GeneralesDB: TIBDatabase
    DatabaseName = 'C:\Development\Database\Shared_Data\SYSCORE.CDF'
    Params.Strings = (
      'user_name=MGUMBS'
      'password=Ice49635'
      'sql_role_name=Admin')
    LoginPrompt = False
    DefaultTransaction = GeneralesTr
    Left = 48
    Top = 8
  end
  object tConfigDataset: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 760
    Top = 16
    object tConfigDatasetUserName: TWideStringField
      FieldName = 'UserName'
      Size = 600
    end
    object tConfigDatasetPassword: TWideStringField
      DisplayWidth = 600
      FieldName = 'Password'
      Size = 600
      Transliterate = False
    end
    object tConfigDatasetModulo_Inventario: TBooleanField
      FieldName = 'Modulo_Inventario'
    end
    object tConfigDatasetModulo_CtasxCobrar: TBooleanField
      FieldName = 'Modulo_CtasxCobrar'
    end
    object tConfigDatasetModulo_CtasxPagar: TBooleanField
      FieldName = 'Modulo_CtasxPagar'
    end
    object tConfigDatasetModulo_Caja: TBooleanField
      FieldName = 'Modulo_Caja'
    end
    object tConfigDatasetModulo_LibroBanco: TBooleanField
      FieldName = 'Modulo_LibroBanco'
    end
    object tConfigDatasetModulo_Nomina: TBooleanField
      FieldName = 'Modulo_Nomina'
    end
    object tConfigDatasetModulo_Contabilidad: TBooleanField
      FieldName = 'Modulo_Contabilidad'
    end
    object tConfigDatasetDatos_Generales: TWideStringField
      FieldName = 'Datos_Generales'
      Size = 600
    end
    object tConfigDatasetInventario_Facturacion: TWideStringField
      FieldName = 'Inventario_Facturacion'
      Size = 600
    end
    object tConfigDatasetCuentas_Cobrar: TWideStringField
      FieldName = 'Cuentas_Cobrar'
      Size = 600
    end
    object tConfigDatasetCuentas_Pagar: TWideStringField
      FieldName = 'Cuentas_Pagar'
      Size = 600
    end
    object tConfigDatasetManejo_Caja: TWideStringField
      FieldName = 'Manejo_Caja'
      Size = 600
    end
    object tConfigDatasetLibro_Banco: TWideStringField
      FieldName = 'Libro_Banco'
      Size = 600
    end
    object tConfigDatasetNomina: TWideStringField
      FieldName = 'Nomina'
      Size = 600
    end
    object tConfigDatasetContabilidad: TWideStringField
      FieldName = 'Contabilidad'
      Size = 600
    end
    object tConfigDatasetProcessor_INFO: TWideStringField
      FieldName = 'Processor_INFO'
      Size = 600
    end
    object tConfigDatasetVolume_INFO: TWideStringField
      FieldName = 'Volume_INFO'
      Size = 600
    end
    object tConfigDatasetNIC_INFO: TWideStringField
      FieldName = 'NIC_INFO'
      Size = 600
    end
  end
end
