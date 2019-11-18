object FProductos: TFProductos
  Left = 152
  Top = 56
  HelpContext = 10
  BorderStyle = bsToolWindow
  Caption = 'Registro y Modificaci'#243'n de Productos'
  ClientHeight = 556
  ClientWidth = 753
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
  object Label6: TLabel
    Left = 8
    Top = 455
    Width = 87
    Height = 13
    Caption = 'Fecha de Registro'
  end
  object Label37: TLabel
    Left = 11
    Top = 474
    Width = 30
    Height = 13
    Caption = 'Status'
  end
  object SpeedButton7: TSpeedButton
    Left = 213
    Top = 430
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
    OnClick = SpeedButton7Click
  end
  object Existensia: TDBText
    Left = 107
    Top = 474
    Width = 97
    Height = 23
    AutoSize = True
    DataField = 'Existencia'
    DataSource = Modulo.dProductos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label41: TLabel
    Left = 8
    Top = 474
    Width = 97
    Height = 23
    Caption = 'Existencia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 753
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
  end
  object Datos_Producto: TAdvPageControl
    Left = 3
    Top = 33
    Width = 573
    Height = 224
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
      Caption = 'Datos Generales del Producto'
      Color = clBtnFace
      ColorTo = clNone
      ImageIndex = 29
      TabGradientDirection = gdHorizontal
      TabColor = clBlack
      TabColorTo = clOlive
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 246
      object Label1: TLabel
        Left = 3
        Top = 3
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label2: TLabel
        Left = 325
        Top = 3
        Width = 77
        Height = 13
        Caption = 'C'#243'digo de Barra'
        FocusControl = Barra
      end
      object Label4: TLabel
        Left = 3
        Top = 65
        Width = 52
        Height = 13
        Caption = 'Referencia'
        FocusControl = Referencia
      end
      object Label5: TLabel
        Left = 298
        Top = 85
        Width = 93
        Height = 13
        Caption = 'Leer C'#243'digo Desde '
      end
      object Label7: TLabel
        Left = 3
        Top = 23
        Width = 54
        Height = 13
        Caption = 'Descripci'#243'n'
      end
      object Label8: TLabel
        Left = 3
        Top = 85
        Width = 69
        Height = 13
        Caption = 'Departamento'
      end
      object Label9: TLabel
        Left = 298
        Top = 105
        Width = 47
        Height = 13
        Caption = 'Categoria'
      end
      object Label10: TLabel
        Left = 3
        Top = 105
        Width = 50
        Height = 13
        Caption = 'Proveedor'
      end
      object Label11: TLabel
        Left = 3
        Top = 125
        Width = 73
        Height = 13
        Caption = 'Tipo Inventario'
      end
      object Label12: TLabel
        Left = 298
        Top = 125
        Width = 81
        Height = 13
        Caption = 'Tipo de Producto'
      end
      object Label13: TLabel
        Left = 3
        Top = 145
        Width = 32
        Height = 13
        Caption = 'M'#237'nimo'
        FocusControl = Minimo
      end
      object Label14: TLabel
        Left = 170
        Top = 145
        Width = 41
        Height = 13
        Caption = 'Reorden'
        FocusControl = Reorder
      end
      object Label15: TLabel
        Left = 3
        Top = 165
        Width = 45
        Height = 13
        Caption = 'Ubicaci'#243'n'
      end
      object Label16: TLabel
        Left = 298
        Top = 145
        Width = 81
        Height = 13
        Caption = 'Cuenta Contable'
        FocusControl = Cuenta_Contable
      end
      object SpeedButton1: TSpeedButton
        Left = 243
        Top = 0
        Width = 23
        Height = 19
        Hint = 'Igualar C'#243'digo de barra al C'#243'digo principal (F7)'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
          333333333333337FF3333333333333903333333333333377FF33333333333399
          03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
          99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
          99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
          03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
          33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
          33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
          3333777777333333333333333333333333333333333333333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton1Click
      end
      object Label3: TLabel
        Left = 297
        Top = 42
        Width = 62
        Height = 13
        Caption = 'Presentacion'
      end
      object Label38: TLabel
        Left = 297
        Top = 65
        Width = 51
        Height = 13
        Caption = 'Fabricante'
      end
      object SpeedButton2: TSpeedButton
        Left = 247
        Top = 82
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
        OnClick = SpeedButton2Click
      end
      object SpeedButton3: TSpeedButton
        Left = 247
        Top = 102
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
        OnClick = SpeedButton3Click
      end
      object SpeedButton4: TSpeedButton
        Left = 545
        Top = 102
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
        OnClick = SpeedButton4Click
      end
      object SpeedButton5: TSpeedButton
        Left = 545
        Top = 122
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
        OnClick = SpeedButton5Click
      end
      object SpeedButton6: TSpeedButton
        Left = 545
        Top = 62
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
        OnClick = SpeedButton6Click
      end
      object Barra: TDBEdit
        Left = 408
        Top = 0
        Width = 153
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Barra'
        DataSource = Modulo.dProductos
        ParentCtl3D = False
        TabOrder = 1
      end
      object Referencia: TDBEdit
        Left = 87
        Top = 62
        Width = 153
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Referencia'
        DataSource = Modulo.dProductos
        ParentCtl3D = False
        TabOrder = 4
      end
      object Minimo: TDBEdit
        Left = 87
        Top = 142
        Width = 77
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Minimo'
        DataSource = Modulo.dProductos
        ParentCtl3D = False
        TabOrder = 11
      end
      object Reorder: TDBEdit
        Left = 215
        Top = 142
        Width = 77
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Reorden'
        DataSource = Modulo.dProductos
        ParentCtl3D = False
        TabOrder = 12
      end
      object Cuenta_Contable: TDBEdit
        Left = 390
        Top = 142
        Width = 153
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Cuenta_Contable'
        DataSource = Modulo.dProductos
        ParentCtl3D = False
        TabOrder = 13
      end
      object Codigo: TEdit
        Left = 87
        Top = 0
        Width = 153
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = CodigoExit
      end
      object Tipo_Inventario: TwwDBComboBox
        Left = 87
        Top = 122
        Width = 133
        Height = 19
        ShowButton = True
        Style = csDropDownList
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        Ctl3D = False
        DataField = 'Tipo_Inventario'
        DataSource = Modulo.dProductos
        DropDownCount = 8
        HistoryList.Section = 'TipoInventario'
        HistoryList.FileName = 'Reminder'
        HistoryList.Enabled = True
        ItemHeight = 0
        Items.Strings = (
          'Regular'
          'Servicio'
          'No Inventariado'
          'Compuesto')
        ParentCtl3D = False
        Sorted = False
        TabOrder = 9
        UnboundDataType = wwDefault
      end
      object Ubicacion: TwwDBComboBox
        Left = 87
        Top = 162
        Width = 456
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Ubicacion'
        DataSource = Modulo.dProductos
        DropDownCount = 8
        HistoryList.Section = 'Ubicacion'
        HistoryList.FileName = 'Reminder'
        HistoryList.Enabled = True
        ItemHeight = 0
        Items.Strings = (
          'Almac'#233'n'
          'Tienda'
          'Vitrina')
        ItemIndex = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 15
        UnboundDataType = wwDefault
      end
      object Presentacion: TwwDBComboBox
        Left = 390
        Top = 40
        Width = 153
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Presentacion'
        DataSource = Modulo.dProductos
        DropDownCount = 8
        HistoryList.Section = 'Presentacion'
        HistoryList.FileName = 'Reminder'
        HistoryList.Enabled = True
        ItemHeight = 0
        Items.Strings = (
          'Frasco'
          'Caja'
          'Jarabe'
          'Blister'
          'Unidad')
        ParentCtl3D = False
        Sorted = False
        TabOrder = 2
        UnboundDataType = wwDefault
      end
      object Descripcion: TwwDBComboBox
        Left = 87
        Top = 20
        Width = 474
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        ShowMatchText = True
        ButtonStyle = cbsCustom
        CharCase = ecUpperCase
        Color = 14082808
        Ctl3D = False
        DataField = 'Descripcion'
        DataSource = Modulo.dProductos
        DropDownCount = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
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
        ParentCtl3D = False
        ParentFont = False
        Sorted = False
        TabOrder = 3
        UnboundDataType = wwDefault
      end
      object Departamento: TwwDBLookupCombo
        Left = 87
        Top = 82
        Width = 153
        Height = 19
        Ctl3D = False
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'Descripcion'#9'50'#9'Descripci'#243'n'#9'F')
        DataField = 'Departamento'
        DataSource = Modulo.dProductos
        LookupTable = Modulo.tDepartamentos
        LookupField = 'Numero'
        Options = [loColLines, loRowLines, loTitles, loSearchOnBackspace]
        ParentCtl3D = False
        TabOrder = 5
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
      end
      object Fabricante: TwwDBLookupCombo
        Left = 390
        Top = 62
        Width = 153
        Height = 19
        Ctl3D = False
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'Nombre'#9'50'#9'Nombre'#9'F'
          'Representante'#9'50'#9'Representante'#9'F'
          'Cedula_Rnc_Pasaporte'#9'25'#9'C'#233'dula/Rnc/Registro'#9'F')
        DataField = 'Fabricante'
        DataSource = Modulo.dProductos
        LookupTable = Modulo.tFabricante
        LookupField = 'Numero'
        Options = [loColLines, loRowLines, loTitles, loSearchOnBackspace]
        ParentCtl3D = False
        TabOrder = 14
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
      end
      object Proveedor: TwwDBLookupCombo
        Left = 87
        Top = 102
        Width = 153
        Height = 19
        Ctl3D = False
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'Nombre'#9'50'#9'Nombre'#9'F'
          'Contacto'#9'50'#9'Contacto'#9'F'
          'Cedula_Rnc_Pasaporte'#9'25'#9'C'#233'dula/Rnc/Registro'#9'F')
        DataField = 'Proveedor_Principal'
        DataSource = Modulo.dProductos
        LookupTable = Modulo.tProveedores
        LookupField = 'Numero'
        Options = [loColLines, loRowLines, loTitles, loSearchOnBackspace]
        ParentCtl3D = False
        TabOrder = 7
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
      end
      object Categoria: TwwDBLookupCombo
        Left = 390
        Top = 102
        Width = 153
        Height = 19
        Ctl3D = False
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'Descripcion'#9'50'#9'Descripci'#243'n'#9'F')
        DataField = 'Categoria'
        DataSource = Modulo.dProductos
        LookupTable = Modulo.tCategoria
        LookupField = 'Numero'
        Options = [loColLines, loRowLines, loTitles, loSearchOnBackspace]
        ParentCtl3D = False
        TabOrder = 8
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
      end
      object TipoProducto: TwwDBLookupCombo
        Left = 390
        Top = 122
        Width = 153
        Height = 19
        Ctl3D = False
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'Descripcion'#9'50'#9'Descripci'#243'n'#9'F')
        DataField = 'Tipo_Producto'
        DataSource = Modulo.dProductos
        LookupTable = Modulo.tTipos_Productos
        LookupField = 'Numero'
        Options = [loColLines, loRowLines, loTitles, loSearchOnBackspace]
        ParentCtl3D = False
        TabOrder = 10
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
      end
      object Lectura_Codigo: TwwDBComboBox
        Left = 390
        Top = 82
        Width = 153
        Height = 19
        ShowButton = True
        Style = csDropDownList
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        Ctl3D = False
        DataField = 'Lector_Codigo'
        DataSource = Modulo.dProductos
        DropDownCount = 8
        HistoryList.Section = 'CodigoBarra'
        HistoryList.FileName = 'Reminder'
        HistoryList.Enabled = True
        ItemHeight = 0
        Items.Strings = (
          'C'#243'digo Principal'
          'C'#243'digo de Barra'
          'Referencia'
          'Secuencia'
          'Vencimiento ')
        ParentCtl3D = False
        Sorted = False
        TabOrder = 6
        UnboundDataType = wwDefault
      end
    end
  end
  object Datos_Compra: TAdvPageControl
    Left = 4
    Top = 275
    Width = 273
    Height = 152
    ActivePage = AdvTabSheet1
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
    TabOrder = 1
    TabStop = False
    TabWidth = 250
    object AdvTabSheet1: TAdvTabSheet
      Caption = 'Datos de Costos y Compra'
      Color = clBtnFace
      ColorTo = clNone
      ImageIndex = 17
      TabGradientDirection = gdHorizontal
      TabColor = clBtnFace
      TabColorTo = clOlive
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label17: TLabel
        Left = 3
        Top = 6
        Width = 134
        Height = 13
        Caption = 'M'#233'todo de C'#225'lculo de Costo'
      end
      object Label18: TLabel
        Left = 3
        Top = 26
        Width = 116
        Height = 13
        Caption = #218'ltimo Precio de Compra'
        FocusControl = DBEdit18
      end
      object Label19: TLabel
        Left = 3
        Top = 46
        Width = 74
        Height = 13
        Caption = 'Costo Estandar'
        FocusControl = DBEdit19
      end
      object Label20: TLabel
        Left = 3
        Top = 66
        Width = 75
        Height = 13
        Caption = 'Costo Promedio'
        FocusControl = DBEdit20
      end
      object Label21: TLabel
        Left = 3
        Top = 88
        Width = 89
        Height = 13
        Caption = 'Medida de Compra'
      end
      object Label22: TLabel
        Left = 3
        Top = 106
        Width = 140
        Height = 13
        Caption = 'Unidades por Medida Compra'
        FocusControl = DBEdit22
      end
      object DBEdit18: TDBEdit
        Left = 153
        Top = 23
        Width = 105
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Ultimo_Precio_Compra'
        DataSource = Modulo.dProductos
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit19: TDBEdit
        Left = 153
        Top = 43
        Width = 105
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Costo_Standar'
        DataSource = Modulo.dProductos
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit20: TDBEdit
        Left = 153
        Top = 63
        Width = 105
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Costo_Promedio'
        DataSource = Modulo.dProductos
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit22: TDBEdit
        Left = 153
        Top = 103
        Width = 105
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Unidades_Medida_Compra'
        DataSource = Modulo.dProductos
        ParentCtl3D = False
        TabOrder = 5
      end
      object Metodo_Costo: TwwDBComboBox
        Left = 153
        Top = 3
        Width = 105
        Height = 19
        ShowButton = True
        Style = csDropDownList
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        Ctl3D = False
        DataField = 'Metodo_Calculo_Costo'
        DataSource = Modulo.dProductos
        DropDownCount = 8
        HistoryList.Section = 'MetodoCalculo'
        HistoryList.FileName = 'Reminder'
        HistoryList.Enabled = True
        ItemHeight = 0
        Items.Strings = (
          'Promedio'
          'Estandar'
          #218'ltima Compra')
        ParentCtl3D = False
        Sorted = False
        TabOrder = 0
        UnboundDataType = wwDefault
      end
      object Medida_Compra: TwwDBComboBox
        Left = 153
        Top = 83
        Width = 105
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Medida_Compra'
        DataSource = Modulo.dProductos
        DropDownCount = 8
        HistoryList.Section = 'MedidaCompra'
        HistoryList.FileName = 'Reminder'
        HistoryList.Enabled = True
        ItemHeight = 0
        Items.Strings = (
          'Unidad'
          'Caja'
          'Lata'
          'Frasco'
          'Contenedor')
        ItemIndex = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 4
        UnboundDataType = wwDefault
      end
    end
  end
  object Datos_Venta: TAdvPageControl
    Left = 302
    Top = 275
    Width = 273
    Height = 234
    ActivePage = AdvTabSheet2
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
    TabWidth = 250
    object AdvTabSheet2: TAdvTabSheet
      Caption = 'Informaci'#243'n de Venta y Facturaci'#243'n'
      Color = clBtnFace
      ColorTo = clNone
      ImageIndex = 44
      TabGradientDirection = gdHorizontal
      TabColor = clBlack
      TabColorTo = clOlive
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label24: TLabel
        Left = 3
        Top = 8
        Width = 80
        Height = 13
        Caption = 'Medida de Venta'
      end
      object Label25: TLabel
        Left = 3
        Top = 26
        Width = 146
        Height = 13
        Caption = 'Unidades por Medida de Venta'
        FocusControl = Unidades_Medida_Venta
      end
      object Label26: TLabel
        Left = 3
        Top = 146
        Width = 128
        Height = 13
        Caption = 'Precio Detalle Contado'
        FocusControl = Precio_Detalle_Contado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12615680
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label27: TLabel
        Left = 3
        Top = 166
        Width = 122
        Height = 13
        Caption = 'Precio Detalle Cr'#233'dito'
        FocusControl = Precio_Detalle_Credito
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label28: TLabel
        Left = 3
        Top = 186
        Width = 110
        Height = 13
        Caption = 'Precio de Venta M'#237'nimo'
        FocusControl = Precio_Por_Minimo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label29: TLabel
        Left = 3
        Top = 46
        Width = 81
        Height = 13
        Caption = 'Tipo de Beneficio'
      end
      object Label30: TLabel
        Left = 3
        Top = 66
        Width = 140
        Height = 13
        Caption = 'Valor de Beneficio al Contado'
        FocusControl = Valor_Beneficio_Contado
      end
      object Label31: TLabel
        Left = 3
        Top = 86
        Width = 132
        Height = 13
        Caption = 'Valor de Beneficio a Cr'#233'dito'
        FocusControl = Valor_Beneficio_Credito
      end
      object Label39: TLabel
        Left = 3
        Top = 106
        Width = 146
        Height = 13
        Caption = 'Precio Por Mayor Contado'
        FocusControl = Precio_Por_Mayor_Contado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label40: TLabel
        Left = 3
        Top = 126
        Width = 140
        Height = 13
        Caption = 'Precio Por Mayor Cr'#233'dito'
        FocusControl = Precio_Por_Mayor_Credito
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Unidades_Medida_Venta: TDBEdit
        Left = 155
        Top = 23
        Width = 105
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Unidades_Medida_Venta'
        DataSource = Modulo.dProductos
        ParentCtl3D = False
        TabOrder = 1
      end
      object Precio_Detalle_Contado: TDBEdit
        Left = 155
        Top = 143
        Width = 105
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Precio_Venta_Contado'
        DataSource = Modulo.dProductos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12615680
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
      end
      object Precio_Detalle_Credito: TDBEdit
        Left = 155
        Top = 163
        Width = 105
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Precio_Venta_Credito'
        DataSource = Modulo.dProductos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
      end
      object Precio_Por_Minimo: TDBEdit
        Left = 155
        Top = 183
        Width = 105
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Precio_Venta_Minimo'
        DataSource = Modulo.dProductos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
      end
      object Valor_Beneficio_Contado: TDBEdit
        Left = 155
        Top = 63
        Width = 105
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Valor_Beneficio_Contado'
        DataSource = Modulo.dProductos
        ParentCtl3D = False
        TabOrder = 3
      end
      object Valor_Beneficio_Credito: TDBEdit
        Left = 155
        Top = 83
        Width = 105
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Valor_Beneficio_Credito'
        DataSource = Modulo.dProductos
        ParentCtl3D = False
        TabOrder = 4
      end
      object Medida_Venta: TwwDBComboBox
        Left = 155
        Top = 3
        Width = 105
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Medida_Venta'
        DataSource = Modulo.dProductos
        DropDownCount = 8
        HistoryList.Section = 'MedidaVenta'
        HistoryList.FileName = 'Reminder'
        HistoryList.Enabled = True
        ItemHeight = 0
        Items.Strings = (
          'Unidad'
          'Caja'
          'Lata'
          'Frasco'
          'Contenedor')
        ItemIndex = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 0
        UnboundDataType = wwDefault
      end
      object Tipo_Beneficio: TwwDBComboBox
        Left = 155
        Top = 43
        Width = 105
        Height = 19
        ShowButton = True
        Style = csDropDownList
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        Ctl3D = False
        DataField = 'Tipo_Beneficio'
        DataSource = Modulo.dProductos
        DropDownCount = 8
        HistoryList.Section = 'Beneficio'
        HistoryList.FileName = 'Reminder'
        HistoryList.Enabled = True
        ItemHeight = 0
        Items.Strings = (
          'Libre'
          'Porcentual'
          'Fijo')
        ParentCtl3D = False
        Sorted = False
        TabOrder = 2
        UnboundDataType = wwDefault
      end
      object Precio_Por_Mayor_Contado: TDBEdit
        Left = 155
        Top = 103
        Width = 105
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Precio_Venta_Por_Mayor_Contado'
        DataSource = Modulo.dProductos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
      end
      object Precio_Por_Mayor_Credito: TDBEdit
        Left = 155
        Top = 123
        Width = 105
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Precio_Venta_Por_Mayor_Credito'
        DataSource = Modulo.dProductos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
      end
    end
  end
  object AdvPageControl1: TAdvPageControl
    Left = 582
    Top = 33
    Width = 170
    Height = 400
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
    TabOrder = 11
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
        Width = 161
        Height = 368
        ActionManager = Opciones
        Align = alNone
        Caption = 'ActionToolBar1'
        ColorMap = Modulo.ColorConfig
        Orientation = boTopToBottom
        Spacing = 0
      end
    end
  end
  object Descuento: TDBCheckBox
    Left = 581
    Top = 437
    Width = 129
    Height = 17
    Caption = 'Aplica para Descuento'
    DataField = 'Aplica_Descuento'
    DataSource = Modulo.dProductos
    TabOrder = 5
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object Comision: TDBCheckBox
    Left = 581
    Top = 453
    Width = 97
    Height = 17
    Caption = 'Paga Comision'
    Ctl3D = False
    DataField = 'Paga_Comision'
    DataSource = Modulo.dProductos
    ParentCtl3D = False
    TabOrder = 6
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object Impuesto: TDBCheckBox
    Left = 581
    Top = 485
    Width = 97
    Height = 17
    Caption = 'Paga Impuesto'
    Ctl3D = False
    DataField = 'Paga_Impuesto'
    DataSource = Modulo.dProductos
    ParentCtl3D = False
    TabOrder = 7
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object Serie: TDBCheckBox
    Left = 581
    Top = 501
    Width = 137
    Height = 17
    Caption = 'Requiere N'#250'mero Serie'
    Ctl3D = False
    DataField = 'Requiere_Numero_Serie'
    DataSource = Modulo.dProductos
    ParentCtl3D = False
    TabOrder = 8
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object Vencimiento: TDBCheckBox
    Left = 581
    Top = 469
    Width = 183
    Height = 17
    Caption = 'Requiere Fecha de Vencimiento'
    Ctl3D = False
    DataField = 'Requiere_Fecha_Vencimiento'
    DataSource = Modulo.dProductos
    ParentCtl3D = False
    TabOrder = 9
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object Status: TwwDBLookupCombo
    Left = 106
    Top = 430
    Width = 106
    Height = 19
    Ctl3D = False
    CharCase = ecUpperCase
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Status'#9'50'#9'Estatus'#9'F')
    DataField = 'Status'
    DataSource = Modulo.dProductos
    LookupTable = Modulo.tStatus
    LookupField = 'Numero'
    Options = [loColLines, loRowLines, loTitles, loSearchOnBackspace]
    ParentCtl3D = False
    TabOrder = 3
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object Fecha: TwwDBDateTimePicker
    Left = 106
    Top = 450
    Width = 106
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    DataField = 'Fecha_Registro'
    DataSource = Modulo.dProductos
    Epoch = 1950
    ShowButton = True
    TabOrder = 4
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
        Items = <
          item
            Action = Productos_Similares
            ImageIndex = 31
            ShortCut = 117
          end
          item
            Action = Modificar_Codigo
            Caption = '&Modificar C'#243'digo'
            ImageIndex = 58
            ShortCut = 113
          end>
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
              end
              item
                Caption = '-'
              end
              item
                Action = Configuracion_Labels
                ImageIndex = 68
              end>
            Caption = '&Opciones'
          end
          item
            Items = <
              item
                Action = Modificar_Codigo
                Caption = '&Modificar C'#243'digo'
                ImageIndex = 58
                ShortCut = 113
              end
              item
                Action = Productos_Similares
                Caption = '&Productos Similares'
                ImageIndex = 31
                ShortCut = 117
              end
              item
                Caption = '-'
              end
              item
                Action = Anadir_Categoria
                Caption = '&A'#241'adir Categor'#237'a'
                ImageIndex = 77
              end
              item
                Action = Anadir_Tipo_Producto
                Caption = 'A'#241'a&dir Tipo de Producto'
                ImageIndex = 77
              end
              item
                Action = Anadir_Departamento
                Caption = 'A'#241'ad&ir Departamento'
                ImageIndex = 77
              end
              item
                Action = Anadir_Status
                Caption = 'A'#241'adi&r Estatus'
                ImageIndex = 77
              end
              item
                Action = Anadir_Fabricante
                Caption = 'A'#241'adir &Fabricante'
                ImageIndex = 77
              end
              item
                Action = Anadir_Proveedor
                Caption = 'A'#241'adir Pr&oveedor'
                ImageIndex = 77
              end
              item
                Caption = '-'
              end
              item
                Action = Distribucion_Vencimientos
                Caption = 'Di&stribuci'#243'n de Vencimientos'
                ImageIndex = 23
              end>
            Caption = '&Producto'
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
            Caption = '-'
          end
          item
            Action = Editar_Existencia_Inicial
            ImageIndex = 58
          end
          item
            Action = Distribucion_Vencimientos
            Caption = '&Distribuci'#243'n de Vencimientos'
            ImageIndex = 23
          end
          item
            Action = Imprimir_Etiquetas
            Caption = '&Imprimir Etiquetas'
            ImageIndex = 5
          end
          item
            Action = Productos_Similares
            Caption = '&Productos Similares'
            ImageIndex = 31
            ShortCut = 117
          end
          item
            Action = Componentes
            ImageIndex = 17
          end
          item
            Action = Movimiento_Inventario
            ImageIndex = 28
            ShortCut = 16503
          end
          item
            Caption = '-'
          end
          item
            Action = Imprimir_Etiquetas
            Caption = 'I&mprimir Etiquetas'
            ImageIndex = 5
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
        ActionBar = ActionToolBar1
      end>
    Images = Modulo.SystemImages
    Left = 680
    Top = 64
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
    object Modificar_Codigo: TAction
      Category = 'Producto'
      Caption = 'Modificar C'#243'digo'
      ImageIndex = 58
      ShortCut = 113
    end
    object Productos_Similares: TAction
      Category = 'Producto'
      Caption = 'Productos Similares'
      ImageIndex = 31
      ShortCut = 117
    end
    object Barra_Igual_Codigo: TAction
      Category = 'Producto'
      ImageIndex = 76
      ShortCut = 118
      OnExecute = Barra_Igual_CodigoExecute
    end
    object Anadir_Categoria: TAction
      Category = 'Producto'
      Caption = 'A'#241'adir Categor'#237'a'
      ImageIndex = 77
      OnExecute = Anadir_CategoriaExecute
    end
    object Anadir_Tipo_Producto: TAction
      Category = 'Producto'
      Caption = 'A'#241'adir Tipo de Producto'
      ImageIndex = 77
      OnExecute = Anadir_Tipo_ProductoExecute
    end
    object Anadir_Departamento: TAction
      Category = 'Producto'
      Caption = 'A'#241'adir Departamento'
      ImageIndex = 77
      OnExecute = Anadir_DepartamentoExecute
    end
    object Anadir_Status: TAction
      Category = 'Producto'
      Caption = 'A'#241'adir Estatus'
      ImageIndex = 77
      OnExecute = Anadir_StatusExecute
    end
    object Anadir_Fabricante: TAction
      Category = 'Producto'
      Caption = 'A'#241'adir Fabricante'
      ImageIndex = 77
      OnExecute = Anadir_FabricanteExecute
    end
    object Anadir_Proveedor: TAction
      Category = 'Producto'
      Caption = 'A'#241'adir Proveedor'
      ImageIndex = 77
      OnExecute = Anadir_ProveedorExecute
    end
    object Distribucion_Vencimientos: TAction
      Category = 'Producto'
      Caption = 'Distribuci'#243'n de Vencimientos'
      ImageIndex = 23
      OnExecute = Distribucion_VencimientosExecute
    end
    object Imprimir_Etiquetas: TAction
      Category = 'Producto'
      Caption = 'Imprimir Etiquetas'
      ImageIndex = 5
      OnExecute = Imprimir_EtiquetasExecute
    end
    object Configuracion_Labels: TAction
      Category = 'Opciones'
      Caption = 'Configuraci'#243'n de Etiquetas'
      ImageIndex = 68
      OnExecute = Configuracion_LabelsExecute
    end
    object Componentes: TAction
      Category = 'Producto'
      Caption = 'Componentes'
      ImageIndex = 17
      OnExecute = ComponentesExecute
    end
    object Editar_Existencia_Inicial: TAction
      Category = 'Producto'
      Caption = 'Editar Existencia Inicial'
      ImageIndex = 58
      OnExecute = Editar_Existencia_InicialExecute
    end
    object Movimiento_Inventario: TAction
      Category = 'Producto'
      Caption = 'Movimiento en Inventario'
      ImageIndex = 28
      ShortCut = 16503
      OnExecute = Movimiento_InventarioExecute
    end
  end
end
