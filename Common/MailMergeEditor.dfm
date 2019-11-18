object frmEditor_Documentos: TfrmEditor_Documentos
  Left = 47
  Top = 159
  CustomHint = TheBalloonHint
  ActiveControl = wp_editor
  Caption = 'Edici'#243'n de Documentos'
  ClientHeight = 727
  ClientWidth = 953
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pg_Editor: TPageControl
    Left = 0
    Top = 0
    Width = 953
    Height = 727
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    CustomHint = TheBalloonHint
    ActivePage = pg_Text_Editor
    Align = alClient
    TabOrder = 0
    object pg_Text_Editor: TTabSheet
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      CustomHint = TheBalloonHint
      Caption = 'Estructura del Documento'
      object pnl_Editor: TPanel
        Left = 0
        Top = 0
        Width = 945
        Height = 699
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        CustomHint = TheBalloonHint
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object wp_editor: TWPRichText
          Left = 26
          Top = 106
          Width = 739
          Height = 539
          Cursor = crIBeam
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          CustomHint = TheBalloonHint
          Header.DefaultTabstop = 254
          RTFVariables = <>
          SpellCheckStrategie = wpspCheckInInit
          WPToolBar = wp_Barra_Opciones
          WPRuler = wp_Horiz_Ruler
          VRuler = wp_VertRuler
          GraphicPopupMenu = WPDefAct.GraphicPopupMenu
          ActionList = WPDefAct.StdActions
          OnChange = wp_editorChange
          OnChangeZooming = wp_editorChangeZooming
          XOffset = 144
          YOffset = 141
          XBetween = 144
          YBetween = 144
          LayoutMode = wplayFullLayout
          PaperColor = clWhite
          ColorDesktop = clMoneyGreen
          ScrollBars = ssBoth
          EditOptions = [wpTableResizing, wpTableColumnResizing, wpTableRowResizing, wpObjectMoving, wpObjectResizingWidth, wpObjectResizingHeight, wpObjectResizingKeepRatio, wpObjectSelecting, wpObjectDeletion, wpSpreadsheetCursorMovement, wpActivateUndo, wpActivateUndoHotkey, wpActivateRedo, wpActivateRedoHotkey, wpMoveCPOnPageUpDown, wpAutoDetectHyperlinks, wpAllowCreateTableInTable]
          EditOptionsEx = [wpTextObjectMoving, wpTextObjectSelecting, wpZoomWithMouseWheel, wpTableRowResizingWithCTRL, wpAutoCaptitalize]
          ViewOptions = [wpShowGridlines, wpTraditionalMisspellMarkers]
          FormatOptions = [wpDisableAutosizeTables]
          FormatOptionsEx = []
          AcceptFiles = True
          AcceptFilesOptions = [wpDropCreatesMovableParObject]
          ProtectedProp = []
          HyperLinkCursor = crArrow
          TextObjectCursor = crHandPoint
          InsertPointAttr.Bold = tsIgnore
          InsertPointAttr.Italic = tsIgnore
          InsertPointAttr.DoubleUnderline = False
          InsertPointAttr.Underline = tsIgnore
          InsertPointAttr.StrikeOut = tsIgnore
          InsertPointAttr.StrikeOutColor = clBlack
          InsertPointAttr.SuperScript = tsIgnore
          InsertPointAttr.SubScript = tsIgnore
          InsertPointAttr.Hidden = False
          InsertPointAttr.UnderlineColor = clBlack
          InsertPointAttr.TextColor = clRed
          InsertPointAttr.BackgroundColor = 13041663
          InsertPointAttr.UseUnderlineColor = False
          InsertPointAttr.UseTextColor = True
          InsertPointAttr.UseBackgroundColor = True
          InsertPointAttr.HotEffect = wpeffOutline
          InsertPointAttr.HotStyleIsActive = True
          InsertPointAttr.HotEffectColor = 33023
          HyperlinkTextAttr.Bold = tsIgnore
          HyperlinkTextAttr.Italic = tsIgnore
          HyperlinkTextAttr.DoubleUnderline = False
          HyperlinkTextAttr.Underline = tsIgnore
          HyperlinkTextAttr.StrikeOut = tsIgnore
          HyperlinkTextAttr.StrikeOutColor = clBlack
          HyperlinkTextAttr.SuperScript = tsIgnore
          HyperlinkTextAttr.SubScript = tsIgnore
          HyperlinkTextAttr.Hidden = False
          HyperlinkTextAttr.UnderlineColor = clBlue
          HyperlinkTextAttr.TextColor = clBlack
          HyperlinkTextAttr.BackgroundColor = clBlack
          HyperlinkTextAttr.UseUnderlineColor = False
          HyperlinkTextAttr.UseTextColor = False
          HyperlinkTextAttr.UseBackgroundColor = False
          HyperlinkTextAttr.HotUnderlineColor = clRed
          HyperlinkTextAttr.HotBackgroundColor = clNavy
          HyperlinkTextAttr.UseHotBackgroundColor = True
          HyperlinkTextAttr.HotTextColor = clRed
          HyperlinkTextAttr.HotUnderline = tsTRUE
          HyperlinkTextAttr.HotStyleIsActive = True
          BookmarkTextAttr.Bold = tsIgnore
          BookmarkTextAttr.Italic = tsIgnore
          BookmarkTextAttr.DoubleUnderline = False
          BookmarkTextAttr.Underline = tsIgnore
          BookmarkTextAttr.StrikeOut = tsIgnore
          BookmarkTextAttr.StrikeOutColor = clBlack
          BookmarkTextAttr.SuperScript = tsIgnore
          BookmarkTextAttr.SubScript = tsIgnore
          BookmarkTextAttr.Hidden = False
          BookmarkTextAttr.UnderlineColor = clBlack
          BookmarkTextAttr.TextColor = clBlack
          BookmarkTextAttr.BackgroundColor = clBlack
          BookmarkTextAttr.UseUnderlineColor = False
          BookmarkTextAttr.UseTextColor = False
          BookmarkTextAttr.UseBackgroundColor = False
          SPANObjectTextAttr.Bold = tsIgnore
          SPANObjectTextAttr.Italic = tsIgnore
          SPANObjectTextAttr.DoubleUnderline = False
          SPANObjectTextAttr.Underline = tsIgnore
          SPANObjectTextAttr.StrikeOut = tsIgnore
          SPANObjectTextAttr.StrikeOutColor = clBlack
          SPANObjectTextAttr.SuperScript = tsIgnore
          SPANObjectTextAttr.SubScript = tsIgnore
          SPANObjectTextAttr.Hidden = False
          SPANObjectTextAttr.UnderlineColor = clBlack
          SPANObjectTextAttr.TextColor = clBlack
          SPANObjectTextAttr.BackgroundColor = clBlack
          SPANObjectTextAttr.UseUnderlineColor = False
          SPANObjectTextAttr.UseTextColor = False
          SPANObjectTextAttr.UseBackgroundColor = False
          HiddenTextAttr.Bold = tsIgnore
          HiddenTextAttr.Italic = tsIgnore
          HiddenTextAttr.DoubleUnderline = False
          HiddenTextAttr.Underline = tsIgnore
          HiddenTextAttr.StrikeOut = tsIgnore
          HiddenTextAttr.StrikeOutColor = clBlack
          HiddenTextAttr.SuperScript = tsIgnore
          HiddenTextAttr.SubScript = tsIgnore
          HiddenTextAttr.Hidden = True
          HiddenTextAttr.UnderlineColor = clBlack
          HiddenTextAttr.TextColor = clBlack
          HiddenTextAttr.BackgroundColor = clBlack
          HiddenTextAttr.UseUnderlineColor = False
          HiddenTextAttr.UseTextColor = False
          HiddenTextAttr.UseBackgroundColor = False
          AutomaticTextAttr.Bold = tsIgnore
          AutomaticTextAttr.Italic = tsIgnore
          AutomaticTextAttr.DoubleUnderline = False
          AutomaticTextAttr.Underline = tsIgnore
          AutomaticTextAttr.StrikeOut = tsIgnore
          AutomaticTextAttr.StrikeOutColor = clBlack
          AutomaticTextAttr.SuperScript = tsIgnore
          AutomaticTextAttr.SubScript = tsIgnore
          AutomaticTextAttr.Hidden = False
          AutomaticTextAttr.UnderlineColor = clBlack
          AutomaticTextAttr.TextColor = clBlack
          AutomaticTextAttr.BackgroundColor = clBlack
          AutomaticTextAttr.UseUnderlineColor = False
          AutomaticTextAttr.UseTextColor = False
          AutomaticTextAttr.UseBackgroundColor = False
          AutomaticTextAttr.HotBackgroundColor = 33023
          AutomaticTextAttr.UseHotBackgroundColor = True
          AutomaticTextAttr.HotEffect = wpeffOutline
          AutomaticTextAttr.HotStyleIsActive = True
          AutomaticTextAttr.OnHintEventIsActive = True
          AutomaticTextAttr.HotEffectColor = clYellow
          ProtectedTextAttr.Bold = tsIgnore
          ProtectedTextAttr.Italic = tsIgnore
          ProtectedTextAttr.DoubleUnderline = False
          ProtectedTextAttr.Underline = tsIgnore
          ProtectedTextAttr.StrikeOut = tsIgnore
          ProtectedTextAttr.StrikeOutColor = clBlack
          ProtectedTextAttr.SuperScript = tsIgnore
          ProtectedTextAttr.SubScript = tsIgnore
          ProtectedTextAttr.Hidden = False
          ProtectedTextAttr.UnderlineColor = clBlack
          ProtectedTextAttr.TextColor = clBlack
          ProtectedTextAttr.BackgroundColor = clBlack
          ProtectedTextAttr.UseUnderlineColor = False
          ProtectedTextAttr.UseTextColor = False
          ProtectedTextAttr.UseBackgroundColor = False
          FieldObjectTextAttr.Bold = tsIgnore
          FieldObjectTextAttr.Italic = tsIgnore
          FieldObjectTextAttr.DoubleUnderline = False
          FieldObjectTextAttr.Underline = tsIgnore
          FieldObjectTextAttr.StrikeOut = tsIgnore
          FieldObjectTextAttr.StrikeOutColor = clBlack
          FieldObjectTextAttr.SuperScript = tsIgnore
          FieldObjectTextAttr.SubScript = tsIgnore
          FieldObjectTextAttr.Hidden = False
          FieldObjectTextAttr.UnderlineColor = clBlack
          FieldObjectTextAttr.TextColor = clBlack
          FieldObjectTextAttr.BackgroundColor = clBlack
          FieldObjectTextAttr.UseUnderlineColor = False
          FieldObjectTextAttr.UseTextColor = False
          FieldObjectTextAttr.UseBackgroundColor = False
          WriteObjectMode = wobStandardAndRTF
          ClickableCodes = [wpobjMergeField]
          OneClickHyperlink = False
          OnMailMergeGetText = wp_editorMailMergeGetText
          OnActivatingHotStyle = wp_EditorActivatingHotStyle
          OnDeactivateHotStyle = wp_EditorDeactivateHotStyle
          ViewOptionsEx = [wpAlwaysDrawTextboxAnchors]
          Align = alClient
          ParentColor = False
          TabOrder = 0
          OnPaint = wp_editorPaint
        end
        object wp_Barra_Opciones: TWPToolBar
          Left = 0
          Top = 31
          Width = 945
          Height = 49
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          CustomHint = TheBalloonHint
          ParentColor = False
          AutoSize = True
          UseDockManager = False
          KeepGroupsTogether = True
          Align = alTop
          ParentShowHint = False
          ShowHint = True
          BevelLines = [wplBottom]
          BevelInner = bvSpace
          AutoEnabling = True
          BevelOuter = bvNone
          WidthBetweenGroups = 4
          FontChoice = fsPrinterFonts
          ShowFont = True
          sel_ListBoxes = [SelFontName, SelFontSize, SelFontColor, SelBackgroundColor, SelStyle, SelParColor]
          sel_StatusIcons = [SelNormal, SelBold, SelItalic, SelUnder, SelSuper, SelSub, SelLeft, SelRight, SelBlock, SelCenter]
          sel_ActionIcons = [SelFitWidth, SelFitHeight]
          sel_DatabaseIcons = []
          sel_EditIcons = [SelUndo, SelRedo, SelCopy, SelCut, SelPaste, SelSelAll, SelFind, SelReplace, SelSpellCheck]
          sel_TableIcons = [SelCreateTable, SelSplitCell, SelCombineCell, SelBAllOff, SelBAllOn, SelBInner, SelBOuter, SelBLeft, SelBRight, SelBTop, SelBBottom]
          sel_OutlineIcons = [SelBullets, SelNumbers, SelNextLevel, SelPriorLevel]
          FontSizeFrom = 8
          FlatButtons = True
          ButtonHeight = 0
          NoEditItemsInStyleList = False
          TrueTypeOnly = False
          NextToolBar = wp_Barra_Opciones_Adicionales
          object bt_Estilos: TWPToolButton
            Left = 539
            Top = 25
            Width = 29
            Height = 24
            CustomHint = TheBalloonHint
            Action = Estilos
            Enabled = False
            Flat = True
            StyleGroup = 1280
            StyleNumber = 1
            UseOwnGylph = False
          end
        end
        object wp_Horiz_Ruler: TWPRuler
          Left = 0
          Top = 80
          Width = 945
          Height = 26
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          CustomHint = TheBalloonHint
          Units = wrCentimeter
          DrawOptions = []
          TabKind = tkLeft
          Options = [wrShowTabSelector, wrShowTabStops, wrShowIndents, wpUseIntervalls, wpNoVertRulerAttached]
          ColorMargin = clAppWorkSpace
          ColorBack = clBtnFace
          ColorTableMarker = clBtnShadow
          Align = alTop
          OnDblClick = wp_Horiz_RulerDblClick
        end
        object wp_VertRuler: TWPVertRuler
          Left = 0
          Top = 106
          Width = 26
          Height = 539
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          CustomHint = TheBalloonHint
          Units = wrCentimeter
          DrawOptions = []
          ColorMargin = clAppWorkSpace
          ColorBack = clBtnFace
          OnDblClick = wp_VertRulerDblClick
        end
        object adv_OptionPanel: TAdvToolPanel
          Left = 765
          Top = 106
          Width = 180
          Height = 539
          CustomHint = TheBalloonHint
          Align = alRight
          BackgroundTransparent = False
          BackGroundPosition = bpTopLeft
          Button3D = False
          HoverButtonColor = 14483455
          HoverButtonColorTo = 6013175
          DownButtonColor = 557032
          DownButtonColorTo = 8182519
          CaptionButton = False
          Color = 16774371
          ColorTo = 15587784
          GradientDirection = gdVertical
          DockDots = False
          CanSize = False
          Caption = 'Panel de Opciones'
          CaptionGradientDirection = gdVertical
          ImageIndex = 5
          FocusCaptionFontColor = 7485192
          FocusCaptionColor = 12316415
          FocusCaptionColorTo = 7920383
          NoFocusCaptionFontColor = 7485192
          NoFocusCaptionColor = 16773091
          NoFocusCaptionColorTo = 16765615
          CloseHint = 'Close panel'
          LockHint = 'Lock panel'
          UnlockHint = 'Unlock panel'
          Sections = <
            item
              Autosize = False
              Caption = 'Opciones'
              Draw = True
              SectionItems = <>
              Height = 420
              CaptionImageIndex = -1
            end>
          SectionLayout.CaptionColor = 16635575
          SectionLayout.CaptionColorTo = 13146742
          SectionLayout.CaptionFontColor = clBlack
          SectionLayout.CaptionRounded = False
          SectionLayout.Corners = scRectangle
          SectionLayout.BackGroundColor = 16248798
          SectionLayout.BackGroundColorTo = 16242365
          SectionLayout.BorderColor = 16765615
          SectionLayout.BorderWidth = 1
          SectionLayout.CaptionGradientDir = gdVertical
          SectionLayout.BackGroundGradientDir = gdVertical
          SectionLayout.Indent = 4
          SectionLayout.Spacing = 4
          SectionLayout.ItemFontColor = 11876608
          SectionLayout.ItemHoverTextColor = 11876608
          SectionLayout.ItemHoverUnderline = True
          SectionLayout.UnderLineCaption = False
          ShowCaption = False
          ShowCaptionBorder = False
          ShowClose = False
          ShowLock = False
          Style = esOffice2007Luna
          Version = '1.5.5.0'
          object Label1: TLabel
            Left = 79
            Top = 59
            Width = 95
            Height = 13
            CustomHint = TheBalloonHint
            Caption = 'Campos Disponibles'
          end
          object Label2: TLabel
            Left = 82
            Top = 299
            Width = 92
            Height = 13
            CustomHint = TheBalloonHint
            Caption = 'Campos Especiales'
          end
          object InfoBoard: TW7TaskItem
            Left = 5
            Top = 420
            Width = 172
            Height = 139
            CustomHint = TheBalloonHint
            Version = '1.0.1.2'
            ImageIndex = 68
            IconSize = is16px
            Caption = 'Actualizaci'#243'n'
            Description = 'Task description'
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
            TabOrder = 0
            OnDblClick = Merge_DataExecute
          end
          object Listado_Campos: TcxListBox
            Left = 10
            Top = 72
            Width = 164
            Height = 211
            CustomHint = TheBalloonHint
            ItemHeight = 13
            ParentFont = False
            TabOrder = 1
            OnDblClick = Insertar_CampoExecute
          end
          object Tablas: TcxComboBox
            Left = 10
            Top = 20
            CustomHint = TheBalloonHint
            ParentFont = False
            Properties.OnCloseUp = TablasPropertiesCloseUp
            TabOrder = 2
            Text = 'Tablas'
            Width = 164
          end
          object bt_Insertar_Campos: TAdvGlowButton
            Left = 10
            Top = 42
            Width = 26
            Height = 28
            CustomHint = TheBalloonHint
            Action = Insertar_Campo
            ImageIndex = 62
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ShowCaption = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
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
          object bt_Quitar_Campos: TAdvGlowButton
            Left = 42
            Top = 284
            Width = 26
            Height = 28
            CustomHint = TheBalloonHint
            Action = Quitar_Campos
            ImageIndex = 4
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ShowCaption = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
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
          object chk_Mostrar_Campos: TcxCheckBox
            Left = 10
            Top = 397
            CustomHint = TheBalloonHint
            Caption = 'Mostrar Campos'
            ParentFont = False
            TabOrder = 5
            Transparent = True
            OnClick = ShowFieldsClick
            Width = 103
          end
          object Modulos: TcxComboBox
            Left = 120
            Top = 0
            CustomHint = TheBalloonHint
            ParentFont = False
            Properties.OnCloseUp = TablasPropertiesCloseUp
            TabOrder = 6
            Text = 'Modulos'
            Visible = False
            Width = 57
          end
          object gbt_Salir: TAdvGlowButton
            Left = 1
            Top = 508
            Width = 178
            Height = 30
            CustomHint = TheBalloonHint
            Align = alBottom
            Action = Salir
            ImageIndex = 10
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            Transparent = True
            WordWrap = False
            TabOrder = 7
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
            Layout = blGlyphLeftAdjusted
          end
          object Campos_Especiales: TcxListBox
            Left = 10
            Top = 312
            Width = 164
            Height = 84
            CustomHint = TheBalloonHint
            ItemHeight = 13
            Items.Strings = (
              'Archivo de Imagen'
              'Archivo del Padron'
              'Fecha del Sistema'
              'Hora del Sistema'
              'Terminal'
              'Usuario')
            ParentFont = False
            TabOrder = 8
            OnDblClick = Insertar_Campo_EspecialExecute
          end
          object bt_Insertar_Campos_Especiales: TAdvGlowButton
            Left = 10
            Top = 284
            Width = 26
            Height = 28
            CustomHint = TheBalloonHint
            Action = Insertar_Campo_Especial
            ImageIndex = 62
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ShowCaption = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 9
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
        object wp_Barra_Opciones_Adicionales: TWPToolBar
          Left = 0
          Top = 645
          Width = 945
          Height = 28
          CustomHint = TheBalloonHint
          UseDockManager = False
          KeepGroupsTogether = True
          Align = alBottom
          Locked = True
          ParentShowHint = False
          ShowHint = True
          Enabled = False
          BevelLines = [wplTop, wplBottom]
          AutoEnabling = True
          WidthBetweenGroups = 4
          FontChoice = fsPrinterFonts
          sel_ListBoxes = []
          sel_StatusIcons = []
          sel_ActionIcons = [SelPrintSetup, SelZoomIn, SelZoomOut, SelNextPage, SelPriorPage]
          sel_DatabaseIcons = []
          sel_EditIcons = []
          sel_TableIcons = [SelSelRow, SelInsRow, SelDelRow, SelInsCol, SelDelCol, SelSelCol, SelSplitCell, SelCombineCell]
          sel_OutlineIcons = []
          FontSizeFrom = 8
          FlatButtons = True
          ButtonHeight = 0
          NoEditItemsInStyleList = False
          TrueTypeOnly = False
          ExplicitTop = 665
        end
        object EditorStatusPanel: TAdvOfficeStatusBar
          Left = 0
          Top = 673
          Width = 945
          Height = 26
          CustomHint = TheBalloonHint
          AnchorHint = False
          Panels = <
            item
              Animated = True
              AppearanceStyle = psLight
              DateFormat = 'M/d/yyyy'
              Progress.BackGround = clNone
              Progress.Indication = piPercentage
              Progress.Min = 0
              Progress.Max = 100
              Progress.Position = 0
              Progress.Level0Color = clLime
              Progress.Level0ColorTo = 14811105
              Progress.Level1Color = clYellow
              Progress.Level1ColorTo = 13303807
              Progress.Level2Color = 5483007
              Progress.Level2ColorTo = 11064319
              Progress.Level3Color = clRed
              Progress.Level3ColorTo = 13290239
              Progress.Level1Perc = 70
              Progress.Level2Perc = 90
              Progress.BorderColor = clBlack
              Progress.ShowBorder = False
              Progress.Stacked = False
              Style = psText
              Text = 'Path'
              TimeFormat = 'h:mm:ss AMPM'
              Width = 730
            end
            item
              AppearanceStyle = psDark
              DateFormat = 'M/d/yyyy'
              Progress.BackGround = clNone
              Progress.Indication = piPercentage
              Progress.Min = 0
              Progress.Max = 100
              Progress.Position = 0
              Progress.Level0Color = clLime
              Progress.Level0ColorTo = 14811105
              Progress.Level1Color = clYellow
              Progress.Level1ColorTo = 13303807
              Progress.Level2Color = 5483007
              Progress.Level2ColorTo = 11064319
              Progress.Level3Color = clRed
              Progress.Level3ColorTo = 13290239
              Progress.Level1Perc = 70
              Progress.Level2Perc = 90
              Progress.BorderColor = clBlack
              Progress.ShowBorder = False
              Progress.Stacked = False
              Style = psText
              Text = 'Nuevo'
              TimeFormat = 'h:mm:ss AMPM'
              Width = 110
            end
            item
              AppearanceStyle = psDark
              DateFormat = 'M/d/yyyy'
              Progress.BackGround = clNone
              Progress.Indication = piPercentage
              Progress.Min = 0
              Progress.Max = 100
              Progress.Position = 0
              Progress.Level0Color = clLime
              Progress.Level0ColorTo = 14811105
              Progress.Level1Color = clYellow
              Progress.Level1ColorTo = 13303807
              Progress.Level2Color = 5483007
              Progress.Level2ColorTo = 11064319
              Progress.Level3Color = clRed
              Progress.Level3ColorTo = 13290239
              Progress.Level1Perc = 70
              Progress.Level2Perc = 90
              Progress.BorderColor = clBlack
              Progress.ShowBorder = False
              Progress.Stacked = False
              Style = psNumLock
              Text = 'NUM'
              TimeFormat = 'h:mm:ss AMPM'
              Width = 50
            end
            item
              AppearanceStyle = psLight
              DateFormat = 'M/d/yyyy'
              Progress.BackGround = clNone
              Progress.Indication = piPercentage
              Progress.Min = 0
              Progress.Max = 100
              Progress.Position = 0
              Progress.Level0Color = clLime
              Progress.Level0ColorTo = 14811105
              Progress.Level1Color = clYellow
              Progress.Level1ColorTo = 13303807
              Progress.Level2Color = 5483007
              Progress.Level2ColorTo = 11064319
              Progress.Level3Color = clRed
              Progress.Level3ColorTo = 13290239
              Progress.Level1Perc = 70
              Progress.Level2Perc = 90
              Progress.BorderColor = clBlack
              Progress.ShowBorder = False
              Progress.Stacked = False
              Style = psCapsLock
              TimeFormat = 'h:mm:ss'
              Width = 50
            end
            item
              AppearanceStyle = psLight
              DateFormat = 'M/d/yyyy'
              Progress.BackGround = clNone
              Progress.Indication = piPercentage
              Progress.Min = 0
              Progress.Max = 100
              Progress.Position = 0
              Progress.Level0Color = clLime
              Progress.Level0ColorTo = 14811105
              Progress.Level1Color = clYellow
              Progress.Level1ColorTo = 13303807
              Progress.Level2Color = 5483007
              Progress.Level2ColorTo = 11064319
              Progress.Level3Color = clRed
              Progress.Level3ColorTo = 13290239
              Progress.Level1Perc = 70
              Progress.Level2Perc = 90
              Progress.BorderColor = clBlack
              Progress.ShowBorder = False
              Progress.Stacked = False
              Text = 'x/y'
              TimeFormat = 'h:mm:ss'
              Width = 50
            end>
          ShowSplitter = True
          SimplePanel = False
          URLColor = clBlue
          Version = '1.4.1.0'
        end
        object advOpciones_Basicas: TAdvToolPanel
          Left = 0
          Top = 0
          Width = 945
          Height = 31
          CustomHint = TheBalloonHint
          Align = alTop
          BackgroundTransparent = False
          BackGroundPosition = bpTopLeft
          Button3D = False
          HoverButtonColor = 14483455
          HoverButtonColorTo = 6013175
          DownButtonColor = 557032
          DownButtonColorTo = 8182519
          CaptionButton = False
          Color = 16774371
          ColorTo = 15587784
          GradientDirection = gdVertical
          DockDots = True
          CaptionGradientDirection = gdVertical
          FocusCaptionFontColor = 7485192
          FocusCaptionColor = 12316415
          FocusCaptionColorTo = 7920383
          NoFocusCaptionFontColor = 7485192
          NoFocusCaptionColor = 16773091
          NoFocusCaptionColorTo = 16765615
          CloseHint = 'Close panel'
          LockHint = 'Lock panel'
          UnlockHint = 'Unlock panel'
          Sections = <>
          SectionLayout.CaptionColor = 16635575
          SectionLayout.CaptionColorTo = 13146742
          SectionLayout.CaptionFontColor = clBlack
          SectionLayout.CaptionRounded = False
          SectionLayout.Corners = scRectangle
          SectionLayout.BackGroundColor = 16248798
          SectionLayout.BackGroundColorTo = 16242365
          SectionLayout.BorderColor = 16765615
          SectionLayout.BorderWidth = 1
          SectionLayout.CaptionGradientDir = gdVertical
          SectionLayout.BackGroundGradientDir = gdVertical
          SectionLayout.Indent = 4
          SectionLayout.Spacing = 4
          SectionLayout.ItemFontColor = 11876608
          SectionLayout.ItemHoverTextColor = 11876608
          SectionLayout.ItemHoverUnderline = True
          SectionLayout.UnderLineCaption = False
          ShowCaption = False
          ShowCaptionBorder = False
          Style = esOffice2007Luna
          Version = '1.5.5.0'
          object bt_Nuevo: TWPToolButton
            Left = 4
            Top = 0
            Width = 31
            Height = 29
            CustomHint = TheBalloonHint
            Action = Nuevo
            Flat = True
            StyleGroup = 1280
            StyleNumber = 1
            UseOwnGylph = False
          end
          object bt_Guardar: TWPToolButton
            Left = 41
            Top = 0
            Width = 31
            Height = 29
            CustomHint = TheBalloonHint
            Action = Guardar
            Flat = True
            StyleGroup = 1280
            StyleNumber = 1
            UseOwnGylph = False
          end
          object bt_Abrir: TWPToolButton
            Left = 78
            Top = 0
            Width = 31
            Height = 29
            CustomHint = TheBalloonHint
            Action = Abrir
            Flat = True
            StyleGroup = 1280
            StyleNumber = 1
            UseOwnGylph = False
          end
          object bt_Guardar_Como: TWPToolButton
            Left = 189
            Top = 0
            Width = 118
            Height = 29
            CustomHint = TheBalloonHint
            Action = Guardar_Como
            Flat = True
            StyleGroup = 1280
            StyleNumber = 1
            UseOwnGylph = False
          end
          object WPToolButton1: TWPToolButton
            Left = 115
            Top = 0
            Width = 31
            Height = 29
            CustomHint = TheBalloonHint
            Action = Print_
            Flat = True
            StyleGroup = 1280
            StyleNumber = 1
            UseOwnGylph = False
          end
          object bt_Cerrar: TWPToolButton
            Left = 152
            Top = 0
            Width = 31
            Height = 29
            CustomHint = TheBalloonHint
            Action = Cerrar
            Flat = True
            StyleGroup = 1280
            StyleNumber = 1
            UseOwnGylph = False
          end
          object bt_Insertar_Simbolo: TWPToolButton
            Left = 714
            Top = 0
            Width = 31
            Height = 29
            CustomHint = TheBalloonHint
            Action = Insertar_Simbolos
            Flat = True
            StyleGroup = 0
            StyleNumber = 0
            UseOwnGylph = False
          end
          object bt_Formato_Parrafos: TWPToolButton
            Left = 743
            Top = 0
            Width = 31
            Height = 29
            CustomHint = TheBalloonHint
            Action = Formato_Parrafos
            Flat = True
            StyleGroup = 0
            StyleNumber = 0
            UseOwnGylph = False
          end
          object bt_Insertar_Imagen: TWPToolButton
            Left = 772
            Top = 0
            Width = 31
            Height = 29
            CustomHint = TheBalloonHint
            Action = Insertar_Imagen
            Flat = True
            NumGlyphs = 2
            StyleGroup = 0
            StyleNumber = 0
            UseOwnGylph = False
          end
          object bt_Table_Dialog: TWPToolButton
            Left = 802
            Top = 0
            Width = 31
            Height = 29
            CustomHint = TheBalloonHint
            Action = Table_Dialog
            Flat = True
            StyleGroup = 0
            StyleNumber = 0
            UseOwnGylph = False
          end
          object bt_Encabezado_Pie: TWPToolButton
            Left = 313
            Top = 0
            Width = 166
            Height = 29
            CustomHint = TheBalloonHint
            Action = Dialogo_HF
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            StyleGroup = 0
            StyleNumber = 0
            UseOwnGylph = False
          end
          object bt_Anadir_Documentos: TWPToolButton
            Left = 489
            Top = 0
            Width = 201
            Height = 29
            CustomHint = TheBalloonHint
            Action = Anadir_Documentos
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            StyleGroup = 0
            StyleNumber = 0
            UseOwnGylph = False
          end
          object wp_zoom_Size: TWPValueEdit
            Left = 877
            Top = 3
            Width = 62
            Height = 22
            Cursor = crHandPoint
            CustomHint = TheBalloonHint
            TabStop = False
            AvailableUnits = [euStandard]
            UnitType = euStandard
            Precision = 0
            Ctl3D = False
            TabOrder = 0
            ParentColor = True
            ParentCtl3D = False
            OnChange = wp_zoom_SizeChange
            AllowNegative = False
            Value = 0
            IntValue = 0
            Undefined = False
          end
        end
      end
    end
  end
  object Opciones_Editor: TActionManager
    Images = Modulo.SystemImages
    Left = 880
    Top = 328
    StyleName = 'Platform Default'
    object Salir: TAction
      Caption = 'Salir'
      Hint = 'Salir de Esta Pantalla'
      ImageIndex = 10
      OnExecute = SalirExecute
    end
    object Insertar_Campo: TAction
      Caption = 'Insertar Campo'
      Hint = 'Insertar el campo seleccionado al documento'
      ImageIndex = 62
      OnExecute = Insertar_CampoExecute
    end
    object Insertar_Campo_Especial: TAction
      Caption = 'Insertar_Campo_Especial'
      Hint = 'Insertar el campo seleccionado al documento'
      ImageIndex = 62
      OnExecute = Insertar_Campo_EspecialExecute
    end
    object Quitar_Campos: TAction
      Caption = 'Quitar Campos'
      Hint = 'Eliminar los campos en el documento'
      ImageIndex = 4
      OnExecute = Quitar_CamposExecute
    end
    object Dialogo_HF: TAction
      Caption = 'Encabezado/Pie de Pagina'
      Hint = 'Dialogo para manejo Encabezados y Pie de P'#225'gina'
      ImageIndex = 77
      OnExecute = Dialogo_HFExecute
    end
    object Insertar_Simbolos: TAction
      Hint = 'Insertar Simbolos y Caracteres Especiales'
      ImageIndex = 22
      OnExecute = Insertar_SimbolosExecute
    end
    object Formato_Parrafos: TAction
      Hint = 'Formato de P'#225'rrafos'
      ImageIndex = 76
      OnExecute = Formato_ParrafosExecute
    end
    object Insertar_Imagen: TAction
      ImageIndex = 79
      OnExecute = Insertar_ImagenExecute
    end
    object Table_Dialog: TAction
      Hint = 'Dialogo de Tablas'
      ImageIndex = 24
      OnExecute = Table_DialogExecute
    end
    object Print_: TAction
      Hint = 'Imprimir ...'
      ImageIndex = 5
      ShortCut = 16464
      OnExecute = Print_Execute
    end
    object Estilos: TAction
      Hint = 'Estilos'
      ImageIndex = 50
    end
    object Guardar: TAction
      Hint = 'Guardar Documento'
      ImageIndex = 0
      ShortCut = 16467
      OnExecute = GuardarExecute
    end
    object Nuevo: TAction
      Hint = 'Nuevo Documento'
      ImageIndex = 1
      ShortCut = 16462
      OnExecute = NuevoExecute
    end
    object Guardar_Como: TAction
      Caption = 'Guardar Como ...'
      Hint = 'Guardar Documento con Otro Nombre'
      ImageIndex = 0
      ShortCut = 24659
      OnExecute = Guardar_ComoExecute
    end
    object Abrir: TAction
      Hint = 'Abrir Documento'
      ImageIndex = 80
      ShortCut = 16463
      OnExecute = AbrirExecute
    end
    object Cerrar: TAction
      Hint = 'Cerrar el documento actual'
      ImageIndex = 81
      OnExecute = CerrarExecute
    end
    object Anadir_Documentos: TAction
      Caption = 'A'#241'adir al Registro de Documentos'
      Hint = 'A'#241'adir a la tabla de documentos'
      ImageIndex = 6
      OnExecute = Anadir_DocumentosExecute
    end
    object Merge_Data: TAction
      Caption = 'Merge Data'
      ImageIndex = 8
      OnExecute = Merge_DataExecute
    end
  end
  object TheBalloonHint: TBalloonHint
    Left = 808
    Top = 192
  end
  object WPManageHeaderFooterDlg: TWPManageHeaderFooterDlg
    EditBox = wp_editor
    PossibleRanges = [wpraOnAllPages, wpraOnOddPages, wpraOnEvenPages, wpraOnFirstPage, wpraOnLastPage, wpraNotOnFirstAndLastPages, wpraNotOnLastPage]
    ShowSectionOptions = True
    Left = 400
    Top = 200
  end
  object WPParagraphPropDlg: TWPParagraphPropDlg
    AutoUpdate = False
    Left = 528
    Top = 200
  end
  object WPSymbolDlgEx: TWPSymbolDlgEx
    UseOKButton = True
    Modal = False
    NotAttachedToEditBox = False
    Left = 96
    Top = 272
  end
  object WPPagePropDlg: TWPPagePropDlg
    EditBox = wp_editor
    UpdatePrinter = False
    Options = [ppoGetPrinterPaperList, ppoHeaderFooterMargins]
    Left = 288
    Top = 200
  end
  object WPTabDlg: TWPTabDlg
    EditBox = wp_editor
    Left = 96
    Top = 200
  end
  object WPTableDlg: TWPTableDlg
    EditBox = wp_editor
    Options = [wpNestingAsInEditOptions]
    Left = 184
    Top = 200
  end
  object WPDefaultActions: TWPDefaultActions
    ControlledMemos = <
      item
        EditBox = wp_editor
        Name = 'EditorBox'
        Tag = 0
      end>
    AssignMenu = True
    Left = 640
    Top = 200
  end
end
