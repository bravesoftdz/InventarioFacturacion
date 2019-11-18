object DlgFecha: TDlgFecha
  Left = 396
  Top = 238
  BorderStyle = bsDialog
  Caption = 'Dialogo Fecha'
  ClientHeight = 196
  ClientWidth = 286
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Seleccion: TRadioGroup
    Left = 9
    Top = 5
    Width = 89
    Height = 107
    Caption = 'Reporte Por'
    ItemIndex = 0
    Items.Strings = (
      '&Periodo'
      '&Mes'
      '&A'#241'o'
      '&Hoy'
      'A&yer'
      '&Todos')
    TabOrder = 0
    OnClick = SeleccionClick
  end
  object Periodo: TGroupBox
    Left = 104
    Top = 5
    Width = 165
    Height = 91
    Caption = 'Per'#237'odo'
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 31
      Height = 13
      Caption = 'Desde'
    end
    object Label2: TLabel
      Left = 8
      Top = 56
      Width = 28
      Height = 13
      Caption = 'Hasta'
    end
    object Inicio: TDateTimePicker
      Left = 46
      Top = 21
      Width = 108
      Height = 20
      Date = 37068.576961689800000000
      Time = 37068.576961689800000000
      TabOrder = 0
    end
    object Fin: TDateTimePicker
      Left = 46
      Top = 52
      Width = 108
      Height = 20
      Date = 37068.576961689800000000
      Time = 37068.576961689800000000
      TabOrder = 1
    end
  end
  object MesAnio: TGroupBox
    Left = 104
    Top = 96
    Width = 165
    Height = 85
    Caption = 'Mes / A'#241'o'
    TabOrder = 2
    object Label3: TLabel
      Left = 8
      Top = 24
      Width = 20
      Height = 13
      Caption = 'Mes'
    end
    object Label4: TLabel
      Left = 8
      Top = 56
      Width = 19
      Height = 13
      Caption = 'A'#241'o'
    end
    object Meses: TComboBox
      Left = 33
      Top = 20
      Width = 121
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Text = 'Meses'
      Items.Strings = (
        'Enero'
        'Febrero'
        'Marzo'
        'Abril'
        'Mayo'
        'Junio'
        'Julio'
        'Agosto'
        'Septiembre'
        'Octubre'
        'Noviembre'
        'Diciembre')
    end
    object Anio: TSpinEdit
      Left = 33
      Top = 51
      Width = 121
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 0
    end
  end
  object BitBtn1: TBitBtn
    Left = 13
    Top = 122
    Width = 75
    Height = 25
    Caption = 'Aceptar'
    TabOrder = 3
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 13
    Top = 154
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    Kind = bkCancel
  end
end
