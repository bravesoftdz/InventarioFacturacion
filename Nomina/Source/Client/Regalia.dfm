object FRegalia: TFRegalia
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Generar Nomina de Regal'#237'a Pascual'
  ClientHeight = 576
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 8
    Top = 31
    Width = 49
    Height = 13
    Caption = 'Compa'#241#237'a'
  end
  object Label4: TLabel
    Left = 8
    Top = 51
    Width = 67
    Height = 13
    Caption = 'Departamento'
  end
  object Label1: TLabel
    Left = 8
    Top = 94
    Width = 58
    Height = 13
    Caption = 'Fecha Inicio'
  end
  object Label2: TLabel
    Left = 235
    Top = 94
    Width = 55
    Height = 13
    Caption = 'Fecha Final'
  end
  object Label9: TLabel
    Left = 8
    Top = 72
    Width = 38
    Height = 13
    Caption = 'Per'#237'odo'
  end
  object SpeedButton2: TSpeedButton
    Left = 466
    Top = 60
    Width = 169
    Height = 22
    Action = Generar_Reporte_Banco
    Flat = True
    Glyph.Data = {
      36090000424D3609000000000000360000002800000018000000180000000100
      2000000000000009000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FCFCFC00FBFBFB00FEFE
      FE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FBFEFF00EAEFF600E1E7EE00E0E4EB00E4E7
      EC00F1F2F300FDFDFD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00D5CEC60091744D007C5216007A4C0900815922008C72
      4C00B4AEA900D4D5D600EFEFF100FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00CEC4B800865B1B00BD8F4300BE914500B3853700B6883B00B688
      3B008B5F1E00917C5E00C5C4C400EBECED00FEFEFE00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00E6E1DD008B652F00D4A85700A4783300B0987600E2DACE00DED3C000B996
      6000D1A35100A57932007F5F3400CCD0D500EBECED00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00B0957200CA9C4A00A5804800DBD9D600FF00FF00EAE9E900CBC8C600CCCC
      D000B19F8600CAA46000B88E43007F5D2E00C1C1C000E6E7E900FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EDE9
      E400AD884F00C2954600AFA69B00FF00FF00DED7CE00926E3900966B29008962
      290094816A00B0A39100D0B17700BA8F470087673B00BDBDBB00EAEBEC00FEFE
      FE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EAE4
      DD00B6905300A0722C00C3C3C500F3F3F400A5855800CDA05000C99D4F00D4A8
      58008C601C0081654400B3A99C00D2B07600BB924B007F5D2E00CBD0D500EBEC
      ED00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EEE9
      E100C2A26F00A47A3700A2958200C6BFB800DBC9A600C4994D008F7B6300A387
      5C00D8AD5E00956822007D5D3500B5ADA100D7BC8D00C49A54007E5C2D00C1C1
      C000E6E7E900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F1ED
      E900D0BFA300D4AF6E00744E1D00B6B0A900CBBAA000D9B983008E6F4300BFC0
      C200AE906300D1A95F009668210080633E00B4A99900DEC79F00BD9553008766
      3900BDBDBB00EAEBEC00FEFEFE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00D6C9B800E6CA99009A6C250080654000AEA29400D4BC9600CAA360008766
      3800C5C7CA00B69A6F00DAB46D008E601B007F623E00B4ABA000E3CCA200BF99
      5800805E2E00CBD0D500EBECED00FEFEFE00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00C6B09200DDB870009F722A007F603600B1A79B00CAAE8200CFA7
      600086653700BDBDBE00B29A7900DFBC7900976922007D5C3200B7AEA300E3D0
      AE00C8A15F00805D2F00C3C3C200EEEEEF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FCFCFF00C1A57C00D9B47200A0732A0081644000AEA29200D1B8
      9100CAA25F008F704200BBBABB00BBA48100DAB87B009769210080613C00B5AA
      9D00E6D4B500B28B4E0092795A00EDEFF300FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00F3F0EE00C2A88000E0BD7D009A6C240080643F00B1A7
      9B00D6BD9400CAA4630087663700C3C5C800C1AC8C00E3C58A008E5F17007E62
      3D00BBB2A700A2835900B9A68C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00F8F6F700BFA98600E3C18400A1732B007F5F
      3400B4ABA000DBC8AA00D4AE6E0086653600BEBCBA00C2AF9700E6CA95009768
      21007B5A2E00C9CBCF00EEF0F300FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FAF9FA00C1A98600DDBD8300A275
      2B0080633D00B2A79900E0CEB200B9925400957D5F00E7E9EC00D0BEA400E1C6
      9500986922007F613A00C4C3C100EAEBEC00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F2EFEB00C4AD8B00E3C5
      90009B6C22007F623E00B8AFA300A0805800BAA78C00FF00FF00F2EFEB00D3C1
      A900E7CF9F008D5C1300866D4B00D1D1D200FDFEFE00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F6F4F300C2AF
      9100E5C99700A3752C007D5C3000C9CBCF00EEF0F300FF00FF00FF00FF00F5F4
      F100CEBCA500E9D1A200875A1900B6ADA300F7F9FA00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F7F6
      F600C4AF9100E0C59300A3752C0080633C00C5C4C300E8E9EB00FEFEFE00FF00
      FF00C6B8A600D0B07C00A67A3500B0A59800FAFCFE00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00F1EEEA00C8B59800E7CEA1009B6B20007C5D3600C1C1C100E4E8ED00F6FD
      FF00A18C7400BA8C3F00A67A3400BAB2A700FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00F5F4F100C6B59E00E7D1A500AB7F3600784C0E00947C5D008C6F
      480093682700D4AA5A0096734500E3E1DF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00F7F5F400C3B09500E2CBA400E2C58F00BE965300C79F
      5B00CCA054008E622200C1B5A500FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00F3F0ED00C6B59E00B49C7B00A5825000966F
      380096744200D2C6B800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object Barra_Menu: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 794
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
    PersistentHotKeys = True
    Spacing = 0
  end
  object Atb_Botones: TActionToolBar
    Left = 641
    Top = 28
    Width = 153
    Height = 83
    ActionManager = Opciones
    Align = alNone
    Caption = 'Atb_Botones'
    ColorMap = Modulo.ColorConfig
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    EdgeInner = esLowered
    EdgeOuter = esRaised
    Orientation = boTopToBottom
    Spacing = 0
  end
  object Departamento: TwwDBLookupCombo
    Left = 79
    Top = 49
    Width = 243
    Height = 19
    Ctl3D = False
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Descripcion'#9'75'#9'Descripcion'#9'F')
    DataField = 'Departamento'
    DataSource = ModuloNomina.dNomina
    LookupTable = ModuloNomina.tDepartamentos
    LookupField = 'Numero'
    Style = csDropDownList
    ParentCtl3D = False
    TabOrder = 1
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
    OnExit = DepartamentoExit
  end
  object Compania: TwwDBLookupCombo
    Left = 79
    Top = 29
    Width = 243
    Height = 19
    Ctl3D = False
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Nombre_Compania'#9'75'#9'Compa'#241#237'a'#9'F'
      'RNC'#9'25'#9'RNC'#9'F')
    DataField = 'Compania'
    DataSource = ModuloNomina.dNomina
    LookupTable = ModuloNomina.tCompania
    LookupField = 'Numero_Compania'
    Style = csDropDownList
    ParentCtl3D = False
    TabOrder = 0
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
    OnChange = CompaniaChange
  end
  object Atb_Editar: TActionToolBar
    Left = 328
    Top = 29
    Width = 118
    Height = 39
    ActionManager = Opciones
    Align = alNone
    Caption = 'Atb_Botones'
    ColorMap = Modulo.ColorConfig
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    EdgeInner = esLowered
    EdgeOuter = esRaised
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Orientation = boTopToBottom
    ParentFont = False
    Spacing = 0
  end
  object DetalleRegalia: TwwDBGrid
    Left = -6
    Top = 113
    Width = 792
    Height = 465
    ControlInfoInDataset = False
    ControlType.Strings = (
      'Total_Horas;CustomEdit;Horas;T'
      'Total_Salario;CustomEdit;Salarios;F'
      'Deducciones;CustomEdit;Deducciones;F'
      'Cargo;CustomEdit;Laboral;T')
    Selected.Strings = (
      'Nombre_Empleado'#9'30'#9'Nombre'#9'T'#9'Informaci'#243'n del Empleado'
      'Cargo'#9'20'#9'Laboral'#9'T'#9'Informaci'#243'n del Empleado'
      'Total_Horas_Extraordinarias'#9'19'#9'Total Salarios'#9'F'
      'Total_Horas_Trabajadas'#9'15'#9'Cantidad Salarios'#9'F'
      'Total_Neto'#9'19'#9'Salario Regal'#237'a'#9'F')
    IniAttributes.Enabled = True
    IniAttributes.FileName = 'DatosRegalia.grd'
    IniAttributes.SectionName = 'Jornal'
    IniAttributes.Delimiter = ';;'
    TitleColor = 16436860
    OnRowChanged = DetalleRegaliaRowChanged
    FixedCols = 0
    ShowHorzScrollBar = False
    DataSource = ModuloNomina.dDetalle_Nomina
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = [dgEnterToTab, dgAllowDelete]
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowCellHint]
    ParentFont = False
    ParentShowHint = False
    RowHeightPercent = 250
    ShowHint = True
    TabOrder = 2
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    TitleLines = 2
    TitleButtons = False
    UseTFields = False
    OnCalcCellColors = DetalleRegaliaCalcCellColors
    OnEnter = DetalleRegaliaEnter
    OnExit = DetalleRegaliaExit
    PadColumnStyle = pcsPlain
    PaintOptions.AlternatingRowColor = 16115407
  end
  object Periodos: TwwDBComboBox
    Left = 79
    Top = 69
    Width = 148
    Height = 19
    ShowButton = True
    Style = csDropDownList
    MapList = False
    AllowClearKey = False
    Ctl3D = False
    DataField = 'Periodo'
    DataSource = ModuloNomina.dNomina
    DropDownCount = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    HistoryList.Section = 'Periodo'
    HistoryList.FileName = 'Add_Comp.hstl'
    HistoryList.Enabled = True
    HistoryList.MRUEnabled = True
    ItemHeight = 0
    Items.Strings = (
      'ANUAL'
      'BIMENSUAL'
      'CUATRIMESTRAL'
      'DIARIO'
      'MENSUAL'
      'QUINCENAL'
      'SEMANAL'
      'SEMESTRAL'
      'TRIMESTRAL')
    ParentCtl3D = False
    ParentFont = False
    Sorted = True
    TabOrder = 6
    UnboundDataType = wwDefault
  end
  object Fecha_Inicio: TwwDBDateTimePicker
    Left = 79
    Top = 90
    Width = 150
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    DataField = 'Fecha_Inicio'
    DataSource = ModuloNomina.dNomina
    Epoch = 1950
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    ReadOnly = True
    ShowButton = True
    TabOrder = 7
  end
  object Fecha_Final: TwwDBDateTimePicker
    Left = 296
    Top = 90
    Width = 150
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    DataField = 'Fecha_Final'
    DataSource = ModuloNomina.dNomina
    Epoch = 1950
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    ReadOnly = True
    ShowButton = True
    TabOrder = 8
  end
  object Laboral: TwwDataInspector
    Left = 198
    Top = 163
    Width = 124
    Height = 33
    DisableThemes = False
    Color = clNone
    Ctl3D = False
    CaptionColor = clNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssNone
    TabOrder = 9
    Items = <
      item
        DataField = 'Cargo'
        Caption = 'Cargo'
        WordWrap = False
      end
      item
        DataField = 'Base_Pago_Hora'
        Caption = 'S. Base'
        WordWrap = False
      end>
    CaptionWidth = 41
    Options = [ovColumnResize, ovEnterToTab, ovHighlightActiveRow, ovCenterCaptionVert, ovShowCaptionHints, ovShowCellHints]
    PaintOptions.AlternatingRowRegions = [arrDataColumns, arrActiveDataColumn]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -9
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    LineStyleCaption = ovDottedLine
    LineStyleData = ovDottedLine
    ReadOnly = True
    CaptionIndent = 3
    Visible = False
  end
  object DBEdit1: TDBEdit
    Left = 466
    Top = 31
    Width = 169
    Height = 19
    TabStop = False
    Ctl3D = False
    DataField = 'Numero_Nomina'
    DataSource = ModuloNomina.dNomina
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
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
            Action = Postear
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
      end
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
                Caption = '&Buscar'
                ImageIndex = 69
                ShortCut = 16450
              end
              item
                Action = Postear
                ImageIndex = 26
                ShortCut = 16453
              end>
            Caption = '&Opciones'
          end>
        ActionBar = Barra_Menu
      end
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
            Caption = '&Buscar'
            ImageIndex = 69
            ShortCut = 16450
          end
          item
            Action = Postear
            ImageIndex = 26
            ShortCut = 16453
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
            Caption = '&Buscar'
            ImageIndex = 69
            ShortCut = 16450
          end
          item
            Action = Postear
            ImageIndex = 26
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
      end
      item
        Items = <
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
            Action = Postear
            ImageIndex = 26
            ShortCut = 16453
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
            Caption = '&Buscar'
            ImageIndex = 69
            ShortCut = 16450
          end
          item
            Action = Postear
            ImageIndex = 26
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
      end
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
            Caption = '&Buscar'
            ImageIndex = 69
            ShortCut = 16450
          end
          item
            Action = Postear
            ImageIndex = 26
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
      end
      item
        Items = <
          item
            Action = Agregar_Modificar_Garantia
            ImageIndex = 9
            ShortCut = 119
          end
          item
            Caption = '-'
          end
          item
            Caption = '-'
          end>
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
            Action = Imprimir
            ImageIndex = 5
            ShortCut = 16464
          end
          item
            Action = Postear
            ImageIndex = 58
            ShortCut = 16453
          end
          item
            Action = Salir
            Caption = '&Salir'
            ImageIndex = 10
            ShortCut = 27
          end>
        ActionBar = Atb_Botones
      end
      item
        Items = <
          item
            Action = Agregar_Modificar_Garantia
            Caption = '&Asignar Compa'#241#237'a'
            ImageIndex = 75
            ShortCut = 119
          end
          item
            Action = Action1
            Caption = '&Eliminar de Compa'#241#237'a'
            ImageIndex = 26
            ShortCut = 16501
          end>
      end
      item
        Items = <
          item
            Action = Generar
            ImageIndex = 41
          end>
        ActionBar = Atb_Editar
      end>
    Images = Modulo.SystemImages
    Left = 563
    Top = 32
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
      Caption = 'Guardar                                .'
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
    object Postear: TAction
      Category = 'Opciones'
      Caption = 'Postear'
      ImageIndex = 58
      ShortCut = 16453
      OnExecute = PostearExecute
    end
    object Agregar_Modificar_Garantia: TAction
      Category = 'Acciones Relacionadas'
      Caption = 'Asignar Compa'#241#237'a'
      ImageIndex = 75
      ShortCut = 119
    end
    object Action1: TAction
      Category = 'Acciones Relacionadas'
      Caption = 'Eliminar de Compa'#241#237'a'
      ImageIndex = 26
      ShortCut = 16501
    end
    object Generar: TAction
      Category = 'Acciones Relacionadas'
      Caption = 'Generar'
      ImageIndex = 41
      OnExecute = GenerarExecute
    end
    object Mostrar_Ocultar_Detalles: TAction
      Category = 'Acciones Relacionadas'
      Caption = 'Mostrar Detalles'
      ImageIndex = 50
      OnExecute = Mostrar_Ocultar_DetallesExecute
    end
    object Imprimir: TAction
      Category = 'Opciones'
      Caption = 'Imprimir'
      ImageIndex = 5
      ShortCut = 16464
      OnExecute = ImprimirExecute
    end
    object Generar_Reporte_Banco: TAction
      Category = 'Acciones Relacionadas'
      Caption = 'Generar Reporte Banco'
      ImageIndex = 54
      OnExecute = Generar_Reporte_BancoExecute
    end
  end
end
