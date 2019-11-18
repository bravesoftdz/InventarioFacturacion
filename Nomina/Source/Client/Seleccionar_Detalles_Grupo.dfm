object FSelect_Deducciones_Pagos: TFSelect_Deducciones_Pagos
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FSelect_Deducciones_Pagos'
  ClientHeight = 366
  ClientWidth = 455
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
    Width = 455
    Height = 366
    Align = alClient
    BevelInner = bvLowered
    ParentColor = True
    TabOrder = 0
    object Detalles: TwwDBGrid
      Left = 2
      Top = 2
      Width = 451
      Height = 305
      ControlInfoInDataset = False
      ControlType.Strings = (
        'Selected;CheckBox;Yes;No')
      Selected.Strings = (
        'Selected'#9'2'#9' '#9'F'
        'Descripcion'#9'38'#9'Descripcion'#9'F'
        'Tipo'#9'12'#9'Tipo'#9'F'
        'Monto'#9'15'#9'Monto'#9'F')
      IniAttributes.Enabled = True
      IniAttributes.FileName = 'Detalle_Grupos.grd'
      IniAttributes.SectionName = 'Detalles'
      IniAttributes.Delimiter = ';;'
      TitleColor = 16436860
      FixedCols = 0
      ShowHorzScrollBar = False
      EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
      Align = alTop
      Ctl3D = False
      DataSource = ModuloNomina.dDeducciones
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
      MultiSelectOptions = [msoShiftSelect]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = True
      UseTFields = False
      PadColumnStyle = pcsPlain
      PaintOptions.AlternatingRowColor = 16115407
    end
    object Atb_Editar: TActionToolBar
      Left = 199
      Top = 315
      Width = 253
      Height = 40
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
    object ActionToolBar1: TActionToolBar
      Left = 17
      Top = 308
      Width = 154
      Height = 54
      ActionManager = Opciones
      Align = alNone
      BiDiMode = bdLeftToRight
      Caption = 'Atb_Botones'
      ColorMap = Modulo.ColorConfig
      EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
      EdgeInner = esLowered
      EdgeOuter = esRaised
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Orientation = boTopToBottom
      ParentBiDiMode = False
      ParentFont = False
      Spacing = 0
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
            Action = Cancelar
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
            Action = Cancelar
            ImageIndex = 10
            ShortCut = 27
          end>
      end
      item
        Items = <
          item
            Action = Cancelar
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
            Action = Cancelar
            ImageIndex = 10
            ShortCut = 27
          end>
      end
      item
        Items = <
          item
            Action = Cancelar
            ImageIndex = 10
            ShortCut = 27
          end>
      end
      item
        Items = <
          item
            Action = Aceptar
            Caption = '&Aceptar'
            ImageIndex = 16
            ShortCut = 13
          end
          item
            Action = Cancelar
            Caption = '&Cancelar'
            ImageIndex = 26
            ShortCut = 27
          end>
      end
      item
        Items = <
          item
            Action = Aceptar
            Caption = '&Aceptar'
            ImageIndex = 16
            ShortCut = 13
          end
          item
            Action = Cancelar
            Caption = '&Cancelar'
            ImageIndex = 26
            ShortCut = 27
          end>
        ActionBar = Atb_Editar
      end
      item
        Items = <
          item
            Action = Seleccionar_Todos
            Caption = '&Seleccionar Todos'
            ImageIndex = 7
            ShortCut = 16449
          end
          item
            Action = Ninguno
            Caption = 'Seleccionar &Ninguno'
            ImageIndex = 4
            ShortCut = 46
          end>
        ActionBar = ActionToolBar1
      end>
    Images = Modulo.SystemImages
    Left = 136
    Top = 60
    StyleName = 'XP Style'
    object Cancelar: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Cancelar'
      ImageIndex = 26
      ShortCut = 27
      OnExecute = CancelarExecute
    end
    object Aceptar: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Aceptar'
      ImageIndex = 16
      ShortCut = 13
      OnExecute = AceptarExecute
    end
    object Seleccionar_Todos: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Seleccionar Todos'
      ImageIndex = 7
      ShortCut = 16449
      OnExecute = Seleccionar_TodosExecute
    end
    object Ninguno: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Ninguno'
      ImageIndex = 4
      ShortCut = 46
      OnExecute = NingunoExecute
    end
  end
end
