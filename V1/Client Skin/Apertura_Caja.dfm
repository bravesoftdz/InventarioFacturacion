object FApertura_Caja: TFApertura_Caja
  Left = 205
  Top = 188
  BorderStyle = bsToolWindow
  Caption = 'Apertura de Caja'
  ClientHeight = 115
  ClientWidth = 602
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
  object Label4: TLabel
    Left = 10
    Top = 7
    Width = 44
    Height = 13
    Caption = 'N'#250'mero'
    FocusControl = Numero_Cuadre
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 426
    Top = 11
    Width = 36
    Height = 13
    Caption = 'Fecha'
    FocusControl = Fecha_Cuadre
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 434
    Top = 31
    Width = 28
    Height = 13
    Caption = 'Hora'
    FocusControl = Hora_Cuadre
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 10
    Top = 39
    Width = 119
    Height = 20
    Caption = 'Fondo C/Chica'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 10
    Top = 79
    Width = 63
    Height = 20
    Caption = 'Usuario'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Numero_Cuadre: TDBEdit
    Left = 136
    Top = 4
    Width = 117
    Height = 19
    TabStop = False
    Ctl3D = False
    DataField = 'Numero'
    DataSource = Modulo.dApertura_Caja
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object Fecha_Cuadre: TDBEdit
    Left = 469
    Top = 8
    Width = 125
    Height = 19
    TabStop = False
    Color = 10872826
    Ctl3D = False
    DataField = 'Fecha'
    DataSource = Modulo.dApertura_Caja
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object Hora_Cuadre: TDBEdit
    Left = 469
    Top = 28
    Width = 125
    Height = 19
    TabStop = False
    Color = 10872826
    Ctl3D = False
    DataField = 'Hora'
    DataSource = Modulo.dApertura_Caja
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
  object DBEdit4: TDBEdit
    Left = 136
    Top = 30
    Width = 169
    Height = 39
    Ctl3D = False
    DataField = 'Monto'
    DataSource = Modulo.dApertura_Caja
    Font.Charset = ANSI_CHARSET
    Font.Color = 10485760
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 136
    Top = 70
    Width = 321
    Height = 39
    TabStop = False
    Ctl3D = False
    DataField = 'Usuario'
    DataSource = Modulo.dApertura_Caja
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object atv_Acept_Cancel: TActionToolBar
    Left = 469
    Top = 70
    Width = 125
    Height = 39
    ActionManager = Opciones
    Align = alNone
    Caption = 'ActionToolBar1'
    ColorMap = Modulo.ColorConfig
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    EdgeOuter = esLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
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
            Action = Procesar_Apertura
            ImageIndex = 16
            ShortCut = 118
          end>
        ActionBar = atv_Acept_Cancel
      end>
    Images = Modulo.SystemImages
    Left = 327
    Top = 16
    StyleName = 'XP Style'
    object Procesar_Apertura: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Procesar'
      ImageIndex = 16
      ShortCut = 118
      OnExecute = Procesar_AperturaExecute
    end
    object Cancelar: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Cancelar'
      ImageIndex = 26
      ShortCut = 27
    end
  end
end
