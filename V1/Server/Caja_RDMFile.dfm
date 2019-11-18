object Caja_RDM: TCaja_RDM
  OldCreateOrder = False
  Height = 553
  Width = 764
  object prApertura_Caja: TDataSetProvider
    DataSet = qrApertura_Caja
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 150
    Top = 55
  end
  object qrApertura_Caja: TIBQuery
    SQL.Strings = (
      'Select  * From "Apertura_Caja"'
      'Where '
      '(ID = :ID) And '
      '("Usuario" = :Usuario) And '
      '("Fecha" = :Fecha) And '
      '("Abierto" = :Abierto)')
    UniDirectional = True
    Left = 36
    Top = 55
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
  end
  object prDenominaciones_Moneda: TDataSetProvider
    DataSet = qrDenominaciones_Moneda
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 464
    Top = 47
  end
  object qrDenominaciones_Moneda: TIBQuery
    SQL.Strings = (
      'Select  * From  "Denominaciones_Moneda"'
      'Order By "Moneda", "Denominacion" Descending')
    UniDirectional = True
    Left = 364
    Top = 47
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
    Left = 464
    Top = 95
  end
  object qrCuadre_Caja: TIBQuery
    SQL.Strings = (
      'Select  * From  "Cuadre_Caja"'
      'Where "Proceso" = :Proceso')
    UniDirectional = True
    Left = 364
    Top = 95
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
    object qrCuadre_CajaID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Cuadre_Caja"."ID"'
      Size = 50
    end
  end
  object qrDetalle_Cuadre: TIBQuery
    DataSource = lnkCuadre_Caja
    SQL.Strings = (
      'Select  * From "Detalle_Cuadre"'
      'Where "Proceso" = :Proceso'
      'Order By "Moneda", "Denominacion"')
    UniDirectional = True
    Left = 364
    Top = 144
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
    object qrDetalle_CuadreID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Detalle_Cuadre"."ID"'
      Size = 50
    end
  end
  object lnkCuadre_Caja: TDataSource
    DataSet = qrCuadre_Caja
    Left = 464
    Top = 144
  end
  object prRetiros_Caja: TDataSetProvider
    DataSet = qrRetiros_Caja
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 464
    Top = 196
  end
  object qrRetiros_Caja: TIBQuery
    SQL.Strings = (
      'Select  * From "Retiros_Caja"'
      'Where "Numero" = :Numero')
    UniDirectional = True
    Left = 364
    Top = 196
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
    object qrRetiros_CajaID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = '"Retiros_Caja"."ID"'
      Size = 50
    end
  end
  object qrDesgloceEfectivo: TIBQuery
    SQL.Strings = (
      'Select Distinct '
      '"Forma_Pago", '
      'ID,'
      'Sum("Valor_Recibido") Total_Recibido, '
      'Sum("Valor_Devolver")Total_Devuelto From '
      '"Detalle_Pago_Factura" '
      'Where ("Fecha" BetWeen :F1 And :F2) '
      'Group By ID,"Forma_Pago"'
      'Order By ID,"Forma_Pago"')
    UniDirectional = True
    Left = 372
    Top = 271
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
    object qrDesgloceEfectivoID: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      ProviderFlags = []
      Size = 50
    end
  end
  object prDesgloceEfectivo: TDataSetProvider
    DataSet = qrDesgloceEfectivo
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 486
    Top = 272
  end
  object qrFormas_Pago: TIBQuery
    SQL.Strings = (
      'Select  * From  "Formas_Pago"'
      'Order By "Descripcion"')
    UniDirectional = True
    Left = 396
    Top = 33
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
    Left = 496
    Top = 33
  end
end
