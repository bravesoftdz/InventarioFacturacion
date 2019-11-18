object FVencimientos: TFVencimientos
  Left = 192
  Top = 114
  BorderStyle = bsToolWindow
  Caption = 'Datos de Vencimientos'
  ClientHeight = 318
  ClientWidth = 250
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 18
    Top = 29
    Width = 20
    Height = 13
    Caption = 'Mes'
  end
  object Label2: TLabel
    Left = 71
    Top = 29
    Width = 19
    Height = 13
    Caption = 'A'#241'o'
  end
  object Label3: TLabel
    Left = 127
    Top = 29
    Width = 42
    Height = 13
    Caption = 'Cantidad'
  end
  object Label32: TLabel
    Left = 15
    Top = 221
    Width = 48
    Height = 13
    Caption = 'Existencia'
    FocusControl = Existencia
  end
  object Label4: TLabel
    Left = 15
    Top = 256
    Width = 51
    Height = 13
    Caption = 'Distribu'#237'do'
    FocusControl = Existencia
  end
  object Detalles_Vencimiento: TwwDBGrid
    Left = 13
    Top = 71
    Width = 228
    Height = 146
    TabStop = False
    Selected.Strings = (
      'Mes'#9'7'#9'Mes'
      'Ano'#9'10'#9'A'#241'o'
      'Cantidad'#9'13'#9'Cantidad')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = Modulo.dVencimientos
    ParentColor = True
    ReadOnly = True
    TabOrder = 4
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object Cantidad: TEdit
    Left = 112
    Top = 45
    Width = 73
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
  end
  object btn_Anadir: TBitBtn
    Left = 189
    Top = 42
    Width = 60
    Height = 25
    Caption = 'A'#241'adir'
    TabOrder = 3
    OnClick = btn_AnadirClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666886666
      666666666666666666666666000066666CC8866666666666666888F666666666
      00006666C22C886666666666668F668F666666660000666A2222C88666666666
      68F66668F6666666000066A222222C88666666668F6666668F666666000066A2
      22A222C8866666668F668F6668F66666000066A22C2A222C866666688F68F8F6
      668F666600006AA22C22A22C8866668F8F68F68F668F666600006A2A2C222A22
      C886668F68F8F668F668F66600006A22AAA222A22C88668F688FF6668F668F66
      00006A22C86A22CA22C8868F68F68F6688F668F6000066A2C666A22CA22C8668
      F8F668F6668F668F0000666AA6666A22CA2C86668F66668F6668F68F00006666
      666666A22CAC666666666668F6688F86000066666666666A22C8666666666666
      8F6688660000666666666666A2C866666666666668F68F660000666666666666
      6AC6666666666666668F86660000666666666666666666666666666666686666
      0000}
    NumGlyphs = 2
  end
  object Descripcion: TwwDBComboBox
    Left = 2
    Top = 5
    Width = 252
    Height = 22
    TabStop = False
    ShowButton = True
    Style = csDropDown
    MapList = False
    AllowClearKey = False
    AutoDropDown = True
    ShowMatchText = True
    BorderStyle = bsNone
    ButtonStyle = cbsCustom
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'Descripcion'
    DataSource = Modulo.dProductos
    DropDownCount = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ButtonEffects.Transparent = True
    ButtonWidth = 1
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
    HistoryList.MRUEnabled = True
    ItemHeight = 0
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    Sorted = False
    TabOrder = 5
    UnboundDataType = wwDefault
  end
  object Mes: TSpinEdit
    Left = 14
    Top = 44
    Width = 47
    Height = 22
    Ctl3D = False
    MaxValue = 12
    MinValue = 1
    ParentCtl3D = False
    TabOrder = 0
    Value = 1
  end
  object Anio: TSpinEdit
    Left = 62
    Top = 44
    Width = 47
    Height = 22
    Ctl3D = False
    MaxValue = 12
    MinValue = 1
    ParentCtl3D = False
    TabOrder = 1
    Value = 1
  end
  object Existencia: TDBEdit
    Left = 96
    Top = 221
    Width = 140
    Height = 30
    TabStop = False
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'Existencia'
    DataSource = Modulo.dProductos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
  end
  object btn_Aceptar: TBitBtn
    Left = 88
    Top = 288
    Width = 75
    Height = 25
    Caption = '&Aceptar'
    TabOrder = 7
    TabStop = False
    OnClick = btn_AceptarClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object Distribuido: TDBEdit
    Left = 96
    Top = 253
    Width = 140
    Height = 30
    TabStop = False
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'Distribuido'
    DataSource = Modulo.dProductos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
  end
  object btn_Cancelar: TBitBtn
    Left = 166
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 9
    TabStop = False
    Kind = bkCancel
  end
end
