object FComponentes: TFComponentes
  Left = 183
  Top = 192
  BorderStyle = bsToolWindow
  Caption = 'Componentes del Producto'
  ClientHeight = 321
  ClientWidth = 727
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Detalles: TwwDBGrid
    Left = 4
    Top = 58
    Width = 719
    Height = 206
    ControlInfoInDataset = False
    ControlType.Strings = (
      'Codigo_Componente;CustomEdit;Productos;F')
    Selected.Strings = (
      'Codigo_Componente'#9'18'#9'Componente'#9'F'
      'Descripcion_Componente'#9'35'#9'Descripci'#243'n'#9'T'
      'Cantidad'#9'13'#9'Cantidad'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = 13428432
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = Modulo.dComponentes
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
    UseTFields = False
    PadColumnStyle = pcsPlain
    PaintOptions.AlternatingRowColor = 9948159
  end
  object BitBtn1: TBitBtn
    Left = 556
    Top = 273
    Width = 167
    Height = 35
    Caption = '&Aceptar'
    TabOrder = 1
    Kind = bkOK
  end
  object DBEdit67: TDBEdit
    Left = 4
    Top = 6
    Width = 719
    Height = 39
    TabStop = False
    Ctl3D = False
    DataField = 'Descripcion'
    DataSource = Modulo.dProductos
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object Productos: TwwDBLookupCombo
    Left = 72
    Top = 117
    Width = 121
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Descripcion'#9'25'#9'Descripcion'#9'F'
      'Presentacion'#9'25'#9'Presentacion'#9'F'
      'Existencia'#9'10'#9'Existencia'#9'F')
    DataField = 'Codigo_Componente'
    DataSource = Modulo.dComponentes
    LookupTable = Modulo.tListadoProductos
    LookupField = 'Codigo'
    Options = [loColLines, loRowLines, loTitles, loSearchOnBackspace]
    TabOrder = 3
    AutoDropDown = True
    ShowButton = True
    OrderByDisplay = False
    PreciseEditRegion = False
    AllowClearKey = True
  end
end
