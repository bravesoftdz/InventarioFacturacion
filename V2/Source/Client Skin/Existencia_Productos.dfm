object FExistencia_Inicial: TFExistencia_Inicial
  Left = 194
  Top = 47
  BorderStyle = bsToolWindow
  Caption = 'Registro Existencia Inicial del Producto'
  ClientHeight = 363
  ClientWidth = 499
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 3
    Top = 35
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label7: TLabel
    Left = 3
    Top = 56
    Width = 56
    Height = 13
    Caption = 'Descripci'#243'n'
  end
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 499
    Height = 27
    UseSystemFont = False
    ActionManager = Opciones
    Caption = 'ActionMainMenuBar1'
    ColorMap = Modulo.ColorConfig
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    EdgeInner = esLowered
    EdgeOuter = esRaised
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    PersistentHotKeys = True
    Spacing = 0
    ExplicitWidth = 576
  end
  object Detalles_Compra: TAdvPageControl
    Left = 3
    Top = 74
    Width = 494
    Height = 247
    ActivePage = Page_Detalles
    ActiveFont.Charset = DEFAULT_CHARSET
    ActiveFont.Color = clWindowText
    ActiveFont.Height = -11
    ActiveFont.Name = 'Tahoma'
    ActiveFont.Style = []
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Images = Modulo.SystemImages
    ParentFont = False
    TabBorderColor = clBlack
    TabSheetBorderColor = clBlack
    TabBackGroundColor = clBtnFace
    TabBackGround.Data = {
      7E090000424D7E09000000000000360000002800000024000000160000000100
      18000000000048090000120B0000120B00000000000000000000EF98F4EF98F4
      EF98F4EF98F4EF98F4EF98F4EF98F4EF98F4EF98F4EF98F4EF98F4EF98F4EF98
      F4EF98F4EF98F4EF98F4EF98F4EF98F4EF98F4EF98F4EF98F4EF98F4EF98F4EF
      98F4EF98F4EF98F4EF98F4EF98F4EF98F4EF98F4EF98F4EF98F4EF98F4EF98F4
      EF98F4EF98F49C613BE5AB8EE5AB8EE5AB8EE5AB8EE5AB8EE5AB8EE5AB8EE5AB
      8EE5AB8EE5AB8EE5AB8EE5AB8EE5AB8EE5AB8EE5AB8EE5AB8EE5AB8EE5AB8EE5
      AB8EE5AB8EE5AB8EE5AB8EE5AB8EE5AB8EE5AB8EE5AB8EE5AB8EE5AB8EE5AB8E
      E5AB8EE5AB8EE5AB8EE5AB8EE5AB8E9C613B9C613BE6AE92E6AE92E6AE92E6AE
      92E6AE92E6AE92E6AE92E6AE92E6AE92E6AE92E6AE92E6AE92E6AE92E6AE92E6
      AE92E6AE92E6AE92E6AE92E6AE92E6AE92E6AE92E6AE92E6AE92E6AE92E6AE92
      E6AE92E6AE92E6AE92E6AE92E6AE92E6AE92E6AE92E6AE92FFFFFF9C613B9C61
      3BE7B197E7B197E7B197E7B197E7B197E7B197E7B197E7B197E7B197E7B197E7
      B197E7B197E7B197E7B197E7B197E7B197E7B197E7B197E7B197E7B197E7B197
      E7B197E7B197E7B197E7B197E7B197E7B197E7B197E7B197E7B197E7B197E7B1
      97E7B197FFFFFF9C613B9C613BE8B59BE8B59BE8B59BE8B59BE8B59BE8B59BE8
      B59BE8B59BE8B59BE8B59BE8B59BE8B59BE8B59BE8B59BE8B59BE8B59BE8B59B
      E8B59BE8B59BE8B59BE8B59BE8B59BE8B59BE8B59BE8B59BE8B59BE8B59BE8B5
      9BE8B59BE8B59BE8B59BE8B59BE8B59BFFFFFF9C613B9C613BE9B8A0E9B8A0E9
      B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0
      E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8
      A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0FFFFFF9C
      613B9C613BEABBA4EABBA4EABBA4EABBA4EABBA4EABBA4EABBA4EABBA4EABBA4
      EABBA4EABBA4EABBA4EABBA4EABBA4EABBA4EABBA4EABBA4EABBA4EABBA4EABB
      A4EABBA4EABBA4EABBA4EABBA4EABBA4EABBA4EABBA4EABBA4EABBA4EABBA4EA
      BBA4EABBA4EABBA4FFFFFF9C613B9C613BEBBFA9EBBFA9EBBFA9EBBFA9EBBFA9
      EBBFA9EBBFA9EBBFA9EBBFA9EBBFA9EBBFA9EBBFA9EBBFA9EBBFA9EBBFA9EBBF
      A9EBBFA9EBBFA9EBBFA9EBBFA9EBBFA9EBBFA9EBBFA9EBBFA9EBBFA9EBBFA9EB
      BFA9EBBFA9EBBFA9EBBFA9EBBFA9EBBFA9EBBFA9FFFFFF9C613B9C613BECC2AD
      ECC2ADECC2ADECC2ADECC2ADECC2ADECC2ADECC2ADECC2ADECC2ADECC2ADECC2
      ADECC2ADECC2ADECC2ADECC2ADECC2ADECC2ADECC2ADECC2ADECC2ADECC2ADEC
      C2ADECC2ADECC2ADECC2ADECC2ADECC2ADECC2ADECC2ADECC2ADECC2ADECC2AD
      FFFFFF9C613B9C613BEDC5B2EDC5B2EDC5B2EDC5B2EDC5B2EDC5B2EDC5B2EDC5
      B2EDC5B2EDC5B2EDC5B2EDC5B2EDC5B2EDC5B2EDC5B2EDC5B2EDC5B2EDC5B2ED
      C5B2EDC5B2EDC5B2EDC5B2EDC5B2EDC5B2EDC5B2EDC5B2EDC5B2EDC5B2EDC5B2
      EDC5B2EDC5B2EDC5B2EDC5B2FFFFFF9C613B9C613BEEC8B6EEC8B6EEC8B6EEC8
      B6EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6EE
      C8B6EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6
      EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6FFFFFF9C613B9C61
      3BEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEF
      CCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBA
      EFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCC
      BAEFCCBAFFFFFF9C613B9C613BF0CFBFF0CFBFF0CFBFF0CFBFF0CFBFF0CFBFF0
      CFBFF0CFBFF0CFBFF0CFBFF0CFBFF0CFBFF0CFBFF0CFBFF0CFBFF0CFBFF0CFBF
      F0CFBFF0CFBFF0CFBFF0CFBFF0CFBFF0CFBFF0CFBFF0CFBFF0CFBFF0CFBFF0CF
      BFF0CFBFF0CFBFF0CFBFF0CFBFF0CFBFFFFFFF9C613B9C613BF1D2C3F1D2C3F1
      D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3
      F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2
      C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3FFFFFF9C
      613B9C613BF2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8
      F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6
      C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2
      D6C8F2D6C8F2D6C8FFFFFF9C613B9C613BF3D9CCF3D9CCF3D9CCF3D9CCF3D9CC
      F3D9CCF3D9CCF3D9CCF3D9CCF3D9CCF3D9CCF3D9CCF3D9CCF3D9CCF3D9CCF3D9
      CCF3D9CCF3D9CCF3D9CCF3D9CCF3D9CCF3D9CCF3D9CCF3D9CCF3D9CCF3D9CCF3
      D9CCF3D9CCF3D9CCF3D9CCF3D9CCF3D9CCF3D9CCFFFFFF9C613B9C613BFFFFFF
      F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DC
      D1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4
      DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1
      FFFFFF9C613BEF98F49C613BF5E0D5F5E0D5F5E0D5F5E0D5F5E0D5F5E0D5F5E0
      D5F5E0D5F5E0D5F5E0D5F5E0D5F5E0D5F5E0D5F5E0D5F5E0D5F5E0D5F5E0D5F5
      E0D5F5E0D5F5E0D5F5E0D5F5E0D5F5E0D5F5E0D5F5E0D5F5E0D5F5E0D5F5E0D5
      F5E0D5F5E0D5F5E0D5F5E0D5FFFFFF9C613BEF98F49C613BFFFFFFFFFFFFF6E3
      DAF6E3DAF6E3DAF6E3DAF6E3DAF6E3DAF6E3DAF6E3DAF6E3DAF6E3DAF6E3DAF6
      E3DAF6E3DAF6E3DAF6E3DAF6E3DAF6E3DAF6E3DAF6E3DAF6E3DAF6E3DAF6E3DA
      F6E3DAF6E3DAF6E3DAF6E3DAF6E3DAF6E3DAF6E3DAF6E3DAFFFFFF9C613BEF98
      F4EF98F49C613B9C613BFFFFFFFFFFFFF7E6DEF7E6DEF7E6DEF7E6DEF7E6DEF7
      E6DEF7E6DEF7E6DEF7E6DEF7E6DEF7E6DEF7E6DEF7E6DEF7E6DEF7E6DEF7E6DE
      F7E6DEF7E6DEF7E6DEF7E6DEF7E6DEF7E6DEF7E6DEF7E6DEF7E6DEF7E6DEF7E6
      DEF7E6DEFFFFFF9C613BEF98F4EF98F4EF98F4EF98F49C613B9C613BFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C613BEF98F4EF98F4EF98F4EF98F4EF
      98F4EF98F4EF98F49C613B9C613B9C613B9C613B9C613B9C613B9C613B9C613B
      9C613B9C613B9C613B9C613B9C613B9C613B9C613B9C613B9C613B9C613B9C61
      3B9C613B9C613B9C613B9C613B9C613B9C613B9C613B9C613B9C613BEF98F4EF
      98F4}
    TabMargin.LeftMargin = 15
    TabMargin.RightMargin = 0
    TabOverlap = 0
    TabSplitLine = True
    RoundEdges = True
    Version = '2.0.0.1'
    PersistPagesState.Location = plRegistry
    PersistPagesState.Enabled = False
    TabHeight = 19
    TabOrder = 0
    TabStop = False
    TabWidth = 250
    object Page_Detalles: TAdvTabSheet
      Caption = 'Detalles de Existencia'
      Color = clBtnFace
      ColorTo = clNone
      ImageIndex = 31
      TabGradientDirection = gdHorizontal
      TabColor = clBtnFace
      TabColorTo = clOlive
      ExplicitWidth = 562
      object Detalles: TwwDBGrid
        Left = -1
        Top = 4
        Width = 482
        Height = 213
        ControlInfoInDataset = False
        ControlType.Strings = (
          'Codigo;CustomEdit;Codigos;F'
          'Descripcion;CustomEdit;wwDBLookupCombo1;F'
          'Mes;CustomEdit;seMes;F'
          'Ano;CustomEdit;seAnio;F')
        Selected.Strings = (
          'Cantidad'#9'10'#9'Cantidad'#9'F'#9'Datos de Compra'
          'Contenido'#9'4'#9'Contenido'#9'F'#9'Datos de Compra'
          'Precio_Lista'#9'8'#9'Prec. Lista'#9'F'#9'Datos de Compra'
          'Impuesto'#9'6'#9'% Imp.'#9'F'#9'Datos de Compra'
          'Descuento'#9'6'#9'% Desc.'#9'F'#9'Datos de Compra'
          'Costo'#9'8'#9'Costo'#9'T'#9'Datos de Compra'
          'Total_Costo'#9'12'#9'Total'#9'T'#9'Datos de Compra')
        IniAttributes.Enabled = True
        IniAttributes.FileName = 'ed_Existencia.Grd'
        IniAttributes.SectionName = 'Existencia_Productos'
        IniAttributes.Delimiter = ';;'
        TitleColor = 13428432
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = Modulo.dExistenciaInicial
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowCellHint]
        ParentFont = False
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        TitleLines = 2
        TitleButtons = False
        UseTFields = False
        OnCalcCellColors = DetallesCalcCellColors
        OnColEnter = DetallesColEnter
        OnEnter = DetallesEnter
        OnExit = DetallesExit
        PadColumnStyle = pcsPlain
        PaintOptions.AlternatingRowColor = 9948159
        object DetallesIButton: TwwIButton
          Left = 0
          Top = 0
          Width = 13
          Height = 22
          AllowAllUp = True
          Flat = True
        end
      end
    end
  end
  object Descripcion: TwwDBComboBox
    Left = 65
    Top = 53
    Width = 432
    Height = 19
    TabStop = False
    ShowButton = True
    Style = csDropDown
    MapList = False
    AllowClearKey = False
    AutoDropDown = True
    ShowMatchText = True
    ButtonStyle = cbsCustom
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'Descripcion'
    DataSource = Modulo.dProductos
    DropDownCount = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ButtonEffects.Transparent = True
    ButtonWidth = -1
    ButtonGlyph.Data = {
      CE000000424DCE000000000000007600000028000000090000000B0000000100
      0400000000005800000000000000000000001000000000000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777300
      0000700000007300000077777777780000007777077773000000777000777000
      0000770000077000000070000000730000007770007778000000777000777000
      000077700077770000007777777770000000}
    HistoryList.Section = 'Productos'
    HistoryList.FileName = 'Productos.hlst'
    HistoryList.Enabled = True
    ItemHeight = 0
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    Sorted = False
    TabOrder = 2
    UnboundDataType = wwDefault
  end
  object Codigo: TwwDBComboBox
    Left = 65
    Top = 32
    Width = 157
    Height = 19
    TabStop = False
    ShowButton = True
    Style = csDropDown
    MapList = False
    AllowClearKey = False
    AutoDropDown = True
    ShowMatchText = True
    ButtonStyle = cbsCustom
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'Codigo'
    DataSource = Modulo.dProductos
    DropDownCount = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ButtonEffects.Transparent = True
    ButtonWidth = -1
    ButtonGlyph.Data = {
      CE000000424DCE000000000000007600000028000000090000000B0000000100
      0400000000005800000000000000000000001000000000000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777300
      0000700000007300000077777777780000007777077773000000777000777000
      0000770000077000000070000000730000007770007778000000777000777000
      000077700077770000007777777770000000}
    HistoryList.Section = 'Productos'
    HistoryList.FileName = 'Productos.hlst'
    HistoryList.Enabled = True
    ItemHeight = 0
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    Sorted = False
    TabOrder = 3
    UnboundDataType = wwDefault
  end
  object bt_Aceptar: TsuiButton
    Left = 149
    Top = 327
    Width = 91
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Guardar'
    AutoSize = False
    ParentFont = False
    UIStyle = DeepBlue
    Action = Guardar
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
      FF00FFFFFF00CD680D00AA540600B3743400D3AA7500CD987300D3AA7500CD98
      7300CD987300CD987300D3AA7500D3AA7500CD987300CD987300D3AA75008E64
      3800AA540600AA540600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CD680D00D5AB5900E08A1600F0BC8900FCFEFC00EFEDE700FFFFFF005354
      5500B1BBB400EFEDE700EFEDE700FCFEFC00FCFEFC00CADAED000486FC008C69
      4600CE682C00AB884100AA540600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00AA540600F3CA9400E08A1600F0BC8900FCFEFC00FCFEFC00FFFFFF006873
      7000B1BBB400CADAED00EFEDE700FCFEFC00FCFEFC00EFEDE7000486FC009A77
      5300CD680D00F1B07300AA540600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00AA540600F3CA9400E08A1600F3CA9400FCFEFC00FCFEFC00FFFFFF009D8B
      8700B1BBB400CADAED00EFEDE700FCFEFC00FCFEFC00EFEDE7000486FC009A77
      5300CD680D00F1B07300AA540600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00AA540600F3CA9400E08A1600F3CA9400FCFEFC00FCFEFC00FFFFFF00A29C
      8A00B1BBB400EEDDC900EFEDE700EFEDE700FCFEFC00FCFEFC000486FC009A77
      5300CD680D00F1B07300AA540600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00AA540600F3CA9400E08A1600E1983900EFEDE700FCFEFC00FFFFFF00FCFE
      FC00CADAED00EEDDC900CADAED00EFEDE700FCFEFC00FCFEFC000486FC009A77
      5300CD680D00F1B07300AA540600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00AA540600F3CA9400E08A1600E08A1600E9961C00AA895D00AA895D00AA89
      5D009A7753009A775300AB884100AA895D00AA895D00AA895D00AA895D008E64
      3800CD680D00F1B07300AA540600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CD680D00F3CA9400E08A1600E08A1600E08A1600CD680D00CD680D00CD68
      0D00CD680D00CD680D00CD680D00CD680D00CD680D00CD680D00CD680D00CD68
      0D00DA720500F1B07300AA540600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CD680D00F3CA9400E08A1600E08A1600E08A1600E08A1600E08A1600E08A
      1600E08A1600E08A1600E08A1600E08A1600E08A1600E08A1600E08A1600E08A
      1600DA720500E9BF7600AA540600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CD680D00F3CA9400E08A1600EFEDE700FCFEFC00FCFEFC00FFFFFF00EFED
      E700EFEDE700EFEDE700EFEDE700CADAED00CADAED00CADAED00CADAED00ABD9
      D100E08A1600E9BF7600AA540600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CD680D00F3CA9400E08A1600FCFEFC00FCFEFC00FCFEFC00FFFFFF00FCFE
      FC00EFEDE700EFEDE700EFEDE700EFEDE700CADAED00CADAED00CADAED00CADA
      ED00E08A1600E9BF7600AA540600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CD680D00F3CA9400E9961C00FCFEFC00FCFEFC00FCFEFC00FFFFFF00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FFFFFF00EFED
      E700E08A1600E9BF7600AA540600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CD680D00F3CA9400E9961C00FCFEFC00D1CBC700D1CBC700D1CBC700D1CB
      C700D1CBC700D1CBC700D1CBC700D1CBC700D1CBC700D1CBC700D1CBC700EFED
      E700E08A1600E9BF7600AA540600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CD680D00F3CA9400E9961C00FCFEFC00FCFEFC00FCFEFC00FFFFFF00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00EFEDE700EFEDE700EFEDE700EFEDE700CADA
      ED00E08A1600E9BF7600AA540600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CD680D00F3CA9400E9961C00FCFEFC00A0FAFB009AEAD2009AEAD2009AEA
      D2009AEAD2009AEAD2009AEAD2009AEAD20078DCD20089E1B50089E1B50089E1
      B500E08A1600E9BF7600AA540600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CD680D00F3CA9400E9961C00A0FAFB002AC9B0002AC9B0002AC9B0002AC9
      B0002AC9B0002AC9B00017CC900017CC900022BC8E0022BC8E0022BC8E0055CB
      AA00E08A1600E9BF7600AA540600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CD680D00F1B07300E9961C00A0FAFB0036E8D20036E8D20036E8D20036E8
      D20036E8D20020DEC40020DEC40023D9B20023D9B20023D9B20023D9B20069D9
      AD00E08A1600F1B07300AA540600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E48B3800F0BC8900E08A1600A0FAFB0036E8D20036E8D20036E8D20036E8
      D20036E8D20036E8D20020DEC40020DEC40023D9B20023D9B20023D9B20069D9
      AD00DA720500E9BF7600E48B3800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E48B3800E48B3800D0B890006FAC6D006FAC6D006FAC6D006FAC
      6D006FAC6D006FAC6D006FAC6D006FAC6D006396540063965400639654006396
      5400E48B3800E48B3800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
  object bt_Cancelar: TsuiButton
    Left = 259
    Top = 327
    Width = 91
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Salir'
    AutoSize = False
    ParentFont = False
    UIStyle = DeepBlue
    Action = Salir
    TabOrder = 5
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
  object Opciones: TActionManager
    ActionBars = <
      item
        Items.HideUnused = False
        Items = <
          item
            Items.HideUnused = False
            Items = <>
            Caption = '&Recibos'
          end>
      end
      item
        Items = <
          item
            Caption = '-'
          end
          item
            Caption = '-'
          end
          item
            Caption = '-'
          end>
      end
      item
      end
      item
      end
      item
      end
      item
        Items = <
          item
            Caption = '&Recibos'
          end>
      end
      item
        Items = <
          item
            Caption = '-'
          end
          item
            Caption = '-'
          end
          item
            Caption = '-'
          end
          item
            Action = Salir
            Caption = '&Salir'
            ImageIndex = 10
            ShortCut = 27
          end>
      end
      item
      end
      item
        Items.CaptionOptions = coAll
        Items = <
          item
            Caption = '-'
          end
          item
            Action = Salir
            Caption = '&Salir'
            ImageIndex = 10
            ShortCut = 27
          end>
      end
      item
        Items = <
          item
            Action = Nuevo
            ImageIndex = 1
            ShortCut = 16462
          end
          item
            Action = Guardar
            ImageIndex = 0
            ShortCut = 16455
          end
          item
            Action = Salir
            Caption = '&Salir'
            ImageIndex = 10
            ShortCut = 27
          end>
      end
      item
      end
      item
        Items = <
          item
            Items = <
              item
                Action = Guardar
                Caption = '&Guardar'
                ImageIndex = 0
                ShortCut = 16455
              end
              item
                Caption = '-'
              end
              item
                Action = Salir
                Caption = '&Salir'
                ImageIndex = 10
                ShortCut = 27
              end>
            Caption = '&Opciones'
          end>
        ActionBar = ActionMainMenuBar1
      end
      item
        Items = <
          item
            Action = Guardar
            Caption = '&Guardar'
            ImageIndex = 0
            ShortCut = 16455
          end
          item
            Action = Nuevo
            Caption = '&Nuevo'
            ImageIndex = 1
            ShortCut = 16462
          end
          item
            Action = Salir
            Caption = '&Salir'
            ImageIndex = 10
            ShortCut = 27
          end>
      end
      item
        Items = <
          item
            Action = Guardar
            Caption = '&Guardar'
            ImageIndex = 0
            ShortCut = 16455
          end
          item
            Action = Salir
            Caption = '&Salir'
            ImageIndex = 10
            ShortCut = 27
          end>
      end>
    Images = Modulo.SystemImages
    Left = 256
    Top = 200
    StyleName = 'XP Style'
    object Salir: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Salir'
      ImageIndex = 10
      ShortCut = 27
      OnExecute = SalirExecute
    end
    object Guardar: TAction
      Category = 'Opciones'
      Caption = 'Guardar'
      ImageIndex = 0
      ShortCut = 16455
      OnExecute = GuardarExecute
    end
    object Nuevo: TAction
      Category = 'Opciones'
      Caption = 'Nuevo'
      ImageIndex = 1
      ShortCut = 16462
      OnExecute = NuevoExecute
    end
  end
end