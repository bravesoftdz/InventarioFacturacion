object frmExportar_Facturas: TfrmExportar_Facturas
  Left = 0
  Top = 0
  Caption = 'frmExportar_Facturas'
  ClientHeight = 482
  ClientWidth = 898
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    898
    482)
  PixelsPerInch = 96
  TextHeight = 13
  object grdFacturas: TcxGrid
    Left = 0
    Top = 0
    Width = 898
    Height = 440
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object grdFacturasDBTableView: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = Modulo.dFacturas
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object grdFacturasDBTableViewFecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
      end
      object grdFacturasDBTableViewNumero: TcxGridDBColumn
        DataBinding.FieldName = 'Numero'
      end
      object grdFacturasDBTableViewNCF: TcxGridDBColumn
        DataBinding.FieldName = 'NCF'
      end
      object grdFacturasDBTableViewCliente: TcxGridDBColumn
        DataBinding.FieldName = 'Cliente'
      end
      object grdFacturasDBTableViewNombre_Cliente: TcxGridDBColumn
        Caption = 'Nombre del Cliente'
        DataBinding.FieldName = 'Nombre_Cliente'
      end
      object grdFacturasDBTableViewCondicion: TcxGridDBColumn
        DataBinding.FieldName = 'Condicion'
      end
      object grdFacturasDBTableViewSubTotal: TcxGridDBColumn
        DataBinding.FieldName = 'SubTotal'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object grdFacturasDBTableViewTotal_Descuento_Moneda: TcxGridDBColumn
        Caption = 'Descuentos'
        DataBinding.FieldName = 'Total_Descuento_Moneda'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object grdFacturasDBTableViewMonto: TcxGridDBColumn
        Caption = 'Monto'
        DataBinding.FieldName = 'Monto_Descontado'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object grdFacturasDBTableViewTotal_Impuesto_Moneda: TcxGridDBColumn
        Caption = 'Impuestos'
        DataBinding.FieldName = 'Total_Impuesto_Moneda'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object grdFacturasDBTableViewTotalNeto: TcxGridDBColumn
        Caption = 'Total Neto'
        DataBinding.FieldName = 'TotalNeto'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object grdFacturasDBTableViewPagado: TcxGridDBColumn
        DataBinding.FieldName = 'Pagado'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object grdFacturasDBTableViewPendiente: TcxGridDBColumn
        DataBinding.FieldName = 'Pendiente'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object grdFacturasDBTableViewStatus: TcxGridDBColumn
        DataBinding.FieldName = 'Status'
      end
    end
    object grdFacturasLevel: TcxGridLevel
      GridView = grdFacturasDBTableView
    end
  end
  object Aceptar: TBitBtn
    Left = 725
    Top = 449
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Exportar'
    ModalResult = 1
    TabOrder = 1
    TabStop = False
    OnClick = AceptarClick
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
  object Cancelar: TBitBtn
    Left = 806
    Top = 449
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancelar'
    TabOrder = 2
    TabStop = False
    Kind = bkCancel
  end
  object fileSaveDialog: TSaveDialog
    FileName = 'exportar_faturas'
    Filter = 'Excel|*.xls|Todos|*.*'
    FilterIndex = 0
    Left = 456
    Top = 400
  end
end
