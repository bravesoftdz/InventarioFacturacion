object CtasXCobrar_RDM: TCtasXCobrar_RDM
  OldCreateOrder = False
  Height = 514
  Width = 629
  object qrNotas_Credito: TIBQuery
    SQL.Strings = (
      'Select  * From "Notas_Credito"'
      'Where "Proceso" = :Proceso Or  "Cliente" = :Cliente')
    UniDirectional = True
    Left = 92
    Top = 47
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
    object qrNotas_CreditoID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Notas_Credito"."ID"'
      Size = 50
    end
  end
  object prNotas_Credito: TDataSetProvider
    DataSet = qrNotas_Credito
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 192
    Top = 47
  end
  object lnkNotas_Credito: TDataSource
    DataSet = qrNotas_Credito
    Left = 192
    Top = 92
  end
  object qrDetalle_Notas_Credito: TIBQuery
    DataSource = lnkNotas_Credito
    SQL.Strings = (
      'Select  * From "Detalle_Notas_Credito"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 92
    Top = 92
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
    object qrDetalle_Notas_CreditoID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Detalle_Notas_Credito"."ID"'
      Size = 50
    end
  end
  object qrListadoPagos: TIBQuery
    SQL.Strings = (
      'Select  * From "Pagos_Clientes"'
      'Where "Fecha" Between :F1 And :F2'
      'Order By "Fecha", "Hora"')
    UniDirectional = True
    Left = 108
    Top = 261
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
    object qrListadoPagosID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Pagos_Clientes"."ID"'
      Size = 50
    end
  end
  object prListadoPagos: TDataSetProvider
    DataSet = qrListadoPagos
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 222
    Top = 262
  end
  object IBQuery1: TIBQuery
    SQL.Strings = (
      'Select  * From "Pagos_Clientes"'
      'Where "Fecha" Between :F1 And :F2'
      'Order By "Fecha", "Hora"')
    UniDirectional = True
    Left = 108
    Top = 261
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
    object IBStringField1: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Proceso'
      Origin = '"Pagos_Clientes"."Proceso"'
      Size = 25
    end
    object IntegerField1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = '"Pagos_Clientes"."Numero"'
      DisplayFormat = #39'R-'#39'0000000000'
    end
    object DateField1: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha'
      Origin = '"Pagos_Clientes"."Fecha"'
    end
    object TimeField1: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Hora'
      Origin = '"Pagos_Clientes"."Hora"'
    end
    object IBStringField2: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = '"Pagos_Clientes"."Cliente"'
      Size = 25
    end
    object IBStringField3: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Factura'
      Origin = '"Pagos_Clientes"."Factura"'
      Size = 25
    end
    object IBBCDField1: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Monto'
      Origin = '"Pagos_Clientes"."Monto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object IBStringField4: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto'
      Origin = '"Pagos_Clientes"."Concepto"'
      Size = 100
    end
    object IBBCDField2: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pagado_Capital'
      Origin = '"Pagos_Clientes"."Pagado_Capital"'
      currency = True
      Precision = 12
      Size = 2
    end
    object IBBCDField3: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pagado_Interes'
      Origin = '"Pagos_Clientes"."Pagado_Interes"'
      currency = True
      Precision = 12
      Size = 2
    end
    object IBBCDField4: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pagado_Mora'
      Origin = '"Pagos_Clientes"."Pagado_Mora"'
      currency = True
      Precision = 12
      Size = 2
    end
    object IBBCDField5: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Pagado_Otros'
      Origin = '"Pagos_Clientes"."Pagado_Otros"'
      currency = True
      Precision = 12
      Size = 2
    end
    object IBBCDField6: TIBBCDField
      AutoGenerateValue = arDefault
      DefaultExpression = '0.00'
      FieldName = 'Total_Pagado'
      Origin = '"Pagos_Clientes"."Total_Pagado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object IBStringField5: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Recibido_Por'
      Origin = '"Pagos_Clientes"."Recibido_Por"'
      Size = 100
    end
    object IBStringField6: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '"Pagos_Clientes"."Status"'
      Size = 15
    end
    object IBStringField7: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Pagos_Clientes"."ID"'
      Size = 50
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = IBQuery1
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 222
    Top = 262
  end
  object qrNotas_Debito: TIBQuery
    SQL.Strings = (
      'Select  * From "Notas_Debito"'
      'Where "Proceso" = :Proceso Or  "Cliente" = :Cliente')
    UniDirectional = True
    Left = 380
    Top = 35
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
    object qrNotas_DebitoSubTotal: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SubTotal'
      Origin = '"Notas_Debito"."SubTotal"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrNotas_DebitoTotalNeto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TotalNeto'
      Origin = '"Notas_Debito"."TotalNeto"'
      currency = True
      Precision = 12
      Size = 2
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
    object qrNotas_DebitoImpuesto_Global: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Impuesto_Global'
      Origin = '"Notas_Debito"."Impuesto_Global"'
      Precision = 12
      Size = 2
    end
    object qrNotas_DebitoValor_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto'
      Origin = '"Notas_Debito"."Valor_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrNotas_DebitoValor_Impuesto_Detalle: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Impuesto_Detalle'
      Origin = '"Notas_Debito"."Valor_Impuesto_Detalle"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrNotas_DebitoTotal_Impuesto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Impuesto'
      Origin = '"Notas_Debito"."Total_Impuesto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrNotas_DebitoDescuento_Global: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Descuento_Global'
      Origin = '"Notas_Debito"."Descuento_Global"'
      Precision = 12
      Size = 2
    end
    object qrNotas_DebitoValor_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento'
      Origin = '"Notas_Debito"."Valor_Descuento"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrNotas_DebitoValor_Descuento_Detalle: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Descuento_Detalle'
      Origin = '"Notas_Debito"."Valor_Descuento_Detalle"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrNotas_DebitoTotal_Descuento: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Descuento'
      Origin = '"Notas_Debito"."Total_Descuento"'
      currency = True
      Precision = 12
      Size = 2
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
    object qrNotas_DebitoPagado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pagado'
      Origin = '"Notas_Debito"."Pagado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrNotas_DebitoPendiente: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Pendiente'
      Origin = '"Notas_Debito"."Pendiente"'
      currency = True
      Precision = 12
      Size = 2
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
    object qrNotas_DebitoTotal_Efectivo_Recibido: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo_Recibido'
      Origin = '"Notas_Debito"."Total_Efectivo_Recibido"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrNotas_DebitoTotal_Efectivo_Devuelto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Efectivo_Devuelto'
      Origin = '"Notas_Debito"."Total_Efectivo_Devuelto"'
      currency = True
      Precision = 12
      Size = 2
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
  end
  object prNotas_Debito: TDataSetProvider
    DataSet = qrNotas_Debito
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 494
    Top = 35
  end
  object qrDetalles_Notas_Debito: TIBQuery
    DataSource = lnkNotas_Debito
    SQL.Strings = (
      'Select  * From "Cuotas"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 380
    Top = 90
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
    object qrDetalles_Notas_DebitoMonto: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Monto'
      Origin = '"Cuotas"."Monto"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_Notas_DebitoConcepto: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Concepto'
      Origin = '"Cuotas"."Concepto"'
      Size = 100
    end
    object qrDetalles_Notas_DebitoCapital: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Capital'
      Origin = '"Cuotas"."Capital"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_Notas_DebitoCapital_Pendiente: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Capital_Pendiente'
      Origin = '"Cuotas"."Capital_Pendiente"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_Notas_DebitoInteres: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Interes'
      Origin = '"Cuotas"."Interes"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_Notas_DebitoInteres_Pendiente: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Interes_Pendiente'
      Origin = '"Cuotas"."Interes_Pendiente"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_Notas_DebitoMora: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Mora'
      Origin = '"Cuotas"."Mora"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_Notas_DebitoMora_Pendiente: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Mora_Pendiente'
      Origin = '"Cuotas"."Mora_Pendiente"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_Notas_DebitoOtros: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Otros'
      Origin = '"Cuotas"."Otros"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_Notas_DebitoTotal_Pagado: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Pagado'
      Origin = '"Cuotas"."Total_Pagado"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_Notas_DebitoOtros_Pendiente: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Otros_Pendiente'
      Origin = '"Cuotas"."Otros_Pendiente"'
      currency = True
      Precision = 12
      Size = 2
    end
    object qrDetalles_Notas_DebitoTotal_Pendiente: TIBBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total_Pendiente'
      Origin = '"Cuotas"."Total_Pendiente"'
      currency = True
      Precision = 12
      Size = 2
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
    Left = 494
    Top = 90
  end
end
