object CtasXPagar_RDM: TCtasXPagar_RDM
  OldCreateOrder = False
  Height = 541
  Width = 712
  object qrFacturas_Proveedor: TIBQuery
    SQL.Strings = (
      'Select  * From  "Compra_Productos"'
      'Where "Proveedor" = :Proveedor'
      'Order By "Numero"')
    UniDirectional = True
    Left = 40
    Top = 55
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
  end
  object prFacturas_Proveedor: TDataSetProvider
    DataSet = qrFacturas_Proveedor
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 144
    Top = 55
  end
end
