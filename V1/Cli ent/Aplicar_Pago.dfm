object FAplicar_Monto: TFAplicar_Monto
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FAplicar_Monto'
  ClientHeight = 132
  ClientWidth = 321
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 321
    Height = 132
    Align = alClient
    BevelInner = bvLowered
    BevelKind = bkFlat
    ParentColor = True
    TabOrder = 0
    ExplicitWidth = 399
    ExplicitHeight = 109
    object Label2: TLabel
      Left = 8
      Top = 68
      Width = 82
      Height = 13
      Caption = 'Monto a Pagar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 39
      Width = 50
      Height = 13
      Caption = 'Pendiete'
      FocusControl = Pendiente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 116
      Height = 13
      Caption = 'Restante por Aplicar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Pendiente: TDBEdit
      Left = 128
      Top = 33
      Width = 186
      Height = 25
      TabStop = False
      Ctl3D = False
      DataField = 'Pendiente'
      DataSource = Modulo.dFacturas_Cliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object atv_Acept_Cancel: TActionToolBar
      Left = 152
      Top = 93
      Width = 162
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
    object Monto: TfcCalcEdit
      Left = 128
      Top = 62
      Width = 186
      Height = 25
      CalcOptions.BackgroundStyle = cbdStretch
      CalcOptions.Options = []
      ButtonStyle = cbsDownArrow
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 20
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = False
      TabOrder = 2
      Text = 'Monto'
    end
    object Restante: TEdit
      Left = 128
      Top = 5
      Width = 186
      Height = 25
      TabStop = False
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Text = 'Restante'
    end
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
            Items = <
              item
                Caption = '-'
              end>
            Caption = '&Herramientas'
          end
          item
            Caption = '-'
          end
          item
            Action = Salir
            ImageIndex = 10
            ShortCut = 27
          end>
      end
      item
        Items = <
          item
            Action = Login
            Caption = '&Aceptar'
            ImageIndex = 16
            ShortCut = 13
          end
          item
            Caption = '-'
          end
          item
            Action = Salir
            Caption = '&Cancelar'
            ImageIndex = 26
            ShortCut = 27
          end>
        ActionBar = atv_Acept_Cancel
      end>
    Images = Modulo.SystemImages
    Left = 40
    Top = 56
    StyleName = 'XP Style'
    object Login: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Aceptar'
      ImageIndex = 16
      ShortCut = 13
      OnExecute = LoginExecute
    end
    object Salir: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Cancelar'
      ImageIndex = 26
      ShortCut = 27
      OnExecute = SalirExecute
    end
  end
end
