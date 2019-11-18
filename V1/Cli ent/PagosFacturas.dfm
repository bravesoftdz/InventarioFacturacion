object FPago_Factura: TFPago_Factura
  Left = 149
  Top = 101
  BorderStyle = bsToolWindow
  Caption = 'Detalle de Pago'
  ClientHeight = 392
  ClientWidth = 432
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label85: TLabel
    Left = 2
    Top = 15
    Width = 41
    Height = 20
    Caption = 'Total'
    FocusControl = Total_Neto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label84: TLabel
    Left = 2
    Top = 303
    Width = 64
    Height = 13
    Caption = 'Total Pagado'
    FocusControl = Total_Pagado
  end
  object Label86: TLabel
    Left = 2
    Top = 323
    Width = 99
    Height = 13
    Caption = 'Pendiente Cobrar'
    FocusControl = Pendiente_Cobrar
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 2
    Top = 57
    Width = 70
    Height = 20
    Caption = 'Devolver'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 2
    Top = 343
    Width = 24
    Height = 13
    Caption = 'Tasa'
    FocusControl = Tasa
  end
  object Label2: TLabel
    Left = 2
    Top = 363
    Width = 120
    Height = 13
    Caption = 'Monto Moneda Local'
    FocusControl = Monto_Moneda_Local
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 267
    Top = 355
    Width = 127
    Height = 13
    Caption = 'Antes de procesar el pago '
    FocusControl = Tasa
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 267
    Top = 367
    Width = 127
    Height = 13
    Caption = 'seleccione la forma en que'
    FocusControl = Tasa
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 267
    Top = 379
    Width = 161
    Height = 13
    Caption = 'realizar'#225' la devoluci'#243'n de efectivo'
    FocusControl = Tasa
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Detalles: TwwDBGrid
    Left = 2
    Top = 89
    Width = 424
    Height = 206
    ControlInfoInDataset = False
    Selected.Strings = (
      'Nombre_Forma_Pago'#9'25'#9'Formas de Pago'#9'T'
      'Valor_Recibido'#9'13'#9'Recibido'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = 13428432
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = Modulo.dDetalle_Pago_Factura
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
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
    OnCalcCellColors = DetallesCalcCellColors
    OnDblClick = DetallesDblClick
    OnEnter = DetallesEnter
    OnExit = DetallesExit
    PadColumnStyle = pcsPlain
    PaintOptions.AlternatingRowColor = 9948159
  end
  object Total_Neto: TDBEdit
    Left = 81
    Top = 6
    Width = 169
    Height = 39
    TabStop = False
    Ctl3D = False
    DataField = 'TotalNeto'
    DataSource = Modulo.dFacturas
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object Total_Pagado: TDBEdit
    Left = 127
    Top = 300
    Width = 117
    Height = 19
    TabStop = False
    Ctl3D = False
    DataField = 'Pagado'
    DataSource = Modulo.dFacturas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object Pendiente_Cobrar: TDBEdit
    Left = 127
    Top = 320
    Width = 117
    Height = 19
    TabStop = False
    Color = 10872826
    Ctl3D = False
    DataField = 'Pendiente'
    DataSource = Modulo.dFacturas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object Total_Metodo_Pago: TDBEdit
    Left = 257
    Top = 6
    Width = 169
    Height = 39
    TabStop = False
    Ctl3D = False
    DataField = 'Total_Forma_Pago'
    DataSource = Modulo.dDetalle_Pago_Factura
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object Valor_Devolver: TDBEdit
    Left = 81
    Top = 48
    Width = 169
    Height = 39
    TabStop = False
    Ctl3D = False
    DataField = 'Total_Efectivo_Devuelto'
    DataSource = Modulo.dFacturas
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object Valor_Devolver_Metodo_Pago: TDBEdit
    Left = 257
    Top = 48
    Width = 169
    Height = 39
    TabStop = False
    Ctl3D = False
    DataField = 'Devolver_Forma_Pago'
    DataSource = Modulo.dDetalle_Pago_Factura
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
  end
  object Tasa: TDBEdit
    Left = 127
    Top = 340
    Width = 117
    Height = 19
    TabStop = False
    Ctl3D = False
    DataField = 'Tasa'
    DataSource = Modulo.dDetalle_Pago_Factura
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
  end
  object Monto_Moneda_Local: TDBEdit
    Left = 127
    Top = 360
    Width = 117
    Height = 19
    TabStop = False
    Color = 10872826
    Ctl3D = False
    DataField = 'Valor_Recibido_Local'
    DataSource = Modulo.dDetalle_Pago_Factura
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
  end
  object atv_Acept_Cancel: TActionToolBar
    Left = 257
    Top = 298
    Width = 169
    Height = 58
    ActionManager = Opciones
    Align = alNone
    Caption = 'ActionToolBar1'
    ColorMap = Modulo.ColorConfig
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    EdgeOuter = esLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBackground = True
    ParentColor = True
    ParentFont = False
    ParentShowHint = False
    PersistentHotKeys = True
    ShowHint = True
    Spacing = 0
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
          end>
      end
      item
      end
      item
        Items.CaptionOptions = coAll
        Items = <
          item
            Caption = '-'
          end>
      end
      item
      end
      item
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
            Caption = '&Opciones'
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = Procesar_Pago
            Caption = '&Procesar Pago'
            ImageIndex = 78
            ShortCut = 118
          end
          item
            Action = Cancelar
            Caption = '&Cancelar'
            ImageIndex = 26
            ShortCut = 27
          end>
        ActionBar = atv_Acept_Cancel
      end>
    Images = Modulo.SystemImages
    Left = 71
    Top = 168
    StyleName = 'XP Style'
    object Procesar_Pago: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Procesar Pago'
      ImageIndex = 78
      ShortCut = 118
      OnExecute = Procesar_PagoExecute
    end
    object Cancelar: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Cancelar'
      ImageIndex = 26
      ShortCut = 27
      OnExecute = CancelarExecute
    end
  end
end
