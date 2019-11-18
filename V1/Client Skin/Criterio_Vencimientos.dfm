object FCriterio_Vencimientos: TFCriterio_Vencimientos
  Left = 297
  Top = 68
  BorderStyle = bsToolWindow
  Caption = 'Criterio para Informe de Vencimientos'
  ClientHeight = 427
  ClientWidth = 293
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
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Clasificacion: TRadioGroup
    Left = 8
    Top = 2
    Width = 185
    Height = 117
    Caption = ' Clasificaci'#243'n '
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Por Producto'
      'Por Fabricante'
      'Por Proveedor'
      'Por Categoria'
      'Por Departamento')
    TabOrder = 0
  end
  object Criterio: TRadioGroup
    Left = 8
    Top = 120
    Width = 185
    Height = 73
    Caption = ' Criterio '
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Vencidos'
      'Por Vencer en :')
    TabOrder = 1
    OnClick = CriterioClick
  end
  object Dias: TRadioGroup
    Left = 8
    Top = 193
    Width = 185
    Height = 101
    Enabled = False
    ItemIndex = 0
    Items.Strings = (
      'Este Mes'
      'El Pr'#243'ximo Mes'
      'El Mes Pasado'
      'Rango'
      'Este A'#241'o')
    TabOrder = 2
    OnClick = DiasClick
  end
  object BitBtn2: TBitBtn
    Left = 208
    Top = 8
    Width = 75
    Height = 25
    Caption = '&Aceptar'
    ModalResult = 1
    TabOrder = 3
    TabStop = False
    OnClick = BitBtn2Click
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
  object Cancelar: TBitBtn
    Left = 208
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    TabStop = False
    Kind = bkCancel
  end
  object Rango: TGroupBox
    Left = 8
    Top = 294
    Width = 185
    Height = 127
    Ctl3D = True
    Enabled = False
    ParentCtl3D = False
    TabOrder = 5
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 47
      Height = 16
      Caption = 'Desde'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 80
      Width = 42
      Height = 16
      Caption = 'Hasta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object MesInicio: TComboBox
      Left = 88
      Top = 11
      Width = 82
      Height = 21
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 0
      Text = 'Enero'
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
    object AnoInicio: TSpinEdit
      Left = 88
      Top = 35
      Width = 81
      Height = 19
      Ctl3D = False
      MaxValue = 0
      MinValue = 0
      ParentCtl3D = False
      TabOrder = 1
      Value = 0
    end
    object MesFin: TComboBox
      Left = 88
      Top = 69
      Width = 82
      Height = 21
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 2
      Text = 'Enero'
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
    object AnoFin: TSpinEdit
      Left = 88
      Top = 93
      Width = 81
      Height = 19
      Ctl3D = False
      MaxValue = 0
      MinValue = 0
      ParentCtl3D = False
      TabOrder = 3
      Value = 0
    end
  end
end
