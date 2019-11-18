object FDenominaciones: TFDenominaciones
  Left = 169
  Top = 185
  BorderStyle = bsToolWindow
  Caption = 'Componentes del Producto'
  ClientHeight = 300
  ClientWidth = 428
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
  object Detalles: TwwDBGrid
    Left = 4
    Top = 16
    Width = 422
    Height = 248
    ControlInfoInDataset = False
    ControlType.Strings = (
      'Codigo_Componente;CustomEdit;Productos;F'
      'Moneda;CustomEdit;Combo_Moneda;T')
    Selected.Strings = (
      'Moneda'#9'25'#9'Moneda'#9'F'
      'Denominacion'#9'13'#9'Denominacion'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = 13428432
    FixedCols = 0
    ShowHorzScrollBar = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
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
    PadColumnStyle = pcsPlain
    PaintOptions.AlternatingRowColor = 9948159
  end
  object Atb_Control_Opciones: TActionToolBar
    Left = 209
    Top = 267
    Width = 217
    Height = 29
    ActionManager = Opciones
    Align = alNone
    Caption = 'Atb_Control_Opciones'
    ColorMap = Modulo.ColorConfig
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    EdgeOuter = esLowered
    ParentBackground = True
    ParentColor = True
    ParentShowHint = False
    PersistentHotKeys = True
    ShowHint = True
    Spacing = 0
  end
  object Combo_Moneda: TwwDBComboBox
    Left = 50
    Top = 113
    Width = 183
    Height = 19
    ShowButton = True
    Style = csDropDown
    MapList = False
    AllowClearKey = False
    AutoDropDown = True
    ShowMatchText = True
    ButtonStyle = cbsCustom
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'Moneda'
    DisableDropDownList = True
    DropDownCount = 15
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ButtonWidth = -1
    HistoryList.Section = 'Monedas'
    HistoryList.FileName = 'Denominaciones.hlst'
    HistoryList.Enabled = True
    HistoryList.MRUEnabled = True
    ItemHeight = 0
    ParentCtl3D = False
    Sorted = False
    TabOrder = 2
    UnboundDataType = wwDefault
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
            Caption = '&Salir'
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
        Items = <
          item
            Action = Guardar
            ImageIndex = 0
            ShortCut = 16455
          end
          item
            Action = Eliminar
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
        ActionBar = Atb_Control_Opciones
      end
      item
        Items = <
          item
            Caption = '-'
          end>
      end>
    Images = Modulo.SystemImages
    Left = 320
    Top = 219
    StyleName = 'XP Style'
    object Salir: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Salir'
      ImageIndex = 10
      ShortCut = 27
      OnExecute = SalirExecute
    end
    object Guardar: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Guardar'
      ImageIndex = 0
      ShortCut = 16455
      OnExecute = GuardarExecute
    end
    object Eliminar: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Eliminar'
      ImageIndex = 26
      ShortCut = 16453
      OnExecute = EliminarExecute
    end
  end
end
