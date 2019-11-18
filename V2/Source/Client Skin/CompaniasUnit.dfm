object frmCompanias: TfrmCompanias
  Left = 0
  Top = 0
  ActiveControl = RNC
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Actualizaci'#243'n de Compa'#241#237'as'
  ClientHeight = 723
  ClientWidth = 819
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object adv_OptionPanel: TAdvToolPanel
    Left = 639
    Top = 0
    Width = 180
    Height = 723
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
        Height = 180
        CaptionImageIndex = -1
      end
      item
        Autosize = False
        Caption = 'Informaci'#243'n'
        Draw = True
        SectionItems = <>
        Height = 200
        CaptionImageIndex = 21
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
    SectionImages = Modulo.SystemImages
    ShowCaptionBorder = False
    ShowClose = False
    ShowLock = False
    ShowHint = True
    Style = esOffice2007Luna
    Version = '1.5.5.0'
    object imgFrame: TShape
      Left = 21
      Top = 429
      Width = 138
      Height = 156
    end
    object LOGO: TDBAdvPicture
      Left = 21
      Top = 429
      Width = 138
      Height = 156
      Animate = False
      Picture.Stretch = False
      Picture.Frame = 0
      PicturePosition = bpStretched
      StretchMode = smShrink
      OnDblClick = Agregar_FotoExecute
      Version = '1.4.2.1'
      DataField = 'Logo'
      DataSource = ModuloGenerales.dCompania
    end
    object gbt_Nuevo_Registro: TAdvGlowButton
      Left = 10
      Top = 53
      Width = 167
      Height = 30
      Action = Nuevo_Registro
      ImageIndex = 1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Transparent = True
      TabOrder = 0
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
    object gbt_Guardar_Registro: TAdvGlowButton
      Left = 10
      Top = 86
      Width = 167
      Height = 30
      Action = Guardar_Registro
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Transparent = True
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
      Layout = blGlyphLeftAdjusted
    end
    object gbt_Buscar_Registro: TAdvGlowButton
      Left = 10
      Top = 122
      Width = 167
      Height = 30
      Action = Buscar_Registro
      ImageIndex = 69
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Transparent = True
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
      Layout = blGlyphLeftAdjusted
    end
    object gbt_Eliminar_Registro: TAdvGlowButton
      Left = 10
      Top = 158
      Width = 167
      Height = 30
      Action = Eliminar_Registro
      ImageIndex = 4
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Transparent = True
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
      Layout = blGlyphLeftAdjusted
    end
    object gbt_Salir: TAdvGlowButton
      Left = 1
      Top = 692
      Width = 178
      Height = 30
      Align = alBottom
      Action = Salir
      ImageIndex = 10
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Transparent = True
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
      Layout = blGlyphLeftAdjusted
    end
    object InfoBoard: TW7TaskItem
      Left = 9
      Top = 235
      Width = 167
      Height = 159
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
      DoubleBuffered = False
      ParentFont = False
      TabOrder = 5
    end
  end
  object adv_DataPanel: TAdvToolPanel
    Left = 0
    Top = 0
    Width = 633
    Height = 723
    Align = alLeft
    BackgroundTransparent = False
    BackGroundPosition = bpTopLeft
    Button3D = False
    HoverButtonColor = 14285309
    HoverButtonColorTo = 9102333
    DownButtonColor = 8122111
    DownButtonColorTo = 7131391
    CaptionButton = False
    Color = 15192511
    ColorTo = 15192511
    GradientDirection = gdVertical
    DockDots = False
    CanSize = False
    Caption = 'Informaciones Generales'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionGradientDirection = gdVertical
    ImageIndex = 5
    FocusCaptionFontColor = 9126421
    FocusCaptionColor = 6805503
    FocusCaptionColorTo = 10676223
    NoFocusCaptionFontColor = 9126421
    NoFocusCaptionColor = 16773091
    NoFocusCaptionColorTo = 16765357
    CloseHint = 'Close panel'
    LockHint = 'Lock panel'
    UnlockHint = 'Unlock panel'
    Sections = <
      item
        Autosize = False
        Caption = 'Identificaci'#243'n'
        Draw = True
        SectionItems = <>
        Height = 87
        CaptionImageIndex = 42
      end
      item
        Autosize = False
        Caption = 'Datos Generales'
        Draw = True
        SectionItems = <>
        Height = 185
        CaptionImageIndex = 6
      end
      item
        Autosize = False
        Caption = 'Localizaci'#243'n'
        Draw = True
        SectionItems = <>
        Height = 162
        CaptionImageIndex = 40
      end
      item
        Autosize = False
        Caption = 'Web'
        Draw = True
        SectionItems = <>
        Height = 120
        CaptionImageIndex = -1
      end
      item
        Autosize = False
        Caption = 'N.C.F'
        Draw = True
        SectionItems = <>
        Height = 120
        CaptionImageIndex = 43
      end>
    SectionLayout.CaptionColor = 16772834
    SectionLayout.CaptionColorTo = 16772834
    SectionLayout.CaptionFontColor = 9126421
    SectionLayout.CaptionRounded = True
    SectionLayout.Corners = scRoundLeft
    SectionLayout.BackGroundColor = clWhite
    SectionLayout.BackGroundColorTo = clWhite
    SectionLayout.BorderColor = 16765357
    SectionLayout.BorderWidth = 1
    SectionLayout.CaptionGradientDir = gdVertical
    SectionLayout.BackGroundGradientDir = gdVertical
    SectionLayout.Indent = 4
    SectionLayout.Spacing = 4
    SectionLayout.ItemFontColor = 9126421
    SectionLayout.ItemHoverTextColor = 9126421
    SectionLayout.ItemHoverUnderline = True
    SectionLayout.UnderLineCaption = False
    SectionImages = Modulo.SystemImages
    ShowCaption = False
    ShowCaptionBorder = False
    ShowClose = False
    ShowLock = False
    Style = esOffice2010Blue
    Version = '1.5.5.0'
    object Label1: TLabel
      Left = 16
      Top = 34
      Width = 18
      Height = 18
      Caption = 'ID'
      FocusControl = ID
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 121
      Width = 52
      Height = 18
      Caption = 'Nombre'
      FocusControl = Nombre
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 306
      Width = 57
      Height = 18
      Caption = 'Direccion'
      FocusControl = Direccion
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 16
      Top = 193
      Width = 114
      Height = 18
      Caption = 'Slogan / Coment.'
      FocusControl = Slogan_Comentario
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 16
      Top = 60
      Width = 33
      Height = 18
      Caption = 'RNC'
      FocusControl = RNC
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 16
      Top = 355
      Width = 25
      Height = 18
      Caption = 'Pais'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 334
      Top = 355
      Width = 93
      Height = 18
      Caption = 'Ciudad/Estado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 16
      Top = 244
      Width = 81
      Height = 18
      Caption = 'Responsable'
      FocusControl = Responsable
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 16
      Top = 219
      Width = 110
      Height = 18
      Caption = 'Fec. Constituci'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 518
      Top = 934
      Width = 31
      Height = 18
      Caption = 'Logo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label27: TLabel
      Left = 383
      Top = 219
      Width = 96
      Height = 18
      Caption = 'Fecha Registro'
      FocusControl = Fecha_Registro
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label28: TLabel
      Left = 16
      Top = 674
      Width = 41
      Height = 18
      Caption = 'Status'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 134
      Top = 591
      Width = 132
      Height = 18
      Caption = 'Composici'#243'n N.C.F.:'
      FocusControl = Serie_NCF
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 470
      Width = 26
      Height = 18
      Caption = 'URL'
      FocusControl = URL
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 496
      Width = 38
      Height = 18
      Caption = 'eM@il'
      FocusControl = URL
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 16
      Top = 522
      Width = 63
      Height = 18
      Caption = 'FaceBook'
      FocusControl = FaceBook
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 334
      Top = 523
      Width = 45
      Height = 18
      Caption = 'Twitter'
      FocusControl = FaceBook
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ID: TDBEdit
      Left = 135
      Top = 31
      Width = 486
      Height = 24
      Hint = 
        'C'#243'digo de identificaci'#243'n de la compa'#241#237'a (Generado Autom'#225'ticament' +
        'e)'
      TabStop = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'ID'
      DataSource = ModuloGenerales.dCompania
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object Nombre: TDBEdit
      Tag = 1
      Left = 135
      Top = 118
      Width = 486
      Height = 24
      Hint = 'Nombre de La Compa'#241#237'a'
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'Nombre'
      DataSource = ModuloGenerales.dCompania
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object Nombre_Linea_2: TDBEdit
      Left = 135
      Top = 141
      Width = 486
      Height = 24
      Hint = 'Nombre de La Compa'#241#237'a (2da Linea de Impresi'#243'n)'
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'Nombre_Linea_2'
      DataSource = ModuloGenerales.dCompania
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object Nombre_Linea_3: TDBEdit
      Left = 135
      Top = 164
      Width = 486
      Height = 24
      Hint = 'Nombre de La Compa'#241#237'a (3ra Linea de Impresi'#243'n)'
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'Nombre_Linea_3'
      DataSource = ModuloGenerales.dCompania
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
    end
    object Direccion: TDBEdit
      Tag = 1
      Left = 135
      Top = 303
      Width = 486
      Height = 24
      Hint = 'Direcci'#243'n Completa donde se encuentra localizadala Compa'#241#237'a'
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'Direccion'
      DataSource = ModuloGenerales.dCompania
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 9
      OnEnter = HintToInfoBoard
    end
    object Direccion_Linea_2: TDBEdit
      Left = 135
      Top = 326
      Width = 486
      Height = 24
      Hint = 
        'Direcci'#243'n Completa donde se encuentra localizadala Compa'#241#237'a (2da' +
        ' Linea de Impresi'#243'n)'
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'Direccion_Linea_2'
      DataSource = ModuloGenerales.dCompania
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 10
      OnEnter = HintToInfoBoard
    end
    object Telefono_Principal: TDBEdit
      Left = 135
      Top = 378
      Width = 188
      Height = 24
      Hint = 'N'#250'mero de tel'#233'fono principal'
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'Telefono_Principal'
      DataSource = ModuloGenerales.dCompania
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 14
      OnEnter = HintToInfoBoard
    end
    object Telefono_Secundario: TDBEdit
      Left = 433
      Top = 378
      Width = 188
      Height = 24
      Hint = 'N'#250'mero de tel'#233'fono secundario'
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'Telefono_Secundario'
      DataSource = ModuloGenerales.dCompania
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 16
      OnEnter = HintToInfoBoard
    end
    object Telefono_Tercero: TDBEdit
      Left = 135
      Top = 404
      Width = 188
      Height = 24
      Hint = 'N'#250'mero de tel'#233'fono tercero'
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'Telefono_Tercero'
      DataSource = ModuloGenerales.dCompania
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 18
      OnEnter = HintToInfoBoard
    end
    object Telefono_Otro: TDBEdit
      Left = 433
      Top = 404
      Width = 188
      Height = 24
      Hint = 'Otro n'#250'mero de tel'#233'fono'
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'Telefono_Otro'
      DataSource = ModuloGenerales.dCompania
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 20
      OnEnter = HintToInfoBoard
    end
    object Slogan_Comentario: TDBEdit
      Left = 135
      Top = 190
      Width = 486
      Height = 24
      Hint = 'Frase Distintiva Aleg'#243'rica a la Compa'#241#237'a'
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'Slogan_Comentario'
      DataSource = ModuloGenerales.dCompania
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
    end
    object Responsable: TDBEdit
      Left = 135
      Top = 242
      Width = 486
      Height = 24
      Hint = 'Persona Responsable o Representativa de la Compa'#241#237'a'
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'Responsable'
      DataSource = ModuloGenerales.dCompania
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
    end
    object Serie_NCF: TDBEdit
      Left = 274
      Top = 589
      Width = 17
      Height = 24
      Hint = 'Serie de Identificaci'#243'n en el N'#250'mero de Comprobante Fiscal'
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'Serie_NCF'
      DataSource = ModuloGenerales.dCompania
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 26
    end
    object Division_NCF: TDBEdit
      Left = 299
      Top = 589
      Width = 30
      Height = 24
      Hint = 
        'N'#250'mero de Divisi'#243'n correspondiente a la compa'#241#237'a en el N'#250'mero de' +
        ' Comprobante Fiscal'
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'Division_NCF'
      DataSource = ModuloGenerales.dCompania
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 27
    end
    object Punto_Emision_NCF: TDBEdit
      Left = 335
      Top = 589
      Width = 43
      Height = 24
      Hint = 
        'Punto de Emisi'#243'n correspondiente a la compa'#241#237'a en el N'#250'mero de C' +
        'omprobante Fiscal'
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'Punto_Emision_NCF'
      DataSource = ModuloGenerales.dCompania
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 29
    end
    object Fecha_Registro: TDBEdit
      Left = 487
      Top = 216
      Width = 134
      Height = 24
      Hint = 'Fecha en la que se registra la compa'#241#237'a en el sistema'
      TabStop = False
      Ctl3D = False
      DataField = 'Fecha_Creacion'
      DataSource = ModuloGenerales.dCompania
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object RNC: TEdit
      Tag = 1
      Left = 135
      Top = 57
      Width = 231
      Height = 24
      Hint = 'Registro Nacional de Contribuyente'
      CharCase = ecUpperCase
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnExit = RNCExit
    end
    object URL: TDBEdit
      Left = 135
      Top = 467
      Width = 486
      Height = 24
      Hint = 'Direcci'#243'n del portal o website de la compa'#241#237'a'
      CharCase = ecLowerCase
      Ctl3D = False
      DataField = 'URL'
      DataSource = ModuloGenerales.dCompania
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 21
    end
    object email: TDBEdit
      Left = 135
      Top = 493
      Width = 486
      Height = 24
      Hint = 'Direcci'#243'n de correo electronico de la compa'#241#237'a'
      CharCase = ecLowerCase
      Ctl3D = False
      DataField = 'email'
      DataSource = ModuloGenerales.dCompania
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 22
    end
    object FaceBook: TDBEdit
      Left = 135
      Top = 519
      Width = 188
      Height = 24
      Hint = 'Direcci'#243'n de Facebook'
      CharCase = ecLowerCase
      Ctl3D = False
      DataField = 'FaceBook'
      DataSource = ModuloGenerales.dCompania
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 23
    end
    object twitter: TDBEdit
      Left = 433
      Top = 519
      Width = 188
      Height = 24
      Hint = 'Direcci'#243'n de Twitter'
      CharCase = ecLowerCase
      Ctl3D = False
      DataField = 'twitter'
      DataSource = ModuloGenerales.dCompania
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 24
    end
    object Paises: TcxDBLookupComboBox
      Left = 134
      Top = 351
      Hint = 'Listado de Paises'
      DataBinding.DataField = 'Pais'
      DataBinding.DataSource = ModuloGenerales.dCompania
      ParentFont = False
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'Iso_3_Char'
      Properties.ListColumns = <
        item
          Width = 500
          FieldName = 'Nombre'
        end>
      Properties.ListSource = ModuloGenerales.dListado_Paises
      Properties.MaxLength = 0
      Properties.ReadOnly = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 11
      Width = 190
    end
    object Ciudades: TcxDBLookupComboBox
      Left = 432
      Top = 351
      Hint = 'Listado de Ciudades'
      DataBinding.DataField = 'Ciudad_Estado'
      DataBinding.DataSource = ModuloGenerales.dCompania
      ParentFont = False
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'Serie_Codigo'
      Properties.ListColumns = <
        item
          FieldName = 'Nombre'
        end>
      Properties.ListSource = ModuloGenerales.dCiudades
      Properties.MaxLength = 0
      Properties.ReadOnly = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 12
      Width = 189
    end
    object Fecha_Institucion: TcxDBDateEdit
      Left = 134
      Top = 215
      Hint = 'Fecha en que se funda o constituye la compa'#241#237'a'
      DataBinding.DataField = 'Fecha_Institucion'
      DataBinding.DataSource = ModuloGenerales.dCompania
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 157
    end
    object Tipo_Telefono_Principal: TcxDBComboBox
      Left = 12
      Top = 377
      TabStop = False
      DataBinding.DataField = 'Tipo_Telefono_Principal'
      DataBinding.DataSource = ModuloGenerales.dCompania
      ParentFont = False
      Properties.Items.Strings = (
        'Automovil'
        'Beeper'
        'Celular'
        'Fax'
        'Local'
        'Oficina'
        'Otro'
        'Otro Tel.'
        'Pager'
        'Real'
        'Tel. Casa'
        'Tel. Trabajo'
        'Tel'#233'fono')
      Style.BorderStyle = ebsNone
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 13
      Width = 111
    end
    object Tipo_Telefono_Tercero: TcxDBComboBox
      Left = 12
      Top = 403
      TabStop = False
      DataBinding.DataField = 'Tipo_Telefono_Tercero'
      DataBinding.DataSource = ModuloGenerales.dCompania
      ParentFont = False
      Properties.Items.Strings = (
        'Automovil'
        'Beeper'
        'Celular'
        'Fax'
        'Local'
        'Oficina'
        'Otro'
        'Otro Tel.'
        'Pager'
        'Real'
        'Tel. Casa'
        'Tel. Trabajo'
        'Tel'#233'fono')
      Style.BorderStyle = ebsNone
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 17
      Width = 111
    end
    object Tipo_Telefono_Secundario: TcxDBComboBox
      Left = 331
      Top = 378
      TabStop = False
      DataBinding.DataField = 'Tipo_Telefono_Secundario'
      DataBinding.DataSource = ModuloGenerales.dCompania
      ParentFont = False
      Properties.Items.Strings = (
        'Automovil'
        'Beeper'
        'Celular'
        'Fax'
        'Local'
        'Oficina'
        'Otro'
        'Otro Tel.'
        'Pager'
        'Real'
        'Tel. Casa'
        'Tel. Trabajo'
        'Tel'#233'fono')
      Style.BorderStyle = ebsNone
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 15
      Width = 95
    end
    object Tipo_Telefono_Otro: TcxDBComboBox
      Left = 331
      Top = 403
      TabStop = False
      DataBinding.DataField = 'Tipo_Telefono_Otro'
      DataBinding.DataSource = ModuloGenerales.dCompania
      ParentFont = False
      Properties.Items.Strings = (
        'Automovil'
        'Beeper'
        'Celular'
        'Fax'
        'Local'
        'Oficina'
        'Otro'
        'Otro Tel.'
        'Pager'
        'Real'
        'Tel. Casa'
        'Tel. Trabajo'
        'Tel'#233'fono')
      Style.BorderStyle = ebsNone
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 19
      Width = 95
    end
    object Estatus: TcxDBLookupComboBox
      Left = 135
      Top = 670
      Hint = 'Listado de Estatus'
      DataBinding.DataField = 'Status'
      DataBinding.DataSource = ModuloGenerales.dCompania
      ParentFont = False
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'Status'
      Properties.ListColumns = <
        item
          Width = 200
          FieldName = 'Descripcion'
        end
        item
          Caption = 'Estatus'
          Width = 100
          FieldName = 'Status'
        end>
      Properties.MaxLength = 0
      Properties.ReadOnly = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 31
      Width = 190
    end
    object Area_Impresion_NCF: TDBEdit
      Left = 384
      Top = 589
      Width = 43
      Height = 24
      Hint = 
        'Area de Impresi'#243'n correspondiente a la compa'#241#237'a en el N'#250'mero de ' +
        'Comprobante Fiscal'
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'Area_Impresion_NCF'
      DataSource = ModuloGenerales.dCompania
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 28
    end
    object Genera_NCF: TcxDBCheckBox
      Left = 16
      Top = 591
      Caption = 'Genera NCF'
      DataBinding.DataField = 'Genera_NCF'
      DataBinding.DataSource = ModuloGenerales.dCompania
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 25
      Transparent = True
      Width = 121
    end
    object CBS: TcxDBCheckBox
      Left = 500
      Top = 591
      Caption = 'CBS'
      DataBinding.DataField = 'CBS'
      DataBinding.DataSource = ModuloGenerales.dCompania
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 30
      Transparent = True
      Width = 121
    end
  end
  object Opciones_Pantalla: TActionManager
    Images = Modulo.SystemImages
    Left = 776
    Top = 536
    StyleName = 'XP Style'
    object Guardar_Registro: TAction
      Caption = 'Guardar Registro'
      Hint = 'Guardar Registro Actual'
      ImageIndex = 0
      ShortCut = 16455
      OnExecute = Guardar_RegistroExecute
    end
    object Buscar_Registro: TAction
      Caption = 'Buscar Registro'
      Hint = 'Buscar un Registro Guardado'
      ImageIndex = 69
      ShortCut = 16450
      OnExecute = Buscar_RegistroExecute
    end
    object Nuevo_Registro: TAction
      Caption = 'Nuevo Registro'
      Hint = 'Nuevo Registro en Blanco'
      ImageIndex = 1
      ShortCut = 16462
      OnExecute = Nuevo_RegistroExecute
    end
    object Eliminar_Registro: TAction
      Caption = 'Eliminar Registro'
      Hint = 'Eliminar Registro Actual'
      ImageIndex = 4
      ShortCut = 16452
      OnExecute = Eliminar_RegistroExecute
    end
    object Salir: TAction
      Caption = 'Salir'
      Hint = 'Salir de Esta Pantalla'
      ImageIndex = 10
      ShortCut = 16467
      OnExecute = SalirExecute
    end
    object Agregar_Foto: TAction
      Caption = 'Agregar_Foto'
      ImageIndex = 25
      OnExecute = Agregar_FotoExecute
    end
  end
end
