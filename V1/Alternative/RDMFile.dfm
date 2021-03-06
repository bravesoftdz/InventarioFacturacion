object RemoteModule: TRemoteModule
  OldCreateOrder = False
  OnCreate = RemoteDataModuleCreate
  Height = 805
  Width = 1125
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
      'Select  * From "Productos" '
      'Where ("Codigo" = :Codigo) '
      'Or ("Barra" = :Barra)'
      'Or ("Referencia" = :Referencia)'
      'Or ("Secuencia" = :Secuencia)'
      'Or ("Proceso" = :Proceso)')
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
      end>
    object qrProductosCodigo: TIBStringField
      Alignment = taRightJustify
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Codigo'
      Origin = '"Productos"."Codigo"'
      Size = 25
    end
    object qrProductosBarra: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Barra'
      Origin = '"Productos"."Barra"'
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
    object qrProductosMinimo: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      DisplayLabel = 'Inventario M'#237'nimo'
      FieldName = 'Minimo'
      Origin = '"Productos"."Minimo"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrProductosLector_Codigo: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'C'#243'digo Principal'#39
      FieldName = 'Lector_Codigo'
      Origin = '"Productos"."Lector_Codigo"'
      Size = 25
    end
    object qrProductosReorden: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      DisplayLabel = 'Cantidad de Reorden'
      FieldName = 'Reorden'
      Origin = '"Productos"."Reorden"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
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
    object qrProductosUltimo_Precio_Compra: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      DisplayLabel = #218'ltimo Precio de Compra'
      FieldName = 'Ultimo_Precio_Compra'
      Origin = '"Productos"."Ultimo_Precio_Compra"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrProductosCosto_Standar: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      DisplayLabel = 'Costo Estandar'
      FieldName = 'Costo_Standar'
      Origin = '"Productos"."Costo_Standar"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrProductosCosto_Promedio: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      DisplayLabel = 'Costo Promedio'
      FieldName = 'Costo_Promedio'
      Origin = '"Productos"."Costo_Promedio"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrProductosMedida_Compra: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Unidad'#39
      DisplayLabel = 'Medida de Compra'
      FieldName = 'Medida_Compra'
      Origin = '"Productos"."Medida_Compra"'
      Size = 25
    end
    object qrProductosUnidades_Medida_Compra: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      DisplayLabel = 'Cantidad por Unidad de Medida'
      FieldName = 'Unidades_Medida_Compra'
      Origin = '"Productos"."Unidades_Medida_Compra"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
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
    object qrProductosUnidades_Medida_Venta: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      DisplayLabel = 'Cantidad por Unidad de Medida'
      FieldName = 'Unidades_Medida_Venta'
      Origin = '"Productos"."Unidades_Medida_Venta"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrProductosAplica_Descuento: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'FALSE'#39
      DisplayLabel = 'Aplica Para Descuento'
      FieldName = 'Aplica_Descuento'
      Origin = '"Productos"."Aplica_Descuento"'
    end
    object qrProductosPrecio_Venta_Contado: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      DisplayLabel = 'Precio de Venta al Contado'
      FieldName = 'Precio_Venta_Contado'
      Origin = '"Productos"."Precio_Venta_Contado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrProductosPrecio_Venta_Credito: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      DisplayLabel = 'Precio de Venta a Cr'#233'dito'
      FieldName = 'Precio_Venta_Credito'
      Origin = '"Productos"."Precio_Venta_Credito"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrProductosPrecio_Venta_Minimo: TIBBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Precio M'#237'nimo de Venta'
      FieldName = 'Precio_Venta_Minimo'
      Origin = '"Productos"."Precio_Venta_Minimo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrProductosTipo_Beneficio: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Porcentual'#39
      DisplayLabel = 'Tipo de Beneficio'
      FieldName = 'Tipo_Beneficio'
      Origin = '"Productos"."Tipo_Beneficio"'
      Size = 25
    end
    object qrProductosValor_Beneficio_Contado: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      DisplayLabel = 'Valor del Beneficio / Contado'
      FieldName = 'Valor_Beneficio_Contado'
      Origin = '"Productos"."Valor_Beneficio_Contado"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrProductosValor_Beneficio_Credito: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      DisplayLabel = 'Valor de Beneficio / Cr'#233'dito'
      FieldName = 'Valor_Beneficio_Credito'
      Origin = '"Productos"."Valor_Beneficio_Credito"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
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
    object qrProductosCompradas: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      DisplayLabel = 'Unidades Compradas'
      FieldName = 'Compradas'
      Origin = '"Productos"."Compradas"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrProductosVendidas: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      DisplayLabel = 'Unidades Vendidas'
      FieldName = 'Vendidas'
      Origin = '"Productos"."Vendidas"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrProductosEnPedidos: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      DisplayLabel = 'Unidades en Pedidos'
      FieldName = 'EnPedidos'
      Origin = '"Productos"."EnPedidos"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrProductosEnTransito: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      DisplayLabel = 'Unidades en Tr'#225'nsito'
      FieldName = 'EnTransito'
      Origin = '"Productos"."EnTransito"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
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
    object qrProductosDevuelto_Compras: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Devuelto_Compras'
      Origin = '"Productos"."Devuelto_Compras"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrProductosNumero_Ultima_Compra: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero_Ultima_Compra'
      Origin = '"Productos"."Numero_Ultima_Compra"'
      DisplayFormat = #39'CP'#39'0000000000'
    end
    object qrProductosDevuelto_Ventas: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Devuelto_Ventas'
      Origin = '"Productos"."Devuelto_Ventas"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
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
    object qrProductosDespachadas: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Despachadas'
      Origin = '"Productos"."Despachadas"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
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
    object qrProductosDevuelto_Despacho: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Devuelto_Despacho'
      Origin = '"Productos"."Devuelto_Despacho"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrProductosExistencia: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Existencia'
      Origin = '"Productos"."Existencia"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrProductosEditar_Existencia: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'TRUE'#39
      FieldName = 'Editar_Existencia'
      Origin = '"Productos"."Editar_Existencia"'
    end
    object qrProductosPrecio_Venta_Por_Mayor_Contado: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Precio_Venta_Por_Mayor_Contado'
      Origin = '"Productos"."Precio_Venta_Por_Mayor_Contado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrProductosPrecio_Venta_Por_Mayor_Credito: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Precio_Venta_Por_Mayor_Credito'
      Origin = '"Productos"."Precio_Venta_Por_Mayor_Credito"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrProductosNombre: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Nombre'
      Origin = '"Productos"."Nombre"'
      Size = 100
    end
    object qrProductosMarca: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Marca'
      Origin = '"Productos"."Marca"'
      Size = 100
    end
    object qrProductosColor: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Color'
      Origin = '"Productos"."Color"'
      Size = 25
    end
    object qrProductosModelo: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Modelo'
      Origin = '"Productos"."Modelo"'
      Size = 100
    end
    object qrProductosOrientacion: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Orientacion'
      Origin = '"Productos"."Orientacion"'
      Size = 25
    end
    object qrProductosPosicion: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
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
      Size = 25
    end
    object qrProductosFoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Foto'
      Origin = '"Productos"."Foto"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
  end
  object prProductos: TDataSetProvider
    DataSet = qrProductos
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poUseQuoteChar]
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
    Top = 592
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
    object qrListadoProductosExistencia: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Existencia'
      Origin = '"Productos"."Existencia"'
      Precision = 12
      Size = 2
    end
    object qrListadoProductosCosto_Promedio: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Costo_Promedio'
      Origin = '"Productos"."Costo_Promedio"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrListadoProductosCosto_Standar: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Costo_Standar'
      Origin = '"Productos"."Costo_Standar"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrListadoProductosCompradas: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Compradas'
      Origin = '"Productos"."Compradas"'
      Precision = 12
      Size = 2
    end
    object qrListadoProductosDespachadas: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Despachadas'
      Origin = '"Productos"."Despachadas"'
      Precision = 12
      Size = 2
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
    object qrListadoProductosPrecio_Venta_Contado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Contado'
      Origin = '"Productos"."Precio_Venta_Contado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrListadoProductosPrecio_Venta_Credito: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Credito'
      Origin = '"Productos"."Precio_Venta_Credito"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrListadoProductosPrecio_Venta_Minimo: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Minimo'
      Origin = '"Productos"."Precio_Venta_Minimo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrListadoProductosUbicacion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ubicacion'
      Origin = '"Productos"."Ubicacion"'
      Size = 100
    end
    object qrListadoProductosUltimo_Precio_Compra: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Ultimo_Precio_Compra'
      Origin = '"Productos"."Ultimo_Precio_Compra"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrListadoProductosUnidades_Medida_Compra: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Unidades_Medida_Compra'
      Origin = '"Productos"."Unidades_Medida_Compra"'
      Precision = 12
      Size = 2
    end
    object qrListadoProductosUnidades_Medida_Venta: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Unidades_Medida_Venta'
      Origin = '"Productos"."Unidades_Medida_Venta"'
      Precision = 12
      Size = 2
    end
    object qrListadoProductosValor_Beneficio_Contado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_Contado'
      Origin = '"Productos"."Valor_Beneficio_Contado"'
      Precision = 12
      Size = 2
    end
    object qrListadoProductosValor_Beneficio_Credito: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_Credito'
      Origin = '"Productos"."Valor_Beneficio_Credito"'
      Precision = 12
      Size = 2
    end
    object qrListadoProductosVendidas: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Vendidas'
      Origin = '"Productos"."Vendidas"'
      Precision = 12
      Size = 2
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
    object qrListadoProductosPrecio_Venta_Por_Mayor_Contado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Por_Mayor_Contado'
      Origin = '"Productos"."Precio_Venta_Por_Mayor_Contado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrListadoProductosPrecio_Venta_Por_Mayor_Credito: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Por_Mayor_Credito'
      Origin = '"Productos"."Precio_Venta_Por_Mayor_Credito"'
      currency = True
      Precision = 12
      Size = 2
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
    object qrListadoProductosMinimo: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Minimo'
      Origin = '"Productos"."Minimo"'
      Precision = 12
      Size = 2
    end
    object qrListadoProductosReorden: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Reorden'
      Origin = '"Productos"."Reorden"'
      Precision = 12
      Size = 2
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
    object qrListadoProductosDevuelto_Compras: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Devuelto_Compras'
      Origin = '"Productos"."Devuelto_Compras"'
      Precision = 12
      Size = 2
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
    object qrListadoProductosDevuelto_Ventas: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Devuelto_Ventas'
      Origin = '"Productos"."Devuelto_Ventas"'
      Precision = 12
      Size = 2
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
    object qrListadoProductosEnPedidos: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'EnPedidos'
      Origin = '"Productos"."EnPedidos"'
      Precision = 12
      Size = 2
    end
    object qrListadoProductosEnTransito: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'EnTransito'
      Origin = '"Productos"."EnTransito"'
      Precision = 12
      Size = 2
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
    object qrListadoProductosDevuelto_Despacho: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Devuelto_Despacho'
      Origin = '"Productos"."Devuelto_Despacho"'
      Precision = 12
      Size = 2
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
  end
  object qrDepartamentos: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Departamentos"'
      'Order By "Descripcion"')
    UniDirectional = True
    Left = 40
    Top = 255
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
    Top = 255
  end
  object qrCategoria: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Categorias"'
      'Order By "Descripcion"')
    UniDirectional = True
    Left = 40
    Top = 303
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
    Top = 303
  end
  object qrTipos_Productos: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Tipos_Productos"'
      'Order By "Descripcion"')
    UniDirectional = True
    Left = 40
    Top = 351
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
    Top = 351
  end
  object qrStatus: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Status"'
      'Order By "Status"')
    UniDirectional = True
    Left = 40
    Top = 399
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
    Top = 399
  end
  object qrFabricante: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Fabricantes"'
      'Order By "Nombre"')
    UniDirectional = True
    Left = 40
    Top = 447
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
    Top = 447
  end
  object qrProveedores: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Proveedores"'
      'Order By "Nombre"')
    UniDirectional = True
    Left = 40
    Top = 495
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
    Left = 144
    Top = 495
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
    Left = 344
    Top = 64
  end
  object SrchQ: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    UniDirectional = True
    Left = 344
    Top = 8
  end
  object SrchPr: TDataSetProvider
    DataSet = SrchQ
    Options = [poAllowCommandText]
    Left = 432
    Top = 8
  end
  object qrTerminos: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Terminos"'
      'Order By "Descripcion"')
    UniDirectional = True
    Left = 40
    Top = 644
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
    Top = 644
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
      Size = 25
    end
    object qrVencimientosMes: TSmallintField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Mes'
      Origin = '"Vencimientos"."Mes"'
      DisplayFormat = '00'
      EditFormat = '00'
    end
    object qrVencimientosAno: TSmallintField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Ano'
      Origin = '"Vencimientos"."Ano"'
      DisplayFormat = '0000'
      EditFormat = '0000'
    end
    object qrVencimientosCantidad: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Cantidad'
      Origin = '"Vencimientos"."Cantidad"'
      DisplayFormat = '#,#.00'
      Precision = 12
      Size = 2
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
    object qrSalidas_InventarioTotal_Costo: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Origin = '"Salidas_Inventario"."Total_Costo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrSalidas_InventarioTotal_Salida: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Salida'
      Origin = '"Salidas_Inventario"."Total_Salida"'
      currency = True
      Precision = 12
      Size = 2
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
  end
  object prSalidas_Inventario: TDataSetProvider
    DataSet = qrSalidas_Inventario
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
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
    object qrDetalles_SalidaCosto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Costo'
      Origin = '"Detalles_Salida"."Costo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_SalidaPrecio: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Precio'
      Origin = '"Detalles_Salida"."Precio"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_SalidaCantidad: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Cantidad'
      Origin = '"Detalles_Salida"."Cantidad"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrDetalles_SalidaTotal_Costo: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Origin = '"Detalles_Salida"."Total_Costo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_SalidaTotal_Precio: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Precio'
      Origin = '"Detalles_Salida"."Total_Precio"'
      currency = True
      Precision = 12
      Size = 2
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
    object qrDetalles_SalidaCantidad_Devuelto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Cantidad_Devuelto'
      Origin = '"Detalles_Salida"."Cantidad_Devuelto"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_SalidaContenido: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Contenido'
      Origin = '"Detalles_Salida"."Contenido"'
      DisplayFormat = '#,0'
      Precision = 12
      Size = 2
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
    Top = 592
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
    Top = 207
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
    Left = 344
    Top = 207
  end
  object qrCompra_Productos: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Compra_Productos"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 244
    Top = 255
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
    object qrCompra_ProductosSubTotal: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SubTotal'
      Origin = '"Compra_Productos"."SubTotal"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCompra_ProductosTotalNeto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TotalNeto'
      Origin = '"Compra_Productos"."TotalNeto"'
      currency = True
      Precision = 12
      Size = 2
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
    object qrCompra_ProductosImpuesto_Global: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto_Global'
      Origin = '"Compra_Productos"."Impuesto_Global"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrCompra_ProductosValor_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Compra_Productos"."Valor_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCompra_ProductosValor_Impuesto_Detalle: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto_Detalle'
      Origin = '"Compra_Productos"."Valor_Impuesto_Detalle"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCompra_ProductosTotal_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Compra_Productos"."Total_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCompra_ProductosDescuento_Global: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Global'
      Origin = '"Compra_Productos"."Descuento_Global"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrCompra_ProductosValor_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Compra_Productos"."Valor_Descuento"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCompra_ProductosValor_Descuento_Detalle: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento_Detalle'
      Origin = '"Compra_Productos"."Valor_Descuento_Detalle"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCompra_ProductosTotal_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Compra_Productos"."Total_Descuento"'
      currency = True
      Precision = 12
      Size = 2
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
    object qrCompra_ProductosPagado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado'
      Origin = '"Compra_Productos"."Pagado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCompra_ProductosPendiente: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Origin = '"Compra_Productos"."Pendiente"'
      currency = True
      Precision = 12
      Size = 2
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
  end
  object prCompra_Productos: TDataSetProvider
    DataSet = qrCompra_Productos
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    BeforeUpdateRecord = prCompra_ProductosBeforeUpdateRecord
    Left = 344
    Top = 255
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
    Top = 303
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
    object qrDetalles_CompraCosto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Costo'
      Origin = '"Detalles_Compra"."Costo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_CompraPrecio_Lista: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Lista'
      Origin = '"Detalles_Compra"."Precio_Lista"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_CompraCantidad: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Cantidad'
      Origin = '"Detalles_Compra"."Cantidad"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrDetalles_CompraTotal_Costo: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Origin = '"Detalles_Compra"."Total_Costo"'
      currency = True
      Precision = 12
      Size = 2
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
    object qrDetalles_CompraImpuesto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Impuesto'
      Origin = '"Detalles_Compra"."Impuesto"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrDetalles_CompraDescuento: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Descuento'
      Origin = '"Detalles_Compra"."Descuento"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrDetalles_CompraValor_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Detalles_Compra"."Valor_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_CompraValor_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Detalles_Compra"."Valor_Descuento"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_CompraTotal_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Detalles_Compra"."Total_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_CompraTotal_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Detalles_Compra"."Total_Descuento"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_CompraTotal_Precio: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Precio'
      Origin = '"Detalles_Compra"."Total_Precio"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_CompraCantidad_Devuelto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Cantidad_Devuelto'
      Origin = '"Detalles_Compra"."Cantidad_Devuelto"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrDetalles_CompraTipo_Beneficio: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Porcentual'#39
      FieldName = 'Tipo_Beneficio'
      Origin = '"Detalles_Compra"."Tipo_Beneficio"'
      Size = 15
    end
    object qrDetalles_CompraValor_Beneficio_PMayor_Contado: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Valor_Beneficio_PMayor_Contado'
      Origin = '"Detalles_Compra"."Valor_Beneficio_PMayor_Contado"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_CompraValor_Beneficio_PMayor_Credito: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Valor_Beneficio_PMayor_Credito'
      Origin = '"Detalles_Compra"."Valor_Beneficio_PMayor_Credito"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_CompraValor_Beneficio_Detalle_Contado: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Valor_Beneficio_Detalle_Contado'
      Origin = '"Detalles_Compra"."Valor_Beneficio_Detalle_Contado"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_CompraValor_Beneficio_Detalle_Credito: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Valor_Beneficio_Detalle_Credito'
      Origin = '"Detalles_Compra"."Valor_Beneficio_Detalle_Credito"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_CompraPrecio_Venta_Por_Mayor_Contado: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Precio_Venta_Por_Mayor_Contado'
      Origin = '"Detalles_Compra"."Precio_Venta_Por_Mayor_Contado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_CompraPrecio_Venta_Por_Mayor_Credito: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Precio_Venta_Por_Mayor_Credito'
      Origin = '"Detalles_Compra"."Precio_Venta_Por_Mayor_Credito"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_CompraPrecio_Venta_Detalle_Contado: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Precio_Venta_Detalle_Contado'
      Origin = '"Detalles_Compra"."Precio_Venta_Detalle_Contado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_CompraPrecio_Venta_Detalle_Credito: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Precio_Venta_Detalle_Credito'
      Origin = '"Detalles_Compra"."Precio_Venta_Detalle_Credito"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_CompraPrecio_Minimo: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Precio_Minimo'
      Origin = '"Detalles_Compra"."Precio_Minimo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_CompraContenido: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Contenido'
      Origin = '"Detalles_Compra"."Contenido"'
      DisplayFormat = '#,0'
      Precision = 12
      Size = 2
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
    object qrDetalles_CompraCantidad_Despachada: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad_Despachada'
      Origin = '"Detalles_Compra"."Cantidad_Despachada"'
      DisplayFormat = '#,0'
      Precision = 12
      Size = 2
    end
    object qrDetalles_CompraConcepto_Uso: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Despacho de almacen'#39
      FieldName = 'Concepto_Uso'
      Origin = '"Detalles_Compra"."Concepto_Uso"'
      Size = 255
    end
  end
  object lnkCompra_Productos: TDataSource
    DataSet = qrCompra_Productos
    Left = 344
    Top = 303
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
    Top = 399
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
    object qrFacturasSubTotal: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'SubTotal'
      Origin = '"Facturas"."SubTotal"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturasTotal_Costo: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Costo'
      Origin = '"Facturas"."Total_Costo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturasTotalNeto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'TotalNeto'
      Origin = '"Facturas"."TotalNeto"'
      currency = True
      Precision = 12
      Size = 2
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
    object qrFacturasImpuesto_Global: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Impuesto_Global'
      Origin = '"Facturas"."Impuesto_Global"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrFacturasValor_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Valor_Impuesto'
      Origin = '"Facturas"."Valor_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturasValor_Impuesto_Detalle: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Valor_Impuesto_Detalle'
      Origin = '"Facturas"."Valor_Impuesto_Detalle"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturasTotal_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Total_Impuesto'
      Origin = '"Facturas"."Total_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturasDescuento_Global: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Descuento_Global'
      Origin = '"Facturas"."Descuento_Global"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrFacturasValor_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Valor_Descuento'
      Origin = '"Facturas"."Valor_Descuento"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturasValor_Descuento_Detalle: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Valor_Descuento_Detalle'
      Origin = '"Facturas"."Valor_Descuento_Detalle"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturasTotal_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Total_Descuento'
      Origin = '"Facturas"."Total_Descuento"'
      currency = True
      Precision = 12
      Size = 2
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
    object qrFacturasPagado: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Pagado'
      Origin = '"Facturas"."Pagado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturasPendiente: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Pendiente'
      Origin = '"Facturas"."Pendiente"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturasUltimoPago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'UltimoPago'
      Origin = '"Facturas"."UltimoPago"'
    end
    object qrFacturasTotal_Efectivo_Recibido: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Total_Efectivo_Recibido'
      Origin = '"Facturas"."Total_Efectivo_Recibido"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturasTotal_Efectivo_Devuelto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Total_Efectivo_Devuelto'
      Origin = '"Facturas"."Total_Efectivo_Devuelto"'
      currency = True
      Precision = 12
      Size = 2
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
    object qrFacturasTotal_Restante: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Restante'
      Origin = '"Facturas"."Total_Restante"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturasInteres: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Interes'
      Origin = '"Facturas"."Interes"'
      Precision = 12
      Size = 2
    end
    object qrFacturasModalidad: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Modalidad'
      Origin = '"Facturas"."Modalidad"'
      Size = 25
    end
    object qrFacturasValor_Interes: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Interes'
      Origin = '"Facturas"."Valor_Interes"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturasValor_Capital: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Capital'
      Origin = '"Facturas"."Valor_Capital"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturasValor_Cuotas: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Cuotas'
      Origin = '"Facturas"."Valor_Cuotas"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturasGasto_Cierre: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Gasto_Cierre'
      Origin = '"Facturas"."Gasto_Cierre"'
      Precision = 12
      Size = 2
    end
    object qrFacturasValor_Gasto_Cierre: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Gasto_Cierre'
      Origin = '"Facturas"."Valor_Gasto_Cierre"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturasVence_Financiamiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vence_Financiamiento'
      Origin = '"Facturas"."Vence_Financiamiento"'
    end
    object qrFacturasTotal_Estimado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Estimado'
      Origin = '"Facturas"."Total_Estimado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturasMonto_Financiado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Financiado'
      Origin = '"Facturas"."Monto_Financiado"'
      currency = True
      Precision = 12
      Size = 2
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
    object qrFacturasInicial: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Inicial'
      Origin = '"Facturas"."Inicial"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturasConduce: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'-'#39
      FieldName = 'Conduce'
      Origin = '"Facturas"."Conduce"'
      Size = 25
    end
  end
  object prFacturas: TDataSetProvider
    DataSet = qrFacturas
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    OnUpdateData = prFacturasUpdateData
    BeforeUpdateRecord = prFacturasBeforeUpdateRecord
    Left = 344
    Top = 399
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
    Top = 447
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
    object qrDetalles_FacturaCosto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Costo'
      Origin = '"Detalles_Factura"."Costo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_FacturaPrecio_Real: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Real'
      Origin = '"Detalles_Factura"."Precio_Real"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_FacturaPrecio_Venta: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta'
      Origin = '"Detalles_Factura"."Precio_Venta"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_FacturaCantidad: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Cantidad'
      Origin = '"Detalles_Factura"."Cantidad"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrDetalles_FacturaTotal_Costo: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Origin = '"Detalles_Factura"."Total_Costo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_FacturaTotal_Precio: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Precio'
      Origin = '"Detalles_Factura"."Total_Precio"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_FacturaPrecio_Minimo: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Minimo'
      Origin = '"Detalles_Factura"."Precio_Minimo"'
      currency = True
      Precision = 12
      Size = 2
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
    object qrDetalles_FacturaImpuesto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto'
      Origin = '"Detalles_Factura"."Impuesto"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrDetalles_FacturaDescuento: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Descuento'
      Origin = '"Detalles_Factura"."Descuento"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrDetalles_FacturaValor_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Detalles_Factura"."Valor_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_FacturaValor_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Detalles_Factura"."Valor_Descuento"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_FacturaTotal_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Detalles_Factura"."Total_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_FacturaTotal_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Detalles_Factura"."Total_Descuento"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_FacturaCantidad_Devuelto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Cantidad_Devuelto'
      Origin = '"Detalles_Factura"."Cantidad_Devuelto"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_FacturaTipo_Precio: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Precio'
      Origin = '"Detalles_Factura"."Tipo_Precio"'
      Size = 25
    end
    object qrDetalles_FacturaContenido: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Contenido'
      Origin = '"Detalles_Factura"."Contenido"'
      DisplayFormat = '#,0'
      Precision = 12
      Size = 2
    end
    object qrDetalles_FacturaRegistro: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Registro'
      Origin = '"Detalles_Factura"."Registro"'
    end
  end
  object lnkFacturas: TDataSource
    DataSet = qrFacturas
    Left = 344
    Top = 448
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
    Top = 495
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
      Size = 25
    end
    object qrDetalle_Pago_FacturaForma_Pago: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Forma_Pago'
      Origin = '"Detalle_Pago_Factura"."Forma_Pago"'
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
    object qrDetalle_Pago_FacturaTasa: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Tasa'
      Origin = '"Detalle_Pago_Factura"."Tasa"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalle_Pago_FacturaValor_Recibido: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Recibido'
      Origin = '"Detalle_Pago_Factura"."Valor_Recibido"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalle_Pago_FacturaValor_Recibido_Local: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Recibido_Local'
      Origin = '"Detalle_Pago_Factura"."Valor_Recibido_Local"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalle_Pago_FacturaValor_Devolver: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Devolver'
      Origin = '"Detalle_Pago_Factura"."Valor_Devolver"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalle_Pago_FacturaValor_Devolver_Local: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Devolver_Local'
      Origin = '"Detalle_Pago_Factura"."Valor_Devolver_Local"'
      currency = True
      Precision = 12
      Size = 2
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
    object qrDetalle_Pago_FacturaPendiente: TIBBCDField
      FieldName = 'Pendiente'
      Origin = '"Detalle_Pago_Factura"."Pendiente"'
      currency = True
      Precision = 12
      Size = 2
    end
  end
  object qrFormas_Pago: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Formas_Pago"'
      'Order By "Descripcion"')
    UniDirectional = True
    Left = 244
    Top = 543
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
    object qrFormas_PagoTasa: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Tasa'
      Origin = '"Formas_Pago"."Tasa"'
      currency = True
      Precision = 12
      Size = 2
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
    Left = 344
    Top = 543
  end
  object qrParametros: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Parametros"'
      'Where ("Terminal" = :Terminal)')
    UniDirectional = True
    Left = 432
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
    object qrParametrosImpuesto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Impuesto'
      Origin = '"Parametros"."Impuesto"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrParametrosTermino_COD: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Termino_COD'
      Origin = '"Parametros"."Termino_COD"'
    end
    object qrParametrosDescuento: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Descuento'
      Origin = '"Parametros"."Descuento"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
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
    Left = 528
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
    Top = 543
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
    Top = 543
  end
  object qrVencimientos_Categoria: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      
        'SELECT * FROM "Vencimientos_Categoria" (:Mes1, :Mes2, :Ano1, :An' +
        'o2, :Categoria)')
    UniDirectional = True
    Left = 652
    Top = 535
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
    object qrVencimientos_CategoriaCANTIDAD: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CANTIDAD'
      Origin = '"Vencimientos_Categoria"."CANTIDAD"'
      Precision = 18
      Size = 2
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
    Left = 766
    Top = 535
  end
  object qrVencimientos_Departamento: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      
        'SELECT * FROM "Vencimientos_Departamento" (:Mes1, :Mes2, :Ano1, ' +
        ':Ano2, :Departamento)')
    UniDirectional = True
    Left = 652
    Top = 584
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
    object qrVencimientos_DepartamentoCANTIDAD: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CANTIDAD'
      Origin = '"Vencimientos_Departamento"."CANTIDAD"'
      Precision = 18
      Size = 2
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
    Left = 766
    Top = 584
  end
  object qVencimientos_Fabricante: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      
        'SELECT * FROM "Vencimientos_Fabricante" (:Mes1, :Mes2, :Ano1, :A' +
        'no2, :Fabricante)')
    UniDirectional = True
    Left = 652
    Top = 644
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
    object qVencimientos_FabricanteCODIGO: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = '"Vencimientos_Fabricante"."CODIGO"'
      Size = 25
    end
    object qVencimientos_FabricanteMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
      Origin = '"Vencimientos_Fabricante"."MES"'
    end
    object qVencimientos_FabricanteANO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANO'
      Origin = '"Vencimientos_Fabricante"."ANO"'
    end
    object qVencimientos_FabricanteCANTIDAD: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CANTIDAD'
      Origin = '"Vencimientos_Fabricante"."CANTIDAD"'
      Precision = 18
      Size = 2
    end
    object qVencimientos_FabricanteDESCRIPCION: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPCION'
      Origin = '"Vencimientos_Fabricante"."DESCRIPCION"'
      Size = 100
    end
  end
  object prVencimientos_Fabricante: TDataSetProvider
    DataSet = qVencimientos_Fabricante
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 766
    Top = 644
  end
  object qrVencimientos_Proveedor: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      
        'SELECT * FROM "Vencimientos_Proveedor" (:Mes1, :Mes2, :Ano1, :An' +
        'o2, :Proveedor)')
    UniDirectional = True
    Left = 432
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
    object qrVencimientos_ProveedorCANTIDAD: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CANTIDAD'
      Origin = '"Vencimientos_Proveedor"."CANTIDAD"'
      Precision = 18
      Size = 2
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
    Left = 528
    Top = 64
  end
  object qrVencimientos_Codigo: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      
        'SELECT * FROM "Vencimientos_Codigo" (:Mes1, :Mes2, :Ano1, :Ano2,' +
        ' :Codigo)')
    UniDirectional = True
    Left = 432
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
    object qrVencimientos_CodigoCANTIDAD: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CANTIDAD'
      Origin = '"Vencimientos_Codigo"."CANTIDAD"'
      Precision = 18
      Size = 2
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
    Left = 528
    Top = 111
  end
  object qrVencimientos_Fecha: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'SELECT * FROM "Vencimientos_Fecha" (:Mes1, :Mes2, :Ano1, :Ano2)')
    UniDirectional = True
    Left = 432
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
    object qrVencimientos_FechaCANTIDAD: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CANTIDAD'
      Origin = '"Vencimientos_Fecha"."CANTIDAD"'
      Precision = 18
      Size = 2
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
    Left = 528
    Top = 159
  end
  object qrVencimientos_Todos: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'SELECT * FROM "Vencimientos_Todos"')
    UniDirectional = True
    Left = 432
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
    object qrVencimientos_TodosCANTIDAD: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CANTIDAD'
      Origin = '"Vencimientos_Todos"."CANTIDAD"'
      Precision = 18
      Size = 2
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
    Left = 528
    Top = 207
  end
  object qrReporter: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    UniDirectional = True
    Left = 528
    Top = 8
  end
  object prReporter: TDataSetProvider
    DataSet = qrReporter
    Options = [poAllowCommandText]
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
      Size = 25
    end
    object qrComponentesCodigo_Componente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo_Componente'
      Origin = '"Componentes"."Codigo_Componente"'
      Size = 25
    end
    object qrComponentesCantidad: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad'
      Origin = '"Componentes"."Cantidad"'
      Precision = 12
      Size = 2
    end
    object qrComponentesCosto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Costo'
      Origin = '"Componentes"."Costo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrComponentesDescripcion_Componente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion_Componente'
      Origin = '"Componentes"."Descripcion_Componente"'
      Size = 100
    end
  end
  object qrUsuarios: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Usuarios"'
      'Where "NickName" = :NickName')
    UniDirectional = True
    Left = 432
    Top = 303
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
    BeforeUpdateRecord = prFacturasBeforeUpdateRecord
    Left = 528
    Top = 303
  end
  object prNiveles: TDataSetProvider
    DataSet = qrNiveles
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    BeforeUpdateRecord = prFacturasBeforeUpdateRecord
    Left = 528
    Top = 351
  end
  object qrNiveles: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Niveles"'
      'Order By "Descripcion"')
    UniDirectional = True
    Left = 432
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
    Left = 528
    Top = 399
  end
  object qrOpciones: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Opciones"'
      'Order By "Descripcion", "Opcion"')
    UniDirectional = True
    Left = 432
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
    Left = 528
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
    Left = 432
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
  object prDenominaciones_Moneda: TDataSetProvider
    DataSet = qrDenominaciones_Moneda
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    BeforeUpdateRecord = prFacturasBeforeUpdateRecord
    Left = 528
    Top = 495
  end
  object qrDenominaciones_Moneda: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Denominaciones_Moneda"'
      'Order By "Moneda", "Denominacion" Descending')
    UniDirectional = True
    Left = 432
    Top = 495
    object qrDenominaciones_MonedaMoneda: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Especifique el Nombre de la Moneda'
      FieldName = 'Moneda'
      Origin = '"Denominaciones_Moneda"."Moneda"'
      Size = 100
    end
    object qrDenominaciones_MonedaDenominacion: TIBBCDField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value > 0'
      ConstraintErrorMessage = 'Debe asignar un monto para la denominacion de efectivo'
      FieldName = 'Denominacion'
      Origin = '"Denominaciones_Moneda"."Denominacion"'
      currency = True
      Precision = 12
      Size = 2
    end
  end
  object prCuadre_Caja: TDataSetProvider
    DataSet = qrCuadre_Caja
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    BeforeUpdateRecord = prFacturasBeforeUpdateRecord
    Left = 528
    Top = 543
  end
  object qrCuadre_Caja: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Cuadre_Caja"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 432
    Top = 543
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
    object qrCuadre_CajaTotal_Vendido: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Vendido'
      Origin = '"Cuadre_Caja"."Total_Vendido"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCuadre_CajaFondo_Caja: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Fondo_Caja'
      Origin = '"Cuadre_Caja"."Fondo_Caja"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCuadre_CajaTotal_Retiros: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Retiros'
      Origin = '"Cuadre_Caja"."Total_Retiros"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCuadre_CajaTotal_Efectivo: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Efectivo'
      Origin = '"Cuadre_Caja"."Total_Efectivo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCuadre_CajaTotal_NoEfectivo: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_NoEfectivo'
      Origin = '"Cuadre_Caja"."Total_NoEfectivo"'
      currency = True
      Precision = 12
      Size = 2
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
    Left = 432
    Top = 592
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
    object qrDetalle_CuadreDenominacion: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Denominacion'
      Origin = '"Detalle_Cuadre"."Denominacion"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalle_CuadreCantidad: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Cantidad'
      Origin = '"Detalle_Cuadre"."Cantidad"'
    end
    object qrDetalle_CuadreTotal: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total'
      Origin = '"Detalle_Cuadre"."Total"'
      currency = True
      Precision = 12
      Size = 2
    end
  end
  object lnkCuadre_Caja: TDataSource
    DataSet = qrCuadre_Caja
    Left = 528
    Top = 592
  end
  object prRetiros_Caja: TDataSetProvider
    DataSet = qrRetiros_Caja
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    BeforeUpdateRecord = prFacturasBeforeUpdateRecord
    Left = 528
    Top = 644
  end
  object qrRetiros_Caja: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Retiros_Caja"'
      'Where "Numero" = :Numero')
    UniDirectional = True
    Left = 432
    Top = 644
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
    object qrRetiros_CajaMonto: TIBBCDField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value > 0'
      ConstraintErrorMessage = 'Debe introducir un monto mayor de cero (0)'
      DefaultExpression = '0.00'
      FieldName = 'Monto'
      Origin = '"Retiros_Caja"."Monto"'
      currency = True
      Precision = 12
      Size = 2
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
      
        'Where ("Usuario" = :Usuario) And ("Fecha" = :Fecha) And ("Abiert' +
        'o" = :Abierto)')
    UniDirectional = True
    Left = 652
    Top = 111
    ParamData = <
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
    object qrApertura_CajaMonto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Monto'
      Origin = '"Apertura_Caja"."Monto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrApertura_CajaRetirado: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Retirado'
      Origin = '"Apertura_Caja"."Retirado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrApertura_CajaAbierto: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'TRUE'#39
      FieldName = 'Abierto'
      Origin = '"Apertura_Caja"."Abierto"'
    end
    object qrApertura_CajaBalance: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Balance'
      Origin = '"Apertura_Caja"."Balance"'
      currency = True
      Precision = 12
      Size = 2
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
    Left = 652
    Top = 159
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
    object qrFacturas_ClienteSubTotal: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'SubTotal'
      Origin = '"Facturas"."SubTotal"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturas_ClienteTotalNeto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'TotalNeto'
      Origin = '"Facturas"."TotalNeto"'
      currency = True
      Precision = 12
      Size = 2
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
    object qrFacturas_ClienteImpuesto_Global: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto_Global'
      Origin = '"Facturas"."Impuesto_Global"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_ClienteValor_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Valor_Impuesto'
      Origin = '"Facturas"."Valor_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturas_ClienteValor_Impuesto_Detalle: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Valor_Impuesto_Detalle'
      Origin = '"Facturas"."Valor_Impuesto_Detalle"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturas_ClienteTotal_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Impuesto'
      Origin = '"Facturas"."Total_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturas_ClienteDescuento_Global: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Global'
      Origin = '"Facturas"."Descuento_Global"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_ClienteValor_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Valor_Descuento'
      Origin = '"Facturas"."Valor_Descuento"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturas_ClienteValor_Descuento_Detalle: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Valor_Descuento_Detalle'
      Origin = '"Facturas"."Valor_Descuento_Detalle"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturas_ClienteTotal_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Descuento'
      Origin = '"Facturas"."Total_Descuento"'
      currency = True
      Precision = 12
      Size = 2
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
    object qrFacturas_ClientePagado: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pagado'
      Origin = '"Facturas"."Pagado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturas_ClientePendiente: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pendiente'
      Origin = '"Facturas"."Pendiente"'
      currency = True
      Precision = 12
      Size = 2
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
    object qrFacturas_ClienteTotal_Efectivo_Recibido: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Efectivo_Recibido'
      Origin = '"Facturas"."Total_Efectivo_Recibido"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturas_ClienteTotal_Efectivo_Devuelto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Efectivo_Devuelto'
      Origin = '"Facturas"."Total_Efectivo_Devuelto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturas_ClienteStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Facturas"."Status"'
      Size = 15
    end
    object qrFacturas_ClienteTotal_Costo: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Origin = '"Facturas"."Total_Costo"'
      Precision = 12
      Size = 2
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
    object qrFacturas_ClienteTotal_Restante: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Restante'
      Origin = '"Facturas"."Total_Restante"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_ClienteInteres: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Interes'
      Origin = '"Facturas"."Interes"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_ClienteModalidad: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Modalidad'
      Origin = '"Facturas"."Modalidad"'
      Size = 25
    end
    object qrFacturas_ClienteValor_Interes: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Interes'
      Origin = '"Facturas"."Valor_Interes"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturas_ClienteValor_Capital: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Capital'
      Origin = '"Facturas"."Valor_Capital"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturas_ClienteValor_Cuotas: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Cuotas'
      Origin = '"Facturas"."Valor_Cuotas"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturas_ClienteGasto_Cierre: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Gasto_Cierre'
      Origin = '"Facturas"."Gasto_Cierre"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_ClienteValor_Gasto_Cierre: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Gasto_Cierre'
      Origin = '"Facturas"."Valor_Gasto_Cierre"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturas_ClienteVence_Financiamiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vence_Financiamiento'
      Origin = '"Facturas"."Vence_Financiamiento"'
    end
    object qrFacturas_ClienteTotal_Estimado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Estimado'
      Origin = '"Facturas"."Total_Estimado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturas_ClienteMonto_Financiado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Financiado'
      Origin = '"Facturas"."Monto_Financiado"'
      currency = True
      Precision = 12
      Size = 2
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
    object qrFacturas_ClienteInicial: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Inicial'
      Origin = '"Facturas"."Inicial"'
      currency = True
      Precision = 12
      Size = 2
    end
  end
  object prFacturas_Cliente: TDataSetProvider
    DataSet = qrFacturas_Cliente
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    BeforeUpdateRecord = prFacturasBeforeUpdateRecord
    Left = 766
    Top = 159
  end
  object qrPagos_Clientes: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Pagos_Clientes"'
      'Where "Proceso" = :Proceso Or  "Cliente" = :Cliente')
    UniDirectional = True
    Left = 652
    Top = 207
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
    object qrPagos_ClientesMonto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Monto'
      Origin = '"Pagos_Clientes"."Monto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrPagos_ClientesConcepto: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto'
      Origin = '"Pagos_Clientes"."Concepto"'
      Size = 100
    end
    object qrPagos_ClientesPagado_Capital: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pagado_Capital'
      Origin = '"Pagos_Clientes"."Pagado_Capital"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrPagos_ClientesPagado_Interes: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pagado_Interes'
      Origin = '"Pagos_Clientes"."Pagado_Interes"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrPagos_ClientesPagado_Mora: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pagado_Mora'
      Origin = '"Pagos_Clientes"."Pagado_Mora"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrPagos_ClientesPagado_Otros: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pagado_Otros'
      Origin = '"Pagos_Clientes"."Pagado_Otros"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrPagos_ClientesTotal_Pagado: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Pagado'
      Origin = '"Pagos_Clientes"."Total_Pagado"'
      currency = True
      Precision = 12
      Size = 2
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
  end
  object prPagos_Clientes: TDataSetProvider
    DataSet = qrPagos_Clientes
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    BeforeUpdateRecord = prFacturasBeforeUpdateRecord
    Left = 766
    Top = 207
  end
  object lnkPagos_Clientes: TDataSource
    DataSet = qrPagos_Clientes
    Left = 766
    Top = 256
  end
  object qrDetalle_Pago_Facturas: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    DataSource = lnkPagos_Clientes
    SQL.Strings = (
      'Select  * From  "Detalle_Pagos_Clientes"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 652
    Top = 255
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
    object qrDetalle_Pago_FacturasCapital: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Capital'
      Origin = '"Detalle_Pagos_Clientes"."Capital"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalle_Pago_FacturasInteres: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Interes'
      Origin = '"Detalle_Pagos_Clientes"."Interes"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalle_Pago_FacturasMora: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Mora'
      Origin = '"Detalle_Pagos_Clientes"."Mora"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalle_Pago_FacturasOtros: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Otros'
      Origin = '"Detalle_Pagos_Clientes"."Otros"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalle_Pago_FacturasVencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento'
      Origin = '"Detalle_Pagos_Clientes"."Vencimiento"'
    end
    object qrDetalle_Pago_FacturasPendiente: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pendiente'
      Origin = '"Detalle_Pagos_Clientes"."Pendiente"'
      currency = True
      Precision = 12
      Size = 2
    end
  end
  object qrListadoUsuarios: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Usuarios"'
      'Order By "NombreCompleto"')
    UniDirectional = True
    Left = 652
    Top = 311
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
    BeforeUpdateRecord = prFacturasBeforeUpdateRecord
    Left = 766
    Top = 311
  end
  object qrExistenciaInicial: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Detalles_Compra"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 652
    Top = 367
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
    object qrExistenciaInicialCosto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Costo'
      Origin = '"Detalles_Compra"."Costo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrExistenciaInicialPrecio_Lista: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Lista'
      Origin = '"Detalles_Compra"."Precio_Lista"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrExistenciaInicialCantidad: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Cantidad'
      Origin = '"Detalles_Compra"."Cantidad"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrExistenciaInicialTotal_Costo: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Origin = '"Detalles_Compra"."Total_Costo"'
      currency = True
      Precision = 12
      Size = 2
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
    object qrExistenciaInicialImpuesto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Impuesto'
      Origin = '"Detalles_Compra"."Impuesto"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrExistenciaInicialDescuento: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento'
      Origin = '"Detalles_Compra"."Descuento"'
      Precision = 12
      Size = 2
    end
    object qrExistenciaInicialValor_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Detalles_Compra"."Valor_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrExistenciaInicialValor_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Detalles_Compra"."Valor_Descuento"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrExistenciaInicialTotal_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Detalles_Compra"."Total_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrExistenciaInicialTotal_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Detalles_Compra"."Total_Descuento"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrExistenciaInicialTotal_Precio: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Precio'
      Origin = '"Detalles_Compra"."Total_Precio"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrExistenciaInicialCantidad_Devuelto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Cantidad_Devuelto'
      Origin = '"Detalles_Compra"."Cantidad_Devuelto"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrExistenciaInicialTipo_Beneficio: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Porcentual'#39
      FieldName = 'Tipo_Beneficio'
      Origin = '"Detalles_Compra"."Tipo_Beneficio"'
      Size = 15
    end
    object qrExistenciaInicialValor_Beneficio_PMayor_Contado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_PMayor_Contado'
      Origin = '"Detalles_Compra"."Valor_Beneficio_PMayor_Contado"'
      Precision = 12
      Size = 2
    end
    object qrExistenciaInicialValor_Beneficio_PMayor_Credito: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_PMayor_Credito'
      Origin = '"Detalles_Compra"."Valor_Beneficio_PMayor_Credito"'
      Precision = 12
      Size = 2
    end
    object qrExistenciaInicialValor_Beneficio_Detalle_Contado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_Detalle_Contado'
      Origin = '"Detalles_Compra"."Valor_Beneficio_Detalle_Contado"'
      Precision = 12
      Size = 2
    end
    object qrExistenciaInicialValor_Beneficio_Detalle_Credito: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_Detalle_Credito'
      Origin = '"Detalles_Compra"."Valor_Beneficio_Detalle_Credito"'
      Precision = 12
      Size = 2
    end
    object qrExistenciaInicialPrecio_Venta_Por_Mayor_Contado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Por_Mayor_Contado'
      Origin = '"Detalles_Compra"."Precio_Venta_Por_Mayor_Contado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrExistenciaInicialPrecio_Venta_Por_Mayor_Credito: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Por_Mayor_Credito'
      Origin = '"Detalles_Compra"."Precio_Venta_Por_Mayor_Credito"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrExistenciaInicialPrecio_Venta_Detalle_Contado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Detalle_Contado'
      Origin = '"Detalles_Compra"."Precio_Venta_Detalle_Contado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrExistenciaInicialPrecio_Venta_Detalle_Credito: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Detalle_Credito'
      Origin = '"Detalles_Compra"."Precio_Venta_Detalle_Credito"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrExistenciaInicialPrecio_Minimo: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Minimo'
      Origin = '"Detalles_Compra"."Precio_Minimo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrExistenciaInicialContenido: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Contenido'
      Origin = '"Detalles_Compra"."Contenido"'
      Precision = 12
      Size = 2
    end
  end
  object prExistenciaInicial: TDataSetProvider
    DataSet = qrExistenciaInicial
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 766
    Top = 368
  end
  object qrDesgloceEfectivo: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select Distinct '
      '"Forma_Pago", '
      'Sum("Valor_Recibido") Total_Recibido, '
      'Sum("Valor_Devolver")Total_Devuelto From '
      '"Detalle_Pago_Factura" '
      'Where ("Fecha" BetWeen :F1 And :F2) '
      'Group By "Forma_Pago"')
    UniDirectional = True
    Left = 652
    Top = 423
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
    object qrDesgloceEfectivoForma_Pago: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Forma_Pago'
      ProviderFlags = []
    end
    object qrDesgloceEfectivoTOTAL_RECIBIDO: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_RECIBIDO'
      ProviderFlags = []
      Precision = 12
      Size = 2
    end
    object qrDesgloceEfectivoTOTAL_DEVUELTO: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_DEVUELTO'
      ProviderFlags = []
      Precision = 12
      Size = 2
    end
  end
  object prDesgloceEfectivo: TDataSetProvider
    DataSet = qrDesgloceEfectivo
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 766
    Top = 424
  end
  object qrListadoPagos: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Pagos_Clientes"'
      'Where "Fecha" Between :F1 And :F2'
      'Order By "Fecha", "Hora"')
    UniDirectional = True
    Left = 652
    Top = 487
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
    object qrListadoPagosMonto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Monto'
      Origin = '"Pagos_Clientes"."Monto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrListadoPagosConcepto: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto'
      Origin = '"Pagos_Clientes"."Concepto"'
      Size = 100
    end
    object qrListadoPagosPagado_Capital: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pagado_Capital'
      Origin = '"Pagos_Clientes"."Pagado_Capital"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrListadoPagosPagado_Interes: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pagado_Interes'
      Origin = '"Pagos_Clientes"."Pagado_Interes"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrListadoPagosPagado_Mora: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pagado_Mora'
      Origin = '"Pagos_Clientes"."Pagado_Mora"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrListadoPagosPagado_Otros: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pagado_Otros'
      Origin = '"Pagos_Clientes"."Pagado_Otros"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrListadoPagosTotal_Pagado: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Pagado'
      Origin = '"Pagos_Clientes"."Total_Pagado"'
      currency = True
      Precision = 12
      Size = 2
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
  end
  object prListadoPagos: TDataSetProvider
    DataSet = qrListadoPagos
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 766
    Top = 488
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
    Top = 351
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
    object qrDetalle_Pago_CompraTasa: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Tasa'
      Origin = '"Detalle_Pago_Compra"."Tasa"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalle_Pago_CompraValor_Recibido: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Recibido'
      Origin = '"Detalle_Pago_Compra"."Valor_Recibido"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalle_Pago_CompraValor_Recibido_Local: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Recibido_Local'
      Origin = '"Detalle_Pago_Compra"."Valor_Recibido_Local"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalle_Pago_CompraValor_Devolver: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Devolver'
      Origin = '"Detalle_Pago_Compra"."Valor_Devolver"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalle_Pago_CompraValor_Devolver_Local: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Devolver_Local'
      Origin = '"Detalle_Pago_Compra"."Valor_Devolver_Local"'
      currency = True
      Precision = 12
      Size = 2
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
    object qrDetalle_Pago_CompraPendiente: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Origin = '"Detalle_Pago_Compra"."Pendiente"'
      currency = True
      Precision = 12
      Size = 2
    end
  end
  object InfoDataBase: TIBDatabase
    DatabaseName = 'c:\Development\Database\Interbase\Inventory&Sales\IYS.RMS'
    Params.Strings = (
      'user_name=MGUMBS'
      'password=Ice49635'
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
    Top = 599
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
    object qrNotas_CreditoMonto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Monto'
      Origin = '"Notas_Credito"."Monto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrNotas_CreditoConcepto: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto'
      Origin = '"Notas_Credito"."Concepto"'
      Size = 100
    end
    object qrNotas_CreditoCapital: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Capital'
      Origin = '"Notas_Credito"."Capital"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrNotas_CreditoInteres: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Interes'
      Origin = '"Notas_Credito"."Interes"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrNotas_CreditoMora: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Mora'
      Origin = '"Notas_Credito"."Mora"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrNotas_CreditoOtros: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Otros'
      Origin = '"Notas_Credito"."Otros"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrNotas_CreditoTotal: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total'
      Origin = '"Notas_Credito"."Total"'
      currency = True
      Precision = 12
      Size = 2
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
  end
  object prNotas_Credito: TDataSetProvider
    DataSet = qrNotas_Credito
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    OnUpdateData = prNotas_CreditoUpdateData
    Left = 344
    Top = 599
  end
  object lnkNotas_Credito: TDataSource
    DataSet = qrNotas_Credito
    Left = 344
    Top = 644
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
    Top = 644
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
    object qrDetalle_Notas_CreditoCapital: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Capital'
      Origin = '"Detalle_Notas_Credito"."Capital"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalle_Notas_CreditoInteres: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Interes'
      Origin = '"Detalle_Notas_Credito"."Interes"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalle_Notas_CreditoMora: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Mora'
      Origin = '"Detalle_Notas_Credito"."Mora"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalle_Notas_CreditoOtros: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Otros'
      Origin = '"Detalle_Notas_Credito"."Otros"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalle_Notas_CreditoVencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento'
      Origin = '"Detalle_Notas_Credito"."Vencimiento"'
    end
    object qrDetalle_Notas_CreditoPendiente: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Origin = '"Detalle_Notas_Credito"."Pendiente"'
      Precision = 12
      Size = 2
    end
  end
  object prForms: TDataSetProvider
    DataSet = qrForms
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    BeforeUpdateRecord = prFacturasBeforeUpdateRecord
    Left = 528
    Top = 694
  end
  object qrForms: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Forms"'
      'Order By "Description", "Name"')
    UniDirectional = True
    Left = 432
    Top = 694
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
    Left = 766
    Top = 694
  end
  object qrComprobantes_Fiscales: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Comprobantes_Fiscales"'
      'Where "Aplicable" = :Aplicable Or "Aplicable" = '#39'AL'#39
      'Order By "Tipo"')
    UniDirectional = True
    Left = 652
    Top = 694
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
  end
  object ComunesTransaction: TIBTransaction
    DefaultDatabase = ComunesDb
    IdleTimer = 300
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saCommit
    Left = 1024
    Top = 8
  end
  object ComunesDb: TIBDatabase
    DatabaseName = 'C:\Development\Database\Interbase\Inventory&Sales\Comunes.sys'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'sql_role_name=Admin')
    LoginPrompt = False
    DefaultTransaction = ComunesTransaction
    Left = 920
    Top = 8
  end
  object qrCiudades: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Ciudades_Estados"'
      'Where "Pais"= :Pais'
      'Order By "Nombre", "Pais"')
    UniDirectional = True
    Left = 920
    Top = 149
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
    Left = 1024
    Top = 149
  end
  object qrPaises: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Paises"'
      
        'Where ("Iso_3_Char" = :Iso_3_Char) Or ("Iso_2_Char" = :Iso_2_Cha' +
        'r)')
    UniDirectional = True
    Left = 920
    Top = 57
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
    Left = 1024
    Top = 56
  end
  object qrSector: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Sector"'
      'Where ("Ciudad" = :Ciudad)'
      'Order By "Nombre", "Ciudad"')
    UniDirectional = True
    Left = 920
    Top = 105
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
    Left = 1024
    Top = 102
  end
  object qrZona: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Zona"'
      'Where ("Ciudad" = :Ciudad)'
      'Order By "Descripcion", "Ciudad"')
    UniDirectional = True
    Left = 920
    Top = 197
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
    Left = 1024
    Top = 196
  end
  object qrListado_Paises: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From "Paises"'
      'Order By "Nombre", "Region"')
    UniDirectional = True
    Left = 920
    Top = 248
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
    Left = 1024
    Top = 248
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
    object qrOrdenes_CompraSubTotal: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SubTotal'
      Origin = '"Ordenes_Compra"."SubTotal"'
      Precision = 12
      Size = 2
    end
    object qrOrdenes_CompraTotalNeto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TotalNeto'
      Origin = '"Ordenes_Compra"."TotalNeto"'
      Precision = 12
      Size = 2
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
    object qrOrdenes_CompraImpuesto_Global: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto_Global'
      Origin = '"Ordenes_Compra"."Impuesto_Global"'
      Precision = 12
      Size = 2
    end
    object qrOrdenes_CompraValor_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Ordenes_Compra"."Valor_Impuesto"'
      Precision = 12
      Size = 2
    end
    object qrOrdenes_CompraValor_Impuesto_Detalle: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto_Detalle'
      Origin = '"Ordenes_Compra"."Valor_Impuesto_Detalle"'
      Precision = 12
      Size = 2
    end
    object qrOrdenes_CompraTotal_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Ordenes_Compra"."Total_Impuesto"'
      Precision = 12
      Size = 2
    end
    object qrOrdenes_CompraDescuento_Global: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Global'
      Origin = '"Ordenes_Compra"."Descuento_Global"'
      Precision = 12
      Size = 2
    end
    object qrOrdenes_CompraValor_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Ordenes_Compra"."Valor_Descuento"'
      Precision = 12
      Size = 2
    end
    object qrOrdenes_CompraValor_Descuento_Detalle: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento_Detalle'
      Origin = '"Ordenes_Compra"."Valor_Descuento_Detalle"'
      Precision = 12
      Size = 2
    end
    object qrOrdenes_CompraTotal_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Ordenes_Compra"."Total_Descuento"'
      Precision = 12
      Size = 2
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
    object qrOrdenes_CompraPagado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado'
      Origin = '"Ordenes_Compra"."Pagado"'
      Precision = 12
      Size = 2
    end
    object qrOrdenes_CompraPendiente: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Origin = '"Ordenes_Compra"."Pendiente"'
      Precision = 12
      Size = 2
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
    object qrDetalles_Orden_CompraCosto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Costo'
      Origin = '"Detalles_Orden_Compra"."Costo"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_Orden_CompraPrecio_Lista: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Lista'
      Origin = '"Detalles_Orden_Compra"."Precio_Lista"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_Orden_CompraCantidad: TIBBCDField
      AutoGenerateValue = arDefault
      CustomConstraint = '(Value > 0) And  (Value <> Null)'
      ConstraintErrorMessage = 'Debe especificar la cantidad'
      FieldName = 'Cantidad'
      Origin = '"Detalles_Orden_Compra"."Cantidad"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_Orden_CompraTotal_Costo: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Origin = '"Detalles_Orden_Compra"."Total_Costo"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_Orden_CompraTotal_Precio: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Precio'
      Origin = '"Detalles_Orden_Compra"."Total_Precio"'
      Precision = 12
      Size = 2
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
    object qrDetalles_Orden_CompraImpuesto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto'
      Origin = '"Detalles_Orden_Compra"."Impuesto"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_Orden_CompraDescuento: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento'
      Origin = '"Detalles_Orden_Compra"."Descuento"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_Orden_CompraValor_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Detalles_Orden_Compra"."Valor_Impuesto"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_Orden_CompraValor_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Detalles_Orden_Compra"."Valor_Descuento"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_Orden_CompraTotal_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Detalles_Orden_Compra"."Total_Impuesto"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_Orden_CompraTotal_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Detalles_Orden_Compra"."Total_Descuento"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_Orden_CompraCantidad_Devuelto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad_Devuelto'
      Origin = '"Detalles_Orden_Compra"."Cantidad_Devuelto"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_Orden_CompraTipo_Beneficio: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Beneficio'
      Origin = '"Detalles_Orden_Compra"."Tipo_Beneficio"'
      Size = 15
    end
    object qrDetalles_Orden_CompraValor_Beneficio_PMayor_Contado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_PMayor_Contado'
      Origin = '"Detalles_Orden_Compra"."Valor_Beneficio_PMayor_Contado"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_Orden_CompraValor_Beneficio_PMayor_Credito: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_PMayor_Credito'
      Origin = '"Detalles_Orden_Compra"."Valor_Beneficio_PMayor_Credito"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_Orden_CompraValor_Beneficio_Detalle_Contado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_Detalle_Contado'
      Origin = '"Detalles_Orden_Compra"."Valor_Beneficio_Detalle_Contado"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_Orden_CompraValor_Beneficio_Detalle_Credito: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Beneficio_Detalle_Credito'
      Origin = '"Detalles_Orden_Compra"."Valor_Beneficio_Detalle_Credito"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_Orden_CompraPrecio_Venta_Por_Mayor_Contado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Por_Mayor_Contado'
      Origin = '"Detalles_Orden_Compra"."Precio_Venta_Por_Mayor_Contado"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_Orden_CompraPrecio_Venta_Por_Mayor_Credito: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Por_Mayor_Credito'
      Origin = '"Detalles_Orden_Compra"."Precio_Venta_Por_Mayor_Credito"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_Orden_CompraPrecio_Venta_Detalle_Contado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Detalle_Contado'
      Origin = '"Detalles_Orden_Compra"."Precio_Venta_Detalle_Contado"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_Orden_CompraPrecio_Venta_Detalle_Credito: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Detalle_Credito'
      Origin = '"Detalles_Orden_Compra"."Precio_Venta_Detalle_Credito"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_Orden_CompraPrecio_Minimo: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Minimo'
      Origin = '"Detalles_Orden_Compra"."Precio_Minimo"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_Orden_CompraContenido: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Contenido'
      Origin = '"Detalles_Orden_Compra"."Contenido"'
      Precision = 12
      Size = 2
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
    Top = 400
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
    Top = 695
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
      Size = 25
    end
    object qrCuotas_FacturaNumero: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Cuotas"."Numero"'
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
    object qrCuotas_FacturaMonto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Monto'
      Origin = '"Cuotas"."Monto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCuotas_FacturaConcepto: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto'
      Origin = '"Cuotas"."Concepto"'
      Size = 100
    end
    object qrCuotas_FacturaCapital: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Capital'
      Origin = '"Cuotas"."Capital"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCuotas_FacturaCapital_Pendiente: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Capital_Pendiente'
      Origin = '"Cuotas"."Capital_Pendiente"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCuotas_FacturaInteres: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Interes'
      Origin = '"Cuotas"."Interes"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCuotas_FacturaInteres_Pendiente: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Interes_Pendiente'
      Origin = '"Cuotas"."Interes_Pendiente"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCuotas_FacturaMora: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Mora'
      Origin = '"Cuotas"."Mora"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCuotas_FacturaMora_Pendiente: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Mora_Pendiente'
      Origin = '"Cuotas"."Mora_Pendiente"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCuotas_FacturaOtros: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Otros'
      Origin = '"Cuotas"."Otros"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCuotas_FacturaOtros_Pendiente: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Otros_Pendiente'
      Origin = '"Cuotas"."Otros_Pendiente"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCuotas_FacturaTotal_Pagado: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Pagado'
      Origin = '"Cuotas"."Total_Pagado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCuotas_FacturaTotal_Pendiente: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Pendiente'
      Origin = '"Cuotas"."Total_Pendiente"'
      currency = True
      Precision = 12
      Size = 2
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
  end
  object qrCuotas_Facturas: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    SQL.Strings = (
      'Select  * From  "Cuotas"'
      'Where "Proceso" = :Proceso'
      'Order By "Prioridad","Numero"')
    UniDirectional = True
    Left = 44
    Top = 695
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
    object qrCuotas_FacturasMonto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Monto'
      Origin = '"Cuotas"."Monto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCuotas_FacturasConcepto: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto'
      Origin = '"Cuotas"."Concepto"'
      Size = 100
    end
    object qrCuotas_FacturasCapital: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Capital'
      Origin = '"Cuotas"."Capital"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCuotas_FacturasCapital_Pendiente: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Capital_Pendiente'
      Origin = '"Cuotas"."Capital_Pendiente"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCuotas_FacturasInteres: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Interes'
      Origin = '"Cuotas"."Interes"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCuotas_FacturasInteres_Pendiente: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Interes_Pendiente'
      Origin = '"Cuotas"."Interes_Pendiente"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCuotas_FacturasMora: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Mora'
      Origin = '"Cuotas"."Mora"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCuotas_FacturasMora_Pendiente: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Mora_Pendiente'
      Origin = '"Cuotas"."Mora_Pendiente"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCuotas_FacturasOtros: TIBBCDField
      DefaultExpression = '0.00'
      FieldName = 'Otros'
      Origin = '"Cuotas"."Otros"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCuotas_FacturasOtros_Pendiente: TIBBCDField
      DefaultExpression = '0.00'
      FieldName = 'Otros_Pendiente'
      Origin = '"Cuotas"."Otros_Pendiente"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCuotas_FacturasTotal_Pagado: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Pagado'
      Origin = '"Cuotas"."Total_Pagado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCuotas_FacturasTotal_Pendiente: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Pendiente'
      Origin = '"Cuotas"."Total_Pendiente"'
      currency = True
      Precision = 12
      Size = 2
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
  end
  object prCuotas_Facturas: TDataSetProvider
    DataSet = qrCuotas_Facturas
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 144
    Top = 692
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
    object qrFacturas_ProveedorSubTotal: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SubTotal'
      Origin = '"Compra_Productos"."SubTotal"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturas_ProveedorTotalNeto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TotalNeto'
      Origin = '"Compra_Productos"."TotalNeto"'
      currency = True
      Precision = 12
      Size = 2
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
    object qrFacturas_ProveedorImpuesto_Global: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto_Global'
      Origin = '"Compra_Productos"."Impuesto_Global"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrFacturas_ProveedorValor_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Compra_Productos"."Valor_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturas_ProveedorValor_Impuesto_Detalle: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto_Detalle'
      Origin = '"Compra_Productos"."Valor_Impuesto_Detalle"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturas_ProveedorTotal_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Compra_Productos"."Total_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturas_ProveedorDescuento_Global: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Global'
      Origin = '"Compra_Productos"."Descuento_Global"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrFacturas_ProveedorValor_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Compra_Productos"."Valor_Descuento"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturas_ProveedorValor_Descuento_Detalle: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento_Detalle'
      Origin = '"Compra_Productos"."Valor_Descuento_Detalle"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturas_ProveedorTotal_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Compra_Productos"."Total_Descuento"'
      currency = True
      Precision = 12
      Size = 2
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
    object qrFacturas_ProveedorPagado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado'
      Origin = '"Compra_Productos"."Pagado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturas_ProveedorPendiente: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Origin = '"Compra_Productos"."Pendiente"'
      currency = True
      Precision = 12
      Size = 2
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
  end
  object prFacturas_Proveedor: TDataSetProvider
    DataSet = qrFacturas_Proveedor
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    BeforeUpdateRecord = prFacturasBeforeUpdateRecord
    Left = 1024
    Top = 511
  end
end
