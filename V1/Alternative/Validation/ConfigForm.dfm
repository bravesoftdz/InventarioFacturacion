object FMainConfig: TFMainConfig
  Left = 201
  Top = 142
  BorderStyle = bsToolWindow
  Caption = 'Configuracion Del Servidor'
  ClientHeight = 147
  ClientWidth = 563
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label9: TLabel
    Left = 26
    Top = 30
    Width = 121
    Height = 13
    Caption = 'URL del Servidor Remoto'
  end
  object Label17: TLabel
    Left = 37
    Top = 52
    Width = 110
    Height = 13
    Caption = 'URL del Servidor Local'
  end
  object BitBtn1: TBitBtn
    Left = 367
    Top = 81
    Width = 75
    Height = 25
    TabOrder = 2
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 447
    Top = 81
    Width = 75
    Height = 25
    TabOrder = 3
    OnClick = BitBtn2Click
    Kind = bkCancel
  end
  object Edit10: TEdit
    Left = 154
    Top = 26
    Width = 369
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    Text = 'URL del Servidor Remoto'
  end
  object Edit12: TEdit
    Left = 154
    Top = 48
    Width = 369
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    Text = 'URL del Servidor Local'
  end
  object Edit1: TEdit
    Left = 154
    Top = 178
    Width = 369
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
    Text = 'Name'
  end
  object Edit2: TEdit
    Left = 154
    Top = 200
    Width = 369
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    PasswordChar = '%'
    TabOrder = 5
    Text = 'Password'
  end
  object BitBtn3: TBitBtn
    Left = 528
    Top = 20
    Width = 25
    Height = 25
    TabOrder = 6
    OnClick = BitBtn3Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
      7700333333337777777733333333008088003333333377F73377333333330088
      88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
      000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
      FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
      99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
      99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
      99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
      93337FFFF7737777733300000033333333337777773333333333}
    NumGlyphs = 2
  end
  object BitBtn4: TBitBtn
    Left = 528
    Top = 48
    Width = 25
    Height = 25
    TabOrder = 7
    OnClick = BitBtn4Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
      7700333333337777777733333333008088003333333377F73377333333330088
      88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
      000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
      FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
      99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
      99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
      99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
      93337FFFF7737777733300000033333333337777773333333333}
    NumGlyphs = 2
  end
  object ActionManager1: TActionManager
    Left = 32
    Top = 80
    StyleName = 'XP Style'
    object PostToRegistry: TAction
      Caption = 'PostToRegistry'
      ShortCut = 49234
      OnExecute = PostToRegistryExecute
    end
    object PostToDB: TAction
      Caption = 'PostToDB'
      ShortCut = 49236
      OnExecute = PostToDBExecute
    end
    object GetKey: TAction
      Caption = 'GetKey'
      ShortCut = 49227
      OnExecute = GetKeyExecute
    end
    object UnKey: TAction
      Caption = 'UnKey'
      ShortCut = 49237
      OnExecute = UnKeyExecute
    end
    object Compare: TAction
      Caption = 'Compare'
      ShortCut = 49219
      OnExecute = CompareExecute
    end
  end
  object DB: TIBDatabase
    DatabaseName = 'C:\Development\Databases\Interbase\Inventory&Sales\IYS.RMS'
    Params.Strings = (
      'user_name=MGUMBS'
      'password=FSKg28'
      'sql_role_name=Admin')
    LoginPrompt = False
    DefaultTransaction = TR
    Left = 88
    Top = 80
  end
  object TR: TIBTransaction
    DefaultDatabase = DB
    IdleTimer = 300
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saCommit
    Left = 128
    Top = 80
  end
  object TP: TIBTable
    Database = DB
    Transaction = TR
    TableName = 'Validation'
    Left = 176
    Top = 80
    object TPIntervalStart: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'IntervalStart'
      Size = 100
    end
    object TPIntervalEnd: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'IntervalEnd'
      Size = 100
    end
    object TPRegistration: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Registration'
      Size = 500
    end
    object TPExecution: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Execution'
    end
  end
  object OpenDB: TOpenDialog
    DefaultExt = '*.Rms'
    Filter = 'Rms Data File|*.Rms|InterBase Data File|*.Gdb|All Files|*.*'
    Title = 'Localizar Base de Datos'
    Left = 224
    Top = 80
  end
end
