object FCriterioRepProductos: TFCriterioRepProductos
  Left = 138
  Top = 84
  BorderStyle = bsToolWindow
  Caption = 'Reporte de Productos'
  ClientHeight = 217
  ClientWidth = 364
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LDepto: TLabel
    Left = 3
    Top = 51
    Width = 134
    Height = 13
    Caption = 'Seleccione el Departamento'
    Enabled = False
  end
  object LStatus: TLabel
    Left = 189
    Top = 51
    Width = 102
    Height = 13
    Caption = 'Seleccione el Estatus'
    Enabled = False
  end
  object LElemento: TLabel
    Left = 3
    Top = 148
    Width = 111
    Height = 13
    Caption = 'Seleccione el Elemento'
    Enabled = False
  end
  object LTipo: TLabel
    Left = 187
    Top = 148
    Width = 153
    Height = 13
    Caption = 'Seleccione el Tipo de Inventario'
    Enabled = False
  end
  object Deptos: TRadioGroup
    Left = 2
    Top = 3
    Width = 171
    Height = 46
    Caption = 'Departamentos'
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Departamento Espec'#237'fico')
    TabOrder = 0
    OnClick = DeptosClick
  end
  object BitBtn1: TBitBtn
    Left = 202
    Top = 188
    Width = 75
    Height = 25
    Caption = 'Aceptar'
    TabOrder = 8
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 282
    Top = 188
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 9
    Kind = bkCancel
  end
  object Status: TRadioGroup
    Left = 189
    Top = 3
    Width = 171
    Height = 46
    Caption = 'Estatus '
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Estatus Espec'#237'fico')
    TabOrder = 4
    OnClick = StatusClick
  end
  object Elementos: TRadioGroup
    Left = 2
    Top = 99
    Width = 171
    Height = 46
    Caption = 'Elementos '
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Uno en Espec'#237'fico')
    TabOrder = 2
    OnClick = ElementosClick
  end
  object Tipo: TwwDBComboBox
    Left = 189
    Top = 164
    Width = 171
    Height = 19
    ShowButton = True
    Style = csDropDownList
    MapList = False
    AllowClearKey = False
    AutoDropDown = True
    ShowMatchText = True
    Ctl3D = False
    DropDownCount = 8
    Enabled = False
    HistoryList.Section = 'TipoInventario'
    HistoryList.FileName = 'Reminder'
    HistoryList.Enabled = True
    ItemHeight = 0
    Items.Strings = (
      'Regular'
      'Servicio'
      'No Inventariado')
    ParentCtl3D = False
    Sorted = False
    TabOrder = 7
    UnboundDataType = wwDefault
  end
  object Departamento: TwwDBLookupCombo
    Left = 4
    Top = 65
    Width = 171
    Height = 19
    Ctl3D = False
    CharCase = ecUpperCase
    DisableThemes = False
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Descripcion'#9'50'#9'Descripci'#243'n'#9'F')
    LookupTable = Modulo.tDepartamentos
    LookupField = 'Numero'
    Options = [loColLines, loRowLines, loTitles, loSearchOnBackspace]
    Enabled = False
    Navigator = False
    ParentCtl3D = False
    TabOrder = 1
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = False
    ShowMatchText = True
  end
  object Elemento: TwwDBLookupCombo
    Left = 3
    Top = 164
    Width = 171
    Height = 19
    Ctl3D = False
    CharCase = ecUpperCase
    DisableThemes = False
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Nombre'#9'50'#9'Nombre'#9'F'
      'Representante'#9'50'#9'Representante'#9'F'
      'Cedula_Rnc_Pasaporte'#9'25'#9'C'#233'dula/Rnc/Registro'#9'F')
    LookupTable = Modulo.tFabricante
    LookupField = 'Numero'
    Options = [loColLines, loRowLines, loTitles, loSearchOnBackspace]
    Enabled = False
    Navigator = False
    ParentCtl3D = False
    TabOrder = 3
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = False
    ShowMatchText = True
  end
  object Estatus: TwwDBLookupCombo
    Left = 189
    Top = 65
    Width = 171
    Height = 19
    Ctl3D = False
    CharCase = ecUpperCase
    DisableThemes = False
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Status'#9'50'#9'Estatus'#9'F')
    LookupTable = Modulo.tStatus
    LookupField = 'Numero'
    Options = [loColLines, loRowLines, loTitles, loSearchOnBackspace]
    Enabled = False
    Navigator = False
    ParentCtl3D = False
    TabOrder = 5
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = False
    ShowMatchText = True
  end
  object Tipos: TRadioGroup
    Left = 189
    Top = 99
    Width = 171
    Height = 46
    Caption = 'Tipo de Inventario'
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Uno en Espec'#237'fico')
    TabOrder = 6
    OnClick = TiposClick
  end
end
