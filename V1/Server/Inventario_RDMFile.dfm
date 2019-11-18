object Inventario_RDM: TInventario_RDM
  OldCreateOrder = False
  Height = 551
  Width = 745
  object qrProductos: TIBQuery
    SQL.Strings = (
      'Select  * From "Productos" '
      'Where ("Codigo" = :Codigo) '
      'Or ("Barra" = :Barra)'
      'Or ("Referencia" = :Referencia)'
      'Or ("Secuencia" = :Secuencia)'
      'Or ("Proceso" = :Proceso)')
    UniDirectional = True
    Left = 40
    Top = 40
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
    object qrProductosUltimo_Precio_Compra: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Ultimo_Precio_Compra'
      Origin = '"Productos"."Ultimo_Precio_Compra"'
    end
    object qrProductosCosto_Standar: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Costo_Standar'
      Origin = '"Productos"."Costo_Standar"'
    end
    object qrProductosCosto_Promedio: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Costo_Promedio'
      Origin = '"Productos"."Costo_Promedio"'
    end
    object qrProductosPrecio_Venta_Contado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Contado'
      Origin = '"Productos"."Precio_Venta_Contado"'
    end
    object qrProductosPrecio_Venta_Credito: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Credito'
      Origin = '"Productos"."Precio_Venta_Credito"'
    end
    object qrProductosPrecio_Venta_Minimo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Minimo'
      Origin = '"Productos"."Precio_Venta_Minimo"'
    end
    object qrProductosPrecio_Venta_Por_Mayor_Contado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Por_Mayor_Contado'
      Origin = '"Productos"."Precio_Venta_Por_Mayor_Contado"'
    end
    object qrProductosPrecio_Venta_Por_Mayor_Credito: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta_Por_Mayor_Credito'
      Origin = '"Productos"."Precio_Venta_Por_Mayor_Credito"'
    end
    object qrProductosPrecio_Unidad: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Unidad'
      Origin = '"Productos"."Precio_Unidad"'
    end
    object qrProductosExistencia_Medida: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Existencia_Medida'
      Origin = '"Productos"."Existencia_Medida"'
      Precision = 12
      Size = 2
    end
  end
  object prProductos: TDataSetProvider
    DataSet = qrProductos
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poUseQuoteChar]
    Left = 144
    Top = 40
  end
  object qrSimilares: TIBQuery
    DataSource = lnkProductos
    SQL.Strings = (
      'Select  * From "Productos_Similares" '
      'Where "Codigo" = :Codigo'
      'Order By "Similar"')
    UniDirectional = True
    Left = 40
    Top = 88
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
    Top = 88
  end
  object qrVencimientos: TIBQuery
    DataSource = lnkProductos
    SQL.Strings = (
      'Select  * From "Vencimientos" '
      'Where "Codigo" = :Codigo'
      'Order By "Mes", "Ano"')
    Left = 40
    Top = 137
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
  object qrComponentes: TIBQuery
    DataSource = lnkProductos
    SQL.Strings = (
      'Select  * From "Componentes"'
      'Where "Codigo" = :Codigo'
      'Order By "Codigo"')
    Left = 40
    Top = 183
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
  object qrSeriales_Comprados: TIBQuery
    SQL.Strings = (
      'Select  * From "Seriales_Recibidos"'
      'Where "Codigo" = :Codigo')
    UniDirectional = True
    Left = 40
    Top = 231
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
    SQL.Strings = (
      'Select  * From "Seriales_Despachados"'
      'Where "Codigo" = :Codigo')
    UniDirectional = True
    Left = 40
    Top = 279
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
    Top = 231
  end
  object prSeriales_Facturados: TDataSetProvider
    DataSet = qrSeriales_Facturados
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poUseQuoteChar]
    Left = 144
    Top = 279
  end
  object qrTipos_Productos: TIBQuery
    SQL.Strings = (
      'Select  * From  "Tipos_Productos"'
      'Order By "Descripcion"')
    UniDirectional = True
    Left = 40
    Top = 342
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
    Top = 342
  end
  object qrVencimientos_Proveedor: TIBQuery
    SQL.Strings = (
      
        'SELECT * FROM "Vencimientos_Proveedor" (:Mes1, :Mes2, :Ano1, :An' +
        'o2, :Proveedor)')
    UniDirectional = True
    Left = 436
    Top = 40
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
    Left = 536
    Top = 40
  end
  object qrVencimientos_Codigo: TIBQuery
    SQL.Strings = (
      
        'SELECT * FROM "Vencimientos_Codigo" (:Mes1, :Mes2, :Ano1, :Ano2,' +
        ' :Codigo)')
    UniDirectional = True
    Left = 436
    Top = 87
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
    Left = 536
    Top = 87
  end
  object qrVencimientos_Fecha: TIBQuery
    SQL.Strings = (
      'SELECT * FROM "Vencimientos_Fecha" (:Mes1, :Mes2, :Ano1, :Ano2)')
    UniDirectional = True
    Left = 436
    Top = 135
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
    Left = 536
    Top = 135
  end
  object qrVencimientos_Todos: TIBQuery
    SQL.Strings = (
      'SELECT * FROM "Vencimientos_Todos"')
    UniDirectional = True
    Left = 436
    Top = 183
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
    Left = 536
    Top = 183
  end
  object spUpdate_Vencimiento_Producto: TIBStoredProc
    StoredProcName = 'Update_Vencimiento_Producto'
    Left = 502
    Top = 256
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
  object spInsert_Vencimiento_Producto: TIBStoredProc
    StoredProcName = 'Insert_Vencimiento_Producto'
    Left = 502
    Top = 304
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
  object qrListadoProductos: TIBQuery
    SQL.Strings = (
      'Select  *'
      'From "Productos" '
      'Where "Status" = 1'
      'Order By  "Descripcion"')
    UniDirectional = True
    Left = 40
    Top = 415
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
    object qrListadoProductosUbicacion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ubicacion'
      Origin = '"Productos"."Ubicacion"'
      Size = 100
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
    object qrListadoProductosExistencia_Medida: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Existencia_Medida'
      Origin = '"Productos"."Existencia_Medida"'
      Precision = 12
      Size = 2
    end
  end
  object prListadoProductos: TDataSetProvider
    DataSet = qrListadoProductos
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 144
    Top = 415
  end
  object qrAlmacen: TIBQuery
    SQL.Strings = (
      'Select  * From  "Almacenes"'
      'Order By "Descripcion"')
    UniDirectional = True
    Left = 40
    Top = 491
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
    Top = 491
  end
  object qrMercancia_Cliente: TIBQuery
    SQL.Strings = (
      'Select  * From  "Detalles_Factura"'
      'Where ("Cliente" = :Cliente) And ("Fecha" Between :F1 and :F2)'
      'Order By "Codigo", "Fecha"')
    UniDirectional = True
    Left = 320
    Top = 399
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
    object qrMercancia_ClienteCantidad: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad'
      Origin = '"Detalles_Factura"."Cantidad"'
      Precision = 12
      Size = 2
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
    object qrMercancia_ClienteCantidad_Devuelto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad_Devuelto'
      Origin = '"Detalles_Factura"."Cantidad_Devuelto"'
      Precision = 12
      Size = 2
    end
    object qrMercancia_ClienteTipo_Precio: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Precio'
      Origin = '"Detalles_Factura"."Tipo_Precio"'
      Size = 25
    end
    object qrMercancia_ClienteContenido: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Contenido'
      Origin = '"Detalles_Factura"."Contenido"'
      Precision = 12
      Size = 2
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
    object qrMercancia_ClienteUnidades: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Unidades'
      Origin = '"Detalles_Factura"."Unidades"'
      Precision = 12
      Size = 2
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
  end
  object lnkMercancia_Cliente: TDataSource
    DataSet = qrMercancia_Cliente
    Left = 424
    Top = 407
  end
  object qrSeriales_Vendida_Cliente: TIBQuery
    DataSource = lnkMercancia_Cliente
    SQL.Strings = (
      'Select  * From "Seriales_Despachados"'
      'Where  "Proceso"= :Proceso'
      'And "Codigo" = :Codigo')
    UniDirectional = True
    Left = 352
    Top = 447
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
    Left = 432
    Top = 447
  end
  object qrMercancia_Desp_Cliente: TIBQuery
    SQL.Strings = (
      'Select  * From  "Detalles_Salida"'
      'Where ("Cliente" = :Cliente) And ("Fecha" Between :F1 and :F2)'
      'Order By "Codigo", "Fecha"')
    UniDirectional = True
    Left = 524
    Top = 399
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
    object qrMercancia_Desp_ClienteCosto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Costo'
      Origin = '"Detalles_Factura"."Costo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrMercancia_Desp_ClientePrecio_Real: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Real'
      Origin = '"Detalles_Factura"."Precio_Real"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrMercancia_Desp_ClientePrecio_Venta: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta'
      Origin = '"Detalles_Factura"."Precio_Venta"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrMercancia_Desp_ClientePrecio_Minimo: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Minimo'
      Origin = '"Detalles_Factura"."Precio_Minimo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrMercancia_Desp_ClienteCantidad: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad'
      Origin = '"Detalles_Factura"."Cantidad"'
      Precision = 12
      Size = 2
    end
    object qrMercancia_Desp_ClienteTotal_Costo: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Origin = '"Detalles_Factura"."Total_Costo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrMercancia_Desp_ClienteTotal_Precio: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Precio'
      Origin = '"Detalles_Factura"."Total_Precio"'
      currency = True
      Precision = 12
      Size = 2
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
    object qrMercancia_Desp_ClienteImpuesto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto'
      Origin = '"Detalles_Factura"."Impuesto"'
      Precision = 12
      Size = 2
    end
    object qrMercancia_Desp_ClienteDescuento: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento'
      Origin = '"Detalles_Factura"."Descuento"'
      Precision = 12
      Size = 2
    end
    object qrMercancia_Desp_ClienteValor_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Detalles_Factura"."Valor_Impuesto"'
      Precision = 12
      Size = 2
    end
    object qrMercancia_Desp_ClienteValor_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Detalles_Factura"."Valor_Descuento"'
      Precision = 12
      Size = 2
    end
    object qrMercancia_Desp_ClienteTotal_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Detalles_Factura"."Total_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrMercancia_Desp_ClienteTotal_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Detalles_Factura"."Total_Descuento"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrMercancia_Desp_ClienteCantidad_Devuelto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad_Devuelto'
      Origin = '"Detalles_Factura"."Cantidad_Devuelto"'
      Precision = 12
      Size = 2
    end
    object qrMercancia_Desp_ClienteTipo_Precio: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Precio'
      Origin = '"Detalles_Factura"."Tipo_Precio"'
      Size = 25
    end
    object qrMercancia_Desp_ClienteContenido: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Contenido'
      Origin = '"Detalles_Factura"."Contenido"'
      Precision = 12
      Size = 2
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
    object qrMercancia_Desp_ClientePrecio: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio'
      Origin = '"Detalles_Salida"."Precio"'
      Precision = 12
      Size = 2
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
    Left = 624
    Top = 407
  end
  object qrSeriales_Desp_Cliente: TIBQuery
    DataSource = lnkMercancia_Desp_Cliente
    SQL.Strings = (
      'Select  * From "Seriales_Despachados"'
      'Where  "Proceso"= :Proceso'
      'And "Codigo" = :Codigo')
    UniDirectional = True
    Left = 532
    Top = 479
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
    Left = 632
    Top = 471
  end
  object qrExistenciaInicial: TIBQuery
    SQL.Strings = (
      'Select  * From  "Detalles_Compra"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 356
    Top = 495
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
    object qrExistenciaInicialCantidad_Despachada: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Cantidad_Despachada'
      Origin = '"Detalles_Compra"."Cantidad_Despachada"'
      Precision = 12
      Size = 2
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
  end
  object prExistenciaInicial: TDataSetProvider
    DataSet = qrExistenciaInicial
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 470
    Top = 496
  end
  object qrVencimientos_Categoria: TIBQuery
    SQL.Strings = (
      
        'SELECT * FROM "Vencimientos_Categoria" (:Mes1, :Mes2, :Ano1, :An' +
        'o2, :Categoria)')
    UniDirectional = True
    Left = 36
    Top = 425
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
    Left = 150
    Top = 425
  end
  object qrVencimientos_Departamento: TIBQuery
    SQL.Strings = (
      
        'SELECT * FROM "Vencimientos_Departamento" (:Mes1, :Mes2, :Ano1, ' +
        ':Ano2, :Departamento)')
    UniDirectional = True
    Left = 204
    Top = 439
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
    Left = 326
    Top = 455
  end
  object qVencimientos_Fabricante: TIBQuery
    SQL.Strings = (
      
        'SELECT * FROM "Vencimientos_Fabricante" (:Mes1, :Mes2, :Ano1, :A' +
        'no2, :Fabricante)')
    UniDirectional = True
    Left = 36
    Top = 534
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
    Left = 150
    Top = 534
  end
  object prInventario_Terminal: TDataSetProvider
    DataSet = qrInventario_Terminal
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 1024
    Top = 697
  end
  object qrInventario_Terminal: TIBQuery
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
    object qrInventario_TerminalUnidades_Compradas: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Unidades_Compradas'
      Origin = '"Inventario"."Unidades_Compradas"'
      Precision = 12
      Size = 2
    end
    object qrInventario_TerminalUnidades_Facturadas: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Unidades_Facturadas'
      Origin = '"Inventario"."Unidades_Facturadas"'
      Precision = 12
      Size = 2
    end
    object qrInventario_TerminalUnidades_Despachadas: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Unidades_Despachadas'
      Origin = '"Inventario"."Unidades_Despachadas"'
      Precision = 12
      Size = 2
    end
    object qrInventario_TerminalUnidades_Devueltas_Compras: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Unidades_Devueltas_Compras'
      Origin = '"Inventario"."Unidades_Devueltas_Compras"'
      Precision = 12
      Size = 2
    end
    object qrInventario_TerminalUnidades_Devueltas_Facturas: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Unidades_Devueltas_Facturas'
      Origin = '"Inventario"."Unidades_Devueltas_Facturas"'
      Precision = 12
      Size = 2
    end
    object qrInventario_TerminalExistencia: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Existencia'
      Origin = '"Inventario"."Existencia"'
      Precision = 12
      Size = 2
    end
    object qrInventario_TerminalID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Inventario"."ID"'
      Size = 50
    end
  end
end
