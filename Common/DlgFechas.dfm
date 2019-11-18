object DlgFecha: TDlgFecha
  Left = 100
  Top = 100
  BorderStyle = bsDialog
  Caption = 'Dialogo Fecha'
  ClientHeight = 239
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object adv_DataPanel: TAdvToolPanel
    Left = 0
    Top = 0
    Width = 305
    Height = 239
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
        Caption = 'Criterio del Reporte'
        Draw = True
        SectionItems = <>
        Height = 232
        CaptionImageIndex = 23
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
    object Label26: TLabel
      Left = 518
      Top = 882
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
    object Seleccion: TAdvOfficeRadioGroup
      Left = 10
      Top = 27
      Width = 89
      Height = 193
      BorderStyle = bsDouble
      RoundEdges = True
      Version = '1.3.3.0'
      Caption = 'Listado Por'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnClick = SeleccionClick
      ItemIndex = 0
      Items.Strings = (
        '&Periodo'
        '&Mes'
        '&A'#241'o'
        '&Hoy'
        'A&yer'
        '&Todos')
      Themed = True
      Ellipsis = False
      ShadowColor = clGray
    end
    object pnlPeriodo: TAdvSmoothPanel
      Left = 104
      Top = 31
      Width = 197
      Height = 102
      Cursor = crDefault
      Caption.Text = 'Periodo del Reporte'
      Caption.Location = plCustom
      Caption.HTMLFont.Charset = DEFAULT_CHARSET
      Caption.HTMLFont.Color = clWindowText
      Caption.HTMLFont.Height = -11
      Caption.HTMLFont.Name = 'Tahoma'
      Caption.HTMLFont.Style = []
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -12
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = [fsBold]
      Caption.Left = 10
      Fill.Color = 16445929
      Fill.ColorTo = 15587527
      Fill.ColorMirror = 15587527
      Fill.ColorMirrorTo = 16773863
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtVertical
      Fill.BorderColor = 14922381
      Fill.Rounding = 10
      Fill.ShadowOffset = 10
      Fill.Glow = gmNone
      Version = '1.1.0.0'
      TabOrder = 1
      object Label21: TLabel
        Left = 11
        Top = 27
        Width = 41
        Height = 18
        Caption = 'Desde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 11
        Top = 59
        Width = 38
        Height = 18
        Caption = 'Hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Inicio: TAdvDateTimePicker
        Left = 58
        Top = 23
        Width = 114
        Height = 26
        Date = 40840.707685185180000000
        Time = 40840.707685185180000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Kind = dkDate
        ParentFont = False
        TabOrder = 0
        BorderStyle = bsSingle
        Ctl3D = True
        DateTime = 40840.707685185180000000
        Version = '1.2.0.0'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
      end
      object Fin: TAdvDateTimePicker
        Left = 58
        Top = 55
        Width = 114
        Height = 26
        Date = 40840.707685185180000000
        Time = 40840.707685185180000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Kind = dkDate
        ParentFont = False
        TabOrder = 1
        BorderStyle = bsSingle
        Ctl3D = True
        DateTime = 40840.707685185180000000
        Version = '1.2.0.0'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
      end
    end
    object MesAnio: TAdvSmoothPanel
      Left = 104
      Top = 131
      Width = 197
      Height = 97
      Cursor = crDefault
      Caption.Text = 'Mes / A'#241'o'
      Caption.Location = plCustom
      Caption.HTMLFont.Charset = DEFAULT_CHARSET
      Caption.HTMLFont.Color = clWindowText
      Caption.HTMLFont.Height = -11
      Caption.HTMLFont.Name = 'Tahoma'
      Caption.HTMLFont.Style = []
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -12
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = [fsBold]
      Caption.Left = 10
      Fill.Color = 16445929
      Fill.ColorTo = 15587527
      Fill.ColorMirror = 15587527
      Fill.ColorMirrorTo = 16773863
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtVertical
      Fill.BorderColor = 14922381
      Fill.Rounding = 10
      Fill.ShadowOffset = 10
      Fill.Glow = gmNone
      Version = '1.1.0.0'
      TabOrder = 2
      object Label1: TLabel
        Left = 11
        Top = 27
        Width = 27
        Height = 18
        Caption = 'Mes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 11
        Top = 57
        Width = 25
        Height = 18
        Caption = 'A'#241'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Meses: TComboBox
        Left = 66
        Top = 23
        Width = 112
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemHeight = 18
        ParentFont = False
        TabOrder = 0
        Text = 'Meses'
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
      object Anio: TSpinEdit
        Left = 66
        Top = 53
        Width = 112
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxValue = 0
        MinValue = 0
        ParentFont = False
        TabOrder = 1
        Value = 0
      end
    end
  end
  object adv_OptionPanel: TAdvToolPanel
    Left = 309
    Top = 0
    Width = 155
    Height = 239
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
    DockDots = True
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
        Height = 100
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
    SectionImages = Modulo.SystemImages
    ShowCaptionBorder = False
    ShowClose = False
    ShowLock = False
    Style = esOffice2007Luna
    Version = '1.5.5.0'
    object gbt_Aceptar: TAdvGlowButton
      Left = 14
      Top = 47
      Width = 127
      Height = 30
      Action = act_Aceptar
      ImageIndex = 67
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
    end
    object gbt_Cancelar: TAdvGlowButton
      Left = 14
      Top = 83
      Width = 127
      Height = 30
      Action = act_Cancelar
      ImageIndex = 68
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
    end
  end
  object Opciones_Pantalla: TActionManager
    Images = Modulo.SystemImages
    Left = 352
    Top = 160
    StyleName = 'XP Style'
    object act_Aceptar: TAction
      Caption = 'Aceptar'
      ImageIndex = 67
      OnExecute = act_AceptarExecute
    end
    object act_Cancelar: TAction
      Caption = 'Cancelar'
      ImageIndex = 68
      OnExecute = act_CancelarExecute
    end
  end
end
