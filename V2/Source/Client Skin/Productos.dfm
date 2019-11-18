object FProductos: TFProductos
  Left = 152
  Top = 56
  HelpContext = 10
  BorderStyle = bsToolWindow
  Caption = 'Registro y Modificaci'#243'n de Productos'
  ClientHeight = 676
  ClientWidth = 774
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
  DesignSize = (
    774
    676)
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 105
    Top = 565
    Width = 51
    Height = 13
    Caption = 'F. Registro'
  end
  object Label37: TLabel
    Left = 105
    Top = 546
    Width = 30
    Height = 13
    Caption = 'Status'
  end
  object bt_Anadir_Status: TSpeedButton
    Left = 273
    Top = 540
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
    OnClick = bt_Anadir_StatusClick
  end
  object Shape1: TShape
    Left = 4
    Top = 542
    Width = 98
    Height = 99
  end
  object FOTO: TImage
    Left = 5
    Top = 543
    Width = 96
    Height = 97
    Cursor = crHandPoint
    Stretch = True
  end
  object Label43: TLabel
    Left = 16
    Top = 641
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
  object Datos_Producto: TAdvPageControl
    Left = 4
    Top = 29
    Width = 573
    Height = 351
    ActivePage = pg_Datos_Producto
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
    Version = '2.0.0.1'
    PersistPagesState.Location = plRegistry
    PersistPagesState.Enabled = False
    TabHeight = 19
    TabOrder = 0
    TabStop = False
    TabWidth = 250
    object pg_Datos_Producto: TAdvTabSheet
      Caption = 'Datos Generales del Producto'
      Color = clBtnFace
      ColorTo = clNone
      ImageIndex = 50
      TabGradientDirection = gdHorizontal
      TabColor = clBlack
      TabColorTo = clOlive
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label1: TLabel
        Left = 3
        Top = 3
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label2: TLabel
        Left = 298
        Top = 3
        Width = 77
        Height = 13
        Caption = 'C'#243'digo de Barra'
        FocusControl = Barra
      end
      object Label4: TLabel
        Left = 3
        Top = 129
        Width = 52
        Height = 13
        Caption = 'Referencia'
        FocusControl = Referencia
      end
      object Label5: TLabel
        Left = 298
        Top = 149
        Width = 93
        Height = 13
        Caption = 'Leer C'#243'digo Desde '
      end
      object Label7: TLabel
        Left = 3
        Top = 109
        Width = 54
        Height = 13
        Caption = 'Descripci'#243'n'
      end
      object Label8: TLabel
        Left = 3
        Top = 149
        Width = 69
        Height = 13
        Caption = 'Departamento'
      end
      object Label9: TLabel
        Left = 298
        Top = 169
        Width = 47
        Height = 13
        Caption = 'Categoria'
      end
      object Label10: TLabel
        Left = 3
        Top = 169
        Width = 50
        Height = 13
        Caption = 'Proveedor'
      end
      object Label11: TLabel
        Left = 3
        Top = 189
        Width = 73
        Height = 13
        Caption = 'Tipo Inventario'
      end
      object Label12: TLabel
        Left = 298
        Top = 189
        Width = 81
        Height = 13
        Caption = 'Tipo de Producto'
      end
      object Label13: TLabel
        Left = 3
        Top = 209
        Width = 32
        Height = 13
        Caption = 'M'#237'nimo'
        FocusControl = Minimo
      end
      object Label14: TLabel
        Left = 168
        Top = 209
        Width = 41
        Height = 13
        Caption = 'Reorden'
        FocusControl = Reorder
      end
      object Label15: TLabel
        Left = 3
        Top = 229
        Width = 45
        Height = 13
        Caption = 'Ubicaci'#243'n'
      end
      object Label16: TLabel
        Left = 298
        Top = 209
        Width = 36
        Height = 13
        Caption = 'Maximo'
        FocusControl = Cuenta_Contable
      end
      object bt_Codigo_Igual_Barra: TSpeedButton
        Left = 255
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
        OnClick = bt_Codigo_Igual_BarraClick
      end
      object Label3: TLabel
        Left = 298
        Top = 23
        Width = 62
        Height = 13
        Caption = 'Presentacion'
      end
      object Label38: TLabel
        Left = 298
        Top = 129
        Width = 51
        Height = 13
        Caption = 'Fabricante'
      end
      object bt_Anadir_Departamento: TSpeedButton
        Left = 255
        Top = 146
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
        OnClick = bt_Anadir_DepartamentoClick
      end
      object bt_Anadir_Proveedor: TSpeedButton
        Left = 255
        Top = 166
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
        OnClick = bt_Anadir_ProveedorClick
      end
      object bt_Anadir_Categoria: TSpeedButton
        Left = 545
        Top = 166
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
        OnClick = bt_Anadir_CategoriaClick
      end
      object bt_Anadir_Tipo_Producto: TSpeedButton
        Left = 545
        Top = 186
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
        OnClick = bt_Anadir_Tipo_ProductoClick
      end
      object bt_Anadir_Fabricante: TSpeedButton
        Left = 545
        Top = 126
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
        OnClick = bt_Anadir_FabricanteClick
      end
      object Label23: TLabel
        Left = 4
        Top = 46
        Width = 37
        Height = 13
        Caption = 'Nombre'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lColores: TLabel
        Left = 270
        Top = 63
        Width = 24
        Height = 13
        Caption = 'Color'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lMarca: TLabel
        Left = 3
        Top = 23
        Width = 30
        Height = 13
        Caption = 'Marca'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lOrientacion: TLabel
        Left = 3
        Top = 86
        Width = 54
        Height = 13
        Caption = 'Orientaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lPosicion: TLabel
        Left = 298
        Top = 86
        Width = 40
        Height = 13
        Caption = 'Posici'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lAno: TLabel
        Left = 441
        Top = 63
        Width = 19
        Height = 13
        Caption = 'A'#241'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lModelos: TLabel
        Left = 3
        Top = 63
        Width = 35
        Height = 13
        Caption = 'Modelo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label26: TLabel
        Left = 3
        Top = 248
        Width = 38
        Height = 13
        Caption = 'Codigos'
      end
      object bt_Anadir_Codigo: TSpeedButton
        Left = 545
        Top = 265
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
        OnClick = bt_Anadir_CodigoClick
      end
      object bt_Eliminar_Codigo: TSpeedButton
        Left = 545
        Top = 288
        Width = 20
        Height = 19
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FF0005B70005B7FF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FF0005B7
          0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005
          B70005B7FF00FFFF00FFFF00FF0005B70005B60005B70005B7FF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FF
          0006D70005BA0005B70005B7FF00FFFF00FFFF00FFFF00FF0005B70005B7FF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B6FF
          00FF0005B60005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF0005B60006C70006C70006CE0005B4FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006C100
          05C10006DAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF0005B60006D70006CE0006DA0006E9FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006E50006DA0006D3FF
          00FFFF00FF0006E50006EFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF0006F80006DA0006EFFF00FFFF00FFFF00FFFF00FF0006F80006F6FF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F60006F8FF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF0006F60006F6FF00FFFF00FFFF00FFFF00FF0006F6
          0006F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF0006F6FF00FFFF00FF0006F60006F60006F6FF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F6
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        OnClick = bt_Eliminar_CodigoClick
      end
      object Barra: TDBEdit
        Left = 390
        Top = 0
        Width = 175
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Barra'
        DataSource = Modulo.dProductos
        ParentCtl3D = False
        TabOrder = 1
      end
      object Referencia: TDBEdit
        Left = 81
        Top = 126
        Width = 171
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Referencia'
        DataSource = Modulo.dProductos
        ParentCtl3D = False
        TabOrder = 11
      end
      object Minimo: TDBEdit
        Left = 81
        Top = 206
        Width = 77
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Minimo'
        DataSource = Modulo.dProductos
        ParentCtl3D = False
        TabOrder = 19
      end
      object Reorder: TDBEdit
        Left = 215
        Top = 206
        Width = 77
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Reorden'
        DataSource = Modulo.dProductos
        ParentCtl3D = False
        TabOrder = 20
      end
      object Cuenta_Contable: TDBEdit
        Left = 390
        Top = 206
        Width = 153
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Maximo'
        DataSource = Modulo.dProductos
        ParentCtl3D = False
        TabOrder = 21
      end
      object Codigo: TEdit
        Left = 81
        Top = 0
        Width = 171
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = CodigoExit
      end
      object Tipo_Inventario: TwwDBComboBox
        Left = 81
        Top = 186
        Width = 171
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
          'Compuesto'
          'Mensaje')
        ParentCtl3D = False
        Sorted = False
        TabOrder = 17
        UnboundDataType = wwDefault
      end
      object Ubicacion: TwwDBComboBox
        Left = 81
        Top = 226
        Width = 484
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
        ParentCtl3D = False
        Sorted = False
        TabOrder = 22
        UnboundDataType = wwDefault
      end
      object Presentacion: TwwDBComboBox
        Left = 390
        Top = 20
        Width = 175
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
        TabOrder = 3
        UnboundDataType = wwDefault
      end
      object Descripcion: TwwDBComboBox
        Left = 81
        Top = 106
        Width = 484
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
        TabOrder = 10
        UnboundDataType = wwDefault
      end
      object Departamento: TwwDBLookupCombo
        Left = 81
        Top = 146
        Width = 171
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
        TabOrder = 13
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
      end
      object Fabricante: TwwDBLookupCombo
        Left = 390
        Top = 126
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
        TabOrder = 12
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
      end
      object Proveedor: TwwDBLookupCombo
        Left = 81
        Top = 166
        Width = 171
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
        TabOrder = 15
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
      end
      object Categoria: TwwDBLookupCombo
        Left = 390
        Top = 166
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
        TabOrder = 16
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
      end
      object TipoProducto: TwwDBLookupCombo
        Left = 390
        Top = 186
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
        TabOrder = 18
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
      end
      object Lectura_Codigo: TwwDBComboBox
        Left = 390
        Top = 146
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
          'Vencimiento')
        ParentCtl3D = False
        Sorted = False
        TabOrder = 14
        UnboundDataType = wwDefault
      end
      object Nombre_Producto: TwwDBComboBox
        Left = 81
        Top = 40
        Width = 484
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        ShowMatchText = True
        ButtonStyle = cbsCustom
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Nombre'
        DataSource = Modulo.dProductos
        DropDownCount = 15
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
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
        HistoryList.FileName = 'Nombres.hlst'
        HistoryList.Enabled = True
        ItemHeight = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 4
        UnboundDataType = wwDefault
      end
      object Colores: TwwDBComboBox
        Left = 300
        Top = 60
        Width = 132
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        ShowMatchText = True
        ButtonStyle = cbsCustom
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Color'
        DataSource = Modulo.dProductos
        DropDownCount = 15
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
        HistoryList.FileName = 'Colores.hlst'
        HistoryList.Enabled = True
        ItemHeight = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 6
        UnboundDataType = wwDefault
      end
      object Marca: TwwDBComboBox
        Left = 81
        Top = 20
        Width = 171
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        ShowMatchText = True
        ButtonStyle = cbsCustom
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Marca'
        DataSource = Modulo.dProductos
        DropDownCount = 15
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
        HistoryList.FileName = 'Marcas.hlst'
        HistoryList.Enabled = True
        ItemHeight = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 2
        UnboundDataType = wwDefault
      end
      object Orientacion: TwwRadioGroup
        Left = 81
        Top = 81
        Width = 211
        Height = 23
        DisableThemes = False
        ShowGroupCaption = False
        NoSpacing = True
        Caption = 'Orientaci'#243'n'
        Columns = 3
        Ctl3D = False
        DataField = 'Orientacion'
        DataSource = Modulo.dProductos
        Items.Strings = (
          'Ninguna'
          'Derecha'
          'Izquierda')
        ParentCtl3D = False
        TabOrder = 8
        Values.Strings = (
          '-'
          'Der.'
          'Izq.')
      end
      object Posicion: TwwRadioGroup
        Left = 356
        Top = 81
        Width = 209
        Height = 23
        DisableThemes = False
        ShowGroupCaption = False
        Caption = 'Posici'#243'n'
        Columns = 3
        Ctl3D = False
        DataField = 'Posicion'
        DataSource = Modulo.dProductos
        Items.Strings = (
          'Ninguna'
          'Delantera'
          'Tracera')
        ParentCtl3D = False
        TabOrder = 9
        Values.Strings = (
          '-'
          'Del.'
          'Trac.')
      end
      object Ano: TwwDBComboBox
        Left = 468
        Top = 60
        Width = 97
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        ShowMatchText = True
        ButtonStyle = cbsCustom
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Ano'
        DataSource = Modulo.dProductos
        DropDownCount = 15
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
        HistoryList.FileName = 'Anos.hlst'
        HistoryList.Enabled = True
        ItemHeight = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 7
        UnboundDataType = wwDefault
      end
      object Modelos: TwwDBComboBox
        Left = 81
        Top = 60
        Width = 171
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        ShowMatchText = True
        ButtonStyle = cbsCustom
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Modelo'
        DataSource = Modulo.dProductos
        DropDownCount = 15
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
        HistoryList.FileName = 'Modelos.hlst'
        HistoryList.Enabled = True
        ItemHeight = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 5
        UnboundDataType = wwDefault
      end
      object Detalles: TwwDBGrid
        Left = 81
        Top = 247
        Width = 462
        Height = 74
        ControlInfoInDataset = False
        Selected.Strings = (
          'Codigo_Barra'#9'25'#9'Codigo de Barra'#9'F'
          'Descripcion_Barra'#9'40'#9'Descripcion'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = 13428432
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = Modulo.dCodigos_Productos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyOptions = [dgEnterToTab]
        ParentFont = False
        ReadOnly = True
        TabOrder = 23
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        UseTFields = False
        PadColumnStyle = pcsPlain
        PaintOptions.AlternatingRowColor = 9948159
      end
    end
  end
  object Datos_Compra: TAdvPageControl
    Left = 4
    Top = 386
    Width = 273
    Height = 152
    ActivePage = pg_Costos
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
    TabOrder = 1
    TabStop = False
    TabWidth = 250
    object pg_Costos: TAdvTabSheet
      Caption = 'Datos de Costos y Compra'
      Color = clBtnFace
      ColorTo = clNone
      ImageIndex = 46
      TabGradientDirection = gdHorizontal
      TabColor = clBtnFace
      TabColorTo = clOlive
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
        FocusControl = Ultimo_Precio_Compra
      end
      object Label19: TLabel
        Left = 3
        Top = 46
        Width = 74
        Height = 13
        Caption = 'Costo Estandar'
        FocusControl = Costo_Estandar
      end
      object Label20: TLabel
        Left = 3
        Top = 66
        Width = 75
        Height = 13
        Caption = 'Costo Promedio'
        FocusControl = Costo_Promedio
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
        FocusControl = Unidad_Medida_Compra
      end
      object Ultimo_Precio_Compra: TDBEdit
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
      object Costo_Estandar: TDBEdit
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
      object Costo_Promedio: TDBEdit
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
      object Unidad_Medida_Compra: TDBEdit
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
        ParentCtl3D = False
        Sorted = False
        TabOrder = 4
        UnboundDataType = wwDefault
      end
    end
  end
  object Datos_Venta: TAdvPageControl
    Left = 302
    Top = 386
    Width = 275
    Height = 254
    ActivePage = pg_Precios
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
    TabOrder = 2
    TabStop = False
    TabWidth = 250
    object pg_Precios: TAdvTabSheet
      Caption = 'Informaci'#243'n de Venta y Facturaci'#243'n'
      Color = clBtnFace
      ColorTo = clNone
      ImageIndex = 58
      TabGradientDirection = gdHorizontal
      TabColor = clBlack
      TabColorTo = clOlive
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
      object lPrecio_Detalle_Contado: TLabel
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
      object lPrecio_Detalle_Credito: TLabel
        Left = 3
        Top = 167
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
      object lPrecio_Minimo: TLabel
        Left = 3
        Top = 186
        Width = 132
        Height = 13
        Caption = 'Precio de Venta M'#237'nimo'
        FocusControl = Precio_Minimo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
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
      object lPrecio_Por_Mayor_Contado: TLabel
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
      object lPrecio_Por_Mayor_Credito: TLabel
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
      object lPRECIO_UNIDAD: TLabel
        Left = 3
        Top = 206
        Width = 87
        Height = 13
        Caption = 'Precio x Unidad'
        FocusControl = PRECIO_UNIDAD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Unidades_Medida_Venta: TDBEdit
        Left = 155
        Top = 23
        Width = 108
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
        Width = 108
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
        Width = 108
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
      object Precio_Minimo: TDBEdit
        Left = 155
        Top = 183
        Width = 108
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
        Width = 108
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
        Width = 108
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
        Width = 108
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
        ParentCtl3D = False
        Sorted = False
        TabOrder = 0
        UnboundDataType = wwDefault
      end
      object Tipo_Beneficio: TwwDBComboBox
        Left = 155
        Top = 43
        Width = 108
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
        Width = 108
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
        Width = 108
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
      object PRECIO_UNIDAD: TDBEdit
        Left = 155
        Top = 203
        Width = 108
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Precio_Unidad'
        DataSource = Modulo.dProductos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
      end
    end
  end
  object Panel_Botones: TAdvPageControl
    Left = 583
    Top = 28
    Width = 184
    Height = 446
    ActivePage = Pg_Botones
    ActiveFont.Charset = DEFAULT_CHARSET
    ActiveFont.Color = clWindowText
    ActiveFont.Height = -11
    ActiveFont.Name = 'Tahoma'
    ActiveFont.Style = []
    Anchors = [akTop, akRight]
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
    TabOrder = 11
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
        Width = 176
        Height = 417
        ActionManager = Opciones
        Align = alClient
        Caption = 'Botones'
        ColorMap = Modulo.ColorConfig
        Orientation = boTopToBottom
        Spacing = 0
      end
    end
  end
  object Descuento: TDBCheckBox
    Left = 583
    Top = 491
    Width = 129
    Height = 17
    Anchors = [akTop, akRight]
    Caption = 'Aplica para Descuento'
    Ctl3D = False
    DataField = 'Aplica_Descuento'
    DataSource = Modulo.dProductos
    ParentCtl3D = False
    TabOrder = 5
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object Comision: TDBCheckBox
    Left = 583
    Top = 507
    Width = 97
    Height = 17
    Anchors = [akTop, akRight]
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
    Left = 583
    Top = 540
    Width = 97
    Height = 17
    Anchors = [akTop, akRight]
    Caption = 'Paga Impuesto'
    Ctl3D = False
    DataField = 'Paga_Impuesto'
    DataSource = Modulo.dProductos
    ParentCtl3D = False
    TabOrder = 8
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object Serie: TDBCheckBox
    Left = 583
    Top = 557
    Width = 137
    Height = 17
    Anchors = [akTop, akRight]
    Caption = 'Requiere N'#250'mero Serie'
    Ctl3D = False
    DataField = 'Requiere_Numero_Serie'
    DataSource = Modulo.dProductos
    ParentCtl3D = False
    TabOrder = 9
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object Vencimiento: TDBCheckBox
    Left = 583
    Top = 524
    Width = 183
    Height = 17
    Anchors = [akTop, akRight]
    Caption = 'Requiere Fecha de Vencimiento'
    Ctl3D = False
    DataField = 'Requiere_Fecha_Vencimiento'
    DataSource = Modulo.dProductos
    ParentCtl3D = False
    TabOrder = 7
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object Status: TwwDBLookupCombo
    Left = 161
    Top = 540
    Width = 105
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
    Left = 161
    Top = 560
    Width = 107
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
  object Barra_Menu: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 774
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
    Spacing = 0
  end
  object Panel_Existencia: TPanel
    Left = 121
    Top = 643
    Width = 454
    Height = 32
    BevelInner = bvRaised
    BevelKind = bkFlat
    BevelOuter = bvLowered
    BorderStyle = bsSingle
    TabOrder = 12
    object Label41: TLabel
      Left = 4
      Top = 2
      Width = 86
      Height = 18
      Caption = 'Existencia :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Existensia: TDBText
      Left = 93
      Top = 2
      Width = 80
      Height = 18
      Alignment = taRightJustify
      DataField = 'Existencia'
      DataSource = Modulo.dProductos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label44: TLabel
      Left = 182
      Top = 2
      Width = 31
      Height = 18
      Caption = 'uds.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Existencia_Medida: TDBText
      Left = 229
      Top = 2
      Width = 116
      Height = 18
      Alignment = taRightJustify
      DataField = 'Existencia_Medida'
      DataSource = Modulo.dProductos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object L_Medida_Venta: TDBText
      Left = 349
      Top = 2
      Width = 91
      Height = 18
      DataField = 'Medida_Venta'
      DataSource = Modulo.dProductos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object BitBtn1: TBitBtn
    Left = 160
    Top = 613
    Width = 30
    Height = 27
    Action = Anterior
    TabOrder = 13
    Glyph.Data = {
      36090000424D3609000000000000360000002800000018000000180000000100
      2000000000000009000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00CDD0DB00FEF8F400FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00A0A1E3002427C3009798DE00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF009FA1E4000000C0000000BC002C2BCB00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00ABA7
      EE000000B7000100BF000000BA002D2BCF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009F9DE8000000
      BB000000C0000000C2000000BC002B2DC300FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A7A4EC000000C0000000
      B9000102BC000300BF000000BF002E30C600FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00AEAAE8000000BC000000BD000600
      C4000100BC000100BC000100BC000100BC00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00A6A3E6000100BC000000C0000003C1000000
      C2000100BC000100BC000100BC000100BC00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00ABAAE6000000C2000000BC000100BC000100BC000100
      BC000100BC000100BC000100BC000100BC00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00B4B3E8000000B9000100B8000302C4000100BC000100BC000100
      BC000100BC000100BC000100BC000100BC00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00A9A8E5000100C2000200C3000201BC000200BE000100BC000100BC000100
      BC000100BC000100BC000100BC000100BC00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BABB
      ED000000B5000000BE000100BE000004BD000002C2000100BC000100BC000100
      BC000100BC000100BC000100BC000100BC00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF005C68
      D6000000BB000400C0000301BF000000BE000100BC000100BC000100BC000100
      BC000100BC000100BC000100BC000100BC00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D5D4
      F2001916C2000000C1000200C0000002BD000300C1000100BC000100BC000100
      BC000100BC000100BC000100BC000100BC00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00D4D1F1000C0EC1000000BE000600C1000004B9000100BC000100BC000100
      BC000100BC000100BC000100BC000100BC00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00F5E9F500060BBC000000BB000401C3000100BC000100BC000100
      BC000100BC000100BC000100BC000100BC00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00C7C6F3001C18C7000000BB000202C4000600BF000000
      C1000100BC000100BC000100BC000100BC00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00CECDEF000E0EC1000000BE000100C1000001
      B5000100BC000100BC000100BC000100BC00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00EDEDF800080ABE000000BE000201
      C4000100BC000100BC000100BC000100BC00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C6C6ED001A15C6000000
      BD000100C2000200C3000000B5002E28CB00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C5C5F100080A
      BF000000BA000500C1000000BC00282BCA00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F1E6
      F5000505C5000000B8000000BA002D2BCD00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00C5C5EF001614C6000000BD002E28CB00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00CBC8F400524ED200C2C7F000FF00FF00FF00FF00}
  end
  object BitBtn2: TBitBtn
    Left = 198
    Top = 613
    Width = 30
    Height = 27
    Action = Siguente
    TabOrder = 14
    Glyph.Data = {
      36090000424D3609000000000000360000002800000018000000180000000100
      2000000000000009000000000000000000000000000000000000FF00FF00FF00
      FF00E1E3E900E0E1E300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00499BF9003890F500D5EAFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00005FFF00006BFC000C76FD00F4F9FA00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000064FD000071FF00006EFF00197DF600D6E9FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000064FD000376FB000073FE00006DFD001E83FC00D7EAFF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000062FD000274FE000173FA000072FF00006FFE00147BF900F2FEFE00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000066FE000471F7000274FD000172FA000173FD000069FF00167CFB00E2F1
      FD00F8FCFD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000062FC000077FE000773F8000172FE000275FB000072FF000073FD002389
      F800E6F4FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000066FC000273FD000171FE000074FF000374FC000072FC00026FFE00006F
      FB00127AFF00FFFFFA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000063FF000072FF000073FF000072FF000072FF000072FF000175FD000072
      FD00006EFF001581F800E7F6FF00FFFEFB00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000063FF000073FF000073FF000073FF000073FF000072FF000074FD000272
      FC000073FE00006DFF00298AFD00E9FAFF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000063FF000073FF000073FF000073FF000073FF000072FF000273FD000476
      FC00016FFD000771FF00006BFB001480FB00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000063FF000073FF000073FF000073FF000073FF000072FF000274FD000073
      FD000677FD000074FC000072FF00005CFA00E0F8FD00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000063FF000073FF000072FF000072FF000072FF000073FF000571FC000372
      FF000670FD000074FD00006AFC004299FF00FFFFFC00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000063FF000073FF000072FF000072FF000073FF000072FF000076FD000074
      FD000071FB00006BFE00439BFE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000062FF000173FE000374FB000174FC000073FD000572FC000071FE000074
      FD000067FA005AA7FE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000064FD000471FB000074FD000174FD000270FE000573FD000375FC00006B
      FB004E96FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000065FA000174FD000175FF00006FF9000177FF000676FA000068FF004798
      FE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000065FD000072FC000171FC000175FF000172F8000066FC0057A3FE00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000064FC000371FE000075FE000273F900006AFE003C95FE00FFFFFA00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000062FD000475FB000574F9000068FC003F98FE00F3F8FC00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000062FF000373FD000067FE0057A2FA00FFFFFC00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00005CFC000067FD003A91FB00FFFEFF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0084BBFE0076B2FF00E9F5FE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object BitBtn3: TBitBtn
    Left = 122
    Top = 613
    Width = 30
    Height = 27
    Action = Primero
    TabOrder = 15
    Glyph.Data = {
      36090000424D3609000000000000360000002800000018000000180000000100
      2000000000000009000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00CDD0DB00FEF8F400FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00E0E1E300E1E3E900FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00A0A1E3002427C3009798DE00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00D5EAFF003890F500499BF900FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF009FA1E4000000C0000000BC002C2BCB00FF00FF00FF00FF00FF00FF00FF00
      FF00F4F9FA000C76FD00006BFC00005FFF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00ABA7
      EE000000B7000100BF000000BA002D2BCF00FF00FF00FF00FF00FF00FF00D6E9
      FF00197DF600006EFF000071FF000064FD00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009F9DE8000000
      BB000000C0000000C2000000BC002B2DC300FF00FF00FF00FF00D7EAFF001E83
      FC00006DFD000073FE000376FB000064FD00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A7A4EC000000C0000000
      B9000102BC000300BF000000BF002E30C600FF00FF00F2FEFE00147BF900006F
      FE000072FF000173FA000274FE000062FD00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00AEAAE8000000BC000000BD000600
      C4000000C1000000BC001512C100F8FCFD00E2F1FD00167CFB000069FF000173
      FD000172FA000274FD000471F7000066FE00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00A6A3E6000100BC000000C0000003C1000000
      C2000000BF001E23C800DEDDF700E6F4FF002389F8000073FD000072FF000275
      FB000172FE000773F8000077FE000062FC00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00ABAAE6000000C2000000BC000400C0000000C0000000
      BA001716C400E5E2F200FFFFFA00127AFF00006FFB00026FFE000072FC000374
      FC000074FF000171FE000273FD000066FC00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00B4B3E8000000B9000100B8000302C4000000B9000000BB001013
      C000FFFEFB00E7F6FF001581F800006EFF000072FD000175FD000072FF000072
      FF000072FF000073FF000072FF000063FF00FF00FF00FF00FF00FF00FF00FF00
      FF00A9A8E5000100C2000200C3000201BC000200BE000000BE001E1AC600DAD2
      F600E9FAFF00298AFD00006DFF000073FE000272FC000074FD000072FF000073
      FF000073FF000073FF000073FF000063FF00FF00FF00FF00FF00FF00FF00BABB
      ED000000B5000000BE000100BE000004BD000002C2000000BC008B8ADB00FF00
      FF001480FB00006BFB000771FF00016FFD000476FC000273FD000072FF000073
      FF000073FF000073FF000073FF000063FF00FF00FF00FF00FF00FF00FF005C68
      D6000000BB000400C0000301BF000000BE000100BC000300C400AAA6E900E0F8
      FD00005CFA000072FF000074FC000677FD000073FD000274FD000072FF000073
      FF000073FF000073FF000073FF000063FF00FF00FF00FF00FF00FF00FF00D5D4
      F2001916C2000000C1000200C0000002BD000300C1000000C0007674DA00FFFF
      FC004299FF00006AFC000074FD000670FD000372FF000571FC000073FF000072
      FF000072FF000072FF000073FF000063FF00FF00FF00FF00FF00FF00FF00FF00
      FF00D4D1F1000C0EC1000000BE000600C1000004B9000000C0000303BD00BBBC
      EF00FF00FF00439BFE00006BFE000071FB000074FD000076FD000072FF000073
      FF000072FF000072FF000073FF000063FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00F5E9F500060BBC000000BB000401C3000003B7000000C2000000
      B800C8C5EF00FF00FF005AA7FE000067FA000074FD000071FE000572FC000073
      FD000174FC000374FB000173FE000062FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00C7C6F3001C18C7000000BB000202C4000600BF000000
      C1000405C100BDB6EC00FF00FF004E96FF00006BFB000375FC000573FD000270
      FE000174FD000074FD000471FB000064FD00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00CECDEF000E0EC1000000BE000100C1000001
      B5000000C0000205C200C5C5E900FF00FF004798FE000068FF000676FA000177
      FF00006FF9000175FF000174FD000065FA00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00EDEDF800080ABE000000BE000201
      C4000202BC000000C0000000B500CBC2EB00FF00FF0057A3FE000066FC000172
      F8000175FF000171FC000072FC000065FD00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C6C6ED001A15C6000000
      BD000100C2000200C3000000B5002E28CB00FF00FF00FFFFFA003C95FE00006A
      FE000273F9000075FE000371FE000064FC00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C5C5F100080A
      BF000000BA000500C1000000BC00282BCA00FF00FF00FF00FF00F3F8FC003F98
      FE000068FC000574F9000475FB000062FD00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F1E6
      F5000505C5000000B8000000BA002D2BCD00FF00FF00FF00FF00FF00FF00FFFF
      FC0057A2FA000067FE000373FD000062FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00C5C5EF001614C6000000BD002E28CB00FF00FF00FF00FF00FF00FF00FF00
      FF00FFFEFF003A91FB000067FD00005CFC00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00CBC8F400524ED200C2C7F000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00E9F5FE0076B2FF0084BBFE00FF00FF00FF00FF00}
  end
  object BitBtn4: TBitBtn
    Left = 236
    Top = 613
    Width = 30
    Height = 27
    Action = Ultimo
    TabOrder = 16
    Glyph.Data = {
      36090000424D3609000000000000360000002800000018000000180000000100
      2000000000000009000000000000000000000000000000000000FF00FF00FF00
      FF00E1E3E900E0E1E300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FEF8F400CDD0DB00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00499BF9003890F500D5EAFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF009798DE002427C300A0A1E300FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00005FFF00006BFC000C76FD00F4F9FA00FF00FF00FF00FF00FF00FF00FF00
      FF002C2BCB000000BC000000C0009FA1E400FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000064FD000071FF00006EFF00197DF600D6E9FF00FF00FF00FF00FF00FF00
      FF002D2BCF000000BA000100BF000000B700ABA7EE00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000064FD000376FB000073FE00006DFD001E83FC00D7EAFF00FF00FF00FF00
      FF002B2DC3000000BC000000C2000000C0000000BB009F9DE800FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000062FD000274FE000173FA000072FF00006FFE00147BF900F2FEFE00FF00
      FF002E30C6000000BF000300BF000102BC000000B9000000C000A7A4EC00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000066FE000471F7000274FD000172FA000173FD000069FF00167CFB00E2F1
      FD00F8FCFD001512C1000000BC000000C1000600C4000000BD000000BC00AEAA
      E800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000062FC000077FE000773F8000172FE000275FB000072FF000073FD002389
      F800E6F4FF00DEDDF7001E23C8000000BF000000C2000003C1000000C0000100
      BC00A6A3E600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000066FC000273FD000171FE000074FF000374FC000072FC00026FFE00006F
      FB00127AFF00FFFFFA00E5E2F2001716C4000000BA000000C0000400C0000000
      BC000000C200ABAAE600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000063FF000072FF000073FF000072FF000072FF000072FF000175FD000072
      FD00006EFF001581F800E7F6FF00FFFEFB001013C0000000BB000000B9000302
      C4000100B8000000B900B4B3E800FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000063FF000073FF000073FF000073FF000073FF000072FF000074FD000272
      FC000073FE00006DFF00298AFD00E9FAFF00DAD2F6001E1AC6000000BE000200
      BE000201BC000200C3000100C200A9A8E500FF00FF00FF00FF00FF00FF00FF00
      FF000063FF000073FF000073FF000073FF000073FF000072FF000273FD000476
      FC00016FFD000771FF00006BFB001480FB00FF00FF008B8ADB000000BC000002
      C2000004BD000100BE000000BE000000B500BABBED00FF00FF00FF00FF00FF00
      FF000063FF000073FF000073FF000073FF000073FF000072FF000274FD000073
      FD000677FD000074FC000072FF00005CFA00E0F8FD00AAA6E9000300C4000100
      BC000000BE000301BF000400C0000000BB005C68D600FF00FF00FF00FF00FF00
      FF000063FF000073FF000072FF000072FF000072FF000073FF000571FC000372
      FF000670FD000074FD00006AFC004299FF00FFFFFC007674DA000000C0000300
      C1000002BD000200C0000000C1001916C200D5D4F200FF00FF00FF00FF00FF00
      FF000063FF000073FF000072FF000072FF000073FF000072FF000076FD000074
      FD000071FB00006BFE00439BFE00FF00FF00BBBCEF000303BD000000C0000004
      B9000600C1000000BE000C0EC100D4D1F100FF00FF00FF00FF00FF00FF00FF00
      FF000062FF000173FE000374FB000174FC000073FD000572FC000071FE000074
      FD000067FA005AA7FE00FF00FF00C8C5EF000000B8000000C2000003B7000401
      C3000000BB00060BBC00F5E9F500FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000064FD000471FB000074FD000174FD000270FE000573FD000375FC00006B
      FB004E96FF00FF00FF00BDB6EC000405C1000000C1000600BF000202C4000000
      BB001C18C700C7C6F300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000065FA000174FD000175FF00006FF9000177FF000676FA000068FF004798
      FE00FF00FF00C5C5E9000205C2000000C0000001B5000100C1000000BE000E0E
      C100CECDEF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000065FD000072FC000171FC000175FF000172F8000066FC0057A3FE00FF00
      FF00CBC2EB000000B5000000C0000202BC000201C4000000BE00080ABE00EDED
      F800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000064FC000371FE000075FE000273F900006AFE003C95FE00FFFFFA00FF00
      FF002E28CB000000B5000200C3000100C2000000BD001A15C600C6C6ED00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000062FD000475FB000574F9000068FC003F98FE00F3F8FC00FF00FF00FF00
      FF00282BCA000000BC000500C1000000BA00080ABF00C5C5F100FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000062FF000373FD000067FE0057A2FA00FFFFFC00FF00FF00FF00FF00FF00
      FF002D2BCD000000BA000000B8000505C500F1E6F500FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00005CFC000067FD003A91FB00FFFEFF00FF00FF00FF00FF00FF00FF00FF00
      FF002E28CB000000BD001614C600C5C5EF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0084BBFE0076B2FF00E9F5FE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00C2C7F000524ED200CBC8F400FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
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
            Caption = '-'
          end
          item
            Action = Editar_Existencia_Inicial
            ImageIndex = 58
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
                Caption = '-'
              end
              item
                Action = Configuracion_Labels
                Caption = '&Configuraci'#243'n de Etiquetas'
                ImageIndex = 55
                ShortCut = 49219
              end
              item
                Action = Opciones_Miscelaneas
                ImageIndex = 22
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
          end
          item
            Items = <
              item
                Action = Modificar_Codigo
                Caption = '&Modificar C'#243'digo'
                ImageIndex = 3
                ShortCut = 113
              end
              item
                Action = Productos_Similares
                Caption = '&Productos Similares'
                ImageIndex = 31
                ShortCut = 117
              end
              item
                Action = Barra_Igual_Codigo
                Caption = 'I&gualar Codigo Principal al Codigo de Barra'
                ImageIndex = 3
                ShortCut = 118
              end
              item
                Action = Anadir_Categoria
                Caption = '&A'#241'adir Categor'#237'a'
                ImageIndex = 17
              end
              item
                Action = Anadir_Tipo_Producto
                Caption = 'A'#241'a&dir Tipo de Producto'
                ImageIndex = 17
              end
              item
                Action = Anadir_Departamento
                Caption = 'A'#241'ad&ir Departamento'
                ImageIndex = 17
              end
              item
                Action = Anadir_Status
                Caption = 'A'#241'adi&r Estatus'
                ImageIndex = 17
              end
              item
                Action = Anadir_Fabricante
                Caption = 'A'#241'adir &Fabricante'
                ImageIndex = 41
              end
              item
                Action = Anadir_Proveedor
                Caption = 'A'#241'adir Pr&oveedor'
                ImageIndex = 41
              end
              item
                Action = Distribucion_Vencimientos
                Caption = 'Di&stribuci'#243'n de Vencimientos'
                ImageIndex = 23
              end
              item
                Action = Imprimir_Etiquetas
                Caption = 'Imprimir &Etiquetas'
                ImageIndex = 5
              end
              item
                Action = Componentes
                Caption = '&Componentes'
                ImageIndex = 17
              end
              item
                Action = Editar_Existencia_Inicial
                Caption = 'Edi&tar Existencia Inicial'
                ImageIndex = 58
              end
              item
                Action = Movimiento_Inventario
                Caption = 'Mo&vimiento en Inventario'
                ImageIndex = 28
                ShortCut = 16503
              end>
            Caption = '&Producto'
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
                Caption = '-'
              end
              item
                Action = Configuracion_Labels
                Caption = '&Configuraci'#243'n de Etiquetas'
                ImageIndex = 55
                ShortCut = 49219
              end
              item
                Action = Opciones_Miscelaneas
                Caption = '&Opciones Miscelaneas'
                ImageIndex = 22
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
          end
          item
            Items = <
              item
                Action = Modificar_Codigo
                Caption = '&Modificar C'#243'digo'
                ImageIndex = 3
                ShortCut = 113
              end
              item
                Action = Productos_Similares
                Caption = '&Productos Similares'
                ImageIndex = 31
                ShortCut = 117
              end
              item
                Action = Barra_Igual_Codigo
                Caption = '&Igualar Codigo Principal al Codigo de Barra'
                ImageIndex = 3
                ShortCut = 118
              end
              item
                Action = Anadir_Categoria
                Caption = '&A'#241'adir Categor'#237'a'
                ImageIndex = 17
              end
              item
                Action = Anadir_Tipo_Producto
                Caption = 'A'#241'a&dir Tipo de Producto'
                ImageIndex = 17
              end
              item
                Action = Anadir_Departamento
                Caption = 'A'#241'adi&r Departamento'
                ImageIndex = 17
              end
              item
                Action = Anadir_Status
                Caption = 'A'#241'adir &Estatus'
                ImageIndex = 17
              end
              item
                Action = Anadir_Fabricante
                Caption = 'A'#241'adir &Fabricante'
                ImageIndex = 41
              end
              item
                Action = Anadir_Proveedor
                Caption = 'A'#241'adir Pr&oveedor'
                ImageIndex = 41
              end
              item
                Action = Distribucion_Vencimientos
                Caption = 'Di&stribuci'#243'n de Vencimientos'
                ImageIndex = 23
              end
              item
                Action = Imprimir_Etiquetas
                Caption = 'Imprimir E&tiquetas'
                ImageIndex = 5
              end
              item
                Action = Componentes
                Caption = '&Componentes'
                ImageIndex = 17
              end
              item
                Action = Editar_Existencia_Inicial
                Caption = 'Editar E&xistencia Inicial'
                ImageIndex = 58
              end
              item
                Action = Movimiento_Inventario
                Caption = 'Mo&vimiento en Inventario'
                ImageIndex = 28
                ShortCut = 16503
              end
              item
                Action = Agregar_Foto
                Caption = 'A&gregar Foto'
                ImageIndex = 25
              end>
            Caption = '&Producto'
          end>
        ActionBar = Barra_Menu
      end>
    Images = Modulo.SystemImages
    Left = 337
    Top = 344
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
    object Modificar_Codigo: TAction
      Category = 'Producto'
      Caption = 'Modificar C'#243'digo'
      ImageIndex = 3
      ShortCut = 113
      OnExecute = Modificar_CodigoExecute
    end
    object Productos_Similares: TAction
      Category = 'Producto'
      Caption = 'Productos Similares'
      ImageIndex = 31
      ShortCut = 117
      OnExecute = Productos_SimilaresExecute
    end
    object Barra_Igual_Codigo: TAction
      Category = 'Producto'
      Caption = 'Igualar Codigo Principal al Codigo de Barra'
      ImageIndex = 3
      ShortCut = 118
      OnExecute = Barra_Igual_CodigoExecute
    end
    object Anadir_Categoria: TAction
      Category = 'Producto'
      Caption = 'A'#241'adir Categor'#237'a'
      ImageIndex = 17
      OnExecute = Anadir_CategoriaExecute
    end
    object Anadir_Tipo_Producto: TAction
      Category = 'Producto'
      Caption = 'A'#241'adir Tipo de Producto'
      ImageIndex = 17
      OnExecute = Anadir_Tipo_ProductoExecute
    end
    object Anadir_Departamento: TAction
      Category = 'Producto'
      Caption = 'A'#241'adir Departamento'
      ImageIndex = 17
      OnExecute = Anadir_DepartamentoExecute
    end
    object Anadir_Status: TAction
      Category = 'Producto'
      Caption = 'A'#241'adir Estatus'
      ImageIndex = 17
      OnExecute = Anadir_StatusExecute
    end
    object Anadir_Fabricante: TAction
      Category = 'Producto'
      Caption = 'A'#241'adir Fabricante'
      ImageIndex = 41
      OnExecute = Anadir_FabricanteExecute
    end
    object Anadir_Proveedor: TAction
      Category = 'Producto'
      Caption = 'A'#241'adir Proveedor'
      ImageIndex = 41
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
      ImageIndex = 55
      ShortCut = 49219
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
    object Agregar_Foto: TAction
      Category = 'Producto'
      Caption = 'Agregar Foto'
      ImageIndex = 25
      OnExecute = Agregar_FotoExecute
    end
    object Opciones_Miscelaneas: TAction
      Category = 'Opciones'
      Caption = 'Opciones Miscelaneas'
      ImageIndex = 22
      OnExecute = Opciones_MiscelaneasExecute
    end
    object Calculo_Precio_Impuesto: TAction
      Category = 'Producto'
      Caption = 'Calculo Precio/Impuesto'
      ImageIndex = 3
      ShortCut = 116
      OnExecute = Calculo_Precio_ImpuestoExecute
    end
    object Siguente: TAction
      Category = 'Producto'
      Hint = 'Siguente'
      ImageIndex = 64
      OnExecute = SiguenteExecute
    end
    object Anterior: TAction
      Category = 'Producto'
      Hint = 'Anterior'
      ImageIndex = 63
      OnExecute = AnteriorExecute
    end
    object Primero: TAction
      Category = 'Producto'
      Hint = 'Primero'
      ImageIndex = 62
      OnExecute = PrimeroExecute
    end
    object Ultimo: TAction
      Category = 'Producto'
      Hint = 'Ultimo'
      ImageIndex = 65
      OnExecute = UltimoExecute
    end
    object Anadir_Codigo: TAction
      Category = 'Producto'
      Caption = 'A'#241'adir Codigo'
      ImageIndex = 31
      OnExecute = Anadir_CodigoExecute
    end
    object Eliminar_Codigo: TAction
      Category = 'Producto'
      Caption = 'Eliminar Codigo'
      ImageIndex = 33
      OnExecute = Eliminar_CodigoExecute
    end
  end
end
