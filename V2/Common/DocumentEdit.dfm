object FDocument_Edit: TFDocument_Edit
  Left = 47
  Top = 159
  Caption = 'edicion de documentos'
  ClientHeight = 528
  ClientWidth = 863
  Color = clBtnFace
  Constraints.MinHeight = 23
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Scaled = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 863
    Height = 528
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet2: TTabSheet
      Caption = 'Edici'#243'n del formato del Documento'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel2: TPanel
        Left = 679
        Top = 0
        Width = 176
        Height = 500
        Align = alRight
        BevelOuter = bvLowered
        TabOrder = 0
        object InsertField: TButton
          Left = 12
          Top = 336
          Width = 154
          Height = 21
          Caption = 'Insertar Campo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = InsertFieldClick
        end
        object FieldList: TListBox
          Left = 12
          Top = 120
          Width = 154
          Height = 187
          Style = lbOwnerDrawFixed
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          TabOrder = 1
          OnDblClick = InsertFieldClick
        end
        object ShowFields: TCheckBox
          Left = 40
          Top = 387
          Width = 94
          Height = 19
          Caption = 'Mostar Campos'
          Checked = True
          State = cbChecked
          TabOrder = 2
          OnClick = ShowFieldsClick
        end
        object DeleteFields: TButton
          Left = 12
          Top = 360
          Width = 154
          Height = 21
          Caption = 'Quitar Campos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = DeleteFieldsClick
        end
        object Tablas: TComboBox
          Left = 12
          Top = 96
          Width = 154
          Height = 21
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          Sorted = True
          TabOrder = 4
          Text = 'Tablas'
          OnChange = suitempTablasChange
          Items.Strings = (
            'tClientes'
            'tClientes_TMP'
            'tPadron_1'
            'tPrestamos'
            'tReferencia'
            'tReferencias'
            'tSistemas')
        end
        object Button1: TButton
          Left = 12
          Top = 312
          Width = 154
          Height = 21
          Caption = 'Cargar Datos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = Button1Click
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 679
        Height = 500
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Cuerpo_Documento: TWPRichText
          Left = 26
          Top = 79
          Width = 653
          Height = 421
          Cursor = crIBeam
          RTFText.Data = {
            3C215750546F6F6C735F466F726D617420563D3531382F3E0D0A3C5374616E64
            617264466F6E742077706373733D2243686172466F6E743A27417269616C273B
            43686172466F6E7453697A653A313130303B222F3E0D0A3C7661726961626C65
            733E0D0A3C7661726961626C65206E616D653D22446174616261736573222064
            6174613D22616E73692220746578743D22222F3E3C2F7661726961626C65733E
            0D0A3C6E756D6265727374796C65733E3C6E7374796C652069643D3120777073
            74793D5B5B4E756D6265724D6F64653A32343B4E756D626572494E44454E543A
            3336303B4E756D62657254455854423A262333393B6C262333393B3B43686172
            466F6E743A262333393B57696E6764696E6773262333393B3B5D5D2F3E0D0A3C
            6E7374796C652069643D322077707374793D5B5B4E756D6265724D6F64653A31
            393B4E756D626572494E44454E543A3336303B5D5D2F3E0D0A3C6E7374796C65
            2069643D332077707374793D5B5B4E756D6265724D6F64653A313B4E756D6265
            72494E44454E543A3336303B4E756D62657254455854413A262333393B2E2623
            33393B3B5D5D2F3E0D0A3C6E7374796C652069643D342077707374793D5B5B4E
            756D6265724D6F64653A323B4E756D626572494E44454E543A3336303B4E756D
            62657254455854413A262333393B2E262333393B3B5D5D2F3E0D0A3C6E737479
            6C652069643D352077707374793D5B5B4E756D6265724D6F64653A333B4E756D
            626572494E44454E543A3336303B4E756D62657254455854413A262333393B2E
            262333393B3B5D5D2F3E0D0A3C6E7374796C652069643D362077707374793D5B
            5B4E756D6265724D6F64653A343B4E756D626572494E44454E543A3336303B4E
            756D62657254455854413A262333393B29262333393B3B5D5D2F3E0D0A3C6E73
            74796C652069643D372077707374793D5B5B4E756D6265724D6F64653A353B4E
            756D626572494E44454E543A3336303B4E756D62657254455854413A26233339
            3B29262333393B3B5D5D2F3E0D0A3C6E7374796C652069643D38207770737479
            3D5B5B4E756D6265724D6F64653A363B4E756D626572494E44454E543A333630
            3B5D5D2F3E0D0A3C6E7374796C652069643D392077707374793D5B5B4E756D62
            65724D6F64653A373B4E756D626572494E44454E543A3336303B5D5D2F3E0D0A
            3C6E7374796C652069643D31302077707374793D5B5B4E756D6265724D6F6465
            3A383B4E756D626572494E44454E543A3336303B5D5D2F3E0D0A3C6E7374796C
            652069643D31312077707374793D5B5B4E756D6265724D6F64653A31353B4E75
            6D626572494E44454E543A3336303B5D5D2F3E0D0A3C6E7374796C652069643D
            31322077707374793D5B5B4E756D6265724D6F64653A31363B4E756D62657249
            4E44454E543A3336303B5D5D2F3E0D0A3C6E7374796C652069643D3133207770
            7374793D5B5B4E756D6265724D6F64653A32333B4E756D626572494E44454E54
            3A3336303B5D5D2F3E0D0A3C6E7374796C652069643D3131342077707374793D
            5B5B4E756D62657254455854423A262333393B70262333393B3B43686172466F
            6E743A262333393B57696E6764696E6773262333393B3B4E756D6265724D6F64
            653A32343B4E756D626572494E44454E543A3336303B5D5D2F3E0D0A3C6E7374
            796C652069643D3131352077707374793D5B5B4E756D62657254455854423A26
            2333393B6E262333393B3B43686172466F6E743A262333393B57696E6764696E
            6773262333393B3B4E756D6265724D6F64653A32343B4E756D626572494E4445
            4E543A3336303B5D5D2F3E0D0A3C6E7374796C652069643D3131362077707374
            793D5B5B4E756D62657254455854423A262333393B76262333393B3B43686172
            466F6E743A262333393B57696E6764696E6773262333393B3B4E756D6265724D
            6F64653A32343B4E756D626572494E44454E543A3336303B5D5D2F3E0D0A3C6E
            7374796C652069643D3131372067726F75703D31206C6576656C3D3120777073
            74793D5B5B4E756D6265724D6F64653A323B4E756D62657254455854413A2623
            33393B2E262333393B3B4E756D626572494E44454E543A3336303B5D5D2F3E0D
            0A3C6E7374796C652069643D3131382067726F75703D31206C6576656C3D3220
            77707374793D5B5B4E756D6265724D6F64653A343B4E756D6265725445585441
            3A262333393B2E262333393B3B4E756D626572494E44454E543A3336303B5D5D
            2F3E0D0A3C6E7374796C652069643D3131392067726F75703D31206C6576656C
            3D332077707374793D5B5B4E756D6265724D6F64653A313B4E756D6265725445
            5854413A262333393B2E262333393B3B4E756D626572494E44454E543A333630
            3B5D5D2F3E0D0A3C6E7374796C652069643D3132302067726F75703D31206C65
            76656C3D342077707374793D5B5B4E756D6265724D6F64653A353B4E756D6265
            7254455854413A262333393B29262333393B3B4E756D626572494E44454E543A
            3336303B5D5D2F3E0D0A3C6E7374796C652069643D3132312067726F75703D31
            206C6576656C3D352077707374793D5B5B4E756D6265724D6F64653A333B4E75
            6D62657254455854413A262333393B29262333393B3B4E756D62657254455854
            423A262333393B28262333393B3B4E756D626572494E44454E543A3336303B5D
            5D2F3E0D0A3C6E7374796C652069643D3132322067726F75703D31206C657665
            6C3D362077707374793D5B5B4E756D6265724D6F64653A353B4E756D62657254
            455854413A262333393B29262333393B3B4E756D62657254455854423A262333
            393B28262333393B3B4E756D626572494E44454E543A3336303B5D5D2F3E0D0A
            3C6E7374796C652069643D3132332067726F75703D31206C6576656C3D372077
            707374793D5B5B4E756D6265724D6F64653A313B4E756D62657254455854413A
            262333393B29262333393B3B4E756D62657254455854423A262333393B282623
            33393B3B4E756D626572494E44454E543A3336303B5D5D2F3E0D0A3C6E737479
            6C652069643D3132342067726F75703D31206C6576656C3D382077707374793D
            5B5B4E756D6265724D6F64653A313B4E756D62657254455854413A262333393B
            29262333393B3B4E756D62657254455854423A262333393B28262333393B3B4E
            756D626572494E44454E543A3336303B5D5D2F3E0D0A3C6E7374796C65206964
            3D3132352067726F75703D31206C6576656C3D392077707374793D5B5B4E756D
            6265724D6F64653A313B4E756D62657254455854413A262333393B2926233339
            3B3B4E756D62657254455854423A262333393B28262333393B3B4E756D626572
            494E44454E543A3336303B5D5D2F3E0D0A3C2F6E756D6265727374796C65733E
            0D0A3C7374796C6573686565743E3C2F7374796C6573686565743E3C6373206E
            723D312077707374793D5B5B43686172466F6E7453697A653A313330303B4368
            61725374796C654D61736B3A343B436861725374796C654F4E3A303B43686172
            436F6C6F723A636C426C61636B3B5D5D2F3E3C6469762063733D313E3C2F6469
            763E0D0A}
          Header.DefaultTabstop = 254
          RTFVariables = <
            item
              Name = 'Databases'
              SubType = wpxDefault
            end>
          SpellCheckStrategie = wpspCheckInInitAndPaint
          WPToolBar = Barra_Opciones
          WPRuler = Regla_Horizontal
          VRuler = Regla_Vertical
          GraphicPopupMenu = WPDefAct.GraphicPopupMenu
          ActionList = WPDefAct.StdActions
          XOffset = 144
          YOffset = 141
          XBetween = 144
          YBetween = 144
          AutoZoom = wpAutoZoomWidth
          LayoutMode = wplayFullLayout
          ScrollBars = ssBoth
          EditOptions = [wpTableResizing, wpTableColumnResizing, wpObjectMoving, wpObjectResizingWidth, wpObjectResizingHeight, wpObjectResizingKeepRatio, wpObjectSelecting, wpObjectDeletion, wpSpreadsheetCursorMovement, wpActivateUndo, wpActivateUndoHotkey, wpActivateRedo, wpActivateRedoHotkey, wpMoveCPOnPageUpDown]
          ViewOptions = [wpShowFF, wpHideSelectionNonFocussed]
          FormatOptions = [wpDisableAutosizeTables]
          FormatOptionsEx = []
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
          WriteObjectMode = wobRTF
          ClickableCodes = [wpobjMergeField]
          OneClickHyperlink = False
          HyperLinkEvent = Cuerpo_DocumentoHyperLinkEvent
          OnMailMergeGetText = Cuerpo_DocumentoMailMergeGetText
          OnActivatingHotStyle = Cuerpo_DocumentoActivatingHotStyle
          OnDeactivateHotStyle = Cuerpo_DocumentoDeactivateHotStyle
          Align = alClient
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          ExplicitLeft = 20
          ExplicitTop = 85
        end
        object Barra_Opciones: TWPToolBar
          Left = 0
          Top = 0
          Width = 679
          Height = 53
          ParentColor = False
          UseDockManager = False
          KeepGroupsTogether = True
          Align = alTop
          ParentShowHint = False
          ShowHint = True
          BevelLines = [wplTop, wplBottom]
          AutoEnabling = True
          BevelOuter = bvNone
          WidthBetweenGroups = 4
          FontChoice = fsPrinterFonts
          ShowFont = True
          sel_ListBoxes = [SelFontName, SelFontSize, SelFontColor, SelParColor]
          sel_StatusIcons = [SelBold, SelItalic, SelUnder, SelSuper, SelSub, SelLeft, SelRight, SelBlock, SelCenter]
          sel_ActionIcons = [SelNew, SelOpen, SelPrint, SelPrintSetup, SelFitWidth, SelZoomIn, SelZoomOut, SelNextPage, SelPriorPage]
          sel_DatabaseIcons = []
          sel_EditIcons = [SelUndo, SelRedo, SelCopy, SelCut, SelPaste, SelSelAll, SelFind, SelReplace]
          sel_TableIcons = [SelCreateTable, SelSplitCell, SelCombineCell, SelBAllOff, SelBAllOn, SelBInner, SelBOuter, SelBLeft, SelBRight, SelBTop, SelBBottom]
          sel_OutlineIcons = [SelBullets, SelNumbers]
          FontSizeFrom = 8
          FlatButtons = True
          ButtonHeight = 0
          TrueTypeOnly = False
          object wpBotonInsertar_Imagen: TWPToolButton
            Left = 473
            Top = 27
            Width = 23
            Height = 22
            Flat = True
            Glyph.Data = {
              4E010000424D4E01000000000000760000002800000012000000120000000100
              040000000000D800000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
              6666660000006666666666666666660000006666800008666666660000006000
              0777700000666600000008807800870880066600000008007078070008006600
              0000088070F70700800806000000080077007700080006000000088008778000
              800806000000080800FFF080080006000000000000077F000008060000000F77
              778000877780060000000F777777777777880600000060FF0FF888FF08780600
              00006600F80F7780F8006600000066660060F806006666000000666666660066
              666666000000666666666666666666000000}
            OnClick = InsertGraphicClick
            StyleGroup = 0
            StyleNumber = 0
            UseOwnGylph = False
          end
          object wpBotonGuardar_Como: TWPToolButton
            Left = 498
            Top = 27
            Width = 23
            Height = 22
            Flat = True
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
              6666666666666666666666660000666666666666666666666666666666666666
              0000666000000000000066666888888888888866000066044074477704406666
              88887FF77788886600006604407447770440666688887FF77788886600006604
              407447770440666688887FF77788886600006604447777774440666688887777
              7788886600006604444444444440666688888888888888660000660440000000
              044066668888888888888866000066040FFFFFFFF0406666888FFFFFFFF88866
              000066040FFFFFFFF0406666888FFFFFFFF88866000066040F888888F0406666
              888F888888F88866000066040FFFFFFFF0406666888FFFFFFFF8886600006607
              0F888888F0006666878F888888F88866000066040FFFFFFFF0406666888FFFFF
              FFF8886600006600000000000000666688888888888888660000666666666666
              6666666666666666666666660000666666666666666666666666666666666666
              0000}
            NumGlyphs = 2
            OnClick = wpBotonGuardar_ComoClick
            StyleGroup = 0
            StyleNumber = 0
            UseOwnGylph = False
          end
        end
        object Regla_Horizontal: TWPRuler
          Left = 0
          Top = 53
          Width = 679
          Height = 26
          Units = wrCentimeter
          DrawOptions = [wrUseSmallNumbers]
          TabKind = tkLeft
          Options = [wrShowTabSelector, wrShowTabStops, wrShowIndents, wpUseIntervalls, wpNoVertRulerAttached]
          ColorMargin = clAppWorkSpace
          ColorBack = clBtnFace
          ColorTableMarker = clBtnShadow
          Align = alTop
        end
        object Regla_Vertical: TWPVertRuler
          Left = 0
          Top = 79
          Width = 26
          Height = 421
          Units = wrCentimeter
          DrawOptions = []
          ColorMargin = clAppWorkSpace
          ColorBack = clBtnFace
          Align = alLeft
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Database files|*.DB;*.DBF'
    Left = 192
    Top = 105
  end
  object providerClientes: TWPMMDataProvider
    NextDataProvider = providerPrestamos
    EditBox = Cuerpo_Documento
    ShowFieldNames = False
    Options = [wpmmPreserveObjectSize]
    AutoLoadData = True
    AppendSpaceToNonEmpty = False
    AutoSaveData = False
    Left = 301
    Top = 144
  end
  object providerPrestamos: TWPMMDataProvider
    NextDataProvider = providerReferencia
    ShowFieldNames = False
    Options = [wpmmPreserveObjectSize]
    AutoLoadData = True
    AppendSpaceToNonEmpty = False
    AutoSaveData = False
    Left = 389
    Top = 144
  end
  object providerReferencia: TWPMMDataProvider
    NextDataProvider = provider_otrasReferencias
    ShowFieldNames = False
    Options = [wpmmPreserveObjectSize]
    AutoLoadData = True
    AppendSpaceToNonEmpty = False
    AutoSaveData = False
    Left = 301
    Top = 208
  end
  object provider_otrasReferencias: TWPMMDataProvider
    NextDataProvider = providerSistemas
    ShowFieldNames = False
    Options = [wpmmPreserveObjectSize]
    AutoLoadData = True
    AppendSpaceToNonEmpty = False
    AutoSaveData = False
    Left = 301
    Top = 256
  end
  object providerPadron: TWPMMDataProvider
    NextDataProvider = providerPadron
    ShowFieldNames = False
    Options = [wpmmPreserveObjectSize]
    AutoLoadData = True
    AppendSpaceToNonEmpty = False
    AutoSaveData = False
    Left = 301
    Top = 304
  end
  object OpenDialog2: TOpenDialog
    Filter = 'images|*.jpg;*.bmp'
    Left = 72
    Top = 161
  end
  object Acciones: TWPDefaultActions
    ControlledMemos = <
      item
        EditBox = Cuerpo_Documento
        Name = 'Principal'
        Tag = 0
      end>
    AssignMenu = True
    Left = 102
    Top = 214
  end
  object providerSistemas: TWPMMDataProvider
    ShowFieldNames = False
    Options = [wpmmPreserveObjectSize]
    AutoLoadData = True
    AppendSpaceToNonEmpty = False
    AutoSaveData = False
    Left = 517
    Top = 145
  end
end
