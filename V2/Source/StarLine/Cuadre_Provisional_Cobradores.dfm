object FCuadre_Cobradores: TFCuadre_Cobradores
  Left = 9
  Top = -5
  BorderStyle = bsToolWindow
  Caption = 'Cuadre Provisional - Cobradores'
  ClientHeight = 744
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = Opciones_Miscelaneas
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 8
    Top = 403
    Width = 100
    Height = 19
    Caption = 'Comentarios :'
    FocusControl = Efectivo_Entregado
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Panel_Cobradores: TAdvPageControl
    Left = 5
    Top = 3
    Width = 300
    Height = 363
    ActivePage = Pg_Cobradores
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
    ParentShowHint = False
    ShowHint = True
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
    TabOrder = 0
    TabStop = False
    TabWidth = 150
    object Pg_Cobradores: TAdvTabSheet
      Caption = 'Datos del Cobrador'
      Color = clBtnFace
      ColorTo = clNone
      ImageIndex = 47
      TabGradientDirection = gdHorizontal
      TabColor = clBlack
      TabColorTo = clOlive
      object Recuadro_Foto: TShape
        Left = 177
        Top = 258
        Width = 79
        Height = 74
      end
      object FOTO: TImage
        Left = 179
        Top = 260
        Width = 75
        Height = 70
        Cursor = crHandPoint
        Stretch = True
      end
      object Bt_Buscar_Cobrador: TsuiButton
        Left = 3
        Top = 285
        Width = 115
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = 'Buscar Cobrador'
        AutoSize = False
        ParentFont = False
        UIStyle = DeepBlue
        Action = Buscar_Cobrador
        TabOrder = 0
        Transparent = True
        ModalResult = 0
        FocusedRectMargin = 2
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF002476970024769700FFFFFF00FFFFFF00E08A
          1600DA720500DA720500DA720500DA720500DA720500DA720500CD680D00CD68
          0D00CD680D00CD680D00CD680D00CD680D00CD680D00CD680D00FFFFFF00FFFF
          FF008DB9C900247697005DCBED006AEAFC0024769700FFFFFF00FFFFFF00DA72
          0500FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00EFEDE700EFEDE700EFED
          E700EFEDE700EFEDE700EFEDE700F4E9D500F1B07300CD680D00FFFFFF005D9B
          B000298CAF0033D6FB006AEAFC002E98B8008DB9C900FFFFFF00FFFFFF00DA72
          0500F4E9D500F4E9D500F4E9D500EEDDC900EEDDC900EEDDC900F0D3B200F0D3
          B200F3CA9400F0BC8900F3CA9400F3CA9400F0D3B200CD680D00FFFFFF002E98
          B80025C9F80033D6FB002E98B8005D9BB000FFFFFF00FFFFFF00FFFFFF00DA72
          0500F4E9D500F4E9D500F4E9D500F4E9D500EEDDC900EEDDC900F0D3B200F1B0
          7300EEA85F00EEA85F00EEA85F00EEA85F00F0BC8900746644000486FC001BBA
          EF0025C9F800298CAF005D9BB000FFFFFF00FFFFFF00FFFFFF00FFFFFF00DA72
          0500EFEDE700F4E9D500F4E9D500F4E9D500EEDDC900D3AA750074522C008159
          300074522C0074522C008E643800AB8841006C528400166486000486FC001CAB
          D400247697008DB9C900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DA72
          0500EFEDE700D0BCAB00B1987700B1987700B374340074522C00D1AB8C00D1AB
          8C00D7CAB300D7CAB300D1AB8C008E6438000B169500166486000486FC004E8E
          A900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E08A
          1600EFEDE700EFEDE700EFEDE700D7CAB30074522C00D1AB8C00D1AB8C00FCFE
          FC00FCFEFC00EFEDE700EFEDE700F4E9D5005752690006058F000486FC00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E08A
          1600EFEDE700EFEDE700EFEDE7009A775300AA895D00EEDDC900F4E9D500F4E9
          D500F4E9D500EFEDE700EFEDE700EFEDE700F4E9D50081593000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E08A
          1600FCFEFC00D7CAB300AA895D0074522C00D0B89000D0B89000D0B89000D7CA
          B300D7CAB300D7CAB300EEDDC900EFEDE700F4E9D500AA895D00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E08A
          1600FCFEFC00FCFEFC00D7CAB3009A775300F0D3B200EEDDC900F4E9D500F4E9
          D500F4E9D500F4E9D500F4E9D500F4E9D500F4E9D500D1AB8C00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E08A
          1600FCFEFC00FCFEFC00D7CAB3009A775300F0D3B200EEDDC900F4E9D500F4E9
          D500F4E9D500F4E9D500F4E9D500F4E9D500F4E9D500D3AA7500FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E08A
          1600FCFEFC00D7CAB300B198770081593000D0B89000D0B89000D0B89000EEDD
          C900F4E9D500EEDDC900EEDDC900EEDDC900F4E9D500AA895D00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E08A
          1600FCFEFC00FCFEFC00FCFEFC009A775300D3AA7500F0D3B200F0D3B200FCFE
          FC00FCFEFC00D7CAB300D0BCAB00D7CAB300F0D3B20081593000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E08A
          1600FCFEFC00FCFEFC00FCFEFC00EEDDC90081593000D0B89000F0D3B200FCFE
          FC00FCFEFC00F0BC8900EEA85F00F1B073008E6438008E643800FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E08A
          1600FCFEFC00D7CAB300B1987700B19877009A77530081593000D0B89000D0B8
          9000ED9B5500F1B07300E28D5000815930008E643800FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E08A
          1600FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00F4E9D50074522C007466
          440074522C0074522C008E643800AB884100FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E996
          1C00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
          FC00ED9B5500ED9B5500EEA85F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E996
          1C00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
          FC00F1B07300EEA85F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E198
          3900E9961C00E9961C00E08A1600E08A1600E08A1600E08A1600E08A1600E08A
          1600EEA85F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        Layout = blGlyphLeft
        Spacing = 4
        MouseContinuouslyDownInterval = 100
        ResHandle = 0
      end
      object Datos_Cobrador: TwwDataInspector
        Left = 0
        Top = -1
        Width = 292
        Height = 254
        DisableThemes = False
        BorderStyle = bsNone
        Ctl3D = False
        CaptionColor = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ScrollBars = ssNone
        TabOrder = 1
        DataSource = Modulo.dEmpleados
        Items = <
          item
            DataSource = Modulo.dEmpleados
            DataField = 'NombreCompleto'
            Caption = 'Nombre Completo'
            WordWrap = False
          end
          item
            DataSource = Modulo.dEmpleados
            DataField = 'Cedula_Rnc_Pasaporte'
            Caption = 'C'#233'dula/Rnc/Registro'
            WordWrap = False
          end
          item
            DataSource = Modulo.dEmpleados
            DataField = 'Direccion'
            Caption = 'Direcci'#243'n'
            WordWrap = False
          end
          item
            DataSource = Modulo.dEmpleados
            DataField = 'Sector'
            Caption = 'Sector'
            WordWrap = False
          end
          item
            DataSource = Modulo.dEmpleados
            DataField = 'Ciudad'
            Caption = 'Ciudad'
            WordWrap = False
          end
          item
            DataSource = Modulo.dEmpleados
            DataField = 'Pais'
            Caption = 'Pa'#237's'
            WordWrap = False
          end
          item
            DataSource = Modulo.dEmpleados
            DataField = 'Numero_Telefono_1'
            Caption = 'Tel'#233'fono Principal'
            WordWrap = False
          end
          item
            DataSource = Modulo.dEmpleados
            DataField = 'Numero_Telefono_2'
            Caption = 'Tel'#233'fono Secundario'
            WordWrap = False
          end
          item
            DataSource = Modulo.dEmpleados
            DataField = 'Tipo_Cliente'
            Caption = 'Tipo de Cliente'
            WordWrap = False
          end
          item
            DataSource = Modulo.dEmpleados
            DataField = 'mail'
            Caption = 'mail'
            WordWrap = False
          end
          item
            DataSource = Modulo.dEmpleados
            DataField = 'TerminosFacturacion'
            Caption = 'Terminos de Facturaci'#243'n'
            WordWrap = False
          end
          item
            DataSource = Modulo.dEmpleados
            DataField = 'Condicion_Cliente'
            Caption = 'Condici'#243'n'
            WordWrap = False
          end
          item
            DataSource = Modulo.dEmpleados
            DataField = 'Descuento_Asignado'
            Caption = 'Descuento Asignado'
            WordWrap = False
          end
          item
            DataSource = Modulo.dEmpleados
            DataField = 'Ultima_Factura'
            Caption = #218'ltima Factura'
            WordWrap = False
          end
          item
            DataSource = Modulo.dEmpleados
            DataField = 'Fecha_Ultima_Factura'
            Caption = 'Fecha de '#218'ltima Factura'
            WordWrap = False
          end
          item
            DataSource = Modulo.dEmpleados
            DataField = 'Limite_Credito'
            Caption = 'L'#237'mite de Cr'#233'dito'
            WordWrap = False
          end
          item
            DataSource = Modulo.dEmpleados
            DataField = 'Balance_Actual'
            Caption = 'Balance Actual'
            WordWrap = False
          end
          item
            DataSource = Modulo.dEmpleados
            DataField = 'Status'
            Caption = 'Estatus'
            WordWrap = False
          end>
        CaptionWidth = 129
        Options = [ovColumnResize, ovRowResize, ovEnterToTab, ovCenterCaptionVert]
        PaintOptions.AlternatingRowRegions = [arrDataColumns, arrActiveDataColumn]
        PaintOptions.AlternatingRowColor = 14217212
        CaptionFont.Charset = ANSI_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -9
        CaptionFont.Name = 'Tahoma'
        CaptionFont.Style = [fsBold]
        LineStyleCaption = ovNoLines
        LineStyleData = ovNoLines
        ReadOnly = True
        CaptionIndent = 3
      end
    end
  end
  object Panel_Despacho: TAdvPageControl
    Left = 306
    Top = 2
    Width = 483
    Height = 683
    ActivePage = Pg_Despacho
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
    ParentShowHint = False
    ShowHint = True
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
    TabWidth = 150
    object Pg_Despacho: TAdvTabSheet
      Caption = 'Detalles Despacho'
      Color = clBtnFace
      ColorTo = clNone
      ImageIndex = 58
      TabGradientDirection = gdHorizontal
      TabColor = clBlack
      TabColorTo = clOlive
      object Label1: TLabel
        Left = 5
        Top = 7
        Width = 64
        Height = 19
        Caption = 'Numero'
        FocusControl = Numero
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 5
        Top = 36
        Width = 40
        Height = 19
        Caption = 'Fecha'
        FocusControl = Fecha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 300
        Top = 36
        Width = 34
        Height = 19
        Caption = 'Hora'
        FocusControl = Hora_Apertura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 5
        Top = 92
        Width = 126
        Height = 14
        Caption = 'Recibos Desde el No.'
        FocusControl = Recibos_Desde
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 5
        Top = 113
        Width = 73
        Height = 14
        Caption = 'Hasta el No.'
        FocusControl = Recibos_Hasta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 5
        Top = 226
        Width = 181
        Height = 14
        Caption = 'Monto de Efectivo Entregado'
        FocusControl = Efectivo_Entregado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 5
        Top = 71
        Width = 210
        Height = 14
        Caption = 'Cantidad de Tarjetas Despachadas'
        FocusControl = Cantidad_Tarjetas_Despachadas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 5
        Top = 134
        Width = 94
        Height = 14
        Caption = 'Tarjetas Saldadas'
        FocusControl = Contratos_Saldados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 5
        Top = 180
        Width = 101
        Height = 14
        Caption = 'Tarjetas Devueltas'
        FocusControl = Devoluciones
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 5
        Top = 201
        Width = 95
        Height = 14
        Caption = 'Tarjetas Mudadas'
        FocusControl = Mudados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 5
        Top = 247
        Width = 84
        Height = 14
        Caption = 'Monto Cobrado'
        FocusControl = Monto_Cobrado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 5
        Top = 155
        Width = 101
        Height = 14
        Caption = 'Tarjetas Abonadas'
        FocusControl = Contratos_Abonados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 5
        Top = 265
        Width = 84
        Height = 14
        Caption = 'Monto Recibido'
        FocusControl = Monto_Recibido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 5
        Top = 596
        Width = 95
        Height = 14
        Caption = 'Total de Gastos'
        FocusControl = Total_Gastos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 5
        Top = 288
        Width = 56
        Height = 14
        Caption = 'Prestamos'
        FocusControl = Prestamos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 5
        Top = 574
        Width = 67
        Height = 14
        Caption = 'Total Dieta'
        FocusControl = Total_Dieta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 5
        Top = 617
        Width = 60
        Height = 14
        Caption = 'Diferencia'
        FocusControl = Diferencia
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object bt_Anadir_Gastos: TSpeedButton
        Left = 453
        Top = 331
        Width = 20
        Height = 20
        Hint = 'Agregar Nuevo Gasto'
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
        OnClick = bt_Anadir_GastosClick
      end
      object Label19: TLabel
        Left = 5
        Top = 309
        Width = 172
        Height = 14
        Caption = 'Cantidad de Facturas de Gastos'
        FocusControl = Cantidad_Facturas_Gastos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Numero: TDBEdit
        Left = 76
        Top = 4
        Width = 171
        Height = 25
        TabStop = False
        Ctl3D = False
        DataField = 'Numero'
        DataSource = Modulo.dCuadre_Cobrador
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object Fecha: TDBEdit
        Left = 76
        Top = 33
        Width = 171
        Height = 25
        TabStop = False
        Ctl3D = False
        DataField = 'Fecha'
        DataSource = Modulo.dCuadre_Cobrador
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object Hora_Apertura: TDBEdit
        Left = 344
        Top = 33
        Width = 129
        Height = 25
        TabStop = False
        Ctl3D = False
        DataField = 'Hora_Apertura'
        DataSource = Modulo.dCuadre_Cobrador
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object Recibos_Desde: TDBEdit
        Left = 300
        Top = 89
        Width = 173
        Height = 20
        TabStop = False
        Ctl3D = False
        DataField = 'Recibos_Desde'
        DataSource = Modulo.dCuadre_Cobrador
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object Recibos_Hasta: TDBEdit
        Left = 300
        Top = 110
        Width = 173
        Height = 20
        TabStop = False
        Ctl3D = False
        DataField = 'Recibos_Hasta'
        DataSource = Modulo.dCuadre_Cobrador
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
      object Efectivo_Entregado: TDBEdit
        Left = 300
        Top = 222
        Width = 173
        Height = 20
        TabStop = False
        Ctl3D = False
        DataField = 'Efectivo_Entregado'
        DataSource = Modulo.dCuadre_Cobrador
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 11
      end
      object Cantidad_Tarjetas_Despachadas: TDBEdit
        Left = 300
        Top = 68
        Width = 173
        Height = 20
        TabStop = False
        Ctl3D = False
        DataField = 'Cantidad_Tarjetas_Despachadas'
        DataSource = Modulo.dCuadre_Cobrador
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object Status: TDBEdit
        Left = 344
        Top = 4
        Width = 129
        Height = 25
        TabStop = False
        Ctl3D = False
        DataField = 'Status'
        DataSource = Modulo.dCuadre_Cobrador
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object Contratos_Saldados: TDBEdit
        Left = 300
        Top = 134
        Width = 134
        Height = 20
        Ctl3D = False
        DataField = 'Contratos_Saldados'
        DataSource = Modulo.dCuadre_Cobrador
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
      end
      object Devoluciones: TDBEdit
        Left = 300
        Top = 176
        Width = 134
        Height = 20
        Ctl3D = False
        DataField = 'Devoluciones'
        DataSource = Modulo.dCuadre_Cobrador
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
      end
      object Mudados: TDBEdit
        Left = 300
        Top = 197
        Width = 134
        Height = 20
        Ctl3D = False
        DataField = 'Mudados'
        DataSource = Modulo.dCuadre_Cobrador
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
      end
      object Monto_Cobrado: TDBEdit
        Left = 300
        Top = 243
        Width = 173
        Height = 20
        Ctl3D = False
        DataField = 'Monto_Cobrado'
        DataSource = Modulo.dCuadre_Cobrador
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 12
      end
      object Contratos_Abonados: TDBEdit
        Left = 300
        Top = 155
        Width = 134
        Height = 20
        Ctl3D = False
        DataField = 'Contratos_Abonados'
        DataSource = Modulo.dCuadre_Cobrador
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
      end
      object Monto_Recibido: TDBEdit
        Left = 300
        Top = 264
        Width = 173
        Height = 20
        Ctl3D = False
        DataField = 'Monto_Recibido'
        DataSource = Modulo.dCuadre_Cobrador
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 13
      end
      object Detalles_Gastos: TwwDBGrid
        Left = 5
        Top = 331
        Width = 438
        Height = 108
        Selected.Strings = (
          'Renglon'#9'35'#9'Gasto'#9'T'#9'Detalles de Gastos'
          'Monto'#9'13'#9'Monto'#9'F'#9'Detalles de Gastos'
          'Comentario'#9'30'#9'Comentario'#9'F'#9'Detalles de Gastos')
        IniAttributes.Enabled = True
        IniAttributes.FileName = 'Detalles_Cuadres_Cobrador.Grd'
        IniAttributes.SectionName = 'Gastos'
        IniAttributes.Delimiter = ';;'
        TitleColor = 12615680
        FixedCols = 0
        ShowHorzScrollBar = True
        Ctl3D = False
        DataSource = Modulo.dDetalle_Gastos_Cuadre
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyOptions = [dgEnterToTab]
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 16
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clYellow
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
        UseTFields = False
        OnEnter = Detalles_DietasEnter
        OnExit = Detalles_DietasExit
        PadColumnStyle = pcsPlain
        PaintOptions.AlternatingRowColor = 15792383
        object Facturas_ClienteIButton: TwwIButton
          Left = 0
          Top = 0
          Width = 13
          Height = 22
          AllowAllUp = True
        end
      end
      object Detalles_Dietas: TwwDBGrid
        Left = 5
        Top = 444
        Width = 438
        Height = 121
        Selected.Strings = (
          'Nombre'#9'48'#9'Nombre'#9'T'#9'Prestamos y Dietas Autorizadas'
          'Monto'#9'15'#9'Dieta'#9'F'#9'Prestamos y Dietas Autorizadas'
          'Monto_Prestamo'#9'15'#9'Pr'#233'stamo'#9'F'#9'Prestamos y Dietas Autorizadas')
        IniAttributes.Enabled = True
        IniAttributes.FileName = 'Detalles_Cuadres_Cobrador.Grd'
        IniAttributes.SectionName = 'Dietas'
        IniAttributes.Delimiter = ';;'
        TitleColor = 12615680
        FixedCols = 0
        ShowHorzScrollBar = True
        Ctl3D = False
        DataSource = Modulo.dDetalles_Dieta_Cuadre
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyOptions = [dgEnterToTab]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 17
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clYellow
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
        UseTFields = False
        OnEnter = Detalles_DietasEnter
        OnExit = Detalles_DietasExit
        PadColumnStyle = pcsPlain
        PaintOptions.AlternatingRowColor = 15792383
        object wwIButton1: TwwIButton
          Left = 0
          Top = 0
          Width = 13
          Height = 22
          AllowAllUp = True
        end
      end
      object Total_Gastos: TDBEdit
        Left = 300
        Top = 592
        Width = 173
        Height = 20
        TabStop = False
        Ctl3D = False
        DataField = 'Total_Gastos'
        DataSource = Modulo.dCuadre_Cobrador
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 19
      end
      object Prestamos: TDBEdit
        Left = 300
        Top = 285
        Width = 173
        Height = 20
        Ctl3D = False
        DataField = 'Prestamos'
        DataSource = Modulo.dCuadre_Cobrador
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 14
      end
      object Total_Dieta: TDBEdit
        Left = 300
        Top = 571
        Width = 173
        Height = 20
        TabStop = False
        Ctl3D = False
        DataField = 'Total_Dieta'
        DataSource = Modulo.dCuadre_Cobrador
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 18
      end
      object Diferencia: TDBEdit
        Left = 300
        Top = 613
        Width = 173
        Height = 20
        TabStop = False
        Ctl3D = False
        DataField = 'Diferencia'
        DataSource = Modulo.dCuadre_Cobrador
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 20
        Visible = False
      end
      object Tipo_Diferencia: TDBEdit
        Left = 300
        Top = 634
        Width = 173
        Height = 20
        TabStop = False
        Ctl3D = False
        DataField = 'Tipo_Diferencia'
        DataSource = Modulo.dCuadre_Cobrador
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 21
        Visible = False
      end
      object Cantidad_Facturas_Gastos: TDBEdit
        Left = 300
        Top = 306
        Width = 173
        Height = 20
        Ctl3D = False
        DataField = 'Cantidad_Facturas_Gastos'
        DataSource = Modulo.dCuadre_Cobrador
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 15
      end
    end
  end
  object chk_Vista_Previa: TCheckBox
    Left = 707
    Top = 685
    Width = 87
    Height = 17
    Caption = 'Vista Previa'
    TabOrder = 2
  end
  object Comentarios: TwwDBRichEdit
    Left = 5
    Top = 423
    Width = 300
    Height = 231
    AutoURLDetect = True
    BorderWidth = 1
    Ctl3D = False
    DataField = 'Comentarios'
    DataSource = Modulo.dCuadre_Cobrador
    ParentCtl3D = False
    PrintJobName = 'Comentarios a Factura'
    TabOrder = 3
    WantNavigationKeys = True
    EditorCaption = 'Comentarios'
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
      640000007B5C727466315C616E73695C64656666307B5C666F6E7474626C7B5C
      66305C666E696C204D532053616E732053657269663B7D7D0D0A5C766965776B
      696E64345C7563315C706172645C6C616E67373137385C66305C667331365C70
      61720D0A7D0D0A00}
  end
  object Botones: TActionToolBar
    Left = 0
    Top = 708
    Width = 794
    Height = 36
    ActionManager = Opciones
    Align = alBottom
    Caption = 'Botones'
    ColorMap = Modulo.ColorConfig
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    EdgeInner = esLowered
    PersistentHotKeys = True
    Spacing = 0
  end
  object Opciones: TActionManager
    ActionBars = <
      item
        Items = <
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
            Action = Buscar
            ImageIndex = 2
            ShortCut = 27
          end
          item
            Caption = '-'
          end
          item
            Action = Imprimir
            ImageIndex = 5
            ShortCut = 16464
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
        Items = <
          item
            Action = Nuevo
            Caption = '&Nuevo'
            ImageIndex = 1
            ShortCut = 16462
          end
          item
            Action = Guardar
            Caption = '&Guargar'
            ImageIndex = 0
            ShortCut = 16455
          end
          item
            Action = Buscar
            Caption = '&Buscar'
            ImageIndex = 2
            ShortCut = 27
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
      end>
    Images = Modulo.SystemImages
    Left = 200
    Top = 48
    StyleName = 'XP Style'
    object Salir: TAction
      Category = 'Opciones'
      Caption = 'Salir'
      Hint = 'Salir de Esta Pantalla'
      ImageIndex = 10
      ShortCut = 16467
      OnExecute = SalirExecute
    end
    object Buscar_Cobrador: TAction
      Category = 'Opciones'
      Caption = 'Buscar Cobrador'
      Hint = 'Buscar Cliente'
      ImageIndex = 2
      ShortCut = 16450
      OnExecute = Buscar_CobradorExecute
    end
    object Nuevo: TAction
      Category = 'Opciones'
      Caption = 'Nuevo'
      Hint = 'Aplicar un Pago al Pr'#233'stamo seleccionado'
      ImageIndex = 1
      ShortCut = 16462
      OnExecute = NuevoExecute
    end
    object Imprimir: TAction
      Category = 'Opciones'
      Caption = 'Imprimir'
      Hint = 'Imprime el Comprobante de Nota de Cr'#233'dito'
      ImageIndex = 5
      ShortCut = 16464
      OnExecute = ImprimirExecute
    end
    object Guardar: TAction
      Category = 'Opciones'
      Caption = 'Guargar'
      Hint = 'Aplicar el Valor Acreditado'
      ImageIndex = 0
      ShortCut = 16455
      OnExecute = GuardarExecute
    end
    object Buscar: TAction
      Category = 'Opciones'
      Caption = 'Buscar'
      ImageIndex = 2
      ShortCut = 27
      OnExecute = BuscarExecute
    end
    object Configuracion_Recibo_Despacho: TAction
      Category = 'Opciones'
      Caption = 'Configuraci'#243'n del Recibo Despacho'
      ImageIndex = 55
      ShortCut = 49219
      OnExecute = Configuracion_Recibo_DespachoExecute
    end
    object Agregar_Gastos: TAction
      Category = 'Gastos'
      OnExecute = Agregar_GastosExecute
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
    Left = 200
    Top = 104
    object Pop_Imprimir_Factura: TMenuItem
      Caption = 'Imprimir Factura'
      ImageIndex = 5
      ShortCut = 16454
    end
    object Pop_Configuracion_Facturas: TMenuItem
      Caption = 'Configuracion de Factura'
      ImageIndex = 55
      ShortCut = 49222
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Pop_Configuracion_Nota_Credito: TMenuItem
      Action = Configuracion_Recibo_Despacho
    end
  end
  object Opciones_Recibos: TsuiPopupMenu
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
    Left = 200
    Top = 168
    object AnularPago1: TMenuItem
      Caption = 'Anular Pago'
      ImageIndex = 32
    end
  end
end
