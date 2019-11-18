object FTerminales: TFTerminales
  Left = 126
  Top = -1
  BorderStyle = bsToolWindow
  Caption = 'Configuracion De Terminales'
  ClientHeight = 576
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MainPanel: TPanel
    Left = 0
    Top = 0
    Width = 794
    Height = 576
    Align = alClient
    BevelInner = bvLowered
    ParentColor = True
    TabOrder = 0
    object SpeedButton3: TSpeedButton
      Left = 609
      Top = 538
      Width = 176
      Height = 22
      Hint = 'Color Personalizado'
      Caption = 'Color de las Pantallas'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00559999999995
        5555557777777775F5555559999999505555555777777757FFF5555555555550
        0955555555555FF7775F55555555995501955555555577557F75555555555555
        01995555555555557F5755555555555501905555555555557F57555555555555
        0F905555555555557FF75555555555500005555555555557777555555555550F
        F05555555555557F57F5555555555008F05555555555F775F755555555570000
        05555555555775577555555555700007555555555F755F775555555570000755
        55555555775F77555555555700075555555555F75F7755555555570007555555
        5555577F77555555555500075555555555557777555555555555}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton3Click
    end
    object Label13: TLabel
      Left = 609
      Top = 337
      Width = 69
      Height = 13
      Caption = 'Hora_Apertura'
      FocusControl = DBEdit17
    end
    object Label15: TLabel
      Left = 609
      Top = 380
      Width = 56
      Height = 13
      Caption = 'Hora_Cierre'
      FocusControl = DBEdit18
    end
    object Label21: TLabel
      Left = 275
      Top = 404
      Width = 105
      Height = 13
      Caption = 'Decimales Cantidades'
    end
    object Label27: TLabel
      Left = 275
      Top = 426
      Width = 108
      Height = 13
      Caption = 'Decimales Porcentajes'
    end
    object Label28: TLabel
      Left = 275
      Top = 451
      Width = 41
      Height = 13
      Caption = 'Almac'#233'n'
    end
    object Compania: TPanel
      Left = 276
      Top = 5
      Width = 328
      Height = 116
      BevelInner = bvLowered
      ParentColor = True
      TabOrder = 1
      object Label2: TLabel
        Left = 66
        Top = 10
        Width = 37
        Height = 13
        Caption = '&Nombre'
        FocusControl = DBEdit1
      end
      object Label3: TLabel
        Left = 58
        Top = 30
        Width = 45
        Height = 13
        Caption = 'Direcci'#243'n'
      end
      object Label4: TLabel
        Left = 70
        Top = 50
        Width = 33
        Height = 13
        Caption = 'Ciudad'
      end
      object Label5: TLabel
        Left = 81
        Top = 70
        Width = 22
        Height = 13
        Caption = 'Pa'#237's'
      end
      object Label6: TLabel
        Left = 18
        Top = 90
        Width = 85
        Height = 13
        Caption = 'Telefono Principal'
      end
      object DBEdit1: TDBEdit
        Left = 109
        Top = 7
        Width = 212
        Height = 19
        Ctl3D = False
        DataField = 'Descripcion'
        DataSource = Modulo.dTerminales
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 109
        Top = 27
        Width = 212
        Height = 19
        Ctl3D = False
        DataField = 'Direccion'
        DataSource = Modulo.dTerminales
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 109
        Top = 47
        Width = 212
        Height = 19
        Ctl3D = False
        DataField = 'Ciudad'
        DataSource = Modulo.dTerminales
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 109
        Top = 67
        Width = 212
        Height = 19
        Ctl3D = False
        DataField = 'Pais'
        DataSource = Modulo.dTerminales
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 109
        Top = 87
        Width = 212
        Height = 19
        Ctl3D = False
        DataField = 'Telefono'
        DataSource = Modulo.dTerminales
        ParentCtl3D = False
        TabOrder = 4
      end
    end
    object DetailsPanel: TPanel
      Left = 609
      Top = 5
      Width = 176
      Height = 164
      BevelInner = bvLowered
      ParentColor = True
      TabOrder = 3
      object Label8: TLabel
        Left = 14
        Top = 9
        Width = 46
        Height = 13
        Caption = 'Impresora'
      end
      object Label18: TLabel
        Left = 6
        Top = 49
        Width = 54
        Height = 13
        Caption = 'ID Terminal'
      end
      object Label25: TLabel
        Left = 29
        Top = 29
        Width = 31
        Height = 13
        Caption = 'Puerto'
      end
      object Label26: TLabel
        Left = 18
        Top = 129
        Width = 42
        Height = 13
        Caption = 'Numeros'
      end
      object Label1: TLabel
        Left = 4
        Top = 69
        Width = 56
        Height = 13
        Caption = 'Descripci'#243'n'
      end
      object Label9: TLabel
        Left = 30
        Top = 89
        Width = 30
        Height = 13
        Caption = 'Status'
      end
      object Impresora: TwwDBComboBox
        Left = 66
        Top = 6
        Width = 95
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        Ctl3D = False
        DataField = 'Impresora'
        DataSource = Modulo.dTerminales
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          'EPSON'
          'SP200X'
          'ITHACA')
        ItemIndex = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 0
        UnboundDataType = wwDefault
      end
      object Puerto: TwwDBComboBox
        Left = 66
        Top = 26
        Width = 95
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        Ctl3D = False
        DataField = 'Puerto'
        DataSource = Modulo.dTerminales
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          'LPT1:'
          'PRN'
          'COM1:'
          'COM2:')
        ItemIndex = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 1
        UnboundDataType = wwDefault
      end
      object Terminal: TwwDBComboBox
        Left = 66
        Top = 46
        Width = 95
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        ShowMatchText = True
        Ctl3D = False
        DataField = 'ID'
        DataSource = Modulo.dTerminales
        DropDownCount = 8
        ButtonWidth = -1
        HistoryList.Section = 'ID-TERMINAL'
        HistoryList.FileName = 'IDS.hlst'
        HistoryList.Enabled = True
        ItemHeight = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 2
        UnboundDataType = wwDefault
      end
      object Tamano_Numeros: TwwDBComboBox
        Left = 66
        Top = 126
        Width = 95
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        Ctl3D = False
        DataField = 'Formato_Numeros'
        DataSource = Modulo.dTerminales
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          'HIGH'
          'MEDIUM'
          'NORMAL')
        ItemIndex = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 5
        UnboundDataType = wwDefault
      end
      object Nombre: TwwDBComboBox
        Left = 66
        Top = 66
        Width = 95
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        ShowMatchText = True
        Ctl3D = False
        DataField = 'Nombre'
        DataSource = Modulo.dTerminales
        DropDownCount = 8
        ButtonWidth = -1
        HistoryList.Section = 'NOMBRES'
        HistoryList.FileName = 'IDS.hlst'
        HistoryList.Enabled = True
        ItemHeight = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 3
        UnboundDataType = wwDefault
      end
      object Status: TwwDBComboBox
        Left = 66
        Top = 86
        Width = 95
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        Ctl3D = False
        DataField = 'Status'
        DataSource = Modulo.dTerminales
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          'ACTIVO'
          'INACTIVO'
          'REINICIAR'
          'APAGAR'
          'CERRADO'
          'ABRIR')
        ItemIndex = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 4
        UnboundDataType = wwDefault
      end
    end
    object ComentsPanel: TPanel
      Left = 276
      Top = 126
      Width = 328
      Height = 136
      BevelInner = bvLowered
      ParentColor = True
      TabOrder = 2
      object Label7: TLabel
        Left = 35
        Top = 7
        Width = 69
        Height = 13
        Caption = 'Comentario #1'
      end
      object Label14: TLabel
        Left = 35
        Top = 27
        Width = 69
        Height = 13
        Caption = 'Comentario #2'
      end
      object Label16: TLabel
        Left = 35
        Top = 47
        Width = 69
        Height = 13
        Caption = 'Comentario #3'
      end
      object Label17: TLabel
        Left = 35
        Top = 67
        Width = 69
        Height = 13
        Caption = 'Comentario #4'
      end
      object Label23: TLabel
        Left = 24
        Top = 89
        Width = 80
        Height = 13
        Caption = 'Separador L'#237'nea'
      end
      object Label24: TLabel
        Left = 44
        Top = 111
        Width = 60
        Height = 13
        Caption = 'Ancho Linea'
      end
      object Lineas_Despues: TLabel
        Left = 210
        Top = 89
        Width = 51
        Height = 13
        Caption = 'L'#237'neas Pie'
      end
      object DBEdit6: TDBEdit
        Left = 109
        Top = 4
        Width = 212
        Height = 19
        Ctl3D = False
        DataField = 'Comentario_1'
        DataSource = Modulo.dTerminales
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit7: TDBEdit
        Left = 109
        Top = 24
        Width = 212
        Height = 19
        Ctl3D = False
        DataField = 'Comentario_2'
        DataSource = Modulo.dTerminales
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit8: TDBEdit
        Left = 109
        Top = 44
        Width = 212
        Height = 19
        Ctl3D = False
        DataField = 'Comentario_3'
        DataSource = Modulo.dTerminales
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit9: TDBEdit
        Left = 109
        Top = 64
        Width = 212
        Height = 19
        Ctl3D = False
        DataField = 'Comentario_4'
        DataSource = Modulo.dTerminales
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit10: TDBEdit
        Left = 109
        Top = 85
        Width = 17
        Height = 19
        Ctl3D = False
        DataField = 'Separador_Linea'
        DataSource = Modulo.dTerminales
        ParentCtl3D = False
        TabOrder = 4
      end
      object AnchoLinea: TwwDBSpinEdit
        Left = 109
        Top = 108
        Width = 66
        Height = 19
        Increment = 1.000000000000000000
        Ctl3D = False
        DataField = 'Ancho_Linea'
        DataSource = Modulo.dTerminales
        ParentCtl3D = False
        TabOrder = 5
        UnboundDataType = wwDefault
      end
      object Lineas_Pie: TwwDBSpinEdit
        Left = 267
        Top = 86
        Width = 54
        Height = 19
        Increment = 1.000000000000000000
        Ctl3D = False
        DataField = 'Lineas_Despues'
        DataSource = Modulo.dTerminales
        ParentCtl3D = False
        TabOrder = 6
        UnboundDataType = wwDefault
      end
    end
    object FormatPanel: TPanel
      Left = 275
      Top = 268
      Width = 328
      Height = 130
      BevelInner = bvLowered
      ParentColor = True
      TabOrder = 4
      object Label10: TLabel
        Left = 26
        Top = 9
        Width = 94
        Height = 13
        Caption = 'Simbolo de Moneda'
      end
      object Label11: TLabel
        Left = 34
        Top = 29
        Width = 86
        Height = 13
        Caption = 'Formato de Fecha'
      end
      object Label12: TLabel
        Left = 41
        Top = 49
        Width = 79
        Height = 13
        Caption = 'Formato de Hora'
      end
      object Label19: TLabel
        Left = 4
        Top = 69
        Width = 116
        Height = 13
        Caption = 'Formato de Fecha Largo'
      end
      object Label20: TLabel
        Left = 11
        Top = 89
        Width = 109
        Height = 13
        Caption = 'Formato de Hora Largo'
      end
      object Label22: TLabel
        Left = 28
        Top = 109
        Width = 92
        Height = 13
        Caption = 'Formato # - Tel - Hr'
      end
      object DBEdit11: TDBEdit
        Left = 136
        Top = 6
        Width = 82
        Height = 19
        Ctl3D = False
        DataField = 'Simbolo_Moneda'
        DataSource = Modulo.dTerminales
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit12: TDBEdit
        Left = 136
        Top = 26
        Width = 150
        Height = 19
        Ctl3D = False
        DataField = 'Formato_Fecha'
        DataSource = Modulo.dTerminales
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit13: TDBEdit
        Left = 136
        Top = 46
        Width = 150
        Height = 19
        Ctl3D = False
        DataField = 'Formato_Hora'
        DataSource = Modulo.dTerminales
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit14: TDBEdit
        Left = 136
        Top = 66
        Width = 150
        Height = 19
        Ctl3D = False
        DataField = 'Formato_Fecha_Largo'
        DataSource = Modulo.dTerminales
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit15: TDBEdit
        Left = 136
        Top = 86
        Width = 150
        Height = 19
        Ctl3D = False
        DataField = 'Formato_Hora_Largo'
        DataSource = Modulo.dTerminales
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBEdit16: TDBEdit
        Left = 136
        Top = 106
        Width = 150
        Height = 19
        Ctl3D = False
        DataField = 'Formato_N_T_H'
        DataSource = Modulo.dTerminales
        ParentCtl3D = False
        TabOrder = 5
      end
    end
    object wwDBGrid1: TwwDBGrid
      Left = 5
      Top = 5
      Width = 264
      Height = 556
      ControlType.Strings = (
        'Icon;ImageIndex;Original Size')
      Selected.Strings = (
        'Icon'#9'5'#9'Icon'#9'F'
        'Descripcion'#9'30'#9'Descripcion'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = 12772281
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = Modulo.dTerminales
      KeyOptions = [dgEnterToTab]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      ImageList = Modulo.SystemImages
      PadColumnStyle = pcsPlain
    end
    object wwCheckBox1: TwwCheckBox
      Left = 276
      Top = 497
      Width = 128
      Height = 17
      DisableThemes = False
      AlwaysTransparent = False
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      DisplayValueChecked = 'True'
      DisplayValueUnchecked = 'False'
      NullAndBlankState = cbUnchecked
      Caption = 'CTRL + ALT + DEL'
      DataField = 'Ctrl_Alt_Del'
      DataSource = Modulo.dTerminales
      TabOrder = 5
    end
    object wwCheckBox2: TwwCheckBox
      Left = 276
      Top = 513
      Width = 128
      Height = 17
      DisableThemes = False
      AlwaysTransparent = False
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      DisplayValueChecked = 'True'
      DisplayValueUnchecked = 'False'
      NullAndBlankState = cbUnchecked
      Caption = 'ALT + F4'
      DataField = 'Alt_F4'
      DataSource = Modulo.dTerminales
      TabOrder = 6
    end
    object wwCheckBox3: TwwCheckBox
      Left = 276
      Top = 528
      Width = 128
      Height = 17
      DisableThemes = False
      AlwaysTransparent = False
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      DisplayValueChecked = 'True'
      DisplayValueUnchecked = 'False'
      NullAndBlankState = cbUnchecked
      Caption = 'Ocultar Barra'
      DataField = 'Barra'
      DataSource = Modulo.dTerminales
      TabOrder = 7
    end
    object wwCheckBox4: TwwCheckBox
      Left = 276
      Top = 543
      Width = 128
      Height = 17
      DisableThemes = False
      AlwaysTransparent = False
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      DisplayValueChecked = 'True'
      DisplayValueUnchecked = 'False'
      NullAndBlankState = cbUnchecked
      Caption = 'Control Panel'
      DataField = 'Panel'
      DataSource = Modulo.dTerminales
      TabOrder = 8
    end
    object wwCheckBox5: TwwCheckBox
      Left = 463
      Top = 497
      Width = 128
      Height = 17
      DisableThemes = False
      AlwaysTransparent = False
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      DisplayValueChecked = 'True'
      DisplayValueUnchecked = 'False'
      NullAndBlankState = cbUnchecked
      Caption = 'Run'
      DataField = 'Run'
      DataSource = Modulo.dTerminales
      TabOrder = 9
    end
    object wwCheckBox6: TwwCheckBox
      Left = 463
      Top = 513
      Width = 128
      Height = 17
      DisableThemes = False
      AlwaysTransparent = False
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      DisplayValueChecked = 'True'
      DisplayValueUnchecked = 'False'
      NullAndBlankState = cbUnchecked
      Caption = 'Find'
      DataField = 'Find'
      DataSource = Modulo.dTerminales
      TabOrder = 10
    end
    object wwCheckBox7: TwwCheckBox
      Left = 463
      Top = 528
      Width = 128
      Height = 17
      DisableThemes = False
      AlwaysTransparent = False
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      DisplayValueChecked = 'True'
      DisplayValueUnchecked = 'False'
      NullAndBlankState = cbUnchecked
      Caption = 'Windows Key'
      DataField = 'WinKey'
      DataSource = Modulo.dTerminales
      TabOrder = 11
    end
    object wwCheckBox8: TwwCheckBox
      Left = 463
      Top = 543
      Width = 128
      Height = 17
      DisableThemes = False
      AlwaysTransparent = False
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      DisplayValueChecked = 'True'
      DisplayValueUnchecked = 'False'
      NullAndBlankState = cbUnchecked
      Caption = 'Apaga al Salir'
      DataField = 'Apagar_Salir'
      DataSource = Modulo.dTerminales
      TabOrder = 12
    end
    object Page_Botones: TAdvPageControl
      Left = 610
      Top = 175
      Width = 136
      Height = 155
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
      Version = '1.6.0.0'
      TabHeight = 19
      TabOrder = 13
      TabStop = False
      TabWidth = 100
      object Botones: TAdvTabSheet
        Color = clBtnFace
        ColorTo = clNone
        ImageIndex = -1
        TabGradientDirection = gdHorizontal
        TabColor = clBlack
        TabColorTo = clOlive
        object atb_Botones: TActionToolBar
          Left = -2
          Top = -1
          Width = 153
          Height = 132
          ActionManager = Opciones
          Align = alNone
          Caption = 'atb_Botones'
          ColorMap = ColorConfig
          Orientation = boTopToBottom
          Spacing = 0
        end
      end
    end
    object DBEdit17: TDBEdit
      Left = 609
      Top = 353
      Width = 134
      Height = 19
      Ctl3D = False
      DataField = 'Hora_Apertura'
      DataSource = Modulo.dTerminales
      ParentCtl3D = False
      TabOrder = 14
    end
    object DBEdit18: TDBEdit
      Left = 609
      Top = 396
      Width = 134
      Height = 19
      Ctl3D = False
      DataField = 'Hora_Cierre'
      DataSource = Modulo.dTerminales
      ParentCtl3D = False
      TabOrder = 15
    end
    object DBEdit19: TDBEdit
      Left = 411
      Top = 404
      Width = 150
      Height = 19
      Ctl3D = False
      DataField = 'Formato_Hora_Largo'
      DataSource = Modulo.dTerminales
      ParentCtl3D = False
      TabOrder = 16
    end
    object DBEdit20: TDBEdit
      Left = 411
      Top = 426
      Width = 150
      Height = 19
      Ctl3D = False
      DataField = 'Formato_Hora_Largo'
      DataSource = Modulo.dTerminales
      ParentCtl3D = False
      TabOrder = 17
    end
    object Almacen: TwwDBLookupCombo
      Left = 411
      Top = 448
      Width = 150
      Height = 19
      Ctl3D = False
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'Descripcion'#9'35'#9'Descripcion'#9'F'
        'Encargado'#9'45'#9'Encargado'#9'F')
      DataField = 'Almacen'
      DataSource = Modulo.dTerminales
      LookupTable = Modulo.tAlmacen
      LookupField = 'Codigo'
      Options = [loColLines, loRowLines, loTitles, loSearchOnBackspace]
      Style = csDropDownList
      ParentCtl3D = False
      TabOrder = 18
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
    end
  end
  object AbrirLogo: TOpenDialog
    Filter = 'Windows Avi|*.Avi|Todos los Archivos|*.*'
    Left = 152
    Top = 199
  end
  object WindowsColor: TColorDialog
    Color = 16250058
    Options = [cdFullOpen]
    Left = 152
    Top = 253
  end
  object ColorConfig: TXPColorMap
    HighlightColor = 14410210
    BtnSelectedColor = clBtnFace
    UnusedColor = 14410210
    Left = 152
    Top = 145
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
            Action = Agregar
            ImageIndex = 2
            ShortCut = 16449
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
                Action = Agregar
                ImageIndex = 2
                ShortCut = 16449
              end
              item
                Action = Eliminar
                Caption = '&Eliminar'
                ImageIndex = 26
                ShortCut = 16453
              end>
            Caption = '&Opciones'
          end>
      end
      item
        Items = <
          item
            Action = Agregar
            ImageIndex = 2
            ShortCut = 16449
          end
          item
            Action = Guardar
            ImageIndex = 0
            ShortCut = 16455
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
        ActionBar = atb_Botones
      end>
    Images = Modulo.SystemImages
    Left = 152
    Top = 92
    StyleName = 'XP Style'
    object Salir: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Salir'
      ImageIndex = 10
      ShortCut = 27
      OnExecute = SalirExecute
    end
    object Agregar: TAction
      Category = 'Opciones'
      Caption = 'Agregar'
      ImageIndex = 2
      ShortCut = 16449
      OnExecute = AgregarExecute
    end
    object Guardar: TAction
      Category = 'Opciones'
      Caption = 'Guardar'
      ImageIndex = 0
      ShortCut = 16455
      OnExecute = GuardarExecute
    end
    object Eliminar: TAction
      Category = 'Opciones'
      Caption = 'Eliminar'
      ImageIndex = 26
      ShortCut = 16453
      OnExecute = EliminarExecute
    end
  end
end
