object FCuadre_Caja: TFCuadre_Caja
  Left = 119
  Top = 13
  BorderStyle = bsToolWindow
  Caption = 'Cuadre de Caja'
  ClientHeight = 623
  ClientWidth = 665
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 31
    Top = 7
    Width = 44
    Height = 13
    Caption = 'N'#250'mero'
    FocusControl = Numero_Cuadre
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 260
    Top = 7
    Width = 36
    Height = 13
    Caption = 'Fecha'
    FocusControl = Fecha_Cuadre
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 481
    Top = 7
    Width = 28
    Height = 13
    Caption = 'Hora'
    FocusControl = Hora_Cuadre
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Numero_Cuadre: TDBEdit
    Left = 93
    Top = 4
    Width = 117
    Height = 19
    TabStop = False
    Ctl3D = False
    DataField = 'Numero_Cuadre'
    DataSource = Modulo.dCuadre_Caja
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
  end
  object Fecha_Cuadre: TDBEdit
    Left = 306
    Top = 4
    Width = 117
    Height = 19
    TabStop = False
    Color = 10872826
    Ctl3D = False
    DataField = 'Fecha'
    DataSource = Modulo.dCuadre_Caja
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object Hora_Cuadre: TDBEdit
    Left = 516
    Top = 4
    Width = 117
    Height = 19
    TabStop = False
    Color = 10872826
    Ctl3D = False
    DataField = 'Hora'
    DataSource = Modulo.dCuadre_Caja
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object tp_Cuadre: TAdvSmoothTabPager
    Left = 1
    Top = 25
    Width = 632
    Height = 556
    Fill.Color = 16773091
    Fill.ColorTo = 16768452
    Fill.ColorMirror = 16765357
    Fill.ColorMirrorTo = 16767936
    Fill.GradientType = gtVertical
    Fill.GradientMirrorType = gtVertical
    Fill.BorderColor = 16765357
    Fill.Rounding = 0
    Fill.ShadowOffset = 0
    Fill.Glow = gmNone
    Transparent = True
    ActivePage = tp_Resumen_Cuadre
    TabPosition = tpLeftTop
    TabSettings.StartMargin = 4
    TabSettings.Height = 30
    TabReorder = False
    TabOrder = 3
    object tp_Distribucion_Efectivo: TAdvSmoothTabPage
      Left = 30
      Top = 2
      Width = 601
      Height = 552
      Caption = 'Distribuci'#243'n de Efectivo'
      PageAppearance.Color = 15984090
      PageAppearance.ColorTo = 15785680
      PageAppearance.ColorMirror = 15587784
      PageAppearance.ColorMirrorTo = 16774371
      PageAppearance.GradientType = gtVertical
      PageAppearance.GradientMirrorType = gtVertical
      PageAppearance.BorderColor = 16765357
      PageAppearance.Rounding = 0
      PageAppearance.ShadowOffset = 0
      PageAppearance.Glow = gmNone
      TabAppearance.Appearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Appearance.Font.Color = clWindowText
      TabAppearance.Appearance.Font.Height = -11
      TabAppearance.Appearance.Font.Name = 'Tahoma'
      TabAppearance.Appearance.Font.Style = []
      TabAppearance.Status.Caption = '0'
      TabAppearance.Status.Appearance.Fill.Color = clRed
      TabAppearance.Status.Appearance.Fill.ColorMirror = clNone
      TabAppearance.Status.Appearance.Fill.ColorMirrorTo = clNone
      TabAppearance.Status.Appearance.Fill.GradientType = gtSolid
      TabAppearance.Status.Appearance.Fill.GradientMirrorType = gtSolid
      TabAppearance.Status.Appearance.Fill.BorderColor = clGray
      TabAppearance.Status.Appearance.Fill.Rounding = 0
      TabAppearance.Status.Appearance.Fill.ShadowOffset = 0
      TabAppearance.Status.Appearance.Fill.Glow = gmNone
      TabAppearance.Status.Appearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Status.Appearance.Font.Color = clWhite
      TabAppearance.Status.Appearance.Font.Height = -11
      TabAppearance.Status.Appearance.Font.Name = 'Tahoma'
      TabAppearance.Status.Appearance.Font.Style = []
      TabAppearance.BevelColor = 16765357
      TabAppearance.BevelColorDown = 16640730
      TabAppearance.BevelColorSelected = 16640730
      TabAppearance.BevelColorHot = 16640730
      TabAppearance.BevelColorDisabled = 16640730
      TabAppearance.Color = 16773091
      TabAppearance.ColorDown = 11196927
      TabAppearance.ColorDisabled = 16765357
      object Label2: TLabel
        Left = 44
        Top = 465
        Width = 111
        Height = 20
        Caption = 'Total Efectivo'
        FocusControl = Total_Efectivo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 44
        Top = 493
        Width = 138
        Height = 20
        Caption = 'Total No Efectivo'
        FocusControl = Total_NoEfectivo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Detalles: TwwDBGrid
        Left = 16
        Top = 11
        Width = 568
        Height = 438
        ControlInfoInDataset = False
        Selected.Strings = (
          'Moneda'#9'19'#9'Descripcion'#9'T'
          'Denominacion'#9'11'#9'Denominacion'#9'T'
          'Cantidad'#9'8'#9'Cantidad'#9'F'
          'Total'#9'13'#9'Total'#9'T')
        IniAttributes.Delimiter = ';;'
        TitleColor = 13428432
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = Modulo.dDetalle_Cuadre
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyOptions = [dgEnterToTab]
        ParentFont = False
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        TitleLines = 1
        TitleButtons = False
        UseTFields = False
        OnCalcCellColors = DetallesCalcCellColors
        OnDblClick = DetallesDblClick
        OnEnter = DetallesEnter
        OnExit = DetallesExit
        PadColumnStyle = pcsPlain
        PaintOptions.AlternatingRowColor = 9948159
      end
      object Total_NoEfectivo: TDBEdit
        Left = 199
        Top = 490
        Width = 169
        Height = 27
        TabStop = False
        Ctl3D = False
        DataField = 'Total_NoEfectivo'
        DataSource = Modulo.dCuadre_Caja
        Font.Charset = ANSI_CHARSET
        Font.Color = 45056
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object Total_Efectivo: TDBEdit
        Left = 199
        Top = 462
        Width = 169
        Height = 27
        TabStop = False
        Ctl3D = False
        DataField = 'Total_Efectivo'
        DataSource = Modulo.dCuadre_Caja
        Font.Charset = ANSI_CHARSET
        Font.Color = 45056
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
    end
    object tp_Resumen_Cuadre: TAdvSmoothTabPage
      Left = 30
      Top = 2
      Width = 601
      Height = 552
      Caption = 'Resumen del Cuadre'
      PageAppearance.Color = 15984090
      PageAppearance.ColorTo = 15785680
      PageAppearance.ColorMirror = 15587784
      PageAppearance.ColorMirrorTo = 16774371
      PageAppearance.GradientType = gtVertical
      PageAppearance.GradientMirrorType = gtVertical
      PageAppearance.BorderColor = 16765357
      PageAppearance.Rounding = 0
      PageAppearance.ShadowOffset = 0
      PageAppearance.Glow = gmNone
      TabAppearance.Appearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Appearance.Font.Color = clWindowText
      TabAppearance.Appearance.Font.Height = -11
      TabAppearance.Appearance.Font.Name = 'Tahoma'
      TabAppearance.Appearance.Font.Style = []
      TabAppearance.Status.Caption = '0'
      TabAppearance.Status.Appearance.Fill.Color = clRed
      TabAppearance.Status.Appearance.Fill.ColorMirror = clNone
      TabAppearance.Status.Appearance.Fill.ColorMirrorTo = clNone
      TabAppearance.Status.Appearance.Fill.GradientType = gtSolid
      TabAppearance.Status.Appearance.Fill.GradientMirrorType = gtSolid
      TabAppearance.Status.Appearance.Fill.BorderColor = clGray
      TabAppearance.Status.Appearance.Fill.Rounding = 0
      TabAppearance.Status.Appearance.Fill.ShadowOffset = 0
      TabAppearance.Status.Appearance.Fill.Glow = gmNone
      TabAppearance.Status.Appearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Status.Appearance.Font.Color = clWhite
      TabAppearance.Status.Appearance.Font.Height = -11
      TabAppearance.Status.Appearance.Font.Name = 'Tahoma'
      TabAppearance.Status.Appearance.Font.Style = []
      TabAppearance.BevelColor = 16765357
      TabAppearance.BevelColorDown = 16640730
      TabAppearance.BevelColorSelected = 16640730
      TabAppearance.BevelColorHot = 16640730
      TabAppearance.BevelColorDisabled = 16640730
      TabAppearance.Color = 16773091
      TabAppearance.ColorDown = 11196927
      TabAppearance.ColorDisabled = 16765357
      object Shape2: TShape
        Left = 225
        Top = 2
        Width = 298
        Height = 540
      end
      object Label85: TLabel
        Left = 16
        Top = 114
        Width = 112
        Height = 20
        Caption = 'Total Vendido'
        FocusControl = Total_Vendido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 16
        Top = 215
        Width = 104
        Height = 20
        Caption = 'Total Gastos'
        FocusControl = Retiros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 16
        Top = 10
        Width = 119
        Height = 20
        Caption = 'Fondo C/Chica'
        FocusControl = Fondo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 16
        Top = 382
        Width = 83
        Height = 20
        Caption = 'Diferencia'
        FocusControl = Diferencia
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 16
        Top = 56
        Width = 138
        Height = 20
        Caption = 'Ventas de Contado'
        FocusControl = Total_Vendido_Contado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = 16
        Top = 84
        Width = 128
        Height = 20
        Caption = 'Ventas de Cr'#233'dito'
        FocusControl = Total_Vendido_Credito
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Shape1: TShape
        Left = 233
        Top = 110
        Width = 282
        Height = 1
        Brush.Color = clBlue
        Pen.Color = clBlue
      end
      object Label11: TLabel
        Left = 333
        Top = 39
        Width = 82
        Height = 16
        Caption = 'V E N T A S'
        FocusControl = Total_Vendido_Contado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label12: TLabel
        Left = 16
        Top = 184
        Width = 103
        Height = 20
        Caption = 'Total Cobros'
        FocusControl = Total_Cobros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 16
        Top = 154
        Width = 116
        Height = 20
        Caption = 'Total Recibido'
        FocusControl = Total_Recibido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label16: TLabel
        Left = 16
        Top = 449
        Width = 119
        Height = 20
        Caption = 'Notas de Cr'#233'dito'
        FocusControl = Total_Notas_Credito
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label17: TLabel
        Left = 16
        Top = 477
        Width = 115
        Height = 20
        Caption = 'Notas de Debito'
        FocusControl = Total_Notas_Debito
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label18: TLabel
        Left = 324
        Top = 247
        Width = 100
        Height = 16
        Caption = 'R E S U M E N'
        FocusControl = Total_Vendido_Contado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label19: TLabel
        Left = 16
        Top = 296
        Width = 144
        Height = 20
        Caption = 'Distribuci'#243'n Efectivo'
        FocusControl = Ditribucion_Total_Efectivo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label20: TLabel
        Left = 16
        Top = 324
        Width = 168
        Height = 20
        Caption = 'Distribuci'#243'n No Efectivo'
        FocusControl = Ditribucion_Total_NoEfectivo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Shape3: TShape
        Left = 233
        Top = 350
        Width = 282
        Height = 1
        Brush.Color = clBlue
        Pen.Color = clBlue
      end
      object Shape4: TShape
        Left = 233
        Top = 409
        Width = 282
        Height = 4
        Brush.Color = clWindow
        Pen.Color = clGreen
      end
      object Label21: TLabel
        Left = 16
        Top = 505
        Width = 125
        Height = 20
        Caption = 'Total de Compras'
        FocusControl = Total_Compras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label22: TLabel
        Left = 260
        Top = 432
        Width = 229
        Height = 16
        Caption = 'O T R A S   O P E R A C I O N E S'
        FocusControl = Total_Vendido_Contado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label23: TLabel
        Left = 16
        Top = 354
        Width = 141
        Height = 20
        Caption = 'Total Distribuci'#243'n'
        FocusControl = Total_Distribucion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label24: TLabel
        Left = 16
        Top = 265
        Width = 101
        Height = 20
        Caption = 'C U A D R E'
        FocusControl = Total_Cuadre
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape5: TShape
        Left = 233
        Top = 291
        Width = 282
        Height = 1
        Brush.Color = clBlue
        Pen.Color = clBlue
      end
      object Label25: TLabel
        Left = 508
        Top = 10
        Width = 9
        Height = 20
        Caption = '+'
        FocusControl = Total_Vendido_Contado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label26: TLabel
        Left = 508
        Top = 154
        Width = 9
        Height = 20
        Caption = '+'
        FocusControl = Total_Vendido_Contado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label27: TLabel
        Left = 508
        Top = 184
        Width = 9
        Height = 20
        Caption = '+'
        FocusControl = Total_Vendido_Contado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label28: TLabel
        Left = 510
        Top = 215
        Width = 5
        Height = 20
        Caption = '-'
        FocusControl = Total_Vendido_Contado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Tipo_Diferencia: TDBText
        Left = 16
        Top = 401
        Width = 177
        Height = 26
        DataField = 'Tipo_Diferencia'
        DataSource = Modulo.dCuadre_Caja
        Font.Charset = ANSI_CHARSET
        Font.Color = 4227327
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Total_Vendido: TDBEdit
        Left = 243
        Top = 112
        Width = 263
        Height = 27
        TabStop = False
        Ctl3D = False
        DataField = 'Total_Vendido'
        DataSource = Modulo.dCuadre_Caja
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object Retiros: TDBEdit
        Left = 243
        Top = 212
        Width = 263
        Height = 27
        TabStop = False
        Ctl3D = False
        DataField = 'Total_Retiros'
        DataSource = Modulo.dCuadre_Caja
        Font.Charset = ANSI_CHARSET
        Font.Color = 4227327
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object Fondo: TDBEdit
        Left = 243
        Top = 8
        Width = 263
        Height = 27
        TabStop = False
        Ctl3D = False
        DataField = 'Fondo_Caja'
        DataSource = Modulo.dCuadre_Caja
        Font.Charset = ANSI_CHARSET
        Font.Color = 10485760
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object Diferencia: TDBEdit
        Left = 243
        Top = 381
        Width = 263
        Height = 27
        TabStop = False
        Ctl3D = False
        DataField = 'Diferencia'
        DataSource = Modulo.dCuadre_Caja
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object Total_Vendido_Contado: TDBEdit
        Left = 243
        Top = 54
        Width = 263
        Height = 27
        TabStop = False
        Ctl3D = False
        DataField = 'Total_Vendido_Contado'
        DataSource = Modulo.dCuadre_Caja
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object Total_Vendido_Credito: TDBEdit
        Left = 243
        Top = 82
        Width = 263
        Height = 27
        TabStop = False
        Ctl3D = False
        DataField = 'Total_Vendido_Credito'
        DataSource = Modulo.dCuadre_Caja
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object Total_Cobros: TDBEdit
        Left = 243
        Top = 181
        Width = 263
        Height = 27
        TabStop = False
        Ctl3D = False
        DataField = 'Total_Cobros'
        DataSource = Modulo.dCuadre_Caja
        Font.Charset = ANSI_CHARSET
        Font.Color = 45056
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
      object Total_Recibido: TDBEdit
        Left = 243
        Top = 151
        Width = 263
        Height = 27
        TabStop = False
        Ctl3D = False
        DataField = 'Total_Recibido'
        DataSource = Modulo.dCuadre_Caja
        Font.Charset = ANSI_CHARSET
        Font.Color = 45056
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
      object Total_Notas_Credito: TDBEdit
        Left = 243
        Top = 447
        Width = 263
        Height = 27
        TabStop = False
        Ctl3D = False
        DataField = 'Total_Notas_Credito'
        DataSource = Modulo.dCuadre_Caja
        Font.Charset = ANSI_CHARSET
        Font.Color = 4227327
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object Total_Notas_Debito: TDBEdit
        Left = 243
        Top = 475
        Width = 263
        Height = 27
        TabStop = False
        Ctl3D = False
        DataField = 'Total_Notas_Debito'
        DataSource = Modulo.dCuadre_Caja
        Font.Charset = ANSI_CHARSET
        Font.Color = 4227327
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
      end
      object Ditribucion_Total_Efectivo: TDBEdit
        Left = 243
        Top = 294
        Width = 263
        Height = 27
        TabStop = False
        Ctl3D = False
        DataField = 'Total_Efectivo'
        DataSource = Modulo.dCuadre_Caja
        Font.Charset = ANSI_CHARSET
        Font.Color = 45056
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
      end
      object Ditribucion_Total_NoEfectivo: TDBEdit
        Left = 243
        Top = 322
        Width = 263
        Height = 27
        TabStop = False
        Ctl3D = False
        DataField = 'Total_NoEfectivo'
        DataSource = Modulo.dCuadre_Caja
        Font.Charset = ANSI_CHARSET
        Font.Color = 45056
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 11
      end
      object Total_Compras: TDBEdit
        Left = 243
        Top = 503
        Width = 263
        Height = 27
        TabStop = False
        Ctl3D = False
        DataField = 'Total_Compras'
        DataSource = Modulo.dCuadre_Caja
        Font.Charset = ANSI_CHARSET
        Font.Color = 4227327
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 12
      end
      object Total_Distribucion: TDBEdit
        Left = 243
        Top = 352
        Width = 263
        Height = 27
        TabStop = False
        Ctl3D = False
        DataField = 'Total_Distribucion'
        DataSource = Modulo.dCuadre_Caja
        Font.Charset = ANSI_CHARSET
        Font.Color = 45056
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
      end
      object Total_Cuadre: TDBEdit
        Left = 243
        Top = 263
        Width = 263
        Height = 27
        TabStop = False
        Ctl3D = False
        DataField = 'Total_Cuadre'
        DataSource = Modulo.dCuadre_Caja
        Font.Charset = ANSI_CHARSET
        Font.Color = 45056
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 14
      end
    end
  end
  object bt_Siguiente: TsuiButton
    Left = 158
    Top = 588
    Width = 120
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Siguiente'
    AutoSize = False
    ParentFont = False
    UIStyle = DeepBlue
    Action = Siguiente
    TabOrder = 4
    Transparent = True
    ModalResult = 0
    FocusedRectMargin = 2
    Glyph.Data = {
      36090000424D3609000000000000360000002800000018000000180000000100
      2000000000000009000000000000000000000000000000000000FFFFFF00FFFF
      FF00E1E3E900E0E1E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00499BF9003890F500D5EAFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00005FFF00006BFC000C76FD00F4F9FA00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000064FD000071FF00006EFF00197DF600D6E9FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000064FD000376FB000073FE00006DFD001E83FC00D7EAFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000062FD000274FE000173FA000072FF00006FFE00147BF900F2FEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000066FE000471F7000274FD000172FA000173FD000069FF00167CFB00E2F1
      FD00F8FCFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000062FC000077FE000773F8000172FE000275FB000072FF000073FD002389
      F800E6F4FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000066FC000273FD000171FE000074FF000374FC000072FC00026FFE00006F
      FB00127AFF00FFFFFA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000063FF000072FF000073FF000072FF000072FF000072FF000175FD000072
      FD00006EFF001581F800E7F6FF00FFFEFB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000063FF000073FF000073FF000073FF000073FF000072FF000074FD000272
      FC000073FE00006DFF00298AFD00E9FAFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000063FF000073FF000073FF000073FF000073FF000072FF000273FD000476
      FC00016FFD000771FF00006BFB001480FB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000063FF000073FF000073FF000073FF000073FF000072FF000274FD000073
      FD000677FD000074FC000072FF00005CFA00E0F8FD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000063FF000073FF000072FF000072FF000072FF000073FF000571FC000372
      FF000670FD000074FD00006AFC004299FF00FFFFFC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000063FF000073FF000072FF000072FF000073FF000072FF000076FD000074
      FD000071FB00006BFE00439BFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000062FF000173FE000374FB000174FC000073FD000572FC000071FE000074
      FD000067FA005AA7FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000064FD000471FB000074FD000174FD000270FE000573FD000375FC00006B
      FB004E96FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000065FA000174FD000175FF00006FF9000177FF000676FA000068FF004798
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000065FD000072FC000171FC000175FF000172F8000066FC0057A3FE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000064FC000371FE000075FE000273F900006AFE003C95FE00FFFFFA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000062FD000475FB000574F9000068FC003F98FE00F3F8FC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000062FF000373FD000067FE0057A2FA00FFFFFC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00005CFC000067FD003A91FB00FFFEFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084BBFE0076B2FF00E9F5FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    ResHandle = 0
  end
  object bt_Anterior: TsuiButton
    Left = 32
    Top = 588
    Width = 120
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Anterior'
    AutoSize = False
    Visible = False
    ParentFont = False
    UIStyle = DeepBlue
    Action = Anterior
    TabOrder = 5
    Transparent = True
    ModalResult = 0
    FocusedRectMargin = 2
    Glyph.Data = {
      36090000424D3609000000000000360000002800000018000000180000000100
      2000000000000009000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CDD0DB00FEF8F400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00A0A1E3002427C3009798DE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009FA1E4000000C0000000BC002C2BCB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ABA7
      EE000000B7000100BF000000BA002D2BCF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009F9DE8000000
      BB000000C0000000C2000000BC002B2DC300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A7A4EC000000C0000000
      B9000102BC000300BF000000BF002E30C600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AEAAE8000000BC000000BD000600
      C4000100BC000100BC000100BC000100BC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00A6A3E6000100BC000000C0000003C1000000
      C2000100BC000100BC000100BC000100BC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00ABAAE6000000C2000000BC000100BC000100BC000100
      BC000100BC000100BC000100BC000100BC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B4B3E8000000B9000100B8000302C4000100BC000100BC000100
      BC000100BC000100BC000100BC000100BC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A9A8E5000100C2000200C3000201BC000200BE000100BC000100BC000100
      BC000100BC000100BC000100BC000100BC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BABB
      ED000000B5000000BE000100BE000004BD000002C2000100BC000100BC000100
      BC000100BC000100BC000100BC000100BC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005C68
      D6000000BB000400C0000301BF000000BE000100BC000100BC000100BC000100
      BC000100BC000100BC000100BC000100BC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D5D4
      F2001916C2000000C1000200C0000002BD000300C1000100BC000100BC000100
      BC000100BC000100BC000100BC000100BC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D4D1F1000C0EC1000000BE000600C1000004B9000100BC000100BC000100
      BC000100BC000100BC000100BC000100BC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F5E9F500060BBC000000BB000401C3000100BC000100BC000100
      BC000100BC000100BC000100BC000100BC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C7C6F3001C18C7000000BB000202C4000600BF000000
      C1000100BC000100BC000100BC000100BC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CECDEF000E0EC1000000BE000100C1000001
      B5000100BC000100BC000100BC000100BC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDEDF800080ABE000000BE000201
      C4000100BC000100BC000100BC000100BC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6ED001A15C6000000
      BD000100C2000200C3000000B5002E28CB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C5C5F100080A
      BF000000BA000500C1000000BC00282BCA00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1E6
      F5000505C5000000B8000000BA002D2BCD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C5C5EF001614C6000000BD002E28CB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CBC8F400524ED200C2C7F000FFFFFF00FFFFFF00}
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    ResHandle = 0
  end
  object bt_Finalizar: TsuiButton
    Left = 389
    Top = 588
    Width = 120
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Finalizar'
    AutoSize = False
    Visible = False
    ParentFont = False
    UIStyle = DeepBlue
    Action = Finalizar
    TabOrder = 6
    Transparent = True
    ModalResult = 0
    FocusedRectMargin = 2
    Glyph.Data = {
      36090000424D3609000000000000360000002800000018000000180000000100
      2000000000000009000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFC
      FF00E2E2E200B6CCB600A4C5A5009CBB9D0095AB9600AAB5AA00CACBCA00E6E2
      E600F5F5F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007BB7
      7D004FAF520028A82D001EB0230022BA29001FAE26002B962E0039783B00819C
      8100DBD4DB00EEEDEE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ABC9AB002A9A2C001CA3
      210026B02C002DB433002FB5350031B9370036CA3D003BDE42002DC43400126E
      160055855600C8C8C800EFEEEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006BB26D0016A41C002DB9330028B2
      2E0021AF280022AF28002DB233002FB335002FB0340031B938003DDB45003ADC
      42000C6F0F004F815000D1CFD100F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0067B269001BB2220030B7360029B130006DCA
      7200B2E3B400A9E0AC0031B437002DB3330030B436002FB1350031B938003FE0
      470030C037000B670D008FA68F00EBE7EB00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007DBB7F0025BC2C0030B737002AB1300036B53C00FEFE
      FE00FFFFFF00FFFFFF007FD0820023AF2A002FB335002FB335002FB1340035C4
      3C0040E448001B8B2000286E2A00E1D8E100F9F8F900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B4D7B5002BB830002FB935002EB2340024AF2A00C5EAC600FFFF
      FF00FFFFFF00FFFFFF00D7F0D70036B63C002CB2330030B436002FB335002FB2
      34003EDF470030BD36000E651000A5B4A600F5F3F500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF003FAE43002DC133002FB3350023AF2A0072CC7600FFFFFF00F8FC
      F800D6F0D700FFFFFF00FFFFFF006FCA730026B02D002FB335002FB335002FB2
      350039CF400039D94200116B1300789C7900F1ECF100FFFFFF00FFFFFF00FFFF
      FF00B8D9B8001CB6230032BC39002AB1300041BA4700DEF3DF00FFFFFF00ABE1
      AE0039B83F00FBFDFA00FFFFFF00C2E9C4002CB333002EB3340030B336002FB2
      350035C23B0041E94A00106C1300598B5900EEE8EE00FFFFFF00FFFFFF00FFFF
      FF0038A63A0034CE3C002DB1330026B02C00AFE1B100FFFFFF00F8FCF80036B5
      3B0018AB1E00A9DFAA00FFFFFF00FFFFFF0053C0580029B12F0030B436002FB2
      350034BF3A0043EB4C00127115004B844C00F0E9F000FFFFFF00FFFFFF00FFFF
      FF002DB6330034C33A0028AF2E0063C66700FFFFFF00FFFFFF0095D898001FAE
      26002AB2310045BB4A00FFFFFF00FFFFFF00C0E7C2001BAC21002FB335002FB2
      350034BF3A0041E74900106E130052885400F5EFF500FFFFFF00FFFFFF00A3CD
      A30033CA3B002FB7360025AF2B0088D38C00FFFFFF00EFF9F00037B63C002CB2
      32002EB3340029B12F00BDE7BF00FFFFFF00FFFFFF0044BC49002AB130002FB2
      350034C23C003DE044000F6A12006A966B00F9F4F900FFFFFF00FFFFFF007FBE
      800032D13A002FB135002EB3340026B02D00CFEED10082D1850027B12C002FB3
      35002FB4350028B02E005DC46200FDFEFD00FFFFFF00ADE2B00025AF2B002EB2
      340038CB3F0033CA3A000F6812008DA98D00FFFCFF00FFFFFF00FFFFFF006CB9
      6E0030D137002EB034002FB335002CB333003FB944003EB944002DB2330030B4
      360030B436002DB3330031B53700C8EBC900FFFFFF00E8F6E8004ABD51002AB1
      30003DD9450027A82D000E621000CBD1CB00FFFEFF00FFFFFF00FFFFFF0067B4
      690030D237002FB034002FB335002FB335002DB233002DB3330030B4360030B4
      360030B436002FB3350025B02B0079CE7D00FFFFFF00FFFFFF0091D694002BB3
      31003CDD440019851C002A702C00FDF4FC00FFFFFF00FFFFFF00FFFFFF0079BB
      7A0031D0390030B636002FB3350030B4360030B4360030B4360030B4360030B4
      360030B4360030B436002EB3340020AE2700E5F5E600FFFFFF0087D08B0033CC
      39002EBD3500035F05009FB69F00FFFFFF00FFFFFF00FFFFFF00FFFFFF009DCC
      9E0031C8380033C03A002FB2350030B4360030B4360030B4360030B4360030B4
      360030B4360030B4360030B4360024AF2A0081D18600F3FAF40044BE4A0038DB
      4000128015002E712F00E9EAE900FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFED
      DE0025AC2A0039D241002EB134002FB3350030B4360030B4360030B4360030B4
      360030B4360030B4360030B436002DB3330035B63C008AD38D0034D33B0020A8
      26000E5E1000A4BDA500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0054AC55002BC8330033BF3A002FB2350030B3360030B4360030B4360030B4
      360030B4360030B4360030B436002FB335002DB133002FC8350028B52D000660
      080079A47A00FFFEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DCEDDD001AA21E0036D13E0030B636002FB235002FB335002FB3350030B4
      360030B4360030B335002FB3350030B3360037C93D0027B32C0002680400588F
      5B00FCFAFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009ACD9B0017A41C0036D33D0033BA390030B336002FB3350030B3
      350030B4360030B4360032B7380035C83D00199E1D000766090060946100F6F6
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00ABD2AC0030A3350021BD27002DC2340031BC370031BA
      38002FB6350028B22E00199F1D0007790A0029732A00A4C0A600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DBEBDC0083BF83003CA4400015981A00078D
      0B0002810600157C1700488D49008CB38D00DDE7DD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    ResHandle = 0
  end
  object bt_Cancelar: TsuiButton
    Left = 513
    Top = 588
    Width = 120
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = '&Cancelar'
    AutoSize = False
    ParentFont = False
    UIStyle = DeepBlue
    Action = Cancelar
    TabOrder = 7
    Transparent = True
    ModalResult = 0
    FocusedRectMargin = 2
    Glyph.Data = {
      36090000424D3609000000000000360000002800000018000000180000000100
      2000000000000009000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEF800E8E4
      DF009BA1C7006677C0005C6CBD00505CB5005550A300736EA800B2B0BC00DCDC
      D500F0F0EE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFD00DAD5E0007276B7001C36
      B4001B48C7001855D6002C6DE100438AF1005B9DF6004D70D0002731A6005A55
      A000BCBCC100E3E3DF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00ABA7CE00384EBD000954E0000368
      F800006BFE00006AFD000068FB000062FB000466F3004993F700669DED00384C
      B700443D9A00B3B3BE00EAEAE700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF009C98CB002050CF000B6AF600016BFC000369
      F9000369F9000368F9000065F800207AF90088B8FC000062F800418CF50068A2
      F1003543B0004B479C00CECECB00F6F6F500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF009E9ED3001751D7000A74FE000068FA000368F9000469
      F9000469F9000268F8000063F800A6CAFC00FFFFFF00A3C8FC00005EF9005498
      F5006193E60021249E008381AD00E7E7E100FDFDFD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CDC9E600335AD1000E72FA000066F9000368F9000469F9000469
      F9000368F9000063F8003887FA00F6F9FF00FFFFFF003888FA000061F9001774
      F8006FAAF5004056BC0038359A00D7D7D000F9F9F800FFFFFF00FFFFFF00FFFF
      FF00FFFEFD00576CCE00176FF300076BFA000060F8000065F8000368F9000469
      F9000267F8000064F800A7CAFC00FFFFFF00B0D0FD00005DF8000267F9000368
      F800549AF7005780DA002A279800A8A7BD00F5F5F100FFFFFF00FFFFFF00FFFF
      FF00BFC0E7000C4DDD00086FFB00EBF3FE00A9CBFC001C76F9000062F8000368
      F9000062F8003889FA00FFFFFF00FFFFFF000E6FF8000065F8000368F9000166
      F9003686F6006AA2F10028279A007D7BB000EFEFE800FFFFFF00FFFFFF00FFFF
      FF004653CA001B7BF900569AFB00FFFFFF00FFFFFF00DEECFE004993FA00005B
      F800005CF800D0E2FD00FFFFFF0089B8FB000063F8000268F9000369F9000066
      F900257CF60071AFFA0028299C006664AA00EDEDE500FFFFFF00FFFFFF00F4EE
      F7001F53DB001D7BF9000469F90088B8FB00FFFFFF00FFFFFF00FEFDFF007FB2
      FA00589BFB00FFFFFF00E6F0FE00287EF9000064F8000368F9000469F9000066
      F900217AF7006EAFFB002A2D9F00605DA800EFEFE600FFFFFF00FFFFFF00A39E
      DF002F7AF0000A6DF9000066F900005DF8003788FA00D1E2FE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF006EA8FB00005BF8000368F9000469F9000469F9000066
      F900227BF7006BA8F600272599006765AC00F4F4EC00FFFFFF00FFFFFF007D7D
      D8003882F1000068F9000368F9000368F9000061F800106FF90094C0FC00FFFF
      FE00FFFFFF00FFFFFF0085B6FC000065F8000064F8000368F8000368F9000066
      F9002A81F7006596E900272699007C7AB200F8F9F200FFFFFF00FFFFFF005B68
      D9003B83F1000066FA000368F9000469F9000368F9000063F8000168F900F5F8
      FE00FFFFFF00FFFFFF00FFFFFF00C9DFFD001271F900005FF8000066F8000067
      F9003E8FF9005477D500262497009594BC00FFFFFA00FFFFFF00FFFFFF005662
      D8003C84F0000066FA000368F9000469F9000368F900005DF80085B6FB00FFFF
      FF00C5DCFD00ADCFFC00FFFFFF00FFFFFF00FFFFFF0061A0FA00076AF8000168
      F8005EA1F7003D50B9002B279600D4D4DA00FFFFFE00FFFFFF00FFFFFF00696E
      D8003A82F100026AF9000368F9000469F9000065F8001372F900FBFCFF00FFFF
      FE004E95FA00005DF8006BA6FB00F2F6FF00FFFFFF00FFFFFF008BB9FC001977
      F9005F8FE600282CA3004F4CA100FEFEF400FFFFFF00FFFFFF00FFFFFF008E8B
      DE00307CF1001373F8000167F9000268F800005FF80093BEFC00FFFFFF00C0D9
      FD000569F8000065F8000063F8001E78FA00CFE2FD00FFFFFF0063A2FC004A95
      F7004361CA0016108F00AFAFC900FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDD9
      F3001A50E0002E86F9000066F9000063F8003A89FA00F7FAFE00FFFFFF003386
      F9000062F8000469F9000368F8000064F800005FF8004992FC003C8DF9004E80
      E400191396005856A500F7F8F300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF003544D0003186F6000A6DF9000065F900A6CAFD00FFFFFF00B2D1FD00005C
      F8000368F9000469F9000469F9000368F9000066F9001073FA004C8BF100232B
      AF00332E9700C2C2D800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C0BFEE000A3CD7002884FA001674F900FFFFFF00FFFFFE001F79F9000064
      F8000469F9000469F9000368F9000067F9000B72FB004B8CF2002237BF001E18
      93009694C300FFFFFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008088E1002257E000217EF9003587FB0064A3FB000065F8000268
      F9000469F9000268F900056CFA001779FB003E76E9001321B600201A94009594
      C400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F9F7FC006F77DB001241D800217CF7001478FA00066DFA000069
      FA00016BFB000670FE00166AF3001E4DDE000F13AA00302C9B009F9ECB00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00ADB0E9001122C3000833D5001860EB001461
      ED001053E700082ED4000B16B6000F0E9900635FAF00E4E3EE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C2E600706CC500524D
      BC00524CB4006E69B600A7A3CC00F4F3F600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    ResHandle = 0
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
          end>
      end
      item
      end
      item
        Items.CaptionOptions = coAll
        Items = <
          item
            Caption = '-'
          end>
      end
      item
      end
      item
      end
      item
        Items = <
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
            Caption = '&Opciones'
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = Configuracion_Cuadre
            ImageIndex = 3
          end
          item
            Action = Cancelar
            ImageIndex = 26
          end>
      end>
    Images = Modulo.SystemImages
    Left = 191
    Top = 239
    StyleName = 'XP Style'
    object Configuracion_Cuadre: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Configuraci'#243'n Cuadre'
      ImageIndex = 51
      OnExecute = Configuracion_CuadreExecute
    end
    object Cancelar: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = '&Cancelar'
      ImageIndex = 26
      OnExecute = CancelarExecute
    end
    object Siguiente: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Siguiente'
      ImageIndex = 64
      OnExecute = SiguienteExecute
    end
    object Finalizar: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Finalizar'
      ImageIndex = 16
      OnExecute = FinalizarExecute
    end
    object Anterior: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Anterior'
      ImageIndex = 63
      OnExecute = AnteriorExecute
    end
    object Imprimir: TAction
      Category = 'Acciones y Desplazamiento'
      Caption = 'Imprimir'
      ImageIndex = 5
      OnExecute = ImprimirExecute
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
    object Menu_Configuracion: TMenuItem
      Action = Configuracion_Cuadre
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object Menu_Finalizar: TMenuItem
      Action = Finalizar
    end
    object Menu_Cancelar: TMenuItem
      Action = Cancelar
    end
  end
end
