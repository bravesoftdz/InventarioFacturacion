object FCriterioDepartamento: TFCriterioDepartamento
  Left = 227
  Top = 138
  BorderStyle = bsToolWindow
  Caption = 'Departamentos'
  ClientHeight = 86
  ClientWidth = 454
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
    Top = 11
    Width = 120
    Height = 13
    Caption = 'Seleccione La Compa'#241#237'a'
  end
  object Label1: TLabel
    Left = 6
    Top = 32
    Width = 135
    Height = 13
    Caption = 'Seleccione El Departamento'
  end
  object btAceptar: TBitBtn
    Left = 294
    Top = 53
    Width = 75
    Height = 25
    Caption = 'Aceptar'
    TabOrder = 1
    OnClick = btAceptarClick
    Kind = bkOK
  end
  object btCancelar: TBitBtn
    Left = 374
    Top = 53
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    Kind = bkCancel
  end
  object Departamento: TwwDBLookupCombo
    Left = 148
    Top = 8
    Width = 301
    Height = 19
    Ctl3D = False
    CharCase = ecUpperCase
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Nombre_Compania'#9'45'#9'Compa'#241#237'a'#9'F'
      'Numero_Compania'#9'10'#9'Numero_Compania'#9'F'
      'RNC'#9'15'#9'RNC'#9'F')
    LookupTable = ModuloNomina.tCompania
    LookupField = 'Numero_Compania'
    Options = [loColLines, loRowLines, loTitles, loSearchOnBackspace]
    ParentCtl3D = False
    TabOrder = 0
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object wwDBLookupCombo1: TwwDBLookupCombo
    Left = 148
    Top = 30
    Width = 301
    Height = 19
    Ctl3D = False
    CharCase = ecUpperCase
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Descripcion'#9'50'#9'Descripci'#243'n'#9'F'
      'Numero'#9'20'#9'Numero'#9'F')
    LookupTable = ModuloNomina.tDepartamentos
    LookupField = 'Descripcion'
    Options = [loColLines, loRowLines, loTitles, loSearchOnBackspace]
    ParentCtl3D = False
    TabOrder = 3
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
end
