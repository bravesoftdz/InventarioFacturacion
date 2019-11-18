object ModuloGenerales: TModuloGenerales
  OldCreateOrder = False
  Height = 489
  Width = 700
  object tUsuarios: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Modulo.Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'NickName'
        ParamType = ptInput
      end>
    ProviderName = 'prUsuarios'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 32
    Top = 200
    object tUsuariosNombreCompleto: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nombre Completo'
      DisplayWidth = 40
      FieldName = 'NombreCompleto'
      Size = 100
    end
    object tUsuariosNickName: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'NickName'
      Size = 25
    end
    object tUsuariosPassword: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Password'
      Visible = False
      Size = 255
    end
    object tUsuariosNivel_Acceso: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nivel de Acceso'
      FieldName = 'Nivel_Acceso'
      Visible = False
      Size = 25
    end
  end
  object dUsuarios: TDataSource
    DataSet = tUsuarios
    Left = 136
    Top = 200
  end
  object tNiveles: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Modulo.Concentrador
    Params = <>
    ProviderName = 'prNiveles'
    AfterDelete = tNivelesAfterDelete
    AfterScroll = tNivelesAfterScroll
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 32
    Top = 103
    object tNivelesCodigo: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 15
      FieldName = 'Codigo'
      Size = 25
    end
    object tNivelesDescripcion: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 35
      FieldName = 'Descripcion'
      Size = 100
    end
    object tNivelesFecha: TDateField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Fecha'
      Visible = False
    end
  end
  object dNiveles: TDataSource
    DataSet = tNiveles
    Left = 136
    Top = 103
  end
  object tOpciones: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Modulo.Concentrador
    Params = <>
    ProviderName = 'prOpciones'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 32
    Top = 55
    object tOpcionesOpcion: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Opcion'
      Size = 100
    end
    object tOpcionesTipo: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Tipo'
      Size = 100
    end
    object tOpcionesDescripcion: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 57
      FieldName = 'Descripcion'
      Visible = False
      Size = 100
    end
    object tOpcionesForm: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Form'
      Visible = False
      Size = 100
    end
    object tOpcionesVerificar: TStringField
      FieldKind = fkLookup
      FieldName = 'Verificar'
      LookupDataSet = tAccesos
      LookupKeyFields = 'Opcion'
      LookupResultField = 'Opcion'
      KeyFields = 'Opcion'
      Size = 150
      Lookup = True
    end
  end
  object dOpciones: TDataSource
    DataSet = tOpciones
    Left = 136
    Top = 55
  end
  object tAccesos: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Modulo.Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Nivel'
        ParamType = ptInput
      end>
    ProviderName = 'prAccesos'
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
    ConnectionBroker = Modulo.Concentrador
    Params = <>
    ProviderName = 'prForms'
    AfterOpen = tFormsAfterScroll
    AfterScroll = tFormsAfterScroll
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 32
    Top = 7
    object tFormsName: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldName = 'Name'
      Size = 25
    end
    object tFormsClass_Name: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Class_Name'
      Size = 25
    end
    object tFormsDescription: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descripci'#243'n'
      DisplayWidth = 60
      FieldName = 'Description'
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
    ConnectionBroker = Modulo.Concentrador
    Params = <
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
    ProviderName = 'prPaises'
    AfterRefresh = tPaisesAfterRefresh
    OnReconcileError = DataSetReconcileError
    Left = 232
    Top = 7
    object tPaisesIso_3_Char: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Iso_3_Char'
      Origin = '"Paises"."Iso_3_Char"'
      EditMask = 'AAA;1; '
      Size = 25
    end
    object tPaisesIso_2_Char: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Iso_2_Char'
      Origin = '"Paises"."Iso_2_Char"'
      EditMask = 'AA;1; '
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
  end
  object dCiudades: TDataSource
    DataSet = tCiudades
    Left = 336
    Top = 55
  end
  object tCiudades: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Modulo.Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Pais'
        ParamType = ptInput
      end>
    ProviderName = 'prCiudades'
    AfterScroll = LoadSector_Zones
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 232
    Top = 55
    object tCiudadesNombre: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 35
      FieldName = 'Nombre'
      Origin = '"Ciudades_Estados"."Nombre"'
      Size = 100
    end
    object tCiudadesSerie_Codigo: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Serie / Codigo'
      DisplayWidth = 5
      FieldName = 'Serie_Codigo'
      Origin = '"Ciudades_Estados"."Serie_Codigo"'
      Size = 25
    end
    object tCiudadesPais: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 4
      FieldName = 'Pais'
      Origin = '"Ciudades_Estados"."Pais"'
      Visible = False
      Size = 25
    end
  end
  object dSectores: TDataSource
    DataSet = tSectores
    Left = 336
    Top = 103
  end
  object tSectores: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Modulo.Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Ciudad'
        ParamType = ptInput
      end>
    ProviderName = 'prSector'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 232
    Top = 103
    object tSectoresNombre: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 35
      FieldName = 'Nombre'
      Origin = '"Sector"."Nombre"'
      Size = 100
    end
    object tSectoresAbreviatura: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 11
      FieldName = 'Abreviatura'
      Origin = '"Sector"."Abreviatura"'
      Size = 25
    end
    object tSectoresCiudad: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Ciudad'
      Origin = '"Sector"."Ciudad"'
      Visible = False
      Size = 25
    end
    object tSectoresNumero: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Numero'
      Origin = '"Sector"."Numero"'
      Visible = False
    end
  end
  object tZonas: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Modulo.Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Ciudad'
        ParamType = ptInput
      end>
    ProviderName = 'prZona'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 232
    Top = 200
    object tZonasDescripcion: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 50
      FieldName = 'Descripcion'
      Origin = '"Zona"."Descripcion"'
      Size = 100
    end
    object tZonasNumero: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Numero'
      Origin = '"Zona"."Numero"'
      DisplayFormat = '000000'
    end
    object tZonasCiudad: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ciudad'
      Origin = '"Zona"."Ciudad"'
      Visible = False
      Size = 25
    end
  end
  object dZonas: TDataSource
    DataSet = tZonas
    Left = 336
    Top = 200
  end
  object tListado_Paises: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Modulo.Concentrador
    Params = <>
    ProviderName = 'prListado_Paises'
    AfterScroll = tListado_PaisesAfterScroll
    BeforeRefresh = ChkRefresh
    AfterRefresh = tListado_PaisesAfterRefresh
    OnReconcileError = DataSetReconcileError
    Left = 232
    Top = 151
    object tListado_PaisesNombre: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 50
      FieldName = 'Nombre'
      Origin = '"Paises"."Nombre"'
      Size = 100
    end
    object tListado_PaisesIso_3_Char: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'COD'
      DisplayWidth = 5
      FieldName = 'Iso_3_Char'
      Origin = '"Paises"."Iso_3_Char"'
      EditMask = 'AAA;1; '
      Size = 25
    end
    object tListado_PaisesRegion: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Region'
      Origin = '"Paises"."Region"'
      Size = 100
    end
    object tListado_PaisesIso_2_Char: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Iso_2_Char'
      Origin = '"Paises"."Iso_2_Char"'
      Visible = False
      EditMask = 'AA;1; '
      Size = 25
    end
    object tListado_PaisesIdioma: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Idioma'
      Origin = '"Paises"."Idioma"'
      Visible = False
      Size = 25
    end
  end
  object dListado_Paises: TDataSource
    DataSet = tListado_Paises
    Left = 336
    Top = 151
  end
  object tListadoUsuarios: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Modulo.Concentrador
    Params = <>
    ProviderName = 'prListadoUsuarios'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 32
    Top = 249
    object tListadoUsuariosNickName: TStringField
      FieldName = 'NickName'
      Size = 25
    end
    object tListadoUsuariosNombreCompleto: TStringField
      FieldName = 'NombreCompleto'
      Size = 100
    end
    object tListadoUsuariosNivel_Acceso: TStringField
      FieldName = 'Nivel_Acceso'
      Size = 25
    end
    object tListadoUsuariosPassword: TStringField
      FieldName = 'Password'
      Size = 255
    end
  end
  object dListadoUsuarios: TDataSource
    DataSet = tListadoUsuarios
    Left = 136
    Top = 249
  end
  object tDenominaciones_Moneda: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Modulo.Concentrador
    Params = <>
    ProviderName = 'prDenominaciones_Moneda'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 32
    Top = 300
    object tDenominaciones_MonedaMoneda: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Moneda'
      Size = 100
    end
    object tDenominaciones_MonedaDenominacion: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Denominacion'
      Precision = 12
      Size = 2
    end
  end
  object dDenominaciones: TDataSource
    DataSet = tDenominaciones_Moneda
    Left = 136
    Top = 300
  end
  object Mensajes: TsuiMSNPopForm
    AnimateTime = 400
    StayTime = 2000
    PositionX = 0
    PositionY = 0
    AutoPosition = True
    ClickHide = True
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    MessageFont.Charset = DEFAULT_CHARSET
    MessageFont.Color = clNavy
    MessageFont.Height = -11
    MessageFont.Name = 'Tahoma'
    MessageFont.Style = []
    Left = 232
    Top = 252
  end
end
