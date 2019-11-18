object FEmpleados: TFEmpleados
  Left = 172
  Top = 73
  BorderStyle = bsToolWindow
  Caption = 'Registro y Modificaci'#243'n de Empleados'
  ClientHeight = 546
  ClientWidth = 742
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
  object Shape1: TShape
    Left = 390
    Top = 32
    Width = 98
    Height = 99
  end
  object Label1: TLabel
    Left = 16
    Top = 98
    Width = 111
    Height = 13
    Caption = 'Cedula / Pasaporte'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 50
    Width = 107
    Height = 13
    Caption = 'Tipo Identificaci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 118
    Width = 42
    Height = 13
    Caption = 'Nombres'
    FocusControl = Nombres
  end
  object Label4: TLabel
    Left = 16
    Top = 138
    Width = 42
    Height = 13
    Caption = 'Apellidos'
    FocusControl = Apellidos
  end
  object Label7: TLabel
    Left = 16
    Top = 158
    Width = 55
    Height = 13
    Caption = 'Estado Civil'
  end
  object Label8: TLabel
    Left = 16
    Top = 199
    Width = 101
    Height = 13
    Caption = 'Fecha de Nacimiento'
  end
  object Label13: TLabel
    Left = 16
    Top = 224
    Width = 45
    Height = 13
    Caption = 'Direcci'#243'n'
    FocusControl = Direccion_Local
  end
  object Label14: TLabel
    Left = 16
    Top = 244
    Width = 20
    Height = 13
    Caption = 'Pais'
  end
  object Label15: TLabel
    Left = 302
    Top = 240
    Width = 77
    Height = 13
    Caption = 'Ciudad / Estado'
  end
  object Label16: TLabel
    Left = 16
    Top = 264
    Width = 31
    Height = 13
    Caption = 'Sector'
  end
  object Label18: TLabel
    Left = 16
    Top = 360
    Width = 27
    Height = 13
    Caption = 'e-mail'
    FocusControl = email
  end
  object Label5: TLabel
    Left = 16
    Top = 340
    Width = 71
    Height = 13
    Caption = 'No. de Tarjeta '
    FocusControl = Numero_Tarjeta
  end
  object Label6: TLabel
    Left = 16
    Top = 320
    Width = 89
    Height = 13
    Caption = 'N'#250'mero de Cuenta'
    FocusControl = Numero_Cuenta
  end
  object Label9: TLabel
    Left = 16
    Top = 178
    Width = 24
    Height = 13
    Caption = 'Sexo'
  end
  object FOTO: TImage
    Left = 391
    Top = 33
    Width = 96
    Height = 97
    Cursor = crHandPoint
    Stretch = True
    OnDblClick = Agregar_FotoExecute
  end
  object Label10: TLabel
    Left = 402
    Top = 136
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
  object Label11: TLabel
    Left = 302
    Top = 320
    Width = 84
    Height = 13
    Caption = 'C'#243'digo del Banco'
    FocusControl = Codigo_Banco
  end
  object Barra_Menu: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 742
    Height = 27
    UseSystemFont = False
    ActionManager = Opciones
    Caption = 'Barra_Menu'
    ColorMap = ColorConfig
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
  object Nombres: TDBEdit
    Left = 131
    Top = 115
    Width = 233
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'Nombre'
    DataSource = ModuloNomina.dEmpleados
    ParentCtl3D = False
    TabOrder = 3
  end
  object Apellidos: TDBEdit
    Left = 131
    Top = 135
    Width = 233
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'Apellido'
    DataSource = ModuloNomina.dEmpleados
    ParentCtl3D = False
    TabOrder = 4
  end
  object Tipo_Cliente: TDBRadioGroup
    Left = 131
    Top = 47
    Width = 161
    Height = 46
    Columns = 2
    Ctl3D = False
    DataField = 'Tipo_Documento'
    DataSource = ModuloNomina.dEmpleados
    Items.Strings = (
      'C'#233'dula'
      'Pasaporte'
      'Ficha'
      'Otros')
    ParentBackground = True
    ParentCtl3D = False
    TabOrder = 1
  end
  object Secuencia: TDBEdit
    Left = 131
    Top = 28
    Width = 161
    Height = 19
    TabStop = False
    Ctl3D = False
    DataField = 'Secuencia'
    DataSource = ModuloNomina.dEmpleados
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object Direccion_Local: TDBEdit
    Left = 131
    Top = 217
    Width = 417
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'Direccion'
    DataSource = ModuloNomina.dEmpleados
    ParentCtl3D = False
    TabOrder = 8
  end
  object Telefono_Principal: TDBEdit
    Left = 131
    Top = 277
    Width = 157
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'Numero_Telefono_1'
    DataSource = ModuloNomina.dEmpleados
    ParentCtl3D = False
    TabOrder = 13
  end
  object Telefono_Secundario: TDBEdit
    Left = 391
    Top = 277
    Width = 157
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'Numero_Telefono_2'
    DataSource = ModuloNomina.dEmpleados
    ParentCtl3D = False
    TabOrder = 15
  end
  object Telefono_Tercero: TDBEdit
    Left = 131
    Top = 297
    Width = 157
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'Numero_Telefono_3'
    DataSource = ModuloNomina.dEmpleados
    ParentCtl3D = False
    TabOrder = 17
  end
  object Telefono_Cuarto: TDBEdit
    Left = 391
    Top = 297
    Width = 157
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'Numero_Telefono_4'
    DataSource = ModuloNomina.dEmpleados
    ParentCtl3D = False
    TabOrder = 19
  end
  object email: TDBEdit
    Left = 131
    Top = 357
    Width = 417
    Height = 19
    CharCase = ecLowerCase
    Ctl3D = False
    DataField = 'mail'
    DataSource = ModuloNomina.dEmpleados
    ParentCtl3D = False
    TabOrder = 23
  end
  object Tipo_Telefono_Principal: TwwDBComboBox
    Left = 16
    Top = 277
    Width = 79
    Height = 19
    TabStop = False
    ShowButton = True
    Style = csDropDown
    MapList = False
    AllowClearKey = False
    BorderStyle = bsNone
    Ctl3D = False
    DataField = 'Tipo_Telefono_1'
    DataSource = ModuloNomina.dEmpleados
    DropDownCount = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ItemHeight = 0
    Items.Strings = (
      'Automovil'
      'Beeper'
      'Celular'
      'Fax'
      'Local'
      'Oficina'
      'Otro Tel.'
      'Pager'
      'Real'
      'Tel. Casa'
      'Tel. Trabajo')
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    Sorted = True
    TabOrder = 12
    UnboundDataType = wwDefault
  end
  object Tipo_Telefono_Tercero: TwwDBComboBox
    Left = 16
    Top = 297
    Width = 79
    Height = 19
    TabStop = False
    ShowButton = True
    Style = csDropDown
    MapList = False
    AllowClearKey = False
    BorderStyle = bsNone
    Ctl3D = False
    DataField = 'Tipo_Telefono_3'
    DataSource = ModuloNomina.dEmpleados
    DropDownCount = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ItemHeight = 0
    Items.Strings = (
      'Automovil'
      'Beeper'
      'Celular'
      'Fax'
      'Local'
      'Oficina'
      'Otro Tel.'
      'Pager'
      'Real'
      'Tel. Casa'
      'Tel. Trabajo')
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    Sorted = False
    TabOrder = 16
    UnboundDataType = wwDefault
  end
  object Tipo_Telefono_Secundario: TwwDBComboBox
    Left = 304
    Top = 277
    Width = 81
    Height = 19
    TabStop = False
    ShowButton = True
    Style = csDropDown
    MapList = False
    AllowClearKey = False
    BorderStyle = bsNone
    Ctl3D = False
    DataField = 'Tipo_Telefono_2'
    DataSource = ModuloNomina.dEmpleados
    DropDownCount = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ItemHeight = 0
    Items.Strings = (
      'Automovil'
      'Beeper'
      'Celular'
      'Fax'
      'Local'
      'Oficina'
      'Otro Tel.'
      'Pager'
      'Real'
      'Tel. Casa'
      'Tel. Trabajo')
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    Sorted = False
    TabOrder = 14
    UnboundDataType = wwDefault
  end
  object Tipo_Telefono_Cuarto: TwwDBComboBox
    Left = 304
    Top = 297
    Width = 81
    Height = 19
    TabStop = False
    ShowButton = True
    Style = csDropDown
    MapList = False
    AllowClearKey = False
    BorderStyle = bsNone
    Ctl3D = False
    DataField = 'Tipo_Telefono_4'
    DataSource = ModuloNomina.dEmpleados
    DropDownCount = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ItemHeight = 0
    Items.Strings = (
      'Automovil'
      'Beeper'
      'Celular'
      'Fax'
      'Local'
      'Oficina'
      'Otro Tel.'
      'Pager'
      'Real'
      'Tel. Casa'
      'Tel. Trabajo')
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    Sorted = False
    TabOrder = 18
    UnboundDataType = wwDefault
  end
  object Fecha_Nacimiento: TwwDBDateTimePicker
    Left = 131
    Top = 195
    Width = 154
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    DataField = 'Fecha_Nacimiento'
    DataSource = ModuloNomina.dEmpleados
    Epoch = 1950
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ShowButton = True
    TabOrder = 7
  end
  object Pais: TwwDBLookupCombo
    Left = 131
    Top = 237
    Width = 157
    Height = 19
    Ctl3D = False
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Nombre'#9'50'#9'Nombre'#9'F'
      'Iso_3_Char'#9'5'#9'COD'#9'F'
      'Region'#9'25'#9'Region'#9'F')
    DataField = 'Pais'
    DataSource = ModuloNomina.dEmpleados
    LookupField = 'Iso_3_Char'
    Style = csDropDownList
    ParentCtl3D = False
    TabOrder = 9
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object Sector: TwwDBLookupCombo
    Left = 131
    Top = 257
    Width = 157
    Height = 19
    Ctl3D = False
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Nombre'#9'35'#9'Nombre'#9'F'
      'Abreviatura'#9'11'#9'Abreviatura'#9'F')
    DataField = 'Sector'
    DataSource = ModuloNomina.dEmpleados
    LookupField = 'Numero'
    Style = csDropDownList
    ParentCtl3D = False
    TabOrder = 11
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object Ciudad_Estado: TwwDBLookupCombo
    Left = 391
    Top = 237
    Width = 157
    Height = 19
    Ctl3D = False
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Nombre'#9'35'#9'Nombre'#9'F'
      'Serie_Codigo'#9'5'#9'Serie / Codigo'#9'F')
    DataField = 'Ciudad'
    DataSource = ModuloNomina.dEmpleados
    LookupField = 'Serie_Codigo'
    Style = csDropDownList
    ParentCtl3D = False
    TabOrder = 10
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object Cedula_Pasaporte: TEdit
    Left = 131
    Top = 95
    Width = 161
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    OnExit = Cedula_PasaporteExit
  end
  object Estado_Civil: TwwDBComboBox
    Left = 131
    Top = 155
    Width = 114
    Height = 19
    ShowButton = True
    Style = csDropDownList
    MapList = False
    AllowClearKey = False
    Ctl3D = False
    DataField = 'Estado_Civil'
    DataSource = ModuloNomina.dEmpleados
    DropDownCount = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 0
    Items.Strings = (
      'Casado (a)'
      'Divorciado (a)'
      'Soltero (a)'
      'Uni'#243'n Libre'
      'Viudo (a)')
    ItemIndex = 0
    ParentCtl3D = False
    ParentFont = False
    Sorted = True
    TabOrder = 5
    UnboundDataType = wwDefault
  end
  object Numero_Tarjeta: TDBEdit
    Left = 131
    Top = 337
    Width = 157
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'Numero_Tarjeta'
    DataSource = ModuloNomina.dEmpleados
    ParentCtl3D = False
    TabOrder = 22
  end
  object Numero_Cuenta: TDBEdit
    Left = 131
    Top = 317
    Width = 157
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'Numero_Cuenta'
    DataSource = ModuloNomina.dEmpleados
    ParentCtl3D = False
    TabOrder = 20
  end
  object Sexo: TwwDBComboBox
    Left = 131
    Top = 175
    Width = 114
    Height = 19
    ShowButton = True
    Style = csDropDownList
    MapList = False
    AllowClearKey = False
    Ctl3D = False
    DataField = 'Sexo'
    DataSource = ModuloNomina.dEmpleados
    DropDownCount = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 0
    Items.Strings = (
      'Femenino'
      'Masculino')
    ItemIndex = 1
    ParentCtl3D = False
    ParentFont = False
    Sorted = True
    TabOrder = 6
    UnboundDataType = wwDefault
  end
  object Bt_Opcionales: TActionToolBar
    Left = 464
    Top = 510
    Width = 275
    Height = 32
    ActionManager = Opciones
    Align = alNone
    Caption = 'Atb_Botones'
    ColorMap = ColorConfig
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    EdgeInner = esLowered
    EdgeOuter = esRaised
    Orientation = boTopToBottom
    Spacing = 0
  end
  object Detalle_Laboral: TwwDBGrid
    Left = 6
    Top = 379
    Width = 733
    Height = 128
    ControlInfoInDataset = False
    Selected.Strings = (
      'Nombre_Compania'#9'23'#9'Compa'#241#237'a'#9'F'#9'Compa'#241#237'a'
      'Nombre_Departamento'#9'18'#9'Departamento'#9'F'#9'Compa'#241#237'a'
      'Cargo'#9'11'#9'Cargo'#9'F'#9'Detalles para la N'#243'mina'
      'Tipo_Empleado'#9'13'#9'Tipo Empleado'#9'F'#9'Detalles para la N'#243'mina'
      'Tipo_Salario'#9'11'#9'Tipo Salario'#9'F'#9'Detalles para la N'#243'mina'
      'Salario'#9'10'#9'Salario'#9'F'#9'Detalles para la N'#243'mina'
      'Periodo_Nomina'#9'10'#9'Per'#237'odo'#9'F'#9'Detalles para la N'#243'mina'
      'Forma_Cobro'#9'15'#9'Forma_Cobro'#9'F')
    IniAttributes.Enabled = True
    IniAttributes.FileName = 'Laboral.grd'
    IniAttributes.SectionName = 'Companias'
    IniAttributes.Delimiter = ';;'
    TitleColor = 16436860
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    Ctl3D = False
    DataSource = ModuloNomina.dInformacion_Laboral
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 26
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    TitleLines = 2
    TitleButtons = False
    UseTFields = False
    OnDblClick = Editar_CompaniaExecute
    PadColumnStyle = pcsPlain
    PaintOptions.AlternatingRowColor = 16115407
  end
  object Codigo_Banco: TDBEdit
    Left = 391
    Top = 317
    Width = 157
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'Numero_Cuenta'
    DataSource = ModuloNomina.dEmpleados
    ParentCtl3D = False
    TabOrder = 21
  end
  object Panel_Botones: TAdvPageControl
    Left = 587
    Top = 33
    Width = 134
    Height = 212
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
    TabOrder = 27
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
        Width = 126
        Height = 183
        ActionManager = Opciones
        Align = alClient
        Caption = 'Botones'
        ColorMap = Modulo.ColorConfig
        EdgeInner = esLowered
        EdgeOuter = esRaised
        Orientation = boTopToBottom
        Spacing = 0
      end
    end
  end
  object ColorConfig: TXPColorMap
    HighlightColor = 14410210
    BtnSelectedColor = clBtnFace
    UnusedColor = 14410210
    Left = 405
    Top = 175
  end
  object Opciones: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = Guardar
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
                Caption = 'B&uscar'
                ImageIndex = 2
                ShortCut = 16450
              end
              item
                Action = Eliminar
                Caption = 'E&liminar'
                ImageIndex = 4
                ShortCut = 16453
              end
              item
                Caption = '-'
              end
              item
                Action = Agregar_Foto
                Caption = 'Ag&regar_Foto'
                ImageIndex = 53
              end
              item
                Caption = '-'
              end
              item
                Action = Agregar_Modificar_Garantia
                Caption = '&Asignar Compa'#241#237'a'
                ImageIndex = 6
                ShortCut = 119
              end
              item
                Action = Editar_Compania
                Caption = '&Modificar Actual'
                ImageIndex = 56
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
          end>
        ActionBar = Barra_Menu
      end
      item
        Items = <
          item
            Action = Agregar_Modificar_Garantia
            Caption = '&Asignar Compa'#241#237'a'
            ImageIndex = 6
            ShortCut = 119
          end
          item
            Action = Editar_Compania
            Caption = '&Modificar Actual'
            ImageIndex = 56
          end>
        ActionBar = Bt_Opcionales
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
            Action = Salir
            Caption = '&Salir'
            ImageIndex = 10
            ShortCut = 27
          end>
        ActionBar = Botones
      end>
    Images = Modulo.SystemImages
    Left = 376
    Top = 175
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
    object Agregar_Modificar_Garantia: TAction
      Category = 'Acciones Relacionadas'
      Caption = 'Asignar Compa'#241#237'a'
      ImageIndex = 6
      ShortCut = 119
      OnExecute = Agregar_Modificar_GarantiaExecute
    end
    object Editar_Compania: TAction
      Category = 'Acciones Relacionadas'
      Caption = 'Modificar Actual'
      ImageIndex = 56
      OnExecute = Editar_CompaniaExecute
    end
    object Agregar_Foto: TAction
      Category = 'Acciones Relacionadas'
      Caption = 'Agregar_Foto'
      ImageIndex = 53
      OnExecute = Agregar_FotoExecute
    end
  end
end
