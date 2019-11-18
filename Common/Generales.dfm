object ModuloGenerales: TModuloGenerales
  OldCreateOrder = False
  Height = 618
  Width = 762
  object tUsuarios: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'UserName'
        ParamType = ptInput
      end>
    ProviderName = 'prUsuarios'
    RemoteServer = Modulo.Enlace
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 32
    Top = 304
    object tUsuariosNombreCompleto: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nombre Completo'
      DisplayWidth = 40
      FieldName = 'NombreCompleto'
      Origin = '"Usuarios"."NombreCompleto"'
      Size = 100
    end
    object tUsuariosPassword: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Password'
      Origin = '"Usuarios"."Password"'
      Visible = False
      Size = 255
    end
    object tUsuariosNivel_Acceso: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nivel de Acceso'
      FieldName = 'Nivel_Acceso'
      Origin = '"Usuarios"."Nivel_Acceso"'
      Visible = False
      Size = 25
    end
    object tUsuariosUserName: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UserName'
      Origin = '"Usuarios"."UserName"'
      Size = 25
    end
    object tUsuariosDescription: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Description'
      Origin = '"Usuarios"."Description"'
      Size = 100
    end
    object tUsuariosDefault_Company: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Default_Company'
      Origin = '"Usuarios"."Default_Company"'
      Size = 50
    end
    object tUsuariosDefault_Terminal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Default_Terminal'
      Origin = '"Usuarios"."Default_Terminal"'
      Size = 50
    end
    object tUsuariosLast_Company: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Last_Company'
      Origin = '"Usuarios"."Last_Company"'
      Size = 50
    end
    object tUsuariosLast_Terminal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Last_Terminal'
      Origin = '"Usuarios"."Last_Terminal"'
      Size = 50
    end
    object tUsuariosLast_Login: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Last_Login'
      Origin = '"Usuarios"."Last_Login"'
    end
    object tUsuariosUser_Type: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'User_Type'
      Origin = '"Usuarios"."User_Type"'
      Size = 25
    end
    object tUsuariosFoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Foto'
      Origin = '"Usuarios"."Foto"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object tUsuariosmail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mail'
      Origin = '"Usuarios"."mail"'
      Size = 100
    end
    object tUsuariosDate_Created: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Date_Created'
      Origin = '"Usuarios"."Date_Created"'
    end
    object tUsuariosStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Usuarios"."Status"'
      Size = 15
    end
    object tUsuariosAccess_Level: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Access_Level'
      Size = 25
    end
    object tUsuariosPorciento_Autorizado: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Porciento_Autorizado'
    end
  end
  object dUsuarios: TDataSource
    DataSet = tUsuarios
    Left = 136
    Top = 304
  end
  object tNiveles: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prNiveles'
    RemoteServer = Modulo.Enlace
    AfterDelete = tNivelesAfterDelete
    AfterScroll = tNivelesAfterScroll
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 32
    Top = 103
    object tNivelesCodigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Size = 100
    end
    object tNivelesDescripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Size = 100
    end
    object tNivelesFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
    end
  end
  object dNiveles: TDataSource
    DataSet = tNiveles
    Left = 136
    Top = 103
  end
  object tOpciones: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prOpciones'
    RemoteServer = Modulo.Enlace
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 32
    Top = 55
    object tOpcionesForm: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Form'
      Size = 100
    end
    object tOpcionesOpcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Opcion'
      Size = 100
    end
    object tOpcionesDescripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Size = 100
    end
    object tOpcionesTipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo'
      Size = 100
    end
  end
  object dOpciones: TDataSource
    DataSet = tOpciones
    Left = 136
    Top = 55
  end
  object tAccesos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Nivel'
        ParamType = ptInput
      end>
    ProviderName = 'prAccesos'
    RemoteServer = Modulo.Enlace
    BeforeRefresh = ChkRefresh
    AfterRefresh = tAccesosAfterRefresh
    OnReconcileError = DataSetReconcileError
    Left = 32
    Top = 151
    object tAccesosOpcion: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Opcion'
      Size = 100
    end
    object tAccesosNivel: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Nivel'
      Visible = False
      Size = 25
    end
    object tAccesosForm: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 100
      FieldName = 'Form'
      Visible = False
      Size = 100
    end
  end
  object dAccesos: TDataSource
    DataSet = tAccesos
    Left = 136
    Top = 151
  end
  object tForms: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prForms'
    RemoteServer = Modulo.Enlace
    AfterOpen = tFormsAfterScroll
    AfterScroll = tFormsAfterScroll
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 32
    Top = 7
    object tFormsName: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Name'
      Size = 100
    end
    object tFormsDescription: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Description'
      Size = 100
    end
    object tFormsClass_Name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Class_Name'
      Size = 100
    end
  end
  object dForms: TDataSource
    DataSet = tForms
    Left = 136
    Top = 7
  end
  object dPaises: TDataSource
    DataSet = tPaises
    Left = 336
    Top = 7
  end
  object tPaises: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Iso_3_Char'
        ParamType = ptInput
      end>
    ProviderName = 'prPaises'
    RemoteServer = Modulo.Enlace
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 232
    Top = 7
    object tPaisesIso_3_Char: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Iso_3_Char'
      Origin = '"Paises"."Iso_3_Char"'
      Size = 25
    end
    object tPaisesIso_2_Char: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Iso_2_Char'
      Origin = '"Paises"."Iso_2_Char"'
      Size = 25
    end
    object tPaisesNombre: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Origin = '"Paises"."Nombre"'
      Size = 100
    end
    object tPaisesRegion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Region'
      Origin = '"Paises"."Region"'
      Size = 100
    end
    object tPaisesIdioma: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Idioma'
      Origin = '"Paises"."Idioma"'
      Size = 25
    end
    object tPaisesBandera: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Bandera'
      Origin = '"Paises"."Bandera"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object tPaisesEscudo: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Escudo'
      Origin = '"Paises"."Escudo"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object tPaisesStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Paises"."Status"'
      Size = 15
    end
    object tPaisesqrCiudades: TDataSetField
      AutoGenerateValue = arDefault
      FieldName = 'qrCiudades'
    end
  end
  object dCiudades: TDataSource
    DataSet = tCiudades
    Left = 336
    Top = 55
  end
  object tCiudades: TClientDataSet
    Aggregates = <>
    DataSetField = tPaisesqrCiudades
    Params = <
      item
        DataType = ftString
        Name = 'Pais'
        ParamType = ptInput
      end>
    BeforePost = tCiudadesBeforePost
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 232
    Top = 55
    object tCiudadesSerie_Codigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Serie_Codigo'
      Origin = '"Ciudades_Estados"."Serie_Codigo"'
      Size = 25
    end
    object tCiudadesPais: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pais'
      Origin = '"Ciudades_Estados"."Pais"'
      Size = 25
    end
    object tCiudadesNombre: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Origin = '"Ciudades_Estados"."Nombre"'
      Size = 100
    end
    object tCiudadesEscudo: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Escudo'
      Origin = '"Ciudades_Estados"."Escudo"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object tCiudadesStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Ciudades_Estados"."Status"'
      Size = 15
    end
    object tCiudadesqrZonas: TDataSetField
      AutoGenerateValue = arDefault
      FieldName = 'qrZonas'
    end
    object tCiudadesqrSectores: TDataSetField
      AutoGenerateValue = arDefault
      FieldName = 'qrSectores'
    end
  end
  object dSectores: TDataSource
    DataSet = tSectores
    Left = 336
    Top = 103
  end
  object tSectores: TClientDataSet
    Aggregates = <>
    DataSetField = tCiudadesqrSectores
    Params = <
      item
        DataType = ftString
        Name = 'Ciudad'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Pais'
        ParamType = ptInput
      end>
    BeforePost = tSectoresBeforePost
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 232
    Top = 103
    object tSectoresPais: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pais'
      Origin = '"Sector"."Pais"'
      Size = 25
    end
    object tSectoresCiudad: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ciudad'
      Origin = '"Sector"."Ciudad"'
      Size = 25
    end
    object tSectoresNombre: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Origin = '"Sector"."Nombre"'
      Size = 100
    end
    object tSectoresAbreviatura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Abreviatura'
      Origin = '"Sector"."Abreviatura"'
      Size = 25
    end
    object tSectoresStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Sector"."Status"'
      Size = 15
    end
    object tSectoresNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Sector"."Numero"'
    end
  end
  object tZonas: TClientDataSet
    Aggregates = <>
    DataSetField = tCiudadesqrZonas
    Params = <
      item
        DataType = ftString
        Name = 'Ciudad'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Pais'
        ParamType = ptInput
      end>
    BeforePost = tZonasBeforePost
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 232
    Top = 152
    object tZonasID: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Zona"."ID"'
      Size = 25
    end
    object tZonasCiudad: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ciudad'
      Origin = '"Zona"."Ciudad"'
      Size = 25
    end
    object tZonasPais: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pais'
      Origin = '"Zona"."Pais"'
      Size = 25
    end
    object tZonasDescripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Zona"."Descripcion"'
      Size = 100
    end
    object tZonasStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Zona"."Status"'
      Size = 15
    end
    object tZonasNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Zona"."Numero"'
    end
  end
  object dZonas: TDataSource
    DataSet = tZonas
    Left = 336
    Top = 152
  end
  object tListado_Paises: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Status'
        ParamType = ptInput
      end>
    ProviderName = 'prLst_Paises'
    RemoteServer = Modulo.Enlace
    BeforeRefresh = ChkRefresh
    AfterRefresh = tListado_PaisesAfterRefresh
    OnReconcileError = DataSetReconcileError
    Left = 232
    Top = 207
    object tListado_PaisesIso_3_Char: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Iso_3_Char'
      Origin = '"Paises"."Iso_3_Char"'
      EditMask = 'AAA;1; '
      Size = 25
    end
    object tListado_PaisesIso_2_Char: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Iso_2_Char'
      Origin = '"Paises"."Iso_2_Char"'
      EditMask = 'AA;1; '
      Size = 25
    end
    object tListado_PaisesNombre: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Origin = '"Paises"."Nombre"'
      Size = 100
    end
    object tListado_PaisesRegion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Region'
      Origin = '"Paises"."Region"'
      Size = 100
    end
    object tListado_PaisesIdioma: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Idioma'
      Origin = '"Paises"."Idioma"'
      Size = 25
    end
  end
  object dListado_Paises: TDataSource
    DataSet = tListado_Paises
    Left = 336
    Top = 207
  end
  object tListadoUsuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prListadoUsuarios'
    RemoteServer = Modulo.Enlace
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 32
    Top = 353
    object tListadoUsuariosNombreCompleto: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nombre Completo'
      DisplayWidth = 40
      FieldName = 'NombreCompleto'
      Size = 100
    end
    object tListadoUsuariosPassword: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Password'
      Visible = False
      Size = 255
    end
    object tListadoUsuariosNivel_Acceso: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nivel de Acceso'
      FieldName = 'Nivel_Acceso'
      Visible = False
      Size = 25
    end
    object tListadoUsuariosUserName: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UserName'
      Size = 25
    end
    object tListadoUsuariosDescription: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Description'
      Size = 100
    end
    object tListadoUsuariosDefault_Company: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Default_Company'
      Size = 100
    end
    object tListadoUsuariosDefault_Terminal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Default_Terminal'
      Size = 100
    end
    object tListadoUsuariosLast_Company: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Last_Company'
      Size = 100
    end
    object tListadoUsuariosLast_Terminal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Last_Terminal'
      Size = 100
    end
    object tListadoUsuariosLast_Login: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Last_Login'
    end
    object tListadoUsuariosUser_Type: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'User_Type'
      Size = 25
    end
    object tListadoUsuariosFoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Foto'
      Size = 8
    end
    object tListadoUsuariosmail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mail'
      Size = 100
    end
    object tListadoUsuariosDate_Created: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Date_Created'
    end
    object tListadoUsuariosStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Size = 15
    end
    object tListadoUsuariosAccess_Level: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Access_Level'
      Size = 25
    end
  end
  object dListadoUsuarios: TDataSource
    DataSet = tListadoUsuarios
    Left = 136
    Top = 353
  end
  object tlst_Compania_Status: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Status'
        ParamType = ptInput
      end>
    ProviderName = 'prLstCompaniaStatus'
    RemoteServer = Modulo.Enlace
    Left = 424
    Top = 10
    object tlst_Compania_StatusNumero_Compania: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Compania'
    end
    object tlst_Compania_StatusRegistrado_En_Fecha: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Registrado_En_Fecha'
    end
    object tlst_Compania_StatusRNC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RNC'
      Size = 25
    end
    object tlst_Compania_StatusCuenta_Nomina: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cuenta_Nomina'
      Size = 25
    end
    object tlst_Compania_StatusID: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Size = 100
    end
    object tlst_Compania_StatusNombre: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Size = 100
    end
    object tlst_Compania_StatusNombre_Linea_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Linea_2'
      Size = 100
    end
    object tlst_Compania_StatusNombre_Linea_3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Linea_3'
      Size = 100
    end
    object tlst_Compania_StatusDireccion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion'
      Size = 255
    end
    object tlst_Compania_StatusDireccion_Linea_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion_Linea_2'
      Size = 255
    end
    object tlst_Compania_StatusTelefono_Principal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefono_Principal'
    end
    object tlst_Compania_StatusTipo_Telefono_Principal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_Principal'
    end
    object tlst_Compania_StatusTelefono_Secundario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefono_Secundario'
    end
    object tlst_Compania_StatusTipo_Telefono_Secundario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_Secundario'
    end
    object tlst_Compania_StatusTelefono_Tercero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefono_Tercero'
    end
    object tlst_Compania_StatusTipo_Telefono_Tercero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_Tercero'
    end
    object tlst_Compania_StatusTelefono_Otro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefono_Otro'
    end
    object tlst_Compania_StatusTipo_Telefono_Otro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_Otro'
    end
    object tlst_Compania_StatusSlogan_Comentario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Slogan_Comentario'
      Size = 255
    end
    object tlst_Compania_StatusPais: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pais'
      Size = 25
    end
    object tlst_Compania_StatusCiudad_Estado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ciudad_Estado'
      Size = 25
    end
    object tlst_Compania_StatusResponsable: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Responsable'
      Size = 25
    end
    object tlst_Compania_StatusFecha_Institucion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Institucion'
    end
    object tlst_Compania_StatusSerie_NCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Serie_NCF'
      Size = 1
    end
    object tlst_Compania_StatusDivision_NCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Division_NCF'
      Size = 2
    end
    object tlst_Compania_StatusPunto_Emision_NCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Punto_Emision_NCF'
      Size = 3
    end
    object tlst_Compania_StatusLimite_NCF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Limite_NCF'
    end
    object tlst_Compania_StatusAlerta_NCF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Alerta_NCF'
    end
    object tlst_Compania_StatusLogo: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Logo'
      Size = 8
    end
    object tlst_Compania_StatusFecha_Creacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Creacion'
    end
    object tlst_Compania_StatusStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Size = 100
    end
    object tlst_Compania_StatusCBS: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CBS'
    end
    object tlst_Compania_StatusPresupuesto_Actual: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Presupuesto_Actual'
      Size = 25
    end
    object tlst_Compania_StatusPresupuesto_Anterior: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Presupuesto_Anterior'
      Size = 25
    end
    object tlst_Compania_Statusemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Size = 255
    end
    object tlst_Compania_StatusURL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'URL'
      Size = 255
    end
    object tlst_Compania_Statustwitter: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'twitter'
      Size = 100
    end
    object tlst_Compania_StatusFaceBook: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FaceBook'
      Size = 100
    end
    object tlst_Compania_StatusDia_Corte_Nomina_Mensual: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Dia_Corte_Nomina_Mensual'
    end
    object tlst_Compania_StatusDia_Corte_Primera_Quincena: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Dia_Corte_Primera_Quincena'
    end
    object tlst_Compania_StatusDia_Corte_Segunda_Quincena: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Dia_Corte_Segunda_Quincena'
    end
    object tlst_Compania_StatusDia_Inicio_Semana: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Dia_Inicio_Semana'
    end
    object tlst_Compania_StatusDia_Final_Semana: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Dia_Final_Semana'
    end
  end
  object dlst_Compania_Status: TDataSource
    DataSet = tlst_Compania_Status
    Left = 532
    Top = 10
  end
  object tCompania: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'RNC'
        ParamType = ptInput
      end>
    ProviderName = 'prCompania'
    RemoteServer = Modulo.Enlace
    OnCalcFields = tCompaniaCalcFields
    Left = 424
    Top = 66
    object tCompaniaNumero_Compania: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Compania'
    end
    object tCompaniaRegistrado_En_Fecha: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Registrado_En_Fecha'
    end
    object tCompaniaRNC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RNC'
      Size = 25
    end
    object tCompaniaCuenta_Nomina: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cuenta_Nomina'
      Size = 25
    end
    object tCompaniaID: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Size = 50
    end
    object tCompaniaNombre: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Size = 100
    end
    object tCompaniaNombre_Linea_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Linea_2'
      Size = 100
    end
    object tCompaniaNombre_Linea_3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Linea_3'
      Size = 100
    end
    object tCompaniaDireccion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion'
      Size = 255
    end
    object tCompaniaDireccion_Linea_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion_Linea_2'
      Size = 255
    end
    object tCompaniaTelefono_Principal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefono_Principal'
    end
    object tCompaniaTipo_Telefono_Principal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_Principal'
    end
    object tCompaniaTelefono_Secundario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefono_Secundario'
    end
    object tCompaniaTipo_Telefono_Secundario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_Secundario'
    end
    object tCompaniaTelefono_Tercero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefono_Tercero'
    end
    object tCompaniaTipo_Telefono_Tercero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_Tercero'
    end
    object tCompaniaTelefono_Otro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefono_Otro'
    end
    object tCompaniaTipo_Telefono_Otro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_Otro'
    end
    object tCompaniaSlogan_Comentario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Slogan_Comentario'
      Size = 255
    end
    object tCompaniaPais: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pais'
      Size = 25
    end
    object tCompaniaCiudad_Estado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ciudad_Estado'
      Size = 25
    end
    object tCompaniaResponsable: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Responsable'
      Size = 25
    end
    object tCompaniaFecha_Institucion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Institucion'
    end
    object tCompaniaSerie_NCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Serie_NCF'
      Size = 1
    end
    object tCompaniaDivision_NCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Division_NCF'
      Size = 2
    end
    object tCompaniaPunto_Emision_NCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Punto_Emision_NCF'
      Size = 3
    end
    object tCompaniaLimite_NCF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Limite_NCF'
    end
    object tCompaniaAlerta_NCF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Alerta_NCF'
    end
    object tCompaniaLogo: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Logo'
      Size = 8
    end
    object tCompaniaFecha_Creacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Creacion'
    end
    object tCompaniaStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Size = 50
    end
    object tCompaniaCBS: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CBS'
    end
    object tCompaniaPresupuesto_Actual: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Presupuesto_Actual'
      Size = 25
    end
    object tCompaniaPresupuesto_Anterior: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Presupuesto_Anterior'
      Size = 25
    end
    object tCompaniaemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Size = 255
    end
    object tCompaniaURL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'URL'
      Size = 255
    end
    object tCompaniatwitter: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'twitter'
      Size = 100
    end
    object tCompaniaFaceBook: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FaceBook'
      Size = 100
    end
    object tCompaniaDireccion_Compuesta: TStringField
      AutoGenerateValue = arDefault
      FieldKind = fkInternalCalc
      FieldName = 'Direccion_Compuesta'
      Size = 255
    end
    object tCompaniaTelefono_Compuesto: TStringField
      AutoGenerateValue = arDefault
      FieldKind = fkInternalCalc
      FieldName = 'Telefono_Compuesto'
      Size = 255
    end
    object tCompaniaDia_Corte_Nomina_Mensual: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Dia_Corte_Nomina_Mensual'
    end
    object tCompaniaDia_Corte_Primera_Quincena: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Dia_Corte_Primera_Quincena'
    end
    object tCompaniaDia_Corte_Segunda_Quincena: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Dia_Corte_Segunda_Quincena'
    end
    object tCompaniaDia_Inicio_Semana: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Dia_Inicio_Semana'
    end
    object tCompaniaDia_Final_Semana: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Dia_Final_Semana'
    end
  end
  object dCompania: TDataSource
    DataSet = tCompania
    Left = 532
    Top = 66
  end
  object tTerminales: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'prTerminales'
    RemoteServer = Modulo.Enlace
    Left = 232
    Top = 306
    object tTerminalesID: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Size = 100
    end
    object tTerminalesDescripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Size = 100
    end
    object tTerminalesID_Caja: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Caja'
      Size = 25
    end
    object tTerminalesID_Almacen: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Almacen'
      Size = 25
    end
    object tTerminalesID_Departamento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Departamento'
      Size = 25
    end
    object tTerminalesManejo_Inventario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Manejo_Inventario'
      Size = 15
    end
    object tTerminalesTermino_COD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Termino_COD'
      Size = 25
    end
    object tTerminalesTermino_Credito: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Termino_Credito'
      Size = 25
    end
    object tTerminalesTermino_Financiado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Termino_Financiado'
      Size = 25
    end
    object tTerminalesSimbolo_Moneda: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Simbolo_Moneda'
      Size = 25
    end
    object tTerminalesFormato_Numeros: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Formato_Numeros'
      Size = 25
    end
    object tTerminalesFormato_Fecha: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Formato_Fecha'
      Size = 100
    end
    object tTerminalesFormato_Fecha_Largo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Formato_Fecha_Largo'
      Size = 100
    end
    object tTerminalesFormato_Hora: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Formato_Hora'
      Size = 100
    end
    object tTerminalesFormato_Hora_Largo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Formato_Hora_Largo'
      Size = 100
    end
    object tTerminalesDecimales_Cantidades: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Decimales_Cantidades'
      Size = 25
    end
    object tTerminalesDecimales_Moneda: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Decimales_Moneda'
      Size = 25
    end
    object tTerminalesImpresora: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Impresora'
      Size = 25
    end
    object tTerminalesPuerto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Puerto'
      Size = 25
    end
    object tTerminalesSeparador_Linea: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Separador_Linea'
      FixedChar = True
      Size = 1
    end
    object tTerminalesAncho_Linea: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ancho_Linea'
    end
    object tTerminalesLineas_Expulsar: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Lineas_Expulsar'
    end
    object tTerminalesCtrl_Alt_Del: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Ctrl_Alt_Del'
    end
    object tTerminalesAlt_F4: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Alt_F4'
    end
    object tTerminalesBarra_Windows: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Barra_Windows'
    end
    object tTerminalesPanel_Control: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Panel_Control'
    end
    object tTerminalesRun: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Run'
    end
    object tTerminalesFind: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Find'
    end
    object tTerminalesWindows_Key: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Windows_Key'
    end
    object tTerminalesApagar_Salir: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Apagar_Salir'
    end
    object tTerminalesColor_Pantallas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Color_Pantallas'
    end
    object tTerminalesComentario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario'
      Size = 100
    end
    object tTerminalesComentario_Linea_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_Linea_2'
      Size = 100
    end
    object tTerminalesComentario_Linea_3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_Linea_3'
      Size = 100
    end
    object tTerminalesComentario_Linea_4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_Linea_4'
      Size = 100
    end
    object tTerminalesStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Size = 100
    end
    object tTerminalesConcepto_Status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto_Status'
      Size = 100
    end
    object tTerminalesFecha_Instalacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Instalacion'
    end
    object tTerminalesFecha_Vencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Vencimiento'
    end
    object tTerminalesEjecuciones: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ejecuciones'
    end
    object tTerminalesLimite_Ejecuciones: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Limite_Ejecuciones'
    end
    object tTerminalesNombre_Mascara: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Mascara'
      Size = 100
    end
    object tTerminalesDireccion_Mascara: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion_Mascara'
      Size = 255
    end
    object tTerminalesDireccion_IP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion_IP'
      Size = 100
    end
    object tTerminalesDireccion_NETBIOS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion_NETBIOS'
      Size = 100
    end
    object tTerminalesCPU_ID: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPU_ID'
      Size = 100
    end
    object tTerminalesMAC_Address: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MAC_Address'
      Size = 100
    end
    object tTerminalesCarpeta_Fotos_ID: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Carpeta_Fotos_ID'
      Size = 255
    end
    object tTerminalesAncho_Fotos_Documentos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ancho_Fotos_Documentos'
    end
    object tTerminalesAltura_Fotos_Documentos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Altura_Fotos_Documentos'
    end
    object tTerminalesRestringir_Dias_Semana: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Restringir_Dias_Semana'
    end
    object tTerminalesOutputDir: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OutputDir'
      Size = 255
    end
    object tTerminalesHora_Apertura: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora_Apertura'
    end
    object tTerminalesHora_Cierre: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora_Cierre'
    end
    object tTerminalesNombre: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Size = 100
    end
    object tTerminalesDireccion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion'
      Size = 100
    end
    object tTerminalesCiudad: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ciudad'
      Size = 100
    end
    object tTerminalesPais: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pais'
      Size = 100
    end
    object tTerminalesTelefono: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefono'
      Size = 15
    end
    object tTerminalesComentario_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_1'
      Size = 100
    end
    object tTerminalesComentario_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_2'
      Size = 100
    end
    object tTerminalesComentario_3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_3'
      Size = 100
    end
    object tTerminalesComentario_4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_4'
      Size = 100
    end
    object tTerminalesFormato_N_T_H: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Formato_N_T_H'
      Size = 100
    end
    object tTerminalesBarra: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Barra'
    end
    object tTerminalesPanel: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Panel'
    end
    object tTerminalesWinKey: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'WinKey'
    end
    object tTerminalesLineas_Despues: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Lineas_Despues'
    end
    object tTerminalesDireccion_Local: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion_Local'
      Size = 100
    end
    object tTerminalesIcon: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Icon'
    end
    object tTerminalesBalance: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
    end
    object tTerminalesUltima_Cta: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ultima_Cta'
    end
    object tTerminalesFecha_Ultima_Cta: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Ultima_Cta'
    end
    object tTerminalesRNC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RNC'
      Size = 50
    end
    object tTerminalesNombre_Impuesto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Impuesto'
      Size = 25
    end
    object tTerminalesCondicion_Facturas: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Condicion_Facturas'
      Size = 25
    end
    object tTerminalesTermino_LayAway: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Termino_LayAway'
    end
    object tTerminalesPorcentaje_LayAway: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Porcentaje_LayAway'
    end
    object tTerminalesTipo_Factura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Factura'
      Size = 25
    end
    object tTerminalesTermino_Facturacion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Termino_Facturacion'
      Size = 25
    end
    object tTerminalesInventario_Restringido: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Inventario_Restringido'
    end
    object tTerminalesAperturar_Caja: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Aperturar_Caja'
    end
    object tTerminalesAlmacen: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Size = 25
    end
    object tTerminalesNombre_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_2'
      Size = 100
    end
    object tTerminalesNombre_3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_3'
      Size = 100
    end
    object tTerminalesDireccion_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion_2'
      Size = 100
    end
  end
  object dTerminales: TDataSource
    DataSet = tTerminales
    Left = 340
    Top = 306
  end
  object tLst_Terminales_Status: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Status'
        ParamType = ptInput
      end>
    ProviderName = 'prLst_Terminales_Status'
    RemoteServer = Modulo.Enlace
    Left = 424
    Top = 122
    object tLst_Terminales_StatusID: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Size = 100
    end
    object tLst_Terminales_StatusDescripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Size = 100
    end
    object tLst_Terminales_StatusID_Caja: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Caja'
      Size = 25
    end
    object tLst_Terminales_StatusID_Almacen: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Almacen'
      Size = 25
    end
    object tLst_Terminales_StatusID_Departamento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Departamento'
      Size = 25
    end
    object tLst_Terminales_StatusManejo_Inventario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Manejo_Inventario'
      Size = 15
    end
    object tLst_Terminales_StatusTermino_COD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Termino_COD'
      Size = 25
    end
    object tLst_Terminales_StatusTermino_Credito: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Termino_Credito'
      Size = 25
    end
    object tLst_Terminales_StatusTermino_Financiado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Termino_Financiado'
      Size = 25
    end
    object tLst_Terminales_StatusSimbolo_Moneda: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Simbolo_Moneda'
      Size = 25
    end
    object tLst_Terminales_StatusFormato_Numeros: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Formato_Numeros'
      Size = 25
    end
    object tLst_Terminales_StatusFormato_Fecha: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Formato_Fecha'
      Size = 100
    end
    object tLst_Terminales_StatusFormato_Fecha_Largo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Formato_Fecha_Largo'
      Size = 100
    end
    object tLst_Terminales_StatusFormato_Hora: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Formato_Hora'
      Size = 100
    end
    object tLst_Terminales_StatusFormato_Hora_Largo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Formato_Hora_Largo'
      Size = 100
    end
    object tLst_Terminales_StatusDecimales_Cantidades: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Decimales_Cantidades'
      Size = 25
    end
    object tLst_Terminales_StatusDecimales_Moneda: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Decimales_Moneda'
      Size = 25
    end
    object tLst_Terminales_StatusImpresora: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Impresora'
      Size = 25
    end
    object tLst_Terminales_StatusPuerto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Puerto'
      Size = 25
    end
    object tLst_Terminales_StatusSeparador_Linea: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Separador_Linea'
      FixedChar = True
      Size = 1
    end
    object tLst_Terminales_StatusAncho_Linea: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ancho_Linea'
    end
    object tLst_Terminales_StatusLineas_Expulsar: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Lineas_Expulsar'
    end
    object tLst_Terminales_StatusCtrl_Alt_Del: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Ctrl_Alt_Del'
    end
    object tLst_Terminales_StatusAlt_F4: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Alt_F4'
    end
    object tLst_Terminales_StatusBarra_Windows: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Barra_Windows'
    end
    object tLst_Terminales_StatusPanel_Control: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Panel_Control'
    end
    object tLst_Terminales_StatusRun: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Run'
    end
    object tLst_Terminales_StatusFind: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Find'
    end
    object tLst_Terminales_StatusWindows_Key: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Windows_Key'
    end
    object tLst_Terminales_StatusApagar_Salir: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Apagar_Salir'
    end
    object tLst_Terminales_StatusColor_Pantallas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Color_Pantallas'
    end
    object tLst_Terminales_StatusComentario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario'
      Size = 100
    end
    object tLst_Terminales_StatusComentario_Linea_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_Linea_2'
      Size = 100
    end
    object tLst_Terminales_StatusComentario_Linea_3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_Linea_3'
      Size = 100
    end
    object tLst_Terminales_StatusComentario_Linea_4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_Linea_4'
      Size = 100
    end
    object tLst_Terminales_StatusStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Size = 100
    end
    object tLst_Terminales_StatusConcepto_Status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto_Status'
      Size = 100
    end
    object tLst_Terminales_StatusFecha_Instalacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Instalacion'
    end
    object tLst_Terminales_StatusFecha_Vencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Vencimiento'
    end
    object tLst_Terminales_StatusEjecuciones: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ejecuciones'
    end
    object tLst_Terminales_StatusLimite_Ejecuciones: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Limite_Ejecuciones'
    end
    object tLst_Terminales_StatusNombre_Mascara: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Mascara'
      Size = 100
    end
    object tLst_Terminales_StatusDireccion_Mascara: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion_Mascara'
      Size = 255
    end
    object tLst_Terminales_StatusDireccion_IP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion_IP'
      Size = 100
    end
    object tLst_Terminales_StatusDireccion_NETBIOS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion_NETBIOS'
      Size = 100
    end
    object tLst_Terminales_StatusCPU_ID: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPU_ID'
      Size = 100
    end
    object tLst_Terminales_StatusMAC_Address: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MAC_Address'
      Size = 100
    end
    object tLst_Terminales_StatusCarpeta_Fotos_ID: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Carpeta_Fotos_ID'
      Size = 255
    end
    object tLst_Terminales_StatusAncho_Fotos_Documentos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ancho_Fotos_Documentos'
    end
    object tLst_Terminales_StatusAltura_Fotos_Documentos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Altura_Fotos_Documentos'
    end
    object tLst_Terminales_StatusRestringir_Dias_Semana: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Restringir_Dias_Semana'
    end
    object tLst_Terminales_StatusOutputDir: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OutputDir'
      Size = 255
    end
  end
  object dLst_Terminales_Status: TDataSource
    DataSet = tLst_Terminales_Status
    Left = 532
    Top = 122
  end
  object StatusBarStyler: TAdvOfficeStatusBarOfficeStyler
    Style = psOffice2010Blue
    BorderColor = 10981241
    PanelAppearanceLight.BorderColor = clNone
    PanelAppearanceLight.BorderColorHot = 5819121
    PanelAppearanceLight.BorderColorDown = 3181250
    PanelAppearanceLight.Color = 16643823
    PanelAppearanceLight.ColorTo = 15784647
    PanelAppearanceLight.ColorHot = 14285309
    PanelAppearanceLight.ColorHotTo = 9102333
    PanelAppearanceLight.ColorDown = 8122111
    PanelAppearanceLight.ColorDownTo = 7131391
    PanelAppearanceLight.ColorMirror = clNone
    PanelAppearanceLight.ColorMirrorTo = clNone
    PanelAppearanceLight.ColorMirrorHot = 9102333
    PanelAppearanceLight.ColorMirrorHotTo = 14285309
    PanelAppearanceLight.ColorMirrorDown = 7131391
    PanelAppearanceLight.ColorMirrorDownTo = 8122111
    PanelAppearanceLight.TextColor = 7551263
    PanelAppearanceLight.TextColorHot = 7551263
    PanelAppearanceLight.TextColorDown = 7551263
    PanelAppearanceLight.TextStyle = []
    PanelAppearanceDark.BorderColor = clNone
    PanelAppearanceDark.BorderColorHot = 5819121
    PanelAppearanceDark.BorderColorDown = 3181250
    PanelAppearanceDark.Color = 16181468
    PanelAppearanceDark.ColorTo = 10981241
    PanelAppearanceDark.ColorHot = 14285309
    PanelAppearanceDark.ColorHotTo = 9102333
    PanelAppearanceDark.ColorDown = 8122111
    PanelAppearanceDark.ColorDownTo = 7131391
    PanelAppearanceDark.ColorMirror = clNone
    PanelAppearanceDark.ColorMirrorTo = clNone
    PanelAppearanceDark.ColorMirrorHot = 9102333
    PanelAppearanceDark.ColorMirrorHotTo = 14285309
    PanelAppearanceDark.ColorMirrorDown = 7131391
    PanelAppearanceDark.ColorMirrorDownTo = 8122111
    PanelAppearanceDark.TextColor = 7551263
    PanelAppearanceDark.TextColorHot = 7551263
    PanelAppearanceDark.TextColorDown = 7551263
    PanelAppearanceDark.TextStyle = []
    Left = 616
    Top = 8
  end
  object Mensajes: TAdvAlertWindow
    AlertMessages = <
      item
        ImageIndex = 0
        Tag = 0
      end>
    AlwaysOnTop = False
    AutoHide = True
    AutoSize = True
    AutoDelete = False
    BorderColor = 13542013
    BtnHoverColor = 16645114
    BtnHoverColorTo = 16643051
    BtnDownColor = 16575452
    BtnDownColorTo = 16571329
    CaptionColor = 16510419
    CaptionColorTo = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    GradientDirection = gdVertical
    HintNextBtn = 'Next'
    HintPrevBtn = 'Previous'
    HintCloseBtn = 'Cerrar'
    HintDeleteBtn = 'Delete'
    HintPopupBtn = 'Popup'
    Hover = False
    MarginX = 4
    MarginY = 1
    PopupLeft = 0
    PopupTop = 0
    PopupWidth = 300
    PopupHeight = 100
    PositionFormat = '%d of %d'
    RegistryKey = 'alertitas'
    WindowColor = 16575452
    WindowColorTo = 16571329
    ShowScrollers = False
    ShowDelete = False
    ShowPopup = False
    AlphaEnd = 250
    AlphaStart = 170
    DisplayTime = 4000
    FadeStep = 2
    WindowPosition = wpRightBottom
    Style = asWindows7
    Version = '1.7.1.0'
    Left = 616
    Top = 120
  end
  object tARS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prARS'
    RemoteServer = Modulo.Enlace
    Left = 232
    Top = 357
    object tARSLogo: TBlobField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Logo'
      Size = 8
    end
    object tARSDescripcion: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 100
      FieldName = 'Descripcion'
      Size = 100
    end
    object tARSNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Visible = False
    end
  end
  object dARS: TDataSource
    DataSet = tARS
    Left = 340
    Top = 357
  end
  object tAFP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prAFP'
    RemoteServer = Modulo.Enlace
    Left = 232
    Top = 410
    object tAFPLogo: TBlobField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Logo'
      Size = 8
    end
    object tAFPDescripcion: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 100
      FieldName = 'Descripcion'
      Size = 100
    end
    object tAFPNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Visible = False
    end
  end
  object dAFP: TDataSource
    DataSet = tAFP
    Left = 340
    Top = 410
  end
  object tDocumentos: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    Params = <>
    ProviderName = 'prDocumentos'
    RemoteServer = Modulo.Enlace
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 424
    Top = 183
    object tDocumentosSelected: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'Selected'
    end
    object tDocumentosID: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Size = 25
    end
    object tDocumentosArchivo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Archivo'
      Size = 255
    end
    object tDocumentosNombre: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Size = 100
    end
    object tDocumentosFecha_Creacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Creacion'
    end
    object tDocumentosStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Size = 100
    end
    object tDocumentosTipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo'
      Size = 100
    end
    object tDocumentosAPLICA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'APLICA'
      Size = 25
    end
  end
  object dDocumentos: TDataSource
    DataSet = tDocumentos
    Left = 528
    Top = 183
  end
  object tCategorias: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prCategorias'
    RemoteServer = Modulo.Enlace
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 32
    Top = 527
    object tCategoriasID: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Size = 25
    end
    object tCategoriasNombre: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Size = 100
    end
    object tCategoriasFecha_Creacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Creacion'
    end
    object tCategoriasStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Size = 100
    end
    object tCategoriasTipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo'
      Size = 100
    end
    object tCategoriasPrioridad: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Prioridad'
    end
  end
  object dCategorias: TDataSource
    DataSet = tCategorias
    Left = 136
    Top = 527
  end
  object EditStyleController: TcxEditStyleController
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.Kind = lfOffice11
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'MoneyTwins'
    Style.Shadow = False
    Style.ButtonStyle = btsDefault
    Style.Gradient = True
    Style.GradientDirection = dirLeft
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfOffice11
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'MoneyTwins'
    StyleFocused.BorderStyle = ebsOffice11
    StyleFocused.Color = 12779216
    StyleFocused.LookAndFeel.Kind = lfOffice11
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'MoneyTwins'
    StyleFocused.ButtonStyle = bts3D
    StyleHot.LookAndFeel.Kind = lfOffice11
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'MoneyTwins'
    Left = 616
    Top = 176
    PixelsPerInch = 96
  end
  object grdRepositoryItems: TcxEditRepository
    Left = 616
    Top = 296
    object grdPictures: TcxEditRepositoryImageItem
      Properties.GraphicClassName = 'TJPEGImage'
      Properties.Stretch = True
    end
  end
  object grdsRepository: TcxStyleRepository
    Left = 616
    Top = 232
    PixelsPerInch = 96
    object grdStyleDescuentos: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 11322871
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object grdStyleImpuestos: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object grdStyleSubTotales: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 33023
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object grdStyleTotales: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object styChecked: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object styRed: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clRed
      TextColor = clYellow
    end
    object styBlack: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clBlack
      TextColor = clWhite
    end
  end
  object tListado_Empleados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prListado_Empleados'
    RemoteServer = Modulo.Enlace
    Left = 624
    Top = 361
    object tListado_EmpleadosCedula_Rnc_Pasaporte: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 15
      FieldName = 'Cedula_Rnc_Pasaporte'
      Origin = '"Empleados"."Cedula_Rnc_Pasaporte"'
      Size = 25
    end
    object tListado_EmpleadosNombreCompleto: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 30
      FieldName = 'NombreCompleto'
      Origin = '"Empleados"."NombreCompleto"'
      ProviderFlags = []
      ReadOnly = True
      Size = 201
    end
    object tListado_EmpleadosTipo_Documento: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Tipo_Documento'
      Origin = '"Empleados"."Tipo_Documento"'
      Visible = False
      Size = 25
    end
    object tListado_EmpleadosSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Secuencia'
      Origin = '"Empleados"."Secuencia"'
      Visible = False
    end
    object tListado_EmpleadosNombre: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 100
      FieldName = 'Nombre'
      Origin = '"Empleados"."Nombre"'
      Visible = False
      Size = 100
    end
    object tListado_EmpleadosApellido: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 100
      FieldName = 'Apellido'
      Origin = '"Empleados"."Apellido"'
      Visible = False
      Size = 100
    end
    object tListado_EmpleadosNacionalidad: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Nacionalidad'
      Origin = '"Empleados"."Nacionalidad"'
      Visible = False
      Size = 25
    end
    object tListado_EmpleadosSexo: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Sexo'
      Origin = '"Empleados"."Sexo"'
      Visible = False
      Size = 25
    end
    object tListado_EmpleadosTipo_Telefono_1: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 20
      FieldName = 'Tipo_Telefono_1'
      Origin = '"Empleados"."Tipo_Telefono_1"'
      Visible = False
    end
    object tListado_EmpleadosTipo_Telefono_2: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 20
      FieldName = 'Tipo_Telefono_2'
      Origin = '"Empleados"."Tipo_Telefono_2"'
      Visible = False
    end
    object tListado_EmpleadosTipo_Telefono_3: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 20
      FieldName = 'Tipo_Telefono_3'
      Origin = '"Empleados"."Tipo_Telefono_3"'
      Visible = False
    end
    object tListado_EmpleadosTipo_Telefono_4: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 20
      FieldName = 'Tipo_Telefono_4'
      Origin = '"Empleados"."Tipo_Telefono_4"'
      Visible = False
    end
    object tListado_EmpleadosNumero_Telefono_1: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 20
      FieldName = 'Numero_Telefono_1'
      Origin = '"Empleados"."Numero_Telefono_1"'
      Visible = False
    end
    object tListado_EmpleadosNumero_Telefono_2: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 20
      FieldName = 'Numero_Telefono_2'
      Origin = '"Empleados"."Numero_Telefono_2"'
      Visible = False
    end
    object tListado_EmpleadosNumero_Telefono_3: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 20
      FieldName = 'Numero_Telefono_3'
      Origin = '"Empleados"."Numero_Telefono_3"'
      Visible = False
    end
    object tListado_EmpleadosNumero_Telefono_4: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 20
      FieldName = 'Numero_Telefono_4'
      Origin = '"Empleados"."Numero_Telefono_4"'
      Visible = False
    end
    object tListado_EmpleadosDireccion: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 255
      FieldName = 'Direccion'
      Origin = '"Empleados"."Direccion"'
      Visible = False
      Size = 255
    end
    object tListado_EmpleadosPais: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 100
      FieldName = 'Pais'
      Origin = '"Empleados"."Pais"'
      Visible = False
      Size = 100
    end
    object tListado_EmpleadosCiudad: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 100
      FieldName = 'Ciudad'
      Origin = '"Empleados"."Ciudad"'
      Visible = False
      Size = 100
    end
    object tListado_EmpleadosNumero_Tarjeta: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Numero_Tarjeta'
      Origin = '"Empleados"."Numero_Tarjeta"'
      Visible = False
      Size = 25
    end
    object tListado_EmpleadosNumero_Cuenta: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Numero_Cuenta'
      Origin = '"Empleados"."Numero_Cuenta"'
      Visible = False
      Size = 25
    end
    object tListado_EmpleadosRegistrado_En_Fecha: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayWidth = 18
      FieldName = 'Registrado_En_Fecha'
      Origin = '"Empleados"."Registrado_En_Fecha"'
      Visible = False
    end
    object tListado_Empleadosmail: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 100
      FieldName = 'mail'
      Origin = '"Empleados"."mail"'
      Visible = False
      Size = 100
    end
    object tListado_EmpleadosFoto: TBlobField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Foto'
      Origin = '"Empleados"."Foto"'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 8
    end
    object tListado_EmpleadosFecha_Nacimiento: TDateField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Fecha_Nacimiento'
      Origin = '"Empleados"."Fecha_Nacimiento"'
      Visible = False
    end
    object tListado_EmpleadosEstado_Civil: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 15
      FieldName = 'Estado_Civil'
      Origin = '"Empleados"."Estado_Civil"'
      Visible = False
      Size = 15
    end
    object tListado_EmpleadosCodigo_Banco: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Codigo_Banco'
      Origin = '"Empleados"."Codigo_Banco"'
      Visible = False
      Size = 25
    end
  end
  object tAutorizaciones: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Form'
        ParamType = ptInput
      end>
    ProviderName = 'prAutorizaciones'
    RemoteServer = Modulo.Enlace
    BeforeRefresh = ChkRefresh
    AfterRefresh = tAccesosAfterRefresh
    OnReconcileError = DataSetReconcileError
    Left = 32
    Top = 207
    object tAutorizacionesForm: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Form'
      Size = 100
    end
    object tAutorizacionesNombre: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Size = 100
    end
    object tAutorizacionesTipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo'
      Size = 100
    end
  end
  object dAutorizaciones: TDataSource
    DataSet = tAutorizaciones
    Left = 136
    Top = 207
  end
end
