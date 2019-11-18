object frmSeleccionar_Documentos: TfrmSeleccionar_Documentos
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Seleccion de Documentos'
  ClientHeight = 403
  ClientWidth = 615
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object gbt_Finalizar: TAdvGlowButton
    Left = 213
    Top = 358
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
    Left = 322
    Top = 358
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
    Left = 431
    Top = 25
    Width = 178
    Height = 297
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
    Width = 417
    Height = 348
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'McSkin'
    Style = 11
    TabIndex = 0
    TabOrder = 0
    Tabs.Strings = (
      'Listado de Documentos')
    ClientRectBottom = 344
    ClientRectLeft = 4
    ClientRectRight = 413
    ClientRectTop = 26
    object Archivo: TDBEdit
      Tag = 1
      Left = 6
      Top = 323
      Width = 406
      Height = 21
      Hint = 'Nombre Completo del Archivo - Documento'
      TabStop = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'Archivo'
      DataSource = ModuloGenerales.dDocumentos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object grdDocumentos: TcxGrid
      Left = 6
      Top = 32
      Width = 406
      Height = 287
      TabOrder = 0
      OnEnter = NoCursor
      OnExit = SetCursor
      LookAndFeel.NativeStyle = False
      object grdDocumentosTV: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ModuloGenerales.dDocumentos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DateTimeHandling.UseLongDateFormat = False
        OptionsBehavior.IncSearch = True
        OptionsBehavior.IncSearchItem = grdDocumentosTVNombre
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.NoDataToDisplayInfoText = 'no existen documentos para mostrar'
        OptionsView.GroupByBox = False
        Styles.OnGetContentStyle = grdDocumentosTVStylesGetContentStyle
        object grdDocumentosTVSelected: TcxGridDBColumn
          DataBinding.FieldName = 'Selected'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueGrayed = 'False'
          Width = 25
        end
        object grdDocumentosTVNombre: TcxGridDBColumn
          Caption = 'Categor'#237'as Disponibles'
          DataBinding.FieldName = 'Nombre'
          Options.Editing = False
          Width = 360
        end
      end
      object grdDocumentosLevel: TcxGridLevel
        GridView = grdDocumentosTV
      end
    end
  end
  object Opciones_Pantalla: TActionManager
    Images = Modulo.SystemImages
    Left = 506
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
  end
end
