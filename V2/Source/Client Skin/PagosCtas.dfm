object frmPago_Cuentas: TfrmPago_Cuentas
  Left = 149
  Top = 101
  BorderStyle = bsToolWindow
  Caption = 'Detalle de Pago Cuentas'
  ClientHeight = 308
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
    308)
  PixelsPerInch = 96
  TextHeight = 13
  object Label85: TLabel
    Left = 136
    Top = 8
    Width = 158
    Height = 33
    Caption = 'Total a Pagar'
    FocusControl = Total_Neto
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 2
    Top = 284
    Width = 24
    Height = 13
    Caption = 'Tasa'
    FocusControl = Tasa
  end
  object Label2: TLabel
    Left = 2
    Top = 264
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
  object Detalles: TwwDBGrid
    Left = 4
    Top = 52
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
    DataSource = Modulo.dForma_Pagos_Clientes
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
    OnEnter = DetallesEnter
    OnExit = DetallesExit
    PadColumnStyle = pcsPlain
    PaintOptions.AlternatingRowColor = 9948159
  end
  object Total_Neto: TDBEdit
    Left = 319
    Top = 5
    Width = 248
    Height = 19
    TabStop = False
    Ctl3D = False
    DataField = 'Monto'
    DataSource = Modulo.dPagos_Clientes
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
  object Tasa: TDBEdit
    Left = 127
    Top = 282
    Width = 117
    Height = 19
    TabStop = False
    Ctl3D = False
    DataField = 'Tasa'
    DataSource = Modulo.dForma_Pagos_Clientes
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
  object Monto_Moneda_Local: TDBEdit
    Left = 127
    Top = 261
    Width = 117
    Height = 19
    TabStop = False
    Color = 10872826
    Ctl3D = False
    DataField = 'Valor_Recibido_Local'
    DataSource = Modulo.dForma_Pagos_Clientes
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
  object gbt_Aceptar: TAdvGlowButton
    Left = 441
    Top = 266
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
    TabOrder = 4
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
    Top = 266
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
    TabOrder = 5
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
    Top = 131
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
    end
  end
end
