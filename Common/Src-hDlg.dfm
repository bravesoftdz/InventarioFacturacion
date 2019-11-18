object DlgSearch: TDlgSearch
  Left = 244
  Top = 137
  Caption = 'Dialigo de Busqueda'
  ClientHeight = 329
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    536
    329)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 27
    Top = 18
    Width = 58
    Height = 13
    Caption = '&Buscar Por :'
    FocusControl = FieldsList
  end
  object Label2: TLabel
    Left = 5
    Top = 86
    Width = 94
    Height = 16
    Caption = '&Resultado (s)'
    FocusControl = DataGrid
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 10
    Top = 48
    Width = 75
    Height = 13
    Caption = '&Valor Buscado :'
    FocusControl = Valor
  end
  object DataGrid: TwwDBGrid
    Left = 5
    Top = 106
    Width = 526
    Height = 187
    IniAttributes.Enabled = True
    IniAttributes.SectionName = 'Busqueda'
    IniAttributes.Delimiter = ';;'
    ExportOptions.ExportType = wwgetSYLK
    TitleColor = 12615680
    FixedCols = 1
    ShowHorzScrollBar = True
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = 16250871
    Ctl3D = False
    DataSource = SrchDs
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowCellHint]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clYellow
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = True
    OnCalcCellColors = DataGridCalcCellColors
    OnTitleButtonClick = DataGridTitleButtonClick
    OnDblClick = DataGridDblClick
    PadColumnStyle = pcsPlain
    PaintOptions.AlternatingRowRegions = [arrDataColumns, arrActiveDataColumn]
    PaintOptions.AlternatingRowColor = 13499390
  end
  object FieldsList: TComboBox
    Left = 91
    Top = 17
    Width = 145
    Height = 21
    Style = csDropDownList
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    Sorted = True
    TabOrder = 1
    OnChange = FieldsListChange
  end
  object Aceptar: TBitBtn
    Left = 376
    Top = 300
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Aceptar'
    ModalResult = 1
    TabOrder = 2
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
  object Cancelar: TBitBtn
    Left = 456
    Top = 300
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Cancelar'
    TabOrder = 3
    Kind = bkCancel
  end
  object Valor: TEdit
    Left = 92
    Top = 44
    Width = 405
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 4
    OnEnter = ValorEnter
  end
  object Buscar: TBitBtn
    Left = 501
    Top = 42
    Width = 26
    Height = 25
    Anchors = [akTop, akRight]
    Default = True
    TabOrder = 5
    OnClick = BuscarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33033333333333333F7F3333333333333000333333333333F777333333333333
      000333333333333F777333333333333000333333333333F77733333333333300
      033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
      33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
      3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
      33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
      333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
      333333773FF77333333333370007333333333333777333333333}
    NumGlyphs = 2
  end
  object Orden: TRadioGroup
    Left = 255
    Top = 5
    Width = 266
    Height = 33
    Caption = ' Ordenar la Busqueda de modo '
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'Ascendente'
      'Descendente'
      'Ninguno')
    TabOrder = 6
    OnClick = BuscarClick
  end
  object Recordar_Busqueda: TCheckBox
    Left = 91
    Top = 66
    Width = 97
    Height = 17
    Caption = 'Recordar B'#250'squeda'
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 7
  end
  object Exportar: TBitBtn
    Left = 8
    Top = 299
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = '&Exportar'
    TabOrder = 8
    OnClick = ExportarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
      FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
      FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
      007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
      7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
      99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
      99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
      99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
      93337FFFF7737777733300000033333333337777773333333333}
    NumGlyphs = 2
  end
  object SrchDs: TDataSource
    DataSet = SrchCds
    Left = 152
    Top = 128
  end
  object SrchCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SrchPr'
    RemoteServer = Modulo.Enlace
    Left = 110
    Top = 132
  end
  object FileSave: TSaveDialog
    DefaultExt = 'xls'
    Filter = 'Archivo Slk Para Excel|*.xls'
    Options = [ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Left = 192
    Top = 128
  end
end
