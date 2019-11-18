object fResumen_Operaciones: TfResumen_Operaciones
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Resumen de Operaciones Periodicas'
  ClientHeight = 407
  ClientWidth = 819
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    819
    407)
  PixelsPerInch = 96
  TextHeight = 13
  object Titulo: TLabel
    Left = 8
    Top = 8
    Width = 35
    Height = 16
    Caption = 'Titulo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 500
    Top = 282
    Width = 135
    Height = 19
    Caption = 'Total Ingresado '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Total_Ingresado: TLabel
    Left = 645
    Top = 283
    Width = 145
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object TotalOperacion: TLabel
    Left = 212
    Top = 283
    Width = 145
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 14
    Top = 282
    Width = 178
    Height = 19
    Caption = 'Total de Operaciones '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 190
    Top = 282
    Width = 16
    Height = 19
    Caption = ' : '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 630
    Top = 282
    Width = 16
    Height = 19
    Caption = ' : '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 500
    Top = 307
    Width = 128
    Height = 19
    Caption = 'Total Egresado '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Total_Egresado: TLabel
    Left = 645
    Top = 308
    Width = 145
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 630
    Top = 307
    Width = 16
    Height = 19
    Caption = ' : '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object TotalGeneral: TLabel
    Left = 645
    Top = 365
    Width = 145
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 500
    Top = 365
    Width = 43
    Height = 19
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 630
    Top = 365
    Width = 16
    Height = 19
    Caption = ' : '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape1: TShape
    Left = 466
    Top = 358
    Width = 343
    Height = 3
  end
  object Label6: TLabel
    Left = 500
    Top = 332
    Width = 120
    Height = 19
    Caption = 'Notas Creditos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Total_Creditos: TLabel
    Left = 645
    Top = 333
    Width = 145
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 630
    Top = 332
    Width = 16
    Height = 19
    Caption = ' : '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object grdResumen: TwwDBGrid
    Left = 7
    Top = 32
    Width = 802
    Height = 241
    Selected.Strings = (
      'Concepto'#9'30'#9'Concepto'#9'F'
      'Monto'#9'15'#9'Monto'#9'F'
      'Pagado'#9'15'#9'Recibido'#9'F'
      'Pendiente'#9'15'#9'Pendiente'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Ctl3D = False
    DataSource = Modulo.dResumenes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    KeyOptions = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
    UseTFields = False
    PaintOptions.AlternatingRowColor = clYellow
  end
  object gbt_Aceptar: TAdvGlowButton
    Left = 14
    Top = 369
    Width = 126
    Height = 30
    Anchors = [akRight, akBottom]
    Caption = 'Imprimir'
    Default = True
    ImageIndex = 5
    Images = Modulo.SystemImages
    ModalResult = 1
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    Rounded = False
    TabOrder = 1
    TabStop = True
    Appearance.ColorChecked = 16111818
    Appearance.ColorCheckedTo = 16367008
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 16111818
    Appearance.ColorDownTo = 16367008
    Appearance.ColorHot = 16117985
    Appearance.ColorHotTo = 16372402
    Appearance.ColorMirrorHot = 16107693
    Appearance.ColorMirrorHotTo = 16775412
    Appearance.ColorMirrorDown = 16102556
    Appearance.ColorMirrorDownTo = 16768988
    Appearance.ColorMirrorChecked = 16102556
    Appearance.ColorMirrorCheckedTo = 16768988
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
  end
  object AdvGlowButton1: TAdvGlowButton
    Left = 144
    Top = 369
    Width = 126
    Height = 30
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Cerrar'
    ImageIndex = 16
    Images = Modulo.SystemImages
    ModalResult = 2
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    Rounded = False
    TabOrder = 2
    TabStop = True
    Appearance.ColorChecked = 16111818
    Appearance.ColorCheckedTo = 16367008
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 16111818
    Appearance.ColorDownTo = 16367008
    Appearance.ColorHot = 16117985
    Appearance.ColorHotTo = 16372402
    Appearance.ColorMirrorHot = 16107693
    Appearance.ColorMirrorHotTo = 16775412
    Appearance.ColorMirrorDown = 16102556
    Appearance.ColorMirrorDownTo = 16768988
    Appearance.ColorMirrorChecked = 16102556
    Appearance.ColorMirrorCheckedTo = 16768988
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
  end
end
