object frmAnadir_Documentos: TfrmAnadir_Documentos
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'A'#241'adir Documentos a la Base de Datos'
  ClientHeight = 218
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 32
    Top = 150
    Width = 36
    Height = 13
    Caption = 'Estatus'
  end
  object Status: TDBText
    Left = 74
    Top = 144
    Width = 166
    Height = 25
    DataField = 'Status'
    DataSource = ModuloGenerales.dDocumentos
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object gbt_Finalizar: TAdvGlowButton
    Left = 388
    Top = 150
    Width = 103
    Height = 39
    Action = Finalizar
    ImageIndex = 67
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
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
    Layout = blGlyphRight
  end
  object gbt_Cancelar: TAdvGlowButton
    Left = 497
    Top = 150
    Width = 103
    Height = 39
    Action = Cancelar
    Cancel = True
    ImageIndex = 68
    ModalResult = 2
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
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
    Layout = blGlyphRight
  end
  object InfoBoard: TW7TaskItem
    Left = 606
    Top = 25
    Width = 178
    Height = 185
    Version = '1.0.1.2'
    ImageIndex = 21
    IconSize = is16px
    Caption = 'Selecci'#243'n de Garantias'
    Description = 
      'Seleccione el tipo de garant'#237'a y luego haga click en el boton SI' +
      'GUIENTE o presione la tecla ENTER'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    DescriptionFont.Charset = DEFAULT_CHARSET
    DescriptionFont.Color = 13395456
    DescriptionFont.Height = -12
    DescriptionFont.Name = 'Segoe UI'
    DescriptionFont.Style = []
    VerticalDelta = 7
    HorizontalDelta = 7
    ParentFont = False
    TabOrder = 3
  end
  object tbcPanel_Datos: TcxTabControl
    Left = 8
    Top = 4
    Width = 593
    Height = 133
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'McSkin'
    Style = 11
    TabIndex = 0
    TabOrder = 0
    Tabs.Strings = (
      'Datos del Documento')
    ClientRectBottom = 129
    ClientRectLeft = 4
    ClientRectRight = 589
    ClientRectTop = 26
    object Label2: TLabel
      Left = 6
      Top = 40
      Width = 65
      Height = 16
      Caption = 'Descripci'#243'n'
      FocusControl = Descripcion
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 67
      Width = 42
      Height = 16
      Caption = 'Archivo'
      FocusControl = Archivo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 95
      Width = 55
      Height = 16
      Caption = 'Categoria'
      FocusControl = Archivo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Descripcion: TDBEdit
      Tag = 1
      Left = 74
      Top = 37
      Width = 513
      Height = 22
      Hint = 'Descripcion del Documento'
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'Nombre'
      DataSource = ModuloGenerales.dDocumentos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object Archivo: TDBEdit
      Tag = 1
      Left = 74
      Top = 64
      Width = 513
      Height = 22
      Hint = 'Nombre Completo del Archivo - Documento'
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'Archivo'
      DataSource = ModuloGenerales.dDocumentos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object bt_Agregar_Renglon: TAdvGlowButton
      Left = 561
      Top = 90
      Width = 26
      Height = 28
      Action = Agregar_Renglon
      ImageIndex = 72
      ImageListType = ipOwnLists
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ShowCaption = False
      ParentShowHint = False
      ShowHint = True
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
    object Companias: TcxDBLookupComboBox
      Left = 74
      Top = 92
      Hint = 'Listado de Categorias'
      TabStop = False
      DataBinding.DataField = 'APLICA'
      DataBinding.DataSource = ModuloGenerales.dDocumentos
      ParentFont = False
      Properties.KeyFieldNames = 'Nombre'
      Properties.ListColumns = <
        item
          FieldName = 'Nombre'
        end
        item
          Caption = 'C'#243'digo'
          FieldName = 'Status'
        end>
      Properties.ListSource = ModuloGenerales.dCategorias
      Properties.ReadOnly = False
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfUltraFlat
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'MoneyTwins'
      Style.ButtonStyle = btsFlat
      Style.ButtonTransparency = ebtAlways
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'MoneyTwins'
      StyleFocused.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'MoneyTwins'
      StyleHot.LookAndFeel.Kind = lfUltraFlat
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'MoneyTwins'
      TabOrder = 3
      Width = 485
    end
  end
  object Template: TDBEdit
    Left = 690
    Top = 115
    Width = 103
    Height = 22
    Hint = 'Nombre Completo del Archivo - Documento'
    TabStop = False
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'Archivo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
    Visible = False
  end
  object Opciones_Pantalla: TActionManager
    Images = Modulo.SystemImages
    Left = 681
    Top = 147
    StyleName = 'Platform Default'
    object Finalizar: TAction
      Caption = 'Finalizar'
      Hint = 'Concluir el Proceso'
      ImageIndex = 67
      OnExecute = FinalizarExecute
    end
    object Cancelar: TAction
      Caption = 'Cancelar'
      Hint = 'Cerrar esta Pantalla y Cancelar el Registro'
      ImageIndex = 68
      ShortCut = 16467
      OnExecute = CancelarExecute
    end
    object Agregar_Renglon: TAction
      Caption = 'Agregar Renglon'
      Hint = 'Agregar Nuevo Renglon'
      ImageIndex = 72
      OnExecute = Agregar_RenglonExecute
    end
  end
end
