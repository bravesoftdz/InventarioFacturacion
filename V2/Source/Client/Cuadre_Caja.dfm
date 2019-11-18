object FCuadre_Caja: TFCuadre_Caja
  Left = 119
  Top = 13
  BorderStyle = bsToolWindow
  Caption = 'Cuadre de Caja'
  ClientHeight = 459
  ClientWidth = 572
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
  object Label85: TLabel
    Left = 2
    Top = 343
    Width = 112
    Height = 20
    Caption = 'Total Vendido'
    FocusControl = Total_Neto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
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
    Left = 408
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
    Left = 416
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
  object Label9: TLabel
    Left = 10
    Top = 27
    Width = 44
    Height = 13
    Caption = 'N'#250'mero'
    FocusControl = Nombre_Usuario
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 11
    Top = 66
    Width = 54
    Height = 13
    Caption = 'Contrase'#241'a'
    FocusControl = Contrasena
  end
  object Label1: TLabel
    Left = 2
    Top = 383
    Width = 104
    Height = 20
    Caption = 'Total Retiros'
    FocusControl = Retiros
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 2
    Top = 423
    Width = 111
    Height = 20
    Caption = 'Total Efectivo'
    FocusControl = Efectivo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 314
    Top = 303
    Width = 83
    Height = 20
    Caption = 'Diferencia'
    FocusControl = Diferencia
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 2
    Top = 303
    Width = 119
    Height = 20
    Caption = 'Fondo C/Chica'
    FocusControl = Fondo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Detalles: TwwDBGrid
    Left = 2
    Top = 87
    Width = 568
    Height = 191
    ControlInfoInDataset = False
    Selected.Strings = (
      'Moneda'#9'15'#9'Moneda'#9'T'
      'Denominacion'#9'13'#9'Denominacion'#9'T'
      'Cantidad'#9'10'#9'Cantidad'#9'F'
      'Total'#9'13'#9'Total'#9'T')
    IniAttributes.Delimiter = ';;'
    TitleColor = 13428432
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = Modulo.dDetalle_Cuadre
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
    OnCalcCellColors = DetallesCalcCellColors
    OnDblClick = DetallesDblClick
    OnEnter = DetallesEnter
    OnExit = DetallesExit
    PadColumnStyle = pcsPlain
    PaintOptions.AlternatingRowColor = 9948159
  end
  object Total_Neto: TDBEdit
    Left = 129
    Top = 334
    Width = 169
    Height = 39
    TabStop = False
    Ctl3D = False
    DataField = 'Total_Vendido'
    DataSource = Modulo.dCuadre_Caja
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
  end
  object Numero_Cuadre: TDBEdit
    Left = 72
    Top = 4
    Width = 117
    Height = 19
    TabStop = False
    Ctl3D = False
    DataField = 'Numero_Cuadre'
    DataSource = Modulo.dCuadre_Caja
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
  end
  object Fecha_Cuadre: TDBEdit
    Left = 453
    Top = 8
    Width = 117
    Height = 19
    TabStop = False
    Color = 10872826
    Ctl3D = False
    DataField = 'Fecha'
    DataSource = Modulo.dCuadre_Caja
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object Hora_Cuadre: TDBEdit
    Left = 453
    Top = 28
    Width = 117
    Height = 19
    TabStop = False
    Color = 10872826
    Ctl3D = False
    DataField = 'Hora'
    DataSource = Modulo.dCuadre_Caja
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
  object Nombre_Usuario: TDBEdit
    Left = 72
    Top = 24
    Width = 209
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'Supervisor'
    DataSource = Modulo.dCuadre_Caja
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    OnExit = Nombre_UsuarioExit
  end
  object Nombre_Completo: TDBEdit
    Left = 72
    Top = 45
    Width = 271
    Height = 19
    TabStop = False
    BorderStyle = bsNone
    Ctl3D = False
    DataField = 'NombreCompleto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object Contrasena: TEdit
    Left = 72
    Top = 63
    Width = 209
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    PasswordChar = '%'
    TabOrder = 5
  end
  object Retiros: TDBEdit
    Left = 129
    Top = 374
    Width = 169
    Height = 39
    TabStop = False
    Ctl3D = False
    DataField = 'Total_Retiros'
    DataSource = Modulo.dCuadre_Caja
    Font.Charset = ANSI_CHARSET
    Font.Color = 4227327
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
  end
  object Efectivo: TDBEdit
    Left = 129
    Top = 414
    Width = 169
    Height = 39
    TabStop = False
    Ctl3D = False
    DataField = 'Total_Efectivo'
    DataSource = Modulo.dCuadre_Caja
    Font.Charset = ANSI_CHARSET
    Font.Color = 45056
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
  end
  object Diferencia: TDBEdit
    Left = 401
    Top = 294
    Width = 169
    Height = 39
    TabStop = False
    Ctl3D = False
    DataField = 'Diferencia'
    DataSource = Modulo.dCuadre_Caja
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 11
  end
  object Fondo: TDBEdit
    Left = 129
    Top = 294
    Width = 169
    Height = 39
    TabStop = False
    Ctl3D = False
    DataField = 'Fondo_Caja'
    DataSource = Modulo.dCuadre_Caja
    Font.Charset = ANSI_CHARSET
    Font.Color = 10485760
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
  end
  object atv_Acept_Cancel: TActionToolBar
    Left = 417
    Top = 357
    Width = 141
    Height = 83
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
    Font.Style = []
    Orientation = boTopToBottom
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
            Action = Cuadrar
            ImageIndex = 58
            ShortCut = 120
          end
          item
            Action = Procesar_Cuadre
            Caption = '&Procesar Cuadre'
            ImageIndex = 78
            ShortCut = 118
          end
          item
            Action = Cancelar
            ImageIndex = 26
          end>
        ActionBar = atv_Acept_Cancel
      end>
    Images = Modulo.SystemImages
    Left = 71
    Top = 168
    StyleName = 'XP Style'
    object Procesar_Cuadre: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Procesar Cuadre'
      ImageIndex = 78
      ShortCut = 118
      OnExecute = Procesar_CuadreExecute
    end
    object Cuadrar: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Cargar Resumen'
      ImageIndex = 58
      ShortCut = 120
      OnExecute = CuadrarExecute
    end
    object Cancelar: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = '&Cancelar'
      ImageIndex = 26
      OnExecute = CancelarExecute
    end
  end
end
