object FInscripciones: TFInscripciones
  Left = 27
  Top = 114
  BorderStyle = bsToolWindow
  Caption = 'Inscripcion de Clientes'
  ClientHeight = 576
  ClientWidth = 706
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = Opciones_Miscelaneas
  Position = poMainFormCenter
  ShowHint = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label9: TLabel
    Left = 13
    Top = 271
    Width = 69
    Height = 16
    Caption = 'Comentario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label20: TLabel
    Left = 13
    Top = 228
    Width = 48
    Height = 16
    Caption = 'Periodo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label21: TLabel
    Left = 261
    Top = 249
    Width = 138
    Height = 16
    Caption = 'Cant. de Cuotas (1 a'#241'o)'
    FocusControl = Cuotas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label35: TLabel
    Left = 261
    Top = 228
    Width = 123
    Height = 16
    Caption = 'Monto de Inscripci'#243'n'
    FocusControl = Monto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label26: TLabel
    Left = 13
    Top = 249
    Width = 90
    Height = 16
    Caption = 'Valor Cuotas'
    FocusControl = Valor
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 13
    Top = 354
    Width = 283
    Height = 16
    Caption = 'Distribuci'#243'n y &Vencimiento de las Cuotas'
    FocusControl = grdCuotas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel_Datos_Inscripcion: TAdvPageControl
    Left = 5
    Top = 6
    Width = 517
    Height = 215
    ActivePage = Pg_Datos_Inscripcion
    ActiveFont.Charset = DEFAULT_CHARSET
    ActiveFont.Color = clWindowText
    ActiveFont.Height = -11
    ActiveFont.Name = 'Tahoma'
    ActiveFont.Style = []
    BiDiMode = bdLeftToRight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabBorderColor = clBlack
    TabSheetBorderColor = clBlack
    TabBackGroundColor = clBtnFace
    TabMargin.LeftMargin = 15
    TabMargin.RightMargin = 0
    TabOverlap = 0
    TabSplitLine = True
    RoundEdges = True
    Version = '2.0.0.1'
    PersistPagesState.Location = plRegistry
    PersistPagesState.Enabled = False
    TabHeight = 20
    TabOrder = 0
    TabStop = False
    TabWidth = 250
    object Pg_Datos_Inscripcion: TAdvTabSheet
      Caption = 'Datos de Inscripci'#243'n'
      Color = clBtnFace
      ColorTo = clNone
      ImageIndex = -1
      TabGradientDirection = gdHorizontal
      TabColor = clBlack
      TabColorTo = clOlive
      object Label3: TLabel
        Left = 4
        Top = 128
        Width = 29
        Height = 13
        Caption = 'Fecha'
      end
      object Label4: TLabel
        Left = 4
        Top = 168
        Width = 23
        Height = 13
        Caption = 'Hora'
        FocusControl = Hora
      end
      object Label2: TLabel
        Left = 4
        Top = 26
        Width = 33
        Height = 13
        Caption = '&Cliente'
        FocusControl = Cliente
      end
      object bt_Anadir_Cliente: TSpeedButton
        Left = 372
        Top = 23
        Width = 22
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
        ParentShowHint = False
        ShowHint = True
        OnClick = bt_Anadir_ClienteClick
      end
      object Label19: TLabel
        Left = 4
        Top = 148
        Width = 29
        Height = 13
        Caption = 'Vence'
        FocusControl = Vencimiento
      end
      object Recuadro_Foto: TShape
        Left = 407
        Top = 23
        Width = 95
        Height = 99
      end
      object FOTO: TImage
        Left = 411
        Top = 25
        Width = 87
        Height = 95
        Cursor = crHandPoint
        Stretch = True
      end
      object Label1: TLabel
        Left = 4
        Top = 5
        Width = 44
        Height = 13
        Caption = 'N'#250'mero'
        FocusControl = Numero
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 4
        Top = 46
        Width = 65
        Height = 13
        AutoSize = False
        Caption = 'Nombre'
        FocusControl = Nombre_Cliente
      end
      object Label24: TLabel
        Left = 4
        Top = 66
        Width = 65
        Height = 13
        AutoSize = False
        Caption = 'Apellido'
        FocusControl = Apellido_Cliente
      end
      object Label27: TLabel
        Left = 4
        Top = 86
        Width = 65
        Height = 13
        AutoSize = False
        Caption = 'Direcci'#243'n'
        FocusControl = Direccion_Cliente
      end
      object DBText1: TDBText
        Left = 4
        Top = 105
        Width = 65
        Height = 17
        DataField = 'Tipo_Telefono_1'
        DataSource = Modulo.dListado_Clientes
      end
      object Hora: TDBEdit
        Left = 64
        Top = 165
        Width = 153
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'Hora'
        DataSource = Modulo.dFacturas
        ParentColor = True
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
      object Cliente: TwwDBLookupCombo
        Left = 64
        Top = 23
        Width = 305
        Height = 19
        Ctl3D = False
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'NombreCompleto'#9'25'#9'Nombre del Cliente'#9'F'
          'Cedula_Rnc_Pasaporte'#9'25'#9'C'#233'dula/Rnc/Registro'#9'F')
        DataField = 'Cliente'
        DataSource = Modulo.dFacturas
        LookupTable = Modulo.tListado_Clientes
        LookupField = 'Cedula_Rnc_Pasaporte'
        Options = [loColLines, loRowLines, loTitles, loSearchOnBackspace]
        Style = csDropDownList
        ParentCtl3D = False
        TabOrder = 1
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnExit = ClienteExit
      end
      object Vencimiento: TDBEdit
        Left = 64
        Top = 145
        Width = 153
        Height = 19
        TabStop = False
        Color = 13558525
        Ctl3D = False
        DataField = 'Vencimiento'
        DataSource = Modulo.dFacturas
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
      end
      object Numero: TDBEdit
        Left = 64
        Top = 0
        Width = 145
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'Numero'
        DataSource = Modulo.dFacturas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object Nombre_Cliente: TDBEdit
        Left = 64
        Top = 43
        Width = 304
        Height = 19
        TabStop = False
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Nombre'
        DataSource = Modulo.dListado_Clientes
        ParentColor = True
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 4
      end
      object Apellido_Cliente: TDBEdit
        Left = 64
        Top = 63
        Width = 304
        Height = 19
        TabStop = False
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Apellido'
        DataSource = Modulo.dListado_Clientes
        ParentColor = True
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 5
      end
      object Direccion_Cliente: TDBEdit
        Left = 64
        Top = 83
        Width = 304
        Height = 19
        TabStop = False
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Direccion'
        DataSource = Modulo.dListado_Clientes
        ParentColor = True
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 6
      end
      object Telefono_Principal: TDBEdit
        Left = 64
        Top = 103
        Width = 153
        Height = 19
        TabStop = False
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Numero_Telefono_1'
        DataSource = Modulo.dListado_Clientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
      object Fecha: TwwDBDateTimePicker
        Left = 64
        Top = 123
        Width = 155
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'Fecha'
        DataSource = Modulo.dFacturas
        Epoch = 1950
        ShowButton = True
        TabOrder = 8
      end
    end
  end
  object Panel_Botones: TAdvPageControl
    Left = 545
    Top = 6
    Width = 161
    Height = 230
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
    Version = '2.0.0.1'
    PersistPagesState.Location = plRegistry
    PersistPagesState.Enabled = False
    TabHeight = 19
    TabOrder = 7
    TabStop = False
    TabWidth = 100
    object Pg_Botones: TAdvTabSheet
      Color = clBtnFace
      ColorTo = clNone
      ImageIndex = -1
      TabGradientDirection = gdHorizontal
      TabColor = clBlack
      TabColorTo = clOlive
      object Botones: TActionToolBar
        Left = 0
        Top = 0
        Width = 153
        Height = 201
        ActionManager = Opciones
        Align = alClient
        ColorMap = Modulo.ColorConfig
        EdgeInner = esNone
        Orientation = boTopToBottom
        ParentShowHint = False
        PersistentHotKeys = True
        ShowHint = True
        Spacing = 0
      end
    end
  end
  object Comentarios: TwwDBRichEdit
    Left = 110
    Top = 271
    Width = 401
    Height = 77
    AutoURLDetect = True
    BorderWidth = 1
    Ctl3D = False
    DataField = 'Comentario'
    DataSource = Modulo.dFacturas
    ParentCtl3D = False
    PrintJobName = 'Comentarios a Factura'
    TabOrder = 5
    WantNavigationKeys = True
    EditorCaption = 'Edit Rich Text'
    EditorPosition.Left = 0
    EditorPosition.Top = 0
    EditorPosition.Width = 0
    EditorPosition.Height = 0
    MeasurementUnits = muInches
    PrintMargins.Top = 1.000000000000000000
    PrintMargins.Bottom = 1.000000000000000000
    PrintMargins.Left = 1.000000000000000000
    PrintMargins.Right = 1.000000000000000000
    PrintHeader.VertMargin = 0.500000000000000000
    PrintHeader.Font.Charset = DEFAULT_CHARSET
    PrintHeader.Font.Color = clWindowText
    PrintHeader.Font.Height = -11
    PrintHeader.Font.Name = 'Tahoma'
    PrintHeader.Font.Style = []
    PrintFooter.VertMargin = 0.500000000000000000
    PrintFooter.Font.Charset = DEFAULT_CHARSET
    PrintFooter.Font.Color = clWindowText
    PrintFooter.Font.Height = -11
    PrintFooter.Font.Name = 'Tahoma'
    PrintFooter.Font.Style = []
    RichEditVersion = 2
    Data = {
      640000007B5C727466315C616E73695C64656666307B5C666F6E7474626C7B5C
      66305C666E696C204D532053616E732053657269663B7D7D0D0A5C766965776B
      696E64345C7563315C706172645C6C616E67373137385C66305C667331365C70
      61720D0A7D0D0A00}
  end
  object VistaPrevia: TCheckBox
    Left = 545
    Top = 242
    Width = 78
    Height = 17
    Caption = '&Vista Previa'
    TabOrder = 6
  end
  object Nuevo_Imprimir: TCheckBox
    Left = 528
    Top = 73
    Width = 15
    Height = 17
    TabOrder = 8
  end
  object Notificaciones: TStatusBar
    Left = 0
    Top = 557
    Width = 706
    Height = 19
    Color = clMenuBar
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Panels = <
      item
        Bevel = pbNone
        Width = 15
      end
      item
        Width = 150
      end
      item
        Bevel = pbRaised
        Width = 150
      end
      item
        Width = 465
      end
      item
        Bevel = pbNone
        Width = 15
      end>
    UseSystemFont = False
  end
  object Cuotas: TDBEdit
    Left = 403
    Top = 248
    Width = 108
    Height = 19
    TabStop = False
    Ctl3D = False
    DataField = 'Plazo_Pago'
    DataSource = Modulo.dFacturas
    ParentColor = True
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 4
  end
  object Monto: TDBEdit
    Left = 403
    Top = 227
    Width = 108
    Height = 19
    Color = 4227327
    Ctl3D = False
    DataField = 'Gasto_Cierre'
    DataSource = Modulo.dFacturas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
  end
  object Periodo: TwwDBComboBox
    Left = 110
    Top = 227
    Width = 108
    Height = 19
    ShowButton = True
    Style = csDropDownList
    MapList = False
    AllowClearKey = False
    Ctl3D = False
    DataField = 'Periodo_Pagos'
    DataSource = Modulo.dFacturas
    DropDownCount = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 0
    Items.Strings = (
      'Diario'
      'Semanal'
      'Quincenal'
      'Mensual'
      'Bi-Mensual'
      'Trimestral'
      'Cuatrimestral'
      'Semestral'
      'Anual')
    ParentCtl3D = False
    ParentFont = False
    Sorted = False
    TabOrder = 1
    UnboundDataType = wwDefault
  end
  object Valor: TDBEdit
    Left = 110
    Top = 248
    Width = 108
    Height = 19
    Color = clWhite
    Ctl3D = False
    DataField = 'Inicial'
    DataSource = Modulo.dFacturas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
  end
  object grdCuotas: TwwDBGrid
    Left = 8
    Top = 373
    Width = 517
    Height = 178
    ControlInfoInDataset = False
    ControlType.Strings = (
      'Codigo;CustomEdit;Codigos;F'
      'Descripcion;CustomEdit;Descripciones;F'
      'Tipo_Precio;CustomEdit;Tipos_Precios;F'
      'Medida;CustomEdit;Medidas;F')
    Selected.Strings = (
      'Concepto'#9'40'#9'Concepto'#9'F'
      'Capital'#9'13'#9'Monto'#9'F'
      'Capital_Pendiente'#9'13'#9'Pendiente'#9'F'
      'Vence'#9'10'#9'Vence'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = 13428432
    FixedCols = 0
    ShowHorzScrollBar = True
    Ctl3D = False
    DataSource = Modulo.dCuotas
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    KeyOptions = [dgEnterToTab]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowCellHint]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 10
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Calibri'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
    UseTFields = False
    OnCalcCellColors = grdCuotasCalcCellColors
    PadColumnStyle = pcsPlain
    PaintOptions.AlternatingRowColor = 9948159
    object wwIButton1: TwwIButton
      Left = 0
      Top = 0
      Width = 13
      Height = 22
      AllowAllUp = True
      Flat = True
    end
  end
  object Opciones: TActionManager
    ActionBars = <
      item
        Items.CaptionOptions = coAll
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
            Action = Imprimir
            Caption = '&Imprimir'
            ImageIndex = 5
            ShortCut = 16464
          end
          item
            Action = Tabla_Pagos
            ImageIndex = 5
            ShortCut = 16468
          end
          item
            Action = Salir
            Caption = '&Salir'
            ImageIndex = 10
            ShortCut = 16467
          end>
        ActionBar = Botones
      end>
    Images = Modulo.SystemImages
    Left = 360
    Top = 141
    StyleName = 'XP Style'
    object Salir: TAction
      Category = 'Opciones'
      Caption = 'Salir'
      Hint = 'Salir de Esta Pantalla'
      ImageIndex = 10
      ShortCut = 16467
      OnExecute = SalirExecute
    end
    object Guardar: TAction
      Category = 'Opciones'
      Caption = 'Guardar'
      Hint = 'Guardar el Registro Actual'
      ImageIndex = 0
      ShortCut = 16455
      OnExecute = GuardarExecute
    end
    object Nuevo: TAction
      Category = 'Opciones'
      Caption = 'Nuevo'
      Hint = 'Crear Nuevo Regitro'
      ImageIndex = 1
      ShortCut = 16462
      OnExecute = NuevoExecute
    end
    object Buscar: TAction
      Category = 'Opciones'
      Caption = 'Buscar'
      Hint = 'Buscar Registro Previamente Guardado'
      ImageIndex = 2
      ShortCut = 16450
      OnExecute = BuscarExecute
    end
    object Imprimir: TAction
      Category = 'Opciones'
      Caption = 'Imprimir'
      Hint = 'Imprimir Factura'
      ImageIndex = 5
      ShortCut = 16464
      OnExecute = ImprimirExecute
    end
    object AnadirCliente: TAction
      Category = 'Opciones'
      Caption = 'A'#241'adir Cliente'
      Hint = 'A'#241'adir Un Cliente Nuevo'
      ImageIndex = 47
      ShortCut = 114
      OnExecute = AnadirClienteExecute
    end
    object Configuracion_Formulario: TAction
      Category = 'Opciones'
      Caption = 'Configuracion de Impresion'
      ImageIndex = 55
      ShortCut = 49219
      OnExecute = Configuracion_FormularioExecute
    end
    object Procesar: TAction
      Category = 'Opciones'
      Caption = 'Procesar'
      Hint = 'Procesar Inscripcion'
      ImageIndex = 15
      ShortCut = 118
      OnExecute = ProcesarExecute
    end
    object Guardar_Temporal: TAction
      Category = 'Opciones'
      Caption = 'Guardar Temporal'
      ImageIndex = 30
      ShortCut = 123
      OnExecute = Guardar_TemporalExecute
    end
    object Cargar_Temporal: TAction
      Category = 'Opciones'
      Caption = 'Cargar Temporal'
      ImageIndex = 3
      ShortCut = 122
      OnExecute = Cargar_TemporalExecute
    end
    object Enviar_email: TAction
      Category = 'Opciones'
      Caption = 'Enviar por em@il'
      ImageIndex = 11
    end
    object Anular: TAction
      Category = 'Opciones'
      Caption = 'Anular'
      ImageIndex = 26
      ShortCut = 49217
      OnExecute = AnularExecute
    end
    object Tabla_Pagos: TAction
      Category = 'Opciones'
      Caption = 'Imprimir Tabla de Pagos'
      ImageIndex = 5
      ShortCut = 16468
      OnExecute = Tabla_PagosExecute
    end
  end
  object Opciones_Miscelaneas: TsuiPopupMenu
    Images = Modulo.SystemImages
    OwnerDraw = True
    UIStyle = DeepBlue
    MenuItemHeight = 26
    SeparatorHeight = 5
    BarWidth = 26
    BarColor = 13554646
    BarToColor = 13554646
    Color = clWhite
    SeparatorColor = 8684164
    SelectedBorderColor = 10504772
    SelectedColor = 10504772
    SelectedFontColor = clWhite
    FontColor = clBlack
    BorderColor = clBlack
    FlatMenu = False
    FontName = 'MS Sans Serif'
    FontSize = 8
    FontCharset = DEFAULT_CHARSET
    UseSystemFont = True
    Left = 272
    Top = 168
    object Menu_Anadir_Cliente: TMenuItem
      Action = AnadirCliente
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Menu_Cargar_Tempora: TMenuItem
      Action = Cargar_Temporal
    end
    object Menu_Guardar_Temporal: TMenuItem
      Action = Guardar_Temporal
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Menu_Enviar_email: TMenuItem
      Action = Enviar_email
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Menu_Configuracion_Impresion: TMenuItem
      Action = Configuracion_Formulario
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Menu_Anular: TMenuItem
      Action = Anular
    end
  end
end
