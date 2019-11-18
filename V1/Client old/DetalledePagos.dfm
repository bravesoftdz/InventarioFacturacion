object FDetallePagos: TFDetallePagos
  Left = 278
  Top = 160
  BorderStyle = bsNone
  Caption = 'Detalles De Pago'
  ClientHeight = 162
  ClientWidth = 376
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 376
    Height = 162
    Align = alClient
    BevelInner = bvLowered
    BorderStyle = bsSingle
    ParentColor = True
    TabOrder = 0
    object LMeses: TLabel
      Left = 10
      Top = 117
      Width = 96
      Height = 13
      Caption = 'Mes de Vencimiento'
    end
    object LAnios: TLabel
      Left = 10
      Top = 137
      Width = 95
      Height = 13
      Caption = 'A'#241'o de Venicmiento'
    end
    object LNum_Aprobacion: TLabel
      Left = 10
      Top = 36
      Width = 109
      Height = 13
      Caption = 'N'#250'mero de Aprobaci'#243'n'
      FocusControl = Num_Aprobacion
    end
    object LTiposDocumentos: TLabel
      Left = 10
      Top = 97
      Width = 94
      Height = 13
      Caption = 'Tipo de Documento'
    end
    object LNum_Documento: TLabel
      Left = 10
      Top = 57
      Width = 110
      Height = 13
      Caption = 'N'#250'mero de Documento'
      FocusControl = Num_Documento
    end
    object LBanco: TLabel
      Left = 10
      Top = 77
      Width = 50
      Height = 13
      Caption = 'Del Banco'
    end
    object Num_Aprobacion: TDBEdit
      Left = 144
      Top = 33
      Width = 220
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'Numero_Aprobacion'
      DataSource = Modulo.dDetalle_Pago_Factura
      ParentCtl3D = False
      TabOrder = 0
    end
    object Meses: TwwDBComboBox
      Left = 144
      Top = 114
      Width = 54
      Height = 19
      ShowButton = True
      Style = csDropDownList
      MapList = True
      AllowClearKey = False
      AutoDropDown = True
      ShowMatchText = True
      Ctl3D = False
      DataField = 'Mes_Vencimiento'
      DataSource = Modulo.dDetalle_Pago_Factura
      DropDownCount = 8
      ItemHeight = 0
      Items.Strings = (
        'ENE'#9'1'
        'FEB'#9'2'
        'MAR'#9'3'
        'ABR'#9'4'
        'MAY'#9'5'
        'JUN'#9'6'
        'JUL'#9'7'
        'AGO'#9'8'
        'SEP'#9'9'
        'OCT'#9'10'
        'NOV'#9'11'
        'DIC'#9'12')
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      Sorted = False
      TabOrder = 4
      UnboundDataType = wwDefault
    end
    object Anios: TwwDBSpinEdit
      Left = 144
      Top = 134
      Width = 89
      Height = 19
      Increment = 1.000000000000000000
      Ctl3D = False
      DataField = 'Ano_Vencimiento'
      DataSource = Modulo.dDetalle_Pago_Factura
      ParentCtl3D = False
      TabOrder = 5
      UnboundDataType = wwDefault
    end
    object BitBtn1: TBitBtn
      Left = 290
      Top = 102
      Width = 75
      Height = 25
      Caption = '&Aceptar'
      ModalResult = 1
      TabOrder = 6
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
    object Num_Documento: TDBEdit
      Left = 144
      Top = 54
      Width = 220
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'Numero_Documento'
      DataSource = Modulo.dDetalle_Pago_Factura
      ParentCtl3D = False
      TabOrder = 1
    end
    object Banco: TwwDBLookupCombo
      Left = 144
      Top = 74
      Width = 221
      Height = 19
      Ctl3D = False
      DisableThemes = False
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'Nombre'#9'40'#9'Nombre'#9'F')
      DataField = 'Numero_Banco'
      DataSource = Modulo.dDetalle_Pago_Factura
      LookupTable = Modulo.tBancos
      LookupField = 'Numero'
      Style = csDropDownList
      Navigator = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
      ShowMatchText = True
    end
    object Documento: TDBEdit
      Left = 5
      Top = 4
      Width = 364
      Height = 27
      TabStop = False
      AutoSize = False
      Ctl3D = False
      DataField = 'Nombre_Forma_Pago'
      DataSource = Modulo.dDetalle_Pago_Factura
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
    end
    object BitBtn2: TBitBtn
      Left = 290
      Top = 129
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 8
      Kind = bkCancel
    end
    object TiposDocumentos: TwwDBComboBox
      Left = 144
      Top = 94
      Width = 113
      Height = 19
      ShowButton = True
      Style = csDropDown
      MapList = False
      AllowClearKey = False
      AutoDropDown = True
      ShowMatchText = True
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'Tipo_Documento'
      DataSource = Modulo.dDetalle_Pago_Factura
      DropDownCount = 15
      HistoryList.Section = 'Nombres'
      HistoryList.FileName = 'DetallePago.hlst'
      HistoryList.Enabled = True
      HistoryList.MRUEnabled = True
      ItemHeight = 0
      Items.Strings = (
        'Visa'
        'MasterCard'
        'Federal Express'
        'American Express'
        'Cirus'
        'ATH')
      ParentCtl3D = False
      Sorted = False
      TabOrder = 3
      UnboundDataType = wwDefault
      OnEnter = TiposDocumentosEnter
      OnExit = TiposDocumentosExit
    end
  end
end
