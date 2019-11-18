object FFabricantes: TFFabricantes
  Left = 120
  Top = 116
  BorderStyle = bsToolWindow
  Caption = 'Registro y Modificac'#243'n de Fabricantes'
  ClientHeight = 309
  ClientWidth = 668
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
  object Barra_Menu: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 668
    Height = 27
    UseSystemFont = False
    ActionManager = Opciones
    Caption = 'Barra_Menu'
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
    ExplicitWidth = 569
  end
  object Panel_Datos_Generales: TAdvPageControl
    Left = 5
    Top = 41
    Width = 500
    Height = 261
    ActivePage = Pg_Datos_Generales
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
    Version = '1.5.0.4'
    TabHeight = 19
    TabOrder = 0
    TabStop = False
    TabWidth = 250
    object Pg_Datos_Generales: TAdvTabSheet
      Caption = 'Datos Generales'
      Color = clBtnFace
      ColorTo = clNone
      ImageIndex = 41
      TabGradientDirection = gdHorizontal
      TabColor = clBlack
      TabColorTo = clOlive
      ExplicitLeft = -28
      ExplicitTop = 0
      object Label1: TLabel
        Left = 3
        Top = 7
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
      end
      object Label2: TLabel
        Left = 3
        Top = 48
        Width = 37
        Height = 13
        Caption = 'Nombre'
      end
      object Label3: TLabel
        Left = 3
        Top = 68
        Width = 72
        Height = 13
        Caption = 'Representante'
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
        Top = 188
        Width = 36
        Height = 13
        Caption = 'Estatus'
      end
      object Label12: TLabel
        Left = 3
        Top = 209
        Width = 87
        Height = 13
        Caption = 'Fecha de Registro'
      end
      object Shape1: TShape
        Left = 387
        Top = 4
        Width = 98
        Height = 99
      end
      object FOTO: TImage
        Left = 388
        Top = 5
        Width = 96
        Height = 97
        Cursor = crHandPoint
        Stretch = True
        OnDblClick = Agregar_FotoExecute
      end
      object Label7: TLabel
        Left = 399
        Top = 105
        Width = 74
        Height = 13
        Cursor = crHandPoint
        Caption = 'Agregar Foto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        OnClick = Agregar_FotoExecute
      end
      object LID: TLabel
        Left = 0
        Top = 28
        Width = 105
        Height = 13
        Caption = 'C'#233'dula/RNC/Registro'
        FocusControl = Cedula_Pasaporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Nombre: TwwDBComboBox
        Left = 106
        Top = 45
        Width = 271
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
        DataSource = Modulo.dFabricante
        DisableDropDownList = True
        DropDownCount = 15
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        ButtonWidth = -1
        HistoryList.Section = 'Nombres'
        HistoryList.FileName = 'Fabricantes.hlst'
        HistoryList.Enabled = True
        HistoryList.MRUEnabled = True
        ItemHeight = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 2
        UnboundDataType = wwDefault
      end
      object Codigo: TDBEdit
        Left = 106
        Top = 5
        Width = 134
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'Numero'
        DataSource = Modulo.dFabricante
        ParentColor = True
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object Representante: TwwDBComboBox
        Left = 106
        Top = 65
        Width = 271
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
        DataField = 'Representante'
        DataSource = Modulo.dFabricante
        DisableDropDownList = True
        DropDownCount = 15
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        ButtonWidth = -1
        HistoryList.Section = 'Representantes'
        HistoryList.FileName = 'Fabricantes.hlst'
        HistoryList.Enabled = True
        HistoryList.MRUEnabled = True
        ItemHeight = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 3
        UnboundDataType = wwDefault
      end
      object Direccion: TwwDBComboBox
        Left = 106
        Top = 85
        Width = 271
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
        DataSource = Modulo.dFabricante
        DisableDropDownList = True
        DropDownCount = 15
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        ButtonWidth = -1
        HistoryList.Section = 'Direcciones'
        HistoryList.FileName = 'Fabricantes.hlst'
        HistoryList.Enabled = True
        HistoryList.MRUEnabled = True
        ItemHeight = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 4
        UnboundDataType = wwDefault
      end
      object Pais: TwwDBComboBox
        Left = 106
        Top = 105
        Width = 271
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
        DataSource = Modulo.dFabricante
        DisableDropDownList = True
        DropDownCount = 15
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        ButtonWidth = -1
        HistoryList.Section = 'Paises'
        HistoryList.FileName = 'Fabricantes.hlst'
        HistoryList.Enabled = True
        HistoryList.MRUEnabled = True
        ItemHeight = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 5
        UnboundDataType = wwDefault
      end
      object Ciudad: TwwDBComboBox
        Left = 106
        Top = 125
        Width = 271
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
        DataSource = Modulo.dFabricante
        DisableDropDownList = True
        DropDownCount = 15
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        ButtonWidth = -1
        HistoryList.Section = 'Ciudades'
        HistoryList.FileName = 'Fabricantes.hlst'
        HistoryList.Enabled = True
        HistoryList.MRUEnabled = True
        ItemHeight = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 6
        UnboundDataType = wwDefault
      end
      object Estado: TwwDBComboBox
        Left = 106
        Top = 145
        Width = 271
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
        DataSource = Modulo.dFabricante
        DisableDropDownList = True
        DropDownCount = 15
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        ButtonWidth = -1
        HistoryList.Section = 'Estados'
        HistoryList.FileName = 'Fabricantes.hlst'
        HistoryList.Enabled = True
        HistoryList.MRUEnabled = True
        ItemHeight = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 7
        UnboundDataType = wwDefault
      end
      object Sector: TwwDBComboBox
        Left = 106
        Top = 165
        Width = 271
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
        DataSource = Modulo.dFabricante
        DisableDropDownList = True
        DropDownCount = 15
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        ButtonWidth = -1
        HistoryList.Section = 'Sectores'
        HistoryList.FileName = 'Fabricantes.hlst'
        HistoryList.Enabled = True
        HistoryList.MRUEnabled = True
        ItemHeight = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 8
        UnboundDataType = wwDefault
      end
      object Status: TwwDBComboBox
        Left = 106
        Top = 185
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
        DataSource = Modulo.dFabricante
        DropDownCount = 15
        HistoryList.Section = 'Status'
        HistoryList.FileName = 'Fabricantes.hlst'
        HistoryList.Enabled = True
        HistoryList.MRUEnabled = True
        ItemHeight = 0
        Items.Strings = (
          'ACTIVO'
          'INACTIVO')
        ItemIndex = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 9
        UnboundDataType = wwDefault
      end
      object Fecha: TwwDBDateTimePicker
        Left = 106
        Top = 205
        Width = 121
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'Fecha_Registro'
        DataSource = Modulo.dFabricante
        Epoch = 1950
        ShowButton = True
        TabOrder = 10
      end
      object Cedula_Pasaporte: TEdit
        Left = 106
        Top = 25
        Width = 271
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnExit = Cedula_PasaporteExit
      end
    end
  end
  object Panel_Botones: TAdvPageControl
    Left = 511
    Top = 41
    Width = 154
    Height = 191
    ActivePage = Pg_Botones
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
    Version = '1.5.0.4'
    TabHeight = 19
    TabOrder = 2
    TabStop = False
    TabWidth = 100
    object Pg_Botones: TAdvTabSheet
      Color = clBtnFace
      ColorTo = clNone
      ImageIndex = -1
      TabGradientDirection = gdHorizontal
      TabColor = clBlack
      TabColorTo = clOlive
      ExplicitHeight = 123
      object Botones: TActionToolBar
        Left = 0
        Top = 0
        Width = 146
        Height = 162
        ActionManager = Opciones
        Align = alClient
        Caption = 'Botones'
        ColorMap = Modulo.ColorConfig
        Orientation = boTopToBottom
        Spacing = 0
        ExplicitHeight = 129
      end
    end
  end
  object Opciones: TActionManager
    ActionBars = <
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
            ImageIndex = 2
            ShortCut = 16450
          end
          item
            Action = Eliminar
            Caption = '&Eliminar'
            ImageIndex = 4
            ShortCut = 16453
          end
          item
            Action = Salir
            Caption = '&Salir'
            ImageIndex = 10
            ShortCut = 27
          end>
        ActionBar = Botones
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
                ImageIndex = 2
                ShortCut = 16450
              end
              item
                Action = Eliminar
                Caption = 'E&liminar'
                ImageIndex = 4
                ShortCut = 16453
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
        ActionBar = Barra_Menu
      end>
    Images = Modulo.SystemImages
    Left = 280
    Top = 12
    StyleName = 'XP Style'
    object Salir: TAction
      Category = 'Opciones'
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
      ImageIndex = 2
      ShortCut = 16450
      OnExecute = BuscarExecute
    end
    object Eliminar: TAction
      Category = 'Opciones'
      Caption = 'Eliminar'
      ImageIndex = 4
      ShortCut = 16453
      OnExecute = EliminarExecute
    end
    object Agregar_Foto: TAction
      Category = 'Opciones'
      Caption = 'Agregar Foto'
      ImageIndex = 25
      ShortCut = 16454
      OnExecute = Agregar_FotoExecute
    end
  end
end
