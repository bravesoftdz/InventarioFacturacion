object Modulo: TModulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 1099
  Width = 1032
  object Enlace: TSocketConnection
    ServerName = 'DataServer.RemoteModule'
    Host = 'Rms-Pc'
    Left = 24
    Top = 4
  end
  object Concentrador: TConnectionBroker
    Connection = Enlace
    Left = 120
    Top = 4
  end
  object tProductos: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Barra'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Referencia'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Secuencia'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    ProviderName = 'prProductos'
    BeforePost = tProductosBeforePost
    BeforeRefresh = ChkRefresh
    AfterRefresh = tProductosAfterRefresh
    OnCalcFields = tProductosCalcFields
    OnReconcileError = DataSetReconcileError
    Left = 24
    Top = 49
    object tProductosCodigo: TStringField
      Alignment = taRightJustify
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 25
      FieldName = 'Codigo'
      Origin = '"Productos"."Codigo"'
      Size = 25
    end
    object tProductosDescripcion: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descripcion del Producto'
      DisplayWidth = 100
      FieldName = 'Descripcion'
      Origin = '"Productos"."Descripcion"'
      Size = 100
    end
    object tProductosBarra: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Barra'
      Origin = '"Productos"."Barra"'
      Visible = False
      Size = 25
    end
    object tProductosSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Secuencia'
      Origin = '"Productos"."Secuencia"'
      Visible = False
      DisplayFormat = '#,#0'
    end
    object tProductosReferencia: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Referencia'
      Origin = '"Productos"."Referencia"'
      Visible = False
      Size = 25
    end
    object tProductosFecha_Registro: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fecha de Registro'
      DisplayWidth = 10
      FieldName = 'Fecha_Registro'
      Origin = '"Productos"."Fecha_Registro"'
      Visible = False
    end
    object tProductosDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Departamento'
      Origin = '"Productos"."Departamento"'
      Visible = False
    end
    object tProductosCategoria: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Categor'#237'a'
      DisplayWidth = 10
      FieldName = 'Categoria'
      Origin = '"Productos"."Categoria"'
      Visible = False
    end
    object tProductosProveedor_Principal: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Proveedor Principal'
      DisplayWidth = 10
      FieldName = 'Proveedor_Principal'
      Origin = '"Productos"."Proveedor_Principal"'
      Visible = False
    end
    object tProductosTipo_Inventario: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo de Inventario'
      DisplayWidth = 25
      FieldName = 'Tipo_Inventario'
      Origin = '"Productos"."Tipo_Inventario"'
      Visible = False
      Size = 25
    end
    object tProductosTipo_Producto: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo de Producto'
      DisplayWidth = 10
      FieldName = 'Tipo_Producto'
      Origin = '"Productos"."Tipo_Producto"'
      Visible = False
    end
    object tProductosLector_Codigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Lector_Codigo'
      Origin = '"Productos"."Lector_Codigo"'
      Size = 25
    end
    object tProductosMinimo: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Inventario M'#237'nimo'
      DisplayWidth = 13
      FieldName = 'Minimo'
      Origin = '"Productos"."Minimo"'
      Visible = False
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object tProductosReorden: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cantidad de Reorden'
      DisplayWidth = 13
      FieldName = 'Reorden'
      Origin = '"Productos"."Reorden"'
      Visible = False
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object tProductosUbicacion: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Ubicaci'#243'n'
      DisplayWidth = 100
      FieldName = 'Ubicacion'
      Origin = '"Productos"."Ubicacion"'
      Visible = False
      Size = 100
    end
    object tProductosCuenta_Contable: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cuenta Contable'
      DisplayWidth = 25
      FieldName = 'Cuenta_Contable'
      Origin = '"Productos"."Cuenta_Contable"'
      Visible = False
      Size = 25
    end
    object tProductosMetodo_Calculo_Costo: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'M'#233'todo para C'#225'lculo de Costos'
      DisplayWidth = 25
      FieldName = 'Metodo_Calculo_Costo'
      Origin = '"Productos"."Metodo_Calculo_Costo"'
      Visible = False
      OnValidate = Calcular_Beneficio_Productos
      Size = 25
    end
    object tProductosUltimo_Precio_Compra: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = #218'ltimo Precio de Compra'
      DisplayWidth = 13
      FieldName = 'Ultimo_Precio_Compra'
      Origin = '"Productos"."Ultimo_Precio_Compra"'
      Visible = False
      OnValidate = Calcular_Beneficio_Productos
      currency = True
      Precision = 12
      Size = 2
    end
    object tProductosCosto_Standar: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Costo Estandar'
      DisplayWidth = 13
      FieldName = 'Costo_Standar'
      Origin = '"Productos"."Costo_Standar"'
      Visible = False
      OnValidate = Calcular_Beneficio_Productos
      currency = True
      Precision = 12
      Size = 2
    end
    object tProductosCosto_Promedio: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Costo Promedio'
      DisplayWidth = 13
      FieldName = 'Costo_Promedio'
      Origin = '"Productos"."Costo_Promedio"'
      Visible = False
      OnValidate = Calcular_Beneficio_Productos
      currency = True
      Precision = 12
      Size = 2
    end
    object tProductosMedida_Compra: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Medida de Compra'
      DisplayWidth = 25
      FieldName = 'Medida_Compra'
      Origin = '"Productos"."Medida_Compra"'
      Visible = False
      Size = 25
    end
    object tProductosUnidades_Medida_Compra: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cantidad por Unidad de Medida'
      DisplayWidth = 13
      FieldName = 'Unidades_Medida_Compra'
      Origin = '"Productos"."Unidades_Medida_Compra"'
      Visible = False
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object tProductosUltima_Compra: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fecha de '#218'ltima Compra'
      DisplayWidth = 10
      FieldName = 'Ultima_Compra'
      Origin = '"Productos"."Ultima_Compra"'
      Visible = False
    end
    object tProductosMedida_Venta: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Medida de Venta'
      DisplayWidth = 25
      FieldName = 'Medida_Venta'
      Origin = '"Productos"."Medida_Venta"'
      Visible = False
      Size = 25
    end
    object tProductosUnidades_Medida_Venta: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cantidad por Unidad de Medida'
      DisplayWidth = 13
      FieldName = 'Unidades_Medida_Venta'
      Origin = '"Productos"."Unidades_Medida_Venta"'
      Visible = False
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object tProductosAplica_Descuento: TBooleanField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Aplica Para Descuento'
      DisplayWidth = 5
      FieldName = 'Aplica_Descuento'
      Origin = '"Productos"."Aplica_Descuento"'
      Visible = False
    end
    object tProductosPrecio_Venta_Contado: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Precio de Venta al Contado'
      DisplayWidth = 13
      FieldName = 'Precio_Venta_Contado'
      Origin = '"Productos"."Precio_Venta_Contado"'
      Visible = False
      currency = True
      Precision = 12
      Size = 2
    end
    object tProductosPrecio_Venta_Credito: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Precio de Venta a Cr'#233'dito'
      DisplayWidth = 13
      FieldName = 'Precio_Venta_Credito'
      Origin = '"Productos"."Precio_Venta_Credito"'
      Visible = False
      currency = True
      Precision = 12
      Size = 2
    end
    object tProductosPrecio_Venta_Minimo: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Precio M'#237'nimo de Venta'
      DisplayWidth = 13
      FieldName = 'Precio_Venta_Minimo'
      Origin = '"Productos"."Precio_Venta_Minimo"'
      Visible = False
      currency = True
      Precision = 12
      Size = 2
    end
    object tProductosTipo_Beneficio: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo de Beneficio'
      DisplayWidth = 25
      FieldName = 'Tipo_Beneficio'
      Origin = '"Productos"."Tipo_Beneficio"'
      Visible = False
      OnValidate = Calcular_Beneficio_Productos
      Size = 25
    end
    object tProductosValor_Beneficio_Contado: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor del Beneficio / Contado'
      DisplayWidth = 13
      FieldName = 'Valor_Beneficio_Contado'
      Origin = '"Productos"."Valor_Beneficio_Contado"'
      Visible = False
      OnValidate = Calcular_Beneficio_Productos
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object tProductosValor_Beneficio_Credito: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor de Beneficio / Cr'#233'dito'
      DisplayWidth = 13
      FieldName = 'Valor_Beneficio_Credito'
      Origin = '"Productos"."Valor_Beneficio_Credito"'
      Visible = False
      OnValidate = Calcular_Beneficio_Productos
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object tProductosPaga_Comision: TBooleanField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Paga Comisi'#243'n'
      DisplayWidth = 5
      FieldName = 'Paga_Comision'
      Origin = '"Productos"."Paga_Comision"'
      Visible = False
    end
    object tProductosRequiere_Numero_Serie: TBooleanField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Requiere N'#250'mero de Serie'
      DisplayWidth = 5
      FieldName = 'Requiere_Numero_Serie'
      Origin = '"Productos"."Requiere_Numero_Serie"'
      Visible = False
    end
    object tProductosPaga_Impuesto: TBooleanField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Paga Impuesto'
      DisplayWidth = 5
      FieldName = 'Paga_Impuesto'
      Origin = '"Productos"."Paga_Impuesto"'
      Visible = False
    end
    object tProductosRequiere_Fecha_Vencimiento: TBooleanField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Requiere Fecha de Vencimiento'
      DisplayWidth = 5
      FieldName = 'Requiere_Fecha_Vencimiento'
      Origin = '"Productos"."Requiere_Fecha_Vencimiento"'
      Visible = False
    end
    object tProductosCompradas: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Unidades Compradas'
      DisplayWidth = 13
      FieldName = 'Compradas'
      Origin = '"Productos"."Compradas"'
      Visible = False
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object tProductosVendidas: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Unidades Vendidas'
      DisplayWidth = 13
      FieldName = 'Vendidas'
      Origin = '"Productos"."Vendidas"'
      Visible = False
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object tProductosEnPedidos: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Unidades en Pedidos'
      DisplayWidth = 13
      FieldName = 'EnPedidos'
      Origin = '"Productos"."EnPedidos"'
      Visible = False
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object tProductosEnTransito: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Unidades en Tr'#225'nsito'
      DisplayWidth = 13
      FieldName = 'EnTransito'
      Origin = '"Productos"."EnTransito"'
      Visible = False
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object tProductosStatus: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Estatus'
      DisplayWidth = 10
      FieldName = 'Status'
      Origin = '"Productos"."Status"'
      Visible = False
    end
    object tProductosPresentacion: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 100
      FieldName = 'Presentacion'
      Origin = '"Productos"."Presentacion"'
      Visible = False
      OnValidate = Generar_Descripcion
      Size = 100
    end
    object tProductosFabricante: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Fabricante'
      Origin = '"Productos"."Fabricante"'
      Visible = False
    end
    object tProductosUsuario: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 100
      FieldName = 'Usuario'
      Origin = '"Productos"."Usuario"'
      Visible = False
      Size = 100
    end
    object tProductosqrSimilares: TDataSetField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'qrSimilares'
      Visible = False
    end
    object tProductosqrVencimientos: TDataSetField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'qrVencimientos'
      Visible = False
    end
    object tProductosDistribuido: TFloatField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Distribuido'
      Visible = False
      Calculated = True
    end
    object tProductosCod_Generado: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'Cod_Generado'
      Visible = False
      Size = 50
      Calculated = True
    end
    object tProductosqrComponentes: TDataSetField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'qrComponentes'
      Visible = False
    end
    object tProductosDevuelto_Compras: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Devuelto_Compras'
      Origin = '"Productos"."Devuelto_Compras"'
      Visible = False
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object tProductosNumero_Ultima_Compra: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Numero_Ultima_Compra'
      Origin = '"Productos"."Numero_Ultima_Compra"'
      Visible = False
      DisplayFormat = #39'CP'#39'0000000000'
    end
    object tProductosDevuelto_Ventas: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Devuelto_Ventas'
      Origin = '"Productos"."Devuelto_Ventas"'
      Visible = False
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object tProductosUltima_Venta: TDateField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Ultima_Venta'
      Origin = '"Productos"."Ultima_Venta"'
      Visible = False
    end
    object tProductosNumero_Ultima_Factura: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Numero_Ultima_Factura'
      Origin = '"Productos"."Numero_Ultima_Factura"'
      Visible = False
      DisplayFormat = #39'F'#39'0000000000'
    end
    object tProductosDespachadas: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Despachadas'
      Origin = '"Productos"."Despachadas"'
      Visible = False
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object tProductosUltima_Salida: TDateField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Ultima_Salida'
      Origin = '"Productos"."Ultima_Salida"'
      Visible = False
    end
    object tProductosNumero_Ultima_Salida: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Numero_Ultima_Salida'
      Origin = '"Productos"."Numero_Ultima_Salida"'
      Visible = False
      DisplayFormat = #39'SI'#39'0000000000'
    end
    object tProductosDevuelto_Despacho: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Devuelto_Despacho'
      Origin = '"Productos"."Devuelto_Despacho"'
      Visible = False
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object tProductosExistencia: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Existencia'
      Origin = '"Productos"."Existencia"'
      Visible = False
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object tProductosEditar_Existencia: TBooleanField
      AutoGenerateValue = arDefault
      DisplayWidth = 5
      FieldName = 'Editar_Existencia'
      Origin = '"Productos"."Editar_Existencia"'
      Visible = False
    end
    object tProductosPrecio_Venta_Por_Mayor_Contado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Por_Mayor_Contado'
      Origin = '"Productos"."Precio_Venta_Por_Mayor_Contado"'
      OnValidate = tProductosPrecio_Venta_Por_Mayor_ContadoValidate
      currency = True
      Precision = 12
      Size = 2
    end
    object tProductosPrecio_Venta_Por_Mayor_Credito: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Por_Mayor_Credito'
      Origin = '"Productos"."Precio_Venta_Por_Mayor_Credito"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tProductosNombre: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Origin = '"Productos"."Nombre"'
      OnValidate = Generar_Descripcion
      Size = 100
    end
    object tProductosMarca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Marca'
      Origin = '"Productos"."Marca"'
      OnValidate = Generar_Descripcion
      Size = 100
    end
    object tProductosColor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Color'
      Origin = '"Productos"."Color"'
      OnValidate = Generar_Descripcion
      Size = 25
    end
    object tProductosModelo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Modelo'
      Origin = '"Productos"."Modelo"'
      OnValidate = Generar_Descripcion
      Size = 100
    end
    object tProductosOrientacion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Orientacion'
      Origin = '"Productos"."Orientacion"'
      OnValidate = Generar_Descripcion
      Size = 25
    end
    object tProductosPosicion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Posicion'
      Origin = '"Productos"."Posicion"'
      OnValidate = Generar_Descripcion
      Size = 25
    end
    object tProductosAno: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ano'
      Origin = '"Productos"."Ano"'
      OnValidate = Generar_Descripcion
      DisplayFormat = '0000'
    end
    object tProductosNombre_Fabricante: TStringField
      AutoGenerateValue = arDefault
      FieldKind = fkLookup
      FieldName = 'Nombre_Fabricante'
      LookupDataSet = tFabricante
      LookupKeyFields = 'Numero'
      LookupResultField = 'Nombre'
      KeyFields = 'Fabricante'
      Size = 75
      Lookup = True
    end
    object tProductosNombre_Departamento: TStringField
      AutoGenerateValue = arDefault
      FieldKind = fkLookup
      FieldName = 'Nombre_Departamento'
      LookupDataSet = tDepartamentos
      LookupKeyFields = 'Numero'
      LookupResultField = 'Descripcion'
      KeyFields = 'Departamento'
      Size = 75
      Lookup = True
    end
    object tProductosDescripcion_Status: TStringField
      AutoGenerateValue = arDefault
      FieldKind = fkLookup
      FieldName = 'Descripcion_Status'
      LookupDataSet = tStatus
      LookupKeyFields = 'Numero'
      LookupResultField = 'Status'
      KeyFields = 'Status'
      Size = 75
      Lookup = True
    end
    object tProductosNombre_Tipo_Producto: TStringField
      AutoGenerateValue = arDefault
      FieldKind = fkLookup
      FieldName = 'Nombre_Tipo_Producto'
      LookupDataSet = tTipos_Productos
      LookupKeyFields = 'Numero'
      LookupResultField = 'Descripcion'
      KeyFields = 'Tipo_Producto'
      Size = 75
      Lookup = True
    end
    object tProductosProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Productos"."Proceso"'
      Size = 25
    end
    object tProductosFoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Foto'
      Origin = '"Productos"."Foto"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
  end
  object dProductos: TDataSource
    DataSet = tProductos
    Left = 120
    Top = 49
  end
  object tSimilares: TClientDataSet
    Aggregates = <>
    DataSetField = tProductosqrSimilares
    Params = <>
    BeforeRefresh = ChkRefresh
    OnCalcFields = tSimilaresCalcFields
    Left = 24
    Top = 93
    object tSimilaresCodigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Origin = '"Productos_Similares"."Codigo"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 25
    end
    object tSimilaresSimilar: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Similar'
      Origin = '"Productos_Similares"."Similar"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 25
    end
    object tSimilaresDescripcion: TStringField
      FieldKind = fkCalculated
      FieldName = 'Descripcion'
      Size = 150
      Calculated = True
    end
  end
  object dSimilares: TDataSource
    DataSet = tSimilares
    Left = 120
    Top = 93
  end
  object tDepartamentos: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <>
    ProviderName = 'prDepartamentos'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 24
    Top = 335
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
      DisplayWidth = 10
      FieldName = 'Numero'
      Origin = '"Departamentos"."Numero"'
      DisplayFormat = '000000'
    end
    object tDepartamentosUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Departamentos"."Usuario"'
      Visible = False
      Size = 100
    end
  end
  object dDepartamentos: TDataSource
    DataSet = tDepartamentos
    Left = 120
    Top = 335
  end
  object tCategoria: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <>
    ProviderName = 'prCategoria'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 24
    Top = 383
    object tCategoriaDescripcion: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 35
      FieldName = 'Descripcion'
      Size = 100
    end
    object tCategoriaNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Visible = False
    end
    object tCategoriaUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Visible = False
      Size = 100
    end
  end
  object dCategoria: TDataSource
    DataSet = tCategoria
    Left = 120
    Top = 383
  end
  object tTipos_Productos: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <>
    ProviderName = 'prTipos_Productos'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 24
    Top = 432
    object tTipos_ProductosDescripcion: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Descripcion'
      Origin = '"Tipos_Productos"."Descripcion"'
      Size = 100
    end
    object tTipos_ProductosNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Tipos_Productos"."Numero"'
      Visible = False
      DisplayFormat = '000000'
    end
    object tTipos_ProductosUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Tipos_Productos"."Usuario"'
      Visible = False
      Size = 100
    end
  end
  object dTipos_Productos: TDataSource
    DataSet = tTipos_Productos
    Left = 120
    Top = 432
  end
  object tStatus: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <>
    ProviderName = 'prStatus'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 24
    Top = 478
    object tStatusStatus: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Estatus'
      DisplayWidth = 50
      FieldName = 'Status'
      Origin = '"Status"."Status"'
      Size = 100
    end
    object tStatusNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Status"."Numero"'
      Visible = False
      DisplayFormat = '000000'
    end
    object tStatusUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Status"."Usuario"'
      Visible = False
      Size = 100
    end
  end
  object dStatus: TDataSource
    DataSet = tStatus
    Left = 120
    Top = 478
  end
  object tFabricante: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <>
    ProviderName = 'prFabricante'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 24
    Top = 525
    object tFabricanteNombre: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 50
      FieldName = 'Nombre'
      Origin = '"Fabricantes"."Nombre"'
      Visible = False
      Size = 100
    end
    object tFabricanteRepresentante: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 50
      FieldName = 'Representante'
      Origin = '"Fabricantes"."Representante"'
      Visible = False
      Size = 100
    end
    object tFabricanteCedula_Rnc_Pasaporte: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Cedula_Rnc_Pasaporte'
      Origin = '"Fabricantes"."Cedula_Rnc_Pasaporte"'
      Visible = False
      Size = 25
    end
    object tFabricanteNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Fabricantes"."Numero"'
      Visible = False
      DisplayFormat = '000000'
    end
    object tFabricanteDireccion: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Direcci'#243'n'
      FieldName = 'Direccion'
      Origin = '"Fabricantes"."Direccion"'
      Visible = False
      Size = 255
    end
    object tFabricantePais: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Pa'#237's'
      FieldName = 'Pais'
      Origin = '"Fabricantes"."Pais"'
      Visible = False
      Size = 100
    end
    object tFabricanteCiudad: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ciudad'
      Origin = '"Fabricantes"."Ciudad"'
      Visible = False
      Size = 100
    end
    object tFabricanteEstado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Estado'
      Origin = '"Fabricantes"."Estado"'
      Visible = False
      Size = 100
    end
    object tFabricanteSector: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Sector'
      Origin = '"Fabricantes"."Sector"'
      Visible = False
      Size = 100
    end
    object tFabricanteStatus: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Estatus'
      FieldName = 'Status'
      Origin = '"Fabricantes"."Status"'
      Visible = False
      Size = 15
    end
    object tFabricanteFecha_Registro: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fecha de Registro'
      FieldName = 'Fecha_Registro'
      Origin = '"Fabricantes"."Fecha_Registro"'
      Visible = False
    end
    object tFabricanteFoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Foto'
      Origin = '"Fabricantes"."Foto"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
  end
  object dFabricante: TDataSource
    DataSet = tFabricante
    Left = 120
    Top = 525
  end
  object tProveedores: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <>
    ProviderName = 'prProveedores'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 24
    Top = 572
    object tProveedoresNombre: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 50
      FieldName = 'Nombre'
      Size = 100
    end
    object tProveedoresContacto: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 50
      FieldName = 'Contacto'
      Size = 100
    end
    object tProveedoresCedula_Rnc_Pasaporte: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Cedula_Rnc_Pasaporte'
      Size = 25
    end
    object tProveedoresNumero: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#250'mero'
      FieldName = 'Numero'
      Visible = False
    end
    object tProveedoresTipo_Suplidor: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo de Suplidor'
      FieldName = 'Tipo_Suplidor'
      Visible = False
    end
    object tProveedoresTipo_Telefono_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_1'
      Visible = False
    end
    object tProveedoresTipo_Telefono_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_2'
      Visible = False
    end
    object tProveedoresTipo_Telefono_3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_3'
      Visible = False
    end
    object tProveedoresTipo_Telefono_4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_4'
      Visible = False
    end
    object tProveedoresNumero_Telefono_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_1'
      Visible = False
    end
    object tProveedoresNumero_Telefono_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_2'
      Visible = False
    end
    object tProveedoresNumero_Telefono_3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_3'
      Visible = False
    end
    object tProveedoresNumero_Telefono_4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_4'
      Visible = False
    end
    object tProveedoresDireccion: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Direcci'#243'n'
      FieldName = 'Direccion'
      Visible = False
      Size = 255
    end
    object tProveedoresPais: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Pa'#237's'
      FieldName = 'Pais'
      Visible = False
      Size = 100
    end
    object tProveedoresCiudad: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ciudad'
      Visible = False
      Size = 100
    end
    object tProveedoresEstado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Estado'
      Visible = False
      Size = 100
    end
    object tProveedoresSector: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Sector'
      Visible = False
      Size = 100
    end
    object tProveedoresLimite_Credito: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'L'#237'mite de Cr'#233'dito'
      FieldName = 'Limite_Credito'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tProveedoresCondicion_Suplidor: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Condici'#243'n'
      FieldName = 'Condicion_Suplidor'
      Visible = False
    end
    object tProveedoresNombreCompleto: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nombre Completo'
      FieldName = 'NombreCompleto'
      ReadOnly = True
      Visible = False
      Size = 203
    end
    object tProveedoresTerminosFacturacion: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Terminos de Facturaci'#243'n'
      FieldName = 'TerminosFacturacion'
      Visible = False
    end
    object tProveedoresNumero_Tarjeta: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#250'mero de Tarjeta'
      FieldName = 'Numero_Tarjeta'
      Visible = False
      Size = 25
    end
    object tProveedoresNumero_Cuenta: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#250'mero de Cuenta'
      FieldName = 'Numero_Cuenta'
      Visible = False
      Size = 25
    end
    object tProveedoresDescuento_Asignado: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descuento Asignado'
      FieldName = 'Descuento_Asignado'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tProveedoresStatus: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Estatus'
      FieldName = 'Status'
      Visible = False
      Size = 15
    end
    object tProveedoresFecha_Registro: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fecha de Registro'
      FieldName = 'Fecha_Registro'
      Visible = False
    end
    object tProveedoresBalance_Actual: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Balance Actual'
      FieldName = 'Balance_Actual'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tProveedoresUltima_Factura: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = #218'ltima Factura'
      FieldName = 'Ultima_Factura'
      Visible = False
    end
    object tProveedoresFecha_Ultima_Factura: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fecha de '#218'ltima Factura'
      FieldName = 'Fecha_Ultima_Factura'
      Visible = False
    end
    object tProveedoresmail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mail'
      Size = 100
    end
    object tProveedoresFoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Foto'
      Size = 8
    end
    object tProveedoresZona: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Zona'
    end
  end
  object dProveedores: TDataSource
    DataSet = tProveedores
    Left = 120
    Top = 572
  end
  object tClientes: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Cedula_Rnc_Pasaporte'
        ParamType = ptInput
      end>
    ProviderName = 'prClientes'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 24
    Top = 619
    object tClientesNombreCompleto: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nombre Completo'
      DisplayWidth = 201
      FieldName = 'NombreCompleto'
      Origin = '"Clientes"."NombreCompleto"'
      ProviderFlags = []
      ReadOnly = True
      Size = 201
    end
    object tClientesCedula_Rnc_Pasaporte: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#233'dula/Rnc/Registro'
      DisplayWidth = 25
      FieldName = 'Cedula_Rnc_Pasaporte'
      Origin = '"Clientes"."Cedula_Rnc_Pasaporte"'
      Size = 25
    end
    object tClientesNombre: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 50
      FieldName = 'Nombre'
      Origin = '"Clientes"."Nombre"'
      Visible = False
      Size = 100
    end
    object tClientesApellido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Apellido'
      Origin = '"Clientes"."Apellido"'
      Visible = False
      Size = 100
    end
    object tClientesTipo_Cliente: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo de Cliente'
      FieldName = 'Tipo_Cliente'
      Origin = '"Clientes"."Tipo_Cliente"'
      Visible = False
    end
    object tClientesTipo_Telefono_1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo Tel'#233'fono Principal'
      FieldName = 'Tipo_Telefono_1'
      Origin = '"Clientes"."Tipo_Telefono_1"'
      Visible = False
    end
    object tClientesTipo_Telefono_2: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo Tel'#233'fono Secundario'
      FieldName = 'Tipo_Telefono_2'
      Origin = '"Clientes"."Tipo_Telefono_2"'
      Visible = False
    end
    object tClientesTipo_Telefono_3: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo Tel'#233'fono Tercero'
      FieldName = 'Tipo_Telefono_3'
      Origin = '"Clientes"."Tipo_Telefono_3"'
      Visible = False
    end
    object tClientesTipo_Telefono_4: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo Tel'#233'fono Cuarto'
      FieldName = 'Tipo_Telefono_4'
      Origin = '"Clientes"."Tipo_Telefono_4"'
      Visible = False
    end
    object tClientesNumero_Telefono_1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel'#233'fono Principal'
      FieldName = 'Numero_Telefono_1'
      Origin = '"Clientes"."Numero_Telefono_1"'
      Visible = False
      EditMask = '!\(999\)000-0000;1; '
    end
    object tClientesNumero_Telefono_2: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel'#233'fono Secundario'
      FieldName = 'Numero_Telefono_2'
      Origin = '"Clientes"."Numero_Telefono_2"'
      Visible = False
      EditMask = '!\(999\)000-0000;1; '
    end
    object tClientesNumero_Telefono_3: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel'#233'fono Tercero'
      FieldName = 'Numero_Telefono_3'
      Origin = '"Clientes"."Numero_Telefono_3"'
      Visible = False
      EditMask = '!\(999\)000-0000;1; '
    end
    object tClientesNumero_Telefono_4: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel'#233'fono Cuarto'
      FieldName = 'Numero_Telefono_4'
      Origin = '"Clientes"."Numero_Telefono_4"'
      Visible = False
      EditMask = '!\(999\)000-0000;1; '
    end
    object tClientesDireccion: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Direcci'#243'n'
      FieldName = 'Direccion'
      Origin = '"Clientes"."Direccion"'
      Visible = False
      Size = 255
    end
    object tClientesPais: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Pa'#237's'
      FieldName = 'Pais'
      Origin = '"Clientes"."Pais"'
      Visible = False
      Size = 100
    end
    object tClientesCiudad: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ciudad'
      Origin = '"Clientes"."Ciudad"'
      Visible = False
      Size = 100
    end
    object tClientesEstado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Estado'
      Origin = '"Clientes"."Estado"'
      Visible = False
      Size = 100
    end
    object tClientesLimite_Credito: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'L'#237'mite de Cr'#233'dito'
      FieldName = 'Limite_Credito'
      Origin = '"Clientes"."Limite_Credito"'
      Visible = False
      currency = True
      Precision = 12
      Size = 2
    end
    object tClientesCondicion_Cliente: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Condici'#243'n'
      FieldName = 'Condicion_Cliente'
      Origin = '"Clientes"."Condicion_Cliente"'
      Visible = False
    end
    object tClientesTerminosFacturacion: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Terminos de Facturaci'#243'n'
      FieldName = 'TerminosFacturacion'
      Origin = '"Clientes"."TerminosFacturacion"'
      Visible = False
    end
    object tClientesNumero_Tarjeta: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#250'mero de Tarjeta'
      FieldName = 'Numero_Tarjeta'
      Origin = '"Clientes"."Numero_Tarjeta"'
      Visible = False
      Size = 25
    end
    object tClientesNumero_Cuenta: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#250'mero de Cuenta'
      FieldName = 'Numero_Cuenta'
      Origin = '"Clientes"."Numero_Cuenta"'
      Visible = False
      Size = 25
    end
    object tClientesDescuento_Asignado: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descuento Asignado'
      FieldName = 'Descuento_Asignado'
      Origin = '"Clientes"."Descuento_Asignado"'
      Visible = False
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object tClientesStatus: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Estatus'
      FieldName = 'Status'
      Origin = '"Clientes"."Status"'
      Visible = False
      Size = 15
    end
    object tClientesFecha_Registro: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fecha de Registro'
      FieldName = 'Fecha_Registro'
      Origin = '"Clientes"."Fecha_Registro"'
      Visible = False
    end
    object tClientesBalance_Actual: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Balance Actual'
      FieldName = 'Balance_Actual'
      Origin = '"Clientes"."Balance_Actual"'
      Visible = False
      currency = True
      Precision = 12
      Size = 2
    end
    object tClientesUltima_Factura: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = #218'ltima Factura'
      FieldName = 'Ultima_Factura'
      Origin = '"Clientes"."Ultima_Factura"'
      Visible = False
      DisplayFormat = #39'F'#39'0000000000'
    end
    object tClientesFecha_Ultima_Factura: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fecha de '#218'ltima Factura'
      FieldName = 'Fecha_Ultima_Factura'
      Origin = '"Clientes"."Fecha_Ultima_Factura"'
      Visible = False
    end
    object tClientesmail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mail'
      Origin = '"Clientes"."mail"'
      Size = 100
    end
    object tClientesSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Clientes"."Secuencia"'
      DisplayFormat = '000000'
    end
    object tClientesProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Clientes"."Proceso"'
      Size = 25
    end
    object tClientesFoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Foto'
      Origin = '"Clientes"."Foto"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object tClientesNacionalidad: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nacionalidad'
      Origin = '"Clientes"."Nacionalidad"'
      Size = 25
    end
    object tClientesSexo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Sexo'
      Origin = '"Clientes"."Sexo"'
      Size = 25
    end
    object tClientesSector: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Sector'
      Origin = '"Clientes"."Sector"'
    end
    object tClientesFecha_Nacimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Nacimiento'
      Origin = '"Clientes"."Fecha_Nacimiento"'
    end
    object tClientesEstado_Civil: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Estado_Civil'
      Origin = '"Clientes"."Estado_Civil"'
      Size = 15
    end
    object tClientesZona: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Zona'
      Origin = '"Clientes"."Zona"'
    end
    object tClientesLugar_Trabajo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Lugar_Trabajo'
      Origin = '"Clientes"."Lugar_Trabajo"'
      Size = 100
    end
  end
  object dClientes: TDataSource
    DataSet = tClientes
    Left = 120
    Top = 619
  end
  object tTerminos: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <>
    ProviderName = 'prTerminos'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 24
    Top = 666
    object tTerminosDescripcion: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descripci'#243'n'
      DisplayWidth = 50
      FieldName = 'Descripcion'
      Origin = '"Terminos"."Descripcion"'
      Size = 100
    end
    object tTerminosDiasDeGracia: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'DiasDeGracia'
      Origin = '"Terminos"."DiasDeGracia"'
    end
    object tTerminosNumero_Termino: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Termino'
      Origin = '"Terminos"."Numero_Termino"'
      Visible = False
    end
    object tTerminosFormaDeVencimiento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FormaDeVencimiento'
      Origin = '"Terminos"."FormaDeVencimiento"'
      Visible = False
      Size = 25
    end
    object tTerminosMargenDeDias: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MargenDeDias'
      Origin = '"Terminos"."MargenDeDias"'
      Visible = False
    end
  end
  object dTerminos: TDataSource
    DataSet = tTerminos
    Left = 120
    Top = 666
  end
  object tVencimientos: TClientDataSet
    Aggregates = <>
    DataSetField = tProductosqrVencimientos
    Params = <>
    BeforeRefresh = ChkRefresh
    OnCalcFields = tVencimientosCalcFields
    Left = 24
    Top = 138
    object tVencimientosMes: TSmallintField
      AutoGenerateValue = arDefault
      DisplayWidth = 7
      FieldName = 'Mes'
      Origin = '"Vencimientos"."Mes"'
      DisplayFormat = '00'
      EditFormat = '00'
    end
    object tVencimientosAno: TSmallintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'A'#241'o'
      DisplayWidth = 10
      FieldName = 'Ano'
      Origin = '"Vencimientos"."Ano"'
      DisplayFormat = '0000'
      EditFormat = '0000'
    end
    object tVencimientosCantidad: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Cantidad'
      Origin = '"Vencimientos"."Cantidad"'
      DisplayFormat = '#,#.00'
      Precision = 12
      Size = 2
    end
    object tVencimientosCodigo: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Codigo'
      Origin = '"Vencimientos"."Codigo"'
      Visible = False
      Size = 25
    end
    object tVencimientosCod_Generado: TStringField
      FieldKind = fkCalculated
      FieldName = 'Cod_Generado'
      Size = 50
      Calculated = True
    end
  end
  object dVencimientos: TDataSource
    DataSet = tVencimientos
    Left = 120
    Top = 138
  end
  object tSalidas_Inventario: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    ProviderName = 'prSalidas_Inventario'
    AfterInsert = tSalidas_InventarioAfterInsert
    BeforeEdit = tSalidas_InventarioBeforeEdit
    BeforePost = tSalidas_InventarioBeforePost
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 24
    Top = 713
    object tSalidas_InventarioNumero: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#250'mero'
      FieldName = 'Numero'
      Origin = '"Salidas_Inventario"."Numero"'
      DisplayFormat = #39'SI'#39'0000000000'
    end
    object tSalidas_InventarioProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Salidas_Inventario"."Proceso"'
      Size = 25
    end
    object tSalidas_InventarioCliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Salidas_Inventario"."Cliente"'
      Size = 25
    end
    object tSalidas_InventarioNombre_Cliente: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nombre del Cliente'
      FieldName = 'Nombre_Cliente'
      Origin = '"Salidas_Inventario"."Nombre_Cliente"'
      Size = 100
    end
    object tSalidas_InventarioHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Salidas_Inventario"."Hora"'
    end
    object tSalidas_InventarioConcepto_Salida: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Concepto de Salida'
      FieldName = 'Concepto_Salida'
      Origin = '"Salidas_Inventario"."Concepto_Salida"'
      Size = 100
    end
    object tSalidas_InventarioFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Salidas_Inventario"."Fecha"'
    end
    object tSalidas_InventarioReferencia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Referencia'
      Origin = '"Salidas_Inventario"."Referencia"'
      Size = 25
    end
    object tSalidas_InventarioTotal_Costo: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Total Costo'
      FieldName = 'Total_Costo'
      Origin = '"Salidas_Inventario"."Total_Costo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tSalidas_InventarioTotal_Salida: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Total Salida'
      FieldName = 'Total_Salida'
      Origin = '"Salidas_Inventario"."Total_Salida"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tSalidas_InventarioComentario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario'
      Origin = '"Salidas_Inventario"."Comentario"'
      Size = 255
    end
    object tSalidas_InventarioValidado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Validado'
      Origin = '"Salidas_Inventario"."Validado"'
    end
    object tSalidas_InventarioFecha_Validacion: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fecha de Validaci'#243'n'
      FieldName = 'Fecha_Validacion'
      Origin = '"Salidas_Inventario"."Fecha_Validacion"'
    end
    object tSalidas_InventarioCerrado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Cerrado'
      Origin = '"Salidas_Inventario"."Cerrado"'
    end
    object tSalidas_InventarioFecha_Cierre: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fecha de Cierre'
      FieldName = 'Fecha_Cierre'
      Origin = '"Salidas_Inventario"."Fecha_Cierre"'
    end
    object tSalidas_InventarioUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Salidas_Inventario"."Usuario"'
      Size = 100
    end
    object tSalidas_InventarioqrDetalles_Salida: TDataSetField
      AutoGenerateValue = arDefault
      FieldName = 'qrDetalles_Salida'
    end
    object tSalidas_InventarioTelefono_Cliente: TStringField
      AutoGenerateValue = arDefault
      FieldKind = fkLookup
      FieldName = 'Telefono_Cliente'
      LookupDataSet = tListado_Clientes
      LookupKeyFields = 'Cedula_Rnc_Pasaporte'
      LookupResultField = 'Numero_Telefono_1'
      KeyFields = 'Cliente'
      Size = 25
      Lookup = True
    end
    object tSalidas_InventarioAlmacen: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Origin = '"Salidas_Inventario"."Almacen"'
      Size = 25
    end
    object tSalidas_InventarioCondicion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Condicion'
      Origin = '"Salidas_Inventario"."Condicion"'
      Size = 25
    end
    object tSalidas_InventarioSubTotal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SubTotal'
      Origin = '"Salidas_Inventario"."SubTotal"'
      OnValidate = Calculo_Totales_Salida
      Precision = 12
      Size = 2
    end
    object tSalidas_InventarioTotalNeto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TotalNeto'
      Origin = '"Salidas_Inventario"."TotalNeto"'
      Precision = 12
      Size = 2
    end
    object tSalidas_InventarioImpuesto_Global: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto_Global'
      Origin = '"Salidas_Inventario"."Impuesto_Global"'
      OnValidate = Calculo_Totales_Salida
      Precision = 12
      Size = 2
    end
    object tSalidas_InventarioValor_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Salidas_Inventario"."Valor_Impuesto"'
      Precision = 12
      Size = 2
    end
    object tSalidas_InventarioValor_Impuesto_Detalle: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto_Detalle'
      Origin = '"Salidas_Inventario"."Valor_Impuesto_Detalle"'
      OnValidate = Calculo_Totales_Salida
      Precision = 12
      Size = 2
    end
    object tSalidas_InventarioTotal_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Salidas_Inventario"."Total_Impuesto"'
      Precision = 12
      Size = 2
    end
    object tSalidas_InventarioDescuento_Global: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Global'
      Origin = '"Salidas_Inventario"."Descuento_Global"'
      OnValidate = Calculo_Totales_Salida
      Precision = 12
      Size = 2
    end
    object tSalidas_InventarioValor_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Salidas_Inventario"."Valor_Descuento"'
      Precision = 12
      Size = 2
    end
    object tSalidas_InventarioValor_Descuento_Detalle: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento_Detalle'
      Origin = '"Salidas_Inventario"."Valor_Descuento_Detalle"'
      OnValidate = Calculo_Totales_Salida
      Precision = 12
      Size = 2
    end
    object tSalidas_InventarioTotal_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Salidas_Inventario"."Total_Descuento"'
      Precision = 12
      Size = 2
    end
    object tSalidas_InventarioTerminos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Terminos'
      Origin = '"Salidas_Inventario"."Terminos"'
    end
    object tSalidas_InventarioVencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento'
      Origin = '"Salidas_Inventario"."Vencimiento"'
    end
    object tSalidas_InventarioPagado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado'
      Origin = '"Salidas_Inventario"."Pagado"'
      OnValidate = Calculo_Totales_Salida
      Precision = 12
      Size = 2
    end
    object tSalidas_InventarioPendiente: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Origin = '"Salidas_Inventario"."Pendiente"'
      Precision = 12
      Size = 2
    end
    object tSalidas_InventarioUltimoPago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'UltimoPago'
      Origin = '"Salidas_Inventario"."UltimoPago"'
    end
    object tSalidas_InventarioTotal_Efectivo_Recibido: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo_Recibido'
      Origin = '"Salidas_Inventario"."Total_Efectivo_Recibido"'
      Precision = 12
      Size = 2
    end
    object tSalidas_InventarioTotal_Efectivo_Devuelto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo_Devuelto'
      Origin = '"Salidas_Inventario"."Total_Efectivo_Devuelto"'
      Precision = 12
      Size = 2
    end
    object tSalidas_InventarioStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Salidas_Inventario"."Status"'
      Size = 15
    end
    object tSalidas_InventarioTipo_Salida: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Salida'
      Origin = '"Salidas_Inventario"."Tipo_Salida"'
      Size = 15
    end
    object tSalidas_InventarioVendedor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Vendedor'
      Origin = '"Salidas_Inventario"."Vendedor"'
      OnValidate = tSalidas_InventarioVendedorValidate
      Size = 25
    end
    object tSalidas_InventarioNombre_Vendedor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Vendedor'
      Origin = '"Salidas_Inventario"."Nombre_Vendedor"'
      Size = 100
    end
    object tSalidas_InventarioTotal_Restante: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Restante'
      Origin = '"Salidas_Inventario"."Total_Restante"'
      Precision = 12
      Size = 2
    end
    object tSalidas_InventarioConduce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Conduce'
      Origin = '"Salidas_Inventario"."Conduce"'
      Size = 25
    end
    object tSalidas_InventarioDebitado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Debitado'
      Origin = '"Salidas_Inventario"."Debitado"'
      Precision = 12
      Size = 2
    end
    object tSalidas_InventarioAcreditado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Acreditado'
      Origin = '"Salidas_Inventario"."Acreditado"'
      Precision = 12
      Size = 2
    end
    object tSalidas_InventarioBalance: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Origin = '"Salidas_Inventario"."Balance"'
      Precision = 12
      Size = 2
    end
    object tSalidas_InventarioFecha_Ultimo_Pago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Ultimo_Pago'
      Origin = '"Salidas_Inventario"."Fecha_Ultimo_Pago"'
    end
    object tSalidas_InventarioTotal_Seriales: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Seriales'
      Origin = '"Salidas_Inventario"."Total_Seriales"'
    end
    object tSalidas_InventarioSeriales_Registrados: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Seriales_Registrados'
      Origin = '"Salidas_Inventario"."Seriales_Registrados"'
    end
  end
  object dSalidas_Inventario: TDataSource
    DataSet = tSalidas_Inventario
    Left = 120
    Top = 713
  end
  object tDetalles_Salida: TClientDataSet
    Aggregates = <>
    DataSetField = tSalidas_InventarioqrDetalles_Salida
    Params = <>
    BeforePost = tDetalles_SalidaBeforePost
    AfterPost = ActualizarDetallesSalida
    BeforeDelete = tDetalles_SalidaBeforeDelete
    AfterDelete = ActualizarDetallesSalida
    BeforeRefresh = ChkRefresh
    Left = 24
    Top = 760
    object tDetalles_SalidaProceso: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Proceso'
      Origin = '"Detalles_Salida"."Proceso"'
      Visible = False
      Size = 25
    end
    object tDetalles_SalidaCodigo: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 15
      FieldName = 'Codigo'
      Origin = '"Detalles_Salida"."Codigo"'
      OnValidate = tDetalles_SalidaCodigoValidate
      Size = 25
    end
    object tDetalles_SalidaCodigo_Real: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Codigo_Real'
      Origin = '"Detalles_Salida"."Codigo_Real"'
      Visible = False
      Size = 25
    end
    object tDetalles_SalidaSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = '#'
      DisplayWidth = 3
      FieldName = 'Secuencia'
      Origin = '"Detalles_Salida"."Secuencia"'
      DisplayFormat = '#,#0'
    end
    object tDetalles_SalidaDescripcion: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descripci'#243'n'
      DisplayWidth = 28
      FieldName = 'Descripcion'
      Origin = '"Detalles_Salida"."Descripcion"'
      Size = 100
    end
    object tDetalles_SalidaCategoria: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Categoria'
      Origin = '"Detalles_Salida"."Categoria"'
      Visible = False
    end
    object tDetalles_SalidaFabricante: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Fabricante'
      Origin = '"Detalles_Salida"."Fabricante"'
      Visible = False
    end
    object tDetalles_SalidaDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Departamento'
      Origin = '"Detalles_Salida"."Departamento"'
      Visible = False
    end
    object tDetalles_SalidaTipo_Producto: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo de Producto'
      DisplayWidth = 10
      FieldName = 'Tipo_Producto'
      Origin = '"Detalles_Salida"."Tipo_Producto"'
      Visible = False
    end
    object tDetalles_SalidaCosto: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Costo'
      Origin = '"Detalles_Salida"."Costo"'
      Visible = False
      OnValidate = Calculo_Totales_Detalle_Salida
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalles_SalidaPrecio: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 9
      FieldName = 'Precio'
      Origin = '"Detalles_Salida"."Precio"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalles_SalidaCantidad: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 7
      FieldName = 'Cantidad'
      Origin = '"Detalles_Salida"."Cantidad"'
      OnValidate = Calculo_Totales_Detalle_Salida
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object tDetalles_SalidaTotal_Costo: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Total_Costo'
      Origin = '"Detalles_Salida"."Total_Costo"'
      Visible = False
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalles_SalidaCliente: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Cliente'
      Origin = '"Detalles_Salida"."Cliente"'
      Visible = False
      Size = 25
    end
    object tDetalles_SalidaFecha: TDateField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Fecha'
      Origin = '"Detalles_Salida"."Fecha"'
      Visible = False
    end
    object tDetalles_SalidaHora: TTimeField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Hora'
      Origin = '"Detalles_Salida"."Hora"'
      Visible = False
    end
    object tDetalles_SalidaUsuario: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 100
      FieldName = 'Usuario'
      Origin = '"Detalles_Salida"."Usuario"'
      Visible = False
      Size = 100
    end
    object tDetalles_SalidaMes: TSmallintField
      AutoGenerateValue = arDefault
      DisplayWidth = 3
      FieldName = 'Mes'
      Origin = '"Detalles_Salida"."Mes"'
      DisplayFormat = '00'
      EditFormat = '00'
      MaxValue = 12
      MinValue = 1
    end
    object tDetalles_SalidaAno: TSmallintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'A'#241'o'
      DisplayWidth = 4
      FieldName = 'Ano'
      Origin = '"Detalles_Salida"."Ano"'
      DisplayFormat = '0000'
      EditFormat = '0000'
    end
    object tDetalles_SalidaTotal_Precio: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Total'
      DisplayWidth = 13
      FieldName = 'Total_Precio'
      Origin = '"Detalles_Salida"."Total_Precio"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalles_SalidaReferencia: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldKind = fkLookup
      FieldName = 'Referencia'
      LookupDataSet = tListadoProductos
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Referencia'
      KeyFields = 'Codigo_Real'
      Size = 25
      Lookup = True
    end
    object tDetalles_SalidaCantidad_Devuelto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad_Devuelto'
      Origin = '"Detalles_Salida"."Cantidad_Devuelto"'
      Precision = 12
      Size = 2
    end
    object tDetalles_SalidaContenido: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Contenido'
      Origin = '"Detalles_Salida"."Contenido"'
      OnValidate = Calculo_Totales_Detalle_Salida
      DisplayFormat = '#,0'
      Precision = 12
      Size = 2
    end
    object tDetalles_SalidaAlmacen: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Origin = '"Detalles_Salida"."Almacen"'
      Size = 25
    end
    object tDetalles_SalidaPrecio_Real: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Real'
      Origin = '"Detalles_Salida"."Precio_Real"'
      Precision = 12
      Size = 2
    end
    object tDetalles_SalidaPrecio_Venta: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta'
      Origin = '"Detalles_Salida"."Precio_Venta"'
      OnValidate = Calculo_Totales_Detalle_Salida
      Precision = 12
      Size = 2
    end
    object tDetalles_SalidaPrecio_Minimo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Minimo'
      Origin = '"Detalles_Salida"."Precio_Minimo"'
      Precision = 12
      Size = 2
    end
    object tDetalles_SalidaImpuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto'
      Origin = '"Detalles_Salida"."Impuesto"'
      OnValidate = Calculo_Totales_Detalle_Salida
      Precision = 12
      Size = 2
    end
    object tDetalles_SalidaDescuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento'
      Origin = '"Detalles_Salida"."Descuento"'
      OnValidate = Calculo_Totales_Detalle_Salida
      Precision = 12
      Size = 2
    end
    object tDetalles_SalidaValor_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Detalles_Salida"."Valor_Impuesto"'
      Precision = 12
      Size = 2
    end
    object tDetalles_SalidaValor_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Detalles_Salida"."Valor_Descuento"'
      Precision = 12
      Size = 2
    end
    object tDetalles_SalidaTotal_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Detalles_Salida"."Total_Impuesto"'
      Precision = 12
      Size = 2
    end
    object tDetalles_SalidaTotal_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Detalles_Salida"."Total_Descuento"'
      Precision = 12
      Size = 2
    end
    object tDetalles_SalidaTipo_Precio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Precio'
      Origin = '"Detalles_Salida"."Tipo_Precio"'
      OnValidate = tDetalles_SalidaTipo_PrecioValidate
      Size = 25
    end
    object tDetalles_SalidaRegistro: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Registro'
      Origin = '"Detalles_Salida"."Registro"'
    end
    object tDetalles_SalidaRequiere_Serial: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Requiere_Serial'
      Origin = '"Detalles_Salida"."Requiere_Serial"'
    end
    object tDetalles_SalidaqrSeriales_Salida: TDataSetField
      AutoGenerateValue = arDefault
      FieldName = 'qrSeriales_Salida'
    end
  end
  object dDetalles_Salida: TDataSource
    DataSet = tDetalles_Salida
    Left = 120
    Top = 760
  end
  object tListadoProductos: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    PacketRecords = 20
    Params = <>
    ProviderName = 'prListadoProductos'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 224
    Top = 49
    object tListadoProductosCodigo: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 15
      FieldName = 'Codigo'
      Origin = '"Productos"."Codigo"'
      Size = 25
    end
    object tListadoProductosDescripcion: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 40
      FieldName = 'Descripcion'
      Origin = '"Productos"."Descripcion"'
      Size = 100
    end
    object tListadoProductosPresentacion: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 15
      FieldName = 'Presentacion'
      Origin = '"Productos"."Presentacion"'
      Size = 100
    end
    object tListadoProductosExistencia: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Existencia'
      Origin = '"Productos"."Existencia"'
      Precision = 12
      Size = 2
    end
    object tListadoProductosPrecio_Venta_Contado: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Precio'
      DisplayWidth = 10
      FieldName = 'Precio_Venta_Contado'
      Origin = '"Productos"."Precio_Venta_Contado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tListadoProductosReferencia: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 15
      FieldName = 'Referencia'
      Origin = '"Productos"."Referencia"'
      Size = 25
    end
    object tListadoProductosNombre_Fabricante: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fabricante'
      DisplayWidth = 25
      FieldKind = fkLookup
      FieldName = 'Nombre_Fabricante'
      LookupDataSet = tFabricante
      LookupKeyFields = 'Numero'
      LookupResultField = 'Nombre'
      KeyFields = 'Fabricante'
      Visible = False
      Size = 100
      Lookup = True
    end
    object tListadoProductosBarra: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Barra'
      Origin = '"Productos"."Barra"'
      Visible = False
      Size = 25
    end
    object tListadoProductosSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Productos"."Secuencia"'
      Visible = False
    end
    object tListadoProductosFabricante: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Fabricante'
      Origin = '"Productos"."Fabricante"'
      Visible = False
    end
    object tListadoProductosDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Departamento'
      Origin = '"Productos"."Departamento"'
      Visible = False
    end
    object tListadoProductosCosto_Promedio: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Costo_Promedio'
      Origin = '"Productos"."Costo_Promedio"'
      Visible = False
      currency = True
      Precision = 12
      Size = 2
    end
    object tListadoProductosCosto_Standar: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Costo_Standar'
      Origin = '"Productos"."Costo_Standar"'
      Visible = False
      currency = True
      Precision = 12
      Size = 2
    end
    object tListadoProductosCompradas: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Compradas'
      Origin = '"Productos"."Compradas"'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tListadoProductosDespachadas: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Despachadas'
      Origin = '"Productos"."Despachadas"'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tListadoProductosMedida_Compra: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Medida_Compra'
      Origin = '"Productos"."Medida_Compra"'
      Visible = False
      Size = 25
    end
    object tListadoProductosMedida_Venta: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Medida_Venta'
      Origin = '"Productos"."Medida_Venta"'
      Visible = False
      Size = 25
    end
    object tListadoProductosPrecio_Venta_Credito: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Credito'
      Origin = '"Productos"."Precio_Venta_Credito"'
      Visible = False
      currency = True
      Precision = 12
      Size = 2
    end
    object tListadoProductosPrecio_Venta_Minimo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Minimo'
      Origin = '"Productos"."Precio_Venta_Minimo"'
      Visible = False
      currency = True
      Precision = 12
      Size = 2
    end
    object tListadoProductosUbicacion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ubicacion'
      Origin = '"Productos"."Ubicacion"'
      Visible = False
      Size = 100
    end
    object tListadoProductosUltimo_Precio_Compra: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Ultimo_Precio_Compra'
      Origin = '"Productos"."Ultimo_Precio_Compra"'
      Visible = False
      currency = True
      Precision = 12
      Size = 2
    end
    object tListadoProductosUnidades_Medida_Compra: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Unidades_Medida_Compra'
      Origin = '"Productos"."Unidades_Medida_Compra"'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tListadoProductosUnidades_Medida_Venta: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Unidades_Medida_Venta'
      Origin = '"Productos"."Unidades_Medida_Venta"'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tListadoProductosValor_Beneficio_Contado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_Contado'
      Origin = '"Productos"."Valor_Beneficio_Contado"'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tListadoProductosValor_Beneficio_Credito: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_Credito'
      Origin = '"Productos"."Valor_Beneficio_Credito"'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tListadoProductosVendidas: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Vendidas'
      Origin = '"Productos"."Vendidas"'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tListadoProductosTipo_Beneficio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Beneficio'
      Origin = '"Productos"."Tipo_Beneficio"'
      Visible = False
      Size = 25
    end
    object tListadoProductosTipo_Inventario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Inventario'
      Origin = '"Productos"."Tipo_Inventario"'
      Visible = False
      Size = 25
    end
    object tListadoProductosAno: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ano'
      Origin = '"Productos"."Ano"'
      Visible = False
    end
    object tListadoProductosColor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Color'
      Origin = '"Productos"."Color"'
      Visible = False
      Size = 25
    end
    object tListadoProductosModelo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Modelo'
      Origin = '"Productos"."Modelo"'
      Visible = False
      Size = 100
    end
    object tListadoProductosNombre: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Origin = '"Productos"."Nombre"'
      Visible = False
      Size = 100
    end
    object tListadoProductosOrientacion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Orientacion'
      Origin = '"Productos"."Orientacion"'
      Visible = False
      Size = 25
    end
    object tListadoProductosPosicion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Posicion'
      Origin = '"Productos"."Posicion"'
      Visible = False
      Size = 25
    end
    object tListadoProductosPrecio_Venta_Por_Mayor_Contado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Por_Mayor_Contado'
      Origin = '"Productos"."Precio_Venta_Por_Mayor_Contado"'
      Visible = False
      currency = True
      Precision = 12
      Size = 2
    end
    object tListadoProductosPrecio_Venta_Por_Mayor_Credito: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Por_Mayor_Credito'
      Origin = '"Productos"."Precio_Venta_Por_Mayor_Credito"'
      Visible = False
      currency = True
      Precision = 12
      Size = 2
    end
    object tListadoProductosLector_Codigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Lector_Codigo'
      Origin = '"Productos"."Lector_Codigo"'
      Visible = False
      Size = 25
    end
    object tListadoProductosFecha_Registro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Registro'
      Origin = '"Productos"."Fecha_Registro"'
      Visible = False
    end
    object tListadoProductosCategoria: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Categoria'
      Origin = '"Productos"."Categoria"'
      Visible = False
    end
    object tListadoProductosProveedor_Principal: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Proveedor_Principal'
      Origin = '"Productos"."Proveedor_Principal"'
      Visible = False
    end
    object tListadoProductosTipo_Producto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Producto'
      Origin = '"Productos"."Tipo_Producto"'
      Visible = False
    end
    object tListadoProductosMinimo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Minimo'
      Origin = '"Productos"."Minimo"'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tListadoProductosReorden: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Reorden'
      Origin = '"Productos"."Reorden"'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tListadoProductosCuenta_Contable: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cuenta_Contable'
      Origin = '"Productos"."Cuenta_Contable"'
      Visible = False
      Size = 25
    end
    object tListadoProductosMetodo_Calculo_Costo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Metodo_Calculo_Costo'
      Origin = '"Productos"."Metodo_Calculo_Costo"'
      Visible = False
      Size = 25
    end
    object tListadoProductosAplica_Descuento: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Aplica_Descuento'
      Origin = '"Productos"."Aplica_Descuento"'
      Visible = False
    end
    object tListadoProductosPaga_Comision: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Paga_Comision'
      Origin = '"Productos"."Paga_Comision"'
      Visible = False
    end
    object tListadoProductosRequiere_Numero_Serie: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Requiere_Numero_Serie'
      Origin = '"Productos"."Requiere_Numero_Serie"'
      Visible = False
    end
    object tListadoProductosPaga_Impuesto: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Paga_Impuesto'
      Origin = '"Productos"."Paga_Impuesto"'
      Visible = False
    end
    object tListadoProductosRequiere_Fecha_Vencimiento: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Requiere_Fecha_Vencimiento'
      Origin = '"Productos"."Requiere_Fecha_Vencimiento"'
      Visible = False
    end
    object tListadoProductosDevuelto_Compras: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Devuelto_Compras'
      Origin = '"Productos"."Devuelto_Compras"'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tListadoProductosUltima_Compra: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Ultima_Compra'
      Origin = '"Productos"."Ultima_Compra"'
      Visible = False
    end
    object tListadoProductosNumero_Ultima_Compra: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Ultima_Compra'
      Origin = '"Productos"."Numero_Ultima_Compra"'
      Visible = False
    end
    object tListadoProductosDevuelto_Ventas: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Devuelto_Ventas'
      Origin = '"Productos"."Devuelto_Ventas"'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tListadoProductosUltima_Venta: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Ultima_Venta'
      Origin = '"Productos"."Ultima_Venta"'
      Visible = False
    end
    object tListadoProductosNumero_Ultima_Factura: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Ultima_Factura'
      Origin = '"Productos"."Numero_Ultima_Factura"'
      Visible = False
    end
    object tListadoProductosUltima_Salida: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Ultima_Salida'
      Origin = '"Productos"."Ultima_Salida"'
      Visible = False
    end
    object tListadoProductosNumero_Ultima_Salida: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Ultima_Salida'
      Origin = '"Productos"."Numero_Ultima_Salida"'
      Visible = False
    end
    object tListadoProductosEnPedidos: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'EnPedidos'
      Origin = '"Productos"."EnPedidos"'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tListadoProductosEnTransito: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'EnTransito'
      Origin = '"Productos"."EnTransito"'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tListadoProductosStatus: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Productos"."Status"'
      Visible = False
    end
    object tListadoProductosUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Productos"."Usuario"'
      Visible = False
      Size = 100
    end
    object tListadoProductosDevuelto_Despacho: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Devuelto_Despacho'
      Origin = '"Productos"."Devuelto_Despacho"'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tListadoProductosEditar_Existencia: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Editar_Existencia'
      Origin = '"Productos"."Editar_Existencia"'
      Visible = False
    end
    object tListadoProductosMarca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Marca'
      Origin = '"Productos"."Marca"'
      Visible = False
      Size = 100
    end
    object tListadoProductosProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Productos"."Proceso"'
      Visible = False
      Size = 25
    end
    object tListadoProductosFoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Foto'
      Origin = '"Productos"."Foto"'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 8
    end
  end
  object dListadoProductos: TDataSource
    DataSet = tListadoProductos
    Left = 328
    Top = 49
  end
  object tListado_Clientes: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <>
    ProviderName = 'prListado_Clientes'
    BeforeRefresh = ChkRefresh
    OnCalcFields = tListado_ClientesCalcFields
    OnReconcileError = DataSetReconcileError
    Left = 224
    Top = 93
    object tListado_ClientesNombreCompleto: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nombre del Cliente'
      DisplayWidth = 25
      FieldName = 'NombreCompleto'
      Origin = '"Clientes"."NombreCompleto"'
      ProviderFlags = []
      ReadOnly = True
      Size = 201
    end
    object tListado_ClientesCedula_Rnc_Pasaporte: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#233'dula/Rnc/Registro'
      DisplayWidth = 25
      FieldName = 'Cedula_Rnc_Pasaporte'
      Origin = '"Clientes"."Cedula_Rnc_Pasaporte"'
      Size = 25
    end
    object tListado_ClientesNombre: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Origin = '"Clientes"."Nombre"'
      Visible = False
      Size = 100
    end
    object tListado_ClientesApellido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Apellido'
      Origin = '"Clientes"."Apellido"'
      Visible = False
      Size = 100
    end
    object tListado_ClientesTipo_Cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Cliente'
      Origin = '"Clientes"."Tipo_Cliente"'
      Visible = False
    end
    object tListado_ClientesTipo_Telefono_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_1'
      Origin = '"Clientes"."Tipo_Telefono_1"'
      Visible = False
    end
    object tListado_ClientesTipo_Telefono_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_2'
      Origin = '"Clientes"."Tipo_Telefono_2"'
      Visible = False
    end
    object tListado_ClientesTipo_Telefono_3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_3'
      Origin = '"Clientes"."Tipo_Telefono_3"'
      Visible = False
    end
    object tListado_ClientesTipo_Telefono_4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_4'
      Origin = '"Clientes"."Tipo_Telefono_4"'
      Visible = False
    end
    object tListado_ClientesNumero_Telefono_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_1'
      Origin = '"Clientes"."Numero_Telefono_1"'
      Visible = False
    end
    object tListado_ClientesNumero_Telefono_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_2'
      Origin = '"Clientes"."Numero_Telefono_2"'
      Visible = False
    end
    object tListado_ClientesNumero_Telefono_3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_3'
      Origin = '"Clientes"."Numero_Telefono_3"'
      Visible = False
    end
    object tListado_ClientesNumero_Telefono_4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_4'
      Origin = '"Clientes"."Numero_Telefono_4"'
      Visible = False
    end
    object tListado_ClientesDireccion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion'
      Origin = '"Clientes"."Direccion"'
      Visible = False
      Size = 255
    end
    object tListado_ClientesPais: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pais'
      Origin = '"Clientes"."Pais"'
      Visible = False
      Size = 100
    end
    object tListado_ClientesCiudad: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ciudad'
      Origin = '"Clientes"."Ciudad"'
      Visible = False
      Size = 100
    end
    object tListado_ClientesEstado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Estado'
      Origin = '"Clientes"."Estado"'
      Visible = False
      Size = 100
    end
    object tListado_ClientesLimite_Credito: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Limite_Credito'
      Origin = '"Clientes"."Limite_Credito"'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tListado_ClientesCondicion_Cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Condicion_Cliente'
      Origin = '"Clientes"."Condicion_Cliente"'
      Visible = False
    end
    object tListado_ClientesTerminosFacturacion: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TerminosFacturacion'
      Origin = '"Clientes"."TerminosFacturacion"'
      Visible = False
    end
    object tListado_ClientesNumero_Tarjeta: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Tarjeta'
      Origin = '"Clientes"."Numero_Tarjeta"'
      Visible = False
      Size = 25
    end
    object tListado_ClientesNumero_Cuenta: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Cuenta'
      Origin = '"Clientes"."Numero_Cuenta"'
      Visible = False
      Size = 25
    end
    object tListado_ClientesDescuento_Asignado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Asignado'
      Origin = '"Clientes"."Descuento_Asignado"'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tListado_ClientesStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Clientes"."Status"'
      Visible = False
      Size = 15
    end
    object tListado_ClientesFecha_Registro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Registro'
      Origin = '"Clientes"."Fecha_Registro"'
      Visible = False
    end
    object tListado_ClientesBalance_Actual: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Actual'
      Origin = '"Clientes"."Balance_Actual"'
      Visible = False
      currency = True
      Precision = 12
      Size = 2
    end
    object tListado_ClientesUltima_Factura: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ultima_Factura'
      Origin = '"Clientes"."Ultima_Factura"'
      Visible = False
    end
    object tListado_ClientesFecha_Ultima_Factura: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Ultima_Factura'
      Origin = '"Clientes"."Fecha_Ultima_Factura"'
      Visible = False
    end
    object tListado_Clientesmail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mail'
      Origin = '"Clientes"."mail"'
      Size = 100
    end
    object tListado_ClientesSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Clientes"."Secuencia"'
    end
    object tListado_ClientesProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Clientes"."Proceso"'
      Size = 25
    end
    object tListado_ClientesFoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Foto'
      Origin = '"Clientes"."Foto"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object tListado_ClientesNacionalidad: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nacionalidad'
      Origin = '"Clientes"."Nacionalidad"'
      Size = 25
    end
    object tListado_ClientesSexo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Sexo'
      Origin = '"Clientes"."Sexo"'
      Size = 25
    end
    object tListado_ClientesSector: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Sector'
      Origin = '"Clientes"."Sector"'
    end
    object tListado_ClientesFecha_Nacimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Nacimiento'
      Origin = '"Clientes"."Fecha_Nacimiento"'
    end
    object tListado_ClientesEstado_Civil: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Estado_Civil'
      Origin = '"Clientes"."Estado_Civil"'
      Size = 15
    end
    object tListado_ClientesZona: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Zona'
      Origin = '"Clientes"."Zona"'
    end
    object tListado_ClientesLugar_Trabajo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Lugar_Trabajo'
      Origin = '"Clientes"."Lugar_Trabajo"'
      Size = 100
    end
    object tListado_ClientesInicial: TStringField
      FieldKind = fkCalculated
      FieldName = 'Inicial'
      Size = 3
      Calculated = True
    end
  end
  object dListado_Clientes: TDataSource
    DataSet = tListado_Clientes
    Left = 328
    Top = 93
  end
  object tCompra_Productos: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    ProviderName = 'prCompra_Productos'
    AfterInsert = tCompra_ProductosAfterInsert
    BeforeEdit = tCompra_ProductosBeforeEdit
    BeforePost = tCompra_ProductosBeforePost
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 224
    Top = 138
    object tCompra_ProductosNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Compra_Productos"."Numero"'
      DisplayFormat = #39'CP'#39'0000000000'
    end
    object tCompra_ProductosProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Compra_Productos"."Proceso"'
      Size = 25
    end
    object tCompra_ProductosNombre_Proveedor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Proveedor'
      Origin = '"Compra_Productos"."Nombre_Proveedor"'
      Size = 100
    end
    object tCompra_ProductosFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Compra_Productos"."Fecha"'
      OnValidate = tCompra_ProductosTerminosValidate
    end
    object tCompra_ProductosHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Compra_Productos"."Hora"'
    end
    object tCompra_ProductosConcepto_Compra: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto_Compra'
      Origin = '"Compra_Productos"."Concepto_Compra"'
      Size = 100
    end
    object tCompra_ProductosReferencia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Referencia'
      Origin = '"Compra_Productos"."Referencia"'
      Size = 25
    end
    object tCompra_ProductosSubTotal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SubTotal'
      Origin = '"Compra_Productos"."SubTotal"'
      OnValidate = Calculo_Totales_Compra
      currency = True
      Precision = 12
      Size = 2
    end
    object tCompra_ProductosTotalNeto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TotalNeto'
      Origin = '"Compra_Productos"."TotalNeto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tCompra_ProductosComentario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario'
      Origin = '"Compra_Productos"."Comentario"'
      Size = 255
    end
    object tCompra_ProductosFecha_Validacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Validacion'
      Origin = '"Compra_Productos"."Fecha_Validacion"'
    end
    object tCompra_ProductosFecha_Cierre: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Cierre'
      Origin = '"Compra_Productos"."Fecha_Cierre"'
    end
    object tCompra_ProductosUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Compra_Productos"."Usuario"'
      Size = 100
    end
    object tCompra_ProductosValidado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Validado'
      Origin = '"Compra_Productos"."Validado"'
    end
    object tCompra_ProductosCerrado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Cerrado'
      Origin = '"Compra_Productos"."Cerrado"'
    end
    object tCompra_ProductosImpuesto_Global: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto_Global'
      Origin = '"Compra_Productos"."Impuesto_Global"'
      OnValidate = Calculo_Totales_Compra
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object tCompra_ProductosValor_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Compra_Productos"."Valor_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tCompra_ProductosValor_Impuesto_Detalle: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto_Detalle'
      Origin = '"Compra_Productos"."Valor_Impuesto_Detalle"'
      OnValidate = Calculo_Totales_Compra
      currency = True
      Precision = 12
      Size = 2
    end
    object tCompra_ProductosTotal_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Compra_Productos"."Total_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tCompra_ProductosDescuento_Global: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Global'
      Origin = '"Compra_Productos"."Descuento_Global"'
      OnValidate = Calculo_Totales_Compra
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object tCompra_ProductosValor_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Compra_Productos"."Valor_Descuento"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tCompra_ProductosValor_Descuento_Detalle: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento_Detalle'
      Origin = '"Compra_Productos"."Valor_Descuento_Detalle"'
      OnValidate = Calculo_Totales_Compra
      currency = True
      Precision = 12
      Size = 2
    end
    object tCompra_ProductosTotal_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Compra_Productos"."Total_Descuento"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tCompra_ProductosTerminos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Terminos'
      Origin = '"Compra_Productos"."Terminos"'
      OnValidate = tCompra_ProductosTerminosValidate
    end
    object tCompra_ProductosVencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento'
      Origin = '"Compra_Productos"."Vencimiento"'
    end
    object tCompra_ProductosPagado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado'
      Origin = '"Compra_Productos"."Pagado"'
      OnValidate = Calculo_Totales_Compra
      currency = True
      Precision = 12
      Size = 2
    end
    object tCompra_ProductosPendiente: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Origin = '"Compra_Productos"."Pendiente"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tCompra_ProductosUltimoPago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'UltimoPago'
      Origin = '"Compra_Productos"."UltimoPago"'
    end
    object tCompra_ProductosqrDetalles_Compra: TDataSetField
      AutoGenerateValue = arDefault
      FieldName = 'qrDetalles_Compra'
    end
    object tCompra_ProductosProveedor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Proveedor'
      Origin = '"Compra_Productos"."Proveedor"'
      OnValidate = tCompra_ProductosProveedorValidate
    end
    object tCompra_ProductosTipo_NCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_NCF'
      Origin = '"Compra_Productos"."Tipo_NCF"'
      Size = 2
    end
    object tCompra_ProductosNCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCF'
      Origin = '"Compra_Productos"."NCF"'
      Size = 100
    end
    object tCompra_ProductosqrDetalle_Pago_Compra: TDataSetField
      AutoGenerateValue = arDefault
      FieldName = 'qrDetalle_Pago_Compra'
    end
    object tCompra_ProductosOrden_Compra_Numero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Orden_Compra_Numero'
      Origin = '"Compra_Productos"."Orden_Compra_Numero"'
    end
    object tCompra_ProductosProceso_Orden_Compra: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso_Orden_Compra'
      Origin = '"Compra_Productos"."Proceso_Orden_Compra"'
      Size = 25
    end
    object tCompra_ProductosCondicion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Condicion'
      Origin = '"Compra_Productos"."Condicion"'
      Size = 25
    end
    object tCompra_ProductosTotal_Seriales: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Seriales'
      Origin = '"Compra_Productos"."Total_Seriales"'
    end
    object tCompra_ProductosSeriales_Registrados: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Seriales_Registrados'
      Origin = '"Compra_Productos"."Seriales_Registrados"'
    end
    object tCompra_ProductosAlmacen: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Size = 25
    end
  end
  object dCompra_Productos: TDataSource
    DataSet = tCompra_Productos
    Left = 328
    Top = 138
  end
  object tDetalles_Compra: TClientDataSet
    Aggregates = <>
    DataSetField = tCompra_ProductosqrDetalles_Compra
    Params = <>
    BeforePost = tDetalles_CompraBeforePost
    AfterPost = ActualizarDetallleCompras
    BeforeDelete = tDetalles_CompraBeforeDelete
    AfterDelete = ActualizarDetallleCompras
    BeforeRefresh = ChkRefresh
    OnCalcFields = tDetalles_CompraCalcFields
    Left = 224
    Top = 184
    object tDetalles_CompraProceso: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Proceso'
      Origin = '"Detalles_Compra"."Proceso"'
      Size = 25
    end
    object tDetalles_CompraCodigo: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 25
      FieldName = 'Codigo'
      Origin = '"Detalles_Compra"."Codigo"'
      OnValidate = tDetalles_CompraCodigoValidate
      Size = 25
    end
    object tDetalles_CompraCodigo_Real: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Codigo_Real'
      Origin = '"Detalles_Compra"."Codigo_Real"'
      Size = 25
    end
    object tDetalles_CompraSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = '#'
      DisplayWidth = 3
      FieldName = 'Secuencia'
      Origin = '"Detalles_Compra"."Secuencia"'
      DisplayFormat = '#,#0'
    end
    object tDetalles_CompraDescripcion: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descripci'#243'n'
      DisplayWidth = 25
      FieldName = 'Descripcion'
      Origin = '"Detalles_Compra"."Descripcion"'
      Size = 100
    end
    object tDetalles_CompraCategoria: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Categoria'
      Origin = '"Detalles_Compra"."Categoria"'
    end
    object tDetalles_CompraFabricante: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Fabricante'
      Origin = '"Detalles_Compra"."Fabricante"'
    end
    object tDetalles_CompraDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Departamento'
      Origin = '"Detalles_Compra"."Departamento"'
    end
    object tDetalles_CompraTipo_Producto: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Tipo_Producto'
      Origin = '"Detalles_Compra"."Tipo_Producto"'
    end
    object tDetalles_CompraCosto: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 8
      FieldName = 'Costo'
      Origin = '"Detalles_Compra"."Costo"'
      OnValidate = Calcular_Beneficio_Compras
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalles_CompraPrecio_Lista: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Precio Lista'
      DisplayWidth = 8
      FieldName = 'Precio_Lista'
      Origin = '"Detalles_Compra"."Precio_Lista"'
      OnValidate = Calculo_Totales_Detalle_Compra
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalles_CompraCantidad: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 5
      FieldName = 'Cantidad'
      Origin = '"Detalles_Compra"."Cantidad"'
      OnValidate = Calculo_Totales_Detalle_Compra
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object tDetalles_CompraTotal_Costo: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Total'
      DisplayWidth = 8
      FieldName = 'Total_Costo'
      Origin = '"Detalles_Compra"."Total_Costo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalles_CompraProveedor: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Proveedor'
      Origin = '"Detalles_Compra"."Proveedor"'
    end
    object tDetalles_CompraFecha: TDateField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Fecha'
      Origin = '"Detalles_Compra"."Fecha"'
    end
    object tDetalles_CompraHora: TTimeField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Hora'
      Origin = '"Detalles_Compra"."Hora"'
    end
    object tDetalles_CompraUsuario: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 100
      FieldName = 'Usuario'
      Origin = '"Detalles_Compra"."Usuario"'
      Size = 100
    end
    object tDetalles_CompraMes: TSmallintField
      AutoGenerateValue = arDefault
      DisplayWidth = 2
      FieldName = 'Mes'
      Origin = '"Detalles_Compra"."Mes"'
      DisplayFormat = '00'
      MaxValue = 12
    end
    object tDetalles_CompraAno: TSmallintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'A'#241'o'
      DisplayWidth = 4
      FieldName = 'Ano'
      Origin = '"Detalles_Compra"."Ano"'
      DisplayFormat = '0000'
    end
    object tDetalles_CompraImpuesto: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Impuesto'
      Origin = '"Detalles_Compra"."Impuesto"'
      OnValidate = Calculo_Totales_Detalle_Compra
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object tDetalles_CompraDescuento: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Descuento'
      Origin = '"Detalles_Compra"."Descuento"'
      OnValidate = Calculo_Totales_Detalle_Compra
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object tDetalles_CompraValor_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Valor_Impuesto'
      Origin = '"Detalles_Compra"."Valor_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalles_CompraValor_Descuento: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Valor_Descuento'
      Origin = '"Detalles_Compra"."Valor_Descuento"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalles_CompraTotal_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Total_Impuesto'
      Origin = '"Detalles_Compra"."Total_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalles_CompraTotal_Descuento: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Total_Descuento'
      Origin = '"Detalles_Compra"."Total_Descuento"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalles_CompraCod_Generado: TStringField
      AutoGenerateValue = arDefault
      FieldKind = fkCalculated
      FieldName = 'Cod_Generado'
      Size = 25
      Calculated = True
    end
    object tDetalles_CompraTotal_Precio: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Precio'
      Origin = '"Detalles_Compra"."Total_Precio"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalles_CompraCantidad_Devuelto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad_Devuelto'
      Origin = '"Detalles_Compra"."Cantidad_Devuelto"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object tDetalles_CompraTipo_Beneficio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Beneficio'
      Origin = '"Detalles_Compra"."Tipo_Beneficio"'
      OnValidate = Calcular_Beneficio_Compras
      Size = 15
    end
    object tDetalles_CompraValor_Beneficio_PMayor_Contado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_PMayor_Contado'
      Origin = '"Detalles_Compra"."Valor_Beneficio_PMayor_Contado"'
      OnValidate = tDetalles_CompraValor_Beneficio_PMayor_ContadoValidate
      Precision = 12
      Size = 2
    end
    object tDetalles_CompraValor_Beneficio_PMayor_Credito: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_PMayor_Credito'
      Origin = '"Detalles_Compra"."Valor_Beneficio_PMayor_Credito"'
      OnValidate = Calcular_Beneficio_Compras
      Precision = 12
      Size = 2
    end
    object tDetalles_CompraValor_Beneficio_Detalle_Contado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_Detalle_Contado'
      Origin = '"Detalles_Compra"."Valor_Beneficio_Detalle_Contado"'
      OnValidate = tDetalles_CompraValor_Beneficio_Detalle_ContadoValidate
      Precision = 12
      Size = 2
    end
    object tDetalles_CompraValor_Beneficio_Detalle_Credito: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_Detalle_Credito'
      Origin = '"Detalles_Compra"."Valor_Beneficio_Detalle_Credito"'
      OnValidate = Calcular_Beneficio_Compras
      Precision = 12
      Size = 2
    end
    object tDetalles_CompraPrecio_Venta_Por_Mayor_Contado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Por_Mayor_Contado'
      Origin = '"Detalles_Compra"."Precio_Venta_Por_Mayor_Contado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalles_CompraPrecio_Venta_Por_Mayor_Credito: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Por_Mayor_Credito'
      Origin = '"Detalles_Compra"."Precio_Venta_Por_Mayor_Credito"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalles_CompraPrecio_Venta_Detalle_Contado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Detalle_Contado'
      Origin = '"Detalles_Compra"."Precio_Venta_Detalle_Contado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalles_CompraPrecio_Venta_Detalle_Credito: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Detalle_Credito'
      Origin = '"Detalles_Compra"."Precio_Venta_Detalle_Credito"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalles_CompraPrecio_Minimo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Minimo'
      Origin = '"Detalles_Compra"."Precio_Minimo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalles_CompraContenido: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Contenido'
      Origin = '"Detalles_Compra"."Contenido"'
      OnValidate = Calculo_Totales_Detalle_Compra
      DisplayFormat = '#,0'
      Precision = 12
      Size = 2
    end
    object tDetalles_CompraReferencia: TStringField
      AutoGenerateValue = arDefault
      FieldKind = fkLookup
      FieldName = 'Referencia'
      LookupDataSet = tListadoProductos
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Referencia'
      KeyFields = 'Codigo_Real'
      Size = 25
      Lookup = True
    end
    object tDetalles_CompraRegistro_Compra: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Registro_Compra'
      Origin = '"Detalles_Compra"."Registro_Compra"'
    end
    object tDetalles_CompraUso_Inmediato: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Uso_Inmediato'
      Origin = '"Detalles_Compra"."Uso_Inmediato"'
    end
    object tDetalles_CompraCantidad_Despachada: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad_Despachada'
      Origin = '"Detalles_Compra"."Cantidad_Despachada"'
      DisplayFormat = '#,0'
      Precision = 12
      Size = 2
    end
    object tDetalles_CompraConcepto_Uso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto_Uso'
      Origin = '"Detalles_Compra"."Concepto_Uso"'
      Size = 255
    end
    object tDetalles_CompraqrSeriales_Compra: TDataSetField
      AutoGenerateValue = arDefault
      FieldName = 'qrSeriales_Compra'
    end
    object tDetalles_CompraRequiere_Serial: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Requiere_Serial'
      Origin = '"Detalles_Compra"."Requiere_Serial"'
    end
    object tDetalles_CompraAlmacen: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Size = 25
    end
  end
  object dDetalles_Compra: TDataSource
    DataSet = tDetalles_Compra
    Left = 328
    Top = 184
  end
  object tFacturas: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    ProviderName = 'prFacturas'
    AfterInsert = tFacturasAfterInsert
    BeforeEdit = tFacturasBeforeEdit
    BeforePost = tFacturasBeforePost
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 224
    Top = 287
    object tFacturasNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Facturas"."Numero"'
      DisplayFormat = #39'F'#39'0000000000'
    end
    object tFacturasProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Facturas"."Proceso"'
      Size = 25
    end
    object tFacturasNombre_Cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Cliente'
      Origin = '"Facturas"."Nombre_Cliente"'
      Size = 100
    end
    object tFacturasCondicion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Condicion'
      Origin = '"Facturas"."Condicion"'
      Size = 25
    end
    object tFacturasFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Facturas"."Fecha"'
      OnValidate = tFacturasTerminosValidate
    end
    object tFacturasHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Facturas"."Hora"'
    end
    object tFacturasConcepto_Factura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto_Factura'
      Origin = '"Facturas"."Concepto_Factura"'
      Size = 100
    end
    object tFacturasReferencia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Referencia'
      Origin = '"Facturas"."Referencia"'
      Size = 25
    end
    object tFacturasSubTotal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SubTotal'
      Origin = '"Facturas"."SubTotal"'
      OnValidate = Calculo_Totales_Factura
      currency = True
      Precision = 12
      Size = 2
    end
    object tFacturasTotalNeto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TotalNeto'
      Origin = '"Facturas"."TotalNeto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tFacturasTotal_Costo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Origin = '"Facturas"."Total_Costo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tFacturasComentario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario'
      Origin = '"Facturas"."Comentario"'
      Size = 255
    end
    object tFacturasFecha_Validacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Validacion'
      Origin = '"Facturas"."Fecha_Validacion"'
    end
    object tFacturasFecha_Cierre: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Cierre'
      Origin = '"Facturas"."Fecha_Cierre"'
    end
    object tFacturasUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Facturas"."Usuario"'
      Size = 100
    end
    object tFacturasValidado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Validado'
      Origin = '"Facturas"."Validado"'
    end
    object tFacturasCerrado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Cerrado'
      Origin = '"Facturas"."Cerrado"'
    end
    object tFacturasImpuesto_Global: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto_Global'
      Origin = '"Facturas"."Impuesto_Global"'
      OnValidate = Calculo_Totales_Factura
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object tFacturasValor_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Facturas"."Valor_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tFacturasValor_Impuesto_Detalle: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto_Detalle'
      Origin = '"Facturas"."Valor_Impuesto_Detalle"'
      OnValidate = Calculo_Totales_Factura
      currency = True
      Precision = 12
      Size = 2
    end
    object tFacturasTotal_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Facturas"."Total_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tFacturasDescuento_Global: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Global'
      Origin = '"Facturas"."Descuento_Global"'
      OnValidate = Calculo_Totales_Factura
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object tFacturasValor_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Facturas"."Valor_Descuento"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tFacturasValor_Descuento_Detalle: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento_Detalle'
      Origin = '"Facturas"."Valor_Descuento_Detalle"'
      OnValidate = Calculo_Totales_Factura
      currency = True
      Precision = 12
      Size = 2
    end
    object tFacturasTotal_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Facturas"."Total_Descuento"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tFacturasTerminos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Terminos'
      Origin = '"Facturas"."Terminos"'
      OnValidate = tFacturasTerminosValidate
    end
    object tFacturasVencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento'
      Origin = '"Facturas"."Vencimiento"'
    end
    object tFacturasPagado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado'
      Origin = '"Facturas"."Pagado"'
      OnValidate = Calculo_Totales_Factura
      currency = True
      Precision = 12
      Size = 2
    end
    object tFacturasPendiente: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Origin = '"Facturas"."Pendiente"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tFacturasUltimoPago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'UltimoPago'
      Origin = '"Facturas"."UltimoPago"'
    end
    object tFacturasTotal_Efectivo_Recibido: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo_Recibido'
      Origin = '"Facturas"."Total_Efectivo_Recibido"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tFacturasTotal_Efectivo_Devuelto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo_Devuelto'
      Origin = '"Facturas"."Total_Efectivo_Devuelto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tFacturasqrDetalle_Pago_Factura: TDataSetField
      AutoGenerateValue = arDefault
      FieldName = 'qrDetalle_Pago_Factura'
    end
    object tFacturasqrDetalles_Factura: TDataSetField
      AutoGenerateValue = arDefault
      FieldName = 'qrDetalles_Factura'
    end
    object tFacturasCliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Facturas"."Cliente"'
      OnValidate = tFacturasClienteValidate
      Size = 25
    end
    object tFacturasStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Facturas"."Status"'
      Size = 15
    end
    object tFacturasTipo_Factura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Factura'
      Origin = '"Facturas"."Tipo_Factura"'
      Size = 15
    end
    object tFacturasTipo_NCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_NCF'
      Origin = '"Facturas"."Tipo_NCF"'
      OnValidate = tFacturasTipo_NCFValidate
      Size = 2
    end
    object tFacturasNCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCF'
      Origin = '"Facturas"."NCF"'
      Size = 100
    end
    object tFacturasVendedor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Vendedor'
      Origin = '"Facturas"."Vendedor"'
      OnValidate = tFacturasVendedorValidate
      Size = 25
    end
    object tFacturasNombre_Vendedor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Vendedor'
      Origin = '"Facturas"."Nombre_Vendedor"'
      Size = 100
    end
    object tFacturasTotal_Restante: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Restante'
      Origin = '"Facturas"."Total_Restante"'
      OnValidate = CalcularFinanciamiento
      currency = True
      Precision = 12
      Size = 2
    end
    object tFacturasInteres: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Interes'
      Origin = '"Facturas"."Interes"'
      OnValidate = CalcularFinanciamiento
      Precision = 12
      Size = 2
    end
    object tFacturasModalidad: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Modalidad'
      Origin = '"Facturas"."Modalidad"'
      OnValidate = CalcularFinanciamiento
      Size = 25
    end
    object tFacturasValor_Interes: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Interes'
      Origin = '"Facturas"."Valor_Interes"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tFacturasValor_Capital: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Capital'
      Origin = '"Facturas"."Valor_Capital"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tFacturasValor_Cuotas: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Cuotas'
      Origin = '"Facturas"."Valor_Cuotas"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tFacturasGasto_Cierre: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Gasto_Cierre'
      Origin = '"Facturas"."Gasto_Cierre"'
      OnValidate = CalcularFinanciamiento
      Precision = 12
      Size = 2
    end
    object tFacturasValor_Gasto_Cierre: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Gasto_Cierre'
      Origin = '"Facturas"."Valor_Gasto_Cierre"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tFacturasVence_Financiamiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vence_Financiamiento'
      Origin = '"Facturas"."Vence_Financiamiento"'
    end
    object tFacturasTotal_Estimado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Estimado'
      Origin = '"Facturas"."Total_Estimado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tFacturasMonto_Financiado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Financiado'
      Origin = '"Facturas"."Monto_Financiado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tFacturasTipo_Gasto_Cierre: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Gasto_Cierre'
      Origin = '"Facturas"."Tipo_Gasto_Cierre"'
      OnValidate = CalcularFinanciamiento
      Size = 25
    end
    object tFacturasPeriodo_Pagos: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Periodo_Pagos'
      Origin = '"Facturas"."Periodo_Pagos"'
      OnValidate = CalcularFinanciamiento
      Size = 25
    end
    object tFacturasPlazo_Pago: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Plazo_Pago'
      Origin = '"Facturas"."Plazo_Pago"'
      OnValidate = CalcularFinanciamiento
    end
    object tFacturasqrCuotas_Factura: TDataSetField
      AutoGenerateValue = arDefault
      FieldName = 'qrCuotas_Factura'
    end
    object tFacturasDescripcion_NCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion_NCF'
      Origin = '"Facturas"."Descripcion_NCF"'
      Size = 100
    end
    object tFacturasInicial: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Inicial'
      Origin = '"Facturas"."Inicial"'
      OnValidate = tFacturasInicialValidate
      currency = True
      Precision = 12
      Size = 2
    end
    object tFacturasNombre_Termino: TStringField
      AutoGenerateValue = arDefault
      FieldKind = fkLookup
      FieldName = 'Nombre_Termino'
      LookupDataSet = tTerminos
      LookupKeyFields = 'Numero_Termino'
      LookupResultField = 'Descripcion'
      KeyFields = 'Terminos'
      Size = 50
      Lookup = True
    end
    object tFacturasConduce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Conduce'
      Origin = '"Facturas"."Conduce"'
      Size = 25
    end
    object tFacturasDebitado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Debitado'
      Origin = '"Facturas"."Debitado"'
      Precision = 12
      Size = 2
    end
    object tFacturasAcreditado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Acreditado'
      Origin = '"Facturas"."Acreditado"'
      Precision = 12
      Size = 2
    end
    object tFacturasBalance: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Origin = '"Facturas"."Balance"'
      Precision = 12
      Size = 2
    end
    object tFacturasMora: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Mora'
      Origin = '"Facturas"."Mora"'
      Precision = 12
      Size = 2
    end
    object tFacturasMonto_Vencido: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Vencido'
      Origin = '"Facturas"."Monto_Vencido"'
      Precision = 12
      Size = 2
    end
    object tFacturasCuotas_Vencidas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Cuotas_Vencidas'
      Origin = '"Facturas"."Cuotas_Vencidas"'
    end
    object tFacturasMonto_Interes_Cumplido: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Interes_Cumplido'
      Origin = '"Facturas"."Monto_Interes_Cumplido"'
      Precision = 12
      Size = 2
    end
    object tFacturasBalance_Capital: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Capital'
      Origin = '"Facturas"."Balance_Capital"'
      Precision = 12
      Size = 2
    end
    object tFacturasBalance_Interes: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Interes'
      Origin = '"Facturas"."Balance_Interes"'
      Precision = 12
      Size = 2
    end
    object tFacturasBalance_Otros: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Otros'
      Origin = '"Facturas"."Balance_Otros"'
      Precision = 12
      Size = 2
    end
    object tFacturasFecha_Ultimo_Pago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Ultimo_Pago'
      Origin = '"Facturas"."Fecha_Ultimo_Pago"'
    end
    object tFacturasDias_Vencidos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Dias_Vencidos'
      Origin = '"Facturas"."Dias_Vencidos"'
    end
    object tFacturasTotal_Seriales: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Seriales'
      Origin = '"Facturas"."Total_Seriales"'
    end
    object tFacturasSeriales_Registrados: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Seriales_Registrados'
      Origin = '"Facturas"."Seriales_Registrados"'
    end
    object tFacturasAlmacen: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Origin = '"Facturas"."Almacen"'
      Size = 25
    end
    object tFacturasApertura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Apertura'
      Size = 25
    end
  end
  object dFacturas: TDataSource
    DataSet = tFacturas
    Left = 328
    Top = 287
  end
  object tDetalles_Factura: TClientDataSet
    Aggregates = <>
    DataSetField = tFacturasqrDetalles_Factura
    Params = <>
    BeforePost = tDetalles_FacturaBeforePost
    AfterPost = ActualizarDetallesFactura
    BeforeDelete = tDetalles_FacturaBeforeDelete
    AfterDelete = ActualizarDetallesFactura
    BeforeRefresh = ChkRefresh
    Left = 224
    Top = 335
    object tDetalles_FacturaProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalles_Factura"."Proceso"'
      Size = 25
    end
    object tDetalles_FacturaCodigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Origin = '"Detalles_Factura"."Codigo"'
      OnValidate = tDetalles_FacturaCodigoValidate
      Size = 25
    end
    object tDetalles_FacturaCodigo_Real: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo_Real'
      Origin = '"Detalles_Factura"."Codigo_Real"'
      Size = 25
    end
    object tDetalles_FacturaSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Detalles_Factura"."Secuencia"'
      DisplayFormat = '#,#0'
    end
    object tDetalles_FacturaDescripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Detalles_Factura"."Descripcion"'
      Size = 100
    end
    object tDetalles_FacturaCategoria: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Categoria'
      Origin = '"Detalles_Factura"."Categoria"'
    end
    object tDetalles_FacturaFabricante: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Fabricante'
      Origin = '"Detalles_Factura"."Fabricante"'
    end
    object tDetalles_FacturaDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Departamento'
      Origin = '"Detalles_Factura"."Departamento"'
    end
    object tDetalles_FacturaTipo_Producto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Producto'
      Origin = '"Detalles_Factura"."Tipo_Producto"'
    end
    object tDetalles_FacturaCosto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Costo'
      Origin = '"Detalles_Factura"."Costo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalles_FacturaPrecio_Real: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Real'
      Origin = '"Detalles_Factura"."Precio_Real"'
      DisplayFormat = '#,#0.000'
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalles_FacturaPrecio_Venta: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta'
      Origin = '"Detalles_Factura"."Precio_Venta"'
      OnValidate = Calculo_Totales_Detalle_Factura
      DisplayFormat = '#,#0.000'
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalles_FacturaPrecio_Minimo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Minimo'
      Origin = '"Detalles_Factura"."Precio_Minimo"'
      DisplayFormat = '#,#0.000'
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalles_FacturaCantidad: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad'
      Origin = '"Detalles_Factura"."Cantidad"'
      OnValidate = Calculo_Totales_Detalle_Factura
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object tDetalles_FacturaCantidad_Devuelto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad_Devuelto'
      Origin = '"Detalles_Factura"."Cantidad_Devuelto"'
      Precision = 12
      Size = 2
    end
    object tDetalles_FacturaTotal_Costo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Origin = '"Detalles_Factura"."Total_Costo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalles_FacturaTotal_Precio: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Precio'
      Origin = '"Detalles_Factura"."Total_Precio"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalles_FacturaFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Detalles_Factura"."Fecha"'
    end
    object tDetalles_FacturaHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Detalles_Factura"."Hora"'
    end
    object tDetalles_FacturaUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Detalles_Factura"."Usuario"'
      Size = 100
    end
    object tDetalles_FacturaMes: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Mes'
      Origin = '"Detalles_Factura"."Mes"'
      MaxValue = 12
    end
    object tDetalles_FacturaAno: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ano'
      Origin = '"Detalles_Factura"."Ano"'
      DisplayFormat = '0000'
    end
    object tDetalles_FacturaCliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Detalles_Factura"."Cliente"'
      Size = 25
    end
    object tDetalles_FacturaImpuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto'
      Origin = '"Detalles_Factura"."Impuesto"'
      OnValidate = Calculo_Totales_Detalle_Factura
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object tDetalles_FacturaDescuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento'
      Origin = '"Detalles_Factura"."Descuento"'
      OnValidate = Calculo_Totales_Detalle_Factura
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object tDetalles_FacturaValor_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Detalles_Factura"."Valor_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalles_FacturaValor_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Detalles_Factura"."Valor_Descuento"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalles_FacturaTotal_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Detalles_Factura"."Total_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalles_FacturaTotal_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Detalles_Factura"."Total_Descuento"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalles_FacturaTipo_Precio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Precio'
      Origin = '"Detalles_Factura"."Tipo_Precio"'
      OnValidate = tDetalles_FacturaTipo_PrecioValidate
      Size = 25
    end
    object tDetalles_FacturaContenido: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Contenido'
      Origin = '"Detalles_Factura"."Contenido"'
      OnValidate = Calculo_Totales_Detalle_Factura
      DisplayFormat = '#,0'
      Precision = 12
      Size = 2
    end
    object tDetalles_FacturaReferencia: TStringField
      AutoGenerateValue = arDefault
      FieldKind = fkLookup
      FieldName = 'Referencia'
      LookupDataSet = tListadoProductos
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Referencia'
      KeyFields = 'Codigo_Real'
      Size = 25
      Lookup = True
    end
    object tDetalles_FacturaRegistro: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Registro'
      Origin = '"Detalles_Factura"."Registro"'
    end
    object tDetalles_FacturaqrSeriales_Factura: TDataSetField
      AutoGenerateValue = arDefault
      FieldName = 'qrSeriales_Factura'
    end
    object tDetalles_FacturaRequiere_Serial: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Requiere_Serial'
    end
    object tDetalles_FacturaAlmacen: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Size = 25
    end
  end
  object dDetalles_Factura: TDataSource
    DataSet = tDetalles_Factura
    Left = 328
    Top = 335
  end
  object tDetalle_Pago_Factura: TClientDataSet
    Aggregates = <>
    DataSetField = tFacturasqrDetalle_Pago_Factura
    Params = <>
    BeforePost = tDetalle_Pago_FacturaBeforePost
    AfterPost = tDetalle_Pago_FacturaAfterPost
    BeforeRefresh = ChkRefresh
    OnCalcFields = tDetalle_Pago_FacturaCalcFields
    Left = 224
    Top = 384
    object tDetalle_Pago_FacturaProceso: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Proceso'
      Origin = '"Detalle_Pago_Factura"."Proceso"'
      Size = 25
    end
    object tDetalle_Pago_FacturaForma_Pago: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Forma_Pago'
      Origin = '"Detalle_Pago_Factura"."Forma_Pago"'
    end
    object tDetalle_Pago_FacturaFecha: TDateField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Fecha'
      Origin = '"Detalle_Pago_Factura"."Fecha"'
    end
    object tDetalle_Pago_FacturaHora: TTimeField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Hora'
      Origin = '"Detalle_Pago_Factura"."Hora"'
    end
    object tDetalle_Pago_FacturaTasa: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Tasa'
      Origin = '"Detalle_Pago_Factura"."Tasa"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalle_Pago_FacturaValor_Recibido: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Valor_Recibido'
      Origin = '"Detalle_Pago_Factura"."Valor_Recibido"'
      OnValidate = Calculo_Totales_Forma_Pago
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalle_Pago_FacturaValor_Recibido_Local: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Valor_Recibido_Local'
      Origin = '"Detalle_Pago_Factura"."Valor_Recibido_Local"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalle_Pago_FacturaValor_Devolver: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Forma Pago'
      DisplayWidth = 13
      FieldName = 'Valor_Devolver'
      Origin = '"Detalle_Pago_Factura"."Valor_Devolver"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalle_Pago_FacturaValor_Devolver_Local: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Moneda Local'
      DisplayWidth = 13
      FieldName = 'Valor_Devolver_Local'
      Origin = '"Detalle_Pago_Factura"."Valor_Devolver_Local"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tDetalle_Pago_FacturaNumero_Banco: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Numero de Banco'
      FieldName = 'Numero_Banco'
      Origin = '"Detalle_Pago_Factura"."Numero_Banco"'
    end
    object tDetalle_Pago_FacturaNombre_Banco: TStringField
      DisplayLabel = 'Nombre del Banco'
      FieldKind = fkLookup
      FieldName = 'Nombre_Banco'
      LookupDataSet = tBancos
      LookupKeyFields = 'Numero'
      LookupResultField = 'Nombre'
      KeyFields = 'Numero_Banco'
      Size = 100
      Lookup = True
    end
    object tDetalle_Pago_FacturaNumero_Documento: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Numero de Documento'
      DisplayWidth = 25
      FieldName = 'Numero_Documento'
      Origin = '"Detalle_Pago_Factura"."Numero_Documento"'
      Size = 25
    end
    object tDetalle_Pago_FacturaNumero_Aprobacion: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Numero de Aprobaci'#243'n'
      FieldName = 'Numero_Aprobacion'
      Origin = '"Detalle_Pago_Factura"."Numero_Aprobacion"'
      Size = 25
    end
    object tDetalle_Pago_FacturaMes_Vencimiento: TSmallintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Mes'
      DisplayWidth = 10
      FieldName = 'Mes_Vencimiento'
      Origin = '"Detalle_Pago_Factura"."Mes_Vencimiento"'
      DisplayFormat = '00'
      MaxValue = 12
    end
    object tDetalle_Pago_FacturaAno_Vencimiento: TSmallintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'A'#241'o'
      DisplayWidth = 10
      FieldName = 'Ano_Vencimiento'
      Origin = '"Detalle_Pago_Factura"."Ano_Vencimiento"'
      DisplayFormat = '0000'
    end
    object tDetalle_Pago_FacturaTipo_Documento: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo de Documento'
      DisplayWidth = 100
      FieldName = 'Tipo_Documento'
      Origin = '"Detalle_Pago_Factura"."Tipo_Documento"'
      Size = 100
    end
    object tDetalle_Pago_FacturaEs_Efectivo: TBooleanField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Es Efectivo'
      DisplayWidth = 5
      FieldName = 'Es_Efectivo'
      Origin = '"Detalle_Pago_Factura"."Es_Efectivo"'
    end
    object tDetalle_Pago_FacturaRequiere_Documento: TBooleanField
      AutoGenerateValue = arDefault
      DisplayWidth = 5
      FieldName = 'Requiere_Documento'
      Origin = '"Detalle_Pago_Factura"."Requiere_Documento"'
    end
    object tDetalle_Pago_FacturaRequiere_Vencimiento: TBooleanField
      AutoGenerateValue = arDefault
      DisplayWidth = 5
      FieldName = 'Requiere_Vencimiento'
      Origin = '"Detalle_Pago_Factura"."Requiere_Vencimiento"'
    end
    object tDetalle_Pago_FacturaRequiere_Aprobacion: TBooleanField
      FieldName = 'Requiere_Aprobacion'
      Origin = '"Detalle_Pago_Factura"."Requiere_Aprobacion"'
    end
    object tDetalle_Pago_FacturaNombre_Forma_Pago: TStringField
      FieldKind = fkLookup
      FieldName = 'Nombre_Forma_Pago'
      LookupDataSet = tFormas_Pago
      LookupKeyFields = 'Numero'
      LookupResultField = 'Descripcion'
      KeyFields = 'Forma_Pago'
      Size = 100
      Lookup = True
    end
    object tDetalle_Pago_FacturaTotal_Forma_Pago: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total_Forma_Pago'
      Calculated = True
    end
    object tDetalle_Pago_FacturaDevolver_Forma_Pago: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Devolver_Forma_Pago'
      Calculated = True
    end
  end
  object dDetalle_Pago_Factura: TDataSource
    DataSet = tDetalle_Pago_Factura
    Left = 328
    Top = 384
  end
  object tFormas_Pago: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <>
    ProviderName = 'prFormas_Pago'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 224
    Top = 430
    object tFormas_PagoNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Formas_Pago"."Numero"'
      DisplayFormat = '000000'
    end
    object tFormas_PagoDescripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Formas_Pago"."Descripcion"'
      Size = 100
    end
    object tFormas_PagoTasa: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Tasa'
      Origin = '"Formas_Pago"."Tasa"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tFormas_PagoRequiere_Documento: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Requiere_Documento'
      Origin = '"Formas_Pago"."Requiere_Documento"'
    end
    object tFormas_PagoRequiere_Vencimiento: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Requiere_Vencimiento'
      Origin = '"Formas_Pago"."Requiere_Vencimiento"'
    end
    object tFormas_PagoRequiere_Aprobacion: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Requiere_Aprobacion'
      Origin = '"Formas_Pago"."Requiere_Aprobacion"'
    end
    object tFormas_PagoFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Formas_Pago"."Fecha"'
    end
    object tFormas_PagoUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Formas_Pago"."Usuario"'
      Size = 100
    end
    object tFormas_PagoEs_Efectivo: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Es_Efectivo'
      Origin = '"Formas_Pago"."Es_Efectivo"'
    end
  end
  object dFormas_Pago: TDataSource
    DataSet = tFormas_Pago
    Left = 328
    Top = 430
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
    OnCalcFields = tProductosCalcFields
    OnReconcileError = DataSetReconcileError
    Left = 224
    Top = 571
    object tParametrosTerminal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Terminal'
      Size = 100
    end
    object tParametrosImpuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto'
      Precision = 12
      Size = 2
    end
    object tParametrosTermino_COD: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Termino_COD'
    end
    object tParametrosDescuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento'
      Precision = 12
      Size = 2
    end
    object tParametrosCondicion_Facturacion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Condicion_Facturacion'
      Size = 25
    end
    object tParametrosDEMO: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'DEMO'
    end
    object tParametrosTIME: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'TIME'
    end
    object tParametrosCOUNTER: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'COUNTER'
    end
    object tParametrosDATECOUNT: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATECOUNT'
    end
    object tParametrosCount_Day: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Count_Day'
    end
    object tParametrosSerie_NCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Serie_NCF'
      Size = 1
    end
    object tParametrosDivision_NCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Division_NCF'
      Size = 2
    end
    object tParametrosPunto_Emision_NCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Punto_Emision_NCF'
      Size = 3
    end
    object tParametrosArea_Impresion_NCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Area_Impresion_NCF'
      Size = 3
    end
    object tParametrosLimite_NCF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Limite_NCF'
    end
    object tParametrosInforme_Nuevo_NCF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Informe_Nuevo_NCF'
    end
    object tParametrosTermino_Financiado: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Termino_Financiado'
    end
    object tParametrosTipo_NCF_Notas_Credito: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_NCF_Notas_Credito'
      Size = 25
    end
    object tParametrosTipo_NCF_Notas_Debito: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_NCF_Notas_Debito'
      Size = 25
    end
  end
  object dParametros: TDataSource
    DataSet = tParametros
    Left = 328
    Top = 571
  end
  object tBancos: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <>
    ProviderName = 'prBancos'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 224
    Top = 618
    object tBancosNombre: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 40
      FieldName = 'Nombre'
      Origin = '"Bancos"."Nombre"'
      Size = 100
    end
    object tBancosNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Bancos"."Numero"'
      Visible = False
      DisplayFormat = '000000'
    end
    object tBancosDireccion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion'
      Origin = '"Bancos"."Direccion"'
      Visible = False
      Size = 255
    end
    object tBancosTelefono: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefono'
      Origin = '"Bancos"."Telefono"'
      Visible = False
      EditMask = '!\(999\)000-0000;1; '
      Size = 25
    end
    object tBancosmail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mail'
      Origin = '"Bancos"."mail"'
      Visible = False
      Size = 100
    end
  end
  object dBancos: TDataSource
    DataSet = tBancos
    Left = 328
    Top = 618
  end
  object tReporter: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prReporter'
    RemoteServer = Enlace
    BeforeRefresh = ChkRefresh
    Left = 544
    Top = 4
  end
  object dReporter: TDataSource
    DataSet = tReporter
    Left = 648
    Top = 4
  end
  object tVencimientos_Categoria: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftSmallint
        Name = 'Mes1'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'Mes2'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'Ano1'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'Ano2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Categoria'
        ParamType = ptInput
      end>
    ProviderName = 'prVencimientos_Categoria'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 224
    Top = 665
    object tVencimientos_CategoriaCODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Size = 25
    end
    object tVencimientos_CategoriaMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
    end
    object tVencimientos_CategoriaANO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANO'
    end
    object tVencimientos_CategoriaCANTIDAD: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CANTIDAD'
      Precision = 18
      Size = 2
    end
    object tVencimientos_CategoriaDESCRIPCION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPCION'
      Size = 100
    end
  end
  object dVencimientos_Categoria: TDataSource
    DataSet = tVencimientos_Categoria
    Left = 328
    Top = 665
  end
  object tVencimientos_Codigo: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftSmallint
        Name = 'Mes1'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'Mes2'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'Ano1'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'Ano2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'prVencimientos_Codigo'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 224
    Top = 712
    object tVencimientos_CodigoCODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Size = 25
    end
    object tVencimientos_CodigoMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
    end
    object tVencimientos_CodigoANO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANO'
    end
    object tVencimientos_CodigoCANTIDAD: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CANTIDAD'
      Precision = 18
      Size = 2
    end
    object tVencimientos_CodigoDESCRIPCION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPCION'
      Size = 100
    end
  end
  object dVencimientos_Codigo: TDataSource
    DataSet = tVencimientos_Codigo
    Left = 328
    Top = 712
  end
  object tVencimientos_Departamento: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftSmallint
        Name = 'Mes1'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'Mes2'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'Ano1'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'Ano2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Departamento'
        ParamType = ptInput
      end>
    ProviderName = 'prVencimientos_Departamento'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 224
    Top = 760
    object tVencimientos_DepartamentoCODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = '"Vencimientos_Departamento"."CODIGO"'
      Size = 25
    end
    object tVencimientos_DepartamentoMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
      Origin = '"Vencimientos_Departamento"."MES"'
    end
    object tVencimientos_DepartamentoANO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANO'
      Origin = '"Vencimientos_Departamento"."ANO"'
    end
    object tVencimientos_DepartamentoCANTIDAD: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CANTIDAD'
      Origin = '"Vencimientos_Departamento"."CANTIDAD"'
      Precision = 18
      Size = 2
    end
    object tVencimientos_DepartamentoDESCRIPCION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPCION'
      Origin = '"Vencimientos_Departamento"."DESCRIPCION"'
      Size = 100
    end
  end
  object dVencimientos_Departamento: TDataSource
    DataSet = tVencimientos_Departamento
    Left = 328
    Top = 760
  end
  object tVencimientos_Fabricante: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftSmallint
        Name = 'Mes1'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'Mes2'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'Ano1'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'Ano2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Fabricante'
        ParamType = ptInput
      end>
    ProviderName = 'prVencimientos_Fabricante'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 224
    Top = 807
    object tVencimientos_FabricanteCODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Size = 25
    end
    object tVencimientos_FabricanteMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
    end
    object tVencimientos_FabricanteANO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANO'
    end
    object tVencimientos_FabricanteCANTIDAD: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CANTIDAD'
      Precision = 18
      Size = 2
    end
    object tVencimientos_FabricanteDESCRIPCION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPCION'
      Size = 100
    end
  end
  object dVencimientos_Fabricante: TDataSource
    DataSet = tVencimientos_Fabricante
    Left = 328
    Top = 807
  end
  object tVencimientos_Fecha: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftSmallint
        Name = 'Mes1'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'Mes2'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'Ano1'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'Ano2'
        ParamType = ptInput
      end>
    ProviderName = 'prVencimientos_Fecha'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 440
    Top = 49
    object tVencimientos_FechaCODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = '"Vencimientos_Fecha"."CODIGO"'
      Size = 25
    end
    object tVencimientos_FechaMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
      Origin = '"Vencimientos_Fecha"."MES"'
    end
    object tVencimientos_FechaANO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANO'
      Origin = '"Vencimientos_Fecha"."ANO"'
    end
    object tVencimientos_FechaCANTIDAD: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CANTIDAD'
      Origin = '"Vencimientos_Fecha"."CANTIDAD"'
      Precision = 18
      Size = 2
    end
    object tVencimientos_FechaDESCRIPCION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPCION'
      Origin = '"Vencimientos_Fecha"."DESCRIPCION"'
      Size = 100
    end
  end
  object dVencimientos_Fecha: TDataSource
    DataSet = tVencimientos_Fecha
    Left = 544
    Top = 49
  end
  object tVencimientos_Proveedor: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftSmallint
        Name = 'Mes1'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'Mes2'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'Ano1'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'Ano2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Proveedor'
        ParamType = ptInput
      end>
    ProviderName = 'prVencimientos_Proveedor'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 440
    Top = 93
    object tVencimientos_ProveedorCODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Size = 25
    end
    object tVencimientos_ProveedorMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
    end
    object tVencimientos_ProveedorANO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANO'
    end
    object tVencimientos_ProveedorCANTIDAD: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CANTIDAD'
      Precision = 18
      Size = 2
    end
    object tVencimientos_ProveedorDESCRIPCION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPCION'
      Size = 100
    end
  end
  object dVencimientos_Proveedor: TDataSource
    DataSet = tVencimientos_Proveedor
    Left = 544
    Top = 93
  end
  object tVencimientos_Todos: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <>
    ProviderName = 'prVencimientos_Todos'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 440
    Top = 138
    object tVencimientos_TodosCODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Size = 25
    end
    object tVencimientos_TodosMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
    end
    object tVencimientos_TodosANO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANO'
    end
    object tVencimientos_TodosCANTIDAD: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CANTIDAD'
      Precision = 18
      Size = 2
    end
    object tVencimientos_TodosDESCRIPCION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPCION'
      Size = 100
    end
  end
  object dVencimientos_Todos: TDataSource
    DataSet = tVencimientos_Todos
    Left = 544
    Top = 138
  end
  object tComponentes: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = tComponentesAfterPost
    BeforeRefresh = ChkRefresh
    OnCalcFields = tComponentesCalcFields
    Left = 24
    Top = 184
    object tComponentesCodigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Origin = '"Componentes"."Codigo"'
      Size = 25
    end
    object tComponentesCodigo_Componente: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Componente'
      FieldName = 'Codigo_Componente'
      Origin = '"Componentes"."Codigo_Componente"'
      OnValidate = tComponentesCodigo_ComponenteValidate
      Size = 25
    end
    object tComponentesCantidad: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad'
      Origin = '"Componentes"."Cantidad"'
      Precision = 12
      Size = 2
    end
    object tComponentesCosto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Costo'
      Origin = '"Componentes"."Costo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tComponentesTotal_Costo: TCurrencyField
      AutoGenerateValue = arDefault
      FieldKind = fkCalculated
      FieldName = 'Total_Costo'
      Calculated = True
    end
    object tComponentesDescripcion_Componente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion_Componente'
      Size = 100
    end
  end
  object dComponentes: TDataSource
    DataSet = tComponentes
    Left = 120
    Top = 184
  end
  object dCuadre_Caja: TDataSource
    DataSet = tCuadre_Caja
    Left = 544
    Top = 230
  end
  object tCuadre_Caja: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    ProviderName = 'prCuadre_Caja'
    AfterInsert = tCuadre_CajaAfterInsert
    BeforeRefresh = ChkRefresh
    OnCalcFields = tCuadre_CajaCalcFields
    OnReconcileError = DataSetReconcileError
    Left = 440
    Top = 230
    object tCuadre_CajaNumero_Cuadre: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Cuadre'
      Origin = '"Cuadre_Caja"."Numero_Cuadre"'
      DisplayFormat = #39'CC'#39'0000000000'
    end
    object tCuadre_CajaProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Cuadre_Caja"."Proceso"'
      Size = 25
    end
    object tCuadre_CajaFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Cuadre_Caja"."Fecha"'
    end
    object tCuadre_CajaHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Cuadre_Caja"."Hora"'
    end
    object tCuadre_CajaUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Cuadre_Caja"."Usuario"'
      Size = 100
    end
    object tCuadre_CajaSupervisor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Supervisor'
      Origin = '"Cuadre_Caja"."Supervisor"'
      Size = 100
    end
    object tCuadre_CajaTotal_Vendido: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Vendido'
      Origin = '"Cuadre_Caja"."Total_Vendido"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tCuadre_CajaFondo_Caja: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Fondo_Caja'
      Origin = '"Cuadre_Caja"."Fondo_Caja"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tCuadre_CajaTotal_Retiros: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Retiros'
      Origin = '"Cuadre_Caja"."Total_Retiros"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tCuadre_CajaqrDetalle_Cuadre: TDataSetField
      AutoGenerateValue = arDefault
      FieldName = 'qrDetalle_Cuadre'
    end
    object tCuadre_CajaTotal_Efectivo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo'
      currency = True
      Precision = 12
      Size = 2
    end
    object tCuadre_CajaTotal_NoEfectivo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_NoEfectivo'
      currency = True
      Precision = 12
      Size = 2
    end
    object tCuadre_CajaDiferencia: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Diferencia'
      Calculated = True
    end
  end
  object tDetalle_Cuadre: TClientDataSet
    Aggregates = <>
    DataSetField = tCuadre_CajaqrDetalle_Cuadre
    Params = <>
    AfterPost = tDetalle_CuadreAfterPost
    BeforeRefresh = ChkRefresh
    Left = 440
    Top = 277
    object tDetalle_CuadreProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Size = 25
    end
    object tDetalle_CuadreMoneda: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Moneda'
      Size = 100
    end
    object tDetalle_CuadreDenominacion: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Denominacion'
      OnValidate = CalcularTotalMoneda
      Precision = 12
      Size = 2
    end
    object tDetalle_CuadreCantidad: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad'
      OnValidate = CalcularTotalMoneda
    end
    object tDetalle_CuadreTotal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total'
      Precision = 12
      Size = 2
    end
  end
  object dDetalle_Cuadre: TDataSource
    DataSet = tDetalle_Cuadre
    Left = 544
    Top = 277
  end
  object tRetiros_Caja: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftInteger
        Name = 'Numero'
        ParamType = ptInput
      end>
    ProviderName = 'prRetiros_Caja'
    BeforeEdit = tRetiros_CajaBeforeEdit
    BeforePost = tRetiros_CajaBeforePost
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 440
    Top = 331
    object tRetiros_CajaNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
    end
    object tRetiros_CajaFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
    end
    object tRetiros_CajaHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
    end
    object tRetiros_CajaUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Size = 100
    end
    object tRetiros_CajaMonto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto'
      currency = True
      Precision = 12
      Size = 2
    end
    object tRetiros_CajaNumero_Factura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Factura'
      Size = 25
    end
    object tRetiros_CajaNombre_Establecimiento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Establecimiento'
      Size = 100
    end
  end
  object dRetiros_Caja: TDataSource
    DataSet = tRetiros_Caja
    Left = 544
    Top = 331
  end
  object tApertura_Caja: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Usuario'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Fecha'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = 'Abierto'
        ParamType = ptInput
      end>
    ProviderName = 'prApertura_Caja'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 440
    Top = 378
    object tApertura_CajaNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
    end
    object tApertura_CajaUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Size = 100
    end
    object tApertura_CajaFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
    end
    object tApertura_CajaHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
    end
    object tApertura_CajaMonto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto'
      OnValidate = BalanceCaja
      Precision = 12
      Size = 2
    end
    object tApertura_CajaRetirado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Retirado'
      OnValidate = BalanceCaja
      Precision = 12
      Size = 2
    end
    object tApertura_CajaAbierto: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Abierto'
    end
    object tApertura_CajaBalance: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Precision = 12
      Size = 2
    end
    object tApertura_CajaProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Size = 25
    end
    object tApertura_CajaUsuario_Cuadre: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario_Cuadre'
      Size = 100
    end
    object tApertura_CajaID: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Size = 50
    end
  end
  object dApertura_Caja: TDataSource
    DataSet = tApertura_Caja
    Left = 544
    Top = 378
  end
  object tFacturas_Cliente: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Cliente'
        ParamType = ptInput
      end>
    ProviderName = 'prFacturas_Cliente'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 440
    Top = 425
    object tFacturas_ClienteNumero: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = '# Factura'
      DisplayWidth = 12
      FieldName = 'Numero'
    end
    object tFacturas_ClienteCondicion: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cond.'
      DisplayWidth = 8
      FieldName = 'Condicion'
      Size = 25
    end
    object tFacturas_ClienteFecha: TDateField
      AutoGenerateValue = arDefault
      DisplayWidth = 11
      FieldName = 'Fecha'
    end
    object tFacturas_ClienteVencimiento: TDateField
      AutoGenerateValue = arDefault
      DisplayWidth = 11
      FieldName = 'Vencimiento'
    end
    object tFacturas_ClienteTotalNeto: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Total Neto'
      DisplayWidth = 13
      FieldName = 'TotalNeto'
      Precision = 12
      Size = 2
    end
    object tFacturas_ClientePendiente: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Pendiente'
      Precision = 12
      Size = 2
    end
    object tFacturas_ClientePagado: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Pagado'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteReferencia: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 15
      FieldName = 'Referencia'
      Visible = False
      Size = 25
    end
    object tFacturas_ClienteSubTotal: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'SubTotal'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteTotal_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Total_Impuesto'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteTotal_Descuento: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Total_Descuento'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteUltimoPago: TDateField
      AutoGenerateValue = arDefault
      DisplayWidth = 9
      FieldName = 'UltimoPago'
      Visible = False
    end
    object tFacturas_ClienteNombre_Cliente: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 100
      FieldName = 'Nombre_Cliente'
      Visible = False
      Size = 100
    end
    object tFacturas_ClienteHora: TTimeField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Hora'
      Visible = False
    end
    object tFacturas_ClienteConcepto_Factura: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 100
      FieldName = 'Concepto_Factura'
      Visible = False
      Size = 100
    end
    object tFacturas_ClienteProceso: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Proceso'
      Visible = False
      Size = 25
    end
    object tFacturas_ClienteComentario: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 255
      FieldName = 'Comentario'
      Visible = False
      Size = 255
    end
    object tFacturas_ClienteFecha_Validacion: TDateField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Fecha_Validacion'
      Visible = False
    end
    object tFacturas_ClienteFecha_Cierre: TDateField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Fecha_Cierre'
      Visible = False
    end
    object tFacturas_ClienteUsuario: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 100
      FieldName = 'Usuario'
      Visible = False
      Size = 100
    end
    object tFacturas_ClienteValidado: TBooleanField
      AutoGenerateValue = arDefault
      DisplayWidth = 5
      FieldName = 'Validado'
      Visible = False
    end
    object tFacturas_ClienteCerrado: TBooleanField
      AutoGenerateValue = arDefault
      DisplayWidth = 5
      FieldName = 'Cerrado'
      Visible = False
    end
    object tFacturas_ClienteImpuesto_Global: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Impuesto_Global'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteValor_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Valor_Impuesto'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteValor_Impuesto_Detalle: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Valor_Impuesto_Detalle'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteDescuento_Global: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Descuento_Global'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteValor_Descuento: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Valor_Descuento'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteValor_Descuento_Detalle: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Valor_Descuento_Detalle'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteTerminos: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Terminos'
      Visible = False
    end
    object tFacturas_ClienteCliente: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Cliente'
      Visible = False
      Size = 25
    end
    object tFacturas_ClienteTotal_Efectivo_Recibido: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Total_Efectivo_Recibido'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteTotal_Efectivo_Devuelto: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Total_Efectivo_Devuelto'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteStatus: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 15
      FieldName = 'Status'
      Visible = False
      Size = 15
    end
    object tFacturas_ClienteTotal_Costo: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Total_Costo'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteTipo_Factura: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 15
      FieldName = 'Tipo_Factura'
      Visible = False
      Size = 15
    end
    object tFacturas_ClienteTipo_NCF: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 2
      FieldName = 'Tipo_NCF'
      Visible = False
      Size = 2
    end
    object tFacturas_ClienteNCF: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 100
      FieldName = 'NCF'
      Visible = False
      Size = 100
    end
    object tFacturas_ClienteVendedor: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Vendedor'
      Visible = False
      Size = 25
    end
    object tFacturas_ClienteNombre_Vendedor: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 100
      FieldName = 'Nombre_Vendedor'
      Visible = False
      Size = 100
    end
    object tFacturas_ClienteTotal_Restante: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Total_Restante'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteInteres: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Interes'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteModalidad: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Modalidad'
      Visible = False
      Size = 25
    end
    object tFacturas_ClienteValor_Interes: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Valor_Interes'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteValor_Capital: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Valor_Capital'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteValor_Cuotas: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Valor_Cuotas'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteGasto_Cierre: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Gasto_Cierre'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteValor_Gasto_Cierre: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Valor_Gasto_Cierre'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteVence_Financiamiento: TDateField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Vence_Financiamiento'
      Visible = False
    end
    object tFacturas_ClienteTotal_Estimado: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Total_Estimado'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteMonto_Financiado: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Monto_Financiado'
      Visible = False
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteTipo_Gasto_Cierre: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Tipo_Gasto_Cierre'
      Visible = False
      Size = 25
    end
    object tFacturas_ClientePeriodo_Pagos: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Periodo_Pagos'
      Visible = False
      Size = 25
    end
    object tFacturas_ClientePlazo_Pago: TSmallintField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Plazo_Pago'
      Visible = False
    end
    object tFacturas_ClienteDescripcion_NCF: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 100
      FieldName = 'Descripcion_NCF'
      Size = 100
    end
    object tFacturas_ClienteInicial: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Inicial'
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteConduce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Conduce'
      Size = 25
    end
    object tFacturas_ClienteDebitado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Debitado'
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteAcreditado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Acreditado'
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteBalance: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteMora: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Mora'
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteMonto_Vencido: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Vencido'
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteCuotas_Vencidas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Cuotas_Vencidas'
    end
    object tFacturas_ClienteMonto_Interes_Cumplido: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Interes_Cumplido'
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteBalance_Capital: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Capital'
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteBalance_Interes: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Interes'
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteBalance_Otros: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Otros'
      Precision = 12
      Size = 2
    end
    object tFacturas_ClienteFecha_Ultimo_Pago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Ultimo_Pago'
    end
    object tFacturas_ClienteDias_Vencidos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Dias_Vencidos'
    end
    object tFacturas_ClienteTotal_Seriales: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Seriales'
    end
    object tFacturas_ClienteSeriales_Registrados: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Seriales_Registrados'
    end
  end
  object dFacturas_Cliente: TDataSource
    DataSet = tFacturas_Cliente
    Left = 544
    Top = 425
  end
  object tPagos_Clientes: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Cliente'
        ParamType = ptInput
      end>
    ProviderName = 'prPagos_Clientes'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 440
    Top = 472
    object tPagos_ClientesProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Pagos_Clientes"."Proceso"'
      Size = 25
    end
    object tPagos_ClientesNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Pagos_Clientes"."Numero"'
      DisplayFormat = #39'R-'#39'0000000000'
    end
    object tPagos_ClientesFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Pagos_Clientes"."Fecha"'
    end
    object tPagos_ClientesHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Pagos_Clientes"."Hora"'
    end
    object tPagos_ClientesCliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Pagos_Clientes"."Cliente"'
      Size = 25
    end
    object tPagos_ClientesFactura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Factura'
      Origin = '"Pagos_Clientes"."Factura"'
      Size = 25
    end
    object tPagos_ClientesMonto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto'
      Origin = '"Pagos_Clientes"."Monto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tPagos_ClientesConcepto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto'
      Origin = '"Pagos_Clientes"."Concepto"'
      Size = 100
    end
    object tPagos_ClientesPagado_Capital: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado_Capital'
      Origin = '"Pagos_Clientes"."Pagado_Capital"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tPagos_ClientesPagado_Interes: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado_Interes'
      Origin = '"Pagos_Clientes"."Pagado_Interes"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tPagos_ClientesPagado_Mora: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado_Mora'
      Origin = '"Pagos_Clientes"."Pagado_Mora"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tPagos_ClientesPagado_Otros: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado_Otros'
      Origin = '"Pagos_Clientes"."Pagado_Otros"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tPagos_ClientesTotal_Pagado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Pagado'
      Origin = '"Pagos_Clientes"."Total_Pagado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tPagos_ClientesRecibido_Por: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Recibido_Por'
      Origin = '"Pagos_Clientes"."Recibido_Por"'
      Size = 100
    end
    object tPagos_ClientesStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Pagos_Clientes"."Status"'
      Size = 15
    end
    object tPagos_ClientesqrDetalle_Pago_Facturas: TDataSetField
      AutoGenerateValue = arDefault
      FieldName = 'qrDetalle_Pago_Facturas'
    end
  end
  object dPagos_Clientes: TDataSource
    DataSet = tPagos_Clientes
    Left = 544
    Top = 472
  end
  object tDetalle_Pago_Clientes: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    DataSetField = tPagos_ClientesqrDetalle_Pago_Facturas
    Params = <>
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 440
    Top = 521
    object tDetalle_Pago_ClientesProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Size = 25
    end
    object tDetalle_Pago_ClientesFactura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Factura'
      Size = 25
    end
    object tDetalle_Pago_ClientesCliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Size = 25
    end
    object tDetalle_Pago_ClientesCuota: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Cuota'
    end
    object tDetalle_Pago_ClientesFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
    end
    object tDetalle_Pago_ClientesHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
    end
    object tDetalle_Pago_ClientesCapital: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Capital'
      Precision = 12
      Size = 2
    end
    object tDetalle_Pago_ClientesInteres: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Interes'
      Precision = 12
      Size = 2
    end
    object tDetalle_Pago_ClientesMora: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Mora'
      Precision = 12
      Size = 2
    end
    object tDetalle_Pago_ClientesOtros: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Otros'
      Precision = 12
      Size = 2
    end
    object tDetalle_Pago_ClientesVencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento'
    end
    object tDetalle_Pago_ClientesPendiente: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Precision = 12
      Size = 2
    end
  end
  object dDetalle_Pago_Clientes: TDataSource
    DataSet = tDetalle_Pago_Clientes
    Left = 544
    Top = 521
  end
  object tExistenciaInicial: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    ProviderName = 'prExistenciaInicial'
    BeforePost = tExistenciaInicialBeforePost
    BeforeRefresh = ChkRefresh
    Left = 440
    Top = 571
    object tExistenciaInicialProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Size = 25
    end
    object tExistenciaInicialCodigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      OnValidate = tExistenciaInicialCodigoValidate
      Size = 25
    end
    object tExistenciaInicialCodigo_Real: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo_Real'
      Size = 25
    end
    object tExistenciaInicialSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
    end
    object tExistenciaInicialDescripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Size = 100
    end
    object tExistenciaInicialCategoria: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Categoria'
    end
    object tExistenciaInicialFabricante: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Fabricante'
    end
    object tExistenciaInicialDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Departamento'
    end
    object tExistenciaInicialTipo_Producto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Producto'
    end
    object tExistenciaInicialCosto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Costo'
      OnValidate = Calcular_Beneficio_Inicial
      Precision = 12
      Size = 2
    end
    object tExistenciaInicialPrecio_Lista: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Lista'
      OnValidate = Calculo_Totales_ExistenciaInicial
      Precision = 12
      Size = 2
    end
    object tExistenciaInicialCantidad: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad'
      OnValidate = Calculo_Totales_ExistenciaInicial
      Precision = 12
      Size = 2
    end
    object tExistenciaInicialTotal_Costo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Precision = 12
      Size = 2
    end
    object tExistenciaInicialProveedor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Proveedor'
    end
    object tExistenciaInicialFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
    end
    object tExistenciaInicialHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
    end
    object tExistenciaInicialUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Size = 100
    end
    object tExistenciaInicialMes: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Mes'
    end
    object tExistenciaInicialAno: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ano'
    end
    object tExistenciaInicialImpuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto'
      OnValidate = Calculo_Totales_ExistenciaInicial
      Precision = 12
      Size = 2
    end
    object tExistenciaInicialDescuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento'
      OnValidate = Calculo_Totales_ExistenciaInicial
      Precision = 12
      Size = 2
    end
    object tExistenciaInicialValor_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Precision = 12
      Size = 2
    end
    object tExistenciaInicialValor_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Precision = 12
      Size = 2
    end
    object tExistenciaInicialTotal_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Precision = 12
      Size = 2
    end
    object tExistenciaInicialTotal_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Precision = 12
      Size = 2
    end
    object tExistenciaInicialTotal_Precio: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Precio'
      Precision = 12
      Size = 2
    end
    object tExistenciaInicialCantidad_Devuelto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad_Devuelto'
      Precision = 12
      Size = 2
    end
    object tExistenciaInicialTipo_Beneficio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Beneficio'
      OnValidate = Calcular_Beneficio_Inicial
      Size = 15
    end
    object tExistenciaInicialValor_Beneficio_PMayor_Contado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_PMayor_Contado'
      OnValidate = Calcular_Beneficio_Inicial
      Precision = 12
      Size = 2
    end
    object tExistenciaInicialValor_Beneficio_PMayor_Credito: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_PMayor_Credito'
      OnValidate = Calcular_Beneficio_Inicial
      Precision = 12
      Size = 2
    end
    object tExistenciaInicialValor_Beneficio_Detalle_Contado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_Detalle_Contado'
      OnValidate = Calcular_Beneficio_Inicial
      Precision = 12
      Size = 2
    end
    object tExistenciaInicialValor_Beneficio_Detalle_Credito: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_Detalle_Credito'
      OnValidate = Calcular_Beneficio_Inicial
      Precision = 12
      Size = 2
    end
    object tExistenciaInicialPrecio_Venta_Por_Mayor_Contado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Por_Mayor_Contado'
      Precision = 12
      Size = 2
    end
    object tExistenciaInicialPrecio_Venta_Por_Mayor_Credito: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Por_Mayor_Credito'
      Precision = 12
      Size = 2
    end
    object tExistenciaInicialPrecio_Venta_Detalle_Contado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Detalle_Contado'
      Precision = 12
      Size = 2
    end
    object tExistenciaInicialPrecio_Venta_Detalle_Credito: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Detalle_Credito'
      Precision = 12
      Size = 2
    end
    object tExistenciaInicialPrecio_Minimo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Minimo'
      Precision = 12
      Size = 2
    end
    object tExistenciaInicialContenido: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Contenido'
      Precision = 12
      Size = 2
    end
  end
  object dExistenciaInicial: TDataSource
    DataSet = tExistenciaInicial
    Left = 544
    Top = 571
  end
  object ColorConfig: TXPColorMap
    HighlightColor = 14410210
    BtnSelectedColor = clBtnFace
    UnusedColor = 14410210
    Left = 752
    Top = 4
  end
  object tDesgloceEfectivo: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftDate
        Name = 'F1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'F2'
        ParamType = ptInput
      end>
    ProviderName = 'prDesgloceEfectivo'
    BeforeRefresh = ChkRefresh
    OnCalcFields = tDesgloceEfectivoCalcFields
    Left = 440
    Top = 618
    object tDesgloceEfectivoForma_Pago: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Forma_Pago'
    end
    object tDesgloceEfectivoTOTAL_RECIBIDO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_RECIBIDO'
      Precision = 12
      Size = 2
    end
    object tDesgloceEfectivoTOTAL_DEVUELTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_DEVUELTO'
      Precision = 12
      Size = 2
    end
    object tDesgloceEfectivoDiferencia: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Diferencia'
      Calculated = True
    end
    object tDesgloceEfectivoNombre_Forma_Pago: TStringField
      FieldKind = fkLookup
      FieldName = 'Nombre_Forma_Pago'
      LookupDataSet = tFormas_Pago
      LookupKeyFields = 'Numero'
      LookupResultField = 'Descripcion'
      KeyFields = 'Forma_Pago'
      Size = 75
      Lookup = True
    end
  end
  object dDesgloceEfectivo: TDataSource
    DataSet = tDesgloceEfectivo
    Left = 544
    Top = 618
  end
  object tListadoPagos: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftDate
        Name = 'F1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'F2'
        ParamType = ptInput
      end>
    ProviderName = 'prListadoPagos'
    BeforeRefresh = ChkRefresh
    Left = 648
    Top = 49
    object tListadoPagosProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Size = 25
    end
    object tListadoPagosNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
    end
    object tListadoPagosFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
    end
    object tListadoPagosHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
    end
    object tListadoPagosCliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Size = 25
    end
    object tListadoPagosFactura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Factura'
      Size = 25
    end
    object tListadoPagosMonto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto'
      Precision = 12
      Size = 2
    end
    object tListadoPagosConcepto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto'
      Size = 100
    end
    object tListadoPagosPagado_Capital: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado_Capital'
      Precision = 12
      Size = 2
    end
    object tListadoPagosPagado_Interes: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado_Interes'
      Precision = 12
      Size = 2
    end
    object tListadoPagosPagado_Mora: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado_Mora'
      Precision = 12
      Size = 2
    end
    object tListadoPagosPagado_Otros: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado_Otros'
      Precision = 12
      Size = 2
    end
    object tListadoPagosTotal_Pagado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Pagado'
      Precision = 12
      Size = 2
    end
    object tListadoPagosRecibido_Por: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Recibido_Por'
      Size = 100
    end
    object tListadoPagosStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Size = 15
    end
  end
  object dListadoPagos: TDataSource
    DataSet = tListadoPagos
    Left = 752
    Top = 49
  end
  object tNotas_Credito: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Cliente'
        ParamType = ptInput
      end>
    ProviderName = 'prNotas_Credito'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 648
    Top = 93
    object tNotas_CreditoProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Notas_Credito"."Proceso"'
      Size = 25
    end
    object tNotas_CreditoNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Notas_Credito"."Numero"'
      DisplayFormat = #39'NC-'#39'0000000000'
    end
    object tNotas_CreditoFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Notas_Credito"."Fecha"'
    end
    object tNotas_CreditoHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Notas_Credito"."Hora"'
    end
    object tNotas_CreditoCliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Notas_Credito"."Cliente"'
      Size = 25
    end
    object tNotas_CreditoFactura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Factura'
      Origin = '"Notas_Credito"."Factura"'
      Size = 25
    end
    object tNotas_CreditoTipo_NCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_NCF'
      Origin = '"Notas_Credito"."Tipo_NCF"'
      Size = 2
    end
    object tNotas_CreditoNCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCF'
      Origin = '"Notas_Credito"."NCF"'
      Size = 100
    end
    object tNotas_CreditoNCF_Modificado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCF_Modificado'
      Origin = '"Notas_Credito"."NCF_Modificado"'
      Size = 100
    end
    object tNotas_CreditoMonto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto'
      Origin = '"Notas_Credito"."Monto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tNotas_CreditoConcepto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto'
      Origin = '"Notas_Credito"."Concepto"'
      Size = 100
    end
    object tNotas_CreditoCapital: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Capital'
      Origin = '"Notas_Credito"."Capital"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tNotas_CreditoInteres: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Interes'
      Origin = '"Notas_Credito"."Interes"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tNotas_CreditoMora: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Mora'
      Origin = '"Notas_Credito"."Mora"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tNotas_CreditoOtros: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Otros'
      Origin = '"Notas_Credito"."Otros"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tNotas_CreditoTotal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total'
      Origin = '"Notas_Credito"."Total"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tNotas_CreditoRealizada_Por: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Realizada_Por'
      Origin = '"Notas_Credito"."Realizada_Por"'
      Size = 100
    end
    object tNotas_CreditoStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Notas_Credito"."Status"'
      Size = 15
    end
    object tNotas_CreditoqrDetalle_Notas_Credito: TDataSetField
      AutoGenerateValue = arDefault
      FieldName = 'qrDetalle_Notas_Credito'
    end
    object tNotas_CreditoNumero_Factura: TIntegerField
      FieldKind = fkLookup
      FieldName = 'Numero_Factura'
      LookupDataSet = tFacturas_Cliente
      LookupKeyFields = 'Proceso'
      LookupResultField = 'Numero'
      KeyFields = 'Factura'
      DisplayFormat = #39'F-'#39'0000000000'
      Lookup = True
    end
  end
  object dNotas_Credito: TDataSource
    DataSet = tNotas_Credito
    Left = 752
    Top = 93
  end
  object tDetalle_Notas_Credito: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    DataSetField = tNotas_CreditoqrDetalle_Notas_Credito
    Params = <>
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 648
    Top = 138
    object tDetalle_Notas_CreditoProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Size = 25
    end
    object tDetalle_Notas_CreditoFactura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Factura'
      Size = 25
    end
    object tDetalle_Notas_CreditoCliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Size = 25
    end
    object tDetalle_Notas_CreditoCuota: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Cuota'
    end
    object tDetalle_Notas_CreditoFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
    end
    object tDetalle_Notas_CreditoHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
    end
    object tDetalle_Notas_CreditoCapital: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Capital'
      Precision = 12
      Size = 2
    end
    object tDetalle_Notas_CreditoInteres: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Interes'
      Precision = 12
      Size = 2
    end
    object tDetalle_Notas_CreditoMora: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Mora'
      Precision = 12
      Size = 2
    end
    object tDetalle_Notas_CreditoOtros: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Otros'
      Precision = 12
      Size = 2
    end
    object tDetalle_Notas_CreditoVencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento'
    end
    object tDetalle_Notas_CreditoPendiente: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Precision = 12
      Size = 2
    end
  end
  object dDetalle_Notas_Credito: TDataSource
    DataSet = tDetalle_Notas_Credito
    Left = 752
    Top = 138
  end
  object tComprobantes_Fiscales: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Aplicable'
        ParamType = ptInput
      end>
    ProviderName = 'prComprobantes_Fiscales'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 440
    Top = 183
    object tComprobantes_FiscalesDescripcion: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 35
      FieldName = 'Descripcion'
      Size = 100
    end
    object tComprobantes_FiscalesTipo: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 2
      FieldName = 'Tipo'
      Size = 2
    end
    object tComprobantes_FiscalesAplicable: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Aplicable'
      Visible = False
      Size = 2
    end
    object tComprobantes_FiscalesSucursal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Sucursal'
      Visible = False
      Size = 50
    end
    object tComprobantes_FiscalesTitulo_Impresion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Titulo_Impresion'
      Visible = False
      Size = 255
    end
    object tComprobantes_FiscalesSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Visible = False
    end
  end
  object dComprobantes_Fiscales: TDataSource
    DataSet = tComprobantes_Fiscales
    Left = 544
    Top = 183
  end
  object tOrdenes_Compra: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    ProviderName = 'prOrdenes_Compra'
    AfterInsert = tOrdenes_CompraAfterInsert
    BeforeEdit = tOrdenes_CompraBeforeEdit
    BeforePost = tOrdenes_CompraBeforePost
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 648
    Top = 183
    object tOrdenes_CompraNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Ordenes_Compra"."Numero"'
      DisplayFormat = #39'OC'#39'0000000000'
    end
    object tOrdenes_CompraProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Ordenes_Compra"."Proceso"'
      Size = 25
    end
    object tOrdenes_CompraNombre_Proveedor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Proveedor'
      Origin = '"Ordenes_Compra"."Nombre_Proveedor"'
      Size = 100
    end
    object tOrdenes_CompraFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Ordenes_Compra"."Fecha"'
    end
    object tOrdenes_CompraHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Ordenes_Compra"."Hora"'
    end
    object tOrdenes_CompraConcepto_Compra: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto_Compra'
      Origin = '"Ordenes_Compra"."Concepto_Compra"'
      Size = 100
    end
    object tOrdenes_CompraReferencia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Referencia'
      Origin = '"Ordenes_Compra"."Referencia"'
      Size = 25
    end
    object tOrdenes_CompraSubTotal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SubTotal'
      Origin = '"Ordenes_Compra"."SubTotal"'
      Precision = 12
      Size = 2
    end
    object tOrdenes_CompraTotalNeto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TotalNeto'
      Origin = '"Ordenes_Compra"."TotalNeto"'
      Precision = 12
      Size = 2
    end
    object tOrdenes_CompraComentario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario'
      Origin = '"Ordenes_Compra"."Comentario"'
      Size = 255
    end
    object tOrdenes_CompraFecha_Validacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Validacion'
      Origin = '"Ordenes_Compra"."Fecha_Validacion"'
    end
    object tOrdenes_CompraFecha_Cierre: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Cierre'
      Origin = '"Ordenes_Compra"."Fecha_Cierre"'
    end
    object tOrdenes_CompraUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Ordenes_Compra"."Usuario"'
      Size = 100
    end
    object tOrdenes_CompraValidado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Validado'
      Origin = '"Ordenes_Compra"."Validado"'
    end
    object tOrdenes_CompraCerrado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Cerrado'
      Origin = '"Ordenes_Compra"."Cerrado"'
    end
    object tOrdenes_CompraImpuesto_Global: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto_Global'
      Origin = '"Ordenes_Compra"."Impuesto_Global"'
      Precision = 12
      Size = 2
    end
    object tOrdenes_CompraValor_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Ordenes_Compra"."Valor_Impuesto"'
      Precision = 12
      Size = 2
    end
    object tOrdenes_CompraValor_Impuesto_Detalle: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto_Detalle'
      Origin = '"Ordenes_Compra"."Valor_Impuesto_Detalle"'
      Precision = 12
      Size = 2
    end
    object tOrdenes_CompraTotal_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Ordenes_Compra"."Total_Impuesto"'
      Precision = 12
      Size = 2
    end
    object tOrdenes_CompraDescuento_Global: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Global'
      Origin = '"Ordenes_Compra"."Descuento_Global"'
      Precision = 12
      Size = 2
    end
    object tOrdenes_CompraValor_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Ordenes_Compra"."Valor_Descuento"'
      Precision = 12
      Size = 2
    end
    object tOrdenes_CompraValor_Descuento_Detalle: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento_Detalle'
      Origin = '"Ordenes_Compra"."Valor_Descuento_Detalle"'
      Precision = 12
      Size = 2
    end
    object tOrdenes_CompraTotal_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Ordenes_Compra"."Total_Descuento"'
      Precision = 12
      Size = 2
    end
    object tOrdenes_CompraTerminos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Terminos'
      Origin = '"Ordenes_Compra"."Terminos"'
    end
    object tOrdenes_CompraVencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento'
      Origin = '"Ordenes_Compra"."Vencimiento"'
    end
    object tOrdenes_CompraPagado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado'
      Origin = '"Ordenes_Compra"."Pagado"'
      Precision = 12
      Size = 2
    end
    object tOrdenes_CompraPendiente: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Origin = '"Ordenes_Compra"."Pendiente"'
      Precision = 12
      Size = 2
    end
    object tOrdenes_CompraUltimoPago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'UltimoPago'
      Origin = '"Ordenes_Compra"."UltimoPago"'
    end
    object tOrdenes_CompraProveedor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Proveedor'
      Origin = '"Ordenes_Compra"."Proveedor"'
      OnValidate = tOrdenes_CompraProveedorValidate
    end
    object tOrdenes_CompraTipo_NCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_NCF'
      Origin = '"Ordenes_Compra"."Tipo_NCF"'
      Size = 2
    end
    object tOrdenes_CompraNCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCF'
      Origin = '"Ordenes_Compra"."NCF"'
      Size = 100
    end
    object tOrdenes_CompraqrDetalles_Orden_Compra: TDataSetField
      AutoGenerateValue = arDefault
      FieldName = 'qrDetalles_Orden_Compra'
    end
    object tOrdenes_CompraStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Size = 15
    end
    object tOrdenes_CompraProceso_Compra: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso_Compra'
      Size = 25
    end
    object tOrdenes_CompraCompra_Numero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Compra_Numero'
    end
  end
  object dOrdenes_Compra: TDataSource
    DataSet = tOrdenes_Compra
    Left = 752
    Top = 183
  end
  object tDetalles_Orden_Compra: TClientDataSet
    Aggregates = <>
    DataSetField = tOrdenes_CompraqrDetalles_Orden_Compra
    Params = <>
    BeforeRefresh = ChkRefresh
    Left = 648
    Top = 230
    object tDetalles_Orden_CompraProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Size = 25
    end
    object tDetalles_Orden_CompraCodigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      OnValidate = tDetalles_Orden_CompraCodigoValidate
      Size = 25
    end
    object tDetalles_Orden_CompraCodigo_Real: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo_Real'
      Size = 25
    end
    object tDetalles_Orden_CompraSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
    end
    object tDetalles_Orden_CompraDescripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Size = 100
    end
    object tDetalles_Orden_CompraCategoria: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Categoria'
    end
    object tDetalles_Orden_CompraFabricante: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Fabricante'
    end
    object tDetalles_Orden_CompraDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Departamento'
    end
    object tDetalles_Orden_CompraTipo_Producto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Producto'
    end
    object tDetalles_Orden_CompraCosto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Costo'
      Precision = 12
      Size = 2
    end
    object tDetalles_Orden_CompraPrecio_Lista: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Lista'
      Precision = 12
      Size = 2
    end
    object tDetalles_Orden_CompraCantidad: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad'
      Precision = 12
      Size = 2
    end
    object tDetalles_Orden_CompraTotal_Costo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Precision = 12
      Size = 2
    end
    object tDetalles_Orden_CompraTotal_Precio: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Precio'
      Precision = 12
      Size = 2
    end
    object tDetalles_Orden_CompraFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
    end
    object tDetalles_Orden_CompraHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
    end
    object tDetalles_Orden_CompraUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Size = 100
    end
    object tDetalles_Orden_CompraMes: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Mes'
    end
    object tDetalles_Orden_CompraAno: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ano'
    end
    object tDetalles_Orden_CompraProveedor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Proveedor'
    end
    object tDetalles_Orden_CompraImpuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto'
      Precision = 12
      Size = 2
    end
    object tDetalles_Orden_CompraDescuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento'
      Precision = 12
      Size = 2
    end
    object tDetalles_Orden_CompraValor_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Precision = 12
      Size = 2
    end
    object tDetalles_Orden_CompraValor_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Precision = 12
      Size = 2
    end
    object tDetalles_Orden_CompraTotal_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Precision = 12
      Size = 2
    end
    object tDetalles_Orden_CompraTotal_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Precision = 12
      Size = 2
    end
    object tDetalles_Orden_CompraCantidad_Devuelto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad_Devuelto'
      Precision = 12
      Size = 2
    end
    object tDetalles_Orden_CompraTipo_Beneficio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Beneficio'
      Size = 15
    end
    object tDetalles_Orden_CompraValor_Beneficio_PMayor_Contado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_PMayor_Contado'
      Precision = 12
      Size = 2
    end
    object tDetalles_Orden_CompraValor_Beneficio_PMayor_Credito: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_PMayor_Credito'
      Precision = 12
      Size = 2
    end
    object tDetalles_Orden_CompraValor_Beneficio_Detalle_Contado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_Detalle_Contado'
      Precision = 12
      Size = 2
    end
    object tDetalles_Orden_CompraValor_Beneficio_Detalle_Credito: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_Detalle_Credito'
      Precision = 12
      Size = 2
    end
    object tDetalles_Orden_CompraPrecio_Venta_Por_Mayor_Contado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Por_Mayor_Contado'
      Precision = 12
      Size = 2
    end
    object tDetalles_Orden_CompraPrecio_Venta_Por_Mayor_Credito: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Por_Mayor_Credito'
      Precision = 12
      Size = 2
    end
    object tDetalles_Orden_CompraPrecio_Venta_Detalle_Contado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Detalle_Contado'
      Precision = 12
      Size = 2
    end
    object tDetalles_Orden_CompraPrecio_Venta_Detalle_Credito: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Detalle_Credito'
      Precision = 12
      Size = 2
    end
    object tDetalles_Orden_CompraPrecio_Minimo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Minimo'
      Precision = 12
      Size = 2
    end
    object tDetalles_Orden_CompraContenido: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Contenido'
      Precision = 12
      Size = 2
    end
    object tDetalles_Orden_CompraReferencia: TStringField
      FieldKind = fkLookup
      FieldName = 'Referencia'
      LookupDataSet = tListadoProductos
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Referencia'
      KeyFields = 'Codigo_Real'
      Size = 25
      Lookup = True
    end
  end
  object dDetalles_Orden_Compra: TDataSource
    DataSet = tDetalles_Orden_Compra
    Left = 752
    Top = 230
  end
  object tListadoVendedores: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <>
    ProviderName = 'prListadoVendedores'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 648
    Top = 331
    object tListadoVendedoresNombreCompleto: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nombre del Cliente'
      DisplayWidth = 25
      FieldName = 'NombreCompleto'
      ReadOnly = True
      Size = 201
    end
    object tListadoVendedoresCedula_Rnc_Pasaporte: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Cedula_Rnc_Pasaporte'
      Size = 25
    end
    object tListadoVendedoresNombre: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Visible = False
      Size = 100
    end
    object tListadoVendedoresApellido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Apellido'
      Visible = False
      Size = 100
    end
    object tListadoVendedoresTipo_Telefono_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_1'
      Visible = False
    end
    object tListadoVendedoresTipo_Telefono_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_2'
      Visible = False
    end
    object tListadoVendedoresTipo_Telefono_3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_3'
      Visible = False
    end
    object tListadoVendedoresTipo_Telefono_4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_4'
      Visible = False
    end
    object tListadoVendedoresNumero_Telefono_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_1'
      Visible = False
    end
    object tListadoVendedoresNumero_Telefono_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_2'
      Visible = False
    end
    object tListadoVendedoresNumero_Telefono_3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_3'
      Visible = False
    end
    object tListadoVendedoresNumero_Telefono_4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_4'
      Visible = False
    end
    object tListadoVendedoresDireccion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion'
      Visible = False
      Size = 255
    end
    object tListadoVendedoresPais: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pais'
      Visible = False
      Size = 100
    end
    object tListadoVendedoresCiudad: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ciudad'
      Visible = False
      Size = 100
    end
    object tListadoVendedoresEstado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Estado'
      Visible = False
      Size = 100
    end
    object tListadoVendedoresStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Visible = False
      Size = 15
    end
    object tListadoVendedoresFecha_Registro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Registro'
      Visible = False
    end
    object tListadoVendedoresmail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mail'
      Visible = False
      Size = 100
    end
    object tListadoVendedoresSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Visible = False
    end
    object tListadoVendedoresFoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Foto'
      Visible = False
      Size = 8
    end
    object tListadoVendedoresSexo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Sexo'
      Visible = False
      Size = 25
    end
    object tListadoVendedoresSector: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Sector'
      Visible = False
    end
    object tListadoVendedoresEstado_Civil: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Estado_Civil'
      Visible = False
      Size = 15
    end
    object tListadoVendedoresZona: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Zona'
      Visible = False
    end
  end
  object dListadoVendedores: TDataSource
    DataSet = tListadoVendedores
    Left = 752
    Top = 331
  end
  object tVendedores: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Cedula_Rnc_Pasaporte'
        ParamType = ptInput
      end>
    ProviderName = 'prVendedores'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 648
    Top = 277
    object tVendedoresCedula_Rnc_Pasaporte: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cedula_Rnc_Pasaporte'
      Size = 25
    end
    object tVendedoresNombre: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Size = 100
    end
    object tVendedoresApellido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Apellido'
      Size = 100
    end
    object tVendedoresTipo_Telefono_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_1'
    end
    object tVendedoresTipo_Telefono_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_2'
    end
    object tVendedoresTipo_Telefono_3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_3'
    end
    object tVendedoresTipo_Telefono_4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_4'
    end
    object tVendedoresNumero_Telefono_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_1'
    end
    object tVendedoresNumero_Telefono_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_2'
    end
    object tVendedoresNumero_Telefono_3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_3'
    end
    object tVendedoresNumero_Telefono_4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_4'
    end
    object tVendedoresDireccion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion'
      Size = 255
    end
    object tVendedoresPais: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pais'
      Size = 100
    end
    object tVendedoresCiudad: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ciudad'
      Size = 100
    end
    object tVendedoresEstado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Estado'
      Size = 100
    end
    object tVendedoresNombreCompleto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NombreCompleto'
      ReadOnly = True
      Size = 201
    end
    object tVendedoresStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Size = 15
    end
    object tVendedoresFecha_Registro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Registro'
    end
    object tVendedoresmail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mail'
      Size = 100
    end
    object tVendedoresSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
    end
    object tVendedoresFoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Foto'
      Size = 8
    end
    object tVendedoresSexo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Sexo'
      Size = 25
    end
    object tVendedoresSector: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Sector'
    end
    object tVendedoresEstado_Civil: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Estado_Civil'
      Size = 15
    end
    object tVendedoresZona: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Zona'
    end
  end
  object dVendedores: TDataSource
    DataSet = tVendedores
    Left = 752
    Top = 277
  end
  object tCuotas: TClientDataSet
    Aggregates = <>
    DataSetField = tFacturasqrCuotas_Factura
    Params = <>
    BeforeRefresh = ChkRefresh
    Left = 224
    Top = 477
    object tCuotasProceso: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Proceso'
      Origin = '"Cuotas"."Proceso"'
      Size = 25
    end
    object tCuotasNumero: TSmallintField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Numero'
      Origin = '"Cuotas"."Numero"'
    end
    object tCuotasTipo: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Tipo'
      Origin = '"Cuotas"."Tipo"'
      Size = 25
    end
    object tCuotasFecha: TDateField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Fecha'
      Origin = '"Cuotas"."Fecha"'
    end
    object tCuotasVence: TDateField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Vence'
      Origin = '"Cuotas"."Vence"'
    end
    object tCuotasMonto: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Monto'
      Origin = '"Cuotas"."Monto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tCuotasConcepto: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 100
      FieldName = 'Concepto'
      Origin = '"Cuotas"."Concepto"'
      Size = 100
    end
    object tCuotasCapital: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Capital'
      Origin = '"Cuotas"."Capital"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tCuotasCapital_Pendiente: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Capital_Pendiente'
      Origin = '"Cuotas"."Capital_Pendiente"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tCuotasInteres: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Interes'
      Origin = '"Cuotas"."Interes"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tCuotasInteres_Pendiente: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Interes_Pendiente'
      Origin = '"Cuotas"."Interes_Pendiente"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tCuotasMora: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Mora'
      Origin = '"Cuotas"."Mora"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tCuotasMora_Pendiente: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Mora_Pendiente'
      Origin = '"Cuotas"."Mora_Pendiente"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tCuotasTotal_Pagado: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Total_Pagado'
      Origin = '"Cuotas"."Total_Pagado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tCuotasTotal_Pendiente: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Total_Pendiente'
      Origin = '"Cuotas"."Total_Pendiente"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tCuotasDias_Vencidos: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Dias_Vencidos'
      Origin = '"Cuotas"."Dias_Vencidos"'
    end
    object tCuotasFecha_Calculo_Mora: TDateField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Fecha_Calculo_Mora'
      Origin = '"Cuotas"."Fecha_Calculo_Mora"'
    end
    object tCuotasRecargo: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Recargo'
      Origin = '"Cuotas"."Recargo"'
      Size = 25
    end
    object tCuotasPrioridad: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'Prioridad'
      Origin = '"Cuotas"."Prioridad"'
      Size = 25
    end
  end
  object dCuotas: TDataSource
    DataSet = tCuotas
    Left = 328
    Top = 477
  end
  object DsImageCDS: TDataSource
    Left = 760
    Top = 578
  end
  object tCuotas_Facturas: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    ProviderName = 'prCuotas_Facturas'
    BeforeRefresh = ChkRefresh
    Left = 440
    Top = 665
    object tCuotas_FacturasProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Size = 25
    end
    object tCuotas_FacturasNumero: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
    end
    object tCuotas_FacturasTipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo'
      Size = 25
    end
    object tCuotas_FacturasFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
    end
    object tCuotas_FacturasVence: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vence'
    end
    object tCuotas_FacturasMonto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto'
      Precision = 12
      Size = 2
    end
    object tCuotas_FacturasConcepto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto'
      Size = 100
    end
    object tCuotas_FacturasCapital: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Capital'
      Precision = 12
      Size = 2
    end
    object tCuotas_FacturasCapital_Pendiente: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Capital_Pendiente'
      OnValidate = BalanceCuotasFacturas
      Precision = 12
      Size = 2
    end
    object tCuotas_FacturasInteres: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Interes'
      Precision = 12
      Size = 2
    end
    object tCuotas_FacturasInteres_Pendiente: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Interes_Pendiente'
      OnValidate = BalanceCuotasFacturas
      Precision = 12
      Size = 2
    end
    object tCuotas_FacturasMora: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Mora'
      Precision = 12
      Size = 2
    end
    object tCuotas_FacturasMora_Pendiente: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Mora_Pendiente'
      OnValidate = BalanceCuotasFacturas
      Precision = 12
      Size = 2
    end
    object tCuotas_FacturasTotal_Pagado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Pagado'
      Precision = 12
      Size = 2
    end
    object tCuotas_FacturasTotal_Pendiente: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Pendiente'
      Precision = 12
      Size = 2
    end
    object tCuotas_FacturasDias_Vencidos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Dias_Vencidos'
    end
    object tCuotas_FacturasFecha_Calculo_Mora: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Calculo_Mora'
    end
    object tCuotas_FacturasRecargo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Recargo'
      Size = 25
    end
    object tCuotas_FacturasPrioridad: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Prioridad'
      Size = 25
    end
    object tCuotas_FacturasOtros: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Otros'
      Precision = 12
      Size = 2
    end
    object tCuotas_FacturasOtros_Pendiente: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Otros_Pendiente'
      OnValidate = BalanceCuotasFacturas
      Precision = 12
      Size = 2
    end
    object tCuotas_FacturasFecha_Ultimo_Pago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Ultimo_Pago'
    end
  end
  object dCuotas_Facturas: TDataSource
    DataSet = tCuotas_Facturas
    Left = 544
    Top = 665
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
    Left = 328
    Top = 4
  end
  object SystemImages: TImageList
    Height = 24
    Width = 24
    Left = 224
    Top = 8
    Bitmap = {
      494C010143004500040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000B001000001002000000000000088
      0200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E1E3E900E0E1
      E300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E1E3E900E0E1
      E300000000000000000000000000000000000000000000000000FEF8F400CDD0
      DB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFF9F600F5EAE600F0ECEB00F8F8
      F800FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000499BF9003890
      F500D5EAFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000499BF9003890
      F500D5EAFF0000000000000000000000000000000000000000009798DE002427
      C300A0A1E3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFAF900FDFCFB0000000000D1E0E400397F98002A92B5009DB4BB00E3DE
      DD00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000005FFF00006B
      FC000C76FD00F4F9FA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000005FFF00006B
      FC000C76FD00F4F9FA00000000000000000000000000000000002C2BCB000000
      BC000000C0009FA1E40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F9F800B2C4
      CB00A0B3BA00D0CFCF00F1E8E5001E89AB0000B9F60000739B001785AB00C5CA
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000064FD000071
      FF00006EFF00197DF600D6E9FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000064FD000071
      FF00006EFF00197DF600D6E9FF000000000000000000000000002D2BCF000000
      BA000100BF000000B700ABA7EE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFCFC007EB1C1000899
      BB00027CA000467E93005C8A9B0000AFE1000FD0FF000185B1001D87AA00BBC2
      C600FEF6F300F6F3F200F8F8F800FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000064FD000376
      FB000073FE00006DFD001E83FC00D7EAFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000064FD000376
      FB000073FE00006DFD001E83FC00D7EAFF0000000000000000002B2DC3000000
      BC000000C2000000C0000000BB009F9DE8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0DEE400199FBE0021E0
      FF001DD1F8000A9FC8000CABD60013CFFF000FCDFF00028CB900186C8900A6AF
      B20080B1C100A6B9BF00E2DEDD00FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000062FD000274
      FE000173FA000072FF00006FFE00147BF900F2FEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000062FD000274
      FE000173FA000072FF00006FFE00147BF900F2FEFE00000000002E30C6000000
      BF000300BF000102BC000000B9000000C000A7A4EC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E5EBEE003DB3CB0022DD
      FD002AE0FF0036E7FF003EEBFF003EE7FB0029DAFE000FC6FE000088B5000090
      C30000739E001186AE00B5BCC000F8F6F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000066FE000471
      F7000274FD000172FA000173FD000069FF00167CFB00E2F1FD00F8FCFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000066FE000471
      F7000274FD000172FA000173FD000069FF00167CFB00E2F1FD00F8FCFD001512
      C1000000BC000000C1000600C4000000BD000000BC00AEAAE800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFAFB0056A8BF0020D5
      F2003AE7FD0032E4FF0029E5FF002AE3FF003FEAFE002DDCFD000AC8FF000BCB
      FF0007B1EA0000759D0086AAB600FBF6F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000062FC000077
      FE000773F8000172FE000275FB000072FF000073FD002389F800E6F4FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000062FC000077
      FE000773F8000172FE000275FB000072FF000073FD002389F800E6F4FF00DEDD
      F7001E23C8000000BF000000C2000003C1000000C0000100BC00A6A3E6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFE00E7E0E00051ACC1002FDE
      F4002FE8FF001DC7E900007699000074990018C1EA0045EEFE0014CAFF000BC8
      FF000186B1000678A000ADC6CF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000066FC000273
      FD000171FE000074FF000374FC000072FC00026FFE00006FFB00127AFF00FFFF
      FA00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000066FC000273
      FD000171FE000074FF000374FC000072FC00026FFE00006FFB00127AFF00FFFF
      FA00E5E2F2001716C4000000BA000000C0000400C0000000BC000000C200ABAA
      E600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E7EEF10080AEBE00008FB1002BE1F50038EE
      FF0026D4F000006B8C003B819B004889A000007399002DD9F7002ADCFF000699
      C70002779E0096B2BC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000063FF000072
      FF000073FF000072FF000072FF000072FF000175FD000072FD00006EFF001581
      F800E7F6FF00FFFEFB0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000063FF000072
      FF000073FF000072FF000072FF000072FF000175FD000072FD00006EFF001581
      F800E7F6FF00FFFEFB001013C0000000BB000000B9000302C4000100B8000000
      B900B4B3E800000000000000000000000000000000000000000000000000FFFD
      FC00EDEDEC00F9F0EE00E6E6E60030A0C4000099CF000783A80029C2D70037F3
      FF001FBDD80000577900EBF2F400E4ECF000066C8D0021CDF20030E0FE000694
      C2000A739600E1D3CE00F0EEEE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000063FF000073
      FF000073FF000073FF000073FF000072FF000074FD000272FC000073FE00006D
      FF00298AFD00E9FAFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000063FF000073
      FF000073FF000073FF000073FF000072FF000074FD000272FC000073FE00006D
      FF00298AFD00E9FAFF00DAD2F6001E1AC6000000BE000200BE000201BC000200
      C3000100C200A9A8E50000000000000000000000000000000000EDF2F2001D81
      A1001882A6005E91A30064A6BC0002BFFB000ACAFF000270990022B2C7003CFB
      FF0020BBD600004F7300EBF4F600C4D7DE00006D920025D3F6002EE0FF000FB9
      EC000187B4005A92A500DDD6D400FBFAFA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000063FF000073
      FF000073FF000073FF000073FF000072FF000273FD000476FC00016FFD000771
      FF00006BFB001480FB0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000063FF000073
      FF000073FF000073FF000073FF000072FF000273FD000476FC00016FFD000771
      FF00006BFB001480FB00000000008B8ADB000000BC000002C2000004BD000100
      BE000000BE000000B500BABBED000000000000000000000000002295B2001DE9
      FF001AD6FF00008AB00006AFDF0011CEFF000CC7FF00016A8E001DA0B70030DD
      EE0028CBE2000472930000597A000060820012AED20033E5FF0024D8FE0016D5
      FF000995C2000A87B300A4B9C000FFFDFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000063FF000073
      FF000073FF000073FF000073FF000072FF000274FD000073FD000677FD000074
      FC000072FF00005CFA00E0F8FD00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000063FF000073
      FF000073FF000073FF000073FF000072FF000274FD000073FD000677FD000074
      FC000072FF00005CFA00E0F8FD00AAA6E9000300C4000100BC000000BE000301
      BF000400C0000000BB005C68D60000000000000000000000000037AFC90023E3
      FF0022DBFF001FDBFF0019D3FF0014CCFF000FC8FF000697C6000AA3D3000581
      AA000F92B40024C0D90019ABC7001CBCDA0029E1FF0037E8FF001ED8FF0018D4
      FF000695C1001F81A400DCE0E100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000063FF000073
      FF000072FF000072FF000072FF000073FF000571FC000372FF000670FD000074
      FD00006AFC004299FF00FFFFFC00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000063FF000073
      FF000072FF000072FF000072FF000073FF000571FC000372FF000670FD000074
      FD00006AFC004299FF00FFFFFC007674DA000000C0000300C1000002BD000200
      C0000000C1001916C200D5D4F200000000000000000000000000529EB60023E8
      FF0026DEFF0022DEFF001CD9FF0017D3FF0012CBFF000DC9FF000AC9FF000BB8
      EF000783AB0027C6DA0035F5FF002FE9FF0035E8FF001DAFD3000596C300008F
      BC00007EAE007DABBB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000063FF000073
      FF000072FF000072FF000073FF000072FF000076FD000074FD000071FB00006B
      FE00439BFE000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000063FF000073
      FF000072FF000072FF000073FF000072FF000076FD000074FD000071FB00006B
      FE00439BFE0000000000BBBCEF000303BD000000C0000004B9000600C1000000
      BE000C0EC100D4D1F1000000000000000000FFFDFD00D0DFE70043A8C1002AED
      FF0026DAF9000588AB00016383000997BF0016CEFF0010CAFF000CC2FD000483
      AF000C8AAF002ACDE40037F0FF0037EAFF0025C8E7000088B80097A9B000FFFF
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000062FF000173
      FE000374FB000174FC000073FD000572FC000071FE000074FD000067FA005AA7
      FE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000062FF000173
      FE000374FB000174FC000073FD000572FC000071FE000074FD000067FA005AA7
      FE0000000000C8C5EF000000B8000000C2000003B7000401C3000000BB00060B
      BC00F5E9F50000000000000000000000000072C4D7002AC7DC002CE9FE0031EB
      FF000996B600538FA5009BBECA0016718F0012C4F20012CEFF000BA3D300057E
      A5000B8DB6001EA1C60033E7FA0035EFFF001EBFE4000078A400C3C8CA00FDFB
      FB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000064FD000471
      FB000074FD000174FD000270FE000573FD000375FC00006BFB004E96FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000064FD000471
      FB000074FD000174FD000270FE000573FD000375FC00006BFB004E96FF000000
      0000BDB6EC000405C1000000C1000600BF000202C4000000BB001C18C700C7C6
      F300000000000000000000000000000000000EB0CC003CFDFF0038F1FF002EDF
      F60000719400EBF0F2000000000033809A0012C3EF0016D1FF000BA4D400006C
      8F008EADBA00B3CED90022B7DC0028E4FA000DAFDB0000699000FFF3EF00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000065FA000174
      FD000175FF00006FF9000177FF000676FA000068FF004798FE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000065FA000174
      FD000175FF00006FF9000177FF000676FA000068FF004798FE0000000000C5C5
      E9000205C2000000C0000001B5000100C1000000BE000E0EC100CECDEF000000
      00000000000000000000000000000000000016C3DC0033F0FC003BF5FF0033E7
      F900007D9D0072A2B40072A2B4000385A8001CD4FD001AD4FF0013C6F7000295
      C4004C859800EDD9D40071C4E0003EB1D9004CACCE00B9D4DD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000065FD000072
      FC000171FC000175FF000172F8000066FC0057A3FE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000065FD000072
      FC000171FC000175FF000172F8000066FC0057A3FE0000000000CBC2EB000000
      B5000000C0000202BC000201C4000000BE00080ABE00EDEDF800000000000000
      000000000000000000000000000000000000B2DBE8006BD0E3003CEEFA0039F4
      FF0026C7DD00007697000489AB0020CFF10022DDFF001BD5FF0018D6FF00049B
      CA002C789200DBD7D600FFFDFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000064FC000371
      FE000075FE000273F900006AFE003C95FE00FFFFFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000064FC000371
      FE000075FE000273F900006AFE003C95FE00FFFFFA00000000002E28CB000000
      B5000200C3000100C2000000BD001A15C600C6C6ED0000000000000000000000
      000000000000000000000000000000000000000000009ECBDE0036E7F5003CF5
      FF0037F0FF0030E3F9002DE3FE002AE5FF0023DBFD0019D5FF0008AFDE000078
      A50095ACB500F5F1EF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000062FD000475
      FB000574F9000068FC003F98FE00F3F8FC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000062FD000475
      FB000574F9000068FC003F98FE00F3F8FC000000000000000000282BCA000000
      BC000500C1000000BA00080ABF00C5C5F1000000000000000000000000000000
      000000000000000000000000000000000000F5F6FA0065E5F30035F5FF003FF9
      FF003BF4FF0036EFFF0031EBFF0026D4F3000381AB00528DA30078B4C800ABC9
      D300FFFEFC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000062FF000373
      FD000067FE0057A2FA00FFFFFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000062FF000373
      FD000067FE0057A2FA00FFFFFC000000000000000000000000002D2BCD000000
      BA000000B8000505C500F1E6F500000000000000000000000000000000000000
      000000000000000000000000000000000000EFF6FA0051D4EA0031F6FF001DC3
      E10015AFD00034E9FA0035F0FF001EC0E400006F9800BEBDBE00FFF6F3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000005CFC000067
      FD003A91FB00FFFEFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000005CFC000067
      FD003A91FB00FFFEFF00000000000000000000000000000000002E28CB000000
      BD001614C600C5C5EF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D3EEF70041C3E3003B97
      B800A2BECD003CE3F4002FF4FF0010BEE600036A8C00E6DAD700F8F8F8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084BBFE0076B2
      FF00E9F5FE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084BBFE0076B2
      FF00E9F5FE000000000000000000000000000000000000000000C2C7F000524E
      D200CBC8F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000091D3EA004BB6D8004DA3C100BACED500FFFCFB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BF9E5F00CCA46400CCA46400CCA46400CCA46400CCA46400CCA46400CCA4
      6400CCA46400CCA46400CCA46400CCA46400CCA46400CCA46400CCA46400CCA4
      6400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CDD0DB00FEF8F40000000000000000000000000000000000000000000000
      0000E0E1E300E1E3E90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CDD0DB00FEF8F40000000000000000000000000054BDD7000AB5D30008B0
      E000089CCE002AA8D2007FB2C300CACACA00E7E7E700EBEAEA0094847A00AAA2
      9C00CCCCCC00DFE0DF0072AB7300DADADA00E6E6E60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CDAC6E00E0D1BD00D7C2A300D7C4A700D7C4A700E1D0B800DED0B600D7C2
      A300D5BFA100D5BF9E00D5BF9C00DECAAA00DCC7A700D1B78C00E8DCCD00CAAB
      7300000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A0A1
      E3002427C3009798DE000000000000000000000000000000000000000000D5EA
      FF003890F500499BF90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A0A1
      E3002427C3009798DE0000000000000000000000000079E8F60024CEE50021C5
      DF0016B2D30008B3E10003B5F0008FBAC800C6C4C20089776A00C4B8B100C8BB
      B100969185004A914B001B811D00C4C4C400DFDFDF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D1B9
      8800D8BC7A00F8F0E800F0E8DC00F0E8DC00F4ECD800F4ECD400F8F0D000F4E8
      D000FCECC800FCECC800ECE0C800E8DCC400E8DCC400E8D4B800F0E4D000E0CC
      9800000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009FA1E4000000
      C0000000BC002C2BCB0000000000000000000000000000000000F4F9FA000C76
      FD00006BFC00005FFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009FA1E4000000
      C0000000BC002C2BCB00000000000000000000000000C2E1EA0024E4F4000FCB
      F50002B9F30000B5F20008A6DA0057A9C30085726500DAD0CA00EAE4E500D0D0
      C2003B8836001F89210029A12F00BFBFBF00D1D1D100E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E40000000000000000000000000000000000CAB5
      8900E8DCB400F4F0E800F0E4C000FCF8C800F8F0D000F0E4D000C8C0D000ECE4
      CC00C0B8C800A09CC800FCF0BC00FCE8B400FCE4AC00E0C89400ECE0C400E4D4
      B000D8C0B0000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ABA7EE000000B7000100
      BF000000BA002D2BCF00000000000000000000000000D6E9FF00197DF600006E
      FF000071FF000064FD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ABA7EE000000B7000100
      BF000000BA002D2BCF0000000000000000000000000035E8F9004FE8F7002BD1
      E80006A8D700019DCF0001A2D7003497B500E3DAD500ECE9EC00C9DBD200328A
      3400249428002AA330002AA33000378E3800388F3900388F3A00388F3A00388F
      3A00388F3A00388F3A003B8A3C0000000000000000000000000000000000C4A8
      7C00F0E8D00000000000F4F0E4005454E4002C28E4001C20E4002424DC00D4C8
      BC003C40C8000000CC00343CBC003C40AC008884AC00F0E0B400ECE4D000E8D8
      B800DCC4A4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009F9DE8000000BB000000C0000000
      C2000000BC002B2DC3000000000000000000D7EAFF001E83FC00006DFD000073
      FE000376FB000064FD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009F9DE8000000BB000000C0000000
      C2000000BC002B2DC3000000000000000000000000002BC8ED0095E7F9002DE2
      F5000DD6F10011CFEF0003BBED0000B4F00089D2EF00B3CFBA0024882600289D
      2D002AA330002AA330002AA330002AA330002AA330002AA330002AA330002AA3
      30002AA330002AA33000197C1A0000000000000000000000000000000000CCA4
      6400F4F0E400FCFCF800FCFCE8001010FC00C0BCE800FCFCDC00F8F0D800FCFC
      D800D4CCD000BCB8CC00FCF8CC003C48C0004854BC00FCF0BC00E4D8C000ECE0
      C800E4D0A8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A7A4EC000000C0000000B9000102BC000300
      BF000000BF002E30C60000000000F2FEFE00147BF900006FFE000072FF000173
      FA000274FE000062FD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A7A4EC000000C0000000B9000102BC000300
      BF000000BF002E30C60000000000000000000000000006BFEC0026D9F80034E0
      F90024BAE10038C6E70036F6FF0025E0F4002CBCED001E7F1F002AA22F002AA3
      30002AA330002AA330002AA330002AA330002AA330002AA330002AA330002AA3
      30002AA330002AA33000197C1A0000000000000000000000000000000000D0B0
      6400F8F4F000F4F4F400FCFCE800A8A4EC002424F000B4B4E000F8F0D800F0E8
      D800F4ECD000FCF8CC00ECE0C8002030C000E8DCC000F4E0BC00E4D8B800F0E8
      D400E0CCA0000000000000000000000000000000000000000000000000000000
      00000000000000000000AEAAE8000000BC000000BD000600C4000000C1000000
      BC001512C100F8FCFD00E2F1FD00167CFB000069FF000173FD000172FA000274
      FD000471F7000066FE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AEAAE8000000BC000000BD000600C4000100BC000100
      BC000100BC000100BC0000000000000000000000000028BAE40022DEFE001AE4
      FD002EC4E70043F2FD002DF8FF0029F5FC0044A7E100518B70002696290044C5
      4B0046C84D004DD0540051D6580046C84D0048CA4F0050D4560050D4560050D4
      560050D4560050D45600197C1A0000000000000000000000000000000000D0B4
      6C00FCFCF800F8F4F000FCFCE800C8C4E8000000F800948CE400FCFCD800ECE0
      D400ECE4D000FCFCD0004850C800686CC400FCF8C000E4D4BC00E8D4B800F4EC
      DC00CCBC98000000000000000000000000000000000000000000000000000000
      000000000000A6A3E6000100BC000000C0000003C1000000C2000000BF001E23
      C800DEDDF700E6F4FF002389F8000073FD000072FF000275FB000172FE000773
      F8000077FE000062FC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A6A3E6000100BC000000C0000003C1000000C2000100BC000100
      BC000100BC000100BC00000000000000000000000000BFC0BF004696AD003BBA
      E4003DC1EB0056C8EC005EC5E7008ABAC000C0C2F100BCBCEF0093BB97002791
      27004ED1550059E0600059E0600028962B0028962B0028962B0028962B002896
      2B0028962B0028962B00197C1A0000000000000000000000000000000000CCB0
      740000000000F8F4EC00F8F4EC00FCFCE400F8F0E000E8E4DC00FCF8D800F0E8
      D800F0E4D000F8ECCC00D0C8C800F0E0C400ECE0C000ECDCBC00E8D4B000F4EC
      DC00D4B894000000000000000000000000000000000000000000000000000000
      0000ABAAE6000000C2000000BC000400C0000000C0000000BA001716C400E5E2
      F200FFFFFA00127AFF00006FFB00026FFE000072FC000374FC000074FF000171
      FE000273FD000066FC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ABAAE6000000C2000000BC000100BC000100BC000100BC000100BC000100
      BC000100BC000100BC000000000000000000BCB1AA00AE9E9200E0D4CC00DCCF
      C400DCCDC300D8C8BD00DFCABA00F8A75A00EFECF300E0D9DC00BA9F9000B3CF
      BA00218025003EB9430058DF5F00CDB69B00BA966600BB996900D8C7B500927E
      6D00A0969000C8C8C800DDDDDD0000000000000000000000000000000000D4B8
      7C0000000000F8F4EC00F8F4EC00F4F0E800FCFCE0003C3CEC007878E400FCFC
      D000D0C4D4000000D4009090C800FCF4C400E4D8C000ECDCBC00E4D4B000F4EC
      DC00E0C89400000000000000000000000000000000000000000000000000B4B3
      E8000000B9000100B8000302C4000000B9000000BB001013C000FFFEFB00E7F6
      FF001581F800006EFF000072FD000175FD000072FF000072FF000072FF000073
      FF000072FF000063FF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B4B3
      E8000000B9000100B8000302C4000100BC000100BC000100BC000100BC000100
      BC000100BC000100BC00000000000000000094827500E2D7CE00DED1C700DFD1
      C800DFD2C800BDA28F00CDB9AA00E1D6CE004B4BD800CDCDF300EAE8F100D2C4
      C000B6C4D400328738002B9B2E00ECEAF100C1A37C00B7925F00B7925E00D7C5
      B0009B86750094867D00C5C5C500000000000000000000000000E8DCB400DCC4
      880000000000F8F4EC00F8F4EC00F4F0E800FCFCE400DCD4E0000000EC00ECE4
      D400A8A4D4000810D400A8A4C800F8ECC400E8D8C000ECDCBC00E4D4AC00F4EC
      DC00E4D0A0000000000000000000000000000000000000000000A9A8E5000100
      C2000200C3000201BC000200BE000000BE001E1AC600DAD2F600E9FAFF00298A
      FD00006DFF000073FE000272FC000074FD000072FF000073FF000073FF000073
      FF000073FF000063FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A9A8E5000100
      C2000200C3000201BC000200BE000100BC000100BC000100BC000100BC000100
      BC000100BC000100BC000000000000000000A6978C00B6A59900E1D5CC00D6C6
      BB00B6978200E2D7CE00D6C5B900CEBAAC00B9B1D200E5E1E400E9E6ED00C8B4
      AB00ECEBF400B9C0E200226D4900EFEFF900E6DFDF00BA966500B68F5900B48D
      5400D4BFA600A4907E0089786C00000000000000000000000000CCA46400CCA4
      640000000000F8F4EC00F8F4EC00F4F0E800F0ECE400FCFCDC00A8A4E0000000
      EC001C24DC00F0E8CC00FCF4C800E8DCC400ECDCC000ECDCBC00E4D4B000F0E8
      D800E0D0A80000000000000000000000000000000000BABBED000000B5000000
      BE000100BE000004BD000002C2000000BC008B8ADB00000000001480FB00006B
      FB000771FF00016FFD000476FC000273FD000072FF000073FF000073FF000073
      FF000073FF000063FF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BABBED000000B5000000
      BE000100BE000004BD000002C2000100BC000100BC000100BC000100BC000100
      BC000100BC000100BC000000000000000000FCFBFB0095837600C6B8AD00E5DA
      D200DFD2C900D4C3B700DBCCC200D3C1B400E5DBD300C6AF9F00D6C8C500EFEF
      F900BCA29300E1DADD00E7E9F300EFEFF900EFEFF900DED3CB00B7915C00B48C
      5200B2894D00D1BA9C00AF9B8800000000000000000000000000C8B48C00E8DC
      B40000000000F8F4EC00F8F4EC00F4F0E800F4F0E400F0E8DC00FCFCD8008484
      DC00C4BCD400FCF8CC00E8DCC800ECE0C400ECDCC000ECDCBC00E8D4B000ECE4
      CC00E8D4B800E0CCBC000000000000000000000000005C68D6000000BB000400
      C0000301BF000000BE000100BC000300C400AAA6E900E0F8FD00005CFA000072
      FF000074FC000677FD000073FD000274FD000072FF000073FF000073FF000073
      FF000073FF000063FF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005C68D6000000BB000400
      C0000301BF000000BE000100BC000100BC000100BC000100BC000100BC000100
      BC000100BC000100BC00000000000000000000000000F7F5F400907C6F00D3C6
      BE00E6DCD400BDA28F00E4D9D100DFD2CA00B4968000EAE1DB00DCCEC500CDBC
      B500E6E2E800EFEFF900EFEFF900EFEFF900EFEFF900BFBFC7008D7D6A00B48C
      5300B1884C00AF844400CBB18D00000000000000000000000000CCA47000F4EC
      D40000000000F8F4EC00F8F0E800F4ECE000F4ECE000F4ECE000F0E8DC00FCFC
      D800FCF4D400ECE4D000ECE0C800ECDCC000ECDCBC00E8D8BC00E4D4B400E8DC
      C000ECE0C400E8D6B000000000000000000000000000D5D4F2001916C2000000
      C1000200C0000002BD000300C1000000C0007674DA00FFFFFC004299FF00006A
      FC000074FD000670FD000372FF000571FC000073FF000072FF000072FF000072
      FF000073FF000063FF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D5D4F2001916C2000000
      C1000200C0000002BD000300C1000100BC000100BC000100BC000100BC000100
      BC000100BC000100BC0000000000000000000000000000000000F3F1F0009381
      7300DDD3CB00EBE3DD00C2A99800DED1C700E9DFD900D4C3B600E5DBD500DCCE
      C400EFEDF300EFEFF900EFEFF900E1E1EA00606064001008010078410D00806A
      5000B2894D00B0854500AD813E00000000000000000000000000D0B06800F4F0
      E000FCFCFC00FCFCF8000000000000000000F8F8F400F8F0E800F4ECE000ECE4
      D400F0E4D400F0E4D000F0E4D400F0E8D800F0E8D800ECE0CC00E8D8BC00E8D8
      B800F0E4D000DCD0A40000000000000000000000000000000000D4D1F1000C0E
      C1000000BE000600C1000004B9000000C0000303BD00BBBCEF0000000000439B
      FE00006BFE000071FB000074FD000076FD000072FF000073FF000072FF000072
      FF000073FF000063FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D4D1F1000C0E
      C1000000BE000600C1000004B9000100BC000100BC000100BC000100BC000100
      BC000100BC000100BC000000000000000000000000000000000000000000F3F1
      F00098857900E1D9D200E1D4CB00E9E0DA00E9E0DA00C7AF9F00EDE5DE00F1EB
      E700F1ECE800F0EEF30095959B0011111200653507009855170067462F006043
      2E00816A4F00B0854600AD814000000000000000000000000000D4B46C000000
      000000000000F4ECDC00E0CC9800D4B46C00D0AC5800CCA44C00C8A03C00CCA4
      4C00C49C3C00C8A03C00CCA44A00CCA85200D0AC5C00D8C08800E8D8B400ECE0
      C800F4F0E000CCB498000000000000000000000000000000000000000000F5E9
      F500060BBC000000BB000401C3000003B7000000C2000000B800C8C5EF000000
      00005AA7FE000067FA000074FD000071FE000572FC000073FD000174FC000374
      FB000173FE000062FF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5E9
      F500060BBC000000BB000401C3000100BC000100BC000100BC000100BC000100
      BC000100BC000100BC0000000000000000000000000000000000000000000000
      0000F5F3F2009D8B8000E3DBD600D0BEB000D2BFB200F3EEEB00F1ECE700EBE3
      DD00C9C6C30037363500321A020097510F00774D2A0063453000634530006345
      300060432E007E664A00AE824100000000000000000000000000CCB88000F4EC
      D000D0AC5800C69A3600CCA85400D4B47000E0C89800E8D8B800ECE0C800F0E4
      D400F0E8D800F4ECDC00F0E8D400ECDCBC00E0CC9800D4B46C00C49C3800CCA4
      5000ECE0C400D4B8900000000000000000000000000000000000000000000000
      0000C7C6F3001C18C7000000BB000202C4000600BF000000C1000405C100BDB6
      EC00000000004E96FF00006BFB000375FC000573FD000270FE000174FD000074
      FD000471FB000064FD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C7C6F3001C18C7000000BB000202C4000600BF000000C1000100BC000100
      BC000100BC000100BC0000000000000000000000000000000000000000000000
      000000000000FAF9F900A3938900DFD9D300F6F2EF00F2EDE800D2BFB200CBB6
      A700D4CECA0038302800C4660A0067462F006345300063453000634530006345
      30006345300061432F00AE824100000000000000000000000000BC8C2C00C49C
      3800D8B87C00E4D4B400E8DCC400ECE0C800ECE0C800ECE0C800ECE0CC00F0E4
      D000F0E8D800F4ECE000F8F0EC00F8F8F8000000000000000000FCFCFC00E4D0
      A000C0902000CCA4480000000000000000000000000000000000000000000000
      000000000000CECDEF000E0EC1000000BE000100C1000001B5000000C0000205
      C200C5C5E900000000004798FE000068FF000676FA000177FF00006FF9000175
      FF000174FD000065FA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CECDEF000E0EC1000000BE000100C1000001B5000100BC000100
      BC000100BC000100BC0000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00AC9E9300D7CFC900D5C5B800CAB4A500D1BE
      B000F4F1ED00E9E7E60063524200A7590D00724A2B0063453000634530006345
      30005A3F2D0056433500AE824100000000000000000000000000C0902000E4D0
      AC00E4D0B000E4D0A800E4D0AC00E8D4B000E8D8B800ECDCC000ECE0C800F0E4
      D000F0E8D400F4ECDC00F4ECE000F4F0E400F8F4E800F8F4F000000000000000
      0000F4ECD800C094280000000000000000000000000000000000000000000000
      00000000000000000000EDEDF800080ABE000000BE000201C4000202BC000000
      C0000000B500CBC2EB000000000057A3FE000066FC000172F8000175FF000171
      FC000072FC000065FD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EDEDF800080ABE000000BE000201C4000100BC000100
      BC000100BC000100BC0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BEB4AD00BDB0A600D9C9BE00F9F6
      F400FEFDFD00FEFEFD00FEFEFE00A19E9A0080481100834F2100594233006653
      4500B1A59C00E3DFDD00AE824100000000000000000000000000C4983400E8D8
      BC00E0CCA400E4CCA400E4D0AC00E4D4B400E8D8BC00ECDCC000ECE0C800F0E4
      D000F0E8D400F4ECDC00F4ECE000F4F0E800F8F4EC00F8F4F000F8F8F4000000
      0000FCFCFC00C8A0440000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6ED001A15C6000000BD000100C2000200
      C3000000B5002E28CB0000000000FFFFFA003C95FE00006AFE000273F9000075
      FE000371FE000064FC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6ED001A15C6000000BD000100C2000200
      C3000000B5002E28CB0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D7D0CB00A0908400EBE7
      E500FFFFFF00FCFBFB00D3CCC700A191860084706400B1A59C00E1DDDA00EEEE
      EE00E4E4E400DDDDDD00AE824100000000000000000000000000D0AC5C00C49C
      3C00E0CCA000E8D8BC00E8D8BC00E8D8BC00E8D8BC00E8DCC000E8DCC400ECE0
      CC00F0E4D000F0E8D800F4ECE000F8F4EC00FCFCFC000000000000000000F4EC
      DC00C8A03C00E4D4AC0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C5C5F100080ABF000000BA000500
      C1000000BC00282BCA000000000000000000F3F8FC003F98FE000068FC000574
      F9000475FB000062FD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C5C5F100080ABF000000BA000500
      C1000000BC00282BCA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0EDEC009887
      7B00907D70008A776A00B1A59C00E5E1DE000000000000000000D5D5D5009090
      9000585858002E2E2E000403020000000000000000000000000000000000DCC2
      8400C69A3600CAA24600D8B87C00E0CCA000E8D8BC00F0E4D400F4ECE000F4EC
      E400F8F0EC00F8F4F000F8F4F000F4F0E400F0E4CC00E0CC9800D0AC5A00CCA4
      4800ECE0C0000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1E6F5000505C5000000
      B8000000BA002D2BCD00000000000000000000000000FFFFFC0057A2FA000067
      FE000373FD000062FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1E6F5000505C5000000
      B8000000BA002D2BCD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0EDEC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8D8B000D4B66E00CAA44800CAA44800CAA44800C8A04400CEAE
      5E00D0AC5A00CCA85000CCA85400CCA44A00CCA44800D8BC7A00ECDEBE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C5C5EF001614
      C6000000BD002E28CB0000000000000000000000000000000000FFFEFF003A91
      FB000067FD00005CFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C5C5EF001614
      C6000000BD002E28CB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001E1E1E004E4E
      4E00818181000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CBC8
      F400524ED200C2C7F0000000000000000000000000000000000000000000E9F5
      FE0076B2FF0084BBFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CBC8
      F400524ED200C2C7F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00F8F8F800F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F8F8F800FDFDFD000000000065BFD7001AB1CF001AA6
      D3001F9DC60047A8C800A6BCC400D0D0D000ECECEC00F2F2F200AA9F9600BCB8
      B500D0D0D000E8E8E800FAFAFA00FFFFFF00FFFFFF006565DA00D2D2D400D9D9
      D900F1F1F100FEFEFE0000000000000000000000000000000000FFFEFD00EEED
      EC00ECEFF200F6F7F90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3DABB003D862300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00F0F0F000E5E5E500E1E1
      E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1
      E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1
      E100E1E1E100E1E1E100E5E5E500F1F1F10000000000ABF3FC002BDEF00027DB
      F10016C6E60004B9EC000FB4EB009EBCC600D1D0D0009A8C8200A8999000B2A2
      9700ACA6A200CCCCCC00E1E1E100EEEEEE00F2F2F2000000CC003C3CCC00BCBC
      C300D4D4D400EEEEEE00FDFDFD00000000000000000000000000EEE4D800B26A
      2000C7A88900D1CAC300EDEEF000F7F7F700FDFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F4F8F20086B476003E8A24003D862300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D3C1A600A2742E009F6D1F00A16D
      1D00A36E1B00A56E1A00A76F1800A96F1700AB701500AD701300AB6F1300A96D
      1200A76B1100A5691100A3671000A2660F00A0640F009E620E009C600D009A5E
      0D00985C0C009C641A00C1AB8E00E5E5E500000000007DC6D9001BD9EB0004BC
      F20000B7F50004AEE7000AA6D80068B3CC0086746800C5B9B200E8E1DE00E1D6
      CD00B3A29400A49C9700C5C5C500CECECE00D2D2D2000000CC002121D6002828
      C900AFAFC200D1D1D100EBEBEB0000000000000000000000000000000000A95B
      0D00A7510000A95F1400B9C0C700DBDBDC00ECECEC00F7F7F700FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DBE9D60055953F00489F2900C2D9BA003D862300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009B6F2800FEF8E100FEF8E100FEF8
      E100FEF8E100FEF8E100FEF8E100FEF8E100FEF8E100FEF8E100AA6D1200FEF8
      E100FEF8E100FEF8E100FEF8E100FEF8E1009D610E00FEF8E100FEF8E100FEF8
      E100FEF8E100FEF8E1009B631800E3E3E3000000000053E7F80047ECFA002EDB
      EF0007A9D600019CCB0001A5DD003B8DA500DAD0CA002F2ED1003030D5002F2F
      D4002B27C7002622C3001F1DBF002626C9002626C9000000CC004C4CE2003535
      DB001919CB009E9EC200CDCDCD0000000000000000000000000000000000D9C0
      A600A54C0000B4773A00B7BEC400B6B6B600C3C3C300DCDCDC00E9EAEB00F6F7
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009EC391003E8924004FAF2E005BC93500CEE0C8003D8623003D8623003D86
      23003D8623003D8623003D8623003D8623003D8623003D8623003D8623003D86
      230000000000000000000000000000000000966A2600FEF8E100FEF8E100FEF8
      E100FEF8E100FEF8E100FEF8E100FEF8E100FEF8E100FEF8E100AC701400FEF8
      E100FEF8E100FEF8E100FEF8E100FEF8E100A1650F00FEF8E100FEF8E100FEF8
      E100FEF8E100FEF8E1009A5E0D00E3E3E3000000000032D8F400B0E6F30039E3
      F60000CEF10000C3F00000B7F00006AFE900ADD9EC000000CC003D3DDE003D3D
      DE003D3DDE003D3DDE003D3DDE003D3DDE003D3DDE003D3DDE004C4CE2004C4C
      E2004242DF001818D0009090C20000000000000000000000000000000000F8F6
      F400D1BCA800F6F8FA00DDDEDE00CECECE00C4C5C600BEBBB600CBB7A200E1E3
      E400F6F6F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7F0E4006EA4
      5A00418C27005EB2410068C249006BC94B00B3E5A200ADE49A00ADE49A00ADE4
      9A00ADE49A00ADE49A00ADE49A00ADE49A00ADE49A00ADE49A0091CC7C004496
      27000000000000000000000000000000000091692900C3954700C3954700C395
      4700C3954700C3954700C3954700C3954700C3954700C3954700A86F1700C395
      4700C3954700C3954700C3954700C3954700A5691100C3954700C3954700C395
      4700C3954700C39547009D610E00E3E3E3000000000008BCEF001DD7F3003ADF
      F90034CBEB003ECEEB003AEBFA001ED0ED0037C2F2000000CC004C4CE2004C4C
      E2004C4CE2004C4CE2004C4CE2004C4CE2004C4CE2004C4CE2004C4CE2004C4C
      E2004C4CE2004A4AE1000505CC00000000000000000000000000000000000000
      0000EFF1F400F2F3F400F5F5F500E2E2E200D9DDE200C09D7A00B4691C00B999
      7A00E6EDF500F5F6F60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000055953F003D87
      230074B05F007EBA690081C16A0083C76C0086CE6E0089D470008BD770008CD9
      71008CD971008CD971008CD971008CD971008CD971008CD9710078C45D004496
      270000000000000000000000000000000000966E2D00FEF9E700FEF9E600FEF9
      E500FEF9E400FEF8E200FEF8E100FEF8E100FEF8E100FEF8E100A46E1B00FEF8
      E100FEF8E100FEF8E100FEF8E100FEF8E100A96C1200FEF8E100FEF8E100FEF8
      E100FEF8E100FEF8E100A0640F00E3E3E3000000000016BAE6001AE3FF0017E6
      FC0023B3DE004AEEFA0017FBFF001CF9FE0038AFE2000000CC009999F0009999
      F0009999F0009999F0009999F0009999F0009999F0009999F000A6A6F2009999
      F0009999F0005858E2005D5DD500000000000000000000000000000000000000
      0000FCFCFC00EAEAEA00FDFDFD00F1F1F100E8EEF500C0814200AE5D0A00AF5E
      0D00B9A08500E1E5EA00F4F5F600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DBE9D600629D
      4C004C8F340085B4740099C58A009CCA8C0092C97F0089C873008BCE74008ED4
      760090D9770091DB780091DB780091DB780091DB780091DB78007CC562004496
      2700000000000000000000000000000000009F763200FEFAEA00FEFAE900FEFA
      E700FEF9E600FEF9E500FEF9E400FEF8E300FEF8E200FEF8E1009F6D1E00FEF8
      E100FEF8E100FEF8E100FEF8E100FEF8E100AD701300FEF8E100FEF8E100FEF8
      E100FEF8E100FEF8E100A3671000E3E3E30000000000BACFD60029A2C80037C2
      EF0043CBF20058D3F30076D4F0005DBCDC0095A0E9000000CC003A3ADB003A3A
      DB003A3ADB003A3ADB003A3ADB003A3ADB003A3ADB003A3ADB00ACACF300A5A5
      F2004646DD007B7BD200F6F6F600000000000000000000000000000000000000
      000000000000EDE9E400F3EFEB00F4DBC400E5C7A800CA925800BF7E3D00AF5F
      0E00B0631400BB9D7E00DDE0E300F5F6F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000092BB8400438A2A008AB57C00B3D0A9007AB16700408D2500418F25004291
      2600439426004496270044962700449627004496270044962700429226003E8A
      240000000000000000000000000000000000A87E3700FEFBEC00FEFAEB00FEFA
      EA00FEFAE900FEFAE800FEF9E700FEF9E600FEF9E500FEF9E3009B6C2200FEF8
      E100FEF8E100FEF8E100FEF8E100FEF8E100A86F1700FEF8E100FEF8E100FEF8
      E100FEF8E100FEF8E100A66A1100E3E3E300D3CDC90099877A00DED2CA00DED0
      C600B2C4C600BAC6C600E1CDBD00FB963400EFECF300B3AED9009986A400BFBD
      EB009B9BEA008E8EE600BEBEEE009E89960094787A000000CC009393EE002221
      CE007F7CB400CCCCCC00E5E5E500000000000000000000000000000000000000
      000000000000FDFEFE00DCBFA200E3BA9100F2D2B200DCB08500CD965F00C07E
      3D00AE5D0C00B0641700BB9D7E00E5EDF400F5F6F60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CFE1C900498E310077A9650081AE710043942600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0853D00C3954700C3954700C395
      4700C3954700C3954700C3954700C3954700C3954700C3954700966B2500C395
      4700C3954700C3954700C3954700C3954700A46E1A00C3954700C3954700C395
      4700C3954700C3954700A96C1200E3E3E3008C786B00E1D5CC00DED1C700DED0
      C700DED1C700BDA18E00CCB7A800E3D9D3007372E000DADAF300E4DEE300E2DB
      DF00B7B7EE00A3A3EB00EFEFF900E7E2E400BD9B6F000000CC001E1AC000BAAB
      B9008E796900A69D9800C9C9C900000000000000000000000000000000000000
      00000000000000000000F1E6DB00CB9D6C00E2B88F00F3D4B700DEB48A00CE99
      6300BD793700AF600E00B05F0E00C0A68E00E1E5EA00F4F5F600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F4F8F2007AAC6800458A2D0043942600000000000000
      0000000000003D862300B7D2AD00000000000000000000000000000000000000
      000000000000000000000000000000000000BA8C4200FFFEFD00000000000000
      000000000000000000000000000000000000000000000000000092692800FEF9
      E700FEF9E500FEF9E400FEF8E300FEF8E200A06D1E00FEF8E100FEF8E100FEF8
      E100FEF8E100FEF8E100AC6F1300E3E3E30096847700C8B9AE00E0D4CB00D8C8
      BC00BFA59300DED0C600DCCEC400D6C6B900958ED400DEDDF200EBE9F000B89D
      8C00EDECF600C5C5F1004141D800EFEFF900DFD5CE002D24B100A8856000B791
      5A00D7C6B200947F6E009B918900000000000000000000000000000000000000
      0000000000000000000000000000EEE4DA00CA9C6D00E6BD9500F1D2B400E1B8
      8F00CC965F00BF7E3D00AF5F0E00B1641500C1A28400DDE0E300F6F6F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ABCA9F0043942600000000000000
      0000000000003D8623003E8A24007AAC6800F4F8F20000000000000000000000
      000000000000000000000000000000000000C2944700FFFFFD00000000000000
      0000000000000000000000000000000000000000000000000000946D2C00FEFA
      E900A5806600A5806600A5806600FEF9E5009B6C2100FEF8E300A5806600A580
      6600A5806600FEF8E100AB701500E3E3E300F2EFEE0087726400D4C7BE00E3D7
      CE00D4C3B700E0D3C900D3C1B400CAB3A400E6DCD400C3AB9B00D3C5C000EFEF
      F900C6B2A800E5DFE400D9D9F500EFEFF900EFEFF900D0BFB200B6905A00B38B
      5200B38A4F00D4C0A800765C4700000000000000000000000000000000000000
      000000000000000000000000000000000000EFE6DF00C5925F00E5BE9500F3D4
      B600DCB08500CD965F00BF7E3C00AE5D0B00B1651900C1A48600E4ECF300F4F5
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003D862300C2D9BA00489F290055953F00CFE1C900000000000000
      000000000000000000000000000000000000CC9C4C00FFFFFE00F1ECE400C0A2
      7200AD7C3200BF9044006780CE00BD986300F5F1EB00000000009E753200FEFB
      EC00FEFAEB00FEFAEA00FEFAE900FEFAE700976B2500FEF9E500FEF9E400FEF8
      E300FEF8E200FEF8E100A86F1700E3E3E30000000000EBE7E5008F7B6D00DFD4
      CC00E5DBD300B2927B00E4D9D100DFD2C900BBA08C00E7DED600E3D8D300DBD0
      D000DBD1D100ECEBF400EFEFF900EFEFF900EFEFF900DEDEE700AE987C00B48C
      5300B1884C00B0864700AB7E3C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBE1D600C7986800E3B9
      9100F3D4B700DDB48900CE996300BD793600AF5F0E00B0600F00C7AE9600E1E4
      E800F5F5F5000000000000000000000000000000000000000000000000003D86
      23003D8623003D8623003D8623003D8623003D8623003D8623003D8623003D86
      23003D8623003D862300CEE0C8005BC9350051B42F003E8A24009EC391000000
      000000000000000000000000000000000000D4A45200FFFFFE00B18D5200C294
      4600986B2400D1BD9700155DF600B9853300B4853F0000000000A77D3800C395
      4700C3954700C3954700C3954700C3954700926A2800C3954700C3954700C395
      4700C3954700C3954700A56E1A00E3E3E3000000000000000000E2DEDA00927E
      7100E7DDD700EAE2DC00CDB8A900E4D9D100DED0C700E1D6CC00DFD2C900D0BE
      B200EFEEF600EFEFF900EFEFF900EFEFF9008F8F95000E0E0F00572F0900A085
      6100B2894D00AF854500AD813E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EBE1D700C698
      6A00E6BD9500F1D2B400E1B88F00CB965F00BF7E3C00AF5E0D00AF641700BBAF
      9B00DFE1E300F9F9F90000000000000000000000000000000000000000006FA8
      5B00A0C79200A1CB9300A3CE9400A4D29500A6D59600A8D99700A9DC9800ABE0
      9900ACE39900ADE49A00B3E6A2006ECF4C006ECF4C0067C54600469729006EA4
      5A00E7F0E400000000000000000000000000DDAB570000000000C4995000CB9D
      4C00A17A3B00D0DCE3003F90F400BA945500AA77290000000000B1853D00FFFC
      F200FFFCF000FEFBEF00FEFBEE00FEFBED00936C2C00FEFAEB00FEFAEA00FEFA
      E900FEF9E700FEF9E600A26D1C00E3E3E300000000000000000000000000E4E0
      DC0098867800EAE2DD00D4C3B700E6DCD400ECE6E000B6998400EBE3DC00F0EA
      E600F1EBE800EFEEF600C2C2CA0033333500361C020099531000754C2A00583D
      2B00A0835D00B0854600AD813F00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDE4
      DC00C28F5C00E6BF9600F2D4B600DCB08400CD965F00C07D3B00AA5E12009887
      7100BCC4C300F2F1F2000000000000000000000000000000000000000000377A
      200075A7640077AB650079B066007BB567007EBA690080BF6A0082C46B0084C9
      6D0087CE6E0089D36F008AD670008BD871008CD971008CD9710085D769004292
      260055953F00000000000000000000000000E6B35C0000000000E6D5B700CB9B
      4C00DBCBAB00CAE3F50098B4F300A5834B00C4AE8C0000000000BA8D4200FFFD
      F400A5806600A5806600A5806600FEFBF0009D743100FEFBED00FEFBEC00FEFA
      EB00FEFAEA00FEFAE9009F6D1F00E3E3E3000000000000000000000000000000
      0000E6E2DF009C8B7F00ECE7E200CEB9AB00D0BCAE00F3EEEA00F3EEEB00EFEA
      E500E6E1DE0067666400120A030086470B008B53200063453000634530006345
      3000593E2B009B7D5600AE824100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E8DDD200C4956500E3BA9200F3D4B700DDB48800CF975E00B27840007A76
      7600577C6100F1EDF000FAFAFA00000000000000000000000000000000002E66
      1B00759C670077A1690079A66A007BAA6B007DAF6C007FB46E0082B86F0084BD
      700086C2710088C7720095D08100A3DA9000A5DE910094D77D00519B3700629D
      4C00E7F0E400000000000000000000000000EEBA6000000000000000000077AB
      B50061B5C90076DAEE0051B6CD00D6CFBE000000000000000000C3954700FFFD
      F700FFFDF600FFFDF500FFFCF400FFFCF300A77C3700FFFCF000FEFBEF00FEFB
      EE00FEFBED00FEFAEC009B6C2100E3E3E3000000000000000000000000000000
      000000000000ECE9E700A08F8400EAE3DE00F3EEEB00F4F1ED00D8C8BD00CFBB
      AD00BCB8B40020160D00C1650B0069472E006345300063453000634530006345
      3000634530005A3F2C00AE824100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7DDD400C4966700E8BE9400F3D1AF00E8C09800C0B5AC008189
      87003E684900DBDEDC00FCFCFC00000000000000000000000000000000003D86
      23003D8623003D8623003D8623003D8623003D8623003D8623003D8623003D86
      23003D8623003D8623007CB66900B8DCAC0091C27F00448B2B009EC391000000
      000000000000000000000000000000000000E6B35B0000000000000000002F72
      890054BDD8007CE9FF0075E2F90091C8DA000000000000000000CD9E4D00C899
      4A00C3954700BE914500B98C4200B5893F00B0843C00AB803900A67C3700A177
      34009D743100986F2E00986B2400E3E3E3000000000000000000000000000000
      00000000000000000000F3F1F000A1918500EAE5E200D8C8BC00CAB4A400CCB7
      A800F0EAE500CECCCB005E3C1B00A55A130067462F0063453000634530006345
      300062442F00543E2F00AE824100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ECE1D600A98F7300C6B7A800F3EDE900E6E9EB007C8F
      8100446B4F00E9EAEA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003D86230083B3720079AD6600498E3100CFE1C900000000000000
      000000000000000000000000000000000000E6B25B0000000000000000001378
      9A002E93B3004492A90066CBE10091C8DA000000000000000000D6A65300FFFE
      FD00FFFEFB00FFFEFA00FFFEF900FFFDF800FFFDF700FFFDF600FFFDF500FFFC
      F300FFFCF200FFFCF100956A2600E3E3E3000000000000000000000000000000
      0000000000000000000000000000FAF9F900A8998F00D1C6BD00D0BDAF00F4EF
      EB00FDFCFB00FDFDFC00F2F1F100796A5C0095500D007D4E27005C412F005843
      350085756900C6BEB700AE824100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E3E5E500919B95008E9E950075887A006278
      6800819888000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003D862300458B2D007AAC6800F4F8F20000000000000000000000
      000000000000000000000000000000000000ECB85F00000000000000000068BA
      D5000981A8001878980042A3C000F8FBFC000000000000000000E0AD58000000
      0000FFFFFE00FFFFFD00FFFEFC00FFFEFB00FFFEFA00FFFDF900FFFDF700FFFD
      F600FFFDF500FFFCF40092692900E3E3E3000000000000000000000000000000
      00000000000000000000000000000000000000000000BDB1A900B9ACA400FAF9
      F900FFFFFF00FFFFFF00F0EDEC00BDB2AB0078685C008C735E00C4BCB600EAE9
      E800EBEBEB00E4E4E400AE824100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C1CDC40090A19500B5BF
      B800FDFEFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003D862300ABCA9F00000000000000000000000000000000000000
      000000000000000000000000000000000000F3BE630000000000000000000000
      0000000000000000000000000000000000000000000000000000E9B55D000000
      0000000000000000000000000000A5806600A5806600A5806600A5806600A580
      6600A5806600FFFDF700936B2B00E5E5E5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DCD6D2008D7B
      6D00AEA197009281740095847800C6BEB700F6F4F30000000000F3F3F300BEBE
      BE008686860058585800271D0F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4C26C0000000000000000000000
      0000000000000000000000000000000000000000000000000000F2BD63000000
      00000000000000000000000000000000000000000000FFFFFE00FFFFFD00FFFE
      FC00FFFEFB00FFFEF9009E783A00F1F1F1000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F7
      F600D2CAC500F7F5F40000000000000000000000000000000000141414000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBE7C600F4C26E00F3BE6300F3BE
      6300F0BB6100EBB75E00E6B35C00E2B05900DEAC5700D9A85400D5A45200D1A0
      4F00CC9D4D00C7994A00C3954700BF914500BB8E4300B6894000B2863D00AD82
      3B00A97F3800AA834400D9CAB100FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001C1C
      1C004D4D4D008181810000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7FBFF00E9EEF700E0E6F000DEE4EC00E1E6EC00EAEAEE00F4F0
      F500F7F0F700F2E9F200EFE5EF00EFE5EF00EDE4ED00EDE5ED00EFEAEF00F3F1
      F300FBFBFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFC00FBFBFB00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFF00FAFCFF00F2F6FB00DFDDDB00C3B39F00C3B49F00E8E9EC000000
      000000000000000000000000000000000000000000000000000000000000FDFF
      FF00DDD9D200B6935D00AD782700A7680A00A66F2000A47D48007B8167004371
      4900337336001A6B1B00126915001169130029742B00428044006D956E00A9B2
      A900CFCECF00E8E5E800F9F9F900000000000000000000000000000000000000
      000000000000FBFEFF00EAEFF600E1E7EE00E0E4EB00E4E7EC00F1F2F300FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F6F9FD00ECF1
      FA00DBDBDC00BDA88C00A9814B00B7935E00D0B78B009D6F3200E5EAF0000000
      0000000000000000000000000000000000000000000000000000FCFCFD00C6B2
      9400AD751C00CE983E00E4B96F00F1CF8E00DFB46B00CA913A00A9680800464F
      06000B510C00126A16001B7F1E001E872200209224001D922200178B1B000D79
      11003F7E400091A69200D9D6D900F8F7F8000000000000000000000000000000
      0000D5CEC60091744D007C5216007A4C0900815922008C724C00B4AEA900D4D5
      D600EFEFF1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5B5B5009292
      92008C8C8C00D7D7D70000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EDDECD00D3904E009E744800989B
      9E00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FBFEFF00ECEDEE00DCD9D400CCC4B600BCA37D00AF80
      3800B8873B00D8BC8900FCF3DA00FFFCE600FEF6DC009A6B2E00E6EBF2000000
      0000000000000000000000000000000000000000000000000000C9B99E00AF7A
      2400E7C07A00FCF0D000FFFFED00B2976600FFFFEE00FAEECF00E3BC7B00B470
      120052590F00136419001E832300228E260026972A0029A22E002DAE330030B6
      360022A2280019721C008FA48F00EAE6EA00000000000000000000000000CEC4
      B800865B1B00BD8F4300BE914500B3853700B6883B00B6883B008B5F1E00917C
      5E00C5C4C400EBECED00FEFEFE00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C1C1C1009C9C9C00ACAC
      AC009090900080808000E1E1E100000000000000000000000000000000000000
      0000000000000000000000000000EAD7C300CF8D4800D5965700C97D3000825D
      3800989898000000000000000000000000000000000000000000000000000000
      0000F7F7F800CFC8BB00BAA98E00A98A5B00AF8A4C00BF954F00D9BA8200F8EC
      CF00FFFFF600FFFFF200FDF5DA00FFFBE600FBF2D7009D6E2F00E6EBF2000000
      00000000000000000000000000000000000000000000F6F5F300A0722600ECC8
      8400FFFAE400FFFBE600FFFAE300F8F1D800FFFAE400FFFBE600FFFEEA00E1BA
      7900B36F1200296115001B81230025962900299F2D002CA931002FB3350033BC
      390038CD3F002AB7310022712300E9E0E8000000000000000000E6E1DD008B65
      2F00D4A85700A4783300B0987600E2DACE00DED3C000B9966000D1A35100A579
      32007F5F3400CCD0D500EBECED00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BBBBBB006A6A6A00BEBE
      BE00B3B3B3009191910085858500E0E0E0000000000000000000000000000000
      00000000000000000000F1E9E000CD863E00DAAA7800D7A77600B4712D00A063
      2500564C44000000000000000000000000000000000000000000000000000000
      0000A98C5E0097723600BA9B6300DFCBA200F2E7C900FFFFEC00FFFFF700FCF3
      D500F2D8A200E9BF7500F1D7A200FFFDE900FBF3D8009E6F3000E6EBF1000000
      00000000000000000000000000000000000000000000CBB69400CF9F4C00FEF2
      D300FFFCED00FEF9E400FEF8E100FEF9E300FEF7E000FEF8E000FFFBE600FAEE
      CF00D0933E006F67110015812400279C2C002BA631002EB1350031BA380034C3
      3B0039CE40003DE1450012701500ECE1EB000000000000000000B0957200CA9C
      4A00A5804800DBD9D60000000000EAE9E900CBC8C600CCCCD000B19F8600CAA4
      6000B88E43007F5D2E00C1C1C000E6E7E9000000000000000000000000000000
      00000000000000000000000000000000000000000000D0D0D000BBBBBB00BBBB
      BB00C1C1C100E6E6E6009898980087878700DDDDDD0000000000000000000000
      000000000000EFE3D700CE8B4500D9A97700D6A97C00B77634009E632600774E
      2200A5A19D000000000000000000000000000000000000000000000000000000
      00009B753500FFFFF600FFFBE400FFF7DD00FAEBC700F2D59F00E8BD7100ECC4
      8000F5DFB300FDF6DD00FDF6DE00FFFAE500FBF3D800A1723000E6EAF1000000
      00000000000000000000000000000000000000000000BB985E00EFC57B00FFFF
      FB00FFFDF100FDFAEA00FDF9E800FFFFF600FFFFF300FFFFF200FFFBE600FFFF
      EF00DDB26D009E6A0D001387270029A22E002DAD330031B7370034C13B0037C9
      3E003BD542003FEA49001C761F00EFE5EF0000000000EDE9E400AD884F00C295
      4600AFA69B0000000000DED7CE00926E3900966B29008962290094816A00B0A3
      9100D0B17700BA8F470087673B00BDBDBB00EAEBEC00FEFEFE00000000000000
      00000000000000000000000000000000000000000000F9F9F900D7D7D700B9B9
      B90091919100C9C9C900EAEAEA009B9B9B0086868600E8E8E800000000000000
      0000EFE1D400D08E4D00D8A57000D4A97D00B3723000A06427007D502500A39C
      9400000000000000000000000000000000000000000000000000000000000000
      0000A37C3E00FFFFFE00F5DFB300EDCA8800EECE9000F6E4B900FFFBE800FDF5
      DB00F6E3B900F1D29A00F4DCAB00FFFCE800FCF2D800A3743100E5EAF1000000
      00000000000000000000000000000000000000000000BE944E00FFD99400BAA3
      7C00F0E8D700FFFEF30000000000AA813E00A87E3A00A2752D00F2E9CD00B296
      6400E8C68A00A96A1100128526002DAE330030B5360034BF3A0037C93E0039D2
      42003EDD46003BE54500337F3500F7EDF60000000000EAE4DD00B6905300A072
      2C00C3C3C500F3F3F400A5855800CDA05000C99D4F00D4A858008C601C008165
      4400B3A99C00D2B07600BB924B007F5D2E00CBD0D500EBECED00000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB00D0D0
      D0009191910095959500D8D8D800E7E7E700979797008C8C8C00E7EAED00EEEB
      E800CF8B4800D8A36D00D9B08300B1712F00A06628007C4913009A938C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A8814100FFFFFB00FCF4DC00FFFAE800FCF5DB00F3D9A700EAC17A00EEC9
      8800F4D7A100FFE9BB00FFF7D700FFFAE500FCF2D800A5753100E5EAF1000000
      00000000000000000000000000000000000000000000CFAB6C00F1C67D000000
      0000FFFFFD00FFFDF50000000000A87E3A0000000000FFFFFE00FFFEEF00FFFF
      F500DAB37300936513000A6C1A0030B3350034C03A0036C73D0039CF40003CD9
      440043E94B002DCA340064966600FFF9FF0000000000EEE9E100C2A26F00A47A
      3700A2958200C6BFB800DBC9A600C4994D008F7B6300A3875C00D8AD5E009568
      22007D5D3500B5ADA100D7BC8D00C49A54007E5C2D00C1C1C000E6E7E9000000
      000000000000000000000000000000000000000000000000000000000000FAFA
      FA00D9D9D9008E8E8E009F9F9F00D6D6D600EEEEEE008D8F910096908900D191
      5000D8A46D00D6AC8200B57535009B6126007E4E1E008D837900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AE87440000000000F6E3BC00E8BD7200EBC47F00F9DFB400FFF7E100FFFA
      E400F7F5E200A8C7C70097BDBE00FFFFE700FBF3D800A7783300E5EAF1000000
      00000000000000000000000000000000000000000000E7CFA700E3AF5700FEF4
      E30000000000FFFEFA0000000000A3782F0000000000FEFBF100FFFFF400F9F0
      DA00CA944B006560160009611500218A240038CB3E003AD141003CD644003FE1
      470042EF4B0018951D00B9C5B9000000000000000000F1EDE900D0BFA300D4AF
      6E00744E1D00B6B0A900CBBAA000D9B983008E6F4300BFC0C200AE906300D1A9
      5F009668210080633E00B4A99900DEC79F00BD95530087663900BDBDBB00EAEB
      EC00FEFEFE000000000000000000000000000000000000000000000000000000
      0000FCFCFC00E3E3E3008D8D8D00A0A0A000D7D8D800E4E4E200C28E5800D696
      5500D6AF8600B17333009E6227007D502100938A7E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B48C480000000000FDF0D300FFFFE600FFFFF900DDF3D0009EDF9600B9EB
      A1005F97AC00004B7600488E9F00FFFFEB00FCF3D800A9793400E5EAF1000000
      00000000000000000000000000000000000000000000FDFCFB00DAA64D00F3CC
      8A00FFFEFC000000000000000000E1D4BD0000000000FFFFFD00FFFFFA00DDBB
      8500A27026001F5C130010661300126212001E8221003AD643003FE3480042F0
      4C0027BC2E0066966700F9F6F900000000000000000000000000D6C9B800E6CA
      99009A6C250080654000AEA29400D4BC9600CAA3600087663800C5C7CA00B69A
      6F00DAB46D008E601B007F623E00B4ABA000E3CCA200BF995800805E2E00CBD0
      D500EBECED00FEFEFE0000000000000000000000000000000000000000000000
      000000000000FEFEFE00D2D2D20092929200A3A4A400DEDAD700D89E6300C985
      4100B27637009D6328007F4B16008C8177000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B9914B0000000000E5EAF2008DAEEC009DB2F4008EE0800015B9200080DC
      72006D9FB60000547B004D90A000FFFFEA00FCF3D800AC7C3400E5E9F1000000
      0000000000000000000000000000000000000000000000000000F1DFC000E1AA
      4B00F2CB8700FDF4E40000000000BAA5830000000000FCF3E400E7C58F00AE79
      2C00435C1100156C1F00227831001F752A00166B10001873190032C237001CA7
      23005D935F00ECEDEB000000000000000000000000000000000000000000C6B0
      9200DDB870009F722A007F603600B1A79B00CAAE8200CFA7600086653700BDBD
      BE00B29A7900DFBC7900976922007D5C3200B7AEA300E3D0AE00C8A15F00805D
      2F00C3C3C200EEEEEF0000000000000000000000000000000000000000000000
      00000000000000000000FAFAFA00D0D0D0008A8A8A00B2B4B600D6CABE00B379
      3E00955A1D0081501F008B7E6F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0965000000000005F8EEA00003DE3006088F60091E37D0020BC2A0085DE
      780072A2B9000062850071A6AE00FFFFE900FCF3D800AA7C3600E5E9F1000000
      000000000000000000000000000000000000000000000000000000000000F3E1
      C200E0AB5100E6B25A00EEC68100F8D79C00E9C28000D4A45600AF802900446C
      1B003997760072D8D50071DCE20058D2DE0039C1B300168416001E7A210086AE
      8600F6F6F700000000000000000000000000000000000000000000000000FCFC
      FF00C1A57C00D9B47200A0732A0081644000AEA29200D1B89100CAA25F008F70
      4200BBBABB00BBA48100DAB87B009769210080613C00B5AA9D00E6D4B500B28B
      4E0092795A00EDEFF30000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700CECECE00B9B9B900BCBFC300C3BD
      B600AB8864007A7065009FA2A400B8B8BA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C69B5200000000006290EB000042E300678DF60092E57F0021BC2A0079D6
      7500E6E7E800F2F3E300FFFFEC00FFFAE500FBF3D900A87B3800E5EAF1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFBF900EED2A400DEB56E00D1A25100CFA76300DCBF9600DCE7CB0052B0
      8B001BA2D30028AAD6000A92C3000F9ACC000CA8E2002592AD00CCCBC200FFFC
      FF00000000000000000000000000000000000000000000000000000000000000
      0000F3F0EE00C2A88000E0BD7D009A6C240080643F00B1A79B00D6BD9400CAA4
      630087663700C3C5C800C1AC8C00E3C58A008E5F17007E623D00BBB2A700A283
      5900B9A68C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00DCDCDC00C1C1C10095959500B0B1
      B300D2D6D900818286008E8E8F00909092008686880078787900737377000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC9F5600000000006391EC000043E300678DF80092E5810021BC290074D3
      7400FFFFFD00FFFFF400FFFEEF00FFFBE900FCF5DD00A57A3900E5E9F0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F7FD0047A7
      CE0035B5DA006FDEF6008EF5FF0081EBFF0050C9E900219FCA0081AEC000D9D6
      D500FAF9F9000000000000000000000000000000000000000000000000000000
      000000000000F8F6F700BFA98600E3C18400A1732B007F5F3400B4ABA000DBC8
      AA00D4AE6E0086653600BEBCBA00C2AF9700E6CA9500976821007B5A2E00C9CB
      CF00EEF0F3000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00E0E0E000BFBFBF0082828200B7B7B7009595
      950085858800C2C2C200C9C9C900BFBFBF00B6B6B600ACACAC00898989005858
      5900000000000000000000000000000000000000000000000000000000000000
      0000D2A55900000000006392EE000042E200678DF90092E5820021BC290074D5
      740000000000CDB89200DDCBAA00FFFFF600FBF3DD00A3793900E8EDF3000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004AA6C80048C7
      E70086EFFF0082ECFF007FE9FF0079E8FF0070E8FF004ACDF0001D607800A7AC
      AE00EEECEB000000000000000000000000000000000000000000000000000000
      00000000000000000000FAF9FA00C1A98600DDBD8300A2752B0080633D00B2A7
      9900E0CEB200B9925400957D5F00E7E9EC00D0BEA400E1C69500986922007F61
      3A00C4C3C100EAEBEC0000000000000000000000000000000000000000000000
      000000000000FDFDFD00DCDCDC00B2B2B20074747400E2E2E200F0F0F0008B8B
      8B00D7D7D600DDDDDD00D6D6D600CCCCCC00C3C3C300B8B8B800ADADAC007D7D
      7F005F5F60000000000000000000000000000000000000000000000000000000
      0000D8AA5C00000000006392EE000042E200668DFA0092E6830021BC290076D8
      7A00FFEDE800AF926500D9CAB100CEB89000B6915300BB9E7100FAFDFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BEDCE9002EACD10087F1
      FF007FEAFF007FEAFF0079E8FF006BE2FF005EDFFF0051E1FF002B90B0003061
      7100E5DFDD00FAFAFA0000000000000000000000000000000000000000000000
      0000000000000000000000000000F2EFEB00C4AD8B00E3C590009B6C22007F62
      3E00B8AFA300A0805800BAA78C0000000000F2EFEB00D3C1A900E7CF9F008D5C
      1300866D4B00D1D1D200FDFEFE00000000000000000000000000000000000000
      0000F6F6F600E0E0E000B6B6B6007F7F7F00CBCBCB0000000000F2F2F200ADAD
      AE00E9E9E900E8E8E800E4E4E400E1E1E100B8B8B800A8A8A800B5B5B5009292
      9300454546000000000000000000000000000000000000000000000000000000
      0000DDAF5F0000000000588AED000032DF00628AFC008FE483001CBA240074DB
      7D00DAB99D00DCD0BC0000000000C3AA8200AF8F5F00F7F6F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077BDD50059D0EC0083ED
      FF007FEAFF007CE9FF006CE3FF005FE0FF0052DCFF0042C8EE002FC7F5001755
      6B00DFD8D600F7F7F70000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6F4F300C2AF9100E5C99700A375
      2C007D5C3000C9CBCF00EEF0F3000000000000000000F5F4F100CEBCA500E9D1
      A200875A1900B6ADA300F7F9FA0000000000000000000000000000000000EDED
      ED00DCDCDC00CECECE007A7A7A00BEBEBE000000000000000000E0E0E000C7C7
      C600ECECEC00F5F5F5000000000075757500DDDDDD00FEFEFE00BEBEBE008989
      8B00585859000000000000000000000000000000000000000000000000000000
      0000E3B5630000000000B9CEF700D2DFFA000000000084DA87003CC44300A9E5
      AA00CDAB8500FBF9F500D4C4AB00BEAB8A00FCFDFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000067B6D10060D6F20083EE
      FF007FEEFF0074ECFF0063E3FF0055DDFF0048DBFF0034AACD0024647A001947
      5800E2DEDC00F8F8F80000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F6F600C4AF9100E0C5
      9300A3752C0080633C00C5C4C300E8E9EB00FEFEFE0000000000C6B8A600D0B0
      7C00A67A3500B0A59800FAFCFE00000000000000000000000000F2F2F200DADA
      DA00CBCBCB009D9D9D008B8B8B00000000000000000000000000E9E9E900C5C5
      C500E7E7E700F5F5F500000000005C5C5C00000000000000000000000000B6B6
      B700C6C6C6000000000000000000000000000000000000000000000000000000
      0000EABA670000000000000000000000000000000000F0FAF00000000000FDEF
      EB00D3BD9800C8B08800BEAA8900FBFCFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000081B0C2004FC5E30081ED
      FF0063C2D8004EA4BC0050C7E60049D9FF003CDBFF002BC1EE00214C5C00193A
      4800F4F0EF00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1EEEA00C8B5
      9800E7CEA1009B6B20007C5D3600C1C1C100E4E8ED00F6FDFF00A18C7400BA8C
      3F00A67A3400BAB2A70000000000000000000000000000000000E0E0E000CACA
      CA00B9B9B900686868000000000000000000000000000000000000000000B2B2
      B200DEDEDE00E9E9E900E3E3E300646464000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0BF6A00000000000000000000000000000000000000000000000000EDE2
      D000AF843E00CCBB9C00FEFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C9D4D90024738E004A88
      97001B262E001F2C3400212E37002C6376002EA9CE0021B2E00017475A005676
      8200000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5F4
      F100C6B59E00E7D1A500AB7F3600784C0E00947C5D008C6F480093682700D4AA
      5A0096734500E3E1DF0000000000000000000000000000000000A0A0A000A3A3
      A30077777700C4C4C4000000000000000000000000000000000000000000DBDB
      DB00BCBCBC00D8D8D800E3E3E300ABABAB009898980000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F3C26D000000000000000000FEFCF800FCF8F000F4EAD800E1C8A000CFB2
      8000E9DECC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006F929F000F2A
      360022364000243A4400243A430023333B00233C47001B4454001E3F4C00D2D9
      DC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F5F400C3B09500E2CBA400E2C58F00BE965300C79F5B00CCA054008E62
      2200C1B5A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C8C8C800BABABA00BBBBBB00B9B9BA0071717200CACACA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F3BF6500FCF2E100F8E8CF00F4E0C000EBD4AD00EDDDC200FDFCFA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006D8F
      9C001C3845001A333E001A303B0019313C001A313C0036525E00C2D1D7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F3F0ED00C6B59E00B49C7B00A5825000966F380096744200D2C6
      B800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E4E4E400D6D6D600CCCCCD00C9C9C90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8DDAD00FBF0DD00FAEFDE00FDFAF5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C5DCE30076939F00717F850071848D0087A6B20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F3F200DEDDDC00DAD8
      D600DCDAD700DBDAD700DCDAD700DCD9D700DCDAD700DCD9D700DCD9D600DBD9
      D700DBD9D700DBD9D600DAD9D600DAD9D600DAD8D600D9D8D600DAD8D600DAD9
      D700DBDBDB00EEEEEE00FEFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFFFF00F8FDFF00F1F9FF00ECF4FF00EDF3FC00F5F8
      FC00FAFAFA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFFFF00F8FB
      FF00FCFDFF00FDFDFE00FFFFFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFBFA00E1DEDC00EFEFEF0000000000F1EDEB00DFDCDB00EFEF
      EF000000000000000000000000000000000000000000CDA67C00D29B6C00D8AC
      8800D2A78400CFA78400CCA78300C8A48200C4A38200C3A28300C6A38100C8A3
      8100CBA38100CEA47F00CFA47F00D2A57F00D4A57D00D6A57E00D8A57D00D7A3
      7A00AA774300DAD9D80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFFFF00F0EAE500F2C57400EFA63400F0A93800E7AC5700E4D1
      B600E3EBF700F7F7F90000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6DAC600C09E6900CDB7
      9400E0DDD500EEF4FD00F4F8FF00F8FAFD00FAFAFA00FDFDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BCA49A0097745D00CEC3BC00F4F6F700916F5600987A6700D8D3
      D1000000000000000000000000000000000000000000A4A4A20050B9E8006EC7
      EE007DC9EC008ECFEC00A1D5EC00AFDAEB00C4E1EC00C3E1EB00AED8EB009DD3
      EB008ACDEB007CC8EB006AC3EB0056BCEB0049B8EB0034B0EA0023ADEB00139E
      EC004B759200EDE3DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F9D19500F1AA3300FCDDAB00FCE7C800FDE6C400FEE9C800F4B1
      4200EAB66900E0DFDF00F8F9FA00000000000000000000000000000000000000
      0000000000000000000000000000FBFFFF00CFA35900A26A2B00C0B0AF008E79
      780090653000A76F1100C5A36600DDD4BF00EEF4F600F3F6FB00F6F9FB00FAFB
      FD00FEFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F9
      FB00FCFFFF00A98B7700946F5500AC908100BFAB9E009D78610096745C00DAD5
      D400FEFFFF00F7FAFD00F2F3F4000000000000000000E2EAF200897D6700C6A7
      8300BFAA8C00B89D8000BCA78A00BBA58800B29B7E00BAA68900BAA18300B79E
      7F00BDA48800B99E8000B79C7F00BAA28500B5997A00B29B7F00B8A185009977
      5000899BAA00FFFFFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFC00FCFCFC00FCFCFC00000000000000
      0000FAD7A000F6B65100FDE4BD00FCDFAC00E7982A00E3880C00F8D29300FDE9
      C800FCCF8A00EAB56500E0E9F500FBFAFA000000000000000000000000000000
      0000FEFFFF00F6F0E600DABB8900A96A17008B7AA700848FFC00D3D7FE00889D
      FF007994FF006681FF00666EC10068536400795029009F805A00BDAA9400D4C8
      B500DEDBD400F3F4F600FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C9B1AA00B8A6
      9500D2C8C000AC917900A5847400B4978600C4B2A100CEB9B000BAA69500CEC2
      B700AD9687009E7B6200D4CDC800FBFCFD0000000000FFFFFD0074A5BD0066A8
      BE0086A4A400B1E7FF0096AEAB009BB0AF00C7EEFF009DAAA000B3CDD100C4EA
      FA0092A49F00A5CFE0009FCCDE00799A9B0093D7F6007BB1C2005C9DAD00328F
      BA00CAC4C2000000000000000000000000000000000000000000000000000000
      000000000000FFFFFB00FFFCEF00FFFBEA00FFFBEA00FAF7EA00F5F6F300FCF3
      E400F5B03C00FCEACD00FFE6BF00E89C3100EDAA4D00E7992D00E89D3300FAD7
      9D00FDE2B800F9BC5900E0D7C800F5F6F900000000000000000000000000FCFF
      FF00F1CE8F00BF8D5600836A8000707CEC007986F3007F84E300CACEF4008193
      F1007A8DF100758AF5006A83FC005D7CFF004A6FFF004763E8004C54AD004849
      8E00A87D3A00F1F7FE00FDFDFD00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2EDE900B1907F00BA9A
      8900B0907E00B2998300B0978800B4978700B3968500B59F8D00C4ADA000BB9E
      8B00A27E6700976F5800CBBEB500000000000000000000000000B3BFC7008EA7
      A700CF9F7100ECF7FE00D5B69800C4A27F00F3FAFF00D3AF8B00B69F8800C9C7
      C200CEAA8500D6C9B900E5DED300CBA37D00DDDED900E6CFBB00A89B7F006683
      9100F9F4F3000000000000000000000000000000000000000000000000000000
      0000DFE0F000769DDB002E65D6000D2DD9001B40DD004761DD00BAC3EA00E2B7
      7B00E8BC7D00FEF2E000FDE8C900F9E1BF00EEBE7F00EDB15F00E1850C00FCE0
      B300F8D69D00F8DDB600E8AC5700ECF2FB000000000000000000FEFAF200DB9C
      3D008E7384005664DF00566EFD006072ED006473E9009A95DD00F3EAEF00C3C4
      EF00949FEF00657DF3005C77F9005572F500516EF6004768FA003D62FF001A4D
      FF009D671500F6FCFF00FDFDFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6CCBD00BFA6
      9500CDB4A600C5ABA100C1A89600BE9F8D00B3938200AE897800AD8C7A00B896
      8700A8857400B59E9000F3F4F300000000000000000000000000E5ECF10084A4
      B100CFB39800EDFFFF00D8CEC100CEC4B600F0FFFF00E2CDB700635D55004C56
      6000C9B19900DCDCD000EFFFFF00C7AA8E00DEEAE600F1FAFD008B85730096A9
      B500000000000000000000000000000000000000000000000000FFFFFD00BBDD
      FA000F73ED003581EE0076AFFA0095D0FC0089C4FC006BA7F5002249E9005349
      8100DAC7AA00F3EADF00FFF4DF00F1C89500C8530000D66B0000E3912600F9E0
      BB00F5DBBB00F9DDB500E8A43900ECF3FE000000000000000000FFF7DD008E58
      48001F50FF003E5BF5004A63EC006E7BE200CCBAC800FFDEC000FFF3ED00FFF8
      ED00FCEDDD00D9CCBA00C8C1CA00AEB2E3008192F000647CF6004B6AF7001D4D
      FF009E691900F6FCFF00FDFDFD00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFCFC00EAE2E300BEA5
      9500D9C1BA00D3C2B200C3ACA6009F9F9800C1C5BE00C8B8B100B4958700AE94
      7D00A8856D00BEAB9E00E0DFDC00ECECEC000000000000000000EFF0F200AA9D
      9400D2B59500F3F8FE00DCCBB700D3BEA800F2F6FC00E7CDB20075685B005F63
      6700D1B69A00DFD6CB00EFF1F400CDAF8F00E3DFDB00F2EEEA00A2836200B1AF
      AF00000000000000000000000000000000000000000000000000DAD9F4001385
      F60063C3FB0062C9FD0047B7FE003EA0FD0041A6FE00369BFE006DAEFB003055
      E2006378DB00F5EBD600FEFDF700D2730F00E7B07200DA8A3300FAE7CD00FAE3
      C000F4D9B600FBE0B900DE993B00F0F8FF000000000000000000FFF8DF00915D
      48000E41FF005267E800A4A1D400E0C8C400E3C8BA00ECCBC000FEF1EE00FFF1
      ED00DED4D400C5C1C200D0C7C400D7CBBF00EADBC800EBDFDA00D6D2EE00A0A8
      E8009D681800F5FBFF00FDFDFD00000000000000000000000000000000000000
      000000000000000000000000000000000000F8F7F300D1C6BA00C4AFA700DACE
      C600DED6CB00E5D6CB00676062005C5D5E0073737400DEDFE100C1AEA600BAA0
      8E00B6998800AA8B7800A8877200BCA89F000000000000000000EEEFF100AAA1
      9800D2B59600E1E6EF00DBC8B600CFBAA600E0E5EC00EACFB500615448004145
      4900D3B99C00D4CAC100DFE2E500D3B59500D3D0CD00E6E2E000A98A6B00AFAF
      AF000000000000000000000000000000000000000000FFFFFE0058B6F70050C0
      FB007BD7FE0087D9FE007EC8FC00001FD3000318C7003883ED002D91FF006FAF
      FB000B30DD00BDC2D300FFFFFA00D6812600F1D0A800E5AA6800D8852C00F9E3
      C400FBE6C600F1C78A00DFA55C00F7FDFF000000000000000000FFF7E0008A5E
      4A00697DF000CBB7BC00CE9E6000C28E4600D2BDBA00E3C5BC00FEF2EE00FEF2
      F100BFB2A800B2936800B6A28C00C9C4C900CEC8CA00D1C9C500E2D8D300E7D4
      BE009E6A1900F5FBFF00FDFDFD00000000000000000000000000000000000000
      000000000000F5F7F900F9F9FA00FEFFFF00D4D4D20090857F00A6A59D00F4EB
      E900EBE4D900FAE8E400191C1D00535353005E5E5E008D8F9000C8BDB800C5AB
      A100C3AA9800B69E8A00A6896C00AF907A000000000000000000EDF0F200AFA5
      9D00D2B49500C9CFD700D7C6B300CAB59F00CACFD600D8BFA300CDC1B400D2D6
      DC00DEC3A500C2B7AD00C8CCCF00DBBC9C00BFBBB800D6D2CE00B1947400AFB0
      B0000000000000000000000000000000000000000000D4E6FB0034B7F60080E3
      FB00B7E7F80098CBF500315EE1009CF8FF0089E4FF002E49D3004ABBFD00199B
      FD003D87F3005B6FD300FFFCEC0000000000D4750F00D06C0100FCEBD200FFF1
      DB00FBEAD100DF8E1F00F4E9D700FDFFFF000000000000000000F9F3E800CD86
      1D00D9BB9A00DBAC6500FDF3E800FFF9F500C6A27400D3BBB500FFF4F400E8DD
      DA00BC915900F8E9D700FCF7EF00D0B68F00B89C7500C6B7AB00C6B7AB00C2B4
      A800996A2300F4FCFF00FCFCFD00FEFEFE000000000000000000000000000000
      0000E1D0C900C0AD9B00E2DEDA00B9BDBE00A69184008D7A6D00594F4800D0C8
      C200EFE7E700F1E9E900736C6C0011111100434443007B7A7700CBB9B000D3C1
      B300C3B09D00BCA39300D4CBC500000000000000000000000000F0F3F500B1AB
      A500D2B59700B5C0CC00D5C5B400C5B39F00B5C0CC00DBC1A600BDB4AD00B9C2
      CB00DFC5A900B4AEA700B5BEC600E1C3A200AEAEAF00C8C8C900BA9C7C00B1B3
      B4000000000000000000FEFEFE000000000000000000C0E4FC0039B5FE00C2F6
      FB009CDAF6000851E0002E7CE800235CE4005393F00080D5FE0054CAFD0025AC
      FA002BACFF003339C200FFF2DE00FFF8FA00FBEBED00F9D8CA00F8F0EB00F9F3
      E500E4A24E00DAAE6E000000000000000000FEFFFF00F3F4F400E6CEA900E3B8
      7A00F7E6D300FFF8FA00FBE9E400FEE9E600EDD9BD00C79F7600FCFBFF00D5A9
      7100EBC9A10000000000FFF8F80000000000FDFDFF00E9DDD100D2BB9800CDB9
      9D009D691B00C6B8A300DFDFDF00F0F2F4000000000000000000FAFCFC00FCFD
      FE00C5A69900B99F8400CFBEB200B0ABA100CFB19F00CBB4A1001D1613003532
      340066666300A0A3A200F1E8E700A29E9D0084807900CDC6BE00E3D6CD00DBCD
      C400CAB6A800C5B6AB00E6E9EA000000000000000000E3E8EE00D1D6DC00C6AA
      8F00E4B88F00B79D8800DFBE9F00CBA68000B19C8900E4C09E00BC9B7C00B39D
      8A00EDC8A400B6917200B49A8600F7CBA200AF8C6E00D1B19A00CFA27500B2AD
      AA00E8EEF500E5E8EA00EEEEEF000000000000000000C2F0FD0057DAF600D5F9
      FC00CDF8FC003A86E90072C1EF007DC0F50079CEFC0075D6FF0065CFFD0033B8
      FF0022AEFF0004297B00328C2000287D22001A761800348F3800B1A78200C881
      3700DAAB7300FDFFFF000000000000000000F8E6CD00F3DEC100F9EDE000FFF8
      F900FDF3F100FCEFEB00FBECE700FDEAE300FFF4F700ECBE9300DF963E00F5BA
      710000000000FFFEF600FFFAF400FFF9F400FFF7F400FFFAFA00FFFEFF00FFFA
      F800F0E8DB00E6D9C700B0874900E3DDD50000000000E5DCD200D0C5C200E2E2
      E600C2A69A00BBA38F00C8B2A500D9C9C000DCC9C100D1BEB30026272700413A
      330086746B00B4B3B300FFFEFE00FEFAF900FBF8F100F0E6E400EAE2DA00E1D3
      CC00DCCCC300C5B09D00CCC2B900FBFDFE0000000000E0AD7900B59262006964
      5000788984009FAEA300B7BCA800B8B8A600BBB39C00CBC1A900BCBCAA00A9AE
      9F00B2BCAB0097A89E0089A0970094B1AB00739A9900659DA800919987007760
      3F00653C12007A614600F1F0F0000000000000000000CEEFFE006DD4F800D2F9
      FC00ADDFFB000374F300317DE9002776E40060AEF20091E7FF006CD3FF0029B1
      EC00259C470047C43E0077D69000AAECBA00A6EFB80077D7870039993C004B8A
      4800D1DBDD00F5F2F6000000000000000000FBECD900FADDC200FEF3F600FDF3
      F100FEF7F400FFF7F700FFF3F300FFF1EE0099C5900069974300C8DCCE00EBDF
      D7009197DE00CCCFF700DADFF400ECEBF400FCF5F300FFFFF300FFFFF700FFFC
      F900FFFAFB00FFFCFB00E6DDD200FBFCFE00F2EFEC00B49D8E00BCA18F00BC9F
      8800BBA59200C6AD9D00C9AFA300CCB9AA00D7C6B500E0D0BF00DAC8B900CEBA
      A900CFB29F00B7AA9F0000000000FFFEFE00F8F7EF00F8F0F100E7DBD100C9BA
      AA00CABAAC00C3AB9A00D0C4BA000000000000000000C1AA9300F1CFAE00CEAD
      8300577F85003B9FD5007DE0FF0094E8FF00A8ECFF00B1F6FF007BAEC400507C
      91007CE5FF0064D7FF004DCFFF002CC7FF0012C7FF002592BC007C735B009D76
      4D008E6F4F00DDD8D100000000000000000000000000EEFBFE0084D7FC00C6F2
      FD00EEFFFA00AFE1FB0046A2F600C5FFF700B8F9FA003D86EF0070D4F2002CA8
      5A004BB43E0037C44F0014B4270006B41C000CB321002DB53A0069DE7F0054B1
      5400469B4000DCDEDC00FFFEFF000000000000000000FAE1BE00F9DFBE00FEFE
      FF0000000000EEF3ED00AEE3BA00B0EFC3002CDA690008AB2C00008800003D87
      52004559F3003C61FE00496CFB00869DFA00859BF8007E95F700ABB4E900E4DA
      D800FFFDFB00EFE8DF00F3F2EF0000000000FCFBFD00CDBAB000C3AFA200CDBA
      AC00C9BAA900C9AFA700C7B19E00C5AA9700C5AA9800C8B2A100D3BBB000CEB4
      A30099847500463F3A00BAB6B600DED6CF00D5C6BD00F2EEE600DDD5C900D7D5
      D400F6F1F200E5DBD300FEFDFC000000000000000000DFD1C100C0A58A00EDD4
      B800F7BF8500787A66003A8AB30076C9F40093E1FF009CEAFF007BB1C5006591
      A6005F94A90070D8FF0053CAFF0038B5F20057838900AF784600AE845B009773
      4B00BFB1A10000000000000000000000000000000000FFFFFE00B2E9FE0089D6
      F900DCF9FC00DDFDFD00C6EDFD000372F1000D75F20068CCF9004AC1A70031AA
      1D00059C050000000000EFF9F000EFF9EF00F2FAF200000000003EC24D0046C0
      520035AA350094AB9000FCF8FC00000000000000000000000000F9D59D00FFE6
      C60099C1960044D3750048D17600A8F0C00044E17A003ED6720019BB31000066
      08008084FF00859EFF00A2B4FC00DEE5FE007792FC000031FF00000FC1008561
      5000BE8F4000E2E7EE00F5F8FA000000000000000000F3EDEF00B8A08E00D5C6
      B900D5BEB400D0BBB200BBB1A900CBC6C300BCAB9E00C6AA9700C7AE9C00CEB3
      A00050473600000200008B878600C2B9B300E9E3E300CFC0B100D6C2BC00D9D4
      CB00000000000000000000000000000000000000000000000000C9AD8F00CBB4
      9B00E2D2C100FFCE9800908262003D72880065C4F30072C0DE0058859C005A8F
      A8006FD7FF0054C8FF0042A2CE007B705400BE885400B3906D00A27E5600AE94
      7800FEFFFF00000000000000000000000000000000000000000000000000A3E2
      FE0086D6FA00B3EFFB00CDF9FA00C0FFF900B7FAF9004EEDFF0019BD56002FA5
      2300009902001DA01D0080CA8000008B0000008A000000900000009400000DA1
      110034B3300030992900FBEFFB00FCFCFC0000000000FDFFFF00F5DBBB00FFB7
      6E00428F34002FDB6B0055DB8200BCF4CF0054E8870039DB710038DA6C00087F
      1C002455D900AEB7FA00AABBFE00B8C6FF007290FF000028ED003F40AF00F9E3
      E500F3C18E00CA984B00E1E5EC00F9FAFB00DCD1CA00BCA69600D4BDB600E1D1
      C900E1D0C70085807B006263650086888800F1F1F300BFB3AB00C7AEA400C8AE
      9B00C2A89300B29F8D00CBB0A800E6DFDC0000000000E9DFD400D5C9B800FBFA
      F700000000000000000000000000000000000000000000000000F0E6DC00C8A8
      8600D4BEA600E0D0BF00F8CC9F00B892610038768D004EB4E9005998B7005B7F
      91004BB7ED004D8BA0008D785300CF9B6C00B9987600AC886200A7835E00E6E2
      DE00000000000000000000000000000000000000000000000000000000000000
      0000B6E9FE007EDDFA005AD2F8002AB6F5001FAAFA0046B2FF0014A9000042B1
      3C0026AD26002FA72B00EFF9F000C7E6C60081CA8100008E0000009400000091
      00001EA11A00039B0000FFF0FF00FCFCFC00FDFFFF00F7DFC200FEB56000FFFD
      FA004BAD640054E68500BEF1CF00C1F6D200B7F3CA009EEEB90064E892000A91
      290060ACF000749EF1008489EA007C7DEF00293DE0000020B200D0C0CC00FFE9
      D800FCE0DB00DC9C4800D0B58A00E9EDF400AC8D7B00DACDC500E6DFD800E5DA
      D400F5E4DB0022252700575757005959590097989900CCC1BF00CFB8A800CDB4
      A900C8B1A500CBAF9400C7AE9F00FBFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DFCC
      B600D0B39200D8C2AB00DFCCB900FCD9B700B58D590048747C003AAAE50040A5
      D800517A7D00AF865600D4A98000BB9B7A00B48E6600A8805200D8CBBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFE00F8FDFF00E8F7FF00E1F0FE00E2F1FF00FFF9FF0006AA00005BBD
      5E0047B644003CB03800C4E9C2005EC5660027A3260000950000009300000094
      00000B960A0000A30000FFEFFF00FCFCFC00F9EAD500FBBE6B00FFF8EF000000
      000040B15C00A1F2BF0079EEA40044E07A0057E086007AEAA000ADF3BF002F9F
      3900000000003DCFF90000BAF70016C2FB000080C5005786B300FFFAEA00FCE7
      E100FDE8E700F9D9C800D1851800E6DFD100BFA79800BDA69500E2DCD200EEE6
      E300F9EDE9003A363700131414005455550073747200C4B8B100D6C6B600CDB9
      AA00B49E8C00A1908100DFDBD200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E9DAC800D7BB9C00DAC2A700DAC6B000F3D6BD00D7A66F0035504600505F
      4E00D4A26F00D9B69500BF9E7800B7906400B18A6000ECE5DF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000029AD320070C5
      760073BE720073CA7A0000000000EFF7EC00B6E3B500059A0600079D0A000294
      02000096000015A11600FFFBFF0000000000FFD29500FFF7ED00FFFAF700FFF9
      F300C6DFBC0044A64B0026A3410023B24F0019BD520005942E0000772C007CD6
      D8005AD9FC000DCFF60000F3FF0000B8D4003E81B10000000000FDECDC00F8E3
      D100F1CFA600E6B57100EAC58D00FDF7EF0000000000FEFAFB00C5AD9E00F8F1
      F300F5EEEE00E6DDD7006764640048414200B8AEAB00E4D4CB00DACAC200CAB6
      AC00B6A9A000C1C4C600F2F3F400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2E8DE00DBBFA200DABE9E00DEC9B300E8D2BB00FEC89700F4C3
      9500D9BFA300CAAA8800BD956800CBB19400F6F4F20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000074C7730054BD
      520089C8890067C37000CDE3C80061C6690026A8250080CC7B0045B94600159D
      130000A0000076D28000000000000000000000000000FFF9F200FFEEDC00FFEA
      D400FFEBD800FFF0E800EFD9BC00B3B378007C8C31004F8C640000BEEB001AEA
      FF000CD1F4000FE7FB0000CBE500276C9900EACDAA00FFE6C200F6DDB800F2D5
      A900F8ECDA0000000000000000000000000000000000D9D2C600D7C7C1000000
      0000FFFDF800F9F3F500FFF7F200FBF2F100EFE5DB00E5D8D100E2D3CC00D9C8
      BE00C8B1A100DBD4CF00FCFDFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F5F000E0C8AE00D8B59100E1CCB400E2CEB700DEC6
      AE00D5B49400C4996C00D6C1AA00FCFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6EDD60034AD
      30009BD09D008CCB8F008BCB8E00E1F3E400F6FBF500B7E1B7004CB74A0031AF
      2C0016B41C00D8EEDC0000000000000000000000000000000000000000000000
      00000000000000000000FFFBF700FFF7F000FFF4EA00FFF4EE004AC6DC0000C3
      E00007E6FB0000D6E900005B9B00DFDFE600FFF8E600FCF2E400000000000000
      000000000000000000000000000000000000F6F4F000B2988800E0DBD300D8CC
      BE00E2DAD400FFFDFF00FCFCFB00F9F2F400F5EEE400E6DAD200C5B4A600CBB2
      A400C2A89900C5B8AB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAD6C100D9B69000E0C3A500DABC
      9A00D1AE8800E9E0D50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BFE3
      B9003BAD360088CC8800A5D3A80099CE9D008BC78D0069B7640041B640002DA9
      2C00C6E0C4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005BD9
      E70000B8D400075D9C00E1E0E700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CFC4B700B49C8E00E7DC
      DA00C0AAA100F8F2F300F1E8E300D5CBC000F2EBEB00DAC7B900D4D0C700E8E4
      DC00D1BBB300F6F4F30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F3E9DE00DFC09F00DFC2
      A300F3EFE8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D4E7D20055C354004BB24B0041BC3B003FB9390045AD41005EC65D00D2F1
      DB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000074CEE100B4CEE00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C1A89900DED2C600C9B4A500CDC2B600CCB9AC00D1BDB400D5CBCA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFDFD00E1F2E000D0F1CE00D1F1CF00E3F2E300FDFDFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D3C0B200AB8E7C00D4C5BF0000000000CAB2A900B7A28B00EFE8DF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFF
      FF00F0D9B900EEBB7A00D8AB5200E5A84D00DFA85400DFAE6B00E8CBA500E8EC
      F100F1F7FF00F5F6F800FDFDFD000000000000000000FFFCF100BB8F6500A981
      61008F6444008E736700E6EAEF00E9F0F700EAF1F700EAF1F700EAF3FA00DDD6
      CF00A7764800AF886800784E3300A9958C00E9ECED00FAFAFA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00F6F6F600F2F2F200F2F2F200F6F6F600FCFC
      FC00000000000000000000000000000000000000000000000000000000000000
      000000000000FFF9FE00F8F7F600FBF6F800FCF7FB00F8F8FD00F0E2CC00E39A
      2E00E28F1400E2953400E5A03E00E8A74F00E8A74F00E19C4500E3942A00D38B
      1F00E2B56E00E0E0E200EBEEF200FDFDFD0000000000EBD6BD00C1894400FFE8
      B900F5CFA100704429009C622E00A5693100A3673000A3673000A2663000B776
      2E00CBA88400FFF5C600DFB2850062361B00E9F0F400F9F9F900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AEC0A80088A57E00628D540066955600699B58006DA35A0070AA
      5C0074B25E0099CB8800A7D69600C9E7BF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBFBFB00EFEFEF00E0E0E000D6D6D600D2D2D200D2D2D200D6D6D600DFDF
      DF00EEEEEE00FBFBFB000000000000000000000000000000000000000000DBE8
      DA00A9CEB60090BE9F0063B8740081B88C009AC3AD00D5DAC500E58E1600E38D
      1C00E9A54700EAAB5400E8AF6000E7B26B00E7B16B00E8B26800E9A85000DE95
      3900D0890900DFA03C00DAD1C900E9ECEF0000000000F6E3CC00E49D3400EDD0
      A400D8B2890074472F00DFB47D00F1C48800F2C58A00F1C58A00F2C68E00ECB2
      6300E5B16400FBDBA600C29165008F583700EFF5F800FAFAFA00000000000000
      0000000000000000000000000000000000000000000000000000E7D9CF00D8BF
      AE00D6BAA600DABEAA00DEC2AE00E2C6B200E6CAB500EACDB900F0DBCC00D3D6
      CA00345A27003C652E0045713600497A38004A8038004B8737004B8D350075A9
      5F005FA4450049A02C004CA82C004FAF2E000000000000000000FCFCFC00F6F6
      F600F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200EFEF
      EF00D5D5D9007B7F98004B5178002930630029306300494E760071758F00B7B8
      BB00CFCFCF00E5E5E500F9F9F9000000000000000000FFFEFF00AFD4BC002CA2
      4F0008923700099938002EA0560033AA5B0063C49200C5C16D00E9870000DF92
      2200E5973400E79C3800E79B3500E79D3C00E69D3C00E79B3500E39E4400E094
      2D00E0963300D9880400DEA55500DEDFDF0000000000FEFEFD00ECCA9400BF85
      4400B7804800C3AFA000F7FDFF00000000000000000000000000000000000000
      0000E5AE5E00C1854200A6724400D0C5C000FAFCFD00FEFEFE00000000000000
      000000000000000000000000000000000000D6C1B200A4734F009F673F00A770
      4900B07A5300B7805900BD855E00C48B6300CB926A00D1987100C7946C003351
      22004A6B3F0052764600577E4A005A854C005B8A4B00598E47006B9E5800EFEB
      E000B8CDA2004B9D300049A12B004BA62B000000000000000000F4F4F400DEDE
      DE00D2D2D200D2D2D200D2D2D200D2D2D200D2D2D200D2D2D200D2D2D200989B
      AB00373E6D008488A500CACCD8000000000000000000CACCD800868AA700353C
      6B008E90A100C9C9C900E5E5E500FBFBFB00000000009DD3A800069335000A92
      3800229E4C0047AC6A005AB37A006BD48C00AEDDBD00EBA95600EC890000E48E
      0F00E3911A00E1942800E2952B00DF911F00E1942700E2942900E29A2D00E29E
      4200DD891100E18C0D00DC820200DFCCB4000000000000000000F9FBFC00F2E9
      DF00E1DCD700E8E5E100E5DFDD00DCDCE300DADAE200E0DEDF00E4E0DE00E1E5
      EB00D3944600B7885700DBD8D700000000000000000000000000000000000000
      000000000000000000000000000000000000935D3600A3734F00AB7B5900B080
      5D00B5846100BA876300BF8A6500C38D6600C78F6700CA916A00A07E55003556
      2A0054724A005C7D520062855600658B5800648F550061915000D4DDC900F9F1
      EB00E2E1CE004D983300479A2C00479D29000000000000000000293063002930
      6300293063002930630029306300293063002930630029306300293063004046
      7400D7D8E200C0C2D10063688D00293063002930630063688D00BBBDCD00D9DA
      E300404674008E90A100CFCFCF00EEEEEE0000000000259E460004933400279C
      4F002DAD580049AC6C005CBD770071C87D00BBECCA00E0B48600EB870000EB8D
      0000EA8D0100E58E0D00E58E0C00E58E0D00E58E0C00E78F0A00DD891300AB75
      4700DA800600E07E0000E0790000DCC6A50000000000FAF8F300CEA36D00B274
      3400BC926A00B58B6500AA7F6000A87857008E6950007E614F007F6351008267
      580080665A00674B3E00DDDEDD00F4F4F5000000000000000000000000000000
      000000000000000000000000000000000000A2745300AA7E5E00B0836300B487
      6700B88A6900BC8C6A00BE8D6A00C18D6800C38D6700C38B6400A47D54003959
      2E005C77530066835C006D8C63006F9163006C935F00A0BB9600FCF8F500F9F1
      EB00F7EBE300629E4A0047932D0042932700000000000000000029306300B2B0
      B200B2B1B200B3B1B300B3B1B300B3B2B300B3B2B300AAAAAE00353B6B00D7D8
      E2009396B0002930630029306300293063002930630029306300293063008B8F
      AB00D9DAE300353C6B00B5B6BA00DFDFDF0000000000008A28000B9639002599
      4C002FB25D004BAC700049D16D0070D08C00B4DEBD00F5CAA100F68C0000EC8E
      0200E98C0100EA8D0000EB8D0000EB8D0000EB8D0000EE8E0000DA8C2300894C
      2400D7831200E8870000E0810000DECCB10000000000F8EAD800DEA86000E5C9
      A000F4E7D100FFFFF900C4A68A00F0E6D100F8E8D100FFEFD500E5DAD200D0B4
      9A00F1E8D70076513A00A0938C00ECEDEF00FEFEFE0000000000000000000000
      000000000000000000000000000000000000A97F6100AF876900B48B6E00B88E
      7000BA907100BC907000BE8F6D00BF8D6A00BF8B6600BE876100BC835C003D54
      2700627C5A006F89660077936E0079976E0073966700ECF0E900FCF8F500F9F1
      EB00F7EBE30075A35F00448B2C003E892500000000000000000029306300B8B7
      B800B8B7B800B9B8B900B9B8B900B9B8B900BAB8BA006F728D008488A500C0C2
      D100293063002930630000000000293063002930630000000000293063002930
      6300C0C2D100868AA70071758F00D5D5D50000000000079636000A93370021AA
      4F002EAE5C0056C66B0054B475006BD48B008BD2AA00DBE3BA00FB920000F895
      0000F8950200F1910200EA8D0200EA8D0200EA8D0000F08F0000B57F5700893D
      0000D67D0100EE8E0000EB921100DECFBA0000000000F3D0A100E5B16B00DFD4
      C000DCCDB700FBFCFB00C48C5000B8ADA700CFBDA700E6D3B500DBC9C000B78C
      6400EAD8B800D2B187007C533900D0D2D300F7F7F80000000000000000000000
      000000000000000000000000000000000000AE886C00B48F7400B9947900BB95
      7A00BC957800BC937500C0967800F1E4DA00CAA18400B8845E00B57E5600685F
      320055714C00738B6C0080987800809A7700A2B79B00FEFEFD00F0DACA00EFD7
      C600F0DACB009EB5870041832B003B802300000000000000000029306300BFBD
      BF00BFBDBF00BFBEBF00C0BEC000C0BFC000C0BFC000454B7500CDCEDA005E63
      8A00293063002930630000000000293063002930630000000000293063002930
      63005B618800D2D3DE00454B7400D1D1D1000000000019A648000C973B0020AB
      4F002EAE5D0056C76B0056CE72006AD0830059CF7D00D0E4CD00F2A54000FA93
      0000F9960200F9960200FB970200EE8F0100EE890000FFD28300A56B3F00AE7B
      4800EAA12F00EB880000E9A43B00E6E2DC00FEFEFF00E9B87000E8C99900E0CB
      AB00E0BE9000EFE0C800CF944D00A9907600AB8F7100AB8D7600D8BFA600B985
      4E00C0987200BC987400835E47008B756600E6EFF300F9F8F800000000000000
      000000000000000000000000000000000000B3907700B9988000BD9C8400BF9C
      8300BE9A7F00BD957900E7D7CA00F9F1EB00DFC6B300B3805B00AF795200AB74
      4B003C4F2100526F49007A9273007A947200B7C2AD00EACAB300B9B9A6009DBE
      B700CBC2B10097A575003D79280036762000000000000000000029306300C5C4
      C50029306300C5C4C500B9BBCA00B9BBCA00BABCCB0032386900F2F3F600363C
      6C002930630029306300000000000000000000000000635DA500293063002930
      630031376900F7F8F9002E356600D1D1D1000000000040AE650011A4430020A9
      4E002EAE5D0057C76C004FC66D0064C4850077CB9A0094CD9600DBBC7800FC92
      0000F9950000F9960200F9960200FA920000F7A12100000000009F5A0F00CEAF
      9B00F1AF4600EB870000E6B46600EAEEF600FFF7EA00E2A55200F2DEC100F9EE
      DE00FBE9CF00F5D9B500E6AA5A00F3DDC500F2DABE00E5CFBB00C0843C00C1A0
      8500D9C2B500D6C3B900C8B5A70087461C00C3C0BF00ECEFF000FFFFFE000000
      000000000000000000000000000000000000B8988100BFA18B00C3A59000C2A2
      8C00BF9D8400D9C3B300FBF6F300F9F1EB00F3E5DB00AE7B5700A9734D00A46D
      4400A26A420080765100263222001C231A0091805D0071C6CC000CCAF00000B9
      DD00009FBE005B8B6F0065905600CCDBC700000000000000000029306300CBCA
      CB00CCCBCC00CCCBCC00CCCBCC00CCCCCC00CDCCCD0033396900F2F3F600363C
      6C00293063002930630000000000293063002930630000000000293063002930
      630031376900F7F8F9002E356600D5D5D500000000006CC8880010A643001FA9
      4D002FAE5D0058C76D003EC9650061C97A008DD299003D944000BDDEC700F1AA
      3A00FE910000F9930000F9930000FC990500FFE6BF000000000093572B00FAFB
      FC00FCAC3300F5940400E8DAC500F9FCFF00ECCC9D00F7CA8400FEF5E800FDF5
      E500E1DCDA00F3F5FB00ECCEA000BCBFC800D8CDBB00CBBEB400F2DABE00AF94
      7600A6ADB200BFB8AC00F5D4A200C6A17D0090614500DBDDE000F8F9F9000000
      000000000000000000000000000000000000A8806300C4A89400C7AD9A00C3A6
      9000BE9D8600F9F6F300FBF6F300F9F1EB00F7ECE300BB927400A36D47009D66
      3E009B633B00E6D8CE0000000000000000001E585C0004B6D80017B5D30022B2
      CE000EA2BF00357E81008080800000000000000000000000000029306300D1D1
      D100D2D1D200D2D2D200D3D2D300D3D2D300D3D2D300494F7800CDCEDA005E63
      8A00293063002930630000000000293063002930630000000000293063002930
      63005B618800D2D3DE00464B7500DFDFDF0000000000A9D8BA0017A5480019AA
      4A0026AD540031C8640051C86800ABE5B4009CD5A700408F3E00B8E1C6007AD2
      B300E6B04300FFA11400FF960000E9D29F00C8FBFF00A0928F00B2682E000000
      0000F9AA3500E3CAA900F6FCFF00FDFDFD00E7AE6200FBE7C50000000000F3F3
      F400E4E5E600F4F7FB00F8DFBE00D3D7DB00D6D1C800E6DBCC00F5E2CC00C09D
      7800A5A9AF00A7A7A900D6C0A500F4D5A500AB743F00BA9F8800E9EBEE000000
      000000000000000000000000000000000000D2BDAD00A8806200C0A28D00BFA2
      8C00D0BAA900FEFCFB0090E2F00069C1CB00A5D2D500D0B29C009C674000965F
      3600CAAE9A0000000000050505000E0E0E00056679004ED5F00063D7EE0045C9
      E30028B8D400058DA80000000000E0E0E000000000000000000029306300D8D7
      D80029306300D9D8D900C3C5D300C3C5D300C3C5D30073789A008488A500C0C2
      D1002930630029306300000000000000000000000000635DA500293063002930
      6300C0C2D100868AA700797D9700EEEEEE0000000000F3F2F50031AE5D0015A9
      470025A750002CAF57003FD16F000000000079B7820082BF8200ACE3C2000D98
      3E0064C38200FFD9C4008099810043C7FF000AC1F60015B0F70059B5D200C0CE
      CA00E6C9AE00EEF4FA000000000000000000E9B56C00FFFAF200000000000000
      00000000000000000000FEF2DB00F5EAD900F0DEC600F3E2CE00FDF5E900DFBC
      8A00D8B78B00C1A27D00C7976200D3A06300C4926900A36F4600D2D6D700F3F3
      F400FEFEFE0000000000000000000000000000000000F0E9E400AF8A6F00A278
      5800C5B8AA0057E1FB0008BBDD0000ACCD0000A6C6008BA49D00925B3300C8AC
      970000000000444444001313130031313100487E880083E9FD0063E0F90045D3
      EF0028C2E0000DADCD00001E240090909000000000000000000029306300DEDE
      DE00DEDEDE00DFDEDF00DFDFDF00E0DFE000E0E0E000D3D4D700373D6D00D7D8
      E2009396B0002930630029306300293063002930630029306300293063008E91
      AC00D9DAE300363C6C00D6D7DB00FBFBFB000000000000000000AFDCC20005A2
      3A0016AA480016A24500DEF7DE00FFF9F60025771100F0FDE80099D0A3000086
      1A00B4DBB90073BEF20000A7F3000CC7FE000DD1FD0008E0FF0002DBFF0026BC
      E800C4D6DC00F7F3F2000000000000000000F5CC8A00EEC48700EFC58800F2C8
      8800F3C88800F3C88800F3C88700F3C68300EEC07F00F1C28100F4C88800F4C4
      7D00EDBC7900E8B67100EBB56D00E6AF6300EEC48700B9875500BE9E7F00E2E9
      EF00FAFAFA00000000000000000000000000000000000000000000000000E1D3
      C90073B3B6000BC0E40049CCE50046C6DF0020B1CE005D989A00E2D5CA000000
      00000000000044444400181818003F3F3F006FB6C50092EDFF006BE6FE0045DC
      F90028CBEB000DB6D700003F4B0040404000000000000000000029306300E5E4
      E500E5E5E500E5E5E500E6E5E600E6E6E600E6E6E600E7E6E700ADAEBF004046
      7400D7D8E200C0C2D10063688D002C3265002930630063688D00BEC0CF00D9DA
      E30040467400A8AABB00F9F9F9000000000000000000000000000000000094CE
      AC002DB057008BB28E006F95AC001AA7B90000A6CA007AC7E7006FB58E0059B1
      6D00CCD3F3000092D70010C7F90009E4FF000AE0FF000BDDFF000ADFFF0000DB
      FF004EBAF500EAE1DE00FAFAFA000000000000000000B9D0FF000028FD00001D
      FF000020FF00001BF8000019F4000014F600001DEB00BBD6FF0085BAFF00A5CE
      FF004B80FD00002FFF000018FF001151FE00E3E8E800F8DAAA00AD703400CFCF
      C800EDEFF200FEFEFE0000000000000000000000000000000000000000000000
      000039DAFA0070E3FA0063DEF60046D2ED0029C1DE0019B1CE00000000000000
      00000000000044444400181818004444440082B1BB00A6F0FF007CE9FF004CE1
      FE0028D2F3000DBDDF00004B5A0040404000000000000000000029306300EBEB
      EB0029306300ECEBEC00CCCEDD00CCCEDD00CCCEDD00CCCFDD00CDCFDE00979B
      B500383E6E008488A500CACCD800FCFDFD0000000000CACCD800868AA700373D
      6D00ADAFC000FBFBFB0000000000000000000000000000000000000000000000
      0000918F7F002965790000BBFC000DD3FF000DDAFF0004D0FF001AA0C500DFE1
      DD005E81CF000E8CD8000FDAFF0006D7F40008E6FF0004EDFD0006EAFD0009E1
      FF0000BDF200EEE1DD00F8F7F6000000000000000000F5F8FB003F6AF7000035
      FA00002FF7000033F900002CF3000630E90098BBF2006BA5FA000E5EFD002B6F
      F80069A3F90085B2F0003F6EF100002BFB008CAEEA00FAECD700DFAB6600C99E
      6B00E2E2E100F9FAFB000000000000000000000000000000000000000000D1E6
      EA0054D9F4008EECFF006AE6FE0046DCFA0029CCEB000DB7D800B0E4EE000000
      0000000000004444440019191900525252007D898C00BCF3FF008BEBFF0055E2
      FF0028D6F8000DC0E4000021270040404000000000000000000029306300F1F1
      F100F2F1F200F2F2F200F2F2F200F2F2F200F3F3F300F3F3F300F4F4F400F4F4
      F400E6E6EA008E91AB00575C840029306300293063004B5179008589A300EDEE
      F10000000000000000000000000000000000000000000000000000000000EBE6
      E7003B4D52000AB1DC0012D1FF000ADFFE000ADFFF000ADFFF0002DCFF0068BD
      B800447DD1001C62C3002465C30003C6E60006F0FF0000FBFC0001F7FD000AE3
      FF0000BFFF00EFE1DD00F8F7F70000000000000000000000000073A2FD000851
      FC000941FA000237F8000029F8006D9AEA0074A9FA001B68FC00256FFC00236E
      FC001E6AFC003079FB00619FF3006CA8F3003C6EF300DDDEE500F5DBB600C67F
      2B00DCC3A100E5E9EE00FBFBFB00000000000000000000000000000000005081
      8A0074D6E900A3EFFF007FE9FF0051E2FE0029D4F6000EBFE20070A4AE000000
      00000000000044444400131313004949490064646400A2AFB2009AE7F70063E5
      FF002DD7F9000D94AF000000000040404000000000000000000029306300F7F7
      F700F8F8F800F8F8F800F9F9F900F9F9F900F9F9F900FAFAFA00FAFAFA00FBFA
      FB00FBFBFB00FBFBFB00FBFBFB00FCFCFC0029306300CECECE00EEEEEE000000
      000000000000000000000000000000000000000000000000000000000000988F
      8A00004B68000ED4FF0007DEFE0009E3FF0008E5FE0009E3FE0009E1FF000DCC
      F100597FD0000526B3000B1CAA000A8ED30006F0FF0003FFFF0002EEF9000ECD
      F50000A6DE00EFE4E100F9F8F800000000000000000000000000A8CBF3001660
      FA00165FFC00084EFC00527EF00074ADFB00045AF9001155FC001257FC001257
      FC001157FC000F55FC000850FE002964EE005A89F200B1C3E500EDF1F300FAC9
      8100D2924300D2D2D300F2F3F40000000000000000000000000000000000034A
      580062A1AE00B8F3FF0092ECFF005FE4FF002BD9FB000EC4E800106778000000
      0000000000000000000025252500212121004949490065656500838383006D9D
      A60027B1CC00020D0F000000000070707000000000000000000029306300FEFE
      FE00FEFEFE000000000000000000293063002930630029306300293063002930
      63002930630000000000000000000000000029306300CECECE00EEEEEE000000
      000000000000000000000000000000000000000000000000000000000000696B
      61000E363A00186A7F00129DB90004F3FF0000FAFC0000F8FC0007E7FE0000DF
      FF00B7AFCF000017AB000920A6000921A6000865C2000B7AD1000152B5000023
      A300677ABB00F6F4EF00FFFEFE00000000000000000000000000FFFFFD002D73
      FB001763FC004D88F8005D8FFA00005FF4000679F0000D69F5001556FD001459
      FC00145BFC00145BFC00135BFC00024EFE00639BF300E4E7EA00FDFDFE00FBE9
      D000E9A64F00D6B58700E4EFFD00F3F6FA000000000000000000000000000C53
      62002E738100B5EAF50099EEFF0066E5FF0036DCFC0019C9EB00036579000000
      0000000000000000000080808000060606001313130026262600494949004444
      4400131E21000000000020202000D0D0D0000000000000000000293063000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029306300CECECE00EEEEEE000000
      0000000000000000000000000000000000000000000000000000000000007477
      710002000000180000002092A20002FFFF0000FFFF0000FFFF0009EFFF0000C5
      F100F6E5E400475FC500000A9C0000109C000000950000009400000090001427
      A200CED4DC00000000000000000000000000000000000000000000000000489D
      FA004297FA005993F700056CF4000E8AF4000771F1000776F1000E69F5001558
      FD000D47FB000B47FB00003AFD005080EF00F0F1E700FEFCFA0000000000FEF8
      F100EFC68C00E19A3E00DE9C4900D9BF9C000000000000000000000000001057
      6500367D8C0075BCCB0093ECFF0069E6FF0046BFD700308B9D000D5462000000
      0000000000000000000000000000404040000000000006060600131313001313
      13000505050060606000F0F0F000000000000000000000000000293063000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029306300DDDDDD00F3F3F3000000
      000000000000000000000000000000000000000000000000000000000000C2C1
      C000100F0D00221F1A00070100001D899B0008B5D300099AB0000C545C005C8A
      840000000000FFFFFA007A89CA001924A4001526A2001221A0004B5BB800EEF2
      F10000000000000000000000000000000000000000000000000000000000B7E9
      F800306BEA000555F0000C8FF400159FF6000F8BF4000872F1000776F0000D69
      F6001061FA00033CFC005E86EE00F4F0E700FFFFFD0000000000000000000000
      0000F6ECDD00E7B37000E6AB6000EDD6B9000000000000000000000000002D6C
      780039808F004D9DAD00428A98003D84920042899700307785000D5462000000
      000000000000000000000000000000000000A0A0A00040404000404040008080
      8000E0E0E0000000000000000000000000000000000000000000293063002930
      6300293063002930630029306300293063002930630029306300293063002930
      63002930630029306300293063002930630029306300F5F5F500FCFCFC000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FD0056555500000000001D1B1700150703001200000018060000110A0300C7C5
      C100000000000000000000000000E9ECF500D3DFEB00D3DEEB00000000000000
      000000000000000000000000000000000000000000000000000000000000FEFF
      FB0091B0F700476CF5000047F6000054F8000A7BF7000F90F5000D84F5000779
      F1000056F7005F84F000E5E7E700FFFEFB000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000091B3
      BA002D74820039808F0039808F0039808F0030778500165D6B00145663000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EDECEB005252590000000000070602000908030014120E00BABBB9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F8FBFC00D9E0FE0079A2F400134DE200002AE9000169E800005D
      E9004A78ED00EEECE600FFFDF900000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFF
      FF0091B3BA001E616F0010576500105765000D54620051838C00D0DDE0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFD00CAE2F8004A6DE600647D
      E700FCFBF200FFFFFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBEEF200E9ECF100EAED
      F100E9ECF100E9ECF100E9ECF100E9ECF100E9EDF100E9EDF100EAEDF200EAED
      F200EAEDF200EAEDF200EAEDF200EAEDF200EAEDF200EAEEF200EAEDF100EBEC
      ED00FAFAFA00FFFFFF00FFFFFF00FFFFFF000000000000000000FEFFFF000000
      000000000000FEFFFF00FAFBFC0000000000ACE5ED00A8DFF200E6E2E700FAF6
      F800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFD009CC8F5000A6FEF006793EF00A7B4EF00A6AC
      EE005183EB00193DDE008C9BD400EFEDE2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0A78100AF956E00AE956C00B095
      6B00B1956A00B3956900B4966800B4956700B3946700B1936700B0926600AF91
      6600AE906500AD8F6500AC8E6500AB8D6400AA8C6400A98B6300AB8D6500C4BE
      B500F2F4F500FFFFFF00FFFFFF00FFFFFF00FFFFFC00EBC58300D58B3E00AA75
      4400AD764100AB7A5000BCB8C900BDC379001BCEDA0000DAFF0073D8B800D9E3
      CE00FFF5FE00FFFBFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F5FAFF00F4F9
      FF00F4F9FF00F4F9FF00F4F9FF00F4F9FF00F4F9FF00F4F9FF00F4F9FF00F4F9
      FF00F4F9FF00FFFFF80093C8F6002080F100A3CFF5005FC5FC002193FB0019A9
      FB0051B1F9009CC7F7001635D4008895CF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00F6F6F600F2F2F200F2F2F200F6F6F600FCFC
      FC0000000000000000000000000000000000AB814100E6D7BF00E2D0B400E3D0
      B300E4D0B200E5D0B200E6D1B100E6D0B100E5D0B000E4CFB000E3CEB000E2CE
      B000E2CDAF00E1CCAF00E0CBAF00DFCBAF00DFCAAE00E2D0B700BA8E5400B39E
      8400F3F5F800FFFFFF00FFFFFF00FFFFFF00DCA36400CC5E00008C3F00008D3F
      0000914200009D4E0000C97E1400FDA01D00D5AF48001ADACD001FAC5A002BA4
      51005EB27D00B3CEC100E4E8E400F3F1F100FDFCFD0000000000000000000000
      000000000000000000000000000000000000FDF8F000E7C59F00D9B28800D5AF
      8600D6AF8700D6AF8700D6AF8700D6AF8700D6AF8700D6AF8700D6AF8700D6AF
      8700DAB08100C8ABAF00068CF7008EC8F90065CDFE004AB0FA003CACF9003394
      F300005EE8001AA5FA0073C8FC00072CDC000000000000000000000000000000
      000000000000FAFAFA00F0F0F000ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00EAEAEA00E5E5E500DDDDDD00D6D6D600D2D2D200D2D2D200D6D6D600DEDE
      DE00EDEDED00FBFBFB000000000000000000BA9D6F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D1B58F00B49F
      8300F3F5F800FFFFFF00FFFFFF00FFFFFF00D4700000A0550800AA540000B45F
      0000D0891D00FFB73A00FFB75100D0BC580072B45400ADD9B2002B994D0028A6
      5200209F4B0018A045004CBF6E00A1CCAE00EDEAF00000000000000000000000
      000000000000000000000000000000000000EECBA300CC5F0000CC5E0000CD5F
      0000CD600000CD600000CD600000CD600000CD600000CD620000D2620000E268
      0000F26100004E80790042BBFF0093D8FC006BCEFE007CD9FE00D9EDFB00DFDC
      F8003779EC000EB2FB0022C5FE003A73EA000000000000000000000000000000
      000000000000F1F1F100D8D8D800CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00BFBFC30074789200494E77002930630029306300494E760071758F00B6B7
      BA00CECECE00E6E6E600F9F9F90000000000B59A6D00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D2B38A00B5A0
      8400F3F5F800FFFFFF00FFFFFF00FFFFFF00D3680000C0650700EA870000F8AD
      3700FFCB7600FBC5720093AB460034AB550033AC65009DCCB00038A25B00219C
      4B0029A252002DA8560020A64E006DC18800E3E0E00000000000000000000000
      000000000000000000000000000000000000EBC09500CA5D0000D2741100D173
      0E00D0710D00D0710D00D0710D00D0710D00D0710D00D36A0000B76E27000B2B
      B1000952BB000197EE0065CFFF00AAECF60088D9FC0067CEFE00AFECFF00698F
      EA001CA8FA0011BCFB0010BEFB002485FA000000000000000000FAFAFA00F0F0
      F000ECECEC008B85C7008B85C7008B85C7008B85C7008B85C7008B85C7006B69
      A60033396C00868AA700CACCD8000000000000000000CACCD800868AA700353C
      6B008E90A100CACACA00E6E6E60000000000B59A6F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3B58A00B5A1
      8400F3F5F800FFFFFF00FFFFFF00FFFFFF00CB670000E4810000F9AA2600FAC6
      7800FAAE3F0074A533001BA6560029AB590032AC5A0095DCAD0040A765001E98
      480028A151002AA453001D9A490060BC7800E1E5DE00FAF8FA00000000000000
      000000000000000000000000000000000000EEC49500CC690000000000000000
      0000F5FFFF00EFFFFF00E7F8FF00E8FBFF00E6EEF600DF8000004E60B9000043
      FA000E38E8000991F60067D2FF00BBF9F80093E6F80078DDFA00AFE8FF005B99
      F5002BC5F80017C9FB0013C2FC000589F4000000000000000000F1F1F100D8D8
      D800CCCCCC008B85C700B5BAD700B5BAD700B5BAD700B5BAD700898EB2004046
      7400D9DAE300BEC0CF0063688D00293063002930630063688D00C0C2D100D9DA
      E300404674008F92A200CFCFCF0000000000BBA07300FFFFFF00E2A84600E2AA
      4B00E2AB4C00E2AB4C00E0A53F00F8E9D200FCF8EF00E0A33D00E2AB4C00E2AB
      4C00E2AB4C00E2AB4C00E2AB4C00E2AB4C00DFA23A00FFFFFF00D5B78D00B7A2
      8500F2F5F800FFFFFF00FFFFFF00FFFFFF00E3880A00E8860000FCC15800D79A
      3A0045A5410015AB570028AE55002BA453002DB05600A3E3AC0054AF74001B95
      4500259D4E00269F4F0023A04D0049AB6F00D0DAD600FCFAFB00000000000000
      000000000000000000000000000000000000F3CA9400DC830600EEBB7800ECB7
      7300EAB67100E7B36E00E4B06C00E5B16D00E5AF6800E6931E00B79771004082
      FF003375F9000FA3FC0049D5FC00D2F9FB00A5F0F60095EDF400E2FAFF005AA6
      F7003FD6F7002BCCF80013E1FE00017CF20000000000000000008B85C7008B85
      C7008B85C7008B85C700AEB2D200AEB2D200AEB2D200A5A9CA00343B6C00D9DA
      E3008E91AC002930630029306300293063002930630029306300293063008E91
      AC00D9DAE300353C6B00B5B6BA0000000000C1A47700FFFFFF00EECE9800EFD0
      9B00EFD09C00EFD09C00EECC9400FBF3E700FDFBF700EDCC9200EFD09C00EFD0
      9C00EFD09C00EFD09C00EFD09C00EFD09C00EDCB9100FFFFFF00D6B88D00B8A4
      8500F2F5F800FFFFFF00FFFFFF00FFFFFF00EC9D2100E9850000FFC77100A999
      5000208F490027AC55002FAA58002FAE5A0028B95B0088E2A300529E59001192
      3E001E954700239C4C0025A14F0044B56A00C6DBCF00F8F4F600000000000000
      000000000000000000000000000000000000F2C99300E1881100E4932900E492
      2600E4922600E4932700E5932700E5932700E5942800E5962E00EA982900E59B
      3900E99C3A0091A4800011BDFC00C2F7F900C8F6FC00A4EFF700F7FFFE005FB1
      F90047E8F40046E4F5001AD3FD000156E40000000000000000008B85C700B5BA
      D700B5BAD7008B85C700A7ABCC00FDFDFF00A7ABCC00848AAC008488A500C0C2
      D100293063002930630000000000293063002930630000000000293063002930
      6300C0C2D1008488A50071758F0000000000C7AA7A00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8BA8D00BAA5
      8500F2F4F800FFFFFF00FFFFFF00FFFFFF00F0B15700E8820000FFC15200B298
      50002A974C0026A7520028A451003AB666004DCE7700D0E8DB00DDF2DA0074BD
      92002EA3550027994F001A964400289E5000BDD2C400F8F5F700000000000000
      0000FBFDFF00000000000000000000000000F1C79100E4932400E9A84F00E9A7
      4B00E9A74B00E9A74B00E9A74B00E9A74B00E9A74B00E7A24300F6CF9100FFFF
      FE0000000000FFF0D20038CCFE001BCFFF00BEF4FA00C7F7FA00B0F3F700A0F6
      F5008FF3F30040E6F6000078F2004395F20000000000000000008B85C700AEB2
      D200AEB2D2008B85C700A1A4C700A1A4C700A1A4C70040467600CDCEDA005B61
      8800293063002930630000000000293063002930630000000000293063002930
      63005B618800CDCEDA00454B740000000000CCAF7E00FFFFFF00E2A94700E2AA
      4B00E2A94900E6B66200FFFFFF00EAC27D00E1A84700E2AB4D00E2AB4D00E2AB
      4D00E2AB4D00E2A94900E6B56200FFFFFF00FFFFFF00FFFFFF00DDBE8F00BAA6
      8600F2F5F800FFFFFF00FFFFFF00FFFFFF00FDE7C400F3950500F48F00009263
      3B002B8F47005CBD7D006DCE8A00B0E6B7009FE5B7004FD17D003FBE590076DA
      9500B2E7BF009AD7B10056B97A004BB76F00BAD5C600EFEAED00ABABAC009898
      9600E5E5E600F7F7F700FDFDFD00FDFDFD00F4CB8F00ECA23500F1BA6500F1B8
      6200F1B86200F1B86200F1B86200F1B86200F1B86200F0B35700FAE4C3000000
      000000000000F6FBFF00E5DBCD003AC6CD001FCBFF0055D8FF0075D7FD005ADE
      F9003AC9FB000088F3003899F400E9F1F50000000000000000008B85C700A7AB
      CC00FDFEFF008B85C7009A9DC1009A9DC1009A9DC10030366900F2F3F600363C
      6C002930630029306300000000000000000000000000635DA500293063002930
      6300333A6A00F5F5F8002E35660000000000D2B48100FFFFFF00EECE9700EFD0
      9B00EECF9900F1D6A700FFFFFF00F3DCB600EECE9800EFD09B00EFD09B00EFD0
      9B00EFD09B00EFCF9A00F5D8A800CADDE60092B0BA00A0BECB00C2AA7E00BFA8
      8700F1F3F600FFFFFF00FFFFFF00FFFFFF0000000000FFE4B300566481001DB0
      DF000BAEBC006BCD79005CDB830040CA66002BC85C0033CC620034BC64002EB5
      5F0022AF540030B55A0057BD7A008FD69F00F4FCF1008B8E88001C1B1E000000
      00009C816E0000000000F5F5F400EEEEEE00F6CD8E00F1AA3900F7C26C00F6BF
      6600F6BF6600F6C06600F6C06600F6BF6600F6C06600F6BF6500F4C26E00F9D2
      9100F9D69D00F8D29500FBC67400FFAB320042A2950000C6EA000FA7F6000D90
      F40001B2DF00AFDEFF00FFFEFC00FFFFFE0000000000000000008B85C700A1A4
      C700A1A4C7008B85C7009396BC00FDFDFF009396BC00343B6C00F2F3F600363C
      6C00293063002930630000000000293063002930630000000000293063002930
      6300333A6A00F5F5F8002E35660000000000D7B98400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF002862750000334C00004866002B534F00A8A5
      9800EAEAEB00FFFFFF00FFFFFF00FFFFFF00000000008A79820000C9FF0007E5
      FF0002E2FF003BA2BD0065C5720030C7650031CB65002FCB63002DBB60002EB4
      5D003EAE64006D947700909893003E41410024221E005C605C00B9BBAE008882
      8100000006001F235C000D100D00EFEFEE00FCCF8C00F9B44C00F9CD8B00FAD2
      9700FBD09000F7CD8F00F9CE8D00FAD29600FACF8F00F9CD8A00FAD29500FACD
      8B00F8CA8800FBCD8900FAD19300FFB548006D99230063C25600A4D28F006DC5
      57001F9A0800F1EEE600000000000000000000000000000000008B85C7009A9D
      C1009A9DC1008B85C7008D8EB6008D8EB6008D8EB6003C427300CDCEDA005B61
      8800293063002930630000000000293063002930630000000000293063002930
      63005B618800CDCEDA00464B750000000000DEBE8700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F5F7F7002A6A7F00005270000056730000ACE70000BBFA00003950003368
      7B00D6D4D300EAE9E900ECEFF200ECEFF200FCFCF8001F1B96000A9CD80000FF
      FF0000FBFF0038CEF600FFCC7700F5BB5E0091BC750062B26E006AC88600C2DA
      A200D9915D0057A9E0002285FF002B8DFF00288FFF005295B9005A4E5B002128
      30004266DF0061A1FF003680FF00FDFAF300FCCE8A00F8BA5700F9D8A000FBE3
      BC00FEE7C300FAE9D300FCE8C600FCEDD700FCE7C400FADAA600FBDFB100FDE7
      C500FAEAD300FDEDD300FDE8C600FFB64A00BDB26B00E7F3F600FFF1FF00B3D8
      B30048A948005AA76500000000000000000000000000000000008B85C7009396
      BC00FDFEFF008B85C7008687B1008687B1008687B100565A89008488A500C0C2
      D1002930630029306300000000000000000000000000635DA500293063002930
      6300C0C2D1008488A500797D970000000000E4C28A00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFE00ADC3CA009DB3
      BA0065909F00006A8F0000CBFF00008CBB000187B5000183AE0002445A00003F
      5900B4B1B200B5B6B900B6A48B00B9A28300FDFDFF0027297C000D329500109B
      E300119AD80039BAE800FFB84400FB930000FFA42500FFC6860000000000FFC8
      690090510000145CC800216DFF001E69FE002B6AF2001E6CFF004888D1003C7D
      D7008DB9F5003561EF00AAB7E700FFFFFD00FBCD8800F9B95B00FAD8A500FDE4
      BE00FCDBAA00FFDAAB00FFDCAB00FDE3BC00FFE0B100FFDDAE00FFE9CB00FFDA
      A800FFDAAA00FFD9A800FFE8C800FFB74F00F4C99700F5F2FF00DCE8DD0085C5
      83006FB96A0030872D00C0DABC000000000000000000000000008B85C7008D8E
      B6008D8EB6008B85C7007F80AB00FDFDFF007F80AB00D9DDF000373E6E00D7D8
      E2008E91AC002930630029306300293063002930630029306300293063008E91
      AC00D7D8E200363C6C00D9D9DD0000000000E9C78D00FFFFFF00FFFFFF00BACA
      CF00517B8A004B7C8E00C0D3D800FFFFFF00FFFFFF00B6CAD00000435C00006E
      9900003A5100014B6300018DBE0000C8FF00018FBF00033F5400034960000044
      5E00577580009C9EA300966624009C600D00000000007E808400000065000002
      6F0000006B00CBC0AD00FAB03F00E9820000F7B04200FFFCF400F8C16B00F68D
      00008B5300000A30B3004179F2004481ED006D9AED005F8AF100003AFF003470
      F1002252F0000036EE00C5D3EF0000000000FCF7EB00FABA5900FAAA3200FBAA
      3500EAA82B00AC930000D79A1100FFAE4300E6A02200BC940000C5950000C696
      0100C5960000C7980300C8960100C59A2700D6DDBD00BAD5BE006BBE6B0078BF
      7500A3D9A90067B0660041933D000000000000000000000000008B85C7008687
      B1008687B1008B85C7007979A6007979A6007979A6007979A600606291004046
      7400D7D8E200C0C2D10063688D002C3265002C32650063688D00C0C2D100D7D8
      E20040467400AAACBC00F9F9F90000000000EFCD9200FFFFFF00DFE3E5001A83
      A20042C4E600024F6800004058004C7E8E00BDCFD6001F566900019BCC0004C2
      FF0000587500024054000340550003465C0003465C00024F680002516B000041
      5B009B999800999DA400996C2E009F67190000000000FFCF7D007B726B00403F
      8200A69E9700FFC56700ED8E0000E9A64D0000000000F4B24C00EC870000F491
      0000AF740F000029D2004676FF00507DFC005F8DFF005580F6000018EE000023
      E4002B58EE00ACC0F70000000000000000000000000000000000000000000000
      0000F6FFFF0004AE100046BC5500A7DCB9005AC46E002BB53D0035B6460038B7
      49003FBB540053C064005ABF6F005DB976006FBF6F0066B863009CCD9B00B9D3
      B200DAF3E000BFE7C30019811A00F4F6EE0000000000000000008B85C7007F80
      AB00FDFEFF008B85C7007272A0007272A0007272A0007272A0007272A0005A5C
      8C0032396B008488A500CACCD800FCFDFD00FCFDFD00CACCD800868AA700373E
      6D00A6A9BA00FBFBFB000000000000000000F5D19400FFFFFF00E9ECEE003F8E
      A3006BECFF0053CCEB00054F6700003F5700003C5600003C52001AA5D0001CCF
      FF000D9ECD0006769B000179A100008AB8000191C20000AFE90000B8F6000053
      7400ACA6A300A6ABB2009D7031009E66180000000000E3912300FBB65100FFC2
      5F00F2A93500E1860600EEB5650000000000EAA84700E1820000E4830000E481
      0000FDBA4D002750F7008A686B008869730089676A000E25BD0090849800A9B6
      EC00F7FFFE000000000000000000000000000000000000000000000000000000
      000000000000A9DFAD0009A9030041B13D0040B23D0047B443004FB9500052BB
      540062BD60005BB1720071BB6E006EBA680092CA9200BBD2B100CEE2CA00C1E1
      C3008CCF8F00299826006EA566000000000000000000000000008B85C7007979
      A6007979A6008B85C7006B6A9B006B6A9B006B6A9B006B6A9B006B6A9B006B6A
      9B00666697004A4D7F00373C6F002930630029306300373C6F0058599300C2C3
      C600EEEEEE00000000000000000000000000F6D59A00FFFFFF00FFFFFF00C8DD
      EA004B99B40072E9FF005DCFEB001C718B0000445C00003F560027A2C70032D5
      FF0025D0FF0019D0FF000CCBFF0003C6FF0000C3FF0000C1FF0000CBFF00005E
      8400C9C1BE00C6CAD100A57839009D65170000000000E5972F00E3922700E392
      2600E28B1700E8BC7F00FCFAF800ECB06100DD8A0A00E28E1200E28D1100E187
      0500F3AF4700183FE600FFD06600FFC756009879430059586300EBD7B8000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004CBA550031AC2E004DB74A004DB7520059BA5E0075BE
      720066C36E0075BE700088C28200ABD8AD00ABD7AE00BBE1BF0094CE970054A5
      500037853300DEF3DD00000000000000000000000000000000008B85C7007272
      A0007272A0008B85C70065639500656395006563950029306300293063002930
      63002930630029306300656395006563950065639500656395008B85C700CECE
      CE00EEEEEE00000000000000000000000000F2BD6100F3C26D00F5C26D00F9C5
      6E00DAB06800448392006DD9EF0086FFFF00014A620000445C00186F8A004FE1
      FF003ED6FF0032D0FF0026CCFF001BC8FF000FC4FF0003BFFF0000C8FF000059
      8000E2DBD900E1E6ED00AC7F40009C64160000000000E6982C00DD984000DF97
      3900EEC8930000000000ECAD5900E38F2000E5973100E6973200E0952B00E590
      2100F3AF44001433D300B3B4E000AD939C00151C9C007E8CD000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BBE0BE002AA8280059BC5A0067B96D0070BA720070BA
      6B007ABE7600A1CD9D00D1E5CE00D2DDC700A8DCAA0066AF6B0046A54A00A2D8
      A100FFFEFF0000000000000000000000000000000000000000008B85C7006B6A
      9B006B6A9B008B85C70063619400636194006361940063619400636194006361
      94006361940063619400636194006361940063619400636194008B85C700DDDD
      DD00F3F3F300000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EAEEEF005A8D9D0061C1D60063CBE2004FB1C9000A536B0043B6
      D50058E0FF0051E3FF003FD8FF0032D0FF0027CCFF001AC8FF000FCEFF000057
      7D00FDF5F300FDFFFF00B28548009B63150000000000DC8A2A00E4A04600F1D6
      B300FCFBF900EAB26700E0963200E1973800E1973800E1973800DF9B4600E38E
      1E00E3A44A009AA0D9007887E8007B8BEC007D8BEA00F1F2F800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000056B64C0045B343007ABE75006EBA690085C8
      8700B5DDB900D8F1DC00B8DDBD0093C18F00318A300072BB7500F5F8F5000000
      00000000000000000000000000000000000000000000000000008B85C7006563
      9500656395008B85C7008B85C7008B85C7008B85C7008B85C7008B85C7008B85
      C7008B85C7008B85C7008B85C7008B85C7008B85C7008B85C7008B85C700F5F5
      F500FCFCFC00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EFF1F200628F9E005EC4DB0089FAFF006BD1E6001665
      7D0010657F001D79940037ACCD0049DBFF003CD4FF002FCFFF0026D6FF000058
      7B00FFFFFE00FFFFFF00B6894B009B63150000000000D3791D00FFF2DD00FFFD
      F900F4C78200E8A64D00E9AB5500E8AA5500E8AA5600E9AB5700E3A04A00DD92
      3200D59B4D00F2EFE60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EDF3F100169B12007AC47A00B8D7B400BCD9
      BB00B4DBB70086C5870051B14E0045B04500EBF3EA0000000000000000000000
      00000000000000000000000000000000000000000000000000008B85C7006361
      9400636194006361940063619400636194006361940063619400636194006361
      9400636194006361940063619400636194008B85C700DDDDDD00F3F3F3000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00749BA9005BBCD20085F4FF0081ED
      FF007CE7FC0076E4FB006AE2FD005FE0FF0055DBFF0048D7FF0041DFFF00005A
      7B00FFFFFE00FFFFFF00B6894A009B63150000000000D2751300F2D8BC00E1A1
      5300DA923D00E59C3C00E19A4100DF994400E59D3E00DD953D00E1933200DC89
      2100D5964900F4F4F30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007ECD80003EAC3D00B0D8B400ADD3
      AA0050B4540046A63F00B3E1B400000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008B85C7008B85
      C7008B85C7008B85C7008B85C7008B85C7008B85C7008B85C7008B85C7008B85
      C7008B85C7008B85C7008B85C7008B85C7008B85C700F5F5F500FCFCFC000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008FB2BD0057B0C5007CE9
      FE0089F8FF0089F7FF0087F7FF007FF4FF0077F0FF0068ECFF0062F4FF000060
      8000FFFFFF00FFFFFF00B98C4D009B63150000000000EDC8A100E4AC7000E6B2
      7C00E6B48000E6B38000E6B48000E6B48000E6B38000E6B48100E6B58200E5B2
      7E00F1D0AC00FFFFFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EBF8F0002FB23A004FB74B00169B
      1700ACD6AE00F6F8F40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE0093B1BB001F6E
      86002679900021758C0019708900146C84000D67810005637F00046683000034
      5300B1AEAC00AFB4BB0096642000995B05000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBF1E30099D39D00FFF9
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFC00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EFEFEF00EEEEEE00EDEDED00ECECEC00ECECEC00F8F8F800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F4F6F4003C7A940024628C00246A94003472
      AC003472AC003472AC006C9EBC00ACDEE4000000000000000000000000000452
      0C0004520C0004520C0004520C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBFBFB00F5F5F500F2F2F200F6F6F600FDFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7E7E700A1A1A1009292920093939300948F9400968D
      9600948C94008C878C00888888008A8A8A00B1B1B100EDEDED00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4F6F400F4F6F400F4F6F4008CBEDC00349EE4006CBEFC0044AEFC003CAE
      FC0044AEFC003CAEFC002C8ED4001462A4000C4A7C00646A74008C8E8C000452
      0C0014621C0014621C0004520C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00F8F8F800F2F2F200EEEEEE00ECEC
      EC00EEEEEE00F2F2F200F9F9F900000000000000000000000000000000000000
      000000000000FDFDFD00F7F7F700F1F1F100EDEDED00EDEDED00E4E4E4008282
      820061616100616161009B9B9B00E1E1E100F0F0F000FCFCFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C6003B3B3B0041414100413C4000385C39002879
      2B00236F2600274E28002A242B002727270089898900EEEEEE00000000000000
      000000000000000000000000000000000000000000000000000000000000F4F6
      FC00F4F6FC00F4F6F400ECEEEC00BCC6C400246A94003C8EBC006CBEFC0094DE
      F40074DEFC006CBEFC003CAEFC003CAEFC003CAEFC005C8E8C00ECEEEC000452
      0C0014621C0014621C0004520C00000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFA00F5F5F500F4F4F400F4F4
      F400F4F4F400F3F3F300E9E9E900B1B1B10084848400545454003C3C3C004949
      490071717100CFCFCF00E8E8E800000000000000000000000000000000000000
      0000E1E1E100A2A2A200727272004C4C4C003E3E3E004848480055555500EBEB
      EB00DADADA00C5C5C500B5B5B500B3B3B300E1E1E100F4F4F400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B2B2B200464646004A4749005A805C0041B3460025A4
      2C00249A28001D8D21002D602F002D262D0078787800D3D3D300F0F0F000FEFE
      FE00000000000000000000000000000000000000000000000000D48E3C00C486
      3C00C47A2C00C47A2400D4C6B4003C8EB4002C8ED400349EE400349EF40074DE
      FC0094DEF40074C6FC006CBEFC0044AEFC003CAEFC006C8EA400FCFEFC000452
      0C0014621C0014621C0004520C00000000000000000000000000000000000000
      00000000000000000000FAFAFA00F1F1F100EAEAEA00E4E4E400E1E1E100E1E1
      E100E1E1E100DCDCDC008B8B8B00000000000000000000000000AAAAAA009797
      97007373730042424200DADADA0000000000000000000000000000000000E6E6
      E600B8B8B800E9E9E90000000000E1E1E100AAAAAA004B4B4B00F9F9F900CDCD
      CD00B2B2B200C4C4C400D9D9D900A6A6A600DADADA00EDEDED00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2F2F200A8A8A8005D5D5D00484848004F505000B5E5B70066C8640019D1
      670028C4500024C1510026912800352E34002B2A2B0064646400BEBEBE00E4E4
      E400F9F9F9000000000000000000000000000000000000000000D48E3C00FCFE
      FC00FCFEFC00F4F6F400ECEEEC005496BC006CBEDC00ACDEFC00ACDEFC00ACEE
      FC0094DEF4008CCEFC006CBEFC006CBEFC003CAEFC006C8EA400FCFEFC001462
      1C0014621C0014621C0004520C00000000000000000000000000000000000000
      0000FAFAFA00F1F1F100D3C8BB00AE8B6300A0723D009D6F3B009A6C38009669
      350093663200553B1C00BBBBBB00BABABA007D7D7D00545454003C3C3C004444
      440064646400A5A5A500DADADA0000000000000000000000000000000000DFDF
      DF00C7C7C700A0A0A000707070004C4C4C003636360084848400D4D4D400C0C0
      C000CECECE00ECECEC00BDBDBD00B9B9B900DCDCDC00EFEFEF00000000000000
      000000000000000000000000000000000000000000000000000000000000E1E1
      E100888888005F5F5F005B5B5B004A494A004C4F4D004EBF530033B42E000EE6
      900020CD62001FD56A002DA82F0038353700383738002C2C2C004F4F4F00A6A6
      A600DEDEDE00F5F5F500FEFEFE00000000000000000000000000D4964400FCF6
      E400ECE6DC00FCE6D400DCDEDC003C8EB4003C8EB4003C8EB4006CBEFC00ACEE
      FC0094DEF4008CCEFC0074C6FC006CBEFC0044AEFC006C8EA400FCFEFC000C7A
      1C000C7A1C000C7A1C0014621C0000000000000000000000000000000000F9F9
      F900D2C7BB00A2805900A1764200C29D6C00CBAB8200C9A98100C7A87F00C5A6
      7E00C4A57D00645440007F7E7D00000000000000000000000000AAAAAA009797
      97007373730040404000DADADA0000000000000000000000000000000000E6E6
      E600B7B7B700E9E9E90000000000E1E1E10084848400A8A8A800D6D6D600D6D6
      D600F0F0F000CBCBCB00C7C7C700CBCBCB00E5E5E500F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000CACACA005D5D
      5D005D5D5D00656565005F5F5F004D4D4D004A494A002B6F2E00309E320026BB
      4D002CB540002ABE430030913300453A45004B4B4B0047474700424242003C3C
      3C0086868600DBDBDB00FAFAFA00000000000000000000000000D4964400F4F6
      F400FCF6E400ECE6DC00B4C6D4003C9ED40074C6FC008CCEFC00ACDEFC00ACEE
      FC00ACDEFC0094DEF40074C6FC006CBEFC0044AEFC006C8EA400FCFEFC00148E
      2400148E2400148E24000C7A1C00000000000000000000000000000000009D7C
      560090653300B48F5F00CDAD7F00D1B08400F9F1E300F9F1E300F9F1E300F9F1
      E300F9F1E300A39E9500BCBCBC00BABABA007D7D7D00545454003C3C3C004444
      440064646400A5A5A500DADADA0000000000000000000000000000000000DFDF
      DF00C7C7C700A0A0A000707070004C4C4C003A3A3A0051515100D1D1D100E0E0
      E000D9D9D900D6D6D600D3D3D300E2E2E200F0F0F000FAFAFA00000000000000
      00000000000000000000000000000000000000000000000000007D7D7D00A9A9
      A900A4A4A4009D9D9D007D7D7D00515151004D4C4D0039413900305A3100326C
      3100317D3200307E31003A463B004F4C4E00575757005F5F5F005E5E5E005858
      580051515100CFCFCF00FAFAFA00000000000000000000000000E49E4C00F4F6
      F400FCF6E400FCF6E400F4F6F400749EB40024627400246A94003CAEFC00ACDE
      FC00ACDEFC0094DEF40074C6FC0074C6FC003CAEFC006C8EA400FCFEFC00148E
      24001C962C001C962C00148E240000000000000000000000000000000000865A
      2900E1D1BA00CCAC8000D0B08400D3B48A00F3E4C900F4E4CA00F4E4CA00F4E4
      CA00F4E4CA00978D7D0085848200000000000000000000000000AAAAAA009797
      97007373730040404000DADADA0000000000000000000000000000000000E6E6
      E600B7B7B700E9E9E90000000000E1E1E100AAAAAA00757575005C5C5C00C8C8
      C800D3D3D300D9D9D900ECECEC00F0F0EF00EBEBEB00ECECEC00F9F9F9000000
      0000000000000000000000000000000000000000000000000000696969005454
      54004A4A4A00424242004242420054545400525252004C494A003A363000352F
      21003733220038332B0039343700464646003D3D3D002D2D2D002A2A2A002626
      260046464600EBEBEB00FEFEFE00000000000000000000000000E4A65400F4F6
      F400FCF6E400F4BE7400FCF6E40064A6C40074C6FC00ACEEFC00D4E6F400ACEE
      FC00ACEEFC0094DEF4008CCEFC006CBEFC003CAEFC006C8EA400FCFEFC001CA6
      2C001CA62C001C962C001C962C00000000000000000000000000000000008A5E
      2C00E4D4BE00CEB08500D2B38900D7B88E00F4E6CE00F4E6CE00F4E6CE00F4E7
      CF00F4E7CF00B0A797009C9C9C0089898900545454003C3C3C00454545006565
      6500B2B2B200B0B0B000E0E0E00000000000000000000000000000000000C8C8
      C8009B9B9B00757575004C4C4C003C3C3C004A4A4A007B7B7B00C0C0C0009C9C
      9C00E5E5E500F7F7F700FAFAFA00CBAC8A00CFB59600DDDDDD00EAEAEA00F9F9
      F90000000000000000000000000000000000000000000000000000000000FEFE
      FE000000000000000000CBCBCB005454540053525200525454004796A2001EC6
      DD000ABACF0019819000333434002E2C2C008C8C8C00E5E5E500FDFDFD000000
      0000000000000000000000000000000000000000000000000000E4A65400F4F6
      F400F4F6F400FCF6E400ECE6DC00B4C6D4005496BC003C8EB4002C8ED400349E
      F40074C6FC00ACDEFC008CCEFC003CAEFC002C8ED400646A74008C8E8C0024AE
      340024AE340024AE34001CA62C00000000000000000000000000000000008E62
      2F00E6D6C100D0B38A00D5B78F00D9BB9400F6EBD600F5E9D300F5E9D300F5E9
      D300F3E7D1008A8A8700000000000000000000000000AAAAAA00979797007373
      73003A3A3A00CDCDCD00EAEAEA00000000000000000000000000E6E6E600B8B8
      B800E9E9E90000000000E1E1E100AAAAAA008C8C8C005D5D5D005D606400DADA
      DA00EDEDED00FAFAFA00C8AC8D00B4844D00C9A37700CFB59800DDDDDD00EBEB
      EB00FAFAFA000000000000000000000000000000000000000000000000000000
      000000000000E3E3E3009393930058585800575556008AB3B6006EEBF80032D7
      EF0021CBE60008CDDE001A808E003125230065656500A4A4A400DCDCDC00F2F2
      F200000000000000000000000000000000000000000000000000F4AE5C00F4F6
      F400F4F6F400FCF6E400FCF6E400ECE6DC00ECE6DC00ECE6DC00DCDEDC008CBE
      C400248EAC008CCEFC0074C6FC002C8ED40064A6C400D49E5400DCDEDC0024BE
      340024BE340024AE340024AE3400000000000000000000000000000000009366
      3200E7D8C400D3B68F00D7BA9400DBBF9900F8EFE0009C9589009C9589009C95
      890087817600C1C1C10000000000C6C6C600C5C5C500C3C3C300C2C2C200C0C0
      C000B0B0B000E2E2E200F3F3F300000000000000000000000000DFDFDF00DCDC
      DC00EBEBEB00C6C6C600C4C4C400C3C3C300C1C1C100C0C0C0007689A200D9D9
      D900E8E8E800C4AA8D00AA7B4500B1814A00C7A07500C9A27300D0B79A00DDDD
      DD00ECECEC00FBFBFB0000000000000000000000000000000000000000000000
      0000CCCCCC00757575005C5C5C005D5C5C0062626200CAFBFE0088F1FE0042E8
      FA003FDEFD0024D7FE0009B5D600352523003D3D3D004D4D4D008F8F8F00D1D1
      D100EDEDED000000000000000000000000000000000000000000ECAE6400FCFE
      FC00F4F6F400F4F6F400F4F6F400FCF6E400ECE6DC00ECE6DC00FCE6D400F4F6
      F4005496BC00ACDEFC003CAEFC003C7A9400FCFEFC00C4863C00ECE6DC00E4E6
      F400F4F6FC00000000000000000000000000000000000000000000000000976A
      3600E8D9C600D5B99500DABE9900DDC29E00FAF3E800F7EDDC00F7EDDD00F7ED
      DD00D5CCBF00BBB7AE00C0BFBD00CECDCD00D9D9D900D9D9D900C5C5C500ABAB
      AB00DCDCDC00F5F5F500FDFDFD0000000000000000000000000000000000DFDF
      DF00CBCBCB00D3D3D300D9D9D900D7D7D700B1B5BD00889BB9004486E600D9D9
      D900BFA78D00A0723D00A7784200AD7D4700C39E7300C69F7200C89D6C00D6BE
      A300EDEDED00F8F8F80000000000000000000000000000000000F6F6F600A4A4
      A4006060600060606000646464006A6969005E606000509CA30066CED80044F0
      FD0048E2F60030E0FF0015BDEE003A2A28005151500059595900525252007979
      7900C3C3C300E8E8E800FDFDFD00000000000000000000000000ECAE6400FCFE
      FC00F4F6F400F4F6F400FCFEFC00FCFEFC00F4F6F400F4F6F400FCF6E400F4F6
      F4003C8EBC00ACDEFC005496BC00D4E6E400FCFEFC00C4863C00ECEEEC00ECEE
      EC00F4F6F4000000000000000000000000000000000000000000000000009B6D
      3900E9DBC900D8BD9900DCC19F00E0C6A400FBF7EF009E988F009E988F009E98
      90009C968E00E7E0D300D8D1C500C3BCB100BAB4AB00805B3200BCBCBC00E8E8
      E800000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFDFE001C4BC8001951CF00487BDE003A78E100C4B6
      A800A6825900AF8A6000A3743F00A97A4400C09A6F00C39B6E00C7A37A00CDA7
      7C00ECDECE00FDFDFD0000000000000000000000000000000000929292005555
      5500646464006A6A6A006A6A6A0076757500626262003E5F61004C7B800045BF
      C7004BB4C0003ACDE6002B7E95004B413E005D5D5D0065656500616161005C5C
      5C00A2A2A200D3D3D300F9F9F900000000000000000000000000F4BE7400FCFE
      FC00F4F6F400F4BE7C00EC8E1C00EC8E1C00EC8E1C00EC8E1C00E48E1C00F4DE
      C4003C8EBC008CCEFC006CA6AC00FCFEFC00FCFEFC00D4964400F4F6F400F4F6
      F400000000000000000000000000000000000000000000000000000000009F71
      3D00EADDCC00DAC09F00DFC5A400E3C9A900FDFAF500F9F2E600F9F2E600F9F2
      E600F9F2E600F9F2E700F9F2E700F9F2E700FAF5EC00A7784200DDDDDD00F1F1
      F100000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD00F5F5F5002142BF001E49C6004B75D7003E72DA00D9D9
      D900E2E2E200ECECEC009F713C00A5764100BD986C00BE966900E1E1E100F4F4
      F40000000000000000000000000000000000000000000000000084848400CBCB
      CB00BEBEBE00ADADAD00878787008080800069686800474A4A003D5B5C004B76
      76004C8B90003A7680004145460054525100666666007575750082828200ABAB
      AB00BABABA00D1D1D100F9F9F900000000000000000000000000F4BE7400FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00F4F6F400F4F6
      F4003C8EB4006CBEDC00B4D6D400FCFEFC00FCFEFC00D4964400F4F6F400F4F6
      F40000000000000000000000000000000000000000000000000000000000A375
      4000ECDECE00DDC4A400E1C8A900E5CCAE00FEFCFA009F9B95009F9B95009F9B
      95009F9B95009F9B95009F9B9500FAF5EC00FCF8F300AB7C4500DDDDDD00F0F0
      F000000000000000000000000000000000000000000000000000000000000000
      0000CBCBEA005657BB00515ABD00253AB7002240BD004E6DD000466FD4003569
      D7002A68DA00A8BDDF009B6D3900A1733E00BA956A00BB946700E1E1E100F5F5
      F500000000000000000000000000000000000000000000000000747474005B5B
      5B0047474700434343004E4E4E008B8B8B006F6F6F00686663004C4B4E002E32
      4000303441004542440055514D0057575700434343003D3D3D00444444004242
      42006E6E6E00F7F7F70000000000000000000000000000000000F4BE7C00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00F4F6F400F4F6
      F400ACDEE4001C7A8400F4F6F400FCFEFC00FCFEFC00D49E5400F4F6F400F4F6
      F40000000000000000000000000000000000000000000000000000000000A879
      4300EDE0D100DFC7A900E3CCAE00E7D0B300FFFEFD00FBF6EF00FBF6F000FBF6
      F000FBF7F000FBF7F000FBF7F000FBF7F100FDFBF800AF7F4800DEDEDE00F1F1
      F100000000000000000000000000000000000000000000000000000000000000
      000000000000A6A7DA002C2EAA002A32AE002638B5005167C9004B69CE003C65
      CF009DB0DA00EBEBEB00976A36009D6F3B00B6926800B8916400E6E6E600F5F5
      F500FCFCFC00F9F9F900FCFCFC00000000000000000000000000000000000000
      00000000000000000000CCCCCC0094949400757471005E6577002451C600004A
      F9000056FD000F50C800343D4D003A3835009D9D9D00EFEFEF00000000000000
      0000000000000000000000000000000000000000000000000000F4C68400FCFE
      FC00FCFEFC00F4C68400EC8E1C00EC8E1C00EC8E1C00EC8E1C00EC8E1C00E4A6
      5400FCFEFC00DCDEDC00FCFEFC00FCF6E400FCFEFC00E4A65400F4F6F400F4F6
      F40000000000000000000000000000000000000000000000000000000000AC7D
      4600EEE2D300E2CBAF00E6CFB400E8CFB2000000000000000000FFFFFE00FEFE
      FE00FEFEFD00FEFEFD00FEFDFC00FEFDFC00FEFDFB00B3834C00E9E9E900F7F7
      F700000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00F4F4F4009FA0D3002C2EAA002B30AC00515DC2004C60C60092A0
      D200E7E7E700F0F0F00093663300996C3800AC845800AF865600EBEBEB00F2F2
      F200F4F4F400EFEFEF00F7F7F700000000000000000000000000000000000000
      0000FDFDFD00AAAAAA00737373009F9F9E00777878008A9ACF00426EF0000044
      E9000045E7000058FD00124EC10040392B005656560081818100CBCBCB00E3E3
      E300FBFBFB000000000000000000000000000000000000000000F4C68400FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00F4F6
      F400F4F6F400FCFEFC00FCFEFC00F4F6F400FCFEFC00E4A65400F4F6F400F4F6
      F40000000000000000000000000000000000000000000000000000000000B080
      4A00EFE4D600E3CCB100DCB99000D7A66E00DFB58600DDB38400D9B18100D6AE
      8000D3AB7C00CFA67800CDA37400C89F6F00C0936000B7874F00F9F9F900FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700AA6E2C00EBEBEB009E9ED1002C2EAA005455BA00765E7400E2E2
      E200EBEBEB00AA6E2C00ECECEC00EEEEEE00F0F0F000AA6E2C00EBEBEB00EDED
      ED00AA6E2C00EBEBEB00F5F5F50000000000000000000000000000000000D4D4
      D4007D7D7D005D5D5D0063636300ABABA900838384007B96F400133FE000004B
      EA00003CE100003EE5000146E6003F3E3A004B4A49004F4F4F006B6B6B00B5B5
      B500D3D3D300F0F0F000FEFEFE00000000000000000000000000F4CE9400FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00F4F6F400F4F6F400F4F6F400F4F6
      F400F4F6F400F4A64C00EC962400E49E4C00ECAE6400F4C68400ECE6DC00F4F6
      F40000000000000000000000000000000000000000000000000000000000B484
      4D00EADAC800CC9F6A00DFC2A000F8F3EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AA6E2C00EEEEEE00AA6E2C00EEEEEE00765460008A8CCA00AA6E2C00E9E9
      E900AA6E2C00EFEFEF00AA6E2C00EFEFEF00AA6E2C00EEEEEE00AA6E2C00EEEE
      EE00AA6E2C00EBEBEB00F5F5F500000000000000000000000000BABABA005E5E
      5E005C5C5C00666666006B6B6B00B4B4B2007E7F82000020B000002CDA00005B
      F8000043EA000045EE000234D200514D440060605F005F5F5F00868686009B9B
      9B00ABABAB00D5D5D500FAFAFA00000000000000000000000000F4CE9400FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00F4F6F400F4F6
      F400FCFEFC00F4AE5C00F4DEC400F4F6F400FCE6D400FCE6C400F4F6F4000000
      000000000000000000000000000000000000000000000000000000000000BB8B
      5400D9BC9B00F7F2EB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AA6E2C00F6F6F600AA6E2C00F6F6F600AA6E2C00F1F1F100AA6E2C00F2F2
      F200AA6E2C00F6F6F600AA6E2C00F7F7F700AA6E2C00F6F6F600AA6E2C00F6F6
      F600AA6E2C00F1F1F100F8F8F80000000000000000000000000083838300C5C5
      C500BBBBBB00A8A8A80087878700BEBEBD00858481001F2E5B00122F94000F3F
      B2000A37BB000137D20020357D006C695F006E6E6E009C9C9C00C2C2C200BFBF
      BF00B8B8B800D0D0D000F9F9F900000000000000000000000000F4CE9400FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00F4F6
      F400FCFEFC00F4BE7400FCE6C400F4F6F400FCF6E400FCF6E400F4F6FC000000
      000000000000000000000000000000000000000000000000000000000000F8F3
      ED00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AA6E2C00FBFBFB00FDFDFD00AA6E2C00FBFBFB00AA6E2C00FBFB
      FB00FDFDFD00AA6E2C00FBFBFB00FDFDFD0000000000AA6E2C00FBFBFB00FDFD
      FD00AA6E2C00FBFBFB00FDFDFD000000000000000000000000008A8A8A006060
      60004B4B4B004141410050505000C6C6C6009999980061605F0028314E001D2D
      65001B2F730024315E0065655F0070706F004F4F4F0041414100424242003F3F
      3F005F5F5F00F6F6F60000000000000000000000000000000000F4D69C00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00F4CE9400F4DEC400ECE6DC00FCF6E40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E0E0E000A0A0A000AFAFAF009191900064635F004644
      3D004A48400062605A006B6A6A005C5C5C00AFAFAF0000000000000000000000
      0000000000000000000000000000000000000000000000000000F4D69C00F4D6
      9C00F4CE9C00F4CE9400F4CE9400F4CE9400F4CE9400F4C68400F4C68400F4BE
      7C00F4BE7C00F4D69C00FCE6D400F4F6F4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F4F4F400D6D6D600D6D6D600D7D7D700DBDBDB00DDDD
      DD00DCDCDC00D9D9D900D6D6D600D2D2D200EBEBEB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFAF500DCD9DA00949AC3005B6F
      BE005366BD004958B7004F50A5006A69A700A7A5B800D5D5D200EFEFEC00FCFC
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFE00D3CDDC006E73B8001A3AB800194BCB001959
      D900296DE3003E88F200589BF6005177D5002B37AB0053509E00B7B6BF00E2E2
      DE00FBFBFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ACAEDC004C42AC00241A9C00241AAC001C128C004C42AC00ACAEDC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002462
      8C00ECEEEC000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E9CB9800E0C08B00D8B4
      7F00CEA97200C59C6700BB905A00CAAC8700E3D5C500E2D3C200E1D2C100B08A
      5E009F713C009D6F3B009B6E39009A6C3800A37A4B00A38A6D00D1D1D1000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A6A2CB00344EBE000754E2000061F800005FFD00005A
      FC00005AFB000060FA000F6CF400418EF700689EEE003D53BC00413A9800B1B1
      BE00E9E9E6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E4E6F4003C32
      B4004442C400A4AEF400E4E6F400F4F6FC00E4E6F400A4AEF4003C32B400342A
      9C00ECEEEC00000000000000000000000000000000000000000000000000F4F6
      F400F4F6F400F4F6F400F4F6F400F4F6F400F4F6F400F4F6F4008CAECC002C8E
      D400749EB40000000000F4F6F400F4F6F400F4F6F40000000000000000000000
      00000000000000000000000000000000000000000000E6C79300DDBC8600D5B1
      7B00CDA56E00C39A6200BA8F5800E7D9C800ECE2D600EBE1D400EADFD300BE9C
      7500A3753F00A1733E009F713D009E703B009D6F3C009C897300B8B8B800CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00000000000000000000000000000000000000
      0000000000009290CA001950D2000166F8000067FC005197FB00AECFFC00F1F7
      FF00EBF3FF004C8BE8000062F6000066F9003887F5006AA4F3003747B4004844
      9C00C8C8C800F5F5F40000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DCDEDC002C2AC40094A6
      F400CCDEF400447AFC00345AFC00345AFC003C52FC00446AFC00C4CEFC009496
      E400241A9C00E4E6F40000000000000000000000000000000000F4F6FC00F4F6
      FC00F4F6FC00F4F6FC00F4F6FC00F4F6FC00ECEEEC00ECEEEC003472AC0044AE
      FC006C9EBC00E4E6F400F4F6F400F4F6FC00F4F6F400F4F6FC00F4F6FC000000
      00000000000000000000000000000000000000000000E2C18E00DBB78300D3AD
      7600CBA26B00C2966000CEAE8800F5F0E900F5EEE700F4EDE600F3ECE400CCB0
      9000A7784200A5764100A4754000A2743E00A0723D00936B3D00A5794700B283
      4D00B2834D00B2834D00B2834D00000000000000000000000000000000000000
      00009A9BD3001953D8000470FE003789FB00DCEAFE00FFFFFF00FFFFFF00FFFF
      FF00ACC8EF000061EF001C76F800488FF3000060FA004D95F5006295E8002429
      9F007A78AA00E7E7E000FDFDFD00000000000000000000000000D48E3C00C486
      3C00C47A2C00C47A2400C47A2400BC721C00BC721C00241AAC00A4AEF4009CBE
      FC00447AFC00446AFC00446AFC00446AFC00345AFC003C52FC003C52FC0094A6
      F4009496E400342A9C00000000000000000000000000D48E3C00C4863C00C47A
      2C00C47A2400C47A2400BC721C00BC721C00AC621400DCAE7C006C9EBC00349E
      E4006CBEFC003472AC00C4BE9C00AC6214009C5A0C00ECDECC00000000000000
      00000000000000000000000000000000000000000000E0BE8900D9B47E00D2AA
      7300CA9F6800C1955D00EADFD100F5F3F100F5F3F100F6F4F100FAF7F400DBC6
      AE00AB7C4500A97A4400A8794300A6774200A4754000D1CAC300F6F5F500FFFE
      FE00FFFEFE00FFFEFE00FFFEFE0000000000000000000000000000000000CDC9
      E6003159D100056BFA004F96FB00F8FAFE00FFFFFF00FFFFFF00FFFFFF00EEF3
      FA000E67E7000367F8005E9CF200277DF5001C78FA001473F8006EA9F500425A
      BF00342F9800D5D5CF00F8F8F700000000000000000000000000D48E3C00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00F4F6F400ACAEDC005C5ADC00D4E6F4004C8E
      FC004C8EFC00447AFC00446AFC00446AFC00446AFC00345AFC00345AFC003C52
      FC00C4CEFC004442C400ACAEDC000000000000000000D48E3C00000000000000
      0000000000000000000000000000F4F6F400F4F6F400FCF6E400ECEEEC003472
      AC006CBEFC003CAEFC00246A9400ECEEEC00AC723400ECE6DC00000000001C12
      8C000C0A7C000C0A7C00000000000000000000000000DEBA8600D7B27B00D0A8
      7000CA9E6600D5BFA500E5E5E500E6E6E600E8E8E800E9E9E900F0F0F000E8DA
      CA00AF7F4800AD7E4700AC7C4600AA7B4500B3916A00EBE8E600FEFBF900FFFC
      FA00FFFCFA00FFFCFA00FFFCFA00000000000000000000000000FFFFFD005166
      CE000F6CF4002A81FA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00357C
      E3000061F9004A92F3003A87F3003B89FB00F4F8FE001674F9004C95F6005A84
      DC0028279900A3A1BC00F4F4F000000000000000000000000000D4964400FCF6
      E400FCF6E400FCE6D400FCE6D400FCE6C4004442C400BCCEFC006CAEFC005C9E
      FC004C8EFC00447AFC00446AFC00446AFC00345AFC00345AFC00345AFC003C52
      FC00446AFC00A4AEF4004C42AC000000000000000000D4964400FCF6E400FCF6
      E400FCE6D400FCE6D400FCE6D400FCE6D400FCF6E400FCF6E400D4E6E4003472
      AC0044AEFC006CBEFC00349EF4003C8EB400646A74009C9E9C009C9E9C000C0A
      7C001C128C001C128C00000000000000000000000000DDB68000D6AE7800D0A5
      6D00D1BDA300D3D3D300D5D5D500D6D6D600D8D8D800D9D9D900DADADA00EAE1
      D800B3834C00B1814A00AF804900AF804B00D9CFC400F9F6F100FEFBF600FEFB
      F600FEFBF600FEFBF600FEFBF600000000000000000000000000BFBFE6000D4E
      DE001074FB00E0EDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF0071A3E800005C
      F5003686F6005295F2000E6FF900EAF3FE00FFFFFF007EB2FC00247BF60069A2
      EF00292A9C007B78B000EEEEE800000000000000000000000000D4964400F4F6
      F400FCF6E400FCF6E400FCE6D400FCE6C4003C3ADC00FCFEFC006CAEFC005C9E
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00345A
      FC003C52FC00E4E6F400241A9C000000000000000000D4964400F4F6F400FCF6
      E400FCF6E400FCF6E40000000000ECEEEC00B4BED4006C9EBC004C8ECC003CAE
      FC0074C6FC006CBEFC0044AEFC003CAEFC006C8EA400DCDEDC00BCC6C4000C0A
      7C001C128C000C0A7C00000000000000000000000000CB9A6000D6AC7400CCB9
      A200BCBCBC00ABABAB00B5B5B500D3D3D300C9C9C900ACACAC00B5B5B500D6D4
      D100B7874F00B5854D00B3834C00C8AC8C00F4EFE900FEF9F300FEF9F300FEF9
      F300FEF9F300FEF9F300FEF9F3000000000000000000000000004853CA00197A
      F80068A5FB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B8CFF2000262ED001472
      F8005F9CF200076AF700A7CBFD00FFFFFF00FFFFFF00C9DFFE000C6DF70071AE
      F9002A2E9F006461A800EDEDE400000000000000000000000000E49E4C00F4F6
      F400FCF6E400FCF6E400ECE6DC00FCE6D4004442E400FCFEFC006CAEFC006CAE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00345A
      FC00345AFC00E4E6F400241A9C000000000000000000E49E4C00F4F6F400FCF6
      E400F4F6F400000000006C9EBC0054A6D400349EF40044AEFC006CBEFC0094DE
      F40094DEF40074C6FC0044AEFC003CAEFC006C8EA400ECE6DC00B4BED4001C12
      8C001C128C001C128C00000000000000000000000000E6CCAF00CC9A6000B995
      690095938E00C3C3C300D6D6D600E5E5E500F9F9F900F8F8F800C1C1C1009A88
      7400BA8A5200B98A5500CEB59700F8F1E900FEF7F000FEF7F000FEF7F000FEF7
      F000FEF7F000FEF7F000FEF7F0000000000000000000EFEAF5002157DD00247F
      FA00BCD7FD00FFFFFF00FFFFFF00FFFFFF00F3F5FA000763E5000066F9005E9C
      F2001E76F5006EA7FC00FFFFFF00FFFFFF00FFFFFF00EDF4FE000468F6006FAE
      FA002A2C9F005B59A700F0F0E700000000000000000000000000E4A65400F4F6
      F400F4F6F400F4BE7C00E48E1C00EC8E1C003C3ADC00FCFEFC006CBEFC006CAE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00446A
      FC00345AFC00E4E6F400241AAC000000000000000000E4A65400F4F6F400FCF6
      E400FCE6C400000000006C8EB4003CAEFC006CB6E4006CBEFC006CBEFC008CEE
      FC00ACDEFC008CCEFC006CBEFC003CAEFC006C8EB40000000000ACAEDC001C12
      8C00241A9C001C128C0000000000000000000000000000000000D4BEA5007B79
      7500D5D5D500DCDCDC00D4D4D400CDCDCD00D1D1D100F0F0F000FBFBFB00ABAB
      AB0099897500C3B8AA00E1DAD200FAF2E900FDF5EC00FDF5EC00FDF5EC00FDF5
      EC00FDF5EC00FDF5EC00FDF5EC000000000000000000A4A0DF002A76EF00388A
      FB00EEF4FE00FFFFFF00FFFFFF00FFFFFD00387EE5000061F9004D93F3003A87
      F4003A8AFB00F8FBFE00FFFFFF00FFFFFF00FFFFFF00F4F8FE00056AF7006BA5
      F500282A9C006462AA00F4F5EC00000000000000000000000000E4A65400F4F6
      F400F4F6F400F4F6F400FCF6E400FCF6E4005452E400D4E6F4008CCEFC006CBE
      FC006CAEFC006CAEFC005C9EFC005C9EFC004C8EFC00447AFC00447AFC00446A
      FC00447AFC00A4AEF400544AB4000000000000000000E4A65400F4F6F400F4F6
      F400F4F6F400F4F6F4008CBEC4006C8EA4003C9ED4003CAEFC006CBEFC008CEE
      FC00ACDEFC008CCEFC006CBEFC003CAEFC00749EB400000000009CA6D400241A
      AC00241AAC00241A9C0000000000000000000000000000000000888888006D6D
      6D00D3D3D300E2E2E200DADADA00D3D3D300CBCBCB00CECECE00F4F4F400E0E0
      E00084848400B2ABA500D1C9C100F1E8DE00FDF3E900FDF3E900B2834D00B283
      4D00FDF3E900FDF3E900FDF3E90000000000000000007E7FDA00307BEF004390
      FB00FFFFFF00FFFFFF00FFFFFF0084ADEA00005EF3003182F7005295F200096C
      F800DEEBFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D4E5FE001071F7006597
      E90028279B007A78B100F9F9F200000000000000000000000000F4AE5C00F4F6
      F400F4F6F400F4F6F400FCF6E400FCE6D4009CA6D4008496F400F4F6FC0074C6
      FC006CBEFC006CBEFC006CAEFC006CAEFC005C9EFC005C9EFC004C8EFC00447A
      FC00CCDEF4004C4ACC00ACAEDC000000000000000000F4AE5C00F4F6F400F4F6
      F400F4F6F400F4F6F4003C8EBC0044AEFC0074C6FC0074C6FC006CBEFC008CEE
      FC00ACDEFC0094DEF40074C6FC0044AEFC006C8EB400000000008C86CC00241A
      AC00241AAC00241AAC00000000000000000000000000000000004A4A4A004F4F
      4F0078787800E2E2E200E1E1E100D9D9D900D1D1D100CACACA00D9D9D900EDED
      ED008F8F8F0095928E00C6BEB400E6DCD000FDF2E500FDF2E500B2834D00B283
      4D00FDF2E500FDF2E500FDF2E50000000000000000006271DD002F7AF0004D96
      FB00FFFFFF00FFFFFF00B9D0F2000060EC001070F800629EF100056AF600AACC
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009FC5FD002C84F8005478
      D600252497009897BE00FEFEF900000000000000000000000000ECAE6400FCFE
      FC00F4F6F400F4F6F400F4F6F400ECE6DC00FCE6D4004442E400CCDEF400D4E6
      F40074C6FC006CBEFC006CBEFC006CAEFC006CAEFC005C9EFC004C8EFC009CBE
      FC00A4AEF4003C32B400000000000000000000000000ECAE640000000000F4F6
      F400F4F6F400F4F6F4006C9EBC006C8EB4006C8EB400349EE40044AEFC0094DE
      F4008CEEFC0094DEF40074C6FC006CBEFC00749EB400000000007472D4002C2A
      C4002C2AC400241AAC0000000000000000000000000000000000424242004747
      47006B6B6B00E9E9E900E7E7E700DFDFDF00D8D8D800D0D0D000D1D1D100E5E5
      E500969696007F7D7B00C1B8AD00E1D6C900FDF0E200FDF0E200B2834D00B283
      4D00FDF0E200FDF0E200FDF0E20000000000000000005E69DB00317AEF004692
      FC00FFFFFF00EBF0F9000A64E6000167FA00609DF2002078F5006BA7FC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003C8BFB00569AF6003E52
      BA0028249500DEDEDD00FFFFFE00000000000000000000000000F4BE7400FCFE
      FC00F4F6F400F4F6F400FCFEFC00F4F6F400FCF6E400CCCECC005452E400CCDE
      F400F4F6FC008CCEFC006CBEFC006CBEFC006CAEFC006CAEFC00D4E6F4009CBE
      FC004442C400E4E6F400000000000000000000000000ECAE640000000000F4F6
      F400F4F6F400F4F6F4008CAECC00349EE4006CBEFC0074C6FC006CBEFC0074C6
      FC008CEEFC0094DEF40074C6FC0044AEFC00749EB400000000005C5ADC002C2A
      C4002C2AC400241AC400000000000000000000000000000000003B3B3B004040
      400082828200F5F5F500EEEEEE00E6E6E600DEDEDE00D6D6D600D4D4D400D6D6
      D6009999990071706F00C0B5A900DFD3C500FCEEDE00FCEEDE00B2834D00B283
      4D00FCEEDE00FCEEDE00FCEEDE0000000000000000006D73DA00327DF0003C8C
      FB00FFFFFF004B8AE600005EF700498FF5003D89F3002F82FB00F3F7FE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D2E4FE001E7AF9005E8FE700272B
      A2004C49A000FFFFF30000000000000000000000000000000000F4BE7400FCFE
      FC00F4F6F400F4BE7C00EC8E1C00EC8E1C00E48E1C00E48E1C00C47A2C004442
      C400748EDC00D4E6F400FCFEFC00FCFEFC00FCFEFC00BCCEFC007472D4004442
      C400E4E6F40000000000000000000000000000000000F4BE740000000000F4F6
      F400F4BE7C00F4D69C00ECEEEC0064A6C4006C9EBC006C8EB4003CAEFC006CBE
      FC008CEEFC0074C6FC003CAEFC00349EE4007C7A8400BCBEB4003C3ADC00342A
      E400342AE400241ADC0000000000000000000000000000000000343434003838
      38006B6B6B00C9C9C900C5C5C500C9C9C900E1E1E100DDDDDD00D9D9D900D2D2
      D200919191006E6D6C00C5B8AB00E4D6C600FCECDB00FCECDB00B2834D00B283
      4D00FCECDB00FCECDB00FCECDB0000000000000000009594E0002C78EF003486
      FA004D8DE8000060F4002D80F7005697F2000569F800DBEAFE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004E96FB004B95F700415EC9001712
      8F00B4B4CB00FFFFFE0000000000000000000000000000000000F4BE7400FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00F4F6F400FCF6E400ECE6
      DC009CA6D4005452E4003C3ADC004442E4003C3ADC004C42AC009CA6D400F4F6
      F4000000000000000000000000000000000000000000F4BE7400000000000000
      0000F4F6F400F4F6F400F4F6F400B4C6D40054A6D4006CBEFC0074C6FC0044AE
      FC003C9ED4006C9EBC0074AED400B4C6D400ECDECC00D4E6D400342AE400342A
      E400342AE400241ADC00000000000000000000000000000000002C2C2C003131
      3100373737004545450049494900525252008E8E8E00E3E3E300DCDCDC00D2D2
      D200767676007E797500CFC1B100EEDECC00FCEBD800B2834D00B2834D00B283
      4D00FCEBD800FCEBD800FCEBD8000000000000000000E2DDF4001D50DE002E82
      F000005BED001975F900629FF1000A6DF800A9CCFD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0085B6FC002781F9004E7FE4001A1396005A58
      A700F4F3F2000000000000000000000000000000000000000000F4BE7C00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00F4F6F400F4F6
      F400FCF6E400FCF6E400FCF6E400FCE6D400F4F6F400E49E4C00ECEEEC00F4F6
      F4000000000000000000000000000000000000000000F4BE7C00000000000000
      00000000000000000000F4F6FC00E4E6F40074AED40074AED4008CAECC00B4C6
      D400ECEEEC0000000000F4F6F400F4F6F400D4964400ECE6DC00FCF6E400F4F6
      F400000000000000000000000000000000000000000000000000000000002929
      29002E2E2E0032323200373737003B3B3B005E5E5E00C7C7C700B8B8B8008787
      870059595900A99E9200DFCFBD00F7E5D100FBE9D400ECD5B900ECD5B900ECD5
      B900FBE9D400FBE9D400FBE9D4000000000000000000000000003D49D0002780
      F7000066FA003F89F400267BF4005FA0FB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF009CC4FD001576FA004A8AEF00222AAE00332F9700C3C3
      D800000000000000000000000000000000000000000000000000F4C68400FCFE
      FC00FCFEFC00F4C68400EC8E1C00EC8E1C00EC8E1C00EC8E1C00EC8E1C00EC8E
      1C00E48E1C00E48E1C00E48E1C00F4BE7C00F4F6F400D49E5400F4F6F400F4F6
      F4000000000000000000000000000000000000000000F4C68400000000000000
      0000F4C68400E48E1C00E49E4C00F4F6F400F4F6F400F4F6F400F4F6F4000000
      0000FCD6B400E49E4C00F4C6840000000000D49E5400ECEEEC00ECEEEC00F4F6
      F400000000000000000000000000000000000000000000000000000000002222
      2200262626002B2B2B002F2F2F003434340042424200515151004B4B4B004646
      4600827B7300DCCAB600F2DFC900FBE7D000FBE7D000FBE7D000C1976700C299
      6A00FBE7D000FBE7D000FBE7D000000000000000000000000000CBCBF0000A37
      D6002381F9000066F9003586F900F5F8FE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7FAFE0068A5FB000970FC004686EF002134BD00201B94009D9DC7000000
      0000000000000000000000000000000000000000000000000000F4C68400FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00E4A65400F4F6F4000000
      00000000000000000000000000000000000000000000F4C68400000000000000
      0000000000000000000000000000F4F6F400F4F6F400F4F6F400F4F6F400F4F6
      F4000000000000000000F4F6F40000000000E4A65400F4F6F400F4F6F4000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001F1F1F0024242400282828002C2C2C0031313100353535003B3A39008C8C
      8C00E2CFB900F3DEC700FBE5CD00FBE5CD00FBE5CD00FBE5CD00C2996A00C39A
      6B00FBE5CD00FBE5CD00FBE5CD00000000000000000000000000000000008A90
      E2002253DD00227EF900046AF9003485FA008FBDFC00BBD6FD00A5C9FC005E9F
      FA000068FA000871FA003972E8001320B400221C95009796C500000000000000
      0000000000000000000000000000000000000000000000000000F4CE9400FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00F4F6F400F4F6F400F4F6F400F4F6
      F400F4F6F400F4A64C00EC962400E49E4C00ECAE6400F4C68400F4F6F4000000
      00000000000000000000000000000000000000000000F4CE9400000000000000
      0000000000000000000000000000F4F6F400F4F6F400F4F6F400F4F6F400F4F6
      F400F4A64C00EC962400E49E4C00ECAE6400F4C68400ECE6DC00F4F6F4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006D6D6D004B4B4B004C4C4C00555555000000000098714500F5F5
      F500F9E2C800FBE4CA00FBE4CA00FBE4CA00FBE4CA00FBE4CA00FBE4CA00FBE4
      CA00FBE4CA00FBE4CA00FBE4CA0000000000000000000000000000000000FCFA
      FD00777DDC00103AD500277FF800197BFA000064FA00005DFA000060FB00006A
      FE001267F3001B46DB000F14AA002F2B9B00A6A5CE0000000000000000000000
      0000000000000000000000000000000000000000000000000000F4CE9400FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00F4F6F400F4F6
      F400FCFEFC00F4AE5C00F4DEC400F4F6F400FCE6D400FCE6C400000000000000
      00000000000000000000000000000000000000000000F4CE9400000000000000
      00000000000000000000000000000000000000000000F4F6F400F4F6F4000000
      0000F4AE5C00F4DEC400F4F6F400FCE6D400FCE6C400F4F6F400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B2834D00FFFF
      FF00FAE2C600FAE2C600FAE2C600FAE2C600FAE2C600FAE2C600FAE2C600FAE2
      C600FAE2C600FAE2C600FAE2C600000000000000000000000000000000000000
      000000000000C0C0ED001C29C4000E34D3001A5CE600155BE800104CE1000A2C
      CF001018B4001C1A9D006C68B300ECECF3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4CE9400FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00F4F6
      F400FCFEFC00F4BE7400FCE6C400F4F6F400FCF6E400FCF6E400000000000000
      00000000000000000000000000000000000000000000F4CE9400000000000000
      0000000000000000000000000000000000000000000000000000F4F6F4000000
      0000F4BE7400FCE6C400F4F6F400FCF6E400FCF6E400F4F6FC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B2834D00FFFF
      FF00FAE0C300FAE0C300FAE0C300FAE0C300FAE0C300FAE0C300FAE0C300FAE0
      C300FAE0C300FAE0C300FAE0C300000000000000000000000000000000000000
      0000000000000000000000000000CBC8E8007C77CA00605BC200605BBB007874
      BC00ACA9D000F4F3F60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4D69C00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00F4CE9400F4DEC400FCE6D400F4F6F40000000000000000000000
      00000000000000000000000000000000000000000000F4D69C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4CE9400F4DEC400ECE6DC00FCF6E4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B2834D00FFFF
      FF00FADEBF00FADEBF00FADEBF00FADEBF00FADEBF00FADEBF00FADEBF00FADE
      BF00FADEBF00FADEBF00FADEBF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4D69C00F4D6
      9C00F4CE9C00F4CE9400F4CE9400F4CE9400F4CE9400F4C68400F4C68400F4BE
      7C00F4BE7C00F4D69C00FCE6D400000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4D69C00F4D69C00F4CE
      9C00F4CE9400F4CE9400F4CE9400F4CE9400F4C68400F4C68400F4BE7C00F4BE
      7C00F4D69C00FCE6D400F4F6F400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFDFF00F4F7FD00E1DFDB00CBBCA200DCC5
      9F00B6A79200C7BFB500D4D6D900EAEBEB000000000000000000F8F8F800F5F5
      F500F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F7F7F700F5F6
      F700F1F5FD00D7D4CD00BAA27500AF8C4B00AD863D00B0905400B6A58400C8CC
      D300DEE1E500F7F8F80000000000000000000000000000000000000000000000
      000000000000FDFDFC00F4F6F700FCFFFF00EDEDED00E0DCD600D5D0C600D0CA
      BC00CFC9BD00D1CCC200D6D3CD00DDDFE000E9EDF100F4F6F700FDFDFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A4CE
      A4000C7A1C0074BE7C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F8FCFF00EBEFF700D5D0C800BFA57600B78C4400AD7E2C00EDB9
      630090550700976118009F713500E0E5EB00F9F9F900C7C7C700B5B5B500B1B1
      B100B1B1B100B0B0B000AFAFAF00AEAEAE00ADADAD00ACACAD00AEAFB200B7B6
      B400B3945C00B87F1800D5A24800E7B46100EEBC6A00E2B05C00CC983B00AF7C
      1F00B4A38500CCCDD100F3F4F400000000000000000000000000000000000000
      0000F8F7F800E7EAEF00D2D4D500D3C9B500C1A87B00BC965300BA8D3E00BB8A
      3100BA893400B98D3F00B7945500B7A17700C0B7A400D2D4D500E7EAEF00F8F7
      F800000000000000000000000000000000000000000000000000000000000000
      0000F4F6F400F4F6F400F4F6F400F4F6F400F4F6F400F4F6F400D4E6E400148E
      240024BE34001C962C00D4E6E40000000000F4F6F400F4F6F400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8FBFF00E7E6
      E500D7D1C900C0A88200B2853900B17D2400B17E2800B5832F00B9893600EEBE
      6C00A568100097590600945B0E00DCE2EA00AEAEAE00A1A1A100A8A8A800A3A3
      A300A0A0A0009D9D9D009999990095959500929292008E8F91006E6B67008B63
      1D00CF973500F5D49200FCEEBF00FDF4D100DEC99900FFFCDB00FCEDC500E8BF
      7A00BF882500B0996F00D3D7DF00F7F7F7000000000000000000FFFEFE00F3F3
      F400DBDFE500C2BDB300B2966500BB882D00C9963F00D9AF6300E4BE7D00EBC8
      8C00EBC88D00E2BA7900D8AD6200C8953A00B8893300B2966500C2BDB300DBDF
      E500F3F3F400FFFEFE000000000000000000000000000000000000000000F4F6
      FC00F4F6FC00F4F6FC00F4F6FC00F4F6FC00F4F6F400ECEEEC004CA6540024AE
      34002CB63C002CCE3C003CA64C00F4F6FC00F4F6FC00F4F6F400F4F6FC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAFCFF00EEF2F700DAD5CC00C8B49100BA98
      5D00B2833200B17E2600B1802C00BB893600D69F4800E6AA5200F1B55A00ECB6
      5A00D7A85C00CB964500C38E3F00E6ECF4008484840000000000F1F3F600F0F8
      FF00F0F9FF00F0FAFF00F2F5FB00F4F5F800FAFCFF00E0E4EB00B99A6200D399
      3500F6D89100FBEDB400F9E9A800F8E6A200E5CA7F00FAEAA600FDEEB200FDF4
      D100F0CD9100B8822100B9AF9E00E4E6EA000000000000000000F2F3F500D5D9
      E000B9AF9B00B0863A00C9902C00E7BF7700F6DEAE00FBEDC800FDF7D500EFE2
      BF00E7D9B400FFFBE000FBEFD100F5E1BB00E5BF7C00C9902C00B0863A00B9AF
      9B00D5D9E000F2F3F50000000000000000000000000000000000D48E3C00C486
      3C00C47A2C00C47A2400C47A2400BC721C00B48E54008CB674001CA62C0034CE
      4C003CA64C0034CE4C0024AE34008CB67400AC7234009C5A0C00F4F6FC00F4F6
      F400000000000000000000000000000000000000000000000000000000000000
      000000000000F3F7FE00E6EAF100CABEA600BC9B6100B58A4000B1802B00B17F
      2900B1802A00C6953E00EBB25900F0B55E00938C62005EA1A00080A58500B48F
      3C00E6A33300E5B45F00F8E6C800FDFFFF0084858500FDFBF700E0DCD400EC98
      0000EE970000EE8F0000E6D3B200D9CFBD00B8A68800907E6000C1861E00F3D2
      8A00FBEFB800F9E9AB00F8E7A600F9E8A700FBEBAA00FCECAA00DFCE9100FBEA
      A600FFFADB00E7B96800A87D3300CCCCCC0000000000F6F6F700D7DAE000B8AB
      9400B2802A00D69F4100F9E5C200FDF1C600FBF1C000FAEDB600F9EAAA00D6B4
      6600C59F4900FFF8C000FAEDBA00FCF4D000FEF7E300F9E5C200D69F4100B280
      2A00B8AB9400D7DAE000F6F6F700000000000000000000000000D48E3C000000
      0000000000000000000000000000F4F6F400D4E6E4001CA62C0034CE4C004CBE
      5C004CBE5C004CBE5C003CE6540024AE3400F4F6F400AC6A1C00F4F6FC000000
      00000000000000000000000000000000000000000000FDFFFF00F2F4F800E3E0
      DD00CFC5B400BA9C6900B1802D00B17D2400B17F2A00B7863200C1913D00DCAA
      4E00E6B46900DCA76D007A907B000075A00017C0D90055F6FF0024B0DB00006C
      A1004085A400F3F0F500000000000000000083848700FCF5E700EAA42100F0A6
      1C00F3B95100EF9E0B00EF950000E4CFA800C2BEBA00AC8E5600DAA84D00FAEA
      BA00FAF0C400FAEDBA00F9EBB400FDEFB400FFF4B600D6C28400A08B5A00FEEC
      AA00FAECB000FAE5B700BC842B00BEB29F00FCFCFC00DFE2E500BAB2A200B080
      2D00D9A54900FDF0D500FEFAE400FAEAAC00F7E6A200F7E6A300F8E7A500EFDA
      9500EAD48D00FCEAA900F7E5A100F7E6A200FAECB400FEFAE400FDF0D500D9A5
      4900B0802D00BAB2A200DFE2E500FCFCFC000000000000000000D48E3C00FCF6
      E400FCF6E400FCE6D400FCE6D400FCE6D4003CA64C0034CE4C0074D67C0074CE
      7C0074CE7C0074CE7C0054D6640034CE4C0074CE7C00AC6A1C00F4F6FC000000
      000000000000000000000000000000000000FBFBFC00D7CCBA00C2AA8000B690
      5000B27E2800B17F2800B1802D00C3913E00D9A34E00ECB25900EEAF56007765
      9400524F9200264BC500478CCC0024CBD80040FFFF005EF6FA0031D4FF0000BB
      FB004C809300F3ECEA00000000000000000083838300FCFFFF00E8DFD000F0AA
      2B00F4BD5A00F09B0300EACD9A00E7EAF000C0BEBB00A77C2C00ECBF7000FFFC
      E100FCF3D100FBF1C700FEF4C700DEC28500B07D2900C7A96900F7E7A800FAE9
      A600FDEDAB00FEF2C700C98C2B00B7A48500F0F2F300C8C7C600AE884800CF99
      3900FEEFCF00E7DDC100CEAB5900FDEDAC00F8E6A500F8E6A500F9E7A600FAEA
      AA00FBEBAC00F7E6A500F8E7A600F9E8A600FFF0AE00CEAB5900E7DDC100FEEF
      CF00CF993900AE884800C8C7C600F0F2F3000000000000000000D4964400F4F6
      F400FCF6E400FCF6E400ECE6DC0084CE8C0024AE340054D6640094DE940074D6
      7C0074D67C0094DE940074D67C003CE6540034CE4C008C862C00F4F6FC000000
      000000000000000000000000000000000000D2B78800B2833300B17F2800B07F
      2900B4832F00CE9D4800E7B56000EEB76100A9975D004D6C5E0083C8C800001B
      CD00005FF5000F71FF00518ABD0022C4D1003DFBFF005DF4F90031D0FD0000B4
      F3004C809200F3ECEA00000000000000000083838300FCFCFC00EBEFF600EBDE
      C400F0A21200EDC68000EAEEF500EFEFF100D0D6E000AA7A2300F6CE8B00D1B6
      8100F3E9CB00FDF7DC00FFFDE200B3853C00D0B58E00D7B87700FFF3C100FEF1
      B800C9A55300F2DFA400CE8F2C00B59E7C00DDE0E500B5A48500BD862B00EFCF
      9500FFFDE900F4E2A300EFD99100FAEAAD00F8E7A600F8E7A700F8E7A600F8E7
      A700F8E7A700F9E8A700FAE9A800F9E8A700FCECAC00EFD99100F4E2A300FFFD
      E900EFCF9500BD862B00B5A48500DDE0E5000000000000000000E49E4C00F4F6
      F400FCF6E400ECE6DC00D4DEBC001CA62C0044D6540054C6640024BE340054C6
      640074D67C0054D664008CE6940074DE84004CE6640024AE3400F4F6F4000000
      000000000000000000000000000000000000C8A76A00B6832D00C4954400E1B0
      5800ECBC6C00D2A16400E6A64F00005F88000AA0C00025E0F00070DDF2000223
      CE00006EFF001171FE00528ABC0022C4D1003DFBFF005DF4F90031D0FD0000B4
      F3004C809200F3ECEA00000000000000000082828200FCFCFC00EEEEEF00EFF1
      F500F5DFC000F1EBE400EEEFF200F0F0F000D5DAE200AB7F3500E9BF76000000
      0000FEFDF200FDF9E900FFFBEA00E8D8B200B0843E00F7ECC900FCF3CD00FAEF
      C300FFF5C800FCE9B000C5892A00BCA98B00CBCBCA00AC874700D49F4200FEF3
      D800FAF0BC00F8E7A200FDECAC00F9EAB500F8ECB300F8E9B200F8EAB000FAE9
      B000F9EAAF00FFF1B400E1D19B00C4B38000EAD99D00FDECAC00F8E7A200FAF0
      BC00FEF3D800D49F4200AC874700CBCBCA000000000000000000E4A65400F4F6
      F400FCF6E400ECE6DC003CA64C0024AE34002CB63C0074D67C00D4E6D400FCE6
      D400ECDECC0094DE940054D664008CE694004CE6640034CE4C0084CE8C000000
      000000000000000000000000000000000000E0BB7E00DFAB5400F6BB51009F7E
      7800594A8500263AA4005E8FF8000774930046FFFF003BFEFF0072D8EC000021
      D100006DFD001270FE00528ABC0022C4D1003DFBFF005DF4F90031D0FD0000B4
      F3004C809200F3ECEA00000000000000000082828200FDFDFD00F2F1F200F9F4
      F900B4CEBC00E3E9E700F6F3F500F4F5F600E5EAF300B3986800D8A65200FFFA
      F20000000000FDFDF500FEFCF100FEFBED00C8A87100FFFFEE00FCF5DA00FCF4
      D300FDF6D600F6D99C00B57E2800CCC1AF00BFB4A500B2833100E7C17A00FFF5
      D300F8E8A600F7E8A700FAEBB300FAEFC600F9EEC300FAEEC000FAEDBC00F9EB
      B900FEF0BB00EFE0AC00B19D7300AF9C7200ECDBA700FAEBB300F7E8A700F8E8
      A600FFF5D300E7C17A00B2833100BFB4A5000000000000000000E4A65400F4F6
      F400FCF6E400D4DEBC004CBE5C00ACDEB400FCF6E400ECE6DC00FCE6D400FCE6
      C400F4DEC400F4DEC400ACDEB40044D6540074DE84003CE6540024BE3400D4E6
      E40000000000000000000000000000000000FCF2E000F0CF9500F7B63B004F36
      83000053F4000060F800609DFE0009718D0043FFFF0039FAFF0072D8EC000020
      D200016DFD001270FE00528ABC0022C4D1003DFBFF005DF4F90031D0FD0000B4
      F3004C809200F3ECEA0000000000000000008181810000000000FFFAFF00B4D0
      B8000F94210073B57C00FBF7FC00EAE3D900C4B292009B8D7600BA832900F6E0
      BA000000000000000000FFFEFE00FEFCF700DFC69700FFFFF800FDF9E900FDFA
      E800FFF6DD00DFAE5D00A87F4200F1F3F600B7A58700BE852800F3DBA300FCEF
      BD00F8E8A900F8EBB600FAEBBA00FCF1D000FAF0CC00FAF0C900FCF4CB00FFFF
      D700FAF0C500C8B18200C0AA7C00EEDFAE00FCEFBB00FAEBBA00F8EBB600F8E8
      A900FCEFBD00F3DBA300BE852800B7A587000000000000000000F4AE5C00F4F6
      F400F4F6F400FCF6E400ECEEEC00FCF6E400FCF6E400FCF6E400FCF6E400FCE6
      D400FCE6D400ECDECC00F4DEC400ACDEB40044D6540054D6640044D654004CBE
      5C00000000000000000000000000000000000000000000000000000000005E5A
      CB000061F8000065FB00619DFD0009718D0043FFFF0039FAFF0072D7EB00001F
      D200006BFD000D6EFE00528ABC0022C4D1003DFBFF005DF4F90031D0FD0000B4
      F3004C809200F3ECEA0000000000000000008181810000000000D0DDD30038B5
      4C004BE6680029B540009AC5A000FFF6F900E3DACB00C7C1B9009A794400CE9F
      5100FDEFDA00000000000000000000000000EEE3CE00FFFFFE00FFFFFC00FEFA
      EB00EFCE9600AC731E00DCD3C90000000000B19B7600C5862000FBE5B000FFFF
      CF00FFF9CB00FAEDBE00F9ECBC00FCF5D900FAF3D600FDF5D500F6EBC700D1B1
      7800BD965700D7C39100F5E7BD00FEF3C700FAEFC000F9ECBC00FAEDBE00FFF9
      CB00FFFFCF00FBE5B000C5862000B19B76000000000000000000ECAE64000000
      0000ECE6DC00ECE6DC00ECE6DC00ECDECC00ECE6DC00FCF6E400FCF6E400FCF6
      E400ECE6DC00FCE6D400ECDECC00F4DEC400D4E6D40024BE340054C6640024AE
      3400ACDEB4000000000000000000000000000000000000000000000000005C56
      C8000060F6000064FA00629CFD0009718D0043FFFF0039FAFF0071D6EB000423
      D2002081FC004590FC00518BBD0022C4D1003DFBFF005DF4F90031D0FD0000B4
      F3004C809200F3ECEA00000000000000000085838500E7F5EA003BA94E0029B7
      43005BFF7C0037C7520012952800AFCDAE00EDE1D800E4DED700C2BDB500A983
      4700CFA05900FFEED200FFFAEF0000000000F3EFE40000000000FFF3E000E9C7
      8F00AE752200CDB899000000000000000000B1976E00C7861E00FAE4AB00BD9B
      5800C29F5B00FEF4CC00FCF1C600FBF5E100FCF5DC00FEF7DE00E9DBB700C3A2
      7100DFCBAD00E1C99A00FFFDDC00FCF1CC00FAEFC800FCF1C600FEF4CC00C29F
      5B00BD9B5800FAE4AB00C7861E00B1976E000000000000000000AC8E6400646A
      74006C6A6C007C7A84006C6A6C0084868400D4D6D400ECE6DC00F4F6F400F4F6
      F400F4F6F400FCF6E400ECE6DC00FCE6C400ECE6DC00C4863C0034CE4C002CB6
      3C0024AE34000000000000000000000000000000000000000000000000005954
      CB000060F7000064FA00629CFD0009718D0043FFFF0037F8FF007BE3F1005D77
      E4004880E8003671EC00195FB70027C8D2003DFBFF005DF4F90031D0FD0000B4
      F3004C809200F3ECEA0000000000000000008181810000000000000000003E9F
      52002B983F001C8D3000EDF5EE00FFFEFF000000000000000000FEFFFF00DCDE
      E400B1987000AE7A2E00D4AC6F00E5C48E00EDCC9800DEB97D00C6975100AB7C
      3700E5D9CB00000000000000000000000000B39B7500C3821C00FBE6AD00FFFF
      DF00FFFAD900FCF2CF00FAF3D000FEF9E700FBF9E500FEFAE700F5EDD000CAAA
      7600CDAC7800F7EDCF00FEF8DD00FAF2D600FAF3D300FAF3D000FCF2CF00FFFA
      D900FFFFDF00FBE6AD00C3821C00B39B75000000000084868400948E7C00ECE6
      DC00ECEEEC00DCDEDC0000000000D4D6D4006C6A6C00AC723400E48E1C00EC8E
      1C00EC8E1C00EC8E1C00EC8E1C00F4DEC400F4F6F400C4863C00D4E6E4004CBE
      5C001CA62C0074BE7C0000000000000000000000000000000000000000005753
      CD000060F7000064FA00629CFD0009718D0043FFFF0039F7FF0070EAF40000A6
      FA000049B300453EBF002C4BA20024CAD4003DFBFF005DF4F90031D0FD0000B4
      F3004C809200F4ECEA0000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F6FBFF00D9D6D200BAA48300A786550078511B00BA9B6F00DDCCB5000000
      000000000000000000000000000000000000B8A78700BC802200F7DCA400FEF7
      DC00FBF5D600FBF3D700FDF5DA00FDFAEE00FEFAEC00FEFAE900FFFCEE00EBE3
      CB00DDD1B100FFFFF300FCF6DE00FDF6DD00FDF5DB00FDF5DA00FBF3D700FBF5
      D600FEF7DC00F7DCA400BC802200B8A787009C969400ACAEAC00ECEEEC00ECEE
      EC00D4D6D400BCBEBC00F4F6F40000000000F4F6F4007C7A7C00D4D6D400ECEE
      EC00F4F6F400F4F6F400FCF6E400FCF6E400F4F6F400D4964400ECEEEC00ECEE
      EC0074CE7C00ACDEB40000000000000000000000000000000000000000005653
      CE000060F7000064FA00629CFD0009718D0043FFFF0039F6FF0071E8F30000CA
      FF0000799F00EFE5D4009FBCC40014BFD30036FDFF0059F5FA002DCFFE0000B4
      F4004A7F9100F1EAE8000000000000000000808080000000000000000000F4BC
      5900F2B33F00F1AF36000000000000000000E6DAC900CDBCA000C4B6A100BBAF
      9F00B4AB9F00AEA59900DCDBD900F5F9FF00565A6000EDF0F500000000000000
      000000000000000000000000000000000000C8BCA700B07D2900EACC9300FFFA
      E300FDF6DF00FDF6DE00FBF7E000FCFCF400FCFBF200FDFBF100FDFBEE00EBDE
      C400E1D1B100FFFFF300FBF7E600FBF8E500FBF7E300FBF7E000FDF6DE00FDF6
      DF00FFFAE300EACC9300B07D2900C8BCA7009C9E9C00ECE6DC00ECE6DC00ECEE
      EC00F4F6F400F4F6F400ECEEEC00ECEEEC0000000000CCCECC007C868400ECE6
      DC00F4F6F400F4F6F400F4F6F400FCF6E40000000000D4964400ECEEEC00ECEE
      EC00000000000000000000000000000000000000000000000000000000005653
      CE000060F7000064FA00629CFD0009718D0043FFFF0039F6FF0071E8F30000C6
      FF000074A100DED5D2009AB8C3003FBCBF0081F2E70085F7F40058DDF10013B9
      EA0048819400EFE8E600000000000000000081828500FFFCE500F0A41C00EC97
      0000F2B24000ED980000ED940000F9DDAA00FBFBFD00F5F1EC00F3F1ED00F2EF
      EC00F0EEEC00EFEDEA00FDFCFB000000000059595900E9E9E900000000000000
      000000000000000000000000000000000000E0DDDA00AC834100DBB47400FFF9
      E300FDF9E800FDF8E500FDF9E700FEFDF800FEFCF600FEFCF600FEFCF400EEE3
      CD00E6D8BA00FFFFFA00FCFAEB00FDF9EB00FDF8E900FDF9E700FDF8E500FDF9
      E800FFF9E300DBB47400AC834100E0DDDA00D4D6D400ECEEEC00F4F6F400F4F6
      F400E4E6F400C4C6C40000000000F4F6F400D4E6E400F4F6F4006C6A6C00E48E
      1C00EC8E1C00EC8E1C00EC8E1C00FCE6D40000000000D49E5400F4F6FC00F4F6
      F400000000000000000000000000000000000000000000000000000000005653
      CE000060F7000064FA00629CFD0009718D0043FFFF0039F6FF0071E8F30000C6
      FF000074A100D8CFCE00D5F6F4008FDAD30061B2BA000B96C1002A9ABA0067C4
      CF00B0EEF100FFF9F80000000000000000008080800000000000FAE4BA00F1B1
      3D00F3BC5900EE9B0600F5C6710000000000E9DFD000D4C4AD00CBBFAD00C4B9
      AB00BBB3A900B9B0A400E8E4DF000000000059595900E9E9E900000000000000
      000000000000000000000000000000000000F9FAFF00BEA68200C69B5600F9E9
      CA00FFFDF000FCF8EA00FBF6E800FFFEFD00FFFEFB00FFFDFA00FEFDF900F2E8
      D500EBDDC400FFFFFE00FCFBF100FDFBF000FEFBEF00FBF6E800FCF8EA00FFFD
      F000F9E9CA00C69B5600BEA68200F9FAFF00BCBEBC009CA6D4008C86CC005C5A
      DC006C6A6C002C222C00DCDEDC00F4F6F4009C9E9C00D4E6E4007C7A8400D4D6
      D400000000000000000000000000F4F6F40000000000E4A65400F4F6FC000000
      0000000000000000000000000000000000000000000000000000000000005552
      CE00005EF700005FFA005E9BFD0009718D0043FFFF0039F6FF0071E8F30000C6
      FF000074A100D3CECD00FBF8F800E0E9EF00A2C3D0007EACBC0098BBC800D5E0
      E600FFFDFE00000000000000000000000000808080000000000000000000FAD6
      9600EEA11200F5BB540000000000000000000000000000000000000000000000
      00000000000000000000000000000000000059595900E9E9E900000000000000
      00000000000000000000000000000000000000000000E2DDD700B7915700E3C5
      9600FFFBEC00F7F1E300EEE6CF0000000000FFFFFE00FFFEFF00FFFDFB00F4E9
      DA00EEE0CA0000000000FEFCF500FCFCF500FFFFFA00EEE6CF00F7F1E300FFFB
      EC00E3C59600B7915700E2DDD70000000000ECEEEC0000000000000000000000
      0000D4E6E40054525400F4F6F40000000000F4F6F400000000007C7A7C00D4D6
      D400F4F6F400EC8E1C00EC9E3C00F4A64C00F4BE7400F4CE9400000000000000
      0000000000000000000000000000000000000000000000000000000000005151
      CF001471F6004895F70084B4FE0007708D0043FFFF0039F6FF0071E8F30000C6
      FF000074A100D3CECC00FCFAFA00000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000F3F0F000F5F6
      F800FAD79400FAEFDB00F2F0F300F8F7F60000000000FAF8F700F1EDEC00FBFB
      FA0000000000F6F3F200F3F0EF000000000059595900E9E9E900000000000000
      00000000000000000000000000000000000000000000FBFDFF00D0C0A700C19A
      6000F0DCBB00FEFAEE00F8F5EB00000000000000000000000000FFFEFE00F7F2
      E800F3EADC0000000000FFFDF900FEFCF900FFFEFC00F8F5EB00FEFAEE00F0DC
      BB00C19A6000D0C0A700FBFDFF0000000000DCDEDC0000000000000000000000
      0000000000006C6A6C00F4F6F400F4F6F400F4F6F400ECEEEC006C6A6C00ECEE
      EC00F4F6F400E49E4C00F4F6F400F4F6F400FCE6D400FCE6D400000000000000
      000000000000000000000000000000000000000000000000000000000000ACC9
      F4006487E3002C59DA00123DDB00026D8C0042FFFF0036F7FF0070E8F40000C5
      FF000073A100D2CDCC00FAF9F900000000000000000000000000000000000000
      00000000000000000000000000000000000083838200D3D7D80031505E006B75
      7A0000000000BCC2C800294A5900939697000000000089949B0027455100C7C8
      C80000000000556A7400384D5600DEDDDD0061616100F5F5F500000000000000
      0000000000000000000000000000000000000000000000000000F7F7F800CBB5
      9500C5A16A00F0DDBE0000000000FFFFFE000000000000000000FFFEFF00FAF9
      F500F8F5ED0000000000FFFEFD00FFFEFE00FFFFFD0000000000F0DDBE00C5A1
      6A00CBB59500F7F7F8000000000000000000BCBEBC0000000000000000000000
      000000000000BCBEBC00ECE6DC00F4F6F400F4F6F400ACAEAC00848684000000
      0000F4F6F400ECAE6400F4F6F400F4F6F400FCF6E400F4F6F400000000000000
      000000000000000000000000000000000000000000000000000000000000FFFD
      FE00D4D2F3009E9DE3009B8CE100046F8D004FFFFF0058F8FD007BEEF4001DCB
      FF000075A000CFCBCA00F8F7F700000000000000000000000000000000000000
      000000000000000000000000000000000000BBB8B70066808D001DA6D7003D78
      920090847F0051788D0026BAEA004A687B007E726C00387EA00027AEDA005D6B
      750077706E002A97C2002B94BB0061616300B1B0AF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F7
      F700CEB89600C29B6400DFC39900FFFFF600000000000000000000000000F9F7
      F300F7F3EB00000000000000000000000000FEF7EA00DFC39900C29B6400CEB8
      9600F8F7F700000000000000000000000000C4C6C400D4D6D400000000000000
      000000000000F4F6F400DCDEDC00F4F6F400DCDEDC007C7A8400F4F6F4000000
      000000000000F4C68400FCE6D400FCF6E400F4F6F40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004BC5D3004ED1E30032C0E4002DBCE1004CBA
      CD003BC0D100E6E7E500FCFBFA00000000000000000000000000000000000000
      000000000000000000000000000000000000000000009ECEE50077C9EA004997
      BD00FFF2EA0066B1D7009FDCF3004E94B700FFF5EC00399ED1008FCEE70087AF
      C300F2EFED0045A9D9005BACD100C3CDD3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFF00DCCBB500C29F6E00B89B6E00DAC3A000F3E6CE00FDF6E700FFFE
      F700FFFBF200FAF0E000F0E0C400DABD9000C8A46E00C29F6E00DCCBB500FEFE
      FF000000000000000000000000000000000000000000C4C6C400BCBEB400ECEE
      EC00F4F6F400ECEEEC00ECEEEC00ACAEAC0084868400DCAE7C00F4C68400F4BE
      7C00F4BE7C00F4D69C00FCF6E400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EDF1F4009CBDCA00488BA3003B839B008DB4
      C200DFE8ED000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E2F2FB006ABBE300AFD9
      EF0000000000D2EBF80065B7E100C7E4F30000000000B0DCF2006CBAE200E1F0
      F800000000008ACAE90080C4E600F9FBFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F3F0EB00A28F7500A9906D00AD906600B28F5D00BD90
      5100BF955700C1995D00C7A36D00CBAC7D00D3BA9900F3F0EB00000000000000
      0000000000000000000000000000000000000000000000000000ECE6DC00BCBE
      BC00ACAEAC00ACAEAC009C9E9C00ACAEAC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFEF800E8E4DF009BA1C7006677
      C0005C6CBD00505CB5005550A300736EA800B2B0BC00DCDCD500F0F0EE00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00E3DFDA00B59D7E00A07946009C6D31009F6F
      31009D6C2C00976422009F794600B6A89700D4D4D400F1F1F100F8F8F800F9F9
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFD00DAD5E0007276B7001C36B4001B48C7001855
      D6002C6DE100438AF1005B9DF6004D70D0002731A6005A55A000BCBCC100E3E3
      DF00FDFDFD000000000000000000000000000000000000000000000000000000
      00000000000000000000DACCB900AA804A00D9C4A900EDE2D200EBDBC800E4CE
      B200E0C6A500CCAC8300B187510097632000C5BFB800D8D8D800D8D8D800DBDB
      DB00F0F0F000FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFE00ABA7CE00384EBD000954E0000368F800006BFE00006A
      FD000068FB000062FB000466F3004993F700669DED00384CB700443D9A00B3B3
      BE00EAEAE7000000000000000000000000000000000000000000000000000000
      00000000000000000000A4783E00F1E8DC00DFC3A100D1AB7A00CEA47000C499
      6300BB8D5300B4844800A9783A009B6D3000B19C81009C7037009D733D00BAB1
      A600DCDCDC00F9F9F90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00F9F9
      F900F7F7F700F7F7F700F7F7F700F9F9F900FDFDFD0000000000000000000000
      0000FBFBFB00F8F8F800F8F8F800FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C98CB002050CF000B6AF600016BFC000369F9000369F9000368
      F9000065F800207AF90088B8FC000062F800418CF50068A2F1003543B0004B47
      9C00CECECB00F6F6F50000000000000000000000000000000000000000000000
      00000000000000000000CCB39200C69B6500CEA57100CEA57100B2854B00A474
      3400C59B6600A87738009F743B002486CD00008EFF00BDC5C200D3BC9E009D73
      3D00D3D3D300F4F4F40000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEE3DE00CECFCE00CECFCE00DEDF
      DE00DEDBDE00DEDFDE00DEDFDE00DEDFDE00DEDBDE00CECFCE00CECFCE00E7E3
      E700E7E7E70000000000000000000000000000000000FDFDFD00F2F2F200E6E6
      E600E4E4E400E4E4E400E4E4E400E6E6E600ECECEC00F0F0F000F0F0F000EEEE
      EE00E8E8E800E5E5E500E5E5E500E8E8E800EEEEEE00F1F1F100F5F5F500FBFB
      FB00000000000000000000000000000000000000000000000000000000000000
      00009E9ED3001751D7000A74FE000068FA000368F9000469F9000469F9000268
      F8000063F800A6CAFC0000000000A3C8FC00005EF9005498F5006193E6002124
      9E008381AD00E7E7E100FDFDFD00000000000000000000000000000000000000
      0000000000000000000000000000F1E9E000D2B79400C09D6F00A17235009C6A
      2800B2874E00A6783A00C39A6400E9CAA300F1D7B500F3DDC000E3D4BF009664
      2300CFCFCF00EFEFEF0000000000000000000000000000000000000000000000
      00000000000000000000000000008C65520094695A008C65520084615200845D
      520094695A008C65520094695A008C65520094695A008C65520084615200845D
      5200DEE3DE0000000000000000000000000000000000D0C7C1007F6654006D53
      3E00674D380060473200654F3B00AEA6A000DBDBDB00DDDDDD00BDBDBD005454
      54001B1B1B001B1B1B0054545400B9B9B900DBDBDB00DEDEDE00E2E2E200EAEA
      EA00F7F7F700000000000000000000000000000000000000000000000000CDC9
      E600335AD1000E72FA000066F9000368F9000469F9000469F9000368F9000063
      F8003887FA00F6F9FF00000000003888FA000061F9001774F8006FAAF5004056
      BC0038359A00D7D7D000F9F9F800000000000000000000000000000000000000
      00000000000000000000FCFCFC00F2F2F200E0DDD900A4783F0097631F00A674
      3400CFA77300EECFA600F0D3AD00B8A68F007C756C00D6C2A900EDE1D3009560
      1C00C6C2BD00EAEAEA0000000000000000000000000000000000000000000000
      0000000000009CCFE7001092CE009C716300F7F7EF00FFFBF700F7F7EF008C65
      5A00E7E3DE00FFFBF700F7F7EF009C716300F7F7EF00FFF7EF00F7F3E7008C65
      5A00CECFCE0000000000000000000000000000000000886E5C00E9E5E200BAAD
      A30087726200664C37005F463100543D2A0019191900191919001A1A1A009674
      4400E5BA7D00E6BA7C00A27B4600201E1A00191919003232320091919100D1D1
      D100EAEAEA00FBFBFB0000000000000000000000000000000000FFFEFD00576C
      CE00176FF300076BFA000060F8000065F8000368F9000469F9000267F8000064
      F800A7CAFC0000000000B0D0FD00005DF8000267F9000368F800549AF7005780
      DA002A279800A8A7BD00F5F5F100000000000000000000000000000000000000
      0000FAFAFA00EEEEEE00DEDDDB00BAA68C009C6D3000B6884D00EAD3B600F7E6
      D100E9CAA300AE9D8600716C64007A746B007D776E00B7A89500ECDECD00A171
      3400BCB1A300E6E6E60000000000000000000000000000000000000000000000
      000000000000108ABD009CEBFF009C75630000000000FFFBF700FFFBF7009C75
      6300E7E7E700E7E7E700FFFBF7009C756300FFFBF700FFFBF700FFFBF7009C75
      6300CECFCE0000000000000000000000000000000000866A5700EBE6E300BDB0
      A6008D7766006C523E00664C37005F463100EAEAEA006E6E6E0096764800F8A4
      2C00F6A83A00F9D19900FEF5EA00AA8452005F5F5F00EAEAEA00CECECE008686
      8600E4E4E400F7F7F70000000000000000000000000000000000BFC0E7000C4D
      DD00086FFB00EBF3FE00A9CBFC001C76F9000062F8000368F9000062F8003889
      FA0000000000000000000E6FF8000065F8000368F9000166F9003686F6006AA2
      F10028279A007D7BB000EFEFE80000000000000000000000000000000000F2F2
      F200D8D4CF00B29876009E6D2D00BD8E5100E5BD8B00F4DDC000F3E5D300A798
      840064605B0066635E00726D660079746A0075706800988E8100EDDECC00AC82
      4D00B19F8700E1E1E10000000000000000000000000000000000000000000000
      000000000000108ABD0094D7E700AD827300B58A7300BD8E7B00B58A7300AD82
      7300B58A7300AD827300A5826B00AD827300B58A7300BD8E7B00B58A7300AD82
      7300DEE3DE00000000000000000000000000000000008D705D00ECE7E400C0B3
      A900927C6B00725843006C523D00654C3700E5E5E50074747400D7973900F894
      0100F5910100F3930B00F9D09600F1CC9B0031313100E3E3E300E3E3E3006767
      6700E3E3E300F6F6F600000000000000000000000000000000004653CA001B7B
      F900569AFB000000000000000000DEECFE004993FA00005BF800005CF800D0E2
      FD000000000089B8FB000063F8000268F9000369F9000066F900257CF60071AF
      FA0028299C006664AA00EDEDE500000000000000000000000000F1EBE400B18F
      6500A6743300CA9D6100E8C08B00EBC49200D9B98E0092826F00595654005453
      5100565553005D5A570064615C006C6762006B67610079736C00F1E3D100B895
      6700AA906E00DDDDDD00FCFCFC00000000000000000000000000000000000000
      0000000000001092CE009CDBE700A57D6B00000000000000000000000000B586
      73000000000000000000EFEBE700A57D6B0000000000FFFFF70000000000B586
      7300E7E3E7000000000000000000000000000000000093766300EDE8E500C4B6
      AC0097817000795E4A00725843006C523D00DFDFDF00A6A6A600DFAB5D00FA96
      0100F8940100F5910100F5AA4000EBB5690036363600DDDDDD00DDDDDD006666
      6600E3E3E300F6F6F600000000000000000000000000F4EEF7001F53DB001D7B
      F9000469F90088B8FB000000000000000000FEFDFF007FB2FA00589BFB000000
      0000E6F0FE00287EF9000064F8000368F9000469F9000066F900217AF7006EAF
      FB002A2D9F00605DA800EFEFE600000000000000000000000000E1CAAC00D6A9
      7000EAC18C00EAC18C00CDAD830085786700504F4E004D4D4C004E4E4D00504F
      4E005252500055545200565553005E5B5800605D590058575400F7E9D900C4A7
      8100A3815400D9D9D900F9F9F900000000000000000000000000000000000000
      0000000000001896CE00ADF3F700B5867300E7EBE7000000000000000000BD92
      7B00000000000000000000000000B5867300E7EBE7000000000000000000BD92
      7B00DEE3DE0000000000000000000000000000000000997C6900EEE9E600C7B9
      B0009B8575007F635000785D490072574300DADADA0088888800F5F2EC00FDB4
      4700FA9D1100F89A1100F7A63200A6732C003A3A3A00D6D6D600D6D6D6006666
      6600E3E3E300F6F6F600000000000000000000000000A39EDF002F7AF0000A6D
      F9000066F900005DF8003788FA00D1E2FE000000000000000000000000000000
      00006EA8FB00005BF8000368F9000469F9000469F9000066F900227BF7006BA8
      F600272599006765AC00F4F4EC00000000000000000000000000EDD0AB00EAC1
      8C00C3A47C007F746600605F5D005F5E5C0058575600515151004C4C4C004C4C
      4C004C4C4C004F4E4E005453510055545200555453004D4D4D00E7DAC900D6C1
      A5009D733D00D4D4D400F4F4F400000000000000000000000000000000000000
      0000000000001092CE00BDF7FF00C69A8400AD827300A5826B00BD8E7B00C69A
      8400BD8E7B00B58E7B00BD8E7B00C69A8400AD827300A5826B00BD8E7B00C69A
      8400E7E3E700000000000000000000000000000000009F816F00EFEAE700CABB
      B300A18A7A00856956007F635000785D4900D5D5D50055555500D6D6D600F2EB
      E100F4CF9600EA9C2800AB7423004E4B450039393900D1D1D100D0D0D0006666
      6600E3E3E300F6F6F6000000000000000000000000007D7DD8003882F1000068
      F9000368F9000368F9000061F800106FF90094C0FC00FFFFFE00000000000000
      000085B6FC000065F8000064F8000368F8000368F9000066F9002A81F7006596
      E900272699007C7AB200F8F9F200000000000000000000000000F5E2C900EAC1
      8C006861590077757200726F6C006A696600646260005C5B5A00555554004E4E
      4E004C4C4C004C4C4C004D4D4D0053525100545351004D4D4C00C5BAAC00E5D7
      C50097662700D0D0D000F0F0F000000000000000000000000000000000000000
      0000000000001896CE00BDF7F700D6A68C00F7EFDE00E7D3BD00DECBB500D6A6
      8C00F7EFDE00F7E3CE00F7DFC600D6A68C00F7EFDE00E7D3BD00DECBB500D6A6
      8C00DEE3DE0000000000000000000000000000000000A6877600F0EBE800CDBE
      B500A68E80008B6F5C00856955007E634F00D1D1D10074747400AFAFAF00AEAE
      AE008282820059595900505050004242420065656500CBCBCB005178EA006A6A
      6A00E3E3E300F6F6F6000000000000000000000000005B68D9003B83F1000066
      FA000368F9000469F9000368F9000063F8000168F900F5F8FE00000000000000
      000000000000C9DFFD001271F900005FF8000066F8000067F9003E8FF9005477
      D500262497009594BC00FFFFFA00000000000000000000000000F9EDDF00EAC1
      8C0084766300787672007D7A7700767470006F6D6A0068666400605F5E005958
      5700525251004C4C4C004C4C4C004E4E4D00525250004D4D4C00A0988E00EDE3
      D60097631F00C8C6C300EBEBEB00000000000000000000000000000000000000
      0000000000001092CE00CEFBFF00D6AA9400FFF7EF00F7E7D600E7CFB500C69E
      8400FFF7EF00F7E7D600F7DFC600D6AA9400FFF7EF00F7E7D600E7CFB500C69E
      84000000000000000000000000000000000000000000AC8C7B00F1ECE900D0C1
      B800AB938400927562008B6F5C0085695500CDCDCD00BABABA00AFAFAF00A8A8
      A800797979004F4F4F004C4C4C0050505000B3B3B300C7C7C7000040FF006E6E
      6E00E3E3E300F6F6F6000000000000000000000000005662D8003C84F0000066
      FA000368F9000469F9000368F900005DF80085B6FB0000000000C5DCFD00ADCF
      FC0000000000000000000000000061A0FA00076AF8000168F8005EA1F7003D50
      B9002B279600D4D4DA00FFFFFE00000000000000000000000000FDF9F400EAC1
      8C00A08B700072706D0089858000817E7A007A77740073716E006C6A67006463
      61005D5C5B00565555004F4E4E004C4C4C004F4F4E004D4D4D00807B7500ECE1
      D200A2743800BCB2A500E6E6E600000000000000000000000000000000000000
      0000000000001896CE00CEFBFF00E7B69C00DEB29C00E7B69C00DEB29C00D6AA
      9400CEA68C00E7B69C00DEB29C00E7B69C00DEB29C00E7B69C00DEB29C00D6AA
      94000000000000000000000000000000000000000000B2928200F2EDEA00D3C4
      BB00B1978A00987B6800917461008B6E5B00CACACA00C9C9C900BDBDBD00B1B1
      B100848484005E5E5E007A7A7A00B2B2B200DBDBDB00EFEFEF00BECEFF007272
      7200E3E3E300F6F6F600000000000000000000000000696ED8003A82F100026A
      F9000368F9000469F9000065F8001372F900FBFCFF00FFFFFE004E95FA00005D
      F8006BA6FB00F2F6FF0000000000000000008BB9FC001977F9005F8FE600282C
      A3004F4CA100FEFEF4000000000000000000000000000000000000000000E8C2
      8F00BCA17D006765630094908A008D89840085827D007E7B770077747100706D
      6B006867640061605E005A595800535352004D4D4C004D4D4D00605E5C00EEE2
      D300AF875300B19F8700E1E1E100000000000000000000000000000000000000
      0000000000001086BD00DEFFFF007BF7FF007BF7FF0073F7FF007BF7FF0073F3
      FF006BE3E7006BDFE70073F3FF001092CE000000000000000000000000000000
      00000000000000000000000000000000000000000000B6988800B29281000000
      00000000000000000000C2B1A600957A6800C7C7C700C6C6C600C5C5C500C4C4
      C400C3C3C300C2C2C200C1C1C100191919001919190019191900BEBEBE007676
      7600E4E4E400F7F7F7000000000000000000000000008E8BDE00307CF1001373
      F8000167F9000268F800005FF80093BEFC0000000000C0D9FD000569F8000065
      F8000063F8001E78FA00CFE2FD000000000063A2FC004A95F7004361CA001610
      8F00AFAFC900000000000000000000000000000000000000000000000000EAC9
      9F00DBB98D00585756009F9A940098938D00918C870089868100827F7B007B78
      740074716E006C6A6800666462005E5D5C005757560051514F004C4C4C00ECE2
      D600BA986C00AA906E00DEDEDE00FEFEFE000000000000000000000000000000
      000000000000108ABD00CEE7E7007BFBFF007BF7FF0063515200ADA6A5006351
      520073F7FF0073E7EF006BE3E7001896CE000000000000000000000000000000
      00000000000000000000000000000000000000000000A79D9800B79B8D00A789
      7A00463C370041383300907A6C00D4CECB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007C7C
      7C00EAEAEA00FBFBFB00000000000000000000000000DDD9F3001A50E0002E86
      F9000066F9000063F8003A89FA00F7FAFE00000000003386F9000062F8000469
      F9000368F8000064F800005FF8004992FC003C8DF9004E80E400191396005856
      A500F7F8F300000000000000000000000000000000000000000000000000F0D8
      BA00ECC7970059565300A29D9600A39E97009C97910094908B008D8984008683
      7E007F7C780078767200716F6C006A68660061605E0062605E00A19B9200F6ED
      E300BC9B6F00AD8D6300ECECEC00FEFEFE000000000000000000000000000000
      0000000000001092CE00D6EBEF00DEEBE70063514A00D6D3CE00D6D3D600D6D3
      CE0063514A0000000000EFEBEF001086BD000000000000000000000000000000
      00000000000000000000000000000000000000000000BCBCBC00A9A9A900C3C3
      C3008A8A8A0086868600BDBDBD00C2C2C200C1C1C100C0C0C000BFBFBF00BEBE
      BE00A2A2A2001F1F1F0000000000141414008D8D8D00B8B8B800AAAAAA009F9F
      9F00F7F7F70000000000000000000000000000000000000000003544D0003186
      F6000A6DF9000065F900A6CAFD0000000000B2D1FD00005CF8000368F9000469
      F9000469F9000368F9000066F9001073FA004C8BF100232BAF00332E9700C2C2
      D80000000000000000000000000000000000000000000000000000000000F7EA
      D800ECC89900766D610094908A00AEA8A100A7A29A00A09B940098948E00928E
      88008B87820083807C00777572007B777100B6ACA000F3E4D300D4B89500A87A
      3F00A3784000DBCDBB00FDFDFD00000000000000000000000000000000000000
      00000000000073BEE7001092CE00108ABD00524942008C7D7B00847D73008C7D
      7B005A514A001896CE001092CE006BAECE000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFA00C7C7C700A9A9
      A9009D9D9D009B9B9B009A9A9A00989898009696960094949400939393009191
      9100888888009D9D9D00CBCBCB009A9A9A007A7A7A0091919100B2B2B200F5F5
      F500000000000000000000000000000000000000000000000000C0BFEE000A3C
      D7002884FA001674F90000000000FFFFFE001F79F9000064F8000469F9000469
      F9000368F9000067F9000B72FB004B8CF2002237BF001E1893009694C300FFFF
      FE0000000000000000000000000000000000000000000000000000000000FCF5
      ED00EDC99B0093847100817E7A00B9B3AA00B2ACA400ACA69E00A49F98009D98
      920089858000938C8300CCBEAC00F2DFC700CDAE8500A0703000A57B4500D9C9
      B600FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005A4D4A005A49420063514A005A51
      4A0063514A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008088
      E1002257E000217EF9003587FB0064A3FB000065F8000268F9000469F9000268
      F900056CFA001779FB003E76E9001321B600201A94009594C400000000000000
      000000000000000000000000000000000000000000000000000000000000FFFE
      FE00ECCB9E00B19C820068676400C5BDB400BEB7AE00B7B0A8009B969000A399
      8C00DCCAB300ECD6B900CAA77A00A9783B00B0895600DCCEBB00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F9F7
      FC006F77DB001241D800217CF7001478FA00066DFA000069FA00016BFB000670
      FE00166AF3001E4DDE000F13AA00302C9B009F9ECB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ECCEA600CEB4930051505000CDC5BB00A7A09800B4A69400E9D4B600E8CD
      AB00CCA87900B4874C00BB986800E3D7C800FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADB0E9001122C3000833D5001860EB001461ED001053E700082E
      D4000B16B6000F0E9900635FAF00E4E3EE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EED6B600EBCDA600766F6500C0AD9500F2D8B600E5C8A100D1AC7C00C298
      6200C8A87E00E6DCCE00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C2E600706CC500524DBC00524CB4006E69
      B600A7A3CC00F4F3F60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4E2CB00EFD1AA00EFD1AC00E4C59C00D7B38400D0AB7900D3B69000ECE3
      D700FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBF4EB00E0BF9300D4B08000D2AD7C00DABF9C00EEE6DB00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FDFDFD00FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FDFDFD00FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FDFDFD00FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBFBFB00EBEBEB00C8B49600B78B4A00BEB7AE00D2D2D200F1F1
      F100000000000000000000000000E4E4E400CFC7BC00B08B5500AC885400C7C7
      C700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFC00EFEFEF00EAEAEA00F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFC00EFEFEF00EAEAEA00F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFC00EFEFEF00EAEAEA00F7F7F7000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00F3F3F300D8D1C600C09D6800F3E9D600FDFAF200C09B6300C1BEBA00DADA
      DA00EEEEEE00E7E7E700CABAA200AC752400B3813800E3D1B600A3681300B39B
      7A00CDCDCD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F9F900DFDCD800A0876900D7D7D700F4F4F4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F9F900DFDCD800A0876900D7D7D700F4F4F4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F9F900DFDCD800A0876900D7D7D700F4F4F4000000
      0000000000000000000000000000000000000000000000000000F9F9F900E7E7
      E600BBA48000E0CEAE00FDF9EF00F7EBCF00F1E0BC00FBF6EC00B7946200C7C7
      C700C7BEAE00B3823900DDC49E00DCC39D00A66A1100D5B99100D8BD9700A269
      1700BDB7AE00D9D9D90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00F5F5F500C9BFB4008861360088623600D3D3D300F4F4F4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00F5F5F500C9BFB4008861360088623600D3D3D300F4F4F4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00F5F5F500C9BFB4008861360088623600D3D3D300F4F4F4000000
      000000000000000000000000000000000000FCFCFC00EFEFEF00CBC2B300C0A8
      7E00F8F3E900FCF7E400E5CA9800E5CA9800FBF3D900FEF9E500F0E4CE00A777
      3000CDAE8000D8BE9500AB742200E3D0B600D0AF7F00A76D1700F2E9DD00C29A
      5F00AC854D00CACACA0000000000000000000000000000000000000000000000
      0000FAFAFA00F3F3F300F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200EBEBEB00AF9A83008B613100BB97650087613600CFCFCF00EAEAEA00FAFA
      FA00000000000000000000000000000000000000000000000000000000000000
      0000FAFAFA00F3F3F300F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200EBEBEB00AF9A83008B613100BB97650087613600CFCFCF00EAEAEA00FAFA
      FA00000000000000000000000000000000000000000000000000000000000000
      0000FAFAFA00F3F3F300F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200EBEBEB00AF9A83008B613100BB97650087613600CFCFCF00EAEAEA00FAFA
      FA0000000000000000000000000000000000F6F4F000BBA68500E9E0D000FEFC
      F400EDD8B200DDBC8200F6E8C800FEF8E100FEF8E100FEF8E100FEFBEC00CDAB
      7300B9873B00CCA76700D2B17E00A86E1900EDE2D000BA8A4400BF945600F9F4
      EE00A9722100BBB1A200DCDCDC0000000000000000000000000000000000FAFA
      FA00E4E4E400D3D3D300D2D2D200D2D2D200D2D2D200D2D2D200D2D2D200CCC8
      C400987955009D764600E3C69900DABC8E0087613600C5C5C500D0D0D000E4E4
      E400FAFAFA00000000000000000000000000000000000000000000000000FAFA
      FA00E4E4E400D3D3D300D2D2D200D2D2D200D2D2D200D2D2D200D2D2D200CCC8
      C400987955009D764600E3C69900DABC8E0087613600C5C5C500D0D0D000E4E4
      E400FAFAFA00000000000000000000000000000000000000000000000000FAFA
      FA00E4E4E400D3D3D300D2D2D200D2D2D200D2D2D200D2D2D200D2D2D200CCC8
      C400987955009D764600E3C69900DABC8E0087613600C5C5C500D0D0D000E4E4
      E400FAFAFA00000000000000000000000000C2A67900F8F4ED00F7EDDC00DAB6
      7A00ECD7B100FEFAEA00FEF9E600FEF8E300FEF8E100FEF8E100FEF8E100F5EC
      DA00D2B07800EFDCB600FDF9EA00BD8E4500B98A4500EEE3D100A76B1100E9DA
      C400DDC7A500AE8A5600D1D1D10000000000000000000000000000000000C4AE
      9300986C3A009568340093663300916532008F6330008E612F008C602D008A5E
      2C00BB996C00EED6AD00EFD7AF00DCC0970080552400835A2B009F897100D2D2
      D200F2F2F200000000000000000000000000000000000000000000000000C4AE
      9300986C3A009568340093663300916532008F6330008E612F008C602D008A5E
      2C00BB996C00EED6AD00EFD7AF00DCC0970080552400835A2B009F897100D2D2
      D200F2F2F200000000000000000000000000000000000000000000000000C4AE
      9300986C3A009568340093663300916532008F6330008E612F008C602D008A5E
      2C00BB996C00EED6AD00EFD7AF00DCC0970080552400835A2B009F897100D2D2
      D200F2F2F200000000000000000000000000F8F5EF00BFA27100F2E8D600FCF7
      ED00FFFCF300FDF9EE00DCCDAE00FBF7E400FEF9E500FEF8E200FEF8E100FEFA
      E900CCA66800F9EED200FEFAEB00F2E5C500A96E1600DEC8A800C69D6000C198
      5A00FDFCF900AF7C3000C7C6C500E7E7E700000000000000000000000000A276
      4300ECD6B200F1DCBA00F1DCBA00F1DCBA00F1DCBA00F3E2C500F3E2C500F3E2
      C500F1DCBA00F1DCBA00F1DCBA00F1DCBA00F1DCBA00EBD4B100835A2A00D0D0
      D000F0F0F000000000000000000000000000000000000000000000000000A276
      4300F1DCBA00F1DCBA00F1DCBA00F1DCBA00F3E2C500F3E2C500F3E2C500F3E2
      C500F3E2C500F1DCBA00F1DCBA00F1DCBA00F1DCBA00EBD4B100835A2A00D0D0
      D000F0F0F000000000000000000000000000000000000000000000000000A276
      4300ECD6B200F1DCBA00F1DCBA00F1DCBA00F1DCBA00F1DCBA00F1DCBA00F1DC
      BA00F1DCBA00F1DCBA00F1DCBA00F1DCBA00F1DCBA00EBD4B100835A2A00D0D0
      D000F0F0F00000000000000000000000000000000000F5F0E800C0A57700FFFE
      FD00FFFEF900FFFDF600A9885300CFBB9800FEFAEC00FEFAE800FEF9E500FEF8
      E100EAD9BA00EBD9B300FEF9E600FEF9E700D1AD7200B8873E00E8D7BC00AA6E
      1500F9F4EE00D0AF7F00BAAC9700DFDFDF00000000000000000000000000A375
      3F00F3E2C500F3E2C500F3E2C500F3E2C500F3E2C500F3E2C500BE8D5500BE8D
      5500F3E2C500F3E2C500F3E2C500F3E2C500F3E2C500F3E2C500865B2900D0D0
      D000F0F0F000000000000000000000000000000000000000000000000000A375
      3F00F3E2C500F3E2C500F3E2C500F3E2C500F3E2C500C4925900C4925900C492
      5900C4925900F3E2C500F3E2C500F3E2C500F3E2C500F3E2C500865B2900D0D0
      D000F0F0F000000000000000000000000000000000000000000000000000A375
      3F00F3E2C500F3E2C500F3E2C500F3E2C500F3E2C500F3E2C500F3E2C500F3E2
      C500F3E2C500F3E2C500F3E2C500F3E2C500F3E2C500F3E2C500865B2900D0D0
      D000F0F0F0000000000000000000000000000000000000000000E5D8C200D9C7
      AB0000000000FFFEFC00EDE5D7009A733600E7DBC500FEFBEE00FEFAEB00FEF9
      E700F8F1DF00D3B07400FEF8E100FEFAEA00F5EACB00AB6F1400EFE3D300B179
      2400E0CBAB00E7D6BC00B3956700D9D9D900000000000000000000000000A879
      4300F4E7CF00F4E7CF00F4E7CF00F4E7CF00F4E7CF00F4E7CF00F3E2C500F3E2
      C500F3E2C500F3E2C500F3E2C500F4E7CF00F4E7CF00F4E7CF008B5F2D00D0D0
      D000F0F0F000000000000000000000000000000000000000000000000000A879
      4300F4E7CF00F4E7CF00F4E7CF00F6ECD900F4E7CF00F3E2C500C4925900C492
      5900F3E2C500F3E2C500F4E7CF00F4E7CF00F4E7CF00F4E7CF008B5F2D00D0D0
      D000F0F0F000000000000000000000000000000000000000000000000000A879
      4300F4E7CF00F4E7CF00F4E7CF00F4E7CF00F4E7CF00F4E7CF00F4E7CF00F4E7
      CF0000000000F4E7CF00F4E7CF0000000000F4E7CF00F4E7CF008B5F2D00D0D0
      D000F0F0F000000000000000000000000000000000000000000000000000C6AB
      7C00FCFAF8000000000000000000E0D4BF009C773C00E7DCC600FFFCF100FEFB
      ED00FEFBEE00C29A5A00FEF8E300FEFAE900FEF8E100C5985000D9BE9500C59C
      5C00CDA87100FBF8F400B1874900D5D5D500000000000000000000000000AD7E
      4700F6ECD900F6ECD900F6ECD900F6ECD900F6ECD900F6ECD900BE8D5500BE8D
      5500F6ECD900F6ECD900F6ECD900F6ECD900F6ECD900F6ECD90090633100D0D0
      D000F0F0F000000000000000000000000000000000000000000000000000AD7E
      4700F6ECD900F6ECD900F6ECD900F6ECD900F6ECD900F6ECD900C4925900C492
      5900F6ECD900F6ECD900F6ECD900F6ECD900F6ECD900F6ECD90090633100D0D0
      D000F0F0F000000000000000000000000000000000000000000000000000AD7E
      4700F6ECD900F6ECD900F6ECD900F6ECD900F6ECD900F6ECD900F6ECD900F6EC
      D900F6ECD90000000000F6ECD900F6ECD90000000000F6ECD90090633100D0D0
      D000F0F0F000000000000000000000000000000000000000000000000000EADE
      CA00E0D1B900000000000000000000000000DFD3BF00936B2A00D1BE9F00FFFC
      F300FFFCF000D1B38500D3C09B00FEFBEC00FEF8E300D7BA8400C8A16400D6BA
      8F00C1934D0000000000B78B4500D1D1D100000000000000000000000000B282
      4B00F8F1E400F8F1E400F8F1E400F8F1E400F8F1E400F8F1E400F8F1E400BE8D
      5500BE8D5500F8F1E400F8F1E400F8F1E400F8F1E400F8F1E40095683400D0D0
      D000F0F0F000000000000000000000000000000000000000000000000000B282
      4B00F8F1E400F8F1E400F8F1E400F8F1E400FCFAF700FCFAF700C4925900C492
      5900FCFAF700FCFAF700F8F1E400F8F1E400F8F1E400F8F1E40095683400D0D0
      D000F0F0F000000000000000000000000000000000000000000000000000B282
      4B00F8F1E400F8F1E400F8F1E400F8F1E400F8F1E400F8F1E400F8F1E400F8F1
      E40000000000F8F1E400F8F1E40000000000F8F1E400F8F1E40095683400D0D0
      D000F0F0F000000000000000000000000000000000000000000000000000FEFE
      FD00CEB5890000000000F3EFE800A5834E009B753A00BEA57E00E5DCCB00FFFE
      FA00FFFDF600D9C29D00C2A67700FEFAEE00FEFBEB00EBDAB700BA8B4100E2D0
      B300B583330000000000BE914D00CFCFCF00000000000000000000000000B787
      4F00FAF6EF00FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700FAF6EF00FAF6
      EF00BE8D5500BE8D5500FAF6EF00FAF6EF00FAF6EF00FAF6EF009A6C3800D0D0
      D000F0F0F000000000000000000000000000000000000000000000000000B787
      4F00FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700C4925900C4925900C492
      5900FCFAF700FAF6EF00FAF6EF00FAF6EF00FAF6EF00FAF6EF009A6C3800D0D0
      D000F0F0F000000000000000000000000000000000000000000000000000B787
      4F00FAF6EF00FAF6EF0000000000FAF6EF00FAF6EF0000000000FAF6EF00FAF6
      EF00FAF6EF00FAF6EF00FAF6EF00FAF6EF00FAF6EF00FAF6EF009A6C3800D0D0
      D000F0F0F0000000000000000000000000000000000000000000000000000000
      0000D1B5880000000000FEFDFC00E5DCCC000000000000000000000000000000
      0000FFFEFC00DDCBAD00BD9D6B00FFFCF200FEFCF200FAF3E100AC772600ECE0
      CF00AC76220000000000C2995B00CDCCCB00000000000000000000000000BC8B
      5300FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700FCFA
      F700BE8D5500BE8D5500FCFAF700FCFAF700FCFAF700FCFAF7009F713C00D0D0
      D000F0F0F000000000000000000000000000000000000000000000000000BC8B
      5300FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700FCFA
      F700FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700FCFAF7009F713C00D0D0
      D000F0F0F000000000000000000000000000000000000000000000000000BC8B
      5300FCFAF70000000000FCFAF700FCFAF70000000000FCFAF700FCFAF700FCFA
      F700FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700FCFAF7009F713C00D0D0
      D000F0F0F0000000000000000000000000000000000000000000000000000000
      0000DAC196000000000000000000000000000000000000000000000000000000
      000000000000DCCBB2009B723000E7DCCA00FFFDF600FFFCF100AB7A2C00F4EE
      E500A56E1A00FEFDFC00C49F6700C9C4BD00000000000000000000000000C190
      5700FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700BE8D5500BE8D5500BE8D
      5500BE8D5500BE8D5500FCFAF700FCFAF700FCFAF700FCFAF700A4754000D0D0
      D000F0F0F000000000000000000000000000000000000000000000000000C190
      5700FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700C4925900C492
      5900FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700A4754000D0D0
      D000F0F0F000000000000000000000000000000000000000000000000000C190
      5700FCFAF700FCFAF70000000000FCFAF700FCFAF70000000000FCFAF700FCFA
      F700FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700A4754000D0D0
      D000F0F0F0000000000000000000000000000000000000000000000000000000
      0000E3CCA70000000000000000000000000000000000F0E9DD00F8F5F000B796
      6000E3D5C100D8C7AC00A1793B00F9F6F000FFFEFB00FFFDF700B0854000F5EF
      E500A26E1C00FAF6F100C3A16B00C8C2B900000000000000000000000000C694
      5B00FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700BE8D5500BE8D
      5500BE8D5500FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700A97A4400D2D2
      D200F2F2F200000000000000000000000000000000000000000000000000C694
      5B00FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700C4925900C492
      5900FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700A97A4400D2D2
      D200F2F2F200000000000000000000000000000000000000000000000000C694
      5B00FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700FCFA
      F700FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700A97A4400D2D2
      D200F2F2F2000000000000000000000000000000000000000000000000000000
      0000E8D1AD00E2D4BE00D7C5A700B5945C00D8C5A900AC854800D7C5A800A277
      3200DDCDB400CDBA9A00E0D2BD000000000000000000FFFFFD00B48E5300F4EE
      E400A2722600FAF6F200C2A16D00CBC7C300000000000000000000000000CD9B
      6300FAF5F000FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700FCFA
      F700FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700F8F4EF00B0824E00E4E4
      E400FAFAFA00000000000000000000000000000000000000000000000000CD9B
      6300FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700FCFA
      F700FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700F8F4EF00B0824E00E4E4
      E400FAFAFA00000000000000000000000000000000000000000000000000CD9B
      6300FAF5F000FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700FCFA
      F700FCFAF700FCFAF700FCFAF700FCFAF700FCFAF700F8F4EF00B0824E00E4E4
      E400FAFAFA000000000000000000000000000000000000000000000000000000
      0000ECD8B700E3D6C000B9986400D9C6A800CDB48D00B3905700DBCAB000A981
      4200E9E2D500B99E7400EAE1D400000000000000000000000000B28F5600EEE5
      D700A3752D00F9F6F200BA976200CBC8C400000000000000000000000000E7CD
      B000D09E6600CC995F00CA985E00C8965C00C6945B00C4925900C2915800C18F
      5600BE8D5500BD8C5300BB8A5200B9885000B7874F00B6875100D2BA9E00FAFA
      FA0000000000000000000000000000000000000000000000000000000000E7CD
      B000D09E6600CC995F00CA985E00C8965C00C6945B00C4925900C2915800C18F
      5600BE8D5500BD8C5300BB8A5200B9885000B7874F00B6875100D2BA9E00FAFA
      FA0000000000000000000000000000000000000000000000000000000000E7CD
      B000D09E6600CC995F00CA985E00C8965C00C6945B00C4925900C2915800C18F
      5600BE8D5500BD8C5300BB8A5200B9885000B7874F00B6875100D2BA9E00FAFA
      FA00000000000000000000000000000000000000000000000000000000000000
      0000FBF7EF00F6ECDC00E8DBC300F0E5D400DDC9A800C8AA7700CCB38700C3A7
      7B00C2AA8300BEA68000F7F4F00000000000F6F1EA00FAF8F500B4956200EDE5
      D800A67C3C00F6F1EA00B5945E00CECCCA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ECE3D2003994AB0061A3
      B8001A8AAC003A97B2000C86AC004997AB00018EBD001284A800AE8F5C00EDE5
      D800A37C3E00F3EEE500AD8A5300DADADA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000068B1C3000AAADD0012A7
      D90015A1CF0009AFE70022A2CC0006AAE10005B5EF0065BDDB00AB8C5B00ECE5
      D900A17C4000BA9F7300A27E4300F1F1F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009BC5D20066C3E0007DD0
      EB0075A6A60069D0F30086917A0055CCF400659E9C00B08F5A00957438009C79
      3E00936D2F00E1D9CD00F5F4F200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F6F9FA00A6CEDC0091C1
      D10087D4ED0099CADA0074D0EF009AD0E30080D6F10015AADC0001B6F30096B7
      C200F4F4F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7EFF100F6F9FA00A0C4D000A5C3CE00BFDEE90073C0D90053A0BA00F6F7
      F700000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFCFF00E2E2E200B6CC
      B600A4C5A5009CBB9D0095AB9600AAB5AA00CACBCA00E6E2E600F5F5F5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007BB77D004FAF520028A8
      2D001EB0230022BA29001FAE26002B962E0039783B00819C8100DBD4DB00EEED
      EE0000000000000000000000000000000000986B24009C6C2100A06D1E00A46E
      1B00A86F1700AB701500AB6F1300A76B1100A4681000A0640F009D610E00995D
      0C00975B0B00CDCDCD00EEEEEE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8AAA700B6806E00B9755500C77C
      3900BA7A3E00B4765700BC8D8100D3BDBE00E4E8E90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ABC9AB002A9A2C001CA3210026B02C002DB4
      33002FB5350031B9370036CA3D003BDE42002DC43400126E160055855600C8C8
      C800EFEEEF00000000000000000000000000946A2700FFFCF300FFFCF300FFFC
      F300FFFCF300FFFCF300FFFCF300FFFCF300FFFCF300FFFCF300FFFCF300FFFC
      F300995E0C00C9C9C900E8E8E800FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CCB9BE00C6865600EB8D0D00FA930000FF970000FF92
      0000FF920000FF920000FB910000DD841F00D37F5800E0DAE200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006BB26D0016A41C002DB9330028B22E0021AF280022AF
      28002DB233002FB335002FB0340031B938003DDB45003ADC42000C6F0F004F81
      5000D1CFD100F7F7F700000000000000000090692A00FFFDF400FEF8E200FEF8
      E100FEF8E100FEF8E100FEF8E100FEF8E100FEF8E100FEF8E100FEF8E100FFFC
      F3009D610E00C4C4C400D2D2D200DCDCDC00E7E7E700F5F5F500FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DAC8C900D07E3400FF920000FEAA1C00FCC77C00FFD5A800FFE8
      C400FFE2BF00F7D39500FFC36100FFAA1B00FF910000BC8D6D00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FCFC
      FC00FAFAFA00F3F3F300EFEFEF00F2F2F200FAFAFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000067B269001BB2220030B7360029B130006DCA7200B2E3B400A9E0
      AC0031B437002DB3330030B436002FB1350031B938003FE0470030C037000B67
      0D008FA68F00EBE7EB00FEFEFE000000000099712F00FFFDF600FEF9E500FEF8
      E300FEF8E100FEF8E100FEF8E100FEF8E100FEF8E100FEF8E100D0E3BE0086BC
      8A00458736004F9A5C0078A37D00A1B4A300C6C6C600D5D5D500EBEBEB00FCFC
      FC00000000000000000000000000000000000000000000000000000000000000
      000000000000CBA19A00E3A75200F6D8BF00ECF4FF00EFEEFE00EDECF400E3DC
      F600E2E1EC00E3E2F300E6DFED00F3E5F000EFDECF00D9965D00CCC1C9000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FDFDFD00FDFDFD00F8F8F800E3E3E300FBFBFB00B8B8
      B8006D6D6D0081818100ADADAD00DADADA00E7E7E700F3F3F300FCFCFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007DBB7F0025BC2C0030B737002AB1300036B53C00FEFEFE00FFFFFF00FFFF
      FF007FD0820023AF2A002FB335002FB335002FB1340035C43C0040E448001B8B
      2000286E2A00E1D8E100F9F8F90000000000A2793500FFFDF700FEFAE900D5BD
      9500FEF9E500D5BD9500D5BD9500D5BD9500D5BD9500D5BD9500FEF8E100FFFC
      F300A26912007CA7820040A05300378E460049865000AAB5AB00CDCDCD00EBEB
      EB00FDFDFD000000000000000000000000000000000000000000000000000000
      000000000000C6A9A200FDF2DF00E3DCF600E3DCF600E3DCF600E3DCF600E8D5
      CE00E8D5CE00E8D5CE00E8D5CE00E8D5CE00E8D5CE00E8D5CE00CAACA7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7E7E700CBCBCB00F9F9F900E3E3E300B5B5B500F8F8F800D7D7D7004D4D
      4D00747474008C8C8C007E7E7E0085858500C4C4C400E1E1E100F0F0F000FBFB
      FB0000000000000000000000000000000000000000000000000000000000B4D7
      B5002BB830002FB935002EB2340024AF2A00C5EAC600FFFFFF00FFFFFF00FFFF
      FF00D7F0D70036B63C002CB2330030B436002FB335002FB234003EDF470030BD
      36000E651000A5B4A600F5F3F50000000000AB803900FFFDF800FEFBED00FEFA
      EB00FEFAE800FEF9E600FEF9E400FEF8E100FEF8E100FEF8E100FEF8E100FFFC
      F300A96C1200C9C9C900A8C1AB00409E53003B974C0031793800A4B1A500D1D1
      D100EAEAEA00F2F2F200F6F6F600FCFCFC000000000000000000000000000000
      000000000000C6A9A200FFF7F800FDF2DF00F4E9E400EAE4E900F3E7DD00EEE0
      DE00F2DCD800F2DBD200E9D5D800E8D5CE00EDD2CC00ECC5B500CAACA7000000
      000000000000000000000000000000000000000000000000000000000000ABAB
      AB0090909000F0F0F000C0C0C00093939300F5F5F500FBFBFB008F8F8F003E3E
      3E007878780094949400ACACAC009A9A9A007D7D7D00BBBBBB00DFDFDF00EFEF
      EF00FCFCFC000000000000000000000000000000000000000000000000003FAE
      43002DC133002FB3350023AF2A0072CC7600FFFFFF00F8FCF800D6F0D700FFFF
      FF00FFFFFF006FCA730026B02D002FB335002FB335002FB2350039CF400039D9
      4200116B1300789C7900F1ECF10000000000B4883F00FFFEFA00FFFCF100D5BD
      9500FEFBEC00D5BD9500D5BD9500D5BD9500D5BD9500D5BD9500FEF8E100FFFC
      F300AC701300C2C2C200CBCBCB0068996D004AB16300348F43003F804600BEBF
      BE00CACACA00D1D1D100D5D5D500EBEBEB000000000000000000000000000000
      000000000000D5BAB300FBEBEF00EFE2E900F1E0DE00F4DFDD00ECDBE000EBD8
      D600E9D5D400E7D3D100E6CFCD00E4CCCA00E3CCC700E1C2BC00C0A89D000000
      0000000000000000000000000000000000000000000000000000000000002D2D
      2D00F2F2F2009191910081818100EFEFEF00FBFBFB00D6D6D600666666003D3D
      3D006B6B6B008C8C8C00A6A6A600BDBDBD00A8A8A8007D7D7D00BFBFBF00E0E0
      E000F1F1F100FEFEFE0000000000000000000000000000000000B8D9B8001CB6
      230032BC39002AB1300041BA4700DEF3DF00FFFFFF00ABE1AE0039B83F00FBFD
      FA00FFFFFF00C2E9C4002CB333002EB3340030B336002FB2350035C23B0041E9
      4A00106C1300598B5900EEE8EE0000000000BC8F4400FFFEFC00FFFDF400FFFC
      F200FEFBF000FEFBED00FEFAEB00FEFAE900FEF9E600FEF9E400FEF8E200FFFC
      F300A96F1600BD7A2700BD7A27009A7929003E99500049B763002A7B34008378
      2A00BD7A2700BD843E00BEAF9C00D4D4D4000000000000000000000000000000
      000000000000BD9D9800F6E3E500ECE0E400EBDCD800EEDCD600E9D8D300E6D3
      D400E6D0D100E5CDCE00E7C9CB00E7C5C900E8C4C800D5B1BA00CAADB0000000
      0000000000000000000000000000000000000000000000000000000000008181
      8100E2E2E20031313100F0F0F000F4F4F400FAFAFA007F7F7F00666666005454
      54004D4D4D0084848400A0A0A000B8B8B800CDCDCD009C9C9C0080808000CCCC
      CC00E4E4E400F6F6F6000000000000000000000000000000000038A63A0034CE
      3C002DB1330026B02C00AFE1B100FFFFFF00F8FCF80036B53B0018AB1E00A9DF
      AA00FFFFFF00FFFFFF0053C0580029B12F0030B436002FB2350034BF3A0043EB
      4C00127115004B844C00F0E9F00000000000C6974900FFFFFD00FFFDF800D5BD
      9500FFFCF300D5BD9500D5BD9500D5BD9500D5BD9500D5BD9500FEF9E500FFFD
      F400A56E1A00FEF8E100FEF8E100F4F2D90032863F0057CE770035964600538F
      5300FEF8E100FEF8E100BD864100CDCDCD000000000000000000000000000000
      000000000000C5A3AB00F5E2E600E7DEDB00E4D9D600E6D6D700E6CFD800E9D3
      CE00E7CECE00E3C9C900E4C5C600E3C1C300E2C0C500DAB1B000D1AEAC000000
      000000000000000000000000000000000000000000000000000000000000D2D2
      D200B3B3B30094949400F4F4F400FAFAFA00B4B4B40066666600707070008484
      840039393900777777009A9A9A00B3B3B300CACACA00D7D7D7007F7F7F009292
      9200DBDBDB00EBEBEB00FCFCFC000000000000000000000000002DB6330034C3
      3A0028AF2E0063C66700FFFFFF00FFFFFF0095D898001FAE26002AB2310045BB
      4A00FFFFFF00FFFFFF00C0E7C2001BAC21002FB335002FB2350034BF3A0041E7
      4900106E130052885400F5EFF50000000000CF9F4E0000000000FFFEFC00FFFE
      F900FFFDF700FFFDF500FFFCF300FFFCF000FEFBEE00FEFAEC00FEFAE900FFFD
      F500A16D1D0080AB790028753000287530002B79340066E48C0046B860002875
      3000287530002875300065772C00CDCDCD000000000000000000000000000000
      000000000000DCBDB700F8DAD600EED3D100E7CFCD00E8CAC600EAC7BF00E0BA
      B600E1BCB800E0BDB800DDBBB700DAB9B500D8B8B300D6B4B100B89C9B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008A8A8A00ECECEC00F7F7F700E0E0E0006A6A6A006F6F6F00797979009E9E
      9E008C8C8C004141410093939300636363000505050058585800B1B1B1006E6E
      6E00BEBEBE00E3E3E300F6F6F6000000000000000000A3CDA30033CA3B002FB7
      360025AF2B0088D38C00FFFFFF00EFF9F00037B63C002CB232002EB3340029B1
      2F00BDE7BF00FFFFFF00FFFFFF0044BC49002AB130002FB2350034C23C003DE0
      44000F6A12006A966B00F9F4F90000000000D7A653000000000000000000FFFF
      FD00FFFEFB00FFFDF900FFFDF600FFFCF400FFFCF200FEFBEF00FEFBED00FFFD
      F7009D6C2000FBF6DF005F975E0048BC640069EB920070F0990056D578003CB4
      5500288D36005F975E00BB7A2700CDCDCD000000000000000000000000000000
      0000C5BBCD00C5BBCD00E4BFCB00E4BFCB00F3C67A00F3C67A00F3C67A00F3C6
      7A00F3C67A00F3C67A00F3C67A00F3C67A00F3C67A00C79FA500C79FA5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B1B1B100FBFBFB00F6F6F600828282007373730080808000898989009B9B
      9B00C7C7C7008B8B8B005A5A5A00B8B8B800DBDBDB0006060600D1D1D1006060
      600094949400DEDEDE00F1F1F10000000000000000007FBE800032D13A002FB1
      35002EB3340026B02D00CFEED10082D1850027B12C002FB335002FB4350028B0
      2E005DC46200FDFEFD00FFFFFF00ADE2B00025AF2B002EB2340038CB3F0033CA
      3A000F6812008DA98D00FFFCFF0000000000E1AE580000000000000000000000
      000000000000FFFEFC00FFFEFA00FFFDF800A77D3800B1853D00B98C4200C294
      4700D0AD7000FEF8E200F1F0D70047904E0060DF860077F6A2005FDF830042BB
      5C0045894900F1F0D700BD7A2700CDCDCD000000000000000000000000000000
      0000C5BBCD00E4BFCB00F1CB8600F1CB8600F5CC8500F1CB8600F2C88200F3C6
      7A00F4C47900F4BF7300F6BA6D00F5B76800F8B66000CEA79D00C79FA500DCC7
      D300000000000000000000000000000000000000000000000000000000000000
      0000E4E4E400FEFEFE00B4B4B4007474740088888800929292009C9C9C00A6A6
      A600BFBFBF00E4E4E400A9A9A900C1C1C100DCDCDC0058585800E3E3E3005757
      570071717100DCDCDC00EFEFEF0000000000000000006CB96E0030D137002EB0
      34002FB335002CB333003FB944003EB944002DB2330030B4360030B436002DB3
      330031B53700C8EBC900FFFFFF00E8F6E8004ABD51002AB130003DD9450027A8
      2D000E621000CBD1CB00FFFEFF0000000000EAB65E0000000000000000000000
      00000000000000000000FFFFFE00FFFEFB009E753200FFFEFC0000000000E3D4
      B800FEFAE800FEF9E700FEF9E500E0E6CB0044A3560072F29C0064E28A00398B
      4300E0E6C800FEF8E100BD7A2700CDCDCD000000000000000000000000000000
      0000D4BBB900FFD87E00FDD67C00FFD57500FFD37200FFD07200FFCF7400FFCC
      6800FEC86100FDC75B00F9BE4600FFBC3D00FFB73300FFAF2800EEA33900CEA8
      A500000000000000000000000000000000000000000000000000000000000000
      000000000000000000007E7E7E008F8F8F009B9B9B00A7A7A700B1B1B100BCBC
      BC00C7C7C700DCDCDC00F7F7F700DFDFDF0071717100A1A1A100979797004444
      440063636300E3E3E300F4F4F400000000000000000067B4690030D237002FB0
      34002FB335002FB335002DB233002DB3330030B4360030B4360030B436002FB3
      350025B02B0079CE7D00FFFFFF00FFFFFF0091D694002BB331003CDD44001985
      1C002A702C00FDF4FC000000000000000000F2BD630000000000000000000000
      000000000000000000000000000000000000966E2D00FFFEF900DFD0B500FEFB
      EE00FEFBED00FEFAEB00FEFAEA00FEFAE900C7D8B80059CA780047A95C00C7D7
      B500FEF8E200FEF8E100BD7A2700CDCDCD00000000000000000000000000E9DB
      D500E9CA9C00FFD98400FFDC9400FEE4A700FFEDBF00FEEECA00FCEFCE00FFEA
      C400FFE8C500FFE5C000FFDBA400FFD28700F7C26900F9B43400FEB12500BF92
      7D00000000000000000000000000000000000000000000000000000000000000
      000000000000EDEDED0087878700A6A6A600B2B2B200BDBDBD00C9C9C900D5D5
      D500E2E2E200E6E6E600E9E9E900F2F2F200F5F5F500AFAFAF004F4F4F005B5B
      5B00C0C0C000F5F5F500FCFCFC00000000000000000079BB7A0031D0390030B6
      36002FB3350030B4360030B4360030B4360030B4360030B4360030B4360030B4
      36002EB3340020AE2700E5F5E600FFFFFF0087D08B0033CC39002EBD3500035F
      05009FB69F00000000000000000000000000F3BE630000000000000000000000
      00000000000000000000000000000000000091692900DCCCAF00FFFCF400FFFC
      F300FFFCF100FFFCF000FEFBEF00FEFBED00FEFBEC009FC79C00A5C49D00FEFA
      E800FEF9E700FEF9E600BD7A2700CDCDCD00000000000000000000000000E8CC
      BB00F9D69200FFF4C700FFFFE900FFF6F600EDDDE400EDD2D300EECBC100D9B8
      B700DCBBBE00DFC0C600E8CFC900FAE2CD00FFECCE00FFD9A300FFBB4600EEA7
      2D00CBC0C7000000000000000000000000000000000000000000000000000000
      000000000000E3E3E3009C9C9C00BEBEBE00CACACA00D7D7D700E4E4E400ECEC
      EC00EDEDED00EEEEEE00F0F0F000DDDDDD00BABABA00E5E5E500FEFEFE000000
      0000FDFDFD00FDFDFD000000000000000000000000009DCC9E0031C8380033C0
      3A002FB2350030B4360030B4360030B4360030B4360030B4360030B4360030B4
      360030B4360024AF2A0081D18600F3FAF40044BE4A0038DB4000128015002E71
      2F00E9EAE900000000000000000000000000F3BE6300F3BE6300F3BE6300EBB8
      5F00E3B05A00DBA95500D2A25000CB9B4C00BB996300FFFEFA00FFFEF900FFFD
      F800FFFDF600FFFDF500FFFCF400FFFCF200FFFCF100FEFBF000FEFBEE00FEFB
      ED00FEFAEC00FEFAEA00BD7A2700CDCDCD00000000000000000000000000EFD0
      C200FDFBFA00F7EEF000DCC5CC00D3ADB300D9AFAA00D3ACAA00CFA9AF00D1A7
      A600CEA4A200CCA19D00C7989700C9969800CE949C00E2C3B800FAE1D500FCC4
      7200D1ACAD000000000000000000000000000000000000000000000000000000
      000000000000DADADA00A8A8A800D8D8D800E5E5E500F3F3F300F4F4F400F5F5
      F500F6F6F600E8E8E800BABABA00D6D6D600FDFDFD000000000000000000C6C6
      C600F8F8F800FCFCFC00000000000000000000000000DFEDDE0025AC2A0039D2
      41002EB134002FB3350030B4360030B4360030B4360030B4360030B4360030B4
      360030B436002DB3330035B63C008AD38D0034D33B0020A826000E5E1000A4BD
      A50000000000000000000000000000000000000000000000000000000000BD7A
      2700000000000000000000000000000000000000000000000000FFFFFE00FFFE
      FC00FFFEFB00FFFEFA00FFFDF800FFFDF700FFFDF600FFFDF400FFFCF300FFFC
      F200FFFCF000FEFBEF00BD7A2700CDCDCD00000000000000000000000000E4E7
      E300FFE29D00D9B19500DEB2A300DEAEAB00D9ADA800D4A9A700CEA1AA00D6A1
      A300D29D9C00D39D9600D09A9100CE958E00CE929200CF957800ECAE5B00FFDB
      A200D0B7AB000000000000000000000000000000000000000000000000000000
      0000F1F1F100737373007A7A7A00D8D8D800FAFAFA00FBFBFB00FCFCFC00EBEB
      EB00BBBBBB00C3C3C300F8F8F80000000000000000000000000087878700D7D7
      D700F5F5F500FDFDFD00FEFEFE0000000000000000000000000054AC55002BC8
      330033BF3A002FB2350030B3360030B4360030B4360030B4360030B4360030B4
      360030B436002FB335002DB133002FC8350028B52D000660080079A47A00FFFE
      FF0000000000000000000000000000000000000000000000000000000000BD7A
      2700000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFE00FFFFFD00FFFEFC00FFFEFA00FFFEF900FFFDF800FFFD
      F600FFFDF500FFFCF400BD7A2700CDCDCD00000000000000000000000000F0DF
      D900FFE29D00FFE29D00FFAD1000FFAD1000FFAD1000EE9A2B00EE9A2B00EE9A
      2B00EE9A2B00EE9A2B00EE9A2B00EE9A2B00EE9A2B00FFAD1000FFAD1000FFDB
      A200C9B7BE000000000000000000000000000000000000000000000000000000
      0000D2D2D2004C4C4C00A2A2A2007C7C7C00BEBEBE00A6A6A600AAAAAA00C0C0
      C000F4F4F400FEFEFE00FDFDFD00FCFCFC00FAFAFA007B7B7B0081818100F2F2
      F200D4D4D400F8F8F800F9F9F900000000000000000000000000DCEDDD001AA2
      1E0036D13E0030B636002FB235002FB335002FB3350030B4360030B4360030B3
      35002FB3350030B3360037C93D0027B32C0002680400588F5B00FCFAFC000000
      000000000000000000000000000000000000000000000000000000000000BD7A
      2700000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFE00FFFEFD00FFFE
      FB00FFFEFA00FFFDF900BD7A2700CDCDCD00000000000000000000000000F0DF
      D900F5DB9100FFC24100FFBC2F00FFAD1000FD9A0300F7951500F8992C00EE9A
      2B00ED932C00F5942400FF960000FF940000FF950000FF910000FB990000FFCA
      7E00C9B7BE000000000000000000000000000000000000000000000000000000
      0000FDFDFD008F8F8F0074747400D1D1D100FBFBFB0000000000000000000000
      0000EAEAEA00E3E3E300C1C1C100AFAFAF009696960098989800F5F5F500E6E6
      E60086868600F2F2F200F9F9F900000000000000000000000000000000009ACD
      9B0017A41C0036D33D0033BA390030B336002FB3350030B3350030B4360030B4
      360032B7380035C83D00199E1D000766090060946100F6F6F700000000000000
      000000000000000000000000000000000000000000000000000000000000BD7A
      2700BD7A2700BD7A2700BD7A2700BD7A2700BD7A2700BD7A2700BD7A2700BD7A
      2700BD7A2700BD7A2700BD7A2700BD7A2700BD7A2700BD7A2700BD7A2700BD7A
      2700BD7A2700BD7A2700BD7A2700CECECE00000000000000000000000000F0E0
      E600F9E1CE00FFD79000F8C36B00FFB84500FFAC1D00FE9C0100FF990000FF96
      0000FF970000FE970000FF990000FF980000FE920000F7A22500F9C07C00D7B7
      AD00F2EDF4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00FBFBFB005252
      5200C1C1C100F3F3F300FDFDFD00000000000000000000000000000000000000
      0000ABD2AC0030A3350021BD27002DC2340031BC370031BA38002FB6350028B2
      2E00199F1D0007790A0029732A00A4C0A6000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BE7B
      2900F4BB5C00F5B95600F5B75000F6B54900F7B24300F8B03D00F8AE3700F9AC
      3100FAA92A00FBA72400FBA51E00FCA31800BD7A2700BD7A2700FE9C05004668
      E9004668E900FF9A0000BD7A2700D5D5D5000000000000000000000000000000
      0000EEE1E900F3DAC800FDDFBA00FFD18400FDB22D00FE9F0200FA900000FB92
      0000FF920000FD910000F9970000FDAB2A00FFBA6600F9C79700D6BDB400DFE1
      E300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F000D5D5D500B3B3B300919191009898
      9800F7F7F700FBFBFB0000000000000000000000000000000000000000000000
      000000000000DBEBDC0083BF83003CA4400015981A00078D0B0002810600157C
      1700488D49008CB38D00DDE7DD00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C992
      4F00FFCE8000FFCE8000FFCE8000FFCE8000FFCE8000FFCE8000FFCE8000FFCE
      8000FFCE8000FFCE8000FFCE8000FFCE8000FFCE8000FFCE8000FFCE8000FFCE
      8000FFCE8000FFCE8000C18A4600EAEAEA000000000000000000000000000000
      000000000000F3F0FE00E5DBE200EBDADE00FAE2DF00F9D8C500F8CFAD00F4D2
      9C00F3CE9E00F7D0AE00FAD0C800F0CDCF00DCCCCC00DCD9E200FAF9FE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C78E4800BD7A2700BD7A2700BD7A2700BD7A2700BD7A2700BD7A2700BD7A
      2700BD7A2700BD7A2700BD7A2700BD7A2700BD7A2700BD7A2700BD7A2700BD7A
      2700BD7A2700C48C4500E8DAC700000000000000000000000000000000000000
      0000000000000000000000000000F9F8F600EFECEB00F2EBEB00EEE6EC00F1E8
      E900ECE5EA00E6E2E900E8E4E600EEEFED00F6FEF800FAFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FEFEFE000000000000000000F7F7F700F6F6F600FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4D6D4002C96AC0014869C001C7A9C0014869C0014869C008CC6
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F4F50090AFB5004075
      800090AFB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FEFEFE000000
      0000FAFAFA00F3F3F300F8F8F80000000000D9E3F400A4BCE000E6E6E600F1F1
      F100F7F7F700FDFDFD0000000000000000000000000000000000000000000000
      000000000000F4F6F400F4F6F400F4F6F400F4F6F400F4F6F400F4F6F400ECEE
      EC002C96AC002C96AC006CBEDC008CEEFC00B4F6FC00ACEEFC008CD6DC0034AE
      B40014869C00ECEEEC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F4F50030727F002787990075BB
      C80002839C0080A3AA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F4F50090AFB5004075
      800090AFB500F0F4F50000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00F5F5F500F0F0
      F0008A8BCA00D6D6DF00F2F2F200000000007EABE1002994E000DBDBDB00E2E2
      E200F1F1F100FDFDFD0000000000000000000000000000000000000000000000
      0000F4F6FC00F4F6FC00F4F6FC00F4F6FC00F4F6FC00F4F6F400D4E6E400248E
      AC004CAED4008CEEFC008CEEFC008CEEFC008CC6CC00B4F6FC00B4F6FC00B4F6
      FC008CD6DC0014869C00ECEEEC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F4F50030778400279DB300C3EBF3007AE8
      FD0027DBFF004075800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F4F50030727F002787990075BB
      C80002839C0080A3AA0000000000000000000000000000000000000000000000
      0000FCFCFC00F6F6F600F4F4F400F4F4F400F4F4F40072A9E000A7BBDD008485
      C4002C2EAA00B4B4D000E6E6E600EFEFEF003193DF00147ED9002C2EAA007678
      C200F8F8F800000000000000000000000000000000000000000000000000D48E
      3C00C4863C00C47A2C00C47A2400C47A2400BC721C00AC6A1C00248EAC004CAE
      D4006CE6FC0044DEFC004CE6FC0064D6DC003C8684005CC6DC006CE6FC0094F6
      FC00B4F6FC008CD6DC0014869C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F4F50030778400279DB300C3EBF30088EAFD0027DB
      FF004DE1FF0090AFB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F4F50030778400279DB300C3EBF3007AE8
      FD0027DBFF004075800000000000000000000000000000000000000000000000
      0000F7F7F700E8E8E800E1E1E100E1E1E100E1E1E100CCD1DD0009ACF300283D
      B3002C2EAA009A9BC800DBDBDB00D4D6DA0006ADF400283BB2005355B500EAEA
      ED0000000000000000000000000000000000000000000000000000000000D48E
      3C0000000000000000000000000000000000F4F6F4008CC6CC00349EC4006CE6
      FC0074DEFC004CE6FC006CAEB4001C6A6C003C8684003C7A7C003C7A7C0044DE
      FC008CEEFC00B4F6FC0064A6C4008CC6CC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D0DDE000206B7A00279DB300C3EBF30088EAFD0027DBFF004DE1
      FF005FC1D400F0F4F50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F4F50030778400279DB300C3EBF30088EAFD0027DB
      FF004DE1FF0090AFB50000000000000000000000000000000000000000000000
      0000A1733E009E703C009C6E3A00996C3800976A3600B697740081A1C5000D94
      E5002C2EAA008783BF00BAB6D1005E79C8001775D3003F41B100CDCDD900F1F1
      F10000000000000000000000000000000000000000000000000000000000D48E
      3C00FCF6E400FCF6E400FCE6D400FCE6D400FCE6C400349EC40044BEDC006CE6
      FC006CE6FC008CE6EC005C8E8C008CD6DC00549E9C006CF6FC003C7A7C0074BE
      BC003CE6FC00ACEEFC0094DEF40014869C000000000000000000000000000000
      000000000000A0C1C70030738000094F4B000F4C3A001149340008474400225E
      66007098A00010606F001A98B000C3EBF30088EAFD0027DBFF004DE1FF0065CB
      DF00F0F4F5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D0DDE00010606F00279DB300C3EBF30088EAFD0027DBFF004DE1
      FF005FC1D400F0F4F50000000000000000000000000000000000000000000000
      0000A4754000000000000000000000000000000000000000000000000000349C
      E500234CBC003537AE003335AD002D79D3002E3CB200C3BFD600DFDFDF00F2F2
      F20000000000000000000000000000000000000000000000000000000000D496
      4400F4F6F400FCF6E400FCF6E400FCE6D400FCE6C4002C8ED40074DEFC006CE6
      FC006CE6FC006CE6FC006CF6FC0054FEFC006CA6AC008CE6EC00346A6C0074BE
      BC003CE6FC006CE6FC00B4F6FC0014869C00000000000000000000000000D0E3
      E600327F8800145C430043743B007CA2700090AE86009EB7950083A179004669
      3B0015462700034B51001A90A70060E3FC0027DBFF004DE1FF0065CBDF00F0F4
      F500000000000000000000000000000000000000000000000000000000000000
      000000000000A0C1C70030738000094F4B000F4C3A001149340008474400225E
      66007098A00010606F001A98B000C3EBF30088EAFD0027DBFF004DE1FF0065CB
      DF00F0F4F5000000000000000000000000000000000000000000000000000000
      0000A879430000000000EFD8B200EFD8B200EFD8B200F3E1C4008782BF00676C
      BB0008A4EF001489DA00168DD4001C6CCA003536AD007875BA00E0E0E000F3F3
      F30000000000000000000000000000000000000000000000000000000000E49E
      4C00F4F6F400FCF6E400FCF6E400FCF6E400FCE6D4002C8ED4008CEEFC008CEE
      FC006CE6FC006CE6FC008CEEFC008CC6CC00549E9C001C6A6C00549E9C004CE6
      FC003CE6FC0044DEFC00B4F6FC0014869C000000000000000000D0E5E9001373
      81002D6B3500A1C99400D8F2CF00E2F5DB00E6F6E000F2FAEF00FBFDFA00F8FD
      F700C0CEBB00385C32000B463B0018A3BF004DE1FF0065CBDF00F0F4F5000000
      000000000000000000000000000000000000000000000000000000000000D0E3
      E600327F8800145C43004A6F3B008B9770009AA58600A7B095008C9A7A004967
      3B0015462700034B51001A90A70060E3FC0027DBFF004DE1FF0065CBDF00F0F4
      F500000000000000000000000000000000000000000000000000000000000000
      0000AB7C460000000000F0DBB700F0DBB700F0DBB700F4E4C900C4BBCA003132
      AB0004B4F80007A7F1001387DA00158FD6004445B100D6C8BD00DFDFDF00F2F2
      F20000000000000000000000000000000000000000000000000000000000E4A6
      5400F4F6F400F4F6F400F4A64C00E48E1C00E48E1C00349EE4008CEEFC008CEE
      FC008CEEFC0094F6FC0074BEBC006CA6AC006CA6AC008CE6EC006CF6FC004CE6
      FC003CE6FC0044DEFC008CEEFC00248EAC000000000000000000328E9A002F71
      3800B4E1A500C7ECBB00CBEEBF003D8623003D8623003D8623003D862300F9FD
      F800FFFFFE00EBF1E90046673B00054648005AB8C900F0F4F500000000000000
      0000000000000000000000000000000000000000000000000000D0E5E9001373
      81002F693500BCB49400F2DDCF00F5E6DC00F6E9E000FAF4EF00FDFBFA00FCF9
      F700C5CBBB00385C32000B463B0018A3BF004DE1FF0065CBDF00F0F4F5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AE7F480000000000F1DDBC00F1DDBC00F1DDBC00F1DEBE00F0E3CD004444
      AF0013B4F600B1EBFF00139EEB001487D8003133AB00A89BAA00E0E0E000F3F3
      F30000000000000000000000000000000000000000000000000000000000E4A6
      5400F4F6F400F4F6F400F4F6F400F4F6F400ECE6DC00349EE40094DEF400ACEE
      FC008CEEFC00B4F6FC006CA6AC008CE6EC0074BEBC0094F6FC008CE6EC006CE6
      FC004CE6FC0044DEFC0054CEE400248EAC0000000000A0CFD8001974570093C7
      8100BBE8AB00C3EBB500CBEEBF004393260089D66E007ED460003D862300F3FB
      F100FAFDF900FEFFFE00D6E4D2001B461B004075800000000000000000000000
      0000000000000000000000000000000000000000000000000000328E9A00326F
      3800DDC1A600ECCFBB00EDD2C000F0DACA00F3E1D400F6E8DE00F9F0E900FDFA
      F800FFFFFE00EFEEE90048653B00054648005AB8C900F0F4F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2824B0000000000F2E0C100F2E0C100F2E0C100F2E0C1007B75B4003C3D
      AD002057C20012B4F6000FB3F600234DBC006F6DBB007269A200E1E1E100F5F5
      F50000000000000000000000000000000000000000000000000000000000F4AE
      5C0000000000F4F6F400F4F6F400FCF6E400ECE6DC0074BED40074BED400ACEE
      FC008CEEFC0094F6FC008CC6CC008CC6CC008CBEC40074BEBC00549E9C006CE6
      FC004CE6FC004CE6FC00349EC40074BED40000000000309AAE0056964C00B2E5
      A000BBE8AB00C5ECB900CCEEC100439326008BD7700080D563003D862300EDF9
      E900F0FAED00F6FCF300F8FDF70069895F0009464000E0E9EA00000000000000
      00000000000000000000000000000000000000000000A0CFD80019745700B8AA
      8100E8C5AC00EACCB600EDD2C000F0D9CA00F3E0D400F5E8DE00F8EEE800FBF5
      F100FDFAF900FFFEFE00DFDDD2001B461B004075800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5854D0000000000F3E2C600F3E2C600F3E2C600F3E3C600F3E3C600F3E3
      C600706CB4003334AB004444AE003F40AE00F7ECD900C0A68700E3E3E300F6F6
      F60000000000000000000000000000000000000000000000000000000000ECAE
      640000000000ECE6DC00ECE6DC00ECE6DC00ECDECC00ECDECC00349EE40094DE
      F400ACEEFC0094F6FC00ACEEFC00ACDEE4008CBEC4008CC6CC008CE6EC006CE6
      FC004CE6FC0054CEE400349EC40000000000000000000A8488007EBA6A00B6E7
      A5003D8623003D8623003D862300429226008ED6750085D669003D8623003D86
      23003D8623003D862300FAFDF900A4BF9B0010473400A0BAC000000000000000
      00000000000000000000000000000000000000000000309AAE0067894C00E5BD
      A100D5AD9100D1AC9200D3B19900D5B59F00D7BAA600D9BFAD00DAC4B300DCC8
      B900DDC9BB00DECDC100FCF9F70070835F0009464000E0E9EA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B988500000000000F4E5CB00F4E5CB00F4E5CB00F4E5CC00F4E5CC00F4E5
      CC008C86BA00C0B6C300EFE1CB008580B900F4E5CC00986B3700E3E3E300F6F6
      F600000000000000000000000000000000000000000000000000000000008472
      6C006C6A6C007C7A7C007C7A7C006C6A6C008C8E8C00ECDECC00B4C6D400349E
      F40094DEF400ACEEFC0094F6FC0094F6FC008CE6EC0094F6FC006CE6FC006CE6
      FC0054CEE40054A6D400ACDEE40000000000000000000E8784008BC87600D0EF
      C60058954200A4C699009DC88E0096CC840091D27B008CD7720085D6690080D5
      63007ED460003D862300F1FAEE00BDD5B500194A240080A3AA00000000000000
      000000000000000000000000000000000000000000000A848800A19E6A00E6C0
      A6008B542C00874E24008A5025008D5126008F53260092542700955628009656
      280096562800894F2500FDFAF900B2B49C0010473400A0BAC000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BC8B530000000000F5E7D000656565006565650065656500BAB1A500F5E7
      D100F5E7D100F5E7D100F5E8D100F5E8D100F5E8D1009B6E3900E3E3E300F6F6
      F6000000000000000000000000000000000000000000F4F6F4007C7A7C009C9E
      9C00F4F6F400DCDEDC00ECE6DC0000000000BCBEBC005C5A5C00C47A2400B48E
      5400349EE40074BED400ACE6E400ACEEFC0094F6FC008CEEFC006CD6EC0074BE
      D4004CAED400ACDEE4000000000000000000000000000E8A860089C87400D7F2
      CF0059964300A8C59E00A1C794009BC98B0095CD820090D17A008DD474008AD4
      6F0087D26D003D862300E3F6DD00C3DEBA001A4C240080A3AA00000000000000
      000000000000000000000000000000000000000000000E878400B7A57700EFD7
      C600854D2400CBB19E00C9A99200C8A18600C99C7B00CC977100D0956900D493
      6400D5926200995E3300FAF3EE00CDC8B500194A240080A3AA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C08E560000000000F6EAD500F6EAD500F6EAD600F6EAD600F6EAD600F6EA
      D600F6EAD600F6EAD600F6EAD600F6EAD600F6EAD6009F713C00E3E3E300F6F6
      F60000000000000000000000000000000000000000008C8E8C00C4C6C400ECEE
      EC00ECEEEC00C4C6C400CCCECC00F4F6F40000000000ECE6DC006C6A6C00ECDE
      CC00DCDEDC006CB6E400349EF4004CAEE4004CAEE4004CAEE4004CAEE40074BE
      D400ECEEEC00000000000000000000000000000000000B8B8F0081C26A00D9F2
      D0003C8422003A8121003C8523003F8B24009AC98A0096CB8400429126004292
      2600429126003D862300E3F6DD00A2C79500124C3500B0C6CA00000000000000
      000000000000000000000000000000000000000000000E8A8600B6A47400F1DD
      CF00854D2400CCB4A300C7AC9700C6A48C00C69F8200C89B7900CC987300D299
      6F00D79A6F0099603600F5E7DD00D8CDBA001A4C240080A3AA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C391580000000000F7ECDA00656565006565650065656500656565006565
      6500656565006565650065656500F7EDDB00F7EDDB00A2743F00E3E3E300F6F6
      F60000000000000000000000000000000000C4C6C4009C9E9C00ECE6DC00ECEE
      EC00ECEEEC00F4F6F400F4F6F400ECEEEC00ECEEEC0000000000ACAEAC009C96
      9400ECE6DC00F4F6F400FCF6E400ECE6DC00DCDEDC00F4F6F400C4863C00ECEE
      EC00F4F6F4000000000000000000000000000000000050B1C40059A75900C0EA
      B200DDF4D600D9F2D100D6F1CC003C852200A1C594009CC68E003D862300C8ED
      BC00C6ECB900C5ECB800D8F2CF006A975B00094A4500E0E9EA00000000000000
      000000000000000000000000000000000000000000000B8B8F00ABA06B00F2DE
      D0008B562F00854D2400854D2400874E2400894F25008C5125008F5226009154
      270094552700894F2500F5E6DB00BBB39600124C3500B0C6CA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C7955B0000000000F8EFDF00F8EFE000F8EFE000F8EFE000F8EFE000F8EF
      E000F8EFE000F8EFE000F8EFE000F8EFE000F8EFE000A6774200E3E3E300F6F6
      F600000000000000000000000000000000009C9E9C00DCDEDC00ECEEEC00F4F6
      F400F4F6F400D4D6D400D4D6D400F4F6F400F4F6F400D4E6E400F4F6F4007C6A
      5400E48E1C00EC8E1C00E48E1C00E48E1C00FCD6B40000000000D48E3C00F4F6
      FC000000000000000000000000000000000000000000A0D5DF001E89650096D5
      8000D5F1CC00DDF4D600D9F2D0003A802100A8C49E00A4C499003D862300C1EA
      B300BDE9AE00C6ECB900B7E1A9002A5F2D0050818B0000000000000000000000
      0000000000000000000000000000000000000000000050B1C40071945900EAC9
      B300F3E3D600F2DFD100F1DCCD00F0D9CA00EFD7C700EED6C400EED4C200ECD0
      BC00EBCEB900EBCDB800F1DDCF007C895C00094A4500E0E9EA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CA985E0000000000F9F1E400F9F1E500F9F1E500F9F1E500F9F1E500F9F1
      E500F9F2E500F9F2E500F9F2E500F9F2E500F9F2E500A97A4400E3E3E300F6F6
      F60000000000000000000000000000000000ACAEA4009CAEC400ACAEDC007472
      D4005C5ADC0084726C000C12140000000000F4F6F4008C8E8C00F4F6F4006C6A
      6C00ECEEEC00000000000000000000000000F4F6F40000000000D4964400F4F6
      FC0000000000000000000000000000000000000000000000000040AABF004397
      4E009BDB8600D5F1CC00DDF4D5003C84220059954300589542003D862300B6E7
      A500B6E7A500B9E8A9004B804100175C5B00E0E9EB0000000000000000000000
      00000000000000000000000000000000000000000000A0D5DF001E896500CBAA
      8100F1DBCC00F3E3D600F2DFD100F0DBCC00EFD8C700EED5C400EDD2C000EACA
      B300E9C7AF00ECCEB900DEC3AA002C5D2D0050818B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CD9B600000000000D5D0DF00ABA8D2009492CA00B0ACD300B0ACD300ACA9
      D300B7B3D500B2AED300A19ECF00C4C0DA00FAF4EB00AD7D4700E3E3E300F6F6
      F60000000000000000000000000000000000ACAEAC00ECEEEC00000000000000
      000000000000D4D6D4005452540000000000F4F6F400F4F6F400000000006C6A
      6C00ECEEEC0000000000EC8E1C00EC962400F4A64C00F4BE7400F4CE94000000
      0000000000000000000000000000000000000000000000000000F0F8FA00239B
      AB0043974E0090D37A00BBE9AC00CDEEC100C9EDBD00C6ECB900B1E5A000ADE4
      9A009ED58B004B85400008595A00A0BFC5000000000000000000000000000000
      000000000000000000000000000000000000000000000000000040AABF004F8E
      4E00D5AD8700F1DBCC00F3E2D500F1DECF00F0D9CA00EED6C400ECD0BC00E6C0
      A600E6C0A600E7C4AB0057774100175C5B00E0E9EB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D19E630000000000D6D2E300E4DFE700DEDBE500B4B1D700AEAAD500CCC7
      E100D7D3E300C3BFDC00C6C4DE00F7F2EE00FBF7F000B0804A00E3E3E300F6F6
      F60000000000000000000000000000000000BCBEBC00ECE6DC00000000000000
      000000000000000000005C5A5C0000000000F4F6F400ECEEEC00ECEEEC006C6A
      6C00F4F6F40000000000EC9E3C00F4F6F400F4F6F400FCE6D400FCE6C4000000
      000000000000000000000000000000000000000000000000000000000000F0F8
      FA0040AABF001E89650058A658007FC1680087C7710088C6730082BF6D005E9B
      490026714700166C7100B0CCD200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F8FA0033A2
      B0004F8D4E00C9A67B00E8C5AD00EED4C200EDD1BE00EBCEBA00E5BDA000E3B9
      9B00CDAF8C00597B410008595A00A0BFC5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D4A1660000000000FBF9F400FBF9F400FBF9F400FBF9F400FCF9F500FCF9
      F500FCF9F500FCF9F500FCF9F500FCF9F500FCF9F500B4844C00EBEBEB00F9F9
      F90000000000000000000000000000000000DCDEDC00BCBEBC00000000000000
      00000000000000000000ACAEAC0000000000F4F6F400F4F6F4009C9694009C9E
      9C000000000000000000F4AE5C00FCF6E400F4F6F400FCF6E400F4F6F4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A0D5DF0050B0C3000A868A000E817C000D7B77000D767100308B
      9C0080B5BF00F0F6F70000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F8
      FA0040AABF001E89650070925800AB9E6900B5A27100B5A27300AB9F6D00748A
      4A00296F4700166C7100B0CCD200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D8A46800D5A26700D3A06500D09D6300CE9B6100CB995E00C8965D00C694
      5B00C3925900C1905700BE8D5500BC8B5300B9895100B7874F00F9F9F900FDFD
      FD000000000000000000000000000000000000000000C4C6C400D4E6E4000000
      00000000000000000000DCDEDC00F4F6F400F4F6F400CCCECC007C7A7C000000
      00000000000000000000F4BE7C00FCE6D400FCF6E400F4F6F400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A0D5DF0050B0C3000A868A000E817C000D7B77000D767100308B
      9C0080B5BF00F0F6F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C4C6C400C4C6
      C400ECEEEC00F4F6F400ECEEEC00ECEEEC00ACAEA40084868400F4BE7C00F4C6
      8400F4BE7C00F4BE7C00F4D69C00FCF6E4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DCDE
      DC00BCBEBC00ACAEAC00ACAEAC009C9E9C00BCBEBC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBEBEB00DFDFDF00E0E0E000EDEDED0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000496065007B95
      9A00DFEAEC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EEEE
      EE00D2C9BD00A2794400A1794600BEB5A900D0D0D000E3E3E300F5F5F5000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007A979E002E6C
      7700349FB5005297A5009ABFC600DEEAEC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004B4BAA000988D3000988D3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2F2F200DDDAD500B295
      6E00BD9E7700E9DDCD00E9DECD00BFA27C00B0977700C8C6C500D8D8D800EBEB
      EB00FAFAFA00000000000000000000000000000000000000000081786D007D75
      6B007A736A007A736A007A736A007A736A007A736A007A736A006D76720046B0
      C2005BDDF2003ACBE7002CACC7003091A500567B7F007A736A007A736A007A73
      6A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000946CE000954D0001C36AF002524
      9400252494002524940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700E5E4E200B8A18200B5926500D9C7
      AF00DDC3A000E2CCAE00E4CFB300E4CDB100D6C3AB00B18E6100B8AC9D00CECE
      CE00E1E1E100F3F3F30000000000000000000000000000000000857B6E00FAE6
      D900F9E4D600F9E2D300F9E0D000F9DFCE00F9DFCE00F9DFCE00F9DFCE00519F
      AC009CFFFF0077ECF8004FD8EF0031A4BB003293A60092B2B300F9DFCE007A73
      6A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025249400252494002524
      9400252494000666B2000666B200054CAD000954D000089AF5001BBAEF001BBA
      EF0025C9F800054CAD004B4BAA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFCFC00F3F3F300ECECEC00ECECEC00ECECEC00F1F1F100FAFA
      FA00000000000000000000000000000000000000000000000000000000000000
      000000000000F9F9F900EBEBEB00C3B29C00AC875500D5C1A900E0CBAE00D2AE
      7E00CDA57000CFA87500D1AB7900D3AE7E00DEC39D00E5D4BE00C7AD8C00AC8F
      6900C5C2BF00D5D5D500E9E9E9000000000000000000000000008A7E7000FAE9
      DE00FAE7DB00F9E5D700F9E3D400F9E1D100F9DFCE00F9DFCE00F9DFCE008FB6
      B8006FDBE7009CFFFF008AF5FB003BCDEB002FA7C0002D96AB0090B3B5007A73
      6A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025249400075908000462
      340007590800189BCB00189BCB000A75CF000954D000089AF5001BBAEF001BBA
      EF0025C9F80025C9F8005475CA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFCFC00EAEAEA00D3D3D300CCCCCC00CCCCCC00D9D9D900F3F3
      F30000000000000000000000000000000000000000000000000000000000FCFC
      FC00EFEFEF00D2C9BD00A9835200CBB49600E4D4BE00D6B68C00CBA26B00CDA5
      7000C59C6500A2702F00A4723200CAA37000D7B48600D9B98F00E7D1B500E0D1
      BE00B18D5F00B4A49000CCCCCC00DFDFDF0000000000000000008F817200FAEB
      E200FAE9DF00FAE7DC00F9E6D900F9E4D600F9E2D200F9E0CF00F9DFCE00D5D2
      C80044B4C5009BFFFF0088F4FB004BD4EF003FCFEC002DABC400279AB1004E80
      8600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025249400075908000759
      0800075908001CABD40025C9F800189BCB000954D000089AF5001BBAEF001BBA
      EF0025C9F80025C9F8005475CA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C9B2980092653200906330008D612E008B5F2C00D0D0D000F0F0
      F0000000000000000000000000000000000000000000FDFDFD00F3F3F300DDDA
      D500AE8F6600BC9D7500E6D8C700DBBE9900CBA26C00CAA26B00C8A06900B185
      4A00BE9C7000EADBC900EBDDCA00C1A17600BA925C00D8B98C00DCBE9400E2C8
      A300E8D7C100CEB99D00A8875B00C2BDB800000000000000000093847400FAEE
      E600FAECE300FAEAE000FAE8DD00FAE6DA00F9E4D700F9E3D400F9E1D000F9DF
      CE0088B9BD0045BCD20081EFFA007CEDF9004FD6F00043D1ED002BAFC900229E
      B7008EC7D2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025249400075908000759
      0800075908002499610018EDFA001CABD4000954D000089AF5001BBAEF001BBA
      EF0025C9F80025C9F8005475CA00000000000000000000000000000000000000
      000000000000FAFAFA00F0F0F000ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00E9E9E900E4E4E400AA875F00996C3800976A360094673400CECECE00EDED
      ED0000000000000000000000000000000000FAFAFA00E8E7E500B8A08100AD86
      5500E2D4C100E1CAAB00CDA67200CAA16A00C99F6800B4874C00B6905E00DAC4
      A700DDC39F00E2CCAE00E4CFB300E4CDB000DAC3A600B58E5B00CFAD8100E2C7
      A400E5CBA900EAD5BA00E3D5C200B3906200000000000000000097877500FAF0
      EA00FAEFE700FAEDE400FAEBE100FAE9DE00FAE7DB00F9E5D800F9E3D500F9E1
      D200F9DFCF0078B7BE0045BED50083F0FB007EEEFA0053D7F10047D2EE0028B2
      CE001EA2BC008CC8D50000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000252494000A982A00138A
      2B000A982A0015AF4A0018EDFA002E98B8000954D000089AF5001BBAEF001BBA
      EF0025C9F80025C9F8005475CA00000000000000000000000000000000000000
      000000000000F1F1F100D8D8D800CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00C9C9C900B59C8000A5774100A3754000A1733E009E703C00C8C8C800E8E8
      E80000000000000000000000000000000000D6C5AE00A67C4600D6C4AC00E5D4
      BC00CEA97800C79E6600C79D6600B6894D00AC814900D6BE9F00E1CAAC00D2AE
      7E00CDA57000CEA77400CDA57300D3AE7E00DEC39D00E6D4BD00CAAE8A00BB94
      6200E5CDAF00ECD7BD00E5CDAE00D9C3A90000000000000000009C8A7700FAF3
      EE00FAF1EB00FAEFE800FAEDE500FAECE200FAEADF00FAE8DC00F9E6D900F9E4
      D600F9E2D300F9E0D0006AB5C00045C1D80085F1FB007FEFFA0057D9F2004BD4
      EF0026B6D30019A6C20089CAD700000000000000000000000000000000000000
      00000000000000000000000000000759080028732F00252494004CC03C0050C1
      520050C1520050C1520050C15200249961000954D000089AF5001BBAEF001BBA
      EF0025C9F80025C9F8005475CA00000000000000000000000000000000000000
      000000000000A2733E009F713C009C6E3A00996C37009669350093663300C8B2
      9900D9C1A500B2824B00AF804900AD7E4700BC976C00A8794300C3C3C300DFDF
      DF00FAFAFA00000000000000000000000000CCB29100E9DBC900CEAE8200C097
      5F00C0975F00B98D5300A5763900CBAF8A00E4D2B900D6B68C00CBA26B00CDA5
      7000BE935A00A4733300AA7D4200BD925B00D7B48600D9B98F00E7D1B500E4D3
      BE00B58F5D00BB9B7000CCC6BE00E4E4E4000000000000000000A08D7900FBF6
      F200FAF4EF00FAF2EC00FAF0E900FAEEE600FAECE300FAEAE000FAE8DD00FAE6
      DA00F9E5D700F9E3D400F6E0D1005EB5C20044C3DB0087F1FC0082F0FB005BDB
      F3004FD6F00024BAD8000EA1C0007BABC9000000000000000000000000000000
      00000000000000000000000000000759080023D9B20028732F00F3CA9400F3CA
      9400F3CA9400D4CA9500D4CA9500A29C8A000954D000089AF5001BBAEF001BBA
      EF0025C9F80025C9F8005475CA00000000000000000000000000000000000000
      000000000000A8794300FCF9F300FCF9F300FCF9F300FCF9F300FCF9F300FDFC
      F900DFC7AB00BC8B5200B9885100D5BA9A0000000000D1BA9F00C1C1C100CFCF
      CF00E9E9E900FAFAFA000000000000000000F3EBE300D1B69100BA905800B78C
      5300A4743400BB986B00E6D5C000DBBE9900CBA26C00CAA26B00C3996100A675
      3600BA956400EADBC700F2E8DB00C4A37700A8793D00D1AF7F00DCBE9400E2C8
      A300E8D7C100CEB99D00A8875B00C5C0BA000000000000000000A5907A00FBF8
      F700FBF6F400FBF5F100FAF3ED00FAF1EA00FAEFE700FAEDE400FAEBE100FAE9
      DE00FAE7DB00F9E5D800F9E3D500F6E1D20053B5C50043C6DE0089F2FC0084F0
      FB005FDCF40053D7F1000A9FC1000A4F92000000000069996B00467A45000759
      08000759080006720B0006720B0015AF4A0005FA96002CECA50028732F00F3CA
      9400F3CA9400F3CA9400F3CA9400D39B93000954D000089AF500040204001BBA
      EF0025C9F80025C9F8005475CA00000000000000000000000000000000000000
      000000000000AD7E4700F5E7D100F5E7D100F5E7D100F5E7D100F5E7D100F5E7
      D100FAF3E800E3CAAD00E0C6A90000000000000000009B6D390096693500C2C2
      C200D1D1D100E9E9E900FAFAFA00FEFEFE0000000000F8F6F500BFA37E00AC83
      4D00E0CEB700E1CAAB00CDA67200CAA16A00C69C6400AA7B3C00AF865000DBC3
      A400DABE9900D9BC9400DEC5A200DFC6A400DEC8AB00AB7E4500BE976400E2C7
      A400E5CBA900EAD5BA00E3D5C200B28F61000000000000000000A9937C00FBFB
      FB00F9DFCE00F9DFCE00F9DFCE00F9DFCE00F9DFCE00F9DFCE00F9DFCE00F9DF
      CE00F9DFCE00F9DFCE00F9DFCE00F9DFCE00F3DECE0047B6C80043C8E10079EA
      FA0062DDEE0041C6E20002579700306DA50007590800078B0900078B0900079C
      08000CAA1E0008C2460008C2460005E3740005FA960005FA960009FDA5002499
      610051773300F3CA9400F3CA9400D39B93000954D000089AF500040204001BBA
      EF0025C9F80025C9F8005475CA00000000000000000000000000000000000000
      000000000000B3834C00F2E0C100F2E0C100F2E0C100F3E3C600F7F1E800F7F1
      E700F3E3C60000000000B3834C00AE7E4800A97A4400A47540009F713C009A6C
      3800C7C7C700E0E0E000F7F7F700FEFEFE00DDCCB500A87F4900D7C6AE00E5D4
      BC00CEA97800C79E6600C69C6500B2834500A5773B00D6BE9E00DEC5A300CFA9
      7800CDA57000CFA87500D1AC7A00D3AF7E00DABC9200E8D5BD00C8A87F00A676
      3900DCC19F00ECD7BD00E5CDAE00D3BEA3000000000000000000AE967E00FBFB
      FB00FBFBFB00FBFAF900FBF8F600FBF6F300FAF4F000FAF2ED00FAF0EA00FAEE
      E700FAECE400FAEBE100FAE9DD00FAE7DA00F9E5D700F0E1D4002AAFC80018B6
      D60029B8DB001D93C30008509300CFDCEA0007590800078B0900078B0900079C
      08000CAA1E0008C2460008C2460005E3740005FA960005FA960018EA8E002873
      2F0051773300F3CA9400F3CA9400D39B93000954D000089AF500040204001BBA
      EF0025C9F80025C9F8005475CA00000000000000000000000000000000000000
      000000000000B9885100F0DAB400EFD8B100F0DBB700EFE4D500B48B5B00B289
      5900EDE2D50000000000BB8A5200B6864E00B1814A00AC7D4600A7784200A274
      3E009D6F3B00EEEEEE00FCFCFC0000000000CDB49200E9DBC900CEAE8200C097
      5F00C0975F00B3874B00A06E2E00CBAD8800E4D0B500D1AE7E00CBA26B00CDA5
      7000CFA87400D1AB7900D3AE7D00D5B18200D7B48600D9B88C00E6CFB100E2CD
      B200A7793E00BB9B7100C5BFB600E2E2E2000000000000000000B2997F00FBFB
      FB00FBFBFB00FBFBFB00FBFAFA00FBF8F700FBF7F400FBF5F100FAF3EE00FAF1
      EB00FAEFE800FAEDE500FAEBE200FAE9DF00FAE7DC00F9E5D800EAE0D400116E
      9C001F93C40032A1CC00D9E4EE00000000000000000069996B00467A45000759
      08000759080006720B0006720B0015AF4A0005FA960020D2770007590800F0BC
      8900F0BC8900F0BC8900F0BC8900D39B93000954D000089AF5001BBAEF001BBA
      EF0025C9F80025C9F8005475CA00000000000000000000000000000000000000
      000000000000BF8E5500F0DAB300ECD4A900EFE2D200C49E7100EDDEC700EDDD
      C600BD976B0000000000C3925900BE8D5500B9885100B4844D00AF7F4900AA7B
      4500EEEEEE00FCFCFC000000000000000000F3EBE300D0B48F00BA905800B488
      4D00A06D2C00BE9C6E00E4D1B900D6B68C00CAA16A00CAA26B00CDA57000CFA8
      7400D1AB7900D3AE7E00D5B28200D7B58700D9B88C00DBBB9100DDBE9500E2C7
      A300E7D7C000A9865700BFB9B200D9D9D9000000000000000000B69C8100FBFB
      FB00F9DFCE00F9DFCE00F9DFCE00F9DFCE00F9DFCE00F9DFCE00F9DFCE00F9DF
      CE00F9DFCE00F9DFCE00F9DFCE00F9DFCE00F9E3D400FAE8DD00FAE6DA007A73
      6A00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000759080015AF4A0007590800F1B07300F0BC
      8900F0BC8900F0BC8900F0BC89009D8B87000954D000089AF5001BBAEF001BBA
      EF0025C9F80025C9F8005475CA00000000000000000000000000000000000000
      000000000000C5935A00F0DEBD00F0E3D300D0AC7F00EEDAB900F2E0C100F2E0
      C100F6ECDC00C9B29800C7AF95000000000000000000BD8C5300B8874F00E1E1
      E100FCFCFC0000000000000000000000000000000000F2EEE900B3906300B18A
      5700E2D0B900DCC29E00CBA36D00CAA16A00CAA16A00CDA57000CFA97500D1AC
      7B00D3B08000D6B38500D8B78B00DABB9000DCBE9600DFC29B00E1C6A100E3C9
      A700EBDCC500EADFD100A4815400C8C8C8000000000000000000BBA0830097BC
      AB00317B5A0097BCAB00FBFBFB00FBFBFB00FBFBFB00FBFAF900FBF8F600FBF6
      F300FBF4F000FAF2ED00FAF0EA00FAEEE700FAEDE400FAEBE100FAE9DE007A73
      6A00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000759080028732F0025249400F1B07300F1B0
      7300EEA85F00F1B07300F1B07300D68785000954D000089AF5001BBAEF001BBA
      EF0025C9F80025C9F8005475CA00000000000000000000000000000000000000
      000000000000CB985E00F7F0E700D9B68600ECD3A600EDD4A700EDD4A700F6EA
      D400CFB89D009E703C009C6E3A00C4AA8C0000000000D6BEA300C7C7C700E7E7
      E70000000000000000000000000000000000D6C2A800A9804900DECDB800E0CA
      AC00C9A16D00C59C6500C59C6500C59C6500C8A06B00CAA47100CDA97700D0AD
      7E00D3B18400D6B58B00D8BA9100DBBE9700DDC29E00E0C7A400E3CBAB00DCC2
      9F00EDDDC800FBF8F400C1A47D00BBB4AB0000000000000000007B9070003085
      5F002F936700308761009ABDAD00FBFBFB00FBFBFB00FBFBFB00FBFBFA00FBF9
      F700FBF7F400FBF5F100FAF3EE00FAF1EB00FAEFE800FAEDE500FAEBE2007A73
      6A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025249400EEA85F00EEA8
      5F00EEA85F00F0BC8900F0BC89009D8B87000954D000089AF5001BBAEF001BBA
      EF0025C9F80025C9F8005475CA00000000000000000000000000000000000000
      000000000000D09D640000000000000000000000000000000000000000000000
      0000D4BCA100A8794300A5774100A3754000B59167009E703C00CACACA00EAEA
      EA0000000000000000000000000000000000D5BEA100E4D3BD00C7A37200BF96
      5E00BF955E00BF955D00BF955D00C2996300C59F6B00C8A47300CBA97A00CFAF
      8200D2B38A00D6B89200D9BE9900DDC3A000E0C8A800E4CEB000E6D1B400E4CC
      AD00EEDFCB00FCF9F500EFE7DC00AD926E00000000009EC1B100308962002E9A
      6B002E9A6B002E9A6B00308A63009BB09700F9DFCE00F9DFCE00F9DFCE00F9DF
      CE00F9DFCE00F9DFCE00F9DFCE00F9DFCE00FAECE300FAF0E900FAEEE6007A73
      6A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025249400ED9B5500ED9B
      5500F4E9D500F4E9D500F4E9D500A7ADAB000954D000089AF500A29C8A0060A8
      B70025C9F80025C9F8005475CA00000000000000000000000000000000000000
      000000000000D6A36700D3A06500D09D6300CD9B6000CB985E00C8965C00D4AF
      840000000000D6BDA000AF804900AD7E4700AA7B4500A8794300CECECE00EEEE
      EE000000000000000000000000000000000000000000E1CFB700BF996500B98F
      5600B88F5600B88E5600BB925C00BF996500C39F6E00C7A57700CBAB7F00CFB1
      8700D3B89100D7BE9A00DCC4A200E0CAAB00E4D0B400E6D4B900CDAE8500C4A1
      7300C7A87E00DECCB300F3ECE400B4926300A3C4B5002F8D64002EA06F002EA0
      6F002EA06F002EA06F002EA06F002F8E6500A1C2B300FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFAFA00FBF8F700FBF6F300FBF4F000FAF3ED00FAF1EA007E76
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025249400E48B3800EFED
      E700F4E9D500F4E9D500F4E9D500A7ADAB000954D000089AF500A29C8A008C9B
      B10025C9F80025C9F8005475CA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00C6A07600B7874F00B4844D00B2824B00DEDEDE00F4F4
      F40000000000000000000000000000000000000000000000000000000000DECC
      B400B8915D00B58B5500BA925E00BE996800C2A07200C7A77C00CCAE8600D1B5
      9000D6BC9A00DBC4A500DFCAAF00E2CEB400D0B69300C9B59C00DED8D100F3F3
      F3000000000000000000E8DDCF00DAC9B200317B5A0022C77F0022C77F0022C7
      7F0022C77F0022C77F0022C77F0022C77F00317B5A00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBF9F800FBF7F500FBF5F200FAF3EE008279
      6D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025249400E0772A00F0BC
      8900F0BC8900F0BC8900F0BC89009D8B87000954D000089AF5001BBAEF001BBA
      EF0025C9F80025C9F8005475CA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E2C8AB00C3915800C18F5600BE8D5400BC8B5200F6F6F600FCFC
      FC00000000000000000000000000000000000000000000000000000000000000
      000000000000DAC8AE00B7936200BD9A6C00C3A47A00C9AB8500CEB39000D3BB
      9B00D9C3A600DBC6AA00C9AE8900C6B49B00E4E2DF0000000000000000000000
      000000000000000000000000000000000000317B5A00317B5A00317B5A00317B
      5A00317B5A00317B5A00317B5A00317B5A00317B5A00F9DFCE00F9DFCE00F9DF
      CE00F9DFCE00FAEEE600FBFBFB00FBFBFB00FBFAF900FBF8F600FBF6F300867C
      6F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025249400252494002524
      9400252494002524940025249400252494000954D000089AF5001BBAEF000988
      D30025249400054CAD004B4BAA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D7C4AB00BB9A6F00C9AF8B00D1BA9B00D3BD
      9F00C0A47E00C3B29A00E6E4E200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CCCCCC00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFAFA00FBF8F7008B7F
      7000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000946CE000954D0000988D3000988
      D300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D7C4AB00C0A47D00CCBB
      A300E7E6E5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D0AE8B00D0AE
      8B00D0AE8B00CDAC8A00C9A98800C4A68600C0A38500BBA08300B79D8100B39A
      8000AE977E00AA947C00A6917B00A18E79009C8B770098887600948574008F82
      7200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004B4BAA000988D3006D6AB7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00CFCFCF009D9D9D00D4D4D400DDDDDD00E8E8
      E800E8E8E800000000000000000000000000BAB4AA006D645A006A615500B2B0
      AC00CFCFCF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00EEEDEC00EEF2F600F5F6
      F700FAFAFA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004960
      65007B959A00DFEAEC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00DCDCDC0092929200D8D8D800F5F5F50094929100AF926C00B692
      6300C4BBAF00D1D1D100C0BBB300756C6000635B50009F8158009A7C54005E57
      4E009B979100CBCBCB00E1E1E100000000000000000000000000000000000000
      000000000000000000000000000000000000D9CEC3008F6841008F6C4900C5BB
      B100E9EDF100F3F5F700FAFBFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007A97
      9E002E6C7700349FB5005297A5009ABFC600DEEAEC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00EBEB
      EB0097979700CBCBCB00F9F9F900E3E3E300D8D8D800F4F4F400ABA8A500A581
      5100B68B53009A82610074675500967B5600BA915900B9915900BC966500A880
      4B00685C4C007F797100C3C3C300D9D9D9000000000000000000000000000000
      0000000000000000000000000000FAF9F900A17D590090663D00E5DBD100A382
      6000875D3400B5A59400D3CECA00E8EAEB00F6F7F900FCFDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000008178
      6D007D756B007A736A007A736A007A736A007A736A007A736A007A736A006D76
      720046B0C2005BDDF2003ACBE7002CACC7003091A500567B7F007A736A007A73
      6A007A736A000000000000000000000000000000000000000000000000000000
      000000000000E08A1600DA720500DA720500DA720500DA720500DA720500DA72
      0500CD680D00CD680D00CD680D00CD680D00CD680D00CD680D00CD680D00CD68
      0D000000000000000000000000000000000000000000F1F1F1009F9F9F00BDBD
      BD00F9F9F900EDEDED00DDDDDD00DCDCDC00DCDCDC00DEDEDE00F3F3F300CECD
      CD00957B5A0087705300A7845500B88E5500B58C5300B58C5500C4A17200B58B
      5300B0864D007E694A0066615B00B4B4B4000000000000000000000000000000
      0000000000000000000000000000C9B8A6009D642C00CFBAA400FEFFFF000000
      0000ECE5DF00AB8E6F00916B45009E836600C2B7AB00E7E9EC00F2F5F700F9F9
      F900FDFDFD00000000000000000000000000000000000000000000000000857B
      6E00FAE6D900F9E4D600F9E2D300F9E0D000F9DFCE00F9DFCE00F9DFCE00F9DF
      CE00519FAC009CFFFF0077ECF8004FD8EF0031A4BB003293A60092B2B300F9DF
      CE007A736A000000000000000000000000000000000000000000000000000000
      000000000000DA720500FFFFFF00EFEDE700EFEDE700EFEDE700EFEDE700F4E9
      D500F4E9D500F4E9D500F4E9D500F4E9D500F4E9D500F4E9D500F4E9D500CD68
      0D0000000000000000000000000000000000BABABA00B5B5B500F8F8F800F4F4
      F400E8E8E800E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600EFEF
      EE009C9C9C00886E4D00A5805000B2884F00B48C5500C1A07200CCAB7E00BC92
      5A00B78D5400B2884F0097774A005F5B54000000000000000000000000000000
      000000000000000000000000000086582900CC915500B38F6900E1EBF500E7EA
      ED00F0F3F500F9FBFD00E8E2DD00C5B29F008960370087613900B09C8700EBF1
      F800F1F4F700F7F8F90000000000000000000000000000000000000000008A7E
      7000FAE9DE00FAE7DB00F9E5D700F9E3D400F9E1D100F9DFCE00F9DFCE00F9DF
      CE008FB6B8006FDBE7009CFFFF008AF5FB003BCDEB002FA7C0002D96AB0090B3
      B5007A736A000000000000000000000000000000000000000000000000000000
      000000000000DA720500FFFFFF00F4E9D500F0D3B200F0D3B200EEDDC900EEDD
      C900F0D3B200F0D3B200F0D3B200F0D3B200F0D3B200F3CA9400F4E9D500CD68
      0D0000000000000000000000000000000000F4F4F400FAFAFA00F2F2F200F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000EEEEEE00B2B1B1005B5B
      5B004C4C4C00A07C4D00AA875700C1A07300CBAF8900D8C3A600D5B68C00C299
      6100BD935C00B88E5600B4895100A8804B000000000000000000000000000000
      00000000000000000000AF9A8400B97D4200DDAE7C00EFDBC500C8935B00CAB5
      9F00D2CDC900DADDDF00E3E7EA00ECEFF100F2F3F500CFC3B600936D47007D50
      2200A48A7100CCC5BF00E5E5E500F2F2F3000000000000000000000000008F81
      7200FAEBE200FAE9DF00FAE7DC00F9E6D900F9E4D600F9E2D200F9E0CF00F9DF
      CE00D5D2C80044B4C5009BFFFF0088F4FB004BD4EF003FCFEC002DABC400279A
      B1004E8086000000000000000000000000000000000000000000000000000000
      000000000000DA720500FFFFFF00D0B89000D39B9300F3CA9400F0D3B200EEDD
      C900EEDDC900F0D3B200F0D3B200F0D3B200F0D3B200F0D3B200EFEDE700CD68
      0D0000000000000000000000000000000000F2E7D900E7D9C800FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00CCCBCA00696969004C4C4C005F57
      4C009A794F00B48A52008E7B6200D3BFA600E3D4C000EEE5D900DDC3A000C89F
      6800C49A6300BF955D00BA905800B58B53000000000000000000000000000000
      000000000000EFECE80092673C00DFA66B00E3C9AD00DFB78C00C8833E00C681
      3B00C2874B00C4A48200C9BBAD00D1D3D700D9DCE000E3E5E800EEF1F500C8BC
      AF00A081620081542700A0846800E3E1DF000000000000000000000000009384
      7400FAEEE600FAECE300FAEAE000FAE8DD00FAE6DA00F9E4D700F9E3D400F9E1
      D000F9DFCE0088B9BD0045BCD20081EFFA007CEDF9004FD6F00043D1ED002BAF
      C900229EB7008EC7D200000000000000000000000000000000000B1695003433
      9B0000000000DA720500FFFFFF002524940006058F0084708E00F3CA9400F0D3
      B200EEDDC900EEDDC900F0D3B200F0D3B200F0D3B200F0D3B200EFEDE700CD68
      0D0000000000000000000000000000000000F4EBE000D5B48800DFC6A400FAF9
      F8000000000000000000E0DFDE00787878004C4C4C0059544D0094785400BC91
      5B00927957005E574F0071624E00EADFD300FAF7F400FDFDFC00EBDCC700CAA1
      6B00CAA16A00C59C6500C0975F00BC925A000000000000000000000000000000
      000000000000B9A49000BB844C00D6A67700EFD9C300D1975B00CA8A4800C887
      4600C5823E00C07A3300BD7F3E00BC885300C1B0A000CAD0D600D0D5DA00DCDF
      E200E1E3E500C6BBAE00885F3500F9F9FA000000000000000000000000009787
      7500FAF0EA00FAEFE700FAEDE400FAEBE100FAE9DE00FAE7DB00F9E5D800F9E3
      D500F9E1D200F9DFCF0078B7BE0045BED50083F0FB007EEEFA0053D7F10047D2
      EE0028B2CE001EA2BC008CC8D50000000000000000000B1695000486FC000954
      D00034339B00CD680D000B1695000D37CF000656EF000B1695008C694600AA89
      5D00A2995700AA895D00AA895D00AA895D00CD987300F0D3B200EFEDE700CD68
      0D0000000000000000000000000000000000F5F5F500A5A29F009E876900B79F
      8000D5D3D0008D8D8D004C4C4C0053504D0089735700BF9762009A7F5D006059
      51006C5C4900855B260084653E00F7F5F200F6F2EC00F2ECE400F1E8DB00D4B2
      8500CAA16A00CAA16A00C79E6600C29961000000000000000000000000000000
      0000E9E4DF009C6C3C00D3965900EAD1B500E1B88E00CC8D4B00CA8B4B00C889
      4700C5844200C07E3C00BD7A3500BB742C00B8702700B8763400B9977500C0BC
      B900CDD1D50091745500E9E7E600000000000000000000000000000000009C8A
      7700FAF3EE00FAF1EB00FAEFE800FAEDE500FAECE200FAEADF00FAE8DC00F9E6
      D900F9E4D600F9E2D300F9E0D0006AB5C00045C1D80085F1FB007FEFFA0057D9
      F2004BD4EF0026B6D30019A6C20089CAD7000000000034339B000954D0000486
      FC000954D00006058F000486FC000776F30025C9F80034339B00D7CAB300F4E9
      D500F4E9D500F4E9D500EEDDC900EEDDC900F0D3B200F0D3B200EFEDE700DA72
      0500000000000000000000000000000000007E766B00B08E6100BA935E007466
      53004C4C4C004D4D4C007F6E5800C19B6A00A5896400645D53006D5E4B00845C
      27007F5F3500716B640076767600F0EFEE00EBE1D400E6DACA00E8DCCC00F0E5
      D700D4B38600CAA16A00CAA16A00C89F68000000000000000000000000000000
      0000B2977D00B87F4600D8A87500F4E4D300D2955600CE904F00CB894800C887
      4600C5823F00C07D3900BE7C3700BB783300B9753000B9742E00B9702600B773
      2E00BB926900A9866100E6E7E700FBFCFC00000000000000000000000000A08D
      7900FBF6F200FAF4EF00FAF2EC00FAF0E900FAEEE600FAECE300FAEAE000FAE8
      DD00FAE6DA00F9E5D700F9E3D400F6E0D1005EB5C20044C3DB0087F1FC0082F0
      FB005BDBF3004FD6F00024BAD8000EA1C000000000000000000034339B000954
      D000089AF5000486FC000486FC0025C9F80010468D00D7CAB300F4E9D500F4E9
      D500F4E9D500F4E9D500EEDDC900EEDDC900EEDDC900F0D3B200EFEDE700DA72
      050000000000000000000000000000000000AE8C5E00BF965E00C29A6700B796
      6900776A5900BB9A6E00AD906A00686055006C5F4D00835C2A0082603600746D
      6400777777007F7F7F0087878700C5C5C500E4DACD00DBC9B200D6C2A800DECD
      B700F2E8DB00DFC7A600CDA67200CAA16A00000000000000000000000000FEFF
      FF0086542000D69D6300F0DECB00DFB28300D1915000D0935600D5A06C00CB8E
      4F00CF986200CA925800BF7C3900BB783200B9753000BA763100BA763100BA75
      2F00BA722900B2671C00DED9D300FEFFFF00000000000000000000000000A590
      7A00FBF8F700FBF6F400FBF5F100FAF3ED00FAF1EA00FAEFE700FAEDE400FAEB
      E100FAE9DE00FAE7DB00F9E5D800F9E3D500F6E1D20053B5C50043C6DE0089F2
      FC0084F0FB005FDCF40053D7F1000A9FC1000000000000000000000000000605
      8F00089AF500089AF5000486FC00054CAD009A775300E28D5000A2995700B198
      7700B1987700B1987700B1987700A2995700B1987700EEDDC900EFEDE700DA72
      050000000000000000000000000000000000A9875800B98F5700C59F6C00D1A9
      7500B3946C006B6256006A5E4E00815C2C0083623600776F65007A7A7A008282
      82008A8A8A00929292009898980097979700EDEDEC00D0C3B200CBB08E00C6A9
      8400C9AE8A00E0CEB500CDA77400D5BA97000000000000000000000000009A7D
      6100C78B4E00E3BB9100F1D9C300D2925100D1945300DAAD7D00E0B99100DCB4
      8C00DBB38900D7AB8000C3864700BC763200B9752F00BA763100BA763100BA76
      3000B8702800B48350000000000000000000000000000000000000000000A993
      7C00FBFBFB00F9DFCE00F9DFCE00F9DFCE00F9DFCE00F9DFCE00F9DFCE00F9DF
      CE00F9DFCE00F9DFCE00F9DFCE00F9DFCE00F9DFCE00F3DECE0047B6C80043C8
      E10079EAFA0062DDEE0041C6E20002579700000000000000000034339B000A75
      CF000FABF3000FABF3000486FC0025C9F80010468D00D0BCAB00F0D3B200F4E9
      D500F4E9D500F4E9D500EFEDE700F4E9D500F4E9D500EEDDC900EFEDE700DA72
      050000000000000000000000000000000000A6835200B3895000AB8D64007367
      5800695E4F00805C2E00866234007A7166007D7D7D00858585008D8D8D009494
      9400969696008E8E8E00868686007E7E7E0089898900EAEAE900CCC7C000AC95
      7500AE8F6900CDBBA30000000000000000000000000000000000DDD5CC009B6B
      3B00E2AC7500ECD6BF00E2B58700D79B5F00DDAD7E00E0B78F00DFB78E00DCB5
      8D00DAB28800D9AF8500D2A47500CA955F00B8732C00B9753000BA763100B974
      2D00B5753600E6E0DA000000000000000000000000000000000000000000AE96
      7E00FBFBFB00FBFBFB00FBFAF900FBF8F600FBF6F300FAF4F000FAF2ED00FAF0
      EA00FAEEE700FAECE400FAEBE100FAE9DD00FAE7DA00F9E5D700F0E1D4002AAF
      C80018B6D60029B8DB001D93C300085093000000000034339B000A75CF001BBA
      EF000A75CF0006058F000486FC000FABF30025C9F80034339B00D0BCAB00F0D3
      B200EFEDE700F4E9D500EFEDE700F4E9D500F4E9D500F4E9D500FCFEFC00DA72
      050000000000000000000000000000000000AE8C5F00C3A277007A6A55007E5E
      3300886333007C7266007F7F7F00878787008F8F8F0097979700939393008B8B
      8B00838383007B7B7B00737373006C6C6C006464640067676700BBBBBB005D5D
      5D00CCCCCC000000000000000000000000000000000000000000AE937700C790
      5A00DDB58B00F3DCC500D99E6200DDAC7A00E4C09A00E1B99200DEB58B00D4A2
      6E00D7A97A00D9AF8400D7AD8200D8AF8700BA763200B9753000BA753000B46C
      2500C8A68500FCFFFF000000000000000000000000000000000000000000B299
      7F00FBFBFB00FBFBFB00FBFBFB00FBFAFA00FBF8F700FBF7F400FBF5F100FAF3
      EE00FAF1EB00FAEFE800FAEDE500FAEBE200FAE9DF00FAE7DC00F9E5D800EAE0
      D400116E9C001F93C40032A1CC00D9E4EE00000000000B1695001BBAEF000A75
      CF0034339B00E0772A000B1695000F66CE00089AF5000B1695008B736B00CD98
      7300B1987700D1AB8C00D1AB8C00F4E9D500F4E9D500F4E9D500FCFEFC00DA72
      050000000000000000000000000000000000CEB89900DDCAB200997B54007F74
      6600828282008A8A8A0092929200989898009090900089898900818181007979
      79007171710069696900616161005959590051515100515150006D5A4100B0AC
      A600E9E9E90000000000000000000000000000000000DFD7CE009B663200D397
      5A00F7E7D500E4B48500D99C5D00D89F6500E2BB9200E3BC9400D9A87700C683
      3E00C88C4F00DAB28800D7AD8200CD9B6700B7712900B9753000B9722B00BC85
      4D00F2F4F600000000000000000000000000000000000000000000000000B69C
      8100FBFBFB00F9DFCE00F9DFCE00F9DFCE00F9DFCE00F9DFCE00F9DFCE00F9DF
      CE00F9DFCE00F9DFCE00F9DFCE00F9DFCE00F9DFCE00F9E3D400FAE8DD00FAE6
      DA007A736A0000000000000000000000000000000000000000000B1695003433
      9B0000000000E08A1600FFFFFF00252494000B1695009C86A400F4E9D500EFED
      E700EFEDE700EFEDE700A7ADAB00A7ADAB00A7ADAB00A7ADAB00D0BCAB00DA72
      050000000000000000000000000000000000F0E8DD00F8F5F000F3F3F2009898
      980094949400969696008E8E8E00868686007E7E7E00767676006E6E6E001885
      DB00008EFF0042637E004F4F4F0057545200806D5400A9824F00935D1700B7AA
      9900E1E1E1000000000000000000000000000000000098734D00C0844800E3BE
      9800F4DEC500DDA16500DA9F6100DBA67100E3BD9500E2BB9300DDB18600D098
      5F00D4A26E00D9B08600D7AD8200D1A37400BA752F00B9753000B1671C00D9CE
      C20000000000000000000000000000000000000000000000000000000000BBA0
      830097BCAB00317B5A0097BCAB00FBFBFB00FBFBFB00FBFBFB00FBFAF900FBF8
      F600FBF6F300FBF4F000FAF2ED00FAF0EA00FAEEE700FAEDE400FAEBE100FAE9
      DE007A736A000000000000000000000000000000000000000000000000000000
      000000000000E08A1600FFFFFF00EFEDE700CADAED00FCFEFC00FCFEFC00FCFE
      FC00EFEDE700EFEDE700CD680D00CD680D00CD680D00CD680D00CD680D00E48B
      380000000000000000000000000000000000FBFAF700F5F1EB00F1EAE000DDD5
      CB0095939200838383007B7B7B00737373006C6C6C00068CF600008EFF004F57
      5E004D4D4D005E5A54008D755600B58B5500BE915800C2965C009C682400AA91
      7000D6D6D60000000000000000000000000000000000874E1400D89E6100F6EA
      DF00E4B07A00DDA36600DB9F6200DDAB7700E6C29E00E2BB9300DFB78E00DEB4
      8C00DCB38900D8AF8400D8AF8400D8B18B00BA753000B86F2500B88B5A000000
      0000000000000000000000000000000000000000000000000000000000007B90
      700030855F002F936700308761009ABDAD00FBFBFB00FBFBFB00FBFBFB00FBFB
      FA00FBF9F700FBF7F400FBF5F100FAF3EE00FAF1EB00FAEFE800FAEDE500FAEB
      E2007A736A000000000000000000000000000000000000000000000000000000
      000000000000E08A1600FFFFFF00D1AB8C00B1987700B1987700B1987700D7CA
      B300FCFEFC00EFEDE700CD680D00F7E6B800F3CA9400E0772A00ED9B55000000
      000000000000000000000000000000000000FBF9F600E8DCCE00E3D5C300DECE
      B900D0BFA9008A857E0069696900616161005959590051515100505050006962
      5900987D5900BD915900C3965C00C79A6000CC9F6400D0A36800B4824200996B
      2F00CDCDCC0000000000000000000000000000000000A8642100ECCDAC00F1D4
      B600E0A36600DEA66B00DCA16500D79D6000D8A16800E0B68B00E0B99000DEB6
      8D00DCB48900D9AF8700CF9B6700C4854700B9732B00B3753500E7E2DC000000
      00000000000000000000000000000000000000000000000000009EC1B1003089
      62002E9A6B002E9A6B002E9A6B00308A63009BB09700F9DFCE00F9DFCE00F9DF
      CE00F9DFCE00F9DFCE00F9DFCE00F9DFCE00F9DFCE00FAECE300FAF0E900FAEE
      E6007A736A000000000000000000000000000000000000000000000000000000
      000000000000E08A1600FFFFFF00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00CD680D00F0D3B200E28D5000ED9B5500000000000000
      00000000000000000000000000000000000000000000F6F1EB00DDCCB700D2BB
      9E00CDB49400C8AD89009E8B71006F665A005C5854007F7F7F0096754B00CDA6
      7400C89B6100CC9F6500D0A36900D5A86D00D9AC7100DDB07500D3A46700935D
      1700C7BDB10000000000000000000000000000000000BE874D00F5DFCB00E6B7
      8500E1A76C00DFA56A00DBA26600D89C5F00D3965600D9A57100DFB78C00D9AA
      7B00DAB08400D5A77800C3824200BD793300B8702B00D0B59900FEFFFF000000
      00000000000000000000000000000000000000000000A3C4B5002F8D64002EA0
      6F002EA06F002EA06F002EA06F002EA06F002F8E6500A1C2B300FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFAFA00FBF8F700FBF6F300FBF4F000FAF3ED00FAF1
      EA007E766B000000000000000000000000000000000000000000000000000000
      000000000000E9961C00FFFFFF00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00CD680D00ED9B5500EEA85F0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EEE6
      DB00D3BFA500B7997000A98B6600AD9A8200E1DCD60000000000AC824C00DDBD
      9400D6A86D00DAAD7200DEB17500E3B57900E7B97D00EBC08600E4B981009663
      2000E3DFDA0000000000000000000000000000000000D7BDA200D8AD7F00DEA1
      6100E3A86B00DEA56900DDA26600D99D6000D5995C00D3965800D2985D00CC8F
      4E00CC8F5300C78A4D00C1803D00BF793300B8814800F1F1F200000000000000
      00000000000000000000000000000000000000000000317B5A0022C77F0022C7
      7F0022C77F0022C77F0022C77F0022C77F0022C77F00317B5A00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBF9F800FBF7F500FBF5F200FAF3
      EE0082796D000000000000000000000000000000000000000000000000000000
      000000000000E9961C00FFFFFF00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00EFEDE700CD680D00F1B073000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BE9D7300E4C9
      A700E4B77C00E8BA7E00ECBE8200F1C79200F3D1A500E0B88700B3884E00D5C4
      AF0000000000000000000000000000000000000000000000000000000000F1E8
      E000D3A97E00DCA77100DA9F6300D6985800D6985A00D3955700CE8F5000CB8D
      4D00C8894700C5834100C3803D00B86F2400DFD8D30000000000000000000000
      00000000000000000000000000000000000000000000317B5A00317B5A00317B
      5A00317B5A00317B5A00317B5A00317B5A00317B5A00317B5A00F9DFCE00F9DF
      CE00F9DFCE00F9DFCE00FAEEE600FBFBFB00FBFBFB00FBFAF900FBF8F600FBF6
      F300867C6F000000000000000000000000000000000000000000000000000000
      000000000000E1983900E1983900E9961C00E08A1600E08A1600E08A1600E08A
      1600E08A1600E08A1600CD680D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9C6AD00D6B5
      8A00F1CC9C00F5CE9C00F4D9B600E2C19600BB935F00D3C0A900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAFBFB00E2CEB800E2BC9600D29D6600CD8D4B00CF8E4D00CD8E
      4D00CA8A4900C5844300C07B3400C0986D000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CCCC
      CC00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFAFA00FBF8
      F7008B7F70000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAF7F400AF81
      4400F1E1CD00E3C59F00BF9B6C00DED0BF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2E9E000F1E1D100D1A37500C382
      3F00C7823B00C4803B00BC814400E7E1DB000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D0AE
      8B00D0AE8B00D0AE8B00CDAC8A00C9A98800C4A68600C0A38500BBA08300B79D
      8100B39A8000AE977E00AA947C00A6917B00A18E79009C8B7700988876009485
      74008F8272000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DECD
      B800BC9B7000E9E0D40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E4D0BA00C18B5200DEC6AB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E08A1600DA720500DA720500DA720500DA720500DA720500DA720500CD68
      0D00CD680D00CD680D00CD680D00DA720500CD680D00CD680D00CD680D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002476970024769700000000000000000000000000000000000000
      000000000000000000000000000000000000000000001AB25F0028732F000759
      080028732F000A982A0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CD68
      0D00AA540600B3743400D3AA7500CD987300D3AA7500CD987300CD987300CD98
      7300D3AA7500D3AA7500CD987300CD987300D3AA75008E643800AA540600AA54
      0600000000000000000000000000000000000000000000000000000000000000
      0000DA720500FCFEFC00FCFEFC0000000000FCFEFC00FCFEFC00EFEDE700EFED
      E700EFEDE700EFEDE700EFEDE700F4E9D500F4E9D500F1B07300CD680D000000
      00000000000000000000000000000000000000000000E08A1600DA720500DA72
      0500DA720500DA720500DA720500DA720500CD680D00CD680D00CD680D00CD68
      0D00CD680D00CD680D00CD680D00CD680D0000000000000000008DB9C9002476
      97005DCBED006AEAFC0024769700000000000000000000000000000000000000
      00000000000000000000000000000000000028732F00075908001BC062000BD3
      64000BD364001BC0620028732F0028732F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CD680D00D5AB
      5900E08A1600F0BC8900FCFEFC00EFEDE7000000000053545500B1BBB400EFED
      E700EFEDE700FCFEFC00FCFEFC00CADAED000486FC008C694600CE682C00AB88
      4100AA5406000000000000000000000000000000000000000000000000000000
      0000DA720500F4E9D500F4E9D500F4E9D500EEDDC900EEDDC900EEDDC900F0D3
      B200F0D3B200F0D3B200F0D3B200F0D3B200F3CA9400F4E9D500CD680D000000
      00000000000000000000000000000000000000000000DA720500FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00EFEDE700EFEDE700EFEDE700EFEDE700EFED
      E700EFEDE700F4E9D500F1B07300CD680D00000000005D9BB000298CAF0033D6
      FB006AEAFC002E98B8008DB9C900000000000000000000000000000000000000
      0000000000000000000000000000075908000A982A0008C246000BD3640005E3
      740005E3740018EA8E0009FDA5001BC062000759080000000000000000002873
      2F00075908000000000000000000000000000000000000000000AA540600F3CA
      9400E08A1600F0BC8900FCFEFC00FCFEFC000000000068737000B1BBB400CADA
      ED00EFEDE700FCFEFC00FCFEFC00EFEDE7000486FC009A775300CD680D00F1B0
      7300AA5406000000000000000000000000000000000000000000000000000000
      0000DA720500F4E9D500F4E9D500F4E9D500F4E9D500EEDDC900EEDDC900EEDD
      C900F0D3B200F0D3B200F0D3B200F0D3B200F0D3B200EFEDE700CD680D000000
      00000000000000000000000000000000000000000000DA720500F4E9D500F4E9
      D500F4E9D500EEDDC900EEDDC900EEDDC900F0D3B200F0D3B200F3CA9400F0BC
      8900F3CA9400F3CA9400F0D3B200CD680D00000000002E98B80025C9F80033D6
      FB002E98B8005D9BB00000000000000000000000000000000000000000000000
      000000000000000000000A982A000CAA1E0008C2460005CE53000BD3640005E3
      740005E3740018EA8E0009FDA50005FA960018EA8E0006720B0028732F00179C
      4900075908000000000000000000000000000000000000000000AA540600F3CA
      9400E08A1600F3CA9400FCFEFC00FCFEFC00000000009D8B8700B1BBB400CADA
      ED00EFEDE700FCFEFC00FCFEFC00EFEDE7000486FC009A775300CD680D00F1B0
      7300AA5406000000000000000000000000000000000000000000000000000000
      0000DA720500EFEDE700F4E9D500F4E9D500F4E9D500F4E9D500F4E9D500EEDD
      C900EEDDC900F0D3B200F0D3B200F0D3B200F0D3B200EFEDE700CD680D000000
      00000000000000000000000000000000000000000000DA720500F4E9D500F4E9
      D500F4E9D500F4E9D500EEDDC900EEDDC900F0D3B200F1B07300EEA85F00EEA8
      5F00EEA85F00EEA85F00F0BC8900746644000486FC001BBAEF0025C9F800298C
      AF005D9BB0000000000000000000000000000000000000000000000000000000
      000000000000075908000A982A000CAA1E000A982A000A982A000A982A000A98
      2A000759080005FA960009FDA50005FA960005FA960005E374001AB25F0009FD
      A500075908000000000000000000000000000000000000000000AA540600F3CA
      9400E08A1600F3CA9400FCFEFC00FCFEFC0000000000A29C8A00B1BBB400EEDD
      C900EFEDE700EFEDE700FCFEFC00FCFEFC000486FC009A775300CD680D00F1B0
      7300AA5406000000000000000000000000000000000000000000000000000000
      0000DA720500EFEDE700EFEDE700F4E9D500F4E9D500F4E9D500F4E9D500F4E9
      D500EEDDC900EEDDC900F0D3B200F0D3B200F0D3B200EFEDE700CD680D000000
      00000000000000000000000000000000000000000000DA720500EFEDE700F4E9
      D500F4E9D500F4E9D500EEDDC900D3AA750074522C008159300074522C007452
      2C008E643800AB8841006C528400166486000486FC001CABD400247697008DB9
      C900000000000000000000000000000000000000000000000000000000000000
      00000A982A00075908000A982A000A982A000000000000000000000000000000
      0000000000000759080028732F0005FA960005FA960009FDA50009FDA50009FD
      A500075908000000000000000000000000000000000000000000AA540600F3CA
      9400E08A1600E1983900EFEDE700FCFEFC0000000000FCFEFC00CADAED00EEDD
      C900CADAED00EFEDE700FCFEFC00FCFEFC000486FC009A775300CD680D00F1B0
      7300AA5406000000000000000000000000000000000000000000000000000000
      0000E08A1600EFEDE700EFEDE700EFEDE700F4E9D500F4E9D500F4E9D500F4E9
      D500F4E9D500EEDDC900EEDDC900EEDDC900F0D3B200EFEDE700DA7205000000
      00000000000000000000000000000000000000000000DA720500EFEDE700D0BC
      AB00B1987700B1987700B374340074522C00D1AB8C00D1AB8C00D7CAB300D7CA
      B300D1AB8C008E6438000B169500166486000486FC004E8EA900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000A982A000A982A000A982A00000000000000000000000000000000000000
      0000000000000000000028732F001BC0620005FA960009FDA50009FDA50009FD
      A500075908000000000000000000000000000000000000000000AA540600F3CA
      9400E08A1600E08A1600E9961C00AA895D00AA895D00AA895D009A7753009A77
      5300AB884100AA895D00AA895D00AA895D00AA895D008E643800CD680D00F1B0
      7300AA5406000000000000000000000000000000000000000000000000000000
      0000E08A1600EFEDE700EFEDE700EFEDE700EFEDE700F4E9D500F4E9D500F4E9
      D500F4E9D500F4E9D500EEDDC900EEDDC900F0D3B200EFEDE700DA7205000000
      00000000000000000000000000000000000000000000E08A1600EFEDE700EFED
      E700EFEDE700D7CAB30074522C00D1AB8C00D1AB8C00FCFEFC00FCFEFC00EFED
      E700EFEDE700F4E9D5005752690006058F000486FC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000028732F0009FDA50009FDA50009FDA50009FD
      A500075908000000000000000000000000000000000000000000CD680D00F3CA
      9400E08A1600E08A1600E08A1600CD680D00CD680D00CD680D00CD680D00CD68
      0D00CD680D00CD680D00CD680D00CD680D00CD680D00CD680D00DA720500F1B0
      7300AA5406000000000000000000000000000000000000000000000000000000
      0000E08A1600FCFEFC00EFEDE700EFEDE700EFEDE700EFEDE700F4E9D500F4E9
      D500F4E9D500F4E9D500F4E9D500EEDDC900EEDDC900EFEDE700DA7205000000
      00000000000000000000000000000000000000000000E08A1600EFEDE700EFED
      E700EFEDE7009A775300AA895D00EEDDC900F4E9D500F4E9D500F4E9D500EFED
      E700EFEDE700EFEDE700F4E9D500815930000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000028732F0028732F0009FDA50009FDA50009FDA50009FDA50009FD
      A500075908000000000000000000000000000000000000000000CD680D00F3CA
      9400E08A1600E08A1600E08A1600E08A1600E08A1600E08A1600E08A1600E08A
      1600E08A1600E08A1600E08A1600E08A1600E08A1600E08A1600DA720500E9BF
      7600AA5406000000000000000000000000000000000000000000000000000000
      0000E08A1600FCFEFC00FCFEFC00EFEDE700EFEDE700EFEDE700EFEDE700F4E9
      D500F4E9D500F4E9D500F4E9D500F4E9D500EEDDC900FCFEFC00DA7205000000
      00000000000000000000000000000000000000000000E08A1600FCFEFC00D7CA
      B300AA895D0074522C00D0B89000D0B89000D0B89000D7CAB300D7CAB300D7CA
      B300EEDDC900EFEDE700F4E9D500AA895D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000075908000759
      0800075908000759080007590800075908000759080007590800000000000000
      0000000000000759080028732F00075908000759080007590800075908000759
      0800075908000000000000000000000000000000000000000000CD680D00F3CA
      9400E08A1600EFEDE700FCFEFC00FCFEFC0000000000EFEDE700EFEDE700EFED
      E700EFEDE700CADAED00CADAED00CADAED00CADAED00ABD9D100E08A1600E9BF
      7600AA5406000000000000000000000000000000000000000000000000000000
      0000E08A1600FCFEFC00FCFEFC0000000000EFEDE700EFEDE700EFEDE700EFED
      E700F4E9D500F4E9D500F4E9D500F4E9D500F4E9D500FCFEFC00DA7205000000
      00000000000000000000000000000000000000000000E08A1600FCFEFC00FCFE
      FC00D7CAB3009A775300F0D3B200EEDDC900F4E9D500F4E9D500F4E9D500F4E9
      D500F4E9D500F4E9D500F4E9D500D1AB8C000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000759080009FD
      A50009FDA50009FDA50009FDA50009FDA500179C490028732F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CD680D00F3CA
      9400E08A1600FCFEFC00FCFEFC00FCFEFC0000000000FCFEFC00EFEDE700EFED
      E700EFEDE700EFEDE700CADAED00CADAED00CADAED00CADAED00E08A1600E9BF
      7600AA5406000000000000000000000000000000000000000000000000000000
      0000E08A1600FCFEFC00FCFEFC0000000000FCFEFC00EFEDE700EFEDE700EFED
      E700EFEDE700F4E9D500EEDDC900F4E9D500EEDDC900EFEDE700DA7205000000
      00000000000000000000000000000000000000000000E08A1600FCFEFC00FCFE
      FC00D7CAB3009A775300F0D3B200EEDDC900F4E9D500F4E9D500F4E9D500F4E9
      D500F4E9D500F4E9D500F4E9D500D3AA75000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000759080009FD
      A50009FDA50009FDA50009FDA500179C490028732F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CD680D00F3CA
      9400E9961C00FCFEFC00FCFEFC00FCFEFC0000000000FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC0000000000EFEDE700E08A1600E9BF
      7600AA5406000000000000000000000000000000000000000000000000000000
      0000E08A1600FCFEFC00FCFEFC0000000000FCFEFC00FCFEFC00EFEDE700EFED
      E700EFEDE700F0D3B200B1987700B1987700B1987700D1AB8C00DA7205000000
      00000000000000000000000000000000000000000000E08A1600FCFEFC00D7CA
      B300B198770081593000D0B89000D0B89000D0B89000EEDDC900F4E9D500EEDD
      C900EEDDC900EEDDC900F4E9D500AA895D000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000759080009FD
      A50009FDA50009FDA50009FDA5001BC062000759080000000000000000000000
      000000000000000000000000000000000000000000000A982A000A982A000000
      0000000000000000000000000000000000000000000000000000CD680D00F3CA
      9400E9961C00FCFEFC00D1CBC700D1CBC700D1CBC700D1CBC700D1CBC700D1CB
      C700D1CBC700D1CBC700D1CBC700D1CBC700D1CBC700EFEDE700E08A1600E9BF
      7600AA5406000000000000000000000000000000000000000000000000000000
      0000E08A1600FCFEFC00FCFEFC0000000000FCFEFC00FCFEFC00FCFEFC00EFED
      E700EFEDE700CD680D00CD680D00CD680D00CD680D00CD680D00E48B38000000
      00000000000000000000000000000000000000000000E08A1600FCFEFC00FCFE
      FC00FCFEFC009A775300D3AA7500F0D3B200F0D3B200FCFEFC00FCFEFC00D7CA
      B300D0BCAB00D7CAB300F0D3B200815930000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000759080009FD
      A50009FDA50009FDA50009FDA50005FA960005E3740028732F00075908000000
      00000000000000000000000000000A982A0006720B00075908000A982A000000
      0000000000000000000000000000000000000000000000000000CD680D00F3CA
      9400E9961C00FCFEFC00FCFEFC00FCFEFC0000000000FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00EFEDE700EFEDE700EFEDE700EFEDE700CADAED00E08A1600E9BF
      7600AA5406000000000000000000000000000000000000000000000000000000
      0000E08A1600FCFEFC00FCFEFC0000000000FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00EFEDE700E0772A00F7E6B800F7E6B800E0772A00ED9B5500000000000000
      00000000000000000000000000000000000000000000E08A1600FCFEFC00FCFE
      FC00FCFEFC00EEDDC90081593000D0B89000F0D3B200FCFEFC00FCFEFC00F0BC
      8900EEA85F00F1B073008E6438008E6438000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000759080009FD
      A5001AB25F0005E3740009FDA50005FA960005FA960005FA960005E374000A98
      2A000A982A000A982A000A982A000CAA1E000CAA1E0007590800000000000000
      0000000000000000000000000000000000000000000000000000CD680D00F3CA
      9400E9961C00FCFEFC00A0FAFB009AEAD2009AEAD2009AEAD2009AEAD2009AEA
      D2009AEAD2009AEAD20078DCD20089E1B50089E1B50089E1B500E08A1600E9BF
      7600AA5406000000000000000000000000000000000000000000000000000000
      0000E08A1600FCFEFC00FCFEFC0000000000FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00E28D5000F0D3B200ED9B5500ED9B550000000000000000000000
      00000000000000000000000000000000000000000000E08A1600FCFEFC00D7CA
      B300B1987700B19877009A77530081593000D0B89000D0B89000ED9B5500F1B0
      7300E28D5000815930008E643800000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000007590800179C
      490028732F0006720B0028732F0005FA960005FA960005FA960018EA8E0005E3
      74000BD3640005CE53000CAA1E000CAA1E0006720B0000000000000000000000
      0000000000000000000000000000000000000000000000000000CD680D00F3CA
      9400E9961C00A0FAFB002AC9B0002AC9B0002AC9B0002AC9B0002AC9B0002AC9
      B00017CC900017CC900022BC8E0022BC8E0022BC8E0055CBAA00E08A1600E9BF
      7600AA5406000000000000000000000000000000000000000000000000000000
      0000E9961C00FCFEFC00FCFEFC0000000000FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00ED9B5500ED9B5500ED9B55000000000000000000000000000000
      00000000000000000000000000000000000000000000E08A1600FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00F4E9D50074522C007466440074522C007452
      2C008E643800AB88410000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000075908002873
      2F00000000000000000028732F001BC0620005FA960018EA8E0005E3740005E3
      740005E3740008C2460028732F00075908000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CD680D00F1B0
      7300E9961C00A0FAFB0036E8D20036E8D20036E8D20036E8D20036E8D20020DE
      C40020DEC40023D9B20023D9B20023D9B20023D9B20069D9AD00E08A1600F1B0
      7300AA5406000000000000000000000000000000000000000000000000000000
      0000E9961C00FCFEFC00FCFEFC0000000000FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00F1B07300F1B07300000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E9961C00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00ED9B5500ED9B
      5500EEA85F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000467A45000759080005E3740005E3740005E3
      740005E374000A982A0028732F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E48B3800F0BC
      8900E08A1600A0FAFB0036E8D20036E8D20036E8D20036E8D20036E8D20036E8
      D20020DEC40020DEC40023D9B20023D9B20023D9B20069D9AD00DA720500E9BF
      7600E48B38000000000000000000000000000000000000000000000000000000
      0000E1983900E9961C00E9961C00E08A1600E08A1600E08A1600E08A1600E08A
      1600E08A1600F0BC890000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E9961C00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00F1B07300EEA8
      5F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001AB25F000A982A000A98
      2A001AB25F001AB25F0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E48B
      3800E48B3800D0B890006FAC6D006FAC6D006FAC6D006FAC6D006FAC6D006FAC
      6D006FAC6D006FAC6D0063965400639654006396540063965400E48B3800E48B
      3800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E1983900E9961C00E996
      1C00E08A1600E08A1600E08A1600E08A1600E08A1600E08A1600EEA85F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000B00100000100010000000000401400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000CFFFFFCFCFFFFFFF07000000C7FFFFC7
      C7FFFFF207000000C3FFFFC3C3FFFFC00F000000C1FFFFC1C1FFFF8000000000
      C0FFFFC0C0FFFF8000000000C07FFFC0407FFF8000000000C01FFFC0003FFF80
      00000000C01FFFC0001FFF0001000000C00FFFC0000FFE0003000000C003FFC0
      0007E00001000000C003FFC00003C00000000000C003FFC00201C00000000000
      C001FFC00001C00001000000C001FFC00001C00003000000C007FFC004030000
      0F000000C00FFFC0080700000F000000C01FFFC0100F02000F000000C03FFFC0
      201F00003F000000C07FFFC0403F0001FF000000C07FFFC0407F8003FF000000
      C0FFFFC0C0FF0007FF000000C1FFFFC1C1FF001FFF000000C3FFFFC3C3FF801F
      FF000000C7FFFFC7C7FFF83FFF000000FFFFFFF0000FFFF3F3FFFFF380007FF0
      000FFFE3E3FFFFE380007FE0000FFFC3C3FFFFC3800001E00007FF8383FFFF83
      800001E40007FF0303FFFF03800001E00007FE0203FFFE03800001E00007FC00
      03FFFC03800001E00007F80003FFF803800001E80007F00003FFF003000001E8
      0007E00003FFE003000001C80007C00003FFC003000001C80007804003FF8003
      000001C80003800003FF8003800001C80003800003FF8003C00001C30003C020
      03FFC003E00001D80003E01003FFE003F00001C00003F00803FFF003F80001C0
      00C3F80403FFF803FC0001C00033FC0203FFFC03FF0001C00013FE0203FFFE03
      FF8001C00063FF0303FFFF03FFC0C1E00007FF8383FFFF83FFF7C1F8001FFFC3
      C3FFFFC3FFFFC7FFFFFFFFE3E3FFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF800000800003C3FFFFFF3FFF000000800001C07FFFFC3FFF000000800001
      E01FFFF83FFF000000800001E00FFFF0000F000000800001E007FFC0000F0000
      00800001F003FFC0000F000000800001F001FFC0000F000000800001F800FFF0
      000F000000000001F8007FF83FFF000000000001FC003FFC39FF3FC000000001
      FE001FFF387F3FC000000001FF000FFFF83F004000800001FF8007E0001F0040
      00C00001FFC003E00007404000E00001FFE003E00007404000F00001FFF001E0
      000760C000F80001FFF801E0001F60C000FC0001FFFC03FFF83F60C000FE0001
      FFFE07FFF87F60D000FF8001FFFF87FFF9FF7FDE00FFC041FFFFFFFFFFFF7FDF
      80FFE3C1FFFFFFFFFFFF000000FFFFC3FFFFFFF80007FE3FFFFFFFFFFFF01FE0
      0001F80FFFFFFFFFFFC01FC00000F007FFC3FF0FFC001FC00000E001FF81FE07
      F0001F800000C001FF80FC07F0001F800000C200FF807807F0001F8000008400
      3F80300FF0001F82000080003FC0001FF0001F92800080001FE0003FF4001F8A
      8001800007F0007FF4001F868001C00003F800FFF4001FC28003E00003FC01FF
      F4001FE00007E00003FE00FFF4001FF0000FF00007FE001FF4001FFFC007F800
      07FC000FF4081FFFC007FC0003F80007F4001FFF8003FE0101F04007F4023FFF
      8003FF0181E0C207F4807FFF8003FF8041C1C2E7F7A0FFFF8003FFC003C3E0FF
      F7E1FFFF800FFFE003C3E07FF607FFFFC00FFFF007FFF03FF01FFFFFE01FFFF8
      0FFFF87FF0FFFFFFF07FFFFFFFFFFFFF800001FFFC07FFC1FFFFF88F800003FF
      F803FF803FFFF80F800003FFF801FE0007FFE001800003FE3000F00001FFC000
      800007F80000E00001FF8001C00007F00000C00001FFC001C0000FC00000C000
      01FF8000C0000FC00000C00001FF0000C0000F800000C00001F80000C0000F80
      0100C00000F00001C0000D800003000500C00001800001800003000800800000
      800001800003000000000201800003800001880001000001800007800441C000
      0180000FC00007E0000080000000008FC0000FF000000000000000FFE0001FF0
      00001008000001FFF0003FFFC2010000408001FFF8007FFFC0038000079001FF
      FC00FFFFC003FC003F0003FFFF03FFFFE007FFE1FF8003FFFF87FFFFF00FFFF3
      FFF01FFFFFFFFFFFF81FFFFFFFF11FFFFFFFFFFFE00180003FFFFFFFFFFC0FF8
      000080003FFFF800FFF003E0000080003FC00000C0000180000081F03F000000
      C00180800000C001FF000000C000008000008000FF000000C000008000008000
      7F000000C0024080000080007F000000C0024080000000003F000000C0038080
      004000001F000000C0024080004000001F000001C0024080001020001F000400
      C003808100033C0007800800C00000C00003000007E01800C00001E000018000
      03F03800C00083F00001800003E01800C0000FE00001C00001E01800C0001FE0
      0001C00001E01C00C6071FE00001C00000E01C00DFFF1FE00007E00020E01E01
      DFFF1FE0080FE00070E01F07C0001FE00E3FE000FFE01FFFFFFFFFF01FFFF801
      FFE01FFFFFFFFFFFFFFFFF03FFFFFFFF800000D90FFFFFFC00FFFFFF00000000
      03FFC00000FFFC0F00000000007F000000F8000300000000007F000000F80001
      00000000007F000000C0018100000000003F300000C0000100000000003F0000
      00C0000100000000003F000000C00241000000000037000800C0024100000000
      0000001800C00381000000800004000000C00241000000800000000003C00241
      000000000000000003C00381000000002000000001C000010000008000010000
      01C00001000000808003F00000C00003000000810007F80001C0000700000080
      001FFC0003C0000700000084003FFC0007C0000700000080003FFE001FC00007
      0000008003FFFE007FC0001F0000008003FFFF01FFC0001F0000008003FFFF03
      FFFFFFFF000000FFFFFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFE003FFE00E1FF
      FFFFFFF07FFC003FF00001FFFE01F8003FFC003FE00001FF0001F0003FFC000F
      C00001FC01C1E2003FF00007C00001F00001E0003FE00001C00001E001C1E200
      3FC00001C00001E00001E0003FC00001C00001E001C1E2001FC00001C00001E0
      0001E0000FEC001FC00001E00381C40007F8000FC00001E00201C00003F00007
      C00007E00001E00003C00001C00007E0000FFC0003C00001C0000FE0000FF800
      0FC00001C0000FE0000FF0000FC00003C0000FE0000FF80001FC003FC0000FE0
      C00FF00001F00007C0000FE0000FF00001E00001C0000FE0FFFFF00001C00001
      C0001FE3FFFFF00001C00001C0001FEFFFFFF80081C00003C0007FFFFFFFFFFF
      FFFC007FC000FFFFFFFFFFFFFFFC007FFF000FFFFFFFFFFFFFFFFFFFFC0007FF
      F01FFFE7FF80001FFC0007FFC007E0047F800001F80003FF8003C0001F800001
      F00001C0000380003F800001E00001C00001BE0023800001C00001C000018000
      03800001C00001C00001820003800001C00001C00001840003800001800001C0
      0001840043C00001800001C00001800043C00001800001C00001800043C00001
      800001C00003A00043C00001800001C00003A00043C00001800003C00007A000
      03C00001800003C0000FB00003C00001800007C0000FBC040FE00001C0000FC0
      000FB0110FE00001C0001FC0001FBE0D1FF00001E0003FC0001FBE001FF84001
      E0007FC0003FBF903FFFC001F800FFC0003FBFD03FFFC001FE03FFC0007FBFF0
      FFFFC001FFFFFFC001FF8001FFFFFFFFFFFE00C00003F8001FFFE3FFFFF80000
      0001F0000FF0013FFFC000000000C00003E0001FFE0000400000C00003C0000F
      F80000000000800001DE001F800003000000000000C0001F0000030000000000
      00C0001F000003000000000000C0001F000003001000000000C0001F00000300
      0800000000C0000F000003400C00000000C0000FE00003400701000000D00007
      E00003000143000000C00007E0000360C007000000820003E000037FF01F0000
      00010003E0000363003F00000000808FE0000300013F00000002008FE0000341
      013F000000000E9FE0000763FF3F81040171403FE001FF40893F81C40178003F
      E001FF08883FC2C44378103FE001FF00007FE0E70738187FFE01FF8000FFF000
      0F8001FFFE07FF8888FFFC003FC0FFFFFFFFFFFFFFFFFF000FFC000FFFFFFFFF
      FFFFFC0007FC0003FFFFFFFFFFFFF80007FC0003FFFFFFC070FFF80003FC0003
      FF000780000FF00201FE0003FE0007800007E00201FC0003F80007800003C004
      01F00003F88007800003C00C01E00003F80007800003C60801C00001F8ECA780
      0003831001C00001F86E6780000380F001C00001F80007800003803001C00001
      F80007800003803801C00001F8000F800003804E01C00001F8000F8000038003
      03E00001F800FF9C0003808107E00000F800FF80FFE3808007E00000F804FF80
      0007C1000FE00001F800FF80000FC2000FE00007FF07FFFFFFFFE0003FE0001F
      FFFFFFFFFFFFE0007FF0007FFFFFFFFFFFFFF800FFF001FFFFFFFFFFFFFFFE03
      FFF007FFFFFFFFFFFFFFFFFFFFF01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFF
      FF1FFFFF1FF80E0FFFFE1FFFFE1FFFFE1FE00007FFFC1FFFFC1FFFFC1FC00003
      FFF01FFFF01FFFF01F000003F0000FF0000FF0000F000001E00007E00007E000
      07000001E00007E00007E00007000000E00007E00007E00007800000E00007E0
      0007E00007C80000E00007E00007E00007E60000E00007E00007E00007E70004
      E00007E00007E00007E40004E00007E00007E00007F4F004E00007E00007E000
      07F7F800E00007E00007E00007F78000E00007E00007E00007F00180E00007E0
      0007E00007F001C0E0000FE0000FE0000FF00100FFFFFFFFFFFFFFFFFFFF8000
      FFFFFFFFFFFFFFFFFFFF8000FFFFFFFFFFFFFFFFFFFF8001FFFFFFFFFFFFFFFF
      FFFF8007FFFFFFFFFFFFFFFFFFFFF00FFF801FFFFFFFFFFFFFFFFFFFFF800F00
      01FFFF007FFFFFFFFE00070000FFFC003FFFFFFFFC000300001FF8003FFFC07F
      F8000100000FF8001FF8001FF00001000007F8001FF0000FE00001000000F800
      1FE00007E00001000000F8001FE00003C00001000000F8001FE00003C0000100
      0000F8001FE00001C00001400000F8001FF00001800001600000F0001FF00001
      800001780000F0000FF000018000017C2000F0000FFC00018000037F0000E000
      0FF800018000077F0000E00007F80013800007000000E00007F8006380000FEF
      C000E00007F001C1C0000FEFF800E00007F00001C0001FEFFF80E00007F07001
      E0003FE00000E00007FFFF81F000FFE00000F0000FFFFE03F801FFE00000F800
      1FFFFFFFFFFFFFF00001FE003FFFFFFFFFFFFFFFFFFFFFF98FFFF80FFFFF87FF
      FFFFFF9103F80003FFFF03FFFF83FF8103F00001FFFE03FFFF03F00007E00001
      FFFC03FFFE03F0000FEF0000FFF803FFFC03F0000FE00000F80007FFF803F7E0
      0FE00000E0000FF80007F4000FE00000C0001FE0000FF4000FE00000C0003FC0
      001FF4000FE0000080007FC0003FF4000FE8000080003F80007FF4000FE80001
      80003F80003FF4000FE0000180003F80003FF4000F81000380003F80003FF400
      0F80800780003F80003FF4000F00400780003F80003FF4000F00004F80007F80
      003FF4000F01074FC0007F80007FF4000F39241FC000FFC0007FF4000F3D041F
      E001FFC000FFF4000F3D0C1FF803FFE001FFF0000F9C1C3FFFFFFFF803FFFFFF
      FFC000FFFFFFFFFFFFFFFFFFFFE07FFFFFF87FFFC7FFFFFFFFFFFFFFFFE01FFF
      C0FFFFFF1FFFFFFFFF8007C0000FFFFF03FFFFFFFE0003C0000FFF8001FFF80F
      F80001C0000FFF8001FFF80FE00000C0000FFF8001FFF80F800000C00007FF80
      01F8000F000000C00003FF8001F8000F000000C00001FE0001F80007000000C0
      0000FE0001F80083000000C00000800001F80180000000C00000000001F80400
      000000C00000000001F80401000000C00001800001F80403000000C0000FFE00
      01F80187800000C0000FFE0001F8008F000000C0000FFF8001FBF00F00000080
      000FFF8001F8080F80000000000FFF8001FFF80FE0000C00000FFF8001FFF80F
      F8007F00000FFF8001FFFFFFFE01FFC0000FFFFF0FFFFFFFFF87FFC0000FFFFF
      1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0707FF07FFFFE3FFFFFFFFF0
      0001FF01FFFFE07FFFFFFFC00000FE003FE00007F8000F800000FE1007E00007
      F8000F000000FE0003E00007F8000F000000FC0000E00007F8000F000000F800
      00E00003C8000F0C0000F80000E0000180000F000000F00001E0000080000F00
      0000F00000E00000C0000F000000E00000E00000E0000F000000E00003E00000
      C0000F000003C00003E0000080000F000007C00003E0000080000F0000078000
      07E00007C8000F00000780000FE00007F8000F00000780001FE00007F8001F00
      000780001FC00007F8003F80000780001F800007F8007FE0400780003F800007
      F800FFFFC00FE0007F800007F801FFFFC03FF800FFE00007FFFFFFFFC0FFFF00
      FFE00007FFFFFFFFE3FFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFF0001FFFFFF9FF83FFE0000FF1001F8000C1FF00FF
      C08007F0001F800081FE0067C08007F0001F800083FC0007C08007F0001F8000
      07F80007C08007F0001F80000FF0F807C08007F0001F80003FF1FC07C00007F0
      001F80007FFFFE07C00007F0001F8000FFFFF807C00007F0001F8000FFC03807
      C08007F1001F8000FFC03FFFC08007F1001F8000FFC07FFFC08087F1001F8000
      FFC07F9FC00007F1001F8000FFC01E1FC08007F1003F8000FFC0003FC00007F1
      007F8001FFC0007FC00007F100FF8003FFCC00FFC00007F101FF8007FFFE01FF
      C00007F003FF800FFFFF83FFE0000FFFFFFF801FFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ImageList1: TImageList
    Left = 440
    Top = 8
    Bitmap = {
      494C010166006800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000A0010000010020000000000000A0
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800000000000000000008080800080808000808080008080
      8000808080000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000C0C0C0000000000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000000000000000000000000000000000000000000080808000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080008000800080008000800080008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000800080008000800080008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000800080008000800080008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000800080008000800080008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000800080008000800080008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800080008000800080008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000800080008000800080008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000008000000080000000800000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800080008000800080008000800080008000
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000800080008000800080008000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000008000800080008000800080008000
      8000800080008000800080008000800080008000800080008000800080008000
      8000800080008000800000000000000000000000000000000000000000000000
      0000C0C0C00080008000FF000000800080008000800080008000800080008000
      8000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000C0C0C000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000008000800080008000800080008000
      8000800080008000800080008000800080008000800080008000800080008000
      8000800080008000800080008000000000000000000000000000000000000000
      0000FF0000008000800080008000800080008000800080008000800080008000
      8000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000C0C0
      C00080000000800000008000000080000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00080000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000800080008000800080008000800080008000
      8000C0C0C000FF00000000000000000000000000000000000000000000000000
      000000000000C0C0C00080008000800080008000800080008000800080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000C0C0C00080000000800000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800080008000800080008000C0C0C000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000080008000800080008000800080008000800080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000C0C0C0008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080008000C0C0C000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000800080008000800080008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000800080008000800080008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C0008000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000008000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000800080008000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000800080008000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000080008000800080008000800080008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C00080008000800080008000800080008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000008000800080008000800080008000800080008000800080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C0008000800080008000800080008000800080008000800080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000800080008000800080008000800080008000800080008000800080008000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000800080008000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000800080008000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000800080008000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000800080008000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000800080008000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000800080008000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000800080008000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C00080808000808080008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000808080008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C0008080800080808000808080008080800080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000808080008080800080808000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00080808000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000101010000000000000000000303030000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000202020000088F8000078E0000070E000000000004040
      4000505050000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF00000000FF0000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000202020001010
      1000C84878006028400000B8FF002090F8000080F0000080E8008848D0000000
      000048485000606060007878780000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF00000000FF0000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C84878007038
      5000C84878006838480018C0FF0040A0F8000090F8000090F8008848D0002828
      D800484848005858600000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000FF000000FF000000FF0000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C84878007040
      5000C84878007040500030C8FF0058A8F8000098FF000098FF009048D8004040
      E8000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF00000000FF000000FF000000FF000000FF000000FF
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D06088007848
      5800D05880007848580048C8FF0060B0F80038C8FF000050E0009048E8005050
      F0000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF00000000FF000000FF000000FF000000FF000000FF
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D87098007848
      6000D86890006060600060D0FF0058D0FF0050D0FF000098FF00303030006060
      FF0000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF00000000FF000000FF000000FF0000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000058585800E088A800E080
      A800D878A0007070700078D8FF0070D8FF0060D0FF0030A0FF00404040002828
      F80020202000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000FF0000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000060606000E898B800E898
      B000E088A8007878780090E0FF0080D8FF0068D0FF0068B8FF00484848004040
      F80028282800000000000000000000000000FF000000FF000000FF000000FF00
      000000FF0000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000070707000F0B0C800E8A8
      C000E898B0008888880090E0FF00FFFFFF0068D0FF0068D0FF00585858007070
      F80030303000000000000000000000000000FF000000FF000000FF00000000FF
      000000FF0000FF000000FF000000FF00000000FF0000FF000000FF000000FF00
      0000FF00000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000078787800F0C0D800F0B0
      C800FFFFFF008888900068D0FF0000000000000000006868680068686800A0A0
      F8003838380000000000000000000000000000000000FF00000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF0000FF000000FF000000FF00
      0000FF00000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000080808800FFFFFF00C888
      B000B8609000A018600010101000A8A0A00058585800000000009878D0007810
      A0003838380000000000000000000000000000000000FF00000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF0000FF000000FF000000FF00
      0000FF000000FF00000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D0D0D0005858
      5800484848000000000010101000FFFFFF00A8A0A00000000000585858000000
      00000000000000000000000000000000000000000000FF00000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF0000FF000000FF000000FF00
      000000FF000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080000000000000000000000000000000
      000000000000000000000000000000000000000000000000000020202000E0E0
      E000C0C0C0004848480000000000E0E0E00048484800E0E0E000989898000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      000000FF000000FF0000FF000000FF00000000FF000000FF0000FF000000FF00
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000C0C0C0000000000000000000000000000000
      000000000000000000000000000000000000000000000000000020202000FFFF
      FF00E0E0E000484848000000000000000000E0E0E000FFFFFF00A8A0A0000000
      00000000000000000000000000000000000000000000000000000000000000FF
      000000FF000000FF0000FF000000FF00000000FF000000FF0000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000C0C0C000C0C0C000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001010
      1000000000000000000000000000000000000000000000000000484848000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004D7100CFFF
      FF000000000098FFFF0035FFFF00004D710017BBFF00EAFFFF0017BBFF0015FF
      FF00004D71000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000004D710017BBFF000000
      000098FFFF0000000000004D7100004D7100004D710017BBFF009EFFFF0017BB
      FF0017BBFF00004D710000000000000000000000000080808000C0C0C000C0C0
      C00080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00080808000C0C0
      C00080808000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000800000008000FFFFFF000000
      000000000000000000000000000000000000004D710017BBFF0098FFFF000000
      000000000000004D7100004D7100004D7100004D7100004D71000000000098FF
      FF0017BBFF0017BBFF00004D7100004D7100000000008080800000FF000000FF
      00008080800000FF000000FF000000FF000000FF000000FF00008080800000FF
      00008080800000FF000000FF0000C0C0C0000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000800000008000FFFFFF000000
      000000000000000000000000000000000000006E8F0098FFFF00000000000000
      000098FFFF00B4FFFF0000000000004D710000FFFF00004D71000000000017BB
      FF0017BBFF0017BBFF00005E8100005E81000000000080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFF
      FF0080808000FFFFFF00FFFFFF00C0C0C00000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000800000008000FFFFFF000000
      000000000000000000000000000000000000006B8E0017BBFF00000000000000
      000098FFFF000000000007FFFF00004D7100004D710000F0FE0000000000D6FF
      FF0017BBFF0043FFFF00005B7F00005B7F000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000800000008000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000006B8E0098FFFF00000000000000
      00000000000000FFFF00004D710000476C0000F7FF00000000000000000017BB
      FF0017BBFF0017BBFF00005B7F00005B7F00000000008080800000FF000000FF
      00008080800000FF000000FF000000FF000000FF000000FF00008080800000FF
      00008080800000FF000000FF0000C0C0C00000000000FFFFFF00000000000000
      0000FFFFFF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000008080
      8000000080000000800000008000000080000000800000008000000080000000
      80000000800000008000FFFFFF0000000000006F910017BBFF0098FFFF000000
      000000000000004D710000FFFF00004D7100000000000000000017BBFF00DBFF
      FF0017BBFF0054FFFF00005E8100005E81000000000080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFF
      FF0080808000FFFFFF00FFFFFF00C0C0C00000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000008080
      8000000080000000800000008000000080000000800000008000000080000000
      80000000800000008000FFFFFF000000000000000000004D710098FFFF000000
      000000000000004D710000EEFD00004D710000F5FF00004D7100EAFFFF0017BB
      FF0017BBFF00004D710000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000808080000000800000008000000000008080
      8000808080008080800000000000000000000000000000000000004D710098FF
      FF000000000000000000004D7100004D7100004D7100DBFFFF0017BBFF0017BB
      FF00004D7100000000000000000000000000000000008080800000FF000000FF
      00008080800000FF000000FF000000FF000000FF000000FF00008080800000FF
      00008080800000FF000000FF0000C0C0C00000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000800000008000FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000004D
      7100004D710098FFFF0000000000004D710000000000D6FFFF00004D7100004D
      7100000000000000000000000000000000000000000080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFF
      FF0080808000FFFFFF00FFFFFF00C0C0C00000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000800000008000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000004D710098FFFF000000000098FFFF00004D7100000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000800000008000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000004D710017BBFF0082FFFF0017BBFF00004D710000000000004D
      710000000000000000000000000000000000000000008080800000FF000000FF
      00008080800000FF000000FF000000FF000000FF000000FF00008080800000FF
      00008080800000FF000000FF0000C0C0C00000000000FFFFFF0000000000BFBF
      BF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000004D710000577900007F9F00003B6000004D7100004D7100004D
      7100004D71000000000000000000000000000000000080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFF
      FF0080808000FFFFFF00FFFFFF00C0C0C00000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000004D7100A8FFFF000000000017BBFF00004D710000000000004D
      7100000000000000000000000000000000000000000080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFF
      FF0080808000FFFFFF00FFFFFF00C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000004D7100004D7100004D710017BBFF00004D7100004D7100004D71000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000004D7100004D710000000000004D710000000000004D7100004D71000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00800000008000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000008080800000000000000000000000000080808000808080008080
      8000808080000000000000000000000000000000000080808000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00800000008000
      0000800000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0080000000800000008000
      000080000000808080000000000000000000FFFFFF0080000000800000008000
      0000800000008080800000000000000000000000000000000000000000008080
      80008080800080808000808080008080800080808000C0C0C000800000008000
      0000800000008000000080808000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000FF00
      000080000000FF000000FF0000000000000000000000FF000000800000000000
      0000000000000080800000FFFF000000000000000000FFFFFF00800000008000
      00008000000080000000808080000000000000000000FFFFFF00800000008000
      0000800000008000000080808000000000000000000000000000FFFFFF008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000808080000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FF00000000000000FF00
      000000000000FF000000FF0000000000000000000000FF000000FF0000000000
      00000000000000FFFF0000FFFF00000000000000000000000000FFFFFF008000
      0000800000008000000080000000808080000000000000000000FFFFFF008000
      0000800000008000000080000000808080000000000000000000FFFFFF008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF000000
      00000000000000000000FFFFFF000000000000000000FF000000000000000000
      00000000000000000000000000000000000000000000FF000000FF0000000000
      00000000000000FFFF0000FFFF0000000000000000000000000000000000FFFF
      FF0080000000800000008000000080000000808080000000000000000000FFFF
      FF00800000008000000080000000800000000000000000000000FFFFFF008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      FF00000080000000FF000000FF00000000000000000080000000FF0000000000
      00000000000000FFFF0000808000000000000000000000000000000000000000
      0000FFFFFF008000000080000000800000008000000080808000000000000000
      0000FFFFFF008000000080000000800000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000FFFFFF0000000000BFBFBF00000000000000
      0000FFFFFF0000000000FFFFFF0000000000000000000000FF00000000000000
      FF00000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF008000000080000000800000008000000080808000000000000000
      0000FFFFFF008000000080000000800000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00800000008000
      0000800000008080800000000000000000000000000000000000000000000000
      FF000000FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000FF00000000000000
      000000000000000000000000000000000000000000000000FF00000080000000
      0000000000000080000000FF000000000000000000000000000000000000FFFF
      FF0080000000800000008000000080000000808080000000000000000000FFFF
      FF00800000008000000080000000800000000000000000000000000000008080
      80008080800080808000808080008080800080808000C0C0C000800000008000
      000080000000800000008080800000000000000000000000FF000000FF000000
      FF000000FF000000FF0000000000FFFFFF000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      00000000000000FF000000FF0000000000000000000000000000FFFFFF008000
      0000800000008000000080000000808080000000000000000000FFFFFF008000
      0000800000008000000080000000808080000000000000000000FFFFFF008000
      0000800000008000000080000000800000008000000080000000800000008000
      000080000000800000008000000080808000000000000000FF000000FF000000
      FF000000FF000000FF000000FF0000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      00000000000000FF000000FF00000000000000000000FFFFFF00800000008000
      00008000000080000000808080000000000000000000FFFFFF00800000008000
      0000800000008000000080808000000000000000000000000000FFFFFF008000
      0000800000008000000080000000800000008000000080000000800000008000
      000080000000800000008000000080000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF0000000000BFBFBF00FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000080000000FF000000
      00000000000000FF00000080000000000000FFFFFF0080000000800000008000
      000080000000808080000000000000000000FFFFFF0080000000800000008000
      0000800000008080800000000000000000000000000000000000FFFFFF008000
      0000800000008000000080000000800000008000000080000000800000008000
      000080000000800000008000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF0000000000FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008000
      000080000000800000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00C0C0C000C0C0C000000000000000000080808000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00000080000000FF000000FF000000000000000080800000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF008080800080808000808080008080
      800080808000FFFFFF00C0C0C000000000008080800000000000808080000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FF00
      000080000000FF00000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800000000000FFFFFF00FF00000080000000000000000080800000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00C0C0C0000000000000000000000000000000
      00000000000080808000FFFFFF00000000000000000080808000000000008080
      8000000000008080800080808000808080000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080008000
      0000FF0000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000FFFFFF0000000000808080008000000000000000000000000080800000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      00000000000080808000FFFFFF00808080000000000000000000000000000000
      000080808000C0C0C000C0C0C000C0C0C0000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000080800000808000008080000080800000000000000000
      00000000000080808000808080000000000000000000000000000080800000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00C0C0C000000000000000000000000000000000000000
      00000000000080808000FFFFFF00C0C0C00080808000FFFFFF00C0C0C0000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000008080
      8000FFFFFF00FFFFFF0000000000C0C0C000FFFFFF00FFFF0000000000000000
      000000000000C0C0C00000000000000000000000000000000000000000008080
      800000000000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000808000008080
      0000000000008080800000000000000000000000000000000000000000000080
      800000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000008080800000000000000000000000
      000000000000FFFFFF00C0C0C000C0C0C00080808000FFFFFF00C0C0C0000000
      0000808080008080800080808000808080000000000000000000000000008080
      8000FFFFFF0080808000C0C0C000FFFF0000FFFF0000FFFF0000FFFFFF000000
      000000000000C0C0C00000000000000000000000000000000000808080000000
      0000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF00008080
      0000808000000000000000000000000000000000000000000000000000000080
      800000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FF
      FF0000FFFF00C0C0C00000000000000000000000000080808000FFFFFF00C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C00080808000FFFFFF00C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF0080808000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      000000000000C0C0C0000000000000000000000000000000000080808000FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000808000000000000000000000000000000000000000000000000000000000
      00000080800000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FF
      FF0000FFFF00000000000000000000000000000000000000000080808000C0C0
      C000FFFFFF00FFFFFF00FFFFFF00C0C0C00080808000FFFFFF00C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF0080808000FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFF
      FF0000000000C0C0C00000000000000000000000000080808000FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF00008080000000000000000000000000000000000000000000000000
      00000080800000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FF
      FF00C0C0C0000000000000000000000000000000000000000000000000000000
      0000808080008080800080808000C0C0C00080808000FFFFFF00C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF0080808000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00C0C0
      C00000000000C0C0C00000000000000000000000000080808000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF008080000000000000000000000000000000000000000000000000
      0000000000000080800000FFFF0000FFFF00000000000000000000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF0080808000FFFFFF00FFFF0000FFFFFF00C0C0C0000000
      0000FFFFFF00C0C0C00000000000000000000000000080808000FFFF0000FFFF
      FF00FFFFFF00FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF00008080000000000000000000000000000000000000000000000000
      0000000000000080800000FFFF0000FFFF00000000000000000000FFFF00C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF0080808000808080008080800080808000FFFF
      FF00FFFFFF00C0C0C0000000000000000000000000000000000080808000FFFF
      0000FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000080800000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000808080008080
      800080808000000000000000000080808000C0C0C000C0C0C000C0C0C0008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00808000000000000000000000000000000000000000000000000000000000
      000000000000000000000080800000FFFF0000FFFF0000FFFF00C0C0C0000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000808080008080800080808000C0C0C0000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C000FFFFFF008080800000000000000000000000000000000000000000008080
      8000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF008080
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000080800000FFFF0000FFFF00000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000808080000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      00008080800080808000FFFF0000FFFFFF00FFFF0000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000080800000FFFF00C0C0C000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF008080800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008080800080808000000000000000000000000000000000008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080000000000000000000808080008080800080808000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C0008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      0000808080000000000000000000000000000000000000000000808080008000
      000080000000808080000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0C0008080
      8000808080008080800000000000000000000000000080808000C0C0C0000000
      0000C0C0C00000000000C0C0C00000000000C0C0C00000000000C0C0C0000000
      0000C0C0C00000000000C0C0C000000000000000000000000000000000008000
      00008080800000000000FFFFFF00FFFFFF00FFFFFF0080808000800000008000
      00008080800000000000FFFFFF00FFFFFF000000000000000000808080008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000FFFFFF000000000000000000000000008080
      800000000000C0C0C000C0C0C00000800000C0C0C000C0C0C000C0C0C0008080
      800080808000808080000000000000000000000000008080800000FFFF000000
      000000FFFF000000000000FFFF000000000000FFFF000000000000FFFF000000
      000000FFFF000000000000FFFF00000000000000000000000000000000008000
      0000808080008080800000000000000000000000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000FFFFFF000000000000000000000000008080
      8000C0C0C000C0C0C00000800000008000000080000000800000C0C0C0008080
      8000808080008080800000000000000000000000000080808000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000008000
      0000800000008080800000000000FFFFFF008000000080000000800000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000808080008000000080000000800000000000000080808000808080008080
      8000808080008080800080000000FFFFFF000000000000000000000000008080
      8000C0C0C00000800000C0C0C00000800000C0C0C00000800000C0C0C0008080
      800080808000808080008080800000000000000000008080800000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000008000
      0000800000008000000080000000800000008000000080000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000800000008000000080000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000080808000C0C0
      C000C0C0C00000800000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008080
      8000808080008080800080808000000000000000000080808000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF0000000000000000000000000000FFFF000000000000000000000000000000
      0000800000008000000080000000800000008000000080000000808080000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000080808000800000008000000080000000FFFFFF000000
      000000000000000000000000000000000000000000000000000080808000C0C0
      C000008000000080000000800000C0C0C0000080000000800000C0C0C0008080
      800080808000808080008080800000000000000000008080800000FFFF00FFFF
      FF0000808000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000080808000800000008000000080808000000000000000
      0000000000000000000080000000000000000000000000000000000000000000
      000000000000000000000000000080808000800000008000000080000000FFFF
      FF0000000000000000000000000000000000000000000000000080808000C0C0
      C000C0C0C00000800000C0C0C000C0C0C0000080000000800000C0C0C0008080
      8000808080008080800080808000808080000000000080808000FFFFFF0000FF
      FF000080800000808000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000000000FFFFFF0000FFFF000000000000000000000000008080
      800080808000808080000000000080000000800000008080800000000000FFFF
      FF00FFFFFF000000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080000000800000008000
      0000FFFFFF00000000000000000000000000000000000000000080808000C0C0
      C000C0C0C000C0C0C0000080000000800000C0C0C000FFFFFF00FFFFFF00FFFF
      FF0080808000808080008080800080808000000000008080800000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000FFFF00FFFFFF000000000080808000800000008000
      0000800000008000000080808000800000008000000080000000000000000000
      0000808080008000000080808000000000000000000000000000000000000000
      000000000000000000000000000080808000800000008000000080000000FFFF
      FF00000000000000000000000000000000000000000080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFFFF0080808000C0C0C000C0C0
      C000FFFFFF00FFFFFF0080808000808080000000000080808000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000000000FFFFFF0000FFFF000000000080000000000000000000
      0000808080008000000080000000800000008000000080000000800000008000
      0000800000008000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000080808000800000008000000080000000FFFFFF000000
      0000000000000000000000000000000000000000000080808000C0C0C000C0C0
      C000C0C0C000FFFFFF00FFFFFF008080800080808000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000FFFFFF00FFFFFF00000000008080800000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      0000000000008080800080000000800000008000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000800000008000000080000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000080808000C0C0C000FFFF
      FF00FFFFFF0080808000000000008080800080808000C0C0C000C0C0C000C0C0
      C000FFFFFF00FFFFFF0080808000808080000000000080808000FFFFFF0000FF
      FF00FFFFFF0080808000FFFFFF0000FFFF00FFFFFF0080808000FFFFFF0000FF
      FF00FFFFFF0080808000FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000808080008000000080000000808080008080
      800000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000080808000800000008000000080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080000000FFFFFF000000000080808000FFFFFF008080
      800080808000808080000000000080808000C0C0C000C0C0C000FFFFFF00FFFF
      FF0080808000808080000000000000000000000000008080800000FFFF008080
      800000FFFF008080800000FFFF008080800000FFFF008080800000FFFF008080
      800000FFFF008080800000FFFF00808080000000000000000000000000000000
      0000000000000000000000000000800000008000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000FFFFFF00000000000000000080808000FFFF
      FF00FFFFFF00808080000000000080808000FFFFFF00FFFFFF00808080008080
      8000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      000000000000000000000000000080000000800000008080800000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000808080008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000FFFFFF000000000000000000000000008080
      800080808000FFFFFF0080808000FFFFFF008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF0000008000
      0000800000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000800000008000
      000080000000800000008000000000000000000000000000000080808000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C0000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000080000000800000008000
      000080000000800000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C0C0C000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00C0C0C000808080000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000808080008080800000FFFF00C0C0C000800000008000
      000080000000000000000000000000000000000000000000000080808000FFFF
      FF008000000080000000FFFFFF0080000000800000008000000080000000FFFF
      FF00C0C0C0000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000080808000000080000000800000008000000080000000
      0000000000000000000000000000000000000000000000000000000000008080
      800080808000FFFFFF0000FFFF00C0C0C00000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000C0C0C000FFFFFF0000FFFF00800000008000
      000000000000000000000000000080000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C0C0C0000000000000000000000000000000000000000000000000000000
      00000000000080808000000080000000FF000000800000008000000080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000C0C0C000FFFFFF0000FFFF00C0C0C00000FFFF00808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000FFFFFF0000FFFF00FFFFFF0000FFFF00C0C0
      C00000FFFF00000000008000000000000000000000000000000080808000FFFF
      FF008000000080000000FFFFFF0080000000800000008000000080000000FFFF
      FF00C0C0C0000000000000000000000000000000000000000000000000000000
      000080808000000080000000FF000000FF000000FF0000008000000080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800000FFFF00FFFFFF0000FFFF00C0C0C00000FFFF00C0C0
      C000000000008080800000000000000000000000000000000000000000000000
      00000000000080808000C0C0C00000FFFF00FFFFFF0000FFFF00C0C0C00000FF
      FF00C0C0C000808080000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C0C0C0000000000000000000000000000000000000000000000000000000
      0000000080000000FF000000FF000000FF000000FF0000008000000080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000C0C0C00000FFFF00FFFFFF0000FFFF00C0C0C00000FF
      FF00C0C0C0008080800000000000000000000000000000000000000000000000
      0000808080008080800000FFFF00FFFFFF0000FFFF00C0C0C00000FFFF00C0C0
      C00000000000808080000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00C0C0C0000000000000000000000000000000000000000000000000000000
      000000008000FFFFFF00FFFFFF000000FF00000080000000FF00000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000FFFFFF0000FFFF00FFFFFF0000FFFF00C0C0
      C00000FFFF000000000080000000000000000000000000000000000000000000
      000080808000C0C0C000FFFFFF0000FFFF00C0C0C00000FFFF00808080000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF000000000000000000FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      0000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000080000000FF000000FF0000008000FFFFFF000000FF000000FF000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000C0C0C000FFFFFF0000FFFF00800000008000
      0000000000000000000000000000800000000000000000000000000000008080
      800080808000FFFFFF0000FFFF00C0C0C00000FFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000FFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000008000000080000000800000008000FFFFFF000000FF000000
      0000000080000000800000008000000080000000000000000000000000000000
      00000000000000000000808080008080800000FFFF00C0C0C000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00C0C0C000808080000000000080808000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF000000000000FFFF000000000000FFFF0000000000FFFFFF000000
      0000FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008000000080000000
      80000000FF000000800000008000000080000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000080000000800000008000
      0000800000008000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000080000000
      FF000000FF000000FF0000008000000080000000000000000000000000000000
      000000000000000000000000000080000000FF000000FF000000800000008000
      0000800000008000000080000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000080000000
      FF000000FF000000FF0000008000000080000000000000000000000000000000
      00000000000000000000000000000000000080000000FF000000FF0000008000
      0000800000008000000080000000800000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000008000FFFF
      FF000000FF000000800000008000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FF000000FF00
      0000800000008000000080000000800000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000080000000800080808000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080000000FF00
      0000FF0000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000800000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00808080000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800080808000000000008080800000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000800000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008080
      8000808080000000000000000000000000000000000000000000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008080800000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C000FFFFFF000000000000000000000000000000000000000000000000000000
      0000C0C0C0000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000800000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0
      C0008080800000000000000000000000000000000000000000000080800000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000000000000000008080800000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF0080808000C0C0C00080808000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000800000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00080808000808080008080
      800080808000000000000000000000000000000000000000000000808000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF0000000000000000008080800000000000FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00C0C0
      C000FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF0080808000C0C0C00080808000FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000800000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0
      C0008080800000000000000000000000000000000000000000000080800000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000000000000000008080800000000000FFFF
      FF000000000000000000000000000000000080808000FFFFFF00FFFFFF00C0C0
      C000FFFFFF000000000000000000000000000000000000000000000000000000
      0000C0C0C000FFFFFF0080808000C0C0C00080808000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000800000000000C0C0
      C000C0C0C000C0C0C000C0C0C000808080008080800080808000808080008080
      800080808000000000000000000000000000000000000000000000808000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF0000000000000000008080800000000000FFFF
      FF000000000000000000FFFFFF00808080000000000000000000FFFFFF00C0C0
      C000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000FFFFFF0080808000C0C0C00000000000000000000000
      000000000000000000000000000000000000000000000000800000000000FFFF
      FF00FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C0008080800000000000000000000000000000000000000000000080800000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000000000000000008080800000000000FFFF
      FF0000000000FFFFFF00FFFFFF00C0C0C0000000000000000000000000008080
      8000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00C0C0C000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000800000000000C0C0
      C000C0C0C000C0C0C000C0C0C000000080000000800000008000000080000000
      800000008000000080000000800000008000000000000000000000808000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF0000000000000000008080800000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C0008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000008080800000000000000000000000
      000000000000000000000000000000000000000000000000800000000000FFFF
      FF00FFFFFF00C0C0C00000008000000080000000800000008000000080000000
      80000000800000008000000080000000800000000000000000000080800000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF008080800000FFFF00FFFFFF0000000000000000008080800000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000000000000000000000FF
      FF00808080000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000080808000000000000000
      000000000000000000000000000000000000000000000000800000000000C0C0
      C000C0C0C0000000800000008000000080000000800000008000000080000000
      800000008000000080000000800000008000000000000000000000808000FFFF
      FF0000FFFF00FFFFFF0000FFFF00C0C0C00000FFFF0080808000C0C0C0008080
      8000C0C0C0008080800000FFFF00000000000000000080808000000000000000
      000000000000000000000000000000000000000000008080800080808000FFFF
      FF0000FFFF00C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000808080000000
      000000000000000000000000000000000000000000000000800000000000C0C0
      C000000080000000800000008000000080000000800000008000000080000000
      80000000800000008000000080000000000000000000000000000080800000FF
      FF00FFFFFF0000FFFF00FFFFFF0000000000C0C0C00000FFFF00FFFFFF0000FF
      FF008080800000FFFF00FFFFFF00000000000000000080808000808080008080
      800080808000808080008080800080808000808080008080800080808000C0C0
      C000FFFFFF0000FFFF00C0C0C000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000008080
      8000000000000000000000000000000000000000000000008000000000000000
      8000000080000000800000008000000080000000800000008000000080000000
      800000008000000080000000000000000000000000000000000000808000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000008080800080808000FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      800000FFFF00FFFFFF0000FFFF00C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000808080000000000000000000808080000000000000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      80000000800000000000000000000000000000000000000000000080800000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF0080808000FF000000FF0000008080
      8000FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000C0C0C00000FFFF0080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000008080800080808000C0C0C0000000000000000000000080008080
      8000FFFFFF0080808000FFFFFF0080808000FFFFFF0080808000FFFFFF008080
      8000FFFFFF000000000000000000000000000000000000000000008080000080
      800000808000008080000080800000808000FF000000FF000000FFFFFF00FF00
      0000008080000080800000808000008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800080808000FFFFFF0080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000C0C0C000FFFFFF00808080000000000000000000000000008080
      8000C0C0C00080808000C0C0C00080808000C0C0C00080808000C0C0C0008080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000C0C0C000FFFFFF0080808000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080000000FF000000FF000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0080808000C0C0C000808080000000000000000000000000000000
      0000000000000000000080808000FFFFFF000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000008000000080000000800000008000000080000000
      8000000000000000000080808000808080000000000000000000000000000000
      0000000000000000000080808000000000008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C00000000000000000000000000000000000000000000000
      00000000800000008000000080000000FF000000FF000000FF000000FF000000
      8000000080000000800000000000808080000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C000000000000000000000000000000000000000FF000000
      800000008000000080000000FF00000000000000000000000000000000000000
      FF00000080000000800000008000000000000000000080808000FFFFFF008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C000000000000000000000000000000000000000FF000000
      8000000080000000FF0000000000000000000000000000000000000080000000
      80000000FF000000800000008000000000000000000080808000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00808080000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C0000000000000000000000000000000FF00000080000000
      8000000000000000000000000000000000000000000000008000000080000000
      FF00000080000000FF0000008000000080000000000080808000FFFFFF008080
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF00808080000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C0000000000000000000000000000000FF00000080000000
      00008080800000000000000000000000000000008000000080000000FF000000
      800000008000000000000000FF00000080000000000080808000FFFFFF008080
      0000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFFFF00808080000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C0000000000000000000000000000000FF00000080000000
      000080808000000000000000000000008000000080000000FF00000080000000
      800000000000000000000000FF00000080000000000080808000FFFFFF008080
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF00808080000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C0000000000000000000000000000000FF00000080000000
      0000808080000000000000008000000080000000FF0000008000000080000000
      000000000000000000000000FF00000080000000000080808000FFFFFF008080
      0000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFFFF00808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF008080800080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000FF00000080000000
      00008080800000008000000080000000FF000000800000008000000000000000
      000000000000000000000000FF00000080000000000080808000FFFFFF008080
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF00808080000000000000000000000000000000
      000080808000000000000000000000000000FFFFFF0000000000808080000000
      0000000000000000000000000000000000000000000000000000000000008080
      800000FFFF0080808000FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00C0C0
      C000FFFFFF00808080000000000000000000000000000000FF00000080000000
      800000000000000080000000FF00000080000000800000000000000000000000
      0000000000000000FF0000008000000080000000000080808000FFFFFF008080
      0000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFFFF00808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0080808000FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C0008080800000000000000000000000000000000000000000000000FF000000
      8000000080000000FF0000008000000080000000000000000000000000000000
      00000000FF000000800000008000000000000000000080808000FFFFFF008080
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF00808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      80008080800000FFFF00FFFFFF00FFFFFF008080800080808000808080008080
      80000000000000000000000000000000000000000000000000000000FF000000
      8000000080000000800000000000808080008080800080808000808080000000
      0000000080000000800000008000000000000000000080808000FFFFFF008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080000000000000808080000000000000000000000000000000
      000080808000FFFFFF000000000000000000000000000000000080808000FFFF
      FF00000000000000000000000000000000000000000000000000000000008080
      800000FFFF008080800000FFFF0080808000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000080000000800000008000000000000000000000000000000000000000
      8000000080000000800000000000000000000000000080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF000000000080808000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF0000008000000080000000800000008000000080000000
      80000000FF000000FF0000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000080808000FFFFFF00000000000000000080808000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000FFFFFF00FFFFFF00C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000FFFFFF00FFFFFF00C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000080000000800000000000000080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00000080000000FF000000800000000000000080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C0000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000FFFFFF00FFFFFF00C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000FFFFFF00FFFFFF00C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      000080000000FF0000008000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008000
      0000FF000000800000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C0C0C000000000000000000000000000000000000000
      0000000000000000000000808000FFFFFF0000FFFF00C0C0C00000FFFF00FFFF
      FF00008080000000000000000000000000000000000000000000000000000000
      00000000000000000000000080000000FF00000080000000FF00000080000000
      FF00000080000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000FFFFFF00C0C0
      C000800000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF008000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000080800000FFFF00C0C0C00000FFFF00C0C0C00000FF
      FF00008080000000000000000000000000000000000000000000000000000000
      0000000000000000000000008000000080000000FF00000080000000FF000000
      8000000080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C0008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF008000000080000000FFFFFF00FFFF
      FF00FFFFFF00C0C0C00000000000000000000000000000000000000000000000
      0000000000000080800000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0
      C00000FFFF000080800000000000000000000000000000000000000000000000
      00000000000000008000000080000000FF00000080000000FF00000080000000
      FF00000080000000800000000000000000000000000000000000000000000000
      0000C0C0C000FFFF0000FFFFFF00FFFF0000FFFF000080800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF00FFFFFF00FFFFFF008000000080000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000808000C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FF
      FF00C0C0C0000080800000000000000000000000000000000000000000000000
      000000000000000080000000FF00000080000000FF00000080000000FF000000
      80000000FF00000080000000000000000000000000000000000080808000C0C0
      C000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00808000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF00FFFFFF00FFFFFF008000000080000000FFFFFF00FFFF
      FF00C0C0C0000000000000000000000000000000000000000000000000000000
      000000808000C0C0C00000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00C0C0
      C00000FFFF00C0C0C00000808000000000000000000000000000000000000000
      0000000080000000FF000000FF000000FF000000FF000000FF00000080000000
      FF00000080000000FF000000800000000000000000000000000080808000FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF00000000
      0000808080000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF008000000080000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000808000FFFFFF0000FFFF00FFFFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00C0C0C00000FFFF0000808000000000000000000000000000000000000000
      0000000080000000FF000000FF000000FF000000FF000000FF000000FF000000
      80000000FF00000080000000800000000000000000000000000080808000FFFF
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF00000000
      0000808080000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF008000000080000000FFFFFF00C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      00000080800000FFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF0000FFFF0000FF
      FF0000FFFF00C0C0C00000808000000000000000000000000000000000000000
      0000000080000000FF00FFFFFF000000FF000000FF000000FF000000FF000000
      FF00000080000000FF000000800000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF00000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000808000FFFFFF00FFFFFF00FFFFFF0000FFFF0000FFFF00FFFFFF0000FF
      FF00C0C0C00000FFFF0000808000000000000000000000000000000000000000
      0000000080000000FF00FFFFFF000000FF000000FF000000FF000000FF000000
      FF000000FF00000080000000800000000000000000000000000080808000FFFF
      0000FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000FFFFFF00FFFFFF00FFFFFF00C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000080800000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00C0C0C00000808000000000000000000000000000000000000000
      0000000080000000FF00FFFFFF00FFFFFF000000FF000000FF000000FF000000
      FF00000080000000FF0000008000000000000000000000000000000000008080
      8000FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFFFF00808000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000FFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00C0C0C0000080800000000000000000000000000000000000000000000000
      000000000000000080000000FF00FFFFFF00FFFFFF000000FF000000FF000000
      FF000000FF000000800000000000000000000000000000000000000000000000
      000080808000FFFF0000FFFFFF00FFFF0000FFFFFF0080800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808000FFFFFF00C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000808000C0C0C000FFFFFF00FFFFFF0000FFFF00C0C0
      C000008080000000000000000000000000000000000000000000000000000000
      00000000000000000000000080000000FF000000FF000000FF000000FF000000
      FF00000080000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008080000080800000808000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000080000000800000008000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000FFFFFF00FFFFFF00C0C0C000C0C0
      C0000000000000000000000000000000000000000000FFFFFF00800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000FFFFFF000000000000000000000000000000
      0000000000000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0080000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C00080000000C0C0C000C0C0C0008000
      0000C0C0C000C0C0C00080000000FFFFFF000000000000000000000000000000
      0000000000000000800080808000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      80000000000000FFFF0000808000000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000FFFFFF00FFFFFF00C0C0C000C0C0
      C0000000000000000000000000000000000000000000FFFFFF0080000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF008000
      0000FFFFFF00FFFFFF0080000000FFFFFF000000000000000000000000000000
      0000000000000000800000008000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      000000FFFF000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0080000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C00080000000C0C0C000C0C0C0008000
      0000C0C0C000C0C0C00080000000FFFFFF000000000000000000000000000000
      8000000080000000800000008000000080000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000008080000000000000FF
      FF000000000000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000080808000FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFF
      FF008080800000000000000000000000000000000000FFFFFF0080000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF008000
      0000FFFFFF00FFFFFF0080000000FFFFFF000000000080808000808080000000
      0000000000000000800000008000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000808000008080000000000000FFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
      FF008080800000000000000000000000000000000000FFFFFF0080000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C00080000000C0C0C000C0C0C0008000
      0000C0C0C000C0C0C00080000000FFFFFF000000000000008000000000000000
      0000000000000000800080808000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000080
      8000008080000080800000808000000000000000000000FFFF000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
      C000FFFFFF0080808000000000000000000000000000FFFFFF0080000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF008000
      0000FFFFFF00FFFFFF0080000000FFFFFF000000000000008000000000000000
      0000000000000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000808000C0C0
      C00000FFFF00C0C0C00000FFFF000080800000FFFF000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
      FF00C0C0C00080808000000000000000000000000000FFFFFF00800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000FFFFFF000000000000008000000000000000
      0000000000000000000080808000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000C0C0C00000FF
      FF0000FFFF000080800000FFFF00C0C0C0000080800000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C000FFFFFF00C0C0C000808080000000000000000000FFFFFF00FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FFFFFF000000000080808000808080000000
      0000000000000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000FFFF0000FF
      FF000080800000FFFF000080800000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C0C0C000FFFFFF00808080000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000080000000
      0000000000000000000080808000FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000080808000808080000080
      8000000000000080800000FFFF000080800000FFFF00C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C000808080000000000000000000FFFFFF00800000008000
      0000800000008000000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      8000000000000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000C0C0C0000000
      0000C0C0C000000000000080800000FFFF000080800000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C0C0C000FFFFFF00808080000000000000000000FFFFFF00FF000000FF00
      0000FF000000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF008000
      0000800000008000000080000000FFFFFF000000000000000000000000000000
      0000000000000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF0080808000000000000000000000FFFF008080
      8000000000000080800000FFFF000080800000FFFF00C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C000808080000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00
      0000FF000000FF000000FF000000FFFFFF000000000000000000000000000000
      0000000000000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000808080000000000000000000000000000000000000FF
      FF0000FFFF008080800000FFFF0000FFFF00C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C0C0C00080808000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000800000008000000000000000C0C0C0008000000080000000C0C0C000C0C0
      C000C0C0C0000000000080000000800000000000000000000000000000000000
      000000000000000000000000000000000000000000008080800000000000FFFF
      FF00000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080800000808000008080000080000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000008000000000000000C0C0C0008000000080000000C0C0C000C0C0
      C000C0C0C0000000000080000000800000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000808000008080000080000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000008000000080000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C0008000000080000000800000000000000000000000000000000000
      00000000000000000000000000008080800080808000FFFFFF00808080000000
      000080808000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFF00008080000080800000000000000000
      0000000000000000000000000000000000000000000080000000800000000000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000000000000000000000000
      000000000000000000000000000080808000FFFFFF00FFFFFF00000000008080
      800000000000FFFFFF00FFFFFF00808080000000000000000000000000000000
      000000000000000000000000000080808000FFFFFF00C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080000000
      0000000000000000000000000000000000000000000080000000800000000000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000000000000000000000000000000000
      00000000000000000000000000008080800080808000FFFFFF00808080000000
      000080808000FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000080808000FFFFFF00C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000008000000080800000808080000000
      0000000000000000000000000000000000000000000080000000800000000000
      00008000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000800000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000000000000000000000000000000000000000
      000000000000000000000000000080808000FFFFFF00C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080800000808000008080000080000000808080000000
      0000000000000000000000000000000000000000000080000000800000000000
      00008000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000800000000000000000000000000000000000
      000000000000000000000000000000000000808080008080800000000000FFFF
      FF00000000008080800000000000000000000000000000000000000000000000
      000000000000000000000000000080808000FFFFFF00C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000808000008080000080000000808080008080
      8000000000000000000000000000000000000000000080000000800000000000
      00008000000000000000FFFFFF00808080008080800080808000808080008080
      800080808000FFFFFF0000000000800000000000000000000000000000008080
      800000000000FFFFFF0000000000808080000000000000000000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      000000000000000000000000000080808000FFFFFF00C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000808000008080000080800000800000008080
      8000808080000000000000000000000000000000000080000000800000000000
      00008000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000080000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFF00008080000080800000808000008000
      0000808080008080800000000000000000000000000080000000000000000000
      0000C0C0C00000000000FFFFFF00808080008080800080808000808080008080
      800080808000FFFFFF000000000000000000000000008080800080808000FFFF
      FF00808080000000000080808000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000808080008080800000000000FFFF000080800000808000008080
      0000800000008080800080808000000000000000000080000000000000000000
      00008000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000800000000000000080808000FFFFFF00FFFF
      FF00000000008080800000000000FFFFFF00FFFFFF0080808000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000000000000000000080808000C0C0C000C0C0C000C0C0C000808080000000
      0000000000000000000000000000C0C0C0000000000000000000000000000000
      00008000000080000000808080008080800000000000FFFF0000808000008080
      0000808000008000000080808000000000000000000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008080800080808000FFFF
      FF00808080000000000080808000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000FFFFFF00C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008080
      80008080800080808000C0C0C000000000000000000000000000000000008080
      0000808000008080000080000000808080008080800080808000FFFF00008080
      000080800000800000008080800000000000000000008000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000080000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000000000000000
      0000000000000000000000000000000000000000000080808000FFFFFF00C0C0
      C000C0C0C000FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0008080800000000000000000000000000000000000FFFF
      0000808000008080000080800000800000008000000080000000808000008080
      00008080000080000000808080000000000000000000C0C0C00000000000FFFF
      FF00808080008080800080808000808080008080800080808000FFFFFF000000
      0000000000000000000000000000000000000000000000000000808080008080
      800000000000FFFFFF0000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000FFFFFF00FFFF
      FF008080800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00808080008080800000000000000000000000000000000000000000000000
      0000FFFF00008080000080800000808000008080000080800000808000008080
      000080800000808000000000000000000000000000008000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000000000000000000080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000808000008080000080800000808000008080
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000808000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      000000000000FFFFFF00FFFFFF000000000000000000FFFFFF0000000000C0C0
      C000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008080000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF000000000000000000FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF000000000000000000C0C0
      C000808080000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C0008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000080800000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C00000000000C0C0
      C000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C0008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000808000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000C0C0C0000000000000000000C0C0
      C000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000FFFFFF00C0C0C00080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      00000000000000808000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000C0C0
      C000C0C0C000FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0C000808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000808000FFFFFF0000FFFF0000000000008080000080
      8000008080000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808000808080008080800000000000C0C0
      C000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000FF0000008000000080000000000000000000
      000000000000000000000000000000000000000000008080800080808000FFFF
      FF00FFFFFF00C0C0C000C0C0C0000000000080808000C0C0C000C0C0C0008080
      8000808080008080800080808000808080000000000000000000000000000000
      000000000000000000000080800000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808000808080008080800000000000C0C0
      C000808080008080800080808000000000000000000000000000000000000000
      00000000000000000000FF00000080000000FF00000080000000000000000000
      000000000000000000000000000000000000000000008080800080808000FFFF
      FF00C0C0C0008080800000000000FFFFFF000000000080808000C0C0C000C0C0
      C000C0C0C0008080800080808000808080000000000000000000000000000080
      80000000000000000000000000000000000000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008080800000000000C0C0
      C000000000008080800080808000000000000000000000000000000000000000
      0000000000008080800080000000FF0000008000000000000000000000000000
      0000000000000000000000000000000000000000000080808000FFFFFF008080
      8000FFFFFF00C0C0C0008080800000000000FFFFFF000000000080808000C0C0
      C000C0C0C000C0C0C000C0C0C000808080000000000000000000000000000080
      8000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF00000000008080800000000000C0C0
      C000808080008080800080808000000000000000000000000000000000000000
      00000000000000000000FFFFFF00800000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000FFFFFF00C0C0
      C00080808000FFFFFF00C0C0C000808080000000000080808000C0C0C000C0C0
      C000C0C0C00000000000C0C0C000C0C0C0000000000000000000000000000000
      000000808000FFFFFF0000FFFF00FFFFFF0000FFFF0000000000008080000080
      80000080800000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF0000000000808080008080800000000000C0C0
      C00080808000808080008080800000000000000000000000000000000000FFFF
      FF00FFFF00008080000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00C0C0C0008080800080808000FFFFFF00C0C0C000C0C0C000C0C0C000FFFF
      FF00FFFFFF0000000000C0C0C000808080000000000000000000000000000000
      00000080800000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      00000000FF000000FF000000000080808000808080008080800000000000C0C0
      C000808080008080800080808000000000008080800000000000FFFF0000FFFF
      0000FFFF0000FFFFFF0080800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00C0C0C000C0C0C0008080800080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000080800000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF00000000000000000080808000808080008080800000000000C0C0
      C0008080800080808000808080000000000080808000FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000808000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000808080000000
      0000C0C0C00080808000808080000000000080808000FFFF0000FFFFFF00FFFF
      FF00FFFFFF00FFFF0000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000808080008080800080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000808000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000808080008080
      800000000000C0C0C000808080000000000080808000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF0080808000808080000000000000000000000000000000
      0000000000000000000000808000008080000080800000808000008080000080
      8000008080000080800000808000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000808080008080
      80008080800000000000C0C0C000000000000000000080808000FFFFFF00FFFF
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008000000080000000800000008000000080000000
      0000000000000000000000000000000000000000000080808000800000000000
      0000000000008000000080808000000000000000000000000000000000008080
      8000800000000000000000000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008000000080000000800000008000000080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000008000000080000000FF000000FF000000FF000000FF000000FF000000
      8000000080000000000000000000000000000000000080808000800000000000
      0000000000000000000080000000000000000000000000000000000000008000
      0000000000000000000000000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000008000000080000000FF000000FF000000FF000000FF000000FF000000
      8000000080000000000000000000000000000000000000000000000000000000
      80000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000800000000000000000000000000080808000800000000000
      0000000000000000000080000000000000000000000000000000000000008000
      0000000000000000000000000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      80000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000800000000000000000000000000000000000000080000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000008000000000000000000000000000808080008000
      0000000000000000000080000000808080000000000000000000808080008000
      0000000000000000000080000000808080000000000080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000080000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000008000000000000000000000000000000080000000
      FF000000FF00FFFFFF00FFFFFF000000FF000000FF000000FF00FFFFFF00FFFF
      FF000000FF000000FF0000008000000000000000000000000000000000008080
      8000800000008000000080000000800000008080800080808000800000008000
      0000800000008000000080808000000000000000000080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C0000000000000000000000080000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF00000080000000000000000000000080000000FF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF00000080000000000000000000000000000000
      0000000000008000000080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF00000000000000FF00000000000000FF0000000000
      0000FF000000FFFFFF00FFFFFF00C0C0C00000000000000080000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000800000000000000080000000FF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000FF000000FF00000080000000000000000000000000000000
      000000000000000000008000000080808000FFFFFF00FFFFFF00808080008000
      0000000000000000000000000000000000000000000080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000000080000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000FF000000FF000000800000000000000080000000FF000000
      FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF000000FF00000080000000000000000000000000000000
      0000000000000000000080808000FFFFFF000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FF00000000000000FF00000000000000FF00
      000000000000FFFFFF00FFFFFF00C0C0C00000000000000080000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000FF000000FF000000800000000000000080000000FF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000FF000000FF00000080000000000000000000000000000000
      00000000000080808000FFFFFF00C0C0C000C0C0C000FFFFFF0000000000C0C0
      C000000000000000000000000000000000000000000080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000000080000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000FF000000FF000000800000000000000080000000FF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF00000080000000000000000000000000000000
      000080808000FFFFFF00C0C0C000C0C0C0000000000080808000FFFFFF00C0C0
      C000C0C0C0000000000000000000000000000000000080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000800000008000C0C0C00000000000000080000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000080000000000000000000000080000000
      FF000000FF00FFFFFF00FFFFFF000000FF000000FF000000FF00FFFFFF00FFFF
      FF000000FF000000FF0000008000000000000000000000000000000000008080
      8000FFFFFF00C0C0C000C0C0C00000000000000000000000000080808000FFFF
      FF00C0C0C000C0C0C00000000000000000000000000080808000FFFFFF00FF00
      000000000000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000800000008000C0C0C0000000000000000000000080000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000008000000000000000000000000000000080000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000800000000000000000000000000080808000FFFF
      FF00C0C0C000C0C0C00000000000000000000000000000000000000000008080
      8000FFFFFF00C0C0C000C0C0C000000000000000000080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C0000000000000000000000080000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000008000000000000000000000000000000000000000
      80000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000800000000000000000000000000080808000FFFFFF00C0C0
      C000C0C0C0000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF00C0C0C000C0C0C0000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      80000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000800000000000000000000000000000000000000000000000
      000000008000000080000000FF000000FF000000FF000000FF000000FF000000
      8000000080000000000000000000000000000000000080808000FFFFFF00C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000008000000080000000FF000000FF000000FF000000FF000000FF000000
      8000000080000000000000000000000000000000000000000000000000000000
      0000000000000000000000008000000080000000800000008000000080000000
      0000000000000000000000000000000000000000000080808000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008000000080000000800000008000000080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000800000000000000000800000008000000080
      0000000000000000800000008000000080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000008080800080808000000000000000000000000000000000000000
      00000000000080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000000000008000000080000000800000000000000000800000008000000080
      0000000000000000800000008000000080000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000008000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000080808000808080000000000000000000000000000000
      00000000000080808000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF00C0C0C00000000000000000000000000000000000000000000000
      0000000000008000000080000000800000000000000000800000008000000080
      0000000000000000800000008000000080000000000000000000000000000000
      000000000000000000000000000000000000800000008000000080000000FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000008000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      8000FFFFFF00FFFFFF0000000000808080000000000000000000000000008080
      8000C0C0C0008080800000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00C0C0C00000000000000000000000000000000000000000000000
      0000000000008000000080000000800000000000000000800000008000000080
      0000000000000000800000008000000080000000000000000000000000000000
      000000000000000000000000000080000000800000008000000080000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000008080
      8000FFFFFF0080808000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF00C0C0C00000000000000000000000000000000000000000000000
      0000000000008000000080000000800000000000000000800000008000000080
      0000000000000000800000008000000080000000000000000000000000000000
      00000000000000000000800000008000000080000000FFFFFF00800000008000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000008000FFFFFF00000000000000000080808000C0C0C0008080
      8000FFFFFF008080800000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00C0C0C00000000000000000000000000000000000000000000000
      0000000000008000000080000000800000000000000000800000008000000080
      0000000000000000800000008000000080000000000000000000FFFFFF00FFFF
      FF00FFFFFF00800000008000000080000000FFFFFF0000000000000000008000
      000080000000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000FFFFFF008080
      8000FFFFFF0080808000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF00C0C0C00000000000000000000000000000000000000000000000
      0000000000008000000080000000800000000000000000000000000000000000
      0000000000000000800000008000000080000000000000000000FFFFFF008080
      8000808080008080800080000000FFFFFF00FFFFFF0000000000000000000000
      000080000000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000FFFFFF00FFFFFF00FFFFFF000000000080808000FFFFFF008080
      8000FFFFFF008080800000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00C0C0C00000000000000000000000000000000000000000000000
      0000000000008000000080000000800000000000000000000000000000000000
      0000000000000000800000008000000080000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000000080000000FFFFFF000000000000000000FFFFFF0000008000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF0000008000FFFFFF000000000080808000FFFFFF008080
      8000FFFFFF0080808000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000800000000000000000000000000000000000
      0000000000000000800000008000000080000000000000000000FFFFFF008080
      800080808000808080008080800080808000FFFFFF0000000000000000000000
      0000000000000000000080000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000FFFFFF008080
      8000FFFFFF008080800000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00C0C0
      C000FFFFFF008080800000000000000000000000000000000000000000000000
      0000000000008000000080000000800000000000000000000000000000000000
      0000000000000000800000008000000080000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000000000008000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000FFFFFF008080
      8000FFFFFF0080808000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000800000008000000080000000000000000000FFFFFF008080
      800080808000C0C0C000C0C0C000C0C0C000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000FFFFFF00FFFF
      FF00FFFFFF0000008000FFFFFF00000000000000000080808000FFFFFF008080
      8000FFFFFF008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000800000008000000080000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000080808000FFFFFF008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000800000008000000080000000000000000000FFFFFF008080
      800080808000C0C0C00000000000C0C0C0000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000008000FFFFFF00FFFFFF0000000000C0C0C000FFFFFF000000
      8000FFFFFF00FFFFFF0000000000000000000000000080808000FFFFFF008080
      8000808080008080800080808000808080008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C0008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000808080000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF00808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000FFFFFF000000000000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000080000000000080808000000000000000000000000000000000000000
      0000808080008080800000000000000000000000000000000000000000000000
      0000808080008080800000FFFF0000FFFF00C0C0C000C0C0C000C0C0C0000000
      00000000000000000000000000000000000080808000FFFFFF0080808000FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF0080808000FFFFFF000000000080808000808080000000
      0000C0C0C00080808000000000000000000080808000C0C0C000000000008080
      8000808080000000000000000000000000000000000000000000000000000000
      FF00000080000000000080808000808080000000000000000000000000000000
      0000000000008080800080808000000000000000000000000000000000008080
      800000FFFF00FFFFFF00FFFF000000FFFF00C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C00000000000000000000000000080808000FFFFFF0080808000FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF0080808000FFFFFF000000000080808000000000000000
      0000C0C0C00000000000C0C0C0008080800000000000C0C0C000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      FF000000800000008000000000008080800080808000000000000000FF000000
      80000000800000000000808080000000000000000000000000008080800000FF
      FF0000FF000000FF0000FFFF0000FFFF0000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000000000000000000080808000FFFFFF00808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000FFFFFF000000000080808000808080000000
      0000C0C0C00000000000FFFFFF00C0C0C00000000000C0C0C000000000000000
      0000808080000000000000000000808080000000000000000000000000000000
      00000000FF00000080000000800000000000808080000000FF00000080000000
      80000000800000000000000000000000000000000000808080008080800000FF
      FF00FFFFFF0000FF000000FF0000FFFF0000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000000000000000000080808000FFFFFF0080808000FFFF
      FF00FFFFFF0080808000000080000000800080808000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF0080808000FFFFFF000000000080808000000000000000
      0000C0C0C000C0C0C0000000000000000000C0C0C000C0C0C000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      00000000FF000000800000008000000080000000FF0000008000000080000000
      800000000000000000000000000000000000000000008080800000FFFF0000FF
      FF0000FFFF0000FFFF0000FF0000C0C0C000FFFFFF00FFFFFF00C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C0000000000080808000FFFFFF0080808000FFFF
      FF00FFFFFF0080808000000080000000800080808000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF0080808000FFFFFF000000000080808000808080000000
      00000000000080808000C0C0C000C0C0C0008080800000000000000000000000
      0000808080000000000000000000808080000000000000000000000000000000
      0000000000000000FF0000008000000080000000800000008000000080000000
      0000000000000000000000000000000000000000000080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000808080000000000080808000FFFFFF00C0C0
      C000C0C0C000C0C0C000C0C0C0000000000080808000FFFFFF00808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000FFFFFF000000000080808000000000008080
      80000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000808080000000
      0000000000008080800000000000000000000000000000000000000000000000
      000000000000000000000000FF00000080000000800000008000000000008080
      8000808080000000000000000000000000000000000080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000FFFFFF00C0C0
      C000C0C0C000C0C0C000C0C0C0000000000080808000FFFFFF0080808000FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF0080808000FFFFFF000000000000000000000000000000
      0000000000000000000000000000C0C0C000C0C0C000FFFFFF00000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      000000000000000000000000FF00000080000000800000008000000080000000
      0000808080000000000000000000000000000000000080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000808080000000000080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C0000000000080808000FFFFFF0080808000FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF0080808000FFFFFF0000000000FFFFFF00C0C0C000C0C0
      C000C0C0C000C0C0C0008080800000000000000000000000000080808000C0C0
      C000C0C0C000C0C0C00080808000000000000000000000000000000000000000
      0000000000000000FF0000008000000080000000000000008000000080000000
      0000808080008080800000000000000000000000000080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFF000000FF
      FF0000FFFF0000FFFF0000FFFF000000000080808000FFFFFF00808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000FFFFFF0000000000FFFFFF00C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00080808000808080000000000000000000000000000000
      0000000000000000FF000000800000000000000000000000FF00000080000000
      800000000000808080008080800000000000000000000000000080808000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000FF0000FFFF
      000000FFFF0000FFFF00000000000000000080808000FFFFFF0080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00808080008080800080808000FFFFFF00FFFF
      FF000000000080808000C0C0C000808080000000000000000000000000000000
      00000000FF0000008000000000000000000000000000000000000000FF000000
      800000008000000000008080800080808000000000000000000080808000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000FF0000FFFF
      0000FFFF000000FFFF00000000000000000080808000FFFFFF0080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000FFFFFF000000000000000000000000000000
      0000FFFFFF008080800000000000FFFFFF00C0C0C000C0C0C000808080000000
      0000FFFFFF008080800000000000000000000000000000000000000000000000
      00000000FF000000800000000000000000000000000000000000000000000000
      FF00000080000000800000000000808080000000000000000000000000008080
      8000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000FFFF0000FF
      0000FFFF000000000000000000000000000080808000FFFFFF00808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      00000000FF000000800000000000000000000000000000000000000000000000
      00008080800080808000C0C0C000C0C0C000C0C0C000C0C0C00000FFFF000000
      00000000000000000000000000000000000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000080808000808080008080800080808000808080000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C0000000
      00000000000080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00C0C0C0000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00C0C0C0000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C0000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000080808000C0C0C0000000
      00000000000080808000FFFFFF00808080008080800080808000808080008080
      80008080800080808000FFFFFF00C0C0C0000000000000000000000000008080
      800000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00808080000000000000000000000000000000000000000000000000008080
      800000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080808000000000000000000000000000000000000000000080808000C0C0
      C000C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C0000000000000000000FFFFFF00C0C0C0000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000800000008000000080000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C0C0C000000000000000000080808000C0C0C0000000
      00000000000080808000FFFFFF00808080008080800080808000808080008080
      80008080800080808000FFFFFF00C0C0C0000000000080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C0C0C0000000000000000000FFFFFF00C0C0C0000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000080808000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00C0C0C0000000000000000000FFFFFF00808080008080
      8000808080008080800080808000FFFFFF0000008000FFFFFF00C0C0C0000000
      800000008000C0C0C000FFFFFF00C0C0C00000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C0C0C0000000000000000000FFFFFF00C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000FFFFFF0000008000FFFFFF0000008000FFFF
      FF00FFFFFF0000008000FFFFFF00C0C0C00000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008000000080000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00800000008000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000080808000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00C0C0C0000000000000000000FFFFFF00C0C0C0000000
      00000000000080808000FFFFFF00FFFFFF0000008000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000008000FFFFFF00C0C0C00000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008000000080000000FFFFFF00FFFFFF00800000008000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C0C0C0000000000000000000FFFFFF00C0C0C0000000
      00000000000080808000FFFFFF00FFFFFF0000008000FFFFFF00000080000000
      800000008000C0C0C000FFFFFF00C0C0C0000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008000000080000000FFFFFF00FFFFFF00800000008000
      0000FFFFFF00FFFFFF00FFFFFF00808080000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080808000000000000000000080808000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00C0C0C0000000000000000000FFFFFF00808080008080
      80008080800080808000808080000000800000008000FFFFFF0000008000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000800000008000000080000000FFFF
      FF00FFFFFF00FFFFFF008080800000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008080800000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C0C0C0000000000000000000FFFFFF00C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000FFFFFF0000008000FFFFFF00000080000000
      80000000800000008000FFFFFF00C0C0C0000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00808080000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00808080000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800000000000FFFFFF00C0C0C0000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080000000
      0000000000000000000080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000080000000800000FF0000008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008000000000000000C0C0
      C00080000000C0C0C000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      000000800000008000000080000000800000FF00000080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008000000080000000C0C0
      C000C0C0C000C0C0C000C0C0C000800000000000000000000000000000000000
      000000000000C0C0C00080808000000000008080800000000000000000008080
      8000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080008080
      800080808000000000000000000000000000000000000000000000FF00000080
      00000080000000800000008000000080000000800000FF000000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000800000008000000080000000800000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C00000000000C0C0C000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000008080
      800080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000808080008080800000000000000000000000000000FF00000080
      0000008000000080000000FF0000008000000080000000800000FF0000008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      000000000000C0C0C0000000000000000000FFFFFF0000000000C0C0C0000000
      0000C0C0C000000000000000000000000000000000000000000080808000C0C0
      C000C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0008080800000000000000000000000000000FF00000080
      000000800000FF0000000080000000FF0000008000000080000000800000FF00
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000C0C0C000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C0000000000000000000000000000000
      0000C0C0C00000000000FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000C0C0
      C00080808000C0C0C0000000000000000000000000000000000080808000C0C0
      C000FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C0008080800080808000000000000000000000FF000000FF00000080
      000000800000FF000000008000000080000000FF00000080000000800000FF00
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000C0C0C000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C0000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF000000000000000000C0C0C0000000
      0000C0C0C0000000000000000000000000000000000000000000000000008080
      8000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000808080008080800000000000000000000000000000FF00000080000000FF
      000000800000FF00000000800000008000000080000000FF0000008000000080
      0000FF0000008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000C0C0C000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C0000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0080808000FFFF
      FF0000000000C0C0C00000000000000000000000000000000000000000000000
      000080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000808080000000000000000000000000000000000000FF0000008000000080
      000000FF000000FF000000FF000000800000008000000080000000FF00000080
      000000800000FF000000808080008080800080808000C0C0C000C0C0C000C0C0
      C000C0C0C0008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
      0000C0C0C0000000000000000000808080000000000000000000000000000000
      000080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000808080000000000000000000000000000000000000FF0000008000000080
      0000FF000000808080000000000000FF00000080000000800000FF00000000FF
      00000080000000800000FF0000008080800080808000FFFFFF00FFFFFF00C0C0
      C000C0C0C0008080800000000000000000000000000000000000000000000000
      0000000080000000800000000000000000000000000000000000000000008080
      8000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF0080808000000000000000000000000000000000000000
      000080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00080808000000000000000000000000000000000000000000000FF00000080
      0000FF00000000000000000000000000000000FF00000080000000800000FF00
      000000FF00000080000000800000FF00000080808000FFFFFF00C0C0C000FFFF
      FF00C0C0C0008080800000000000000000000000000000000000000000000000
      800000008000000080000000800000000000000000000000000000000000C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00000000000000000000000000000000000000
      000080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C0008080800000000000000000000000000000000000000000000000000000FF
      000000FF00000000000000000000000000000000000000FF0000008000000080
      0000FF00000000FF000000800000FF00000080808000FFFFFF00FFFFFF00C0C0
      C000C0C0C0008080800000000000000000000000000000000000000080000000
      8000000080000000800000008000000080000000000000000000000000000000
      000000000000C0C0C00080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000080808000C0C0C000FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000080
      000000800000FF00000000FF0000FF00000080808000FFFFFF00C0C0C000FFFF
      FF00C0C0C0008080800000000000000000000000000000000000000000000000
      000000008000000080000000000000000000000000000000000000000000C0C0
      C000C0C0C00080808000C0C0C00080808000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C00000000000000000000000000000000000000000000000
      00000000000080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      00000080000000800000FF0000008080800080808000FFFFFF00FFFFFF00C0C0
      C000C0C0C0008080800000000000000000000000000000000000000000000000
      0000000080000000800000000000000000000000000000000000000000000000
      00000000000080808000C0C0C00080808000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000808080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000800000FF000000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      8000000080008080800000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF00FFFFFF00C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808000C0C0C000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF0000FF0000000000000080808000FFFFFF00FFFFFF00C0C0
      C000FFFFFF00C0C0C00000000000000080000000800000008000000080000000
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808000FFFFFF00C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF0000008000000080000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C00000000000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00000080000000FF000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00000080000000FF00000080000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF008000000080000000FFFFFF00FFFFFF00FFFFFF00C0C0
      C00000000000C0C0C00000000000000000000000000000000000000000000000
      000080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      000080000000FF00000080000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      000080000000FF0000008000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF008000000080000000FFFFFF00FFFFFF00FFFFFF00C0C0
      C00000000000C0C0C00000000000C0C0C0000000000000000000000000000000
      000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008000
      0000FF0000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008000
      0000FF000000800000000000000000000000000000000000000080808000FFFF
      FF00800000008000000080000000800000008000000080000000FFFFFF00C0C0
      C00000000000C0C0C00000000000C0C0C0000000000000000000000000000000
      000080808000FFFFFF00FFFFFF00FFFFFF008000000080000000FFFFFF00FFFF
      FF00FFFFFF00C0C0C00000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000FFFFFF00C0C0
      C000800000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000FFFFFF00C0C0
      C00080000000000000000000000000000000000000000000000080808000FFFF
      FF00800000008000000080000000800000008000000080000000FFFFFF00C0C0
      C00000000000C0C0C00000000000C0C0C0000000000000000000000000000000
      000080808000FFFFFF00FFFFFF00FFFFFF008000000080000000FFFFFF00FFFF
      FF00FFFFFF00C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C0008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C0008080
      800000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF008000000080000000FFFFFF00FFFFFF00FFFFFF00C0C0
      C00000000000C0C0C00000000000C0C0C0000000000000000000000000000000
      000080808000FFFFFF0080000000800000008000000080000000800000008000
      0000FFFFFF00C0C0C00000000000000000000000000000000000000000000000
      0000C0C0C000FFFF0000FFFFFF00FFFF0000FFFF000080800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000FFFF0000FFFFFF00FFFF0000FFFF000080800000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF008000000080000000FFFFFF00FFFFFF00FFFFFF00C0C0
      C00000000000C0C0C00000000000C0C0C0000000000000000000000000000000
      000080808000FFFFFF0080000000800000008000000080000000800000008000
      0000FFFFFF00C0C0C0000000000000000000000000000000000080808000C0C0
      C000FFFF0000FFFFFF008000000080000000FFFF0000FFFFFF00808000000000
      000000000000000000000000000000000000000000000000000080808000C0C0
      C000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00808000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C00000000000C0C0C00000000000C0C0C0000000000000000000000000000000
      000080808000FFFFFF00FFFFFF00FFFFFF008000000080000000FFFFFF00FFFF
      FF00FFFFFF00C0C0C0000000000000000000000000000000000080808000FFFF
      0000FFFFFF00FFFF00008000000080000000FFFF0000FFFF0000FFFF00000000
      000080808000000000000000000000000000000000000000000080808000FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF00000000
      000080808000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000C0C0C00000000000C0C0C0000000000000000000000000000000
      000080808000FFFFFF00FFFFFF00FFFFFF008000000080000000FFFFFF00FFFF
      FF00FFFFFF00C0C0C0000000000000000000000000000000000080808000FFFF
      FF00800000008000000080000000800000008000000080000000FFFF00000000
      000080808000000000000000000000000000000000000000000080808000FFFF
      FF00800000008000000080000000800000008000000080000000FFFF00000000
      000080808000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFFFF008080
      8000FFFFFF00C0C0C00000000000C0C0C0000000000000000000000000000000
      000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C0000000000000000000000000000000000080808000FFFF
      FF00800000008000000080000000800000008000000080000000FFFF00000000
      000080808000000000000000000000000000000000000000000080808000FFFF
      FF00800000008000000080000000800000008000000080000000FFFF00000000
      000080808000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000808080000000
      0000000000000000000000000000C0C0C0000000000000000000000000000000
      000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      0000FFFFFF00FFFFFF008000000080000000FFFFFF00FFFF0000FFFFFF000000
      000080808000000000000000000000000000000000000000000080808000FFFF
      0000FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF000000
      0000808080000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000FFFFFF00C0C0
      C000FFFFFF0080808000FFFFFF00C0C0C0000000000000000000000000000000
      000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C000FFFFFF008080800000000000000000000000000000000000000000008080
      8000FFFF0000FFFFFF008000000080000000FFFF0000FFFFFF00808000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFFFF00808000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      000080808000FFFF0000FFFFFF00FFFF0000FFFFFF0080800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000FFFF0000FFFFFF00FFFF0000FFFFFF0080800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000FFFFFF00C0C0C000FFFFFF00808080000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C00080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      8000000080000000800000008000000000000000000000000000000000000000
      8000000080000000800000008000000000000000000000000000000000000000
      0000000000000000000084848400840000008400000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848400008484000084840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF00000000000000000000000000000000000000FFFFFF00000000000000
      8000000080000000800000000000000000000000000000000000000000000000
      0000000080000000800000008000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848400000000000084840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000000000000000000000000000FFFFFF00000000000000
      8000000080000000800000008000000000000000000000000000000000000000
      8000000080000000800000008000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848400008484000084840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF00000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000000000000000000000000000FFFFFF00000000000000
      8000000000000000800080808000000000000000000000000000000000008080
      8000000080000000000000008000000000000000000000000000000000000000
      0000000000000000000084848400840000008400000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF000000000000000000000000000000000000000000FF00
      0000FF000000FF000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400840000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848400008484000084840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      000000000000FF000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008400000084000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848400000000000084840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000000000FF00
      000000000000FF000000000000000000000000000000FFFFFF00000000000000
      8000000000000000800080808000000000000000000000000000000000008080
      8000000080000000000000008000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848400008484000084840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000FF00
      0000FF000000FF000000000000000000000000000000FFFFFF00000000000000
      8000000080000000800000008000000000000000000000000000000000000000
      8000000080000000800000008000000000000000000000000000000000000000
      0000000000000000000084000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF000000000000000000000000000000000000000000FF00
      0000FF000000FF000000000000000000000000000000FFFFFF00000000000000
      8000000080000000800000000000000000000000000000000000000000000000
      0000000080000000800000008000000000000000000000000000000000000000
      0000000000000000000084848400840000008400000084000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF00000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000000000000000000000000000FFFFFF00000000000000
      8000000080000000800000008000000000000000000000000000000000000000
      8000000080000000800000008000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008400000084000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000000000000000000000000000FFFFFF00800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000000000000000000000000000FFFFFF00800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000848484008400000084000000848484000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000848484000000000084848400000000008484840000000000848484000000
      0000848484000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000313131003131310031313100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      00000000000000000000000000000000000000000000000000007B5A00007B5A
      00007B5A00007B5A00007B5A00007B5A00007B5A00007B5A00007B5A00007B5A
      00007B5A00000000000000000000000000000000000000000000000000000000
      000000000000313131003131310000A5AD0000A5AD0000A5AD00313131000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF0000000000000000000000000000000000000000007B5A0000E7C6A500E7C6
      A500E7C6A500E7C6A500E7C6A500E7C6A500E7C6A500E7C6A500E7C6A5007B5A
      0000DEA57B007B5A000000000000000000000000000000000000000000003131
      31003131310000A5AD0000A5AD0000F7FF0000F7FF0000F7FF0000A5AD003131
      3100000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF0000000000000000007B7B7B00000000007B7B7B00000000000000FF000000
      FF000000FF000000000000000000000000007B5A00007B5A00007B5A00007B5A
      00007B5A00007B5A00007B5A00007B5A00007B5A00007B5A00007B5A00007B5A
      00007B5A0000DEA57B007B5A00000000000000000000313131003131310000A5
      AD0000A5AD0000F7FF0000F7FF00633100006331000000A5AD0000F7FF0000A5
      AD00313131000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000007B5A0000E7C6A500E7C6A500E7C6
      A500E7C6A500E7C6A500E7C6A500FFFF9C00FFFF9C00FFFF9C00E7C6A500E7C6
      A5007B5A00007B5A00007B5A0000000000006331000000A5AD0000A5AD0000F7
      FF0000F7FF00633100007B5A0000DEA57B00DEA57B006331000000A5AD0000F7
      FF0000A5AD003131310000000000000000000000000084848400000000000000
      0000000000000000000000000000C6C6C6000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      FF000000FF000000FF007B7B7B00000000007B7B7B0000000000000000000000
      00000000FF000000FF0000000000000000007B5A0000E7C6A500E7C6A500E7C6
      A500E7C6A500E7C6A500E7C6A500DEA57B00DEA57B00DEA57B00E7C6A500E7C6
      A5007B5A0000DEA57B007B5A0000000000006331000000F7FF0000F7FF006331
      00007B5A0000BD730000BD730000BD730000BD730000DEA57B006331000000A5
      AD0000F7FF0000A5AD0031313100000000000000000084848400000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000FF000000FF00000000007B5A00007B5A00007B5A00007B5A
      00007B5A00007B5A00007B5A00007B5A00007B5A00007B5A00007B5A00007B5A
      00007B5A0000E7C6A500DEA57B007B5A0000633100006331000063310000BD73
      0000BD730000BD73000000F7FF00BD730000BD730000BD730000DEA57B006331
      000000A5AD0000F7FF0000A5AD00313131000000000084848400000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000FF000000FF00000000007B5A0000E7C6A500E7C6A500E7C6
      A500E7C6A500E7C6A500E7C6A500E7C6A500E7C6A500E7C6A500DEA57B00E7C6
      A5007B5A00007B5A0000E7C6A5007B5A0000633100007B5A0000A5730000BD73
      0000BD730000BD7300006BF7FF00BD730000BD730000BD730000BD730000DEA5
      7B006331000000A5AD0031313100000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000FF000000FF00000000000000
      000000000000000000007B7B7B00000000007B7B7B0000000000000000000000
      0000000000000000FF000000FF0000000000000000007B5A00007B5A00007B5A
      00007B5A00007B5A00007B5A00007B5A00007B5A00007B5A00007B5A0000DEA5
      7B00E7C6A5007B5A00007B5A00007B5A00000000000063310000FF9C2900DEA5
      7B00BD730000BD730000BD730000BD73000000F7FF0000F7FF00BD730000BD73
      0000DEA57B006331000031313100000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      000000000000000000000000840000000000000084000000FF00000000000000
      0000000000000000FF000000FF000000000000000000000000007B5A00000000
      0000000000000000000000000000000000000000000000000000000000007B5A
      0000DEA57B00E7C6A500DEA57B007B5A0000000000000000000063310000FF9C
      2900DEA57B00BD730000BD730000BD730000BD7300006BF7FF0000F7FF0000F7
      FF00BD730000DEA57B0031313100000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      0000000000000000FF000000FF00000000000000000000000000000000007B5A
      0000000000007B5A00007B5A00007B5A00007B5A00007B5A0000000000007B5A
      00007B5A00007B5A00007B5A0000000000000000000000000000000000006331
      0000FFFF7B00DEA57B00BD7300006BF7FF00BD730000BD73000000F7FF0000F7
      FF00BD730000BD730000DEA57B00313131000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000FF0000000000000000000000000000000000000000007B5A
      0000000000000000000000000000000000000000000000000000000000000000
      00007B5A00000000000000000000000000000000000000000000000000000000
      000063310000FFFF7B00DEA57B00BD7300006BF7FF0000F7FF0000F7FF00BD73
      0000DEA57B00FF9C29007B5A0000633100000000000084848400000000000000
      000000000000000000000000000000000000000000008484840084848400C6C6
      C60000000000000000000000000000000000000000000000FF000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00007B5A0000000000007B5A00007B5A00007B5A00007B5A00007B5A00000000
      00007B5A00000000000000000000000000000000000000000000000000000000
      00000000000063310000FFFF7B00DEA57B00BD730000BD730000DEA57B00FF9C
      29007B5A00006331000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000084848400000000008484
      84000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF00000000007B7B7B00000000007B7B7B0000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00007B5A00000000000000000000000000000000000000000000000000000000
      0000000000007B5A000000000000000000000000000000000000000000000000
      0000000000000000000063310000FFFF7B00FFFF7B00FFFF7B007B5A00006331
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000007B5A00007B5A00007B5A00007B5A00007B5A00007B5A00007B5A
      00007B5A00007B5A000000000000000000000000000000000000000000000000
      0000000000000000000000000000633100006331000063310000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A5A5007373
      7300737373005A5A5A005A5A5A004A4A4A004A4A4A0039393900313131003131
      310031313100A5A5A50000000000000000000000000000000000000000000000
      0000ADADAD007373730052392900523929005239290052392900523929005239
      2900523929005239290052392900A5A5A5000000000000000000000000000000
      00000000000000000000000000000000000084630000FF9C29008C6B18000000
      00000000000000000000000000000000000000000000000000000000AD000000
      000000000000ADADAD0073737300523929005239290052392900523929005239
      29005239290052392900A5A5A5000000000000000000A5A5A50063310000CECE
      CE00E7E7E700C6C6C600C6C6C600CECECE00F7F7F700EFEFEF00E7E7E700A5A5
      A5003131310031313100A5A5A500000000000000000000000000000000000000
      000094949400ADFFFF00ADFFFF00ADFFFF00ADFFFF00ADFFFF009CFFFF00ADFF
      FF009CFFFF00ADFFFF009CFFFF0052392900ADADAD0073737300523929005239
      29003939390039393900B5B5B50084630000FF9C2900DEA57B00FF9C29008C6B
      1800737373007373730039393900A5A5A500000000000000AD00000000000000
      00000000000073737300ADFFFF00ADFFFF00ADFFFF009CFFFF00ADFFFF009CFF
      FF00ADFFFF009CFFFF005239290000000000633100006331000063310000DEDE
      DE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDE
      DE00CE8C42006331000031313100313131000000000000000000000000000000
      000094949400ADFFFF00ADFFFF00ADFFFF00ADFFFF00ADFFFF00ADFFFF009CFF
      FF00ADFFFF009CFFFF00ADFFFF005239290094949400ADFFFF009CFFFF009CFF
      FF0052DEFF0052BDD60084630000DEA57B00DEA57B00DEA57B00DEA57B00FF9C
      29008C6B180052DEFF0052C6D60039393900000000000000AD00000000000000
      00000000000073737300ADFFFF00ADFFFF00ADFFFF00ADFFFF009CFFFF00ADFF
      FF009CFFFF00ADFFFF00523929000000000063310000CE8C420063310000DEA5
      7B00DEA57B00DEA57B00DEA57B00DEA57B00CE8C4200CE8C4200CE8C4200CE8C
      4200CE8C4200633100007B5A0000313131000000000000000000000000000000
      000094949400ADFFFF00ADFFFF00ADFFFF00ADFFFF00ADFFFF00ADFFFF00ADFF
      FF009CFFFF00ADFFFF009CFFFF005239290094949400ADFFFF00ADFFFF00ADFF
      FF00ADFFFF0084630000DEA57B00FFFFC600FFFFC600DEA57B00DEA57B00DEA5
      7B00FF9C29008C6B180052DEFF00393939000000AD000000AD000000AD000000
      00000000000073737300ADFFFF00ADFFFF00ADFFFF00ADFFFF00ADFFFF009CFF
      FF00ADFFFF009CFFFF00523929000000000063310000DEA57B0063310000DEA5
      7B00DEA57B00DEA57B00DEA57B00DEA57B00DEA57B00CE8C4200CE8C4200CE8C
      4200CE8C420063310000CE8C4200313131000000000000000000000000000000
      000094949400ADFFFF00ADFFFF00ADFFFF00ADFFFF00ADFFFF00ADFFFF00ADFF
      FF00ADFFFF009CFFFF00ADFFFF007373730094949400ADFFFF00ADFFFF00ADFF
      FF00E7BD7B008C6B18008C6B18008C6B1800FFFFC600FFFFC600DEA57B008C6B
      18008C6B18008C6B1800E7BD7B0073737300000000000000AD00000000000000
      00000000000073737300ADFFFF00ADFFFF009CFFFF00ADFFFF009CFFFF00ADFF
      FF009CFFFF00ADFFFF008C8C8C000000000063310000DEA57B0063310000DEA5
      7B00DEA57B00DEA57B00DEA57B00DEA57B00DEA57B00DEA57B00CE8C4200CE8C
      4200CE8C420063310000CE8C4200393939000000000000000000000000000000
      000094949400ADFFFF00ADFFFF00ADFFFF00ADFFFF00ADFFFF00ADFFFF00ADFF
      FF009CFFFF00ADFFFF009CFFFF008484840094949400ADFFFF00ADFFFF00ADFF
      FF00ADFFFF00ADFFFF00ADFFFF009C7B3100FFFFC600FFFFC600FFF7AD009C7B
      3100B5B5B5009CFFFF0052DEFF00393939000000000000000000000000000000
      0000000000007373730000000000ADFFFF009CF7FF009CF7FF009CF7FF009CFF
      FF009CFFFF009CFFFF00A5A5A5000000000063310000DEA57B0063310000AD39
      2900633100006331000063310000633100006331000063310000633100006331
      0000CE8C420063310000CE8C42004A4A4A000000000000000000000000000000
      0000949494009CF7FF00ADFFFF009CFFFF00ADFFFF009CFFFF00ADFFFF009CFF
      FF00ADFFFF009CFFFF00ADFFFF008C8C8C0094949400CED6D600ADFFFF00ADFF
      FF00ADFFFF00ADFFFF00ADFFFF00AD8C4200FFFFC600FFFFC600DEA57B00FFD6
      94009CF7FF0052DEFF00ADDED600393939007373730073737300737373008484
      8400C6C6C6007373730000000000ADFFFF009CF7FF009CF7FF009CF7FF0052DE
      FF0052DEFF0052BDD600737373000000000063310000DEA57B00633100009C9C
      9C00ADFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF006331000063310000CE8C42004A4A4A000000000000000000000000000000
      0000C6C6C600C6C6C6009CF7FF00ADFFFF009CFFFF00ADFFFF009CFFFF00ADFF
      FF009CFFFF00ADFFFF009CFFFF009C9C9C0094949400ADFFFF00ADFFFF00ADFF
      FF00ADFFFF00ADFFFF00BD944A00DEA57B00FFF7AD00FFFFC600AD8C42009CF7
      FF009CF7FF009CFFFF0052DEFF005A5A5A00DEA57B00CE8C4200CE8C4200CE8C
      4200CE8C42008484840000000000ADFFFF009CF7FF009CF7FF00B5B5B500A5A5
      A5007373730073737300B5B5B5000000000063310000DEA57B0063310000ADFF
      FF00CECECE00A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500C6C6
      C6009CFFFF0063310000CE8C42004A4A4A000000000000000000EFAD0000A573
      00007B5A0000EFAD0000C6C6C6009CF7FF009CF7FF009CF7FF009CF7FF009CF7
      FF009CF7FF009CF7FF009CF7FF00A5A5A500ADADAD00CED6D600ADFFFF00CED6
      D600ADFFFF00ADFFFF00BD944A00FFE79C00FFF7AD00E7BD7300FFD69400ADFF
      FF00ADFFFF00ADFFFF00ADFFFF0063636300FFFFCE00DEA57B00DEA57B00DEA5
      7B00DEA57B008C8C8C0000000000ADFFFF00ADFFFF009CF7FF00A5A5A500E7E7
      E700DEDEDE00DEDEDE00B5B5B5000000000063310000DEA57B007B5A0000ADFF
      FF00ADFFFF00ADFFFF00ADFFFF00ADFFFF00ADFFFF00ADFFFF00ADFFFF00ADFF
      FF009CFFFF007B5A0000CE8C42004A4A4A0000000000000000007B5A0000DEA5
      7B00DEA57B007B5A0000C6C6C600C6C6C6009CF7FF009CF7FF009CF7FF009CF7
      FF0052DEFF0052DEFF0052BDD60073737300B5B5B500ADFFFF00CED6D600ADFF
      FF00ADFFFF00AD8C3900DEA57B00FFD69400E7BD7B00ADFFFF00ADFFFF00ADFF
      FF00ADFFFF00ADFFFF00ADFFFF0073737300FFFFCE00DEA57B00DEA57B00DEA5
      7B00DEA57B009C9C9C0000000000ADFFFF00ADFFFF009CF7FF00A5A5A500ADFF
      FF00E7E7E700B5B5B500000000000000000063310000DEA57B007B5A0000ADFF
      FF00CECECE00A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500C6C6
      C6009CFFFF007B5A0000CE8C42004A4A4A00EFAD0000A5730000A5730000DEA5
      7B00DEA57B00A57300007B5A0000EFAD0000C6C6C6009CF7FF009CF7FF00B5B5
      B500A5A5A5007373730073737300B5B5B500C6C6C600CED6D600ADFFFF00CED6
      D600D6B56B00D6B56B00D6B56B00D6B56B00EFCE8400C6C6C600C6C6C600ADDE
      D60052BDD60052BDD60052BDD60084848400FFFFCE00DEA57B00DEA57B00DEA5
      7B00DEA57B00A5A5A500000000000000000000000000ADFFFF008C8C8C000000
      0000B5B5B50000000000000000000000000063310000DEA57B009C9C9C00ADFF
      FF00ADFFFF00ADFFFF00ADFFFF00ADFFFF00ADFFFF00ADFFFF00ADFFFF00ADFF
      FF009CFFFF009C9C9C00CE8C42005A5A5A00AD7B0000F7CE6B00DEA57B00DEA5
      7B00DEA57B00DEA57B00FF9C29007B5A0000C6C6C6009CF7FF009CF7FF00A5A5
      A500E7E7E700DEDEDE00DEDEDE00B5B5B500CECECE00B5B5B500B5B5B500B5B5
      B500CECECE00ADDED600ADDED60052DEFF0052DEFF0052DEFF0052DEFF0052DE
      FF0052DEFF0052DEFF0052BDD600C6C6C600FFFFCE00DEA57B00DEA57B00DEA5
      7B00DEA57B00C6C6C600737373007373730073737300737373008C8C8C00C6C6
      C60000000000000000000000AD000000000063310000DEA57B00A5A5A500CED6
      D600CECECE00CE8C4200CE8C4200A5A5A500A5A5A500A5A5A500A5A5A500C6C6
      C6009CFFFF00A5A5A500DEA57B0063636300AD7B0000FFFFCE00FFFFCE00F7CE
      6B00DEA57B00F7CE6B00F7CE6B00A5730000C6C6C6009CF7FF009CF7FF00A5A5
      A500ADFFFF00E7E7E700B5B5B5000000000000000000DEDEDE0000F7FF0000F7
      FF0000F7FF0000F7FF0052BDD600E7E7E7008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C0000000000FFFFCE00FFFFCE00FFFFCE00FFFF
      CE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00ADDE7B00C6C6C600000000000000
      AD0000000000000000000000AD0000000000A5A5A500633100007B5A0000CED6
      D600CED6D600ADFFFF00ADFFFF00ADFFFF00ADFFFF00ADFFFF00ADFFFF00ADFF
      FF00ADFFFF007B5A000063310000A5A5A500F7D66B00E7B52100E7B52900FFFF
      6300F7CE6B00AD7B0000AD7B0000F7CE6B00CED6D600ADFFFF00E7E7E7008C8C
      8C00CED6D600B5B5B5000000000000000000000000009C9C9C0052FFFF0063F7
      FF0063F7FF0063F7FF0000F7FF00B5B5B5000000000000000000000000000000
      000000000000000000000000000000000000A5730000A5730000A5730000A573
      0000A5730000A5730000A5730000A5730000A5730000C6C6C6000000AD000000
      AD000000AD000000AD0000000000000000000000000000000000A5A5A5006331
      0000633100006331000063310000633100006331000063310000633100006331
      0000633100009C9C9C0000000000000000000000000000000000F7BD2900FFFF
      9C00FFFF9C00AD7B0000B5B5B500CECECE00C6C6C600B5B5B5008C8C8C008C8C
      8C00C6C6C60000000000000000000000000000000000000000009C9C9C008C8C
      8C008C8C8C008C8C8C009C9C9C00000000000000000000000000000000000000
      000000000000000000000000000000000000A5730000A5730000A5730000A573
      0000A5730000A5730000A5730000A5730000A573000084848400000000000000
      AD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFD66B00FFCE
      2900FFCE3100F7CE6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000A00100000100010000000000000D00000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFFF00000000FFBFFDFF00000000FE7FFE7F00000000F8FFFE1F00000000
      E0FFFF070000000080000001000000008000000100000000E0FFFF0700000000
      F8FFFE1F00000000FE7FFE7F00000000FFBFFDFF00000000FFFFFFFF00000000
      FFFFFFFF00000000FFFFFFFF00000000FFFFFFFFFFFFFEFFFFFFFFFFFFFFFEFF
      FFFFFFFFFFFFFC7FFDFFFE7FF01FFC7FF8FFFE3FF01FF83FF007C01FF01FF83F
      E003C00FF01FF01FC003C007F01FF01FC003C003C00FE00FE003C007E007EC6F
      F003C00FF00FFC7FF8FFFE1FF81FFC7FFCFFFE3FFC3FFC7FFFFFFF7FFE7FFC7F
      FFFFFFFFFFFFFC7FFFFFFFFFFFFFFC7FFFFFFFFFFC3FFFFFFFFFFFFFFC3FFFFF
      FFFFFFFFFC3FFFFFFFFFFFFFFC3FFC7FFF7FFEFFFC3FF83FFC7FFE3FFC3FF01F
      F07FFE0FFC3FE00FC0000003F00FC00700000001F00FF01FC0000003F81FF01F
      F07FFE0FF81FF01FFC7FFE3FFC3FF01FFF7FFEFFFC3FF01FFFFFFFFFFE7FF81F
      FFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF
      FFFFFFFFFC0FFC7FFFFFFF7FF80FFC7FFBFFFF3FF00FF83FF3FFDF9FF00FF83F
      E00FC00FF00FF01FC00FC007F00FF01F800FC003F003E00FC00FC007E007FC7F
      E00FE00FC00FFC7FF3FFFE1FE01FFC7FFBFFFFBFF03FFC7FFFFFFFFFF87FFC7F
      FFFFFFFFFCFFFC7FFFFFFFFFFFFFFC7FFFFFFFFFF83FFFFFFFFFFFFFF83FFFFF
      FBFFFFBFF83FFCFFF3FFFF9FF83FF87FE3FFFF8FF83FF03FC3FFFF87F83FE01F
      80000003F83FC00F00000001F83FE00700000000F83FF00380000001F83FF00F
      C0000003C003F00FE3FFFF87E007F00FF3FFFF8FF00FF00FFBFFFF9FF81FF80F
      FFFFFFBFFC3FFC0FFFFFFFFFFE7FFFFFFE1FFC3FFE7FFEFFFC07E00FFE7FFC7F
      C001C007FE7FF83FC0038003FE7FF01FC00F8001FE7FE00FC00F0001FE7FC007
      C00F0000EE77800380070000F66FF83F80070000F00FF83F80070000F81FF83F
      80070001F81FF83F80070001FC3FF83FC01F8001FC3FF83FC20FC003FE7FF83F
      C30FE007FE7FF83FE79FF01FFFFFF83FFFDFFFFFC8078000FFCFFF1F94038000
      FFC7FE1F182080000003FE1F322080000001FE1F342080000000F10138608000
      0001E00118C080000003E001980380000007E023CC078000000FFE1FE28F8000
      001FFE1FF93F8000007FFE1FF82F800000FFFE3FF807800001FFFFFFF92F8000
      03FFFFFFF01F8000FFFFFFFFF29FFFFFE07EFFFFFF87FFFFA8188787FF83FC00
      BE000303E001FC00E0008181C000FC00A800C0C0C000FC00BE00E060C001EC00
      E000F030C003E400A800F030FF83E000BE00E060E0010000E000C0C0C0000001
      A8008181C0000003BE000303C0010007FF000F0FC003000FFF81FFFFFF87E3FF
      FFFFFFFFFF8FE7FFFFFFFFFFFF9FEFFF8007E000FFF080000000E000FFE88000
      F800E001FC14C000F800E001F008C000F800E021E801E0010000E011D003E001
      800FE001C003F003C00FE0018001F003F00FE0018001F807FF0FE0018001F807
      E607E001C003FC0FC000E001C003FC0FC000E003E007FE1FC000E007F00FFE1F
      C001E00FFC3FFF3FE607FFFFFFFFFFFFFE038000C7C3E000F8018000E404C000
      E0018000E39FE000E0018000E210F080E0008000E01FF83FC0008000F010FC1F
      C0008000FC3DFE0FC0008000E225FF07C00080008031FE0F80008000B002FC1F
      80008000F80FF83F80008000FE08F00080038000FE3FE000C00F8000FE20C000
      E03FFFFFFE7FC001F8FFFFFFFFFFFFFF87FFFF80C0039FFFC1FFFF00C003CFFF
      C0FFFE00C003E61FE03FFC00C003F00FE01FFC00C003F80FF00FF800C003F00F
      F003F801C003F00FF801F003C003F007F800F00FC003F000FC00E01FC001F800
      FC00E03FC000FF80FE00C0FFC000FFC0FE00C1FFFE00FFC0FF0087FFFF00FFC0
      FF808FFFFF81FFE1FFC0FFFFFFFFFFFF8007E000800787FF8007C0008007C1FF
      8007C0008007C07F8007C0008007E01F8007C0008007E0078007C0008007F003
      8007C0008007F0018000C0008007F8008000C0008001F8008000C0008000FC00
      8001C0008000FC008003C000FFC0FE008007C000FFE0FF00C007C000FFE0FF80
      E00FFF9FFFF0FFC0FFFFFFFFFFF0FFE0FCCFFFFFF801F000FD0F83E0F801E000
      800083E0F801C1E0800083E0F801C3C090008000F801878080008000F8018704
      80008080F801860C80008080D801841C8000C001C001803C8000E003E0038078
      8000E083C007C0F08000F1C7E00FC0008002F1C7E07FE0018000F1C7C9FFF003
      C000FFFFD99FFC0FFFFFFFFFF9FFFFFFFC07FC07FFF88000FC07FC07FFF08000
      FC07FC07FFE0C000FC07FC07FFC1C000FC07FC07F803E001FC07FC07F007E001
      F803F803E00FF003F803F803C00FF003F001F001C007F807F001F001C007F807
      F001F001C007FC0FF001F001C007FC0FF001F001E00FFE1FF803F803F01FFE1F
      FC07FC07F83FFF3FFE0FFE0FFFFFFFFF8000FDFFFFF1FC078000FC01FFE0FC07
      8000F8FDFFC0FC078000F801FF80FC078000E0FDFE01FC0780009801E003FC07
      8000B8FDC007F8038000BC01800FF8038000BCFD801FF00180009C01801FF001
      8000DCF1801FF0018000EC00801FF0018000FC04801FF0018000FC05C03FF803
      8000FC03E07FFC07FFFFFFFFFFFFFE0FE000FF00FC0FFC1FE000FF00FC0FFC1F
      8000FE00FC0FFE3F0000FE00FE1FFF1F0000FE00FE1FFE1F0000FF00FE1FFC1F
      0000F000FE1FFC0F0000C003FE1FFC070000C03FFE1FFE030000801FCC0EF901
      0000801F8000F0810000801F8000E0010003C03F8001E0010003C03F8003F003
      0003F0FFCC0FF8070003FFFFFFFFFE0FFCFF0000FFFF9E3FFE7F0000FFFFD80F
      FE3F0000FFFFA003F81FFC00FFFFC000F80FFC00FF3F8000FC07FC00FE1F8000
      FC1FFC00FC1F8000E00FC000F83F8000E007C000C07F8000F0078000A0FFC000
      F01F800040FFE001F80F800000FFF000F807E40000FFFC00FC03FC0002FFFFC0
      FC01FC0085FFFFE3FFFFFC00C3FFFFFFFC1F99E6FFFFFC1FF0079DEEFFFFF007
      E0039DEE8000E003C001CCCC8000C001C001E0018000C0018000F80780008000
      8000FC0F800080008000FC0F800080008000F807800080008000F00380008000
      C001E0C18000C001C001C1E08000C001E00383F08000E003F00787F8FFFFF007
      FC1F8FFCFFFFFC1FFFFF9FFEFFFFFFFF9888FFFFF001F801D888FF9FE000E001
      D888FF0FC000E001D888FE0F800080019888800780008001D888802300008001
      D8F8803300008001D8F880390000800198F8803C00008003D8F8803E00008007
      DFF8803F8000800FDFF8803F8000801F9FF8807FC001803FDFFF80FFE003807F
      FFFF81FFF00780FFFFFFFFFFFC1FFFFF0000F03FF1FFFC1F00008003E1F3F007
      00000001E0E1E00300000000E041C00100000000F003800100000000F0078000
      00000000F80F800000000000FC07800000000000FC07800000000000F8038000
      00000000F881C00100008000F1C0C0010000C000F1E0E0030000F213FBF1F007
      0000FF3FFFFBFC1F0000FFFFFFFFFFFFFDFFFDFFF9FF9C00F8FFF8FFF8FF8800
      F87FF87FF87F8800F807F807C0008800E001E001C0008800C000C000C0008800
      80008000C000880080008000C000800080008000C000800080008000C0008800
      80008000C0008800C000C000C0008000E001E001C0008000F807F807C0008800
      FFFFFFFFFFFF9C00FFFFFFFFFFFFFFFFF03FFF00F807FFC7E01FFF00F003F807
      C00FFF00F003E001C007FF00F003C000C007FF00E001C0008003FF00E001E001
      80018300E001F00380000100C000F003820001F3C000F003C70001E1C000F003
      E78001C0C000F003FFC001F3C000F807FFE001F3E001FC0FFFF001E3F807FE1F
      FFF90007FF8FFE1FFFFF83FFFFDFFF3FFFF8FFF8C001F001FFF0FFF0C000F001
      FFE0FFE0C000F001FFC1FFC1C000F001F803F803C000F001F007F007C000F001
      E00FE00FC000F001C00FC00FC000F001C007C007C000F001C007C007C000F001
      C007C007C000F001C007C007C000F003E00FE00FF000F007F01FF01FF000F00F
      F83FF83FFC01FFFFFFFFFFFFFC03FFFFFFFFC001FF8FBFFFFE1FDFFDFFA3A1E1
      FC5FD1FDFC21A3F1FC7FD585E5A1A1E1FC3FD1FDE3A1A9E5FC3FDFFD01A1BFFF
      FC3FD1FD00A1BFFFFE1FD5850021A9E5FF1FD1FD00A1A1E1FD1FDFFD01A1A3F1
      FC1FDBFDE3A1A1E1FFFFD185E5A1BFFFFE1FDCFDFD918000FE1FDFFDFDC98005
      FE1FC001FC018000FFFFEAABFFFFFFFFFFFFFFFFFE3FFFFFF83FC007F81F8007
      E00F8003E00FBFF7CC4700018007BFF7846300010003BE37A07300010001BC37
      31F900000000B81738F900000001B8973C7980008001B9CF3C39DFE0C001BFCF
      3C19E821E000BFE79C0BEFF7F000BF838C43F417F803BFA9C467F7FBFC0FBF9F
      E00FF803FE3F803FF83FFFFFFFFFFFFFC003F000FF1FD8018001F0000000B801
      0000F0000000B8010000F000000018010000F0000000B8010000F0000000FA01
      0000F000000002010000F000000002010000C000000002010000C00000000203
      0000000000000397000000000000000D000000018001002D0000000380FF0003
      C003C007C1FF002FFFFFC3FFFFFF003F00000000000000000000000000000000
      000000000000}
  end
  object SerialPort: TApdComPort
    ComNumber = 1
    TraceName = 'APRO.TRC'
    LogName = 'APRO.LOG'
    Left = 896
    Top = 8
  end
  object tFacturas_Proveedor: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Proveedor'
        ParamType = ptInput
      end>
    ProviderName = 'prFacturas_Proveedor'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 648
    Top = 425
    object tFacturas_ProveedorNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
    end
    object tFacturas_ProveedorProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Size = 25
    end
    object tFacturas_ProveedorNombre_Proveedor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Proveedor'
      Size = 100
    end
    object tFacturas_ProveedorCondicion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Condicion'
      Size = 25
    end
    object tFacturas_ProveedorFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
    end
    object tFacturas_ProveedorHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
    end
    object tFacturas_ProveedorConcepto_Compra: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto_Compra'
      Size = 100
    end
    object tFacturas_ProveedorReferencia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Referencia'
      Size = 25
    end
    object tFacturas_ProveedorSubTotal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SubTotal'
      Precision = 12
      Size = 2
    end
    object tFacturas_ProveedorTotalNeto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TotalNeto'
      Precision = 12
      Size = 2
    end
    object tFacturas_ProveedorComentario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario'
      Size = 255
    end
    object tFacturas_ProveedorFecha_Validacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Validacion'
    end
    object tFacturas_ProveedorFecha_Cierre: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Cierre'
    end
    object tFacturas_ProveedorUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Size = 100
    end
    object tFacturas_ProveedorValidado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Validado'
    end
    object tFacturas_ProveedorCerrado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Cerrado'
    end
    object tFacturas_ProveedorImpuesto_Global: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto_Global'
      Precision = 12
      Size = 2
    end
    object tFacturas_ProveedorValor_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Precision = 12
      Size = 2
    end
    object tFacturas_ProveedorValor_Impuesto_Detalle: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto_Detalle'
      Precision = 12
      Size = 2
    end
    object tFacturas_ProveedorTotal_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Precision = 12
      Size = 2
    end
    object tFacturas_ProveedorDescuento_Global: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Global'
      Precision = 12
      Size = 2
    end
    object tFacturas_ProveedorValor_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Precision = 12
      Size = 2
    end
    object tFacturas_ProveedorValor_Descuento_Detalle: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento_Detalle'
      Precision = 12
      Size = 2
    end
    object tFacturas_ProveedorTotal_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Precision = 12
      Size = 2
    end
    object tFacturas_ProveedorTerminos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Terminos'
    end
    object tFacturas_ProveedorVencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento'
    end
    object tFacturas_ProveedorPagado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado'
      Precision = 12
      Size = 2
    end
    object tFacturas_ProveedorPendiente: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Precision = 12
      Size = 2
    end
    object tFacturas_ProveedorUltimoPago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'UltimoPago'
    end
    object tFacturas_ProveedorProveedor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Proveedor'
    end
    object tFacturas_ProveedorTipo_NCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_NCF'
      Size = 2
    end
    object tFacturas_ProveedorNCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCF'
      Size = 100
    end
    object tFacturas_ProveedorOrden_Compra_Numero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Orden_Compra_Numero'
    end
    object tFacturas_ProveedorProceso_Orden_Compra: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso_Orden_Compra'
      Size = 25
    end
    object tFacturas_ProveedorTotal_Seriales: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Seriales'
    end
    object tFacturas_ProveedorSeriales_Registrados: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Seriales_Registrados'
    end
  end
  object dFacturas_Proveedor: TDataSource
    DataSet = tFacturas_Proveedor
    Left = 752
    Top = 425
  end
  object tNotas_Debito: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Cliente'
        ParamType = ptInput
      end>
    ProviderName = 'prNotas_Debito'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 648
    Top = 472
    object tNotas_DebitoProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Notas_Debito"."Proceso"'
      Size = 25
    end
    object tNotas_DebitoNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Notas_Debito"."Numero"'
      DisplayFormat = #39'ND-'#39'0000000000'
    end
    object tNotas_DebitoFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Notas_Debito"."Fecha"'
    end
    object tNotas_DebitoHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Notas_Debito"."Hora"'
    end
    object tNotas_DebitoCliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Notas_Debito"."Cliente"'
      Size = 25
    end
    object tNotas_DebitoFactura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Factura'
      Origin = '"Notas_Debito"."Factura"'
      Size = 25
    end
    object tNotas_DebitoTipo_NCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_NCF'
      Origin = '"Notas_Debito"."Tipo_NCF"'
      Size = 2
    end
    object tNotas_DebitoNCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCF'
      Origin = '"Notas_Debito"."NCF"'
      Size = 100
    end
    object tNotas_DebitoNCF_Modificado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCF_Modificado'
      Origin = '"Notas_Debito"."NCF_Modificado"'
      Size = 100
    end
    object tNotas_DebitoMonto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto'
      Origin = '"Notas_Debito"."Monto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tNotas_DebitoConcepto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto'
      Origin = '"Notas_Debito"."Concepto"'
      Size = 100
    end
    object tNotas_DebitoCapital: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Capital'
      Origin = '"Notas_Debito"."Capital"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tNotas_DebitoInteres: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Interes'
      Origin = '"Notas_Debito"."Interes"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tNotas_DebitoMora: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Mora'
      Origin = '"Notas_Debito"."Mora"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tNotas_DebitoOtros: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Otros'
      Origin = '"Notas_Debito"."Otros"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tNotas_DebitoTotal_Nota: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Nota'
      Origin = '"Notas_Debito"."Total_Nota"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tNotas_DebitoRealizada_Por: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Realizada_Por'
      Origin = '"Notas_Debito"."Realizada_Por"'
      Size = 100
    end
    object tNotas_DebitoVence: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vence'
      Origin = '"Notas_Debito"."Vence"'
    end
    object tNotas_DebitoStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Notas_Debito"."Status"'
      Size = 15
    end
    object tNotas_DebitoqrDetalles_Notas_Debito: TDataSetField
      AutoGenerateValue = arDefault
      FieldName = 'qrDetalles_Notas_Debito'
    end
  end
  object dNotas_Debito: TDataSource
    DataSet = tNotas_Debito
    Left = 752
    Top = 472
  end
  object tDetalles_Notas_Debito: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    DataSetField = tNotas_DebitoqrDetalles_Notas_Debito
    Params = <>
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 648
    Top = 521
    object tDetalles_Notas_DebitoProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Size = 25
    end
    object tDetalles_Notas_DebitoNumero: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
    end
    object tDetalles_Notas_DebitoTipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo'
      Size = 25
    end
    object tDetalles_Notas_DebitoFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
    end
    object tDetalles_Notas_DebitoVence: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vence'
    end
    object tDetalles_Notas_DebitoMonto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto'
      Precision = 12
      Size = 2
    end
    object tDetalles_Notas_DebitoConcepto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto'
      Size = 100
    end
    object tDetalles_Notas_DebitoCapital: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Capital'
      Precision = 12
      Size = 2
    end
    object tDetalles_Notas_DebitoCapital_Pendiente: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Capital_Pendiente'
      Precision = 12
      Size = 2
    end
    object tDetalles_Notas_DebitoInteres: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Interes'
      Precision = 12
      Size = 2
    end
    object tDetalles_Notas_DebitoInteres_Pendiente: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Interes_Pendiente'
      Precision = 12
      Size = 2
    end
    object tDetalles_Notas_DebitoMora: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Mora'
      Precision = 12
      Size = 2
    end
    object tDetalles_Notas_DebitoMora_Pendiente: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Mora_Pendiente'
      Precision = 12
      Size = 2
    end
    object tDetalles_Notas_DebitoOtros: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Otros'
      Precision = 12
      Size = 2
    end
    object tDetalles_Notas_DebitoTotal_Pagado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Pagado'
      Precision = 12
      Size = 2
    end
    object tDetalles_Notas_DebitoOtros_Pendiente: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Otros_Pendiente'
      Precision = 12
      Size = 2
    end
    object tDetalles_Notas_DebitoTotal_Pendiente: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Pendiente'
      Precision = 12
      Size = 2
    end
    object tDetalles_Notas_DebitoDias_Vencidos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Dias_Vencidos'
    end
    object tDetalles_Notas_DebitoFecha_Calculo_Mora: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Calculo_Mora'
    end
    object tDetalles_Notas_DebitoFecha_Ultimo_Pago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Ultimo_Pago'
    end
    object tDetalles_Notas_DebitoRecargo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Recargo'
      Size = 25
    end
    object tDetalles_Notas_DebitoPrioridad: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Prioridad'
      Size = 25
    end
    object tDetalles_Notas_DebitoNota: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nota'
      Size = 25
    end
  end
  object dDetalles_Notas_Debito: TDataSource
    DataSet = tDetalles_Notas_Debito
    Left = 752
    Top = 521
  end
  object tListado_Facturas: TClientDataSet
    Aggregates = <>
    CommandText = 'Select * From "Facturas" Where "Pendiente" > 0'
    ConnectionBroker = Concentrador
    Params = <>
    ProviderName = 'SrchPr'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 648
    Top = 377
    object tListado_FacturasNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Facturas"."Numero"'
      DisplayFormat = #39'F'#39'0000000000'
    end
    object tListado_FacturasProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Facturas"."Proceso"'
      Size = 25
    end
    object tListado_FacturasNombre_Cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Cliente'
      Origin = '"Facturas"."Nombre_Cliente"'
      Size = 100
    end
    object tListado_FacturasCondicion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Condicion'
      Origin = '"Facturas"."Condicion"'
      Size = 25
    end
    object tListado_FacturasFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Facturas"."Fecha"'
    end
    object tListado_FacturasHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Facturas"."Hora"'
    end
    object tListado_FacturasConcepto_Factura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto_Factura'
      Origin = '"Facturas"."Concepto_Factura"'
      Size = 100
    end
    object tListado_FacturasReferencia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Referencia'
      Origin = '"Facturas"."Referencia"'
      Size = 25
    end
    object tListado_FacturasSubTotal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SubTotal'
      Origin = '"Facturas"."SubTotal"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tListado_FacturasTotalNeto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TotalNeto'
      Origin = '"Facturas"."TotalNeto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tListado_FacturasTotal_Costo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Origin = '"Facturas"."Total_Costo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tListado_FacturasComentario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario'
      Origin = '"Facturas"."Comentario"'
      Size = 255
    end
    object tListado_FacturasFecha_Validacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Validacion'
      Origin = '"Facturas"."Fecha_Validacion"'
    end
    object tListado_FacturasFecha_Cierre: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Cierre'
      Origin = '"Facturas"."Fecha_Cierre"'
    end
    object tListado_FacturasUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Facturas"."Usuario"'
      Size = 100
    end
    object tListado_FacturasValidado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Validado'
      Origin = '"Facturas"."Validado"'
    end
    object tListado_FacturasCerrado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Cerrado'
      Origin = '"Facturas"."Cerrado"'
    end
    object tListado_FacturasImpuesto_Global: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto_Global'
      Origin = '"Facturas"."Impuesto_Global"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object tListado_FacturasValor_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Facturas"."Valor_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tListado_FacturasValor_Impuesto_Detalle: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto_Detalle'
      Origin = '"Facturas"."Valor_Impuesto_Detalle"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tListado_FacturasTotal_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Facturas"."Total_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tListado_FacturasDescuento_Global: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Global'
      Origin = '"Facturas"."Descuento_Global"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object tListado_FacturasValor_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Facturas"."Valor_Descuento"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tListado_FacturasValor_Descuento_Detalle: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento_Detalle'
      Origin = '"Facturas"."Valor_Descuento_Detalle"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tListado_FacturasTotal_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Facturas"."Total_Descuento"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tListado_FacturasTerminos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Terminos'
      Origin = '"Facturas"."Terminos"'
    end
    object tListado_FacturasVencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento'
      Origin = '"Facturas"."Vencimiento"'
    end
    object tListado_FacturasPagado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado'
      Origin = '"Facturas"."Pagado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tListado_FacturasPendiente: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Origin = '"Facturas"."Pendiente"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tListado_FacturasUltimoPago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'UltimoPago'
      Origin = '"Facturas"."UltimoPago"'
    end
    object tListado_FacturasTotal_Efectivo_Recibido: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo_Recibido'
      Origin = '"Facturas"."Total_Efectivo_Recibido"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tListado_FacturasTotal_Efectivo_Devuelto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo_Devuelto'
      Origin = '"Facturas"."Total_Efectivo_Devuelto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tListado_FacturasCliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Facturas"."Cliente"'
      Size = 25
    end
    object tListado_FacturasStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Facturas"."Status"'
      Size = 15
    end
    object tListado_FacturasTipo_Factura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Factura'
      Origin = '"Facturas"."Tipo_Factura"'
      Size = 15
    end
    object tListado_FacturasTipo_NCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_NCF'
      Origin = '"Facturas"."Tipo_NCF"'
      Size = 2
    end
    object tListado_FacturasNCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCF'
      Origin = '"Facturas"."NCF"'
      Size = 100
    end
    object tListado_FacturasVendedor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Vendedor'
      Origin = '"Facturas"."Vendedor"'
      Size = 25
    end
    object tListado_FacturasNombre_Vendedor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Vendedor'
      Origin = '"Facturas"."Nombre_Vendedor"'
      Size = 100
    end
    object tListado_FacturasTotal_Restante: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Restante'
      Origin = '"Facturas"."Total_Restante"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tListado_FacturasInteres: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Interes'
      Origin = '"Facturas"."Interes"'
      Precision = 12
      Size = 2
    end
    object tListado_FacturasModalidad: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Modalidad'
      Origin = '"Facturas"."Modalidad"'
      Size = 25
    end
    object tListado_FacturasValor_Interes: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Interes'
      Origin = '"Facturas"."Valor_Interes"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tListado_FacturasValor_Capital: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Capital'
      Origin = '"Facturas"."Valor_Capital"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tListado_FacturasValor_Cuotas: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Cuotas'
      Origin = '"Facturas"."Valor_Cuotas"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tListado_FacturasGasto_Cierre: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Gasto_Cierre'
      Origin = '"Facturas"."Gasto_Cierre"'
      Precision = 12
      Size = 2
    end
    object tListado_FacturasValor_Gasto_Cierre: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Gasto_Cierre'
      Origin = '"Facturas"."Valor_Gasto_Cierre"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tListado_FacturasVence_Financiamiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vence_Financiamiento'
      Origin = '"Facturas"."Vence_Financiamiento"'
    end
    object tListado_FacturasTotal_Estimado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Estimado'
      Origin = '"Facturas"."Total_Estimado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tListado_FacturasMonto_Financiado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Financiado'
      Origin = '"Facturas"."Monto_Financiado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tListado_FacturasTipo_Gasto_Cierre: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Gasto_Cierre'
      Origin = '"Facturas"."Tipo_Gasto_Cierre"'
      Size = 25
    end
    object tListado_FacturasPeriodo_Pagos: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Periodo_Pagos'
      Origin = '"Facturas"."Periodo_Pagos"'
      Size = 25
    end
    object tListado_FacturasPlazo_Pago: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Plazo_Pago'
      Origin = '"Facturas"."Plazo_Pago"'
    end
    object tListado_FacturasDescripcion_NCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion_NCF'
      Origin = '"Facturas"."Descripcion_NCF"'
      Size = 100
    end
    object tListado_FacturasInicial: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Inicial'
      Precision = 12
      Size = 2
    end
    object tListado_FacturasNombre_Termino: TStringField
      AutoGenerateValue = arDefault
      FieldKind = fkLookup
      FieldName = 'Nombre_Termino'
      LookupDataSet = tTerminos
      LookupKeyFields = 'Numero_Termino'
      LookupResultField = 'Descripcion'
      KeyFields = 'Terminos'
      Size = 50
      Lookup = True
    end
    object tListado_FacturasConduce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Conduce'
      Size = 25
    end
    object tListado_FacturasSelected: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'Selected'
      Calculated = True
    end
  end
  object dListado_Facturas: TDataSource
    DataSet = tListado_Facturas
    Left = 752
    Top = 378
  end
  object tSeriales_Compra: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    DataSetField = tDetalles_CompraqrSeriales_Compra
    Params = <>
    BeforeInsert = tSeriales_CompraBeforeInsert
    BeforePost = tSeriales_CompraBeforePost
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 224
    Top = 234
    object tSeriales_CompraCodigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Size = 25
    end
    object tSeriales_CompraSerial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Serial'
      Size = 100
    end
    object tSeriales_CompraProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Size = 25
    end
    object tSeriales_CompraProveedor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proveedor'
      Size = 25
    end
    object tSeriales_CompraFecha_Comprado: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Comprado'
    end
    object tSeriales_CompraHora_Comprado: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora_Comprado'
    end
    object tSeriales_CompraSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
    end
    object tSeriales_CompraUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Size = 25
    end
    object tSeriales_CompraStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Size = 15
    end
  end
  object dSeriales_Compra: TDataSource
    DataSet = tSeriales_Compra
    Left = 328
    Top = 234
  end
  object tCompras_Seriales: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <>
    ProviderName = 'prCompras_Seriales'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 440
    Top = 712
    object tCompras_SerialesNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
    end
    object tCompras_SerialesProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Size = 25
    end
    object tCompras_SerialesNombre_Proveedor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Proveedor'
      Size = 100
    end
    object tCompras_SerialesFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
    end
    object tCompras_SerialesHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
    end
    object tCompras_SerialesConcepto_Compra: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto_Compra'
      Size = 100
    end
    object tCompras_SerialesReferencia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Referencia'
      Size = 25
    end
    object tCompras_SerialesSubTotal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SubTotal'
      Precision = 12
      Size = 2
    end
    object tCompras_SerialesTotalNeto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TotalNeto'
      Precision = 12
      Size = 2
    end
    object tCompras_SerialesComentario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario'
      Size = 255
    end
    object tCompras_SerialesFecha_Validacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Validacion'
    end
    object tCompras_SerialesFecha_Cierre: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Cierre'
    end
    object tCompras_SerialesUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Size = 100
    end
    object tCompras_SerialesValidado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Validado'
    end
    object tCompras_SerialesCerrado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Cerrado'
    end
    object tCompras_SerialesImpuesto_Global: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto_Global'
      Precision = 12
      Size = 2
    end
    object tCompras_SerialesValor_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Precision = 12
      Size = 2
    end
    object tCompras_SerialesValor_Impuesto_Detalle: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto_Detalle'
      Precision = 12
      Size = 2
    end
    object tCompras_SerialesTotal_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Precision = 12
      Size = 2
    end
    object tCompras_SerialesDescuento_Global: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Global'
      Precision = 12
      Size = 2
    end
    object tCompras_SerialesValor_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Precision = 12
      Size = 2
    end
    object tCompras_SerialesValor_Descuento_Detalle: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento_Detalle'
      Precision = 12
      Size = 2
    end
    object tCompras_SerialesTotal_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Precision = 12
      Size = 2
    end
    object tCompras_SerialesTerminos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Terminos'
    end
    object tCompras_SerialesVencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento'
    end
    object tCompras_SerialesPagado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado'
      Precision = 12
      Size = 2
    end
    object tCompras_SerialesPendiente: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Precision = 12
      Size = 2
    end
    object tCompras_SerialesUltimoPago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'UltimoPago'
    end
    object tCompras_SerialesProveedor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Proveedor'
    end
    object tCompras_SerialesTipo_NCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_NCF'
      Size = 2
    end
    object tCompras_SerialesNCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCF'
      Size = 100
    end
    object tCompras_SerialesOrden_Compra_Numero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Orden_Compra_Numero'
    end
    object tCompras_SerialesProceso_Orden_Compra: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso_Orden_Compra'
      Size = 25
    end
    object tCompras_SerialesCondicion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Condicion'
      Size = 25
    end
    object tCompras_SerialesTotal_Seriales: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Seriales'
    end
    object tCompras_SerialesSeriales_Registrados: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Seriales_Registrados'
    end
  end
  object dCompras_Seriales: TDataSource
    DataSet = tCompras_Seriales
    Left = 544
    Top = 712
  end
  object tSeriales_Factura: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    DataSetField = tDetalles_FacturaqrSeriales_Factura
    Params = <>
    BeforeInsert = tSeriales_FacturaBeforeInsert
    BeforePost = tSeriales_FacturaBeforePost
    BeforeDelete = tSeriales_FacturaBeforeDelete
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 224
    Top = 524
    object tSeriales_FacturaCodigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Size = 25
    end
    object tSeriales_FacturaSerial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Serial'
      Size = 100
    end
    object tSeriales_FacturaProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Size = 25
    end
    object tSeriales_FacturaSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
    end
    object tSeriales_FacturaUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Size = 25
    end
    object tSeriales_FacturaCliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Size = 25
    end
    object tSeriales_FacturaFecha_Facturado: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Facturado'
    end
    object tSeriales_FacturaHora_Facturado: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora_Facturado'
    end
    object tSeriales_FacturaStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Size = 15
    end
  end
  object dSeriales_Factura: TDataSource
    DataSet = tSeriales_Factura
    Left = 328
    Top = 524
  end
  object tSeriales_Comprados: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'prSeriales_Comprados'
    BeforeRefresh = ChkRefresh
    Left = 24
    Top = 232
    object tSeriales_CompradosCodigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Size = 25
    end
    object tSeriales_CompradosProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Size = 25
    end
    object tSeriales_CompradosSerial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Serial'
      Size = 100
    end
    object tSeriales_CompradosProveedor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proveedor'
      Size = 25
    end
    object tSeriales_CompradosFecha_Comprado: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Comprado'
    end
    object tSeriales_CompradosHora_Comprado: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora_Comprado'
    end
    object tSeriales_CompradosSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
    end
    object tSeriales_CompradosUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Size = 25
    end
    object tSeriales_CompradosStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Size = 15
    end
  end
  object dSeriales_Comprados: TDataSource
    DataSet = tSeriales_Comprados
    Left = 120
    Top = 232
  end
  object tSeriales_Facturados: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'prSeriales_Facturados'
    BeforeRefresh = ChkRefresh
    Left = 24
    Top = 288
    object tSeriales_FacturadosCodigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Size = 25
    end
    object tSeriales_FacturadosSerial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Serial'
      Size = 100
    end
    object tSeriales_FacturadosCliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Size = 25
    end
    object tSeriales_FacturadosProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Size = 25
    end
    object tSeriales_FacturadosFecha_Facturado: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Facturado'
    end
    object tSeriales_FacturadosHora_Facturado: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora_Facturado'
    end
    object tSeriales_FacturadosUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Size = 25
    end
    object tSeriales_FacturadosSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
    end
    object tSeriales_FacturadosStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Size = 15
    end
  end
  object dSeriales_Facturados: TDataSource
    DataSet = tSeriales_Facturados
    Left = 120
    Top = 288
  end
  object tFacturas_Seriales: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <>
    ProviderName = 'prFacturas_Seriales'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 440
    Top = 760
    object tFacturas_SerialesNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
    end
    object tFacturas_SerialesNombre_Cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Cliente'
      Size = 100
    end
    object tFacturas_SerialesCondicion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Condicion'
      Size = 25
    end
    object tFacturas_SerialesFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
    end
    object tFacturas_SerialesHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
    end
    object tFacturas_SerialesConcepto_Factura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto_Factura'
      Size = 100
    end
    object tFacturas_SerialesProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Size = 25
    end
    object tFacturas_SerialesReferencia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Referencia'
      Size = 25
    end
    object tFacturas_SerialesSubTotal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SubTotal'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesTotalNeto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TotalNeto'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesComentario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario'
      Size = 255
    end
    object tFacturas_SerialesFecha_Validacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Validacion'
    end
    object tFacturas_SerialesFecha_Cierre: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Cierre'
    end
    object tFacturas_SerialesUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Size = 100
    end
    object tFacturas_SerialesValidado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Validado'
    end
    object tFacturas_SerialesCerrado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Cerrado'
    end
    object tFacturas_SerialesImpuesto_Global: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto_Global'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesValor_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesValor_Impuesto_Detalle: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto_Detalle'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesTotal_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesDescuento_Global: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Global'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesValor_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesValor_Descuento_Detalle: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento_Detalle'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesTotal_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesTerminos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Terminos'
    end
    object tFacturas_SerialesVencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento'
    end
    object tFacturas_SerialesPagado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesPendiente: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesUltimoPago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'UltimoPago'
    end
    object tFacturas_SerialesCliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Size = 25
    end
    object tFacturas_SerialesTotal_Efectivo_Recibido: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo_Recibido'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesTotal_Efectivo_Devuelto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo_Devuelto'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Size = 15
    end
    object tFacturas_SerialesTotal_Costo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesTipo_Factura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Factura'
      Size = 15
    end
    object tFacturas_SerialesTipo_NCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_NCF'
      Size = 2
    end
    object tFacturas_SerialesNCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCF'
      Size = 100
    end
    object tFacturas_SerialesVendedor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Vendedor'
      Size = 25
    end
    object tFacturas_SerialesNombre_Vendedor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Vendedor'
      Size = 100
    end
    object tFacturas_SerialesTotal_Restante: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Restante'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesInteres: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Interes'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesModalidad: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Modalidad'
      Size = 25
    end
    object tFacturas_SerialesValor_Interes: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Interes'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesValor_Capital: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Capital'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesValor_Cuotas: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Cuotas'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesGasto_Cierre: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Gasto_Cierre'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesValor_Gasto_Cierre: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Gasto_Cierre'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesVence_Financiamiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vence_Financiamiento'
    end
    object tFacturas_SerialesTotal_Estimado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Estimado'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesMonto_Financiado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Financiado'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesTipo_Gasto_Cierre: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Gasto_Cierre'
      Size = 25
    end
    object tFacturas_SerialesPeriodo_Pagos: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Periodo_Pagos'
      Size = 25
    end
    object tFacturas_SerialesPlazo_Pago: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Plazo_Pago'
    end
    object tFacturas_SerialesDescripcion_NCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion_NCF'
      Size = 100
    end
    object tFacturas_SerialesInicial: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Inicial'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesConduce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Conduce'
      Size = 25
    end
    object tFacturas_SerialesDebitado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Debitado'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesAcreditado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Acreditado'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesBalance: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesMora: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Mora'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesMonto_Vencido: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Vencido'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesCuotas_Vencidas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Cuotas_Vencidas'
    end
    object tFacturas_SerialesMonto_Interes_Cumplido: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Interes_Cumplido'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesBalance_Capital: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Capital'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesBalance_Interes: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Interes'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesBalance_Otros: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Otros'
      Precision = 12
      Size = 2
    end
    object tFacturas_SerialesFecha_Ultimo_Pago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Ultimo_Pago'
    end
    object tFacturas_SerialesDias_Vencidos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Dias_Vencidos'
    end
    object tFacturas_SerialesTotal_Seriales: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Seriales'
    end
    object tFacturas_SerialesSeriales_Registrados: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Seriales_Registrados'
    end
  end
  object dFacturas_Seriales: TDataSource
    DataSet = tFacturas_Seriales
    Left = 544
    Top = 760
  end
  object tAlmacen: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <>
    ProviderName = 'prAlmacen'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 440
    Top = 810
    object tAlmacenDescripcion: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 35
      FieldName = 'Descripcion'
      Size = 100
    end
    object tAlmacenEncargado: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 45
      FieldName = 'Encargado'
      Size = 100
    end
    object tAlmacenCodigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Visible = False
      Size = 25
    end
    object tAlmacenUbicacion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ubicacion'
      Visible = False
      Size = 255
    end
    object tAlmacenTelefono: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefono'
      Visible = False
      Size = 25
    end
    object tAlmacenFax: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Fax'
      Visible = False
      Size = 25
    end
    object tAlmacenemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Visible = False
      Size = 100
    end
  end
  object dAlmacen: TDataSource
    DataSet = tAlmacen
    Left = 536
    Top = 810
  end
  object tSeriales_Salida: TClientDataSet
    Aggregates = <>
    DataSetField = tDetalles_SalidaqrSeriales_Salida
    Params = <>
    BeforeInsert = tSeriales_SalidaBeforeInsert
    BeforePost = tSeriales_SalidaBeforePost
    BeforeDelete = tSeriales_SalidaBeforeDelete
    BeforeRefresh = ChkRefresh
    Left = 24
    Top = 808
    object tSeriales_SalidaCodigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Size = 25
    end
    object tSeriales_SalidaSerial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Serial'
      Size = 100
    end
    object tSeriales_SalidaCliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Size = 25
    end
    object tSeriales_SalidaProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Size = 25
    end
    object tSeriales_SalidaFecha_Facturado: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Facturado'
    end
    object tSeriales_SalidaHora_Facturado: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora_Facturado'
    end
    object tSeriales_SalidaUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Size = 25
    end
    object tSeriales_SalidaSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
    end
    object tSeriales_SalidaStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Size = 15
    end
  end
  object dSeriales_Salida: TDataSource
    DataSet = tSeriales_Salida
    Left = 120
    Top = 808
  end
  object tMercancia_Cliente: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Cliente'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'F1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'F2'
        ParamType = ptInput
      end>
    ProviderName = 'prMercancia_Cliente'
    BeforePost = tDetalles_SalidaBeforePost
    AfterPost = ActualizarDetallesSalida
    BeforeDelete = tDetalles_SalidaBeforeDelete
    AfterDelete = ActualizarDetallesSalida
    BeforeRefresh = ChkRefresh
    Left = 16
    Top = 880
    object tMercancia_ClienteProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalles_Factura"."Proceso"'
      Size = 25
    end
    object tMercancia_ClienteCodigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Origin = '"Detalles_Factura"."Codigo"'
      Size = 25
    end
    object tMercancia_ClienteCodigo_Real: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo_Real'
      Origin = '"Detalles_Factura"."Codigo_Real"'
      Size = 25
    end
    object tMercancia_ClienteSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Detalles_Factura"."Secuencia"'
    end
    object tMercancia_ClienteDescripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Detalles_Factura"."Descripcion"'
      Size = 100
    end
    object tMercancia_ClienteCategoria: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Categoria'
      Origin = '"Detalles_Factura"."Categoria"'
    end
    object tMercancia_ClienteFabricante: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Fabricante'
      Origin = '"Detalles_Factura"."Fabricante"'
    end
    object tMercancia_ClienteDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Departamento'
      Origin = '"Detalles_Factura"."Departamento"'
    end
    object tMercancia_ClienteTipo_Producto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Producto'
      Origin = '"Detalles_Factura"."Tipo_Producto"'
    end
    object tMercancia_ClienteCosto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Costo'
      Origin = '"Detalles_Factura"."Costo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tMercancia_ClientePrecio_Real: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Real'
      Origin = '"Detalles_Factura"."Precio_Real"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tMercancia_ClientePrecio_Venta: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta'
      Origin = '"Detalles_Factura"."Precio_Venta"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tMercancia_ClientePrecio_Minimo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Minimo'
      Origin = '"Detalles_Factura"."Precio_Minimo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tMercancia_ClienteCantidad: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad'
      Origin = '"Detalles_Factura"."Cantidad"'
      Precision = 12
      Size = 2
    end
    object tMercancia_ClienteTotal_Costo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Origin = '"Detalles_Factura"."Total_Costo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tMercancia_ClienteTotal_Precio: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Precio'
      Origin = '"Detalles_Factura"."Total_Precio"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tMercancia_ClienteFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Detalles_Factura"."Fecha"'
    end
    object tMercancia_ClienteHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Detalles_Factura"."Hora"'
    end
    object tMercancia_ClienteUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Detalles_Factura"."Usuario"'
      Size = 100
    end
    object tMercancia_ClienteMes: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Mes'
      Origin = '"Detalles_Factura"."Mes"'
    end
    object tMercancia_ClienteAno: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ano'
      Origin = '"Detalles_Factura"."Ano"'
    end
    object tMercancia_ClienteCliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Detalles_Factura"."Cliente"'
      Size = 25
    end
    object tMercancia_ClienteImpuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto'
      Origin = '"Detalles_Factura"."Impuesto"'
      Precision = 12
      Size = 2
    end
    object tMercancia_ClienteDescuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento'
      Origin = '"Detalles_Factura"."Descuento"'
      Precision = 12
      Size = 2
    end
    object tMercancia_ClienteValor_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Detalles_Factura"."Valor_Impuesto"'
      Precision = 12
      Size = 2
    end
    object tMercancia_ClienteValor_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Detalles_Factura"."Valor_Descuento"'
      Precision = 12
      Size = 2
    end
    object tMercancia_ClienteTotal_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Detalles_Factura"."Total_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tMercancia_ClienteTotal_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Detalles_Factura"."Total_Descuento"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tMercancia_ClienteCantidad_Devuelto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad_Devuelto'
      Origin = '"Detalles_Factura"."Cantidad_Devuelto"'
      Precision = 12
      Size = 2
    end
    object tMercancia_ClienteTipo_Precio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Precio'
      Origin = '"Detalles_Factura"."Tipo_Precio"'
      Size = 25
    end
    object tMercancia_ClienteContenido: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Contenido'
      Origin = '"Detalles_Factura"."Contenido"'
      Precision = 12
      Size = 2
    end
    object tMercancia_ClienteRegistro: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Registro'
      Origin = '"Detalles_Factura"."Registro"'
    end
    object tMercancia_ClienteRequiere_Serial: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Requiere_Serial'
      Origin = '"Detalles_Factura"."Requiere_Serial"'
    end
    object tMercancia_ClienteAlmacen: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Origin = '"Detalles_Factura"."Almacen"'
      Size = 25
    end
    object tMercancia_ClienteqrSeriales_Vendida_Cliente: TDataSetField
      AutoGenerateValue = arDefault
      FieldName = 'qrSeriales_Vendida_Cliente'
    end
    object tMercancia_ClienteNumero_Factura: TIntegerField
      FieldKind = fkLookup
      FieldName = 'Numero_Factura'
      LookupDataSet = tFacturas_Cliente
      LookupKeyFields = 'Proceso'
      LookupResultField = 'Numero'
      KeyFields = 'Proceso'
      DisplayFormat = #39'F'#39'0000000000'
      Lookup = True
    end
  end
  object dMercancia_Cliente: TDataSource
    DataSet = tMercancia_Cliente
    Left = 112
    Top = 880
  end
  object tSeriales_Vendida_Cliente: TClientDataSet
    Aggregates = <>
    DataSetField = tMercancia_ClienteqrSeriales_Vendida_Cliente
    Params = <>
    BeforeInsert = tSeriales_SalidaBeforeInsert
    BeforePost = tSeriales_SalidaBeforePost
    BeforeDelete = tSeriales_SalidaBeforeDelete
    BeforeRefresh = ChkRefresh
    Left = 16
    Top = 928
    object tSeriales_Vendida_ClienteCodigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Size = 25
    end
    object tSeriales_Vendida_ClienteSerial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Serial'
      Size = 100
    end
    object tSeriales_Vendida_ClienteCliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Size = 25
    end
    object tSeriales_Vendida_ClienteProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Size = 25
    end
    object tSeriales_Vendida_ClienteFecha_Facturado: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Facturado'
    end
    object tSeriales_Vendida_ClienteHora_Facturado: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora_Facturado'
    end
    object tSeriales_Vendida_ClienteUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Size = 25
    end
    object tSeriales_Vendida_ClienteSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
    end
    object tSeriales_Vendida_ClienteStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Size = 15
    end
  end
  object dSeriales_Vendida_Cliente: TDataSource
    DataSet = tSeriales_Vendida_Cliente
    Left = 112
    Top = 928
  end
  object tMercancia_Desp_Cliente: TClientDataSet
    Aggregates = <>
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Cliente'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'F1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'F2'
        ParamType = ptInput
      end>
    ProviderName = 'prMercancia_Desp_Cliente'
    BeforePost = tDetalles_SalidaBeforePost
    AfterPost = ActualizarDetallesSalida
    BeforeDelete = tDetalles_SalidaBeforeDelete
    AfterDelete = ActualizarDetallesSalida
    BeforeRefresh = ChkRefresh
    Left = 224
    Top = 880
    object tMercancia_Desp_ClienteProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalles_Factura"."Proceso"'
      Size = 25
    end
    object tMercancia_Desp_ClienteCodigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Origin = '"Detalles_Factura"."Codigo"'
      Size = 25
    end
    object tMercancia_Desp_ClienteCodigo_Real: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo_Real'
      Origin = '"Detalles_Factura"."Codigo_Real"'
      Size = 25
    end
    object tMercancia_Desp_ClienteSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Detalles_Factura"."Secuencia"'
    end
    object tMercancia_Desp_ClienteDescripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Detalles_Factura"."Descripcion"'
      Size = 100
    end
    object tMercancia_Desp_ClienteCategoria: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Categoria'
      Origin = '"Detalles_Factura"."Categoria"'
    end
    object tMercancia_Desp_ClienteFabricante: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Fabricante'
      Origin = '"Detalles_Factura"."Fabricante"'
    end
    object tMercancia_Desp_ClienteDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Departamento'
      Origin = '"Detalles_Factura"."Departamento"'
    end
    object tMercancia_Desp_ClienteTipo_Producto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Producto'
      Origin = '"Detalles_Factura"."Tipo_Producto"'
    end
    object tMercancia_Desp_ClienteCosto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Costo'
      Origin = '"Detalles_Factura"."Costo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tMercancia_Desp_ClientePrecio_Real: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Real'
      Origin = '"Detalles_Factura"."Precio_Real"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tMercancia_Desp_ClientePrecio_Venta: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta'
      Origin = '"Detalles_Factura"."Precio_Venta"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tMercancia_Desp_ClientePrecio_Minimo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Minimo'
      Origin = '"Detalles_Factura"."Precio_Minimo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tMercancia_Desp_ClienteCantidad: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad'
      Origin = '"Detalles_Factura"."Cantidad"'
      Precision = 12
      Size = 2
    end
    object tMercancia_Desp_ClienteTotal_Costo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Origin = '"Detalles_Factura"."Total_Costo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tMercancia_Desp_ClienteTotal_Precio: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Precio'
      Origin = '"Detalles_Factura"."Total_Precio"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tMercancia_Desp_ClienteFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Detalles_Factura"."Fecha"'
    end
    object tMercancia_Desp_ClienteHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Detalles_Factura"."Hora"'
    end
    object tMercancia_Desp_ClienteUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Detalles_Factura"."Usuario"'
      Size = 100
    end
    object tMercancia_Desp_ClienteMes: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Mes'
      Origin = '"Detalles_Factura"."Mes"'
    end
    object tMercancia_Desp_ClienteAno: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ano'
      Origin = '"Detalles_Factura"."Ano"'
    end
    object tMercancia_Desp_ClienteCliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Detalles_Factura"."Cliente"'
      Size = 25
    end
    object tMercancia_Desp_ClienteImpuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto'
      Origin = '"Detalles_Factura"."Impuesto"'
      Precision = 12
      Size = 2
    end
    object tMercancia_Desp_ClienteDescuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento'
      Origin = '"Detalles_Factura"."Descuento"'
      Precision = 12
      Size = 2
    end
    object tMercancia_Desp_ClienteValor_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Detalles_Factura"."Valor_Impuesto"'
      Precision = 12
      Size = 2
    end
    object tMercancia_Desp_ClienteValor_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Detalles_Factura"."Valor_Descuento"'
      Precision = 12
      Size = 2
    end
    object tMercancia_Desp_ClienteTotal_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Detalles_Factura"."Total_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tMercancia_Desp_ClienteTotal_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Detalles_Factura"."Total_Descuento"'
      currency = True
      Precision = 12
      Size = 2
    end
    object tMercancia_Desp_ClienteCantidad_Devuelto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad_Devuelto'
      Origin = '"Detalles_Factura"."Cantidad_Devuelto"'
      Precision = 12
      Size = 2
    end
    object tMercancia_Desp_ClienteTipo_Precio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Precio'
      Origin = '"Detalles_Factura"."Tipo_Precio"'
      Size = 25
    end
    object tMercancia_Desp_ClienteContenido: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Contenido'
      Origin = '"Detalles_Factura"."Contenido"'
      Precision = 12
      Size = 2
    end
    object tMercancia_Desp_ClienteRegistro: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Registro'
      Origin = '"Detalles_Factura"."Registro"'
    end
    object tMercancia_Desp_ClienteRequiere_Serial: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Requiere_Serial'
      Origin = '"Detalles_Factura"."Requiere_Serial"'
    end
    object tMercancia_Desp_ClienteAlmacen: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Origin = '"Detalles_Factura"."Almacen"'
      Size = 25
    end
    object tMercancia_Desp_ClienteqrSeriales_Desp_Cliente: TDataSetField
      AutoGenerateValue = arDefault
      FieldName = 'qrSeriales_Desp_Cliente'
    end
    object tMercancia_Desp_ClienteNumero_Salida: TIntegerField
      FieldKind = fkLookup
      FieldName = 'Numero_Salida'
      LookupDataSet = tSalidas_Cliente
      LookupKeyFields = 'Proceso'
      LookupResultField = 'Numero'
      KeyFields = 'Proceso'
      DisplayFormat = #39'SI'#39'0000000000'
      Lookup = True
    end
  end
  object dMercancia_Desp_Cliente: TDataSource
    DataSet = tMercancia_Desp_Cliente
    Left = 320
    Top = 880
  end
  object tSeriales_Desp_Cliente: TClientDataSet
    Aggregates = <>
    DataSetField = tMercancia_Desp_ClienteqrSeriales_Desp_Cliente
    Params = <>
    BeforeInsert = tSeriales_SalidaBeforeInsert
    BeforePost = tSeriales_SalidaBeforePost
    BeforeDelete = tSeriales_SalidaBeforeDelete
    BeforeRefresh = ChkRefresh
    Left = 224
    Top = 928
    object tSeriales_Desp_ClienteCodigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Size = 25
    end
    object tSeriales_Desp_ClienteSerial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Serial'
      Size = 100
    end
    object tSeriales_Desp_ClienteCliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Size = 25
    end
    object tSeriales_Desp_ClienteProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Size = 25
    end
    object tSeriales_Desp_ClienteFecha_Facturado: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Facturado'
    end
    object tSeriales_Desp_ClienteHora_Facturado: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora_Facturado'
    end
    object tSeriales_Desp_ClienteUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Size = 25
    end
    object tSeriales_Desp_ClienteSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
    end
    object tSeriales_Desp_ClienteStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Size = 15
    end
  end
  object dSeriales_Desp_Cliente: TDataSource
    DataSet = tSeriales_Desp_Cliente
    Left = 320
    Top = 928
  end
  object tSalidas_Cliente: TClientDataSet
    Aggregates = <>
    CommandText = 'Select * From "Salidas_Inventario" Where "Cliente" = :Cliente'
    ConnectionBroker = Concentrador
    Params = <
      item
        DataType = ftString
        Name = 'Cliente'
        ParamType = ptInput
      end>
    ProviderName = 'SrchPr'
    BeforeRefresh = ChkRefresh
    OnReconcileError = DataSetReconcileError
    Left = 440
    Top = 881
    object tSalidas_ClienteNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
    end
    object tSalidas_ClienteProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Size = 25
    end
    object tSalidas_ClienteCliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Size = 25
    end
    object tSalidas_ClienteNombre_Cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Cliente'
      Size = 100
    end
    object tSalidas_ClienteFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
    end
    object tSalidas_ClienteHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
    end
    object tSalidas_ClienteConcepto_Salida: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto_Salida'
      Size = 100
    end
    object tSalidas_ClienteReferencia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Referencia'
      Size = 25
    end
    object tSalidas_ClienteTotal_Costo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Precision = 12
      Size = 2
    end
    object tSalidas_ClienteTotal_Salida: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Salida'
      Precision = 12
      Size = 2
    end
    object tSalidas_ClienteComentario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario'
      Size = 255
    end
    object tSalidas_ClienteFecha_Validacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Validacion'
    end
    object tSalidas_ClienteFecha_Cierre: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Cierre'
    end
    object tSalidas_ClienteUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Size = 100
    end
    object tSalidas_ClienteValidado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Validado'
    end
    object tSalidas_ClienteCerrado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Cerrado'
    end
    object tSalidas_ClienteAlmacen: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Size = 25
    end
    object tSalidas_ClienteCondicion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Condicion'
      Size = 25
    end
    object tSalidas_ClienteSubTotal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SubTotal'
      Precision = 12
      Size = 2
    end
    object tSalidas_ClienteTotalNeto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TotalNeto'
      Precision = 12
      Size = 2
    end
    object tSalidas_ClienteImpuesto_Global: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto_Global'
      Precision = 12
      Size = 2
    end
    object tSalidas_ClienteValor_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Precision = 12
      Size = 2
    end
    object tSalidas_ClienteValor_Impuesto_Detalle: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto_Detalle'
      Precision = 12
      Size = 2
    end
    object tSalidas_ClienteTotal_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Precision = 12
      Size = 2
    end
    object tSalidas_ClienteDescuento_Global: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Global'
      Precision = 12
      Size = 2
    end
    object tSalidas_ClienteValor_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Precision = 12
      Size = 2
    end
    object tSalidas_ClienteValor_Descuento_Detalle: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento_Detalle'
      Precision = 12
      Size = 2
    end
    object tSalidas_ClienteTotal_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Precision = 12
      Size = 2
    end
    object tSalidas_ClienteTerminos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Terminos'
    end
    object tSalidas_ClienteVencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento'
    end
    object tSalidas_ClientePagado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado'
      Precision = 12
      Size = 2
    end
    object tSalidas_ClientePendiente: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Precision = 12
      Size = 2
    end
    object tSalidas_ClienteUltimoPago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'UltimoPago'
    end
    object tSalidas_ClienteTotal_Efectivo_Recibido: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo_Recibido'
      Precision = 12
      Size = 2
    end
    object tSalidas_ClienteTotal_Efectivo_Devuelto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo_Devuelto'
      Precision = 12
      Size = 2
    end
    object tSalidas_ClienteStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Size = 15
    end
    object tSalidas_ClienteTipo_Salida: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Salida'
      Size = 15
    end
    object tSalidas_ClienteVendedor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Vendedor'
      Size = 25
    end
    object tSalidas_ClienteNombre_Vendedor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Vendedor'
      Size = 100
    end
    object tSalidas_ClienteTotal_Restante: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Restante'
      Precision = 12
      Size = 2
    end
    object tSalidas_ClienteConduce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Conduce'
      Size = 25
    end
    object tSalidas_ClienteDebitado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Debitado'
      Precision = 12
      Size = 2
    end
    object tSalidas_ClienteAcreditado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Acreditado'
      Precision = 12
      Size = 2
    end
    object tSalidas_ClienteBalance: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Precision = 12
      Size = 2
    end
    object tSalidas_ClienteFecha_Ultimo_Pago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Ultimo_Pago'
    end
    object tSalidas_ClienteTotal_Seriales: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Seriales'
    end
    object tSalidas_ClienteSeriales_Registrados: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Seriales_Registrados'
    end
  end
  object dSalidas_Cliente: TDataSource
    DataSet = tSalidas_Cliente
    Left = 544
    Top = 881
  end
  object tAjuste_Inventario: TClientDataSet
    Aggregates = <>
    FileName = 'Inventory_Rearange.xml'
    Params = <>
    BeforeRefresh = ChkRefresh
    OnCalcFields = tAjuste_InventarioCalcFields
    OnReconcileError = DataSetReconcileError
    Left = 440
    Top = 929
    object tAjuste_InventarioCodigo: TStringField
      FieldName = 'Codigo'
      Size = 25
    end
    object tAjuste_InventarioDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 150
    end
    object tAjuste_InventarioExistencia_Actual: TBCDField
      FieldName = 'Existencia_Actual'
      Precision = 12
      Size = 2
    end
    object tAjuste_InventarioExistencia_Fisica: TBCDField
      FieldName = 'Existencia_Fisica'
      OnValidate = CalcDiferenciasInventario
      Precision = 12
      Size = 2
    end
    object tAjuste_InventarioDiferencia: TBCDField
      DefaultExpression = '0'
      FieldName = 'Diferencia'
      Precision = 12
      Size = 2
    end
    object tAjuste_InventarioInicial: TStringField
      FieldKind = fkCalculated
      FieldName = 'Inicial'
      Size = 1
      Calculated = True
    end
  end
  object dAjuste_Inventario: TDataSource
    DataSet = tAjuste_Inventario
    Left = 544
    Top = 929
  end
end
