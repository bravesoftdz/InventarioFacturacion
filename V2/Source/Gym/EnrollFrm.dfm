object EnrollForm: TEnrollForm
  Left = 295
  Top = 146
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'EnrollForm'
  ClientHeight = 545
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 9
    Top = 19
    Width = 39
    Height = 13
    Caption = 'User ID:'
  end
  object Label1: TLabel
    Left = 9
    Top = 43
    Width = 50
    Height = 13
    Caption = 'Finger SN:'
  end
  object Label2: TLabel
    Left = 9
    Top = 67
    Width = 43
    Height = 13
    Caption = 'Privilege:'
  end
  object Label3: TLabel
    Left = 9
    Top = 91
    Width = 49
    Height = 13
    Caption = 'Password:'
  end
  object Label4: TLabel
    Left = 9
    Top = 115
    Width = 39
    Height = 13
    Caption = 'Card ID:'
  end
  object Label5: TLabel
    Left = 9
    Top = 139
    Width = 56
    Height = 13
    Caption = 'User Name:'
  end
  object Label6: TLabel
    Left = 9
    Top = 163
    Width = 36
    Height = 13
    Caption = 'ExtInfo:'
  end
  object Label7: TLabel
    Left = 9
    Top = 193
    Width = 76
    Height = 13
    Caption = 'Fingerprint data:'
  end
  object edtDN: TEdit
    Left = 81
    Top = 15
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '1'
  end
  object edtPassword: TEdit
    Left = 81
    Top = 87
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtCardID: TEdit
    Left = 81
    Top = 111
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edtUserName: TEdit
    Left = 81
    Top = 135
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edtExtInfo: TEdit
    Left = 81
    Top = 159
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object cbbFingerNo: TComboBox
    Left = 81
    Top = 39
    Width = 123
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 5
    Text = '0'
    Items.Strings = (
      '0'
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9')
  end
  object cbbPrivilege: TComboBox
    Left = 81
    Top = 63
    Width = 123
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 6
    Text = 'User'
    Items.Strings = (
      'User'
      'Enroll User'
      'View User'
      'Super User'
      'Customer')
  end
  object btnExtInfoGet: TButton
    Left = 203
    Top = 157
    Width = 42
    Height = 25
    Caption = 'Get'
    TabOrder = 7
    OnClick = btnExtInfoGetClick
  end
  object btnExtInfoSet: TButton
    Left = 247
    Top = 157
    Width = 42
    Height = 25
    Caption = 'Set'
    TabOrder = 8
    OnClick = btnExtInfoSetClick
  end
  object btnReadFP: TButton
    Left = 321
    Top = 8
    Width = 152
    Height = 25
    Caption = 'Read FP Data'
    TabOrder = 9
    OnClick = btnReadFPClick
  end
  object btnWriteFP: TButton
    Left = 477
    Top = 8
    Width = 152
    Height = 25
    Caption = 'Write FP Data'
    TabOrder = 10
    OnClick = btnWriteFPClick
  end
  object btnClearFP: TButton
    Left = 632
    Top = 8
    Width = 152
    Height = 25
    Caption = 'Clear FP Data'
    TabOrder = 11
    OnClick = btnClearFPClick
  end
  object btnReadPwd: TButton
    Left = 321
    Top = 36
    Width = 152
    Height = 25
    Caption = 'Read PWD'
    TabOrder = 12
    OnClick = btnReadPwdClick
  end
  object btnWritePwd: TButton
    Left = 477
    Top = 36
    Width = 152
    Height = 25
    Caption = 'Write PWD'
    TabOrder = 13
    OnClick = btnWritePwdClick
  end
  object btnClearPwd: TButton
    Left = 632
    Top = 36
    Width = 152
    Height = 25
    Caption = 'Clear PWD'
    TabOrder = 14
    OnClick = btnClearPwdClick
  end
  object btnReadCard: TButton
    Left = 321
    Top = 64
    Width = 152
    Height = 25
    Caption = 'Read Card'
    TabOrder = 15
    OnClick = btnReadCardClick
  end
  object btnWriteCard: TButton
    Left = 477
    Top = 64
    Width = 152
    Height = 25
    Caption = 'Write Card'
    TabOrder = 16
    OnClick = btnWriteCardClick
  end
  object btnClearCard: TButton
    Left = 632
    Top = 64
    Width = 152
    Height = 25
    Caption = 'Clear Card'
    TabOrder = 17
    OnClick = btnClearCardClick
  end
  object btnGetUserName: TButton
    Left = 203
    Top = 131
    Width = 42
    Height = 25
    Caption = 'Get'
    TabOrder = 18
    OnClick = btnGetUserNameClick
  end
  object btnSetUserName: TButton
    Left = 247
    Top = 131
    Width = 42
    Height = 25
    Caption = 'Set'
    TabOrder = 19
    OnClick = btnSetUserNameClick
  end
  object btnClearUser: TButton
    Left = 321
    Top = 92
    Width = 229
    Height = 25
    Caption = 'Clear User'
    TabOrder = 20
    OnClick = btnClearUserClick
  end
  object btnSetPrivilege: TButton
    Left = 321
    Top = 120
    Width = 153
    Height = 25
    Caption = 'Set Privilege'
    TabOrder = 21
    OnClick = btnSetPrivilegeClick
  end
  object btnGetAllEnrollInfo: TButton
    Left = 477
    Top = 120
    Width = 307
    Height = 25
    Caption = 'Get All Enroll Information'
    TabOrder = 22
    OnClick = btnGetAllEnrollInfoClick
  end
  object btnGetEnrollByID: TButton
    Left = 321
    Top = 148
    Width = 463
    Height = 25
    Caption = 'Get Enroll Information By User ID'
    TabOrder = 23
    OnClick = btnGetEnrollByIDClick
  end
  object btnSetAllEnrollData: TButton
    Left = 321
    Top = 176
    Width = 229
    Height = 25
    Caption = 'Set All Enroll Data'
    TabOrder = 24
    OnClick = btnSetAllEnrollDataClick
  end
  object btnGetAllEnrollData: TButton
    Left = 555
    Top = 176
    Width = 229
    Height = 25
    Caption = 'Get All Enroll Data'
    TabOrder = 25
    OnClick = btnGetAllEnrollDataClick
  end
  object mmoFingerprint: TMemo
    Left = 9
    Top = 210
    Width = 241
    Height = 294
    ScrollBars = ssVertical
    TabOrder = 26
  end
  object btnOpenFPData: TButton
    Left = 49
    Top = 513
    Width = 97
    Height = 25
    Caption = 'Open FP Data'
    TabOrder = 27
    OnClick = btnOpenFPDataClick
  end
  object btnSaveFPData: TButton
    Left = 153
    Top = 513
    Width = 97
    Height = 25
    Caption = 'Save FP Data'
    TabOrder = 28
    OnClick = btnSaveFPDataClick
  end
  object btnSelectAll: TButton
    Left = 264
    Top = 512
    Width = 97
    Height = 25
    Caption = 'Select All'
    TabOrder = 29
    OnClick = btnSelectAllClick
  end
  object btnSaveAll: TButton
    Left = 368
    Top = 512
    Width = 97
    Height = 25
    Caption = 'Save All Enroll'
    TabOrder = 30
    OnClick = btnSaveAllClick
  end
  object btnOpenAll: TButton
    Left = 472
    Top = 512
    Width = 97
    Height = 25
    Caption = 'Open All Enroll'
    TabOrder = 31
    OnClick = btnOpenAllClick
  end
  object btnSaveOne: TButton
    Left = 584
    Top = 512
    Width = 97
    Height = 25
    Caption = 'Save One Enroll'
    TabOrder = 32
    OnClick = btnSaveOneClick
  end
  object btnOpenOne: TButton
    Left = 688
    Top = 512
    Width = 97
    Height = 25
    Caption = 'Open One Enroll'
    TabOrder = 33
    OnClick = btnOpenOneClick
  end
  object lvRecord: TListView
    Left = 265
    Top = 209
    Width = 519
    Height = 297
    Checkboxes = True
    Columns = <
      item
        Caption = 'SN'
      end
      item
        Caption = 'User ID'
        Width = 80
      end
      item
        Caption = 'User Name'
        Width = 100
      end
      item
        Caption = 'FP 0'
      end
      item
        Caption = 'FP 1'
      end
      item
        Caption = 'FP 2'
      end
      item
        Caption = 'FP 3'
      end
      item
        Caption = 'FP 4'
      end
      item
        Caption = 'FP 5'
      end
      item
        Caption = 'FP 6'
      end
      item
        Caption = 'FP 7'
      end
      item
        Caption = 'FP 8'
      end
      item
        Caption = 'FP 9'
      end
      item
        Caption = 'PWD'
      end
      item
        Caption = 'Card'
      end
      item
        Caption = 'Privilege'
        Width = 100
      end>
    GridLines = True
    TabOrder = 34
    ViewStyle = vsReport
  end
  object btnClearAllUser: TButton
    Left = 555
    Top = 92
    Width = 229
    Height = 25
    Caption = 'Clear All User'
    TabOrder = 35
    OnClick = btnClearAllUserClick
  end
  object dlgSave: TSaveDialog
    Left = 176
    Top = 472
  end
  object dlgOpen: TOpenDialog
    Left = 88
    Top = 472
  end
end
