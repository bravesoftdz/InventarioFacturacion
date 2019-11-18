object FSeleccion_Departamentos: TFSeleccion_Departamentos
  Left = 216
  Top = 59
  BorderStyle = bsToolWindow
  Caption = 'Seleccion de Departamentos'
  ClientHeight = 386
  ClientWidth = 452
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Encab: TLabel
    Left = 8
    Top = 88
    Width = 233
    Height = 13
    Caption = 'Seleccione el Departamento que Desea Reportar'
    Enabled = False
  end
  object Seleccion: TRadioGroup
    Left = 8
    Top = 16
    Width = 260
    Height = 65
    Caption = 'Reportar las ventas de :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Todos los Departamentos'
      'Un Departamento Especif'#237'co')
    ParentFont = False
    TabOrder = 0
    OnClick = SeleccionClick
  end
  object Lista: TwwDBGrid
    Left = 8
    Top = 128
    Width = 441
    Height = 209
    DisableThemes = False
    ControlInfoInDataset = False
    Selected.Strings = (
      'Descripcion'#9'50'#9'Descripci'#243'n'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Ctl3D = False
    DataSource = Modulo.dDepartamentos
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object BitBtn1: TBitBtn
    Left = 292
    Top = 352
    Width = 75
    Height = 25
    TabOrder = 3
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 372
    Top = 352
    Width = 75
    Height = 25
    TabOrder = 4
    Kind = bkCancel
  end
  object busqueda: TwwIncrementalSearch
    Left = 8
    Top = 104
    Width = 441
    Height = 19
    DataSource = Modulo.dDepartamentos
    SearchField = 'Descripcion'
    ShowMatchText = True
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 1
  end
end
