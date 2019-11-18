object FProveedores: TFProveedores
  Left = 18
  Top = 23
  BorderStyle = bsToolWindow
  Caption = 'Registro y Modificac'#243'n de Proveedores'
  ClientHeight = 503
  ClientWidth = 731
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
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 731
    Height = 27
    UseSystemFont = False
    ActionManager = Opciones
    Caption = 'ActionMainMenuBar1'
    ColorMap = ColorConfig
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
  end
  object Datos_Generales: TAdvPageControl
    Left = 5
    Top = 41
    Width = 516
    Height = 458
    ActivePage = DatosGenerales
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
    HotTrack = True
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
    Version = '1.4.0.0'
    TabHeight = 19
    TabOrder = 0
    TabStop = False
    TabWidth = 250
    object DatosGenerales: TAdvTabSheet
      Caption = 'Datos Generales'
      Color = clBtnFace
      ColorTo = clNone
      ImageIndex = 29
      TabGradientDirection = gdHorizontal
      TabColor = clBlack
      TabColorTo = clOlive
      object Label1: TLabel
        Left = 3
        Top = 7
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
      end
      object Label2: TLabel
        Left = 3
        Top = 28
        Width = 37
        Height = 13
        Caption = 'Nombre'
      end
      object Label3: TLabel
        Left = 3
        Top = 48
        Width = 44
        Height = 13
        Caption = 'Contacto'
      end
      object Label4: TLabel
        Left = 3
        Top = 68
        Width = 99
        Height = 13
        Caption = 'C'#233'dula/Rnc/Registro'
      end
      object Label5: TLabel
        Left = 3
        Top = 88
        Width = 43
        Height = 13
        Caption = 'Direcci'#243'n'
      end
      object Label6: TLabel
        Left = 3
        Top = 108
        Width = 19
        Height = 13
        Caption = 'Pa'#237's'
      end
      object Label8: TLabel
        Left = 3
        Top = 128
        Width = 33
        Height = 13
        Caption = 'Ciudad'
      end
      object Label9: TLabel
        Left = 3
        Top = 148
        Width = 33
        Height = 13
        Caption = 'Estado'
      end
      object Label10: TLabel
        Left = 3
        Top = 168
        Width = 31
        Height = 13
        Caption = 'Sector'
      end
      object Label11: TLabel
        Left = 3
        Top = 408
        Width = 36
        Height = 13
        Caption = 'Estatus'
      end
      object Label12: TLabel
        Left = 253
        Top = 408
        Width = 87
        Height = 13
        Caption = 'Fecha de Registro'
      end
      object Label7: TLabel
        Left = 3
        Top = 234
        Width = 88
        Height = 13
        Caption = 'Tipo de Proveedor'
      end
      object Label13: TLabel
        Left = 3
        Top = 290
        Width = 80
        Height = 13
        Caption = 'L'#237'mite de Cr'#233'dito'
        FocusControl = DBEdit2
      end
      object Label14: TLabel
        Left = 282
        Top = 270
        Width = 46
        Height = 13
        Caption = 'Condici'#243'n'
      end
      object Label15: TLabel
        Left = 3
        Top = 270
        Width = 117
        Height = 13
        Caption = 'Terminos de Facturaci'#243'n'
      end
      object Label16: TLabel
        Left = 3
        Top = 310
        Width = 90
        Height = 13
        Caption = 'N'#250'mero de Tarjeta'
        FocusControl = DBEdit5
      end
      object Label17: TLabel
        Left = 282
        Top = 310
        Width = 90
        Height = 13
        Caption = 'N'#250'mero de Cuenta'
      end
      object Label18: TLabel
        Left = 3
        Top = 330
        Width = 98
        Height = 13
        Caption = 'Descuento Asignado'
        FocusControl = DBEdit7
      end
      object Label19: TLabel
        Left = 3
        Top = 347
        Width = 70
        Height = 13
        Caption = 'Balance Actual'
        FocusControl = DBEdit8
      end
      object Label20: TLabel
        Left = 3
        Top = 388
        Width = 69
        Height = 13
        Caption = #218'ltima Factura'
        FocusControl = DBEdit9
      end
      object Label21: TLabel
        Left = 253
        Top = 388
        Width = 116
        Height = 13
        Caption = 'Fecha de '#218'ltima Factura'
        FocusControl = DBEdit10
      end
      object SpeedButton1: TSpeedButton
        Left = 250
        Top = 267
        Width = 20
        Height = 19
        Flat = True
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
          6666666666666666666666660000666666666666666666666666666666666666
          0000666666666666666666666666666666666666000066666666FFF666666666
          666666FFF666666600006666666811F66666666666666877F666666600006666
          666811F66666666666666877F666666600006666666811F66666666666666877
          F666666600006666FFF611FFFFF6666666FFF777FFFFF6660000666811111111
          11F66666687777777777F666000066681111111111F66666687777777777F666
          000066688888116888666666688888777888666600006666666811F666666666
          66666877F666666600006666666811F66666666666666877F666666600006666
          666811F66666666666666877F666666600006666666888666666666666666888
          6666666600006666666666666666666666666666666666660000666666666666
          6666666666666666666666660000666666666666666666666666666666666666
          0000}
        NumGlyphs = 2
        OnClick = SpeedButton1Click
      end
      object Descripcion: TwwDBComboBox
        Left = 128
        Top = 25
        Width = 367
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        ButtonStyle = cbsCustom
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Nombre'
        DataSource = Modulo.dProveedores
        DisableDropDownList = True
        DropDownCount = 15
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        ButtonWidth = -1
        HistoryList.Section = 'Nombres'
        HistoryList.FileName = 'Proveedores.hlst'
        HistoryList.Enabled = True
        ItemHeight = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 1
        UnboundDataType = wwDefault
      end
      object Codigo: TDBEdit
        Left = 128
        Top = 5
        Width = 134
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'Numero'
        DataSource = Modulo.dProveedores
        ParentColor = True
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object wwDBComboBox1: TwwDBComboBox
        Left = 128
        Top = 45
        Width = 367
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        ButtonStyle = cbsCustom
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Contacto'
        DataSource = Modulo.dProveedores
        DisableDropDownList = True
        DropDownCount = 15
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        ButtonWidth = -1
        HistoryList.Section = 'Contactos'
        HistoryList.FileName = 'Proveedores.hlst'
        HistoryList.Enabled = True
        ItemHeight = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 2
        UnboundDataType = wwDefault
      end
      object wwDBComboBox2: TwwDBComboBox
        Left = 128
        Top = 65
        Width = 367
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        ButtonStyle = cbsCustom
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Cedula_Rnc_Pasaporte'
        DataSource = Modulo.dProveedores
        DisableDropDownList = True
        DropDownCount = 15
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        ButtonWidth = -1
        HistoryList.Section = 'CRP'
        HistoryList.FileName = 'Proveedores.hlst'
        HistoryList.Enabled = True
        ItemHeight = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 3
        UnboundDataType = wwDefault
      end
      object wwDBComboBox3: TwwDBComboBox
        Left = 128
        Top = 85
        Width = 367
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        ButtonStyle = cbsCustom
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Direccion'
        DataSource = Modulo.dProveedores
        DisableDropDownList = True
        DropDownCount = 15
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        ButtonWidth = -1
        HistoryList.Section = 'Direcciones'
        HistoryList.FileName = 'Proveedores.hlst'
        HistoryList.Enabled = True
        ItemHeight = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 4
        UnboundDataType = wwDefault
      end
      object wwDBComboBox4: TwwDBComboBox
        Left = 128
        Top = 105
        Width = 367
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        ButtonStyle = cbsCustom
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Pais'
        DataSource = Modulo.dProveedores
        DisableDropDownList = True
        DropDownCount = 15
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        ButtonWidth = -1
        HistoryList.Section = 'Paises'
        HistoryList.FileName = 'Proveedores.hlst'
        HistoryList.Enabled = True
        ItemHeight = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 5
        UnboundDataType = wwDefault
      end
      object wwDBComboBox5: TwwDBComboBox
        Left = 128
        Top = 125
        Width = 367
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        ButtonStyle = cbsCustom
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Ciudad'
        DataSource = Modulo.dProveedores
        DisableDropDownList = True
        DropDownCount = 15
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        ButtonWidth = -1
        HistoryList.Section = 'Ciudades'
        HistoryList.FileName = 'Proveedores.hlst'
        HistoryList.Enabled = True
        ItemHeight = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 6
        UnboundDataType = wwDefault
      end
      object wwDBComboBox6: TwwDBComboBox
        Left = 128
        Top = 145
        Width = 367
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        ButtonStyle = cbsCustom
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Estado'
        DataSource = Modulo.dProveedores
        DisableDropDownList = True
        DropDownCount = 15
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        ButtonWidth = -1
        HistoryList.Section = 'Estados'
        HistoryList.FileName = 'Proveedores.hlst'
        HistoryList.Enabled = True
        ItemHeight = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 7
        UnboundDataType = wwDefault
      end
      object wwDBComboBox7: TwwDBComboBox
        Left = 128
        Top = 165
        Width = 367
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        ButtonStyle = cbsCustom
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Sector'
        DataSource = Modulo.dProveedores
        DisableDropDownList = True
        DropDownCount = 15
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        ButtonWidth = -1
        HistoryList.Section = 'Sectores'
        HistoryList.FileName = 'Proveedores.hlst'
        HistoryList.Enabled = True
        ItemHeight = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 8
        UnboundDataType = wwDefault
      end
      object wwDBComboBox8: TwwDBComboBox
        Left = 128
        Top = 405
        Width = 119
        Height = 19
        ShowButton = True
        Style = csDropDownList
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Status'
        DataSource = Modulo.dProveedores
        DropDownCount = 15
        HistoryList.Section = 'Status'
        HistoryList.FileName = 'Proveedores.hlst'
        HistoryList.Enabled = True
        HistoryList.MRUEnabled = True
        ItemHeight = 0
        Items.Strings = (
          'ACTIVO'
          'INACTIVO')
        ItemIndex = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 22
        UnboundDataType = wwDefault
      end
      object Fecha: TwwDBDateTimePicker
        Left = 376
        Top = 404
        Width = 121
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'Fecha_Registro'
        DataSource = Modulo.dProveedores
        Epoch = 1950
        ShowButton = True
        TabOrder = 23
      end
      object DBEdit2: TDBEdit
        Left = 128
        Top = 287
        Width = 119
        Height = 19
        Ctl3D = False
        DataField = 'Limite_Credito'
        DataSource = Modulo.dProveedores
        ParentCtl3D = False
        TabOrder = 15
      end
      object DBEdit5: TDBEdit
        Left = 128
        Top = 307
        Width = 119
        Height = 19
        Ctl3D = False
        DataField = 'Numero_Tarjeta'
        DataSource = Modulo.dProveedores
        ParentCtl3D = False
        TabOrder = 16
      end
      object DBEdit7: TDBEdit
        Left = 128
        Top = 327
        Width = 119
        Height = 19
        Ctl3D = False
        DataField = 'Descuento_Asignado'
        DataSource = Modulo.dProveedores
        ParentCtl3D = False
        TabOrder = 18
      end
      object DBEdit8: TDBEdit
        Left = 128
        Top = 347
        Width = 119
        Height = 19
        Ctl3D = False
        DataField = 'Balance_Actual'
        DataSource = Modulo.dProveedores
        ParentCtl3D = False
        TabOrder = 19
      end
      object DBEdit9: TDBEdit
        Left = 128
        Top = 385
        Width = 119
        Height = 19
        Ctl3D = False
        DataField = 'Ultima_Factura'
        DataSource = Modulo.dProveedores
        ParentCtl3D = False
        TabOrder = 20
      end
      object wwDBComboBox9: TwwDBComboBox
        Left = 128
        Top = 231
        Width = 119
        Height = 19
        ShowButton = True
        Style = csDropDownList
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Tipo_Suplidor'
        DataSource = Modulo.dProveedores
        DropDownCount = 15
        HistoryList.Section = 'TipoProveedor'
        HistoryList.FileName = 'Proveedores.hlst'
        HistoryList.Enabled = True
        HistoryList.MRUEnabled = True
        ItemHeight = 0
        Items.Strings = (
          'Persona'
          'Compa'#241#237'a')
        ItemIndex = 1
        ParentCtl3D = False
        Sorted = False
        TabOrder = 13
        UnboundDataType = wwDefault
      end
      object wwDBComboBox10: TwwDBComboBox
        Left = 0
        Top = 187
        Width = 81
        Height = 19
        TabStop = False
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        BorderStyle = bsNone
        Ctl3D = False
        DataField = 'Tipo_Telefono_1'
        DataSource = Modulo.dProveedores
        DropDownCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        ItemHeight = 0
        Items.Strings = (
          'Beeper'
          'Celular'
          'Fax'
          'Otro Tel.'
          'Pager'
          'Tel. Automovil'
          'Tel. Local'
          'Tel. Oficina'
          'Tel. Real')
        ItemIndex = 0
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        Sorted = True
        TabOrder = 24
        UnboundDataType = wwDefault
      end
      object wwDBComboBox11: TwwDBComboBox
        Left = 0
        Top = 210
        Width = 81
        Height = 19
        TabStop = False
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        BorderStyle = bsNone
        Ctl3D = False
        DataField = 'Tipo_Telefono_2'
        DataSource = Modulo.dProveedores
        DropDownCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        ItemHeight = 0
        Items.Strings = (
          'Beeper'
          'Celular'
          'Fax'
          'Otro Tel.'
          'Pager'
          'Tel. Automovil'
          'Tel. Local'
          'Tel. Oficina'
          'Tel. Real')
        ItemIndex = 0
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        Sorted = False
        TabOrder = 25
        UnboundDataType = wwDefault
      end
      object wwDBComboBox12: TwwDBComboBox
        Left = 282
        Top = 187
        Width = 81
        Height = 19
        TabStop = False
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        BorderStyle = bsNone
        Ctl3D = False
        DataField = 'Tipo_Telefono_3'
        DataSource = Modulo.dProveedores
        DropDownCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        ItemHeight = 0
        Items.Strings = (
          'Beeper'
          'Celular'
          'Fax'
          'Otro Tel.'
          'Pager'
          'Tel. Automovil'
          'Tel. Local'
          'Tel. Oficina'
          'Tel. Real')
        ItemIndex = 0
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        Sorted = False
        TabOrder = 26
        UnboundDataType = wwDefault
      end
      object wwDBComboBox13: TwwDBComboBox
        Left = 282
        Top = 210
        Width = 81
        Height = 19
        TabStop = False
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        BorderStyle = bsNone
        Ctl3D = False
        DataField = 'Tipo_Telefono_4'
        DataSource = Modulo.dProveedores
        DropDownCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        ItemHeight = 0
        Items.Strings = (
          'Beeper'
          'Celular'
          'Fax'
          'Otro Tel.'
          'Pager'
          'Tel. Automovil'
          'Tel. Local'
          'Tel. Oficina'
          'Tel. Real')
        ItemIndex = 0
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        Sorted = False
        TabOrder = 27
        UnboundDataType = wwDefault
      end
      object DBEdit21: TDBEdit
        Left = 376
        Top = 208
        Width = 119
        Height = 22
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Numero_Telefono_4'
        DataSource = Modulo.dProveedores
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 12
      end
      object DBEdit19: TDBEdit
        Left = 376
        Top = 185
        Width = 119
        Height = 22
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Numero_Telefono_3'
        DataSource = Modulo.dProveedores
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
      end
      object DBEdit17: TDBEdit
        Left = 128
        Top = 208
        Width = 119
        Height = 22
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Numero_Telefono_2'
        DataSource = Modulo.dProveedores
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
      end
      object DBEdit15: TDBEdit
        Left = 128
        Top = 185
        Width = 119
        Height = 22
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Numero_Telefono_1'
        DataSource = Modulo.dProveedores
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
      end
      object wwDBComboBox14: TwwDBComboBox
        Left = 376
        Top = 267
        Width = 119
        Height = 19
        ShowButton = True
        Style = csDropDownList
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Tipo_Suplidor'
        DataSource = Modulo.dProveedores
        DropDownCount = 15
        HistoryList.Section = 'CondicionProveedor'
        HistoryList.FileName = 'Proveedores.hlst'
        HistoryList.Enabled = True
        HistoryList.MRUEnabled = True
        ItemHeight = 0
        Items.Strings = (
          'Cr'#233'dito'
          'Contado')
        ItemIndex = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 14
        UnboundDataType = wwDefault
      end
      object GroupBox1: TGroupBox
        Left = 4
        Top = 250
        Width = 501
        Height = 13
        Caption = '  Datos de Facturaci'#243'n  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 28
      end
      object GroupBox2: TGroupBox
        Left = 4
        Top = 370
        Width = 501
        Height = 13
        Caption = '  Hist'#243'rico  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 29
      end
      object DBEdit10: TDBEdit
        Left = 376
        Top = 384
        Width = 121
        Height = 19
        Ctl3D = False
        DataField = 'Fecha_Ultima_Factura'
        DataSource = Modulo.dProveedores
        ParentCtl3D = False
        TabOrder = 21
      end
      object wwDBComboBox15: TwwDBComboBox
        Left = 376
        Top = 309
        Width = 119
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        ButtonStyle = cbsCustom
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Numero_Cuenta'
        DataSource = Modulo.dProveedores
        DisableDropDownList = True
        DropDownCount = 15
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        ButtonWidth = -1
        HistoryList.Section = 'Cuentas'
        HistoryList.FileName = 'Proveedores.hlst'
        HistoryList.Enabled = True
        ItemHeight = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 17
        UnboundDataType = wwDefault
      end
      object TipoProducto: TwwDBLookupCombo
        Left = 127
        Top = 267
        Width = 121
        Height = 19
        Ctl3D = False
        CharCase = ecUpperCase
        DisableThemes = False
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'Descripcion'#9'50'#9'Descripci'#243'n'#9'F'
          'DiasDeGracia'#9'10'#9'DiasDeGracia'#9'F')
        DataField = 'TerminosFacturacion'
        DataSource = Modulo.dProveedores
        LookupTable = Modulo.tTerminos
        LookupField = 'Numero_Termino'
        Options = [loColLines, loRowLines, loTitles, loSearchOnBackspace]
        Navigator = False
        ParentCtl3D = False
        TabOrder = 30
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
        ShowMatchText = True
      end
    end
  end
  object AdvPageControl1: TAdvPageControl
    Left = 551
    Top = 41
    Width = 154
    Height = 152
    ActivePage = Botones
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
    Version = '1.4.0.0'
    TabHeight = 19
    TabOrder = 2
    TabStop = False
    TabWidth = 100
    object Botones: TAdvTabSheet
      Color = clBtnFace
      ColorTo = clNone
      ImageIndex = 63
      TabGradientDirection = gdHorizontal
      TabColor = clBlack
      TabColorTo = clOlive
      object ActionToolBar1: TActionToolBar
        Left = 0
        Top = 0
        Width = 146
        Height = 129
        ActionManager = Opciones
        Align = alNone
        Caption = 'ActionToolBar1'
        ColorMap = ColorConfig
        Orientation = boTopToBottom
        Spacing = 0
      end
    end
  end
  object ColorConfig: TXPColorMap
    HighlightColor = 14410210
    BtnSelectedColor = clBtnFace
    UnusedColor = 14410210
    Left = 373
    Top = 12
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
            Action = Eliminar
            ImageIndex = 26
            ShortCut = 16453
          end
          item
            Action = Buscar
            ImageIndex = 69
            ShortCut = 16450
          end
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
                Action = Nuevo
                Caption = '&Nuevo'
                ImageIndex = 1
                ShortCut = 16462
              end
              item
                Action = Buscar
                Caption = '&Buscar'
                ImageIndex = 69
                ShortCut = 16450
              end
              item
                Action = Eliminar
                Caption = '&Eliminar'
                ImageIndex = 26
                ShortCut = 16453
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
            Action = Buscar
            Caption = '&Buscar'
            ImageIndex = 69
            ShortCut = 16450
          end
          item
            Action = Eliminar
            Caption = '&Eliminar'
            ImageIndex = 26
            ShortCut = 16453
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
            Action = Nuevo
            Caption = '&Nuevo'
            ImageIndex = 1
            ShortCut = 16462
          end
          item
            Action = Buscar
            Caption = '&Buscar'
            ImageIndex = 69
            ShortCut = 16450
          end
          item
            Action = Eliminar
            Caption = '&Eliminar'
            ImageIndex = 26
            ShortCut = 16453
          end
          item
            Action = Salir
            Caption = '&Salir'
            ImageIndex = 10
            ShortCut = 27
          end>
        ActionBar = ActionToolBar1
      end>
    Images = Modulo.SystemImages
    Left = 280
    Top = 12
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
    object Buscar: TAction
      Category = 'Opciones'
      Caption = 'Buscar'
      ImageIndex = 69
      ShortCut = 16450
      OnExecute = BuscarExecute
    end
    object Eliminar: TAction
      Category = 'Opciones'
      Caption = 'Eliminar'
      ImageIndex = 26
      ShortCut = 16453
      OnExecute = EliminarExecute
    end
    object Anadir_Terminos: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'A'#241'adir Terminos de Facturaci'#243'n'
      OnExecute = Anadir_TerminosExecute
    end
  end
end
