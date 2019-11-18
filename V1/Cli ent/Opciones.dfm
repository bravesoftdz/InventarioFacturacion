object FOpciones: TFOpciones
  Left = 64
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Carga de Opciones del Sistema'
  ClientHeight = 573
  ClientWidth = 702
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 14
    Top = 11
    Width = 248
    Height = 23
    Caption = 'Componentes del Sistema'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Detalle_Opciones: TwwDBGrid
    Left = 8
    Top = 53
    Width = 689
    Height = 427
    ControlInfoInDataset = False
    Selected.Strings = (
      'Descripcion'#9'57'#9'Descripcion'
      'Opcion'#9'25'#9'Opcion'
      'Tipo'#9'25'#9'Tipo')
    IniAttributes.Delimiter = ';;'
    TitleColor = 13428432
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = Modulo.dOpciones
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgWordWrap]
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    PadColumnStyle = pcsPlain
    PaintOptions.AlternatingRowColor = 9948159
  end
  object Atb_Botones: TActionToolBar
    Left = 560
    Top = 488
    Width = 129
    Height = 80
    ActionManager = Opciones
    Align = alNone
    Caption = 'Atb_Botones'
    ColorMap = Modulo.ColorConfig
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    EdgeOuter = esLowered
    Orientation = boTopToBottom
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
        Items = <
          item
            Action = Cargar_Opciones
            Caption = '&Cargar Opciones'
            ImageIndex = 3
          end
          item
            Action = Eliminar_Opciones
            Caption = '&Eliminar Opciones'
            ImageIndex = 26
            ShortCut = 16452
          end
          item
            Action = Salir
            ImageIndex = 10
            ShortCut = 27
          end>
        ActionBar = Atb_Botones
      end>
    Images = Modulo.SystemImages
    Left = 480
    Top = 491
    StyleName = 'XP Style'
    object Salir: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Salir'
      ImageIndex = 10
      ShortCut = 27
      OnExecute = SalirExecute
    end
    object Cargar_Opciones: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Cargar Opciones'
      ImageIndex = 3
      OnExecute = Cargar_OpcionesExecute
    end
    object Eliminar_Opciones: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Eliminar Opciones'
      ImageIndex = 26
      ShortCut = 16452
      OnExecute = Eliminar_OpcionesExecute
    end
  end
end
