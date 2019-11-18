object FPaises: TFPaises
  Left = 98
  Top = 45
  BorderStyle = bsToolWindow
  Caption = 'Registro y Modificaci'#243'n de Paises, Ciudades, Zonas y Sectores'
  ClientHeight = 573
  ClientWidth = 627
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Barra_Menu: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 627
    Height = 27
    UseSystemFont = False
    ActionManager = Opciones
    Caption = 'Barra_Menu'
    Color = 16771030
    ColorMap = ColorConfig
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    EdgeInner = esLowered
    EdgeOuter = esRaised
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    PersistentHotKeys = True
    Spacing = 0
  end
  object ColorConfig: TXPColorMap
    Color = 16771030
    HighlightColor = 14410210
    BtnSelectedColor = clBtnFace
    UnusedColor = 14410210
    Left = 389
    Top = 100
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
            Action = Eliminar
            ImageIndex = 26
            ShortCut = 16453
          end
          item
            Action = Buscar
            ImageIndex = 69
            ShortCut = 16450
          end
          item
            Action = Nuevo
            ImageIndex = 1
            ShortCut = 16462
          end
          item
            Action = Guardar
            ImageIndex = 0
            ShortCut = 16455
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
        Items = <
          item
            Items = <
              item
                Action = Guardar
                ImageIndex = 0
                ShortCut = 16455
              end
              item
                Action = Nuevo
                Caption = '&Nuevo'
                ImageIndex = 1
                ShortCut = 16462
              end
              item
                Action = Buscar
                Caption = '&Buscar'
                ImageIndex = 69
                ShortCut = 16450
              end
              item
                Action = Eliminar
                Caption = '&Eliminar'
                ImageIndex = 26
                ShortCut = 16453
              end>
            Caption = '&Opciones'
          end>
        ActionBar = Barra_Menu
      end
      item
        Items = <
          item
            Action = Guardar
            ImageIndex = 0
            ShortCut = 16455
          end
          item
            Action = Nuevo
            Caption = '&Nuevo'
            ImageIndex = 1
            ShortCut = 16462
          end
          item
            Action = Buscar
            Caption = '&Buscar'
            ImageIndex = 69
            ShortCut = 16450
          end
          item
            Action = Eliminar
            Caption = '&Eliminar'
            ImageIndex = 26
            ShortCut = 16453
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
            Action = Guardar
            ImageIndex = 0
            ShortCut = 16455
          end
          item
            Action = Nuevo
            Caption = '&Nuevo'
            ImageIndex = 1
            ShortCut = 16462
          end
          item
            Action = Buscar
            Caption = '&Buscar'
            ImageIndex = 69
            ShortCut = 16450
          end
          item
            Action = Eliminar
            Caption = '&Eliminar'
            ImageIndex = 26
            ShortCut = 16453
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
        Items = <
          item
            Action = Nuevo
            Caption = '&Nuevo'
            ImageIndex = 1
            ShortCut = 16462
          end
          item
            Action = Buscar
            Caption = '&Buscar'
            ImageIndex = 69
            ShortCut = 16450
          end
          item
            Action = Eliminar
            Caption = '&Eliminar'
            ImageIndex = 26
            ShortCut = 16453
          end
          item
            Action = Guardar
            ImageIndex = 0
            ShortCut = 16455
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
            Action = Guardar
            ImageIndex = 0
            ShortCut = 16455
          end
          item
            Action = Nuevo
            Caption = '&Nuevo'
            ImageIndex = 1
            ShortCut = 16462
          end
          item
            Action = Buscar
            Caption = '&Buscar'
            ImageIndex = 69
            ShortCut = 16450
          end
          item
            Action = Eliminar
            Caption = '&Eliminar'
            ImageIndex = 26
            ShortCut = 16453
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
        Items = <
          item
            Action = Guardar
            ImageIndex = 0
            ShortCut = 16455
          end
          item
            Action = Nuevo
            Caption = '&Nuevo'
            ImageIndex = 1
            ShortCut = 16462
          end
          item
            Action = Buscar
            Caption = '&Buscar'
            ImageIndex = 69
            ShortCut = 16450
          end
          item
            Action = Eliminar
            Caption = '&Eliminar'
            ImageIndex = 26
            ShortCut = 16453
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
        Items = <
          item
            Action = Anadir_Ciudad
            Caption = '&A'#241'adir'
            ImageIndex = 1
          end
          item
            Action = Modificar_Ciudad
            ImageIndex = 60
          end
          item
            Action = Buscar_Ciudad
            Caption = '&Buscar'
            ImageIndex = 69
          end
          item
            Action = Eliminar_Ciudad
            Caption = '&Eliminar'
            ImageIndex = 26
          end>
      end
      item
        Items = <
          item
            Action = Anadir_Zona
            Caption = '&A'#241'adir'
            ImageIndex = 1
          end
          item
            Action = Modificar_Zona
            Caption = '&Modificar'
            ImageIndex = 60
          end
          item
            Action = Eliminar_Zona
            Caption = '&Eliminar'
            ImageIndex = 26
          end>
      end
      item
        Items = <
          item
            Action = Anadir_Sector
            Caption = '&A'#241'adir'
            ImageIndex = 1
          end
          item
            Action = Modificar_Sector
            Caption = '&Modificar'
            ImageIndex = 60
          end
          item
            Action = Eliminar_Sector
            Caption = '&Eliminar'
            ImageIndex = 26
          end>
      end>
    Images = Modulo.SystemImages
    Left = 360
    Top = 100
    StyleName = 'XP Style'
    object Anadir_Zona: TAction
      Category = 'Opciones Zonas'
      Caption = 'A'#241'adir'
      ImageIndex = 1
      OnExecute = Anadir_ZonaExecute
    end
    object Modificar_Zona: TAction
      Category = 'Opciones Zonas'
      Caption = 'Modificar'
      ImageIndex = 60
      OnExecute = Modificar_ZonaExecute
    end
    object Eliminar_Zona: TAction
      Category = 'Opciones Zonas'
      Caption = 'Eliminar'
      ImageIndex = 26
      OnExecute = Eliminar_ZonaExecute
    end
    object Anadir_Sector: TAction
      Category = 'Opciones Sectores'
      Caption = 'A'#241'adir'
      ImageIndex = 1
      OnExecute = Anadir_SectorExecute
    end
    object Modificar_Sector: TAction
      Category = 'Opciones Sectores'
      Caption = 'Modificar'
      ImageIndex = 60
      OnExecute = Modificar_SectorExecute
    end
    object Eliminar_Sector: TAction
      Category = 'Opciones Sectores'
      Caption = 'Eliminar'
      ImageIndex = 26
      OnExecute = Eliminar_SectorExecute
    end
    object Salir: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Salir'
      ImageIndex = 10
      ShortCut = 27
      OnExecute = SalirExecute
    end
    object Guardar: TAction
      Category = 'Opciones'
      Caption = 'Guardar                                .'
      ImageIndex = 0
      ShortCut = 16455
      OnExecute = GuardarExecute
    end
    object Nuevo: TAction
      Category = 'Opciones'
      Caption = 'Nuevo'
      ImageIndex = 1
      ShortCut = 16462
      OnExecute = NuevoExecute
    end
    object Buscar: TAction
      Category = 'Opciones'
      Caption = 'Buscar'
      ImageIndex = 69
      ShortCut = 16450
      OnExecute = BuscarExecute
    end
    object Eliminar: TAction
      Category = 'Opciones'
      Caption = 'Eliminar'
      ImageIndex = 26
      ShortCut = 16453
      OnExecute = EliminarExecute
    end
    object Anadir_Ciudad: TAction
      Category = 'Opciones Ciudades'
      Caption = 'A'#241'adir'
      ImageIndex = 1
      OnExecute = Anadir_CiudadExecute
    end
    object Modificar_Ciudad: TAction
      Category = 'Opciones Ciudades'
      Caption = 'Modificar'
      ImageIndex = 60
      OnExecute = Modificar_CiudadExecute
    end
    object Buscar_Ciudad: TAction
      Category = 'Opciones Ciudades'
      Caption = 'Buscar'
      ImageIndex = 69
      OnExecute = Buscar_CiudadExecute
    end
    object Eliminar_Ciudad: TAction
      Category = 'Opciones Ciudades'
      Caption = 'Eliminar'
      ImageIndex = 26
      OnExecute = Eliminar_CiudadExecute
    end
  end
end
