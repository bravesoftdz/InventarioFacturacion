object Child_1: TChild_1
  OldCreateOrder = False
  Height = 262
  Width = 393
  object ComunesTransaction: TIBTransaction
    DefaultDatabase = ComunesDb
    IdleTimer = 300
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saCommit
    Left = 128
    Top = 16
  end
  object ComunesDb: TIBDatabase
    DatabaseName = 'C:\Development\Database\Interbase\Inventory&Sales\Comunes.sys'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'sql_role_name=Admin')
    LoginPrompt = False
    DefaultTransaction = ComunesTransaction
    Left = 24
    Top = 16
  end
  object qrFacturasComunes: TIBQuery
    Database = ComunesDb
    Transaction = ComunesTransaction
    SQL.Strings = (
      'Select  * From  "Facturas"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 28
    Top = 71
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    object qrFacturasComunesNumero: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero'
      Origin = '"Facturas"."Numero"'
      DisplayFormat = #39'F'#39'0000000000'
    end
    object qrFacturasComunesProceso: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Facturas"."Proceso"'
      Size = 25
    end
    object qrFacturasComunesNombre_Cliente: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Cliente'
      Origin = '"Facturas"."Nombre_Cliente"'
      Size = 100
    end
    object qrFacturasComunesCondicion: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Contado'#39
      FieldName = 'Condicion'
      Origin = '"Facturas"."Condicion"'
      Size = 25
    end
    object qrFacturasComunesFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Facturas"."Fecha"'
    end
    object qrFacturasComunesHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Facturas"."Hora"'
    end
    object qrFacturasComunesConcepto_Factura: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto_Factura'
      Origin = '"Facturas"."Concepto_Factura"'
      Size = 100
    end
    object qrFacturasComunesReferencia: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Referencia'
      Origin = '"Facturas"."Referencia"'
      Size = 25
    end
    object qrFacturasComunesSubTotal: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'SubTotal'
      Origin = '"Facturas"."SubTotal"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturasComunesTotal_Costo: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Costo'
      Origin = '"Facturas"."Total_Costo"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturasComunesTotalNeto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'TotalNeto'
      Origin = '"Facturas"."TotalNeto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturasComunesComentario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario'
      Origin = '"Facturas"."Comentario"'
      Size = 255
    end
    object qrFacturasComunesFecha_Validacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Validacion'
      Origin = '"Facturas"."Fecha_Validacion"'
    end
    object qrFacturasComunesFecha_Cierre: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Cierre'
      Origin = '"Facturas"."Fecha_Cierre"'
    end
    object qrFacturasComunesUsuario: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = '"Facturas"."Usuario"'
      Size = 100
    end
    object qrFacturasComunesValidado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Validado'
      Origin = '"Facturas"."Validado"'
    end
    object qrFacturasComunesCerrado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Cerrado'
      Origin = '"Facturas"."Cerrado"'
    end
    object qrFacturasComunesImpuesto_Global: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Impuesto_Global'
      Origin = '"Facturas"."Impuesto_Global"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrFacturasComunesValor_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Valor_Impuesto'
      Origin = '"Facturas"."Valor_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturasComunesValor_Impuesto_Detalle: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Valor_Impuesto_Detalle'
      Origin = '"Facturas"."Valor_Impuesto_Detalle"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturasComunesTotal_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Total_Impuesto'
      Origin = '"Facturas"."Total_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturasComunesDescuento_Global: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Descuento_Global'
      Origin = '"Facturas"."Descuento_Global"'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object qrFacturasComunesValor_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Valor_Descuento'
      Origin = '"Facturas"."Valor_Descuento"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturasComunesValor_Descuento_Detalle: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Valor_Descuento_Detalle'
      Origin = '"Facturas"."Valor_Descuento_Detalle"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturasComunesTotal_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Total_Descuento'
      Origin = '"Facturas"."Total_Descuento"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturasComunesTerminos: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'Terminos'
      Origin = '"Facturas"."Terminos"'
    end
    object qrFacturasComunesVencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento'
      Origin = '"Facturas"."Vencimiento"'
    end
    object qrFacturasComunesPagado: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Pagado'
      Origin = '"Facturas"."Pagado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturasComunesPendiente: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Pendiente'
      Origin = '"Facturas"."Pendiente"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturasComunesUltimoPago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'UltimoPago'
      Origin = '"Facturas"."UltimoPago"'
    end
    object qrFacturasComunesTotal_Efectivo_Recibido: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Total_Efectivo_Recibido'
      Origin = '"Facturas"."Total_Efectivo_Recibido"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturasComunesTotal_Efectivo_Devuelto: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Total_Efectivo_Devuelto'
      Origin = '"Facturas"."Total_Efectivo_Devuelto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrFacturasComunesCliente: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe Seleccionar un Cliente para la Factura'
      DefaultExpression = #39'000-0000000-0'#39
      FieldName = 'Cliente'
      Origin = '"Facturas"."Cliente"'
      Size = 25
    end
    object qrFacturasComunesStatus: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'ABIERTO'#39
      FieldName = 'Status'
      Origin = '"Facturas"."Status"'
      Size = 15
    end
    object qrFacturasComunesTipo_Factura: TIBStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39'Detalle'#39
      FieldName = 'Tipo_Factura'
      Origin = '"Facturas"."Tipo_Factura"'
      Size = 15
    end
    object qrFacturasComunesTipo_NCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_NCF'
      Origin = '"Facturas"."Tipo_NCF"'
      Size = 2
    end
    object qrFacturasComunesNCF: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCF'
      Origin = '"Facturas"."NCF"'
      Size = 100
    end
  end
  object prFacturasComunes: TDataSetProvider
    DataSet = qrFacturasComunes
    Options = [poIncFieldProps, poUseQuoteChar]
    Left = 128
    Top = 71
  end
  object qrDetalles_Factura: TIBQuery
    Database = ComunesDb
    Transaction = ComunesTransaction
    DataSource = lnkFacturasComunes
    SQL.Strings = (
      'Select  * From  "Detalles_Factura"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 28
    Top = 119
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
        Size = 26
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
  end
  object lnkFacturasComunes: TDataSource
    DataSet = qrFacturasComunes
    Left = 128
    Top = 120
  end
  object qrDetalle_Pago_Factura: TIBQuery
    Database = ComunesDb
    Transaction = ComunesTransaction
    DataSource = lnkFacturasComunes
    SQL.Strings = (
      'Select  * From  "Detalle_Pago_Factura"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 28
    Top = 167
    ParamData = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
        Size = 26
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
  object TApplyDS: TwwClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Proceso'
        ParamType = ptInput
      end>
    ProviderName = 'prFacturasComunes'
    ValidateWithMask = True
    Left = 240
    Top = 16
    object TApplyDSNumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
    end
    object TApplyDSProceso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Size = 25
    end
    object TApplyDSNombre_Cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre_Cliente'
      Size = 100
    end
    object TApplyDSCondicion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Condicion'
      Size = 25
    end
    object TApplyDSFecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
    end
    object TApplyDSHora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
    end
    object TApplyDSConcepto_Factura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto_Factura'
      Size = 100
    end
    object TApplyDSReferencia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Referencia'
      Size = 25
    end
    object TApplyDSSubTotal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SubTotal'
      Precision = 12
      Size = 2
    end
    object TApplyDSTotal_Costo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Costo'
      Precision = 12
      Size = 2
    end
    object TApplyDSTotalNeto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TotalNeto'
      Precision = 12
      Size = 2
    end
    object TApplyDSComentario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Comentario'
      Size = 255
    end
    object TApplyDSFecha_Validacion: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Validacion'
    end
    object TApplyDSFecha_Cierre: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Cierre'
    end
    object TApplyDSUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Size = 100
    end
    object TApplyDSValidado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Validado'
    end
    object TApplyDSCerrado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Cerrado'
    end
    object TApplyDSImpuesto_Global: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto_Global'
      Precision = 12
      Size = 2
    end
    object TApplyDSValor_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Precision = 12
      Size = 2
    end
    object TApplyDSValor_Impuesto_Detalle: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto_Detalle'
      Precision = 12
      Size = 2
    end
    object TApplyDSTotal_Impuesto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Precision = 12
      Size = 2
    end
    object TApplyDSDescuento_Global: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Global'
      Precision = 12
      Size = 2
    end
    object TApplyDSValor_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Precision = 12
      Size = 2
    end
    object TApplyDSValor_Descuento_Detalle: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento_Detalle'
      Precision = 12
      Size = 2
    end
    object TApplyDSTotal_Descuento: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Precision = 12
      Size = 2
    end
    object TApplyDSTerminos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Terminos'
    end
    object TApplyDSVencimiento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Vencimiento'
    end
    object TApplyDSPagado: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado'
      Precision = 12
      Size = 2
    end
    object TApplyDSPendiente: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Precision = 12
      Size = 2
    end
    object TApplyDSUltimoPago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'UltimoPago'
    end
    object TApplyDSTotal_Efectivo_Recibido: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo_Recibido'
      Precision = 12
      Size = 2
    end
    object TApplyDSTotal_Efectivo_Devuelto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo_Devuelto'
      Precision = 12
      Size = 2
    end
    object TApplyDSCliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Size = 25
    end
    object TApplyDSStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Size = 15
    end
    object TApplyDSTipo_Factura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Factura'
      Size = 15
    end
    object TApplyDSTipo_NCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_NCF'
      Size = 2
    end
    object TApplyDSNCF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCF'
      Size = 100
    end
    object TApplyDSqrDetalle_Pago_Factura: TDataSetField
      AutoGenerateValue = arDefault
      FieldName = 'qrDetalle_Pago_Factura'
    end
    object TApplyDSqrDetalles_Factura: TDataSetField
      AutoGenerateValue = arDefault
      FieldName = 'qrDetalles_Factura'
    end
  end
end
