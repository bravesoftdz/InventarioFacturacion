object FDetalles_Nomina: TFDetalles_Nomina
  Left = 541
  Top = 0
  BorderStyle = bsNone
  Caption = 'FDetalles_Nomina'
  ClientHeight = 600
  ClientWidth = 638
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 638
    Height = 600
    Align = alClient
    BevelInner = bvLowered
    BevelKind = bkFlat
    ParentColor = True
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 51
      Width = 65
      Height = 13
      Caption = 'Total Horas'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 5
      Top = 92
      Width = 57
      Height = 13
      Caption = 'Horas Extra'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 5
      Top = 111
      Width = 104
      Height = 13
      Caption = 'Horas Extraordinarias'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 5
      Top = 137
      Width = 217
      Height = 23
      Caption = '&Deducciones Aplicadas'
      FocusControl = Deducciones
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 5
      Top = 71
      Width = 79
      Height = 13
      Caption = 'Horas Regulares'
      FocusControl = DBEdit4
    end
    object Label6: TLabel
      Left = 432
      Top = 137
      Width = 98
      Height = 23
      Caption = '&Horas/D'#237'a'
      FocusControl = Dias
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 5
      Top = 325
      Width = 267
      Height = 23
      Caption = '&Pagos/Incentivos Aplicados'
      FocusControl = Pagos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Dias: TwwDataInspector
      Left = 432
      Top = 161
      Width = 191
      Height = 344
      DisableThemes = False
      Color = clWindow
      Ctl3D = False
      CaptionColor = clSkyBlue
      ParentCtl3D = False
      TabOrder = 0
      DataSource = ModuloNomina.dDias_Laborados
      Items = <>
      CaptionWidth = 123
      Options = [ovColumnResize, ovRowResize, ovEnterToTab, ovHighlightActiveRow, ovCenterCaptionVert]
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = [fsBold]
      ReadOnly = True
      OnDrawDataCell = DiasDrawDataCell
      OnDrawCaptionCell = DiasDrawCaptionCell
    end
    object Nombres: TDBEdit
      Left = 5
      Top = 3
      Width = 623
      Height = 19
      TabStop = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'Nombre_Empleado'
      DataSource = ModuloNomina.dDetalle_Nomina
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 117
      Top = 49
      Width = 65
      Height = 19
      TabStop = False
      Ctl3D = False
      DataField = 'Total_Horas'
      DataSource = ModuloNomina.dDetalle_Nomina
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 117
      Top = 89
      Width = 65
      Height = 19
      TabStop = False
      Ctl3D = False
      DataField = 'Total_Horas_Extra'
      ParentColor = True
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 117
      Top = 109
      Width = 65
      Height = 19
      TabStop = False
      Ctl3D = False
      DataField = 'Total_Horas_Extraordinarias'
      DataSource = ModuloNomina.dDetalle_Nomina
      ParentColor = True
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
    object Deducciones: TwwDBGrid
      Left = 5
      Top = 161
      Width = 421
      Height = 157
      ControlInfoInDataset = False
      Selected.Strings = (
        'Nombre_Deduccion'#9'31'#9'Deducci'#243'n'#9'F'
        'Monto_Deducir'#9'6'#9'Monto'#9'F'
        'Salario'#9'12'#9'Deducido de '#9'F'
        'Total_Deduccion'#9'12'#9'Total'#9'F')
      IniAttributes.Enabled = True
      IniAttributes.FileName = 'Det-Deducciones.grd'
      IniAttributes.SectionName = 'Jornal'
      IniAttributes.Delimiter = ';;'
      TitleColor = 11322871
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = ModuloNomina.dDetalle_Deducciones
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyOptions = [dgEnterToTab, dgAllowDelete]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 5
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = False
      UseTFields = False
      PadColumnStyle = pcsPlain
      PaintOptions.AlternatingRowColor = 11322871
    end
    object Pagos: TwwDBGrid
      Left = 5
      Top = 348
      Width = 421
      Height = 157
      ControlInfoInDataset = False
      Selected.Strings = (
        'Nombre_Pago'#9'31'#9'Pago/Incentivo'#9'F'
        'Monto_Pagar'#9'6'#9'Monto'#9'F'
        'Salario'#9'12'#9'Calculado de'#9'F'
        'Total_Pago'#9'12'#9'Total'#9'F')
      IniAttributes.Enabled = True
      IniAttributes.FileName = 'Det-Pagos.grd'
      IniAttributes.SectionName = 'Jornal'
      IniAttributes.Delimiter = ';;'
      TitleColor = clMoneyGreen
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = ModuloNomina.dDetalle_Pagos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyOptions = [dgEnterToTab, dgAllowDelete]
      ParentFont = False
      TabOrder = 6
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = False
      UseTFields = False
      PadColumnStyle = pcsPlain
      PaintOptions.AlternatingRowColor = clMoneyGreen
    end
    object Atb_Editar: TActionToolBar
      Left = 546
      Top = 522
      Width = 82
      Height = 39
      ActionManager = Opciones
      Align = alNone
      Caption = 'Atb_Botones'
      ColorMap = Modulo.ColorConfig
      EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
      EdgeInner = esLowered
      EdgeOuter = esRaised
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Orientation = boTopToBottom
      ParentFont = False
      Spacing = 0
    end
    object DBEdit4: TDBEdit
      Left = 117
      Top = 69
      Width = 65
      Height = 19
      TabStop = False
      Ctl3D = False
      DataField = 'Total_Horas_Trabajadas'
      DataSource = ModuloNomina.dDetalle_Nomina
      ParentColor = True
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 8
    end
    object Navegador: TwwDBNavigator
      Left = 322
      Top = 522
      Width = 202
      Height = 27
      DataSource = ModuloNomina.dDetalle_Nomina
      ShowHint = True
      RepeatInterval.InitialDelay = 500
      RepeatInterval.Interval = 100
      BevelOuter = bvLowered
      ParentShowHint = False
      Transparent = True
      object Primer_Registro: TwwNavButton
        Left = 1
        Top = 1
        Width = 25
        Height = 25
        Hint = 'Primer Registro'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'Primer Registro'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 0
        Style = nbsFirst
      end
      object Anteriores10: TwwNavButton
        Left = 26
        Top = 1
        Width = 25
        Height = 25
        Hint = 'Retroceder 10 Registros'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'Anteriores 10'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 1
        Style = nbsPriorPage
      end
      object Anterior: TwwNavButton
        Left = 51
        Top = 1
        Width = 25
        Height = 25
        Hint = 'Registro Anterior'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'Anterior'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 2
        Style = nbsPrior
      end
      object Proximo: TwwNavButton
        Left = 76
        Top = 1
        Width = 25
        Height = 25
        Hint = 'Siguiente Registro'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'Pr'#243'ximo'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 3
        Style = nbsNext
      end
      object Proximos10: TwwNavButton
        Left = 101
        Top = 1
        Width = 25
        Height = 25
        Hint = 'Avanzar 10 Registros'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'Pr'#243'ximos 10'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 4
        Style = nbsNextPage
      end
      object Ultimo_Registro: TwwNavButton
        Left = 126
        Top = 1
        Width = 25
        Height = 25
        Hint = #218'ltimoRegistro'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = #218'ltimo Registro'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 5
        Style = nbsLast
      end
      object Marcar: TwwNavButton
        Left = 151
        Top = 1
        Width = 25
        Height = 25
        Hint = 'Marcar Registro Actual'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'Marcar'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 6
        Style = nbsSaveBookmark
      end
      object VolverMarcado: TwwNavButton
        Left = 176
        Top = 1
        Width = 25
        Height = 25
        Hint = 'Volver al Registro Marcado'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'Volver Marcado'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 7
        Style = nbsRestoreBookmark
      end
    end
  end
  object Opciones: TActionManager
    ActionBars = <
      item
        Items.HideUnused = False
        Items = <
          item
            Items.HideUnused = False
            Items = <>
            Caption = '&Recibos'
          end>
      end
      item
        Items = <
          item
            Caption = '-'
          end
          item
            Caption = '-'
          end
          item
            Caption = '-'
          end>
      end
      item
      end
      item
      end
      item
      end
      item
        Items = <
          item
            Caption = '&Recibos'
          end>
      end
      item
        Items = <
          item
            Caption = '-'
          end
          item
            Caption = '-'
          end
          item
            Caption = '-'
          end
          item
            Action = Salir
            Caption = '&Salir'
            ImageIndex = 10
            ShortCut = 27
          end>
      end
      item
      end
      item
        Items.CaptionOptions = coAll
        Items = <
          item
            Caption = '-'
          end
          item
            Action = Salir
            Caption = '&Salir'
            ImageIndex = 10
            ShortCut = 27
          end>
      end
      item
        Items = <
          item
            Action = Salir
            Caption = '&Salir'
            ImageIndex = 10
            ShortCut = 27
          end>
      end
      item
      end
      item
        Items = <
          item
            Caption = '&Opciones'
          end>
      end
      item
        Items = <
          item
            Action = Salir
            Caption = '&Salir'
            ImageIndex = 10
            ShortCut = 27
          end>
      end
      item
        Items = <
          item
            Caption = '-'
          end
          item
            Action = Salir
            Caption = '&Salir'
            ImageIndex = 10
            ShortCut = 27
          end>
      end
      item
        Items = <
          item
            Action = Salir
            Caption = '&Salir'
            ImageIndex = 10
            ShortCut = 27
          end>
      end
      item
        Items = <
          item
            Caption = '-'
          end
          item
            Action = Salir
            Caption = '&Salir'
            ImageIndex = 10
            ShortCut = 27
          end>
      end
      item
        Items = <
          item
            Caption = '-'
          end
          item
            Action = Salir
            Caption = '&Salir'
            ImageIndex = 10
            ShortCut = 27
          end>
      end
      item
        Items = <
          item
            Caption = '-'
          end
          item
            Caption = '-'
          end>
      end
      item
        Items = <
          item
            Action = Salir
            Caption = '&Salir'
            ImageIndex = 10
            ShortCut = 27
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = Salir
            Caption = '&Salir'
            ImageIndex = 10
            ShortCut = 27
          end>
        ActionBar = Atb_Editar
      end>
    Images = Modulo.SystemImages
    Left = 347
    Top = 64
    StyleName = 'XP Style'
    object Salir: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Salir'
      ImageIndex = 10
      ShortCut = 27
      OnExecute = SalirExecute
    end
  end
end
