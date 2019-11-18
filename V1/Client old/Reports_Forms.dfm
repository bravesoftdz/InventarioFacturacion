object ReportsAndForms: TReportsAndForms
  OldCreateOrder = False
  Left = 255
  Top = 24
  Height = 544
  Width = 499
  object PipeVencimientos: TppDBPipeline
    DataSource = Modulo.dVencimientos
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'PipeVencimientos'
    Left = 40
    Top = 16
    object PipeVencimientosppField1: TppField
      FieldAlias = 'Mes'
      FieldName = 'Mes'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object PipeVencimientosppField2: TppField
      FieldAlias = 'Ano'
      FieldName = 'Ano'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object PipeVencimientosppField3: TppField
      FieldAlias = 'Cantidad'
      FieldName = 'Cantidad'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object PipeVencimientosppField4: TppField
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object PipeVencimientosppField5: TppField
      FieldAlias = 'Cod_Generado'
      FieldName = 'Cod_Generado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
  end
  object Labels: TppReport
    AutoStop = False
    DataPipeline = PipeVencimientos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Etiquetas'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 2540
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 25400
    PrinterSetup.mmPaperWidth = 38100
    PrinterSetup.PaperSize = 256
    Template.FileName = 
      '\\Rms-mobile\development\IBProjects\3t-Inventory And Sales\Sourc' +
      'e\Client\Forms\BarCodeLabel_UPC_A.rtm'
    DeviceType = 'Screen'
    Icon.Data = {
      0000010001002020040000000000E80200001600000028000000200000004000
      0000010004000000000000020000000000000000000000000000000000000000
      0000000080000080000000808000800000008000800080800000C0C0C0008080
      80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
      0000000000000000000000008880000000000000000000000000000888880088
      8888888888888888888880889988008888888888888888888888888999900000
      00000000000000000008889999900FFFFFFFFFFFFFFFFFFFFF08899999000FFF
      FFFFFFFFFFFFFFFFFF08999990000FFFFFFFFFFFFFFFFFFFF889999900000FFF
      FFFFFFFFF88888888899999000000FFFFC8C8C88899999999999990000000FFF
      FFFFFF89999999999999980000000FFFFC8C8899997777999999880000000FFF
      FFFF899977FFFF779999880000000FFFFC8C89977F7777F77999880000000FFF
      FFFF99978CC87C7F7999880000000FFFFC889977C77C7C777799880000000FFF
      FFFF9977C7777CCC8799880000000FFFFC889977C7777C77C799880000000FFF
      FFFF9977C77C7C77C799800000000FFFFC8899978CCC7CCC8999800000000FFF
      FFFFF9977F7777F77998800000000FFFFC8C899977FFFF779998800000000FFF
      FFFFFF99997777999908800000000FFFFC8C8C89999999999F08800000000FFF
      FFFFFFFFF99999977708800000000FFFFC8C8C8C888F00000008000000000FFF
      FFFFFFFFFFFF0FFFFF00000000000FFFFC8C8C8C8C8F0FFFF000000000000FFF
      FFFFFFFFFFFF0FFF0000000000000FFFFFFFFFFFFFFF0FF00000000000000FFF
      FFFFFFFFFFFF0F0000000000000000000000000000000000000000000000FFFF
      FFF1FFFFFFE0C0000040C00000010000000100000003000000070000000F0000
      001F0000003F0000003F0000003F0000003F0000003F0000003F0000003F0000
      003F0000003F0000007F0000007F0000007F0000007F0000007F0000007F0000
      007F000000FF000001FF000003FF000007FF00000FFF00001FFF00003FFF}
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    PreviewFormSettings.WindowState = wsMaximized
    Left = 112
    Top = 16
    Version = '7.0'
    mmColumnWidth = 35560
    DataPipelineName = 'PipeVencimientos'
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 21960
      mmPrintPosition = 0
      object Descripcion_Etiqueta: TppDBText
        UserName = 'Descripcion_Etiqueta'
        DataField = 'Descripcion'
        DataPipeline = PipeProductos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeProductos'
        mmHeight = 2646
        mmLeft = 2117
        mmTop = 15610
        mmWidth = 30163
        BandType = 4
      end
      object Nombre_Comp: TppLabel
        UserName = 'Nombre_Comp'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2667
        mmLeft = 2117
        mmTop = 2381
        mmWidth = 30163
        BandType = 4
      end
      object Cod_Generado: TppDBBarCode
        UserName = 'Cod_Generado'
        AutoEncode = True
        AutoSizeFont = False
        BarCodeType = bcCode128
        BarColor = clWindowText
        CalcCheckDigit = False
        DataField = 'Cod_Generado'
        DataPipeline = PipeVencimientos
        Alignment = taCenter
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Unicode MS'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeVencimientos'
        mmHeight = 8731
        mmLeft = 2117
        mmTop = 7408
        mmWidth = 32808
        BandType = 4
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object Tel_Comp: TppLabel
        UserName = 'Tel_Comp'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2667
        mmLeft = 2117
        mmTop = 4763
        mmWidth = 30163
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'Descripcion_Etiqueta1'
        DataField = 'Precio_Venta_Contado'
        DataPipeline = PipeProductos
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeProductos'
        mmHeight = 2646
        mmLeft = 2117
        mmTop = 17992
        mmWidth = 30163
        BandType = 4
      end
    end
  end
  object PipeProductos: TppDBPipeline
    DataSource = Modulo.dProductos
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'PipeProductos'
    Left = 40
    Top = 64
    object PipeProductosppField1: TppField
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField2: TppField
      FieldAlias = 'Barra'
      FieldName = 'Barra'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField3: TppField
      FieldAlias = 'Secuencia'
      FieldName = 'Secuencia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField4: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField5: TppField
      FieldAlias = 'Lector_Codigo'
      FieldName = 'Lector_Codigo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField6: TppField
      FieldAlias = 'Fecha_Registro'
      FieldName = 'Fecha_Registro'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField7: TppField
      FieldAlias = 'Descripcion'
      FieldName = 'Descripcion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField8: TppField
      FieldAlias = 'Departamento'
      FieldName = 'Departamento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField9: TppField
      FieldAlias = 'Categoria'
      FieldName = 'Categoria'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField10: TppField
      FieldAlias = 'Proveedor_Principal'
      FieldName = 'Proveedor_Principal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField11: TppField
      FieldAlias = 'Tipo_Inventario'
      FieldName = 'Tipo_Inventario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField12: TppField
      FieldAlias = 'Tipo_Producto'
      FieldName = 'Tipo_Producto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField13: TppField
      FieldAlias = 'Minimo'
      FieldName = 'Minimo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField14: TppField
      FieldAlias = 'Reorden'
      FieldName = 'Reorden'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField15: TppField
      FieldAlias = 'Ubicacion'
      FieldName = 'Ubicacion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField16: TppField
      FieldAlias = 'Cuenta_Contable'
      FieldName = 'Cuenta_Contable'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField17: TppField
      FieldAlias = 'Metodo_Calculo_Costo'
      FieldName = 'Metodo_Calculo_Costo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField18: TppField
      FieldAlias = 'Ultimo_Precio_Compra'
      FieldName = 'Ultimo_Precio_Compra'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField19: TppField
      FieldAlias = 'Costo_Standar'
      FieldName = 'Costo_Standar'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField20: TppField
      FieldAlias = 'Costo_Promedio'
      FieldName = 'Costo_Promedio'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField21: TppField
      FieldAlias = 'Medida_Compra'
      FieldName = 'Medida_Compra'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField22: TppField
      FieldAlias = 'Unidades_Medida_Compra'
      FieldName = 'Unidades_Medida_Compra'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField23: TppField
      FieldAlias = 'Ultima_Compra'
      FieldName = 'Ultima_Compra'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField24: TppField
      FieldAlias = 'Medida_Venta'
      FieldName = 'Medida_Venta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField25: TppField
      FieldAlias = 'Unidades_Medida_Venta'
      FieldName = 'Unidades_Medida_Venta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField26: TppField
      FieldAlias = 'Aplica_Descuento'
      FieldName = 'Aplica_Descuento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField27: TppField
      FieldAlias = 'Precio_Venta_Contado'
      FieldName = 'Precio_Venta_Contado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField28: TppField
      FieldAlias = 'Precio_Venta_Credito'
      FieldName = 'Precio_Venta_Credito'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField29: TppField
      FieldAlias = 'Precio_Venta_Minimo'
      FieldName = 'Precio_Venta_Minimo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField30: TppField
      FieldAlias = 'Tipo_Beneficio'
      FieldName = 'Tipo_Beneficio'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField31: TppField
      FieldAlias = 'Valor_Beneficio_Contado'
      FieldName = 'Valor_Beneficio_Contado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField32: TppField
      FieldAlias = 'Valor_Beneficio_Credito'
      FieldName = 'Valor_Beneficio_Credito'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField33: TppField
      FieldAlias = 'Paga_Comision'
      FieldName = 'Paga_Comision'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField34: TppField
      FieldAlias = 'Requiere_Numero_Serie'
      FieldName = 'Requiere_Numero_Serie'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField35: TppField
      FieldAlias = 'Paga_Impuesto'
      FieldName = 'Paga_Impuesto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField36: TppField
      FieldAlias = 'Requiere_Fecha_Vencimiento'
      FieldName = 'Requiere_Fecha_Vencimiento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField37: TppField
      FieldAlias = 'Existencia'
      FieldName = 'Existencia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField38: TppField
      FieldAlias = 'Compradas'
      FieldName = 'Compradas'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField39: TppField
      FieldAlias = 'Vendidas'
      FieldName = 'Vendidas'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField40: TppField
      FieldAlias = 'EnPedidos'
      FieldName = 'EnPedidos'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField41: TppField
      FieldAlias = 'EnTransito'
      FieldName = 'EnTransito'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField42: TppField
      FieldAlias = 'Status'
      FieldName = 'Status'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField43: TppField
      FieldAlias = 'Presentacion'
      FieldName = 'Presentacion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField44: TppField
      FieldAlias = 'Fabricante'
      FieldName = 'Fabricante'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField45: TppField
      FieldAlias = 'Fotografia'
      FieldName = 'Fotografia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField46: TppField
      FieldAlias = 'Usuario'
      FieldName = 'Usuario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField47: TppField
      FieldAlias = 'qrSimilares'
      FieldName = 'qrSimilares'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField48: TppField
      FieldAlias = 'qrVencimientos'
      FieldName = 'qrVencimientos'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object PipeProductosppField49: TppField
      FieldAlias = 'Distribuido'
      FieldName = 'Distribuido'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
  end
  object Empty: TppReport
    AutoStop = False
    DataPipeline = PipeProductos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Etiquetas'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 2540
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 25400
    PrinterSetup.mmPaperWidth = 35560
    PrinterSetup.PaperSize = 256
    DeviceType = 'Printer'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    PreviewFormSettings.WindowState = wsMaximized
    ShowPrintDialog = False
    Left = 112
    Top = 64
    Version = '7.0'
    mmColumnWidth = 33020
    DataPipelineName = 'PipeProductos'
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 21960
      mmPrintPosition = 0
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Picture.Data = {
          055449636F6E0000010002002020100000000000E80200002600000010101000
          00000000280100000E0300002800000020000000400000000100040000000000
          8002000000000000000000000000000000000000000000000000800000800000
          0080800080000000800080008080000080808000C0C0C0000000FF0000FF0000
          00FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000007000000000
          0000000000000000000007770000000000000000000000000000777000000000
          0000000000000000000777000800000000000000000000000077700000800000
          0000000000000000077700000008000000000000000000007770000000008000
          0000000000000007770000000000080000000000000000777000000000000080
          0000000000000777000000000000000800000000000077700000000000000000
          8000000000000000000000000000000000000000000000000770000000008000
          0000000000000000077000000000800000000000000000000770000000008000
          0000000000000000077000000000800000000000000000000770000000008000
          0000000000000000077000000000800000000000000000000770000000008000
          0000000000000000077000000000800000000000000000000770000000008000
          0000000000000000077000000000800000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFDFFFFFFF87FFFFFF03FFFFFE01FFFFFC00FFFFF8007FFFF0003FF
          FE0001FFFC0000FFF800007FF000003FFC00001FFF8003FFFF8003FFFF8003FF
          FF8003FFFF8003FFFF8003FFFF8003FFFF8003FFFF8003FFFF8003FFFFE003FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF280000001000000020000000
          0100040000000000C00000000000000000000000000000000000000000000000
          00008000008000000080800080000000800080008080000080808000C0C0C000
          0000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000
          0000000000000000000000000000007700000000000007708000000000007700
          0800000000077000008000000077000000080000003000000000000000007000
          0800000000007000080000000000700008000000000070000800000000007000
          08000000000000000000000000000000000000000000000000000000FFFF0000
          FFFF0000FC7F0000F83F0000F01F0000E00F0000C0070000C0030000F01F0000
          F01F0000F01F0000F01F0000F01F0000F81F0000FFFF0000FFFF0000}
        mmHeight = 13229
        mmLeft = 9790
        mmTop = 4233
        mmWidth = 13229
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Fin de la Impresi'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 14552
        mmWidth = 29898
        BandType = 4
      end
    end
  end
  object PipeDetalles_Compra: TppDBPipeline
    DataSource = Modulo.dDetalles_Compra
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'PipeDetalles_Compra'
    Left = 40
    Top = 120
    object ppField1: TppField
      FieldAlias = 'Mes'
      FieldName = 'Mes'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppField2: TppField
      FieldAlias = 'Ano'
      FieldName = 'Ano'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppField3: TppField
      FieldAlias = 'Cantidad'
      FieldName = 'Cantidad'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppField4: TppField
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppField5: TppField
      FieldAlias = 'Cod_Generado'
      FieldName = 'Cod_Generado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
  end
  object ReporteProductos_Fabricante: TppReport
    AutoStop = False
    DataPipeline = PipeReportes
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Reporte de Productos Clasificado Por Fabircantes'
    PrinterSetup.PaperName = 'Letter (8.5 x 11 in.)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'C:\Development\IBProjects\3t-Inventory And Sales\Source\Client\F' +
      'orms\ProductsReport_NoPriceDetail.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    Left = 232
    Top = 16
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'PipeReportes'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 21167
      mmPrintPosition = 0
      object Nombre_Siglas_Clientes: TppLabel
        OnPrint = ReportHeaderName
        UserName = 'Nombre_Siglas_Clientes'
        AutoSize = False
        Caption = 'Nombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 24
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 9991
        mmLeft = 2117
        mmTop = 265
        mmWidth = 196057
        BandType = 1
      end
      object Direccion_Ciudad_Pais_Clientes: TppLabel
        OnPrint = ReportHeaderAddress
        UserName = 'Direccion_Ciudad_Pais_Clientes'
        AutoSize = False
        Caption = 'Direccion_Ciudad_Pais_Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4318
        mmLeft = 2117
        mmTop = 10583
        mmWidth = 196057
        BandType = 1
      end
      object Telefono_Fax_Rnc_Clientes: TppLabel
        OnPrint = ReportHeaderPhones
        UserName = 'Telefono_Fax_Rnc_Clientes'
        AutoSize = False
        Caption = 'Telefono_Fax_Rnc_Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4318
        mmLeft = 2117
        mmTop = 15081
        mmWidth = 196057
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 20902
      mmPrintPosition = 0
      object Titulo: TppLabel
        UserName = 'Titulo'
        AutoSize = False
        Caption = 'Reporte de Productos Clasificados por Fabricante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6879
        mmLeft = 3440
        mmTop = 1323
        mmWidth = 196057
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Departamento '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4318
        mmLeft = 3440
        mmTop = 9260
        mmWidth = 26670
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Fabricante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4318
        mmLeft = 3440
        mmTop = 13758
        mmWidth = 18881
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Estatus'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 128852
        mmTop = 9260
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Tipo de Inventario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 128852
        mmTop = 13758
        mmWidth = 32808
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 35983
        mmTop = 9260
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 35983
        mmTop = 13758
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 161396
        mmTop = 9260
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 161396
        mmTop = 13758
        mmWidth = 4498
        BandType = 0
      end
      object Depto_Fabricante: TppLabel
        UserName = 'Depto_Fabricante'
        Caption = 'Departamento '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 41010
        mmTop = 9260
        mmWidth = 21960
        BandType = 0
      end
      object Elemento_Fabricante: TppLabel
        UserName = 'Elemento_Fabricante'
        Caption = 'Fabricante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 41010
        mmTop = 13758
        mmWidth = 16140
        BandType = 0
      end
      object Status_Fabricante: TppLabel
        UserName = 'Status_Fabricante'
        Caption = 'Estatus'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 166423
        mmTop = 9260
        mmWidth = 10848
        BandType = 0
      end
      object Tipo_Fabricante: TppLabel
        UserName = 'Tipo_Fabricante'
        Caption = 'Tipo de Inventario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 166423
        mmTop = 13758
        mmWidth = 27517
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'Codigo'
        DataPipeline = PipeReportes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeReportes'
        mmHeight = 3810
        mmLeft = 1323
        mmTop = 529
        mmWidth = 26458
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'Descripcion'
        DataPipeline = PipeReportes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeReportes'
        mmHeight = 3810
        mmLeft = 29104
        mmTop = 529
        mmWidth = 66411
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'Costo_Promedio'
        DataPipeline = PipeReportes
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeReportes'
        mmHeight = 3810
        mmLeft = 100277
        mmTop = 529
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'Existencia'
        DataPipeline = PipeReportes
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeReportes'
        mmHeight = 3704
        mmLeft = 118269
        mmTop = 529
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        DataField = 'Precio_Venta_Contado'
        DataPipeline = PipeReportes
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeReportes'
        mmHeight = 3810
        mmLeft = 141023
        mmTop = 529
        mmWidth = 14552
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'P'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 97367
        mmTop = 529
        mmWidth = 1778
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Cn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3810
        mmLeft = 136790
        mmTop = 529
        mmWidth = 3302
        BandType = 4
      end
      object CostoPromedio: TppVariable
        UserName = 'CostoPromedio'
        AutoSize = False
        CalcOrder = 0
        DataType = dtCurrency
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        OnCalc = CostoPromedioCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 156634
        mmTop = 529
        mmWidth = 20902
        BandType = 4
      end
      object PrecioContado: TppVariable
        UserName = 'PrecioContado'
        AutoSize = False
        CalcOrder = 1
        DataType = dtCurrency
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        OnCalc = PrecioContadoCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 178594
        mmTop = 529
        mmWidth = 20902
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 1852
        mmTop = 265
        mmWidth = 200555
        BandType = 8
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 39952
        BandType = 8
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 185473
        mmTop = 1323
        mmWidth = 16404
        BandType = 8
      end
      object Usuario: TppLabel
        UserName = 'Usuario'
        Caption = 'ImpresoPor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3895
        mmLeft = 1058
        mmTop = 5556
        mmWidth = 16510
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 15610
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Style = psDot
        ParentWidth = True
        Weight = 1.000000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 2117
        mmWidth = 203200
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'Codigo'
        DataPipeline = PipeReportes
        DisplayFormat = '#,#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'PipeReportes'
        mmHeight = 3969
        mmLeft = 83079
        mmTop = 5821
        mmWidth = 28575
        BandType = 7
      end
      object TGCostoPromedio: TppVariable
        UserName = 'TGCostoPromedio'
        AutoSize = False
        CalcOrder = 0
        DataType = dtCurrency
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 112448
        mmTop = 10583
        mmWidth = 24077
        BandType = 7
      end
      object TGPrecioContado: TppVariable
        UserName = 'TGPrecioContado'
        AutoSize = False
        CalcOrder = 1
        DataType = dtCurrency
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 173567
        mmTop = 10583
        mmWidth = 24077
        BandType = 7
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        AutoSize = False
        Caption = 'Productos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 112448
        mmTop = 5821
        mmWidth = 59531
        BandType = 7
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        AutoSize = False
        Caption = '( Totales Generales )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 77523
        mmTop = 0
        mmWidth = 48154
        BandType = 7
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        AutoSize = False
        Caption = 'Costo Promedio (P)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 78846
        mmTop = 10583
        mmWidth = 32808
        BandType = 7
      end
      object ppLabel28: TppLabel
        UserName = 'Label201'
        AutoSize = False
        Caption = 'Precio Contado (Cn)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 138377
        mmTop = 10583
        mmWidth = 34396
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'Fabricante'
      DataPipeline = PipeReportes
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'PipeReportes'
      object CabezaGrupo: TppGroupHeaderBand
        BeforePrint = CabezaGrupoBeforePrint
        mmBottomOffset = 0
        mmHeight = 15081
        mmPrintPosition = 0
        object ppLine3: TppLine
          UserName = 'Line3'
          ParentWidth = True
          Weight = 1.000000000000000000
          mmHeight = 3969
          mmLeft = 0
          mmTop = 8731
          mmWidth = 203200
          BandType = 3
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          AutoSize = False
          Caption = 'Codigo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3895
          mmLeft = 1323
          mmTop = 9525
          mmWidth = 26458
          BandType = 3
          GroupNo = 0
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          AutoSize = False
          Caption = 'Descripcion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3895
          mmLeft = 29104
          mmTop = 9525
          mmWidth = 66411
          BandType = 3
          GroupNo = 0
        end
        object ppLabel14: TppLabel
          UserName = 'Label14'
          AutoSize = False
          Caption = 'Costo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3895
          mmLeft = 97367
          mmTop = 9525
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
        end
        object ppLabel17: TppLabel
          UserName = 'Label17'
          AutoSize = False
          Caption = 'Existencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3969
          mmLeft = 118269
          mmTop = 9525
          mmWidth = 17463
          BandType = 3
          GroupNo = 0
        end
        object ppLabel30: TppLabel
          UserName = 'Label30'
          AutoSize = False
          Caption = 'Prec. Venta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3895
          mmLeft = 136790
          mmTop = 9525
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          ParentWidth = True
          Weight = 1.000000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 14023
          mmWidth = 203200
          BandType = 3
          GroupNo = 0
        end
        object ppLabel10: TppLabel
          UserName = 'Label301'
          AutoSize = False
          Caption = 'T. Costo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3895
          mmLeft = 156634
          mmTop = 9525
          mmWidth = 20902
          BandType = 3
          GroupNo = 0
        end
        object ppLabel11: TppLabel
          UserName = 'Label302'
          AutoSize = False
          Caption = 'T. Venta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3895
          mmLeft = 178594
          mmTop = 9525
          mmWidth = 20902
          BandType = 3
          GroupNo = 0
        end
        object NombreFabricante: TppLabel
          UserName = 'NombreFabricante'
          Caption = 'NombreFabricante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Times New Roman'
          Font.Size = 14
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          mmHeight = 5556
          mmLeft = 1323
          mmTop = 0
          mmWidth = 38894
          BandType = 3
          GroupNo = 0
        end
        object Num_Fabricante: TppLabel
          UserName = 'Num_Fabricante'
          Caption = 'Codigo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 1323
          mmTop = 5292
          mmWidth = 8467
          BandType = 3
          GroupNo = 0
        end
      end
      object PieGrupo: TppGroupFooterBand
        AfterPrint = PieGrupoAfterPrint
        mmBottomOffset = 0
        mmHeight = 15610
        mmPrintPosition = 0
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'Codigo'
          DataPipeline = PipeReportes
          DisplayFormat = '#,#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'PipeReportes'
          mmHeight = 3969
          mmLeft = 87577
          mmTop = 6350
          mmWidth = 24342
          BandType = 5
          GroupNo = 0
        end
        object TCostoPromedio: TppVariable
          UserName = 'TCostoPromedio'
          AutoSize = False
          CalcOrder = 0
          DataType = dtCurrency
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 112713
          mmTop = 10848
          mmWidth = 24077
          BandType = 5
          GroupNo = 0
        end
        object TPrecioContado: TppVariable
          UserName = 'TPrecioContado'
          AutoSize = False
          CalcOrder = 1
          DataType = dtCurrency
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 173832
          mmTop = 10848
          mmWidth = 24077
          BandType = 5
          GroupNo = 0
        end
        object ppLabel12: TppLabel
          UserName = 'Label12'
          AutoSize = False
          Caption = 'Productos de '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 113242
          mmTop = 6350
          mmWidth = 23548
          BandType = 5
          GroupNo = 0
        end
        object ppLabel16: TppLabel
          UserName = 'Label16'
          AutoSize = False
          Caption = 'Costo Promedio (P)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 79111
          mmTop = 10848
          mmWidth = 32808
          BandType = 5
          GroupNo = 0
        end
        object ppLabel20: TppLabel
          UserName = 'Label20'
          AutoSize = False
          Caption = 'Precio Contado (Cn)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 138642
          mmTop = 10848
          mmWidth = 34396
          BandType = 5
          GroupNo = 0
        end
        object ppLine5: TppLine
          UserName = 'Line5'
          Pen.Style = psDot
          ParentWidth = True
          Weight = 1.000000000000000000
          mmHeight = 3969
          mmLeft = 0
          mmTop = 2646
          mmWidth = 203200
          BandType = 5
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          AutoSize = False
          Caption = '( Sub-Totales )'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taCentered
          mmHeight = 4763
          mmLeft = 75671
          mmTop = 529
          mmWidth = 51594
          BandType = 5
          GroupNo = 0
        end
        object Nombre_Fabricante: TppLabel
          UserName = 'Nombre_Fabricante'
          Caption = 'Nombre_Fabricante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3895
          mmLeft = 136525
          mmTop = 6350
          mmWidth = 31919
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object PipeReportes: TppDBPipeline
    DataSource = Modulo.dReporter
    OpenDataSource = False
    UserName = 'PipeReportes'
    Left = 40
    Top = 176
    object PipeReportesppField1: TppField
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      SelectOrder = 0
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField2: TppField
      FieldAlias = 'Barra'
      FieldName = 'Barra'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      SelectOrder = 1
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField3: TppField
      FieldAlias = 'Secuencia'
      FieldName = 'Secuencia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      SelectOrder = 3
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField4: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      SelectOrder = 2
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField5: TppField
      FieldAlias = 'Lector_Codigo'
      FieldName = 'Lector_Codigo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField6: TppField
      FieldAlias = 'Fecha_Registro'
      FieldName = 'Fecha_Registro'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      SelectOrder = 30
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField7: TppField
      FieldAlias = 'Descripcion'
      FieldName = 'Descripcion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      SelectOrder = 4
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField8: TppField
      FieldAlias = 'Departamento'
      FieldName = 'Departamento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      SelectOrder = 5
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField9: TppField
      FieldAlias = 'Categoria'
      FieldName = 'Categoria'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      SelectOrder = 6
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField10: TppField
      FieldAlias = 'Proveedor_Principal'
      FieldName = 'Proveedor_Principal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      SelectOrder = 7
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField11: TppField
      FieldAlias = 'Tipo_Inventario'
      FieldName = 'Tipo_Inventario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      SelectOrder = 8
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField12: TppField
      FieldAlias = 'Tipo_Producto'
      FieldName = 'Tipo_Producto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      SelectOrder = 9
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField13: TppField
      FieldAlias = 'Minimo'
      FieldName = 'Minimo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      SelectOrder = 10
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField14: TppField
      FieldAlias = 'Reorden'
      FieldName = 'Reorden'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField15: TppField
      FieldAlias = 'Ubicacion'
      FieldName = 'Ubicacion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField16: TppField
      FieldAlias = 'Cuenta_Contable'
      FieldName = 'Cuenta_Contable'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField17: TppField
      FieldAlias = 'Metodo_Calculo_Costo'
      FieldName = 'Metodo_Calculo_Costo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField18: TppField
      FieldAlias = 'Ultimo_Precio_Compra'
      FieldName = 'Ultimo_Precio_Compra'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      SelectOrder = 17
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField19: TppField
      FieldAlias = 'Costo_Standar'
      FieldName = 'Costo_Standar'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      SelectOrder = 12
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField20: TppField
      FieldAlias = 'Costo_Promedio'
      FieldName = 'Costo_Promedio'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      SelectOrder = 11
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField21: TppField
      FieldAlias = 'Medida_Compra'
      FieldName = 'Medida_Compra'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField22: TppField
      FieldAlias = 'Unidades_Medida_Compra'
      FieldName = 'Unidades_Medida_Compra'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField23: TppField
      FieldAlias = 'Ultima_Compra'
      FieldName = 'Ultima_Compra'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      SelectOrder = 13
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField24: TppField
      FieldAlias = 'Medida_Venta'
      FieldName = 'Medida_Venta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField25: TppField
      FieldAlias = 'Unidades_Medida_Venta'
      FieldName = 'Unidades_Medida_Venta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField26: TppField
      FieldAlias = 'Aplica_Descuento'
      FieldName = 'Aplica_Descuento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField27: TppField
      FieldAlias = 'Precio_Venta_Contado'
      FieldName = 'Precio_Venta_Contado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      SelectOrder = 27
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField28: TppField
      FieldAlias = 'Precio_Venta_Credito'
      FieldName = 'Precio_Venta_Credito'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      SelectOrder = 28
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField29: TppField
      FieldAlias = 'Precio_Venta_Minimo'
      FieldName = 'Precio_Venta_Minimo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      SelectOrder = 29
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField30: TppField
      FieldAlias = 'Tipo_Beneficio'
      FieldName = 'Tipo_Beneficio'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField31: TppField
      FieldAlias = 'Valor_Beneficio_Contado'
      FieldName = 'Valor_Beneficio_Contado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField32: TppField
      FieldAlias = 'Valor_Beneficio_Credito'
      FieldName = 'Valor_Beneficio_Credito'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField33: TppField
      FieldAlias = 'Paga_Comision'
      FieldName = 'Paga_Comision'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      SelectOrder = 24
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField34: TppField
      FieldAlias = 'Requiere_Numero_Serie'
      FieldName = 'Requiere_Numero_Serie'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      SelectOrder = 25
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField35: TppField
      FieldAlias = 'Paga_Impuesto'
      FieldName = 'Paga_Impuesto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      SelectOrder = 18
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField36: TppField
      FieldAlias = 'Requiere_Fecha_Vencimiento'
      FieldName = 'Requiere_Fecha_Vencimiento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      SelectOrder = 26
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField37: TppField
      FieldAlias = 'Existencia'
      FieldName = 'Existencia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      SelectOrder = 14
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField38: TppField
      FieldAlias = 'Compradas'
      FieldName = 'Compradas'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      SelectOrder = 22
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField39: TppField
      FieldAlias = 'Vendidas'
      FieldName = 'Vendidas'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      SelectOrder = 19
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField40: TppField
      FieldAlias = 'EnPedidos'
      FieldName = 'EnPedidos'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      SelectOrder = 20
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField41: TppField
      FieldAlias = 'EnTransito'
      FieldName = 'EnTransito'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      SelectOrder = 21
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField42: TppField
      FieldAlias = 'Status'
      FieldName = 'Status'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      SelectOrder = 23
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField43: TppField
      FieldAlias = 'Presentacion'
      FieldName = 'Presentacion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      SelectOrder = 15
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField44: TppField
      FieldAlias = 'Fabricante'
      FieldName = 'Fabricante'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      SelectOrder = 16
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField45: TppField
      FieldAlias = 'Fotografia'
      FieldName = 'Fotografia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField46: TppField
      FieldAlias = 'Usuario'
      FieldName = 'Usuario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField47: TppField
      FieldAlias = 'qrVencimientos'
      FieldName = 'qrVencimientos'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object PipeReportesppField48: TppField
      FieldAlias = 'qrSimilares'
      FieldName = 'qrSimilares'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
  end
  object PipeFabricante: TppDBPipeline
    DataSource = Modulo.dFabricante
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'PipeFabricante'
    Left = 40
    Top = 224
    object PipeFabricanteppField1: TppField
      FieldAlias = 'Nombre'
      FieldName = 'Nombre'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object PipeFabricanteppField2: TppField
      FieldAlias = 'Representante'
      FieldName = 'Representante'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object PipeFabricanteppField3: TppField
      FieldAlias = 'Cedula_Rnc_Pasaporte'
      FieldName = 'Cedula_Rnc_Pasaporte'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object PipeFabricanteppField4: TppField
      FieldAlias = 'Numero'
      FieldName = 'Numero'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object PipeFabricanteppField5: TppField
      FieldAlias = 'Direccion'
      FieldName = 'Direccion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object PipeFabricanteppField6: TppField
      FieldAlias = 'Pais'
      FieldName = 'Pais'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object PipeFabricanteppField7: TppField
      FieldAlias = 'Ciudad'
      FieldName = 'Ciudad'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object PipeFabricanteppField8: TppField
      FieldAlias = 'Estado'
      FieldName = 'Estado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object PipeFabricanteppField9: TppField
      FieldAlias = 'Sector'
      FieldName = 'Sector'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object PipeFabricanteppField10: TppField
      FieldAlias = 'Status'
      FieldName = 'Status'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object PipeFabricanteppField11: TppField
      FieldAlias = 'Fecha_Registro'
      FieldName = 'Fecha_Registro'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
  end
  object ReporteProductos_Proveedores: TppReport
    AutoStop = False
    DataPipeline = PipeReportes
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Reporte de Productos Clasificado Por Proveedores'
    PrinterSetup.PaperName = 'Letter (8.5 x 11 in.)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'C:\Development\IBProjects\3t-Inventory And Sales\Source\Client\F' +
      'orms\ProductsReport_NoPriceDetail.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    Left = 232
    Top = 64
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'PipeReportes'
    object ppTitleBand2: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 21167
      mmPrintPosition = 0
      object ppLabel35: TppLabel
        OnPrint = ReportHeaderName
        UserName = 'Nombre_Siglas_Clientes'
        AutoSize = False
        Caption = 'Nombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 24
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 9991
        mmLeft = 2117
        mmTop = 265
        mmWidth = 196057
        BandType = 1
      end
      object ppLabel36: TppLabel
        OnPrint = ReportHeaderAddress
        UserName = 'Direccion_Ciudad_Pais_Clientes'
        AutoSize = False
        Caption = 'Direccion_Ciudad_Pais_Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4318
        mmLeft = 2117
        mmTop = 10583
        mmWidth = 196057
        BandType = 1
      end
      object ppLabel37: TppLabel
        OnPrint = ReportHeaderPhones
        UserName = 'Telefono_Fax_Rnc_Clientes'
        AutoSize = False
        Caption = 'Telefono_Fax_Rnc_Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4318
        mmLeft = 2117
        mmTop = 15081
        mmWidth = 196057
        BandType = 1
      end
    end
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 20638
      mmPrintPosition = 0
      object ppLabel38: TppLabel
        UserName = 'Titulo'
        AutoSize = False
        Caption = 'Reporte de Productos Clasificados por Proveedores'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6879
        mmLeft = 3440
        mmTop = 1323
        mmWidth = 196057
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label5'
        Caption = 'Departamento '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4318
        mmLeft = 3440
        mmTop = 9260
        mmWidth = 26670
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label8'
        Caption = 'Proveedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4318
        mmLeft = 3440
        mmTop = 13758
        mmWidth = 18288
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label9'
        Caption = 'Estatus'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 128588
        mmTop = 9260
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label13'
        Caption = 'Tipo de Inventario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 128588
        mmTop = 13758
        mmWidth = 32808
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 35983
        mmTop = 9260
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label32'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 35983
        mmTop = 13758
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label33'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 161132
        mmTop = 9260
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label34'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 161132
        mmTop = 13758
        mmWidth = 4498
        BandType = 0
      end
      object Depto_Proveedor: TppLabel
        UserName = 'Depto_Fabricante'
        Caption = 'Departamento '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 41010
        mmTop = 9260
        mmWidth = 21960
        BandType = 0
      end
      object Elemento_Proveedor: TppLabel
        UserName = 'Elemento_Fabricante'
        Caption = 'Proveedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 41010
        mmTop = 13758
        mmWidth = 15081
        BandType = 0
      end
      object Status_Proveedor: TppLabel
        UserName = 'Status_Fabricante'
        Caption = 'Estatus'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 166159
        mmTop = 9260
        mmWidth = 10848
        BandType = 0
      end
      object Tipo_Proveedor: TppLabel
        UserName = 'Tipo_Fabricante'
        Caption = 'Tipo de Inventario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 166159
        mmTop = 13758
        mmWidth = 27517
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText4: TppDBText
        UserName = 'DBText1'
        DataField = 'Codigo'
        DataPipeline = PipeReportes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeReportes'
        mmHeight = 3810
        mmLeft = 1323
        mmTop = 529
        mmWidth = 26458
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText5'
        DataField = 'Descripcion'
        DataPipeline = PipeReportes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeReportes'
        mmHeight = 3810
        mmLeft = 29104
        mmTop = 529
        mmWidth = 66411
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText12'
        DataField = 'Costo_Promedio'
        DataPipeline = PipeReportes
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeReportes'
        mmHeight = 3810
        mmLeft = 100277
        mmTop = 529
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText15'
        DataField = 'Existencia'
        DataPipeline = PipeReportes
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeReportes'
        mmHeight = 3704
        mmLeft = 118269
        mmTop = 529
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText28'
        DataField = 'Precio_Venta_Contado'
        DataPipeline = PipeReportes
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeReportes'
        mmHeight = 3810
        mmLeft = 141023
        mmTop = 529
        mmWidth = 14552
        BandType = 4
      end
      object ppLabel51: TppLabel
        UserName = 'Label2'
        Caption = 'P'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 97367
        mmTop = 529
        mmWidth = 1778
        BandType = 4
      end
      object ppLabel52: TppLabel
        UserName = 'Label6'
        Caption = 'Cn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3810
        mmLeft = 136790
        mmTop = 529
        mmWidth = 3302
        BandType = 4
      end
      object ppVariable1: TppVariable
        UserName = 'CostoPromedio'
        AutoSize = False
        CalcOrder = 0
        DataType = dtCurrency
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        OnCalc = CostoPromedioCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 156634
        mmTop = 529
        mmWidth = 20902
        BandType = 4
      end
      object ppVariable2: TppVariable
        UserName = 'PrecioContado'
        AutoSize = False
        CalcOrder = 1
        DataType = dtCurrency
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        OnCalc = PrecioContadoCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 178594
        mmTop = 529
        mmWidth = 20902
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine6: TppLine
        UserName = 'Line2'
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 1852
        mmTop = 265
        mmWidth = 200555
        BandType = 8
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 39952
        BandType = 8
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 185473
        mmTop = 1323
        mmWidth = 16404
        BandType = 8
      end
      object ppLabel53: TppLabel
        UserName = 'Usuario'
        Caption = 'ImpresoPor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3895
        mmLeft = 1058
        mmTop = 5556
        mmWidth = 16510
        BandType = 8
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 16669
      mmPrintPosition = 0
      object ppLine7: TppLine
        UserName = 'Line1'
        Pen.Style = psDot
        ParentWidth = True
        Weight = 1.000000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 2117
        mmWidth = 203200
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'Codigo'
        DataPipeline = PipeReportes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'PipeReportes'
        mmHeight = 3969
        mmLeft = 83079
        mmTop = 5821
        mmWidth = 28575
        BandType = 7
      end
      object ppVariable3: TppVariable
        UserName = 'TGCostoPromedio'
        AutoSize = False
        CalcOrder = 0
        DataType = dtCurrency
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 112448
        mmTop = 10583
        mmWidth = 24077
        BandType = 7
      end
      object ppVariable5: TppVariable
        UserName = 'TGPrecioContado'
        AutoSize = False
        CalcOrder = 1
        DataType = dtCurrency
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 173567
        mmTop = 10583
        mmWidth = 24077
        BandType = 7
      end
      object ppLabel54: TppLabel
        UserName = 'Label23'
        AutoSize = False
        Caption = 'Productos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 112448
        mmTop = 5821
        mmWidth = 59531
        BandType = 7
      end
      object ppLabel55: TppLabel
        UserName = 'Label24'
        AutoSize = False
        Caption = '( Totales Generales )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 77523
        mmTop = 0
        mmWidth = 48154
        BandType = 7
      end
      object ppLabel56: TppLabel
        UserName = 'Label25'
        AutoSize = False
        Caption = 'Costo Promedio (P)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 78846
        mmTop = 10583
        mmWidth = 32808
        BandType = 7
      end
      object ppLabel59: TppLabel
        UserName = 'Label201'
        AutoSize = False
        Caption = 'Precio Contado (Cn)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 138377
        mmTop = 10583
        mmWidth = 34396
        BandType = 7
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'Proveedor_Principal'
      DataPipeline = PipeReportes
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'PipeReportes'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand1BeforePrint
        mmBottomOffset = 0
        mmHeight = 10848
        mmPrintPosition = 0
        object NombreProveedor: TppLabel
          UserName = 'NombreProveedor'
          Caption = 'NombreProveedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Times New Roman'
          Font.Size = 16
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          mmHeight = 6604
          mmLeft = 1323
          mmTop = 265
          mmWidth = 43265
          BandType = 3
          GroupNo = 0
        end
        object Num_Proveedor: TppLabel
          UserName = 'Num_Proveedor'
          Caption = 'Codigo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 1323
          mmTop = 6615
          mmWidth = 8467
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        AfterPrint = PieGrupoAfterPrint
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'Fabricante'
      DataPipeline = PipeReportes
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'PipeReportes'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        BeforePrint = CabezaGrupoBeforePrint
        mmBottomOffset = 0
        mmHeight = 13494
        mmPrintPosition = 0
        object ppLine8: TppLine
          UserName = 'Line3'
          ParentWidth = True
          Weight = 1.000000000000000000
          mmHeight = 3969
          mmLeft = 0
          mmTop = 7408
          mmWidth = 203200
          BandType = 3
          GroupNo = 1
        end
        object ppLabel62: TppLabel
          UserName = 'Label3'
          AutoSize = False
          Caption = 'Codigo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 1323
          mmTop = 8202
          mmWidth = 26458
          BandType = 3
          GroupNo = 1
        end
        object ppLabel63: TppLabel
          UserName = 'Label7'
          AutoSize = False
          Caption = 'Descripcion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 29104
          mmTop = 8202
          mmWidth = 66411
          BandType = 3
          GroupNo = 1
        end
        object ppLabel64: TppLabel
          UserName = 'Label14'
          AutoSize = False
          Caption = 'Costo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3969
          mmLeft = 97367
          mmTop = 8202
          mmWidth = 19050
          BandType = 3
          GroupNo = 1
        end
        object ppLabel65: TppLabel
          UserName = 'Label17'
          AutoSize = False
          Caption = 'Existencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3969
          mmLeft = 118269
          mmTop = 8202
          mmWidth = 17463
          BandType = 3
          GroupNo = 1
        end
        object ppLabel66: TppLabel
          UserName = 'Label30'
          AutoSize = False
          Caption = 'Prec. Venta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3969
          mmLeft = 136790
          mmTop = 8202
          mmWidth = 19050
          BandType = 3
          GroupNo = 1
        end
        object ppLine9: TppLine
          UserName = 'Line4'
          ParentWidth = True
          Weight = 1.000000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 12700
          mmWidth = 203200
          BandType = 3
          GroupNo = 1
        end
        object ppLabel67: TppLabel
          UserName = 'Label301'
          AutoSize = False
          Caption = 'T. Costo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 156634
          mmTop = 8202
          mmWidth = 20902
          BandType = 3
          GroupNo = 1
        end
        object ppLabel68: TppLabel
          UserName = 'Label302'
          AutoSize = False
          Caption = 'T. Venta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 178594
          mmTop = 8202
          mmWidth = 20902
          BandType = 3
          GroupNo = 1
        end
        object NombreFabricante_Proveedor: TppLabel
          UserName = 'NombreFabricante_Proveedor'
          Caption = 'NombreFabricante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Times New Roman'
          Font.Size = 12
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          mmHeight = 4995
          mmLeft = 1323
          mmTop = 0
          mmWidth = 33359
          BandType = 3
          GroupNo = 1
        end
        object Num_Fabricante_Proveedor: TppLabel
          UserName = 'Num_Fabricante_Proveedor'
          Caption = 'Codigo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 1323
          mmTop = 4233
          mmWidth = 8467
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 16140
        mmPrintPosition = 0
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'Codigo'
          DataPipeline = PipeReportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'PipeReportes'
          mmHeight = 3969
          mmLeft = 87577
          mmTop = 6350
          mmWidth = 24342
          BandType = 5
          GroupNo = 1
        end
        object ppVariable9: TppVariable
          UserName = 'TCostoPromedio'
          AutoSize = False
          CalcOrder = 0
          DataType = dtCurrency
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 112713
          mmTop = 10848
          mmWidth = 24077
          BandType = 5
          GroupNo = 1
        end
        object ppVariable11: TppVariable
          UserName = 'TPrecioContado'
          AutoSize = False
          CalcOrder = 1
          DataType = dtCurrency
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 173832
          mmTop = 10848
          mmWidth = 24077
          BandType = 5
          GroupNo = 1
        end
        object ppLabel69: TppLabel
          UserName = 'Label12'
          AutoSize = False
          Caption = 'Productos de '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 113242
          mmTop = 6350
          mmWidth = 23548
          BandType = 5
          GroupNo = 1
        end
        object ppLabel70: TppLabel
          UserName = 'Label16'
          AutoSize = False
          Caption = 'Costo Promedio (P)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 79111
          mmTop = 10848
          mmWidth = 32808
          BandType = 5
          GroupNo = 1
        end
        object ppLabel73: TppLabel
          UserName = 'Label20'
          AutoSize = False
          Caption = 'Precio Contado (Cn)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 138642
          mmTop = 10848
          mmWidth = 34396
          BandType = 5
          GroupNo = 1
        end
        object ppLine10: TppLine
          UserName = 'Line5'
          Pen.Style = psDot
          ParentWidth = True
          Weight = 1.000000000000000000
          mmHeight = 3969
          mmLeft = 0
          mmTop = 2646
          mmWidth = 203200
          BandType = 5
          GroupNo = 1
        end
        object ppLabel76: TppLabel
          UserName = 'Label4'
          AutoSize = False
          Caption = '( Sub-Totales )'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taCentered
          mmHeight = 4763
          mmLeft = 75671
          mmTop = 529
          mmWidth = 51594
          BandType = 5
          GroupNo = 1
        end
        object Nombre_Fabricante_Proveedor: TppLabel
          UserName = 'Nombre_Fabricante_Proveedor'
          Caption = 'Nombre_Fabricante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 137054
          mmTop = 6350
          mmWidth = 32015
          BandType = 5
          GroupNo = 1
        end
      end
    end
  end
  object PipeProveedor: TppDBPipeline
    DataSource = Modulo.dProveedores
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'PipeProveedor'
    Left = 40
    Top = 272
    object PipeProveedorppField1: TppField
      FieldAlias = 'Nombre'
      FieldName = 'Nombre'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object PipeProveedorppField2: TppField
      FieldAlias = 'Contacto'
      FieldName = 'Contacto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object PipeProveedorppField3: TppField
      FieldAlias = 'Cedula_Rnc_Pasaporte'
      FieldName = 'Cedula_Rnc_Pasaporte'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object PipeProveedorppField4: TppField
      FieldAlias = 'Numero'
      FieldName = 'Numero'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object PipeProveedorppField5: TppField
      FieldAlias = 'Tipo_Suplidor'
      FieldName = 'Tipo_Suplidor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object PipeProveedorppField6: TppField
      FieldAlias = 'Tipo_Telefono_1'
      FieldName = 'Tipo_Telefono_1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object PipeProveedorppField7: TppField
      FieldAlias = 'Tipo_Telefono_2'
      FieldName = 'Tipo_Telefono_2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object PipeProveedorppField8: TppField
      FieldAlias = 'Tipo_Telefono_3'
      FieldName = 'Tipo_Telefono_3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object PipeProveedorppField9: TppField
      FieldAlias = 'Tipo_Telefono_4'
      FieldName = 'Tipo_Telefono_4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object PipeProveedorppField10: TppField
      FieldAlias = 'Numero_Telefono_1'
      FieldName = 'Numero_Telefono_1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object PipeProveedorppField11: TppField
      FieldAlias = 'Numero_Telefono_2'
      FieldName = 'Numero_Telefono_2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object PipeProveedorppField12: TppField
      FieldAlias = 'Numero_Telefono_3'
      FieldName = 'Numero_Telefono_3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object PipeProveedorppField13: TppField
      FieldAlias = 'Numero_Telefono_4'
      FieldName = 'Numero_Telefono_4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object PipeProveedorppField14: TppField
      FieldAlias = 'Direccion'
      FieldName = 'Direccion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object PipeProveedorppField15: TppField
      FieldAlias = 'Pais'
      FieldName = 'Pais'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object PipeProveedorppField16: TppField
      FieldAlias = 'Ciudad'
      FieldName = 'Ciudad'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object PipeProveedorppField17: TppField
      FieldAlias = 'Estado'
      FieldName = 'Estado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object PipeProveedorppField18: TppField
      FieldAlias = 'Sector'
      FieldName = 'Sector'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object PipeProveedorppField19: TppField
      FieldAlias = 'Limite_Credito'
      FieldName = 'Limite_Credito'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object PipeProveedorppField20: TppField
      FieldAlias = 'Condicion_Suplidor'
      FieldName = 'Condicion_Suplidor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object PipeProveedorppField21: TppField
      FieldAlias = 'NombreCompleto'
      FieldName = 'NombreCompleto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object PipeProveedorppField22: TppField
      FieldAlias = 'TerminosFacturacion'
      FieldName = 'TerminosFacturacion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object PipeProveedorppField23: TppField
      FieldAlias = 'Numero_Tarjeta'
      FieldName = 'Numero_Tarjeta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object PipeProveedorppField24: TppField
      FieldAlias = 'Numero_Cuenta'
      FieldName = 'Numero_Cuenta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object PipeProveedorppField25: TppField
      FieldAlias = 'Descuento_Asignado'
      FieldName = 'Descuento_Asignado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object PipeProveedorppField26: TppField
      FieldAlias = 'Status'
      FieldName = 'Status'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object PipeProveedorppField27: TppField
      FieldAlias = 'Fecha_Registro'
      FieldName = 'Fecha_Registro'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object PipeProveedorppField28: TppField
      FieldAlias = 'Balance_Actual'
      FieldName = 'Balance_Actual'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object PipeProveedorppField29: TppField
      FieldAlias = 'Ultima_Factura'
      FieldName = 'Ultima_Factura'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object PipeProveedorppField30: TppField
      FieldAlias = 'Fecha_Ultima_Factura'
      FieldName = 'Fecha_Ultima_Factura'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object PipeProveedorppField31: TppField
      FieldAlias = 'mail'
      FieldName = 'mail'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
  end
  object Reporte_Vencimientos: TppReport
    AutoStop = False
    DataPipeline = Pipe_Criterio_Vencimiento
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Reporte de Productos Clasificado Por Proveedores'
    PrinterSetup.PaperName = 'Letter (8.5 x 11 in.)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    Left = 232
    Top = 112
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'Pipe_Criterio_Vencimiento'
    object ppTitleBand3: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 19844
      mmPrintPosition = 0
      object ppLabel18: TppLabel
        OnPrint = ReportHeaderName
        UserName = 'Nombre_Siglas_Clientes1'
        AutoSize = False
        Caption = 'Nombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 24
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 9991
        mmLeft = 2117
        mmTop = 265
        mmWidth = 196057
        BandType = 1
      end
      object ppLabel19: TppLabel
        OnPrint = ReportHeaderAddress
        UserName = 'Direccion_Ciudad_Pais_Clientes1'
        AutoSize = False
        Caption = 'Direccion_Ciudad_Pais_Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4318
        mmLeft = 2117
        mmTop = 10583
        mmWidth = 196057
        BandType = 1
      end
      object ppLabel27: TppLabel
        OnPrint = ReportHeaderPhones
        UserName = 'Telefono_Fax_Rnc_Clientes1'
        AutoSize = False
        Caption = 'Telefono_Fax_Rnc_Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4318
        mmLeft = 2117
        mmTop = 15081
        mmWidth = 196057
        BandType = 1
      end
    end
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 17992
      mmPrintPosition = 0
      object ppLabel29: TppLabel
        UserName = 'Titulo1'
        AutoSize = False
        Caption = 'Reporte de Vencimiento de Productos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6879
        mmLeft = 3440
        mmTop = 1323
        mmWidth = 196057
        BandType = 0
      end
      object Clasificacion: TppLabel
        UserName = 'Clasificacion'
        AutoSize = False
        Caption = 'Clasificacion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4318
        mmLeft = 3440
        mmTop = 8731
        mmWidth = 196057
        BandType = 0
      end
      object Criterio: TppLabel
        UserName = 'Criterio'
        AutoSize = False
        Caption = 'Criterio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4318
        mmLeft = 3440
        mmTop = 13229
        mmWidth = 196057
        BandType = 0
      end
    end
    object ppDetailBand5: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'ANO'
        DataPipeline = Pipe_Criterio_Vencimiento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'Pipe_Criterio_Vencimiento'
        mmHeight = 3440
        mmLeft = 143404
        mmTop = 265
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'CANTIDAD'
        DataPipeline = Pipe_Criterio_Vencimiento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Pipe_Criterio_Vencimiento'
        mmHeight = 3440
        mmLeft = 171186
        mmTop = 265
        mmWidth = 21696
        BandType = 4
      end
      object MES: TppVariable
        UserName = 'Mes'
        AutoSize = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        OnCalc = MESCalc
        Transparent = True
        mmHeight = 3440
        mmLeft = 130175
        mmTop = 265
        mmWidth = 7408
        BandType = 4
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        AutoSize = False
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 138113
        mmTop = 265
        mmWidth = 4498
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 17992
      mmPrintPosition = 0
      object ppLine12: TppLine
        UserName = 'Line12'
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 1852
        mmTop = 265
        mmWidth = 200555
        BandType = 8
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 39952
        BandType = 8
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 193146
        mmTop = 1323
        mmWidth = 8731
        BandType = 8
      end
      object ppLabel22: TppLabel
        OnPrint = UserPrint
        UserName = 'Usuario1'
        Caption = 'ImpresoPor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3895
        mmLeft = 1058
        mmTop = 5556
        mmWidth = 16510
        BandType = 8
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'CODIGO'
      DataPipeline = Pipe_Criterio_Vencimiento
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'Pipe_Criterio_Vencimiento'
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppLine11: TppLine
          UserName = 'Line11'
          Pen.Style = psDot
          ParentWidth = True
          Weight = 1.000000000000000000
          mmHeight = 3969
          mmLeft = 0
          mmTop = 265
          mmWidth = 203200
          BandType = 3
          GroupNo = 0
        end
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          DataField = 'CODIGO'
          DataPipeline = Pipe_Criterio_Vencimiento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'Pipe_Criterio_Vencimiento'
          mmHeight = 3969
          mmLeft = 0
          mmTop = 794
          mmWidth = 31221
          BandType = 3
          GroupNo = 0
        end
        object ppDBText13: TppDBText
          UserName = 'DBText13'
          DataField = 'DESCRIPCION'
          DataPipeline = Pipe_Criterio_Vencimiento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'Pipe_Criterio_Vencimiento'
          mmHeight = 4233
          mmLeft = 32279
          mmTop = 529
          mmWidth = 93927
          BandType = 3
          GroupNo = 0
        end
        object ppLabel21: TppLabel
          UserName = 'Label21'
          AutoSize = False
          Caption = 'Vencimiento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 130175
          mmTop = 794
          mmWidth = 27252
          BandType = 3
          GroupNo = 0
        end
        object ppLabel26: TppLabel
          UserName = 'Label26'
          AutoSize = False
          Caption = 'Cantidad'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 171186
          mmTop = 794
          mmWidth = 21696
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 5821
        mmPrintPosition = 0
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          DataField = 'CANTIDAD'
          DataPipeline = Pipe_Criterio_Vencimiento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Pipe_Criterio_Vencimiento'
          mmHeight = 3440
          mmLeft = 167746
          mmTop = 529
          mmWidth = 25135
          BandType = 5
          GroupNo = 0
        end
        object ppLine13: TppLine
          UserName = 'Line13'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 166423
          mmTop = 265
          mmWidth = 26458
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object Pipe_Criterio_Vencimiento: TppDBPipeline
    DataSource = Modulo.dVencimientos_Categoria
    OpenDataSource = False
    UserName = 'Pipe_Criterio_Vencimiento'
    Left = 40
    Top = 320
    object Pipe_Criterio_VencimientoppField1: TppField
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      SelectOrder = 0
      Searchable = False
      Sortable = False
    end
    object Pipe_Criterio_VencimientoppField2: TppField
      FieldAlias = 'MES'
      FieldName = 'MES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      SelectOrder = 1
      Searchable = False
      Sortable = False
    end
    object Pipe_Criterio_VencimientoppField3: TppField
      FieldAlias = 'ANO'
      FieldName = 'ANO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      SelectOrder = 2
      Searchable = False
      Sortable = False
    end
    object Pipe_Criterio_VencimientoppField4: TppField
      FieldAlias = 'CANTIDAD'
      FieldName = 'CANTIDAD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      SelectOrder = 3
      Searchable = False
      Sortable = False
    end
    object Pipe_Criterio_VencimientoppField5: TppField
      FieldAlias = 'DESCRIPCION'
      FieldName = 'DESCRIPCION'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      SelectOrder = 4
      Searchable = False
      Sortable = False
    end
  end
  object Reporte_Ventas: TppReport
    AutoStop = False
    DataPipeline = Pipe_Facturas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter (8.5 x 11 in.)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Development\Programs\Quisqueya\FormRptIngresos.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    Left = 233
    Top = 169
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'Pipe_Facturas'
    object ppTitleBand4: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 20108
      mmPrintPosition = 0
      object ppLabel50: TppLabel
        OnPrint = ReportHeaderName
        UserName = 'Label50'
        AutoSize = False
        Caption = 'Nombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 24
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 9991
        mmLeft = 2117
        mmTop = 265
        mmWidth = 196057
        BandType = 1
      end
      object ppLabel58: TppLabel
        OnPrint = ReportHeaderAddress
        UserName = 'Label58'
        AutoSize = False
        Caption = 'Direccion_Ciudad_Pais_Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4318
        mmLeft = 2117
        mmTop = 10583
        mmWidth = 196057
        BandType = 1
      end
      object ppLabel71: TppLabel
        OnPrint = ReportHeaderPhones
        UserName = 'Label71'
        AutoSize = False
        Caption = 'Telefono_Fax_Rnc_Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4318
        mmLeft = 2117
        mmTop = 15081
        mmWidth = 196057
        BandType = 1
      end
    end
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13758
      mmPrintPosition = 0
      object ppLabel74: TppLabel
        UserName = 'Clasificacion1'
        AutoSize = False
        Caption = 'Clasificacion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 3440
        mmTop = 8731
        mmWidth = 196057
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        AutoSize = False
        Caption = 'Reporte de Ventas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6879
        mmLeft = 3440
        mmTop = 1323
        mmWidth = 196057
        BandType = 0
      end
    end
    object ppDetailBand6: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppDBText14: TppDBText
        UserName = 'DBText4'
        DataField = 'Numero'
        DataPipeline = Pipe_Facturas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'Pipe_Facturas'
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 529
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText7'
        DataField = 'Fecha'
        DataPipeline = Pipe_Facturas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'Pipe_Facturas'
        mmHeight = 4233
        mmLeft = 75142
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText10'
        DataField = 'Vencimiento'
        DataPipeline = Pipe_Facturas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'Pipe_Facturas'
        mmHeight = 4233
        mmLeft = 93398
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText11'
        DataField = 'SubTotal'
        DataPipeline = Pipe_Facturas
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Pipe_Facturas'
        mmHeight = 4233
        mmLeft = 111390
        mmTop = 529
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText12'
        DataField = 'TotalNeto'
        DataPipeline = Pipe_Facturas
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Pipe_Facturas'
        mmHeight = 4233
        mmLeft = 134144
        mmTop = 529
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText13'
        DataField = 'Pendiente'
        DataPipeline = Pipe_Facturas
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Pipe_Facturas'
        mmHeight = 4233
        mmLeft = 178330
        mmTop = 529
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText14'
        DataField = 'Nombre_Cliente'
        DataPipeline = Pipe_Facturas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'Pipe_Facturas'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 529
        mmWidth = 56621
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText9'
        DataField = 'Pagado'
        DataPipeline = Pipe_Facturas
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Pipe_Facturas'
        mmHeight = 4233
        mmLeft = 156898
        mmTop = 529
        mmWidth = 20902
        BandType = 4
      end
    end
    object ppFooterBand4: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppLine14: TppLine
        UserName = 'Line5'
        Pen.Color = clGray
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 529
        mmWidth = 203200
        BandType = 8
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 1323
        mmWidth = 38100
        BandType = 8
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 188913
        mmTop = 1323
        mmWidth = 11113
        BandType = 8
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'Pendiente'
        DataPipeline = Pipe_Facturas
        DisplayFormat = '$#,#.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Pipe_Facturas'
        mmHeight = 4233
        mmLeft = 79640
        mmTop = 16404
        mmWidth = 31750
        BandType = 8
      end
      object Pagado: TppDBCalc
        UserName = 'Pagado'
        DataField = 'Pagado'
        DataPipeline = Pipe_Facturas
        DisplayFormat = '$#,#.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Pipe_Facturas'
        mmHeight = 4233
        mmLeft = 79640
        mmTop = 1852
        mmWidth = 31750
        BandType = 8
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'Total_Impuesto'
        DataPipeline = Pipe_Facturas
        DisplayFormat = '$#,#.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Pipe_Facturas'
        mmHeight = 4233
        mmLeft = 146579
        mmTop = 16404
        mmWidth = 31750
        BandType = 8
      end
      object TotalNeto: TppDBCalc
        UserName = 'TotalNeto'
        DataField = 'TotalNeto'
        DataPipeline = Pipe_Facturas
        DisplayFormat = '$#,#.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Pipe_Facturas'
        mmHeight = 4233
        mmLeft = 146579
        mmTop = 1852
        mmWidth = 31750
        BandType = 8
      end
      object ppLabel31: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Caption = 'Total Pendiente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 47361
        mmTop = 16404
        mmWidth = 30692
        BandType = 8
      end
      object ppLabel47: TppLabel
        UserName = 'Label21'
        AutoSize = False
        Caption = 'Total Pagado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 47361
        mmTop = 1852
        mmWidth = 30692
        BandType = 8
      end
      object ppLabel48: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Caption = 'Total Impuesto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 114829
        mmTop = 16404
        mmWidth = 30692
        BandType = 8
      end
      object ppLabel49: TppLabel
        UserName = 'Label23'
        AutoSize = False
        Caption = 'Total Facturado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 114829
        mmTop = 1852
        mmWidth = 30692
        BandType = 8
      end
      object TotalEfectivo: TppVariable
        UserName = 'TotalEfectivo'
        AutoSize = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '$#,#.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 79640
        mmTop = 11642
        mmWidth = 31750
        BandType = 8
      end
      object ppLabel60: TppLabel
        UserName = 'Label46'
        AutoSize = False
        Caption = 'Total Efectivo Ingresado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 32279
        mmTop = 11642
        mmWidth = 45773
        BandType = 8
      end
      object ppLabel61: TppLabel
        UserName = 'Label48'
        AutoSize = False
        Caption = 'Total Pagado en Facturas Pendientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 6879
        mmWidth = 67469
        BandType = 8
      end
      object TotaPagadoFact: TppVariable
        UserName = 'TotaPagadoFact'
        AutoSize = False
        CalcOrder = 1
        DataType = dtCurrency
        DisplayFormat = '$#,#.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 79640
        mmTop = 6879
        mmWidth = 31750
        BandType = 8
      end
      object ppLine15: TppLine
        UserName = 'Line9'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 78052
        mmTop = 10848
        mmWidth = 36513
        BandType = 8
      end
    end
    object ppSummaryBand3: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
    end
    object ppGroup5: TppGroup
      BreakName = 'Condicion'
      DataPipeline = Pipe_Facturas
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'Pipe_Facturas'
      object ppGroupHeaderBand4: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 13494
        mmPrintPosition = 0
        object ppLine18: TppLine
          UserName = 'Line4'
          Pen.Color = clNavy
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 3969
          mmLeft = 1058
          mmTop = 12700
          mmWidth = 200555
          BandType = 3
          GroupNo = 0
        end
        object ppLabel86: TppLabel
          UserName = 'Label14'
          AutoSize = False
          Caption = 'Numero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 1058
          mmTop = 7938
          mmWidth = 14552
          BandType = 3
          GroupNo = 0
        end
        object ppLabel87: TppLabel
          UserName = 'Label15'
          AutoSize = False
          Caption = 'Fecha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 74877
          mmTop = 7938
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppLabel88: TppLabel
          UserName = 'Label17'
          AutoSize = False
          Caption = 'Venc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 93134
          mmTop = 7938
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppLabel89: TppLabel
          UserName = 'Label18'
          AutoSize = False
          Caption = 'SubTotal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 111125
          mmTop = 7938
          mmWidth = 22225
          BandType = 3
          GroupNo = 0
        end
        object ppLabel90: TppLabel
          UserName = 'Label19'
          AutoSize = False
          Caption = 'TotalNeto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 133879
          mmTop = 7938
          mmWidth = 22225
          BandType = 3
          GroupNo = 0
        end
        object ppLabel91: TppLabel
          UserName = 'Label20'
          AutoSize = False
          Caption = 'Pendiente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 178065
          mmTop = 7938
          mmWidth = 22225
          BandType = 3
          GroupNo = 0
        end
        object ppLabel92: TppLabel
          UserName = 'Label25'
          AutoSize = False
          Caption = 'Nombre del Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 16669
          mmTop = 7938
          mmWidth = 35719
          BandType = 3
          GroupNo = 0
        end
        object ppLabel93: TppLabel
          UserName = 'Label16'
          AutoSize = False
          Caption = 'Pagado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 156634
          mmTop = 7938
          mmWidth = 20902
          BandType = 3
          GroupNo = 0
        end
        object ppDBText34: TppDBText
          UserName = 'DBText23'
          DataField = 'Condicion'
          DataPipeline = Pipe_Facturas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Times New Roman'
          Font.Size = 12
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          DataPipelineName = 'Pipe_Facturas'
          mmHeight = 5027
          mmLeft = 44715
          mmTop = 1588
          mmWidth = 55033
          BandType = 3
          GroupNo = 0
        end
        object ppLabel94: TppLabel
          UserName = 'Label36'
          AutoSize = False
          Caption = 'Facturas de Condici'#243'n:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Times New Roman'
          Font.Size = 12
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          mmHeight = 4995
          mmLeft = 1323
          mmTop = 1588
          mmWidth = 42333
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 17992
        mmPrintPosition = 0
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc6'
          DataField = 'Pendiente'
          DataPipeline = Pipe_Facturas
          DisplayFormat = '$#,#.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Pipe_Facturas'
          mmHeight = 4233
          mmLeft = 79640
          mmTop = 1058
          mmWidth = 31750
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc9: TppDBCalc
          UserName = 'DBCalc7'
          DataField = 'Pagado'
          DataPipeline = Pipe_Facturas
          DisplayFormat = '$#,#.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Pipe_Facturas'
          mmHeight = 4233
          mmLeft = 79640
          mmTop = 6085
          mmWidth = 31750
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc10: TppDBCalc
          UserName = 'DBCalc8'
          DataField = 'Total_Impuesto'
          DataPipeline = Pipe_Facturas
          DisplayFormat = '$#,#.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Pipe_Facturas'
          mmHeight = 4233
          mmLeft = 79640
          mmTop = 10848
          mmWidth = 31750
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc11: TppDBCalc
          UserName = 'TotalNeto1'
          DataField = 'TotalNeto'
          DataPipeline = Pipe_Facturas
          DisplayFormat = '$#,#.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Pipe_Facturas'
          mmHeight = 4233
          mmLeft = 146579
          mmTop = 1058
          mmWidth = 31750
          BandType = 5
          GroupNo = 0
        end
        object ppLabel95: TppLabel
          UserName = 'Label39'
          AutoSize = False
          Caption = 'Total Pendiente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 47361
          mmTop = 1058
          mmWidth = 30692
          BandType = 5
          GroupNo = 0
        end
        object ppLabel96: TppLabel
          UserName = 'Label40'
          AutoSize = False
          Caption = 'Total Pagado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 47361
          mmTop = 6085
          mmWidth = 30692
          BandType = 5
          GroupNo = 0
        end
        object ppLabel97: TppLabel
          UserName = 'Label41'
          AutoSize = False
          Caption = 'Total Impuesto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 47361
          mmTop = 10848
          mmWidth = 30692
          BandType = 5
          GroupNo = 0
        end
        object ppLabel98: TppLabel
          UserName = 'Label42'
          AutoSize = False
          Caption = 'Total Facturado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 114829
          mmTop = 1058
          mmWidth = 30692
          BandType = 5
          GroupNo = 0
        end
        object ppLine19: TppLine
          UserName = 'Line8'
          Pen.Color = clGray
          Pen.Width = 2
          ParentWidth = True
          Weight = 1.500000000000000000
          mmHeight = 3969
          mmLeft = 0
          mmTop = 0
          mmWidth = 203200
          BandType = 5
          GroupNo = 0
        end
        object ppLabel101: TppLabel
          UserName = 'Label47'
          AutoSize = False
          Caption = 'Totales :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4318
          mmLeft = 0
          mmTop = 1323
          mmWidth = 16140
          BandType = 5
          GroupNo = 0
        end
        object ppDBText35: TppDBText
          UserName = 'DBText25'
          DataField = 'Condicion'
          DataPipeline = Pipe_Facturas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'Pipe_Facturas'
          mmHeight = 4318
          mmLeft = 16669
          mmTop = 1323
          mmWidth = 25135
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object Pipe_Facturas: TppDBPipeline
    DataSource = Modulo.dFacturas
    OpenDataSource = False
    UserName = 'Pipe_Facturas'
    Left = 40
    Top = 376
    object Pipe_FacturasppField1: TppField
      FieldAlias = 'Numero'
      FieldName = 'Numero'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField2: TppField
      FieldAlias = 'Proceso'
      FieldName = 'Proceso'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField3: TppField
      FieldAlias = 'Nombre_Cliente'
      FieldName = 'Nombre_Cliente'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField4: TppField
      FieldAlias = 'Condicion'
      FieldName = 'Condicion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField5: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField6: TppField
      FieldAlias = 'Hora'
      FieldName = 'Hora'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField7: TppField
      FieldAlias = 'Concepto_Factura'
      FieldName = 'Concepto_Factura'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField8: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField9: TppField
      FieldAlias = 'SubTotal'
      FieldName = 'SubTotal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField10: TppField
      FieldAlias = 'TotalNeto'
      FieldName = 'TotalNeto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField11: TppField
      FieldAlias = 'Comentario'
      FieldName = 'Comentario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField12: TppField
      FieldAlias = 'Fecha_Validacion'
      FieldName = 'Fecha_Validacion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField13: TppField
      FieldAlias = 'Fecha_Cierre'
      FieldName = 'Fecha_Cierre'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField14: TppField
      FieldAlias = 'Usuario'
      FieldName = 'Usuario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField15: TppField
      FieldAlias = 'Validado'
      FieldName = 'Validado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField16: TppField
      FieldAlias = 'Cerrado'
      FieldName = 'Cerrado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField17: TppField
      FieldAlias = 'Impuesto_Global'
      FieldName = 'Impuesto_Global'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField18: TppField
      FieldAlias = 'Valor_Impuesto'
      FieldName = 'Valor_Impuesto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField19: TppField
      FieldAlias = 'Valor_Impuesto_Detalle'
      FieldName = 'Valor_Impuesto_Detalle'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField20: TppField
      FieldAlias = 'Total_Impuesto'
      FieldName = 'Total_Impuesto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField21: TppField
      FieldAlias = 'Descuento_Global'
      FieldName = 'Descuento_Global'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField22: TppField
      FieldAlias = 'Valor_Descuento'
      FieldName = 'Valor_Descuento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField23: TppField
      FieldAlias = 'Valor_Descuento_Detalle'
      FieldName = 'Valor_Descuento_Detalle'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField24: TppField
      FieldAlias = 'Total_Descuento'
      FieldName = 'Total_Descuento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField25: TppField
      FieldAlias = 'Terminos'
      FieldName = 'Terminos'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField26: TppField
      FieldAlias = 'Vencimiento'
      FieldName = 'Vencimiento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField27: TppField
      FieldAlias = 'Pagado'
      FieldName = 'Pagado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField28: TppField
      FieldAlias = 'Pendiente'
      FieldName = 'Pendiente'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField29: TppField
      FieldAlias = 'UltimoPago'
      FieldName = 'UltimoPago'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField30: TppField
      FieldAlias = 'Total_Efectivo_Recibido'
      FieldName = 'Total_Efectivo_Recibido'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField31: TppField
      FieldAlias = 'Total_Efectivo_Devuelto'
      FieldName = 'Total_Efectivo_Devuelto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField32: TppField
      FieldAlias = 'qrDetalle_Pago_Factura'
      FieldName = 'qrDetalle_Pago_Factura'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField33: TppField
      FieldAlias = 'qrDetalles_Factura'
      FieldName = 'qrDetalles_Factura'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object Pipe_FacturasppField34: TppField
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
  end
end
