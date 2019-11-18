object FCriterioRepVendida: TFCriterioRepVendida
  Left = 227
  Top = 138
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
    Width = 110
    Height = 13
    Caption = 'Seleccione el Producto'
    Enabled = False
  end
  object LTipo: TLabel
    Left = 189
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
  object btAceptar: TBitBtn
    Left = 202
    Top = 188
    Width = 75
    Height = 25
    Caption = 'Aceptar'
    TabOrder = 7
    OnClick = btAceptarClick
    Kind = bkOK
  end
  object btCancelar: TBitBtn
    Left = 282
    Top = 188
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 8
    Kind = bkCancel
  end
  object Usuarios: TRadioGroup
    Left = 189
    Top = 3
    Width = 171
    Height = 46
    Caption = 'Usuarios'
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Usuario Espec'#237'fico')
    TabOrder = 4
    OnClick = UsuariosClick
  end
  object Elementos: TRadioGroup
    Left = 2
    Top = 99
    Width = 171
    Height = 46
    Caption = 'Productos'
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Uno en Espec'#237'fico')
    TabOrder = 2
    OnClick = ElementosClick
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
    OnCloseUp = DepartamentoCloseUp
  end
  object Producto: TwwDBLookupCombo
    Left = 3
    Top = 164
    Width = 171
    Height = 19
    Ctl3D = False
    CharCase = ecUpperCase
    DisableThemes = False
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Descripcion'#9'40'#9'Descripcion'#9'F'
      'Codigo'#9'15'#9'Codigo'#9'F')
    LookupTable = Modulo.tListadoProductos
    LookupField = 'Codigo'
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
  object Usuario: TwwDBLookupCombo
    Left = 189
    Top = 65
    Width = 171
    Height = 19
    Ctl3D = False
    CharCase = ecUpperCase
    DisableThemes = False
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'NombreCompleto'#9'40'#9'Nombre Completo'#9'F'
      'NickName'#9'25'#9'NickName'#9'F')
    LookupTable = Modulo.tListadoUsuarios
    LookupField = 'NickName'
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
    Caption = 'Tipo de Producto'
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Uno en Espec'#237'fico')
    TabOrder = 6
    OnClick = TiposClick
  end
  object Tipo: TwwDBLookupCombo
    Left = 189
    Top = 164
    Width = 171
    Height = 19
    Ctl3D = False
    CharCase = ecUpperCase
    DisableThemes = False
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Descripcion'#9'25'#9'Descripcion'#9'F')
    LookupTable = Modulo.tTipos_Productos
    LookupField = 'Numero'
    Options = [loColLines, loRowLines, loTitles, loSearchOnBackspace]
    Enabled = False
    Navigator = False
    ParentCtl3D = False
    TabOrder = 9
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = False
    ShowMatchText = True
  end
end
