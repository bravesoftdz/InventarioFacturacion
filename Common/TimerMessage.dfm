object FTimerMessage: TFTimerMessage
  Left = 192
  Top = 107
  BorderIcons = []
  BorderStyle = bsDialog
  BorderWidth = 2
  ClientHeight = 117
  ClientWidth = 549
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 549
    Height = 117
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 442
    ExplicitHeight = 112
    object Titulo: TLabel
      Left = 123
      Top = 34
      Width = 417
      Height = 19
      Alignment = taCenter
      AutoSize = False
      Caption = 'Titulo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Linea1: TLabel
      Left = 123
      Top = 55
      Width = 417
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Linea1'
      Transparent = True
    end
    object Linea2: TLabel
      Left = 123
      Top = 67
      Width = 417
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Linea2'
      Transparent = True
    end
    object Indicador: TGauge
      Left = 11
      Top = 9
      Width = 97
      Height = 97
      BackColor = clMoneyGreen
      BorderStyle = bsNone
      ForeColor = clSkyBlue
      Kind = gkPie
      Progress = 10
    end
  end
end
