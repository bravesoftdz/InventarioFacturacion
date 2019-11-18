object FTipos_Detalles_Grupo: TFTipos_Detalles_Grupo
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FTipos_Detalles_Grupo'
  ClientHeight = 107
  ClientWidth = 234
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Atb_Editar: TActionToolBar
    Left = 0
    Top = 0
    Width = 234
    Height = 107
    ActionManager = Opciones
    Align = alClient
    Caption = 'Atb_Botones'
    ColorMap = Modulo.ColorConfig
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    EdgeInner = esLowered
    EdgeOuter = esRaised
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    Orientation = boTopToBottom
    ParentFont = False
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
            Action = Cancelar
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
            Action = Cancelar
            ImageIndex = 10
            ShortCut = 27
          end>
      end
      item
        Items = <
          item
            Action = Pagos_Incentivos
            ImageIndex = 1
          end
          item
            Action = Deducciones
            ImageIndex = 33
          end
          item
            Action = Cancelar
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
                Action = Deducciones
                ImageIndex = 33
              end
              item
                Action = Pagos_Incentivos
                ImageIndex = 1
              end>
            Caption = '&Opciones'
          end>
      end
      item
        Items = <
          item
            Action = Deducciones
            ImageIndex = 33
          end
          item
            Action = Pagos_Incentivos
            ImageIndex = 1
          end
          item
            Action = Cancelar
            ImageIndex = 10
            ShortCut = 27
          end>
      end
      item
        Items = <
          item
            Action = Deducciones
            ImageIndex = 33
          end
          item
            Action = Pagos_Incentivos
            ImageIndex = 1
          end
          item
            Action = Cancelar
            ImageIndex = 10
            ShortCut = 27
          end>
      end
      item
        Items = <
          item
            Action = Deducciones
            Caption = '&Deducciones'
            ImageIndex = 33
          end
          item
            Action = Pagos_Incentivos
            Caption = '&Pagos e Incentivos'
            ImageIndex = 78
          end
          item
            Action = Cancelar
            Caption = '&Cancelar'
            ImageIndex = 26
            ShortCut = 27
          end>
        ActionBar = Atb_Editar
      end>
    Images = Modulo.SystemImages
    Left = 136
    Top = 60
    StyleName = 'XP Style'
    object Cancelar: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Cancelar'
      ImageIndex = 26
      ShortCut = 27
      OnExecute = CancelarExecute
    end
    object Deducciones: TAction
      Category = 'Opciones'
      Caption = 'Deducciones'
      ImageIndex = 33
      OnExecute = DeduccionesExecute
    end
    object Pagos_Incentivos: TAction
      Category = 'Opciones'
      Caption = 'Pagos e Incentivos'
      ImageIndex = 78
      OnExecute = Pagos_IncentivosExecute
    end
  end
end
