object FMainConfig: TFMainConfig
  Left = 55
  Top = 16
  BorderStyle = bsToolWindow
  Caption = 'Configuracion General'
  ClientHeight = 607
  ClientWidth = 970
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDblClick = FormDblClick
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 11
    Top = 10
    Width = 136
    Height = 13
    Caption = 'Nombre del Servidor Remoto'
  end
  object Label2: TLabel
    Left = 58
    Top = 135
    Width = 89
    Height = 13
    Caption = 'Nombre Compa'#241#237'a'
  end
  object Label3: TLabel
    Left = 102
    Top = 152
    Width = 45
    Height = 13
    Caption = 'Direcci'#243'n'
  end
  object Label4: TLabel
    Left = 114
    Top = 179
    Width = 33
    Height = 13
    Caption = 'Ciudad'
  end
  object Label5: TLabel
    Left = 125
    Top = 198
    Width = 22
    Height = 13
    Caption = 'Pa'#237's'
  end
  object Label6: TLabel
    Left = 63
    Top = 216
    Width = 85
    Height = 13
    Caption = 'Telefono Principal'
  end
  object Label7: TLabel
    Left = 48
    Top = 235
    Width = 99
    Height = 13
    Caption = 'Telefono Secundario'
  end
  object Label8: TLabel
    Left = 124
    Top = 254
    Width = 23
    Height = 13
    Caption = 'RNC'
  end
  object Label14: TLabel
    Left = 305
    Top = 254
    Width = 30
    Height = 13
    Caption = 'Status'
  end
  object Label15: TLabel
    Left = 71
    Top = 96
    Width = 76
    Height = 13
    Caption = 'Logo Compa'#241#237'a'
  end
  object SpeedButton2: TSpeedButton
    Left = 491
    Top = 91
    Width = 23
    Height = 18
    Caption = '...'
    Flat = True
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 525
    Top = 67
    Width = 174
    Height = 22
    Hint = 'Color Personalizado'
    Caption = 'Color de las Pantallas'
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00559999999995
      5555557777777775F5555559999999505555555777777757FFF5555555555550
      0955555555555FF7775F55555555995501955555555577557F75555555555555
      01995555555555557F5755555555555501905555555555557F57555555555555
      0F905555555555557FF75555555555500005555555555557777555555555550F
      F05555555555557F57F5555555555008F05555555555F775F755555555570000
      05555555555775577555555555700007555555555F755F775555555570000755
      55555555775F77555555555700075555555555F75F7755555555570007555555
      5555577F77555555555500075555555555557777555555555555}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton3Click
  end
  object Label9: TLabel
    Left = 26
    Top = 30
    Width = 121
    Height = 13
    Caption = 'URL del Servidor Remoto'
  end
  object Label16: TLabel
    Left = 22
    Top = 50
    Width = 125
    Height = 13
    Caption = 'Nombre del Servidor Local'
  end
  object Label17: TLabel
    Left = 37
    Top = 70
    Width = 110
    Height = 13
    Caption = 'URL del Servidor Local'
  end
  object Label18: TLabel
    Left = 41
    Top = 294
    Width = 106
    Height = 13
    Caption = 'Nombre de la Terminal'
  end
  object Label13: TLabel
    Left = 42
    Top = 314
    Width = 105
    Height = 13
    Caption = 'Decimales Cantidades'
  end
  object Label25: TLabel
    Left = 79
    Top = 114
    Width = 68
    Height = 13
    Caption = 'Imagen Fondo'
  end
  object Label26: TLabel
    Left = 560
    Top = 114
    Width = 31
    Height = 13
    Caption = 'Ancho'
  end
  object SpeedButton1: TSpeedButton
    Left = 491
    Top = 111
    Width = 23
    Height = 19
    Caption = '...'
    Flat = True
    OnClick = SpeedButton1Click
  end
  object Label27: TLabel
    Left = 268
    Top = 314
    Width = 108
    Height = 13
    Caption = 'Decimales Porcentajes'
  end
  object Label28: TLabel
    Left = 500
    Top = 442
    Width = 91
    Height = 13
    Caption = 'Condici'#243'n Facturas'
  end
  object Label29: TLabel
    Left = 511
    Top = 461
    Width = 80
    Height = 13
    Caption = 'Tipo de Facturas'
  end
  object Label30: TLabel
    Left = 517
    Top = 420
    Width = 74
    Height = 13
    Caption = 'Termino Credito'
  end
  object Label31: TLabel
    Left = 76
    Top = 275
    Width = 71
    Height = 13
    Caption = 'Mascara Princ.'
  end
  object SpeedButton4: TSpeedButton
    Left = 492
    Top = 272
    Width = 23
    Height = 19
    Caption = '...'
    Flat = True
    OnClick = SpeedButton4Click
  end
  object SpeedButton5: TSpeedButton
    Left = 493
    Top = 297
    Width = 23
    Height = 19
    Caption = '...'
    Flat = True
    OnClick = SpeedButton5Click
  end
  object bt_Monitoreo: TSpeedButton
    Left = 492
    Top = 572
    Width = 23
    Height = 19
    Caption = '...'
    Flat = True
    Visible = False
    OnClick = bt_MonitoreoClick
  end
  object Label32: TLabel
    Left = 560
    Top = 135
    Width = 27
    Height = 13
    Caption = 'Altura'
  end
  object Label33: TLabel
    Left = 560
    Top = 156
    Width = 28
    Height = 13
    Caption = 'Pos Y'
  end
  object Label34: TLabel
    Left = 500
    Top = 483
    Width = 91
    Height = 13
    Caption = 'Monto Cobro Diario'
  end
  object Label36: TLabel
    Left = 727
    Top = 385
    Width = 31
    Height = 13
    Caption = 'Puerto'
  end
  object Label37: TLabel
    Left = 727
    Top = 412
    Width = 41
    Height = 13
    Caption = 'Tiempo :'
  end
  object Edit1: TEdit
    Left = 154
    Top = 6
    Width = 333
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    Text = 'Direccion del Servidor Remoto'
  end
  object BitBtn1: TBitBtn
    Left = 530
    Top = 578
    Width = 80
    Height = 25
    Caption = 'Aceptar'
    ModalResult = 1
    TabOrder = 18
    OnClick = BitBtn1Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 616
    Top = 578
    Width = 84
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 19
    OnClick = BitBtn2Click
    Kind = bkCancel
  end
  object Edit2: TEdit
    Left = 154
    Top = 132
    Width = 333
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 5
    Text = 'Nombre Compa'#241#237'a'
  end
  object Edit3: TEdit
    Left = 154
    Top = 152
    Width = 333
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 6
    Text = 'Direcci'#243'n'
  end
  object Edit4: TEdit
    Left = 154
    Top = 172
    Width = 333
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 7
    Text = 'Ciudad'
  end
  object Edit5: TEdit
    Left = 154
    Top = 192
    Width = 333
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 8
    Text = 'Pa'#237's'
  end
  object Edit6: TEdit
    Left = 154
    Top = 212
    Width = 333
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 9
    Text = 'Telefono Principal'
  end
  object Edit7: TEdit
    Left = 154
    Top = 232
    Width = 333
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 10
    Text = 'Telefono Secundario'
  end
  object Edit8: TEdit
    Left = 154
    Top = 252
    Width = 148
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 11
    Text = 'RNC'
  end
  object Edit13: TEdit
    Left = 339
    Top = 252
    Width = 148
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 12
    Text = 'STATUS'
  end
  object Edit14: TEdit
    Left = 153
    Top = 91
    Width = 333
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
    Text = 'Direcci'#243'n del Archio de Imagen Logo'
  end
  object GroupBox1: TGroupBox
    Left = 154
    Top = 441
    Width = 302
    Height = 124
    Caption = ' Configuraci'#243'n General'
    TabOrder = 16
    object Label10: TLabel
      Left = 29
      Top = 18
      Width = 94
      Height = 13
      Caption = 'Simbolo de Moneda'
    end
    object Label11: TLabel
      Left = 37
      Top = 38
      Width = 86
      Height = 13
      Caption = 'Formato de Fecha'
    end
    object Label12: TLabel
      Left = 44
      Top = 58
      Width = 79
      Height = 13
      Caption = 'Formato de Hora'
    end
    object Label19: TLabel
      Left = 7
      Top = 78
      Width = 116
      Height = 13
      Caption = 'Formato de Fecha Largo'
    end
    object Label20: TLabel
      Left = 14
      Top = 98
      Width = 109
      Height = 13
      Caption = 'Formato de Hora Largo'
    end
    object Moneda: TEdit
      Left = 128
      Top = 14
      Width = 167
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      Text = 'Moneda'
    end
    object FormFecha: TEdit
      Left = 128
      Top = 34
      Width = 167
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      Text = 'FormFecha'
    end
    object FormHora: TEdit
      Left = 128
      Top = 54
      Width = 167
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      Text = 'FormHora'
    end
    object FormFechaLargo: TEdit
      Left = 127
      Top = 74
      Width = 167
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      Text = 'FormFechaLargo'
    end
    object FormHoraLargo: TEdit
      Left = 127
      Top = 94
      Width = 167
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      Text = 'FormHoraLargo'
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 525
    Top = 5
    Width = 174
    Height = 60
    Caption = 'Alineaci'#243'n del Texto en Reportes'
    Items.Strings = (
      'A la Izquierda'
      'A la Derecha'
      'Al Centro')
    TabOrder = 17
  end
  object Edit10: TEdit
    Left = 154
    Top = 26
    Width = 333
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    Text = 'URL del Servidor Remoto'
  end
  object Edit11: TEdit
    Left = 154
    Top = 46
    Width = 333
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    Text = 'Nombre del Servidor Local'
  end
  object Edit12: TEdit
    Left = 154
    Top = 66
    Width = 333
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    Text = 'URL del Servidor Local'
  end
  object Edit15: TEdit
    Left = 154
    Top = 292
    Width = 170
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 13
    Text = 'TERMINAL'
  end
  object Edit9: TEdit
    Left = 154
    Top = 312
    Width = 106
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 14
    Text = 'DECIMALES CANT.'
  end
  object GroupBox2: TGroupBox
    Left = 154
    Top = 332
    Width = 257
    Height = 105
    TabOrder = 15
    object Label21: TLabel
      Left = 11
      Top = 12
      Width = 83
      Height = 13
      Caption = 'Nombre Impuesto'
    end
    object Label22: TLabel
      Left = 11
      Top = 32
      Width = 54
      Height = 13
      Caption = '% Impuesto'
    end
    object Label23: TLabel
      Left = 11
      Top = 52
      Width = 51
      Height = 13
      Caption = '% Contrato'
    end
    object Label24: TLabel
      Left = 11
      Top = 80
      Width = 95
      Height = 13
      Caption = 'Cuenta Desembolso'
    end
    object NombreImpuesto: TEdit
      Left = 109
      Top = 9
      Width = 138
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      Text = 'Nombre del Impuesto'
    end
    object Impuesto: TEdit
      Left = 109
      Top = 29
      Width = 61
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      Text = '% Impuesto'
    end
    object Contrato: TEdit
      Left = 109
      Top = 49
      Width = 61
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      Text = '% Contrato'
    end
    object Desembolso: TEdit
      Left = 109
      Top = 77
      Width = 138
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      Text = 'Cuenta Desembolso'
    end
  end
  object LogoVisible: TCheckBox
    Left = 597
    Top = 95
    Width = 97
    Height = 17
    Caption = 'Logo Visible'
    TabOrder = 20
  end
  object Edit16: TEdit
    Left = 153
    Top = 111
    Width = 333
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 21
    Text = 'Direcci'#243'n del Archio de Imagen Logo'
  end
  object Edit17: TEdit
    Left = 597
    Top = 111
    Width = 61
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 22
    Text = 'Ancho'
  end
  object Ajustar: TCheckBox
    Left = 522
    Top = 95
    Width = 63
    Height = 17
    Caption = 'Ajustar'
    TabOrder = 23
  end
  object Edit18: TEdit
    Left = 381
    Top = 312
    Width = 106
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 24
    Text = 'DECIMALES %.'
  end
  object Tipo_Factura: TwwCheckBox
    Left = 598
    Top = 461
    Width = 97
    Height = 17
    DisableThemes = False
    AlwaysTransparent = False
    DynamicCaption = True
    ValueChecked = 'Detalle'
    ValueUnchecked = 'Por Mayor'
    DisplayValueChecked = 'Detalle'
    DisplayValueUnchecked = 'Por Mayor'
    NullAndBlankState = cbUnchecked
    Caption = 'Detalle'
    Checked = True
    Ctl3D = False
    ParentCtl3D = False
    State = cbChecked
    TabOrder = 25
  end
  object Condicion_Facturas: TComboBox
    Left = 595
    Top = 438
    Width = 105
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 26
    Text = 'Contado'
    Items.Strings = (
      'Contado'
      'Cr'#233'dito')
  end
  object OpenCash: TwwCheckBox
    Left = 525
    Top = 213
    Width = 109
    Height = 17
    DisableThemes = False
    AlwaysTransparent = False
    DynamicCaption = True
    ValueChecked = 'Detalle'
    ValueUnchecked = 'Por Mayor'
    DisplayValueChecked = 'Aperturar Caja'
    DisplayValueUnchecked = 'No Aperturar Caja'
    NullAndBlankState = cbUnchecked
    Caption = 'Aperturar Caja'
    Checked = True
    Ctl3D = False
    ParentCtl3D = False
    State = cbChecked
    TabOrder = 27
  end
  object Comentario_Credito: TMemo
    Left = 468
    Top = 502
    Width = 232
    Height = 65
    Ctl3D = False
    Lines.Strings = (
      'ESCRIBA AQUI EL COMENTARIO DE '
      'CR'#201'DITO')
    ParentCtl3D = False
    TabOrder = 28
  end
  object AutoPago: TwwCheckBox
    Left = 525
    Top = 194
    Width = 109
    Height = 17
    DisableThemes = False
    AlwaysTransparent = False
    DynamicCaption = True
    ValueChecked = 'Detalle'
    ValueUnchecked = 'Por Mayor'
    DisplayValueChecked = 'Pago Automatico'
    DisplayValueUnchecked = 'Pago Manual'
    NullAndBlankState = cbUnchecked
    Caption = 'Pago Automatico'
    Checked = True
    Ctl3D = False
    ParentCtl3D = False
    State = cbChecked
    TabOrder = 29
  end
  object Edit19: TEdit
    Left = 595
    Top = 417
    Width = 105
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 30
    Text = 'TERMINO'
  end
  object Mascara: TEdit
    Left = 154
    Top = 272
    Width = 333
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 31
    Text = 'Direcci'#243'n del Archio de Imagen Logo'
  end
  object RestrictInventory: TwwCheckBox
    Left = 525
    Top = 233
    Width = 109
    Height = 17
    DisableThemes = False
    AlwaysTransparent = False
    DynamicCaption = True
    ValueChecked = 'Detalle'
    ValueUnchecked = 'Por Mayor'
    DisplayValueChecked = 'Inv. Restringido'
    DisplayValueUnchecked = 'Inv. Abierto'
    NullAndBlankState = cbUnchecked
    Caption = 'Inv. Restringido'
    Checked = True
    Ctl3D = False
    ParentCtl3D = False
    State = cbChecked
    TabOrder = 32
  end
  object FileName: TEdit
    Left = 331
    Top = 292
    Width = 155
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 33
    Text = 'Telefono Principal'
  end
  object Monitoreo: TEdit
    Left = 153
    Top = 571
    Width = 333
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 34
    Text = 'Telefono Principal'
    Visible = False
  end
  object Edit20: TEdit
    Left = 597
    Top = 132
    Width = 61
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 35
    Text = 'Altura'
  end
  object Edit21: TEdit
    Left = 597
    Top = 153
    Width = 61
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 36
    Text = 'pos y'
  end
  object main_menu: TwwCheckBox
    Left = 525
    Top = 252
    Width = 109
    Height = 17
    DisableThemes = False
    AlwaysTransparent = False
    DynamicCaption = True
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    DisplayValueChecked = 'Mostrar Menu'
    DisplayValueUnchecked = 'Ocultar Menu'
    NullAndBlankState = cbUnchecked
    Caption = 'Mostrar Menu'
    Checked = True
    Ctl3D = False
    ParentCtl3D = False
    State = cbChecked
    TabOrder = 37
  end
  object pDiarios: TEdit
    Left = 595
    Top = 480
    Width = 105
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 38
    Text = 'DIARIO'
  end
  object Benficio: TwwCheckBox
    Left = 525
    Top = 272
    Width = 109
    Height = 17
    DisableThemes = False
    AlwaysTransparent = False
    DynamicCaption = True
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    DisplayValueChecked = 'Calcular Beneficio'
    DisplayValueUnchecked = 'Beneficio Manual'
    NullAndBlankState = cbUnchecked
    Caption = 'Calcular Beneficio'
    Checked = True
    Ctl3D = False
    ParentCtl3D = False
    State = cbChecked
    TabOrder = 39
  end
  object Mostrario: TwwCheckBox
    Left = 525
    Top = 292
    Width = 109
    Height = 17
    DisableThemes = False
    AlwaysTransparent = False
    DynamicCaption = True
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    DisplayValueChecked = 'Mostrar Valores '
    DisplayValueUnchecked = 'No Mostrar Valores '
    NullAndBlankState = cbUnchecked
    Caption = 'Mostrar Valores '
    Checked = True
    Ctl3D = False
    ParentCtl3D = False
    State = cbChecked
    TabOrder = 40
  end
  object Precios: TRadioGroup
    Left = 513
    Top = 315
    Width = 188
    Height = 102
    Caption = '] Precio Por Defecto ['
    ItemIndex = 0
    Items.Strings = (
      'P-1'
      'P-1'
      'P-1'
      'P-1'
      'P-1')
    TabOrder = 41
  end
  object Alertas_Existencia: TwwCheckBox
    Left = 525
    Top = 175
    Width = 156
    Height = 17
    DisableThemes = False
    AlwaysTransparent = False
    DynamicCaption = True
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    DisplayValueChecked = 'Mostrar Alertas Existencia'
    DisplayValueUnchecked = 'Ocultar Alertas Existencia'
    NullAndBlankState = cbUnchecked
    Caption = 'Mostrar Alertas Existencia'
    Checked = True
    Ctl3D = False
    ParentCtl3D = False
    State = cbChecked
    TabOrder = 42
  end
  object gb1: TGroupBox
    Left = 711
    Top = 3
    Width = 249
    Height = 308
    Caption = 'Conexion Reloj'
    TabOrder = 43
    object lbl1: TLabel
      Left = 16
      Top = 20
      Width = 51
      Height = 13
      Caption = 'Device ID:'
    end
    object lbl2: TLabel
      Left = 16
      Top = 51
      Width = 53
      Height = 13
      Caption = 'Comm Key:'
    end
    object lbl3: TLabel
      Left = 32
      Top = 140
      Width = 54
      Height = 13
      Caption = 'Comm Port:'
    end
    object lbl4: TLabel
      Left = 32
      Top = 170
      Width = 46
      Height = 13
      Caption = 'Baudrate:'
    end
    object lbl5: TLabel
      Left = 32
      Top = 227
      Width = 54
      Height = 13
      Caption = 'IP Address:'
    end
    object lbl6: TLabel
      Left = 32
      Top = 258
      Width = 22
      Height = 13
      Caption = 'Port:'
    end
    object Label35: TLabel
      Left = 16
      Top = 285
      Width = 26
      Height = 13
      Caption = 'Timer'
    end
    object edtDN: TEdit
      Left = 88
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
      Text = '1'
    end
    object edtPwd: TEdit
      Left = 88
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 1
      Text = '0'
    end
    object rbUSB: TRadioButton
      Left = 16
      Top = 91
      Width = 113
      Height = 17
      Caption = 'USB '
      TabOrder = 2
    end
    object rbComm: TRadioButton
      Left = 16
      Top = 115
      Width = 113
      Height = 17
      Caption = 'Serial'
      TabOrder = 3
    end
    object rbtCP: TRadioButton
      Left = 16
      Top = 199
      Width = 113
      Height = 17
      Caption = 'Network '
      Checked = True
      TabOrder = 4
      TabStop = True
    end
    object cbbComm: TComboBox
      Left = 96
      Top = 135
      Width = 107
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 5
      Text = 'COM1'
      Items.Strings = (
        'COM1'
        'COM2'
        'COM3'
        'COM4'
        'COM5'
        'COM6'
        'COM7'
        'COM8')
    end
    object cbbBaudrate: TComboBox
      Left = 96
      Top = 167
      Width = 107
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 6
      Text = '9600'
      Items.Strings = (
        '9600'
        '19200'
        '38400'
        '57600'
        '115200')
    end
    object edtIPAddress: TEdit
      Left = 96
      Top = 223
      Width = 106
      Height = 21
      TabOrder = 7
      Text = '10.0.0.225'
    end
    object edtPort: TEdit
      Left = 96
      Top = 255
      Width = 106
      Height = 21
      TabOrder = 8
      Text = '5005'
    end
    object edtTimer: TEdit
      Left = 88
      Top = 282
      Width = 121
      Height = 21
      TabOrder = 9
      Text = '5000'
    end
  end
  object Ejecutar_Sonido: TwwCheckBox
    Left = 727
    Top = 339
    Width = 109
    Height = 17
    DisableThemes = False
    AlwaysTransparent = False
    DynamicCaption = True
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    DisplayValueChecked = 'Sonido'
    DisplayValueUnchecked = 'Sonido'
    NullAndBlankState = cbUnchecked
    Caption = 'Sonido'
    Checked = True
    Ctl3D = False
    ParentCtl3D = False
    State = cbChecked
    TabOrder = 44
  end
  object Abrir_Puerta: TwwCheckBox
    Left = 727
    Top = 362
    Width = 109
    Height = 17
    DisableThemes = False
    AlwaysTransparent = False
    DynamicCaption = True
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    DisplayValueChecked = 'Abrir Puerta'
    DisplayValueUnchecked = 'Abrir Puerta'
    NullAndBlankState = cbUnchecked
    Caption = 'Abrir Puerta'
    Checked = True
    Ctl3D = False
    ParentCtl3D = False
    State = cbChecked
    TabOrder = 45
  end
  object Puerto_Puerta: TComboBox
    Left = 775
    Top = 382
    Width = 107
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 46
    Text = 'COM1'
    Items.Strings = (
      'COM1'
      'COM2'
      'COM3'
      'COM4'
      'COM5'
      'COM6'
      'COM7'
      'COM8'
      'LPT1'
      'LPT2'
      'LPT3')
  end
  object tiempo_Puerta: TEdit
    Left = 776
    Top = 409
    Width = 106
    Height = 21
    TabOrder = 47
    Text = '5000'
  end
  object abrir_noregistrado: TwwCheckBox
    Left = 727
    Top = 431
    Width = 134
    Height = 17
    DisableThemes = False
    AlwaysTransparent = False
    DynamicCaption = True
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    DisplayValueChecked = 'Abrir No Registrado'
    DisplayValueUnchecked = 'Abrir No Registrado'
    NullAndBlankState = cbUnchecked
    Caption = 'Abrir No Registrado'
    Checked = True
    Ctl3D = False
    ParentCtl3D = False
    State = cbChecked
    TabOrder = 48
  end
  object AbrirLogo: TOpenDialog
    Filter = 
      'Windows Bmp|*.Bmp|JPged|*.Jpg|Windows Metafiles|*.Wmf|Todos los ' +
      'Archivos|*.*'
    Left = 13
    Top = 176
  end
  object WindowsColor: TColorDialog
    Left = 46
    Top = 176
  end
  object SkinOpen: TOpenPictureDialog
    Left = 16
    Top = 224
  end
end
