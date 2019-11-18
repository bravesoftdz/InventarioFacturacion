object Seguridad_RDM: TSeguridad_RDM
  OldCreateOrder = False
  Height = 447
  Width = 524
  object qrUsuarios: TIBQuery
    SQL.Strings = (
      'Select  * From  "Usuarios"'
      'Where "NickName" = :NickName')
    UniDirectional = True
    Left = 36
    Top = 31
    ParamData = <
      item
        DataType = ftString
        Name = 'NickName'
        ParamType = ptInput
      end>
    object qrUsuariosNickName: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'NickName'
      Origin = '"Usuarios"."NickName"'
      Size = 25
    end
    object qrUsuariosNombreCompleto: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'NombreCompleto'
      Origin = '"Usuarios"."NombreCompleto"'
      Size = 100
    end
    object qrUsuariosNivel_Acceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nivel_Acceso'
      Origin = '"Usuarios"."Nivel_Acceso"'
      Size = 25
    end
    object qrUsuariosPassword: TIBStringField
      FieldName = 'Password'
      Origin = '"Usuarios"."Password"'
      Size = 255
    end
  end
  object prUsuarios: TDataSetProvider
    DataSet = qrUsuarios
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 136
    Top = 31
  end
  object prNiveles: TDataSetProvider
    DataSet = qrNiveles
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 136
    Top = 79
  end
  object qrNiveles: TIBQuery
    SQL.Strings = (
      'Select  * From  "Niveles"'
      'Order By "Descripcion"')
    UniDirectional = True
    Left = 36
    Top = 79
    object qrNivelesCodigo: TIBStringField
      FieldName = 'Codigo'
      Origin = '"Niveles"."Codigo"'
      Size = 25
    end
    object qrNivelesDescripcion: TIBStringField
      FieldName = 'Descripcion'
      Origin = '"Niveles"."Descripcion"'
      Size = 100
    end
    object qrNivelesFecha: TDateField
      FieldName = 'Fecha'
      Origin = '"Niveles"."Fecha"'
    end
  end
  object prOpciones: TDataSetProvider
    DataSet = qrOpciones
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 136
    Top = 127
  end
  object qrOpciones: TIBQuery
    SQL.Strings = (
      'Select  * From  "Opciones"'
      'Order By "Descripcion", "Opcion"')
    UniDirectional = True
    Left = 36
    Top = 127
    object qrOpcionesForm: TIBStringField
      FieldName = 'Form'
      Origin = '"Opciones"."Form"'
      Size = 100
    end
    object qrOpcionesOpcion: TIBStringField
      FieldName = 'Opcion'
      Origin = '"Opciones"."Opcion"'
      Size = 100
    end
    object qrOpcionesDescripcion: TIBStringField
      FieldName = 'Descripcion'
      Origin = '"Opciones"."Descripcion"'
      Size = 100
    end
    object qrOpcionesTipo: TIBStringField
      FieldName = 'Tipo'
      Origin = '"Opciones"."Tipo"'
      Size = 100
    end
  end
  object prAccesos: TDataSetProvider
    DataSet = qrAccesos
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 136
    Top = 175
  end
  object qrAccesos: TIBQuery
    SQL.Strings = (
      'Select  * From  "Accesos"'
      'Where "Nivel" = :Nivel'
      'Order By "Form", "Opcion"')
    UniDirectional = True
    Left = 36
    Top = 175
    ParamData = <
      item
        DataType = ftString
        Name = 'Nivel'
        ParamType = ptInput
      end>
    object qrAccesosNivel: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nivel'
      Origin = '"Accesos"."Nivel"'
      Size = 25
    end
    object qrAccesosForm: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Form'
      Origin = '"Accesos"."Form"'
      Size = 100
    end
    object qrAccesosOpcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Opcion'
      Origin = '"Accesos"."Opcion"'
      Size = 100
    end
  end
  object prForms: TDataSetProvider
    DataSet = qrForms
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 240
    Top = 22
  end
  object qrForms: TIBQuery
    SQL.Strings = (
      'Select  * From  "Forms"'
      'Order By "Description", "Name"')
    UniDirectional = True
    Left = 140
    Top = 22
    object qrFormsName: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Name'
      Origin = '"Forms"."Name"'
      Size = 25
    end
    object qrFormsDescription: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Description'
      Origin = '"Forms"."Description"'
      Size = 100
    end
    object qrFormsClass_Name: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Class_Name'
      Origin = '"Forms"."Class_Name"'
      Size = 25
    end
  end
  object qrListadoUsuarios: TIBQuery
    SQL.Strings = (
      'Select  * From  "Usuarios"'
      'Order By "NombreCompleto"')
    UniDirectional = True
    Left = 36
    Top = 255
    object IBStringField1: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'NickName'
      Origin = '"Usuarios"."NickName"'
      Size = 25
    end
    object IBStringField2: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'NombreCompleto'
      Origin = '"Usuarios"."NombreCompleto"'
      Size = 100
    end
    object IBStringField3: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nivel_Acceso'
      Origin = '"Usuarios"."Nivel_Acceso"'
      Size = 25
    end
    object IBStringField4: TIBStringField
      FieldName = 'Password'
      Origin = '"Usuarios"."Password"'
      Size = 255
    end
  end
  object prListadoUsuarios: TDataSetProvider
    DataSet = qrListadoUsuarios
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 150
    Top = 255
  end
  object qrListadoVendedores: TIBQuery
    SQL.Strings = (
      'Select  * From  "Vendedores"'
      'Where "Status" = '#39'ACTIVO'#39
      'Order By "NombreCompleto"')
    UniDirectional = True
    Left = 4
    Top = 215
    object qrListadoVendedoresCedula_Rnc_Pasaporte: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cedula_Rnc_Pasaporte'
      Origin = '"Vendedores"."Cedula_Rnc_Pasaporte"'
      Size = 25
    end
    object qrListadoVendedoresNombre: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Origin = '"Vendedores"."Nombre"'
      Size = 100
    end
    object qrListadoVendedoresApellido: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Apellido'
      Origin = '"Vendedores"."Apellido"'
      Size = 100
    end
    object qrListadoVendedoresTipo_Telefono_1: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_1'
      Origin = '"Vendedores"."Tipo_Telefono_1"'
    end
    object qrListadoVendedoresTipo_Telefono_2: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_2'
      Origin = '"Vendedores"."Tipo_Telefono_2"'
    end
    object qrListadoVendedoresTipo_Telefono_3: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_3'
      Origin = '"Vendedores"."Tipo_Telefono_3"'
    end
    object qrListadoVendedoresTipo_Telefono_4: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_4'
      Origin = '"Vendedores"."Tipo_Telefono_4"'
    end
    object qrListadoVendedoresNumero_Telefono_1: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_1'
      Origin = '"Vendedores"."Numero_Telefono_1"'
    end
    object qrListadoVendedoresNumero_Telefono_2: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_2'
      Origin = '"Vendedores"."Numero_Telefono_2"'
    end
    object qrListadoVendedoresNumero_Telefono_3: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_3'
      Origin = '"Vendedores"."Numero_Telefono_3"'
    end
    object qrListadoVendedoresNumero_Telefono_4: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_4'
      Origin = '"Vendedores"."Numero_Telefono_4"'
    end
    object qrListadoVendedoresDireccion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion'
      Origin = '"Vendedores"."Direccion"'
      Size = 255
    end
    object qrListadoVendedoresPais: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pais'
      Origin = '"Vendedores"."Pais"'
      Size = 100
    end
    object qrListadoVendedoresCiudad: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ciudad'
      Origin = '"Vendedores"."Ciudad"'
      Size = 100
    end
    object qrListadoVendedoresEstado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Estado'
      Origin = '"Vendedores"."Estado"'
      Size = 100
    end
    object qrListadoVendedoresNombreCompleto: TIBStringField
      AutoGenerateValue = arDefault
      FieldKind = fkInternalCalc
      FieldName = 'NombreCompleto'
      Origin = '"Vendedores"."NombreCompleto"'
      ProviderFlags = []
      ReadOnly = True
      Size = 201
    end
    object qrListadoVendedoresStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Vendedores"."Status"'
      Size = 15
    end
    object qrListadoVendedoresFecha_Registro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Registro'
      Origin = '"Vendedores"."Fecha_Registro"'
    end
    object qrListadoVendedoresmail: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'mail'
      Origin = '"Vendedores"."mail"'
      Size = 100
    end
    object qrListadoVendedoresSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Vendedores"."Secuencia"'
    end
    object qrListadoVendedoresFoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Foto'
      Origin = '"Vendedores"."Foto"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qrListadoVendedoresSexo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Sexo'
      Origin = '"Vendedores"."Sexo"'
      Size = 25
    end
    object qrListadoVendedoresSector: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Sector'
      Origin = '"Vendedores"."Sector"'
    end
    object qrListadoVendedoresEstado_Civil: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Estado_Civil'
      Origin = '"Vendedores"."Estado_Civil"'
      Size = 15
    end
    object qrListadoVendedoresZona: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Zona'
      Origin = '"Vendedores"."Zona"'
    end
  end
  object prListadoVendedores: TDataSetProvider
    DataSet = qrListadoVendedores
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 108
    Top = 215
  end
  object qrVendedores: TIBQuery
    SQL.Strings = (
      'Select  * From  "Vendedores"'
      'Where "Cedula_Rnc_Pasaporte" = :Cedula_Rnc_Pasaporte'
      'Order By "Nombre", "Apellido"')
    UniDirectional = True
    Left = 4
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Cedula_Rnc_Pasaporte'
        ParamType = ptUnknown
      end>
    object qrVendedoresCedula_Rnc_Pasaporte: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 
        'Debe introducir el N'#250'mero de C'#233'dula, RNC o Pasaporte del Vendedo' +
        'r'
      FieldName = 'Cedula_Rnc_Pasaporte'
      Origin = '"Vendedores"."Cedula_Rnc_Pasaporte"'
      Size = 25
    end
    object qrVendedoresNombre: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir el Nombre del Vendedor'
      FieldName = 'Nombre'
      Origin = '"Vendedores"."Nombre"'
      Size = 100
    end
    object qrVendedoresApellido: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Apellido'
      Origin = '"Vendedores"."Apellido"'
      Size = 100
    end
    object qrVendedoresTipo_Telefono_1: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Residencia'#39
      FieldName = 'Tipo_Telefono_1'
      Origin = '"Vendedores"."Tipo_Telefono_1"'
    end
    object qrVendedoresTipo_Telefono_2: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Celular'#39
      FieldName = 'Tipo_Telefono_2'
      Origin = '"Vendedores"."Tipo_Telefono_2"'
    end
    object qrVendedoresTipo_Telefono_3: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Trabajo'#39
      FieldName = 'Tipo_Telefono_3'
      Origin = '"Vendedores"."Tipo_Telefono_3"'
    end
    object qrVendedoresTipo_Telefono_4: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Otro'#39
      FieldName = 'Tipo_Telefono_4'
      Origin = '"Vendedores"."Tipo_Telefono_4"'
    end
    object qrVendedoresNumero_Telefono_1: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_1'
      Origin = '"Vendedores"."Numero_Telefono_1"'
      EditMask = '!\(999\)000-0000;1; '
    end
    object qrVendedoresNumero_Telefono_2: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_2'
      Origin = '"Vendedores"."Numero_Telefono_2"'
      EditMask = '!\(999\)000-0000;1; '
    end
    object qrVendedoresNumero_Telefono_3: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_3'
      Origin = '"Vendedores"."Numero_Telefono_3"'
      EditMask = '!\(999\)000-0000;1; '
    end
    object qrVendedoresNumero_Telefono_4: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_4'
      Origin = '"Vendedores"."Numero_Telefono_4"'
      EditMask = '!\(999\)000-0000;1; '
    end
    object qrVendedoresDireccion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion'
      Origin = '"Vendedores"."Direccion"'
      Size = 255
    end
    object qrVendedoresPais: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'DOM'#39
      FieldName = 'Pais'
      Origin = '"Vendedores"."Pais"'
      Size = 100
    end
    object qrVendedoresCiudad: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ciudad'
      Origin = '"Vendedores"."Ciudad"'
      Size = 100
    end
    object qrVendedoresEstado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Estado'
      Origin = '"Vendedores"."Estado"'
      Size = 100
    end
    object qrVendedoresNombreCompleto: TIBStringField
      AutoGenerateValue = arDefault
      FieldKind = fkInternalCalc
      FieldName = 'NombreCompleto'
      Origin = '"Vendedores"."NombreCompleto"'
      ProviderFlags = []
      ReadOnly = True
      Size = 201
    end
    object qrVendedoresStatus: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'ACTIVO'#39
      FieldName = 'Status'
      Origin = '"Vendedores"."Status"'
      Size = 15
    end
    object qrVendedoresFecha_Registro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Registro'
      Origin = '"Vendedores"."Fecha_Registro"'
    end
    object qrVendedoresmail: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'mail'
      Origin = '"Vendedores"."mail"'
      Size = 100
    end
    object qrVendedoresSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Secuencia'
      Origin = '"Vendedores"."Secuencia"'
      DisplayFormat = '000000'
    end
    object qrVendedoresFoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Foto'
      Origin = '"Vendedores"."Foto"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qrVendedoresSexo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Sexo'
      Origin = '"Vendedores"."Sexo"'
      Size = 25
    end
    object qrVendedoresSector: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Sector'
      Origin = '"Vendedores"."Sector"'
    end
    object qrVendedoresEstado_Civil: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Estado_Civil'
      Origin = '"Vendedores"."Estado_Civil"'
      Size = 15
    end
    object qrVendedoresZona: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Zona'
      Origin = '"Vendedores"."Zona"'
    end
  end
  object prVendedores: TDataSetProvider
    DataSet = qrVendedores
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 108
    Top = 160
  end
end
