object FTimerMessage: TFTimerMessage
  Left = 192
  Top = 107
  BorderStyle = bsNone
  BorderWidth = 2
  ClientHeight = 112
  ClientWidth = 442
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
    Width = 442
    Height = 112
    Align = alClient
    TabOrder = 0
    object Titulo: TLabel
      Left = 106
      Top = 30
      Width = 330
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
      Left = 106
      Top = 51
      Width = 330
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Linea1'
      Transparent = True
    end
    object Linea2: TLabel
      Left = 106
      Top = 63
      Width = 330
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Linea2'
      Transparent = True
    end
    object Indicador: TGauge
      Left = 22
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
