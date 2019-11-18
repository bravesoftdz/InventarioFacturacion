object FMainMenu: TFMainMenu
  Left = 152
  Top = 116
  BorderStyle = bsToolWindow
  Caption = 'Men'#250' Principal'
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
    Height = 543
    Align = alClient
    Stretch = True
    Transparent = True
    ExplicitLeft = 416
    ExplicitWidth = 376
    ExplicitHeight = 523
  end
  object Card: TImage
    Left = 8
    Top = 44
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
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = clWhite
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    PersistentHotKeys = True
    Spacing = 0
  end
  object AdvPageControl1: TAdvPageControl
    Left = 8
    Top = 228
    Width = 162
    Height = 337
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
    Version = '1.6.0.0'
    TabHeight = 19
    TabOrder = 1
    TabStop = False
    TabWidth = 100
    object Botones: TAdvTabSheet
      Color = clBtnFace
      ColorTo = clNone
      ImageIndex = -1
      TabGradientDirection = gdHorizontal
      TabColor = clBlack
      TabColorTo = clOlive
      object OpcionesBotones: TActionToolBar
        Left = 0
        Top = 0
        Width = 154
        Height = 320
        ActionManager = Opciones
        Align = alNone
        AllowHiding = False
        Caption = 'Opciones'
        ColorMap.HighlightColor = clWhite
        ColorMap.BtnSelectedColor = clBtnFace
        ColorMap.UnusedColor = clWhite
        Orientation = boTopToBottom
        Spacing = 0
      end
    end
  end
  object Opciones: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = Registro_Productos
                Caption = '&Registro de Productos'
                ImageIndex = 50
                ShortCut = 112
              end
              item
                Action = Departamentos
                Caption = '&Departamentos'
                ImageIndex = 17
              end
              item
                Action = Categorias
                Caption = '&Categor'#237'as'
                ImageIndex = 17
              end
              item
                Action = Tipos_Productos
                Caption = '&Tipos de Productos'
                ImageIndex = 17
              end
              item
                Action = Status
                Caption = '&Estatus'
                ImageIndex = 31
              end
              item
                Action = Paises_Ciudades_Sectores_Zonas
                ImageIndex = 17
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
                Action = Clientes
                Caption = 'C&lientes'
                ImageIndex = 47
                ShortCut = 113
              end
              item
                Action = Vendedores
                Caption = '&Vendedores'
                ImageIndex = 45
              end
              item
                Caption = '-'
              end
              item
                Action = Terminos_Facturacion
                Caption = 'T'#233'r&minos de Facturaci'#243'n'
                ImageIndex = 23
              end
              item
                Action = Formas_Pago
                Caption = 'F&ormas de Pago'
                ImageIndex = 42
              end
              item
                Action = Bancos
                Caption = '&Bancos'
                ImageIndex = 48
              end
              item
                Action = Registro_Denominaciones
                Caption = 'De&nominaciones de Monedas'
                ImageIndex = 49
              end>
            Caption = '&Registro'
          end
          item
            Items = <
              item
                Action = Orden_Compra
                Caption = 'Orden de Co&mpra'
                ImageIndex = 46
              end
              item
                Action = Compras
                Caption = '&Compras'
                ImageIndex = 46
                ShortCut = 115
              end
              item
                Action = Devoluciones_Compras
                Caption = '&Devoluciones en Compras'
                ImageIndex = 3
              end
              item
                Caption = '-'
              end
              item
                Action = Facturacion
                Caption = '&Facturaci'#243'n'
                ImageIndex = 58
                ShortCut = 114
              end
              item
                Action = Ventas_Caja
                Caption = 'Ventas de Ca&ja'
                ImageIndex = 58
                ShortCut = 117
              end
              item
                Action = Salida_Inventario
                Caption = '&Salida de Inventario'
                ImageIndex = 60
                ShortCut = 116
              end
              item
                Action = Devoluciones_Ventas
                Caption = 'De&voluciones en Ventas'
                ImageIndex = 3
              end
              item
                Caption = '-'
              end
              item
                Action = Cuentas_Cobrar
                Caption = 'C&uentas por Cobrar'
                ImageIndex = 37
              end
              item
                Action = Notas_Debito_Clientes
                Caption = '&Notas de D'#233'bito Clientes'
                ImageIndex = 14
              end
              item
                Action = Notas_Credito_Clientes
                Caption = 'N&otas de Cr'#233'dito Clientes'
                ImageIndex = 14
              end
              item
                Caption = '-'
              end
              item
                Action = Cuentas_Pagar
                Caption = 'Cu&entas por Pagar'
                ImageIndex = 37
              end
              item
                Action = Notas_Debito_Proveedores
                Caption = 'Not&as de D'#233'bito Proveedores'
                ImageIndex = 14
              end
              item
                Action = Notas_Credito_Proveedores
                Caption = 'Notas de Cr'#233'd&ito Proveedores'
                ImageIndex = 14
              end
              item
                Caption = '-'
              end
              item
                Action = Retiros_Caja
                Caption = '&Retiros de Caja'
                ImageIndex = 59
              end>
            Caption = '&Operaciones'
          end
          item
            Items = <
              item
                Action = Cuentas_Contables
                Caption = '&Cuentas'
                ImageIndex = 6
              end
              item
                Action = Entrada_Diario
                Caption = '&Entrada de Diario'
                ImageIndex = 60
              end
              item
                Caption = '-'
              end
              item
                Action = Catalogo_Cuentas
                Caption = 'C&at'#225'logo de Cuentas'
                ImageIndex = 56
              end
              item
                Caption = '-'
              end
              item
                Action = Balanza_Comprobacion
                Caption = '&Balanza de Comprobaci'#243'n'
                ImageIndex = 79
              end
              item
                Action = Estado_Ingresos_Gastos
                Caption = 'Es&tado de Ingresos y Gastos'
                ImageIndex = 79
              end
              item
                Action = Estado_Situacion
                Caption = 'E&stado de Situaci'#243'n'
                ImageIndex = 79
              end>
            Caption = ' '
          end
          item
            Items = <
              item
                Action = Companias
                Caption = 'C&ompa'#241#237'as'
                ImageIndex = 17
              end
              item
                Action = Departamentos_Nomina
                Caption = '&Departamentos'
                ImageIndex = 17
              end
              item
                Caption = '-'
              end
              item
                Action = Grupos_Nomina
                Caption = 'G&rupos de N'#243'mina'
                ImageIndex = 17
              end
              item
                Action = Pagos_Incentivos
                Caption = '&Pagos e Incentivos'
                ImageIndex = 15
              end
              item
                Action = Deducciones
                Caption = 'D&educciones'
                ImageIndex = 33
              end
              item
                Action = Empleados
                Caption = 'Emp&leados'
                ImageIndex = 45
                ShortCut = 113
              end
              item
                Caption = '-'
              end
              item
                Action = Entradas_Horas_Diarias
                Caption = 'E&ntradas de Horas Diarias'
                ImageIndex = 53
                ShortCut = 115
              end
              item
                Action = Generar_Nomina
                Caption = '&Generar Nomina'
                ImageIndex = 51
                ShortCut = 114
              end
              item
                Action = Nomina_Regalia
                Caption = 'N'#243'&mina de la Regal'#237'a Pascual'
                ImageIndex = 51
              end
              item
                Caption = '-'
              end
              item
                Action = Reagrupar
                Caption = 'Re&agrupar'
                ImageIndex = 19
                ShortCut = 49234
              end>
            Caption = '&N'#243'mina'
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
                ImageIndex = 47
              end
              item
                Action = Rep_Proveedores
                Caption = 'Pro&veedores'
                ImageIndex = 41
              end
              item
                Action = Rep_Fabricantes
                Caption = '&Fabricantes'
                ImageIndex = 41
              end
              item
                Action = Rep_Ventas
                Caption = 'Informe &de Ventas'
                ImageIndex = 28
              end
              item
                Action = Facturas_Tipo_NCF
                Caption = 'I&nforme de Facturas por Tipo NCF'
                ImageIndex = 28
              end
              item
                Action = Rep_Cuadre_Caja
                Caption = 'C&uadre de Caja'
                ImageIndex = 29
              end
              item
                Action = Rep_Flujo_Efectivo
                Caption = 'F&lujo de Efectivo'
                ImageIndex = 38
              end
              item
                Action = Rep_Impresion_Etiquetas
                Caption = '&Impresion de Etiquetas'
              end
              item
                Caption = '&ActionClientItem8'
              end
              item
                Items = <
                  item
                    Action = Directorio_Empleados
                    Caption = 'Direc&torio de Empleados'
                    ImageIndex = 91
                  end
                  item
                    Action = Informacion_Laboral
                    Caption = 'In&formaci'#243'n Laboral'
                    ImageIndex = 9
                  end>
                Caption = 'N'#243'&mina'
                UsageCount = 1
              end
              item
                Items = <
                  item
                    Action = Catalogo_Cuentas
                    Caption = 'C&at'#225'logo de Cuentas'
                    ImageIndex = 56
                  end
                  item
                    Action = Libro_Mayor
                    Caption = '&Libro Mayor'
                    ImageIndex = 6
                  end
                  item
                    Action = Reporte_Entradas_Diario
                    Caption = '&Reporte de Entradas de Diario'
                    ImageIndex = 31
                  end>
                Caption = 'C&ontabilidad'
                UsageCount = 1
              end
              item
                Action = Facturas_Pendiente_Pago
                Caption = 'Fac&turas Pendiente de Pago'
              end
              item
                Action = Impuestos_Pagados_Compra
                Caption = 'Impu&estos Pagados en Compras'
              end
              item
                Action = Impuestos_Cobrados_Ventas
                Caption = 'Impue&stos Cobrados en Ventas'
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
                Action = Configuracion_Inventario
                Caption = '&Configuracion Inventario y Facturaci'#243'n'
                ImageIndex = 121
              end
              item
                Action = Configuracion_Contabilidad
                Caption = 'Config&uraci'#243'n Contabilidad'
                ImageIndex = 83
              end
              item
                Action = Configuracion_Nomina
                Caption = 'Confi&guraci'#243'n N'#243'mina'
                ImageIndex = 80
              end
              item
                Caption = '-'
              end
              item
                Action = Opciones_Sistemas
                Caption = '&Opciones del Sistemas'
                ImageIndex = 55
              end
              item
                Action = Niveles_Acceso
                Caption = '&Niveles_Acceso'
                ImageIndex = 40
              end
              item
                Action = Actualizacion_Usuarios
                Caption = '&Actualizaci'#243'n de Usuarios'
                ImageIndex = 80
              end
              item
                Caption = '-'
              end
              item
                Action = Importar_Datos
                Caption = '&Importar Datos'
                ImageIndex = 17
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
            Action = Clientes
            ImageIndex = 47
            ShortCut = 113
          end
          item
            Action = Registro_Productos
            Caption = '&Registro de Productos'
            ImageIndex = 50
            ShortCut = 112
          end
          item
            Caption = '-'
          end
          item
            Action = Facturacion
            Caption = '&Facturaci'#243'n'
            ImageIndex = 58
            ShortCut = 114
          end
          item
            Action = Compras
            Caption = '&Compras'
            ImageIndex = 46
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
            ImageIndex = 37
          end
          item
            Action = Rep_Cuadre_Caja
            ImageIndex = 29
          end
          item
            Action = Rep_Flujo_Efectivo
            ImageIndex = 38
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
    object Configuracion_Inventario: TAction
      Category = 'Herramientas'
      Caption = 'Configuracion Inventario y Facturaci'#243'n'
      ImageIndex = 121
      OnExecute = Configuracion_InventarioExecute
    end
    object Registro_Productos: TAction
      Category = 'Registro'
      Caption = 'Registro de Productos'
      ImageIndex = 50
      ShortCut = 112
      OnExecute = Registro_ProductosExecute
    end
    object Departamentos: TAction
      Category = 'Registro'
      Caption = 'Departamentos'
      ImageIndex = 17
      OnExecute = DepartamentosExecute
    end
    object Categorias: TAction
      Category = 'Registro'
      Caption = 'Categor'#237'as'
      ImageIndex = 17
      OnExecute = CategoriasExecute
    end
    object Tipos_Productos: TAction
      Category = 'Registro'
      Caption = 'Tipos de Productos'
      ImageIndex = 17
      OnExecute = Tipos_ProductosExecute
    end
    object Status: TAction
      Category = 'Registro'
      Caption = 'Estatus'
      ImageIndex = 31
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
    object Notas_Debito_Proveedores: TAction
      Category = 'Operaciones'
      Caption = 'Notas de D'#233'bito Proveedores'
      ImageIndex = 14
    end
    object Notas_Credito_Proveedores: TAction
      Category = 'Operaciones'
      Caption = 'Notas de Cr'#233'dito Proveedores'
      ImageIndex = 14
      OnExecute = Notas_Credito_ClientesExecute
    end
    object Clientes: TAction
      Category = 'Registro'
      Caption = 'Clientes'
      ImageIndex = 47
      ShortCut = 113
      OnExecute = ClientesExecute
    end
    object Compras: TAction
      Category = 'Operaciones'
      Caption = 'Compras'
      ImageIndex = 46
      ShortCut = 115
      OnExecute = ComprasExecute
    end
    object Facturacion: TAction
      Category = 'Operaciones'
      Caption = 'Facturaci'#243'n'
      ImageIndex = 58
      ShortCut = 114
      OnExecute = FacturacionExecute
    end
    object Orden_Compra: TAction
      Category = 'Operaciones'
      Caption = 'Orden de Compra'
      ImageIndex = 46
      OnExecute = Orden_CompraExecute
    end
    object Cuentas_Cobrar: TAction
      Category = 'Operaciones'
      Caption = 'Cuentas por Cobrar'
      ImageIndex = 37
      OnExecute = Cuentas_CobrarExecute
    end
    object Cuentas_Pagar: TAction
      Category = 'Operaciones'
      Caption = 'Cuentas por Pagar'
      ImageIndex = 37
    end
    object Devoluciones_Compras: TAction
      Category = 'Operaciones'
      Caption = 'Devoluciones en Compras'
      ImageIndex = 3
    end
    object Devoluciones_Ventas: TAction
      Category = 'Operaciones'
      Caption = 'Devoluciones en Ventas'
      ImageIndex = 3
    end
    object Notas_Debito_Clientes: TAction
      Category = 'Operaciones'
      Caption = 'Notas de D'#233'bito Clientes'
      ImageIndex = 14
    end
    object Notas_Credito_Clientes: TAction
      Category = 'Operaciones'
      Caption = 'Notas de Cr'#233'dito Clientes'
      ImageIndex = 14
      OnExecute = Notas_Credito_ClientesExecute
    end
    object Salida_Inventario: TAction
      Category = 'Operaciones'
      Caption = 'Salida de Inventario'
      ImageIndex = 60
      ShortCut = 116
      OnExecute = Salida_InventarioExecute
    end
    object Rep_Clientes: TAction
      Category = 'Reportes'
      Caption = 'Clientes'
      ImageIndex = 47
      OnExecute = Rep_ClientesExecute
    end
    object Rep_Proveedores: TAction
      Category = 'Reportes'
      Caption = 'Proveedores'
      ImageIndex = 41
    end
    object Rep_Fabricantes: TAction
      Category = 'Reportes'
      Caption = 'Fabricantes'
      ImageIndex = 41
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
      ImageIndex = 38
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
      ImageIndex = 42
      OnExecute = Formas_PagoExecute
    end
    object Bancos: TAction
      Category = 'Registro'
      Caption = 'Bancos'
      ImageIndex = 48
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
      OnExecute = Rep_Prod_Clasificados_CategoriaExecute
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
      ImageIndex = 8
      OnExecute = Rep_Impresion_EtiquetasExecute
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
      ImageIndex = 58
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
      ImageIndex = 55
      OnExecute = Opciones_SistemasExecute
    end
    object Niveles_Acceso: TAction
      Category = 'Herramientas'
      Caption = 'Niveles_Acceso'
      ImageIndex = 40
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
      ImageIndex = 49
      OnExecute = Registro_DenominacionesExecute
    end
    object Retiros_Caja: TAction
      Category = 'Operaciones'
      Caption = 'Retiros de Caja'
      ImageIndex = 59
      OnExecute = Retiros_CajaExecute
    end
    object Facturas_Pendiente_Pago: TAction
      Category = 'Reportes'
      Caption = 'Facturas Pendiente de Pago'
      ImageIndex = 8
    end
    object Impuestos_Pagados_Compra: TAction
      Category = 'Reportes'
      Caption = 'Impuestos Pagados en Compras'
      ImageIndex = 8
    end
    object Impuestos_Cobrados_Ventas: TAction
      Category = 'Reportes'
      Caption = 'Impuestos Cobrados en Ventas'
      ImageIndex = 8
    end
    object Historial_Compras: TAction
      Category = 'Reportes'
      Caption = 'Historial de Compras'
      ImageIndex = 8
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
    object Vendedores: TAction
      Category = 'Registro'
      Caption = 'Vendedores'
      ImageIndex = 45
      OnExecute = VendedoresExecute
    end
    object Cuentas_Contables: TAction
      Category = 'Contabilidad'
      Caption = 'Cuentas'
      ImageIndex = 6
      OnExecute = Cuentas_ContablesExecute
    end
    object Configuracion_Contabilidad: TAction
      Category = 'Herramientas'
      Caption = 'Configuraci'#243'n Contabilidad'
      ImageIndex = 83
      OnExecute = Configuracion_ContabilidadExecute
    end
    object Entrada_Diario: TAction
      Category = 'Contabilidad'
      Caption = 'Entrada de Diario'
      ImageIndex = 60
      OnExecute = Entrada_DiarioExecute
    end
    object Catalogo_Cuentas: TAction
      Category = 'Contabilidad'
      Caption = 'Cat'#225'logo de Cuentas'
      ImageIndex = 56
      OnExecute = Catalogo_CuentasExecute
    end
    object Estado_Situacion: TAction
      Category = 'Contabilidad'
      Caption = 'Estado de Situaci'#243'n'
      ImageIndex = 79
      OnExecute = Estado_SituacionExecute
    end
    object Estado_Ingresos_Gastos: TAction
      Category = 'Contabilidad'
      Caption = 'Estado de Ingresos y Gastos'
      ImageIndex = 79
      OnExecute = Estado_Ingresos_GastosExecute
    end
    object Balanza_Comprobacion: TAction
      Category = 'Contabilidad'
      Caption = 'Balanza de Comprobaci'#243'n'
      ImageIndex = 79
      OnExecute = Balanza_ComprobacionExecute
    end
    object Libro_Mayor: TAction
      Category = 'Contabilidad'
      Caption = 'Libro Mayor'
      ImageIndex = 6
      OnExecute = Libro_MayorExecute
    end
    object Reporte_Entradas_Diario: TAction
      Category = 'Contabilidad'
      Caption = 'Reporte de Entradas de Diario'
      ImageIndex = 31
      OnExecute = Reporte_Entradas_DiarioExecute
    end
    object Configuracion_Nomina: TAction
      Category = 'Herramientas'
      Caption = 'Configuraci'#243'n N'#243'mina'
      ImageIndex = 80
      OnExecute = Configuracion_NominaExecute
    end
    object Companias: TAction
      Category = 'N'#243'mina'
      Caption = 'Compa'#241#237'as'
      ImageIndex = 17
      OnExecute = CompaniasExecute
    end
    object Departamentos_Nomina: TAction
      Category = 'N'#243'mina'
      Caption = 'Departamentos'
      ImageIndex = 17
      OnExecute = Departamentos_NominaExecute
    end
    object Deducciones: TAction
      Category = 'N'#243'mina'
      Caption = 'Deducciones'
      ImageIndex = 33
      OnExecute = DeduccionesExecute
    end
    object Pagos_Incentivos: TAction
      Category = 'N'#243'mina'
      Caption = 'Pagos e Incentivos'
      ImageIndex = 15
      OnExecute = Pagos_IncentivosExecute
    end
    object Empleados: TAction
      Category = 'N'#243'mina'
      Caption = 'Empleados'
      ImageIndex = 45
      ShortCut = 113
      OnExecute = EmpleadosExecute
    end
    object Entradas_Horas_Diarias: TAction
      Category = 'N'#243'mina'
      Caption = 'Entradas de Horas Diarias'
      ImageIndex = 53
      ShortCut = 115
      OnExecute = Entradas_Horas_DiariasExecute
    end
    object Generar_Nomina: TAction
      Category = 'N'#243'mina'
      Caption = 'Generar Nomina'
      ImageIndex = 51
      ShortCut = 114
      OnExecute = Generar_NominaExecute
    end
    object Grupos_Nomina: TAction
      Category = 'N'#243'mina'
      Caption = 'Grupos de N'#243'mina'
      ImageIndex = 17
      OnExecute = Grupos_NominaExecute
    end
    object Reagrupar: TAction
      Category = 'N'#243'mina'
      Caption = 'Reagrupar'
      ImageIndex = 19
      ShortCut = 49234
      OnExecute = ReagruparExecute
    end
    object Nomina_Regalia: TAction
      Category = 'N'#243'mina'
      Caption = 'N'#243'mina de la Regal'#237'a Pascual'
      ImageIndex = 51
      OnExecute = Nomina_RegaliaExecute
    end
    object Directorio_Empleados: TAction
      Category = 'N'#243'mina'
      Caption = 'Directorio de Empleados'
      ImageIndex = 91
      OnExecute = Directorio_EmpleadosExecute
    end
    object Informacion_Laboral: TAction
      Category = 'N'#243'mina'
      Caption = 'Informaci'#243'n Laboral'
      ImageIndex = 9
      OnExecute = Informacion_LaboralExecute
    end
    object Facturas_Tipo_NCF: TAction
      Category = 'Reportes'
      Caption = 'Informe de Facturas por Tipo NCF'
      ImageIndex = 28
      OnExecute = Facturas_Tipo_NCFExecute
    end
    object Paises_Ciudades_Sectores_Zonas: TAction
      Category = 'Registro'
      Caption = 'Paises, Ciudades, Sectores y Zonas'
      ImageIndex = 17
      OnExecute = Paises_Ciudades_Sectores_ZonasExecute
    end
    object Balancear_Facturas: TAction
      Category = 'Herramientas'
      Caption = 'Balancear_Facturas'
      ShortCut = 24642
      OnExecute = Balancear_FacturasExecute
    end
    object Pagos_Fecha: TAction
      Category = 'Reportes'
      Caption = 'Pagos por Fecha'
      ImageIndex = 8
      OnExecute = Pagos_FechaExecute
    end
  end
end
