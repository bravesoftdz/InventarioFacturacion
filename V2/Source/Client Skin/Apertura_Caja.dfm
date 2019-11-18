object FApertura_Caja: TFApertura_Caja
  Left = 205
  Top = 188
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Apertura de Caja'
  ClientHeight = 538
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = Opciones_Miscelaneas
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 5
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
    Left = 398
    Top = 7
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
    Left = 398
    Top = 28
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
    Left = 281
    Top = 455
    Width = 119
    Height = 20
    Caption = 'Fondo C/Chica'
    FocusControl = Total_Fondo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Numero_Cuadre: TDBEdit
    Left = 56
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
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object Fecha_Cuadre: TDBEdit
    Left = 448
    Top = 5
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
    Left = 448
    Top = 26
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
  object Total_Fondo: TDBEdit
    Left = 404
    Top = 443
    Width = 169
    Height = 39
    TabStop = False
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
    ReadOnly = True
    TabOrder = 3
  end
  object Usuario: TDBEdit
    Left = 5
    Top = 51
    Width = 568
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
    Left = 333
    Top = 488
    Width = 240
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
  object Detalles: TwwDBGrid
    Left = 5
    Top = 95
    Width = 568
    Height = 326
    ControlInfoInDataset = False
    Selected.Strings = (
      'Moneda'#9'19'#9'Descripcion'#9'T'
      'Denominacion'#9'11'#9'Denominacion'#9'T'
      'Cantidad'#9'8'#9'Cantidad'#9'F'
      'Total'#9'13'#9'Total'#9'T')
    IniAttributes.Delimiter = ';;'
    TitleColor = 13428432
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = Modulo.dDetalle_Apertura
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = [dgEnterToTab]
    ParentFont = False
    TabOrder = 6
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
    UseTFields = False
    OnEnter = DetallesEnter
    OnExit = DetallesExit
    PadColumnStyle = pcsPlain
    PaintOptions.AlternatingRowColor = 9948159
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
            Action = Imprimir
            ImageIndex = 5
            ShortCut = 16464
          end
          item
            Caption = '-'
          end
          item
            Action = Procesar_Apertura
            ImageIndex = 16
            ShortCut = 118
          end>
        ActionBar = atv_Acept_Cancel
      end>
    Images = Modulo.SystemImages
    Left = 203
    Top = 196
    StyleName = 'XP Style'
    object Procesar_Apertura: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Procesar'
      ImageIndex = 16
      ShortCut = 118
      SecondaryShortCuts.Strings = (
        'Alt+F4')
      OnExecute = Procesar_AperturaExecute
    end
    object Imprimir: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Imprimir'
      ImageIndex = 5
      ShortCut = 16464
      OnExecute = ImprimirExecute
    end
    object Configurar_Apertura: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Configurar Apertura'
      ImageIndex = 55
      ShortCut = 49219
      OnExecute = Configurar_AperturaExecute
    end
  end
  object Opciones_Miscelaneas: TsuiPopupMenu
    Images = Modulo.SystemImages
    OwnerDraw = True
    UIStyle = DeepBlue
    MenuItemHeight = 26
    SeparatorHeight = 5
    BarWidth = 26
    BarColor = 13554646
    BarToColor = 13554646
    Color = clWhite
    SeparatorColor = 8684164
    SelectedBorderColor = 10504772
    SelectedColor = 10504772
    SelectedFontColor = clWhite
    FontColor = clBlack
    BorderColor = clBlack
    FlatMenu = False
    FontName = 'MS Sans Serif'
    FontSize = 8
    FontCharset = DEFAULT_CHARSET
    UseSystemFont = True
    Left = 336
    Top = 240
    object ImprimirComprobanteEntrega1: TMenuItem
      Action = Configurar_Apertura
    end
  end
end
