object FPrintShow: TFPrintShow
  Left = 320
  Top = 209
  BorderStyle = bsToolWindow
  Caption = 'FPrintShow'
  ClientHeight = 89
  ClientWidth = 180
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 8
    Width = 74
    Height = 13
    Caption = 'Imprimiendo .....'
  end
  object Button1: TButton
    Left = 48
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
end
