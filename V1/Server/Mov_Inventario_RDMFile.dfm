object Mov_Inventario_RDM: TMov_Inventario_RDM
  OldCreateOrder = False
  Height = 540
  Width = 758
  object qrSalidas_Inventario: TIBQuery
    SQL.Strings = (
      'Select  * From  "Salidas_Inventario"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 556
    Top = 47
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
    object qrSalidas_InventarioSubTotal: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SubTotal'
      Origin = '"Salidas_Inventario"."SubTotal"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrSalidas_InventarioTotalNeto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TotalNeto'
      Origin = '"Salidas_Inventario"."TotalNeto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrSalidas_InventarioImpuesto_Global: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto_Global'
      Origin = '"Salidas_Inventario"."Impuesto_Global"'
      Precision = 12
      Size = 2
    end
    object qrSalidas_InventarioValor_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Salidas_Inventario"."Valor_Impuesto"'
      Precision = 12
      Size = 2
    end
    object qrSalidas_InventarioValor_Impuesto_Detalle: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto_Detalle'
      Origin = '"Salidas_Inventario"."Valor_Impuesto_Detalle"'
      Precision = 12
      Size = 2
    end
    object qrSalidas_InventarioTotal_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Salidas_Inventario"."Total_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrSalidas_InventarioDescuento_Global: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Global'
      Origin = '"Salidas_Inventario"."Descuento_Global"'
      Precision = 12
      Size = 2
    end
    object qrSalidas_InventarioValor_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Salidas_Inventario"."Valor_Descuento"'
      Precision = 12
      Size = 2
    end
    object qrSalidas_InventarioValor_Descuento_Detalle: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento_Detalle'
      Origin = '"Salidas_Inventario"."Valor_Descuento_Detalle"'
      Precision = 12
      Size = 2
    end
    object qrSalidas_InventarioTotal_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Salidas_Inventario"."Total_Descuento"'
      currency = True
      Precision = 12
      Size = 2
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
    object qrSalidas_InventarioPagado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado'
      Origin = '"Salidas_Inventario"."Pagado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrSalidas_InventarioPendiente: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Origin = '"Salidas_Inventario"."Pendiente"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrSalidas_InventarioUltimoPago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'UltimoPago'
      Origin = '"Salidas_Inventario"."UltimoPago"'
    end
    object qrSalidas_InventarioTotal_Efectivo_Recibido: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo_Recibido'
      Origin = '"Salidas_Inventario"."Total_Efectivo_Recibido"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrSalidas_InventarioTotal_Efectivo_Devuelto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo_Devuelto'
      Origin = '"Salidas_Inventario"."Total_Efectivo_Devuelto"'
      currency = True
      Precision = 12
      Size = 2
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
    object qrSalidas_InventarioTotal_Restante: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Restante'
      Origin = '"Salidas_Inventario"."Total_Restante"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrSalidas_InventarioConduce: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Conduce'
      Origin = '"Salidas_Inventario"."Conduce"'
      Size = 25
    end
    object qrSalidas_InventarioDebitado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Debitado'
      Origin = '"Salidas_Inventario"."Debitado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrSalidas_InventarioAcreditado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Acreditado'
      Origin = '"Salidas_Inventario"."Acreditado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrSalidas_InventarioBalance: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Origin = '"Salidas_Inventario"."Balance"'
      currency = True
      Precision = 12
      Size = 2
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
    Left = 656
    Top = 47
  end
  object qrDetalles_Salida: TIBQuery
    DataSource = lnkSalidas_Inventario
    SQL.Strings = (
      'Select  * From  "Detalles_Salida"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 556
    Top = 95
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
    object qrDetalles_SalidaAlmacen: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Almacen'
      Origin = '"Detalles_Salida"."Almacen"'
      Size = 25
    end
    object qrDetalles_SalidaPrecio_Real: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Real'
      Origin = '"Detalles_Salida"."Precio_Real"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_SalidaPrecio_Venta: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Venta'
      Origin = '"Detalles_Salida"."Precio_Venta"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_SalidaPrecio_Minimo: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Precio_Minimo'
      Origin = '"Detalles_Salida"."Precio_Minimo"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_SalidaImpuesto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto'
      Origin = '"Detalles_Salida"."Impuesto"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_SalidaDescuento: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento'
      Origin = '"Detalles_Salida"."Descuento"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_SalidaValor_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Detalles_Salida"."Valor_Impuesto"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_SalidaValor_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Detalles_Salida"."Valor_Descuento"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_SalidaTotal_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Detalles_Salida"."Total_Impuesto"'
      Precision = 12
      Size = 2
    end
    object qrDetalles_SalidaTotal_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Detalles_Salida"."Total_Descuento"'
      Precision = 12
      Size = 2
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
    Left = 656
    Top = 95
  end
  object qrSeriales_Salida: TIBQuery
    DataSource = lnkDetalles_Salida
    SQL.Strings = (
      'Select  * From "Seriales_Despachados"'
      'Where  "Proceso"= :Proceso'
      'And "Codigo" = :Codigo')
    UniDirectional = True
    Left = 556
    Top = 143
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
    Left = 656
    Top = 143
  end
  object qrCompra_Productos: TIBQuery
    SQL.Strings = (
      'Select  * From  "Compra_Productos"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 316
    Top = 47
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
  end
  object prCompra_Productos: TDataSetProvider
    DataSet = qrCompra_Productos
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poUseQuoteChar]
    Left = 416
    Top = 47
  end
  object qrDetalles_Compra: TIBQuery
    DataSource = lnkCompra_Productos
    SQL.Strings = (
      'Select  * From  "Detalles_Compra"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 316
    Top = 95
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
    Left = 416
    Top = 95
  end
  object qrDetalle_Pago_Compra: TIBQuery
    DataSource = lnkCompra_Productos
    SQL.Strings = (
      'Select  * From  "Detalle_Pago_Compra"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 316
    Top = 151
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
    object qrDetalle_Pago_CompraID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Detalle_Pago_Compra"."ID"'
      Size = 50
    end
  end
  object qrSeriales_Compra: TIBQuery
    DataSource = lnkDetalles_Compra
    SQL.Strings = (
      'Select  * From "Seriales_Recibidos"'
      'Where  "Proceso"= :Proceso'
      'And "Codigo" = :Codigo')
    UniDirectional = True
    Left = 316
    Top = 199
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
    Left = 416
    Top = 151
  end
  object qrFacturas: TIBQuery
    SQL.Strings = (
      'Select  * From  "Facturas"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 44
    Top = 55
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
    object qrFacturasDebitado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Debitado'
      Origin = '"Facturas"."Debitado"'
      Precision = 12
      Size = 2
    end
    object qrFacturasAcreditado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Acreditado'
      Origin = '"Facturas"."Acreditado"'
      Precision = 12
      Size = 2
    end
    object qrFacturasBalance: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Origin = '"Facturas"."Balance"'
      Precision = 12
      Size = 2
    end
    object qrFacturasMora: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Mora'
      Origin = '"Facturas"."Mora"'
      Precision = 12
      Size = 2
    end
    object qrFacturasMonto_Vencido: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Vencido'
      Origin = '"Facturas"."Monto_Vencido"'
      Precision = 12
      Size = 2
    end
    object qrFacturasCuotas_Vencidas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Cuotas_Vencidas'
      Origin = '"Facturas"."Cuotas_Vencidas"'
    end
    object qrFacturasMonto_Interes_Cumplido: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Interes_Cumplido'
      Origin = '"Facturas"."Monto_Interes_Cumplido"'
      Precision = 12
      Size = 2
    end
    object qrFacturasBalance_Capital: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Capital'
      Origin = '"Facturas"."Balance_Capital"'
      Precision = 12
      Size = 2
    end
    object qrFacturasBalance_Interes: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Interes'
      Origin = '"Facturas"."Balance_Interes"'
      Precision = 12
      Size = 2
    end
    object qrFacturasBalance_Otros: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Otros'
      Origin = '"Facturas"."Balance_Otros"'
      Precision = 12
      Size = 2
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
  end
  object prFacturas: TDataSetProvider
    DataSet = qrFacturas
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poUseQuoteChar]
    Left = 144
    Top = 55
  end
  object qrDetalles_Factura: TIBQuery
    DataSource = lnkFacturas
    SQL.Strings = (
      'Select  * From  "Detalles_Factura"'
      'Where "Proceso" = :Proceso'
      'Order By "Registro"')
    UniDirectional = True
    Left = 44
    Top = 103
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
    object qrDetalles_FacturaCantidad: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Cantidad'
      Origin = '"Detalles_Factura"."Cantidad"'
      DisplayFormat = '#,#0.00'
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
    object qrDetalles_FacturaUnidades: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Unidades'
      Origin = '"Detalles_Factura"."Unidades"'
      Precision = 12
      Size = 2
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
      Size = 25
    end
    object qrDetalles_FacturaID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Detalles_Factura"."ID"'
      Size = 50
    end
  end
  object lnkFacturas: TDataSource
    DataSet = qrFacturas
    Left = 144
    Top = 104
  end
  object qrDetalle_Pago_Factura: TIBQuery
    DataSource = lnkFacturas
    SQL.Strings = (
      'Select  * From  "Detalle_Pago_Factura"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 44
    Top = 151
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
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Origin = '"Detalle_Pago_Factura"."Pendiente"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalle_Pago_FacturaID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Detalle_Pago_Factura"."ID"'
      Size = 50
    end
  end
  object qrCuotas_Factura: TIBQuery
    DataSource = lnkFacturas
    SQL.Strings = (
      'Select  * From  "Cuotas"'
      'Where "Proceso" = :Proceso'
      'Order By "Numero"')
    UniDirectional = True
    Left = 44
    Top = 199
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
    object qrCuotas_FacturaID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Cuotas"."ID"'
      Size = 50
    end
  end
  object qrSeriales_Factura: TIBQuery
    DataSource = lnkDetalles_Factura
    SQL.Strings = (
      'Select  * From "Seriales_Despachados"'
      'Where  "Proc_Detalle"= :Proc_Detalle')
    UniDirectional = True
    Left = 44
    Top = 247
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
      Size = 25
    end
    object qrSeriales_FacturaSerial: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe Introducir el # de Serial'
      FieldName = 'Serial'
      Origin = '"Seriales"."Serial"'
      Size = 100
    end
    object qrSeriales_FacturaProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Seriales_Recibidos"."Proceso"'
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
    Left = 144
    Top = 151
  end
  object qrCuotas_Facturas: TIBQuery
    SQL.Strings = (
      'Select  * From  "Cuotas"'
      'Where "Proceso" = :Proceso'
      'Order By "Prioridad","Numero"')
    UniDirectional = True
    Left = 48
    Top = 310
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
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Otros'
      Origin = '"Cuotas"."Otros"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrCuotas_FacturasOtros_Pendiente: TIBBCDField
      AutoGenerateValue = arDefault
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
    Left = 152
    Top = 307
  end
  object prFacturas_Seriales: TDataSetProvider
    DataSet = qrFacturas_Seriales
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 424
    Top = 383
  end
  object qrFacturas_Seriales: TIBQuery
    SQL.Strings = (
      'Select  * From  "Facturas"'
      'Where ("Total_Seriales" - "Seriales_Registrados") > 0')
    UniDirectional = True
    Left = 324
    Top = 383
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
    object qrFacturas_SerialesSubTotal: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SubTotal'
      Origin = '"Facturas"."SubTotal"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_SerialesTotalNeto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TotalNeto'
      Origin = '"Facturas"."TotalNeto"'
      Precision = 12
      Size = 2
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
    object qrFacturas_SerialesImpuesto_Global: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto_Global'
      Origin = '"Facturas"."Impuesto_Global"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_SerialesValor_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Facturas"."Valor_Impuesto"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_SerialesValor_Impuesto_Detalle: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto_Detalle'
      Origin = '"Facturas"."Valor_Impuesto_Detalle"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_SerialesTotal_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Facturas"."Total_Impuesto"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_SerialesDescuento_Global: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Global'
      Origin = '"Facturas"."Descuento_Global"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_SerialesValor_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Facturas"."Valor_Descuento"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_SerialesValor_Descuento_Detalle: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento_Detalle'
      Origin = '"Facturas"."Valor_Descuento_Detalle"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_SerialesTotal_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Facturas"."Total_Descuento"'
      Precision = 12
      Size = 2
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
    object qrFacturas_SerialesPagado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado'
      Origin = '"Facturas"."Pagado"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_SerialesPendiente: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Origin = '"Facturas"."Pendiente"'
      Precision = 12
      Size = 2
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
    object qrFacturas_SerialesTotal_Efectivo_Recibido: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo_Recibido'
      Origin = '"Facturas"."Total_Efectivo_Recibido"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_SerialesTotal_Efectivo_Devuelto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo_Devuelto'
      Origin = '"Facturas"."Total_Efectivo_Devuelto"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_SerialesStatus: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Facturas"."Status"'
      Size = 15
    end
    object qrFacturas_SerialesTotal_Costo: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Origin = '"Facturas"."Total_Costo"'
      Precision = 12
      Size = 2
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
    object qrFacturas_SerialesTotal_Restante: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Restante'
      Origin = '"Facturas"."Total_Restante"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_SerialesInteres: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Interes'
      Origin = '"Facturas"."Interes"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_SerialesModalidad: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Modalidad'
      Origin = '"Facturas"."Modalidad"'
      Size = 25
    end
    object qrFacturas_SerialesValor_Interes: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Interes'
      Origin = '"Facturas"."Valor_Interes"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_SerialesValor_Capital: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Capital'
      Origin = '"Facturas"."Valor_Capital"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_SerialesValor_Cuotas: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Cuotas'
      Origin = '"Facturas"."Valor_Cuotas"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_SerialesGasto_Cierre: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Gasto_Cierre'
      Origin = '"Facturas"."Gasto_Cierre"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_SerialesValor_Gasto_Cierre: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Gasto_Cierre'
      Origin = '"Facturas"."Valor_Gasto_Cierre"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_SerialesVence_Financiamiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vence_Financiamiento'
      Origin = '"Facturas"."Vence_Financiamiento"'
    end
    object qrFacturas_SerialesTotal_Estimado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Estimado'
      Origin = '"Facturas"."Total_Estimado"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_SerialesMonto_Financiado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Financiado'
      Origin = '"Facturas"."Monto_Financiado"'
      Precision = 12
      Size = 2
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
    object qrFacturas_SerialesInicial: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Inicial'
      Origin = '"Facturas"."Inicial"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_SerialesConduce: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Conduce'
      Origin = '"Facturas"."Conduce"'
      Size = 25
    end
    object qrFacturas_SerialesDebitado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Debitado'
      Origin = '"Facturas"."Debitado"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_SerialesAcreditado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Acreditado'
      Origin = '"Facturas"."Acreditado"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_SerialesBalance: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Origin = '"Facturas"."Balance"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_SerialesMora: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Mora'
      Origin = '"Facturas"."Mora"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_SerialesMonto_Vencido: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Vencido'
      Origin = '"Facturas"."Monto_Vencido"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_SerialesCuotas_Vencidas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Cuotas_Vencidas'
      Origin = '"Facturas"."Cuotas_Vencidas"'
    end
    object qrFacturas_SerialesMonto_Interes_Cumplido: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Interes_Cumplido'
      Origin = '"Facturas"."Monto_Interes_Cumplido"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_SerialesBalance_Capital: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Capital'
      Origin = '"Facturas"."Balance_Capital"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_SerialesBalance_Interes: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Interes'
      Origin = '"Facturas"."Balance_Interes"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_SerialesBalance_Otros: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Otros'
      Origin = '"Facturas"."Balance_Otros"'
      Precision = 12
      Size = 2
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
  end
  object qrCompras_Seriales: TIBQuery
    SQL.Strings = (
      'Select  * From  "Compra_Productos"'
      'Where ("Total_Seriales" - "Seriales_Registrados") > 0')
    UniDirectional = True
    Left = 324
    Top = 263
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
    object qrCompras_SerialesSubTotal: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SubTotal'
      Origin = '"Compra_Productos"."SubTotal"'
      Precision = 12
      Size = 2
    end
    object qrCompras_SerialesTotalNeto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TotalNeto'
      Origin = '"Compra_Productos"."TotalNeto"'
      Precision = 12
      Size = 2
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
    object qrCompras_SerialesImpuesto_Global: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto_Global'
      Origin = '"Compra_Productos"."Impuesto_Global"'
      Precision = 12
      Size = 2
    end
    object qrCompras_SerialesValor_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Compra_Productos"."Valor_Impuesto"'
      Precision = 12
      Size = 2
    end
    object qrCompras_SerialesValor_Impuesto_Detalle: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto_Detalle'
      Origin = '"Compra_Productos"."Valor_Impuesto_Detalle"'
      Precision = 12
      Size = 2
    end
    object qrCompras_SerialesTotal_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Compra_Productos"."Total_Impuesto"'
      Precision = 12
      Size = 2
    end
    object qrCompras_SerialesDescuento_Global: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Global'
      Origin = '"Compra_Productos"."Descuento_Global"'
      Precision = 12
      Size = 2
    end
    object qrCompras_SerialesValor_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Compra_Productos"."Valor_Descuento"'
      Precision = 12
      Size = 2
    end
    object qrCompras_SerialesValor_Descuento_Detalle: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento_Detalle'
      Origin = '"Compra_Productos"."Valor_Descuento_Detalle"'
      Precision = 12
      Size = 2
    end
    object qrCompras_SerialesTotal_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Compra_Productos"."Total_Descuento"'
      Precision = 12
      Size = 2
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
    object qrCompras_SerialesPagado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado'
      Origin = '"Compra_Productos"."Pagado"'
      Precision = 12
      Size = 2
    end
    object qrCompras_SerialesPendiente: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Origin = '"Compra_Productos"."Pendiente"'
      Precision = 12
      Size = 2
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
  end
  object prCompras_Seriales: TDataSetProvider
    DataSet = qrCompras_Seriales
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 424
    Top = 263
  end
  object qrFacturas_Cliente: TIBQuery
    SQL.Strings = (
      'Select  * From  "Facturas"'
      'Where "Cliente" = :Cliente'
      'Order By "Numero"')
    UniDirectional = True
    Left = 548
    Top = 319
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
    object qrFacturas_ClienteConduce: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Conduce'
      Origin = '"Facturas"."Conduce"'
      Size = 25
    end
    object qrFacturas_ClienteDebitado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Debitado'
      Origin = '"Facturas"."Debitado"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_ClienteAcreditado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Acreditado'
      Origin = '"Facturas"."Acreditado"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_ClienteBalance: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance'
      Origin = '"Facturas"."Balance"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_ClienteMora: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Mora'
      Origin = '"Facturas"."Mora"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_ClienteMonto_Vencido: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Vencido'
      Origin = '"Facturas"."Monto_Vencido"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_ClienteCuotas_Vencidas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Cuotas_Vencidas'
      Origin = '"Facturas"."Cuotas_Vencidas"'
    end
    object qrFacturas_ClienteMonto_Interes_Cumplido: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto_Interes_Cumplido'
      Origin = '"Facturas"."Monto_Interes_Cumplido"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_ClienteBalance_Capital: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Capital'
      Origin = '"Facturas"."Balance_Capital"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_ClienteBalance_Interes: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Interes'
      Origin = '"Facturas"."Balance_Interes"'
      Precision = 12
      Size = 2
    end
    object qrFacturas_ClienteBalance_Otros: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Balance_Otros'
      Origin = '"Facturas"."Balance_Otros"'
      Precision = 12
      Size = 2
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
  end
  object prFacturas_Cliente: TDataSetProvider
    DataSet = qrFacturas_Cliente
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 662
    Top = 319
  end
  object qrPagos_Clientes: TIBQuery
    SQL.Strings = (
      'Select  * From  "Pagos_Clientes"'
      'Where "Proceso" = :Proceso Or  "Cliente" = :Cliente')
    UniDirectional = True
    Left = 548
    Top = 367
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
    object qrPagos_ClientesID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Pagos_Clientes"."ID"'
      Size = 50
    end
  end
  object prPagos_Clientes: TDataSetProvider
    DataSet = qrPagos_Clientes
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 662
    Top = 367
  end
  object lnkPagos_Clientes: TDataSource
    DataSet = qrPagos_Clientes
    Left = 662
    Top = 416
  end
  object qrDetalle_Pago_Facturas: TIBQuery
    DataSource = lnkPagos_Clientes
    SQL.Strings = (
      'Select  * From  "Detalle_Pagos_Clientes"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 548
    Top = 415
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
    object qrDetalle_Pago_FacturasID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Detalle_Pagos_Clientes"."ID"'
      Size = 50
    end
  end
  object qrOrdenes_Compra: TIBQuery
    SQL.Strings = (
      'Select  * From  "Ordenes_Compra"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 48
    Top = 415
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
    Left = 152
    Top = 415
  end
  object qrDetalles_Orden_Compra: TIBQuery
    DataSource = lnkOrdenes_Compra
    SQL.Strings = (
      'Select  * From  "Detalles_Orden_Compra"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 48
    Top = 463
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
    object qrDetalles_Orden_CompraID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Detalles_Orden_Compra"."ID"'
      Size = 50
    end
  end
  object lnkOrdenes_Compra: TDataSource
    DataSet = qrOrdenes_Compra
    Left = 152
    Top = 463
  end
end
