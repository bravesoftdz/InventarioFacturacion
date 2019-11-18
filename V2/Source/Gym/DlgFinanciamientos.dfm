object FormFinanciamientos: TFormFinanciamientos
  Left = 396
  Top = 238
  BorderStyle = bsDialog
  Caption = 'Datos de Financiamiento'
  ClientHeight = 458
  ClientWidth = 226
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
    Left = 8
    Top = 154
    Width = 43
    Height = 13
    Caption = '% Interes'
    FocusControl = Recargo
  end
  object Label2: TLabel
    Left = 8
    Top = 174
    Width = 85
    Height = 13
    Caption = 'Monto Financiado'
    FocusControl = Monto
  end
  object Label5: TLabel
    Left = 8
    Top = 190
    Width = 49
    Height = 13
    Caption = 'Modalidad'
  end
  object Label9: TLabel
    Left = 8
    Top = 239
    Width = 36
    Height = 13
    Caption = 'Periodo'
  end
  object Label10: TLabel
    Left = 8
    Top = 259
    Width = 78
    Height = 13
    Caption = 'Cantidad Cuotas'
    FocusControl = Cuotas
  end
  object Label11: TLabel
    Left = 8
    Top = 324
    Width = 84
    Height = 13
    Caption = '% Gasto de Cierre'
  end
  object Label12: TLabel
    Left = 8
    Top = 344
    Width = 91
    Height = 13
    Caption = 'Monto Gasto Cierre'
    FocusControl = Monto_Gasto_Cierre
  end
  object Label35: TLabel
    Left = 8
    Top = 372
    Width = 70
    Height = 13
    Caption = 'Total Estimado'
    FocusControl = Total_Estimado
  end
  object Label36: TLabel
    Left = 8
    Top = 392
    Width = 58
    Height = 13
    Caption = 'Vencimiento'
    FocusControl = Vence
  end
  object Label3: TLabel
    Left = 8
    Top = 278
    Width = 73
    Height = 13
    Caption = 'Gasto de Cierre'
  end
  object Label4: TLabel
    Left = 8
    Top = 131
    Width = 52
    Height = 13
    Caption = 'Restante'
    FocusControl = Restante
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 109
    Width = 35
    Height = 13
    Caption = 'Inicial'
    FocusControl = Inicial
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Recargo: TDBEdit
    Left = 110
    Top = 151
    Width = 108
    Height = 19
    Ctl3D = False
    DataField = 'Interes'
    DataSource = Modulo.dFacturas
    ParentCtl3D = False
    TabOrder = 3
  end
  object Monto: TDBEdit
    Left = 110
    Top = 171
    Width = 108
    Height = 19
    TabStop = False
    Color = 14017279
    Ctl3D = False
    DataField = 'Monto_Financiado'
    DataSource = Modulo.dFacturas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object Modalidad_Prestamo: TDBRadioGroup
    Left = 110
    Top = 190
    Width = 108
    Height = 44
    DataField = 'Modalidad'
    DataSource = Modulo.dFacturas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Items.Strings = (
      'Cuotas Fijas'
      'Amortizado (fijo)')
    ParentBackground = True
    ParentFont = False
    TabOrder = 5
    TabStop = True
    Values.Strings = (
      'Cuotas Fijas'
      'Amortizado Fijo')
  end
  object Cuotas: TDBEdit
    Left = 110
    Top = 256
    Width = 108
    Height = 19
    Ctl3D = False
    DataField = 'Plazo_Pago'
    DataSource = Modulo.dFacturas
    ParentCtl3D = False
    TabOrder = 7
  end
  object Monto_Gasto_Cierre: TDBEdit
    Left = 110
    Top = 341
    Width = 108
    Height = 19
    TabStop = False
    Ctl3D = False
    DataField = 'Valor_Gasto_Cierre'
    DataSource = Modulo.dFacturas
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
  end
  object Distribucion_Cuotas: TGroupBox
    Left = 8
    Top = 9
    Width = 210
    Height = 91
    Caption = ' Distribuci'#243'n de Cuotas '
    TabOrder = 0
    object Label14: TLabel
      Left = 6
      Top = 23
      Width = 59
      Height = 13
      Caption = 'Valor Interes'
      FocusControl = Valor_Interes
    end
    object Label15: TLabel
      Left = 6
      Top = 43
      Width = 59
      Height = 13
      Caption = 'Valor Capital'
      FocusControl = Valor_Capital
    end
    object Label17: TLabel
      Left = 6
      Top = 63
      Width = 60
      Height = 13
      Caption = 'Valor Cuotas'
      FocusControl = Valor_Cuotas
    end
    object Valor_Interes: TDBEdit
      Left = 76
      Top = 20
      Width = 128
      Height = 19
      TabStop = False
      Color = 595184
      Ctl3D = False
      DataField = 'Valor_Interes'
      DataSource = Modulo.dFacturas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object Valor_Capital: TDBEdit
      Left = 76
      Top = 40
      Width = 128
      Height = 19
      TabStop = False
      Color = 12120485
      Ctl3D = False
      DataField = 'Valor_Capital'
      DataSource = Modulo.dFacturas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object Valor_Cuotas: TDBEdit
      Left = 76
      Top = 60
      Width = 128
      Height = 19
      TabStop = False
      Color = 13497326
      Ctl3D = False
      DataField = 'Valor_Cuotas'
      DataSource = Modulo.dFacturas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
  end
  object Total_Estimado: TDBEdit
    Left = 110
    Top = 369
    Width = 108
    Height = 19
    TabStop = False
    Color = 16771030
    Ctl3D = False
    DataField = 'Total_Estimado'
    DataSource = Modulo.dFacturas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 11
  end
  object Vence: TDBEdit
    Left = 110
    Top = 389
    Width = 108
    Height = 19
    TabStop = False
    Color = clInfoBk
    Ctl3D = False
    DataField = 'Vence_Financiamiento'
    DataSource = Modulo.dFacturas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 12
  end
  object Periodo: TwwDBComboBox
    Left = 110
    Top = 236
    Width = 108
    Height = 19
    ShowButton = True
    Style = csDropDownList
    MapList = False
    AllowClearKey = False
    Ctl3D = False
    DataField = 'Periodo_Pagos'
    DataSource = Modulo.dFacturas
    DropDownCount = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 0
    Items.Strings = (
      'Diario'
      'Semanal'
      'Quincenal'
      'Mensual'
      'Bi-Mensual'
      'Trimestral'
      'Cuatrimestral'
      'Semestral'
      'Anual')
    ParentCtl3D = False
    ParentFont = False
    Sorted = False
    TabOrder = 6
    UnboundDataType = wwDefault
  end
  object Tipo_Gasto_Cierre: TDBRadioGroup
    Left = 110
    Top = 275
    Width = 108
    Height = 44
    DataField = 'Tipo_Gasto_Cierre'
    DataSource = Modulo.dFacturas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Items.Strings = (
      'Incluido'
      'Excluido')
    ParentBackground = True
    ParentFont = False
    TabOrder = 8
    TabStop = True
    Values.Strings = (
      'Incluido'
      'Excluido')
  end
  object Gasto_Cierre: TDBEdit
    Left = 110
    Top = 321
    Width = 108
    Height = 19
    Ctl3D = False
    DataField = 'Gasto_Cierre'
    DataSource = Modulo.dFacturas
    ParentCtl3D = False
    TabOrder = 9
  end
  object Restante: TDBEdit
    Left = 110
    Top = 128
    Width = 108
    Height = 19
    TabStop = False
    Color = clMoneyGreen
    Ctl3D = False
    DataField = 'Total_Restante'
    DataSource = Modulo.dFacturas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object Inicial: TDBEdit
    Left = 110
    Top = 106
    Width = 108
    Height = 19
    Color = clWhite
    Ctl3D = False
    DataField = 'Inicial'
    DataSource = Modulo.dFacturas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
  end
  object bt_Aceptar: TsuiButton
    Left = 19
    Top = 422
    Width = 91
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Aplicar'
    AutoSize = False
    ParentFont = False
    UIStyle = DeepBlue
    Action = Aplicar
    TabOrder = 13
    Transparent = True
    ModalResult = 0
    FocusedRectMargin = 2
    Glyph.Data = {
      36090000424D3609000000000000360000002800000018000000180000000100
      2000000000000009000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFC
      FF00E2E2E200B6CCB600A4C5A5009CBB9D0095AB9600AAB5AA00CACBCA00E6E2
      E600F5F5F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007BB7
      7D004FAF520028A82D001EB0230022BA29001FAE26002B962E0039783B00819C
      8100DBD4DB00EEEDEE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ABC9AB002A9A2C001CA3
      210026B02C002DB433002FB5350031B9370036CA3D003BDE42002DC43400126E
      160055855600C8C8C800EFEEEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006BB26D0016A41C002DB9330028B2
      2E0021AF280022AF28002DB233002FB335002FB0340031B938003DDB45003ADC
      42000C6F0F004F815000D1CFD100F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0067B269001BB2220030B7360029B130006DCA
      7200B2E3B400A9E0AC0031B437002DB3330030B436002FB1350031B938003FE0
      470030C037000B670D008FA68F00EBE7EB00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007DBB7F0025BC2C0030B737002AB1300036B53C00FEFE
      FE00FFFFFF00FFFFFF007FD0820023AF2A002FB335002FB335002FB1340035C4
      3C0040E448001B8B2000286E2A00E1D8E100F9F8F900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B4D7B5002BB830002FB935002EB2340024AF2A00C5EAC600FFFF
      FF00FFFFFF00FFFFFF00D7F0D70036B63C002CB2330030B436002FB335002FB2
      34003EDF470030BD36000E651000A5B4A600F5F3F500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF003FAE43002DC133002FB3350023AF2A0072CC7600FFFFFF00F8FC
      F800D6F0D700FFFFFF00FFFFFF006FCA730026B02D002FB335002FB335002FB2
      350039CF400039D94200116B1300789C7900F1ECF100FFFFFF00FFFFFF00FFFF
      FF00B8D9B8001CB6230032BC39002AB1300041BA4700DEF3DF00FFFFFF00ABE1
      AE0039B83F00FBFDFA00FFFFFF00C2E9C4002CB333002EB3340030B336002FB2
      350035C23B0041E94A00106C1300598B5900EEE8EE00FFFFFF00FFFFFF00FFFF
      FF0038A63A0034CE3C002DB1330026B02C00AFE1B100FFFFFF00F8FCF80036B5
      3B0018AB1E00A9DFAA00FFFFFF00FFFFFF0053C0580029B12F0030B436002FB2
      350034BF3A0043EB4C00127115004B844C00F0E9F000FFFFFF00FFFFFF00FFFF
      FF002DB6330034C33A0028AF2E0063C66700FFFFFF00FFFFFF0095D898001FAE
      26002AB2310045BB4A00FFFFFF00FFFFFF00C0E7C2001BAC21002FB335002FB2
      350034BF3A0041E74900106E130052885400F5EFF500FFFFFF00FFFFFF00A3CD
      A30033CA3B002FB7360025AF2B0088D38C00FFFFFF00EFF9F00037B63C002CB2
      32002EB3340029B12F00BDE7BF00FFFFFF00FFFFFF0044BC49002AB130002FB2
      350034C23C003DE044000F6A12006A966B00F9F4F900FFFFFF00FFFFFF007FBE
      800032D13A002FB135002EB3340026B02D00CFEED10082D1850027B12C002FB3
      35002FB4350028B02E005DC46200FDFEFD00FFFFFF00ADE2B00025AF2B002EB2
      340038CB3F0033CA3A000F6812008DA98D00FFFCFF00FFFFFF00FFFFFF006CB9
      6E0030D137002EB034002FB335002CB333003FB944003EB944002DB2330030B4
      360030B436002DB3330031B53700C8EBC900FFFFFF00E8F6E8004ABD51002AB1
      30003DD9450027A82D000E621000CBD1CB00FFFEFF00FFFFFF00FFFFFF0067B4
      690030D237002FB034002FB335002FB335002DB233002DB3330030B4360030B4
      360030B436002FB3350025B02B0079CE7D00FFFFFF00FFFFFF0091D694002BB3
      31003CDD440019851C002A702C00FDF4FC00FFFFFF00FFFFFF00FFFFFF0079BB
      7A0031D0390030B636002FB3350030B4360030B4360030B4360030B4360030B4
      360030B4360030B436002EB3340020AE2700E5F5E600FFFFFF0087D08B0033CC
      39002EBD3500035F05009FB69F00FFFFFF00FFFFFF00FFFFFF00FFFFFF009DCC
      9E0031C8380033C03A002FB2350030B4360030B4360030B4360030B4360030B4
      360030B4360030B4360030B4360024AF2A0081D18600F3FAF40044BE4A0038DB
      4000128015002E712F00E9EAE900FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFED
      DE0025AC2A0039D241002EB134002FB3350030B4360030B4360030B4360030B4
      360030B4360030B4360030B436002DB3330035B63C008AD38D0034D33B0020A8
      26000E5E1000A4BDA500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0054AC55002BC8330033BF3A002FB2350030B3360030B4360030B4360030B4
      360030B4360030B4360030B436002FB335002DB133002FC8350028B52D000660
      080079A47A00FFFEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DCEDDD001AA21E0036D13E0030B636002FB235002FB335002FB3350030B4
      360030B4360030B335002FB3350030B3360037C93D0027B32C0002680400588F
      5B00FCFAFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009ACD9B0017A41C0036D33D0033BA390030B336002FB3350030B3
      350030B4360030B4360032B7380035C83D00199E1D000766090060946100F6F6
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00ABD2AC0030A3350021BD27002DC2340031BC370031BA
      38002FB6350028B22E00199F1D0007790A0029732A00A4C0A600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DBEBDC0083BF83003CA4400015981A00078D
      0B0002810600157C1700488D49008CB38D00DDE7DD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    ResHandle = 0
  end
  object bt_Cancelar: TsuiButton
    Left = 116
    Top = 422
    Width = 91
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Cancelar'
    AutoSize = False
    ParentFont = False
    UIStyle = DeepBlue
    Action = Salir
    TabOrder = 14
    Transparent = True
    ModalResult = 0
    FocusedRectMargin = 2
    Glyph.Data = {
      36090000424D3609000000000000360000002800000018000000180000000100
      2000000000000009000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEF800E8E4
      DF009BA1C7006677C0005C6CBD00505CB5005550A300736EA800B2B0BC00DCDC
      D500F0F0EE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFD00DAD5E0007276B7001C36
      B4001B48C7001855D6002C6DE100438AF1005B9DF6004D70D0002731A6005A55
      A000BCBCC100E3E3DF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00ABA7CE00384EBD000954E0000368
      F800006BFE00006AFD000068FB000062FB000466F3004993F700669DED00384C
      B700443D9A00B3B3BE00EAEAE700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF009C98CB002050CF000B6AF600016BFC000369
      F9000369F9000368F9000065F800207AF90088B8FC000062F800418CF50068A2
      F1003543B0004B479C00CECECB00F6F6F500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF009E9ED3001751D7000A74FE000068FA000368F9000469
      F9000469F9000268F8000063F800A6CAFC00FFFFFF00A3C8FC00005EF9005498
      F5006193E60021249E008381AD00E7E7E100FDFDFD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CDC9E600335AD1000E72FA000066F9000368F9000469F9000469
      F9000368F9000063F8003887FA00F6F9FF00FFFFFF003888FA000061F9001774
      F8006FAAF5004056BC0038359A00D7D7D000F9F9F800FFFFFF00FFFFFF00FFFF
      FF00FFFEFD00576CCE00176FF300076BFA000060F8000065F8000368F9000469
      F9000267F8000064F800A7CAFC00FFFFFF00B0D0FD00005DF8000267F9000368
      F800549AF7005780DA002A279800A8A7BD00F5F5F100FFFFFF00FFFFFF00FFFF
      FF00BFC0E7000C4DDD00086FFB00EBF3FE00A9CBFC001C76F9000062F8000368
      F9000062F8003889FA00FFFFFF00FFFFFF000E6FF8000065F8000368F9000166
      F9003686F6006AA2F10028279A007D7BB000EFEFE800FFFFFF00FFFFFF00FFFF
      FF004653CA001B7BF900569AFB00FFFFFF00FFFFFF00DEECFE004993FA00005B
      F800005CF800D0E2FD00FFFFFF0089B8FB000063F8000268F9000369F9000066
      F900257CF60071AFFA0028299C006664AA00EDEDE500FFFFFF00FFFFFF00F4EE
      F7001F53DB001D7BF9000469F90088B8FB00FFFFFF00FFFFFF00FEFDFF007FB2
      FA00589BFB00FFFFFF00E6F0FE00287EF9000064F8000368F9000469F9000066
      F900217AF7006EAFFB002A2D9F00605DA800EFEFE600FFFFFF00FFFFFF00A39E
      DF002F7AF0000A6DF9000066F900005DF8003788FA00D1E2FE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF006EA8FB00005BF8000368F9000469F9000469F9000066
      F900227BF7006BA8F600272599006765AC00F4F4EC00FFFFFF00FFFFFF007D7D
      D8003882F1000068F9000368F9000368F9000061F800106FF90094C0FC00FFFF
      FE00FFFFFF00FFFFFF0085B6FC000065F8000064F8000368F8000368F9000066
      F9002A81F7006596E900272699007C7AB200F8F9F200FFFFFF00FFFFFF005B68
      D9003B83F1000066FA000368F9000469F9000368F9000063F8000168F900F5F8
      FE00FFFFFF00FFFFFF00FFFFFF00C9DFFD001271F900005FF8000066F8000067
      F9003E8FF9005477D500262497009594BC00FFFFFA00FFFFFF00FFFFFF005662
      D8003C84F0000066FA000368F9000469F9000368F900005DF80085B6FB00FFFF
      FF00C5DCFD00ADCFFC00FFFFFF00FFFFFF00FFFFFF0061A0FA00076AF8000168
      F8005EA1F7003D50B9002B279600D4D4DA00FFFFFE00FFFFFF00FFFFFF00696E
      D8003A82F100026AF9000368F9000469F9000065F8001372F900FBFCFF00FFFF
      FE004E95FA00005DF8006BA6FB00F2F6FF00FFFFFF00FFFFFF008BB9FC001977
      F9005F8FE600282CA3004F4CA100FEFEF400FFFFFF00FFFFFF00FFFFFF008E8B
      DE00307CF1001373F8000167F9000268F800005FF80093BEFC00FFFFFF00C0D9
      FD000569F8000065F8000063F8001E78FA00CFE2FD00FFFFFF0063A2FC004A95
      F7004361CA0016108F00AFAFC900FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDD9
      F3001A50E0002E86F9000066F9000063F8003A89FA00F7FAFE00FFFFFF003386
      F9000062F8000469F9000368F8000064F800005FF8004992FC003C8DF9004E80
      E400191396005856A500F7F8F300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF003544D0003186F6000A6DF9000065F900A6CAFD00FFFFFF00B2D1FD00005C
      F8000368F9000469F9000469F9000368F9000066F9001073FA004C8BF100232B
      AF00332E9700C2C2D800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C0BFEE000A3CD7002884FA001674F900FFFFFF00FFFFFE001F79F9000064
      F8000469F9000469F9000368F9000067F9000B72FB004B8CF2002237BF001E18
      93009694C300FFFFFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008088E1002257E000217EF9003587FB0064A3FB000065F8000268
      F9000469F9000268F900056CFA001779FB003E76E9001321B600201A94009594
      C400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F9F7FC006F77DB001241D800217CF7001478FA00066DFA000069
      FA00016BFB000670FE00166AF3001E4DDE000F13AA00302C9B009F9ECB00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00ADB0E9001122C3000833D5001860EB001461
      ED001053E700082ED4000B16B6000F0E9900635FAF00E4E3EE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C2E600706CC500524D
      BC00524CB4006E69B600A7A3CC00F4F3F600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    ResHandle = 0
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
            ImageIndex = 10
            ShortCut = 27
          end>
      end
      item
        Items = <
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
                Caption = '-'
              end>
            Caption = '&Registro'
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
            Caption = '&Operaciones'
          end
          item
            Caption = '-'
          end
          item
            Items = <
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
                Caption = 'Pr&oductos'
                UsageCount = 1
              end
              item
                Caption = '-'
              end
              item
                Caption = '-'
              end>
            Caption = 'R&eportes'
          end
          item
            Action = Salir
            ImageIndex = 10
            ShortCut = 27
          end>
      end
      item
        Items = <
          item
            Caption = '&Operaciones'
          end>
      end
      item
        Items = <
          item
            Caption = '&Registro'
          end
          item
            Caption = '&Operaciones'
          end
          item
            Items = <
              item
                Caption = 'P&roductos'
                UsageCount = 1
              end>
            Caption = 'R&eportes'
          end
          item
            Caption = '-'
          end
          item
            Items = <
              item
                Caption = '-'
              end>
            Caption = '&Herramientas'
          end
          item
            Caption = '-'
          end
          item
            Action = Salir
            ImageIndex = 10
            ShortCut = 27
          end>
      end
      item
        Items = <
          item
            Action = Aplicar
            ImageIndex = 16
          end
          item
            Action = Salir
            Caption = '&Cancelar'
            ImageIndex = 26
            ShortCut = 27
          end>
      end
      item
        Items = <
          item
            Action = Aplicar
            Caption = '&Aplicar'
            ImageIndex = 16
          end
          item
            Caption = '-'
          end
          item
            Action = Salir
            Caption = '&Cancelar'
            ImageIndex = 26
            ShortCut = 27
          end>
      end>
    Images = Modulo.SystemImages
    Left = 16
    Top = 16
    StyleName = 'XP Style'
    object Aplicar: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Aplicar'
      ImageIndex = 16
      OnExecute = AplicarExecute
    end
    object Salir: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Cancelar'
      ImageIndex = 26
      ShortCut = 27
      OnExecute = SalirExecute
    end
  end
  object ColorConfig: TXPColorMap
    HighlightColor = 14410210
    BtnSelectedColor = clBtnFace
    UnusedColor = 14410210
    Left = 13
    Top = 56
  end
end
