object FPayRollConfig: TFPayRollConfig
  Left = 55
  Top = 16
  BorderStyle = bsToolWindow
  Caption = 'Configuracion Modulo de N'#243'mina'
  ClientHeight = 97
  ClientWidth = 646
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 11
    Top = 10
    Width = 136
    Height = 13
    Caption = 'Nombre del Servidor Remoto'
  end
  object Label9: TLabel
    Left = 26
    Top = 30
    Width = 121
    Height = 13
    Caption = 'URL del Servidor Remoto'
  end
  object Label16: TLabel
    Left = 22
    Top = 50
    Width = 125
    Height = 13
    Caption = 'Nombre del Servidor Local'
  end
  object Label17: TLabel
    Left = 37
    Top = 70
    Width = 110
    Height = 13
    Caption = 'URL del Servidor Local'
  end
  object Edit1: TEdit
    Left = 154
    Top = 6
    Width = 333
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    Text = 'Direccion del Servidor Remoto'
  end
  object BitBtn1: TBitBtn
    Left = 527
    Top = 6
    Width = 107
    Height = 25
    Caption = 'Aceptar'
    ModalResult = 1
    TabOrder = 4
    OnClick = BitBtn1Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 527
    Top = 33
    Width = 107
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = BitBtn2Click
    Kind = bkCancel
  end
  object Edit10: TEdit
    Left = 154
    Top = 26
    Width = 333
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    Text = 'URL del Servidor Remoto'
  end
  object Edit11: TEdit
    Left = 154
    Top = 46
    Width = 333
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    Text = 'Nombre del Servidor Local'
  end
  object Edit12: TEdit
    Left = 154
    Top = 66
    Width = 333
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    Text = 'URL del Servidor Local'
  end
  object AbrirLogo: TOpenDialog
    Filter = 
      'Windows Bmp|*.Bmp|JPged|*.Jpg|Windows Metafiles|*.Wmf|Todos los ' +
      'Archivos|*.*'
    Left = 541
    Top = 56
  end
  object WindowsColor: TColorDialog
    Left = 574
    Top = 56
  end
end
