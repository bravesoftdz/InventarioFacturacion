object FClientes: TFClientes
  Left = 172
  Top = 73
  ActiveControl = Cedula_Pasaporte
  BorderStyle = bsToolWindow
  Caption = 'Registro y Modificaci'#243'n de Clientes'
  ClientHeight = 578
  ClientWidth = 769
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Barra_Menu: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 769
    Height = 27
    UseSystemFont = False
    ActionManager = Opciones
    Caption = 'Barra_Menu'
    ColorMap = Modulo.ColorConfig
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
  object Panel_Botones: TAdvPageControl
    Left = 582
    Top = 33
    Width = 179
    Height = 361
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
    Version = '2.0.0.1'
    PersistPagesState.Location = plRegistry
    PersistPagesState.Enabled = False
    TabHeight = 19
    TabOrder = 1
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
        Left = 0
        Top = 0
        Width = 171
        Height = 332
        ActionManager = Opciones
        Align = alClient
        Caption = 'Botones'
        ColorMap = Modulo.ColorConfig
        EdgeInner = esLowered
        EdgeOuter = esRaised
        Orientation = boTopToBottom
        Spacing = 0
      end
    end
  end
  object Panel_Datos_Generales: TAdvPageControl
    Left = 7
    Top = 29
    Width = 569
    Height = 547
    ActivePage = Pg_Datos_Generales
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
    Version = '2.0.0.1'
    PersistPagesState.Location = plRegistry
    PersistPagesState.Enabled = False
    TabHeight = 19
    TabOrder = 2
    TabStop = False
    TabWidth = 250
    object Pg_Datos_Generales: TAdvTabSheet
      Caption = 'Datos Generales'
      Color = clBtnFace
      ColorTo = clNone
      ImageIndex = 47
      TabGradientDirection = gdHorizontal
      TabColor = clBlack
      TabColorTo = clOlive
      object Shape1: TShape
        Left = 431
        Top = 4
        Width = 98
        Height = 99
      end
      object LID: TLabel
        Left = 4
        Top = 26
        Width = 135
        Height = 13
        Caption = 'C'#233'dula/RNC/Pasaporte'
        FocusControl = Cedula_Pasaporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 4
        Top = 49
        Width = 69
        Height = 13
        Caption = 'Tipo Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 4
        Top = 75
        Width = 42
        Height = 13
        Caption = 'Nombres'
        FocusControl = Nombres
      end
      object Label4: TLabel
        Left = 4
        Top = 95
        Width = 42
        Height = 13
        Caption = 'Apellidos'
        FocusControl = Apellidos
      end
      object Label7: TLabel
        Left = 4
        Top = 135
        Width = 55
        Height = 13
        Caption = 'Estado Civil'
      end
      object Label8: TLabel
        Left = 4
        Top = 176
        Width = 84
        Height = 13
        Caption = 'Fecha Nacimiento'
      end
      object Label13: TLabel
        Left = 4
        Top = 198
        Width = 43
        Height = 13
        Caption = 'Direcci'#243'n'
        FocusControl = Direccion_Local
      end
      object Label14: TLabel
        Left = 4
        Top = 218
        Width = 19
        Height = 13
        Caption = 'Pais'
      end
      object Label15: TLabel
        Left = 306
        Top = 218
        Width = 76
        Height = 13
        Caption = 'Ciudad / Estado'
      end
      object Label16: TLabel
        Left = 4
        Top = 238
        Width = 31
        Height = 13
        Caption = 'Sector'
      end
      object Label18: TLabel
        Left = 4
        Top = 298
        Width = 28
        Height = 13
        Caption = 'e-mail'
        FocusControl = email
      end
      object Label9: TLabel
        Left = 4
        Top = 154
        Width = 24
        Height = 13
        Caption = 'Sexo'
      end
      object FOTO: TImage
        Left = 432
        Top = 5
        Width = 96
        Height = 97
        Cursor = crHandPoint
        Stretch = True
        OnDblClick = Agregar_FotoExecute
      end
      object Label10: TLabel
        Left = 443
        Top = 105
        Width = 74
        Height = 13
        Cursor = crHandPoint
        Caption = 'Agregar Foto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        OnClick = Agregar_FotoExecute
      end
      object Label12: TLabel
        Left = 306
        Top = 238
        Width = 24
        Height = 13
        Caption = 'Zona'
      end
      object Label17: TLabel
        Left = 4
        Top = 115
        Width = 60
        Height = 13
        Caption = 'Nacionalidad'
        FocusControl = Nacionalidad
      end
      object Label19: TLabel
        Left = 4
        Top = 318
        Width = 67
        Height = 13
        Caption = 'Lugar Trabajo'
        FocusControl = Lugar_Trabajo
      end
      object Label11: TLabel
        Left = 4
        Top = 495
        Width = 36
        Height = 13
        Caption = 'Estatus'
      end
      object Label1: TLabel
        Left = 283
        Top = 495
        Width = 87
        Height = 13
        Caption = 'Fecha de Registro'
      end
      object Label5: TLabel
        Left = 4
        Top = 380
        Width = 80
        Height = 13
        Caption = 'L'#237'mite de Cr'#233'dito'
        FocusControl = Limite_Credito
      end
      object Label6: TLabel
        Left = 4
        Top = 360
        Width = 46
        Height = 13
        Caption = 'Condici'#243'n'
      end
      object Label20: TLabel
        Left = 283
        Top = 360
        Width = 117
        Height = 13
        Caption = 'Terminos de Facturaci'#243'n'
      end
      object Label21: TLabel
        Left = 4
        Top = 400
        Width = 90
        Height = 13
        Caption = 'N'#250'mero de Tarjeta'
        FocusControl = Tarjeta_Numero
      end
      object Label22: TLabel
        Left = 283
        Top = 380
        Width = 90
        Height = 13
        Caption = 'N'#250'mero de Cuenta'
      end
      object Label23: TLabel
        Left = 4
        Top = 420
        Width = 98
        Height = 13
        Caption = 'Descuento Asignado'
        FocusControl = Descuento_Asignado
      end
      object Label24: TLabel
        Left = 4
        Top = 437
        Width = 70
        Height = 13
        Caption = 'Balance Actual'
        FocusControl = Balance
      end
      object Label25: TLabel
        Left = 4
        Top = 474
        Width = 69
        Height = 13
        Caption = #218'ltima Factura'
        FocusControl = Ultima_Factura
      end
      object Label26: TLabel
        Left = 283
        Top = 474
        Width = 89
        Height = 13
        Caption = 'Fecha '#218'lt. Factura'
        FocusControl = Cuenta_Numero
      end
      object bt_Anadir_Terminos: TSpeedButton
        Left = 539
        Top = 357
        Width = 20
        Height = 19
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000000080000000
          8000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000000080000000
          8000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000000080000000
          8000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00000080000000
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FF00FF00FF00
          FF00FF00FF008080800000008000000080000000800000008000000080000000
          800000008000000080000000800000008000FFFFFF00FF00FF00FF00FF00FF00
          FF00FF00FF008080800000008000000080000000800000008000000080000000
          800000008000000080000000800000008000FFFFFF00FF00FF00FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000000080000000
          8000FF00FF00808080008080800080808000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000000080000000
          8000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000000080000000
          8000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000000080000000
          8000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000808080008080
          8000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        OnClick = Agregar_Terminos_FacturacionExecute
      end
      object bt_Editar_Paises_Ciudades_Sectores_Zonas: TSpeedButton
        Left = 115
        Top = 215
        Width = 20
        Height = 19
        Hint = 'Editar/A'#241'adir paises, ciudades, sectores y/o zonas'
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000000080000000
          8000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000000080000000
          8000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000000080000000
          8000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00000080000000
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FF00FF00FF00
          FF00FF00FF008080800000008000000080000000800000008000000080000000
          800000008000000080000000800000008000FFFFFF00FF00FF00FF00FF00FF00
          FF00FF00FF008080800000008000000080000000800000008000000080000000
          800000008000000080000000800000008000FFFFFF00FF00FF00FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000000080000000
          8000FF00FF00808080008080800080808000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000000080000000
          8000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000000080000000
          8000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000000080000000
          8000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000808080008080
          8000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      end
      object Estado_Civil: TwwDBComboBox
        Left = 142
        Top = 132
        Width = 161
        Height = 19
        ShowButton = True
        Style = csDropDownList
        MapList = False
        AllowClearKey = False
        Ctl3D = False
        DataField = 'Estado_Civil'
        DataSource = Modulo.dClientes
        DropDownCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 0
        Items.Strings = (
          'Casado (a)'
          'Divorciado (a)'
          'Soltero (a)'
          'Uni'#243'n Libre'
          'Viudo (a)')
        ParentCtl3D = False
        ParentFont = False
        Sorted = True
        TabOrder = 6
        UnboundDataType = wwDefault
      end
      object Fecha_Nacimiento: TwwDBDateTimePicker
        Left = 142
        Top = 172
        Width = 161
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'Fecha_Nacimiento'
        DataSource = Modulo.dClientes
        Epoch = 1950
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowButton = True
        TabOrder = 8
      end
      object Nombres: TDBEdit
        Left = 142
        Top = 72
        Width = 233
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Nombre'
        DataSource = Modulo.dClientes
        ParentCtl3D = False
        TabOrder = 3
      end
      object Apellidos: TDBEdit
        Left = 142
        Top = 92
        Width = 233
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Apellido'
        DataSource = Modulo.dClientes
        ParentCtl3D = False
        TabOrder = 4
      end
      object Tipo_Cliente: TDBRadioGroup
        Left = 142
        Top = 39
        Width = 161
        Height = 32
        Columns = 2
        Ctl3D = False
        DataField = 'Tipo_Cliente'
        DataSource = Modulo.dClientes
        Items.Strings = (
          'Persona'
          'Compa'#241#237'a')
        ParentBackground = True
        ParentCtl3D = False
        TabOrder = 2
      end
      object Secuencia: TDBEdit
        Left = 142
        Top = 0
        Width = 161
        Height = 22
        TabStop = False
        Ctl3D = False
        DataField = 'Secuencia'
        DataSource = Modulo.dClientes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object Direccion_Local: TDBEdit
        Left = 142
        Top = 195
        Width = 417
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Direccion'
        DataSource = Modulo.dClientes
        ParentCtl3D = False
        TabOrder = 9
      end
      object Telefono_Principal: TDBEdit
        Left = 142
        Top = 255
        Width = 157
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Numero_Telefono_1'
        DataSource = Modulo.dClientes
        ParentCtl3D = False
        TabOrder = 15
      end
      object Telefono_Secundario: TDBEdit
        Left = 402
        Top = 255
        Width = 157
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Numero_Telefono_2'
        DataSource = Modulo.dClientes
        ParentCtl3D = False
        TabOrder = 17
      end
      object Telefono_Tercero: TDBEdit
        Left = 142
        Top = 275
        Width = 157
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Numero_Telefono_3'
        DataSource = Modulo.dClientes
        ParentCtl3D = False
        TabOrder = 19
      end
      object Telefono_Cuarto: TDBEdit
        Left = 402
        Top = 275
        Width = 157
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Numero_Telefono_4'
        DataSource = Modulo.dClientes
        ParentCtl3D = False
        TabOrder = 21
      end
      object email: TDBEdit
        Left = 142
        Top = 295
        Width = 417
        Height = 19
        CharCase = ecLowerCase
        Ctl3D = False
        DataField = 'mail'
        DataSource = Modulo.dClientes
        ParentCtl3D = False
        TabOrder = 22
      end
      object Tipo_Telefono_Principal: TwwDBComboBox
        Left = 4
        Top = 255
        Width = 92
        Height = 19
        TabStop = False
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        BorderStyle = bsNone
        Ctl3D = False
        DataField = 'Tipo_Telefono_1'
        DataSource = Modulo.dClientes
        DropDownCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        ItemHeight = 0
        Items.Strings = (
          'Automovil'
          'Beeper'
          'Celular'
          'Fax'
          'Local'
          'Oficina'
          'Otro Tel.'
          'Pager'
          'Real'
          'Tel. Casa'
          'Tel. Trabajo')
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        Sorted = True
        TabOrder = 14
        UnboundDataType = wwDefault
      end
      object Tipo_Telefono_Tercero: TwwDBComboBox
        Left = 4
        Top = 275
        Width = 92
        Height = 19
        TabStop = False
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        BorderStyle = bsNone
        Ctl3D = False
        DataField = 'Tipo_Telefono_3'
        DataSource = Modulo.dClientes
        DropDownCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        ItemHeight = 0
        Items.Strings = (
          'Automovil'
          'Beeper'
          'Celular'
          'Fax'
          'Local'
          'Oficina'
          'Otro Tel.'
          'Pager'
          'Real'
          'Tel. Casa'
          'Tel. Trabajo')
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        Sorted = False
        TabOrder = 18
        UnboundDataType = wwDefault
      end
      object Tipo_Telefono_Secundario: TwwDBComboBox
        Left = 306
        Top = 255
        Width = 94
        Height = 19
        TabStop = False
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        BorderStyle = bsNone
        Ctl3D = False
        DataField = 'Tipo_Telefono_2'
        DataSource = Modulo.dClientes
        DropDownCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        ItemHeight = 0
        Items.Strings = (
          'Automovil'
          'Beeper'
          'Celular'
          'Fax'
          'Local'
          'Oficina'
          'Otro Tel.'
          'Pager'
          'Real'
          'Tel. Casa'
          'Tel. Trabajo')
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        Sorted = False
        TabOrder = 16
        UnboundDataType = wwDefault
      end
      object Tipo_Telefono_Cuarto: TwwDBComboBox
        Left = 306
        Top = 275
        Width = 94
        Height = 19
        TabStop = False
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        BorderStyle = bsNone
        Ctl3D = False
        DataField = 'Tipo_Telefono_4'
        DataSource = Modulo.dClientes
        DropDownCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        ItemHeight = 0
        Items.Strings = (
          'Automovil'
          'Beeper'
          'Celular'
          'Fax'
          'Local'
          'Oficina'
          'Otro Tel.'
          'Pager'
          'Real'
          'Tel. Casa'
          'Tel. Trabajo')
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        Sorted = False
        TabOrder = 20
        UnboundDataType = wwDefault
      end
      object Pais: TwwDBLookupCombo
        Left = 142
        Top = 215
        Width = 157
        Height = 19
        Ctl3D = False
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'Nombre'#9'50'#9'Nombre'#9'F'
          'Iso_3_Char'#9'5'#9'COD'#9'F'
          'Region'#9'25'#9'Region'#9'F')
        DataField = 'Pais'
        DataSource = Modulo.dClientes
        LookupTable = ModuloGenerales.tListado_Paises
        LookupField = 'Iso_3_Char'
        Style = csDropDownList
        ParentCtl3D = False
        TabOrder = 10
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnChange = PaisExit
      end
      object Sector: TwwDBLookupCombo
        Left = 142
        Top = 235
        Width = 157
        Height = 19
        Ctl3D = False
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'Nombre'#9'35'#9'Nombre'#9'F'
          'Abreviatura'#9'11'#9'Abreviatura'#9'F')
        DataField = 'Sector'
        DataSource = Modulo.dClientes
        LookupTable = ModuloGenerales.tSectores
        LookupField = 'Numero'
        Style = csDropDownList
        ParentCtl3D = False
        TabOrder = 12
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
      end
      object Ciudad_Estado: TwwDBLookupCombo
        Left = 402
        Top = 215
        Width = 157
        Height = 19
        Ctl3D = False
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'Nombre'#9'35'#9'Nombre'#9'F'
          'Serie_Codigo'#9'5'#9'Serie / Codigo'#9'F')
        DataField = 'Ciudad'
        DataSource = Modulo.dClientes
        LookupTable = ModuloGenerales.tCiudades
        LookupField = 'Serie_Codigo'
        Style = csDropDownList
        ParentCtl3D = False
        TabOrder = 11
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
      end
      object Sexo: TwwDBComboBox
        Left = 142
        Top = 152
        Width = 161
        Height = 19
        ShowButton = True
        Style = csDropDownList
        MapList = False
        AllowClearKey = False
        Ctl3D = False
        DataField = 'Sexo'
        DataSource = Modulo.dClientes
        DropDownCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 0
        Items.Strings = (
          'Femenino'
          'Masculino')
        ParentCtl3D = False
        ParentFont = False
        Sorted = True
        TabOrder = 7
        UnboundDataType = wwDefault
      end
      object Zonas: TwwDBLookupCombo
        Left = 402
        Top = 235
        Width = 157
        Height = 19
        Ctl3D = False
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'Descripcion'#9'50'#9'Descripcion'#9'F'
          'Numero'#9'10'#9'Numero'#9'F')
        DataField = 'Zona'
        DataSource = Modulo.dClientes
        LookupTable = ModuloGenerales.tZonas
        LookupField = 'Numero'
        Style = csDropDownList
        ParentCtl3D = False
        TabOrder = 13
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
      end
      object Nacionalidad: TwwDBComboBox
        Left = 142
        Top = 112
        Width = 233
        Height = 19
        ShowButton = False
        Style = csSimple
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        ButtonStyle = cbsCustom
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Nacionalidad'
        DataSource = Modulo.dClientes
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
        HistoryList.Section = 'Nombres'
        HistoryList.FileName = 'Nacionalidades.hlst'
        HistoryList.Enabled = True
        HistoryList.MRUEnabled = True
        ItemHeight = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 5
        UnboundDataType = wwDefault
        OnKeyDown = FormKeyDown
      end
      object Lugar_Trabajo: TwwDBComboBox
        Left = 142
        Top = 315
        Width = 417
        Height = 19
        ShowButton = False
        Style = csSimple
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        ButtonStyle = cbsCustom
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Lugar_Trabajo'
        DataSource = Modulo.dClientes
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
        HistoryList.Section = 'Lugares'
        HistoryList.FileName = 'Trabajos.hlst'
        HistoryList.Enabled = True
        HistoryList.MRUEnabled = True
        ItemHeight = 0
        ParentCtl3D = False
        Sorted = False
        TabOrder = 23
        UnboundDataType = wwDefault
        OnKeyDown = FormKeyDown
      end
      object Status: TwwDBComboBox
        Left = 142
        Top = 492
        Width = 119
        Height = 19
        ShowButton = True
        Style = csDropDownList
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Status'
        DataSource = Modulo.dClientes
        DropDownCount = 15
        HistoryList.Section = 'Status'
        HistoryList.FileName = 'Proveedores.hlst'
        HistoryList.Enabled = True
        HistoryList.MRUEnabled = True
        ItemHeight = 0
        Items.Strings = (
          'ACTIVO'
          'INACTIVO')
        ParentCtl3D = False
        Sorted = False
        TabOrder = 34
        UnboundDataType = wwDefault
      end
      object Fecha_Registro: TwwDBDateTimePicker
        Left = 402
        Top = 491
        Width = 157
        Height = 21
        TabStop = False
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'Fecha_Registro'
        DataSource = Modulo.dClientes
        Epoch = 1950
        ParentColor = True
        ShowButton = True
        TabOrder = 35
      end
      object Limite_Credito: TDBEdit
        Left = 142
        Top = 377
        Width = 119
        Height = 19
        Ctl3D = False
        DataField = 'Limite_Credito'
        DataSource = Modulo.dClientes
        ParentCtl3D = False
        TabOrder = 27
      end
      object Tarjeta_Numero: TDBEdit
        Left = 142
        Top = 397
        Width = 119
        Height = 19
        Ctl3D = False
        DataField = 'Numero_Tarjeta'
        DataSource = Modulo.dClientes
        ParentCtl3D = False
        TabOrder = 28
      end
      object Descuento_Asignado: TDBEdit
        Left = 142
        Top = 417
        Width = 119
        Height = 19
        Ctl3D = False
        DataField = 'Descuento_Asignado'
        DataSource = Modulo.dClientes
        ParentCtl3D = False
        TabOrder = 30
      end
      object Balance: TDBEdit
        Left = 142
        Top = 437
        Width = 119
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'Balance_Actual'
        DataSource = Modulo.dClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 31
      end
      object Ultima_Factura: TDBEdit
        Left = 142
        Top = 471
        Width = 119
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'Ultima_Factura'
        DataSource = Modulo.dClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 32
      end
      object Condicion_Facturas: TwwDBComboBox
        Left = 142
        Top = 357
        Width = 119
        Height = 19
        ShowButton = True
        Style = csDropDownList
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        Ctl3D = False
        DataField = 'Condicion_Cliente'
        DataSource = Modulo.dClientes
        DropDownCount = 15
        HistoryList.Section = 'CondicionProveedor'
        HistoryList.FileName = 'Proveedores.hlst'
        ItemHeight = 0
        Items.Strings = (
          'Contado'
          'Cr'#233'dito'
          'Financiamiento')
        ParentCtl3D = False
        Sorted = False
        TabOrder = 25
        UnboundDataType = wwDefault
        OnChange = Condicion_FacturasChange
      end
      object Separador_Facturacion: TGroupBox
        Left = 4
        Top = 334
        Width = 556
        Height = 13
        Caption = '  Datos de Facturaci'#243'n  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 24
      end
      object Separador_Historico: TGroupBox
        Left = 4
        Top = 457
        Width = 556
        Height = 13
        Caption = '  Hist'#243'rico  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 36
      end
      object Cuenta_Numero: TDBEdit
        Left = 402
        Top = 377
        Width = 157
        Height = 19
        Ctl3D = False
        DataField = 'Numero_Cuenta'
        DataSource = Modulo.dClientes
        ParentCtl3D = False
        TabOrder = 29
      end
      object Fecha_Ultima_Factura: TwwDBComboBox
        Left = 402
        Top = 471
        Width = 157
        Height = 19
        TabStop = False
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        ButtonStyle = cbsCustom
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Fecha_Ultima_Factura'
        DataSource = Modulo.dClientes
        DisableDropDownList = True
        DropDownCount = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        ButtonWidth = -1
        HistoryList.Section = 'Cuentas'
        HistoryList.FileName = 'Proveedores.hlst'
        HistoryList.Enabled = True
        ItemHeight = 0
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        Sorted = False
        TabOrder = 33
        UnboundDataType = wwDefault
      end
      object Terminos_Facturacion: TwwDBLookupCombo
        Left = 402
        Top = 357
        Width = 134
        Height = 19
        Ctl3D = False
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'Descripcion'#9'50'#9'Descripci'#243'n'#9'F'
          'DiasDeGracia'#9'10'#9'DiasDeGracia'#9'F')
        DataField = 'TerminosFacturacion'
        DataSource = Modulo.dClientes
        LookupTable = Modulo.tTerminos
        LookupField = 'Numero_Termino'
        Options = [loColLines, loRowLines, loTitles, loSearchOnBackspace]
        ParentCtl3D = False
        TabOrder = 26
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
      end
      object Cedula_Pasaporte: TEdit
        Left = 142
        Top = 23
        Width = 161
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnExit = Cedula_PasaporteExit
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
                Caption = 'B&uscar'
                ImageIndex = 2
                ShortCut = 16450
              end
              item
                Action = Eliminar
                Caption = 'E&liminar'
                ImageIndex = 4
                ShortCut = 16453
              end
              item
                Caption = '-'
              end
              item
                Action = Agregar_Foto
                Caption = 'Ag&regar Foto'
                ImageIndex = 25
                ShortCut = 16454
              end
              item
                Action = Agregar_Terminos_Facturacion
                Caption = '&Agregar Terminos de Facturaci'#243'n'
                ImageIndex = 23
              end
              item
                Caption = '-'
              end
              item
                Action = Estado_Cuenta
                Caption = 'E&stado de Cuentas'
                ImageIndex = 15
              end
              item
                Action = Cuentas_Cobrar
                ImageIndex = 37
              end
              item
                Caption = '-'
              end
              item
                Action = Salir
                Caption = 'Sal&ir'
                ImageIndex = 10
                ShortCut = 27
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
            ImageIndex = 2
            ShortCut = 16450
          end
          item
            Action = Eliminar
            Caption = '&Eliminar'
            ImageIndex = 4
            ShortCut = 16453
          end
          item
            Caption = '-'
          end
          item
            Action = Estado_Cuenta
            ImageIndex = 15
          end
          item
            Action = Cuentas_Cobrar
            ImageIndex = 37
          end
          item
            Action = Nota_Credito
            ImageIndex = 14
          end
          item
            Action = Nota_Debito
            ImageIndex = 14
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
        ActionBar = Botones
      end>
    Images = Modulo.SystemImages
    Left = 616
    Top = 451
    StyleName = 'XP Style'
    object Salir: TAction
      Category = 'Opciones'
      Caption = 'Salir'
      ImageIndex = 10
      ShortCut = 27
      OnExecute = SalirExecute
    end
    object Guardar: TAction
      Category = 'Opciones'
      Caption = 'Guardar'
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
      ImageIndex = 2
      ShortCut = 16450
      OnExecute = BuscarExecute
    end
    object Eliminar: TAction
      Category = 'Opciones'
      Caption = 'Eliminar'
      ImageIndex = 4
      ShortCut = 16453
      OnExecute = EliminarExecute
    end
    object Estado_Cuenta: TAction
      Category = 'Acciones Relacionadas'
      Caption = 'Estado de Cuentas'
      ImageIndex = 15
      OnExecute = Estado_CuentaExecute
    end
    object Agregar_Foto: TAction
      Category = 'Acciones Relacionadas'
      Caption = 'Agregar Foto'
      ImageIndex = 25
      ShortCut = 16454
      OnExecute = Agregar_FotoExecute
    end
    object Agregar_Terminos_Facturacion: TAction
      Category = 'Acciones Relacionadas'
      Caption = 'Agregar Terminos de Facturaci'#243'n'
      ImageIndex = 23
      OnExecute = Agregar_Terminos_FacturacionExecute
    end
    object Cuentas_Cobrar: TAction
      Category = 'Acciones Relacionadas'
      Caption = 'Cuentas por Cobrar'
      ImageIndex = 37
      OnExecute = Cuentas_CobrarExecute
    end
    object Nota_Credito: TAction
      Category = 'Acciones Relacionadas'
      Caption = 'Nota de Credito'
      ImageIndex = 14
      OnExecute = Nota_CreditoExecute
    end
    object Nota_Debito: TAction
      Category = 'Acciones Relacionadas'
      Caption = 'Nota de Debito'
      ImageIndex = 14
    end
  end
end
