object FSeriales_Productos_Facturados: TFSeriales_Productos_Facturados
  Left = 0
  Top = 0
  ActiveControl = Serial
  BorderStyle = bsToolWindow
  Caption = 'Seriales de Productos Facturados'
  ClientHeight = 563
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Cantidad: TLabel
    Left = 3
    Top = 503
    Width = 57
    Height = 16
    Caption = 'Cantidad'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Registrados: TLabel
    Left = 3
    Top = 522
    Width = 78
    Height = 16
    Caption = 'Registrados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Restan: TLabel
    Left = 3
    Top = 541
    Width = 46
    Height = 16
    Caption = 'Restan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object bt_Eliminar: TsuiButton
    Left = 252
    Top = 516
    Width = 91
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Eliminar'
    AutoSize = False
    ParentFont = False
    UIStyle = DeepBlue
    Action = Eliminar
    TabOrder = 4
    Transparent = True
    ModalResult = 0
    FocusedRectMargin = 2
    Glyph.Data = {
      36090000424D3609000000000000360000002800000018000000180000000100
      2000000000000009000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E08A1600DA720500DA720500DA720500DA72
      0500DA720500DA720500CD680D00CD680D00CD680D00CD680D00CD680D00CD68
      0D00CD680D00CD680D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DA720500FFFFFF00EFEDE700EFEDE700EFED
      E700EFEDE700F4E9D500F4E9D500F4E9D500F4E9D500F4E9D500F4E9D500F4E9
      D500F4E9D500CD680D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DA720500FFFFFF00F4E9D500F0D3B200F0D3
      B200EEDDC900EEDDC900F0D3B200F0D3B200F0D3B200F0D3B200F0D3B200F3CA
      9400F4E9D500CD680D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DA720500FFFFFF00D0B89000D39B9300F3CA
      9400F0D3B200EEDDC900EEDDC900F0D3B200F0D3B200F0D3B200F0D3B200F0D3
      B200EFEDE700CD680D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000B16950034339B00FFFFFF00DA720500FFFFFF002524940006058F008470
      8E00F3CA9400F0D3B200EEDDC900EEDDC900F0D3B200F0D3B200F0D3B200F0D3
      B200EFEDE700CD680D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000B16
      95000486FC000954D00034339B00CD680D000B1695000D37CF000656EF000B16
      95008C694600AA895D00A2995700AA895D00AA895D00AA895D00CD987300F0D3
      B200EFEDE700CD680D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003433
      9B000954D0000486FC000954D00006058F000486FC000776F30025C9F8003433
      9B00D7CAB300F4E9D500F4E9D500F4E9D500EEDDC900EEDDC900F0D3B200F0D3
      B200EFEDE700DA720500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0034339B000954D000089AF5000486FC000486FC0025C9F80010468D00D7CA
      B300F4E9D500F4E9D500F4E9D500F4E9D500EEDDC900EEDDC900EEDDC900F0D3
      B200EFEDE700DA720500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0006058F00089AF500089AF5000486FC00054CAD009A775300E28D
      5000A2995700B1987700B1987700B1987700B1987700A2995700B1987700EEDD
      C900EFEDE700DA720500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0034339B000A75CF000FABF3000FABF3000486FC0025C9F80010468D00D0BC
      AB00F0D3B200F4E9D500F4E9D500F4E9D500EFEDE700F4E9D500F4E9D500EEDD
      C900EFEDE700DA720500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003433
      9B000A75CF001BBAEF000A75CF0006058F000486FC000FABF30025C9F8003433
      9B00D0BCAB00F0D3B200EFEDE700F4E9D500EFEDE700F4E9D500F4E9D500F4E9
      D500FCFEFC00DA720500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000B16
      95001BBAEF000A75CF0034339B00E0772A000B1695000F66CE00089AF5000B16
      95008B736B00CD987300B1987700D1AB8C00D1AB8C00F4E9D500F4E9D500F4E9
      D500FCFEFC00DA720500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000B16950034339B00FFFFFF00E08A1600FFFFFF00252494000B1695009C86
      A400F4E9D500EFEDE700EFEDE700EFEDE700A7ADAB00A7ADAB00A7ADAB00A7AD
      AB00D0BCAB00DA720500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E08A1600FFFFFF00EFEDE700CADAED00FCFE
      FC00FCFEFC00FCFEFC00EFEDE700EFEDE700CD680D00CD680D00CD680D00CD68
      0D00CD680D00E48B3800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E08A1600FFFFFF00D1AB8C00B1987700B198
      7700B1987700D7CAB300FCFEFC00EFEDE700CD680D00F7E6B800F3CA9400E077
      2A00ED9B5500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E08A1600FFFFFF00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00CD680D00F0D3B200E28D5000ED9B
      5500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E9961C00FFFFFF00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00CD680D00ED9B5500EEA85F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E9961C00FFFFFF00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00EFEDE700CD680D00F1B07300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E1983900E1983900E9961C00E08A1600E08A
      1600E08A1600E08A1600E08A1600E08A1600CD680D00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    ResHandle = 0
  end
  object Detalles_Seriales: TwwDBGrid
    Left = 3
    Top = 225
    Width = 524
    Height = 272
    ControlInfoInDataset = False
    ControlType.Strings = (
      'Producto;CustomEdit;wwDBLookupCombo2;F'
      'Similar;CustomEdit;Listado_Productos;F')
    Selected.Strings = (
      'Serial'#9'60'#9'Serial'#9'F')
    IniAttributes.Enabled = True
    IniAttributes.FileName = 'seriales.grd'
    IniAttributes.SectionName = 'Seriales_Salida'
    IniAttributes.Delimiter = ';;'
    TitleColor = 15400415
    OnRowChanged = Detalles_SerialesRowChanged
    FixedCols = 0
    ShowHorzScrollBar = True
    Ctl3D = False
    DataSource = Modulo.dSeriales_Factura
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
    UseTFields = False
    PadColumnStyle = pcsPlain
    PaintOptions.AlternatingRowColor = 14217212
  end
  object bt_Finalizar: TsuiButton
    Left = 436
    Top = 516
    Width = 91
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Finalizar'
    AutoSize = False
    ParentFont = False
    UIStyle = DeepBlue
    Action = Finalizar
    TabOrder = 6
    Transparent = True
    ModalResult = 2
    FocusedRectMargin = 2
    Glyph.Data = {
      36090000424D3609000000000000360000002800000018000000180000000100
      2000000000000009000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004B4BAA000988
      D3000988D300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000946CE000954
      D0001C36AF00252494002524940025249400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002524
      94002524940025249400252494000666B2000666B200054CAD000954D000089A
      F5001BBAEF001BBAEF0025C9F800054CAD004B4BAA00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002524
      9400075908000462340007590800189BCB00189BCB000A75CF000954D000089A
      F5001BBAEF001BBAEF0025C9F80025C9F8005475CA00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002524
      94000759080007590800075908001CABD40025C9F800189BCB000954D000089A
      F5001BBAEF001BBAEF0025C9F80025C9F8005475CA00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002524
      94000759080007590800075908002499610018EDFA001CABD4000954D000089A
      F5001BBAEF001BBAEF0025C9F80025C9F8005475CA00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002524
      94000A982A00138A2B000A982A0015AF4A0018EDFA002E98B8000954D000089A
      F5001BBAEF001BBAEF0025C9F80025C9F8005475CA00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000759080028732F002524
      94004CC03C0050C1520050C1520050C1520050C15200249961000954D000089A
      F5001BBAEF001BBAEF0025C9F80025C9F8005475CA00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000759080023D9B2002873
      2F00F3CA9400F3CA9400F3CA9400D4CA9500D4CA9500A29C8A000954D000089A
      F5001BBAEF001BBAEF0025C9F80025C9F8005475CA00FFFFFF00FFFFFF006999
      6B00467A4500075908000759080006720B0006720B0015AF4A0005FA96002CEC
      A50028732F00F3CA9400F3CA9400F3CA9400F3CA9400D39B93000954D000089A
      F500040204001BBAEF0025C9F80025C9F8005475CA00FFFFFF0007590800078B
      0900078B0900079C08000CAA1E0008C2460008C2460005E3740005FA960005FA
      960009FDA5002499610051773300F3CA9400F3CA9400D39B93000954D000089A
      F500040204001BBAEF0025C9F80025C9F8005475CA00FFFFFF0007590800078B
      0900078B0900079C08000CAA1E0008C2460008C2460005E3740005FA960005FA
      960018EA8E0028732F0051773300F3CA9400F3CA9400D39B93000954D000089A
      F500040204001BBAEF0025C9F80025C9F8005475CA00FFFFFF00FFFFFF006999
      6B00467A4500075908000759080006720B0006720B0015AF4A0005FA960020D2
      770007590800F0BC8900F0BC8900F0BC8900F0BC8900D39B93000954D000089A
      F5001BBAEF001BBAEF0025C9F80025C9F8005475CA00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000759080015AF4A000759
      0800F1B07300F0BC8900F0BC8900F0BC8900F0BC89009D8B87000954D000089A
      F5001BBAEF001BBAEF0025C9F80025C9F8005475CA00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000759080028732F002524
      9400F1B07300F1B07300EEA85F00F1B07300F1B07300D68785000954D000089A
      F5001BBAEF001BBAEF0025C9F80025C9F8005475CA00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002524
      9400EEA85F00EEA85F00EEA85F00F0BC8900F0BC89009D8B87000954D000089A
      F5001BBAEF001BBAEF0025C9F80025C9F8005475CA00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002524
      9400ED9B5500ED9B5500F4E9D500F4E9D500F4E9D500A7ADAB000954D000089A
      F500A29C8A0060A8B70025C9F80025C9F8005475CA00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002524
      9400E48B3800EFEDE700F4E9D500F4E9D500F4E9D500A7ADAB000954D000089A
      F500A29C8A008C9BB10025C9F80025C9F8005475CA00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002524
      9400E0772A00F0BC8900F0BC8900F0BC8900F0BC89009D8B87000954D000089A
      F5001BBAEF001BBAEF0025C9F80025C9F8005475CA00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002524
      94002524940025249400252494002524940025249400252494000954D000089A
      F5001BBAEF000988D30025249400054CAD004B4BAA00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000946CE000954
      D0000988D3000988D300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004B4BAA000988
      D3006D6AB700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    ResHandle = 0
  end
  object Detalle_Factura: TwwDBGrid
    Left = 3
    Top = 4
    Width = 524
    Height = 185
    ControlInfoInDataset = False
    ControlType.Strings = (
      'Producto;CustomEdit;wwDBLookupCombo2;F'
      'Similar;CustomEdit;Listado_Productos;F')
    Selected.Strings = (
      'Descripcion'#9'36'#9'Producto'#9'T'
      'Cantidad'#9'10'#9'Cantidad'#9'T'
      'Contenido'#9'13'#9'Contenido'#9'T')
    IniAttributes.Enabled = True
    IniAttributes.FileName = 'seriales.grd'
    IniAttributes.SectionName = 'Detalle_Factura'
    IniAttributes.Delimiter = ';;'
    TitleColor = 15400415
    OnRowChanged = Detalle_FacturaRowChanged
    FixedCols = 0
    ShowHorzScrollBar = True
    Ctl3D = False
    DataSource = Modulo.dDetalles_Factura
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
    UseTFields = False
    OnDblClick = Detalle_FacturaDblClick
    PadColumnStyle = pcsPlain
    PaintOptions.AlternatingRowColor = 14217212
  end
  object bt_Anterior: TsuiButton
    Left = 160
    Top = 516
    Width = 91
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Anterior'
    AutoSize = False
    ParentFont = False
    UIStyle = DeepBlue
    Action = Anterior
    TabOrder = 3
    Transparent = True
    ModalResult = 0
    FocusedRectMargin = 2
    Glyph.Data = {
      36090000424D3609000000000000360000002800000018000000180000000100
      2000000000000009000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CDD0DB00FEF8F400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00A0A1E3002427C3009798DE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009FA1E4000000C0000000BC002C2BCB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ABA7
      EE000000B7000100BF000000BA002D2BCF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009F9DE8000000
      BB000000C0000000C2000000BC002B2DC300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A7A4EC000000C0000000
      B9000102BC000300BF000000BF002E30C600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AEAAE8000000BC000000BD000600
      C4000100BC000100BC000100BC000100BC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00A6A3E6000100BC000000C0000003C1000000
      C2000100BC000100BC000100BC000100BC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00ABAAE6000000C2000000BC000100BC000100BC000100
      BC000100BC000100BC000100BC000100BC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B4B3E8000000B9000100B8000302C4000100BC000100BC000100
      BC000100BC000100BC000100BC000100BC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A9A8E5000100C2000200C3000201BC000200BE000100BC000100BC000100
      BC000100BC000100BC000100BC000100BC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BABB
      ED000000B5000000BE000100BE000004BD000002C2000100BC000100BC000100
      BC000100BC000100BC000100BC000100BC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005C68
      D6000000BB000400C0000301BF000000BE000100BC000100BC000100BC000100
      BC000100BC000100BC000100BC000100BC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D5D4
      F2001916C2000000C1000200C0000002BD000300C1000100BC000100BC000100
      BC000100BC000100BC000100BC000100BC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D4D1F1000C0EC1000000BE000600C1000004B9000100BC000100BC000100
      BC000100BC000100BC000100BC000100BC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F5E9F500060BBC000000BB000401C3000100BC000100BC000100
      BC000100BC000100BC000100BC000100BC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C7C6F3001C18C7000000BB000202C4000600BF000000
      C1000100BC000100BC000100BC000100BC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CECDEF000E0EC1000000BE000100C1000001
      B5000100BC000100BC000100BC000100BC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDEDF800080ABE000000BE000201
      C4000100BC000100BC000100BC000100BC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6ED001A15C6000000
      BD000100C2000200C3000000B5002E28CB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C5C5F100080A
      BF000000BA000500C1000000BC00282BCA00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1E6
      F5000505C5000000B8000000BA002D2BCD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C5C5EF001614C6000000BD002E28CB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CBC8F400524ED200C2C7F000FFFFFF00FFFFFF00}
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    ResHandle = 0
  end
  object Serial: TEdit
    Left = 3
    Top = 196
    Width = 524
    Height = 24
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    Text = 'Digite aqu'#237' el n'#250'mero de serie'
    OnEnter = SerialEnter
    OnExit = SerialExit
    OnKeyPress = SerialKeyPress
  end
  object bt_Imprimir: TsuiButton
    Left = 344
    Top = 516
    Width = 91
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Imprimir'
    AutoSize = False
    ParentFont = False
    UIStyle = DeepBlue
    Action = Imprimir
    TabOrder = 5
    Transparent = True
    ModalResult = 0
    FocusedRectMargin = 2
    Glyph.Data = {
      36090000424D3609000000000000360000002800000018000000180000000100
      2000000000000009000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00CFCFCF009D9D9D00D4D4
      D400DDDDDD00E8E8E800E8E8E800FFFFFF00FFFFFF00FFFFFF00BAB4AA006D64
      5A006A615500B2B0AC00CFCFCF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00DCDCDC0092929200D8D8D800F5F5F5009492
      9100AF926C00B6926300C4BBAF00D1D1D100C0BBB300756C6000635B50009F81
      58009A7C54005E574E009B979100CBCBCB00E1E1E100FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00EBEBEB0097979700CBCBCB00F9F9F900E3E3E300D8D8D800F4F4
      F400ABA8A500A5815100B68B53009A82610074675500967B5600BA915900B991
      5900BC966500A8804B00685C4C007F797100C3C3C300D9D9D900FFFFFF00F1F1
      F1009F9F9F00BDBDBD00F9F9F900EDEDED00DDDDDD00DCDCDC00DCDCDC00DEDE
      DE00F3F3F300CECDCD00957B5A0087705300A7845500B88E5500B58C5300B58C
      5500C4A17200B58B5300B0864D007E694A0066615B00B4B4B400BABABA00B5B5
      B500F8F8F800F4F4F400E8E8E800E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600EFEFEE009C9C9C00886E4D00A5805000B2884F00B48C5500C1A0
      7200CCAB7E00BC925A00B78D5400B2884F0097774A005F5B5400F4F4F400FAFA
      FA00F2F2F200F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000EEEE
      EE00B2B1B1005B5B5B004C4C4C00A07C4D00AA875700C1A07300CBAF8900D8C3
      A600D5B68C00C2996100BD935C00B88E5600B4895100A8804B00F2E7D900E7D9
      C800FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00CCCBCA006969
      69004C4C4C005F574C009A794F00B48A52008E7B6200D3BFA600E3D4C000EEE5
      D900DDC3A000C89F6800C49A6300BF955D00BA905800B58B5300F4EBE000D5B4
      8800DFC6A400FAF9F800FFFFFF00FFFFFF00E0DFDE00787878004C4C4C005954
      4D0094785400BC915B00927957005E574F0071624E00EADFD300FAF7F400FDFD
      FC00EBDCC700CAA16B00CAA16A00C59C6500C0975F00BC925A00F5F5F500A5A2
      9F009E876900B79F8000D5D3D0008D8D8D004C4C4C0053504D0089735700BF97
      62009A7F5D00605951006C5C4900855B260084653E00F7F5F200F6F2EC00F2EC
      E400F1E8DB00D4B28500CAA16A00CAA16A00C79E6600C29961007E766B00B08E
      6100BA935E00746653004C4C4C004D4D4C007F6E5800C19B6A00A5896400645D
      53006D5E4B00845C27007F5F3500716B640076767600F0EFEE00EBE1D400E6DA
      CA00E8DCCC00F0E5D700D4B38600CAA16A00CAA16A00C89F6800AE8C5E00BF96
      5E00C29A6700B7966900776A5900BB9A6E00AD906A00686055006C5F4D00835C
      2A0082603600746D6400777777007F7F7F0087878700C5C5C500E4DACD00DBC9
      B200D6C2A800DECDB700F2E8DB00DFC7A600CDA67200CAA16A00A9875800B98F
      5700C59F6C00D1A97500B3946C006B6256006A5E4E00815C2C0083623600776F
      65007A7A7A00828282008A8A8A00929292009898980097979700EDEDEC00D0C3
      B200CBB08E00C6A98400C9AE8A00E0CEB500CDA77400D5BA9700A6835200B389
      5000AB8D640073675800695E4F00805C2E00866234007A7166007D7D7D008585
      85008D8D8D0094949400969696008E8E8E00868686007E7E7E0089898900EAEA
      E900CCC7C000AC957500AE8F6900CDBBA300FFFFFF00FFFFFF00AE8C5F00C3A2
      77007A6A55007E5E3300886333007C7266007F7F7F00878787008F8F8F009797
      9700939393008B8B8B00838383007B7B7B00737373006C6C6C00646464006767
      6700BBBBBB005D5D5D00CCCCCC00FFFFFF00FFFFFF00FFFFFF00CEB89900DDCA
      B200997B54007F746600828282008A8A8A009292920098989800909090008989
      8900818181007979790071717100696969006161610059595900515151005151
      50006D5A4100B0ACA600E9E9E900FFFFFF00FFFFFF00FFFFFF00F0E8DD00F8F5
      F000F3F3F2009898980094949400969696008E8E8E00868686007E7E7E007676
      76006E6E6E001885DB00008EFF0042637E004F4F4F0057545200806D5400A982
      4F00935D1700B7AA9900E1E1E100FFFFFF00FFFFFF00FFFFFF00FBFAF700F5F1
      EB00F1EAE000DDD5CB0095939200838383007B7B7B00737373006C6C6C00068C
      F600008EFF004F575E004D4D4D005E5A54008D755600B58B5500BE915800C296
      5C009C682400AA917000D6D6D600FFFFFF00FFFFFF00FFFFFF00FBF9F600E8DC
      CE00E3D5C300DECEB900D0BFA9008A857E006969690061616100595959005151
      51005050500069625900987D5900BD915900C3965C00C79A6000CC9F6400D0A3
      6800B4824200996B2F00CDCDCC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F1
      EB00DDCCB700D2BB9E00CDB49400C8AD89009E8B71006F665A005C5854007F7F
      7F0096754B00CDA67400C89B6100CC9F6500D0A36900D5A86D00D9AC7100DDB0
      7500D3A46700935D1700C7BDB100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EEE6DB00D3BFA500B7997000A98B6600AD9A8200E1DCD600FFFF
      FF00AC824C00DDBD9400D6A86D00DAAD7200DEB17500E3B57900E7B97D00EBC0
      8600E4B9810096632000E3DFDA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BE9D7300E4C9A700E4B77C00E8BA7E00ECBE8200F1C79200F3D1A500E0B8
      8700B3884E00D5C4AF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D9C6AD00D6B58A00F1CC9C00F5CE9C00F4D9B600E2C19600BB935F00D3C0
      A900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FAF7F400AF814400F1E1CD00E3C59F00BF9B6C00DED0BF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DECDB800BC9B7000E9E0D400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    ResHandle = 0
  end
  object Seriales_Recibidos: TwwDBGrid
    Left = 533
    Top = 4
    Width = 253
    Height = 493
    ControlInfoInDataset = False
    ControlType.Strings = (
      'Producto;CustomEdit;wwDBLookupCombo2;F'
      'Similar;CustomEdit;Listado_Productos;F')
    Selected.Strings = (
      'Serial'#9'35'#9'Serial'#9'F')
    IniAttributes.Enabled = True
    IniAttributes.FileName = 'seriales.grd'
    IniAttributes.SectionName = 'Seriales_Comprados'
    IniAttributes.Delimiter = ';;'
    TitleColor = 15400415
    OnRowChanged = Detalles_SerialesRowChanged
    FixedCols = 0
    ShowHorzScrollBar = True
    Ctl3D = False
    DataSource = Modulo.dSeriales_Comprados
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 7
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
    UseTFields = False
    OnCalcCellColors = Seriales_RecibidosCalcCellColors
    OnDblClick = Seriales_RecibidosDblClick
    PadColumnStyle = pcsPlain
    PaintOptions.AlternatingRowColor = 14217212
  end
  object Desglosar: TCheckBox
    Left = 603
    Top = 500
    Width = 183
    Height = 17
    Caption = '&Desglosar Factura en la Impresi'#243'n'
    TabOrder = 8
  end
  object Opciones: TActionManager
    Images = Modulo.SystemImages
    Left = 101
    Top = 285
    StyleName = 'XP Style'
    object Finalizar: TAction
      Category = 'Opciones'
      Caption = 'Finalizar'
      ImageIndex = 10
      ShortCut = 27
      OnExecute = FinalizarExecute
    end
    object Eliminar: TAction
      Category = 'Opciones'
      Caption = 'Eliminar'
      ImageIndex = 4
      ShortCut = 16453
      OnExecute = EliminarExecute
    end
    object Anterior: TAction
      Category = 'Opciones'
      Caption = 'Anterior'
      ImageIndex = 63
      OnExecute = AnteriorExecute
    end
    object Imprimir: TAction
      Category = 'Opciones'
      Caption = 'Imprimir'
      ImageIndex = 5
      OnExecute = ImprimirExecute
    end
  end
end
