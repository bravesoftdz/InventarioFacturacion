object FCriterioLibroMayor: TFCriterioLibroMayor
  Left = 227
  Top = 138
  BorderStyle = bsToolWindow
  Caption = 'Libro Mayor'
  ClientHeight = 79
  ClientWidth = 310
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LDepto: TLabel
    Left = 6
    Top = 8
    Width = 105
    Height = 13
    Caption = 'Seleccione La Cuenta'
  end
  object btAceptar: TBitBtn
    Left = 152
    Top = 47
    Width = 75
    Height = 25
    Caption = 'Aceptar'
    TabOrder = 1
    OnClick = btAceptarClick
    Kind = bkOK
  end
  object btCancelar: TBitBtn
    Left = 232
    Top = 47
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    Kind = bkCancel
  end
  object Departamento: TwwDBLookupCombo
    Left = 6
    Top = 22
    Width = 301
    Height = 19
    Ctl3D = False
    CharCase = ecUpperCase
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Descripcion'#9'50'#9'Descripci'#243'n'#9'F'
      'Numero'#9'20'#9'Numero'#9'F'
      'Tipo'#9'25'#9'Tipo'#9'F')
    LookupTable = ModuloContabilidad.tListado_Cuentas
    LookupField = 'Descripcion'
    Options = [loColLines, loRowLines, loTitles, loSearchOnBackspace]
    ParentCtl3D = False
    TabOrder = 0
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
end
