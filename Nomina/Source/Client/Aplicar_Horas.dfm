object FAplicar_Horas: TFAplicar_Horas
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FAplicar_Horas'
  ClientHeight = 155
  ClientWidth = 232
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 232
    Height = 155
    Align = alClient
    BevelInner = bvLowered
    BevelKind = bkFlat
    ParentColor = True
    TabOrder = 0
    ExplicitHeight = 144
    object Label2: TLabel
      Left = 8
      Top = 67
      Width = 123
      Height = 13
      Caption = 'Horas Extraordinarias'
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
      Width = 66
      Height = 13
      Caption = 'Horas Extra'
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
      Width = 93
      Height = 13
      Caption = 'Horas Regulares'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object atv_Acept_Cancel: TActionToolBar
      Left = 43
      Top = 106
      Width = 174
      Height = 39
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
    object Solo_Vacias: TCheckBox
      Left = 8
      Top = 86
      Width = 209
      Height = 17
      Caption = 'S'#243'lo las horas que est'#233'n vac'#237'as'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object Regulares: TEdit
      Left = 137
      Top = 5
      Width = 80
      Height = 25
      BiDiMode = bdRightToLeft
      CharCase = ecUpperCase
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Text = '0'
      OnKeyPress = ValSoloNumeros
    end
    object Extra: TEdit
      Left = 137
      Top = 33
      Width = 80
      Height = 25
      BiDiMode = bdRightToLeft
      CharCase = ecUpperCase
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Text = '0'
      OnKeyPress = ValSoloNumeros
    end
    object Extraordinarias: TEdit
      Left = 137
      Top = 61
      Width = 80
      Height = 25
      BiDiMode = bdRightToLeft
      CharCase = ecUpperCase
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      Text = '0'
      OnKeyPress = ValSoloNumeros
    end
  end
  object Opciones: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = Login
            Caption = '&Aceptar'
            ImageIndex = 16
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
    Left = 96
    Top = 24
    StyleName = 'XP Style'
    object Login: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Aceptar'
      ImageIndex = 16
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
