object CMForm: TCMForm
  Left = 509
  Top = 260
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'ZDC2911Demo'
  ClientHeight = 322
  ClientWidth = 571
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnOpen: TButton
    Left = 272
    Top = 39
    Width = 120
    Height = 25
    Caption = 'Open Device'
    TabOrder = 0
    OnClick = btnOpenClick
  end
  object btnClose: TButton
    Left = 408
    Top = 39
    Width = 120
    Height = 25
    Caption = 'Close Device'
    Enabled = False
    TabOrder = 1
    OnClick = btnCloseClick
  end
  object gb1: TGroupBox
    Left = 5
    Top = 5
    Width = 249
    Height = 308
    Caption = 'Connection Information'
    TabOrder = 2
    object lbl1: TLabel
      Left = 16
      Top = 20
      Width = 51
      Height = 13
      Caption = 'Device ID:'
    end
    object lbl2: TLabel
      Left = 16
      Top = 51
      Width = 53
      Height = 13
      Caption = 'Comm Key:'
    end
    object lbl3: TLabel
      Left = 32
      Top = 152
      Width = 54
      Height = 13
      Caption = 'Comm Port:'
    end
    object lbl4: TLabel
      Left = 32
      Top = 182
      Width = 46
      Height = 13
      Caption = 'Baudrate:'
    end
    object lbl5: TLabel
      Left = 32
      Top = 247
      Width = 54
      Height = 13
      Caption = 'IP Address:'
    end
    object lbl6: TLabel
      Left = 32
      Top = 278
      Width = 22
      Height = 13
      Caption = 'Port:'
    end
    object edtDN: TEdit
      Left = 88
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
      Text = '1'
    end
    object edtPwd: TEdit
      Left = 88
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 1
      Text = '0'
    end
    object rbUSB: TRadioButton
      Left = 16
      Top = 91
      Width = 113
      Height = 17
      Caption = 'USB Connection'
      Checked = True
      TabOrder = 2
      TabStop = True
    end
    object rbComm: TRadioButton
      Left = 16
      Top = 115
      Width = 113
      Height = 17
      Caption = 'Serial Connection'
      TabOrder = 3
    end
    object rbtCP: TRadioButton
      Left = 16
      Top = 219
      Width = 113
      Height = 17
      Caption = 'Network Connection'
      TabOrder = 4
    end
    object cbbComm: TComboBox
      Left = 96
      Top = 147
      Width = 107
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 5
      Text = 'COM1'
      Items.Strings = (
        'COM1'
        'COM2'
        'COM3'
        'COM4'
        'COM5'
        'COM6'
        'COM7'
        'COM8')
    end
    object cbbBaudrate: TComboBox
      Left = 96
      Top = 179
      Width = 107
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 6
      Text = '9600'
      Items.Strings = (
        '9600'
        '19200'
        '38400'
        '57600'
        '115200')
    end
    object edtIPAddress: TEdit
      Left = 96
      Top = 243
      Width = 106
      Height = 21
      TabOrder = 7
      Text = '192.168.1.225'
    end
    object edtPort: TEdit
      Left = 96
      Top = 275
      Width = 106
      Height = 21
      TabOrder = 8
      Text = '5005'
    end
  end
  object gb2: TGroupBox
    Left = 264
    Top = 93
    Width = 305
    Height = 150
    Caption = 'Function'
    TabOrder = 3
    object btnSysSettings: TButton
      Left = 11
      Top = 22
      Width = 136
      Height = 25
      Caption = 'System Settings'
      TabOrder = 0
      OnClick = btnSysSettingsClick
    end
    object btnAlarmSettings: TButton
      Left = 157
      Top = 22
      Width = 136
      Height = 25
      Caption = 'Alarm Settings'
      TabOrder = 1
      OnClick = btnAlarmSettingsClick
    end
    object btnMessageSettings: TButton
      Left = 11
      Top = 65
      Width = 136
      Height = 25
      Caption = 'Message Settings'
      TabOrder = 2
      OnClick = btnMessageSettingsClick
    end
    object btnEmp: TButton
      Left = 157
      Top = 65
      Width = 136
      Height = 25
      Caption = 'Empployee Management'
      TabOrder = 3
      OnClick = btnEmpClick
    end
    object btnSLog: TButton
      Left = 11
      Top = 108
      Width = 136
      Height = 25
      Caption = 'SLog Management'
      TabOrder = 4
      OnClick = btnSLogClick
    end
    object btnGLog: TButton
      Left = 157
      Top = 108
      Width = 136
      Height = 25
      Caption = 'GLog Management'
      TabOrder = 5
      OnClick = btnGLogClick
    end
  end
  object btnRealTime: TButton
    Left = 267
    Top = 260
    Width = 136
    Height = 25
    Caption = 'Real Time Log'
    TabOrder = 4
    OnClick = btnRealTimeClick
  end
end
