object FNomina: TFNomina
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Generar Nomina de Empleados'
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
  object SpeedButton1: TSpeedButton
    Left = 466
    Top = 90
    Width = 169
    Height = 19
    Action = Mostrar_Ocultar_Detalles
    Flat = True
    Glyph.Data = {
      36090000424D3609000000000000360000002800000018000000180000000100
      2000000000000009000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FDFFFF00F8FBFF00FCFDFF00FDFDFE00FFFFFE00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00E6DA
      C600C09E6900CDB79400E0DDD500EEF4FD00F4F8FF00F8FAFD00FAFAFA00FDFD
      FD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FBFFFF00CFA35900A26A
      2B00C0B0AF008E79780090653000A76F1100C5A36600DDD4BF00EEF4F600F3F6
      FB00F6F9FB00FAFBFD00FEFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FEFFFF00F6F0E600DABB8900A96A17008B7AA700848F
      FC00D3D7FE00889DFF007994FF006681FF00666EC10068536400795029009F80
      5A00BDAA9400D4C8B500DEDBD400F3F4F600FEFEFE00FF00FF00FF00FF00FF00
      FF00FF00FF00FCFFFF00F1CE8F00BF8D5600836A8000707CEC007986F3007F84
      E300CACEF4008193F1007A8DF100758AF5006A83FC005D7CFF004A6FFF004763
      E8004C54AD0048498E00A87D3A00F1F7FE00FDFDFD00FF00FF00FF00FF00FF00
      FF00FEFAF200DB9C3D008E7384005664DF00566EFD006072ED006473E9009A95
      DD00F3EAEF00C3C4EF00949FEF00657DF3005C77F9005572F500516EF6004768
      FA003D62FF001A4DFF009D671500F6FCFF00FDFDFD00FF00FF00FF00FF00FF00
      FF00FFF7DD008E5848001F50FF003E5BF5004A63EC006E7BE200CCBAC800FFDE
      C000FFF3ED00FFF8ED00FCEDDD00D9CCBA00C8C1CA00AEB2E3008192F000647C
      F6004B6AF7001D4DFF009E691900F6FCFF00FDFDFD00FF00FF00FF00FF00FF00
      FF00FFF8DF00915D48000E41FF005267E800A4A1D400E0C8C400E3C8BA00ECCB
      C000FEF1EE00FFF1ED00DED4D400C5C1C200D0C7C400D7CBBF00EADBC800EBDF
      DA00D6D2EE00A0A8E8009D681800F5FBFF00FDFDFD00FF00FF00FF00FF00FF00
      FF00FFF7E0008A5E4A00697DF000CBB7BC00CE9E6000C28E4600D2BDBA00E3C5
      BC00FEF2EE00FEF2F100BFB2A800B2936800B6A28C00C9C4C900CEC8CA00D1C9
      C500E2D8D300E7D4BE009E6A1900F5FBFF00FDFDFD00FF00FF00FF00FF00FF00
      FF00F9F3E800CD861D00D9BB9A00DBAC6500FDF3E800FFF9F500C6A27400D3BB
      B500FFF4F400E8DDDA00BC915900F8E9D700FCF7EF00D0B68F00B89C7500C6B7
      AB00C6B7AB00C2B4A800996A2300F4FCFF00FCFCFD00FEFEFE00FEFFFF00F3F4
      F400E6CEA900E3B87A00F7E6D300FFF8FA00FBE9E400FEE9E600EDD9BD00C79F
      7600FCFBFF00D5A97100EBC9A100FF00FF00FFF8F800FF00FF00FDFDFF00E9DD
      D100D2BB9800CDB99D009D691B00C6B8A300DFDFDF00F0F2F400F8E6CD00F3DE
      C100F9EDE000FFF8F900FDF3F100FCEFEB00FBECE700FDEAE300FFF4F700ECBE
      9300DF963E00F5BA7100FF00FF00FFFEF600FFFAF400FFF9F400FFF7F400FFFA
      FA00FFFEFF00FFFAF800F0E8DB00E6D9C700B0874900E3DDD500FBECD900FADD
      C200FEF3F600FDF3F100FEF7F400FFF7F700FFF3F300FFF1EE0099C590006997
      4300C8DCCE00EBDFD7009197DE00CCCFF700DADFF400ECEBF400FCF5F300FFFF
      F300FFFFF700FFFCF900FFFAFB00FFFCFB00E6DDD200FBFCFE00FF00FF00FAE1
      BE00F9DFBE00FEFEFF00FF00FF00EEF3ED00AEE3BA00B0EFC3002CDA690008AB
      2C00008800003D8752004559F3003C61FE00496CFB00869DFA00859BF8007E95
      F700ABB4E900E4DAD800FFFDFB00EFE8DF00F3F2EF00FF00FF00FF00FF00FF00
      FF00F9D59D00FFE6C60099C1960044D3750048D17600A8F0C00044E17A003ED6
      720019BB3100006608008084FF00859EFF00A2B4FC00DEE5FE007792FC000031
      FF00000FC10085615000BE8F4000E2E7EE00F5F8FA00FF00FF00FF00FF00FDFF
      FF00F5DBBB00FFB76E00428F34002FDB6B0055DB8200BCF4CF0054E8870039DB
      710038DA6C00087F1C002455D900AEB7FA00AABBFE00B8C6FF007290FF000028
      ED003F40AF00F9E3E500F3C18E00CA984B00E1E5EC00F9FAFB00FDFFFF00F7DF
      C200FEB56000FFFDFA004BAD640054E68500BEF1CF00C1F6D200B7F3CA009EEE
      B90064E892000A91290060ACF000749EF1008489EA007C7DEF00293DE0000020
      B200D0C0CC00FFE9D800FCE0DB00DC9C4800D0B58A00E9EDF400F9EAD500FBBE
      6B00FFF8EF00FF00FF0040B15C00A1F2BF0079EEA40044E07A0057E086007AEA
      A000ADF3BF002F9F3900FF00FF003DCFF90000BAF70016C2FB000080C5005786
      B300FFFAEA00FCE7E100FDE8E700F9D9C800D1851800E6DFD100FFD29500FFF7
      ED00FFFAF700FFF9F300C6DFBC0044A64B0026A3410023B24F0019BD52000594
      2E0000772C007CD6D8005AD9FC000DCFF60000F3FF0000B8D4003E81B100FF00
      FF00FDECDC00F8E3D100F1CFA600E6B57100EAC58D00FDF7EF00FF00FF00FFF9
      F200FFEEDC00FFEAD400FFEBD800FFF0E800EFD9BC00B3B378007C8C31004F8C
      640000BEEB001AEAFF000CD1F4000FE7FB0000CBE500276C9900EACDAA00FFE6
      C200F6DDB800F2D5A900F8ECDA00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFBF700FFF7F000FFF4EA00FFF4
      EE004AC6DC0000C3E00007E6FB0000D6E900005B9B00DFDFE600FFF8E600FCF2
      E400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF005BD9E70000B8D400075D9C00E1E0E700FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0074CEE100B4CEE000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object SpeedButton2: TSpeedButton
    Left = 466
    Top = 71
    Width = 169
    Height = 19
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
    Width = 127
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
  object DetalleJornal: TwwDBGrid
    Left = -6
    Top = 113
    Width = 792
    Height = 465
    ControlInfoInDataset = False
    ControlType.Strings = (
      'Total_Horas;CustomEdit;Horas;T'
      'Total_Salario;CustomEdit;Salarios;T'
      'Deducciones;CustomEdit;Deducciones;T'
      'Cargo;CustomEdit;Laboral;T')
    Selected.Strings = (
      'Nombre_Empleado'#9'30'#9'Nombre'#9'T'#9'Informaci'#243'n del Empleado'
      'Cargo'#9'20'#9'Laboral'#9'F'#9'Informaci'#243'n del Empleado'
      'Total_Horas'#9'15'#9'Horas'#9'F'
      'Total_Salario'#9'20'#9'Salario'#9'F'
      'Deducciones'#9'20'#9'Deducciones'#9'F'
      'Total_Neto'#9'16'#9'Total Neto'#9'F')
    IniAttributes.Enabled = True
    IniAttributes.FileName = 'DatosNomina.grd'
    IniAttributes.SectionName = 'Jornal'
    IniAttributes.Delimiter = ';;'
    TitleColor = 16436860
    OnRowChanged = DetalleJornalRowChanged
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
    RowHeightPercent = 500
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
    OnCalcCellColors = DetalleJornalCalcCellColors
    OnEnter = DetalleJornalEnter
    OnExit = DetalleJornalExit
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
    ParentFont = False
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
    ParentFont = False
    ShowButton = True
    TabOrder = 8
  end
  object Horas: TwwDataInspector
    Left = 328
    Top = 163
    Width = 92
    Height = 65
    DisableThemes = False
    Color = clNone
    Ctl3D = False
    CaptionColor = clSkyBlue
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
        DataField = 'Total_Horas'
        Caption = 'Total'
        Alignment = taRightJustify
        WordWrap = False
      end
      item
        DataField = 'Total_Horas_Trabajadas'
        Caption = 'Regulares'
        Alignment = taRightJustify
        WordWrap = False
      end
      item
        DataField = 'Total_Horas_Extra'
        Caption = 'Extra'
        Alignment = taRightJustify
        WordWrap = False
      end
      item
        DataField = 'Total_Horas_Extraordinarias'
        Caption = '100%'
        Alignment = taRightJustify
        WordWrap = False
      end>
    CaptionWidth = 55
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
  object Salarios: TwwDataInspector
    Left = 421
    Top = 163
    Width = 124
    Height = 81
    DisableThemes = False
    BiDiMode = bdLeftToRight
    Color = clNone
    Ctl3D = False
    CaptionColor = clMoneyGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssNone
    TabOrder = 10
    Items = <
      item
        DataField = 'Total_Salario'
        Caption = 'Salario'
        Alignment = taRightJustify
        WordWrap = False
      end
      item
        DataField = 'Salario_Bruto'
        Caption = 'Bruto'
        Alignment = taRightJustify
        WordWrap = False
      end
      item
        DataField = 'Salario_Extra'
        Caption = 'Extra'
        Alignment = taRightJustify
        WordWrap = False
      end
      item
        DataField = 'Salario_Extraordinarias'
        Caption = '100%'
        Alignment = taRightJustify
        WordWrap = False
      end
      item
        DataField = 'Otros_Pagos'
        Caption = 'Otros'
        Alignment = taRightJustify
        WordWrap = False
      end>
    CaptionWidth = 50
    Options = [ovColumnResize, ovEnterToTab, ovHighlightActiveRow, ovCenterCaptionVert, ovShowCaptionHints, ovShowCellHints]
    PaintOptions.AlternatingRowRegions = [arrDataColumns, arrActiveDataColumn]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -9
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    LineStyleCaption = ovDottedLine
    LineStyleData = ovDottedLine
    CaptionIndent = 3
    Visible = False
  end
  object Deducciones: TwwDataInspector
    Left = 546
    Top = 163
    Width = 119
    Height = 49
    DisableThemes = False
    Color = clNone
    Ctl3D = False
    CaptionColor = 11322871
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssNone
    TabOrder = 11
    Items = <
      item
        DataField = 'Total_Deducciones'
        Caption = 'Total'
        Alignment = taRightJustify
        ReadOnly = True
        WordWrap = False
      end
      item
        DataField = 'Deducciones'
        Caption = 'Deducciones'
        Alignment = taRightJustify
        ReadOnly = True
        WordWrap = False
      end
      item
        DataField = 'Otras_Deducciones'
        Caption = 'Otras'
        Alignment = taRightJustify
        WordWrap = False
      end>
    CaptionWidth = 67
    Options = [ovColumnResize, ovEnterToTab, ovHighlightActiveRow, ovCenterCaptionVert, ovShowCaptionHints, ovShowCellHints]
    PaintOptions.AlternatingRowRegions = [arrDataColumns, arrActiveDataColumn]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -9
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    LineStyleCaption = ovDottedLine
    LineStyleData = ovDottedLine
    CaptionIndent = 3
    Visible = False
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
    TabOrder = 12
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
    CaptionIndent = 3
    Visible = False
  end
  object DBEdit1: TDBEdit
    Left = 466
    Top = 44
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
    TabOrder = 13
  end
  object CheckBox1: TCheckBox
    Left = 328
    Top = 72
    Width = 97
    Height = 17
    Checked = True
    State = cbChecked
    TabOrder = 14
    OnClick = CheckBox1Click
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
            Action = Generar
            ImageIndex = 51
          end>
        ActionBar = Atb_Editar
      end>
    Images = Modulo.SystemImages
    Left = 211
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
      ImageIndex = 2
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
      ImageIndex = 51
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
    object Recalcular: TAction
      Category = 'Acciones Relacionadas'
      Caption = 'Recalcular'
      ShortCut = 49234
      OnExecute = RecalcularExecute
    end
  end
end
