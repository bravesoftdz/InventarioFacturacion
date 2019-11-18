object FMainMenu: TFMainMenu
  Left = 152
  Top = 116
  BorderStyle = bsToolWindow
  Caption = 'Menu Principal'
  ClientHeight = 573
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    792
    573)
  PixelsPerInch = 96
  TextHeight = 13
  object BackGroundImage: TImage
    Left = 0
    Top = 30
    Width = 792
    Height = 523
    Align = alClient
    Stretch = True
    Transparent = True
    ExplicitLeft = 416
    ExplicitWidth = 376
  end
  object Card: TImage
    Left = 8
    Top = 32
    Width = 369
    Height = 145
    Transparent = True
  end
  object Label1: TLabel
    Left = 8
    Top = 712
    Width = 51
    Height = 13
    Caption = 'Secuencia'
    Visible = False
  end
  object Principal: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 792
    Height = 30
    UseSystemFont = False
    ActionManager = Opciones
    Caption = 'Principal'
    ColorMap.HighlightColor = 15660791
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 15660791
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Spacing = 0
  end
  object Main_Status_Bar: TfcStatusBar
    Left = 0
    Top = 553
    Width = 792
    Height = 20
    Panels = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Name = 'Usuarios'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '150'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Name = 'Terminales'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '150'
      end
      item
        Bevel = pbNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Name = 'NumLock'
        Style = psNumLock
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '50'
      end
      item
        Bevel = pbNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Name = 'CapsLock'
        Style = psCapsLock
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '50'
      end
      item
        Bevel = pbRaised
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Name = 'Fecha'
        Style = psDate
        Tag = 0
        Text = '8/7/2006'
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '80'
      end
      item
        Bevel = pbRaised
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Name = 'Hora'
        Style = psTime
        Tag = 0
        Text = '6:56 AM'
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '50'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Name = 'Mensajes'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '50'
      end>
    SimplePanel = False
    SizeGrip = False
    StatusBarText.CapsLock = 'Caps'
    StatusBarText.Overwrite = 'Overwrite'
    StatusBarText.NumLock = 'Num'
    StatusBarText.ScrollLock = 'Scroll'
  end
  object AdvPageControl1: TAdvPageControl
    Left = 7
    Top = 286
    Width = 146
    Height = 265
    ActivePage = Botones
    ActiveFont.Charset = DEFAULT_CHARSET
    ActiveFont.Color = clWindowText
    ActiveFont.Height = -11
    ActiveFont.Name = 'Tahoma'
    ActiveFont.Style = []
    Anchors = [akLeft, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Images = Modulo.SystemImages
    ParentFont = False
    TabBorderColor = clBlack
    TabSheetBorderColor = clBlack
    TabBackGroundColor = clBtnFace
    TabBackGround.Data = {
      7E090000424D7E09000000000000360000002800000024000000160000000100
      18000000000048090000120B0000120B00000000000000000000EF98F4EF98F4
      EF98F4EF98F4EF98F4EF98F4EF98F4EF98F4EF98F4EF98F4EF98F4EF98F4EF98
      F4EF98F4EF98F4EF98F4EF98F4EF98F4EF98F4EF98F4EF98F4EF98F4EF98F4EF
      98F4EF98F4EF98F4EF98F4EF98F4EF98F4EF98F4EF98F4EF98F4EF98F4EF98F4
      EF98F4EF98F49C613BE5AB8EE5AB8EE5AB8EE5AB8EE5AB8EE5AB8EE5AB8EE5AB
      8EE5AB8EE5AB8EE5AB8EE5AB8EE5AB8EE5AB8EE5AB8EE5AB8EE5AB8EE5AB8EE5
      AB8EE5AB8EE5AB8EE5AB8EE5AB8EE5AB8EE5AB8EE5AB8EE5AB8EE5AB8EE5AB8E
      E5AB8EE5AB8EE5AB8EE5AB8EE5AB8E9C613B9C613BE6AE92E6AE92E6AE92E6AE
      92E6AE92E6AE92E6AE92E6AE92E6AE92E6AE92E6AE92E6AE92E6AE92E6AE92E6
      AE92E6AE92E6AE92E6AE92E6AE92E6AE92E6AE92E6AE92E6AE92E6AE92E6AE92
      E6AE92E6AE92E6AE92E6AE92E6AE92E6AE92E6AE92E6AE92FFFFFF9C613B9C61
      3BE7B197E7B197E7B197E7B197E7B197E7B197E7B197E7B197E7B197E7B197E7
      B197E7B197E7B197E7B197E7B197E7B197E7B197E7B197E7B197E7B197E7B197
      E7B197E7B197E7B197E7B197E7B197E7B197E7B197E7B197E7B197E7B197E7B1
      97E7B197FFFFFF9C613B9C613BE8B59BE8B59BE8B59BE8B59BE8B59BE8B59BE8
      B59BE8B59BE8B59BE8B59BE8B59BE8B59BE8B59BE8B59BE8B59BE8B59BE8B59B
      E8B59BE8B59BE8B59BE8B59BE8B59BE8B59BE8B59BE8B59BE8B59BE8B59BE8B5
      9BE8B59BE8B59BE8B59BE8B59BE8B59BFFFFFF9C613B9C613BE9B8A0E9B8A0E9
      B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0
      E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8
      A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0E9B8A0FFFFFF9C
      613B9C613BEABBA4EABBA4EABBA4EABBA4EABBA4EABBA4EABBA4EABBA4EABBA4
      EABBA4EABBA4EABBA4EABBA4EABBA4EABBA4EABBA4EABBA4EABBA4EABBA4EABB
      A4EABBA4EABBA4EABBA4EABBA4EABBA4EABBA4EABBA4EABBA4EABBA4EABBA4EA
      BBA4EABBA4EABBA4FFFFFF9C613B9C613BEBBFA9EBBFA9EBBFA9EBBFA9EBBFA9
      EBBFA9EBBFA9EBBFA9EBBFA9EBBFA9EBBFA9EBBFA9EBBFA9EBBFA9EBBFA9EBBF
      A9EBBFA9EBBFA9EBBFA9EBBFA9EBBFA9EBBFA9EBBFA9EBBFA9EBBFA9EBBFA9EB
      BFA9EBBFA9EBBFA9EBBFA9EBBFA9EBBFA9EBBFA9FFFFFF9C613B9C613BECC2AD
      ECC2ADECC2ADECC2ADECC2ADECC2ADECC2ADECC2ADECC2ADECC2ADECC2ADECC2
      ADECC2ADECC2ADECC2ADECC2ADECC2ADECC2ADECC2ADECC2ADECC2ADECC2ADEC
      C2ADECC2ADECC2ADECC2ADECC2ADECC2ADECC2ADECC2ADECC2ADECC2ADECC2AD
      FFFFFF9C613B9C613BEDC5B2EDC5B2EDC5B2EDC5B2EDC5B2EDC5B2EDC5B2EDC5
      B2EDC5B2EDC5B2EDC5B2EDC5B2EDC5B2EDC5B2EDC5B2EDC5B2EDC5B2EDC5B2ED
      C5B2EDC5B2EDC5B2EDC5B2EDC5B2EDC5B2EDC5B2EDC5B2EDC5B2EDC5B2EDC5B2
      EDC5B2EDC5B2EDC5B2EDC5B2FFFFFF9C613B9C613BEEC8B6EEC8B6EEC8B6EEC8
      B6EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6EE
      C8B6EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6
      EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6EEC8B6FFFFFF9C613B9C61
      3BEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEF
      CCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBA
      EFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCCBAEFCC
      BAEFCCBAFFFFFF9C613B9C613BF0CFBFF0CFBFF0CFBFF0CFBFF0CFBFF0CFBFF0
      CFBFF0CFBFF0CFBFF0CFBFF0CFBFF0CFBFF0CFBFF0CFBFF0CFBFF0CFBFF0CFBF
      F0CFBFF0CFBFF0CFBFF0CFBFF0CFBFF0CFBFF0CFBFF0CFBFF0CFBFF0CFBFF0CF
      BFF0CFBFF0CFBFF0CFBFF0CFBFF0CFBFFFFFFF9C613B9C613BF1D2C3F1D2C3F1
      D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3
      F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2
      C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3F1D2C3FFFFFF9C
      613B9C613BF2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8
      F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6
      C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2D6C8F2
      D6C8F2D6C8F2D6C8FFFFFF9C613B9C613BF3D9CCF3D9CCF3D9CCF3D9CCF3D9CC
      F3D9CCF3D9CCF3D9CCF3D9CCF3D9CCF3D9CCF3D9CCF3D9CCF3D9CCF3D9CCF3D9
      CCF3D9CCF3D9CCF3D9CCF3D9CCF3D9CCF3D9CCF3D9CCF3D9CCF3D9CCF3D9CCF3
      D9CCF3D9CCF3D9CCF3D9CCF3D9CCF3D9CCF3D9CCFFFFFF9C613B9C613BFFFFFF
      F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DC
      D1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4
      DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1F4DCD1
      FFFFFF9C613BEF98F49C613BF5E0D5F5E0D5F5E0D5F5E0D5F5E0D5F5E0D5F5E0
      D5F5E0D5F5E0D5F5E0D5F5E0D5F5E0D5F5E0D5F5E0D5F5E0D5F5E0D5F5E0D5F5
      E0D5F5E0D5F5E0D5F5E0D5F5E0D5F5E0D5F5E0D5F5E0D5F5E0D5F5E0D5F5E0D5
      F5E0D5F5E0D5F5E0D5F5E0D5FFFFFF9C613BEF98F49C613BFFFFFFFFFFFFF6E3
      DAF6E3DAF6E3DAF6E3DAF6E3DAF6E3DAF6E3DAF6E3DAF6E3DAF6E3DAF6E3DAF6
      E3DAF6E3DAF6E3DAF6E3DAF6E3DAF6E3DAF6E3DAF6E3DAF6E3DAF6E3DAF6E3DA
      F6E3DAF6E3DAF6E3DAF6E3DAF6E3DAF6E3DAF6E3DAF6E3DAFFFFFF9C613BEF98
      F4EF98F49C613B9C613BFFFFFFFFFFFFF7E6DEF7E6DEF7E6DEF7E6DEF7E6DEF7
      E6DEF7E6DEF7E6DEF7E6DEF7E6DEF7E6DEF7E6DEF7E6DEF7E6DEF7E6DEF7E6DE
      F7E6DEF7E6DEF7E6DEF7E6DEF7E6DEF7E6DEF7E6DEF7E6DEF7E6DEF7E6DEF7E6
      DEF7E6DEFFFFFF9C613BEF98F4EF98F4EF98F4EF98F49C613B9C613BFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C613BEF98F4EF98F4EF98F4EF98F4EF
      98F4EF98F4EF98F49C613B9C613B9C613B9C613B9C613B9C613B9C613B9C613B
      9C613B9C613B9C613B9C613B9C613B9C613B9C613B9C613B9C613B9C613B9C61
      3B9C613B9C613B9C613B9C613B9C613B9C613B9C613B9C613B9C613BEF98F4EF
      98F4}
    TabMargin.LeftMargin = 15
    TabMargin.RightMargin = 0
    TabOverlap = 0
    TabSplitLine = True
    RoundEdges = True
    Version = '1.4.0.4'
    TabHeight = 19
    TabOrder = 2
    TabStop = False
    TabWidth = 100
    object Botones: TAdvTabSheet
      Color = clBtnFace
      ColorTo = clNone
      ImageIndex = 63
      TabGradientDirection = gdHorizontal
      TabColor = clBlack
      TabColorTo = clOlive
      object OpcionesBotones: TActionToolBar
        Left = 0
        Top = 0
        Width = 138
        Height = 236
        ActionManager = Opciones
        Align = alClient
        AllowHiding = False
        Caption = 'Opciones'
        ColorMap.HighlightColor = 15660791
        ColorMap.BtnSelectedColor = clBtnFace
        ColorMap.UnusedColor = 15660791
        Orientation = boTopToBottom
        Spacing = 0
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
            Action = Configuracion
            Caption = '&Configuracion'
            ImageIndex = 68
          end
          item
            Action = Departamentos
            ImageIndex = 57
          end
          item
            Action = Registro_Productos
            ImageIndex = 56
            ShortCut = 112
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
            Items = <
              item
                Action = Registro_Productos
                Caption = '&Registro de Productos'
                ImageIndex = 56
                ShortCut = 112
              end
              item
                Caption = '-'
              end
              item
                Action = Departamentos
                Caption = '&Departamentos'
                ImageIndex = 57
              end
              item
                Action = Categorias
                Caption = '&Categor'#237'as'
                ImageIndex = 57
              end
              item
                Action = Tipos_Productos
                Caption = '&Tipos de Productos'
                ImageIndex = 57
              end
              item
                Action = Status
                Caption = '&Estatus'
                ImageIndex = 57
              end
              item
                Caption = '-'
              end
              item
                Action = Formas_Pago
                Caption = 'F&ormas de Pago'
                ImageIndex = 9
              end
              item
                Action = Terminos_Facturacion
                Caption = 'T'#233'r&minos de Facturaci'#243'n'
                ImageIndex = 23
              end
              item
                Caption = '-'
              end
              item
                Action = Fabricantes
                Caption = '&Fabricantes'
                ImageIndex = 41
              end
              item
                Action = Proveedores
                Caption = '&Proveedores'
                ImageIndex = 41
              end
              item
                Action = Bancos
                Caption = '&Bancos'
                ImageIndex = 79
              end
              item
                Caption = '-'
              end
              item
                Action = Clientes
                Caption = 'C&lientes'
                ImageIndex = 66
                ShortCut = 113
              end>
            Caption = '&Registro'
          end
          item
            Items = <
              item
                Action = Compras
                Caption = '&Compras'
                ImageIndex = 44
                ShortCut = 115
              end
              item
                Action = Facturacion
                Caption = '&Facturaci'#243'n'
                ImageIndex = 44
                ShortCut = 114
              end
              item
                Action = Salida_Inventario
                Caption = '&Salida de Inventario'
                ImageIndex = 74
                ShortCut = 116
              end
              item
                Caption = '-'
              end
              item
                Action = Cuentas_Cobrar
                Caption = 'C&uentas por Cobrar'
              end
              item
                Action = Cuentas_Pagar
                Caption = 'Cu&entas por Pagar'
              end
              item
                Caption = '-'
              end
              item
                Action = Devoluciones_Compras
                Caption = '&Devoluciones en Compras'
              end
              item
                Action = Devoluciones_Ventas
                Caption = 'De&voluciones en Ventas'
              end
              item
                Caption = '-'
              end
              item
                Action = Notas_Debito
                Caption = '&Notas de D'#233'bito'
              end
              item
                Action = Notas_Credito
                Caption = 'N&otas de Cr'#233'dito'
              end>
            Caption = '&Operaciones'
          end
          item
            Caption = '-'
          end
          item
            Items = <
              item
                Action = Rep_Clientes
                Caption = '&Clientes'
              end
              item
                Action = Rep_Proveedores
                Caption = '&Proveedores'
              end
              item
                Action = Rep_Fabricantes
                Caption = '&Fabricantes'
              end
              item
                Items = <
                  item
                    Action = Rep_Prod_General
                    Caption = '&General'
                  end
                  item
                    Caption = '-'
                  end
                  item
                    Action = Rep_Prod_Clasificados_Fabricante
                    Caption = '&Clasificados por Fabricante'
                  end
                  item
                    Action = Rep_Prod_Clasificados_Proveedor
                    Caption = 'C&lasificados por Proveedor'
                  end
                  item
                    Action = Rep_Prod_Clasificados_Categoria
                    Caption = 'Cl&asificados por Categoria'
                  end
                  item
                    Action = Rep_Prod_Clasificados_Tipo_Productos
                    Caption = 'Cla&sificados por Tipo de Productos'
                  end
                  item
                    Action = Rep_Prod_Clasificados_Tipo_Inventario
                    Caption = 'Clas&ificados por Tipo de Inventario'
                  end
                  item
                    Action = Rep_Prod_Mercancia_Vendida
                    ImageIndex = 8
                  end
                  item
                    Action = Rep_Prod_Clasificados_Status
                    Caption = 'Clasi&ficados por Status'
                  end
                  item
                    Caption = '-'
                  end
                  item
                    Action = Rep_Prod_Vencimientos
                    Caption = '&Vencimientos'
                    ImageIndex = 8
                  end
                  item
                    Caption = '-'
                  end
                  item
                    Action = Rep_Prod_Agotados
                    Caption = 'Ag&otados'
                  end
                  item
                    Action = Rep_Prod_EnMinimo
                    Caption = '&En M'#237'nimo'
                  end>
                Caption = 'Pr&oductos'
                UsageCount = 1
              end
              item
                Caption = '-'
              end
              item
                Action = Rep_Ventas
              end
              item
                Action = Rep_Cuadre_Caja
                Caption = 'C&uadre de Caja'
              end
              item
                Action = Rep_Flujo_Efectivo
                Caption = 'F&lujo de Efectivo'
              end
              item
                Caption = '-'
              end
              item
                Action = Rep_Impresion_Etiquetas
                Caption = '&Impresion de Etiquetas'
              end>
            Caption = 'R&eportes'
          end
          item
            Action = Configuracion
            Caption = '&Configuracion'
            ImageIndex = 68
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
            Items = <
              item
                Action = Compras
                Caption = '&Compras'
                ImageIndex = 44
                ShortCut = 115
              end
              item
                Action = Facturacion
                Caption = '&Facturaci'#243'n'
                ImageIndex = 44
                ShortCut = 114
              end
              item
                Action = Cuentas_Cobrar
                Caption = 'C&uentas por Cobrar'
              end
              item
                Action = Cuentas_Pagar
                Caption = 'Cu&entas por Pagar'
              end
              item
                Action = Devoluciones_Compras
                Caption = '&Devoluciones en Compras'
              end
              item
                Action = Devoluciones_Ventas
                Caption = 'De&voluciones en Ventas'
              end
              item
                Action = Notas_Debito
                Caption = '&Notas de D'#233'bito'
              end
              item
                Action = Notas_Credito
                Caption = 'N&otas de Cr'#233'dito'
              end
              item
                Action = Salida_Inventario
                Caption = '&Salida de Inventario'
                ImageIndex = 74
                ShortCut = 116
              end>
            Caption = '&Operaciones'
          end>
      end
      item
        Items = <
          item
            Items = <
              item
                Action = Registro_Productos
                Caption = '&Registro de Productos'
                ImageIndex = 56
                ShortCut = 112
              end
              item
                Action = Departamentos
                Caption = '&Departamentos'
                ImageIndex = 57
              end
              item
                Action = Categorias
                Caption = '&Categor'#237'as'
                ImageIndex = 57
              end
              item
                Action = Tipos_Productos
                Caption = '&Tipos de Productos'
                ImageIndex = 57
              end
              item
                Action = Status
                Caption = '&Estatus'
                ImageIndex = 57
              end
              item
                Action = Fabricantes
                Caption = '&Fabricantes'
                ImageIndex = 41
              end
              item
                Action = Proveedores
                Caption = '&Proveedores'
                ImageIndex = 41
              end
              item
                Action = Clientes
                Caption = 'C&lientes'
                ImageIndex = 66
                ShortCut = 113
              end
              item
                Action = Terminos_Facturacion
                Caption = 'T'#233'r&minos de Facturaci'#243'n'
                ImageIndex = 23
              end
              item
                Action = Formas_Pago
                Caption = 'F&ormas de Pago'
                ImageIndex = 9
              end
              item
                Action = Registro_Denominaciones
                Caption = 'De&nominaciones de Monedas'
                ImageIndex = 78
              end
              item
                Action = Bancos
                Caption = '&Bancos'
                ImageIndex = 79
              end>
            Caption = '&Registro'
          end
          item
            Items = <
              item
                Action = Compras
                Caption = '&Compras'
                ImageIndex = 44
                ShortCut = 115
              end
              item
                Action = Facturacion
                Caption = '&Facturaci'#243'n'
                ImageIndex = 44
                ShortCut = 114
              end
              item
                Action = Cuentas_Cobrar
                Caption = 'C&uentas por Cobrar'
              end
              item
                Action = Cuentas_Pagar
                Caption = 'Cu&entas por Pagar'
              end
              item
                Action = Devoluciones_Compras
                Caption = '&Devoluciones en Compras'
              end
              item
                Action = Devoluciones_Ventas
                Caption = 'De&voluciones en Ventas'
              end
              item
                Action = Notas_Debito
                Caption = '&Notas de D'#233'bito'
              end
              item
                Action = Notas_Credito
                Caption = 'N&otas de Cr'#233'dito'
              end
              item
                Action = Retiros_Caja
                ImageIndex = 78
              end
              item
                Action = Salida_Inventario
                Caption = '&Salida de Inventario'
                ImageIndex = 74
                ShortCut = 116
              end
              item
                Action = Ventas_Caja
                Caption = 'Ven&tas de Caja'
                ImageIndex = 44
                ShortCut = 117
              end>
            Caption = '&Operaciones'
          end
          item
            Items = <
              item
                Items = <
                  item
                    Action = Rep_Prod_General
                    Caption = '&General'
                  end
                  item
                    Action = Rep_Prod_Clasificados_Fabricante
                    Caption = '&Clasificados por Fabricante'
                  end
                  item
                    Action = Rep_Prod_Clasificados_Proveedor
                    Caption = 'C&lasificados por Proveedor'
                  end
                  item
                    Action = Rep_Prod_Clasificados_Categoria
                    Caption = 'Cl&asificados por Categoria'
                  end
                  item
                    Action = Rep_Prod_Clasificados_Tipo_Productos
                    Caption = 'Cla&sificados por Tipo de Productos'
                  end
                  item
                    Action = Rep_Prod_Clasificados_Tipo_Inventario
                    Caption = 'Clas&ificados por Tipo de Inventario'
                  end
                  item
                    Action = Rep_Prod_Vencimientos
                    Caption = '&Vencimientos'
                    ImageIndex = 8
                  end
                  item
                    Action = Rep_Prod_EnMinimo
                    Caption = '&En M'#237'nimo'
                  end
                  item
                    Action = Rep_Prod_Agotados
                    Caption = 'Ag&otados'
                  end
                  item
                    Action = Rep_Prod_Clasificados_Status
                    Caption = 'Clasi&ficados por Status'
                  end
                  item
                    Action = Rep_Prod_Mercancia_Vendida
                    Caption = '&Mercanc'#237'a Vendida'
                    ImageIndex = 8
                  end>
                Caption = 'P&roductos'
                UsageCount = 1
              end
              item
                Action = Rep_Clientes
                Caption = '&Clientes'
              end
              item
                Action = Rep_Proveedores
                Caption = '&Proveedores'
              end
              item
                Action = Rep_Fabricantes
                Caption = '&Fabricantes'
              end
              item
                Action = Rep_Ventas
              end
              item
                Action = Rep_Cuadre_Caja
                Caption = 'C&uadre de Caja'
              end
              item
                Action = Rep_Flujo_Efectivo
                Caption = 'F&lujo de Efectivo'
              end
              item
                Action = Rep_Impresion_Etiquetas
                Caption = '&Impresion de Etiquetas'
              end>
            Caption = 'R&eportes'
          end
          item
            Caption = '-'
          end
          item
            Items = <
              item
                Action = Configuracion
                Caption = '&Configuracion'
                ImageIndex = 68
              end
              item
                Caption = '-'
              end
              item
                Action = Opciones_Sistemas
                Caption = '&Opciones del Sistemas'
                ImageIndex = 9
              end
              item
                Action = Niveles_Acceso
                Caption = '&Niveles_Acceso'
                ImageIndex = 58
              end
              item
                Action = Actualizacion_Usuarios
                Caption = '&Actualizaci'#243'n de Usuarios'
                ImageIndex = 80
              end>
            Caption = '&Herramientas'
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
            Items = <
              item
                Action = Registro_Productos
                Caption = '&Registro de Productos'
                ImageIndex = 56
                ShortCut = 112
              end
              item
                Action = Departamentos
                Caption = '&Departamentos'
                ImageIndex = 57
              end
              item
                Action = Categorias
                Caption = '&Categor'#237'as'
                ImageIndex = 57
              end
              item
                Action = Tipos_Productos
                Caption = '&Tipos de Productos'
                ImageIndex = 57
              end
              item
                Action = Status
                Caption = '&Estatus'
                ImageIndex = 57
              end
              item
                Action = Fabricantes
                Caption = '&Fabricantes'
                ImageIndex = 41
              end
              item
                Action = Proveedores
                Caption = '&Proveedores'
                ImageIndex = 41
              end
              item
                Action = Clientes
                Caption = 'C&lientes'
                ImageIndex = 66
                ShortCut = 113
              end
              item
                Action = Terminos_Facturacion
                Caption = 'T'#233'r&minos de Facturaci'#243'n'
                ImageIndex = 23
              end
              item
                Action = Formas_Pago
                Caption = 'F&ormas de Pago'
                ImageIndex = 9
              end
              item
                Action = Bancos
                Caption = '&Bancos'
                ImageIndex = 79
              end
              item
                Action = Registro_Denominaciones
                Caption = 'De&nominaciones de Monedas'
                ImageIndex = 78
              end>
            Caption = '&Registro'
          end
          item
            Items = <
              item
                Action = Compras
                Caption = '&Compras'
                ImageIndex = 44
                ShortCut = 115
              end
              item
                Action = Facturacion
                Caption = '&Facturaci'#243'n'
                ImageIndex = 44
                ShortCut = 114
              end
              item
                Action = Cuentas_Cobrar
                Caption = 'C&uentas por Cobrar'
              end
              item
                Action = Cuentas_Pagar
                Caption = 'Cu&entas por Pagar'
              end
              item
                Action = Devoluciones_Compras
                Caption = '&Devoluciones en Compras'
              end
              item
                Action = Devoluciones_Ventas
                Caption = 'De&voluciones en Ventas'
              end
              item
                Action = Notas_Debito
                Caption = '&Notas de D'#233'bito'
              end
              item
                Action = Notas_Credito
                Caption = 'N&otas de Cr'#233'dito'
              end
              item
                Action = Salida_Inventario
                Caption = '&Salida de Inventario'
                ImageIndex = 74
                ShortCut = 116
              end
              item
                Action = Ventas_Caja
                Caption = 'Ven&tas de Caja'
                ImageIndex = 44
                ShortCut = 117
              end
              item
                Action = Retiros_Caja
                Caption = '&Retiros de Caja'
                ImageIndex = 78
              end>
            Caption = '&Operaciones'
          end
          item
            Items = <
              item
                Items = <
                  item
                    Action = Rep_Prod_General
                    Caption = '&General'
                  end
                  item
                    Action = Rep_Prod_Clasificados_Fabricante
                    Caption = '&Clasificados por Fabricante'
                  end
                  item
                    Action = Rep_Prod_Clasificados_Proveedor
                    Caption = 'C&lasificados por Proveedor'
                  end
                  item
                    Action = Rep_Prod_Clasificados_Categoria
                    Caption = 'Cl&asificados por Categoria'
                  end
                  item
                    Action = Rep_Prod_Clasificados_Tipo_Productos
                    Caption = 'Cla&sificados por Tipo de Productos'
                  end
                  item
                    Action = Rep_Prod_Clasificados_Tipo_Inventario
                    Caption = 'Clas&ificados por Tipo de Inventario'
                  end
                  item
                    Action = Rep_Prod_Vencimientos
                    Caption = '&Vencimientos'
                    ImageIndex = 8
                  end
                  item
                    Action = Rep_Prod_EnMinimo
                    Caption = '&En M'#237'nimo'
                  end
                  item
                    Action = Rep_Prod_Agotados
                    Caption = 'Ag&otados'
                  end
                  item
                    Action = Rep_Prod_Clasificados_Status
                    Caption = 'Clasi&ficados por Status'
                  end
                  item
                    Action = Rep_Prod_Mercancia_Vendida
                    Caption = '&Mercanc'#237'a Vendida'
                    ImageIndex = 8
                  end>
                Caption = 'P&roductos'
                UsageCount = 1
              end
              item
                Action = Rep_Clientes
                Caption = '&Clientes'
              end
              item
                Action = Rep_Proveedores
                Caption = '&Proveedores'
              end
              item
                Action = Rep_Fabricantes
                Caption = '&Fabricantes'
              end
              item
                Action = Rep_Ventas
              end
              item
                Action = Rep_Cuadre_Caja
                Caption = 'C&uadre de Caja'
              end
              item
                Action = Rep_Flujo_Efectivo
                Caption = 'F&lujo de Efectivo'
              end
              item
                Action = Rep_Impresion_Etiquetas
                Caption = '&Impresion de Etiquetas'
              end
              item
                Action = Facturas_Pendiente_Pago
                Caption = 'F&acturas Pendiente de Pago'
              end
              item
                Action = Impuestos_Pagados_Compra
                Caption = 'I&mpuestos Pagados en Compras'
              end
              item
                Action = Impuestos_Cobrados_Ventas
                Caption = 'Impu&estos Cobrados en Ventas'
              end
              item
                Action = Historial_Compras
                Caption = '&Historial de Compras'
              end>
            Caption = 'R&eportes'
          end
          item
            Items = <
              item
                Action = Configuracion
                Caption = '&Configuracion'
                ImageIndex = 68
              end
              item
                Action = Opciones_Sistemas
                Caption = '&Opciones del Sistemas'
                ImageIndex = 9
              end
              item
                Action = Niveles_Acceso
                Caption = '&Niveles_Acceso'
                ImageIndex = 58
              end
              item
                Action = Actualizacion_Usuarios
                Caption = '&Actualizaci'#243'n de Usuarios'
                ImageIndex = 80
              end>
            Caption = '&Herramientas'
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
            Items = <
              item
                Action = Registro_Productos
                Caption = '&Registro de Productos'
                ImageIndex = 56
                ShortCut = 112
              end
              item
                Action = Departamentos
                Caption = '&Departamentos'
                ImageIndex = 57
              end
              item
                Action = Categorias
                Caption = '&Categor'#237'as'
                ImageIndex = 57
              end
              item
                Action = Tipos_Productos
                Caption = '&Tipos de Productos'
                ImageIndex = 57
              end
              item
                Action = Status
                Caption = '&Estatus'
                ImageIndex = 57
              end
              item
                Action = Fabricantes
                Caption = '&Fabricantes'
                ImageIndex = 41
              end
              item
                Action = Proveedores
                Caption = '&Proveedores'
                ImageIndex = 41
              end
              item
                Action = Clientes
                Caption = 'C&lientes'
                ImageIndex = 66
                ShortCut = 113
              end
              item
                Action = Terminos_Facturacion
                Caption = 'T'#233'r&minos de Facturaci'#243'n'
                ImageIndex = 23
              end
              item
                Action = Formas_Pago
                Caption = 'F&ormas de Pago'
                ImageIndex = 9
              end
              item
                Action = Bancos
                Caption = '&Bancos'
                ImageIndex = 79
              end
              item
                Action = Registro_Denominaciones
                Caption = 'De&nominaciones de Monedas'
                ImageIndex = 78
              end>
            Caption = '&Registro'
          end
          item
            Items = <
              item
                Action = Compras
                Caption = '&Compras'
                ImageIndex = 44
                ShortCut = 115
              end
              item
                Action = Facturacion
                Caption = '&Facturaci'#243'n'
                ImageIndex = 44
                ShortCut = 114
              end
              item
                Action = Cuentas_Cobrar
                Caption = 'C&uentas por Cobrar'
              end
              item
                Action = Cuentas_Pagar
                Caption = 'Cu&entas por Pagar'
              end
              item
                Action = Devoluciones_Compras
                Caption = '&Devoluciones en Compras'
              end
              item
                Action = Devoluciones_Ventas
                Caption = 'De&voluciones en Ventas'
              end
              item
                Action = Notas_Debito
                Caption = '&Notas de D'#233'bito'
              end
              item
                Action = Notas_Credito
                Caption = 'N&otas de Cr'#233'dito'
              end
              item
                Action = Salida_Inventario
                Caption = '&Salida de Inventario'
                ImageIndex = 74
                ShortCut = 116
              end
              item
                Action = Ventas_Caja
                Caption = 'Ven&tas de Caja'
                ImageIndex = 44
                ShortCut = 117
              end
              item
                Action = Retiros_Caja
                Caption = '&Retiros de Caja'
                ImageIndex = 78
              end>
            Caption = '&Operaciones'
          end
          item
            Items = <
              item
                Items = <
                  item
                    Action = Rep_Prod_General
                    Caption = '&General'
                  end
                  item
                    Action = Rep_Prod_Clasificados_Fabricante
                    Caption = '&Clasificados por Fabricante'
                  end
                  item
                    Action = Rep_Prod_Clasificados_Proveedor
                    Caption = 'C&lasificados por Proveedor'
                  end
                  item
                    Action = Rep_Prod_Clasificados_Categoria
                    Caption = 'Cl&asificados por Categoria'
                  end
                  item
                    Action = Rep_Prod_Clasificados_Tipo_Productos
                    Caption = 'Cla&sificados por Tipo de Productos'
                  end
                  item
                    Action = Rep_Prod_Clasificados_Tipo_Inventario
                    Caption = 'Clas&ificados por Tipo de Inventario'
                  end
                  item
                    Action = Rep_Prod_Vencimientos
                    Caption = '&Vencimientos'
                    ImageIndex = 8
                  end
                  item
                    Action = Rep_Prod_EnMinimo
                    Caption = '&En M'#237'nimo'
                  end
                  item
                    Action = Rep_Prod_Agotados
                    Caption = 'Ag&otados'
                  end
                  item
                    Action = Rep_Prod_Clasificados_Status
                    Caption = 'Clasi&ficados por Status'
                  end
                  item
                    Action = Rep_Prod_Mercancia_Vendida
                    Caption = '&Mercanc'#237'a Vendida'
                    ImageIndex = 8
                  end
                  item
                    Action = Mercancia_Comprada
                    Caption = 'Me&rcancia Comprada'
                    ImageIndex = 8
                  end>
                Caption = 'P&roductos'
                UsageCount = 1
              end
              item
                Action = Rep_Clientes
                Caption = '&Clientes'
              end
              item
                Action = Rep_Proveedores
                Caption = '&Proveedores'
              end
              item
                Action = Rep_Fabricantes
                Caption = '&Fabricantes'
              end
              item
                Action = Rep_Ventas
                Caption = 'I&nforme de Ventas'
              end
              item
                Action = Rep_Cuadre_Caja
                Caption = 'C&uadre de Caja'
              end
              item
                Action = Rep_Flujo_Efectivo
                Caption = 'F&lujo de Efectivo'
              end
              item
                Action = Rep_Impresion_Etiquetas
                Caption = '&Impresion de Etiquetas'
              end
              item
                Action = Facturas_Pendiente_Pago
                Caption = 'F&acturas Pendiente de Pago'
              end
              item
                Action = Impuestos_Pagados_Compra
                Caption = 'I&mpuestos Pagados en Compras'
              end
              item
                Action = Impuestos_Cobrados_Ventas
                Caption = 'Impu&estos Cobrados en Ventas'
              end
              item
                Action = Historial_Compras
                Caption = '&Historial de Compras'
              end>
            Caption = 'R&eportes'
          end
          item
            Caption = '-'
          end
          item
            Items = <
              item
                Action = Configuracion
                Caption = '&Configuracion'
                ImageIndex = 68
              end
              item
                Action = Opciones_Sistemas
                Caption = '&Opciones del Sistemas'
                ImageIndex = 9
              end
              item
                Action = Niveles_Acceso
                Caption = '&Niveles_Acceso'
                ImageIndex = 58
              end
              item
                Action = Importar_Datos
                ImageIndex = 17
              end
              item
                Action = Actualizacion_Usuarios
                Caption = '&Actualizaci'#243'n de Usuarios'
                ImageIndex = 80
              end>
            Caption = '&Herramientas'
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
        ActionBar = Principal
      end
      item
        Items = <
          item
            Action = Salir
            Caption = '&Salir'
            ImageIndex = 10
            ShortCut = 27
          end
          item
            Action = Compras
            Caption = '&Compras'
            ImageIndex = 44
            ShortCut = 115
          end
          item
            Action = Facturacion
            Caption = '&Facturaci'#243'n'
            ImageIndex = 44
            ShortCut = 114
          end
          item
            Action = Cuentas_Cobrar
            Caption = 'C&uentas por Cobrar'
          end
          item
            Action = Salida_Inventario
            Caption = 'S&alida de Inventario'
            ImageIndex = 74
            ShortCut = 116
          end
          item
            Items = <
              item
                Action = Rep_Clientes
                Caption = '&Clientes'
              end
              item
                Action = Rep_Proveedores
                Caption = '&Proveedores'
              end
              item
                Action = Rep_Fabricantes
                Caption = '&Fabricantes'
              end
              item
                Action = Rep_Ventas
              end
              item
                Action = Rep_Cuadre_Caja
                Caption = 'C&uadre de Caja'
              end
              item
                Action = Rep_Flujo_Efectivo
                Caption = 'F&lujo de Efectivo'
              end
              item
                Action = Rep_Impresion_Etiquetas
                Caption = '&Impresion de Etiquetas'
              end
              item
                Action = Facturas_Pendiente_Pago
                Caption = 'F&acturas Pendiente de Pago'
              end
              item
                Action = Impuestos_Pagados_Compra
                Caption = 'I&mpuestos Pagados en Compras'
              end
              item
                Action = Impuestos_Cobrados_Ventas
                Caption = 'Impu&estos Cobrados en Ventas'
              end
              item
                Action = Historial_Compras
                Caption = '&Historial de Compras'
              end>
            Caption = '&Reportes'
          end>
      end
      item
        Items = <
          item
            Action = Clientes
            ImageIndex = 66
            ShortCut = 113
          end
          item
            Action = Registro_Productos
            Caption = '&Registro de Productos'
            ImageIndex = 56
            ShortCut = 112
          end
          item
            Caption = '-'
          end
          item
            Action = Facturacion
            Caption = '&Facturaci'#243'n'
            ImageIndex = 44
            ShortCut = 114
          end
          item
            Action = Compras
            Caption = '&Compras'
            ImageIndex = 44
            ShortCut = 115
          end
          item
            Caption = '-'
          end
          item
            Action = Rep_Ventas
            ImageIndex = 28
          end
          item
            Action = Cuentas_Cobrar
            Caption = 'C&uentas por Cobrar'
          end
          item
            Action = Rep_Cuadre_Caja
            ImageIndex = 29
          end
          item
            Action = Rep_Flujo_Efectivo
            ImageIndex = 79
          end>
        ActionBar = OpcionesBotones
      end>
    Images = Modulo.SystemImages
    Left = 16
    Top = 40
    StyleName = 'XP Style'
    object Salir: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Salir'
      ImageIndex = 10
      ShortCut = 27
      OnExecute = SalirExecute
    end
    object Configuracion: TAction
      Category = 'Herramientas'
      Caption = 'Configuracion'
      ImageIndex = 68
      OnExecute = ConfiguracionExecute
    end
    object Registro_Productos: TAction
      Category = 'Registro'
      Caption = 'Registro de Productos'
      ImageIndex = 56
      ShortCut = 112
      OnExecute = Registro_ProductosExecute
    end
    object Departamentos: TAction
      Category = 'Registro'
      Caption = 'Departamentos'
      ImageIndex = 57
      OnExecute = DepartamentosExecute
    end
    object Categorias: TAction
      Category = 'Registro'
      Caption = 'Categor'#237'as'
      ImageIndex = 57
      OnExecute = CategoriasExecute
    end
    object Tipos_Productos: TAction
      Category = 'Registro'
      Caption = 'Tipos de Productos'
      ImageIndex = 57
      OnExecute = Tipos_ProductosExecute
    end
    object Status: TAction
      Category = 'Registro'
      Caption = 'Estatus'
      ImageIndex = 57
      OnExecute = StatusExecute
    end
    object Fabricantes: TAction
      Category = 'Registro'
      Caption = 'Fabricantes'
      ImageIndex = 41
      OnExecute = FabricantesExecute
    end
    object Proveedores: TAction
      Category = 'Registro'
      Caption = 'Proveedores'
      ImageIndex = 41
      OnExecute = ProveedoresExecute
    end
    object Clientes: TAction
      Category = 'Registro'
      Caption = 'Clientes'
      ImageIndex = 66
      ShortCut = 113
    end
    object Compras: TAction
      Category = 'Operaciones'
      Caption = 'Compras'
      ImageIndex = 44
      ShortCut = 115
      OnExecute = ComprasExecute
    end
    object Facturacion: TAction
      Category = 'Operaciones'
      Caption = 'Facturaci'#243'n'
      ImageIndex = 44
      ShortCut = 114
      OnExecute = FacturacionExecute
    end
    object Cuentas_Cobrar: TAction
      Category = 'Operaciones'
      Caption = 'Cuentas por Cobrar'
      OnExecute = Cuentas_CobrarExecute
    end
    object Cuentas_Pagar: TAction
      Category = 'Operaciones'
      Caption = 'Cuentas por Pagar'
    end
    object Devoluciones_Compras: TAction
      Category = 'Operaciones'
      Caption = 'Devoluciones en Compras'
    end
    object Devoluciones_Ventas: TAction
      Category = 'Operaciones'
      Caption = 'Devoluciones en Ventas'
    end
    object Notas_Debito: TAction
      Category = 'Operaciones'
      Caption = 'Notas de D'#233'bito'
    end
    object Notas_Credito: TAction
      Category = 'Operaciones'
      Caption = 'Notas de Cr'#233'dito'
      OnExecute = Notas_CreditoExecute
    end
    object Salida_Inventario: TAction
      Category = 'Operaciones'
      Caption = 'Salida de Inventario'
      ImageIndex = 74
      ShortCut = 116
      OnExecute = Salida_InventarioExecute
    end
    object Rep_Clientes: TAction
      Category = 'Reportes'
      Caption = 'Clientes'
    end
    object Rep_Proveedores: TAction
      Category = 'Reportes'
      Caption = 'Proveedores'
    end
    object Rep_Fabricantes: TAction
      Category = 'Reportes'
      Caption = 'Fabricantes'
    end
    object Rep_Ventas: TAction
      Category = 'Reportes'
      Caption = 'Informe de Ventas'
      ImageIndex = 28
      OnExecute = Rep_VentasExecute
    end
    object Rep_Cuadre_Caja: TAction
      Category = 'Reportes'
      Caption = 'Cuadre de Caja'
      ImageIndex = 29
      OnExecute = Rep_Cuadre_CajaExecute
    end
    object Rep_Flujo_Efectivo: TAction
      Category = 'Reportes'
      Caption = 'Flujo de Efectivo'
      ImageIndex = 79
    end
    object Terminos_Facturacion: TAction
      Category = 'Registro'
      Caption = 'T'#233'rminos de Facturaci'#243'n'
      ImageIndex = 23
      OnExecute = Terminos_FacturacionExecute
    end
    object Formas_Pago: TAction
      Category = 'Registro'
      Caption = 'Formas de Pago'
      ImageIndex = 9
      OnExecute = Formas_PagoExecute
    end
    object Bancos: TAction
      Category = 'Registro'
      Caption = 'Bancos'
      ImageIndex = 79
      OnExecute = BancosExecute
    end
    object Rep_Prod_General: TAction
      Category = 'Productos'
      Caption = 'General'
      OnExecute = Rep_Prod_GeneralExecute
    end
    object Rep_Prod_Clasificados_Fabricante: TAction
      Category = 'Productos'
      Caption = 'Clasificados por Fabricante'
      OnExecute = Rep_Prod_Clasificados_FabricanteExecute
    end
    object Rep_Prod_Clasificados_Proveedor: TAction
      Category = 'Productos'
      Caption = 'Clasificados por Proveedor'
      OnExecute = Rep_Prod_Clasificados_ProveedorExecute
    end
    object Rep_Prod_Clasificados_Categoria: TAction
      Category = 'Productos'
      Caption = 'Clasificados por Categoria'
    end
    object Rep_Prod_Clasificados_Tipo_Productos: TAction
      Category = 'Productos'
      Caption = 'Clasificados por Tipo de Productos'
    end
    object Rep_Prod_Clasificados_Tipo_Inventario: TAction
      Category = 'Productos'
      Caption = 'Clasificados por Tipo de Inventario'
    end
    object Rep_Prod_Vencimientos: TAction
      Category = 'Productos'
      Caption = 'Vencimientos'
      ImageIndex = 8
      OnExecute = Rep_Prod_VencimientosExecute
    end
    object Rep_Impresion_Etiquetas: TAction
      Category = 'Reportes'
      Caption = 'Impresion de Etiquetas'
      OnExecute = Rep_Impresion_EtiquetasExecute
    end
    object Action8: TAction
      Caption = 'Regenera Secuencia'
      ShortCut = 49226
      OnExecute = Action8Execute
    end
    object Rep_Prod_EnMinimo: TAction
      Category = 'Productos'
      Caption = 'En M'#237'nimo'
    end
    object Rep_Prod_Agotados: TAction
      Category = 'Productos'
      Caption = 'Agotados'
    end
    object Rep_Prod_Clasificados_Status: TAction
      Category = 'Productos'
      Caption = 'Clasificados por Status'
    end
    object Ventas_Caja: TAction
      Category = 'Operaciones'
      Caption = 'Ventas de Caja'
      ImageIndex = 44
      ShortCut = 117
      OnExecute = Ventas_CajaExecute
    end
    object Rep_Prod_Mercancia_Vendida: TAction
      Category = 'Productos'
      Caption = 'Mercanc'#237'a Vendida'
      ImageIndex = 8
      OnExecute = Rep_Prod_Mercancia_VendidaExecute
    end
    object Opciones_Sistemas: TAction
      Category = 'Herramientas'
      Caption = 'Opciones del Sistemas'
      ImageIndex = 9
      OnExecute = Opciones_SistemasExecute
    end
    object Niveles_Acceso: TAction
      Category = 'Herramientas'
      Caption = 'Niveles_Acceso'
      ImageIndex = 58
      OnExecute = Niveles_AccesoExecute
    end
    object Actualizacion_Usuarios: TAction
      Category = 'Herramientas'
      Caption = 'Actualizaci'#243'n de Usuarios'
      ImageIndex = 80
      OnExecute = Actualizacion_UsuariosExecute
    end
    object Registro_Denominaciones: TAction
      Category = 'Registro'
      Caption = 'Denominaciones de Monedas'
      ImageIndex = 78
      OnExecute = Registro_DenominacionesExecute
    end
    object Retiros_Caja: TAction
      Category = 'Operaciones'
      Caption = 'Retiros de Caja'
      ImageIndex = 78
      OnExecute = Retiros_CajaExecute
    end
    object Facturas_Pendiente_Pago: TAction
      Category = 'Reportes'
      Caption = 'Facturas Pendiente de Pago'
    end
    object Impuestos_Pagados_Compra: TAction
      Category = 'Reportes'
      Caption = 'Impuestos Pagados en Compras'
    end
    object Impuestos_Cobrados_Ventas: TAction
      Category = 'Reportes'
      Caption = 'Impuestos Cobrados en Ventas'
    end
    object Historial_Compras: TAction
      Category = 'Reportes'
      Caption = 'Historial de Compras'
    end
    object Mercancia_Comprada: TAction
      Category = 'Productos'
      Caption = 'Mercancia Comprada'
      ImageIndex = 8
      OnExecute = Mercancia_CompradaExecute
    end
    object Importar_Datos: TAction
      Category = 'Herramientas'
      Caption = 'Importar Datos'
      ImageIndex = 17
      OnExecute = Importar_DatosExecute
    end
  end
end
