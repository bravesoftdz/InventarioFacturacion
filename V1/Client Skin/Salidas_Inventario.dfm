object FSalidas_Inventario: TFSalidas_Inventario
  Left = 27
  Top = 114
  BorderStyle = bsToolWindow
  Caption = 'Salida de Invenario'
  ClientHeight = 556
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = Opciones_Miscelaneas
  Position = poMainFormCenter
  ShowHint = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 571
    Top = 466
    Width = 52
    Height = 13
    Caption = 'SubTotal'
    FocusControl = SubTotal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 571
    Top = 503
    Width = 61
    Height = 13
    Caption = 'Total Neto'
    FocusControl = Total_Neto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 8
    Top = 466
    Width = 53
    Height = 13
    Caption = 'Comentario'
  end
  object Label15: TLabel
    Left = 571
    Top = 486
    Width = 66
    Height = 13
    Caption = 'Total Costo'
    FocusControl = Total_Costo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel_Detalles_Salida: TAdvPageControl
    Left = 8
    Top = 221
    Width = 788
    Height = 239
    ActivePage = Pg_Detalles_Salida
    ActiveFont.Charset = DEFAULT_CHARSET
    ActiveFont.Color = clWindowText
    ActiveFont.Height = -11
    ActiveFont.Name = 'Tahoma'
    ActiveFont.Style = []
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
    TabOrder = 3
    TabStop = False
    TabWidth = 250
    object Pg_Detalles_Salida: TAdvTabSheet
      Caption = 'Detalles de Salida'
      Color = clBtnFace
      ColorTo = clNone
      ImageIndex = 58
      TabGradientDirection = gdHorizontal
      TabColor = clBtnFace
      TabColorTo = clOlive
      object Detalles: TwwDBGrid
        Left = -1
        Top = 3
        Width = 778
        Height = 208
        ControlInfoInDataset = False
        ControlType.Strings = (
          'Codigo;CustomEdit;Codigos;F'
          'Descripcion;CustomEdit;Descripciones;F'
          'Tipo_Precio;CustomEdit;Tipos_Precios;F')
        Selected.Strings = (
          'Codigo'#9'10'#9'C'#243'digo'#9'F'#9'Datos del Producto'
          'Referencia'#9'10'#9'Referencia'#9'T'#9'Datos del Producto'
          'Descripcion'#9'26'#9'Descripci'#243'n'#9'T'#9'Datos del Producto'
          'Cantidad'#9'4'#9'Cant.'#9'F'#9'Datos de Facturaci'#243'n'
          'Contenido'#9'4'#9'Cont.'#9'F'#9'Datos de Facturaci'#243'n'
          'Tipo_Precio'#9'5'#9'TP'#9'T'#9'Datos de Facturaci'#243'n'
          'Precio_Venta'#9'8'#9'Precio'#9'F'#9'Datos de Facturaci'#243'n'
          'Impuesto'#9'5'#9'Imp.'#9'F'#9'%'
          'Descuento'#9'5'#9'Des.'#9'F'#9'%'
          'Mes'#9'2'#9'Mes'#9'F'#9'Vencimiento'
          'Ano'#9'4'#9'A'#241'o'#9'F'#9'Vencimiento'
          'Total_Precio'#9'13'#9'Total'#9'T')
        IniAttributes.Enabled = True
        IniAttributes.FileName = 'salidas.grd'
        IniAttributes.SectionName = 'Main_invoice'
        IniAttributes.Delimiter = ';;'
        TitleColor = 13428432
        OnRowChanged = DetallesRowChanged
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = Modulo.dDetalles_Salida
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowCellHint]
        ParentFont = False
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        TitleLines = 2
        TitleButtons = False
        UseTFields = False
        OnCalcCellColors = DetallesCalcCellColors
        OnColEnter = DetallesColEnter
        OnColExit = DetallesColExit
        OnEnter = DetallesEnter
        OnExit = DetallesExit
        PadColumnStyle = pcsPlain
        PaintOptions.AlternatingRowColor = 9948159
        object DetallesIButton: TwwIButton
          Left = 0
          Top = 0
          Width = 13
          Height = 22
          AllowAllUp = True
          Flat = True
        end
      end
      object Descripciones: TwwDBLookupCombo
        Left = 224
        Top = 37
        Width = 121
        Height = 21
        ControlInfoInDataset = False
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'Descripcion'#9'25'#9'Descripcion'#9'F'
          'Codigo'#9'15'#9'Codigo'#9'F'
          'Referencia'#9'15'#9'Referencia'#9'F'
          'Existencia'#9'10'#9'Existencia'#9'F'
          'Precio_Venta_Contado'#9'10'#9'Precio'#9'F'
          'Presentacion'#9'15'#9'Presentacion'#9'F')
        DataField = 'Descripcion'
        DataSource = Modulo.dDetalles_Salida
        LookupTable = Modulo.tListadoProductos
        LookupField = 'Descripcion'
        Options = [loColLines, loRowLines, loTitles, loSearchOnBackspace]
        TabOrder = 1
        AutoDropDown = True
        ShowButton = True
        OrderByDisplay = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnCloseUp = DescripcionesCloseUp
      end
      object Codigos: TwwDBLookupCombo
        Left = 16
        Top = 37
        Width = 121
        Height = 21
        ControlInfoInDataset = False
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'Codigo'#9'15'#9'Codigo'#9'F'
          'Descripcion'#9'30'#9'Descripcion'#9'F'
          'Referencia'#9'15'#9'Referencia'#9'F'
          'Existencia'#9'10'#9'Existencia'#9'F'
          'Precio_Venta_Contado'#9'10'#9'Precio'#9'F'
          'Presentacion'#9'15'#9'Presentacion'#9'F')
        DataField = 'Codigo'
        DataSource = Modulo.dDetalles_Salida
        LookupTable = Modulo.tListadoProductos
        LookupField = 'Codigo'
        Options = [loColLines, loRowLines, loTitles, loSearchOnBackspace]
        TabOrder = 2
        AutoDropDown = True
        ShowButton = True
        OrderByDisplay = False
        PreciseEditRegion = False
        AllowClearKey = False
      end
      object Tipos_Precios: TwwDBComboBox
        Left = 384
        Top = 40
        Width = 121
        Height = 21
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        DataField = 'Tipo_Precio'
        DataSource = Modulo.dDetalles_Salida
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          'PMCR'#9'Por Mayor Cr'#233'dito'
          'PMCT'#9'Por Mayor Contado'
          'DTCR'#9'Detalle Cr'#233'dito'
          'DTCT'#9'Detalle Contado')
        ItemIndex = 0
        Sorted = False
        TabOrder = 3
        UnboundDataType = wwDefault
      end
    end
  end
  object Panel_Datos_Salida: TAdvPageControl
    Left = 5
    Top = 2
    Width = 573
    Height = 194
    ActivePage = Pg_Datos_Salida
    ActiveFont.Charset = DEFAULT_CHARSET
    ActiveFont.Color = clWindowText
    ActiveFont.Height = -11
    ActiveFont.Name = 'Tahoma'
    ActiveFont.Style = []
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    HotTrack = True
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
    TabOrder = 0
    TabStop = False
    TabWidth = 250
    object Pg_Datos_Salida: TAdvTabSheet
      Caption = 'Datos de Salida'
      Color = clBtnFace
      ColorTo = clNone
      ImageIndex = 58
      TabGradientDirection = gdHorizontal
      TabColor = clBlack
      TabColorTo = clOlive
      object Label6: TLabel
        Left = 3
        Top = 107
        Width = 52
        Height = 13
        Caption = '&Referencia'
        FocusControl = Referencia
      end
      object Label3: TLabel
        Left = 392
        Top = 87
        Width = 29
        Height = 13
        Caption = 'Fecha'
        FocusControl = FechaSalida
      end
      object Label4: TLabel
        Left = 392
        Top = 107
        Width = 23
        Height = 13
        Caption = 'Hora'
        FocusControl = HoraSalida
      end
      object Label2: TLabel
        Left = 3
        Top = 26
        Width = 33
        Height = 13
        Caption = '&Cliente'
        FocusControl = Cliente
      end
      object bt_Anadir_Cliente: TSpeedButton
        Left = 370
        Top = 23
        Width = 22
        Height = 19
        Flat = True
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
          6666666666666666666666660000666666666666666666666666666666666666
          0000666666666666666666666666666666666666000066666666FFF666666666
          666666FFF666666600006666666811F66666666666666877F666666600006666
          666811F66666666666666877F666666600006666666811F66666666666666877
          F666666600006666FFF611FFFFF6666666FFF777FFFFF6660000666811111111
          11F66666687777777777F666000066681111111111F66666687777777777F666
          000066688888116888666666688888777888666600006666666811F666666666
          66666877F666666600006666666811F66666666666666877F666666600006666
          666811F66666666666666877F666666600006666666888666666666666666888
          6666666600006666666666666666666666666666666666660000666666666666
          6666666666666666666666660000666666666666666666666666666666666666
          0000}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = bt_Anadir_ClienteClick
      end
      object Label10: TLabel
        Left = 3
        Top = 46
        Width = 108
        Height = 13
        Caption = 'C'#233'dula/Rnc/Pasaporte'
      end
      object Label11: TLabel
        Left = 3
        Top = 67
        Width = 84
        Height = 13
        Caption = 'Tel'#233'fono Principal'
      end
      object Label23: TLabel
        Left = 3
        Top = 127
        Width = 46
        Height = 13
        Caption = '&Vendedor'
        FocusControl = Vendedor
      end
      object Label5: TLabel
        Left = 3
        Top = 147
        Width = 53
        Height = 13
        Caption = 'Concepto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Recuadro_Foto: TShape
        Left = 453
        Top = 0
        Width = 95
        Height = 80
      end
      object FOTO: TImage
        Left = 457
        Top = 2
        Width = 87
        Height = 76
        Cursor = crHandPoint
        Stretch = True
      end
      object Label1: TLabel
        Left = 3
        Top = 5
        Width = 44
        Height = 13
        Caption = 'N'#250'mero'
        FocusControl = NumeroSalida
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 3
        Top = 87
        Width = 42
        Height = 13
        Caption = 'Conduce'
        FocusControl = Conduce
      end
      object Referencia: TDBEdit
        Left = 59
        Top = 104
        Width = 127
        Height = 19
        Ctl3D = False
        DataField = 'Referencia'
        DataSource = Modulo.dSalidas_Inventario
        ParentCtl3D = False
        TabOrder = 5
      end
      object FechaSalida: TDBEdit
        Left = 437
        Top = 84
        Width = 127
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'Fecha'
        DataSource = Modulo.dSalidas_Inventario
        ParentColor = True
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 8
      end
      object HoraSalida: TDBEdit
        Left = 437
        Top = 104
        Width = 127
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'Hora'
        DataSource = Modulo.dSalidas_Inventario
        ParentColor = True
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 9
      end
      object Cliente: TwwDBLookupCombo
        Left = 59
        Top = 23
        Width = 305
        Height = 19
        Ctl3D = False
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'NombreCompleto'#9'25'#9'Nombre del Cliente'#9'F'
          'Cedula_Rnc_Pasaporte'#9'25'#9'C'#233'dula/Rnc/Registro'#9'F')
        DataField = 'Cliente'
        DataSource = Modulo.dSalidas_Inventario
        LookupTable = Modulo.tListado_Clientes
        LookupField = 'Cedula_Rnc_Pasaporte'
        Options = [loColLines, loRowLines, loTitles, loSearchOnBackspace]
        Style = csDropDownList
        ParentCtl3D = False
        TabOrder = 1
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnExit = ClienteExit
      end
      object CedulaCliente: TDBEdit
        Left = 124
        Top = 43
        Width = 240
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'Cedula_Rnc_Pasaporte'
        DataSource = Modulo.dListado_Clientes
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
      object TelefonoCliente: TDBEdit
        Left = 124
        Top = 64
        Width = 240
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'Numero_Telefono_1'
        DataSource = Modulo.dListado_Clientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object Vendedor: TwwDBLookupCombo
        Left = 59
        Top = 124
        Width = 305
        Height = 19
        Ctl3D = False
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'NombreCompleto'#9'25'#9'Nombre del Cliente'#9'F'
          'Cedula_Rnc_Pasaporte'#9'25'#9'Cedula_Rnc_Pasaporte'#9'F')
        DataField = 'Vendedor'
        DataSource = Modulo.dSalidas_Inventario
        LookupTable = Modulo.tListadoVendedores
        LookupField = 'Cedula_Rnc_Pasaporte'
        Options = [loColLines, loRowLines, loTitles, loSearchOnBackspace]
        Style = csDropDownList
        ParentCtl3D = False
        TabOrder = 6
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
      end
      object ConceptoSalida: TwwDBComboBox
        Left = 59
        Top = 144
        Width = 305
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        ButtonStyle = cbsCustom
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Concepto_Salida'
        DataSource = Modulo.dSalidas_Inventario
        DropDownCount = 15
        ButtonEffects.Transparent = True
        ButtonWidth = -1
        ButtonGlyph.Data = {
          CE000000424DCE000000000000007600000028000000090000000B0000000100
          0400000000005800000000000000000000001000000000000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777300
          0000700000007300000077777777780000007777077773000000777000777000
          0000770000077000000070000000730000007770007778000000777000777000
          000077700077770000007777777770000000}
        HistoryList.Section = 'Conceptos_Salida'
        HistoryList.FileName = 'Facturacion_Productos.hlst'
        HistoryList.Enabled = True
        ItemHeight = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 7
        UnboundDataType = wwDefault
      end
      object NumeroSalida: TDBEdit
        Left = 59
        Top = 0
        Width = 145
        Height = 22
        TabStop = False
        Ctl3D = False
        DataField = 'Numero'
        DataSource = Modulo.dSalidas_Inventario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object Conduce: TDBEdit
        Left = 59
        Top = 84
        Width = 127
        Height = 19
        Ctl3D = False
        DataField = 'Conduce'
        DataSource = Modulo.dSalidas_Inventario
        ParentCtl3D = False
        TabOrder = 4
      end
    end
  end
  object Panel_Botones: TAdvPageControl
    Left = 633
    Top = 2
    Width = 154
    Height = 219
    ActivePage = Pg_Botones
    ActiveFont.Charset = DEFAULT_CHARSET
    ActiveFont.Color = clWindowText
    ActiveFont.Height = -11
    ActiveFont.Name = 'Tahoma'
    ActiveFont.Style = []
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
    TabOrder = 11
    TabStop = False
    TabWidth = 100
    object Pg_Botones: TAdvTabSheet
      Color = clBtnFace
      ColorTo = clNone
      ImageIndex = -1
      TabGradientDirection = gdHorizontal
      TabColor = clBlack
      TabColorTo = clOlive
      object Botones: TActionToolBar
        Left = 1
        Top = -6
        Width = 136
        Height = 199
        ActionManager = Opciones
        Align = alNone
        ColorMap = Modulo.ColorConfig
        EdgeInner = esNone
        Orientation = boTopToBottom
        ParentShowHint = False
        PersistentHotKeys = True
        ShowHint = True
        Spacing = 0
      end
    end
  end
  object SubTotal: TDBEdit
    Left = 668
    Top = 463
    Width = 116
    Height = 19
    TabStop = False
    Ctl3D = False
    DataField = 'SubTotal'
    DataSource = Modulo.dSalidas_Inventario
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object Total_Neto: TDBEdit
    Left = 668
    Top = 503
    Width = 116
    Height = 31
    TabStop = False
    Ctl3D = False
    DataField = 'TotalNeto'
    DataSource = Modulo.dSalidas_Inventario
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
  end
  object Comentarios: TwwDBRichEdit
    Left = 64
    Top = 463
    Width = 281
    Height = 73
    AutoURLDetect = True
    BorderWidth = 1
    Ctl3D = False
    DataField = 'Comentario'
    DataSource = Modulo.dSalidas_Inventario
    ParentCtl3D = False
    PrintJobName = 'Comentarios a Factura'
    TabOrder = 4
    WantNavigationKeys = True
    EditorCaption = 'Edit Rich Text'
    EditorPosition.Left = 0
    EditorPosition.Top = 0
    EditorPosition.Width = 0
    EditorPosition.Height = 0
    MeasurementUnits = muInches
    PrintMargins.Top = 1.000000000000000000
    PrintMargins.Bottom = 1.000000000000000000
    PrintMargins.Left = 1.000000000000000000
    PrintMargins.Right = 1.000000000000000000
    PrintHeader.VertMargin = 0.500000000000000000
    PrintHeader.Font.Charset = DEFAULT_CHARSET
    PrintHeader.Font.Color = clWindowText
    PrintHeader.Font.Height = -11
    PrintHeader.Font.Name = 'Tahoma'
    PrintHeader.Font.Style = []
    PrintFooter.VertMargin = 0.500000000000000000
    PrintFooter.Font.Charset = DEFAULT_CHARSET
    PrintFooter.Font.Color = clWindowText
    PrintFooter.Font.Height = -11
    PrintFooter.Font.Name = 'Tahoma'
    PrintFooter.Font.Style = []
    RichEditVersion = 2
    Data = {
      7F0000007B5C727466315C616E73695C616E7369637067313235325C64656666
      305C6465666C616E67313033337B5C666F6E7474626C7B5C66305C666E696C20
      4D532053616E732053657269663B7D7D0D0A5C766965776B696E64345C756331
      5C706172645C66305C6673313620436F6D656E746172696F735C7061720D0A7D
      0D0A00}
  end
  object Total_Costo: TDBEdit
    Left = 668
    Top = 483
    Width = 116
    Height = 19
    TabStop = False
    Color = 14154951
    Ctl3D = False
    DataField = 'Total_Costo'
    DataSource = Modulo.dSalidas_Inventario
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
  end
  object Desglosar: TCheckBox
    Left = 717
    Top = 223
    Width = 69
    Height = 17
    Caption = '&Desglosar'
    TabOrder = 9
  end
  object VistaPrevia: TCheckBox
    Left = 635
    Top = 223
    Width = 78
    Height = 17
    Caption = '&Vista Previa'
    TabOrder = 8
  end
  inline Registro_Clientes: TFrameClientes
    Left = 124
    Top = 297
    Width = 580
    Height = 155
    TabOrder = 10
    TabStop = True
    Visible = False
    ExplicitLeft = 124
    ExplicitTop = 297
    ExplicitHeight = 155
    inherited Datos_Cliente: TAdvPageControl
      Top = 1
      ExplicitTop = 1
      inherited Pg_Clientes: TAdvTabSheet
        ExplicitLeft = 4
        ExplicitTop = 25
        ExplicitWidth = 565
        ExplicitHeight = 122
      end
    end
  end
  object Nuevo_Imprimir: TCheckBox
    Left = 616
    Top = 62
    Width = 15
    Height = 17
    TabOrder = 12
  end
  object Filtrar_Categoria: TCheckBox
    Left = 267
    Top = 222
    Width = 78
    Height = 17
    Caption = '&Categorias'
    TabOrder = 1
    OnClick = Filtrar_CategoriaClick
  end
  object Categorias: TwwDBLookupCombo
    Left = 348
    Top = 221
    Width = 230
    Height = 19
    Ctl3D = False
    CharCase = ecUpperCase
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Descripcion'#9'35'#9'Descripcion'#9'F')
    LookupTable = Modulo.tCategoria
    LookupField = 'Descripcion'
    Options = [loColLines, loRowLines, loTitles, loSearchOnBackspace]
    Style = csDropDownList
    ParentCtl3D = False
    TabOrder = 2
    Visible = False
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
    OnCloseUp = CategoriasCloseUp
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
            ShortCut = 16467
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
            ShortCut = 16467
          end>
      end
      item
        Items = <
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
            ShortCut = 16467
          end>
      end
      item
      end
      item
        Items.CaptionOptions = coAll
        Items = <
          item
            Items = <
              item
                Action = Guardar
                Caption = '&Guardar'
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
                Action = Imprimir
                Caption = '&Imprimir'
                ImageIndex = 5
                ShortCut = 16464
              end
              item
                Caption = '-'
              end
              item
                Action = AnadirCliente
                Caption = 'A'#241'a&dir Cliente'
                ImageIndex = 66
                ShortCut = 114
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
                ShortCut = 16467
              end>
            Caption = '&Opciones'
          end>
      end
      item
        Items.CaptionOptions = coAll
        Items = <
          item
            Action = Guardar
            Caption = '&Guardar'
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
            ImageIndex = 2
            ShortCut = 16450
          end
          item
            Action = Registrar_Seriales
            ImageIndex = 40
          end
          item
            Action = Imprimir
            Caption = '&Imprimir'
            ImageIndex = 5
            ShortCut = 16464
          end
          item
            Action = Salir
            Caption = '&Salir'
            ImageIndex = 10
            ShortCut = 16467
          end>
        ActionBar = Botones
      end
      item
        Items = <
          item
            Items = <
              item
                Action = Guardar
                Caption = '&Guardar'
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
                Action = Guardar_Temporal
                Caption = 'G&uardar Temporal'
                ImageIndex = 30
                ShortCut = 123
              end
              item
                Action = Cargar_Temporal
                ImageIndex = 3
                ShortCut = 122
              end
              item
                Caption = '-'
              end
              item
                Action = Imprimir
                Caption = '&Imprimir'
                ImageIndex = 5
                ShortCut = 16464
              end
              item
                Caption = '-'
              end
              item
                Action = Configuracion_Salidas
                ImageIndex = 68
                ShortCut = 49219
              end
              item
                Action = Definir_Departamento
                Caption = '&Definir Departamento'
                ImageIndex = 24
              end>
            Caption = '&Opciones'
          end>
      end
      item
        Items = <
          item
            Caption = '-'
          end
          item
            Action = Enviar_email
            Caption = '&Enviar por em@il'
            ImageIndex = 11
          end>
      end>
    Images = Modulo.SystemImages
    Left = 600
    Top = 93
    StyleName = 'XP Style'
    object Salir: TAction
      Category = 'Opciones'
      Caption = 'Salir'
      Hint = 'Salir de Esta Pantalla'
      ImageIndex = 10
      ShortCut = 16467
      OnExecute = SalirExecute
    end
    object Guardar: TAction
      Category = 'Opciones'
      Caption = 'Guardar'
      Hint = 'Guardar el Registro Actual'
      ImageIndex = 0
      ShortCut = 16455
      OnExecute = GuardarExecute
    end
    object Nuevo: TAction
      Category = 'Opciones'
      Caption = 'Nuevo'
      Hint = 'Crear Nuevo Regitro'
      ImageIndex = 1
      ShortCut = 16462
      OnExecute = NuevoExecute
    end
    object Buscar: TAction
      Category = 'Opciones'
      Caption = 'Buscar'
      Hint = 'Buscar Registro Previamente Guardado'
      ImageIndex = 2
      ShortCut = 16450
      OnExecute = BuscarExecute
    end
    object Imprimir: TAction
      Category = 'Opciones'
      Caption = 'Imprimir'
      Hint = 'Imprimir Factura'
      ImageIndex = 5
      ShortCut = 16464
      OnExecute = ImprimirExecute
    end
    object AnadirCliente: TAction
      Category = 'Opciones'
      Caption = 'A'#241'adir Cliente'
      Hint = 'A'#241'adir Un Cliente Nuevo'
      ImageIndex = 47
      ShortCut = 114
      OnExecute = AnadirClienteExecute
    end
    object Configuracion_Salidas: TAction
      Category = 'Opciones'
      Caption = 'Configuracion de Salida de Inventario'
      ImageIndex = 55
      ShortCut = 49219
      OnExecute = Configuracion_SalidasExecute
    end
    object Definir_Departamento: TAction
      Category = 'Opciones'
      Caption = 'Definir Departamento'
      ImageIndex = 17
      OnExecute = Definir_DepartamentoExecute
    end
    object Guardar_Temporal: TAction
      Category = 'Opciones'
      Caption = 'Guardar Temporal'
      ImageIndex = 30
      ShortCut = 123
      OnExecute = Guardar_TemporalExecute
    end
    object Cargar_Temporal: TAction
      Category = 'Opciones'
      Caption = 'Cargar Temporal'
      ImageIndex = 3
      ShortCut = 122
      OnExecute = Cargar_TemporalExecute
    end
    object Enviar_email: TAction
      Category = 'Opciones'
      Caption = 'Enviar por em@il'
      ImageIndex = 11
    end
    object Registrar_Seriales: TAction
      Category = 'Opciones'
      Caption = 'Registrar Seriales'
      ImageIndex = 40
      OnExecute = Registrar_SerialesExecute
    end
  end
  object Opciones_Miscelaneas: TsuiPopupMenu
    Images = Modulo.SystemImages
    OwnerDraw = True
    UIStyle = DeepBlue
    MenuItemHeight = 26
    SeparatorHeight = 5
    BarWidth = 26
    BarColor = 13554646
    BarToColor = 13554646
    Color = clWhite
    SeparatorColor = 8684164
    SelectedBorderColor = 10504772
    SelectedColor = 10504772
    SelectedFontColor = clWhite
    FontColor = clBlack
    BorderColor = clBlack
    FlatMenu = False
    FontName = 'MS Sans Serif'
    FontSize = 8
    FontCharset = DEFAULT_CHARSET
    UseSystemFont = True
    Left = 592
    Top = 152
    object Menu_Anadir_Cliente: TMenuItem
      Action = AnadirCliente
    end
    object Menu_Definir_Departamento: TMenuItem
      Action = Definir_Departamento
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Menu_Cargar_Tempora: TMenuItem
      Action = Cargar_Temporal
    end
    object Menu_Guardar_Temporal: TMenuItem
      Action = Guardar_Temporal
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Menu_Registrar_Seriales: TMenuItem
      Action = Registrar_Seriales
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Menu_Enviar_email: TMenuItem
      Action = Enviar_email
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Menu_Configuracion_Salidas: TMenuItem
      Action = Configuracion_Salidas
    end
  end
end
