object FPago_Factura: TFPago_Factura
  Left = 149
  Top = 101
  BorderStyle = bsToolWindow
  Caption = 'Detalle de Pago Facturas'
  ClientHeight = 362
  ClientWidth = 703
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
  DesignSize = (
    703
    362)
  PixelsPerInch = 96
  TextHeight = 13
  object Label85: TLabel
    Left = 8
    Top = 8
    Width = 143
    Height = 29
    Caption = 'Total a Pagar'
    FocusControl = Total_Neto
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label84: TLabel
    Left = 2
    Top = 320
    Width = 64
    Height = 13
    Caption = 'Total Pagado'
    FocusControl = Total_Pagado
  end
  object Label86: TLabel
    Left = 2
    Top = 281
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
  object Label1: TLabel
    Left = 2
    Top = 300
    Width = 24
    Height = 13
    Caption = 'Tasa'
    FocusControl = Tasa
  end
  object Label2: TLabel
    Left = 2
    Top = 261
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
    Left = 84
    Top = 343
    Width = 536
    Height = 16
    Caption = 
      'Antes de procesar el pago, seleccione la forma en que realizar'#225' ' +
      'la devoluci'#243'n de efectivo '
    FocusControl = Tasa
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label_Inicial: TLabel
    Left = 373
    Top = 8
    Width = 135
    Height = 29
    Caption = 'Monto Inicial'
    FocusControl = Inicial
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Detalles: TwwDBGrid
    Left = 4
    Top = 49
    Width = 695
    Height = 206
    ControlInfoInDataset = False
    Selected.Strings = (
      'Nombre_Forma_Pago'#9'20'#9'Formas de Pago'#9'T'
      'Total_Forma_Pago'#9'13'#9'Total'#9'T'
      'Valor_Recibido'#9'13'#9'Recibido'#9'F'
      'Devolver_Forma_Pago'#9'12'#9'Devolver'#9'T')
    IniAttributes.Delimiter = ';;'
    TitleColor = 13428432
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = Modulo.dDetalle_Pago_Factura
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
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
    Left = 155
    Top = 5
    Width = 208
    Height = 35
    TabStop = False
    Ctl3D = False
    DataField = 'TotalNeto'
    DataSource = Modulo.dFacturas
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -24
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
    Top = 318
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
    Top = 278
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
  object Tasa: TDBEdit
    Left = 127
    Top = 298
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
    TabOrder = 4
  end
  object Monto_Moneda_Local: TDBEdit
    Left = 127
    Top = 258
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
    TabOrder = 5
  end
  object gbt_Aceptar: TAdvGlowButton
    Left = 441
    Top = 257
    Width = 126
    Height = 30
    Action = Procesar_Pago
    Anchors = [akRight, akBottom]
    ImageIndex = 16
    Images = Modulo.SystemImages
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    Rounded = False
    TabOrder = 6
    TabStop = True
    Appearance.ColorChecked = 16111818
    Appearance.ColorCheckedTo = 16367008
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 16111818
    Appearance.ColorDownTo = 16367008
    Appearance.ColorHot = 16117985
    Appearance.ColorHotTo = 16372402
    Appearance.ColorMirrorHot = 16107693
    Appearance.ColorMirrorHotTo = 16775412
    Appearance.ColorMirrorDown = 16102556
    Appearance.ColorMirrorDownTo = 16768988
    Appearance.ColorMirrorChecked = 16102556
    Appearance.ColorMirrorCheckedTo = 16768988
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
  end
  object AdvGlowButton1: TAdvGlowButton
    Left = 573
    Top = 257
    Width = 126
    Height = 30
    Action = Cancelar
    Anchors = [akRight, akBottom]
    ImageIndex = 26
    Images = Modulo.SystemImages
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    Rounded = False
    TabOrder = 7
    TabStop = True
    Appearance.ColorChecked = 16111818
    Appearance.ColorCheckedTo = 16367008
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 16111818
    Appearance.ColorDownTo = 16367008
    Appearance.ColorHot = 16117985
    Appearance.ColorHotTo = 16372402
    Appearance.ColorMirrorHot = 16107693
    Appearance.ColorMirrorHotTo = 16775412
    Appearance.ColorMirrorDown = 16102556
    Appearance.ColorMirrorDownTo = 16768988
    Appearance.ColorMirrorChecked = 16102556
    Appearance.ColorMirrorCheckedTo = 16768988
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
  end
  object AdvGlowButton2: TAdvGlowButton
    Left = 257
    Top = 257
    Width = 168
    Height = 30
    Action = Aplicar_Nota_Credito
    Anchors = [akRight, akBottom]
    ImageIndex = 3
    Images = Modulo.SystemImages
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    Rounded = False
    TabOrder = 8
    TabStop = True
    Appearance.ColorChecked = 16111818
    Appearance.ColorCheckedTo = 16367008
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 16111818
    Appearance.ColorDownTo = 16367008
    Appearance.ColorHot = 16117985
    Appearance.ColorHotTo = 16372402
    Appearance.ColorMirrorHot = 16107693
    Appearance.ColorMirrorHotTo = 16775412
    Appearance.ColorMirrorDown = 16102556
    Appearance.ColorMirrorDownTo = 16768988
    Appearance.ColorMirrorChecked = 16102556
    Appearance.ColorMirrorCheckedTo = 16768988
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
  end
  object Inicial: TDBEdit
    Left = 514
    Top = 5
    Width = 185
    Height = 35
    Ctl3D = False
    DataField = 'Inicial'
    DataSource = Modulo.dFacturas
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 9
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
            ImageIndex = 15
            ShortCut = 118
          end
          item
            Action = Cancelar
            Caption = '&Cancelar'
            ImageIndex = 26
            ShortCut = 27
          end>
      end>
    Images = Modulo.SystemImages
    Left = 71
    Top = 128
    StyleName = 'XP Style'
    object Procesar_Pago: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Procesar Pago'
      ImageIndex = 16
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
    object Aplicar_Nota_Credito: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Aplicar Nota de Cr'#233'dito'
      ImageIndex = 3
      OnExecute = Aplicar_Nota_CreditoExecute
    end
  end
end
