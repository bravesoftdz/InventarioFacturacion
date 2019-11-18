object RemoteModule: TRemoteModule
  OldCreateOrder = False
  OnCreate = RemoteDataModuleCreate
  Height = 1262
  Width = 1332
  object InfoTransaction: TIBTransaction
    DefaultDatabase = InfoDataBase
    IdleTimer = 300
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saCommit
    Left = 144
    Top = 8
  end
  object Validation: TIBTable
    Database = InfoDataBase
    Transaction = InfoTransaction
    TableName = 'Validation'
    Left = 244
    Top = 8
    object ValidationIntervalStart: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'IntervalStart'
      Size = 100
    end
    object ValidationIntervalEnd: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'IntervalEnd'
      Size = 100
    end
    object ValidationRegistration: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Registration'
      Size = 500
    end
    object ValidationExecution: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Execution'
    end
  end
  object qrProductos: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Productos"'
      'Where ("Codigo" = :Codigo)'
      'Or ("Barra" = :Barra)'
      'Or ("Referencia" = :Referencia)'
      'Or ("Secuencia" = :Secuencia)'
      'Or ("Proceso" = :Proceso)'
      
        'Or ("Proceso"  In (Select "Proceso" From "Codigos_Productos" Whe' +
        're "Codigo_Barra" = :Barra))'
      'Order By "Codigo"')
    UniDirectional = True
    Left = 40
    Top = 64
    ParamData = <
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
      end
      item
        DataType = ftString
        Name = 'Barra'
        ParamType = ptInput
      end>
    object qrProductosCodigo: TIBStringField
      Alignment = taRightJustify
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Codigo'
      Origin = '"Productos"."Codigo"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 25
    end
    object qrProductosBarra: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Barra'
      Origin = '"Productos"."Barra"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 25
    end
    object qrProductosSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Secuencia'
      Origin = '"Productos"."Secuencia"'
      DisplayFormat = '#,#0'
    end
    object qrProductosReferencia: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Referencia'
      Origin = '"Productos"."Referencia"'
      Size = 25
    end
    object qrProductosFecha_Registro: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fecha de Registro'
      FieldName = 'Fecha_Registro'
      Origin = '"Productos"."Fecha_Registro"'
    end
    object qrProductosDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir una Descripcion para el producto'
      DisplayLabel = 'Descripcion del Producto'
      FieldName = 'Descripcion'
      Origin = '"Productos"."Descripcion"'
      Size = 100
    end
    object qrProductosDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Departamento'
      Origin = '"Productos"."Departamento"'
    end
    object qrProductosCategoria: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      DisplayLabel = 'Categor'#237'a'
      FieldName = 'Categoria'
      Origin = '"Productos"."Categoria"'
    end
    object qrProductosProveedor_Principal: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      DisplayLabel = 'Proveedor Principal'
      FieldName = 'Proveedor_Principal'
      Origin = '"Productos"."Proveedor_Principal"'
    end
    object qrProductosTipo_Inventario: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Regular'#39
      DisplayLabel = 'Tipo de Inventario'
      FieldName = 'Tipo_Inventario'
      Origin = '"Productos"."Tipo_Inventario"'
      Size = 25
    end
    object qrProductosTipo_Producto: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      DisplayLabel = 'Tipo de Producto'
      FieldName = 'Tipo_Producto'
      Origin = '"Productos"."Tipo_Producto"'
    end
    object qrProductosMinimo: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      DisplayLabel = 'Inventario M'#237'nimo'
      FieldName = 'Minimo'
      Origin = '"Productos"."Minimo"'
      DisplayFormat = '#,#0.00'
    end
    object qrProductosLector_Codigo: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'C'#243'digo Principal'#39
      FieldName = 'Lector_Codigo'
      Origin = '"Productos"."Lector_Codigo"'
      Size = 25
    end
    object qrProductosReorden: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      DisplayLabel = 'Cantidad de Reorden'
      FieldName = 'Reorden'
      Origin = '"Productos"."Reorden"'
      DisplayFormat = '#,#0.00'
    end
    object qrProductosUbicacion: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Almac'#233'n'#39
      DisplayLabel = 'Ubicaci'#243'n'
      FieldName = 'Ubicacion'
      Origin = '"Productos"."Ubicacion"'
      Size = 100
    end
    object qrProductosCuenta_Contable: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      DisplayLabel = 'Cuenta Contable'
      FieldName = 'Cuenta_Contable'
      Origin = '"Productos"."Cuenta_Contable"'
      Size = 25
    end
    object qrProductosMetodo_Calculo_Costo: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Promedio'#39
      DisplayLabel = 'M'#233'todo para C'#225'lculo de Costos'
      FieldName = 'Metodo_Calculo_Costo'
      Origin = '"Productos"."Metodo_Calculo_Costo"'
      Size = 25
    end
    object qrProductosMedida_Compra: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Unidad'#39
      DisplayLabel = 'Medida de Compra'
      FieldName = 'Medida_Compra'
      Origin = '"Productos"."Medida_Compra"'
      Size = 25
    end
    object qrProductosUnidades_Medida_Compra: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      DisplayLabel = 'Cantidad por Unidad de Medida'
      FieldName = 'Unidades_Medida_Compra'
      Origin = '"Productos"."Unidades_Medida_Compra"'
      DisplayFormat = '#,#0.00'
    end
    object qrProductosUltima_Compra: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fecha de '#218'ltima Compra'
      FieldName = 'Ultima_Compra'
      Origin = '"Productos"."Ultima_Compra"'
    end
    object qrProductosMedida_Venta: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Unidad'#39
      DisplayLabel = 'Medida de Venta'
      FieldName = 'Medida_Venta'
      Origin = '"Productos"."Medida_Venta"'
      Size = 25
    end
    object qrProductosUnidades_Medida_Venta: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      DisplayLabel = 'Cantidad por Unidad de Medida'
      FieldName = 'Unidades_Medida_Venta'
      Origin = '"Productos"."Unidades_Medida_Venta"'
      DisplayFormat = '#,#0.00'
    end
    object qrProductosAplica_Descuento: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'FALSE'#39
      DisplayLabel = 'Aplica Para Descuento'
      FieldName = 'Aplica_Descuento'
      Origin = '"Productos"."Aplica_Descuento"'
    end
    object qrProductosTipo_Beneficio: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Porcentual'#39
      DisplayLabel = 'Tipo de Beneficio'
      FieldName = 'Tipo_Beneficio'
      Origin = '"Productos"."Tipo_Beneficio"'
      Size = 25
    end
    object qrProductosValor_Beneficio_Contado: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      DisplayLabel = 'Valor del Beneficio / Contado'
      FieldName = 'Valor_Beneficio_Contado'
      Origin = '"Productos"."Valor_Beneficio_Contado"'
      DisplayFormat = '#,#0.00'
    end
    object qrProductosValor_Beneficio_Credito: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      DisplayLabel = 'Valor de Beneficio / Cr'#233'dito'
      FieldName = 'Valor_Beneficio_Credito'
      Origin = '"Productos"."Valor_Beneficio_Credito"'
      DisplayFormat = '#,#0.00'
    end
    object qrProductosPaga_Comision: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'FALSE'#39
      DisplayLabel = 'Paga Comisi'#243'n'
      FieldName = 'Paga_Comision'
      Origin = '"Productos"."Paga_Comision"'
    end
    object qrProductosRequiere_Numero_Serie: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'FALSE'#39
      DisplayLabel = 'Requiere N'#250'mero de Serie'
      FieldName = 'Requiere_Numero_Serie'
      Origin = '"Productos"."Requiere_Numero_Serie"'
    end
    object qrProductosPaga_Impuesto: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'FALSE'#39
      DisplayLabel = 'Paga Impuesto'
      FieldName = 'Paga_Impuesto'
      Origin = '"Productos"."Paga_Impuesto"'
    end
    object qrProductosRequiere_Fecha_Vencimiento: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'FALSE'#39
      DisplayLabel = 'Requiere Fecha de Vencimiento'
      FieldName = 'Requiere_Fecha_Vencimiento'
      Origin = '"Productos"."Requiere_Fecha_Vencimiento"'
    end
    object qrProductosCompradas: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      DisplayLabel = 'Unidades Compradas'
      FieldName = 'Compradas'
      Origin = '"Productos"."Compradas"'
      DisplayFormat = '#,#0.00'
    end
    object qrProductosVendidas: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      DisplayLabel = 'Unidades Vendidas'
      FieldName = 'Vendidas'
      Origin = '"Productos"."Vendidas"'
      DisplayFormat = '#,#0.00'
    end
    object qrProductosEnPedidos: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      DisplayLabel = 'Unidades en Pedidos'
      FieldName = 'EnPedidos'
      Origin = '"Productos"."EnPedidos"'
      DisplayFormat = '#,#0.00'
    end
    object qrProductosEnTransito: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      DisplayLabel = 'Unidades en Tr'#225'nsito'
      FieldName = 'EnTransito'
      Origin = '"Productos"."EnTransito"'
      DisplayFormat = '#,#0.00'
    end
    object qrProductosStatus: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      DisplayLabel = 'Estatus'
      FieldName = 'Status'
      Origin = '"Productos"."Status"'
    end
    object qrProductosPresentacion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Presentacion'
      Origin = '"Productos"."Presentacion"'
      Size = 100
    end
    object qrProductosFabricante: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Fabricante'
      Origin = '"Productos"."Fabricante"'
    end
    object qrProductosUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Productos"."Usuario"'
      Size = 100
    end
    object qrProductosDevuelto_Compras: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Devuelto_Compras'
      Origin = '"Productos"."Devuelto_Compras"'
      DisplayFormat = '#,#0.00'
    end
    object qrProductosNumero_Ultima_Compra: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero_Ultima_Compra'
      Origin = '"Productos"."Numero_Ultima_Compra"'
      DisplayFormat = #39'CP'#39'0000000000'
    end
    object qrProductosDevuelto_Ventas: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Devuelto_Ventas'
      Origin = '"Productos"."Devuelto_Ventas"'
      DisplayFormat = '#,#0.00'
    end
    object qrProductosUltima_Venta: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Ultima_Venta'
      Origin = '"Productos"."Ultima_Venta"'
    end
    object qrProductosNumero_Ultima_Factura: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero_Ultima_Factura'
      Origin = '"Productos"."Numero_Ultima_Factura"'
      DisplayFormat = #39'F'#39'0000000000'
    end
    object qrProductosDespachadas: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Despachadas'
      Origin = '"Productos"."Despachadas"'
      DisplayFormat = '#,#0.00'
    end
    object qrProductosUltima_Salida: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Ultima_Salida'
      Origin = '"Productos"."Ultima_Salida"'
    end
    object qrProductosNumero_Ultima_Salida: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero_Ultima_Salida'
      Origin = '"Productos"."Numero_Ultima_Salida"'
      DisplayFormat = #39'SI'#39'0000000000'
    end
    object qrProductosDevuelto_Despacho: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Devuelto_Despacho'
      Origin = '"Productos"."Devuelto_Despacho"'
      DisplayFormat = '#,#0.00'
    end
    object qrProductosExistencia: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Existencia'
      Origin = '"Productos"."Existencia"'
      DisplayFormat = '#,#0.00'
    end
    object qrProductosEditar_Existencia: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'TRUE'#39
      FieldName = 'Editar_Existencia'
      Origin = '"Productos"."Editar_Existencia"'
    end
    object qrProductosNombre: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Origin = '"Productos"."Nombre"'
      Size = 100
    end
    object qrProductosMarca: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Marca'
      Origin = '"Productos"."Marca"'
      Size = 100
    end
    object qrProductosColor: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Color'
      Origin = '"Productos"."Color"'
      Size = 25
    end
    object qrProductosModelo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Modelo'
      Origin = '"Productos"."Modelo"'
      Size = 100
    end
    object qrProductosOrientacion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Orientacion'
      Origin = '"Productos"."Orientacion"'
      Size = 25
    end
    object qrProductosPosicion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Posicion'
      Origin = '"Productos"."Posicion"'
      Size = 25
    end
    object qrProductosAno: TSmallintField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Ano'
      Origin = '"Productos"."Ano"'
      DisplayFormat = '0000'
    end
    object qrProductosProceso: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Proceso'
      Origin = '"Productos"."Proceso"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 25
    end
    object qrProductosFoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Foto'
      Origin = '"Productos"."Foto"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qrProductosCosto_Standar: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Costo_Standar'
      Origin = '"Productos"."Costo_Standar"'
      currency = True
    end
    object qrProductosUltimo_Precio_Compra: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Ultimo_Precio_Compra'
      Origin = '"Productos"."Ultimo_Precio_Compra"'
      currency = True
    end
    object qrProductosCosto_Promedio: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Costo_Promedio'
      Origin = '"Productos"."Costo_Promedio"'
      currency = True
    end
    object qrProductosPrecio_Venta_Contado: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Precio_Venta_Contado'
      Origin = '"Productos"."Precio_Venta_Contado"'
      currency = True
    end
    object qrProductosPrecio_Venta_Credito: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Precio_Venta_Credito'
      Origin = '"Productos"."Precio_Venta_Credito"'
      currency = True
    end
    object qrProductosPrecio_Venta_Minimo: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Precio_Venta_Minimo'
      Origin = '"Productos"."Precio_Venta_Minimo"'
      currency = True
    end
    object qrProductosPrecio_Venta_Por_Mayor_Contado: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Precio_Venta_Por_Mayor_Contado'
      Origin = '"Productos"."Precio_Venta_Por_Mayor_Contado"'
      currency = True
    end
    object qrProductosPrecio_Venta_Por_Mayor_Credito: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Precio_Venta_Por_Mayor_Credito'
      Origin = '"Productos"."Precio_Venta_Por_Mayor_Credito"'
      currency = True
    end
    object qrProductosPrecio_Unidad: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Precio_Unidad'
      Origin = '"Productos"."Precio_Unidad"'
      currency = True
    end
    object qrProductosExistencia_Medida: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Existencia_Medida'
      Origin = '"Productos"."Existencia_Medida"'
      DisplayFormat = '#,#0.00'
    end
    object qrProductosMaximo: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Maximo'
      Origin = '"Productos"."Maximo"'
      DisplayFormat = '#,#0.00'
    end
  end
  object prProductos: TDataSetProvider
    DataSet = qrProductos
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 144
    Top = 64
  end
  object qrSimilares: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkProductos
    SQL.Strings = (
      'Select  * From "Productos_Similares" '
      'Where "Codigo" = :Codigo'
      'Order By "Similar"')
    UniDirectional = True
    Left = 40
    Top = 112
    ParamData = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    object qrSimilaresCodigo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Origin = '"Productos_Similares"."Codigo"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 25
    end
    object qrSimilaresSimilar: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe seleccionar uno de los productos del listado'
      FieldName = 'Similar'
      Origin = '"Productos_Similares"."Similar"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 25
    end
  end
  object lnkProductos: TDataSource
    DataSet = qrProductos
    Left = 144
    Top = 112
  end
  object qrListadoProductos: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  *'
      'From "Productos" '
      'Where "Status" = 1'
      'Order By  "Descripcion"')
    UniDirectional = True
    Left = 40
    Top = 695
    object qrListadoProductosCodigo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Origin = '"Productos"."Codigo"'
      Size = 25
    end
    object qrListadoProductosDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Productos"."Descripcion"'
      Size = 100
    end
    object qrListadoProductosPresentacion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Presentacion'
      Origin = '"Productos"."Presentacion"'
      Size = 100
    end
    object qrListadoProductosBarra: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Barra'
      Origin = '"Productos"."Barra"'
      Size = 25
    end
    object qrListadoProductosReferencia: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Referencia'
      Origin = '"Productos"."Referencia"'
      Size = 25
    end
    object qrListadoProductosSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Productos"."Secuencia"'
    end
    object qrListadoProductosFabricante: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Fabricante'
      Origin = '"Productos"."Fabricante"'
    end
    object qrListadoProductosDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Departamento'
      Origin = '"Productos"."Departamento"'
    end
    object qrListadoProductosExistencia: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Existencia'
      Origin = '"Productos"."Existencia"'
    end
    object qrListadoProductosCompradas: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Compradas'
      Origin = '"Productos"."Compradas"'
    end
    object qrListadoProductosDespachadas: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Despachadas'
      Origin = '"Productos"."Despachadas"'
    end
    object qrListadoProductosMedida_Compra: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Medida_Compra'
      Origin = '"Productos"."Medida_Compra"'
      Size = 25
    end
    object qrListadoProductosMedida_Venta: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Medida_Venta'
      Origin = '"Productos"."Medida_Venta"'
      Size = 25
    end
    object qrListadoProductosUbicacion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ubicacion'
      Origin = '"Productos"."Ubicacion"'
      Size = 100
    end
    object qrListadoProductosUnidades_Medida_Compra: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Unidades_Medida_Compra'
      Origin = '"Productos"."Unidades_Medida_Compra"'
    end
    object qrListadoProductosUnidades_Medida_Venta: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Unidades_Medida_Venta'
      Origin = '"Productos"."Unidades_Medida_Venta"'
    end
    object qrListadoProductosValor_Beneficio_Contado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_Contado'
      Origin = '"Productos"."Valor_Beneficio_Contado"'
    end
    object qrListadoProductosValor_Beneficio_Credito: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_Credito'
      Origin = '"Productos"."Valor_Beneficio_Credito"'
    end
    object qrListadoProductosVendidas: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Vendidas'
      Origin = '"Productos"."Vendidas"'
    end
    object qrListadoProductosTipo_Beneficio: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Beneficio'
      Origin = '"Productos"."Tipo_Beneficio"'
      Size = 25
    end
    object qrListadoProductosTipo_Inventario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Inventario'
      Origin = '"Productos"."Tipo_Inventario"'
      Size = 25
    end
    object qrListadoProductosAno: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ano'
      Origin = '"Productos"."Ano"'
    end
    object qrListadoProductosColor: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Color'
      Origin = '"Productos"."Color"'
      Size = 25
    end
    object qrListadoProductosModelo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Modelo'
      Origin = '"Productos"."Modelo"'
      Size = 100
    end
    object qrListadoProductosNombre: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Origin = '"Productos"."Nombre"'
      Size = 100
    end
    object qrListadoProductosOrientacion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Orientacion'
      Origin = '"Productos"."Orientacion"'
      Size = 25
    end
    object qrListadoProductosPosicion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Posicion'
      Origin = '"Productos"."Posicion"'
      Size = 25
    end
    object qrListadoProductosLector_Codigo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Lector_Codigo'
      Origin = '"Productos"."Lector_Codigo"'
      Size = 25
    end
    object qrListadoProductosFecha_Registro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Registro'
      Origin = '"Productos"."Fecha_Registro"'
    end
    object qrListadoProductosCategoria: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Categoria'
      Origin = '"Productos"."Categoria"'
    end
    object qrListadoProductosProveedor_Principal: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Proveedor_Principal'
      Origin = '"Productos"."Proveedor_Principal"'
    end
    object qrListadoProductosTipo_Producto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Producto'
      Origin = '"Productos"."Tipo_Producto"'
    end
    object qrListadoProductosMinimo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Minimo'
      Origin = '"Productos"."Minimo"'
    end
    object qrListadoProductosReorden: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Reorden'
      Origin = '"Productos"."Reorden"'
    end
    object qrListadoProductosCuenta_Contable: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cuenta_Contable'
      Origin = '"Productos"."Cuenta_Contable"'
      Size = 25
    end
    object qrListadoProductosMetodo_Calculo_Costo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Metodo_Calculo_Costo'
      Origin = '"Productos"."Metodo_Calculo_Costo"'
      Size = 25
    end
    object qrListadoProductosAplica_Descuento: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Aplica_Descuento'
      Origin = '"Productos"."Aplica_Descuento"'
    end
    object qrListadoProductosPaga_Comision: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Paga_Comision'
      Origin = '"Productos"."Paga_Comision"'
    end
    object qrListadoProductosRequiere_Numero_Serie: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Requiere_Numero_Serie'
      Origin = '"Productos"."Requiere_Numero_Serie"'
    end
    object qrListadoProductosPaga_Impuesto: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Paga_Impuesto'
      Origin = '"Productos"."Paga_Impuesto"'
    end
    object qrListadoProductosRequiere_Fecha_Vencimiento: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Requiere_Fecha_Vencimiento'
      Origin = '"Productos"."Requiere_Fecha_Vencimiento"'
    end
    object qrListadoProductosDevuelto_Compras: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Devuelto_Compras'
      Origin = '"Productos"."Devuelto_Compras"'
    end
    object qrListadoProductosUltima_Compra: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Ultima_Compra'
      Origin = '"Productos"."Ultima_Compra"'
    end
    object qrListadoProductosNumero_Ultima_Compra: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Ultima_Compra'
      Origin = '"Productos"."Numero_Ultima_Compra"'
    end
    object qrListadoProductosDevuelto_Ventas: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Devuelto_Ventas'
      Origin = '"Productos"."Devuelto_Ventas"'
    end
    object qrListadoProductosUltima_Venta: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Ultima_Venta'
      Origin = '"Productos"."Ultima_Venta"'
    end
    object qrListadoProductosNumero_Ultima_Factura: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Ultima_Factura'
      Origin = '"Productos"."Numero_Ultima_Factura"'
    end
    object qrListadoProductosUltima_Salida: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Ultima_Salida'
      Origin = '"Productos"."Ultima_Salida"'
    end
    object qrListadoProductosNumero_Ultima_Salida: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Ultima_Salida'
      Origin = '"Productos"."Numero_Ultima_Salida"'
    end
    object qrListadoProductosEnPedidos: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'EnPedidos'
      Origin = '"Productos"."EnPedidos"'
    end
    object qrListadoProductosEnTransito: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'EnTransito'
      Origin = '"Productos"."EnTransito"'
    end
    object qrListadoProductosStatus: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Productos"."Status"'
    end
    object qrListadoProductosUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Productos"."Usuario"'
      Size = 100
    end
    object qrListadoProductosDevuelto_Despacho: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Devuelto_Despacho'
      Origin = '"Productos"."Devuelto_Despacho"'
    end
    object qrListadoProductosEditar_Existencia: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Editar_Existencia'
      Origin = '"Productos"."Editar_Existencia"'
    end
    object qrListadoProductosMarca: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Marca'
      Origin = '"Productos"."Marca"'
      Size = 100
    end
    object qrListadoProductosProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Productos"."Proceso"'
      Size = 25
    end
    object qrListadoProductosFoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Foto'
      Origin = '"Productos"."Foto"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qrListadoProductosUltimo_Precio_Compra: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Ultimo_Precio_Compra'
      Origin = '"Productos"."Ultimo_Precio_Compra"'
    end
    object qrListadoProductosCosto_Standar: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Costo_Standar'
      Origin = '"Productos"."Costo_Standar"'
    end
    object qrListadoProductosCosto_Promedio: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Costo_Promedio'
      Origin = '"Productos"."Costo_Promedio"'
    end
    object qrListadoProductosPrecio_Venta_Contado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Contado'
      Origin = '"Productos"."Precio_Venta_Contado"'
    end
    object qrListadoProductosPrecio_Venta_Credito: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Credito'
      Origin = '"Productos"."Precio_Venta_Credito"'
    end
    object qrListadoProductosPrecio_Venta_Minimo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Minimo'
      Origin = '"Productos"."Precio_Venta_Minimo"'
    end
    object qrListadoProductosPrecio_Venta_Por_Mayor_Contado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Por_Mayor_Contado'
      Origin = '"Productos"."Precio_Venta_Por_Mayor_Contado"'
    end
    object qrListadoProductosPrecio_Venta_Por_Mayor_Credito: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Por_Mayor_Credito'
      Origin = '"Productos"."Precio_Venta_Por_Mayor_Credito"'
    end
    object qrListadoProductosPrecio_Unidad: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Unidad'
      Origin = '"Productos"."Precio_Unidad"'
    end
    object qrListadoProductosExistencia_Medida: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Existencia_Medida'
      Origin = '"Productos"."Existencia_Medida"'
    end
  end
  object qrDepartamentos: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Departamentos"'
      'Order By "Descripcion"')
    UniDirectional = True
    Left = 40
    Top = 358
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
    object qrDepartamentosID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Departamentos"."ID"'
      Size = 50
    end
  end
  object prDepartamentos: TDataSetProvider
    DataSet = qrDepartamentos
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 144
    Top = 358
  end
  object qrCategoria: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Categorias"'
      'Order By "Descripcion"')
    UniDirectional = True
    Left = 40
    Top = 406
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
    Top = 406
  end
  object qrTipos_Productos: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Tipos_Productos"'
      'Order By "Descripcion"')
    UniDirectional = True
    Left = 40
    Top = 454
    object qrTipos_ProductosNumero: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero'
      Origin = '"Tipos_Productos"."Numero"'
      DisplayFormat = '000000'
    end
    object qrTipos_ProductosDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir una Descripci'#243'n para el Tipo de Producto'
      FieldName = 'Descripcion'
      Origin = '"Tipos_Productos"."Descripcion"'
      Size = 100
    end
    object qrTipos_ProductosUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Tipos_Productos"."Usuario"'
      Size = 100
    end
  end
  object prTipos_Productos: TDataSetProvider
    DataSet = qrTipos_Productos
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 144
    Top = 454
  end
  object qrStatus: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Status"'
      'Order By "Status"')
    UniDirectional = True
    Left = 40
    Top = 502
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
    Top = 502
  end
  object qrFabricante: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Fabricantes"'
      'Order By "Nombre"')
    UniDirectional = True
    Left = 40
    Top = 550
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
    Left = 144
    Top = 550
  end
  object qrProveedores: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Proveedores"'
      'Order By "Nombre"')
    UniDirectional = True
    Left = 40
    Top = 598
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
    object qrProveedoresLimite_Credito: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Limite_Credito'
      Origin = '"Proveedores"."Limite_Credito"'
      currency = True
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
    object qrProveedoresDescuento_Asignado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Asignado'
      Origin = '"Proveedores"."Descuento_Asignado"'
      DisplayFormat = '#,#0.00'
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
    object qrProveedoresBalance_Actual: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Balance_Actual'
      Origin = '"Proveedores"."Balance_Actual"'
      currency = True
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
    object qrProveedoresCalculo_Impuesto: TSmallintField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Calculo_Impuesto'
      Origin = '"Proveedores"."Calculo_Impuesto"'
    end
  end
  object prProveedores: TDataSetProvider
    DataSet = qrProveedores
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 144
    Top = 598
  end
  object qrClientes: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Clientes"'
      'Where "Cedula_Rnc_Pasaporte" = :Cedula_Rnc_Pasaporte'
      'Order By "Nombre", "Apellido"')
    UniDirectional = True
    Left = 244
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'Cedula_Rnc_Pasaporte'
        ParamType = ptInput
      end>
    object qrClientesCedula_Rnc_Pasaporte: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir el N'#250'mero de C'#233'dula, RNC o Pasaporte del Cliente'
      FieldName = 'Cedula_Rnc_Pasaporte'
      Origin = '"Clientes"."Cedula_Rnc_Pasaporte"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object qrClientesLimite_Credito: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Limite_Credito'
      Origin = '"Clientes"."Limite_Credito"'
      currency = True
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
    object qrClientesDescuento_Asignado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Asignado'
      Origin = '"Clientes"."Descuento_Asignado"'
      DisplayFormat = '#,#0.00'
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
    object qrClientesBalance_Actual: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Balance_Actual'
      Origin = '"Clientes"."Balance_Actual"'
      currency = True
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
    object qrClientesCliente_Credito: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente_Credito'
      Origin = '"Clientes"."Cliente_Credito"'
    end
  end
  object prClientes: TDataSetProvider
    DataSet = qrClientes
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 344
    Top = 64
  end
  object SrchQ2: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    Left = 1152
    Top = 56
  end
  object SrchPr2: TDataSetProvider
    DataSet = SrchQ2
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 1248
    Top = 56
  end
  object qrTerminos: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Terminos"'
      'Order By "Descripcion"')
    UniDirectional = True
    Left = 40
    Top = 747
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
    Top = 747
  end
  object qrVencimientos: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkProductos
    SQL.Strings = (
      'Select  * From "Vencimientos" '
      'Where "Codigo" = :Codigo'
      'Order By "Mes", "Ano"')
    Left = 40
    Top = 161
    ParamData = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    object qrVencimientosCodigo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Origin = '"Vencimientos"."Codigo"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 25
    end
    object qrVencimientosMes: TSmallintField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Mes'
      Origin = '"Vencimientos"."Mes"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = '00'
      EditFormat = '00'
    end
    object qrVencimientosAno: TSmallintField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Ano'
      Origin = '"Vencimientos"."Ano"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = '0000'
      EditFormat = '0000'
    end
    object qrVencimientosCantidad: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Cantidad'
      Origin = '"Vencimientos"."Cantidad"'
      DisplayFormat = '#,#.00'
    end
  end
  object qrSalidas_Inventario: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Salidas_Inventario"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 244
    Top = 111
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrSalidas_InventarioNumero: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero'
      Origin = '"Salidas_Inventario"."Numero"'
      DisplayFormat = #39'SI'#39'0000000000'
    end
    object qrSalidas_InventarioProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Salidas_Inventario"."Proceso"'
      Size = 25
    end
    object qrSalidas_InventarioCliente: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe Seleccionar un Cliente'
      DefaultExpression = #39'000-0000000-0'#39
      FieldName = 'Cliente'
      Origin = '"Salidas_Inventario"."Cliente"'
      Size = 25
    end
    object qrSalidas_InventarioNombre_Cliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Cliente'
      Origin = '"Salidas_Inventario"."Nombre_Cliente"'
      Size = 100
    end
    object qrSalidas_InventarioFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Salidas_Inventario"."Fecha"'
    end
    object qrSalidas_InventarioHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Salidas_Inventario"."Hora"'
    end
    object qrSalidas_InventarioConcepto_Salida: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Salida de Inventario'#39
      FieldName = 'Concepto_Salida'
      Origin = '"Salidas_Inventario"."Concepto_Salida"'
      Size = 100
    end
    object qrSalidas_InventarioReferencia: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Referencia'
      Origin = '"Salidas_Inventario"."Referencia"'
      Size = 25
    end
    object qrSalidas_InventarioTotal_Costo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Origin = '"Salidas_Inventario"."Total_Costo"'
      currency = True
    end
    object qrSalidas_InventarioTotal_Salida: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Salida'
      Origin = '"Salidas_Inventario"."Total_Salida"'
      currency = True
    end
    object qrSalidas_InventarioComentario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario'
      Origin = '"Salidas_Inventario"."Comentario"'
      Size = 255
    end
    object qrSalidas_InventarioValidado: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'FALSE'#39
      FieldName = 'Validado'
      Origin = '"Salidas_Inventario"."Validado"'
    end
    object qrSalidas_InventarioFecha_Validacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Validacion'
      Origin = '"Salidas_Inventario"."Fecha_Validacion"'
    end
    object qrSalidas_InventarioCerrado: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'FALSE'#39
      FieldName = 'Cerrado'
      Origin = '"Salidas_Inventario"."Cerrado"'
    end
    object qrSalidas_InventarioFecha_Cierre: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Cierre'
      Origin = '"Salidas_Inventario"."Fecha_Cierre"'
    end
    object qrSalidas_InventarioUsuario: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Usuario'
      Origin = '"Salidas_Inventario"."Usuario"'
      Size = 100
    end
    object qrSalidas_InventarioAlmacen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Origin = '"Salidas_Inventario"."Almacen"'
      Size = 25
    end
    object qrSalidas_InventarioCondicion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Condicion'
      Origin = '"Salidas_Inventario"."Condicion"'
      Size = 25
    end
    object qrSalidas_InventarioSubTotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SubTotal'
      Origin = '"Salidas_Inventario"."SubTotal"'
      currency = True
    end
    object qrSalidas_InventarioTotalNeto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TotalNeto'
      Origin = '"Salidas_Inventario"."TotalNeto"'
      currency = True
    end
    object qrSalidas_InventarioImpuesto_Global: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto_Global'
      Origin = '"Salidas_Inventario"."Impuesto_Global"'
    end
    object qrSalidas_InventarioValor_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Salidas_Inventario"."Valor_Impuesto"'
    end
    object qrSalidas_InventarioValor_Impuesto_Detalle: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto_Detalle'
      Origin = '"Salidas_Inventario"."Valor_Impuesto_Detalle"'
    end
    object qrSalidas_InventarioTotal_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Salidas_Inventario"."Total_Impuesto"'
      currency = True
    end
    object qrSalidas_InventarioDescuento_Global: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Global'
      Origin = '"Salidas_Inventario"."Descuento_Global"'
    end
    object qrSalidas_InventarioValor_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Salidas_Inventario"."Valor_Descuento"'
    end
    object qrSalidas_InventarioValor_Descuento_Detalle: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento_Detalle'
      Origin = '"Salidas_Inventario"."Valor_Descuento_Detalle"'
    end
    object qrSalidas_InventarioTotal_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Salidas_Inventario"."Total_Descuento"'
      currency = True
    end
    object qrSalidas_InventarioTerminos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Terminos'
      Origin = '"Salidas_Inventario"."Terminos"'
    end
    object qrSalidas_InventarioVencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento'
      Origin = '"Salidas_Inventario"."Vencimiento"'
    end
    object qrSalidas_InventarioPagado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado'
      Origin = '"Salidas_Inventario"."Pagado"'
      currency = True
    end
    object qrSalidas_InventarioPendiente: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Origin = '"Salidas_Inventario"."Pendiente"'
      currency = True
    end
    object qrSalidas_InventarioUltimoPago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'UltimoPago'
      Origin = '"Salidas_Inventario"."UltimoPago"'
    end
    object qrSalidas_InventarioTotal_Efectivo_Recibido: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo_Recibido'
      Origin = '"Salidas_Inventario"."Total_Efectivo_Recibido"'
      currency = True
    end
    object qrSalidas_InventarioTotal_Efectivo_Devuelto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo_Devuelto'
      Origin = '"Salidas_Inventario"."Total_Efectivo_Devuelto"'
      currency = True
    end
    object qrSalidas_InventarioStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Salidas_Inventario"."Status"'
      Size = 15
    end
    object qrSalidas_InventarioTipo_Salida: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Salida'
      Origin = '"Salidas_Inventario"."Tipo_Salida"'
      Size = 15
    end
    object qrSalidas_InventarioVendedor: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Vendedor'
      Origin = '"Salidas_Inventario"."Vendedor"'
      Size = 25
    end
    object qrSalidas_InventarioNombre_Vendedor: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Vendedor'
      Origin = '"Salidas_Inventario"."Nombre_Vendedor"'
      Size = 100
    end
    object qrSalidas_InventarioTotal_Restante: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Restante'
      Origin = '"Salidas_Inventario"."Total_Restante"'
      currency = True
    end
    object qrSalidas_InventarioConduce: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Conduce'
      Origin = '"Salidas_Inventario"."Conduce"'
      Size = 25
    end
    object qrSalidas_InventarioDebitado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Debitado'
      Origin = '"Salidas_Inventario"."Debitado"'
      currency = True
    end
    object qrSalidas_InventarioAcreditado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Acreditado'
      Origin = '"Salidas_Inventario"."Acreditado"'
      currency = True
    end
    object qrSalidas_InventarioBalance: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Origin = '"Salidas_Inventario"."Balance"'
      currency = True
    end
    object qrSalidas_InventarioFecha_Ultimo_Pago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Ultimo_Pago'
      Origin = '"Salidas_Inventario"."Fecha_Ultimo_Pago"'
    end
    object qrSalidas_InventarioTotal_Seriales: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Seriales'
      Origin = '"Salidas_Inventario"."Total_Seriales"'
    end
    object qrSalidas_InventarioSeriales_Registrados: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Seriales_Registrados'
      Origin = '"Salidas_Inventario"."Seriales_Registrados"'
    end
    object qrSalidas_InventarioID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Salidas_Inventario"."ID"'
      Size = 50
    end
  end
  object prSalidas_Inventario: TDataSetProvider
    DataSet = qrSalidas_Inventario
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poUseQuoteChar]
    BeforeUpdateRecord = prSalidas_InventarioBeforeUpdateRecord
    Left = 344
    Top = 111
  end
  object qrDetalles_Salida: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkSalidas_Inventario
    SQL.Strings = (
      'Select  * From  "Detalles_Salida"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 244
    Top = 159
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrDetalles_SalidaProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalles_Salida"."Proceso"'
      Size = 25
    end
    object qrDetalles_SalidaCodigo: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir un C'#243'digo de Producto'
      FieldName = 'Codigo'
      Origin = '"Detalles_Salida"."Codigo"'
      Size = 25
    end
    object qrDetalles_SalidaCodigo_Real: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo_Real'
      Origin = '"Detalles_Salida"."Codigo_Real"'
      Size = 25
    end
    object qrDetalles_SalidaSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Detalles_Salida"."Secuencia"'
      DisplayFormat = '#,#0'
    end
    object qrDetalles_SalidaDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Detalles_Salida"."Descripcion"'
      Size = 100
    end
    object qrDetalles_SalidaCategoria: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Categoria'
      Origin = '"Detalles_Salida"."Categoria"'
    end
    object qrDetalles_SalidaFabricante: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Fabricante'
      Origin = '"Detalles_Salida"."Fabricante"'
    end
    object qrDetalles_SalidaDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Departamento'
      Origin = '"Detalles_Salida"."Departamento"'
    end
    object qrDetalles_SalidaTipo_Producto: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Tipo_Producto'
      Origin = '"Detalles_Salida"."Tipo_Producto"'
    end
    object qrDetalles_SalidaCosto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Costo'
      Origin = '"Detalles_Salida"."Costo"'
      currency = True
    end
    object qrDetalles_SalidaPrecio: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Precio'
      Origin = '"Detalles_Salida"."Precio"'
      currency = True
    end
    object qrDetalles_SalidaCantidad: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Cantidad'
      Origin = '"Detalles_Salida"."Cantidad"'
      DisplayFormat = '#,#0.00'
    end
    object qrDetalles_SalidaTotal_Costo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Origin = '"Detalles_Salida"."Total_Costo"'
      currency = True
    end
    object qrDetalles_SalidaTotal_Precio: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Precio'
      Origin = '"Detalles_Salida"."Total_Precio"'
      currency = True
    end
    object qrDetalles_SalidaCliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Detalles_Salida"."Cliente"'
      Size = 25
    end
    object qrDetalles_SalidaFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Detalles_Salida"."Fecha"'
    end
    object qrDetalles_SalidaHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Detalles_Salida"."Hora"'
    end
    object qrDetalles_SalidaUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Detalles_Salida"."Usuario"'
      Size = 100
    end
    object qrDetalles_SalidaMes: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Mes'
      Origin = '"Detalles_Salida"."Mes"'
      DisplayFormat = '00'
      EditFormat = '00'
      MaxValue = 12
    end
    object qrDetalles_SalidaAno: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ano'
      Origin = '"Detalles_Salida"."Ano"'
      DisplayFormat = '0000'
      EditFormat = '0000'
    end
    object qrDetalles_SalidaCantidad_Devuelto: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Cantidad_Devuelto'
      Origin = '"Detalles_Salida"."Cantidad_Devuelto"'
    end
    object qrDetalles_SalidaContenido: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Contenido'
      Origin = '"Detalles_Salida"."Contenido"'
      DisplayFormat = '#,0'
    end
    object qrDetalles_SalidaAlmacen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Origin = '"Detalles_Salida"."Almacen"'
      Size = 25
    end
    object qrDetalles_SalidaPrecio_Real: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Real'
      Origin = '"Detalles_Salida"."Precio_Real"'
    end
    object qrDetalles_SalidaPrecio_Venta: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta'
      Origin = '"Detalles_Salida"."Precio_Venta"'
    end
    object qrDetalles_SalidaPrecio_Minimo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Minimo'
      Origin = '"Detalles_Salida"."Precio_Minimo"'
    end
    object qrDetalles_SalidaImpuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto'
      Origin = '"Detalles_Salida"."Impuesto"'
    end
    object qrDetalles_SalidaDescuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento'
      Origin = '"Detalles_Salida"."Descuento"'
    end
    object qrDetalles_SalidaValor_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Detalles_Salida"."Valor_Impuesto"'
    end
    object qrDetalles_SalidaValor_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Detalles_Salida"."Valor_Descuento"'
    end
    object qrDetalles_SalidaTotal_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Detalles_Salida"."Total_Impuesto"'
    end
    object qrDetalles_SalidaTotal_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Detalles_Salida"."Total_Descuento"'
    end
    object qrDetalles_SalidaTipo_Precio: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Precio'
      Origin = '"Detalles_Salida"."Tipo_Precio"'
      Size = 25
    end
    object qrDetalles_SalidaRegistro: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Registro'
      Origin = '"Detalles_Salida"."Registro"'
    end
    object qrDetalles_SalidaRequiere_Serial: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Requiere_Serial'
      Origin = '"Detalles_Salida"."Requiere_Serial"'
    end
    object qrDetalles_SalidaID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Detalles_Salida"."ID"'
      Size = 50
    end
  end
  object lnkSalidas_Inventario: TDataSource
    DataSet = qrSalidas_Inventario
    Left = 344
    Top = 159
  end
  object prListadoProductos: TDataSetProvider
    DataSet = qrListadoProductos
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 144
    Top = 695
  end
  object spUpdate_Vencimiento_Producto: TIBStoredProc
    Database = InfoDataBase
    Transaction = InfoTransaction
    StoredProcName = 'Update_Vencimiento_Producto'
    Left = 766
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO_PRODUCTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MES_PRODUCTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ANIO_PRODUCTO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'CANTIDAD_PRODUCTO'
        ParamType = ptInput
      end>
  end
  object qrListado_Clientes: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Clientes"'
      'Where "Status" = '#39'ACTIVO'#39
      'Order By "NombreCompleto"')
    UniDirectional = True
    Left = 244
    Top = 255
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
    object qrListado_ClientesLimite_Credito: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Limite_Credito'
      Origin = '"Clientes"."Limite_Credito"'
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
    object qrListado_ClientesDescuento_Asignado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Asignado'
      Origin = '"Clientes"."Descuento_Asignado"'
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
    object qrListado_ClientesBalance_Actual: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Actual'
      Origin = '"Clientes"."Balance_Actual"'
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
    object qrListado_ClientesCliente_Credito: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente_Credito'
      Origin = '"Clientes"."Cliente_Credito"'
    end
  end
  object prListado_Clientes: TDataSetProvider
    DataSet = qrListado_Clientes
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 344
    Top = 255
  end
  object qrCompra_Productos: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Compra_Productos"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 244
    Top = 303
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrCompra_ProductosNumero: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero'
      Origin = '"Compra_Productos"."Numero"'
      DisplayFormat = #39'CP'#39'0000000000'
    end
    object qrCompra_ProductosProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Compra_Productos"."Proceso"'
      Size = 25
    end
    object qrCompra_ProductosNombre_Proveedor: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Proveedor'
      Origin = '"Compra_Productos"."Nombre_Proveedor"'
      Size = 100
    end
    object qrCompra_ProductosCondicion: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Cr'#233'dito'#39
      FieldName = 'Condicion'
      Origin = '"Compra_Productos"."Condicion"'
      Size = 25
    end
    object qrCompra_ProductosFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Compra_Productos"."Fecha"'
    end
    object qrCompra_ProductosHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Compra_Productos"."Hora"'
    end
    object qrCompra_ProductosConcepto_Compra: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto_Compra'
      Origin = '"Compra_Productos"."Concepto_Compra"'
      Size = 100
    end
    object qrCompra_ProductosReferencia: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Referencia'
      Origin = '"Compra_Productos"."Referencia"'
      Size = 25
    end
    object qrCompra_ProductosSubTotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SubTotal'
      Origin = '"Compra_Productos"."SubTotal"'
      currency = True
    end
    object qrCompra_ProductosTotalNeto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TotalNeto'
      Origin = '"Compra_Productos"."TotalNeto"'
      currency = True
    end
    object qrCompra_ProductosComentario: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Ninguno'#39
      FieldName = 'Comentario'
      Origin = '"Compra_Productos"."Comentario"'
      Size = 255
    end
    object qrCompra_ProductosFecha_Validacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Validacion'
      Origin = '"Compra_Productos"."Fecha_Validacion"'
    end
    object qrCompra_ProductosFecha_Cierre: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Cierre'
      Origin = '"Compra_Productos"."Fecha_Cierre"'
    end
    object qrCompra_ProductosUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Compra_Productos"."Usuario"'
      Size = 100
    end
    object qrCompra_ProductosValidado: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'FALSE'#39
      FieldName = 'Validado'
      Origin = '"Compra_Productos"."Validado"'
    end
    object qrCompra_ProductosCerrado: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'FALSE'#39
      FieldName = 'Cerrado'
      Origin = '"Compra_Productos"."Cerrado"'
    end
    object qrCompra_ProductosImpuesto_Global: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto_Global'
      Origin = '"Compra_Productos"."Impuesto_Global"'
      DisplayFormat = '#,#0.00'
    end
    object qrCompra_ProductosValor_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Compra_Productos"."Valor_Impuesto"'
      currency = True
    end
    object qrCompra_ProductosValor_Impuesto_Detalle: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto_Detalle'
      Origin = '"Compra_Productos"."Valor_Impuesto_Detalle"'
      currency = True
    end
    object qrCompra_ProductosTotal_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Compra_Productos"."Total_Impuesto"'
      currency = True
    end
    object qrCompra_ProductosDescuento_Global: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Global'
      Origin = '"Compra_Productos"."Descuento_Global"'
      DisplayFormat = '#,#0.00'
    end
    object qrCompra_ProductosValor_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Compra_Productos"."Valor_Descuento"'
      currency = True
    end
    object qrCompra_ProductosValor_Descuento_Detalle: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento_Detalle'
      Origin = '"Compra_Productos"."Valor_Descuento_Detalle"'
      currency = True
    end
    object qrCompra_ProductosTotal_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Compra_Productos"."Total_Descuento"'
      currency = True
    end
    object qrCompra_ProductosTerminos: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Terminos'
      Origin = '"Compra_Productos"."Terminos"'
    end
    object qrCompra_ProductosVencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento'
      Origin = '"Compra_Productos"."Vencimiento"'
    end
    object qrCompra_ProductosPagado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado'
      Origin = '"Compra_Productos"."Pagado"'
      currency = True
    end
    object qrCompra_ProductosPendiente: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Origin = '"Compra_Productos"."Pendiente"'
      currency = True
    end
    object qrCompra_ProductosUltimoPago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'UltimoPago'
      Origin = '"Compra_Productos"."UltimoPago"'
    end
    object qrCompra_ProductosProveedor: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Proveedor'
      Origin = '"Compra_Productos"."Proveedor"'
    end
    object qrCompra_ProductosTipo_NCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_NCF'
      Origin = '"Compra_Productos"."Tipo_NCF"'
      Size = 2
    end
    object qrCompra_ProductosNCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCF'
      Origin = '"Compra_Productos"."NCF"'
      Size = 100
    end
    object qrCompra_ProductosOrden_Compra_Numero: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Orden_Compra_Numero'
      Origin = '"Compra_Productos"."Orden_Compra_Numero"'
    end
    object qrCompra_ProductosProceso_Orden_Compra: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39#39
      FieldName = 'Proceso_Orden_Compra'
      Origin = '"Compra_Productos"."Proceso_Orden_Compra"'
      Size = 25
    end
    object qrCompra_ProductosTotal_Seriales: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Total_Seriales'
      Origin = '"Compra_Productos"."Total_Seriales"'
    end
    object qrCompra_ProductosSeriales_Registrados: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Seriales_Registrados'
      Origin = '"Compra_Productos"."Seriales_Registrados"'
    end
    object qrCompra_ProductosAlmacen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Origin = '"Compra_Productos"."Almacen"'
      Size = 25
    end
    object qrCompra_ProductosID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Compra_Productos"."ID"'
      Size = 50
    end
    object qrCompra_ProductosDescuento_Proveedor: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Proveedor'
      Origin = '"Compra_Productos"."Descuento_Proveedor"'
    end
    object qrCompra_ProductosApertura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Apertura'
      Origin = '"Compra_Productos"."Apertura"'
      Size = 25
    end
    object qrCompra_ProductosStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Compra_Productos"."Status"'
      Size = 15
    end
  end
  object prCompra_Productos: TDataSetProvider
    DataSet = qrCompra_Productos
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poUseQuoteChar]
    BeforeUpdateRecord = prCompra_ProductosBeforeUpdateRecord
    Left = 344
    Top = 303
  end
  object qrDetalles_Compra: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkCompra_Productos
    SQL.Strings = (
      'Select  * From  "Detalles_Compra"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 244
    Top = 351
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrDetalles_CompraProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalles_Compra"."Proceso"'
      Size = 25
    end
    object qrDetalles_CompraCodigo: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir un C'#243'digo de Producto'
      FieldName = 'Codigo'
      Origin = '"Detalles_Compra"."Codigo"'
      Size = 25
    end
    object qrDetalles_CompraCodigo_Real: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo_Real'
      Origin = '"Detalles_Compra"."Codigo_Real"'
      Size = 25
    end
    object qrDetalles_CompraSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Detalles_Compra"."Secuencia"'
      DisplayFormat = '#,#0'
    end
    object qrDetalles_CompraDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Detalles_Compra"."Descripcion"'
      Size = 100
    end
    object qrDetalles_CompraCategoria: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Categoria'
      Origin = '"Detalles_Compra"."Categoria"'
    end
    object qrDetalles_CompraFabricante: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Fabricante'
      Origin = '"Detalles_Compra"."Fabricante"'
    end
    object qrDetalles_CompraDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Departamento'
      Origin = '"Detalles_Compra"."Departamento"'
    end
    object qrDetalles_CompraTipo_Producto: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Tipo_Producto'
      Origin = '"Detalles_Compra"."Tipo_Producto"'
    end
    object qrDetalles_CompraCosto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Costo'
      Origin = '"Detalles_Compra"."Costo"'
      currency = True
    end
    object qrDetalles_CompraPrecio_Lista: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Lista'
      Origin = '"Detalles_Compra"."Precio_Lista"'
      currency = True
    end
    object qrDetalles_CompraCantidad: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Cantidad'
      Origin = '"Detalles_Compra"."Cantidad"'
      DisplayFormat = '#,#0.00'
    end
    object qrDetalles_CompraTotal_Costo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Origin = '"Detalles_Compra"."Total_Costo"'
      currency = True
    end
    object qrDetalles_CompraProveedor: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Proveedor'
      Origin = '"Detalles_Compra"."Proveedor"'
    end
    object qrDetalles_CompraFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Detalles_Compra"."Fecha"'
    end
    object qrDetalles_CompraHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Detalles_Compra"."Hora"'
    end
    object qrDetalles_CompraUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Detalles_Compra"."Usuario"'
      Size = 100
    end
    object qrDetalles_CompraMes: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Mes'
      Origin = '"Detalles_Compra"."Mes"'
      DisplayFormat = '00'
      MaxValue = 12
    end
    object qrDetalles_CompraAno: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ano'
      Origin = '"Detalles_Compra"."Ano"'
      DisplayFormat = '0000'
    end
    object qrDetalles_CompraImpuesto: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Impuesto'
      Origin = '"Detalles_Compra"."Impuesto"'
      DisplayFormat = '#,#0.00'
    end
    object qrDetalles_CompraDescuento: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Descuento'
      Origin = '"Detalles_Compra"."Descuento"'
      DisplayFormat = '#,#0.00'
    end
    object qrDetalles_CompraValor_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Detalles_Compra"."Valor_Impuesto"'
      currency = True
    end
    object qrDetalles_CompraValor_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Detalles_Compra"."Valor_Descuento"'
      currency = True
    end
    object qrDetalles_CompraTotal_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Detalles_Compra"."Total_Impuesto"'
      currency = True
    end
    object qrDetalles_CompraTotal_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Detalles_Compra"."Total_Descuento"'
      currency = True
    end
    object qrDetalles_CompraTotal_Precio: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Precio'
      Origin = '"Detalles_Compra"."Total_Precio"'
      currency = True
    end
    object qrDetalles_CompraCantidad_Devuelto: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Cantidad_Devuelto'
      Origin = '"Detalles_Compra"."Cantidad_Devuelto"'
      DisplayFormat = '#,#0.00'
    end
    object qrDetalles_CompraTipo_Beneficio: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Porcentual'#39
      FieldName = 'Tipo_Beneficio'
      Origin = '"Detalles_Compra"."Tipo_Beneficio"'
      Size = 15
    end
    object qrDetalles_CompraValor_Beneficio_PMayor_Contado: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Valor_Beneficio_PMayor_Contado'
      Origin = '"Detalles_Compra"."Valor_Beneficio_PMayor_Contado"'
    end
    object qrDetalles_CompraValor_Beneficio_PMayor_Credito: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Valor_Beneficio_PMayor_Credito'
      Origin = '"Detalles_Compra"."Valor_Beneficio_PMayor_Credito"'
    end
    object qrDetalles_CompraValor_Beneficio_Detalle_Contado: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Valor_Beneficio_Detalle_Contado'
      Origin = '"Detalles_Compra"."Valor_Beneficio_Detalle_Contado"'
    end
    object qrDetalles_CompraValor_Beneficio_Detalle_Credito: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Valor_Beneficio_Detalle_Credito'
      Origin = '"Detalles_Compra"."Valor_Beneficio_Detalle_Credito"'
    end
    object qrDetalles_CompraPrecio_Venta_Por_Mayor_Contado: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Precio_Venta_Por_Mayor_Contado'
      Origin = '"Detalles_Compra"."Precio_Venta_Por_Mayor_Contado"'
      currency = True
    end
    object qrDetalles_CompraPrecio_Venta_Por_Mayor_Credito: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Precio_Venta_Por_Mayor_Credito'
      Origin = '"Detalles_Compra"."Precio_Venta_Por_Mayor_Credito"'
      currency = True
    end
    object qrDetalles_CompraPrecio_Venta_Detalle_Contado: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Precio_Venta_Detalle_Contado'
      Origin = '"Detalles_Compra"."Precio_Venta_Detalle_Contado"'
      currency = True
    end
    object qrDetalles_CompraPrecio_Venta_Detalle_Credito: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Precio_Venta_Detalle_Credito'
      Origin = '"Detalles_Compra"."Precio_Venta_Detalle_Credito"'
      currency = True
    end
    object qrDetalles_CompraPrecio_Unidad: TFloatField
      FieldName = 'Precio_Unidad'
      Origin = '"Detalles_Compra"."Precio_Unidad"'
    end
    object qrDetalles_CompraPrecio_Minimo: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Precio_Minimo'
      Origin = '"Detalles_Compra"."Precio_Minimo"'
      currency = True
    end
    object qrDetalles_CompraContenido: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Contenido'
      Origin = '"Detalles_Compra"."Contenido"'
      DisplayFormat = '#,0'
    end
    object qrDetalles_CompraRegistro_Compra: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Registro_Compra'
      Origin = '"Detalles_Compra"."Registro_Compra"'
    end
    object qrDetalles_CompraUso_Inmediato: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Uso_Inmediato'
      Origin = '"Detalles_Compra"."Uso_Inmediato"'
    end
    object qrDetalles_CompraCantidad_Despachada: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad_Despachada'
      Origin = '"Detalles_Compra"."Cantidad_Despachada"'
      DisplayFormat = '#,0'
    end
    object qrDetalles_CompraConcepto_Uso: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Despacho de almacen'#39
      FieldName = 'Concepto_Uso'
      Origin = '"Detalles_Compra"."Concepto_Uso"'
      Size = 255
    end
    object qrDetalles_CompraRequiere_Serial: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Requiere_Serial'
      Origin = '"Detalles_Compra"."Requiere_Serial"'
    end
    object qrDetalles_CompraAlmacen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Origin = '"Detalles_Compra"."Almacen"'
      Size = 25
    end
    object qrDetalles_CompraID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Detalles_Compra"."ID"'
      Size = 50
    end
  end
  object lnkCompra_Productos: TDataSource
    DataSet = qrCompra_Productos
    Left = 344
    Top = 351
  end
  object spInsert_Vencimiento_Producto: TIBStoredProc
    Database = InfoDataBase
    Transaction = InfoTransaction
    StoredProcName = 'Insert_Vencimiento_Producto'
    Left = 766
    Top = 56
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO_PRODUCTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MES_PRODUCTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ANIO_PRODUCTO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'CANTIDAD_PRODUCTO'
        ParamType = ptInput
      end>
  end
  object qrFacturas: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Facturas"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 244
    Top = 503
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrFacturasNumero: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero'
      Origin = '"Facturas"."Numero"'
      DisplayFormat = #39'F'#39'0000000000'
    end
    object qrFacturasProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Facturas"."Proceso"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 25
    end
    object qrFacturasNombre_Cliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Cliente'
      Origin = '"Facturas"."Nombre_Cliente"'
      Size = 100
    end
    object qrFacturasCondicion: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Contado'#39
      FieldName = 'Condicion'
      Origin = '"Facturas"."Condicion"'
      Size = 25
    end
    object qrFacturasFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Facturas"."Fecha"'
    end
    object qrFacturasHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Facturas"."Hora"'
    end
    object qrFacturasConcepto_Factura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto_Factura'
      Origin = '"Facturas"."Concepto_Factura"'
      Size = 100
    end
    object qrFacturasReferencia: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Referencia'
      Origin = '"Facturas"."Referencia"'
      Size = 25
    end
    object qrFacturasSubTotal: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'SubTotal'
      Origin = '"Facturas"."SubTotal"'
      currency = True
    end
    object qrFacturasTotal_Costo: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Costo'
      Origin = '"Facturas"."Total_Costo"'
      currency = True
    end
    object qrFacturasTotalNeto: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'TotalNeto'
      Origin = '"Facturas"."TotalNeto"'
      currency = True
    end
    object qrFacturasComentario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario'
      Origin = '"Facturas"."Comentario"'
      Size = 255
    end
    object qrFacturasFecha_Validacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Validacion'
      Origin = '"Facturas"."Fecha_Validacion"'
    end
    object qrFacturasFecha_Cierre: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Cierre'
      Origin = '"Facturas"."Fecha_Cierre"'
    end
    object qrFacturasUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Facturas"."Usuario"'
      Size = 100
    end
    object qrFacturasValidado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Validado'
      Origin = '"Facturas"."Validado"'
    end
    object qrFacturasCerrado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Cerrado'
      Origin = '"Facturas"."Cerrado"'
    end
    object qrFacturasImpuesto_Global: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Impuesto_Global'
      Origin = '"Facturas"."Impuesto_Global"'
      DisplayFormat = '#,#0.00'
    end
    object qrFacturasValor_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Valor_Impuesto'
      Origin = '"Facturas"."Valor_Impuesto"'
      currency = True
    end
    object qrFacturasValor_Impuesto_Detalle: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Valor_Impuesto_Detalle'
      Origin = '"Facturas"."Valor_Impuesto_Detalle"'
      currency = True
    end
    object qrFacturasTotal_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Total_Impuesto'
      Origin = '"Facturas"."Total_Impuesto"'
      currency = True
    end
    object qrFacturasDescuento_Global: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Descuento_Global'
      Origin = '"Facturas"."Descuento_Global"'
      DisplayFormat = '#,#0.00'
    end
    object qrFacturasValor_Descuento: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Valor_Descuento'
      Origin = '"Facturas"."Valor_Descuento"'
      currency = True
    end
    object qrFacturasValor_Descuento_Detalle: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Valor_Descuento_Detalle'
      Origin = '"Facturas"."Valor_Descuento_Detalle"'
      currency = True
    end
    object qrFacturasTotal_Descuento: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Total_Descuento'
      Origin = '"Facturas"."Total_Descuento"'
      currency = True
    end
    object qrFacturasTerminos: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Terminos'
      Origin = '"Facturas"."Terminos"'
    end
    object qrFacturasVencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento'
      Origin = '"Facturas"."Vencimiento"'
    end
    object qrFacturasPagado: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Pagado'
      Origin = '"Facturas"."Pagado"'
      currency = True
    end
    object qrFacturasPendiente: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Pendiente'
      Origin = '"Facturas"."Pendiente"'
      currency = True
    end
    object qrFacturasUltimoPago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'UltimoPago'
      Origin = '"Facturas"."UltimoPago"'
    end
    object qrFacturasTotal_Efectivo_Recibido: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Total_Efectivo_Recibido'
      Origin = '"Facturas"."Total_Efectivo_Recibido"'
      currency = True
    end
    object qrFacturasTotal_Efectivo_Devuelto: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Total_Efectivo_Devuelto'
      Origin = '"Facturas"."Total_Efectivo_Devuelto"'
      currency = True
    end
    object qrFacturasCliente: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe Seleccionar un Cliente para la Factura'
      DefaultExpression = #39'000-0000000-0'#39
      FieldName = 'Cliente'
      Origin = '"Facturas"."Cliente"'
      Size = 25
    end
    object qrFacturasStatus: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'ABIERTO'#39
      FieldName = 'Status'
      Origin = '"Facturas"."Status"'
      Size = 15
    end
    object qrFacturasTipo_Factura: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Detalle'#39
      FieldName = 'Tipo_Factura'
      Origin = '"Facturas"."Tipo_Factura"'
      Size = 15
    end
    object qrFacturasTipo_NCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_NCF'
      Origin = '"Facturas"."Tipo_NCF"'
      Size = 2
    end
    object qrFacturasNCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCF'
      Origin = '"Facturas"."NCF"'
      Size = 100
    end
    object qrFacturasVendedor: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Vendedor'
      Origin = '"Facturas"."Vendedor"'
      Size = 25
    end
    object qrFacturasNombre_Vendedor: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Nombre_Vendedor'
      Origin = '"Facturas"."Nombre_Vendedor"'
      Size = 100
    end
    object qrFacturasTotal_Restante: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Restante'
      Origin = '"Facturas"."Total_Restante"'
      currency = True
    end
    object qrFacturasInteres: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Interes'
      Origin = '"Facturas"."Interes"'
    end
    object qrFacturasModalidad: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Modalidad'
      Origin = '"Facturas"."Modalidad"'
      Size = 25
    end
    object qrFacturasValor_Interes: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Interes'
      Origin = '"Facturas"."Valor_Interes"'
      currency = True
    end
    object qrFacturasValor_Capital: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Capital'
      Origin = '"Facturas"."Valor_Capital"'
      currency = True
    end
    object qrFacturasValor_Cuotas: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Cuotas'
      Origin = '"Facturas"."Valor_Cuotas"'
      currency = True
    end
    object qrFacturasGasto_Cierre: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Gasto_Cierre'
      Origin = '"Facturas"."Gasto_Cierre"'
    end
    object qrFacturasValor_Gasto_Cierre: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Gasto_Cierre'
      Origin = '"Facturas"."Valor_Gasto_Cierre"'
      currency = True
    end
    object qrFacturasVence_Financiamiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vence_Financiamiento'
      Origin = '"Facturas"."Vence_Financiamiento"'
    end
    object qrFacturasTotal_Estimado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Estimado'
      Origin = '"Facturas"."Total_Estimado"'
      currency = True
    end
    object qrFacturasMonto_Financiado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Financiado'
      Origin = '"Facturas"."Monto_Financiado"'
      currency = True
    end
    object qrFacturasTipo_Gasto_Cierre: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Gasto_Cierre'
      Origin = '"Facturas"."Tipo_Gasto_Cierre"'
      Size = 25
    end
    object qrFacturasPeriodo_Pagos: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Periodo_Pagos'
      Origin = '"Facturas"."Periodo_Pagos"'
      Size = 25
    end
    object qrFacturasPlazo_Pago: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Plazo_Pago'
      Origin = '"Facturas"."Plazo_Pago"'
    end
    object qrFacturasDescripcion_NCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion_NCF'
      Origin = '"Facturas"."Descripcion_NCF"'
      Size = 100
    end
    object qrFacturasInicial: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Inicial'
      Origin = '"Facturas"."Inicial"'
      currency = True
    end
    object qrFacturasConduce: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Conduce'
      Origin = '"Facturas"."Conduce"'
      Size = 25
    end
    object qrFacturasDebitado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Debitado'
      Origin = '"Facturas"."Debitado"'
    end
    object qrFacturasAcreditado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Acreditado'
      Origin = '"Facturas"."Acreditado"'
    end
    object qrFacturasBalance: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Origin = '"Facturas"."Balance"'
    end
    object qrFacturasMora: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Mora'
      Origin = '"Facturas"."Mora"'
    end
    object qrFacturasMonto_Vencido: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Vencido'
      Origin = '"Facturas"."Monto_Vencido"'
    end
    object qrFacturasCuotas_Vencidas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Cuotas_Vencidas'
      Origin = '"Facturas"."Cuotas_Vencidas"'
    end
    object qrFacturasMonto_Interes_Cumplido: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Interes_Cumplido'
      Origin = '"Facturas"."Monto_Interes_Cumplido"'
    end
    object qrFacturasBalance_Capital: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Capital'
      Origin = '"Facturas"."Balance_Capital"'
    end
    object qrFacturasBalance_Interes: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Interes'
      Origin = '"Facturas"."Balance_Interes"'
    end
    object qrFacturasBalance_Otros: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Otros'
      Origin = '"Facturas"."Balance_Otros"'
    end
    object qrFacturasFecha_Ultimo_Pago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Ultimo_Pago'
      Origin = '"Facturas"."Fecha_Ultimo_Pago"'
    end
    object qrFacturasDias_Vencidos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Dias_Vencidos'
      Origin = '"Facturas"."Dias_Vencidos"'
    end
    object qrFacturasTotal_Seriales: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Total_Seriales'
      Origin = '"Facturas"."Total_Seriales"'
    end
    object qrFacturasSeriales_Registrados: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Seriales_Registrados'
      Origin = '"Facturas"."Seriales_Registrados"'
    end
    object qrFacturasAlmacen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Origin = '"Facturas"."Almacen"'
      Size = 25
    end
    object qrFacturasApertura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Apertura'
      Origin = '"Facturas"."Apertura"'
      Size = 25
    end
    object qrFacturasID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Facturas"."ID"'
      Size = 50
    end
    object qrFacturasCotizacion_Numero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Cotizacion_Numero'
      Origin = '"Facturas"."Cotizacion_Numero"'
    end
    object qrFacturasProceso_Cotizacion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso_Cotizacion'
      Origin = '"Facturas"."Proceso_Cotizacion"'
      Size = 25
    end
    object qrFacturasStatus_Trabajo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status_Trabajo'
      Origin = '"Facturas"."Status_Trabajo"'
      Size = 15
    end
    object qrFacturasMoneda: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Moneda'
      Origin = '"Facturas"."Moneda"'
    end
    object qrFacturasSub_Total_Moneda: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Sub_Total_Moneda'
      Origin = '"Facturas"."Sub_Total_Moneda"'
      currency = True
    end
    object qrFacturasTotal_Impuesto_Moneda: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Impuesto_Moneda'
      Origin = '"Facturas"."Total_Impuesto_Moneda"'
      currency = True
    end
    object qrFacturasTotal_Descuento_Moneda: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Descuento_Moneda'
      Origin = '"Facturas"."Total_Descuento_Moneda"'
      currency = True
    end
    object qrFacturasTotal_Moneda: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Moneda'
      Origin = '"Facturas"."Total_Moneda"'
      currency = True
    end
    object qrFacturasTasa: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '1.00'
      FieldName = 'Tasa'
      Origin = '"Facturas"."Tasa"'
    end
    object qrFacturasTotal_Efectivo_Recibido_Moneda: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Efectivo_Recibido_Moneda'
      Origin = '"Facturas"."Total_Efectivo_Recibido_Moneda"'
    end
    object qrFacturasTotal_Efectivo_Devuelto_Moneda: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Efectivo_Devuelto_Moneda'
      Origin = '"Facturas"."Total_Efectivo_Devuelto_Moneda"'
    end
    object qrFacturasEmpleado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Empleado'
      Origin = '"Facturas"."Empleado"'
      Size = 25
    end
    object qrFacturasNombre_Empleado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Empleado'
      Origin = '"Facturas"."Nombre_Empleado"'
      Size = 100
    end
    object qrFacturasNumero_Contrato: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Contrato'
      Origin = '"Facturas"."Numero_Contrato"'
      Size = 25
    end
    object qrFacturasStatus_Mercancia: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status_Mercancia'
      Origin = '"Facturas"."Status_Mercancia"'
      Size = 15
    end
    object qrFacturasFecha_Primer_Pago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Primer_Pago'
      Origin = '"Facturas"."Fecha_Primer_Pago"'
    end
    object qrFacturasLayAway: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'LayAway'
      Origin = '"Facturas"."LayAway"'
    end
    object qrFacturasFecha_LayAway: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_LayAway'
      Origin = '"Facturas"."Fecha_LayAway"'
    end
    object qrFacturasVencimiento_LayAway: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento_LayAway'
      Origin = '"Facturas"."Vencimiento_LayAway"'
    end
    object qrFacturasMonto_Minimo_Recibido: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Monto_Minimo_Recibido'
      Origin = '"Facturas"."Monto_Minimo_Recibido"'
      currency = True
    end
  end
  object prFacturas: TDataSetProvider
    DataSet = qrFacturas
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    OnUpdateData = prFacturasUpdateData
    BeforeUpdateRecord = prFacturasBeforeUpdateRecord
    Left = 344
    Top = 503
  end
  object qrDetalles_Factura: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkFacturas
    SQL.Strings = (
      'Select  * From  "Detalles_Factura"'
      'Where "Proceso" = :Proceso'
      'Order By "Registro"')
    UniDirectional = True
    Left = 244
    Top = 551
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrDetalles_FacturaProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalles_Factura"."Proceso"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 25
    end
    object qrDetalles_FacturaCodigo: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir un C'#243'digo de Producto'
      FieldName = 'Codigo'
      Origin = '"Detalles_Factura"."Codigo"'
      Size = 25
    end
    object qrDetalles_FacturaCodigo_Real: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo_Real'
      Origin = '"Detalles_Factura"."Codigo_Real"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 25
    end
    object qrDetalles_FacturaSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Detalles_Factura"."Secuencia"'
      DisplayFormat = '#,#0'
    end
    object qrDetalles_FacturaDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Detalles_Factura"."Descripcion"'
      Size = 100
    end
    object qrDetalles_FacturaCategoria: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Categoria'
      Origin = '"Detalles_Factura"."Categoria"'
    end
    object qrDetalles_FacturaFabricante: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Fabricante'
      Origin = '"Detalles_Factura"."Fabricante"'
    end
    object qrDetalles_FacturaDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Departamento'
      Origin = '"Detalles_Factura"."Departamento"'
    end
    object qrDetalles_FacturaTipo_Producto: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Tipo_Producto'
      Origin = '"Detalles_Factura"."Tipo_Producto"'
    end
    object qrDetalles_FacturaCantidad: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Cantidad'
      Origin = '"Detalles_Factura"."Cantidad"'
      DisplayFormat = '#,#0.00'
    end
    object qrDetalles_FacturaFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Detalles_Factura"."Fecha"'
    end
    object qrDetalles_FacturaHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Detalles_Factura"."Hora"'
    end
    object qrDetalles_FacturaUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Detalles_Factura"."Usuario"'
      Size = 100
    end
    object qrDetalles_FacturaMes: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Mes'
      Origin = '"Detalles_Factura"."Mes"'
      MaxValue = 12
    end
    object qrDetalles_FacturaAno: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ano'
      Origin = '"Detalles_Factura"."Ano"'
      DisplayFormat = '0000'
    end
    object qrDetalles_FacturaCliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Detalles_Factura"."Cliente"'
      Size = 25
    end
    object qrDetalles_FacturaCantidad_Devuelto: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Cantidad_Devuelto'
      Origin = '"Detalles_Factura"."Cantidad_Devuelto"'
    end
    object qrDetalles_FacturaTipo_Precio: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Precio'
      Origin = '"Detalles_Factura"."Tipo_Precio"'
      Size = 25
    end
    object qrDetalles_FacturaContenido: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Contenido'
      Origin = '"Detalles_Factura"."Contenido"'
      DisplayFormat = '#,0'
    end
    object qrDetalles_FacturaRegistro: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Registro'
      Origin = '"Detalles_Factura"."Registro"'
    end
    object qrDetalles_FacturaRequiere_Serial: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Requiere_Serial'
      Origin = '"Detalles_Factura"."Requiere_Serial"'
    end
    object qrDetalles_FacturaAlmacen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Origin = '"Detalles_Factura"."Almacen"'
      Size = 25
    end
    object qrDetalles_FacturaCosto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Costo'
      Origin = '"Detalles_Factura"."Costo"'
    end
    object qrDetalles_FacturaPrecio_Real: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Real'
      Origin = '"Detalles_Factura"."Precio_Real"'
    end
    object qrDetalles_FacturaPrecio_Venta: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta'
      Origin = '"Detalles_Factura"."Precio_Venta"'
    end
    object qrDetalles_FacturaPrecio_Minimo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Minimo'
      Origin = '"Detalles_Factura"."Precio_Minimo"'
    end
    object qrDetalles_FacturaTotal_Costo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Origin = '"Detalles_Factura"."Total_Costo"'
    end
    object qrDetalles_FacturaTotal_Precio: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Precio'
      Origin = '"Detalles_Factura"."Total_Precio"'
    end
    object qrDetalles_FacturaImpuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto'
      Origin = '"Detalles_Factura"."Impuesto"'
    end
    object qrDetalles_FacturaDescuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento'
      Origin = '"Detalles_Factura"."Descuento"'
    end
    object qrDetalles_FacturaValor_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Detalles_Factura"."Valor_Impuesto"'
    end
    object qrDetalles_FacturaValor_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Detalles_Factura"."Valor_Descuento"'
    end
    object qrDetalles_FacturaTotal_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Detalles_Factura"."Total_Impuesto"'
    end
    object qrDetalles_FacturaTotal_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Detalles_Factura"."Total_Descuento"'
    end
    object qrDetalles_FacturaUnidades: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Unidades'
      Origin = '"Detalles_Factura"."Unidades"'
    end
    object qrDetalles_FacturaPrecio_Unidad: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Unidad'
      Origin = '"Detalles_Factura"."Precio_Unidad"'
    end
    object qrDetalles_FacturaMedida: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Medida'
      Origin = '"Detalles_Factura"."Medida"'
      Size = 25
    end
    object qrDetalles_FacturaUsuario_Autorizacion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario_Autorizacion'
      Origin = '"Detalles_Factura"."Usuario_Autorizacion"'
      Size = 100
    end
    object qrDetalles_FacturaProc_Detalle: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proc_Detalle'
      Origin = '"Detalles_Factura"."Proc_Detalle"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 25
    end
    object qrDetalles_FacturaID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Detalles_Factura"."ID"'
      Size = 50
    end
    object qrDetalles_FacturaValor_Moneda: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Valor_Moneda'
      Origin = '"Detalles_Factura"."Valor_Moneda"'
      currency = True
    end
    object qrDetalles_FacturaTotal_Moneda: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Moneda'
      Origin = '"Detalles_Factura"."Total_Moneda"'
      currency = True
    end
    object qrDetalles_FacturaImpuesto_Moneda: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Impuesto_Moneda'
      Origin = '"Detalles_Factura"."Impuesto_Moneda"'
      currency = True
    end
    object qrDetalles_FacturaDescuento_Moneda: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Descuento_Moneda'
      Origin = '"Detalles_Factura"."Descuento_Moneda"'
      currency = True
    end
    object qrDetalles_FacturaProceso_Componente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso_Componente'
      Origin = '"Detalles_Factura"."Proceso_Componente"'
      Size = 25
    end
    object qrDetalles_FacturaFraccion: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Fraccion'
      Origin = '"Detalles_Factura"."Fraccion"'
    end
    object qrDetalles_FacturaOferta: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Oferta'
      Origin = '"Detalles_Factura"."Oferta"'
      Size = 25
    end
  end
  object lnkFacturas: TDataSource
    DataSet = qrFacturas
    Left = 344
    Top = 552
  end
  object qrDetalle_Pago_Factura: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkFacturas
    SQL.Strings = (
      'Select  * From  "Detalle_Pago_Factura"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 244
    Top = 599
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrDetalle_Pago_FacturaProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalle_Pago_Factura"."Proceso"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 25
    end
    object qrDetalle_Pago_FacturaForma_Pago: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Forma_Pago'
      Origin = '"Detalle_Pago_Factura"."Forma_Pago"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrDetalle_Pago_FacturaFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Detalle_Pago_Factura"."Fecha"'
    end
    object qrDetalle_Pago_FacturaHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Detalle_Pago_Factura"."Hora"'
    end
    object qrDetalle_Pago_FacturaTasa: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Tasa'
      Origin = '"Detalle_Pago_Factura"."Tasa"'
      currency = True
    end
    object qrDetalle_Pago_FacturaValor_Recibido: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Recibido'
      Origin = '"Detalle_Pago_Factura"."Valor_Recibido"'
      currency = True
    end
    object qrDetalle_Pago_FacturaValor_Recibido_Local: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Recibido_Local'
      Origin = '"Detalle_Pago_Factura"."Valor_Recibido_Local"'
      currency = True
    end
    object qrDetalle_Pago_FacturaValor_Devolver: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Devolver'
      Origin = '"Detalle_Pago_Factura"."Valor_Devolver"'
      currency = True
    end
    object qrDetalle_Pago_FacturaValor_Devolver_Local: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Devolver_Local'
      Origin = '"Detalle_Pago_Factura"."Valor_Devolver_Local"'
      currency = True
    end
    object qrDetalle_Pago_FacturaNumero_Banco: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Banco'
      Origin = '"Detalle_Pago_Factura"."Numero_Banco"'
    end
    object qrDetalle_Pago_FacturaNumero_Documento: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Documento'
      Origin = '"Detalle_Pago_Factura"."Numero_Documento"'
      Size = 25
    end
    object qrDetalle_Pago_FacturaNumero_Aprobacion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Aprobacion'
      Origin = '"Detalle_Pago_Factura"."Numero_Aprobacion"'
      Size = 25
    end
    object qrDetalle_Pago_FacturaMes_Vencimiento: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Mes_Vencimiento'
      Origin = '"Detalle_Pago_Factura"."Mes_Vencimiento"'
      DisplayFormat = '00'
      MaxValue = 12
    end
    object qrDetalle_Pago_FacturaAno_Vencimiento: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ano_Vencimiento'
      Origin = '"Detalle_Pago_Factura"."Ano_Vencimiento"'
      DisplayFormat = '0000'
    end
    object qrDetalle_Pago_FacturaTipo_Documento: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Efectivo'#39
      FieldName = 'Tipo_Documento'
      Origin = '"Detalle_Pago_Factura"."Tipo_Documento"'
      Size = 100
    end
    object qrDetalle_Pago_FacturaEs_Efectivo: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'FALSE'#39
      FieldName = 'Es_Efectivo'
      Origin = '"Detalle_Pago_Factura"."Es_Efectivo"'
    end
    object qrDetalle_Pago_FacturaRequiere_Documento: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'FALSE'#39
      FieldName = 'Requiere_Documento'
      Origin = '"Detalle_Pago_Factura"."Requiere_Documento"'
    end
    object qrDetalle_Pago_FacturaRequiere_Vencimiento: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'FALSE'#39
      FieldName = 'Requiere_Vencimiento'
      Origin = '"Detalle_Pago_Factura"."Requiere_Vencimiento"'
    end
    object qrDetalle_Pago_FacturaRequiere_Aprobacion: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'FALSE'#39
      FieldName = 'Requiere_Aprobacion'
      Origin = '"Detalle_Pago_Factura"."Requiere_Aprobacion"'
    end
    object qrDetalle_Pago_FacturaPendiente: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Origin = '"Detalle_Pago_Factura"."Pendiente"'
      currency = True
    end
    object qrDetalle_Pago_FacturaID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Detalle_Pago_Factura"."ID"'
      Size = 50
    end
  end
  object qrFormas_Pago: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Formas_Pago"'
      'Order By "Descripcion"')
    UniDirectional = True
    Left = 436
    Top = 815
    object qrFormas_PagoNumero: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero'
      Origin = '"Formas_Pago"."Numero"'
      DisplayFormat = '000000'
    end
    object qrFormas_PagoDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir una Descripci'#243'n para la Forma de Pago'
      FieldName = 'Descripcion'
      Origin = '"Formas_Pago"."Descripcion"'
      Size = 100
    end
    object qrFormas_PagoTasa: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Tasa'
      Origin = '"Formas_Pago"."Tasa"'
      currency = True
    end
    object qrFormas_PagoEs_Efectivo: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'TRUE'#39
      FieldName = 'Es_Efectivo'
      Origin = '"Formas_Pago"."Es_Efectivo"'
    end
    object qrFormas_PagoRequiere_Documento: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'FALSE'#39
      FieldName = 'Requiere_Documento'
      Origin = '"Formas_Pago"."Requiere_Documento"'
    end
    object qrFormas_PagoRequiere_Aprobacion: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'FALSE'#39
      FieldName = 'Requiere_Aprobacion'
      Origin = '"Formas_Pago"."Requiere_Aprobacion"'
    end
    object qrFormas_PagoRequiere_Vencimiento: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'FALSE'#39
      FieldName = 'Requiere_Vencimiento'
      Origin = '"Formas_Pago"."Requiere_Vencimiento"'
    end
    object qrFormas_PagoFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Formas_Pago"."Fecha"'
    end
    object qrFormas_PagoUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Formas_Pago"."Usuario"'
      Size = 100
    end
  end
  object prFormas_Pago: TDataSetProvider
    DataSet = qrFormas_Pago
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 536
    Top = 815
  end
  object qrParametros: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Parametros"'
      'Where ("Terminal" = :Terminal)')
    UniDirectional = True
    Left = 436
    Top = 255
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
      Size = 100
    end
    object qrParametrosImpuesto: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Impuesto'
      Origin = '"Parametros"."Impuesto"'
      DisplayFormat = '#,#0.00'
    end
    object qrParametrosTermino_COD: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Termino_COD'
      Origin = '"Parametros"."Termino_COD"'
    end
    object qrParametrosDescuento: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Descuento'
      Origin = '"Parametros"."Descuento"'
      DisplayFormat = '#,#0.00'
    end
    object qrParametrosCondicion_Facturacion: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Contado'#39
      FieldName = 'Condicion_Facturacion'
      Origin = '"Parametros"."Condicion_Facturacion"'
      Size = 25
    end
    object qrParametrosDEMO: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'DEMO'
      Origin = '"Parametros"."DEMO"'
    end
    object qrParametrosTIME: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'TIME'
      Origin = '"Parametros"."TIME"'
    end
    object qrParametrosCOUNTER: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'COUNTER'
      Origin = '"Parametros"."COUNTER"'
    end
    object qrParametrosDATECOUNT: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATECOUNT'
      Origin = '"Parametros"."DATECOUNT"'
    end
    object qrParametrosCount_Day: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Count_Day'
      Origin = '"Parametros"."Count_Day"'
    end
    object qrParametrosSerie_NCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Serie_NCF'
      Origin = '"Parametros"."Serie_NCF"'
      Size = 1
    end
    object qrParametrosDivision_NCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Division_NCF'
      Origin = '"Parametros"."Division_NCF"'
      Size = 2
    end
    object qrParametrosPunto_Emision_NCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Punto_Emision_NCF'
      Origin = '"Parametros"."Punto_Emision_NCF"'
      Size = 3
    end
    object qrParametrosArea_Impresion_NCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Area_Impresion_NCF'
      Origin = '"Parametros"."Area_Impresion_NCF"'
      Size = 3
    end
    object qrParametrosLimite_NCF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Limite_NCF'
      Origin = '"Parametros"."Limite_NCF"'
    end
    object qrParametrosInforme_Nuevo_NCF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Informe_Nuevo_NCF'
      Origin = '"Parametros"."Informe_Nuevo_NCF"'
    end
    object qrParametrosTermino_Financiado: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Termino_Financiado'
      Origin = '"Parametros"."Termino_Financiado"'
    end
    object qrParametrosTipo_NCF_Notas_Credito: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_NCF_Notas_Credito'
      Origin = '"Parametros"."Tipo_NCF_Notas_Credito"'
      Size = 25
    end
    object qrParametrosTipo_NCF_Notas_Debito: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_NCF_Notas_Debito'
      Origin = '"Parametros"."Tipo_NCF_Notas_Debito"'
      Size = 25
    end
  end
  object prParametros: TDataSetProvider
    DataSet = qrParametros
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 536
    Top = 255
  end
  object qrBancos: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Bancos"'
      'Order By "Nombre"')
    UniDirectional = True
    Left = 40
    Top = 646
    object qrBancosNumero: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero'
      Origin = '"Bancos"."Numero"'
      DisplayFormat = '000000'
    end
    object qrBancosNombre: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir el nombre del Banco'
      FieldName = 'Nombre'
      Origin = '"Bancos"."Nombre"'
      Size = 100
    end
    object qrBancosDireccion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion'
      Origin = '"Bancos"."Direccion"'
      Size = 255
    end
    object qrBancosTelefono: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefono'
      Origin = '"Bancos"."Telefono"'
      EditMask = '!\(999\)000-0000;1; '
      Size = 25
    end
    object qrBancosmail: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'mail'
      Origin = '"Bancos"."mail"'
      Size = 100
    end
  end
  object prBancos: TDataSetProvider
    DataSet = qrBancos
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 144
    Top = 646
  end
  object qrVencimientos_Categoria: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      
        'SELECT * FROM "Vencimientos_Categoria" (:Mes1, :Mes2, :Ano1, :An' +
        'o2, :Categoria)')
    UniDirectional = True
    Left = 644
    Top = 783
    ParamData = <
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
        DataType = ftUnknown
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
    object qrVencimientos_CategoriaCODIGO: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = '"Vencimientos_Categoria"."CODIGO"'
      Size = 25
    end
    object qrVencimientos_CategoriaMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
      Origin = '"Vencimientos_Categoria"."MES"'
    end
    object qrVencimientos_CategoriaANO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANO'
      Origin = '"Vencimientos_Categoria"."ANO"'
    end
    object qrVencimientos_CategoriaCANTIDAD: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CANTIDAD'
      Origin = '"Vencimientos_Categoria"."CANTIDAD"'
    end
    object qrVencimientos_CategoriaDESCRIPCION: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPCION'
      Origin = '"Vencimientos_Categoria"."DESCRIPCION"'
      Size = 100
    end
  end
  object prVencimientos_Categoria: TDataSetProvider
    DataSet = qrVencimientos_Categoria
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 758
    Top = 783
  end
  object qrVencimientos_Departamento: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      
        'SELECT * FROM "Vencimientos_Departamento" (:Mes1, :Mes2, :Ano1, ' +
        ':Ano2, :Departamento)')
    UniDirectional = True
    Left = 644
    Top = 832
    ParamData = <
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
    object qrVencimientos_DepartamentoCODIGO: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = '"Vencimientos_Departamento"."CODIGO"'
      Size = 25
    end
    object qrVencimientos_DepartamentoMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
      Origin = '"Vencimientos_Departamento"."MES"'
    end
    object qrVencimientos_DepartamentoANO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANO'
      Origin = '"Vencimientos_Departamento"."ANO"'
    end
    object qrVencimientos_DepartamentoCANTIDAD: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CANTIDAD'
      Origin = '"Vencimientos_Departamento"."CANTIDAD"'
    end
    object qrVencimientos_DepartamentoDESCRIPCION: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPCION'
      Origin = '"Vencimientos_Departamento"."DESCRIPCION"'
      Size = 100
    end
  end
  object prVencimientos_Departamento: TDataSetProvider
    DataSet = qrVencimientos_Departamento
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 758
    Top = 832
  end
  object qVencimientos_Fabricante: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      
        'SELECT * FROM "Vencimientos_Fabricante" (:Mes1, :Mes2, :Ano1, :A' +
        'no2, :Fabricante)')
    UniDirectional = True
    Left = 644
    Top = 892
    ParamData = <
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
  end
  object prVencimientos_Fabricante: TDataSetProvider
    DataSet = qVencimientos_Fabricante
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 758
    Top = 892
  end
  object qrVencimientos_Proveedor: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      
        'SELECT * FROM "Vencimientos_Proveedor" (:Mes1, :Mes2, :Ano1, :An' +
        'o2, :Proveedor)')
    UniDirectional = True
    Left = 436
    Top = 64
    ParamData = <
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
    object qrVencimientos_ProveedorCODIGO: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = '"Vencimientos_Proveedor"."CODIGO"'
      Size = 25
    end
    object qrVencimientos_ProveedorMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
      Origin = '"Vencimientos_Proveedor"."MES"'
    end
    object qrVencimientos_ProveedorANO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANO'
      Origin = '"Vencimientos_Proveedor"."ANO"'
    end
    object qrVencimientos_ProveedorCANTIDAD: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CANTIDAD'
      Origin = '"Vencimientos_Proveedor"."CANTIDAD"'
    end
    object qrVencimientos_ProveedorDESCRIPCION: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPCION'
      Origin = '"Vencimientos_Proveedor"."DESCRIPCION"'
      Size = 100
    end
  end
  object prVencimientos_Proveedor: TDataSetProvider
    DataSet = qrVencimientos_Proveedor
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 536
    Top = 64
  end
  object qrVencimientos_Codigo: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      
        'SELECT * FROM "Vencimientos_Codigo" (:Mes1, :Mes2, :Ano1, :Ano2,' +
        ' :Codigo)')
    UniDirectional = True
    Left = 436
    Top = 111
    ParamData = <
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
        Name = 'Codigo'
        ParamType = ptInput
      end>
    object qrVencimientos_CodigoCODIGO: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = '"Vencimientos_Codigo"."CODIGO"'
      Size = 25
    end
    object qrVencimientos_CodigoMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
      Origin = '"Vencimientos_Codigo"."MES"'
    end
    object qrVencimientos_CodigoANO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANO'
      Origin = '"Vencimientos_Codigo"."ANO"'
    end
    object qrVencimientos_CodigoCANTIDAD: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CANTIDAD'
      Origin = '"Vencimientos_Codigo"."CANTIDAD"'
    end
    object qrVencimientos_CodigoDESCRIPCION: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPCION'
      Origin = '"Vencimientos_Codigo"."DESCRIPCION"'
      Size = 100
    end
  end
  object prVencimientos_Codigo: TDataSetProvider
    DataSet = qrVencimientos_Codigo
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 536
    Top = 111
  end
  object qrVencimientos_Fecha: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'SELECT * FROM "Vencimientos_Fecha" (:Mes1, :Mes2, :Ano1, :Ano2)')
    UniDirectional = True
    Left = 436
    Top = 159
    ParamData = <
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
    object qrVencimientos_FechaCODIGO: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = '"Vencimientos_Fecha"."CODIGO"'
      Size = 25
    end
    object qrVencimientos_FechaMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
      Origin = '"Vencimientos_Fecha"."MES"'
    end
    object qrVencimientos_FechaANO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANO'
      Origin = '"Vencimientos_Fecha"."ANO"'
    end
    object qrVencimientos_FechaCANTIDAD: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CANTIDAD'
      Origin = '"Vencimientos_Fecha"."CANTIDAD"'
    end
    object qrVencimientos_FechaDESCRIPCION: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPCION'
      Origin = '"Vencimientos_Fecha"."DESCRIPCION"'
      Size = 100
    end
  end
  object prVencimientos_Fecha: TDataSetProvider
    DataSet = qrVencimientos_Fecha
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 536
    Top = 159
  end
  object qrVencimientos_Todos: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'SELECT * FROM "Vencimientos_Todos"')
    UniDirectional = True
    Left = 436
    Top = 207
    object qrVencimientos_TodosCODIGO: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = '"Vencimientos_Todos"."CODIGO"'
      Size = 25
    end
    object qrVencimientos_TodosMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
      Origin = '"Vencimientos_Todos"."MES"'
    end
    object qrVencimientos_TodosANO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANO'
      Origin = '"Vencimientos_Todos"."ANO"'
    end
    object qrVencimientos_TodosCANTIDAD: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CANTIDAD'
      Origin = '"Vencimientos_Todos"."CANTIDAD"'
    end
    object qrVencimientos_TodosDESCRIPCION: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPCION'
      Origin = '"Vencimientos_Todos"."DESCRIPCION"'
      Size = 100
    end
  end
  object prVencimientos_Todos: TDataSetProvider
    DataSet = qrVencimientos_Todos
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 536
    Top = 207
  end
  object qrReporter: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    UniDirectional = True
    Left = 536
    Top = 8
  end
  object prReporter: TDataSetProvider
    DataSet = qrReporter
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 600
    Top = 8
  end
  object qrComponentes: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkProductos
    SQL.Strings = (
      'Select  * From "Componentes"'
      'Where "Codigo" = :Codigo'
      'Order By "Codigo"')
    Left = 40
    Top = 207
    ParamData = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    object qrComponentesCodigo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Origin = '"Componentes"."Codigo"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 25
    end
    object qrComponentesCodigo_Componente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo_Componente'
      Origin = '"Componentes"."Codigo_Componente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 25
    end
    object qrComponentesCantidad: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Cantidad'
      Origin = '"Componentes"."Cantidad"'
    end
    object qrComponentesCosto: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Costo'
      Origin = '"Componentes"."Costo"'
      currency = True
    end
    object qrComponentesDescripcion_Componente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion_Componente'
      Origin = '"Componentes"."Descripcion_Componente"'
      Size = 100
    end
    object qrComponentesPorcentaje_Precio: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Porcentaje_Precio'
      Origin = '"Componentes"."Porcentaje_Precio"'
    end
  end
  object qrUsuarios: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Usuarios"'
      'Where "UserName" = :UserName')
    UniDirectional = True
    Left = 436
    Top = 303
    ParamData = <
      item
        DataType = ftString
        Name = 'UserName'
        ParamType = ptInput
      end>
    object qrUsuariosUserName: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'UserName'
      Origin = '"Usuarios"."UserName"'
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
      AutoGenerateValue = arDefault
      FieldName = 'Password'
      Origin = '"Usuarios"."Password"'
      Size = 255
    end
    object qrUsuariosDescription: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Description'
      Origin = '"Usuarios"."Description"'
      Size = 100
    end
    object qrUsuariosAccess_Level: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Access_Level'
      Origin = '"Usuarios"."Access_Level"'
      Size = 25
    end
    object qrUsuariosDefault_Company: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Default_Company'
      Origin = '"Usuarios"."Default_Company"'
      Size = 50
    end
    object qrUsuariosDefault_Terminal: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Default_Terminal'
      Origin = '"Usuarios"."Default_Terminal"'
      Size = 50
    end
    object qrUsuariosLast_Company: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Last_Company'
      Origin = '"Usuarios"."Last_Company"'
      Size = 50
    end
    object qrUsuariosLast_Terminal: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Last_Terminal'
      Origin = '"Usuarios"."Last_Terminal"'
      Size = 50
    end
    object qrUsuariosLast_Login: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Last_Login'
      Origin = '"Usuarios"."Last_Login"'
    end
    object qrUsuariosUser_Type: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'User_Type'
      Origin = '"Usuarios"."User_Type"'
      Size = 25
    end
    object qrUsuariosFoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Foto'
      Origin = '"Usuarios"."Foto"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qrUsuariosmail: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'mail'
      Origin = '"Usuarios"."mail"'
      Size = 100
    end
    object qrUsuariosDate_Created: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Date_Created'
      Origin = '"Usuarios"."Date_Created"'
    end
    object qrUsuariosStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Usuarios"."Status"'
      Size = 15
    end
    object qrUsuariosPorciento_Autorizado: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Porciento_Autorizado'
      Origin = '"Usuarios"."Porciento_Autorizado"'
    end
  end
  object prUsuarios: TDataSetProvider
    DataSet = qrUsuarios
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    BeforeUpdateRecord = prFacturasBeforeUpdateRecord
    Left = 536
    Top = 303
  end
  object prNiveles: TDataSetProvider
    DataSet = qrNiveles
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    BeforeUpdateRecord = prFacturasBeforeUpdateRecord
    Left = 536
    Top = 351
  end
  object qrNiveles: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Niveles"'
      'Order By "Descripcion"')
    UniDirectional = True
    Left = 436
    Top = 351
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
    BeforeUpdateRecord = prFacturasBeforeUpdateRecord
    Left = 536
    Top = 399
  end
  object qrOpciones: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Opciones"'
      'Order By "Descripcion", "Opcion"')
    UniDirectional = True
    Left = 436
    Top = 399
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
    BeforeUpdateRecord = prFacturasBeforeUpdateRecord
    Left = 536
    Top = 447
  end
  object qrAccesos: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Accesos"'
      'Where "Nivel" = :Nivel'
      'Order By "Form", "Opcion"')
    UniDirectional = True
    Left = 436
    Top = 447
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
  object qrDenominaciones: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkFormas_Pago
    SQL.Strings = (
      'Select  * From  "Denominaciones_Moneda"'
      'Where "Descripcion" = :Descripcion'
      'Order By "Descripcion", "Denominacion" Descending')
    UniDirectional = True
    Left = 436
    Top = 871
    ParamData = <
      item
        DataType = ftString
        Name = 'Descripcion'
        ParamType = ptInput
      end>
    object qrDenominacionesDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Denominaciones_Moneda"."Descripcion"'
      Size = 100
    end
    object qrDenominacionesDenominacion: TFloatField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value > 0'
      ConstraintErrorMessage = 'Debe asignar un monto para la denominacion de efectivo'
      FieldName = 'Denominacion'
      Origin = '"Denominaciones_Moneda"."Denominacion"'
      currency = True
    end
  end
  object prCuadre_Caja: TDataSetProvider
    DataSet = qrCuadre_Caja
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    BeforeUpdateRecord = prFacturasBeforeUpdateRecord
    Left = 536
    Top = 615
  end
  object qrCuadre_Caja: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Cuadre_Caja"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 436
    Top = 615
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Proceso'
        ParamType = ptUnknown
      end>
    object qrCuadre_CajaNumero_Cuadre: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero_Cuadre'
      Origin = '"Cuadre_Caja"."Numero_Cuadre"'
      DisplayFormat = #39'CC'#39'0000000000'
    end
    object qrCuadre_CajaProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Cuadre_Caja"."Proceso"'
      Size = 25
    end
    object qrCuadre_CajaFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Cuadre_Caja"."Fecha"'
    end
    object qrCuadre_CajaHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Cuadre_Caja"."Hora"'
    end
    object qrCuadre_CajaUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Cuadre_Caja"."Usuario"'
      Size = 100
    end
    object qrCuadre_CajaSupervisor: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Supervisor'
      Origin = '"Cuadre_Caja"."Supervisor"'
      Size = 100
    end
    object qrCuadre_CajaTotal_Vendido: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Vendido'
      Origin = '"Cuadre_Caja"."Total_Vendido"'
      currency = True
    end
    object qrCuadre_CajaFondo_Caja: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Fondo_Caja'
      Origin = '"Cuadre_Caja"."Fondo_Caja"'
      currency = True
    end
    object qrCuadre_CajaTotal_Retiros: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Retiros'
      Origin = '"Cuadre_Caja"."Total_Retiros"'
      currency = True
    end
    object qrCuadre_CajaTotal_Efectivo: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Efectivo'
      Origin = '"Cuadre_Caja"."Total_Efectivo"'
      currency = True
    end
    object qrCuadre_CajaTotal_NoEfectivo: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_NoEfectivo'
      Origin = '"Cuadre_Caja"."Total_NoEfectivo"'
      currency = True
    end
    object qrCuadre_CajaID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Cuadre_Caja"."ID"'
      Size = 50
    end
    object qrCuadre_CajaTotal_Vendido_Contado: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Vendido_Contado'
      Origin = '"Cuadre_Caja"."Total_Vendido_Contado"'
      currency = True
    end
    object qrCuadre_CajaTotal_Vendido_Credito: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Vendido_Credito'
      Origin = '"Cuadre_Caja"."Total_Vendido_Credito"'
      currency = True
    end
    object qrCuadre_CajaTotal_Recibido: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Recibido'
      Origin = '"Cuadre_Caja"."Total_Recibido"'
      currency = True
    end
    object qrCuadre_CajaTotal_Cobros: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Cobros'
      Origin = '"Cuadre_Caja"."Total_Cobros"'
      currency = True
    end
    object qrCuadre_CajaTotal_Notas_Debito: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Notas_Debito'
      Origin = '"Cuadre_Caja"."Total_Notas_Debito"'
      currency = True
    end
    object qrCuadre_CajaTotal_Notas_Credito: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Notas_Credito'
      Origin = '"Cuadre_Caja"."Total_Notas_Credito"'
      currency = True
    end
    object qrCuadre_CajaTotal_Compras: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Compras'
      Origin = '"Cuadre_Caja"."Total_Compras"'
      currency = True
    end
    object qrCuadre_CajaTotal_Cuadre: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Cuadre'
      Origin = '"Cuadre_Caja"."Total_Cuadre"'
      currency = True
    end
    object qrCuadre_CajaDiferencia: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Diferencia'
      Origin = '"Cuadre_Caja"."Diferencia"'
      currency = True
    end
    object qrCuadre_CajaTipo_Diferencia: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Diferencia'
      Origin = '"Cuadre_Caja"."Tipo_Diferencia"'
      Size = 25
    end
  end
  object qrDetalle_Cuadre: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkCuadre_Caja
    SQL.Strings = (
      'Select  * From "Detalle_Cuadre"'
      'Where "Proceso" = :Proceso'
      'Order By "Moneda", "Denominacion"')
    UniDirectional = True
    Left = 436
    Top = 664
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Proceso'
        ParamType = ptUnknown
      end>
    object qrDetalle_CuadreProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalle_Cuadre"."Proceso"'
      Size = 25
    end
    object qrDetalle_CuadreMoneda: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Moneda'
      Origin = '"Detalle_Cuadre"."Moneda"'
      Size = 100
    end
    object qrDetalle_CuadreDenominacion: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Denominacion'
      Origin = '"Detalle_Cuadre"."Denominacion"'
      currency = True
    end
    object qrDetalle_CuadreCantidad: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Cantidad'
      Origin = '"Detalle_Cuadre"."Cantidad"'
    end
    object qrDetalle_CuadreTotal: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total'
      Origin = '"Detalle_Cuadre"."Total"'
      currency = True
    end
    object qrDetalle_CuadreID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Detalle_Cuadre"."ID"'
      Size = 50
    end
    object qrDetalle_CuadreEfectivo: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Efectivo'
      Origin = '"Detalle_Cuadre"."Efectivo"'
    end
  end
  object lnkCuadre_Caja: TDataSource
    DataSet = qrCuadre_Caja
    Left = 536
    Top = 664
  end
  object prRetiros_Caja: TDataSetProvider
    DataSet = qrRetiros_Caja
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    BeforeUpdateRecord = prFacturasBeforeUpdateRecord
    Left = 536
    Top = 716
  end
  object qrRetiros_Caja: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Retiros_Caja"'
      'Where "Numero" = :Numero')
    UniDirectional = True
    Left = 436
    Top = 716
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Numero'
        ParamType = ptInput
      end>
    object qrRetiros_CajaNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Retiros_Caja"."Numero"'
    end
    object qrRetiros_CajaFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Retiros_Caja"."Fecha"'
    end
    object qrRetiros_CajaHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Retiros_Caja"."Hora"'
    end
    object qrRetiros_CajaUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Retiros_Caja"."Usuario"'
      Size = 100
    end
    object qrRetiros_CajaMonto: TFloatField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value > 0'
      ConstraintErrorMessage = 'Debe introducir un monto mayor de cero (0)'
      DefaultExpression = '0.00'
      FieldName = 'Monto'
      Origin = '"Retiros_Caja"."Monto"'
      currency = True
    end
    object qrRetiros_CajaNumero_Factura: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir el numero de factura'
      FieldName = 'Numero_Factura'
      Origin = '"Retiros_Caja"."Numero_Factura"'
      Size = 25
    end
    object qrRetiros_CajaNombre_Establecimiento: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 
        'Debe introducir el nombre del establecimiento o persona que fact' +
        'ura'
      FieldName = 'Nombre_Establecimiento'
      Origin = '"Retiros_Caja"."Nombre_Establecimiento"'
      Size = 100
    end
    object qrRetiros_CajaID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Retiros_Caja"."ID"'
      Size = 50
    end
  end
  object prApertura_Caja: TDataSetProvider
    DataSet = qrApertura_Caja
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    BeforeUpdateRecord = prFacturasBeforeUpdateRecord
    Left = 766
    Top = 111
  end
  object qrApertura_Caja: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Apertura_Caja"'
      'Where '
      '((ID = :ID) And '
      '("Usuario" = :Usuario) And '
      '("Abierto" = :Abierto))'
      'OR'
      '("Proceso" = :Proceso)')
    UniDirectional = True
    Left = 652
    Top = 111
    ParamData = <
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
        DataType = ftBoolean
        Name = 'Abierto'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrApertura_CajaNumero: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero'
      Origin = '"Apertura_Caja"."Numero"'
      DisplayFormat = '0000000000'
    end
    object qrApertura_CajaUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Apertura_Caja"."Usuario"'
      Size = 100
    end
    object qrApertura_CajaFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Apertura_Caja"."Fecha"'
    end
    object qrApertura_CajaHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Apertura_Caja"."Hora"'
    end
    object qrApertura_CajaMonto: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Monto'
      Origin = '"Apertura_Caja"."Monto"'
      currency = True
    end
    object qrApertura_CajaRetirado: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Retirado'
      Origin = '"Apertura_Caja"."Retirado"'
      currency = True
    end
    object qrApertura_CajaAbierto: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'TRUE'#39
      FieldName = 'Abierto'
      Origin = '"Apertura_Caja"."Abierto"'
    end
    object qrApertura_CajaBalance: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Balance'
      Origin = '"Apertura_Caja"."Balance"'
      currency = True
    end
    object qrApertura_CajaProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Apertura_Caja"."Proceso"'
      Size = 25
    end
    object qrApertura_CajaUsuario_Cuadre: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario_Cuadre'
      Origin = '"Apertura_Caja"."Usuario_Cuadre"'
      Size = 100
    end
    object qrApertura_CajaID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Apertura_Caja"."ID"'
      Size = 50
    end
    object qrApertura_CajaCaja: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Caja'
      Origin = '"Apertura_Caja"."Caja"'
      Size = 25
    end
    object qrApertura_CajaProceso_Cierre: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso_Cierre'
      Origin = '"Apertura_Caja"."Proceso_Cierre"'
      Size = 25
    end
    object qrApertura_CajaUsuario_Caja: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario_Caja'
      Origin = '"Apertura_Caja"."Usuario_Caja"'
      Size = 100
    end
  end
  object qrFacturas_Cliente: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Facturas"'
      'Where "Cliente" = :Cliente'
      'Order By "Numero"')
    UniDirectional = True
    Left = 644
    Top = 351
    ParamData = <
      item
        DataType = ftString
        Name = 'Cliente'
        ParamType = ptInput
      end>
    object qrFacturas_ClienteNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Facturas"."Numero"'
      DisplayFormat = #39'F'#39'0000000000'
    end
    object qrFacturas_ClienteNombre_Cliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Cliente'
      Origin = '"Facturas"."Nombre_Cliente"'
      Size = 100
    end
    object qrFacturas_ClienteCondicion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Condicion'
      Origin = '"Facturas"."Condicion"'
      Size = 25
    end
    object qrFacturas_ClienteFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Facturas"."Fecha"'
    end
    object qrFacturas_ClienteHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Facturas"."Hora"'
    end
    object qrFacturas_ClienteConcepto_Factura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto_Factura'
      Origin = '"Facturas"."Concepto_Factura"'
      Size = 100
    end
    object qrFacturas_ClienteProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Facturas"."Proceso"'
      Size = 25
    end
    object qrFacturas_ClienteReferencia: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Referencia'
      Origin = '"Facturas"."Referencia"'
      Size = 25
    end
    object qrFacturas_ClienteSubTotal: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'SubTotal'
      Origin = '"Facturas"."SubTotal"'
      currency = True
    end
    object qrFacturas_ClienteTotalNeto: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'TotalNeto'
      Origin = '"Facturas"."TotalNeto"'
      currency = True
    end
    object qrFacturas_ClienteComentario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario'
      Origin = '"Facturas"."Comentario"'
      Size = 255
    end
    object qrFacturas_ClienteFecha_Validacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Validacion'
      Origin = '"Facturas"."Fecha_Validacion"'
    end
    object qrFacturas_ClienteFecha_Cierre: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Cierre'
      Origin = '"Facturas"."Fecha_Cierre"'
    end
    object qrFacturas_ClienteUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Facturas"."Usuario"'
      Size = 100
    end
    object qrFacturas_ClienteValidado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Validado'
      Origin = '"Facturas"."Validado"'
    end
    object qrFacturas_ClienteCerrado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Cerrado'
      Origin = '"Facturas"."Cerrado"'
    end
    object qrFacturas_ClienteImpuesto_Global: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto_Global'
      Origin = '"Facturas"."Impuesto_Global"'
    end
    object qrFacturas_ClienteValor_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Valor_Impuesto'
      Origin = '"Facturas"."Valor_Impuesto"'
      currency = True
    end
    object qrFacturas_ClienteValor_Impuesto_Detalle: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Valor_Impuesto_Detalle'
      Origin = '"Facturas"."Valor_Impuesto_Detalle"'
      currency = True
    end
    object qrFacturas_ClienteTotal_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Impuesto'
      Origin = '"Facturas"."Total_Impuesto"'
      currency = True
    end
    object qrFacturas_ClienteDescuento_Global: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Global'
      Origin = '"Facturas"."Descuento_Global"'
    end
    object qrFacturas_ClienteValor_Descuento: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Valor_Descuento'
      Origin = '"Facturas"."Valor_Descuento"'
      currency = True
    end
    object qrFacturas_ClienteValor_Descuento_Detalle: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Valor_Descuento_Detalle'
      Origin = '"Facturas"."Valor_Descuento_Detalle"'
      currency = True
    end
    object qrFacturas_ClienteTotal_Descuento: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Descuento'
      Origin = '"Facturas"."Total_Descuento"'
      currency = True
    end
    object qrFacturas_ClienteTerminos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Terminos'
      Origin = '"Facturas"."Terminos"'
    end
    object qrFacturas_ClienteVencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento'
      Origin = '"Facturas"."Vencimiento"'
    end
    object qrFacturas_ClientePagado: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pagado'
      Origin = '"Facturas"."Pagado"'
      currency = True
    end
    object qrFacturas_ClientePendiente: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pendiente'
      Origin = '"Facturas"."Pendiente"'
      currency = True
    end
    object qrFacturas_ClienteUltimoPago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'UltimoPago'
      Origin = '"Facturas"."UltimoPago"'
    end
    object qrFacturas_ClienteCliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Facturas"."Cliente"'
      Size = 25
    end
    object qrFacturas_ClienteTotal_Efectivo_Recibido: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Efectivo_Recibido'
      Origin = '"Facturas"."Total_Efectivo_Recibido"'
      currency = True
    end
    object qrFacturas_ClienteTotal_Efectivo_Devuelto: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Efectivo_Devuelto'
      Origin = '"Facturas"."Total_Efectivo_Devuelto"'
      currency = True
    end
    object qrFacturas_ClienteStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Facturas"."Status"'
      Size = 15
    end
    object qrFacturas_ClienteTotal_Costo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Origin = '"Facturas"."Total_Costo"'
    end
    object qrFacturas_ClienteTipo_Factura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Factura'
      Origin = '"Facturas"."Tipo_Factura"'
      Size = 15
    end
    object qrFacturas_ClienteTipo_NCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_NCF'
      Origin = '"Facturas"."Tipo_NCF"'
      Size = 2
    end
    object qrFacturas_ClienteNCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCF'
      Origin = '"Facturas"."NCF"'
      Size = 100
    end
    object qrFacturas_ClienteVendedor: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Vendedor'
      Origin = '"Facturas"."Vendedor"'
      Size = 25
    end
    object qrFacturas_ClienteNombre_Vendedor: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Vendedor'
      Origin = '"Facturas"."Nombre_Vendedor"'
      Size = 100
    end
    object qrFacturas_ClienteTotal_Restante: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Restante'
      Origin = '"Facturas"."Total_Restante"'
    end
    object qrFacturas_ClienteInteres: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Interes'
      Origin = '"Facturas"."Interes"'
    end
    object qrFacturas_ClienteModalidad: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Modalidad'
      Origin = '"Facturas"."Modalidad"'
      Size = 25
    end
    object qrFacturas_ClienteValor_Interes: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Interes'
      Origin = '"Facturas"."Valor_Interes"'
      currency = True
    end
    object qrFacturas_ClienteValor_Capital: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Capital'
      Origin = '"Facturas"."Valor_Capital"'
      currency = True
    end
    object qrFacturas_ClienteValor_Cuotas: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Cuotas'
      Origin = '"Facturas"."Valor_Cuotas"'
      currency = True
    end
    object qrFacturas_ClienteGasto_Cierre: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Gasto_Cierre'
      Origin = '"Facturas"."Gasto_Cierre"'
    end
    object qrFacturas_ClienteValor_Gasto_Cierre: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Gasto_Cierre'
      Origin = '"Facturas"."Valor_Gasto_Cierre"'
      currency = True
    end
    object qrFacturas_ClienteVence_Financiamiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vence_Financiamiento'
      Origin = '"Facturas"."Vence_Financiamiento"'
    end
    object qrFacturas_ClienteTotal_Estimado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Estimado'
      Origin = '"Facturas"."Total_Estimado"'
      currency = True
    end
    object qrFacturas_ClienteMonto_Financiado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Financiado'
      Origin = '"Facturas"."Monto_Financiado"'
      currency = True
    end
    object qrFacturas_ClienteTipo_Gasto_Cierre: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Gasto_Cierre'
      Origin = '"Facturas"."Tipo_Gasto_Cierre"'
      Size = 25
    end
    object qrFacturas_ClientePeriodo_Pagos: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Periodo_Pagos'
      Origin = '"Facturas"."Periodo_Pagos"'
      Size = 25
    end
    object qrFacturas_ClientePlazo_Pago: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Plazo_Pago'
      Origin = '"Facturas"."Plazo_Pago"'
    end
    object qrFacturas_ClienteDescripcion_NCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion_NCF'
      Origin = '"Facturas"."Descripcion_NCF"'
      Size = 100
    end
    object qrFacturas_ClienteInicial: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Inicial'
      Origin = '"Facturas"."Inicial"'
      currency = True
    end
    object qrFacturas_ClienteConduce: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Conduce'
      Origin = '"Facturas"."Conduce"'
      Size = 25
    end
    object qrFacturas_ClienteDebitado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Debitado'
      Origin = '"Facturas"."Debitado"'
    end
    object qrFacturas_ClienteAcreditado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Acreditado'
      Origin = '"Facturas"."Acreditado"'
    end
    object qrFacturas_ClienteBalance: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Origin = '"Facturas"."Balance"'
    end
    object qrFacturas_ClienteMora: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Mora'
      Origin = '"Facturas"."Mora"'
    end
    object qrFacturas_ClienteMonto_Vencido: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Vencido'
      Origin = '"Facturas"."Monto_Vencido"'
    end
    object qrFacturas_ClienteCuotas_Vencidas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Cuotas_Vencidas'
      Origin = '"Facturas"."Cuotas_Vencidas"'
    end
    object qrFacturas_ClienteMonto_Interes_Cumplido: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Interes_Cumplido'
      Origin = '"Facturas"."Monto_Interes_Cumplido"'
    end
    object qrFacturas_ClienteBalance_Capital: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Capital'
      Origin = '"Facturas"."Balance_Capital"'
    end
    object qrFacturas_ClienteBalance_Interes: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Interes'
      Origin = '"Facturas"."Balance_Interes"'
    end
    object qrFacturas_ClienteBalance_Otros: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Otros'
      Origin = '"Facturas"."Balance_Otros"'
    end
    object qrFacturas_ClienteFecha_Ultimo_Pago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Ultimo_Pago'
      Origin = '"Facturas"."Fecha_Ultimo_Pago"'
    end
    object qrFacturas_ClienteDias_Vencidos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Dias_Vencidos'
      Origin = '"Facturas"."Dias_Vencidos"'
    end
    object qrFacturas_ClienteTotal_Seriales: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Seriales'
      Origin = '"Facturas"."Total_Seriales"'
    end
    object qrFacturas_ClienteSeriales_Registrados: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Seriales_Registrados'
      Origin = '"Facturas"."Seriales_Registrados"'
    end
    object qrFacturas_ClienteAlmacen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Origin = '"Facturas"."Almacen"'
      Size = 25
    end
    object qrFacturas_ClienteApertura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Apertura'
      Origin = '"Facturas"."Apertura"'
      Size = 25
    end
    object qrFacturas_ClienteID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Facturas"."ID"'
      Size = 50
    end
    object qrFacturas_ClienteCotizacion_Numero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Cotizacion_Numero'
      Origin = '"Facturas"."Cotizacion_Numero"'
    end
    object qrFacturas_ClienteProceso_Cotizacion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso_Cotizacion'
      Origin = '"Facturas"."Proceso_Cotizacion"'
      Size = 25
    end
    object qrFacturas_ClienteStatus_Trabajo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status_Trabajo'
      Origin = '"Facturas"."Status_Trabajo"'
      Size = 15
    end
    object qrFacturas_ClienteMoneda: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Moneda'
      Origin = '"Facturas"."Moneda"'
    end
    object qrFacturas_ClienteSub_Total_Moneda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Sub_Total_Moneda'
      Origin = '"Facturas"."Sub_Total_Moneda"'
    end
    object qrFacturas_ClienteTotal_Impuesto_Moneda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto_Moneda'
      Origin = '"Facturas"."Total_Impuesto_Moneda"'
    end
    object qrFacturas_ClienteTotal_Descuento_Moneda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento_Moneda'
      Origin = '"Facturas"."Total_Descuento_Moneda"'
    end
    object qrFacturas_ClienteTotal_Moneda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Moneda'
      Origin = '"Facturas"."Total_Moneda"'
    end
    object qrFacturas_ClienteTasa: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Tasa'
      Origin = '"Facturas"."Tasa"'
    end
    object qrFacturas_ClienteTotal_Efectivo_Recibido_Moneda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo_Recibido_Moneda'
      Origin = '"Facturas"."Total_Efectivo_Recibido_Moneda"'
    end
    object qrFacturas_ClienteTotal_Efectivo_Devuelto_Moneda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo_Devuelto_Moneda'
      Origin = '"Facturas"."Total_Efectivo_Devuelto_Moneda"'
    end
    object qrFacturas_ClienteEmpleado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Empleado'
      Origin = '"Facturas"."Empleado"'
      Size = 25
    end
    object qrFacturas_ClienteNombre_Empleado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Empleado'
      Origin = '"Facturas"."Nombre_Empleado"'
      Size = 100
    end
    object qrFacturas_ClienteNumero_Contrato: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Contrato'
      Origin = '"Facturas"."Numero_Contrato"'
      Size = 25
    end
    object qrFacturas_ClienteStatus_Mercancia: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status_Mercancia'
      Origin = '"Facturas"."Status_Mercancia"'
      Size = 15
    end
    object qrFacturas_ClienteFecha_Primer_Pago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Primer_Pago'
      Origin = '"Facturas"."Fecha_Primer_Pago"'
    end
    object qrFacturas_ClienteLayAway: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'LayAway'
      Origin = '"Facturas"."LayAway"'
    end
    object qrFacturas_ClienteFecha_LayAway: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_LayAway'
      Origin = '"Facturas"."Fecha_LayAway"'
    end
    object qrFacturas_ClienteVencimiento_LayAway: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento_LayAway'
      Origin = '"Facturas"."Vencimiento_LayAway"'
    end
  end
  object prFacturas_Cliente: TDataSetProvider
    DataSet = qrFacturas_Cliente
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    BeforeUpdateRecord = prFacturasBeforeUpdateRecord
    Left = 758
    Top = 351
  end
  object qrPagos_Clientes: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Pagos_Clientes"'
      'Where "Proceso" = :Proceso Or  "Cliente" = :Cliente')
    UniDirectional = True
    Left = 644
    Top = 399
    ParamData = <
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
    object qrPagos_ClientesProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Pagos_Clientes"."Proceso"'
      Size = 25
    end
    object qrPagos_ClientesNumero: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero'
      Origin = '"Pagos_Clientes"."Numero"'
      DisplayFormat = #39'R-'#39'0000000000'
    end
    object qrPagos_ClientesFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Pagos_Clientes"."Fecha"'
    end
    object qrPagos_ClientesNombre_Cliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Cliente'
      Origin = '"Pagos_Clientes"."Nombre_Cliente"'
      Size = 100
    end
    object qrPagos_ClientesHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Pagos_Clientes"."Hora"'
    end
    object qrPagos_ClientesCliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Pagos_Clientes"."Cliente"'
      Size = 25
    end
    object qrPagos_ClientesFactura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Factura'
      Origin = '"Pagos_Clientes"."Factura"'
      Size = 25
    end
    object qrPagos_ClientesMonto: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Monto'
      Origin = '"Pagos_Clientes"."Monto"'
      currency = True
    end
    object qrPagos_ClientesConcepto: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto'
      Origin = '"Pagos_Clientes"."Concepto"'
      Size = 100
    end
    object qrPagos_ClientesPagado_Capital: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pagado_Capital'
      Origin = '"Pagos_Clientes"."Pagado_Capital"'
      currency = True
    end
    object qrPagos_ClientesPagado_Interes: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pagado_Interes'
      Origin = '"Pagos_Clientes"."Pagado_Interes"'
      currency = True
    end
    object qrPagos_ClientesPagado_Mora: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pagado_Mora'
      Origin = '"Pagos_Clientes"."Pagado_Mora"'
      currency = True
    end
    object qrPagos_ClientesPagado_Otros: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pagado_Otros'
      Origin = '"Pagos_Clientes"."Pagado_Otros"'
      currency = True
    end
    object qrPagos_ClientesTotal_Pagado: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Pagado'
      Origin = '"Pagos_Clientes"."Total_Pagado"'
      currency = True
    end
    object qrPagos_ClientesRecibido_Por: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Recibido_Por'
      Origin = '"Pagos_Clientes"."Recibido_Por"'
      Size = 100
    end
    object qrPagos_ClientesStatus: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'ACTIVO'#39
      FieldName = 'Status'
      Origin = '"Pagos_Clientes"."Status"'
      Size = 15
    end
    object qrPagos_ClientesID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Pagos_Clientes"."ID"'
      Size = 50
    end
    object qrPagos_ClientesEmpleado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Empleado'
      Origin = '"Pagos_Clientes"."Empleado"'
      Size = 25
    end
    object qrPagos_ClientesNombre_Empleado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Empleado'
      Origin = '"Pagos_Clientes"."Nombre_Empleado"'
      Size = 100
    end
    object qrPagos_ClientesApertura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Apertura'
      Origin = '"Pagos_Clientes"."Apertura"'
      Size = 25
    end
    object qrPagos_ClientesRecibido: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Recibido'
      Origin = '"Pagos_Clientes"."Recibido"'
      currency = True
    end
    object qrPagos_ClientesDevuelto: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Devuelto'
      Origin = '"Pagos_Clientes"."Devuelto"'
      currency = True
    end
  end
  object prPagos_Clientes: TDataSetProvider
    DataSet = qrPagos_Clientes
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    BeforeUpdateRecord = prFacturasBeforeUpdateRecord
    Left = 758
    Top = 399
  end
  object lnkPagos_Clientes: TDataSource
    DataSet = qrPagos_Clientes
    Left = 758
    Top = 448
  end
  object qrDetalle_Pago_Facturas: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkPagos_Clientes
    SQL.Strings = (
      'Select  * From  "Detalle_Pagos_Clientes"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 644
    Top = 447
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrDetalle_Pago_FacturasProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalle_Pagos_Clientes"."Proceso"'
      Size = 25
    end
    object qrDetalle_Pago_FacturasFactura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Factura'
      Origin = '"Detalle_Pagos_Clientes"."Factura"'
      Size = 25
    end
    object qrDetalle_Pago_FacturasCliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Detalle_Pagos_Clientes"."Cliente"'
      Size = 25
    end
    object qrDetalle_Pago_FacturasCuota: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Cuota'
      Origin = '"Detalle_Pagos_Clientes"."Cuota"'
    end
    object qrDetalle_Pago_FacturasFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Detalle_Pagos_Clientes"."Fecha"'
    end
    object qrDetalle_Pago_FacturasHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Detalle_Pagos_Clientes"."Hora"'
    end
    object qrDetalle_Pago_FacturasCapital: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Capital'
      Origin = '"Detalle_Pagos_Clientes"."Capital"'
      currency = True
    end
    object qrDetalle_Pago_FacturasInteres: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Interes'
      Origin = '"Detalle_Pagos_Clientes"."Interes"'
      currency = True
    end
    object qrDetalle_Pago_FacturasMora: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Mora'
      Origin = '"Detalle_Pagos_Clientes"."Mora"'
      currency = True
    end
    object qrDetalle_Pago_FacturasOtros: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Otros'
      Origin = '"Detalle_Pagos_Clientes"."Otros"'
      currency = True
    end
    object qrDetalle_Pago_FacturasVencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento'
      Origin = '"Detalle_Pagos_Clientes"."Vencimiento"'
    end
    object qrDetalle_Pago_FacturasPendiente: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pendiente'
      Origin = '"Detalle_Pagos_Clientes"."Pendiente"'
      currency = True
    end
    object qrDetalle_Pago_FacturasID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Detalle_Pagos_Clientes"."ID"'
      Size = 50
    end
    object qrDetalle_Pago_FacturasProceso_Factura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso_Factura'
      Origin = '"Detalle_Pagos_Clientes"."Proceso_Factura"'
      Size = 25
    end
  end
  object qrListadoUsuarios: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Usuarios"'
      'Order By "NombreCompleto"')
    UniDirectional = True
    Left = 644
    Top = 559
    object qrListadoUsuariosUserName: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'UserName'
      Origin = '"Usuarios"."UserName"'
      Size = 25
    end
    object qrListadoUsuariosNombreCompleto: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'NombreCompleto'
      Origin = '"Usuarios"."NombreCompleto"'
      Size = 100
    end
    object qrListadoUsuariosPassword: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Password'
      Origin = '"Usuarios"."Password"'
      Size = 255
    end
    object qrListadoUsuariosNivel_Acceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nivel_Acceso'
      Origin = '"Usuarios"."Nivel_Acceso"'
      Size = 25
    end
    object qrListadoUsuariosDescription: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Description'
      Origin = '"Usuarios"."Description"'
      Size = 100
    end
    object qrListadoUsuariosAccess_Level: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Access_Level'
      Origin = '"Usuarios"."Access_Level"'
      Size = 25
    end
    object qrListadoUsuariosDefault_Company: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Default_Company'
      Origin = '"Usuarios"."Default_Company"'
      Size = 50
    end
    object qrListadoUsuariosDefault_Terminal: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Default_Terminal'
      Origin = '"Usuarios"."Default_Terminal"'
      Size = 50
    end
    object qrListadoUsuariosLast_Company: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Last_Company'
      Origin = '"Usuarios"."Last_Company"'
      Size = 50
    end
    object qrListadoUsuariosLast_Terminal: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Last_Terminal'
      Origin = '"Usuarios"."Last_Terminal"'
      Size = 50
    end
    object qrListadoUsuariosLast_Login: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Last_Login'
      Origin = '"Usuarios"."Last_Login"'
    end
    object qrListadoUsuariosUser_Type: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'User_Type'
      Origin = '"Usuarios"."User_Type"'
      Size = 25
    end
    object qrListadoUsuariosFoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Foto'
      Origin = '"Usuarios"."Foto"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qrListadoUsuariosmail: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'mail'
      Origin = '"Usuarios"."mail"'
      Size = 100
    end
    object qrListadoUsuariosDate_Created: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Date_Created'
      Origin = '"Usuarios"."Date_Created"'
    end
    object qrListadoUsuariosStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Usuarios"."Status"'
      Size = 15
    end
  end
  object prListadoUsuarios: TDataSetProvider
    DataSet = qrListadoUsuarios
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    BeforeUpdateRecord = prFacturasBeforeUpdateRecord
    Left = 758
    Top = 559
  end
  object qrExistenciaInicial: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Detalles_Compra"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 644
    Top = 615
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrExistenciaInicialProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalles_Compra"."Proceso"'
      Size = 25
    end
    object qrExistenciaInicialCodigo: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir un C'#243'digo de Producto'
      FieldName = 'Codigo'
      Origin = '"Detalles_Compra"."Codigo"'
      Size = 25
    end
    object qrExistenciaInicialCodigo_Real: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo_Real'
      Origin = '"Detalles_Compra"."Codigo_Real"'
      Size = 25
    end
    object qrExistenciaInicialSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Detalles_Compra"."Secuencia"'
      DisplayFormat = '#,#0'
    end
    object qrExistenciaInicialDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Detalles_Compra"."Descripcion"'
      Size = 100
    end
    object qrExistenciaInicialCategoria: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Categoria'
      Origin = '"Detalles_Compra"."Categoria"'
      DisplayFormat = '1'
    end
    object qrExistenciaInicialFabricante: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Fabricante'
      Origin = '"Detalles_Compra"."Fabricante"'
    end
    object qrExistenciaInicialDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Departamento'
      Origin = '"Detalles_Compra"."Departamento"'
    end
    object qrExistenciaInicialTipo_Producto: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Tipo_Producto'
      Origin = '"Detalles_Compra"."Tipo_Producto"'
    end
    object qrExistenciaInicialCosto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Costo'
      Origin = '"Detalles_Compra"."Costo"'
      currency = True
    end
    object qrExistenciaInicialPrecio_Lista: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Lista'
      Origin = '"Detalles_Compra"."Precio_Lista"'
      currency = True
    end
    object qrExistenciaInicialCantidad: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Cantidad'
      Origin = '"Detalles_Compra"."Cantidad"'
      DisplayFormat = '#,#0.00'
    end
    object qrExistenciaInicialTotal_Costo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Origin = '"Detalles_Compra"."Total_Costo"'
      currency = True
    end
    object qrExistenciaInicialProveedor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Proveedor'
      Origin = '"Detalles_Compra"."Proveedor"'
    end
    object qrExistenciaInicialFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Detalles_Compra"."Fecha"'
    end
    object qrExistenciaInicialHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Detalles_Compra"."Hora"'
    end
    object qrExistenciaInicialUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Detalles_Compra"."Usuario"'
      Size = 100
    end
    object qrExistenciaInicialMes: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Mes'
      Origin = '"Detalles_Compra"."Mes"'
      DisplayFormat = '00'
    end
    object qrExistenciaInicialAno: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ano'
      Origin = '"Detalles_Compra"."Ano"'
      DisplayFormat = '0000'
    end
    object qrExistenciaInicialImpuesto: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Impuesto'
      Origin = '"Detalles_Compra"."Impuesto"'
      DisplayFormat = '#,#0.00'
    end
    object qrExistenciaInicialDescuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento'
      Origin = '"Detalles_Compra"."Descuento"'
    end
    object qrExistenciaInicialValor_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Detalles_Compra"."Valor_Impuesto"'
      currency = True
    end
    object qrExistenciaInicialValor_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Detalles_Compra"."Valor_Descuento"'
      currency = True
    end
    object qrExistenciaInicialTotal_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Detalles_Compra"."Total_Impuesto"'
      currency = True
    end
    object qrExistenciaInicialTotal_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Detalles_Compra"."Total_Descuento"'
      currency = True
    end
    object qrExistenciaInicialTotal_Precio: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Precio'
      Origin = '"Detalles_Compra"."Total_Precio"'
      currency = True
    end
    object qrExistenciaInicialCantidad_Devuelto: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Cantidad_Devuelto'
      Origin = '"Detalles_Compra"."Cantidad_Devuelto"'
      DisplayFormat = '#,#0.00'
    end
    object qrExistenciaInicialTipo_Beneficio: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Porcentual'#39
      FieldName = 'Tipo_Beneficio'
      Origin = '"Detalles_Compra"."Tipo_Beneficio"'
      Size = 15
    end
    object qrExistenciaInicialValor_Beneficio_PMayor_Contado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_PMayor_Contado'
      Origin = '"Detalles_Compra"."Valor_Beneficio_PMayor_Contado"'
    end
    object qrExistenciaInicialValor_Beneficio_PMayor_Credito: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_PMayor_Credito'
      Origin = '"Detalles_Compra"."Valor_Beneficio_PMayor_Credito"'
    end
    object qrExistenciaInicialValor_Beneficio_Detalle_Contado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_Detalle_Contado'
      Origin = '"Detalles_Compra"."Valor_Beneficio_Detalle_Contado"'
    end
    object qrExistenciaInicialValor_Beneficio_Detalle_Credito: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_Detalle_Credito'
      Origin = '"Detalles_Compra"."Valor_Beneficio_Detalle_Credito"'
    end
    object qrExistenciaInicialPrecio_Venta_Por_Mayor_Contado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Por_Mayor_Contado'
      Origin = '"Detalles_Compra"."Precio_Venta_Por_Mayor_Contado"'
      currency = True
    end
    object qrExistenciaInicialPrecio_Venta_Por_Mayor_Credito: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Por_Mayor_Credito'
      Origin = '"Detalles_Compra"."Precio_Venta_Por_Mayor_Credito"'
      currency = True
    end
    object qrExistenciaInicialPrecio_Venta_Detalle_Contado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Detalle_Contado'
      Origin = '"Detalles_Compra"."Precio_Venta_Detalle_Contado"'
      currency = True
    end
    object qrExistenciaInicialPrecio_Venta_Detalle_Credito: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Detalle_Credito'
      Origin = '"Detalles_Compra"."Precio_Venta_Detalle_Credito"'
      currency = True
    end
    object qrExistenciaInicialPrecio_Minimo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Minimo'
      Origin = '"Detalles_Compra"."Precio_Minimo"'
      currency = True
    end
    object qrExistenciaInicialContenido: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Contenido'
      Origin = '"Detalles_Compra"."Contenido"'
    end
    object qrExistenciaInicialRegistro_Compra: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Registro_Compra'
      Origin = '"Detalles_Compra"."Registro_Compra"'
    end
    object qrExistenciaInicialUso_Inmediato: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Uso_Inmediato'
      Origin = '"Detalles_Compra"."Uso_Inmediato"'
    end
    object qrExistenciaInicialCantidad_Despachada: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad_Despachada'
      Origin = '"Detalles_Compra"."Cantidad_Despachada"'
    end
    object qrExistenciaInicialConcepto_Uso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto_Uso'
      Origin = '"Detalles_Compra"."Concepto_Uso"'
      Size = 255
    end
    object qrExistenciaInicialRequiere_Serial: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Requiere_Serial'
      Origin = '"Detalles_Compra"."Requiere_Serial"'
    end
    object qrExistenciaInicialAlmacen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Origin = '"Detalles_Compra"."Almacen"'
      Size = 25
    end
    object qrExistenciaInicialID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Detalles_Compra"."ID"'
      Size = 50
    end
    object qrExistenciaInicialPrecio_Unidad: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Unidad'
      Origin = '"Detalles_Compra"."Precio_Unidad"'
    end
  end
  object prExistenciaInicial: TDataSetProvider
    DataSet = qrExistenciaInicial
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 758
    Top = 616
  end
  object qrDesgloceEfectivo: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select Distinct '
      '"Forma_Pago",'
      '"Es_Efectivo", '
      'ID,'
      'Sum("Valor_Recibido") Total_Recibido, '
      'Sum("Valor_Devolver")Total_Devuelto From '
      '"Detalle_Pago_Factura" '
      'Where ("Fecha" BetWeen :F1 And :F2) '
      'Group By ID,"Forma_Pago", "Es_Efectivo"'
      'Order By ID,"Forma_Pago", "Es_Efectivo"')
    UniDirectional = True
    Left = 644
    Top = 671
    ParamData = <
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
    object qrDesgloceEfectivoID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      ProviderFlags = []
      Size = 50
    end
    object qrDesgloceEfectivoForma_Pago: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Forma_Pago'
      ProviderFlags = []
    end
    object qrDesgloceEfectivoEs_Efectivo: TBooleanField
      FieldName = 'Es_Efectivo'
      ProviderFlags = []
    end
    object qrDesgloceEfectivoTOTAL_RECIBIDO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_RECIBIDO'
      ProviderFlags = []
    end
    object qrDesgloceEfectivoTOTAL_DEVUELTO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_DEVUELTO'
      ProviderFlags = []
    end
  end
  object prDesgloceEfectivo: TDataSetProvider
    DataSet = qrDesgloceEfectivo
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 758
    Top = 672
  end
  object qrListadoPagos: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Pagos_Clientes"'
      'Where "Fecha" Between :F1 And :F2'
      'Order By "Fecha", "Hora"')
    UniDirectional = True
    Left = 644
    Top = 735
    ParamData = <
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
    object qrListadoPagosProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Pagos_Clientes"."Proceso"'
      Size = 25
    end
    object qrListadoPagosNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Pagos_Clientes"."Numero"'
      DisplayFormat = #39'R-'#39'0000000000'
    end
    object qrListadoPagosFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Pagos_Clientes"."Fecha"'
    end
    object qrListadoPagosHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Pagos_Clientes"."Hora"'
    end
    object qrListadoPagosCliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Pagos_Clientes"."Cliente"'
      Size = 25
    end
    object qrListadoPagosFactura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Factura'
      Origin = '"Pagos_Clientes"."Factura"'
      Size = 25
    end
    object qrListadoPagosMonto: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Monto'
      Origin = '"Pagos_Clientes"."Monto"'
      currency = True
    end
    object qrListadoPagosNombre_Cliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Cliente'
      Origin = '"Pagos_Clientes"."Nombre_Cliente"'
      Size = 100
    end
    object qrListadoPagosConcepto: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto'
      Origin = '"Pagos_Clientes"."Concepto"'
      Size = 100
    end
    object qrListadoPagosPagado_Capital: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pagado_Capital'
      Origin = '"Pagos_Clientes"."Pagado_Capital"'
      currency = True
    end
    object qrListadoPagosPagado_Interes: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pagado_Interes'
      Origin = '"Pagos_Clientes"."Pagado_Interes"'
      currency = True
    end
    object qrListadoPagosPagado_Mora: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pagado_Mora'
      Origin = '"Pagos_Clientes"."Pagado_Mora"'
      currency = True
    end
    object qrListadoPagosPagado_Otros: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pagado_Otros'
      Origin = '"Pagos_Clientes"."Pagado_Otros"'
      currency = True
    end
    object qrListadoPagosTotal_Pagado: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Pagado'
      Origin = '"Pagos_Clientes"."Total_Pagado"'
      currency = True
    end
    object qrListadoPagosRecibido_Por: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Recibido_Por'
      Origin = '"Pagos_Clientes"."Recibido_Por"'
      Size = 100
    end
    object qrListadoPagosStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Pagos_Clientes"."Status"'
      Size = 15
    end
    object qrListadoPagosID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Pagos_Clientes"."ID"'
      Size = 50
    end
    object qrListadoPagosEmpleado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Empleado'
      Origin = '"Pagos_Clientes"."Empleado"'
      Size = 25
    end
    object qrListadoPagosNombre_Empleado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Empleado'
      Origin = '"Pagos_Clientes"."Nombre_Empleado"'
      Size = 100
    end
    object qrListadoPagosApertura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Apertura'
      Origin = '"Pagos_Clientes"."Apertura"'
      Size = 25
    end
  end
  object prListadoPagos: TDataSetProvider
    DataSet = qrListadoPagos
    Options = [poIncFieldProps, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 758
    Top = 736
  end
  object qrDetalle_Pago_Compra: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkCompra_Productos
    SQL.Strings = (
      'Select  * From  "Detalle_Pago_Compra"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 244
    Top = 407
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrDetalle_Pago_CompraProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalle_Pago_Compra"."Proceso"'
      Size = 25
    end
    object qrDetalle_Pago_CompraForma_Pago: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Forma_Pago'
      Origin = '"Detalle_Pago_Compra"."Forma_Pago"'
    end
    object qrDetalle_Pago_CompraFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Detalle_Pago_Compra"."Fecha"'
    end
    object qrDetalle_Pago_CompraHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Detalle_Pago_Compra"."Hora"'
    end
    object qrDetalle_Pago_CompraTasa: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Tasa'
      Origin = '"Detalle_Pago_Compra"."Tasa"'
      currency = True
    end
    object qrDetalle_Pago_CompraValor_Recibido: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Recibido'
      Origin = '"Detalle_Pago_Compra"."Valor_Recibido"'
      currency = True
    end
    object qrDetalle_Pago_CompraValor_Recibido_Local: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Recibido_Local'
      Origin = '"Detalle_Pago_Compra"."Valor_Recibido_Local"'
      currency = True
    end
    object qrDetalle_Pago_CompraValor_Devolver: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Devolver'
      Origin = '"Detalle_Pago_Compra"."Valor_Devolver"'
      currency = True
    end
    object qrDetalle_Pago_CompraValor_Devolver_Local: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Devolver_Local'
      Origin = '"Detalle_Pago_Compra"."Valor_Devolver_Local"'
      currency = True
    end
    object qrDetalle_Pago_CompraNumero_Banco: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Banco'
      Origin = '"Detalle_Pago_Compra"."Numero_Banco"'
    end
    object qrDetalle_Pago_CompraNumero_Documento: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Documento'
      Origin = '"Detalle_Pago_Compra"."Numero_Documento"'
      Size = 25
    end
    object qrDetalle_Pago_CompraNumero_Aprobacion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Aprobacion'
      Origin = '"Detalle_Pago_Compra"."Numero_Aprobacion"'
      Size = 25
    end
    object qrDetalle_Pago_CompraMes_Vencimiento: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Mes_Vencimiento'
      Origin = '"Detalle_Pago_Compra"."Mes_Vencimiento"'
      DisplayFormat = '00'
    end
    object qrDetalle_Pago_CompraAno_Vencimiento: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ano_Vencimiento'
      Origin = '"Detalle_Pago_Compra"."Ano_Vencimiento"'
      DisplayFormat = '0000'
    end
    object qrDetalle_Pago_CompraTipo_Documento: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Efectivo'#39
      FieldName = 'Tipo_Documento'
      Origin = '"Detalle_Pago_Compra"."Tipo_Documento"'
      Size = 100
    end
    object qrDetalle_Pago_CompraEs_Efectivo: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'FALSE'#39
      FieldName = 'Es_Efectivo'
      Origin = '"Detalle_Pago_Compra"."Es_Efectivo"'
    end
    object qrDetalle_Pago_CompraRequiere_Documento: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'FALSE'#39
      FieldName = 'Requiere_Documento'
      Origin = '"Detalle_Pago_Compra"."Requiere_Documento"'
    end
    object qrDetalle_Pago_CompraRequiere_Vencimiento: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'FALSE'#39
      FieldName = 'Requiere_Vencimiento'
      Origin = '"Detalle_Pago_Compra"."Requiere_Vencimiento"'
    end
    object qrDetalle_Pago_CompraRequiere_Aprobacion: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'FALSE'#39
      FieldName = 'Requiere_Aprobacion'
      Origin = '"Detalle_Pago_Compra"."Requiere_Aprobacion"'
    end
    object qrDetalle_Pago_CompraPendiente: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Origin = '"Detalle_Pago_Compra"."Pendiente"'
      currency = True
    end
    object qrDetalle_Pago_CompraID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Detalle_Pago_Compra"."ID"'
      Size = 50
    end
  end
  object InfoDataBase: TIBDatabase
    DatabaseName = 'E:\Development\Database\Inverario_Facturacion\IYS.RMS'
    Params.Strings = (
      'user_name=MGUMBS'
      'password=Ice49635m'
      'sql_role_name=Admin')
    LoginPrompt = False
    DefaultTransaction = InfoTransaction
    Left = 40
    Top = 8
  end
  object qrNotas_Credito: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Notas_Credito"'
      'Where "Proceso" = :Proceso Or  "Cliente" = :Cliente')
    UniDirectional = True
    Left = 244
    Top = 799
    ParamData = <
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
    object qrNotas_CreditoProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Notas_Credito"."Proceso"'
      Size = 25
    end
    object qrNotas_CreditoNumero: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero'
      Origin = '"Notas_Credito"."Numero"'
      DisplayFormat = #39'NC-'#39'0000000000'
    end
    object qrNotas_CreditoFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Notas_Credito"."Fecha"'
    end
    object qrNotas_CreditoHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Notas_Credito"."Hora"'
    end
    object qrNotas_CreditoCliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Notas_Credito"."Cliente"'
      Size = 25
    end
    object qrNotas_CreditoFactura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Factura'
      Origin = '"Notas_Credito"."Factura"'
      Size = 25
    end
    object qrNotas_CreditoTipo_NCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_NCF'
      Origin = '"Notas_Credito"."Tipo_NCF"'
      Size = 2
    end
    object qrNotas_CreditoNCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCF'
      Origin = '"Notas_Credito"."NCF"'
      Size = 100
    end
    object qrNotas_CreditoNCF_Modificado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCF_Modificado'
      Origin = '"Notas_Credito"."NCF_Modificado"'
      Size = 100
    end
    object qrNotas_CreditoMonto: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Monto'
      Origin = '"Notas_Credito"."Monto"'
      currency = True
    end
    object qrNotas_CreditoConcepto: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto'
      Origin = '"Notas_Credito"."Concepto"'
      Size = 100
    end
    object qrNotas_CreditoCapital: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Capital'
      Origin = '"Notas_Credito"."Capital"'
      currency = True
    end
    object qrNotas_CreditoInteres: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Interes'
      Origin = '"Notas_Credito"."Interes"'
      currency = True
    end
    object qrNotas_CreditoMora: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Mora'
      Origin = '"Notas_Credito"."Mora"'
      currency = True
    end
    object qrNotas_CreditoOtros: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Otros'
      Origin = '"Notas_Credito"."Otros"'
      currency = True
    end
    object qrNotas_CreditoTotal: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total'
      Origin = '"Notas_Credito"."Total"'
      currency = True
    end
    object qrNotas_CreditoRealizada_Por: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Realizada_Por'
      Origin = '"Notas_Credito"."Realizada_Por"'
      Size = 100
    end
    object qrNotas_CreditoStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Notas_Credito"."Status"'
      Size = 15
    end
    object qrNotas_CreditoID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Notas_Credito"."ID"'
      Size = 50
    end
    object qrNotas_CreditoApertura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Apertura'
      Origin = '"Notas_Credito"."Apertura"'
      Size = 25
    end
  end
  object prNotas_Credito: TDataSetProvider
    DataSet = qrNotas_Credito
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    OnUpdateData = prNotas_CreditoUpdateData
    Left = 344
    Top = 799
  end
  object lnkNotas_Credito: TDataSource
    DataSet = qrNotas_Credito
    Left = 344
    Top = 844
  end
  object qrDetalle_Notas_Credito: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkNotas_Credito
    SQL.Strings = (
      'Select  * From "Detalle_Notas_Credito"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 244
    Top = 844
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrDetalle_Notas_CreditoProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalle_Notas_Credito"."Proceso"'
      Size = 25
    end
    object qrDetalle_Notas_CreditoFactura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Factura'
      Origin = '"Detalle_Notas_Credito"."Factura"'
      Size = 25
    end
    object qrDetalle_Notas_CreditoCliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Detalle_Notas_Credito"."Cliente"'
      Size = 25
    end
    object qrDetalle_Notas_CreditoCuota: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Cuota'
      Origin = '"Detalle_Notas_Credito"."Cuota"'
    end
    object qrDetalle_Notas_CreditoFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Detalle_Notas_Credito"."Fecha"'
    end
    object qrDetalle_Notas_CreditoHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Detalle_Notas_Credito"."Hora"'
    end
    object qrDetalle_Notas_CreditoCapital: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Capital'
      Origin = '"Detalle_Notas_Credito"."Capital"'
      currency = True
    end
    object qrDetalle_Notas_CreditoInteres: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Interes'
      Origin = '"Detalle_Notas_Credito"."Interes"'
      currency = True
    end
    object qrDetalle_Notas_CreditoMora: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Mora'
      Origin = '"Detalle_Notas_Credito"."Mora"'
      currency = True
    end
    object qrDetalle_Notas_CreditoOtros: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Otros'
      Origin = '"Detalle_Notas_Credito"."Otros"'
      currency = True
    end
    object qrDetalle_Notas_CreditoVencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento'
      Origin = '"Detalle_Notas_Credito"."Vencimiento"'
    end
    object qrDetalle_Notas_CreditoPendiente: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Origin = '"Detalle_Notas_Credito"."Pendiente"'
    end
    object qrDetalle_Notas_CreditoID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Detalle_Notas_Credito"."ID"'
      Size = 50
    end
  end
  object prForms: TDataSetProvider
    DataSet = qrForms
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    BeforeUpdateRecord = prFacturasBeforeUpdateRecord
    Left = 536
    Top = 502
  end
  object qrForms: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Forms"'
      'Order By "Description", "Name"')
    UniDirectional = True
    Left = 436
    Top = 502
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
  object prComprobantes_Fiscales: TDataSetProvider
    DataSet = qrComprobantes_Fiscales
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    BeforeUpdateRecord = prFacturasBeforeUpdateRecord
    Left = 758
    Top = 942
  end
  object qrComprobantes_Fiscales: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Comprobantes_Fiscales"'
      'Where "Aplicable" = :Aplicable Or "Aplicable" = '#39'AL'#39
      'Order By "Tipo"')
    UniDirectional = True
    Left = 644
    Top = 942
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
  object qrOrdenes_Compra: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Ordenes_Compra"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 920
    Top = 303
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrOrdenes_CompraNumero: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero'
      Origin = '"Ordenes_Compra"."Numero"'
      DisplayFormat = #39'OC'#39'0000000000'
    end
    object qrOrdenes_CompraProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Ordenes_Compra"."Proceso"'
      Size = 25
    end
    object qrOrdenes_CompraNombre_Proveedor: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Proveedor'
      Origin = '"Ordenes_Compra"."Nombre_Proveedor"'
      Size = 100
    end
    object qrOrdenes_CompraFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Ordenes_Compra"."Fecha"'
    end
    object qrOrdenes_CompraHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Ordenes_Compra"."Hora"'
    end
    object qrOrdenes_CompraConcepto_Compra: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto_Compra'
      Origin = '"Ordenes_Compra"."Concepto_Compra"'
      Size = 100
    end
    object qrOrdenes_CompraReferencia: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Referencia'
      Origin = '"Ordenes_Compra"."Referencia"'
      Size = 25
    end
    object qrOrdenes_CompraSubTotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SubTotal'
      Origin = '"Ordenes_Compra"."SubTotal"'
    end
    object qrOrdenes_CompraTotalNeto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TotalNeto'
      Origin = '"Ordenes_Compra"."TotalNeto"'
    end
    object qrOrdenes_CompraComentario: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Ninguno'#39
      FieldName = 'Comentario'
      Origin = '"Ordenes_Compra"."Comentario"'
      Size = 255
    end
    object qrOrdenes_CompraFecha_Validacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Validacion'
      Origin = '"Ordenes_Compra"."Fecha_Validacion"'
    end
    object qrOrdenes_CompraFecha_Cierre: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Cierre'
      Origin = '"Ordenes_Compra"."Fecha_Cierre"'
    end
    object qrOrdenes_CompraUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Ordenes_Compra"."Usuario"'
      Size = 100
    end
    object qrOrdenes_CompraValidado: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'FALSE'#39
      FieldName = 'Validado'
      Origin = '"Ordenes_Compra"."Validado"'
    end
    object qrOrdenes_CompraCerrado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Cerrado'
      Origin = '"Ordenes_Compra"."Cerrado"'
    end
    object qrOrdenes_CompraImpuesto_Global: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto_Global'
      Origin = '"Ordenes_Compra"."Impuesto_Global"'
    end
    object qrOrdenes_CompraValor_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Ordenes_Compra"."Valor_Impuesto"'
    end
    object qrOrdenes_CompraValor_Impuesto_Detalle: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto_Detalle'
      Origin = '"Ordenes_Compra"."Valor_Impuesto_Detalle"'
    end
    object qrOrdenes_CompraTotal_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Ordenes_Compra"."Total_Impuesto"'
    end
    object qrOrdenes_CompraDescuento_Global: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Global'
      Origin = '"Ordenes_Compra"."Descuento_Global"'
    end
    object qrOrdenes_CompraValor_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Ordenes_Compra"."Valor_Descuento"'
    end
    object qrOrdenes_CompraValor_Descuento_Detalle: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento_Detalle'
      Origin = '"Ordenes_Compra"."Valor_Descuento_Detalle"'
    end
    object qrOrdenes_CompraTotal_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Ordenes_Compra"."Total_Descuento"'
    end
    object qrOrdenes_CompraTerminos: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Terminos'
      Origin = '"Ordenes_Compra"."Terminos"'
    end
    object qrOrdenes_CompraVencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento'
      Origin = '"Ordenes_Compra"."Vencimiento"'
    end
    object qrOrdenes_CompraPagado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado'
      Origin = '"Ordenes_Compra"."Pagado"'
    end
    object qrOrdenes_CompraPendiente: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Origin = '"Ordenes_Compra"."Pendiente"'
    end
    object qrOrdenes_CompraUltimoPago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'UltimoPago'
      Origin = '"Ordenes_Compra"."UltimoPago"'
    end
    object qrOrdenes_CompraProveedor: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Proveedor'
      Origin = '"Ordenes_Compra"."Proveedor"'
    end
    object qrOrdenes_CompraTipo_NCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_NCF'
      Origin = '"Ordenes_Compra"."Tipo_NCF"'
      Size = 2
    end
    object qrOrdenes_CompraNCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCF'
      Origin = '"Ordenes_Compra"."NCF"'
      Size = 100
    end
    object qrOrdenes_CompraStatus: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'ACTIVO'#39
      FieldName = 'Status'
      Origin = '"Ordenes_Compra"."Status"'
      Size = 15
    end
    object qrOrdenes_CompraProceso_Compra: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso_Compra'
      Origin = '"Ordenes_Compra"."Proceso_Compra"'
      Size = 25
    end
    object qrOrdenes_CompraCompra_Numero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Compra_Numero'
      Origin = '"Ordenes_Compra"."Compra_Numero"'
    end
    object qrOrdenes_CompraID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Ordenes_Compra"."ID"'
      Size = 50
    end
  end
  object prOrdenes_Compra: TDataSetProvider
    DataSet = qrOrdenes_Compra
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    BeforeUpdateRecord = prCompra_ProductosBeforeUpdateRecord
    Left = 1024
    Top = 303
  end
  object qrDetalles_Orden_Compra: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkOrdenes_Compra
    SQL.Strings = (
      'Select  * From  "Detalles_Orden_Compra"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 920
    Top = 351
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrDetalles_Orden_CompraProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalles_Orden_Compra"."Proceso"'
      Size = 25
    end
    object qrDetalles_Orden_CompraCodigo: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir un C'#243'digo de Producto'
      FieldName = 'Codigo'
      Origin = '"Detalles_Orden_Compra"."Codigo"'
      Size = 25
    end
    object qrDetalles_Orden_CompraCodigo_Real: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo_Real'
      Origin = '"Detalles_Orden_Compra"."Codigo_Real"'
      Size = 25
    end
    object qrDetalles_Orden_CompraSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Detalles_Orden_Compra"."Secuencia"'
    end
    object qrDetalles_Orden_CompraDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Detalles_Orden_Compra"."Descripcion"'
      Size = 100
    end
    object qrDetalles_Orden_CompraCategoria: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Categoria'
      Origin = '"Detalles_Orden_Compra"."Categoria"'
    end
    object qrDetalles_Orden_CompraFabricante: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Fabricante'
      Origin = '"Detalles_Orden_Compra"."Fabricante"'
    end
    object qrDetalles_Orden_CompraDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Departamento'
      Origin = '"Detalles_Orden_Compra"."Departamento"'
    end
    object qrDetalles_Orden_CompraTipo_Producto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Producto'
      Origin = '"Detalles_Orden_Compra"."Tipo_Producto"'
    end
    object qrDetalles_Orden_CompraCosto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Costo'
      Origin = '"Detalles_Orden_Compra"."Costo"'
    end
    object qrDetalles_Orden_CompraPrecio_Lista: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Lista'
      Origin = '"Detalles_Orden_Compra"."Precio_Lista"'
    end
    object qrDetalles_Orden_CompraCantidad: TFloatField
      AutoGenerateValue = arDefault
      CustomConstraint = '(Value > 0) And  (Value <> Null)'
      ConstraintErrorMessage = 'Debe especificar la cantidad'
      FieldName = 'Cantidad'
      Origin = '"Detalles_Orden_Compra"."Cantidad"'
    end
    object qrDetalles_Orden_CompraTotal_Costo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Origin = '"Detalles_Orden_Compra"."Total_Costo"'
    end
    object qrDetalles_Orden_CompraTotal_Precio: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Precio'
      Origin = '"Detalles_Orden_Compra"."Total_Precio"'
    end
    object qrDetalles_Orden_CompraFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Detalles_Orden_Compra"."Fecha"'
    end
    object qrDetalles_Orden_CompraHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Detalles_Orden_Compra"."Hora"'
    end
    object qrDetalles_Orden_CompraUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Detalles_Orden_Compra"."Usuario"'
      Size = 100
    end
    object qrDetalles_Orden_CompraMes: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Mes'
      Origin = '"Detalles_Orden_Compra"."Mes"'
    end
    object qrDetalles_Orden_CompraAno: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ano'
      Origin = '"Detalles_Orden_Compra"."Ano"'
    end
    object qrDetalles_Orden_CompraProveedor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Proveedor'
      Origin = '"Detalles_Orden_Compra"."Proveedor"'
    end
    object qrDetalles_Orden_CompraImpuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto'
      Origin = '"Detalles_Orden_Compra"."Impuesto"'
    end
    object qrDetalles_Orden_CompraDescuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento'
      Origin = '"Detalles_Orden_Compra"."Descuento"'
    end
    object qrDetalles_Orden_CompraValor_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Detalles_Orden_Compra"."Valor_Impuesto"'
    end
    object qrDetalles_Orden_CompraValor_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Detalles_Orden_Compra"."Valor_Descuento"'
    end
    object qrDetalles_Orden_CompraTotal_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Detalles_Orden_Compra"."Total_Impuesto"'
    end
    object qrDetalles_Orden_CompraTotal_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Detalles_Orden_Compra"."Total_Descuento"'
    end
    object qrDetalles_Orden_CompraCantidad_Devuelto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad_Devuelto'
      Origin = '"Detalles_Orden_Compra"."Cantidad_Devuelto"'
    end
    object qrDetalles_Orden_CompraTipo_Beneficio: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Beneficio'
      Origin = '"Detalles_Orden_Compra"."Tipo_Beneficio"'
      Size = 15
    end
    object qrDetalles_Orden_CompraValor_Beneficio_PMayor_Contado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_PMayor_Contado'
      Origin = '"Detalles_Orden_Compra"."Valor_Beneficio_PMayor_Contado"'
    end
    object qrDetalles_Orden_CompraValor_Beneficio_PMayor_Credito: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_PMayor_Credito'
      Origin = '"Detalles_Orden_Compra"."Valor_Beneficio_PMayor_Credito"'
    end
    object qrDetalles_Orden_CompraValor_Beneficio_Detalle_Contado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_Detalle_Contado'
      Origin = '"Detalles_Orden_Compra"."Valor_Beneficio_Detalle_Contado"'
    end
    object qrDetalles_Orden_CompraValor_Beneficio_Detalle_Credito: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_Detalle_Credito'
      Origin = '"Detalles_Orden_Compra"."Valor_Beneficio_Detalle_Credito"'
    end
    object qrDetalles_Orden_CompraPrecio_Venta_Por_Mayor_Contado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Por_Mayor_Contado'
      Origin = '"Detalles_Orden_Compra"."Precio_Venta_Por_Mayor_Contado"'
    end
    object qrDetalles_Orden_CompraPrecio_Venta_Por_Mayor_Credito: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Por_Mayor_Credito'
      Origin = '"Detalles_Orden_Compra"."Precio_Venta_Por_Mayor_Credito"'
    end
    object qrDetalles_Orden_CompraPrecio_Venta_Detalle_Contado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Detalle_Contado'
      Origin = '"Detalles_Orden_Compra"."Precio_Venta_Detalle_Contado"'
    end
    object qrDetalles_Orden_CompraPrecio_Venta_Detalle_Credito: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Detalle_Credito'
      Origin = '"Detalles_Orden_Compra"."Precio_Venta_Detalle_Credito"'
    end
    object qrDetalles_Orden_CompraPrecio_Minimo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Minimo'
      Origin = '"Detalles_Orden_Compra"."Precio_Minimo"'
    end
    object qrDetalles_Orden_CompraContenido: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Contenido'
      Origin = '"Detalles_Orden_Compra"."Contenido"'
    end
    object qrDetalles_Orden_CompraID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Detalles_Orden_Compra"."ID"'
      Size = 50
    end
  end
  object lnkOrdenes_Compra: TDataSource
    DataSet = qrOrdenes_Compra
    Left = 1024
    Top = 351
  end
  object qrListadoVendedores: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Vendedores"'
      'Where "Status" = '#39'ACTIVO'#39
      'Order By "NombreCompleto"')
    UniDirectional = True
    Left = 920
    Top = 455
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
    Left = 1024
    Top = 455
  end
  object qrVendedores: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Vendedores"'
      'Where "Cedula_Rnc_Pasaporte" = :Cedula_Rnc_Pasaporte'
      'Order By "Nombre", "Apellido"')
    UniDirectional = True
    Left = 920
    Top = 408
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
    Left = 1024
    Top = 400
  end
  object qrCuotas_Factura: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkFacturas
    SQL.Strings = (
      'Select  * From  "Cuotas"'
      'Where "Proceso" = :Proceso'
      'Order By "Numero"')
    UniDirectional = True
    Left = 244
    Top = 647
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrCuotas_FacturaProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Cuotas"."Proceso"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 25
    end
    object qrCuotas_FacturaNumero: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Cuotas"."Numero"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrCuotas_FacturaTipo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo'
      Origin = '"Cuotas"."Tipo"'
      Size = 25
    end
    object qrCuotas_FacturaFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Cuotas"."Fecha"'
    end
    object qrCuotas_FacturaVence: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vence'
      Origin = '"Cuotas"."Vence"'
    end
    object qrCuotas_FacturaMonto: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Monto'
      Origin = '"Cuotas"."Monto"'
      currency = True
    end
    object qrCuotas_FacturaConcepto: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto'
      Origin = '"Cuotas"."Concepto"'
      Size = 100
    end
    object qrCuotas_FacturaCapital: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Capital'
      Origin = '"Cuotas"."Capital"'
      currency = True
    end
    object qrCuotas_FacturaCapital_Pendiente: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Capital_Pendiente'
      Origin = '"Cuotas"."Capital_Pendiente"'
      currency = True
    end
    object qrCuotas_FacturaInteres: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Interes'
      Origin = '"Cuotas"."Interes"'
      currency = True
    end
    object qrCuotas_FacturaInteres_Pendiente: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Interes_Pendiente'
      Origin = '"Cuotas"."Interes_Pendiente"'
      currency = True
    end
    object qrCuotas_FacturaMora: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Mora'
      Origin = '"Cuotas"."Mora"'
      currency = True
    end
    object qrCuotas_FacturaMora_Pendiente: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Mora_Pendiente'
      Origin = '"Cuotas"."Mora_Pendiente"'
      currency = True
    end
    object qrCuotas_FacturaOtros: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Otros'
      Origin = '"Cuotas"."Otros"'
      currency = True
    end
    object qrCuotas_FacturaOtros_Pendiente: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Otros_Pendiente'
      Origin = '"Cuotas"."Otros_Pendiente"'
      currency = True
    end
    object qrCuotas_FacturaTotal_Pagado: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Pagado'
      Origin = '"Cuotas"."Total_Pagado"'
      currency = True
    end
    object qrCuotas_FacturaTotal_Pendiente: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Pendiente'
      Origin = '"Cuotas"."Total_Pendiente"'
      currency = True
    end
    object qrCuotas_FacturaDias_Vencidos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Dias_Vencidos'
      Origin = '"Cuotas"."Dias_Vencidos"'
    end
    object qrCuotas_FacturaFecha_Calculo_Mora: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Calculo_Mora'
      Origin = '"Cuotas"."Fecha_Calculo_Mora"'
    end
    object qrCuotas_FacturaRecargo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Recargo'
      Origin = '"Cuotas"."Recargo"'
      Size = 25
    end
    object qrCuotas_FacturaPrioridad: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Prioridad'
      Origin = '"Cuotas"."Prioridad"'
      Size = 25
    end
    object qrCuotas_FacturaFecha_Ultimo_Pago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Ultimo_Pago'
      Origin = '"Cuotas"."Fecha_Ultimo_Pago"'
    end
    object qrCuotas_FacturaID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Cuotas"."ID"'
      Size = 50
    end
  end
  object qrCuotas_Facturas: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Cuotas"'
      'Where "Proceso" = :Proceso'
      'Order By "Prioridad","Numero"')
    UniDirectional = True
    Left = 40
    Top = 798
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrCuotas_FacturasProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Cuotas"."Proceso"'
      Size = 25
    end
    object qrCuotas_FacturasNumero: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Cuotas"."Numero"'
    end
    object qrCuotas_FacturasTipo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo'
      Origin = '"Cuotas"."Tipo"'
      Size = 25
    end
    object qrCuotas_FacturasFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Cuotas"."Fecha"'
    end
    object qrCuotas_FacturasVence: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vence'
      Origin = '"Cuotas"."Vence"'
    end
    object qrCuotas_FacturasMonto: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Monto'
      Origin = '"Cuotas"."Monto"'
      currency = True
    end
    object qrCuotas_FacturasConcepto: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto'
      Origin = '"Cuotas"."Concepto"'
      Size = 100
    end
    object qrCuotas_FacturasCapital: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Capital'
      Origin = '"Cuotas"."Capital"'
      currency = True
    end
    object qrCuotas_FacturasCapital_Pendiente: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Capital_Pendiente'
      Origin = '"Cuotas"."Capital_Pendiente"'
      currency = True
    end
    object qrCuotas_FacturasInteres: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Interes'
      Origin = '"Cuotas"."Interes"'
      currency = True
    end
    object qrCuotas_FacturasInteres_Pendiente: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Interes_Pendiente'
      Origin = '"Cuotas"."Interes_Pendiente"'
      currency = True
    end
    object qrCuotas_FacturasMora: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Mora'
      Origin = '"Cuotas"."Mora"'
      currency = True
    end
    object qrCuotas_FacturasMora_Pendiente: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Mora_Pendiente'
      Origin = '"Cuotas"."Mora_Pendiente"'
      currency = True
    end
    object qrCuotas_FacturasOtros: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Otros'
      Origin = '"Cuotas"."Otros"'
      currency = True
    end
    object qrCuotas_FacturasOtros_Pendiente: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Otros_Pendiente'
      Origin = '"Cuotas"."Otros_Pendiente"'
      currency = True
    end
    object qrCuotas_FacturasTotal_Pagado: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Pagado'
      Origin = '"Cuotas"."Total_Pagado"'
      currency = True
    end
    object qrCuotas_FacturasTotal_Pendiente: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Pendiente'
      Origin = '"Cuotas"."Total_Pendiente"'
      currency = True
    end
    object qrCuotas_FacturasDias_Vencidos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Dias_Vencidos'
      Origin = '"Cuotas"."Dias_Vencidos"'
    end
    object qrCuotas_FacturasFecha_Calculo_Mora: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Calculo_Mora'
      Origin = '"Cuotas"."Fecha_Calculo_Mora"'
    end
    object qrCuotas_FacturasFecha_Ultimo_Pago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Ultimo_Pago'
      Origin = '"Cuotas"."Fecha_Ultimo_Pago"'
    end
    object qrCuotas_FacturasRecargo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Recargo'
      Origin = '"Cuotas"."Recargo"'
      Size = 25
    end
    object qrCuotas_FacturasPrioridad: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Prioridad'
      Origin = '"Cuotas"."Prioridad"'
      Size = 25
    end
    object qrCuotas_FacturasID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Cuotas"."ID"'
      Size = 50
    end
  end
  object prCuotas_Facturas: TDataSetProvider
    DataSet = qrCuotas_Facturas
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 144
    Top = 795
  end
  object qrFacturas_Proveedor: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Compra_Productos"'
      'Where "Proveedor" = :Proveedor'
      'Order By "Numero"')
    UniDirectional = True
    Left = 920
    Top = 511
    ParamData = <
      item
        DataType = ftString
        Name = 'Proveedor'
        ParamType = ptInput
      end>
    object qrFacturas_ProveedorNumero: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero'
      Origin = '"Compra_Productos"."Numero"'
      DisplayFormat = #39'CP'#39'0000000000'
    end
    object qrFacturas_ProveedorProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Compra_Productos"."Proceso"'
      Size = 25
    end
    object qrFacturas_ProveedorNombre_Proveedor: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Proveedor'
      Origin = '"Compra_Productos"."Nombre_Proveedor"'
      Size = 100
    end
    object qrFacturas_ProveedorCondicion: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Cr'#233'dito'#39
      FieldName = 'Condicion'
      Origin = '"Compra_Productos"."Condicion"'
      Size = 25
    end
    object qrFacturas_ProveedorFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Compra_Productos"."Fecha"'
    end
    object qrFacturas_ProveedorHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Compra_Productos"."Hora"'
    end
    object qrFacturas_ProveedorConcepto_Compra: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto_Compra'
      Origin = '"Compra_Productos"."Concepto_Compra"'
      Size = 100
    end
    object qrFacturas_ProveedorReferencia: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Referencia'
      Origin = '"Compra_Productos"."Referencia"'
      Size = 25
    end
    object qrFacturas_ProveedorSubTotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SubTotal'
      Origin = '"Compra_Productos"."SubTotal"'
      currency = True
    end
    object qrFacturas_ProveedorTotalNeto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TotalNeto'
      Origin = '"Compra_Productos"."TotalNeto"'
      currency = True
    end
    object qrFacturas_ProveedorComentario: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Ninguno'#39
      FieldName = 'Comentario'
      Origin = '"Compra_Productos"."Comentario"'
      Size = 255
    end
    object qrFacturas_ProveedorFecha_Validacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Validacion'
      Origin = '"Compra_Productos"."Fecha_Validacion"'
    end
    object qrFacturas_ProveedorFecha_Cierre: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Cierre'
      Origin = '"Compra_Productos"."Fecha_Cierre"'
    end
    object qrFacturas_ProveedorUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Compra_Productos"."Usuario"'
      Size = 100
    end
    object qrFacturas_ProveedorValidado: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'FALSE'#39
      FieldName = 'Validado'
      Origin = '"Compra_Productos"."Validado"'
    end
    object qrFacturas_ProveedorCerrado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Cerrado'
      Origin = '"Compra_Productos"."Cerrado"'
    end
    object qrFacturas_ProveedorImpuesto_Global: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto_Global'
      Origin = '"Compra_Productos"."Impuesto_Global"'
      DisplayFormat = '#,#0.00'
    end
    object qrFacturas_ProveedorValor_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Compra_Productos"."Valor_Impuesto"'
      currency = True
    end
    object qrFacturas_ProveedorValor_Impuesto_Detalle: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto_Detalle'
      Origin = '"Compra_Productos"."Valor_Impuesto_Detalle"'
      currency = True
    end
    object qrFacturas_ProveedorTotal_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Compra_Productos"."Total_Impuesto"'
      currency = True
    end
    object qrFacturas_ProveedorDescuento_Global: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Global'
      Origin = '"Compra_Productos"."Descuento_Global"'
      DisplayFormat = '#,#0.00'
    end
    object qrFacturas_ProveedorValor_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Compra_Productos"."Valor_Descuento"'
      currency = True
    end
    object qrFacturas_ProveedorValor_Descuento_Detalle: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento_Detalle'
      Origin = '"Compra_Productos"."Valor_Descuento_Detalle"'
      currency = True
    end
    object qrFacturas_ProveedorTotal_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Compra_Productos"."Total_Descuento"'
      currency = True
    end
    object qrFacturas_ProveedorTerminos: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Terminos'
      Origin = '"Compra_Productos"."Terminos"'
    end
    object qrFacturas_ProveedorVencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento'
      Origin = '"Compra_Productos"."Vencimiento"'
    end
    object qrFacturas_ProveedorPagado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado'
      Origin = '"Compra_Productos"."Pagado"'
      currency = True
    end
    object qrFacturas_ProveedorPendiente: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Origin = '"Compra_Productos"."Pendiente"'
      currency = True
    end
    object qrFacturas_ProveedorUltimoPago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'UltimoPago'
      Origin = '"Compra_Productos"."UltimoPago"'
    end
    object qrFacturas_ProveedorProveedor: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Proveedor'
      Origin = '"Compra_Productos"."Proveedor"'
    end
    object qrFacturas_ProveedorTipo_NCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_NCF'
      Origin = '"Compra_Productos"."Tipo_NCF"'
      Size = 2
    end
    object qrFacturas_ProveedorNCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCF'
      Origin = '"Compra_Productos"."NCF"'
      Size = 100
    end
    object qrFacturas_ProveedorOrden_Compra_Numero: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Orden_Compra_Numero'
      Origin = '"Compra_Productos"."Orden_Compra_Numero"'
    end
    object qrFacturas_ProveedorProceso_Orden_Compra: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39#39
      FieldName = 'Proceso_Orden_Compra'
      Origin = '"Compra_Productos"."Proceso_Orden_Compra"'
      Size = 25
    end
    object qrFacturas_ProveedorTotal_Seriales: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Seriales'
      Origin = '"Compra_Productos"."Total_Seriales"'
    end
    object qrFacturas_ProveedorSeriales_Registrados: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Seriales_Registrados'
      Origin = '"Compra_Productos"."Seriales_Registrados"'
    end
    object qrFacturas_ProveedorAlmacen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Origin = '"Compra_Productos"."Almacen"'
      Size = 25
    end
    object qrFacturas_ProveedorID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Compra_Productos"."ID"'
      Size = 50
    end
    object qrFacturas_ProveedorDescuento_Proveedor: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Proveedor'
      Origin = '"Compra_Productos"."Descuento_Proveedor"'
    end
    object qrFacturas_ProveedorApertura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Apertura'
      Origin = '"Compra_Productos"."Apertura"'
      Size = 25
    end
  end
  object prFacturas_Proveedor: TDataSetProvider
    DataSet = qrFacturas_Proveedor
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    BeforeUpdateRecord = prFacturasBeforeUpdateRecord
    Left = 1024
    Top = 511
  end
  object qrNotas_Debito: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Notas_Debito"'
      'Where "Proceso" = :Proceso Or  "Cliente" = :Cliente')
    UniDirectional = True
    Left = 644
    Top = 999
    ParamData = <
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
    object qrNotas_DebitoNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Notas_Debito"."Numero"'
    end
    object qrNotas_DebitoNombre_Cliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Cliente'
      Origin = '"Notas_Debito"."Nombre_Cliente"'
      Size = 100
    end
    object qrNotas_DebitoFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Notas_Debito"."Fecha"'
    end
    object qrNotas_DebitoHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Notas_Debito"."Hora"'
    end
    object qrNotas_DebitoConcepto: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto'
      Origin = '"Notas_Debito"."Concepto"'
      Size = 100
    end
    object qrNotas_DebitoProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Notas_Debito"."Proceso"'
      Size = 25
    end
    object qrNotas_DebitoReferencia: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Referencia'
      Origin = '"Notas_Debito"."Referencia"'
      Size = 25
    end
    object qrNotas_DebitoSubTotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SubTotal'
      Origin = '"Notas_Debito"."SubTotal"'
      currency = True
    end
    object qrNotas_DebitoTotalNeto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TotalNeto'
      Origin = '"Notas_Debito"."TotalNeto"'
      currency = True
    end
    object qrNotas_DebitoComentario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario'
      Origin = '"Notas_Debito"."Comentario"'
      Size = 255
    end
    object qrNotas_DebitoFecha_Validacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Validacion'
      Origin = '"Notas_Debito"."Fecha_Validacion"'
    end
    object qrNotas_DebitoFecha_Cierre: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Cierre'
      Origin = '"Notas_Debito"."Fecha_Cierre"'
    end
    object qrNotas_DebitoUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Notas_Debito"."Usuario"'
      Size = 100
    end
    object qrNotas_DebitoValidado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Validado'
      Origin = '"Notas_Debito"."Validado"'
    end
    object qrNotas_DebitoCerrado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Cerrado'
      Origin = '"Notas_Debito"."Cerrado"'
    end
    object qrNotas_DebitoImpuesto_Global: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto_Global'
      Origin = '"Notas_Debito"."Impuesto_Global"'
    end
    object qrNotas_DebitoValor_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Notas_Debito"."Valor_Impuesto"'
      currency = True
    end
    object qrNotas_DebitoValor_Impuesto_Detalle: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto_Detalle'
      Origin = '"Notas_Debito"."Valor_Impuesto_Detalle"'
      currency = True
    end
    object qrNotas_DebitoTotal_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Notas_Debito"."Total_Impuesto"'
      currency = True
    end
    object qrNotas_DebitoDescuento_Global: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Global'
      Origin = '"Notas_Debito"."Descuento_Global"'
    end
    object qrNotas_DebitoValor_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Notas_Debito"."Valor_Descuento"'
      currency = True
    end
    object qrNotas_DebitoValor_Descuento_Detalle: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento_Detalle'
      Origin = '"Notas_Debito"."Valor_Descuento_Detalle"'
      currency = True
    end
    object qrNotas_DebitoTotal_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Notas_Debito"."Total_Descuento"'
      currency = True
    end
    object qrNotas_DebitoTerminos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Terminos'
      Origin = '"Notas_Debito"."Terminos"'
    end
    object qrNotas_DebitoVencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento'
      Origin = '"Notas_Debito"."Vencimiento"'
    end
    object qrNotas_DebitoPagado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado'
      Origin = '"Notas_Debito"."Pagado"'
      currency = True
    end
    object qrNotas_DebitoPendiente: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Origin = '"Notas_Debito"."Pendiente"'
      currency = True
    end
    object qrNotas_DebitoUltimoPago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'UltimoPago'
      Origin = '"Notas_Debito"."UltimoPago"'
    end
    object qrNotas_DebitoCliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Notas_Debito"."Cliente"'
      Size = 25
    end
    object qrNotas_DebitoTotal_Efectivo_Recibido: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo_Recibido'
      Origin = '"Notas_Debito"."Total_Efectivo_Recibido"'
      currency = True
    end
    object qrNotas_DebitoTotal_Efectivo_Devuelto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo_Devuelto'
      Origin = '"Notas_Debito"."Total_Efectivo_Devuelto"'
      currency = True
    end
    object qrNotas_DebitoStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Notas_Debito"."Status"'
      Size = 15
    end
    object qrNotas_DebitoTipo_NCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_NCF'
      Origin = '"Notas_Debito"."Tipo_NCF"'
      Size = 2
    end
    object qrNotas_DebitoNCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCF'
      Origin = '"Notas_Debito"."NCF"'
      Size = 100
    end
    object qrNotas_DebitoID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Notas_Debito"."ID"'
      Size = 50
    end
    object qrNotas_DebitoApertura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Apertura'
      Origin = '"Notas_Debito"."Apertura"'
      Size = 25
    end
  end
  object prNotas_Debito: TDataSetProvider
    DataSet = qrNotas_Debito
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    OnUpdateData = prNotas_CreditoUpdateData
    Left = 758
    Top = 999
  end
  object qrDetalles_Notas_Debito: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkNotas_Debito
    SQL.Strings = (
      'Select  * From "Cuotas"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 644
    Top = 1054
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Proceso'
        ParamType = ptUnknown
      end>
    object qrDetalles_Notas_DebitoProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Cuotas"."Proceso"'
      Size = 25
    end
    object qrDetalles_Notas_DebitoNumero: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Cuotas"."Numero"'
    end
    object qrDetalles_Notas_DebitoTipo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo'
      Origin = '"Cuotas"."Tipo"'
      Size = 25
    end
    object qrDetalles_Notas_DebitoFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Cuotas"."Fecha"'
    end
    object qrDetalles_Notas_DebitoVence: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vence'
      Origin = '"Cuotas"."Vence"'
    end
    object qrDetalles_Notas_DebitoMonto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Monto'
      Origin = '"Cuotas"."Monto"'
      currency = True
    end
    object qrDetalles_Notas_DebitoConcepto: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto'
      Origin = '"Cuotas"."Concepto"'
      Size = 100
    end
    object qrDetalles_Notas_DebitoCapital: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Capital'
      Origin = '"Cuotas"."Capital"'
      currency = True
    end
    object qrDetalles_Notas_DebitoCapital_Pendiente: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Capital_Pendiente'
      Origin = '"Cuotas"."Capital_Pendiente"'
      currency = True
    end
    object qrDetalles_Notas_DebitoInteres: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Interes'
      Origin = '"Cuotas"."Interes"'
      currency = True
    end
    object qrDetalles_Notas_DebitoInteres_Pendiente: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Interes_Pendiente'
      Origin = '"Cuotas"."Interes_Pendiente"'
      currency = True
    end
    object qrDetalles_Notas_DebitoMora: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Mora'
      Origin = '"Cuotas"."Mora"'
      currency = True
    end
    object qrDetalles_Notas_DebitoMora_Pendiente: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Mora_Pendiente'
      Origin = '"Cuotas"."Mora_Pendiente"'
      currency = True
    end
    object qrDetalles_Notas_DebitoOtros: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Otros'
      Origin = '"Cuotas"."Otros"'
      currency = True
    end
    object qrDetalles_Notas_DebitoTotal_Pagado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Pagado'
      Origin = '"Cuotas"."Total_Pagado"'
      currency = True
    end
    object qrDetalles_Notas_DebitoOtros_Pendiente: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Otros_Pendiente'
      Origin = '"Cuotas"."Otros_Pendiente"'
      currency = True
    end
    object qrDetalles_Notas_DebitoTotal_Pendiente: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Pendiente'
      Origin = '"Cuotas"."Total_Pendiente"'
      currency = True
    end
    object qrDetalles_Notas_DebitoDias_Vencidos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Dias_Vencidos'
      Origin = '"Cuotas"."Dias_Vencidos"'
    end
    object qrDetalles_Notas_DebitoFecha_Calculo_Mora: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Calculo_Mora'
      Origin = '"Cuotas"."Fecha_Calculo_Mora"'
    end
    object qrDetalles_Notas_DebitoFecha_Ultimo_Pago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Ultimo_Pago'
      Origin = '"Cuotas"."Fecha_Ultimo_Pago"'
    end
    object qrDetalles_Notas_DebitoRecargo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Recargo'
      Origin = '"Cuotas"."Recargo"'
      Size = 25
    end
    object qrDetalles_Notas_DebitoPrioridad: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Prioridad'
      Origin = '"Cuotas"."Prioridad"'
      Size = 25
    end
    object qrDetalles_Notas_DebitoID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Cuotas"."ID"'
      Size = 50
    end
  end
  object lnkNotas_Debito: TDataSource
    DataSet = qrNotas_Debito
    Left = 758
    Top = 1054
  end
  object Mensajes: TsuiMSNPopForm
    AnimateTime = 400
    StayTime = 2000
    PositionX = 0
    PositionY = 0
    AutoPosition = True
    ClickHide = True
    TextAlignment = taCenter
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
    Left = 664
    Top = 8
  end
  object qrSeriales_Compra: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkDetalles_Compra
    SQL.Strings = (
      'Select  * From "Seriales_Recibidos"'
      'Where  "Proceso"= :Proceso'
      'And "Codigo" = :Codigo')
    UniDirectional = True
    Left = 244
    Top = 455
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    object qrSeriales_CompraCodigo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Origin = '"Seriales"."Codigo"'
      Size = 25
    end
    object qrSeriales_CompraSerial: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe Introducir el # de Serial'
      FieldName = 'Serial'
      Origin = '"Seriales"."Serial"'
      Size = 100
    end
    object qrSeriales_CompraProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Seriales_Recibidos"."Proceso"'
      Size = 25
    end
    object qrSeriales_CompraProveedor: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proveedor'
      Origin = '"Seriales_Recibidos"."Proveedor"'
      Size = 25
    end
    object qrSeriales_CompraFecha_Comprado: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Comprado'
      Origin = '"Seriales_Recibidos"."Fecha_Comprado"'
    end
    object qrSeriales_CompraHora_Comprado: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora_Comprado'
      Origin = '"Seriales_Recibidos"."Hora_Comprado"'
    end
    object qrSeriales_CompraSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Seriales_Recibidos"."Secuencia"'
    end
    object qrSeriales_CompraUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Seriales_Recibidos"."Usuario"'
      Size = 25
    end
    object qrSeriales_CompraStatus: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'RECIBIDO'#39
      FieldName = 'Status'
      Origin = '"Seriales_Recibidos"."Status"'
      Size = 15
    end
    object qrSeriales_CompraModalidad_Servicio: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Modalidad_Servicio'
      Origin = '"Seriales_Recibidos"."Modalidad_Servicio"'
      Size = 25
    end
    object qrSeriales_CompraID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Seriales_Recibidos"."ID"'
      Size = 50
    end
  end
  object lnkDetalles_Compra: TDataSource
    DataSet = qrDetalles_Compra
    Left = 344
    Top = 407
  end
  object qrCompras_Seriales: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Compra_Productos"'
      'Where ("Total_Seriales" - "Seriales_Registrados") > 0')
    UniDirectional = True
    Left = 436
    Top = 751
    object qrCompras_SerialesNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Compra_Productos"."Numero"'
    end
    object qrCompras_SerialesProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Compra_Productos"."Proceso"'
      Size = 25
    end
    object qrCompras_SerialesNombre_Proveedor: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Proveedor'
      Origin = '"Compra_Productos"."Nombre_Proveedor"'
      Size = 100
    end
    object qrCompras_SerialesFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Compra_Productos"."Fecha"'
    end
    object qrCompras_SerialesHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Compra_Productos"."Hora"'
    end
    object qrCompras_SerialesConcepto_Compra: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto_Compra'
      Origin = '"Compra_Productos"."Concepto_Compra"'
      Size = 100
    end
    object qrCompras_SerialesReferencia: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Referencia'
      Origin = '"Compra_Productos"."Referencia"'
      Size = 25
    end
    object qrCompras_SerialesSubTotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SubTotal'
      Origin = '"Compra_Productos"."SubTotal"'
    end
    object qrCompras_SerialesTotalNeto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TotalNeto'
      Origin = '"Compra_Productos"."TotalNeto"'
    end
    object qrCompras_SerialesComentario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario'
      Origin = '"Compra_Productos"."Comentario"'
      Size = 255
    end
    object qrCompras_SerialesFecha_Validacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Validacion'
      Origin = '"Compra_Productos"."Fecha_Validacion"'
    end
    object qrCompras_SerialesFecha_Cierre: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Cierre'
      Origin = '"Compra_Productos"."Fecha_Cierre"'
    end
    object qrCompras_SerialesUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Compra_Productos"."Usuario"'
      Size = 100
    end
    object qrCompras_SerialesValidado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Validado'
      Origin = '"Compra_Productos"."Validado"'
    end
    object qrCompras_SerialesCerrado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Cerrado'
      Origin = '"Compra_Productos"."Cerrado"'
    end
    object qrCompras_SerialesImpuesto_Global: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto_Global'
      Origin = '"Compra_Productos"."Impuesto_Global"'
    end
    object qrCompras_SerialesValor_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Compra_Productos"."Valor_Impuesto"'
    end
    object qrCompras_SerialesValor_Impuesto_Detalle: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto_Detalle'
      Origin = '"Compra_Productos"."Valor_Impuesto_Detalle"'
    end
    object qrCompras_SerialesTotal_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Compra_Productos"."Total_Impuesto"'
    end
    object qrCompras_SerialesDescuento_Global: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Global'
      Origin = '"Compra_Productos"."Descuento_Global"'
    end
    object qrCompras_SerialesValor_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Compra_Productos"."Valor_Descuento"'
    end
    object qrCompras_SerialesValor_Descuento_Detalle: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento_Detalle'
      Origin = '"Compra_Productos"."Valor_Descuento_Detalle"'
    end
    object qrCompras_SerialesTotal_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Compra_Productos"."Total_Descuento"'
    end
    object qrCompras_SerialesTerminos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Terminos'
      Origin = '"Compra_Productos"."Terminos"'
    end
    object qrCompras_SerialesVencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento'
      Origin = '"Compra_Productos"."Vencimiento"'
    end
    object qrCompras_SerialesPagado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado'
      Origin = '"Compra_Productos"."Pagado"'
    end
    object qrCompras_SerialesPendiente: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Origin = '"Compra_Productos"."Pendiente"'
    end
    object qrCompras_SerialesUltimoPago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'UltimoPago'
      Origin = '"Compra_Productos"."UltimoPago"'
    end
    object qrCompras_SerialesProveedor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Proveedor'
      Origin = '"Compra_Productos"."Proveedor"'
    end
    object qrCompras_SerialesTipo_NCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_NCF'
      Origin = '"Compra_Productos"."Tipo_NCF"'
      Size = 2
    end
    object qrCompras_SerialesNCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCF'
      Origin = '"Compra_Productos"."NCF"'
      Size = 100
    end
    object qrCompras_SerialesOrden_Compra_Numero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Orden_Compra_Numero'
      Origin = '"Compra_Productos"."Orden_Compra_Numero"'
    end
    object qrCompras_SerialesProceso_Orden_Compra: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso_Orden_Compra'
      Origin = '"Compra_Productos"."Proceso_Orden_Compra"'
      Size = 25
    end
    object qrCompras_SerialesCondicion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Condicion'
      Origin = '"Compra_Productos"."Condicion"'
      Size = 25
    end
    object qrCompras_SerialesTotal_Seriales: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Seriales'
      Origin = '"Compra_Productos"."Total_Seriales"'
    end
    object qrCompras_SerialesSeriales_Registrados: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Seriales_Registrados'
      Origin = '"Compra_Productos"."Seriales_Registrados"'
    end
    object qrCompras_SerialesAlmacen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Origin = '"Compra_Productos"."Almacen"'
      Size = 25
    end
    object qrCompras_SerialesID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Compra_Productos"."ID"'
      Size = 50
    end
    object qrCompras_SerialesDescuento_Proveedor: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Proveedor'
      Origin = '"Compra_Productos"."Descuento_Proveedor"'
    end
    object qrCompras_SerialesApertura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Apertura'
      Origin = '"Compra_Productos"."Apertura"'
      Size = 25
    end
  end
  object prCompras_Seriales: TDataSetProvider
    DataSet = qrCompras_Seriales
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 536
    Top = 751
  end
  object qrSeriales_Factura: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkDetalles_Factura
    SQL.Strings = (
      'Select  * From "Seriales_Despachados"'
      'Where  "Proc_Detalle"= :Proc_Detalle')
    UniDirectional = True
    Left = 244
    Top = 695
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Proc_Detalle'
        ParamType = ptUnknown
      end>
    object qrSeriales_FacturaCodigo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Origin = '"Seriales"."Codigo"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 25
    end
    object qrSeriales_FacturaSerial: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe Introducir el # de Serial'
      FieldName = 'Serial'
      Origin = '"Seriales"."Serial"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 100
    end
    object qrSeriales_FacturaProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Seriales_Recibidos"."Proceso"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 25
    end
    object qrSeriales_FacturaSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Seriales_Recibidos"."Secuencia"'
    end
    object qrSeriales_FacturaUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Seriales_Recibidos"."Usuario"'
      Size = 25
    end
    object qrSeriales_FacturaCliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Seriales_Despachados"."Cliente"'
      Size = 25
    end
    object qrSeriales_FacturaFecha_Facturado: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Facturado'
      Origin = '"Seriales_Despachados"."Fecha_Facturado"'
    end
    object qrSeriales_FacturaHora_Facturado: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora_Facturado'
      Origin = '"Seriales_Despachados"."Hora_Facturado"'
    end
    object qrSeriales_FacturaStatus: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'FACTURADO'#39
      FieldName = 'Status'
      Origin = '"Seriales_Recibidos"."Status"'
      Size = 15
    end
    object qrSeriales_FacturaProc_Detalle: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proc_Detalle'
      Origin = '"Seriales_Despachados"."Proc_Detalle"'
      Size = 25
    end
    object qrSeriales_FacturaID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Seriales_Despachados"."ID"'
      Size = 50
    end
    object qrSeriales_FacturaModalidad_Servicio: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Modalidad_Servicio'
      Origin = '"Seriales_Despachados"."Modalidad_Servicio"'
      Size = 25
    end
  end
  object lnkDetalles_Factura: TDataSource
    DataSet = qrDetalles_Factura
    Left = 344
    Top = 599
  end
  object qrSeriales_Comprados: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Seriales_Recibidos"'
      'Where "Codigo" = :Codigo')
    UniDirectional = True
    Left = 40
    Top = 255
    ParamData = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    object qrSeriales_CompradosCodigo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Origin = '"Seriales_Recibidos"."Codigo"'
      Size = 25
    end
    object qrSeriales_CompradosProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Seriales_Recibidos"."Proceso"'
      Size = 25
    end
    object qrSeriales_CompradosSerial: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Serial'
      Origin = '"Seriales_Recibidos"."Serial"'
      Size = 100
    end
    object qrSeriales_CompradosProveedor: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proveedor'
      Origin = '"Seriales_Recibidos"."Proveedor"'
      Size = 25
    end
    object qrSeriales_CompradosFecha_Comprado: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Comprado'
      Origin = '"Seriales_Recibidos"."Fecha_Comprado"'
    end
    object qrSeriales_CompradosHora_Comprado: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora_Comprado'
      Origin = '"Seriales_Recibidos"."Hora_Comprado"'
    end
    object qrSeriales_CompradosSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Seriales_Recibidos"."Secuencia"'
    end
    object qrSeriales_CompradosUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Seriales_Recibidos"."Usuario"'
      Size = 25
    end
    object qrSeriales_CompradosStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Seriales_Recibidos"."Status"'
      Size = 15
    end
    object qrSeriales_CompradosModalidad_Servicio: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Modalidad_Servicio'
      Origin = '"Seriales_Recibidos"."Modalidad_Servicio"'
      Size = 25
    end
    object qrSeriales_CompradosID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Seriales_Recibidos"."ID"'
      Size = 50
    end
  end
  object qrSeriales_Facturados: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Seriales_Despachados"'
      'Where "Codigo" = :Codigo')
    UniDirectional = True
    Left = 40
    Top = 303
    ParamData = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    object qrSeriales_FacturadosCodigo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Origin = '"Seriales_Despachados"."Codigo"'
      Size = 25
    end
    object qrSeriales_FacturadosSerial: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Serial'
      Origin = '"Seriales_Despachados"."Serial"'
      Size = 100
    end
    object qrSeriales_FacturadosCliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Seriales_Despachados"."Cliente"'
      Size = 25
    end
    object qrSeriales_FacturadosProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Seriales_Despachados"."Proceso"'
      Size = 25
    end
    object qrSeriales_FacturadosFecha_Facturado: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Facturado'
      Origin = '"Seriales_Despachados"."Fecha_Facturado"'
    end
    object qrSeriales_FacturadosHora_Facturado: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora_Facturado'
      Origin = '"Seriales_Despachados"."Hora_Facturado"'
    end
    object qrSeriales_FacturadosUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Seriales_Despachados"."Usuario"'
      Size = 25
    end
    object qrSeriales_FacturadosSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Seriales_Despachados"."Secuencia"'
    end
    object qrSeriales_FacturadosStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Seriales_Despachados"."Status"'
      Size = 15
    end
    object qrSeriales_FacturadosProc_Detalle: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proc_Detalle'
      Origin = '"Seriales_Despachados"."Proc_Detalle"'
      Size = 25
    end
    object qrSeriales_FacturadosID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Seriales_Despachados"."ID"'
      Size = 50
    end
    object qrSeriales_FacturadosModalidad_Servicio: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Modalidad_Servicio'
      Origin = '"Seriales_Despachados"."Modalidad_Servicio"'
      Size = 25
    end
  end
  object prSeriales_Comprados: TDataSetProvider
    DataSet = qrSeriales_Comprados
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poUseQuoteChar]
    Left = 144
    Top = 255
  end
  object prSeriales_Facturados: TDataSetProvider
    DataSet = qrSeriales_Facturados
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poUseQuoteChar]
    Left = 144
    Top = 303
  end
  object qrFacturas_Seriales: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Facturas"'
      'Where ("Total_Seriales" - "Seriales_Registrados") > 0')
    UniDirectional = True
    Left = 436
    Top = 935
    object qrFacturas_SerialesNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Facturas"."Numero"'
    end
    object qrFacturas_SerialesNombre_Cliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Cliente'
      Origin = '"Facturas"."Nombre_Cliente"'
      Size = 100
    end
    object qrFacturas_SerialesCondicion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Condicion'
      Origin = '"Facturas"."Condicion"'
      Size = 25
    end
    object qrFacturas_SerialesFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Facturas"."Fecha"'
    end
    object qrFacturas_SerialesHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Facturas"."Hora"'
    end
    object qrFacturas_SerialesConcepto_Factura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto_Factura'
      Origin = '"Facturas"."Concepto_Factura"'
      Size = 100
    end
    object qrFacturas_SerialesProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Facturas"."Proceso"'
      Size = 25
    end
    object qrFacturas_SerialesReferencia: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Referencia'
      Origin = '"Facturas"."Referencia"'
      Size = 25
    end
    object qrFacturas_SerialesSubTotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SubTotal'
      Origin = '"Facturas"."SubTotal"'
    end
    object qrFacturas_SerialesTotalNeto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TotalNeto'
      Origin = '"Facturas"."TotalNeto"'
    end
    object qrFacturas_SerialesComentario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario'
      Origin = '"Facturas"."Comentario"'
      Size = 255
    end
    object qrFacturas_SerialesFecha_Validacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Validacion'
      Origin = '"Facturas"."Fecha_Validacion"'
    end
    object qrFacturas_SerialesFecha_Cierre: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Cierre'
      Origin = '"Facturas"."Fecha_Cierre"'
    end
    object qrFacturas_SerialesUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Facturas"."Usuario"'
      Size = 100
    end
    object qrFacturas_SerialesValidado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Validado'
      Origin = '"Facturas"."Validado"'
    end
    object qrFacturas_SerialesCerrado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Cerrado'
      Origin = '"Facturas"."Cerrado"'
    end
    object qrFacturas_SerialesImpuesto_Global: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto_Global'
      Origin = '"Facturas"."Impuesto_Global"'
    end
    object qrFacturas_SerialesValor_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Facturas"."Valor_Impuesto"'
    end
    object qrFacturas_SerialesValor_Impuesto_Detalle: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto_Detalle'
      Origin = '"Facturas"."Valor_Impuesto_Detalle"'
    end
    object qrFacturas_SerialesTotal_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Facturas"."Total_Impuesto"'
    end
    object qrFacturas_SerialesDescuento_Global: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Global'
      Origin = '"Facturas"."Descuento_Global"'
    end
    object qrFacturas_SerialesValor_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Facturas"."Valor_Descuento"'
    end
    object qrFacturas_SerialesValor_Descuento_Detalle: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento_Detalle'
      Origin = '"Facturas"."Valor_Descuento_Detalle"'
    end
    object qrFacturas_SerialesTotal_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Facturas"."Total_Descuento"'
    end
    object qrFacturas_SerialesTerminos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Terminos'
      Origin = '"Facturas"."Terminos"'
    end
    object qrFacturas_SerialesVencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento'
      Origin = '"Facturas"."Vencimiento"'
    end
    object qrFacturas_SerialesPagado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado'
      Origin = '"Facturas"."Pagado"'
    end
    object qrFacturas_SerialesPendiente: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Origin = '"Facturas"."Pendiente"'
    end
    object qrFacturas_SerialesUltimoPago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'UltimoPago'
      Origin = '"Facturas"."UltimoPago"'
    end
    object qrFacturas_SerialesCliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Facturas"."Cliente"'
      Size = 25
    end
    object qrFacturas_SerialesTotal_Efectivo_Recibido: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo_Recibido'
      Origin = '"Facturas"."Total_Efectivo_Recibido"'
    end
    object qrFacturas_SerialesTotal_Efectivo_Devuelto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo_Devuelto'
      Origin = '"Facturas"."Total_Efectivo_Devuelto"'
    end
    object qrFacturas_SerialesStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Facturas"."Status"'
      Size = 15
    end
    object qrFacturas_SerialesTotal_Costo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Origin = '"Facturas"."Total_Costo"'
    end
    object qrFacturas_SerialesTipo_Factura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Factura'
      Origin = '"Facturas"."Tipo_Factura"'
      Size = 15
    end
    object qrFacturas_SerialesTipo_NCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_NCF'
      Origin = '"Facturas"."Tipo_NCF"'
      Size = 2
    end
    object qrFacturas_SerialesNCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCF'
      Origin = '"Facturas"."NCF"'
      Size = 100
    end
    object qrFacturas_SerialesVendedor: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Vendedor'
      Origin = '"Facturas"."Vendedor"'
      Size = 25
    end
    object qrFacturas_SerialesNombre_Vendedor: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Vendedor'
      Origin = '"Facturas"."Nombre_Vendedor"'
      Size = 100
    end
    object qrFacturas_SerialesTotal_Restante: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Restante'
      Origin = '"Facturas"."Total_Restante"'
    end
    object qrFacturas_SerialesInteres: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Interes'
      Origin = '"Facturas"."Interes"'
    end
    object qrFacturas_SerialesModalidad: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Modalidad'
      Origin = '"Facturas"."Modalidad"'
      Size = 25
    end
    object qrFacturas_SerialesValor_Interes: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Interes'
      Origin = '"Facturas"."Valor_Interes"'
    end
    object qrFacturas_SerialesValor_Capital: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Capital'
      Origin = '"Facturas"."Valor_Capital"'
    end
    object qrFacturas_SerialesValor_Cuotas: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Cuotas'
      Origin = '"Facturas"."Valor_Cuotas"'
    end
    object qrFacturas_SerialesGasto_Cierre: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Gasto_Cierre'
      Origin = '"Facturas"."Gasto_Cierre"'
    end
    object qrFacturas_SerialesValor_Gasto_Cierre: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Gasto_Cierre'
      Origin = '"Facturas"."Valor_Gasto_Cierre"'
    end
    object qrFacturas_SerialesVence_Financiamiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vence_Financiamiento'
      Origin = '"Facturas"."Vence_Financiamiento"'
    end
    object qrFacturas_SerialesTotal_Estimado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Estimado'
      Origin = '"Facturas"."Total_Estimado"'
    end
    object qrFacturas_SerialesMonto_Financiado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Financiado'
      Origin = '"Facturas"."Monto_Financiado"'
    end
    object qrFacturas_SerialesTipo_Gasto_Cierre: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Gasto_Cierre'
      Origin = '"Facturas"."Tipo_Gasto_Cierre"'
      Size = 25
    end
    object qrFacturas_SerialesPeriodo_Pagos: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Periodo_Pagos'
      Origin = '"Facturas"."Periodo_Pagos"'
      Size = 25
    end
    object qrFacturas_SerialesPlazo_Pago: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Plazo_Pago'
      Origin = '"Facturas"."Plazo_Pago"'
    end
    object qrFacturas_SerialesDescripcion_NCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion_NCF'
      Origin = '"Facturas"."Descripcion_NCF"'
      Size = 100
    end
    object qrFacturas_SerialesInicial: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Inicial'
      Origin = '"Facturas"."Inicial"'
    end
    object qrFacturas_SerialesConduce: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Conduce'
      Origin = '"Facturas"."Conduce"'
      Size = 25
    end
    object qrFacturas_SerialesDebitado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Debitado'
      Origin = '"Facturas"."Debitado"'
    end
    object qrFacturas_SerialesAcreditado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Acreditado'
      Origin = '"Facturas"."Acreditado"'
    end
    object qrFacturas_SerialesBalance: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Origin = '"Facturas"."Balance"'
    end
    object qrFacturas_SerialesMora: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Mora'
      Origin = '"Facturas"."Mora"'
    end
    object qrFacturas_SerialesMonto_Vencido: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Vencido'
      Origin = '"Facturas"."Monto_Vencido"'
    end
    object qrFacturas_SerialesCuotas_Vencidas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Cuotas_Vencidas'
      Origin = '"Facturas"."Cuotas_Vencidas"'
    end
    object qrFacturas_SerialesMonto_Interes_Cumplido: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Interes_Cumplido'
      Origin = '"Facturas"."Monto_Interes_Cumplido"'
    end
    object qrFacturas_SerialesBalance_Capital: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Capital'
      Origin = '"Facturas"."Balance_Capital"'
    end
    object qrFacturas_SerialesBalance_Interes: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Interes'
      Origin = '"Facturas"."Balance_Interes"'
    end
    object qrFacturas_SerialesBalance_Otros: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Otros'
      Origin = '"Facturas"."Balance_Otros"'
    end
    object qrFacturas_SerialesFecha_Ultimo_Pago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Ultimo_Pago'
      Origin = '"Facturas"."Fecha_Ultimo_Pago"'
    end
    object qrFacturas_SerialesDias_Vencidos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Dias_Vencidos'
      Origin = '"Facturas"."Dias_Vencidos"'
    end
    object qrFacturas_SerialesTotal_Seriales: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Seriales'
      Origin = '"Facturas"."Total_Seriales"'
    end
    object qrFacturas_SerialesSeriales_Registrados: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Seriales_Registrados'
      Origin = '"Facturas"."Seriales_Registrados"'
    end
    object qrFacturas_SerialesAlmacen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Origin = '"Facturas"."Almacen"'
      Size = 25
    end
    object qrFacturas_SerialesApertura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Apertura'
      Origin = '"Facturas"."Apertura"'
      Size = 25
    end
    object qrFacturas_SerialesID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Facturas"."ID"'
      Size = 50
    end
    object qrFacturas_SerialesCotizacion_Numero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Cotizacion_Numero'
      Origin = '"Facturas"."Cotizacion_Numero"'
    end
    object qrFacturas_SerialesProceso_Cotizacion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso_Cotizacion'
      Origin = '"Facturas"."Proceso_Cotizacion"'
      Size = 25
    end
    object qrFacturas_SerialesStatus_Trabajo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status_Trabajo'
      Origin = '"Facturas"."Status_Trabajo"'
      Size = 15
    end
    object qrFacturas_SerialesMoneda: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Moneda'
      Origin = '"Facturas"."Moneda"'
    end
    object qrFacturas_SerialesSub_Total_Moneda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Sub_Total_Moneda'
      Origin = '"Facturas"."Sub_Total_Moneda"'
    end
    object qrFacturas_SerialesTotal_Impuesto_Moneda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto_Moneda'
      Origin = '"Facturas"."Total_Impuesto_Moneda"'
    end
    object qrFacturas_SerialesTotal_Descuento_Moneda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento_Moneda'
      Origin = '"Facturas"."Total_Descuento_Moneda"'
    end
    object qrFacturas_SerialesTotal_Moneda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Moneda'
      Origin = '"Facturas"."Total_Moneda"'
    end
    object qrFacturas_SerialesTasa: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Tasa'
      Origin = '"Facturas"."Tasa"'
    end
    object qrFacturas_SerialesTotal_Efectivo_Recibido_Moneda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo_Recibido_Moneda'
      Origin = '"Facturas"."Total_Efectivo_Recibido_Moneda"'
    end
    object qrFacturas_SerialesTotal_Efectivo_Devuelto_Moneda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo_Devuelto_Moneda'
      Origin = '"Facturas"."Total_Efectivo_Devuelto_Moneda"'
    end
    object qrFacturas_SerialesEmpleado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Empleado'
      Origin = '"Facturas"."Empleado"'
      Size = 25
    end
    object qrFacturas_SerialesNombre_Empleado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Empleado'
      Origin = '"Facturas"."Nombre_Empleado"'
      Size = 100
    end
    object qrFacturas_SerialesNumero_Contrato: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Contrato'
      Origin = '"Facturas"."Numero_Contrato"'
      Size = 25
    end
    object qrFacturas_SerialesStatus_Mercancia: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status_Mercancia'
      Origin = '"Facturas"."Status_Mercancia"'
      Size = 15
    end
    object qrFacturas_SerialesFecha_Primer_Pago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Primer_Pago'
      Origin = '"Facturas"."Fecha_Primer_Pago"'
    end
    object qrFacturas_SerialesLayAway: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'LayAway'
      Origin = '"Facturas"."LayAway"'
    end
    object qrFacturas_SerialesFecha_LayAway: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_LayAway'
      Origin = '"Facturas"."Fecha_LayAway"'
    end
    object qrFacturas_SerialesVencimiento_LayAway: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento_LayAway'
      Origin = '"Facturas"."Vencimiento_LayAway"'
    end
  end
  object prFacturas_Seriales: TDataSetProvider
    DataSet = qrFacturas_Seriales
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 536
    Top = 935
  end
  object qrAlmacen: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Almacenes"'
      'Order By "Descripcion"')
    UniDirectional = True
    Left = 40
    Top = 859
    object qrAlmacenCodigo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Origin = '"Almacenes"."Codigo"'
      Size = 25
    end
    object qrAlmacenDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Almacenes"."Descripcion"'
      Size = 100
    end
    object qrAlmacenUbicacion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ubicacion'
      Origin = '"Almacenes"."Ubicacion"'
      Size = 255
    end
    object qrAlmacenEncargado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Encargado'
      Origin = '"Almacenes"."Encargado"'
      Size = 100
    end
    object qrAlmacenTelefono: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefono'
      Origin = '"Almacenes"."Telefono"'
      Size = 25
    end
    object qrAlmacenFax: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Fax'
      Origin = '"Almacenes"."Fax"'
      Size = 25
    end
    object qrAlmacenemail: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = '"Almacenes"."email"'
      Size = 100
    end
  end
  object prAlmacen: TDataSetProvider
    DataSet = qrAlmacen
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 144
    Top = 859
  end
  object qrSeriales_Salida: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkDetalles_Salida
    SQL.Strings = (
      'Select  * From "Seriales_Despachados"'
      'Where  "Proceso"= :Proceso'
      'And "Codigo" = :Codigo')
    UniDirectional = True
    Left = 244
    Top = 207
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    object qrSeriales_SalidaCodigo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Origin = '"Seriales_Despachados"."Codigo"'
      Size = 25
    end
    object qrSeriales_SalidaSerial: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Serial'
      Origin = '"Seriales_Despachados"."Serial"'
      Size = 100
    end
    object qrSeriales_SalidaCliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Seriales_Despachados"."Cliente"'
      Size = 25
    end
    object qrSeriales_SalidaProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Seriales_Despachados"."Proceso"'
      Size = 25
    end
    object qrSeriales_SalidaFecha_Facturado: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Facturado'
      Origin = '"Seriales_Despachados"."Fecha_Facturado"'
    end
    object qrSeriales_SalidaHora_Facturado: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora_Facturado'
      Origin = '"Seriales_Despachados"."Hora_Facturado"'
    end
    object qrSeriales_SalidaUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Seriales_Despachados"."Usuario"'
      Size = 25
    end
    object qrSeriales_SalidaSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Seriales_Despachados"."Secuencia"'
    end
    object qrSeriales_SalidaStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Seriales_Despachados"."Status"'
      Size = 15
    end
    object qrSeriales_SalidaProc_Detalle: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proc_Detalle'
      Origin = '"Seriales_Despachados"."Proc_Detalle"'
      Size = 25
    end
    object qrSeriales_SalidaID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Seriales_Despachados"."ID"'
      Size = 50
    end
    object qrSeriales_SalidaModalidad_Servicio: TIBStringField
      FieldName = 'Modalidad_Servicio'
      Origin = '"Seriales_Despachados"."Modalidad_Servicio"'
      Size = 25
    end
  end
  object lnkDetalles_Salida: TDataSource
    DataSet = qrDetalles_Salida
    Left = 344
    Top = 207
  end
  object qrMercancia_Cliente: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Detalles_Factura"'
      'Where ("Cliente" = :Cliente) And ("Fecha" Between :F1 and :F2)'
      'Order By "Codigo", "Fecha"')
    UniDirectional = True
    Left = 40
    Top = 959
    ParamData = <
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
    object qrMercancia_ClienteProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalles_Factura"."Proceso"'
      Size = 25
    end
    object qrMercancia_ClienteCodigo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Origin = '"Detalles_Factura"."Codigo"'
      Size = 25
    end
    object qrMercancia_ClienteCodigo_Real: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo_Real'
      Origin = '"Detalles_Factura"."Codigo_Real"'
      Size = 25
    end
    object qrMercancia_ClienteSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Detalles_Factura"."Secuencia"'
    end
    object qrMercancia_ClienteDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Detalles_Factura"."Descripcion"'
      Size = 100
    end
    object qrMercancia_ClienteCategoria: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Categoria'
      Origin = '"Detalles_Factura"."Categoria"'
    end
    object qrMercancia_ClienteFabricante: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Fabricante'
      Origin = '"Detalles_Factura"."Fabricante"'
    end
    object qrMercancia_ClienteDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Departamento'
      Origin = '"Detalles_Factura"."Departamento"'
    end
    object qrMercancia_ClienteTipo_Producto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Producto'
      Origin = '"Detalles_Factura"."Tipo_Producto"'
    end
    object qrMercancia_ClienteCosto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Costo'
      Origin = '"Detalles_Factura"."Costo"'
      currency = True
    end
    object qrMercancia_ClientePrecio_Real: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Real'
      Origin = '"Detalles_Factura"."Precio_Real"'
      currency = True
    end
    object qrMercancia_ClientePrecio_Venta: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta'
      Origin = '"Detalles_Factura"."Precio_Venta"'
      currency = True
    end
    object qrMercancia_ClientePrecio_Minimo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Minimo'
      Origin = '"Detalles_Factura"."Precio_Minimo"'
      currency = True
    end
    object qrMercancia_ClienteCantidad: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad'
      Origin = '"Detalles_Factura"."Cantidad"'
    end
    object qrMercancia_ClienteTotal_Costo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Origin = '"Detalles_Factura"."Total_Costo"'
      currency = True
    end
    object qrMercancia_ClienteTotal_Precio: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Precio'
      Origin = '"Detalles_Factura"."Total_Precio"'
      currency = True
    end
    object qrMercancia_ClienteFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Detalles_Factura"."Fecha"'
    end
    object qrMercancia_ClienteHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Detalles_Factura"."Hora"'
    end
    object qrMercancia_ClienteUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Detalles_Factura"."Usuario"'
      Size = 100
    end
    object qrMercancia_ClienteMes: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Mes'
      Origin = '"Detalles_Factura"."Mes"'
    end
    object qrMercancia_ClienteAno: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ano'
      Origin = '"Detalles_Factura"."Ano"'
    end
    object qrMercancia_ClienteCliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Detalles_Factura"."Cliente"'
      Size = 25
    end
    object qrMercancia_ClienteImpuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto'
      Origin = '"Detalles_Factura"."Impuesto"'
    end
    object qrMercancia_ClienteDescuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento'
      Origin = '"Detalles_Factura"."Descuento"'
    end
    object qrMercancia_ClienteValor_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Detalles_Factura"."Valor_Impuesto"'
      currency = True
    end
    object qrMercancia_ClienteValor_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Detalles_Factura"."Valor_Descuento"'
      currency = True
    end
    object qrMercancia_ClienteTotal_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Detalles_Factura"."Total_Impuesto"'
      currency = True
    end
    object qrMercancia_ClienteTotal_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Detalles_Factura"."Total_Descuento"'
      currency = True
    end
    object qrMercancia_ClienteCantidad_Devuelto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad_Devuelto'
      Origin = '"Detalles_Factura"."Cantidad_Devuelto"'
    end
    object qrMercancia_ClienteTipo_Precio: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Precio'
      Origin = '"Detalles_Factura"."Tipo_Precio"'
      Size = 25
    end
    object qrMercancia_ClienteContenido: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Contenido'
      Origin = '"Detalles_Factura"."Contenido"'
    end
    object qrMercancia_ClienteRegistro: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Registro'
      Origin = '"Detalles_Factura"."Registro"'
    end
    object qrMercancia_ClienteRequiere_Serial: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Requiere_Serial'
      Origin = '"Detalles_Factura"."Requiere_Serial"'
    end
    object qrMercancia_ClienteAlmacen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Origin = '"Detalles_Factura"."Almacen"'
      Size = 25
    end
    object qrMercancia_ClienteUnidades: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Unidades'
      Origin = '"Detalles_Factura"."Unidades"'
    end
    object qrMercancia_ClientePrecio_Unidad: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Unidad'
      Origin = '"Detalles_Factura"."Precio_Unidad"'
      currency = True
    end
    object qrMercancia_ClienteMedida: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Medida'
      Origin = '"Detalles_Factura"."Medida"'
      Size = 25
    end
    object qrMercancia_ClienteUsuario_Autorizacion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario_Autorizacion'
      Origin = '"Detalles_Factura"."Usuario_Autorizacion"'
      Size = 100
    end
    object qrMercancia_ClienteProc_Detalle: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proc_Detalle'
      Origin = '"Detalles_Factura"."Proc_Detalle"'
      Size = 25
    end
    object qrMercancia_ClienteID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Detalles_Factura"."ID"'
      Size = 50
    end
    object qrMercancia_ClienteValor_Moneda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Moneda'
      Origin = '"Detalles_Factura"."Valor_Moneda"'
    end
    object qrMercancia_ClienteTotal_Moneda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Moneda'
      Origin = '"Detalles_Factura"."Total_Moneda"'
    end
    object qrMercancia_ClienteImpuesto_Moneda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto_Moneda'
      Origin = '"Detalles_Factura"."Impuesto_Moneda"'
    end
    object qrMercancia_ClienteDescuento_Moneda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Moneda'
      Origin = '"Detalles_Factura"."Descuento_Moneda"'
    end
  end
  object lnkMercancia_Cliente: TDataSource
    DataSet = qrMercancia_Cliente
    Left = 144
    Top = 1007
  end
  object qrSeriales_Vendida_Cliente: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkMercancia_Cliente
    SQL.Strings = (
      'Select  * From "Seriales_Despachados"'
      'Where  "Proceso"= :Proceso'
      'And "Codigo" = :Codigo')
    UniDirectional = True
    Left = 40
    Top = 1007
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    object qrSeriales_Vendida_ClienteCodigo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Origin = '"Seriales_Despachados"."Codigo"'
      Size = 25
    end
    object qrSeriales_Vendida_ClienteSerial: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Serial'
      Origin = '"Seriales_Despachados"."Serial"'
      Size = 100
    end
    object qrSeriales_Vendida_ClienteCliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Seriales_Despachados"."Cliente"'
      Size = 25
    end
    object qrSeriales_Vendida_ClienteProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Seriales_Despachados"."Proceso"'
      Size = 25
    end
    object qrSeriales_Vendida_ClienteFecha_Facturado: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Facturado'
      Origin = '"Seriales_Despachados"."Fecha_Facturado"'
    end
    object qrSeriales_Vendida_ClienteHora_Facturado: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora_Facturado'
      Origin = '"Seriales_Despachados"."Hora_Facturado"'
    end
    object qrSeriales_Vendida_ClienteUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Seriales_Despachados"."Usuario"'
      Size = 25
    end
    object qrSeriales_Vendida_ClienteSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Seriales_Despachados"."Secuencia"'
    end
    object qrSeriales_Vendida_ClienteStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Seriales_Despachados"."Status"'
      Size = 15
    end
    object qrSeriales_Vendida_ClienteProc_Detalle: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proc_Detalle'
      Origin = '"Seriales_Despachados"."Proc_Detalle"'
      Size = 25
    end
    object qrSeriales_Vendida_ClienteID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Seriales_Despachados"."ID"'
      Size = 50
    end
    object qrSeriales_Vendida_ClienteModalidad_Servicio: TIBStringField
      FieldName = 'Modalidad_Servicio'
      Origin = '"Seriales_Despachados"."Modalidad_Servicio"'
      Size = 25
    end
  end
  object prMercancia_Cliente: TDataSetProvider
    DataSet = qrMercancia_Cliente
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 144
    Top = 959
  end
  object qrMercancia_Desp_Cliente: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Detalles_Salida"'
      'Where ("Cliente" = :Cliente) And ("Fecha" Between :F1 and :F2)'
      'Order By "Codigo", "Fecha"')
    UniDirectional = True
    Left = 244
    Top = 959
    ParamData = <
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
    object qrMercancia_Desp_ClienteProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalles_Factura"."Proceso"'
      Size = 25
    end
    object qrMercancia_Desp_ClienteCodigo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Origin = '"Detalles_Factura"."Codigo"'
      Size = 25
    end
    object qrMercancia_Desp_ClienteCodigo_Real: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo_Real'
      Origin = '"Detalles_Factura"."Codigo_Real"'
      Size = 25
    end
    object qrMercancia_Desp_ClienteSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Detalles_Factura"."Secuencia"'
    end
    object qrMercancia_Desp_ClienteDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Detalles_Factura"."Descripcion"'
      Size = 100
    end
    object qrMercancia_Desp_ClienteCategoria: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Categoria'
      Origin = '"Detalles_Factura"."Categoria"'
    end
    object qrMercancia_Desp_ClienteFabricante: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Fabricante'
      Origin = '"Detalles_Factura"."Fabricante"'
    end
    object qrMercancia_Desp_ClienteDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Departamento'
      Origin = '"Detalles_Factura"."Departamento"'
    end
    object qrMercancia_Desp_ClienteTipo_Producto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Producto'
      Origin = '"Detalles_Factura"."Tipo_Producto"'
    end
    object qrMercancia_Desp_ClienteCosto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Costo'
      Origin = '"Detalles_Factura"."Costo"'
      currency = True
    end
    object qrMercancia_Desp_ClientePrecio_Real: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Real'
      Origin = '"Detalles_Factura"."Precio_Real"'
      currency = True
    end
    object qrMercancia_Desp_ClientePrecio_Venta: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta'
      Origin = '"Detalles_Factura"."Precio_Venta"'
      currency = True
    end
    object qrMercancia_Desp_ClientePrecio_Minimo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Minimo'
      Origin = '"Detalles_Factura"."Precio_Minimo"'
      currency = True
    end
    object qrMercancia_Desp_ClienteCantidad: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad'
      Origin = '"Detalles_Factura"."Cantidad"'
    end
    object qrMercancia_Desp_ClienteTotal_Costo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Origin = '"Detalles_Factura"."Total_Costo"'
      currency = True
    end
    object qrMercancia_Desp_ClienteTotal_Precio: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Precio'
      Origin = '"Detalles_Factura"."Total_Precio"'
      currency = True
    end
    object qrMercancia_Desp_ClienteFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Detalles_Factura"."Fecha"'
    end
    object qrMercancia_Desp_ClienteHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Detalles_Factura"."Hora"'
    end
    object qrMercancia_Desp_ClienteUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Detalles_Factura"."Usuario"'
      Size = 100
    end
    object qrMercancia_Desp_ClienteMes: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Mes'
      Origin = '"Detalles_Factura"."Mes"'
    end
    object qrMercancia_Desp_ClienteAno: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ano'
      Origin = '"Detalles_Factura"."Ano"'
    end
    object qrMercancia_Desp_ClienteCliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Detalles_Factura"."Cliente"'
      Size = 25
    end
    object qrMercancia_Desp_ClienteImpuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto'
      Origin = '"Detalles_Factura"."Impuesto"'
    end
    object qrMercancia_Desp_ClienteDescuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento'
      Origin = '"Detalles_Factura"."Descuento"'
    end
    object qrMercancia_Desp_ClienteValor_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Detalles_Factura"."Valor_Impuesto"'
    end
    object qrMercancia_Desp_ClienteValor_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Detalles_Factura"."Valor_Descuento"'
    end
    object qrMercancia_Desp_ClienteTotal_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Detalles_Factura"."Total_Impuesto"'
      currency = True
    end
    object qrMercancia_Desp_ClienteTotal_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Detalles_Factura"."Total_Descuento"'
      currency = True
    end
    object qrMercancia_Desp_ClienteCantidad_Devuelto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad_Devuelto'
      Origin = '"Detalles_Factura"."Cantidad_Devuelto"'
    end
    object qrMercancia_Desp_ClienteTipo_Precio: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Precio'
      Origin = '"Detalles_Factura"."Tipo_Precio"'
      Size = 25
    end
    object qrMercancia_Desp_ClienteContenido: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Contenido'
      Origin = '"Detalles_Factura"."Contenido"'
    end
    object qrMercancia_Desp_ClienteRegistro: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Registro'
      Origin = '"Detalles_Factura"."Registro"'
    end
    object qrMercancia_Desp_ClienteRequiere_Serial: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Requiere_Serial'
      Origin = '"Detalles_Factura"."Requiere_Serial"'
    end
    object qrMercancia_Desp_ClienteAlmacen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Origin = '"Detalles_Factura"."Almacen"'
      Size = 25
    end
    object qrMercancia_Desp_ClientePrecio: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio'
      Origin = '"Detalles_Salida"."Precio"'
    end
    object qrMercancia_Desp_ClienteID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Detalles_Salida"."ID"'
      Size = 50
    end
  end
  object lnkMercancia_Desp_Cliente: TDataSource
    DataSet = qrMercancia_Desp_Cliente
    Left = 344
    Top = 1007
  end
  object qrSeriales_Desp_Cliente: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkMercancia_Desp_Cliente
    SQL.Strings = (
      'Select  * From "Seriales_Despachados"'
      'Where  "Proceso"= :Proceso'
      'And "Codigo" = :Codigo')
    UniDirectional = True
    Left = 244
    Top = 1007
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    object qrSeriales_Desp_ClienteCodigo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Origin = '"Seriales_Despachados"."Codigo"'
      Size = 25
    end
    object qrSeriales_Desp_ClienteSerial: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Serial'
      Origin = '"Seriales_Despachados"."Serial"'
      Size = 100
    end
    object qrSeriales_Desp_ClienteCliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Seriales_Despachados"."Cliente"'
      Size = 25
    end
    object qrSeriales_Desp_ClienteProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Seriales_Despachados"."Proceso"'
      Size = 25
    end
    object qrSeriales_Desp_ClienteFecha_Facturado: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Facturado'
      Origin = '"Seriales_Despachados"."Fecha_Facturado"'
    end
    object qrSeriales_Desp_ClienteHora_Facturado: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora_Facturado'
      Origin = '"Seriales_Despachados"."Hora_Facturado"'
    end
    object qrSeriales_Desp_ClienteUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Seriales_Despachados"."Usuario"'
      Size = 25
    end
    object qrSeriales_Desp_ClienteSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Seriales_Despachados"."Secuencia"'
    end
    object qrSeriales_Desp_ClienteStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Seriales_Despachados"."Status"'
      Size = 15
    end
    object qrSeriales_Desp_ClienteProc_Detalle: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proc_Detalle'
      Origin = '"Seriales_Despachados"."Proc_Detalle"'
      Size = 25
    end
    object qrSeriales_Desp_ClienteID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Seriales_Despachados"."ID"'
      Size = 50
    end
    object qrSeriales_Desp_ClienteModalidad_Servicio: TIBStringField
      FieldName = 'Modalidad_Servicio'
      Origin = '"Seriales_Despachados"."Modalidad_Servicio"'
      Size = 25
    end
  end
  object prMercancia_Desp_Cliente: TDataSetProvider
    DataSet = qrMercancia_Desp_Cliente
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 344
    Top = 959
  end
  object SrchQ: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    UniDirectional = True
    Left = 344
    Top = 8
  end
  object prTerminales: TDataSetProvider
    DataSet = qrTerminales
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 1024
    Top = 577
  end
  object qrTerminales: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'SELECT * '
      'FROM "Terminales" '
      'WHERE ID = :ID')
    UniDirectional = True
    Left = 920
    Top = 577
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
      end>
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
    object qrTerminalesDireccion: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'La Romana'#39
      FieldName = 'Direccion'
      Origin = '"Terminales"."Direccion"'
      Size = 100
    end
    object qrTerminalesID_Caja: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Caja'
      Origin = '"Terminales"."ID_Caja"'
      Size = 50
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
    object qrTerminalesBalance: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Origin = '"Terminales"."Balance"'
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
    object qrTerminalesTermino_LayAway: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Termino_LayAway'
      Origin = '"Terminales"."Termino_LayAway"'
    end
    object qrTerminalesPorcentaje_LayAway: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Porcentaje_LayAway'
      Origin = '"Terminales"."Porcentaje_LayAway"'
      DisplayFormat = '#0.00'#39'%'#39
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
    object qrTerminalesNombre_2: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_2'
      Origin = '"Terminales"."Nombre_2"'
      Size = 100
    end
    object qrTerminalesNombre_3: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_3'
      Origin = '"Terminales"."Nombre_3"'
      Size = 100
    end
    object qrTerminalesDireccion_2: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion_2'
      Origin = '"Terminales"."Direccion_2"'
      Size = 100
    end
    object qrTerminalesID_Almacen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Almacen'
      Origin = '"Terminales"."ID_Almacen"'
      Size = 50
    end
    object qrTerminalesID_Departamento: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Departamento'
      Origin = '"Terminales"."ID_Departamento"'
      Size = 50
    end
    object qrTerminalesManejo_Inventario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Manejo_Inventario'
      Origin = '"Terminales"."Manejo_Inventario"'
      Size = 15
    end
    object qrTerminalesTermino_COD: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Termino_COD'
      Origin = '"Terminales"."Termino_COD"'
      Size = 25
    end
    object qrTerminalesTermino_Credito: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Termino_Credito'
      Origin = '"Terminales"."Termino_Credito"'
      Size = 25
    end
    object qrTerminalesTermino_Financiado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Termino_Financiado'
      Origin = '"Terminales"."Termino_Financiado"'
      Size = 25
    end
    object qrTerminalesDecimales_Moneda: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Decimales_Moneda'
      Origin = '"Terminales"."Decimales_Moneda"'
      Size = 25
    end
    object qrTerminalesLineas_Expulsar: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Lineas_Expulsar'
      Origin = '"Terminales"."Lineas_Expulsar"'
    end
    object qrTerminalesBarra_Windows: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Barra_Windows'
      Origin = '"Terminales"."Barra_Windows"'
    end
    object qrTerminalesPanel_Control: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Panel_Control'
      Origin = '"Terminales"."Panel_Control"'
    end
    object qrTerminalesWindows_Key: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Windows_Key'
      Origin = '"Terminales"."Windows_Key"'
    end
    object qrTerminalesComentario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario'
      Origin = '"Terminales"."Comentario"'
      Size = 100
    end
    object qrTerminalesComentario_Linea_2: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_Linea_2'
      Origin = '"Terminales"."Comentario_Linea_2"'
      Size = 100
    end
    object qrTerminalesComentario_Linea_3: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_Linea_3'
      Origin = '"Terminales"."Comentario_Linea_3"'
      Size = 100
    end
    object qrTerminalesComentario_Linea_4: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_Linea_4'
      Origin = '"Terminales"."Comentario_Linea_4"'
      Size = 100
    end
    object qrTerminalesConcepto_Status: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto_Status'
      Origin = '"Terminales"."Concepto_Status"'
      Size = 100
    end
    object qrTerminalesFecha_Instalacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Instalacion'
      Origin = '"Terminales"."Fecha_Instalacion"'
    end
    object qrTerminalesFecha_Vencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Vencimiento'
      Origin = '"Terminales"."Fecha_Vencimiento"'
    end
    object qrTerminalesEjecuciones: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ejecuciones'
      Origin = '"Terminales"."Ejecuciones"'
    end
    object qrTerminalesLimite_Ejecuciones: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Limite_Ejecuciones'
      Origin = '"Terminales"."Limite_Ejecuciones"'
    end
    object qrTerminalesNombre_Mascara: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Mascara'
      Origin = '"Terminales"."Nombre_Mascara"'
      Size = 100
    end
    object qrTerminalesDireccion_Mascara: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion_Mascara'
      Origin = '"Terminales"."Direccion_Mascara"'
      Size = 255
    end
    object qrTerminalesDireccion_IP: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion_IP'
      Origin = '"Terminales"."Direccion_IP"'
      Size = 50
    end
    object qrTerminalesDireccion_NETBIOS: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion_NETBIOS'
      Origin = '"Terminales"."Direccion_NETBIOS"'
      Size = 50
    end
    object qrTerminalesCPU_ID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPU_ID'
      Origin = '"Terminales"."CPU_ID"'
      Size = 100
    end
    object qrTerminalesMAC_Address: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'MAC_Address'
      Origin = '"Terminales"."MAC_Address"'
      Size = 100
    end
    object qrTerminalesCarpeta_Fotos_ID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Carpeta_Fotos_ID'
      Origin = '"Terminales"."Carpeta_Fotos_ID"'
      Size = 255
    end
    object qrTerminalesAncho_Fotos_Documentos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ancho_Fotos_Documentos'
      Origin = '"Terminales"."Ancho_Fotos_Documentos"'
    end
    object qrTerminalesAltura_Fotos_Documentos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Altura_Fotos_Documentos'
      Origin = '"Terminales"."Altura_Fotos_Documentos"'
    end
    object qrTerminalesRestringir_Dias_Semana: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Restringir_Dias_Semana'
      Origin = '"Terminales"."Restringir_Dias_Semana"'
    end
    object qrTerminalesOutputDir: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'OutputDir'
      Origin = '"Terminales"."OutputDir"'
      Size = 255
    end
  end
  object prTerminal: TDataSetProvider
    DataSet = qrTerminal
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 1024
    Top = 640
  end
  object qrTerminal: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'SELECT * '
      'FROM "Terminales" '
      'Where "ID" = :ID')
    UniDirectional = True
    Left = 920
    Top = 640
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
    object qrTerminalHora_Apertura: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora_Apertura'
      Origin = '"Terminales"."Hora_Apertura"'
    end
    object qrTerminalHora_Cierre: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora_Cierre'
      Origin = '"Terminales"."Hora_Cierre"'
    end
    object qrTerminalNombre: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Origin = '"Terminales"."Nombre"'
      Size = 100
    end
    object qrTerminalDireccion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion'
      Origin = '"Terminales"."Direccion"'
      Size = 100
    end
    object qrTerminalCiudad: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ciudad'
      Origin = '"Terminales"."Ciudad"'
      Size = 100
    end
    object qrTerminalPais: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pais'
      Origin = '"Terminales"."Pais"'
      Size = 100
    end
    object qrTerminalTelefono: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefono'
      Origin = '"Terminales"."Telefono"'
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
    object qrTerminalBalance: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Origin = '"Terminales"."Balance"'
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
    object qrTerminalNombre_2: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_2'
      Origin = '"Terminales"."Nombre_2"'
      Size = 100
    end
    object qrTerminalNombre_3: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_3'
      Origin = '"Terminales"."Nombre_3"'
      Size = 100
    end
    object qrTerminalDireccion_2: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion_2'
      Origin = '"Terminales"."Direccion_2"'
      Size = 100
    end
    object qrTerminalTermino_LayAway: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Termino_LayAway'
      Origin = '"Terminales"."Termino_LayAway"'
    end
    object qrTerminalPorcentaje_LayAway: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Porcentaje_LayAway'
      Origin = '"Terminales"."Porcentaje_LayAway"'
      DisplayFormat = '#0.00'#39'%'#39
    end
    object qrTerminalID_Caja: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Caja'
      Origin = '"Terminales"."ID_Caja"'
      Size = 50
    end
    object qrTerminalID_Almacen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Almacen'
      Origin = '"Terminales"."ID_Almacen"'
      Size = 50
    end
    object qrTerminalID_Departamento: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Departamento'
      Origin = '"Terminales"."ID_Departamento"'
      Size = 50
    end
    object qrTerminalManejo_Inventario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Manejo_Inventario'
      Origin = '"Terminales"."Manejo_Inventario"'
      Size = 15
    end
    object qrTerminalTermino_COD: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Termino_COD'
      Origin = '"Terminales"."Termino_COD"'
      Size = 25
    end
    object qrTerminalTermino_Credito: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Termino_Credito'
      Origin = '"Terminales"."Termino_Credito"'
      Size = 25
    end
    object qrTerminalTermino_Financiado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Termino_Financiado'
      Origin = '"Terminales"."Termino_Financiado"'
      Size = 25
    end
    object qrTerminalDecimales_Moneda: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Decimales_Moneda'
      Origin = '"Terminales"."Decimales_Moneda"'
      Size = 25
    end
    object qrTerminalLineas_Expulsar: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Lineas_Expulsar'
      Origin = '"Terminales"."Lineas_Expulsar"'
    end
    object qrTerminalBarra_Windows: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Barra_Windows'
      Origin = '"Terminales"."Barra_Windows"'
    end
    object qrTerminalPanel_Control: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Panel_Control'
      Origin = '"Terminales"."Panel_Control"'
    end
    object qrTerminalWindows_Key: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Windows_Key'
      Origin = '"Terminales"."Windows_Key"'
    end
    object qrTerminalComentario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario'
      Origin = '"Terminales"."Comentario"'
      Size = 100
    end
    object qrTerminalComentario_Linea_2: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_Linea_2'
      Origin = '"Terminales"."Comentario_Linea_2"'
      Size = 100
    end
    object qrTerminalComentario_Linea_3: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_Linea_3'
      Origin = '"Terminales"."Comentario_Linea_3"'
      Size = 100
    end
    object qrTerminalComentario_Linea_4: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_Linea_4'
      Origin = '"Terminales"."Comentario_Linea_4"'
      Size = 100
    end
    object qrTerminalConcepto_Status: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto_Status'
      Origin = '"Terminales"."Concepto_Status"'
      Size = 100
    end
    object qrTerminalFecha_Instalacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Instalacion'
      Origin = '"Terminales"."Fecha_Instalacion"'
    end
    object qrTerminalFecha_Vencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Vencimiento'
      Origin = '"Terminales"."Fecha_Vencimiento"'
    end
    object qrTerminalEjecuciones: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ejecuciones'
      Origin = '"Terminales"."Ejecuciones"'
    end
    object qrTerminalLimite_Ejecuciones: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Limite_Ejecuciones'
      Origin = '"Terminales"."Limite_Ejecuciones"'
    end
    object qrTerminalNombre_Mascara: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Mascara'
      Origin = '"Terminales"."Nombre_Mascara"'
      Size = 100
    end
    object qrTerminalDireccion_Mascara: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion_Mascara'
      Origin = '"Terminales"."Direccion_Mascara"'
      Size = 255
    end
    object qrTerminalDireccion_IP: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion_IP'
      Origin = '"Terminales"."Direccion_IP"'
      Size = 50
    end
    object qrTerminalDireccion_NETBIOS: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion_NETBIOS'
      Origin = '"Terminales"."Direccion_NETBIOS"'
      Size = 50
    end
    object qrTerminalCPU_ID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPU_ID'
      Origin = '"Terminales"."CPU_ID"'
      Size = 100
    end
    object qrTerminalMAC_Address: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'MAC_Address'
      Origin = '"Terminales"."MAC_Address"'
      Size = 100
    end
    object qrTerminalCarpeta_Fotos_ID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Carpeta_Fotos_ID'
      Origin = '"Terminales"."Carpeta_Fotos_ID"'
      Size = 255
    end
    object qrTerminalAncho_Fotos_Documentos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ancho_Fotos_Documentos'
      Origin = '"Terminales"."Ancho_Fotos_Documentos"'
    end
    object qrTerminalAltura_Fotos_Documentos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Altura_Fotos_Documentos'
      Origin = '"Terminales"."Altura_Fotos_Documentos"'
    end
    object qrTerminalRestringir_Dias_Semana: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Restringir_Dias_Semana'
      Origin = '"Terminales"."Restringir_Dias_Semana"'
    end
    object qrTerminalOutputDir: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'OutputDir'
      Origin = '"Terminales"."OutputDir"'
      Size = 255
    end
  end
  object prInventario_Terminal: TDataSetProvider
    DataSet = qrInventario_Terminal
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 1024
    Top = 697
  end
  object qrInventario_Terminal: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'SELECT * '
      'FROM "Inventario"'
      'Where ("Codigo_Almacen" = :Codigo_Almacen)'
      'ORDER BY "Codigo_Producto"')
    UniDirectional = True
    Left = 920
    Top = 697
    ParamData = <
      item
        DataType = ftString
        Name = 'Codigo_Almacen'
        ParamType = ptInput
      end>
    object qrInventario_TerminalCodigo_Producto: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo_Producto'
      Origin = '"Inventario"."Codigo_Producto"'
      Size = 25
    end
    object qrInventario_TerminalCodigo_Almacen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo_Almacen'
      Origin = '"Inventario"."Codigo_Almacen"'
      Size = 25
    end
    object qrInventario_TerminalUnidades_Compradas: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Unidades_Compradas'
      Origin = '"Inventario"."Unidades_Compradas"'
    end
    object qrInventario_TerminalUnidades_Facturadas: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Unidades_Facturadas'
      Origin = '"Inventario"."Unidades_Facturadas"'
    end
    object qrInventario_TerminalUnidades_Despachadas: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Unidades_Despachadas'
      Origin = '"Inventario"."Unidades_Despachadas"'
    end
    object qrInventario_TerminalUnidades_Devueltas_Compras: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Unidades_Devueltas_Compras'
      Origin = '"Inventario"."Unidades_Devueltas_Compras"'
    end
    object qrInventario_TerminalUnidades_Devueltas_Facturas: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Unidades_Devueltas_Facturas'
      Origin = '"Inventario"."Unidades_Devueltas_Facturas"'
    end
    object qrInventario_TerminalExistencia: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Existencia'
      Origin = '"Inventario"."Existencia"'
    end
    object qrInventario_TerminalID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Inventario"."ID"'
      Size = 50
    end
    object qrInventario_TerminalUltima_Compra: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ultima_Compra'
      Origin = '"Inventario"."Ultima_Compra"'
    end
    object qrInventario_TerminalFecha_Ultima_Compra: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Ultima_Compra'
      Origin = '"Inventario"."Fecha_Ultima_Compra"'
    end
    object qrInventario_TerminalUltimo_Costo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Ultimo_Costo'
      Origin = '"Inventario"."Ultimo_Costo"'
    end
    object qrInventario_TerminalUltima_Factura: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ultima_Factura'
      Origin = '"Inventario"."Ultima_Factura"'
    end
    object qrInventario_TerminalFecha_Ultima_Factura: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Ultima_Factura'
      Origin = '"Inventario"."Fecha_Ultima_Factura"'
    end
    object qrInventario_TerminalUltima_salida: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ultima_salida'
      Origin = '"Inventario"."Ultima_salida"'
    end
    object qrInventario_TerminalFecha_Ultima_Salida: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Ultima_Salida'
      Origin = '"Inventario"."Fecha_Ultima_Salida"'
    end
  end
  object qrCotizaciones: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Cotizaciones"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 1152
    Top = 149
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrCotizacionesNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Cotizaciones"."Numero"'
    end
    object qrCotizacionesNombre_Cliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Cliente'
      Origin = '"Cotizaciones"."Nombre_Cliente"'
      Size = 100
    end
    object qrCotizacionesCondicion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Condicion'
      Origin = '"Cotizaciones"."Condicion"'
      Size = 25
    end
    object qrCotizacionesFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Cotizaciones"."Fecha"'
    end
    object qrCotizacionesHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Cotizaciones"."Hora"'
    end
    object qrCotizacionesConcepto_Factura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto_Factura'
      Origin = '"Cotizaciones"."Concepto_Factura"'
      Size = 100
    end
    object qrCotizacionesProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Cotizaciones"."Proceso"'
      Size = 25
    end
    object qrCotizacionesReferencia: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Referencia'
      Origin = '"Cotizaciones"."Referencia"'
      Size = 25
    end
    object qrCotizacionesSubTotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SubTotal'
      Origin = '"Cotizaciones"."SubTotal"'
    end
    object qrCotizacionesTotalNeto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TotalNeto'
      Origin = '"Cotizaciones"."TotalNeto"'
    end
    object qrCotizacionesComentario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario'
      Origin = '"Cotizaciones"."Comentario"'
      Size = 255
    end
    object qrCotizacionesFecha_Validacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Validacion'
      Origin = '"Cotizaciones"."Fecha_Validacion"'
    end
    object qrCotizacionesFecha_Cierre: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Cierre'
      Origin = '"Cotizaciones"."Fecha_Cierre"'
    end
    object qrCotizacionesUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Cotizaciones"."Usuario"'
      Size = 100
    end
    object qrCotizacionesValidado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Validado'
      Origin = '"Cotizaciones"."Validado"'
    end
    object qrCotizacionesCerrado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Cerrado'
      Origin = '"Cotizaciones"."Cerrado"'
    end
    object qrCotizacionesImpuesto_Global: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto_Global'
      Origin = '"Cotizaciones"."Impuesto_Global"'
    end
    object qrCotizacionesValor_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Cotizaciones"."Valor_Impuesto"'
      currency = True
    end
    object qrCotizacionesValor_Impuesto_Detalle: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto_Detalle'
      Origin = '"Cotizaciones"."Valor_Impuesto_Detalle"'
      currency = True
    end
    object qrCotizacionesTotal_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Cotizaciones"."Total_Impuesto"'
      currency = True
    end
    object qrCotizacionesDescuento_Global: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Global'
      Origin = '"Cotizaciones"."Descuento_Global"'
    end
    object qrCotizacionesValor_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Cotizaciones"."Valor_Descuento"'
      currency = True
    end
    object qrCotizacionesValor_Descuento_Detalle: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento_Detalle'
      Origin = '"Cotizaciones"."Valor_Descuento_Detalle"'
      currency = True
    end
    object qrCotizacionesTotal_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Cotizaciones"."Total_Descuento"'
      currency = True
    end
    object qrCotizacionesTerminos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Terminos'
      Origin = '"Cotizaciones"."Terminos"'
    end
    object qrCotizacionesVencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento'
      Origin = '"Cotizaciones"."Vencimiento"'
    end
    object qrCotizacionesPagado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado'
      Origin = '"Cotizaciones"."Pagado"'
      currency = True
    end
    object qrCotizacionesPendiente: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Origin = '"Cotizaciones"."Pendiente"'
      currency = True
    end
    object qrCotizacionesUltimoPago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'UltimoPago'
      Origin = '"Cotizaciones"."UltimoPago"'
    end
    object qrCotizacionesCliente: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'000-0000000-0'#39
      FieldName = 'Cliente'
      Origin = '"Cotizaciones"."Cliente"'
      Size = 25
    end
    object qrCotizacionesTotal_Efectivo_Recibido: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo_Recibido'
      Origin = '"Cotizaciones"."Total_Efectivo_Recibido"'
      currency = True
    end
    object qrCotizacionesTotal_Efectivo_Devuelto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo_Devuelto'
      Origin = '"Cotizaciones"."Total_Efectivo_Devuelto"'
      currency = True
    end
    object qrCotizacionesStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Cotizaciones"."Status"'
      Size = 15
    end
    object qrCotizacionesTotal_Costo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Origin = '"Cotizaciones"."Total_Costo"'
      currency = True
    end
    object qrCotizacionesTipo_Factura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Factura'
      Origin = '"Cotizaciones"."Tipo_Factura"'
      Size = 15
    end
    object qrCotizacionesTipo_NCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_NCF'
      Origin = '"Cotizaciones"."Tipo_NCF"'
      Size = 2
    end
    object qrCotizacionesNCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCF'
      Origin = '"Cotizaciones"."NCF"'
      Size = 100
    end
    object qrCotizacionesVendedor: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Vendedor'
      Origin = '"Cotizaciones"."Vendedor"'
      Size = 25
    end
    object qrCotizacionesNombre_Vendedor: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Vendedor'
      Origin = '"Cotizaciones"."Nombre_Vendedor"'
      Size = 100
    end
    object qrCotizacionesTotal_Restante: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Restante'
      Origin = '"Cotizaciones"."Total_Restante"'
      currency = True
    end
    object qrCotizacionesInteres: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Interes'
      Origin = '"Cotizaciones"."Interes"'
    end
    object qrCotizacionesModalidad: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Modalidad'
      Origin = '"Cotizaciones"."Modalidad"'
      Size = 25
    end
    object qrCotizacionesValor_Interes: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Interes'
      Origin = '"Cotizaciones"."Valor_Interes"'
      currency = True
    end
    object qrCotizacionesValor_Capital: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Capital'
      Origin = '"Cotizaciones"."Valor_Capital"'
      currency = True
    end
    object qrCotizacionesValor_Cuotas: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Cuotas'
      Origin = '"Cotizaciones"."Valor_Cuotas"'
      currency = True
    end
    object qrCotizacionesGasto_Cierre: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Gasto_Cierre'
      Origin = '"Cotizaciones"."Gasto_Cierre"'
    end
    object qrCotizacionesValor_Gasto_Cierre: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Gasto_Cierre'
      Origin = '"Cotizaciones"."Valor_Gasto_Cierre"'
      currency = True
    end
    object qrCotizacionesVence_Financiamiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vence_Financiamiento'
      Origin = '"Cotizaciones"."Vence_Financiamiento"'
    end
    object qrCotizacionesTotal_Estimado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Estimado'
      Origin = '"Cotizaciones"."Total_Estimado"'
      currency = True
    end
    object qrCotizacionesMonto_Financiado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Financiado'
      Origin = '"Cotizaciones"."Monto_Financiado"'
      currency = True
    end
    object qrCotizacionesTipo_Gasto_Cierre: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Gasto_Cierre'
      Origin = '"Cotizaciones"."Tipo_Gasto_Cierre"'
      Size = 25
    end
    object qrCotizacionesPeriodo_Pagos: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Periodo_Pagos'
      Origin = '"Cotizaciones"."Periodo_Pagos"'
      Size = 25
    end
    object qrCotizacionesPlazo_Pago: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Plazo_Pago'
      Origin = '"Cotizaciones"."Plazo_Pago"'
    end
    object qrCotizacionesDescripcion_NCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion_NCF'
      Origin = '"Cotizaciones"."Descripcion_NCF"'
      Size = 100
    end
    object qrCotizacionesInicial: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Inicial'
      Origin = '"Cotizaciones"."Inicial"'
      currency = True
    end
    object qrCotizacionesConduce: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Conduce'
      Origin = '"Cotizaciones"."Conduce"'
      Size = 25
    end
    object qrCotizacionesDebitado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Debitado'
      Origin = '"Cotizaciones"."Debitado"'
    end
    object qrCotizacionesAcreditado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Acreditado'
      Origin = '"Cotizaciones"."Acreditado"'
    end
    object qrCotizacionesBalance: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Origin = '"Cotizaciones"."Balance"'
      currency = True
    end
    object qrCotizacionesMora: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Mora'
      Origin = '"Cotizaciones"."Mora"'
      currency = True
    end
    object qrCotizacionesMonto_Vencido: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Vencido'
      Origin = '"Cotizaciones"."Monto_Vencido"'
      currency = True
    end
    object qrCotizacionesCuotas_Vencidas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Cuotas_Vencidas'
      Origin = '"Cotizaciones"."Cuotas_Vencidas"'
    end
    object qrCotizacionesMonto_Interes_Cumplido: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Interes_Cumplido'
      Origin = '"Cotizaciones"."Monto_Interes_Cumplido"'
      currency = True
    end
    object qrCotizacionesBalance_Capital: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Capital'
      Origin = '"Cotizaciones"."Balance_Capital"'
      currency = True
    end
    object qrCotizacionesBalance_Interes: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Interes'
      Origin = '"Cotizaciones"."Balance_Interes"'
      currency = True
    end
    object qrCotizacionesBalance_Otros: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Otros'
      Origin = '"Cotizaciones"."Balance_Otros"'
      currency = True
    end
    object qrCotizacionesFecha_Ultimo_Pago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Ultimo_Pago'
      Origin = '"Cotizaciones"."Fecha_Ultimo_Pago"'
    end
    object qrCotizacionesDias_Vencidos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Dias_Vencidos'
      Origin = '"Cotizaciones"."Dias_Vencidos"'
    end
    object qrCotizacionesTotal_Seriales: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Seriales'
      Origin = '"Cotizaciones"."Total_Seriales"'
    end
    object qrCotizacionesSeriales_Registrados: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Seriales_Registrados'
      Origin = '"Cotizaciones"."Seriales_Registrados"'
    end
    object qrCotizacionesAlmacen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Origin = '"Cotizaciones"."Almacen"'
      Size = 25
    end
    object qrCotizacionesApertura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Apertura'
      Origin = '"Cotizaciones"."Apertura"'
      Size = 25
    end
    object qrCotizacionesID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Cotizaciones"."ID"'
      Size = 50
    end
  end
  object prCotizaciones: TDataSetProvider
    DataSet = qrCotizaciones
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poUseQuoteChar]
    OnUpdateData = prFacturasUpdateData
    BeforeUpdateRecord = prFacturasBeforeUpdateRecord
    Left = 1248
    Top = 149
  end
  object qrDetalles_Cotizacion: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkCotizaciones
    SQL.Strings = (
      'Select  * From  "Detalles_Cotizacion"'
      'Where "Proceso" = :Proceso'
      'Order By "Registro"')
    UniDirectional = True
    Left = 1152
    Top = 197
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrDetalles_CotizacionProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalles_Cotizacion"."Proceso"'
      Size = 25
    end
    object qrDetalles_CotizacionCodigo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Origin = '"Detalles_Cotizacion"."Codigo"'
      Size = 25
    end
    object qrDetalles_CotizacionCodigo_Real: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo_Real'
      Origin = '"Detalles_Cotizacion"."Codigo_Real"'
      Size = 25
    end
    object qrDetalles_CotizacionSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Detalles_Cotizacion"."Secuencia"'
    end
    object qrDetalles_CotizacionDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Detalles_Cotizacion"."Descripcion"'
      Size = 100
    end
    object qrDetalles_CotizacionCategoria: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Categoria'
      Origin = '"Detalles_Cotizacion"."Categoria"'
    end
    object qrDetalles_CotizacionFabricante: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Fabricante'
      Origin = '"Detalles_Cotizacion"."Fabricante"'
    end
    object qrDetalles_CotizacionDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Departamento'
      Origin = '"Detalles_Cotizacion"."Departamento"'
    end
    object qrDetalles_CotizacionTipo_Producto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Producto'
      Origin = '"Detalles_Cotizacion"."Tipo_Producto"'
    end
    object qrDetalles_CotizacionCosto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Costo'
      Origin = '"Detalles_Cotizacion"."Costo"'
      currency = True
    end
    object qrDetalles_CotizacionPrecio_Real: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Real'
      Origin = '"Detalles_Cotizacion"."Precio_Real"'
      currency = True
    end
    object qrDetalles_CotizacionPrecio_Venta: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta'
      Origin = '"Detalles_Cotizacion"."Precio_Venta"'
      currency = True
    end
    object qrDetalles_CotizacionPrecio_Minimo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Minimo'
      Origin = '"Detalles_Cotizacion"."Precio_Minimo"'
      currency = True
    end
    object qrDetalles_CotizacionCantidad: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad'
      Origin = '"Detalles_Cotizacion"."Cantidad"'
    end
    object qrDetalles_CotizacionTotal_Costo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Origin = '"Detalles_Cotizacion"."Total_Costo"'
      currency = True
    end
    object qrDetalles_CotizacionTotal_Precio: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Precio'
      Origin = '"Detalles_Cotizacion"."Total_Precio"'
      currency = True
    end
    object qrDetalles_CotizacionFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Detalles_Cotizacion"."Fecha"'
    end
    object qrDetalles_CotizacionHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Detalles_Cotizacion"."Hora"'
    end
    object qrDetalles_CotizacionUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Detalles_Cotizacion"."Usuario"'
      Size = 100
    end
    object qrDetalles_CotizacionMes: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Mes'
      Origin = '"Detalles_Cotizacion"."Mes"'
    end
    object qrDetalles_CotizacionAno: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ano'
      Origin = '"Detalles_Cotizacion"."Ano"'
    end
    object qrDetalles_CotizacionCliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Detalles_Cotizacion"."Cliente"'
      Size = 25
    end
    object qrDetalles_CotizacionImpuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto'
      Origin = '"Detalles_Cotizacion"."Impuesto"'
    end
    object qrDetalles_CotizacionDescuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento'
      Origin = '"Detalles_Cotizacion"."Descuento"'
    end
    object qrDetalles_CotizacionValor_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Detalles_Cotizacion"."Valor_Impuesto"'
      currency = True
    end
    object qrDetalles_CotizacionValor_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Detalles_Cotizacion"."Valor_Descuento"'
      currency = True
    end
    object qrDetalles_CotizacionTotal_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Detalles_Cotizacion"."Total_Impuesto"'
      currency = True
    end
    object qrDetalles_CotizacionTotal_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Detalles_Cotizacion"."Total_Descuento"'
      currency = True
    end
    object qrDetalles_CotizacionCantidad_Devuelto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad_Devuelto'
      Origin = '"Detalles_Cotizacion"."Cantidad_Devuelto"'
    end
    object qrDetalles_CotizacionTipo_Precio: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Precio'
      Origin = '"Detalles_Cotizacion"."Tipo_Precio"'
      Size = 25
    end
    object qrDetalles_CotizacionContenido: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Contenido'
      Origin = '"Detalles_Cotizacion"."Contenido"'
    end
    object qrDetalles_CotizacionRegistro: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Registro'
      Origin = '"Detalles_Cotizacion"."Registro"'
    end
    object qrDetalles_CotizacionRequiere_Serial: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Requiere_Serial'
      Origin = '"Detalles_Cotizacion"."Requiere_Serial"'
    end
    object qrDetalles_CotizacionAlmacen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Origin = '"Detalles_Cotizacion"."Almacen"'
      Size = 25
    end
    object qrDetalles_CotizacionUnidades: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Unidades'
      Origin = '"Detalles_Cotizacion"."Unidades"'
    end
    object qrDetalles_CotizacionPrecio_Unidad: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Unidad'
      Origin = '"Detalles_Cotizacion"."Precio_Unidad"'
      currency = True
    end
    object qrDetalles_CotizacionMedida: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Medida'
      Origin = '"Detalles_Cotizacion"."Medida"'
      Size = 25
    end
    object qrDetalles_CotizacionUsuario_Autorizacion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario_Autorizacion'
      Origin = '"Detalles_Cotizacion"."Usuario_Autorizacion"'
      Size = 100
    end
    object qrDetalles_CotizacionProc_Detalle: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proc_Detalle'
      Origin = '"Detalles_Cotizacion"."Proc_Detalle"'
      Size = 25
    end
    object qrDetalles_CotizacionID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Detalles_Cotizacion"."ID"'
      Size = 50
    end
  end
  object lnkCotizaciones: TDataSource
    DataSet = qrCotizaciones
    Left = 1248
    Top = 197
  end
  object qrRegistro_Gastos: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Registro_Gastos" '
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 1152
    Top = 301
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrRegistro_GastosNumero: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero'
      Origin = '"Registro_Gastos"."Numero"'
      DisplayFormat = #39'RG-'#39'0000000'
    end
    object qrRegistro_GastosFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Registro_Gastos"."Fecha"'
    end
    object qrRegistro_GastosHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Registro_Gastos"."Hora"'
    end
    object qrRegistro_GastosA_Nombre_De: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 
        'Debe Escribir el nombre de la persona o compa'#241#237'a a nombre de qui' +
        'en se registra el egreso'
      FieldName = 'A_Nombre_De'
      Origin = '"Registro_Gastos"."A_Nombre_De"'
      Size = 100
    end
    object qrRegistro_GastosConcepto: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto'
      Origin = '"Registro_Gastos"."Concepto"'
      Size = 1000
    end
    object qrRegistro_GastosProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Registro_Gastos"."Proceso"'
      Size = 25
    end
    object qrRegistro_GastosReferencia: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Referencia'
      Origin = '"Registro_Gastos"."Referencia"'
      Size = 25
    end
    object qrRegistro_GastosSubTotal: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'SubTotal'
      Origin = '"Registro_Gastos"."SubTotal"'
      currency = True
    end
    object qrRegistro_GastosTotalNeto: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'TotalNeto'
      Origin = '"Registro_Gastos"."TotalNeto"'
      currency = True
    end
    object qrRegistro_GastosComentario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario'
      Origin = '"Registro_Gastos"."Comentario"'
      Size = 255
    end
    object qrRegistro_GastosUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Registro_Gastos"."Usuario"'
      Size = 100
    end
    object qrRegistro_GastosTotal_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Impuesto'
      Origin = '"Registro_Gastos"."Total_Impuesto"'
      currency = True
    end
    object qrRegistro_GastosTotal_Descuento: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Descuento'
      Origin = '"Registro_Gastos"."Total_Descuento"'
      currency = True
    end
    object qrRegistro_GastosStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Registro_Gastos"."Status"'
      Size = 15
    end
    object qrRegistro_GastosTipo_NCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_NCF'
      Origin = '"Registro_Gastos"."Tipo_NCF"'
      Size = 2
    end
    object qrRegistro_GastosNCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCF'
      Origin = '"Registro_Gastos"."NCF"'
      Size = 100
    end
    object qrRegistro_GastosEmpleado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Empleado'
      Origin = '"Registro_Gastos"."Empleado"'
      Size = 25
    end
    object qrRegistro_GastosID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Registro_Gastos"."ID"'
      Size = 50
    end
    object qrRegistro_GastosApertura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Apertura'
      Origin = '"Registro_Gastos"."Apertura"'
      Size = 25
    end
  end
  object prRegistro_Gastos: TDataSetProvider
    DataSet = qrRegistro_Gastos
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poUseQuoteChar]
    OnUpdateData = prFacturasUpdateData
    BeforeUpdateRecord = prFacturasBeforeUpdateRecord
    Left = 1248
    Top = 301
  end
  object qrDetalle_Pago_Empeados: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnk_Registro_Gastos
    SQL.Strings = (
      'Select  * From  "Detalle_Pagos_Empleados" '
      'Where "Proceso" = :Proceso'
      'Order By "Registro"')
    UniDirectional = True
    Left = 1152
    Top = 349
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrDetalle_Pago_EmpeadosProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalle_Pagos_Empleados"."Proceso"'
      Size = 25
    end
    object qrDetalle_Pago_EmpeadosFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Detalle_Pagos_Empleados"."Fecha"'
    end
    object qrDetalle_Pago_EmpeadosHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Detalle_Pagos_Empleados"."Hora"'
    end
    object qrDetalle_Pago_EmpeadosID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Detalle_Pagos_Empleados"."ID"'
      Size = 50
    end
    object qrDetalle_Pago_EmpeadosAcuerdo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Acuerdo'
      Origin = '"Detalle_Pagos_Empleados"."Acuerdo"'
      Size = 25
    end
    object qrDetalle_Pago_EmpeadosEmpleado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Empleado'
      Origin = '"Detalle_Pagos_Empleados"."Empleado"'
      Size = 25
    end
    object qrDetalle_Pago_EmpeadosMonto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Monto'
      Origin = '"Detalle_Pagos_Empleados"."Monto"'
    end
    object qrDetalle_Pago_EmpeadosRegistro: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Registro'
      Origin = '"Detalle_Pagos_Empleados"."Registro"'
    end
  end
  object lnk_Registro_Gastos: TDataSource
    DataSet = qrRegistro_Gastos
    Left = 1248
    Top = 349
  end
  object qrEmpleados: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Empleados"'
      'Where "Cedula_Rnc_Pasaporte" = :Cedula_Rnc_Pasaporte'
      'Order By "Nombre", "Apellido"')
    UniDirectional = True
    Left = 1152
    Top = 408
    ParamData = <
      item
        DataType = ftString
        Name = 'Cedula_Rnc_Pasaporte'
        ParamType = ptInput
      end>
    object qrEmpleadosCedula_Rnc_Pasaporte: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cedula_Rnc_Pasaporte'
      Origin = '"Empleados"."Cedula_Rnc_Pasaporte"'
      Size = 25
    end
    object qrEmpleadosNombre: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Origin = '"Empleados"."Nombre"'
      Size = 100
    end
    object qrEmpleadosApellido: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Apellido'
      Origin = '"Empleados"."Apellido"'
      Size = 100
    end
    object qrEmpleadosTipo_Cliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Cliente'
      Origin = '"Empleados"."Tipo_Cliente"'
    end
    object qrEmpleadosTipo_Telefono_1: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Residencia'#39
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
      DefaultExpression = #39'Trabajo'#39
      FieldName = 'Tipo_Telefono_3'
      Origin = '"Empleados"."Tipo_Telefono_3"'
    end
    object qrEmpleadosTipo_Telefono_4: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_4'
      Origin = '"Empleados"."Tipo_Telefono_4"'
    end
    object qrEmpleadosNumero_Telefono_1: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_1'
      Origin = '"Empleados"."Numero_Telefono_1"'
      EditMask = '!\(999\)000-0000;1; '
    end
    object qrEmpleadosNumero_Telefono_2: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_2'
      Origin = '"Empleados"."Numero_Telefono_2"'
      EditMask = '!\(999\)000-0000;1; '
    end
    object qrEmpleadosNumero_Telefono_3: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_3'
      Origin = '"Empleados"."Numero_Telefono_3"'
      EditMask = '!\(999\)000-0000;1; '
    end
    object qrEmpleadosNumero_Telefono_4: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Otro'#39
      FieldName = 'Numero_Telefono_4'
      Origin = '"Empleados"."Numero_Telefono_4"'
      EditMask = '!\(999\)000-0000;1; '
    end
    object qrEmpleadosDireccion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion'
      Origin = '"Empleados"."Direccion"'
      Size = 255
    end
    object qrEmpleadosPais: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pais'
      Origin = '"Empleados"."Pais"'
      Size = 100
    end
    object qrEmpleadosCiudad: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ciudad'
      Origin = '"Empleados"."Ciudad"'
      Size = 100
    end
    object qrEmpleadosEstado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Estado'
      Origin = '"Empleados"."Estado"'
      Size = 100
    end
    object qrEmpleadosCondicion_Cliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Condicion_Cliente'
      Origin = '"Empleados"."Condicion_Cliente"'
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
    object qrEmpleadosStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Empleados"."Status"'
      Size = 15
    end
    object qrEmpleadosFecha_Registro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Registro'
      Origin = '"Empleados"."Fecha_Registro"'
    end
    object qrEmpleadosBalance_Actual: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Actual'
      Origin = '"Empleados"."Balance_Actual"'
    end
    object qrEmpleadosmail: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'mail'
      Origin = '"Empleados"."mail"'
      Size = 100
    end
    object qrEmpleadosSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Empleados"."Secuencia"'
    end
    object qrEmpleadosProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Empleados"."Proceso"'
      Size = 25
    end
    object qrEmpleadosFoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Foto'
      Origin = '"Empleados"."Foto"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qrEmpleadosNacionalidad: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nacionalidad'
      Origin = '"Empleados"."Nacionalidad"'
      Size = 25
    end
    object qrEmpleadosSexo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Sexo'
      Origin = '"Empleados"."Sexo"'
      Size = 25
    end
    object qrEmpleadosSector: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Sector'
      Origin = '"Empleados"."Sector"'
    end
    object qrEmpleadosFecha_Nacimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Nacimiento'
      Origin = '"Empleados"."Fecha_Nacimiento"'
    end
    object qrEmpleadosEstado_Civil: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Estado_Civil'
      Origin = '"Empleados"."Estado_Civil"'
      Size = 15
    end
    object qrEmpleadosZona: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Zona'
      Origin = '"Empleados"."Zona"'
    end
    object qrEmpleadosLugar_Trabajo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Lugar_Trabajo'
      Origin = '"Empleados"."Lugar_Trabajo"'
      Size = 100
    end
  end
  object prEmpleados: TDataSetProvider
    DataSet = qrEmpleados
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 1248
    Top = 408
  end
  object qrAcuerdos: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Acuerdos_Trabajo"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 1152
    Top = 479
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrAcuerdosProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Acuerdos_Trabajo"."Proceso"'
      Size = 25
    end
    object qrAcuerdosNumero: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero'
      Origin = '"Acuerdos_Trabajo"."Numero"'
      DisplayFormat = #39'AT-'#39'0000000'
    end
    object qrAcuerdosFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Acuerdos_Trabajo"."Fecha"'
    end
    object qrAcuerdosHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Acuerdos_Trabajo"."Hora"'
    end
    object qrAcuerdosConcepto: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto'
      Origin = '"Acuerdos_Trabajo"."Concepto"'
      Size = 1000
    end
    object qrAcuerdosEmpleado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Empleado'
      Origin = '"Acuerdos_Trabajo"."Empleado"'
      Size = 25
    end
    object qrAcuerdosMonto: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Monto'
      Origin = '"Acuerdos_Trabajo"."Monto"'
      currency = True
    end
    object qrAcuerdosPagado: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pagado'
      Origin = '"Acuerdos_Trabajo"."Pagado"'
      currency = True
    end
    object qrAcuerdosPendiente: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pendiente'
      Origin = '"Acuerdos_Trabajo"."Pendiente"'
      currency = True
    end
    object qrAcuerdosStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Acuerdos_Trabajo"."Status"'
      Size = 15
    end
    object qrAcuerdosFactura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Factura'
      Origin = '"Acuerdos_Trabajo"."Factura"'
      Size = 25
    end
    object qrAcuerdosCotizacion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cotizacion'
      Origin = '"Acuerdos_Trabajo"."Cotizacion"'
      Size = 25
    end
    object qrAcuerdosReferencia: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Referencia'
      Origin = '"Acuerdos_Trabajo"."Referencia"'
      Size = 25
    end
    object qrAcuerdosCliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Acuerdos_Trabajo"."Cliente"'
      Size = 25
    end
    object qrAcuerdosNombre_Empleado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Empleado'
      Origin = '"Acuerdos_Trabajo"."Nombre_Empleado"'
      Size = 100
    end
  end
  object prAcuerdos: TDataSetProvider
    DataSet = qrAcuerdos
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poUseQuoteChar]
    OnUpdateData = prFacturasUpdateData
    BeforeUpdateRecord = prFacturasBeforeUpdateRecord
    Left = 1248
    Top = 479
  end
  object qrDetalle_Acuerdo: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkAcuerdos
    SQL.Strings = (
      'Select  * From  "Detalle_Acuerdos"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 1152
    Top = 535
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrDetalle_AcuerdoProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalle_Acuerdos"."Proceso"'
      Size = 25
    end
    object qrDetalle_AcuerdoEmpleado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Empleado'
      Origin = '"Detalle_Acuerdos"."Empleado"'
      Size = 25
    end
    object qrDetalle_AcuerdoNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Detalle_Acuerdos"."Numero"'
    end
    object qrDetalle_AcuerdoCodigo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Origin = '"Detalle_Acuerdos"."Codigo"'
      Size = 25
    end
    object qrDetalle_AcuerdoDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Detalle_Acuerdos"."Descripcion"'
      Size = 100
    end
    object qrDetalle_AcuerdoCantidad: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad'
      Origin = '"Detalle_Acuerdos"."Cantidad"'
    end
    object qrDetalle_AcuerdoMonto: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Monto'
      Origin = '"Detalle_Acuerdos"."Monto"'
      currency = True
    end
    object qrDetalle_AcuerdoFactura: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Factura'
      Origin = '"Detalle_Acuerdos"."Factura"'
      DisplayFormat = #39'F-'#39'0000000'
    end
    object qrDetalle_AcuerdoCliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Detalle_Acuerdos"."Cliente"'
      Size = 100
    end
    object qrDetalle_AcuerdoFecha_Entrega: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Entrega'
      Origin = '"Detalle_Acuerdos"."Fecha_Entrega"'
    end
  end
  object lnkAcuerdos: TDataSource
    DataSet = qrAcuerdos
    Left = 1248
    Top = 535
  end
  object cds_archivos: TClientDataSet
    Aggregates = <>
    FileName = 'dbfilenames.xml'
    Params = <>
    Left = 1144
    Top = 592
    object cds_archivosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 150
    end
    object cds_archivosVisible: TBooleanField
      FieldName = 'Visible'
    end
    object cds_archivosDireccion: TStringField
      FieldName = 'Direccion'
      Size = 250
    end
  end
  object prArchivos: TDataSetProvider
    DataSet = cds_archivos
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 1248
    Top = 593
  end
  object qrListadoEmpleados: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Empleados"'
      'Where "Status" = '#39'ACTIVO'#39
      'Order By "NombreCompleto"')
    UniDirectional = True
    Left = 920
    Top = 751
    object qrListadoEmpleadosCedula_Rnc_Pasaporte: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cedula_Rnc_Pasaporte'
      Origin = '"Empleados"."Cedula_Rnc_Pasaporte"'
      Size = 25
    end
    object qrListadoEmpleadosNombre: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Origin = '"Empleados"."Nombre"'
      Size = 100
    end
    object qrListadoEmpleadosApellido: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Apellido'
      Origin = '"Empleados"."Apellido"'
      Size = 100
    end
    object qrListadoEmpleadosTipo_Cliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Cliente'
      Origin = '"Empleados"."Tipo_Cliente"'
    end
    object qrListadoEmpleadosTipo_Telefono_1: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_1'
      Origin = '"Empleados"."Tipo_Telefono_1"'
    end
    object qrListadoEmpleadosTipo_Telefono_2: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_2'
      Origin = '"Empleados"."Tipo_Telefono_2"'
    end
    object qrListadoEmpleadosTipo_Telefono_3: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_3'
      Origin = '"Empleados"."Tipo_Telefono_3"'
    end
    object qrListadoEmpleadosTipo_Telefono_4: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Telefono_4'
      Origin = '"Empleados"."Tipo_Telefono_4"'
    end
    object qrListadoEmpleadosNumero_Telefono_1: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_1'
      Origin = '"Empleados"."Numero_Telefono_1"'
    end
    object qrListadoEmpleadosNumero_Telefono_2: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_2'
      Origin = '"Empleados"."Numero_Telefono_2"'
    end
    object qrListadoEmpleadosNumero_Telefono_3: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_3'
      Origin = '"Empleados"."Numero_Telefono_3"'
    end
    object qrListadoEmpleadosNumero_Telefono_4: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Telefono_4'
      Origin = '"Empleados"."Numero_Telefono_4"'
    end
    object qrListadoEmpleadosDireccion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion'
      Origin = '"Empleados"."Direccion"'
      Size = 255
    end
    object qrListadoEmpleadosPais: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pais'
      Origin = '"Empleados"."Pais"'
      Size = 100
    end
    object qrListadoEmpleadosCiudad: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ciudad'
      Origin = '"Empleados"."Ciudad"'
      Size = 100
    end
    object qrListadoEmpleadosEstado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Estado'
      Origin = '"Empleados"."Estado"'
      Size = 100
    end
    object qrListadoEmpleadosCondicion_Cliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Condicion_Cliente'
      Origin = '"Empleados"."Condicion_Cliente"'
    end
    object qrListadoEmpleadosNombreCompleto: TIBStringField
      AutoGenerateValue = arDefault
      FieldKind = fkInternalCalc
      FieldName = 'NombreCompleto'
      Origin = '"Empleados"."NombreCompleto"'
      ProviderFlags = []
      ReadOnly = True
      Size = 201
    end
    object qrListadoEmpleadosStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Empleados"."Status"'
      Size = 15
    end
    object qrListadoEmpleadosFecha_Registro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Registro'
      Origin = '"Empleados"."Fecha_Registro"'
    end
    object qrListadoEmpleadosBalance_Actual: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Actual'
      Origin = '"Empleados"."Balance_Actual"'
    end
    object qrListadoEmpleadosmail: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'mail'
      Origin = '"Empleados"."mail"'
      Size = 100
    end
    object qrListadoEmpleadosSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Empleados"."Secuencia"'
    end
    object qrListadoEmpleadosProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Empleados"."Proceso"'
      Size = 25
    end
    object qrListadoEmpleadosFoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Foto'
      Origin = '"Empleados"."Foto"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qrListadoEmpleadosNacionalidad: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nacionalidad'
      Origin = '"Empleados"."Nacionalidad"'
      Size = 25
    end
    object qrListadoEmpleadosSexo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Sexo'
      Origin = '"Empleados"."Sexo"'
      Size = 25
    end
    object qrListadoEmpleadosSector: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Sector'
      Origin = '"Empleados"."Sector"'
    end
    object qrListadoEmpleadosFecha_Nacimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Nacimiento'
      Origin = '"Empleados"."Fecha_Nacimiento"'
    end
    object qrListadoEmpleadosEstado_Civil: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Estado_Civil'
      Origin = '"Empleados"."Estado_Civil"'
      Size = 15
    end
    object qrListadoEmpleadosZona: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Zona'
      Origin = '"Empleados"."Zona"'
    end
    object qrListadoEmpleadosLugar_Trabajo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Lugar_Trabajo'
      Origin = '"Empleados"."Lugar_Trabajo"'
      Size = 100
    end
  end
  object prListadoEmpleados: TDataSetProvider
    DataSet = qrListadoEmpleados
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 1024
    Top = 751
  end
  object prRenglones_Gastos: TDataSetProvider
    DataSet = qrRenglones_Gastos
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 1024
    Top = 808
  end
  object qrRenglones_Gastos: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'SELECT * '
      'FROM "Renglones_Gastos"'
      'ORDER BY "Nombre"')
    UniDirectional = True
    Left = 920
    Top = 808
    object qrRenglones_GastosNombre: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Origin = '"Renglones_Gastos"."Nombre"'
      Size = 100
    end
    object qrRenglones_GastosStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Renglones_Gastos"."Status"'
      Size = 15
    end
  end
  object prCtas_Cobrar: TDataSetProvider
    DataSet = qrCtas_Cobrar
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 1024
    Top = 864
  end
  object qrCtas_Cobrar: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'SELECT * '
      'FROM "Ctas_Cobrar"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 920
    Top = 864
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Proceso'
        ParamType = ptUnknown
      end>
    object qrCtas_CobrarProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Ctas_Cobrar"."Proceso"'
      Size = 25
    end
    object qrCtas_CobrarID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Ctas_Cobrar"."ID"'
      Size = 25
    end
    object qrCtas_CobrarConcepto: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto'
      Origin = '"Ctas_Cobrar"."Concepto"'
      Size = 100
    end
    object qrCtas_CobrarNombre: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Origin = '"Ctas_Cobrar"."Nombre"'
      Size = 100
    end
    object qrCtas_CobrarTipo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo'
      Origin = '"Ctas_Cobrar"."Tipo"'
      Size = 25
    end
    object qrCtas_CobrarMonto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Monto'
      Origin = '"Ctas_Cobrar"."Monto"'
    end
    object qrCtas_CobrarPagado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado'
      Origin = '"Ctas_Cobrar"."Pagado"'
    end
    object qrCtas_CobrarPendiente: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Origin = '"Ctas_Cobrar"."Pendiente"'
    end
    object qrCtas_CobrarStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Ctas_Cobrar"."Status"'
      Size = 15
    end
  end
  object qrCuadre_Cobrador: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Cuadre_Cobrador"'
      'Where ("Proceso" = :Proceso) Or ("Empleado" = :Empleado)')
    UniDirectional = True
    Left = 916
    Top = 951
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Empleado'
        ParamType = ptUnknown
      end>
    object qrCuadre_CobradorProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Cuadre_Cobrador"."Proceso"'
      Size = 25
    end
    object qrCuadre_CobradorNumero: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero'
      Origin = '"Cuadre_Cobrador"."Numero"'
      DisplayFormat = #39'CC-'#39'0000000000'
    end
    object qrCuadre_CobradorEmpleado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Empleado'
      Origin = '"Cuadre_Cobrador"."Empleado"'
      Size = 25
    end
    object qrCuadre_CobradorFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Cuadre_Cobrador"."Fecha"'
    end
    object qrCuadre_CobradorHora_Apertura: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora_Apertura'
      Origin = '"Cuadre_Cobrador"."Hora_Apertura"'
    end
    object qrCuadre_CobradorHora_Cuadre: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora_Cuadre'
      Origin = '"Cuadre_Cobrador"."Hora_Cuadre"'
    end
    object qrCuadre_CobradorStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Cuadre_Cobrador"."Status"'
      Size = 15
    end
    object qrCuadre_CobradorUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Cuadre_Cobrador"."Usuario"'
      Size = 100
    end
    object qrCuadre_CobradorNombre_Empleado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Empleado'
      Origin = '"Cuadre_Cobrador"."Nombre_Empleado"'
      Size = 100
    end
    object qrCuadre_CobradorMonto_Cobrado: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Monto_Cobrado'
      Origin = '"Cuadre_Cobrador"."Monto_Cobrado"'
      currency = True
    end
    object qrCuadre_CobradorMonto_Recibido: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Monto_Recibido'
      Origin = '"Cuadre_Cobrador"."Monto_Recibido"'
      currency = True
    end
    object qrCuadre_CobradorContratos_Despachados: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Contratos_Despachados'
      Origin = '"Cuadre_Cobrador"."Contratos_Despachados"'
    end
    object qrCuadre_CobradorEfectivo_Entregado: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Efectivo_Entregado'
      Origin = '"Cuadre_Cobrador"."Efectivo_Entregado"'
      currency = True
    end
    object qrCuadre_CobradorCantidad_Tarjetas_Despachadas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad_Tarjetas_Despachadas'
      Origin = '"Cuadre_Cobrador"."Cantidad_Tarjetas_Despachadas"'
    end
    object qrCuadre_CobradorRecibos_Desde: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Recibos_Desde'
      Origin = '"Cuadre_Cobrador"."Recibos_Desde"'
    end
    object qrCuadre_CobradorRecibos_Hasta: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Recibos_Hasta'
      Origin = '"Cuadre_Cobrador"."Recibos_Hasta"'
    end
    object qrCuadre_CobradorCantidad_Facturas_Gastos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad_Facturas_Gastos'
      Origin = '"Cuadre_Cobrador"."Cantidad_Facturas_Gastos"'
    end
    object qrCuadre_CobradorDiferencia: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Diferencia'
      Origin = '"Cuadre_Cobrador"."Diferencia"'
      currency = True
    end
    object qrCuadre_CobradorTipo_Diferencia: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Diferencia'
      Origin = '"Cuadre_Cobrador"."Tipo_Diferencia"'
      Size = 25
    end
    object qrCuadre_CobradorTotal_Gastos: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Gastos'
      Origin = '"Cuadre_Cobrador"."Total_Gastos"'
      currency = True
    end
    object qrCuadre_CobradorTotal_Dieta: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Dieta'
      Origin = '"Cuadre_Cobrador"."Total_Dieta"'
      currency = True
    end
    object qrCuadre_CobradorRecibos_Pago: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Recibos_Pago'
      Origin = '"Cuadre_Cobrador"."Recibos_Pago"'
    end
    object qrCuadre_CobradorContratos_Abonados: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Contratos_Abonados'
      Origin = '"Cuadre_Cobrador"."Contratos_Abonados"'
    end
    object qrCuadre_CobradorContratos_Saldados: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Contratos_Saldados'
      Origin = '"Cuadre_Cobrador"."Contratos_Saldados"'
    end
    object qrCuadre_CobradorDevoluciones: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Devoluciones'
      Origin = '"Cuadre_Cobrador"."Devoluciones"'
    end
    object qrCuadre_CobradorMudados: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Mudados'
      Origin = '"Cuadre_Cobrador"."Mudados"'
    end
    object qrCuadre_CobradorComentarios: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentarios'
      Origin = '"Cuadre_Cobrador"."Comentarios"'
      Size = 255
    end
    object qrCuadre_CobradorPrestamos: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Prestamos'
      Origin = '"Cuadre_Cobrador"."Prestamos"'
      currency = True
    end
  end
  object prCuadre_Cobrador: TDataSetProvider
    DataSet = qrCuadre_Cobrador
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    OnUpdateData = prNotas_CreditoUpdateData
    Left = 1030
    Top = 951
  end
  object qrDetalle_Gastos_Cuadre: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkCuadre_Cobrador
    SQL.Strings = (
      'Select  * From "Detalle_Gastos_Cuadre"'
      'Where "Proceso" = :Proceso'
      'Order By "Renglon"')
    UniDirectional = True
    Left = 916
    Top = 1006
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Proceso'
        ParamType = ptUnknown
      end>
    object qrDetalle_Gastos_CuadreProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalle_Gastos_Cuadre"."Proceso"'
      Size = 25
    end
    object qrDetalle_Gastos_CuadreNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Detalle_Gastos_Cuadre"."Numero"'
    end
    object qrDetalle_Gastos_CuadreRenglon: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Renglon'
      Origin = '"Detalle_Gastos_Cuadre"."Renglon"'
      Size = 100
    end
    object qrDetalle_Gastos_CuadreMonto: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Monto'
      Origin = '"Detalle_Gastos_Cuadre"."Monto"'
      currency = True
    end
    object qrDetalle_Gastos_CuadreComentario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario'
      Origin = '"Detalle_Gastos_Cuadre"."Comentario"'
      Size = 255
    end
    object qrDetalle_Gastos_CuadreStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Detalle_Gastos_Cuadre"."Status"'
      Size = 15
    end
    object qrDetalle_Gastos_CuadreUsuario_Recibido: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario_Recibido'
      Origin = '"Detalle_Gastos_Cuadre"."Usuario_Recibido"'
      Size = 100
    end
    object qrDetalle_Gastos_CuadreUsuario_Validado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario_Validado'
      Origin = '"Detalle_Gastos_Cuadre"."Usuario_Validado"'
      Size = 100
    end
  end
  object lnkCuadre_Cobrador: TDataSource
    DataSet = qrCuadre_Cobrador
    Left = 1030
    Top = 1006
  end
  object qrDetalles_Dieta_Cuadre: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkCuadre_Cobrador
    SQL.Strings = (
      'Select  * From "Detalles_Dieta_Cuadre"'
      'Where "Proceso" = :Proceso'
      'Order By "Nombre"')
    UniDirectional = True
    Left = 916
    Top = 1062
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Proceso'
        ParamType = ptUnknown
      end>
    object qrDetalles_Dieta_CuadreProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalles_Dieta_Cuadre"."Proceso"'
      Size = 25
    end
    object qrDetalles_Dieta_CuadreID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Detalles_Dieta_Cuadre"."ID"'
      Size = 25
    end
    object qrDetalles_Dieta_CuadreNombre: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Origin = '"Detalles_Dieta_Cuadre"."Nombre"'
      Size = 100
    end
    object qrDetalles_Dieta_CuadreNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Detalles_Dieta_Cuadre"."Numero"'
    end
    object qrDetalles_Dieta_CuadreMonto: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Monto'
      Origin = '"Detalles_Dieta_Cuadre"."Monto"'
      currency = True
    end
    object qrDetalles_Dieta_CuadreMonto_Prestamo: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Monto_Prestamo'
      Origin = '"Detalles_Dieta_Cuadre"."Monto_Prestamo"'
      currency = True
    end
  end
  object SrchPr: TDataSetProvider
    DataSet = SrchQ
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 432
    Top = 8
  end
  object qrDetalle_Apertura: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkApertura_Caja
    SQL.Strings = (
      'Select  * From "Detalle_Apertura"'
      'Where '
      '("Proceso" = :Proceso)')
    UniDirectional = True
    Left = 652
    Top = 159
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrDetalle_AperturaProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalle_Apertura"."Proceso"'
      Size = 25
    end
    object qrDetalle_AperturaCaja: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Caja'
      Origin = '"Detalle_Apertura"."Caja"'
      Size = 25
    end
    object qrDetalle_AperturaMoneda: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Moneda'
      Origin = '"Detalle_Apertura"."Moneda"'
      Size = 100
    end
    object qrDetalle_AperturaDenominacion: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Denominacion'
      Origin = '"Detalle_Apertura"."Denominacion"'
    end
    object qrDetalle_AperturaCantidad: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Cantidad'
      Origin = '"Detalle_Apertura"."Cantidad"'
    end
    object qrDetalle_AperturaTotal: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total'
      Origin = '"Detalle_Apertura"."Total"'
      currency = True
    end
  end
  object lnkApertura_Caja: TDataSource
    DataSet = qrApertura_Caja
    Left = 768
    Top = 159
  end
  object qrDetalles_Eliminados: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkFacturas
    SQL.Strings = (
      'Select  * From  "Detalles_Eliminados"'
      'Where "Proceso" = :Proceso'
      'Order By "Registro"')
    UniDirectional = True
    Left = 244
    Top = 744
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrDetalles_EliminadosProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalles_Factura"."Proceso"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 25
    end
    object qrDetalles_EliminadosCodigo: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir un C'#243'digo de Producto'
      FieldName = 'Codigo'
      Origin = '"Detalles_Factura"."Codigo"'
      Size = 25
    end
    object qrDetalles_EliminadosCodigo_Real: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo_Real'
      Origin = '"Detalles_Factura"."Codigo_Real"'
      Size = 25
    end
    object qrDetalles_EliminadosSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Detalles_Factura"."Secuencia"'
      DisplayFormat = '#,#0'
    end
    object qrDetalles_EliminadosDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Detalles_Factura"."Descripcion"'
      Size = 100
    end
    object qrDetalles_EliminadosCategoria: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Categoria'
      Origin = '"Detalles_Factura"."Categoria"'
    end
    object qrDetalles_EliminadosFabricante: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Fabricante'
      Origin = '"Detalles_Factura"."Fabricante"'
    end
    object qrDetalles_EliminadosDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Departamento'
      Origin = '"Detalles_Factura"."Departamento"'
    end
    object qrDetalles_EliminadosTipo_Producto: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Tipo_Producto'
      Origin = '"Detalles_Factura"."Tipo_Producto"'
    end
    object qrDetalles_EliminadosCantidad: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Cantidad'
      Origin = '"Detalles_Factura"."Cantidad"'
      DisplayFormat = '#,#0.00'
    end
    object qrDetalles_EliminadosFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Detalles_Factura"."Fecha"'
    end
    object qrDetalles_EliminadosHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Detalles_Factura"."Hora"'
    end
    object qrDetalles_EliminadosUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Detalles_Factura"."Usuario"'
      Size = 100
    end
    object qrDetalles_EliminadosMes: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Mes'
      Origin = '"Detalles_Factura"."Mes"'
      MaxValue = 12
    end
    object qrDetalles_EliminadosAno: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ano'
      Origin = '"Detalles_Factura"."Ano"'
      DisplayFormat = '0000'
    end
    object qrDetalles_EliminadosCliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Detalles_Factura"."Cliente"'
      Size = 25
    end
    object qrDetalles_EliminadosCantidad_Devuelto: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Cantidad_Devuelto'
      Origin = '"Detalles_Factura"."Cantidad_Devuelto"'
    end
    object qrDetalles_EliminadosTipo_Precio: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Precio'
      Origin = '"Detalles_Factura"."Tipo_Precio"'
      Size = 25
    end
    object qrDetalles_EliminadosContenido: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Contenido'
      Origin = '"Detalles_Factura"."Contenido"'
      DisplayFormat = '#,0'
    end
    object qrDetalles_EliminadosRegistro: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Registro'
      Origin = '"Detalles_Factura"."Registro"'
    end
    object qrDetalles_EliminadosRequiere_Serial: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Requiere_Serial'
      Origin = '"Detalles_Factura"."Requiere_Serial"'
    end
    object qrDetalles_EliminadosAlmacen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Origin = '"Detalles_Factura"."Almacen"'
      Size = 25
    end
    object qrDetalles_EliminadosCosto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Costo'
      Origin = '"Detalles_Factura"."Costo"'
    end
    object qrDetalles_EliminadosPrecio_Real: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Real'
      Origin = '"Detalles_Factura"."Precio_Real"'
    end
    object qrDetalles_EliminadosPrecio_Venta: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta'
      Origin = '"Detalles_Factura"."Precio_Venta"'
    end
    object qrDetalles_EliminadosPrecio_Minimo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Minimo'
      Origin = '"Detalles_Factura"."Precio_Minimo"'
    end
    object qrDetalles_EliminadosTotal_Costo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Origin = '"Detalles_Factura"."Total_Costo"'
    end
    object qrDetalles_EliminadosTotal_Precio: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Precio'
      Origin = '"Detalles_Factura"."Total_Precio"'
    end
    object qrDetalles_EliminadosImpuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto'
      Origin = '"Detalles_Factura"."Impuesto"'
    end
    object qrDetalles_EliminadosDescuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento'
      Origin = '"Detalles_Factura"."Descuento"'
    end
    object qrDetalles_EliminadosValor_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Detalles_Factura"."Valor_Impuesto"'
    end
    object qrDetalles_EliminadosValor_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Detalles_Factura"."Valor_Descuento"'
    end
    object qrDetalles_EliminadosTotal_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Detalles_Factura"."Total_Impuesto"'
    end
    object qrDetalles_EliminadosTotal_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Detalles_Factura"."Total_Descuento"'
    end
    object qrDetalles_EliminadosUnidades: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Unidades'
      Origin = '"Detalles_Factura"."Unidades"'
    end
    object qrDetalles_EliminadosPrecio_Unidad: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Unidad'
      Origin = '"Detalles_Factura"."Precio_Unidad"'
    end
    object qrDetalles_EliminadosMedida: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Medida'
      Origin = '"Detalles_Factura"."Medida"'
      Size = 25
    end
    object qrDetalles_EliminadosUsuario_Autorizacion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario_Autorizacion'
      Origin = '"Detalles_Factura"."Usuario_Autorizacion"'
      Size = 100
    end
    object qrDetalles_EliminadosProc_Detalle: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proc_Detalle'
      Origin = '"Detalles_Factura"."Proc_Detalle"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 25
    end
    object qrDetalles_EliminadosID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Detalles_Factura"."ID"'
      Size = 50
    end
    object qrDetalles_EliminadosValor_Moneda: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Valor_Moneda'
      Origin = '"Detalles_Factura"."Valor_Moneda"'
      currency = True
    end
    object qrDetalles_EliminadosTotal_Moneda: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Moneda'
      Origin = '"Detalles_Factura"."Total_Moneda"'
      currency = True
    end
    object qrDetalles_EliminadosImpuesto_Moneda: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Impuesto_Moneda'
      Origin = '"Detalles_Factura"."Impuesto_Moneda"'
      currency = True
    end
    object qrDetalles_EliminadosDescuento_Moneda: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Descuento_Moneda'
      Origin = '"Detalles_Factura"."Descuento_Moneda"'
      currency = True
    end
    object qrDetalles_EliminadosEliminado_Por: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Eliminado_Por'
      Origin = '"Detalles_Eliminados"."Eliminado_Por"'
      Size = 100
    end
  end
  object lnkFormas_Pago: TDataSource
    DataSet = qrFormas_Pago
    Left = 536
    Top = 871
  end
  object qrPaises: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select * '
      'From "Paises" '
      'Where "Iso_3_Char" = :Iso_3_Char')
    Left = 920
    Top = 13
    ParamData = <
      item
        DataType = ftWideString
        Name = 'Iso_3_Char'
        ParamType = ptInput
      end>
    object qrPaisesIso_3_Char: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe especicicar la codifcaci'#243'n ISO (3 - digitos)'
      FieldName = 'Iso_3_Char'
      Origin = '"Paises"."Iso_3_Char"'
      Size = 25
    end
    object qrPaisesIso_2_Char: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe especicicar la codifcaci'#243'n ISO (2 - digitos)'
      FieldName = 'Iso_2_Char'
      Origin = '"Paises"."Iso_2_Char"'
      Size = 25
    end
    object qrPaisesNombre: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe escribir el nombre del pa'#237's'
      FieldName = 'Nombre'
      Origin = '"Paises"."Nombre"'
      Size = 100
    end
    object qrPaisesRegion: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe escribir la regi'#243'n donde est'#225' ubicado el pa'#237's'
      FieldName = 'Region'
      Origin = '"Paises"."Region"'
      Size = 100
    end
    object qrPaisesIdioma: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Idioma'
      Origin = '"Paises"."Idioma"'
      Size = 25
    end
    object qrPaisesBandera: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Bandera'
      Origin = '"Paises"."Bandera"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qrPaisesEscudo: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Escudo'
      Origin = '"Paises"."Escudo"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qrPaisesStatus: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'ACTIVO'#39
      FieldName = 'Status'
      Origin = '"Paises"."Status"'
      Size = 15
    end
  end
  object qrCiudades: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    BufferChunks = 5000
    DataSource = lnkPaises
    SQL.Strings = (
      'Select * From "Ciudades_Estados" Where "Pais" = :Iso_3_Char'
      'Order By "Nombre" ')
    Left = 920
    Top = 71
    ParamData = <
      item
        DataType = ftString
        Name = 'Iso_3_Char'
        ParamType = ptInput
        Size = 26
      end>
    object qrCiudadesSerie_Codigo: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 
        'Debe escribir un c'#243'digo o n'#250'mero de serie para la ciudad o estad' +
        'o'
      FieldName = 'Serie_Codigo'
      Origin = '"Ciudades_Estados"."Serie_Codigo"'
      Size = 25
    end
    object qrCiudadesPais: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe especificar el pa'#237's al que pertenece la ciudad'
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
    object qrCiudadesEscudo: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Escudo'
      Origin = '"Ciudades_Estados"."Escudo"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qrCiudadesStatus: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'ACTIVO'#39
      FieldName = 'Status'
      Origin = '"Ciudades_Estados"."Status"'
      Size = 15
    end
  end
  object lnkPaises: TDataSource
    DataSet = qrPaises
    Left = 1073
    Top = 71
  end
  object qrSectores: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    BufferChunks = 5000
    DataSource = lnkCiudades
    SQL.Strings = (
      
        'Select * From "Sector" Where ("Pais" = :Pais) And ("Ciudad" = :S' +
        'erie_Codigo)'
      'Order By "Nombre"')
    Left = 920
    Top = 188
    ParamData = <
      item
        DataType = ftString
        Name = 'Pais'
        ParamType = ptInput
        Size = 26
      end
      item
        DataType = ftString
        Name = 'Serie_Codigo'
        ParamType = ptInput
        Size = 26
      end>
    object qrSectoresPais: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pais'
      Origin = '"Sector"."Pais"'
      Size = 25
    end
    object qrSectoresCiudad: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ciudad'
      Origin = '"Sector"."Ciudad"'
      Size = 25
    end
    object qrSectoresNombre: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Origin = '"Sector"."Nombre"'
      Size = 100
    end
    object qrSectoresAbreviatura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Abreviatura'
      Origin = '"Sector"."Abreviatura"'
      Size = 25
    end
    object qrSectoresStatus: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'ACTIVO'#39
      FieldName = 'Status'
      Origin = '"Sector"."Status"'
      Size = 15
    end
    object qrSectoresNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Sector"."Numero"'
    end
  end
  object lnkCiudades: TDataSource
    DataSet = qrCiudades
    Left = 1073
    Top = 130
  end
  object qrZonas: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    BufferChunks = 5000
    DataSource = lnkCiudades
    SQL.Strings = (
      
        'Select * From "Zona" Where ("Pais" = :Pais) And ("Ciudad" = :Ser' +
        'ie_Codigo) '
      'Order By "Descripcion"')
    Left = 920
    Top = 130
    ParamData = <
      item
        DataType = ftString
        Name = 'Pais'
        ParamType = ptInput
        Size = 26
      end
      item
        DataType = ftString
        Name = 'Serie_Codigo'
        ParamType = ptInput
        Size = 26
      end>
    object qrZonasID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Zona"."ID"'
      Size = 25
    end
    object qrZonasCiudad: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ciudad'
      Origin = '"Zona"."Ciudad"'
      Size = 25
    end
    object qrZonasPais: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pais'
      Origin = '"Zona"."Pais"'
      Size = 25
    end
    object qrZonasDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Zona"."Descripcion"'
      Size = 100
    end
    object qrZonasStatus: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'ACTIVO'#39
      FieldName = 'Status'
      Origin = '"Zona"."Status"'
      Size = 15
    end
    object qrZonasNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Zona"."Numero"'
    end
  end
  object prLst_Paises: TDataSetProvider
    DataSet = qrLst_Paises
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 1073
    Top = 247
  end
  object qrLst_Paises: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    BufferChunks = 5000
    SQL.Strings = (
      'Select * From "Paises" '
      'Where "Status" = :Status'
      'Order By "Nombre"')
    Left = 920
    Top = 247
    ParamData = <
      item
        DataType = ftString
        Name = 'Status'
        ParamType = ptInput
      end>
    object qrLst_PaisesIso_3_Char: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Iso_3_Char'
      Origin = '"Paises"."Iso_3_Char"'
      Size = 25
    end
    object qrLst_PaisesIso_2_Char: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Iso_2_Char'
      Origin = '"Paises"."Iso_2_Char"'
      Size = 25
    end
    object qrLst_PaisesNombre: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Origin = '"Paises"."Nombre"'
      Size = 100
    end
    object qrLst_PaisesRegion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Region'
      Origin = '"Paises"."Region"'
      Size = 100
    end
    object qrLst_PaisesIdioma: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Idioma'
      Origin = '"Paises"."Idioma"'
      Size = 25
    end
    object qrLst_PaisesBandera: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Bandera'
      Origin = '"Paises"."Bandera"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qrLst_PaisesEscudo: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Escudo'
      Origin = '"Paises"."Escudo"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qrLst_PaisesStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Paises"."Status"'
      Size = 15
    end
  end
  object prPaises: TDataSetProvider
    DataSet = qrPaises
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 1072
    Top = 13
  end
  object qrOfertas: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select * '
      'From "Ofertas"'
      'Where "Proceso" = :Proceso')
    Left = 1144
    Top = 661
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrOfertasProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Ofertas"."Proceso"'
      Size = 25
    end
    object qrOfertasFecha_Creado: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Creado'
      Origin = '"Ofertas"."Fecha_Creado"'
    end
    object qrOfertasDesde: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Desde'
      Origin = '"Ofertas"."Desde"'
    end
    object qrOfertasHasta: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Hasta'
      Origin = '"Ofertas"."Hasta"'
    end
    object qrOfertasMonto_Descuento: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Monto_Descuento'
      Origin = '"Ofertas"."Monto_Descuento"'
      DisplayFormat = '#0.00'#39'%'#39
    end
    object qrOfertasDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Ofertas"."Descripcion"'
      Size = 100
    end
    object qrOfertasStatus: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'ACTIVO'#39
      FieldName = 'Status'
      Origin = '"Ofertas"."Status"'
      Size = 15
    end
  end
  object prOfertas: TDataSetProvider
    DataSet = qrOfertas
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 1248
    Top = 661
  end
  object lnkOfertas: TDataSource
    DataSet = qrOfertas
    Left = 1254
    Top = 718
  end
  object qrDetalle_Oferta: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkOfertas
    SQL.Strings = (
      'Select * '
      'From "Detalle_Oferta"'
      'Where "Proceso" = :Proceso')
    Left = 1144
    Top = 717
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrDetalle_OfertaProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalle_Oferta"."Proceso"'
      Size = 25
    end
    object qrDetalle_OfertaCodigo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Origin = '"Detalle_Oferta"."Codigo"'
      Size = 25
    end
    object qrDetalle_OfertaDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Detalle_Oferta"."Descripcion"'
      Size = 100
    end
    object qrDetalle_OfertaPrecio_Regular: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Precio_Regular'
      Origin = '"Detalle_Oferta"."Precio_Regular"'
      currency = True
    end
    object qrDetalle_OfertaDescuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento'
      Origin = '"Detalle_Oferta"."Descuento"'
    end
    object qrDetalle_OfertaPrecio_Oferta: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Precio_Oferta'
      Origin = '"Detalle_Oferta"."Precio_Oferta"'
      currency = True
    end
    object qrDetalle_OfertaMonto_Descuento: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Monto_Descuento'
      Origin = '"Detalle_Oferta"."Monto_Descuento"'
      currency = True
    end
    object qrDetalle_OfertaStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Detalle_Oferta"."Status"'
      Size = 15
    end
  end
  object prProducto_Oferta: TDataSetProvider
    DataSet = qrProducto_Oferta
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 1248
    Top = 805
  end
  object qrProducto_Oferta: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkOfertas
    SQL.Strings = (
      'Select * '
      'From "Detalle_Oferta"'
      'Where ("Codigo" = :Codigo)'
      'And  ("Status" = '#39'ACTIVO'#39')')
    Left = 1144
    Top = 805
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Codigo'
        ParamType = ptUnknown
      end>
    object qrProducto_OfertaProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalle_Oferta"."Proceso"'
      Size = 25
    end
    object qrProducto_OfertaCodigo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Origin = '"Detalle_Oferta"."Codigo"'
      Size = 25
    end
    object qrProducto_OfertaDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Detalle_Oferta"."Descripcion"'
      Size = 100
    end
    object qrProducto_OfertaPrecio_Regular: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Regular'
      Origin = '"Detalle_Oferta"."Precio_Regular"'
    end
    object qrProducto_OfertaDescuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento'
      Origin = '"Detalle_Oferta"."Descuento"'
    end
    object qrProducto_OfertaPrecio_Oferta: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Oferta'
      Origin = '"Detalle_Oferta"."Precio_Oferta"'
    end
    object qrProducto_OfertaMonto_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Descuento'
      Origin = '"Detalle_Oferta"."Monto_Descuento"'
    end
    object qrProducto_OfertaStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Detalle_Oferta"."Status"'
      Size = 15
    end
  end
  object spVALIDAR_OFERTAS: TIBStoredProc
    Database = InfoDataBase
    Transaction = InfoTransaction
    StoredProcName = 'VALIDAR_OFERTAS'
    Left = 1144
    Top = 872
  end
  object prLst_Terminales_Status: TDataSetProvider
    DataSet = qrLst_Terminales_Status
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 1024
    Top = 1121
  end
  object qrLst_Terminales_Status: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'SELECT * '
      'FROM "Terminales" '
      'WHERE "Status" = :Status'
      'ORDER BY "Descripcion"')
    UniDirectional = True
    Left = 920
    Top = 1121
    ParamData = <
      item
        DataType = ftString
        Name = 'Status'
        ParamType = ptInput
      end>
    object qrLst_Terminales_StatusID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Terminales"."ID"'
      Size = 50
    end
    object qrLst_Terminales_StatusDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Terminales"."Descripcion"'
      Size = 100
    end
    object qrLst_Terminales_StatusStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Terminales"."Status"'
      Size = 50
    end
    object qrLst_Terminales_StatusHora_Apertura: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora_Apertura'
      Origin = '"Terminales"."Hora_Apertura"'
    end
    object qrLst_Terminales_StatusHora_Cierre: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora_Cierre'
      Origin = '"Terminales"."Hora_Cierre"'
    end
    object qrLst_Terminales_StatusNombre: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Origin = '"Terminales"."Nombre"'
      Size = 100
    end
    object qrLst_Terminales_StatusNombre_2: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_2'
      Origin = '"Terminales"."Nombre_2"'
      Size = 100
    end
    object qrLst_Terminales_StatusNombre_3: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_3'
      Origin = '"Terminales"."Nombre_3"'
      Size = 100
    end
    object qrLst_Terminales_StatusDireccion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion'
      Origin = '"Terminales"."Direccion"'
      Size = 100
    end
    object qrLst_Terminales_StatusDireccion_2: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion_2'
      Origin = '"Terminales"."Direccion_2"'
      Size = 100
    end
    object qrLst_Terminales_StatusCiudad: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ciudad'
      Origin = '"Terminales"."Ciudad"'
      Size = 100
    end
    object qrLst_Terminales_StatusPais: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pais'
      Origin = '"Terminales"."Pais"'
      Size = 100
    end
    object qrLst_Terminales_StatusTelefono: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefono'
      Origin = '"Terminales"."Telefono"'
    end
    object qrLst_Terminales_StatusImpresora: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Impresora'
      Origin = '"Terminales"."Impresora"'
    end
    object qrLst_Terminales_StatusPuerto: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Puerto'
      Origin = '"Terminales"."Puerto"'
    end
    object qrLst_Terminales_StatusFormato_Numeros: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Formato_Numeros'
      Origin = '"Terminales"."Formato_Numeros"'
    end
    object qrLst_Terminales_StatusComentario_1: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_1'
      Origin = '"Terminales"."Comentario_1"'
      Size = 100
    end
    object qrLst_Terminales_StatusComentario_2: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_2'
      Origin = '"Terminales"."Comentario_2"'
      Size = 100
    end
    object qrLst_Terminales_StatusComentario_3: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_3'
      Origin = '"Terminales"."Comentario_3"'
      Size = 100
    end
    object qrLst_Terminales_StatusComentario_4: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_4'
      Origin = '"Terminales"."Comentario_4"'
      Size = 100
    end
    object qrLst_Terminales_StatusSeparador_Linea: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Separador_Linea'
      Origin = '"Terminales"."Separador_Linea"'
      FixedChar = True
      Size = 1
    end
    object qrLst_Terminales_StatusSimbolo_Moneda: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Simbolo_Moneda'
      Origin = '"Terminales"."Simbolo_Moneda"'
      Size = 6
    end
    object qrLst_Terminales_StatusFormato_Fecha: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Formato_Fecha'
      Origin = '"Terminales"."Formato_Fecha"'
      Size = 100
    end
    object qrLst_Terminales_StatusFormato_Hora: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Formato_Hora'
      Origin = '"Terminales"."Formato_Hora"'
      Size = 100
    end
    object qrLst_Terminales_StatusFormato_Fecha_Largo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Formato_Fecha_Largo'
      Origin = '"Terminales"."Formato_Fecha_Largo"'
      Size = 100
    end
    object qrLst_Terminales_StatusFormato_Hora_Largo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Formato_Hora_Largo'
      Origin = '"Terminales"."Formato_Hora_Largo"'
      Size = 100
    end
    object qrLst_Terminales_StatusFormato_N_T_H: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Formato_N_T_H'
      Origin = '"Terminales"."Formato_N_T_H"'
      Size = 100
    end
    object qrLst_Terminales_StatusCtrl_Alt_Del: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Ctrl_Alt_Del'
      Origin = '"Terminales"."Ctrl_Alt_Del"'
    end
    object qrLst_Terminales_StatusAlt_F4: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Alt_F4'
      Origin = '"Terminales"."Alt_F4"'
    end
    object qrLst_Terminales_StatusBarra: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Barra'
      Origin = '"Terminales"."Barra"'
    end
    object qrLst_Terminales_StatusPanel: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Panel'
      Origin = '"Terminales"."Panel"'
    end
    object qrLst_Terminales_StatusRun: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Run'
      Origin = '"Terminales"."Run"'
    end
    object qrLst_Terminales_StatusFind: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Find'
      Origin = '"Terminales"."Find"'
    end
    object qrLst_Terminales_StatusWinKey: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'WinKey'
      Origin = '"Terminales"."WinKey"'
    end
    object qrLst_Terminales_StatusColor_Pantallas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Color_Pantallas'
      Origin = '"Terminales"."Color_Pantallas"'
    end
    object qrLst_Terminales_StatusApagar_Salir: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Apagar_Salir'
      Origin = '"Terminales"."Apagar_Salir"'
    end
    object qrLst_Terminales_StatusLineas_Despues: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Lineas_Despues'
      Origin = '"Terminales"."Lineas_Despues"'
    end
    object qrLst_Terminales_StatusAncho_Linea: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ancho_Linea'
      Origin = '"Terminales"."Ancho_Linea"'
    end
    object qrLst_Terminales_StatusDireccion_Local: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion_Local'
      Origin = '"Terminales"."Direccion_Local"'
      Size = 100
    end
    object qrLst_Terminales_StatusIcon: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Icon'
      Origin = '"Terminales"."Icon"'
    end
    object qrLst_Terminales_StatusBalance: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Origin = '"Terminales"."Balance"'
    end
    object qrLst_Terminales_StatusUltima_Cta: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ultima_Cta'
      Origin = '"Terminales"."Ultima_Cta"'
    end
    object qrLst_Terminales_StatusFecha_Ultima_Cta: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Ultima_Cta'
      Origin = '"Terminales"."Fecha_Ultima_Cta"'
    end
    object qrLst_Terminales_StatusRNC: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'RNC'
      Origin = '"Terminales"."RNC"'
      Size = 50
    end
    object qrLst_Terminales_StatusNombre_Impuesto: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Impuesto'
      Origin = '"Terminales"."Nombre_Impuesto"'
      Size = 25
    end
    object qrLst_Terminales_StatusCondicion_Facturas: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Condicion_Facturas'
      Origin = '"Terminales"."Condicion_Facturas"'
      Size = 25
    end
    object qrLst_Terminales_StatusTipo_Factura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Factura'
      Origin = '"Terminales"."Tipo_Factura"'
      Size = 25
    end
    object qrLst_Terminales_StatusTermino_Facturacion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Termino_Facturacion'
      Origin = '"Terminales"."Termino_Facturacion"'
      Size = 25
    end
    object qrLst_Terminales_StatusInventario_Restringido: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Inventario_Restringido'
      Origin = '"Terminales"."Inventario_Restringido"'
    end
    object qrLst_Terminales_StatusAperturar_Caja: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Aperturar_Caja'
      Origin = '"Terminales"."Aperturar_Caja"'
    end
    object qrLst_Terminales_StatusDecimales_Cantidades: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Decimales_Cantidades'
      Origin = '"Terminales"."Decimales_Cantidades"'
      Size = 25
    end
    object qrLst_Terminales_StatusAlmacen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Origin = '"Terminales"."Almacen"'
      Size = 25
    end
    object qrLst_Terminales_StatusTermino_LayAway: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Termino_LayAway'
      Origin = '"Terminales"."Termino_LayAway"'
    end
    object qrLst_Terminales_StatusPorcentaje_LayAway: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Porcentaje_LayAway'
      Origin = '"Terminales"."Porcentaje_LayAway"'
    end
    object qrLst_Terminales_StatusID_Caja: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Caja'
      Origin = '"Terminales"."ID_Caja"'
      Size = 50
    end
    object qrLst_Terminales_StatusID_Almacen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Almacen'
      Origin = '"Terminales"."ID_Almacen"'
      Size = 50
    end
    object qrLst_Terminales_StatusID_Departamento: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Departamento'
      Origin = '"Terminales"."ID_Departamento"'
      Size = 50
    end
    object qrLst_Terminales_StatusManejo_Inventario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Manejo_Inventario'
      Origin = '"Terminales"."Manejo_Inventario"'
      Size = 15
    end
    object qrLst_Terminales_StatusTermino_COD: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Termino_COD'
      Origin = '"Terminales"."Termino_COD"'
      Size = 25
    end
    object qrLst_Terminales_StatusTermino_Credito: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Termino_Credito'
      Origin = '"Terminales"."Termino_Credito"'
      Size = 25
    end
    object qrLst_Terminales_StatusTermino_Financiado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Termino_Financiado'
      Origin = '"Terminales"."Termino_Financiado"'
      Size = 25
    end
    object qrLst_Terminales_StatusDecimales_Moneda: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Decimales_Moneda'
      Origin = '"Terminales"."Decimales_Moneda"'
      Size = 25
    end
    object qrLst_Terminales_StatusLineas_Expulsar: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Lineas_Expulsar'
      Origin = '"Terminales"."Lineas_Expulsar"'
    end
    object qrLst_Terminales_StatusBarra_Windows: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Barra_Windows'
      Origin = '"Terminales"."Barra_Windows"'
    end
    object qrLst_Terminales_StatusPanel_Control: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Panel_Control'
      Origin = '"Terminales"."Panel_Control"'
    end
    object qrLst_Terminales_StatusWindows_Key: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Windows_Key'
      Origin = '"Terminales"."Windows_Key"'
    end
    object qrLst_Terminales_StatusComentario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario'
      Origin = '"Terminales"."Comentario"'
      Size = 100
    end
    object qrLst_Terminales_StatusComentario_Linea_2: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_Linea_2'
      Origin = '"Terminales"."Comentario_Linea_2"'
      Size = 100
    end
    object qrLst_Terminales_StatusComentario_Linea_3: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_Linea_3'
      Origin = '"Terminales"."Comentario_Linea_3"'
      Size = 100
    end
    object qrLst_Terminales_StatusComentario_Linea_4: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario_Linea_4'
      Origin = '"Terminales"."Comentario_Linea_4"'
      Size = 100
    end
    object qrLst_Terminales_StatusConcepto_Status: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto_Status'
      Origin = '"Terminales"."Concepto_Status"'
      Size = 100
    end
    object qrLst_Terminales_StatusFecha_Instalacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Instalacion'
      Origin = '"Terminales"."Fecha_Instalacion"'
    end
    object qrLst_Terminales_StatusFecha_Vencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Vencimiento'
      Origin = '"Terminales"."Fecha_Vencimiento"'
    end
    object qrLst_Terminales_StatusEjecuciones: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ejecuciones'
      Origin = '"Terminales"."Ejecuciones"'
    end
    object qrLst_Terminales_StatusLimite_Ejecuciones: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Limite_Ejecuciones'
      Origin = '"Terminales"."Limite_Ejecuciones"'
    end
    object qrLst_Terminales_StatusNombre_Mascara: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Mascara'
      Origin = '"Terminales"."Nombre_Mascara"'
      Size = 100
    end
    object qrLst_Terminales_StatusDireccion_Mascara: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion_Mascara'
      Origin = '"Terminales"."Direccion_Mascara"'
      Size = 255
    end
    object qrLst_Terminales_StatusDireccion_IP: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion_IP'
      Origin = '"Terminales"."Direccion_IP"'
      Size = 50
    end
    object qrLst_Terminales_StatusDireccion_NETBIOS: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion_NETBIOS'
      Origin = '"Terminales"."Direccion_NETBIOS"'
      Size = 50
    end
    object qrLst_Terminales_StatusCPU_ID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPU_ID'
      Origin = '"Terminales"."CPU_ID"'
      Size = 100
    end
    object qrLst_Terminales_StatusMAC_Address: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'MAC_Address'
      Origin = '"Terminales"."MAC_Address"'
      Size = 100
    end
    object qrLst_Terminales_StatusCarpeta_Fotos_ID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Carpeta_Fotos_ID'
      Origin = '"Terminales"."Carpeta_Fotos_ID"'
      Size = 255
    end
    object qrLst_Terminales_StatusAncho_Fotos_Documentos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ancho_Fotos_Documentos'
      Origin = '"Terminales"."Ancho_Fotos_Documentos"'
    end
    object qrLst_Terminales_StatusAltura_Fotos_Documentos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Altura_Fotos_Documentos'
      Origin = '"Terminales"."Altura_Fotos_Documentos"'
    end
    object qrLst_Terminales_StatusRestringir_Dias_Semana: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Restringir_Dias_Semana'
      Origin = '"Terminales"."Restringir_Dias_Semana"'
    end
    object qrLst_Terminales_StatusOutputDir: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'OutputDir'
      Origin = '"Terminales"."OutputDir"'
      Size = 255
    end
  end
  object qrCodigos_Productos: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkProductos
    SQL.Strings = (
      'Select  * From "Codigos_Productos"'
      'Where "Proceso" = :Proceso'
      'Order By "Codigo_Barra"')
    Left = 144
    Top = 161
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrCodigos_ProductosProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Codigos_Productos"."Proceso"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 25
    end
    object qrCodigos_ProductosCodigo_Barra: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo_Barra'
      Origin = '"Codigos_Productos"."Codigo_Barra"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 25
    end
    object qrCodigos_ProductosDescripcion_Barra: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion_Barra'
      Origin = '"Codigos_Productos"."Descripcion_Barra"'
      Size = 100
    end
  end
  object spVALIDAD_CODIGOS_BARRA: TIBStoredProc
    Database = InfoDataBase
    Transaction = InfoTransaction
    StoredProcName = 'VALIDAD_CODIGOS_BARRA'
    Left = 1144
    Top = 944
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'P_RESULT'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'P_CODE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'P_DESCRIPTION'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'P_CODIGO_BARRA'
        ParamType = ptInput
      end>
  end
  object prAutorizaciones: TDataSetProvider
    DataSet = qrAutorizaciones
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    BeforeUpdateRecord = prFacturasBeforeUpdateRecord
    Left = 536
    Top = 558
  end
  object qrAutorizaciones: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Autorizaciones"'
      'Where "Form" = :Form'
      'Order By "Form", "Nombre"')
    UniDirectional = True
    Left = 436
    Top = 558
    ParamData = <
      item
        DataType = ftString
        Name = 'Form'
        ParamType = ptInput
      end>
    object qrAutorizacionesForm: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Form'
      Origin = '"Autorizaciones"."Form"'
      Size = 100
    end
    object qrAutorizacionesNombre: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Origin = '"Autorizaciones"."Nombre"'
      Size = 100
    end
    object qrAutorizacionesTipo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo'
      Origin = '"Autorizaciones"."Tipo"'
      Size = 50
    end
  end
  object spSET_LAY_AWAY_VENCIDOS: TIBStoredProc
    Database = InfoDataBase
    Transaction = InfoTransaction
    StoredProcName = 'SET_LAY_AWAY_VENCIDOS'
    Left = 766
    Top = 208
  end
  object qrAsistencia: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Asistencia"'
      'Where "Fecha" = :Fecha'
      'Order By "Numero" Descending')
    UniDirectional = True
    Left = 40
    Top = 1067
    ParamData = <
      item
        DataType = ftDate
        Name = 'Fecha'
        ParamType = ptInput
      end>
    object qrAsistenciaNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Asistencia"."Numero"'
      DisplayFormat = '0000'
    end
    object qrAsistenciaFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Asistencia"."Fecha"'
    end
    object qrAsistenciaDN: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DN'
      Origin = '"Asistencia"."DN"'
    end
    object qrAsistenciaUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Asistencia"."Usuario"'
      Size = 25
    end
    object qrAsistenciaRegistro: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Registro'
      Origin = '"Asistencia"."Registro"'
      Size = 100
    end
    object qrAsistenciaAccion: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Accion'
      Origin = '"Asistencia"."Accion"'
    end
    object qrAsistenciaRegistrado: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Registrado'
      Origin = '"Asistencia"."Registrado"'
      Size = 100
    end
    object qrAsistenciaCliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Asistencia"."Cliente"'
      Size = 25
    end
    object qrAsistenciaNombre_Cliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Cliente'
      Origin = '"Asistencia"."Nombre_Cliente"'
      Size = 100
    end
    object qrAsistenciaAtraso: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Atraso'
      Origin = '"Asistencia"."Atraso"'
    end
    object qrAsistenciaStatus_Balance: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status_Balance'
      Origin = '"Asistencia"."Status_Balance"'
      Size = 15
    end
    object qrAsistenciaStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Asistencia"."Status"'
      Size = 15
    end
  end
  object prAsistencia: TDataSetProvider
    DataSet = qrAsistencia
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 144
    Top = 1067
  end
  object qrDevoluciones: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Devoluciones"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 252
    Top = 1063
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrDevolucionesNumero: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero'
      Origin = '"Devoluciones"."Numero"'
      DisplayFormat = #39'DV-'#39'0000000000'
    end
    object qrDevolucionesProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Devoluciones"."Proceso"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 25
    end
    object qrDevolucionesTipo: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'VENTA'#39
      FieldName = 'Tipo'
      Origin = '"Devoluciones"."Tipo"'
      Size = 25
    end
    object qrDevolucionesFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Devoluciones"."Fecha"'
    end
    object qrDevolucionesHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Devoluciones"."Hora"'
    end
    object qrDevolucionesUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Devoluciones"."Usuario"'
      Size = 100
    end
    object qrDevolucionesA_Nombre_De: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'A_Nombre_De'
      Origin = '"Devoluciones"."A_Nombre_De"'
      Size = 100
    end
    object qrDevolucionesProceso_Operacion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso_Operacion'
      Origin = '"Devoluciones"."Proceso_Operacion"'
      Size = 25
    end
    object qrDevolucionesFecha_Operacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Operacion'
      Origin = '"Devoluciones"."Fecha_Operacion"'
    end
    object qrDevolucionesConcepto: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto'
      Origin = '"Devoluciones"."Concepto"'
      Size = 100
    end
    object qrDevolucionesJustificacion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Justificacion'
      Origin = '"Devoluciones"."Justificacion"'
      Size = 255
    end
    object qrDevolucionesApertura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Apertura'
      Origin = '"Devoluciones"."Apertura"'
      Size = 25
    end
    object qrDevolucionesCuadre: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cuadre'
      Origin = '"Devoluciones"."Cuadre"'
      Size = 25
    end
    object qrDevolucionesMonto_Actual: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Monto_Actual'
      Origin = '"Devoluciones"."Monto_Actual"'
      currency = True
    end
    object qrDevolucionesMonto_Final: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Monto_Final'
      Origin = '"Devoluciones"."Monto_Final"'
      currency = True
    end
    object qrDevolucionesImpuesto_Actual: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Impuesto_Actual'
      Origin = '"Devoluciones"."Impuesto_Actual"'
      currency = True
    end
    object qrDevolucionesImpuesto_Final: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Impuesto_Final'
      Origin = '"Devoluciones"."Impuesto_Final"'
      currency = True
    end
    object qrDevolucionesDescuento_Actual: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Descuento_Actual'
      Origin = '"Devoluciones"."Descuento_Actual"'
      currency = True
    end
    object qrDevolucionesDescuento_Final: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Descuento_Final'
      Origin = '"Devoluciones"."Descuento_Final"'
      currency = True
    end
    object qrDevolucionesTerminal: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Terminal'
      Origin = '"Devoluciones"."Terminal"'
      Size = 25
    end
    object qrDevolucionesStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Devoluciones"."Status"'
      Size = 15
    end
    object qrDevolucionesProceso_Nota_Credito: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso_Nota_Credito'
      Origin = '"Devoluciones"."Proceso_Nota_Credito"'
      Size = 25
    end
  end
  object prDevoluciones: TDataSetProvider
    DataSet = qrDevoluciones
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prCompra_ProductosBeforeUpdateRecord
    Left = 352
    Top = 1063
  end
  object qrDetalles_Devoluciones: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkDevoluciones
    SQL.Strings = (
      'Select  * From  "Detalles_Factura"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 252
    Top = 1111
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrDetalles_DevolucionesProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalles_Factura"."Proceso"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 25
    end
    object qrDetalles_DevolucionesCodigo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
      Origin = '"Detalles_Factura"."Codigo"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 25
    end
    object qrDetalles_DevolucionesCodigo_Real: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo_Real'
      Origin = '"Detalles_Factura"."Codigo_Real"'
      Size = 25
    end
    object qrDetalles_DevolucionesSecuencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Secuencia'
      Origin = '"Detalles_Factura"."Secuencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrDetalles_DevolucionesDescripcion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = '"Detalles_Factura"."Descripcion"'
      Size = 100
    end
    object qrDetalles_DevolucionesCategoria: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Categoria'
      Origin = '"Detalles_Factura"."Categoria"'
    end
    object qrDetalles_DevolucionesFabricante: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Fabricante'
      Origin = '"Detalles_Factura"."Fabricante"'
    end
    object qrDetalles_DevolucionesDepartamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Departamento'
      Origin = '"Detalles_Factura"."Departamento"'
    end
    object qrDetalles_DevolucionesTipo_Producto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Producto'
      Origin = '"Detalles_Factura"."Tipo_Producto"'
    end
    object qrDetalles_DevolucionesCosto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Costo'
      Origin = '"Detalles_Factura"."Costo"'
    end
    object qrDetalles_DevolucionesPrecio_Real: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Real'
      Origin = '"Detalles_Factura"."Precio_Real"'
    end
    object qrDetalles_DevolucionesPrecio_Venta: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta'
      Origin = '"Detalles_Factura"."Precio_Venta"'
    end
    object qrDetalles_DevolucionesPrecio_Minimo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Minimo'
      Origin = '"Detalles_Factura"."Precio_Minimo"'
    end
    object qrDetalles_DevolucionesCantidad: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad'
      Origin = '"Detalles_Factura"."Cantidad"'
    end
    object qrDetalles_DevolucionesTotal_Costo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Origin = '"Detalles_Factura"."Total_Costo"'
    end
    object qrDetalles_DevolucionesTotal_Precio: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Precio'
      Origin = '"Detalles_Factura"."Total_Precio"'
    end
    object qrDetalles_DevolucionesFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Detalles_Factura"."Fecha"'
    end
    object qrDetalles_DevolucionesHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Detalles_Factura"."Hora"'
    end
    object qrDetalles_DevolucionesUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Detalles_Factura"."Usuario"'
      Size = 100
    end
    object qrDetalles_DevolucionesMes: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Mes'
      Origin = '"Detalles_Factura"."Mes"'
    end
    object qrDetalles_DevolucionesAno: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ano'
      Origin = '"Detalles_Factura"."Ano"'
    end
    object qrDetalles_DevolucionesCliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Detalles_Factura"."Cliente"'
      Size = 25
    end
    object qrDetalles_DevolucionesImpuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto'
      Origin = '"Detalles_Factura"."Impuesto"'
    end
    object qrDetalles_DevolucionesDescuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento'
      Origin = '"Detalles_Factura"."Descuento"'
    end
    object qrDetalles_DevolucionesValor_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Detalles_Factura"."Valor_Impuesto"'
    end
    object qrDetalles_DevolucionesValor_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Detalles_Factura"."Valor_Descuento"'
    end
    object qrDetalles_DevolucionesTotal_Impuesto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Detalles_Factura"."Total_Impuesto"'
    end
    object qrDetalles_DevolucionesTotal_Descuento: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Detalles_Factura"."Total_Descuento"'
    end
    object qrDetalles_DevolucionesCantidad_Devuelto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad_Devuelto'
      Origin = '"Detalles_Factura"."Cantidad_Devuelto"'
    end
    object qrDetalles_DevolucionesTipo_Precio: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Precio'
      Origin = '"Detalles_Factura"."Tipo_Precio"'
      Size = 25
    end
    object qrDetalles_DevolucionesContenido: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Contenido'
      Origin = '"Detalles_Factura"."Contenido"'
    end
    object qrDetalles_DevolucionesRegistro: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Registro'
      Origin = '"Detalles_Factura"."Registro"'
    end
    object qrDetalles_DevolucionesRequiere_Serial: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Requiere_Serial'
      Origin = '"Detalles_Factura"."Requiere_Serial"'
    end
    object qrDetalles_DevolucionesAlmacen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Origin = '"Detalles_Factura"."Almacen"'
      Size = 25
    end
    object qrDetalles_DevolucionesUnidades: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Unidades'
      Origin = '"Detalles_Factura"."Unidades"'
    end
    object qrDetalles_DevolucionesPrecio_Unidad: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Unidad'
      Origin = '"Detalles_Factura"."Precio_Unidad"'
    end
    object qrDetalles_DevolucionesMedida: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Medida'
      Origin = '"Detalles_Factura"."Medida"'
      Size = 25
    end
    object qrDetalles_DevolucionesUsuario_Autorizacion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario_Autorizacion'
      Origin = '"Detalles_Factura"."Usuario_Autorizacion"'
      Size = 100
    end
    object qrDetalles_DevolucionesProc_Detalle: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proc_Detalle'
      Origin = '"Detalles_Factura"."Proc_Detalle"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 25
    end
    object qrDetalles_DevolucionesID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Detalles_Factura"."ID"'
      Size = 50
    end
    object qrDetalles_DevolucionesValor_Moneda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Moneda'
      Origin = '"Detalles_Factura"."Valor_Moneda"'
    end
    object qrDetalles_DevolucionesTotal_Moneda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Moneda'
      Origin = '"Detalles_Factura"."Total_Moneda"'
    end
    object qrDetalles_DevolucionesImpuesto_Moneda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto_Moneda'
      Origin = '"Detalles_Factura"."Impuesto_Moneda"'
    end
    object qrDetalles_DevolucionesDescuento_Moneda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Moneda'
      Origin = '"Detalles_Factura"."Descuento_Moneda"'
    end
    object qrDetalles_DevolucionesProceso_Componente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso_Componente'
      Origin = '"Detalles_Factura"."Proceso_Componente"'
      Size = 25
    end
    object qrDetalles_DevolucionesFraccion: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Fraccion'
      Origin = '"Detalles_Factura"."Fraccion"'
    end
    object qrDetalles_DevolucionesOferta: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Oferta'
      Origin = '"Detalles_Factura"."Oferta"'
      Size = 25
    end
  end
  object lnkDevoluciones: TDataSource
    DataSet = qrDevoluciones
    Left = 352
    Top = 1111
  end
  object qrCreditos: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Creditos"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 44
    Top = 1135
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrCreditosProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Creditos"."Proceso"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 25
    end
    object qrCreditosNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Creditos"."Numero"'
    end
    object qrCreditosFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Creditos"."Fecha"'
    end
    object qrCreditosHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Creditos"."Hora"'
    end
    object qrCreditosConcepto: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto'
      Origin = '"Creditos"."Concepto"'
      Size = 100
    end
    object qrCreditosID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Creditos"."ID"'
      Size = 25
    end
    object qrCreditosA_Nombre_De: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'A_Nombre_De'
      Origin = '"Creditos"."A_Nombre_De"'
      Size = 100
    end
    object qrCreditosTipo: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo'
      Origin = '"Creditos"."Tipo"'
      Size = 25
    end
    object qrCreditosMonto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Monto'
      Origin = '"Creditos"."Monto"'
    end
    object qrCreditosProceso_Operacion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso_Operacion'
      Origin = '"Creditos"."Proceso_Operacion"'
      Size = 25
    end
    object qrCreditosProceso_Origina: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso_Origina'
      Origin = '"Creditos"."Proceso_Origina"'
      Size = 25
    end
    object qrCreditosTerminal: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Terminal'
      Origin = '"Creditos"."Terminal"'
      Size = 50
    end
    object qrCreditosApertura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Apertura'
      Origin = '"Creditos"."Apertura"'
      Size = 25
    end
    object qrCreditosCuadre: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cuadre'
      Origin = '"Creditos"."Cuadre"'
      Size = 25
    end
    object qrCreditosStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Creditos"."Status"'
      Size = 25
    end
    object qrCreditosVence: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Vence'
      Origin = '"Creditos"."Vence"'
    end
    object qrCreditosVencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento'
      Origin = '"Creditos"."Vencimiento"'
    end
    object qrCreditosFecha_Aplicacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Aplicacion'
      Origin = '"Creditos"."Fecha_Aplicacion"'
    end
    object qrCreditosMonto_Aplicado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Aplicado'
      Origin = '"Creditos"."Monto_Aplicado"'
    end
  end
  object prCreditos: TDataSetProvider
    DataSet = qrCreditos
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prCompra_ProductosBeforeUpdateRecord
    Left = 144
    Top = 1135
  end
  object qrDetalle_Pago_Clientes: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkPagos_Clientes
    SQL.Strings = (
      'Select  * From  "Detalle_Pago_Factura"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 644
    Top = 495
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrDetalle_Pago_ClientesProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Detalle_Pago_Factura"."Proceso"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 25
    end
    object qrDetalle_Pago_ClientesForma_Pago: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Forma_Pago'
      Origin = '"Detalle_Pago_Factura"."Forma_Pago"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrDetalle_Pago_ClientesFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Detalle_Pago_Factura"."Fecha"'
    end
    object qrDetalle_Pago_ClientesHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Detalle_Pago_Factura"."Hora"'
    end
    object qrDetalle_Pago_ClientesTasa: TFloatField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Tasa'
      Origin = '"Detalle_Pago_Factura"."Tasa"'
      currency = True
    end
    object qrDetalle_Pago_ClientesValor_Recibido: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Recibido'
      Origin = '"Detalle_Pago_Factura"."Valor_Recibido"'
      currency = True
    end
    object qrDetalle_Pago_ClientesValor_Recibido_Local: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Recibido_Local'
      Origin = '"Detalle_Pago_Factura"."Valor_Recibido_Local"'
      currency = True
    end
    object qrDetalle_Pago_ClientesValor_Devolver: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Devolver'
      Origin = '"Detalle_Pago_Factura"."Valor_Devolver"'
      currency = True
    end
    object qrDetalle_Pago_ClientesValor_Devolver_Local: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Devolver_Local'
      Origin = '"Detalle_Pago_Factura"."Valor_Devolver_Local"'
      currency = True
    end
    object qrDetalle_Pago_ClientesNumero_Banco: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Banco'
      Origin = '"Detalle_Pago_Factura"."Numero_Banco"'
    end
    object qrDetalle_Pago_ClientesNumero_Documento: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Documento'
      Origin = '"Detalle_Pago_Factura"."Numero_Documento"'
      Size = 25
    end
    object qrDetalle_Pago_ClientesNumero_Aprobacion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero_Aprobacion'
      Origin = '"Detalle_Pago_Factura"."Numero_Aprobacion"'
      Size = 25
    end
    object qrDetalle_Pago_ClientesMes_Vencimiento: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Mes_Vencimiento'
      Origin = '"Detalle_Pago_Factura"."Mes_Vencimiento"'
      DisplayFormat = '00'
      MaxValue = 12
    end
    object qrDetalle_Pago_ClientesAno_Vencimiento: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Ano_Vencimiento'
      Origin = '"Detalle_Pago_Factura"."Ano_Vencimiento"'
      DisplayFormat = '0000'
    end
    object qrDetalle_Pago_ClientesTipo_Documento: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Efectivo'#39
      FieldName = 'Tipo_Documento'
      Origin = '"Detalle_Pago_Factura"."Tipo_Documento"'
      Size = 100
    end
    object qrDetalle_Pago_ClientesEs_Efectivo: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'FALSE'#39
      FieldName = 'Es_Efectivo'
      Origin = '"Detalle_Pago_Factura"."Es_Efectivo"'
    end
    object qrDetalle_Pago_ClientesRequiere_Documento: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'FALSE'#39
      FieldName = 'Requiere_Documento'
      Origin = '"Detalle_Pago_Factura"."Requiere_Documento"'
    end
    object qrDetalle_Pago_ClientesRequiere_Vencimiento: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'FALSE'#39
      FieldName = 'Requiere_Vencimiento'
      Origin = '"Detalle_Pago_Factura"."Requiere_Vencimiento"'
    end
    object qrDetalle_Pago_ClientesRequiere_Aprobacion: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'FALSE'#39
      FieldName = 'Requiere_Aprobacion'
      Origin = '"Detalle_Pago_Factura"."Requiere_Aprobacion"'
    end
    object qrDetalle_Pago_ClientesPendiente: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Origin = '"Detalle_Pago_Factura"."Pendiente"'
      currency = True
    end
    object qrDetalle_Pago_ClientesID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Detalle_Pago_Factura"."ID"'
      Size = 50
    end
  end
end
