object FNiveles: TFNiveles
  Left = 35
  Top = -2
  BorderStyle = bsToolWindow
  Caption = 'Niveles de Acceso al Sistema'
  ClientHeight = 556
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
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 0
    Width = 70
    Height = 23
    Caption = 'Niveles'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 130
    Width = 88
    Height = 23
    Caption = 'Opciones'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 337
    Width = 87
    Height = 23
    Caption = 'Permisos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Detalle_Niveles: TwwDBGrid
    Left = 8
    Top = 21
    Width = 681
    Height = 100
    ControlInfoInDataset = False
    Selected.Strings = (
      'Codigo'#9'15'#9'Codigo'#9'F'#9
      'Descripcion'#9'100'#9'Descripcion'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = 13428432
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = Modulo.dNiveles
    KeyOptions = [dgEnterToTab]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgWordWrap]
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = Modificar_NivelExecute
    PadColumnStyle = pcsPlain
    PaintOptions.AlternatingRowColor = 9948159
  end
  object Detalle_Opciones: TwwDBGrid
    Left = 8
    Top = 156
    Width = 681
    Height = 166
    ControlInfoInDataset = False
    Selected.Strings = (
      'Descripcion'#9'57'#9'Descripcion'#9#9
      'Opcion'#9'25'#9'Opcion'#9'F'#9
      'Tipo'#9'25'#9'Tipo'#9'F'#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = 13428432
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = Modulo.dOpciones
    KeyOptions = [dgEnterToTab]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgWordWrap]
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = ActivarExecute
    PadColumnStyle = pcsPlain
    PaintOptions.AlternatingRowColor = 9948159
  end
  object Detalle_Permisos: TwwDBGrid
    Left = 8
    Top = 358
    Width = 681
    Height = 189
    ControlInfoInDataset = False
    Selected.Strings = (
      'Descripcion_Form'#9'57'#9'Descripci'#243'n'#9'F'
      'Opcion'#9'25'#9'Opcion'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = 13428432
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = Modulo.dAccesos
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgWordWrap]
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = DesactivarExecute
    PadColumnStyle = pcsPlain
    PaintOptions.AlternatingRowColor = 9948159
  end
  object Atb_Control_Opciones: TActionToolBar
    Left = 512
    Top = 326
    Width = 177
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
  object Atb_Control_Niveles: TActionToolBar
    Left = 392
    Top = 123
    Width = 297
    Height = 29
    ActionManager = Opciones
    Align = alNone
    Caption = 'ActionToolBar1'
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
            Action = Activar_Todas
            ImageIndex = 49
            ShortCut = 16449
          end
          item
            Action = Activar
            ImageIndex = 48
            ShortCut = 16468
          end>
      end
      item
        Items = <
          item
            Action = Activar
            ImageIndex = 48
            ShortCut = 16468
          end
          item
            Action = Activar_Todas
            ImageIndex = 49
            ShortCut = 16449
          end
          item
            Action = Desactivar
            ImageIndex = 47
            ShortCut = 16452
          end
          item
            Action = Desactivar_Todas
            ImageIndex = 32
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
            Action = Crear_Nivel
            ImageIndex = 1
          end
          item
            Action = Modificar_Nivel
            ImageIndex = 3
          end
          item
            Caption = '-'
          end
          item
            Action = Eliminar_Nivel
            Caption = '&Eliminar Nivel'
            ImageIndex = 26
          end>
        ActionBar = Atb_Control_Niveles
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
    object Activar: TAction
      Category = 'Acciones y Desplazamiento'
      Hint = 'Activar la Opci'#243'n Seleccionada'
      ImageIndex = 48
      ShortCut = 16468
      OnExecute = ActivarExecute
    end
    object Activar_Todas: TAction
      Category = 'Acciones y Desplazamiento'
      Hint = 'Activar Todas las Opciones'
      ImageIndex = 49
      ShortCut = 16449
      OnExecute = Activar_TodasExecute
    end
    object Desactivar: TAction
      Category = 'Acciones y Desplazamiento'
      Hint = 'Desactivar la Opci'#243'n Seleccionada'
      ImageIndex = 47
      ShortCut = 16452
      OnExecute = DesactivarExecute
    end
    object Desactivar_Todas: TAction
      Category = 'Acciones y Desplazamiento'
      Hint = 'Desactivar Todas las Opciones'
      ImageIndex = 32
      OnExecute = Desactivar_TodasExecute
    end
    object Crear_Nivel: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Crear Nivel'
      ImageIndex = 1
      OnExecute = Crear_NivelExecute
    end
    object Eliminar_Nivel: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Eliminar Nivel'
      ImageIndex = 26
      OnExecute = Eliminar_NivelExecute
    end
    object Modificar_Nivel: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Modificar Nivel'
      ImageIndex = 3
      OnExecute = Modificar_NivelExecute
    end
  end
end
