object FCriterio_Rep_Facturas_NCF: TFCriterio_Rep_Facturas_NCF
  Left = 297
  Top = 68
  BorderStyle = bsToolWindow
  Caption = 'Criterio para Informe de Ventas'
  ClientHeight = 157
  ClientWidth = 322
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
  object Label21: TLabel
    Left = 8
    Top = 85
    Width = 47
    Height = 13
    Caption = 'Tipo NCF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Aceptar: TBitBtn
    Left = 238
    Top = 14
    Width = 75
    Height = 25
    Caption = '&Aceptar'
    ModalResult = 1
    TabOrder = 2
    TabStop = False
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
    Left = 238
    Top = 46
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    TabStop = False
    Kind = bkCancel
  end
  object Clasificacion: TRadioGroup
    Left = 7
    Top = 9
    Width = 229
    Height = 62
    Caption = ' Clasificaci'#243'n '
    ItemIndex = 0
    Items.Strings = (
      'Todas las Facturas'
      'Seleccionar Tipo de Comprobante Fiscal')
    TabOrder = 0
    OnClick = ClasificacionClick
  end
  object TipoNcf: TwwDBLookupCombo
    Left = 8
    Top = 102
    Width = 305
    Height = 19
    Ctl3D = False
    CharCase = ecUpperCase
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Descripcion'#9'35'#9'Descripcion'#9'F'
      'Tipo'#9'2'#9'Tipo'#9'F')
    LookupTable = Modulo.tComprobantes_Fiscales
    LookupField = 'Tipo'
    Options = [loColLines, loRowLines, loTitles, loSearchOnBackspace]
    Style = csDropDownList
    ParentCtl3D = False
    TabOrder = 1
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object chkExportar: TCheckBox
    Left = 8
    Top = 131
    Width = 97
    Height = 17
    Caption = 'Exportar'
    TabOrder = 4
  end
end
