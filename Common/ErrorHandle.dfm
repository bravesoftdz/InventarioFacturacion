object ReconcileErrorForm: TReconcileErrorForm
  Left = 186
  Top = 166
  BorderStyle = bsDialog
  Caption = 'Error de Actualizaci'#243'n'
  ClientHeight = 162
  ClientWidth = 559
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = DisplayFieldValues
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 57
    Top = 13
    Width = 104
    Height = 13
    Caption = 'Tipo de Actualizaci'#243'n:'
  end
  object UpdateType: TLabel
    Left = 170
    Top = 13
    Width = 48
    Height = 13
    Caption = 'Modified'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Default'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 57
    Top = 33
    Width = 89
    Height = 13
    Caption = 'Mensaje de Error :'
  end
  object IconImage: TImage
    Left = 12
    Top = 12
    Width = 34
    Height = 34
    Picture.Data = {
      055449636F6E0000010002002020100000000000E80200002600000020200200
      00000000300100000E0300002800000020000000400000000100040000000000
      0002000000000000000000000000000000000000000000000000800000800000
      00808000800000008000800080800000C0C0C000808080000000FF0000FF0000
      00FFFF00FF000000FF00FF00FFFF0000FFFFFF00000008888888888888888888
      8888880000008888888888888888888888888880003000000000000000000000
      0008888803BBBBBBBBBBBBBBBBBBBBBBBB7088883BBBBBBBBBBBBBBBBBBBBBBB
      BBB708883BBBBBBBBBBBBBBBBBBBBBBBBBBB08883BBBBBBBBBBBB7007BBBBBBB
      BBBB08803BBBBBBBBBBBB0000BBBBBBBBBB7088003BBBBBBBBBBB0000BBBBBBB
      BBB0880003BBBBBBBBBBB7007BBBBBBBBB708800003BBBBBBBBBBBBBBBBBBBBB
      BB088000003BBBBBBBBBBB0BBBBBBBBBB70880000003BBBBBBBBB707BBBBBBBB
      B08800000003BBBBBBBBB303BBBBBBBB7088000000003BBBBBBBB000BBBBBBBB
      0880000000003BBBBBBB70007BBBBBB708800000000003BBBBBB30003BBBBBB0
      88000000000003BBBBBB00000BBBBB70880000000000003BBBBB00000BBBBB08
      800000000000003BBBBB00000BBBB7088000000000000003BBBB00000BBBB088
      0000000000000003BBBB00000BBB708800000000000000003BBB70007BBB0880
      00000000000000003BBBBBBBBBB70880000000000000000003BBBBBBBBB08800
      000000000000000003BBBBBBBB7088000000000000000000003BBBBBBB088000
      0000000000000000003BBBBBB708800000000000000000000003BBBBB0880000
      00000000000000000003BBBB70800000000000000000000000003BB700000000
      0000000000000000000003330000000000000000F8000003F0000001C0000000
      80000000000000000000000000000001000000018000000380000003C0000007
      C0000007E000000FE000000FF000001FF000001FF800003FF800003FFC00007F
      FC00007FFE0000FFFE0000FFFF0001FFFF0001FFFF8003FFFF8003FFFFC007FF
      FFC007FFFFE00FFFFFE01FFFFFF07FFFFFF8FFFF280000002000000040000000
      0100010000000000800000000000000000000000000000000000000000000000
      FFFFFF000000000000000000000000003FFFFFC07FFFFFE07FFFFFF07FFCFFF0
      7FF87FE03FF87FE03FFCFFC01FFFFFC01FFDFF800FFDFF800FFDFF0007F8FF00
      07F8FE0003F8FE0003F07C0001F07C0001F0780000F0780000F070000078F000
      007FE000003FE000003FC000001FC000001F8000000F8000000F000000060000
      00000000FFFFFFFFFFFFFFFFC000001F8000000F000000070000000700000007
      000000078000000F8000000FC000001FC000001FE000003FE000003FF000007F
      F000007FF80000FFF80000FFFC0001FFFC0001FFFE0003FFFE0003FFFF0007FF
      FF0007FFFF800FFFFF800FFFFFC01FFFFFC01FFFFFE03FFFFFE03FFFFFF07FFF
      FFF8FFFF}
  end
  object UpdateData: TStringGrid
    Left = 9
    Top = 185
    Width = 389
    Height = 131
    ColCount = 4
    Ctl3D = False
    DefaultColWidth = 119
    RowCount = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goThumbTracking]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    OnSelectCell = UpdateDataSelectCell
    OnSetEditText = UpdateDataSetEditText
  end
  object ActionGroup: TRadioGroup
    Left = 296
    Top = 322
    Width = 102
    Height = 113
    Caption = 'Acci'#243'n a Tomar'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    OnClick = DisplayFieldValues
  end
  object ConflictsOnly: TCheckBox
    Left = 9
    Top = 321
    Width = 188
    Height = 17
    Caption = 'Mostrar Solo Campos Conflictivos'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    OnClick = DisplayFieldValues
  end
  object ErrorMsg: TMemo
    Left = 56
    Top = 52
    Width = 342
    Height = 71
    TabStop = False
    Color = clBtnFace
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 4
  end
  object ChangedOnly: TCheckBox
    Left = 9
    Top = 336
    Width = 206
    Height = 17
    Caption = 'Mostrar Solo Campos Actualizados'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    OnClick = DisplayFieldValues
  end
  object adv_OptionPanel: TAdvToolPanel
    Left = 404
    Top = 0
    Width = 155
    Height = 162
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
      Layout = blGlyphLeftAdjusted
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
      Layout = blGlyphLeftAdjusted
    end
  end
  object gbt_Detalles: TAdvGlowButton
    Left = 271
    Top = 126
    Width = 127
    Height = 30
    Action = Mas_Detalles
    ImageIndex = 65
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    Transparent = True
    TabOrder = 6
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
  object Opciones_Pantalla: TActionManager
    Images = Modulo.SystemImages
    Left = 96
    Top = 64
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
    object Mas_Detalles: TAction
      Caption = 'M'#225's Detalles'
      ImageIndex = 65
      OnExecute = Mas_DetallesExecute
    end
    object Menos_Detalles: TAction
      Caption = 'Menos Detalles'
      ImageIndex = 62
      OnExecute = Menos_DetallesExecute
    end
  end
end
