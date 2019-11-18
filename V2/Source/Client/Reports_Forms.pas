unit Reports_Forms;

interface

uses
  SysUtils, Classes, Graphics, ppCtrls, ppBarCod, ppPrnabl, ppClass,
  ppCache, ppBands, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,
  ppVar, ppModule, ppStrtch, ppSubRpt, ppChrt, ppChrtDP,
  ppParameter, myChkBox, ppMemo, RegKeys, ppDesignLayer;

type
  TReportsAndForms = class(TDataModule)
    PipeVencimientos: TppDBPipeline;
    PipeVencimientosppField1: TppField;
    PipeVencimientosppField2: TppField;
    PipeVencimientosppField3: TppField;
    PipeVencimientosppField4: TppField;
    PipeVencimientosppField5: TppField;
    Labels: TppReport;
    PipeProductos: TppDBPipeline;
    Empty: TppReport;
    ppDetailBand2: TppDetailBand;
    ppImage1: TppImage;
    ppLabel1: TppLabel;
    PipeDetalles_Compra: TppDBPipeline;
    ppField1: TppField;
    ppField2: TppField;
    ppField3: TppField;
    ppField4: TppField;
    ppField5: TppField;
    ReporteProductos_Fabricante: TppReport;
    PipeReportes: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppDBText12: TppDBText;
    ppLabel14: TppLabel;
    ppDBText15: TppDBText;
    ppLabel17: TppLabel;
    ppDBText28: TppDBText;
    ppLabel30: TppLabel;
    ppLine2: TppLine;
    Nombre_Siglas_Clientes: TppLabel;
    Direccion_Ciudad_Pais_Clientes: TppLabel;
    Telefono_Fax_Rnc_Clientes: TppLabel;
    Titulo: TppLabel;
    ppGroup1: TppGroup;
    CabezaGrupo: TppGroupHeaderBand;
    PieGrupo: TppGroupFooterBand;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDBCalc1: TppDBCalc;
    IDCosto: TppLabel;
    ppLabel6: TppLabel;
    PipeFabricante: TppDBPipeline;
    LCostoPromedio: TppLabel;
    ppLabel11: TppLabel;
    CostoPromedio: TppVariable;
    PrecioContado: TppVariable;
    TCostoPromedio: TppVariable;
    TPrecioContado: TppVariable;
    ppLabel12: TppLabel;
    ppLabel16: TppLabel;
    ppLabel20: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    TGCostoPromedio: TppVariable;
    TGPrecioContado: TppVariable;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel28: TppLabel;
    Usuario: TppLabel;
    ppLine1: TppLine;
    ppLine5: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    Depto_Fabricante: TppLabel;
    Elemento_Fabricante: TppLabel;
    Status_Fabricante: TppLabel;
    Tipo_Fabricante: TppLabel;
    ReporteProductos_Proveedores: TppReport;
    ppTitleBand2: TppTitleBand;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppHeaderBand2: TppHeaderBand;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    Depto_Proveedor: TppLabel;
    Elemento_Proveedor: TppLabel;
    Status_Proveedor: TppLabel;
    Tipo_Proveedor: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppVariable1: TppVariable;
    ppVariable2: TppVariable;
    ppFooterBand2: TppFooterBand;
    ppLine6: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel53: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppLine7: TppLine;
    ppDBCalc3: TppDBCalc;
    ppVariable3: TppVariable;
    ppVariable5: TppVariable;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel59: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine8: TppLine;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLine9: TppLine;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc4: TppDBCalc;
    ppVariable9: TppVariable;
    ppVariable11: TppVariable;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel73: TppLabel;
    ppLine10: TppLine;
    ppLabel76: TppLabel;
    ppGroup3: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    PipeProveedor: TppDBPipeline;
    NombreFabricante_Proveedor: TppLabel;
    NombreProveedor: TppLabel;
    NombreFabricante: TppLabel;
    Nombre_Fabricante: TppLabel;
    Num_Fabricante: TppLabel;
    Num_Fabricante_Proveedor: TppLabel;
    Num_Proveedor: TppLabel;
    Nombre_Fabricante_Proveedor: TppLabel;
    Reporte_Vencimientos: TppReport;
    Pipe_Criterio_Vencimiento: TppDBPipeline;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand5: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppTitleBand3: TppTitleBand;
    ppDBText2: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText13: TppDBText;
    ppGroup4: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBCalc5: TppDBCalc;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel27: TppLabel;
    ppLabel29: TppLabel;
    Clasificacion: TppLabel;
    ppLabel57: TppLabel;
    ppLine11: TppLine;
    ppLabel21: TppLabel;
    ppLabel26: TppLabel;
    MES: TppVariable;
    ppLine13: TppLine;
    Criterio: TppLabel;
    ppLine12: TppLine;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel22: TppLabel;
    Reporte_Ventas: TppReport;
    ppTitleBand4: TppTitleBand;
    ppHeaderBand4: TppHeaderBand;
    ppDetailBand6: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText22: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppLine14: TppLine;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppDBCalc6: TppDBCalc;
    Pagado: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    TotalNeto: TppDBCalc;
    ppLabel31: TppLabel;
    ppLabel47: TppLabel;
    TotalEfectivo: TppVariable;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    TotaPagadoFact: TppVariable;
    ppLine15: TppLine;
    ppSummaryBand3: TppSummaryBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel93: TppLabel;
    ppDBText34: TppDBText;
    ppLabel94: TppLabel;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLine19: TppLine;
    ppLabel101: TppLabel;
    ppDBText35: TppDBText;
    Pipe_Facturas: TppDBPipeline;
    ppLabel50: TppLabel;
    ppLabel58: TppLabel;
    ppLabel71: TppLabel;
    ClasificacionVentas: TppLabel;
    ppLabel75: TppLabel;
    InventarioVendido: TppReport;
    ppTitleBand5: TppTitleBand;
    ppLabel72: TppLabel;
    ppHeaderBand5: TppHeaderBand;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    DelAl: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    ppDetailBand7: TppDetailBand;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppFooterBand5: TppFooterBand;
    ppLine20: TppLine;
    ppSystemVariable10: TppSystemVariable;
    TVenta: TppDBCalc;
    ppLabel85: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel102: TppLabel;
    TCosto: TppDBCalc;
    Pipe_Mercancia_Vendida: TppDBPipeline;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    Depto_Vendida: TppLabel;
    Producto_Vendida: TppLabel;
    ppLabel110: TppLabel;
    lProducto_Vendida: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    Usuario_Vendida: TppLabel;
    ppDBCalc12: TppDBCalc;
    PipeDetPagos: TppDBPipeline;
    PipeClientes: TppDBPipeline;
    PipePagos: TppDBPipeline;
    InventarioComprado: TppReport;
    ppTitleBand7: TppTitleBand;
    Titulo_Comprada: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    ppHeaderBand7: TppHeaderBand;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppLabel135: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    DelAlComprada: TppLabel;
    ppSystemVariable12: TppSystemVariable;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    Depto_Comprada: TppLabel;
    Producto_Comprada: TppLabel;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppLabel147: TppLabel;
    ppLabel148: TppLabel;
    Usuario_Comprada: TppLabel;
    ppDetailBand9: TppDetailBand;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText48: TppDBText;
    ppFooterBand7: TppFooterBand;
    ppLine25: TppLine;
    ppSystemVariable13: TppSystemVariable;
    ppLabel150: TppLabel;
    ppDBCalc14: TppDBCalc;
    Pipe_Mercancia_Comprada: TppDBPipeline;
    PipeSalida: TppDBPipeline;
    PipeDetalleSalida: TppDBPipeline;
    FormSalidaInventario: TppReport;
    ppTitleBand8: TppTitleBand;
    ppShape1: TppShape;
    ppDBText47: TppDBText;
    ppDBText49: TppDBText;
    ppLabel139: TppLabel;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppLabel140: TppLabel;
    ppDBText52: TppDBText;
    ppLabel143: TppLabel;
    ppDBText53: TppDBText;
    ppLabel144: TppLabel;
    ppDBText54: TppDBText;
    ppLabel149: TppLabel;
    ppDBText55: TppDBText;
    ppLabel151: TppLabel;
    ppHeaderBand8: TppHeaderBand;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    ppLabel157: TppLabel;
    ppLabel158: TppLabel;
    ppDetailBand10: TppDetailBand;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppFooterBand8: TppFooterBand;
    ppLine29: TppLine;
    ppSystemVariable14: TppSystemVariable;
    ppSystemVariable15: TppSystemVariable;
    ppLabel172: TppLabel;
    ppDBText76: TppDBText;
    ppLine30: TppLine;
    ppLabel174: TppLabel;
    ppLine31: TppLine;
    ppLabel175: TppLabel;
    ppDBText79: TppDBText;
    ppLabel10: TppLabel;
    ppLabel128: TppLabel;
    ppLabel136: TppLabel;
    PipeListadoClientes: TppDBPipeline;
    ppField6: TppField;
    ppField7: TppField;
    ppField8: TppField;
    ppField9: TppField;
    ppField10: TppField;
    ppField11: TppField;
    ppField12: TppField;
    ppField13: TppField;
    ppField14: TppField;
    ppField15: TppField;
    ppField16: TppField;
    ppField17: TppField;
    ppField18: TppField;
    ppField19: TppField;
    ppField20: TppField;
    ppField21: TppField;
    ppField22: TppField;
    ppField23: TppField;
    ppField24: TppField;
    ppField25: TppField;
    ppField26: TppField;
    ppField27: TppField;
    ppField28: TppField;
    ppField29: TppField;
    ppField30: TppField;
    ppField31: TppField;
    ppField32: TppField;
    ppField33: TppField;
    ppField34: TppField;
    ppField35: TppField;
    FormFactura: TppReport;
    InvoiceTitleBand: TppTitleBand;
    ppShape2: TppShape;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppLabel160: TppLabel;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppLabel161: TppLabel;
    ppDBText65: TppDBText;
    ppLabel162: TppLabel;
    ppDBText66: TppDBText;
    ppLabel163: TppLabel;
    ppDBText67: TppDBText;
    ppLabel164: TppLabel;
    ppDBText68: TppDBText;
    ppLabel165: TppLabel;
    Logo: TppImage;
    InvoiceHeaderBand: TppHeaderBand;
    ppLabel166: TppLabel;
    ppLabel167: TppLabel;
    ppLabel168: TppLabel;
    ppLabel169: TppLabel;
    ppLabel170: TppLabel;
    ppLabel171: TppLabel;
    ppLabel173: TppLabel;
    ppDetailBand11: TppDetailBand;
    Codigo: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    InvoiceFooterBand: TppFooterBand;
    FooterLine: TppLine;
    ppSystemVariable16: TppSystemVariable;
    ppSystemVariable17: TppSystemVariable;
    ppLabel189: TppLabel;
    ppDBText91: TppDBText;
    InvoicePendingLabel: TppLabel;
    InvoicePendingAmmount: TppDBText;
    InvoiceTaxLabel: TppLabel;
    InvoiceTax: TppDBText;
    InvoiceDiscountLabel: TppLabel;
    InvoiceDiscount: TppDBText;
    LSubTotal: TppLabel;
    Sub_Total: TppDBText;
    ppLine35: TppLine;
    ppLabel191: TppLabel;
    ppLine36: TppLine;
    ppLabel192: TppLabel;
    InvoicePaidLabel: TppLabel;
    InvoicePaidAmmount: TppDBText;
    ppDBText94: TppDBText;
    PipeDetalleFacturas: TppDBPipeline;
    PipeFacturas: TppDBPipeline;
    InvoiceCompanyAddress: TppLabel;
    InvoiceCompanyPhone: TppLabel;
    InvoiceCompanyName: TppLabel;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppLabel159: TppLabel;
    ppLabel193: TppLabel;
    Squared: TppShape;
    ppLine28: TppLine;
    ppLabel176: TppLabel;
    ppDBText77: TppDBText;
    ppLabel177: TppLabel;
    ppDBText78: TppDBText;
    FormCompra: TppReport;
    ppTitleBand9: TppTitleBand;
    ppShape3: TppShape;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppLabel178: TppLabel;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppLabel179: TppLabel;
    ppDBText84: TppDBText;
    ppLabel180: TppLabel;
    ppDBText85: TppDBText;
    ppLabel181: TppLabel;
    ppDBText86: TppDBText;
    ppLabel182: TppLabel;
    ppDBText87: TppDBText;
    ppLabel183: TppLabel;
    Logo_Compras: TppImage;
    ppLabel184: TppLabel;
    ppLabel185: TppLabel;
    ppLabel186: TppLabel;
    ppLabel187: TppLabel;
    ppLabel188: TppLabel;
    ppLabel190: TppLabel;
    ppLabel194: TppLabel;
    ppHeaderBand9: TppHeaderBand;
    ppShape4: TppShape;
    ppLabel195: TppLabel;
    ppLabel196: TppLabel;
    ppLabel197: TppLabel;
    ppLabel198: TppLabel;
    ppLabel199: TppLabel;
    ppLabel200: TppLabel;
    ppLabel201: TppLabel;
    ppDetailBand12: TppDetailBand;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppDBText92: TppDBText;
    ppDBText93: TppDBText;
    ppDBText95: TppDBText;
    ppDBText96: TppDBText;
    ppFooterBand9: TppFooterBand;
    ppLine32: TppLine;
    ppSystemVariable18: TppSystemVariable;
    ppSystemVariable19: TppSystemVariable;
    ppLabel202: TppLabel;
    ppDBText97: TppDBText;
    Product_InvoicePendingLabel: TppLabel;
    Product_InvoicePendingAmmount: TppDBText;
    Product_InvoiceTaxLabel: TppLabel;
    Product_InvoiceTax: TppDBText;
    Product_InvoiceDiscountLabel: TppLabel;
    Product_InvoiceDiscount: TppDBText;
    ppLabel206: TppLabel;
    ppDBText101: TppDBText;
    ppLine33: TppLine;
    ppLabel207: TppLabel;
    ppLine34: TppLine;
    ppLabel208: TppLabel;
    Product_InvoicePaidLabel: TppLabel;
    Product_InvoicePaidAmmount: TppDBText;
    ppDBText103: TppDBText;
    ppLine37: TppLine;
    PipeDetalleCompras: TppDBPipeline;
    PipeCompras: TppDBPipeline;
    FormEstadisticaProducto: TppReport;
    ppHeaderBand10: TppHeaderBand;
    ppDetailBand13: TppDetailBand;
    ppFooterBand10: TppFooterBand;
    ppTitleBand10: TppTitleBand;
    ppSystemVariable20: TppSystemVariable;
    ppSystemVariable21: TppSystemVariable;
    ppDBText98: TppDBText;
    ppLabel204: TppLabel;
    ppDBText99: TppDBText;
    ppLabel205: TppLabel;
    ppDBText100: TppDBText;
    ppLabel209: TppLabel;
    ppDBText102: TppDBText;
    ppLabel210: TppLabel;
    ppDBText104: TppDBText;
    ppLabel211: TppLabel;
    ppDBText105: TppDBText;
    ppDBText107: TppDBText;
    ppLabel214: TppLabel;
    ppDBText108: TppDBText;
    ppLabel215: TppLabel;
    ppDBText109: TppDBText;
    ppLabel216: TppLabel;
    ppDBText110: TppDBText;
    ppLabel217: TppLabel;
    ppDBText111: TppDBText;
    ppLabel218: TppLabel;
    ppDBText112: TppDBText;
    ppLabel219: TppLabel;
    ppDBText113: TppDBText;
    ppLabel220: TppLabel;
    ppDBText114: TppDBText;
    ppLabel221: TppLabel;
    ppDBText115: TppDBText;
    ppLabel222: TppLabel;
    ppDBText117: TppDBText;
    ppLabel224: TppLabel;
    ppDBText118: TppDBText;
    ppLabel225: TppLabel;
    ppDBText121: TppDBText;
    ppLabel228: TppLabel;
    ppDBText122: TppDBText;
    ppLabel229: TppLabel;
    ppDBText123: TppDBText;
    ppLabel230: TppLabel;
    ppDBText124: TppDBText;
    ppLabel231: TppLabel;
    ppDBText125: TppDBText;
    ppLabel232: TppLabel;
    ppDBText126: TppDBText;
    ppLabel233: TppLabel;
    ppLabel234: TppLabel;
    ppLabel235: TppLabel;
    ppLabel236: TppLabel;
    ppLabel237: TppLabel;
    ppDBText131: TppDBText;
    ppLabel238: TppLabel;
    ppDBText132: TppDBText;
    ppLabel239: TppLabel;
    ppDBText133: TppDBText;
    ppLabel240: TppLabel;
    ppDBText134: TppDBText;
    ppLabel241: TppLabel;
    ppDBText135: TppDBText;
    ppLabel242: TppLabel;
    ppDBText136: TppDBText;
    ppLabel243: TppLabel;
    ppDBText137: TppDBText;
    ppLabel244: TppLabel;
    ppLabel203: TppLabel;
    ppLine39: TppLine;
    ppLine41: TppLine;
    ppLabel212: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    myDBCheckBox2: TmyDBCheckBox;
    myDBCheckBox3: TmyDBCheckBox;
    myDBCheckBox4: TmyDBCheckBox;
    ppLabel223: TppLabel;
    ppLine42: TppLine;
    ppLabel226: TppLabel;
    ppLine43: TppLine;
    ppLabel213: TppLabel;
    ppDBText106: TppDBText;
    Movimientos: TppTeeChart;
    RptEfectivo: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand11: TppTitleBand;
    ppLine44: TppLine;
    ppLabel227: TppLabel;
    ppLabel245: TppLabel;
    ppLabel246: TppLabel;
    ppLabel247: TppLabel;
    ppLabel248: TppLabel;
    ppDetailBand14: TppDetailBand;
    ppDBText116: TppDBText;
    ppDBText119: TppDBText;
    ppDBText120: TppDBText;
    ppDBText127: TppDBText;
    RptPagos: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand12: TppTitleBand;
    ppLine45: TppLine;
    ppLabel250: TppLabel;
    ppLabel251: TppLabel;
    ppLabel252: TppLabel;
    ppLabel253: TppLabel;
    ppLabel254: TppLabel;
    ppDetailBand15: TppDetailBand;
    ppDBText129: TppDBText;
    ppDBText130: TppDBText;
    ppDBText138: TppDBText;
    ppDBText139: TppDBText;
    ppSummaryBand5: TppSummaryBand;
    TotalPagos: TppDBCalc;
    ppLabel256: TppLabel;
    PipeDesgloceEfectivo: TppDBPipeline;
    PipeListadoPagos: TppDBPipeline;
    ppSummaryBand6: TppSummaryBand;
    ppLabel249: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine40: TppLine;
    ppDBText128: TppDBText;
    ppDBText140: TppDBText;
    ppDBText141: TppDBText;
    ppDBText142: TppDBText;
    ppLabel255: TppLabel;
    ppDBText143: TppDBText;
    ppDBText144: TppDBText;
    ppDBText145: TppDBText;
    ppLabel257: TppLabel;
    ppLabel258: TppLabel;
    ppLabel262: TppLabel;
    ppLabel263: TppLabel;
    ppLabel264: TppLabel;
    ppLabel265: TppLabel;
    ppDBText146: TppDBText;
    ppLabel259: TppLabel;
    ppDBText147: TppDBText;
    ppLabel260: TppLabel;
    ppLabel266: TppLabel;
    ppDBText149: TppDBText;
    ppDBText148: TppDBText;
    ppLabel261: TppLabel;
    ppDBText150: TppDBText;
    ppLabel267: TppLabel;
    ppLabel268: TppLabel;
    ppDBText151: TppDBText;
    ppDBText152: TppDBText;
    ppLabel269: TppLabel;
    ppDBText153: TppDBText;
    ppLabel270: TppLabel;
    ppLabel271: TppLabel;
    ppDBText154: TppDBText;
    ppLabel272: TppLabel;
    ppDBText155: TppDBText;
    ppLabel273: TppLabel;
    ppDBText156: TppDBText;
    ppDBText157: TppDBText;
    ppLabel274: TppLabel;
    ppDBText158: TppDBText;
    ppLabel275: TppLabel;
    ppLabel276: TppLabel;
    ppDBText159: TppDBText;
    Recibo_Nota_Credito: TppReport;
    ppTitleBand13: TppTitleBand;
    ppHeaderBand11: TppHeaderBand;
    ppLabel279: TppLabel;
    ppDBText160: TppDBText;
    ppLabel280: TppLabel;
    ppLabel281: TppLabel;
    ppLabel282: TppLabel;
    ppLabel283: TppLabel;
    ppLabel284: TppLabel;
    ppDBText161: TppDBText;
    ppDBText162: TppDBText;
    ppLabel285: TppLabel;
    ppDBText163: TppDBText;
    ppLabel286: TppLabel;
    ppLabel287: TppLabel;
    ppLabel288: TppLabel;
    ppLabel289: TppLabel;
    ppLabel290: TppLabel;
    ppDetailBand16: TppDetailBand;
    ppDBText164: TppDBText;
    ppDBText165: TppDBText;
    ppFooterBand11: TppFooterBand;
    ppSystemVariable22: TppSystemVariable;
    ppLabel293: TppLabel;
    ppLine38: TppLine;
    ppLine48: TppLine;
    ppLabel294: TppLabel;
    ppSummaryBand7: TppSummaryBand;
    ppLabel295: TppLabel;
    ppDBText167: TppDBText;
    PipeNotas_Credito: TppDBPipeline;
    PipeDetalle_Notas_Credito: TppDBPipeline;
    Estado_Cuenta_Clientes: TppReport;
    ppTitleBand14: TppTitleBand;
    ppLabel297: TppLabel;
    ppDetailBand17: TppDetailBand;
    ppShape5: TppShape;
    ppDBText176: TppDBText;
    ppDBText177: TppDBText;
    ppDBText178: TppDBText;
    ppDBText179: TppDBText;
    ppDBText183: TppDBText;
    ppDBText184: TppDBText;
    Pagos: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand16: TppTitleBand;
    ppLabel308: TppLabel;
    ppShape7: TppShape;
    ppLabel309: TppLabel;
    ppLabel310: TppLabel;
    ppLabel311: TppLabel;
    ppDetailBand19: TppDetailBand;
    ppDBText186: TppDBText;
    ppDBText187: TppDBText;
    ppDBText190: TppDBText;
    ppSummaryBand9: TppSummaryBand;
    ppDBCalc17: TppDBCalc;
    ppLabel314: TppLabel;
    ppLabel315: TppLabel;
    ppLabel316: TppLabel;
    ppLabel317: TppLabel;
    ppLabel318: TppLabel;
    ppLabel322: TppLabel;
    ppLabel323: TppLabel;
    ppFooterBand12: TppFooterBand;
    ppLine49: TppLine;
    ppSystemVariable23: TppSystemVariable;
    ppSystemVariable24: TppSystemVariable;
    ppSummaryBand10: TppSummaryBand;
    ppShape9: TppShape;
    ppDBText196: TppDBText;
    ppDBText197: TppDBText;
    ppLabel298: TppLabel;
    ppDBText198: TppDBText;
    ppDBText199: TppDBText;
    ppImage2: TppImage;
    ppLabel330: TppLabel;
    ppLabel331: TppLabel;
    ppLabel332: TppLabel;
    Notas_Credito: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand15: TppTitleBand;
    ppLabel299: TppLabel;
    ppShape6: TppShape;
    ppLabel300: TppLabel;
    ppLabel301: TppLabel;
    ppLabel302: TppLabel;
    ppDetailBand18: TppDetailBand;
    ppDBText169: TppDBText;
    ppDBText170: TppDBText;
    ppDBText173: TppDBText;
    ppSummaryBand8: TppSummaryBand;
    ppDBCalc15: TppDBCalc;
    ppLabel305: TppLabel;
    Pipe_Facturas_Cliente: TppDBPipeline;
    ppDBText174: TppDBText;
    ppLabel306: TppLabel;
    ppShape8: TppShape;
    ppLabel307: TppLabel;
    ppDBText175: TppDBText;
    ppDBCalc16: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    Pipe_Pagos_Cliente: TppDBPipeline;
    Pipe_Notas_Credito_Cliente: TppDBPipeline;
    ppLabel303: TppLabel;
    ppDBText168: TppDBText;
    ppLabel304: TppLabel;
    FormOrdenCompra: TppReport;
    ppTitleBand17: TppTitleBand;
    ppShape10: TppShape;
    ppDBText171: TppDBText;
    ppDBText172: TppDBText;
    ppLabel312: TppLabel;
    ppDBText180: TppDBText;
    ppDBText181: TppDBText;
    ppLabel313: TppLabel;
    ppDBText182: TppDBText;
    ppLabel319: TppLabel;
    ppDBText185: TppDBText;
    ppLabel324: TppLabel;
    ppImage3: TppImage;
    ppLabel325: TppLabel;
    ppLabel326: TppLabel;
    ppLabel327: TppLabel;
    ppLabel328: TppLabel;
    ppLabel329: TppLabel;
    ppHeaderBand12: TppHeaderBand;
    ppShape11: TppShape;
    ppLabel335: TppLabel;
    ppLabel336: TppLabel;
    ppLabel337: TppLabel;
    ppLabel339: TppLabel;
    ppDetailBand20: TppDetailBand;
    ppDBText191: TppDBText;
    ppDBText192: TppDBText;
    ppDBText193: TppDBText;
    ppDBText195: TppDBText;
    ppFooterBand13: TppFooterBand;
    ppLine50: TppLine;
    ppSystemVariable25: TppSystemVariable;
    ppSystemVariable26: TppSystemVariable;
    ppLine51: TppLine;
    ppLabel347: TppLabel;
    ppLine52: TppLine;
    ppLabel348: TppLabel;
    PipeDetalleOrdenCompras: TppDBPipeline;
    PipeOrdenCompra: TppDBPipeline;
    ppSummaryBand11: TppSummaryBand;
    ppLine53: TppLine;
    ppLabel320: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppLabel321: TppLabel;
    ppSummaryBand12: TppSummaryBand;
    ppLine54: TppLine;
    ppLabel333: TppLabel;
    ppLabel334: TppLabel;
    ppDBMemo2: TppDBMemo;
    ppSummaryBand13: TppSummaryBand;
    ppLine55: TppLine;
    ppLabel338: TppLabel;
    ppDBMemo3: TppDBMemo;
    ppLabel340: TppLabel;
    ppLabel341: TppLabel;
    ppDBText188: TppDBText;
    ppParameterList1: TppParameterList;
    ppDetailBand1: TppDetailBand;
    Descripcion_Etiqueta: TppDBText;
    Nombre_Comp: TppLabel;
    Tel_Comp: TppLabel;
    ppDBText3: TppDBText;
    ppLabel342: TppLabel;
    ppDBText69: TppDBText;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ReporteNCF: TppReport;
    ppTitleBand18: TppTitleBand;
    ppLabel343: TppLabel;
    ppLabel350: TppLabel;
    ppLabel351: TppLabel;
    ppHeaderBand13: TppHeaderBand;
    ClasificacionNCF: TppLabel;
    ppLabel353: TppLabel;
    ppDetailBand21: TppDetailBand;
    ppDBText194: TppDBText;
    ppDBText200: TppDBText;
    ppDBText201: TppDBText;
    ppDBText202: TppDBText;
    ppDBText203: TppDBText;
    ppDBText204: TppDBText;
    ppDBText205: TppDBText;
    ppDBText206: TppDBText;
    ppLabel354: TppLabel;
    ppLabel355: TppLabel;
    ppDBText207: TppDBText;
    ppDBText208: TppDBText;
    ppFooterBand14: TppFooterBand;
    ppLine58: TppLine;
    ppSystemVariable27: TppSystemVariable;
    ppSystemVariable28: TppSystemVariable;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppLabel356: TppLabel;
    ppLabel357: TppLabel;
    ppLabel358: TppLabel;
    ppLabel359: TppLabel;
    ppLabel362: TppLabel;
    ppDBCalc28: TppDBCalc;
    ppLine60: TppLine;
    ppLabel363: TppLabel;
    ppDBCalc29: TppDBCalc;
    ppSummaryBand14: TppSummaryBand;
    ppGroup6: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppLine65: TppLine;
    ppLabel376: TppLabel;
    ppLabel377: TppLabel;
    ppLabel378: TppLabel;
    ppLabel379: TppLabel;
    ppLabel380: TppLabel;
    ppLabel381: TppLabel;
    ppDBText217: TppDBText;
    ppLabel382: TppLabel;
    ppLabel383: TppLabel;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppLabel384: TppLabel;
    ppLabel385: TppLabel;
    ppLabel386: TppLabel;
    ppLabel387: TppLabel;
    ppLine66: TppLine;
    ppLabel388: TppLabel;
    ppDBText218: TppDBText;
    ppDBCalc36: TppDBCalc;
    ppLabel389: TppLabel;
    ppLine67: TppLine;
    ppDBCalc37: TppDBCalc;
    ppLabel390: TppLabel;
    ppDBText209: TppDBText;
    ppDBText210: TppDBText;
    ppDBText211: TppDBText;
    ppDBText213: TppDBText;
    ppLabel126: TppLabel;
    ppLabel352: TppLabel;
    ppLabel360: TppLabel;
    ppLabel361: TppLabel;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLabel292: TppLabel;
    ppDBText214: TppDBText;
    ppImage4: TppImage;
    ppLabel2: TppLabel;
    ppLabel277: TppLabel;
    ppLabel278: TppLabel;
    Nota_Pie_Factura: TppMemo;
    ppDBText215: TppDBText;
    ppLabel296: TppLabel;
    ppLabel364: TppLabel;
    ReporteProductos_Categoria: TppReport;
    ppTitleBand19: TppTitleBand;
    ppLabel365: TppLabel;
    ppLabel366: TppLabel;
    ppLabel367: TppLabel;
    ppHeaderBand14: TppHeaderBand;
    Titulo_Categoria: TppLabel;
    ppLabel369: TppLabel;
    ppLabel370: TppLabel;
    ppLabel371: TppLabel;
    ppLabel372: TppLabel;
    ppLabel373: TppLabel;
    ppLabel374: TppLabel;
    ppLabel375: TppLabel;
    ppLabel391: TppLabel;
    Depto_Categoria: TppLabel;
    Elemento_Categoria: TppLabel;
    Status_Categoria: TppLabel;
    Tipo_Categoria: TppLabel;
    ppDetailBand22: TppDetailBand;
    ppDBText216: TppDBText;
    ppDBText219: TppDBText;
    ppDBText220: TppDBText;
    ppDBText221: TppDBText;
    ppDBText222: TppDBText;
    ppLabel396: TppLabel;
    ppLabel397: TppLabel;
    ppVariable4: TppVariable;
    ppVariable6: TppVariable;
    ppFooterBand15: TppFooterBand;
    ppLine63: TppLine;
    ppSystemVariable29: TppSystemVariable;
    ppSystemVariable30: TppSystemVariable;
    ppLabel398: TppLabel;
    ppSummaryBand15: TppSummaryBand;
    ppLine64: TppLine;
    ppDBCalc30: TppDBCalc;
    TGCostoPromedio_Categoria: TppVariable;
    TGPrecioContado_Categoria: TppVariable;
    ppLabel399: TppLabel;
    ppLabel400: TppLabel;
    ppLabel401: TppLabel;
    ppLabel402: TppLabel;
    ppGroup7: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppLine68: TppLine;
    ppLabel403: TppLabel;
    ppLabel404: TppLabel;
    ppLabel405: TppLabel;
    ppLabel406: TppLabel;
    ppLabel407: TppLabel;
    ppLine69: TppLine;
    ppLabel408: TppLabel;
    ppLabel409: TppLabel;
    NombreCategoria: TppLabel;
    Num_Categoria: TppLabel;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppDBCalc31: TppDBCalc;
    TCostoPromedio_Categoria: TppVariable;
    TPrecioContado_Categoria: TppVariable;
    ppLabel412: TppLabel;
    ppLabel413: TppLabel;
    ppLabel414: TppLabel;
    ppLine70: TppLine;
    ppLabel415: TppLabel;
    Nombre_Categoria: TppLabel;
    ppParameterList2: TppParameterList;
    Cod_Generado: TppDBText;
    Codigo_Etiqueta: TppBarCode;
    ppLabel368: TppLabel;
    ppDBText223: TppDBText;
    ppLabel392: TppLabel;
    ReciboPagoCliente: TppReport;
    ppTitleBand20: TppTitleBand;
    ppImage5: TppImage;
    ppLabel393: TppLabel;
    ppLabel394: TppLabel;
    ppLabel395: TppLabel;
    ppHeaderBand15: TppHeaderBand;
    ppLabel410: TppLabel;
    ppDBText224: TppDBText;
    ppLabel411: TppLabel;
    ppLabel416: TppLabel;
    ppLabel417: TppLabel;
    ppLabel418: TppLabel;
    ppLabel419: TppLabel;
    ppDBText225: TppDBText;
    ppDBText226: TppDBText;
    ppLabel420: TppLabel;
    ppLabel421: TppLabel;
    ppLabel422: TppLabel;
    ppLabel423: TppLabel;
    ppLabel424: TppLabel;
    ppLabel425: TppLabel;
    ppLabel426: TppLabel;
    ppLine71: TppLine;
    ppLabel427: TppLabel;
    ppDBText227: TppDBText;
    Status_Recibo_Pago: TppDBText;
    ppLabel428: TppLabel;
    ppLabel429: TppLabel;
    ppLabel430: TppLabel;
    ppLabel431: TppLabel;
    ppColumnHeaderBand3: TppColumnHeaderBand;
    ppDetailBand23: TppDetailBand;
    ppDBText228: TppDBText;
    ppDBText229: TppDBText;
    ppDBText230: TppDBText;
    ppDBText231: TppDBText;
    ppDBText232: TppDBText;
    ppDBText233: TppDBText;
    ppColumnFooterBand3: TppColumnFooterBand;
    ppFooterBand16: TppFooterBand;
    ppLine72: TppLine;
    ppSystemVariable31: TppSystemVariable;
    ppLabel432: TppLabel;
    ppLine73: TppLine;
    ppLabel433: TppLabel;
    ppSummaryBand16: TppSummaryBand;
    ppLabel434: TppLabel;
    ppDBText234: TppDBText;
    ppLine74: TppLine;
    ppDBCalc38: TppDBCalc;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    ppDBText32: TppDBText;
    ppLabel74: TppLabel;
    ppDBText33: TppDBText;
    ppLabel108: TppLabel;
    ppDBText36: TppDBText;
    ppLabel109: TppLabel;
    Status_Nota_Credito: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppLabel111: TppLabel;
    ppLine21: TppLine;
    ppDBText40: TppDBText;
    ppDBText37: TppDBText;
    ppLabel112: TppLabel;
    ppDBText41: TppDBText;
    ppLabel115: TppLabel;
    ppLabel92: TppLabel;
    ppDBText166: TppDBText;
    ppShape12: TppShape;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel345: TppLabel;
    ppLabel346: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ReporteClientes: TppReport;
    ppTitleBand6: TppTitleBand;
    TitClientes: TppLabel;
    ppImage6: TppImage;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppDBText21: TppDBText;
    ppHeaderBand6: TppHeaderBand;
    ppShape13: TppShape;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLabel127: TppLabel;
    ppDetailBand8: TppDetailBand;
    ppDBText189: TppDBText;
    ppDBText212: TppDBText;
    ppDBText235: TppDBText;
    ppDBText236: TppDBText;
    ppDBText237: TppDBText;
    ppDBText238: TppDBText;
    ppFooterBand6: TppFooterBand;
    ppLine18: TppLine;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable32: TppSystemVariable;
    ppGroup8: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppShape14: TppShape;
    ppDBText239: TppDBText;
    ppGroupFooterBand7: TppGroupFooterBand;
    ReportePagos: TppReport;
    ppTitleBand21: TppTitleBand;
    TitPagos: TppLabel;
    ppImage8: TppImage;
    ppLabel291: TppLabel;
    ppLabel344: TppLabel;
    ppLabel349: TppLabel;
    ppHeaderBand16: TppHeaderBand;
    ppShape15: TppShape;
    ppLabel435: TppLabel;
    ppLabel436: TppLabel;
    ppLabel437: TppLabel;
    ppLabel438: TppLabel;
    ppLabel439: TppLabel;
    ppLabel440: TppLabel;
    ppLabel441: TppLabel;
    ppLabel442: TppLabel;
    ppDetailBand24: TppDetailBand;
    ppDBText240: TppDBText;
    ppDBText241: TppDBText;
    ppDBText242: TppDBText;
    ppDBText243: TppDBText;
    ppDBText244: TppDBText;
    ppDBText245: TppDBText;
    Cliente_Pagos: TppVariable;
    ppDBText246: TppDBText;
    ppFooterBand17: TppFooterBand;
    ppLine22: TppLine;
    ppLine59: TppLine;
    ppSystemVariable33: TppSystemVariable;
    ppDBCalc42: TppDBCalc;
    ppLabel443: TppLabel;
    ppDBCalc43: TppDBCalc;
    ppDBCalc44: TppDBCalc;
    ppDBCalc45: TppDBCalc;
    ppLabel444: TppLabel;
    ppLabel445: TppLabel;
    ppLine75: TppLine;
    ppLine76: TppLine;
    ppLabel446: TppLabel;
    ppLabel447: TppLabel;
    ppLabel448: TppLabel;
    ppSystemVariable34: TppSystemVariable;
    Comprobante_Nota_Debito: TppReport;
    ppTitleBand22: TppTitleBand;
    ppImage10: TppImage;
    ppLabel449: TppLabel;
    ppLabel450: TppLabel;
    ppLabel451: TppLabel;
    ppHeaderBand17: TppHeaderBand;
    ppLabel452: TppLabel;
    ppDBText247: TppDBText;
    ppLabel453: TppLabel;
    ppLabel454: TppLabel;
    ppLabel455: TppLabel;
    ppLabel456: TppLabel;
    ppLabel457: TppLabel;
    ppDBText248: TppDBText;
    ppDBText249: TppDBText;
    ppLabel458: TppLabel;
    ppLabel459: TppLabel;
    ppLabel460: TppLabel;
    ppLabel461: TppLabel;
    ppLabel462: TppLabel;
    ppLabel463: TppLabel;
    ppLabel464: TppLabel;
    ppLabel465: TppLabel;
    ppLabel466: TppLabel;
    ppDBText250: TppDBText;
    ppLabel467: TppLabel;
    ppLabel468: TppLabel;
    ppLabel469: TppLabel;
    ppLine77: TppLine;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppDetailBand25: TppDetailBand;
    ppDBText251: TppDBText;
    ppDBText252: TppDBText;
    ppDBText253: TppDBText;
    ppDBText254: TppDBText;
    ppDBText255: TppDBText;
    ppDBText256: TppDBText;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppFooterBand18: TppFooterBand;
    ppLine78: TppLine;
    ppSystemVariable35: TppSystemVariable;
    ppLabel470: TppLabel;
    ppLine79: TppLine;
    ppLabel471: TppLabel;
    ppLine80: TppLine;
    ShadeAnuladosPagosVentas: TppShape;
    ppDBText257: TppDBText;
    ppLabel472: TppLabel;
    ppDBCalc46: TppDBCalc;
    ppLabel473: TppLabel;
    ShadeAnuladosReportePagos: TppShape;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    procedure ppDetailBand11BeforePrint(Sender: TObject);
    procedure InvoiceTitleBandBeforePrint(Sender: TObject);
    procedure ppLabel282Print(Sender: TObject);
    procedure ReporteProductos_FabricanteBeforePrint(Sender: TObject);
    procedure ppVariable5Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable3Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable11Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable9Calc(Sender: TObject; var Value: Variant);
    procedure Print_Costo(Sender: TObject);
    procedure Set_Cost_Type(Sender: TObject);
    procedure Define_Print_Cost(Sender: TObject);
    procedure ReportHeaderName(Sender: TObject);
    procedure ReportHeaderAddress(Sender: TObject);
    procedure ReportHeaderPhones(Sender: TObject);
    procedure CabezaGrupoBeforePrint(Sender: TObject);
    procedure Total_Costo_Calc(Sender: TObject; var Value: Variant);
    procedure PrecioContadoCalc(Sender: TObject; var Value: Variant);
    procedure PrecioCreditoCalc(Sender: TObject; var Value: Variant);
    procedure PrecioMinimoCalc(Sender: TObject; var Value: Variant);
    procedure PieGrupoAfterPrint(Sender: TObject);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure MESCalc(Sender: TObject; var Value: Variant);
    procedure UserPrint(Sender: TObject);
    procedure ValorLetrasPrint(Sender: TObject);
    procedure LogoPrint(Sender: TObject);
    procedure ppGroupHeaderBand6BeforePrint(Sender: TObject);
    procedure TCostoPromedio_CategoriaCalc(Sender: TObject; var Value: Variant);
    procedure TGPrecioContado_CategoriaCalc(Sender: TObject;
      var Value: Variant);
    procedure TPrecioContado_CategoriaCalc(Sender: TObject; var Value: Variant);
    procedure TGCostoPromedio_CategoriaCalc(Sender: TObject;
      var Value: Variant);
    procedure ppHeaderBand15BeforePrint(Sender: TObject);
    procedure ppHeaderBand11BeforePrint(Sender: TObject);
    procedure ppDetailBand15BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    _Seccion : String;
  end;

var
  ReportsAndForms      : TReportsAndForms;

implementation

uses DataModulo, Utilidades, DB;

{$R *.dfm}

procedure TReportsAndForms.ReportHeaderName(Sender: TObject);
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,False);
  {Informacion  General}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_CompanyInfoKey,False);
  (Sender as TppLabel).Caption         := Unencrypt(RegInfo.ReadString(_UserCompName));
  (Sender as TppLabel).Alignment := TAlignment(RegInfo.ReadInteger(_UserCompAlignment));

  {Alineación}
  If Trim(_Seccion) <> '' Then
    Begin
      RegInfo.CloseKey;
      RegInfo.OpenKey(_Seccion,False);
      (Sender as TppLabel).Alignment := TAlignment(RegInfo.ReadInteger(_Alignment))
    End
end;

procedure TReportsAndForms.ReporteProductos_FabricanteBeforePrint(
  Sender: TObject);
begin
  TCostoPromedio.AsCurrency := 0;
  TGCostoPromedio.AsCurrency := 0;
  TPrecioContado.AsCurrency := 0;
  TGPrecioContado.AsCurrency := 0;
end;

procedure TReportsAndForms.ReportHeaderAddress(Sender: TObject);
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,False);
  {Informacion  General}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_CompanyInfoKey,False);
  (Sender As TppLabel).Caption := Format ('%s, %s, %s',[Unencrypt(RegInfo.ReadString(_UserCompAddres)),
                                                         Unencrypt(RegInfo.ReadString(_UserCompCity)),
                                                         Unencrypt(RegInfo.ReadString(_UserCompCountry))]);

  {Alineación}
  (Sender as TppLabel).Alignment := TAlignment(RegInfo.ReadInteger(_UserCompAlignment));

  If Trim(_Seccion) <> '' Then
    Begin
      RegInfo.CloseKey;
      RegInfo.OpenKey(_Seccion,False);
      (Sender as TppLabel).Alignment := TAlignment(RegInfo.ReadInteger(_Alignment))
    End
end;

procedure TReportsAndForms.ReportHeaderPhones(Sender: TObject);
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,False);
  {Informacion  General}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_CompanyInfoKey,False);
  (Sender As TppLabel).Caption      := Format ('%s, %s, %s',[Unencrypt(RegInfo.ReadString(_UserCompPhone1)),
                                                         Unencrypt(RegInfo.ReadString(_UserCompPhone2)),
                                                         Unencrypt(RegInfo.ReadString(_UserCompRNC))]);
  {Alineación}
  (Sender as TppLabel).Alignment := TAlignment(RegInfo.ReadInteger(_UserCompAlignment));

  If Trim(_Seccion) <> '' Then
    Begin
      RegInfo.CloseKey;
      RegInfo.OpenKey(_Seccion,False);
      (Sender as TppLabel).Alignment := TAlignment(RegInfo.ReadInteger(_Alignment))
    End
end;

procedure TReportsAndForms.Set_Cost_Type(Sender: TObject);
begin
  If Trim(PipeReportes.DataSource.DataSet.FieldByName('Metodo_Calculo_Costo').AsString) = 'Promedio' Then
    (Sender As TppLabel).Caption := 'P';

  If Trim(PipeReportes.DataSource.DataSet.FieldByName('Metodo_Calculo_Costo').AsString) = 'Estandar' Then
    (Sender As TppLabel).Caption := 'E';

  If Trim(PipeReportes.DataSource.DataSet.FieldByName('Metodo_Calculo_Costo').AsString) = 'Última Compra' Then
    (Sender As TppLabel).Caption := 'U';

  Print_Costo(Sender)
end;

procedure TReportsAndForms.CabezaGrupoBeforePrint(Sender: TObject);
begin
  NombreFabricante_Proveedor.Caption := 'No Definido';
  Num_Fabricante.Caption := Pad('L',Modulo.tReporter.FieldByName('Fabricante').AsString,6,'0');
  Num_Fabricante_Proveedor.Caption := Pad('L',Modulo.tReporter.FieldByName('Fabricante').AsString,6,'0');
  If Modulo.tFabricante.Locate(Modulo.tFabricanteNumero.FieldName,
                                    Modulo.tReporter.FieldByName('Fabricante').AsInteger,
                                    []) Then NombreFabricante_Proveedor.Caption := Modulo.tFabricanteNombre.Value;

  NombreFabricante.Caption := NombreFabricante_Proveedor.Caption;
  Nombre_Fabricante_Proveedor.Caption := NombreFabricante_Proveedor.Caption;
  Nombre_Fabricante.Caption := NombreFabricante_Proveedor.Caption
end;

procedure TReportsAndForms.TCostoPromedio_CategoriaCalc(Sender: TObject;
  var Value: Variant);
begin
  Value := TCostoPromedio.AsCurrency
end;

procedure TReportsAndForms.TGCostoPromedio_CategoriaCalc(Sender: TObject;
  var Value: Variant);
begin
  Value := TGCostoPromedio.AsCurrency
end;

procedure TReportsAndForms.TGPrecioContado_CategoriaCalc(Sender: TObject;
  var Value: Variant);
begin
  Value := TGPrecioContado.AsCurrency
end;

procedure TReportsAndForms.Total_Costo_Calc(Sender: TObject;
  var Value: Variant);
begin
  If Trim(PipeReportes.DataSource.DataSet.FieldByName('Metodo_Calculo_Costo').AsString) = 'Promedio' Then
    Value := Modulo.tReporter.FieldByName('Existencia').AsFloat *
             Modulo.tReporter.FieldByName('Costo_Promedio').AsFloat;

  If Trim(PipeReportes.DataSource.DataSet.FieldByName('Metodo_Calculo_Costo').AsString) = 'Estandar' Then
    Value := Modulo.tReporter.FieldByName('Existencia').AsFloat *
             Modulo.tReporter.FieldByName('Costo_Standar').AsFloat;

  If Trim(PipeReportes.DataSource.DataSet.FieldByName('Metodo_Calculo_Costo').AsString) = 'Última Compra' Then
    Value := Modulo.tReporter.FieldByName('Existencia').AsFloat *
             Modulo.tReporter.FieldByName('Ultimo_Precio_Compra').AsFloat;

  TCostoPromedio.AsCurrency := TCostoPromedio.AsCurrency + Value;
//  TGCostoPromedio.AsCurrency := TGCostoPromedio.AsCurrency + Value
end;

procedure TReportsAndForms.TPrecioContado_CategoriaCalc(Sender: TObject;
  var Value: Variant);
begin
  Value := TPrecioContado.AsCurrency
end;

procedure TReportsAndForms.PrecioContadoCalc(Sender: TObject;
  var Value: Variant);
begin
  Value := Modulo.tReporter.FieldByName('Existencia').AsFloat *
           Modulo.tReporter.FieldByName('Precio_Venta_Contado').AsFloat;

  TPrecioContado.AsCurrency := TPrecioContado.AsCurrency + Value;
//  TGPrecioContado.AsCurrency := TGPrecioContado.AsCurrency + Value
end;

procedure TReportsAndForms.PrecioCreditoCalc(Sender: TObject;
  var Value: Variant);
begin
  Value := Modulo.tReporter.FieldByName('Existencia').AsFloat *
           Modulo.tReporter.FieldByName('Precio_Venta_Credito').AsFloat;

//  TPrecioCredito.AsCurrency := TPrecioCredito.AsCurrency + Value;
//  TGPrecioCredito.AsCurrency := TGPrecioCredito.AsCurrency + Value
end;

procedure TReportsAndForms.PrecioMinimoCalc(Sender: TObject;
  var Value: Variant);
begin
  Value := Modulo.tReporter.FieldByName('Existencia').AsFloat *
           Modulo.tReporter.FieldByName('Precio_Venta_Minimo').AsFloat;

//  TPrecioMinimo.AsCurrency := TPrecioMinimo.AsCurrency + Value;
//  TGPrecioMinimo.AsCurrency := TGPrecioMinimo.AsCurrency + Value
end;

procedure TReportsAndForms.Print_Costo(Sender: TObject);
  Var
    txtColor : Array [False..True] Of Integer;
begin
  txtColor[False] := clWhite;
  txtColor[True] := clBlack;
  (Sender As TppCustomText).Color := txtColor[_Rep_Imprime_Costo];
  (Sender As TppCustomText).Visible := _Rep_Imprime_Costo
end;

procedure TReportsAndForms.PieGrupoAfterPrint(Sender: TObject);
begin
  TGCostoPromedio.AsCurrency := TGCostoPromedio.AsCurrency + TCostoPromedio.AsCurrency;
  TCostoPromedio.AsCurrency := 0;
  TGPrecioContado.AsCurrency := TGPrecioContado.AsCurrency + TPrecioContado.AsCurrency;
  TPrecioContado.AsCurrency := 0
end;

procedure TReportsAndForms.ppDetailBand11BeforePrint(Sender: TObject);
begin
  If Modulo.tDetalles_FacturaTotal_Precio.IsNull Then
    Codigo.Visible := False
  Else Codigo.Visible := True
  
end;

procedure TReportsAndForms.ppDetailBand15BeforePrint(Sender: TObject);
begin
  ShadeAnuladosPagosVentas.Visible := Modulo.tListadoPagosStatus.Value = _stANULADO
end;

procedure TReportsAndForms.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
  NombreProveedor.Caption := 'No Definido';
  If Modulo.tProveedores.Locate(Modulo.tProveedoresNumero.FieldName,
                                Modulo.tReporter.FieldByName('Proveedor_Principal').AsInteger,
                                []) Then NombreProveedor.Caption := Modulo.tProveedoresNombreCompleto.Value;

 Num_Proveedor.Caption := Pad('L',Modulo.tReporter.FieldByName('Proveedor_Principal').AsString,6,'0')
end;

procedure TReportsAndForms.ppGroupHeaderBand6BeforePrint(Sender: TObject);
begin
  NombreCategoria.Caption := 'No Definido';
  Num_Categoria.Caption := Pad('L',Modulo.tReporter.FieldByName('Categoria').AsString,6,'0');
  If Modulo.tCategoria.Locate(Modulo.tCategoriaNumero.FieldName,
                                    Modulo.tReporter.FieldByName('Categoria').AsInteger,
                                    []) Then NombreCategoria.Caption := Modulo.tCategoriaDescripcion.Value;

  Nombre_Categoria.Caption := NombreCategoria.Caption
end;

procedure TReportsAndForms.ppHeaderBand11BeforePrint(Sender: TObject);
begin
  Status_Nota_Credito.Visible := Modulo.tNotas_CreditoStatus.Value <> _stACTIVO
end;

procedure TReportsAndForms.ppHeaderBand15BeforePrint(Sender: TObject);
begin
  Status_Recibo_Pago.Visible := Modulo.tPagos_ClientesStatus.Value <> _stACTIVO
end;

procedure TReportsAndForms.ppLabel282Print(Sender: TObject);
begin
  (Sender As TppLabel).Caption := RealNumToAlpha(Modulo.tNotas_CreditoMonto.Value)
end;

procedure TReportsAndForms.ppVariable11Calc(Sender: TObject;
  var Value: Variant);
begin
  Value := TPrecioContado.AsCurrency
end;

procedure TReportsAndForms.ppVariable3Calc(Sender: TObject; var Value: Variant);
begin
  Value := TGCostoPromedio.AsCurrency
end;

procedure TReportsAndForms.ppVariable5Calc(Sender: TObject; var Value: Variant);
begin
  Value := TGPrecioContado.AsCurrency
end;

procedure TReportsAndForms.ppVariable9Calc(Sender: TObject; var Value: Variant);
begin
  Value := TCostoPromedio.AsCurrency
end;

procedure TReportsAndForms.MESCalc(Sender: TObject; var Value: Variant);
begin
  Value := Copy(MesesAnio[Pipe_Criterio_Vencimiento.DataSource.DataSet.FieldByName('MES').AsInteger],1,3)
end;

procedure TReportsAndForms.UserPrint(Sender: TObject);
begin
  (Sender as TppLabel).Caption := Format('Impreso Por %s - %s',[_CurrentUser,_CurrentTerminal])
end;

procedure TReportsAndForms.ValorLetrasPrint(Sender: TObject);
begin
  (Sender As TppLabel).Caption := RealNumToAlpha(Modulo.tPagos_ClientesMonto.Value)
end;

procedure TReportsAndForms.Define_Print_Cost(Sender: TObject);
begin
  If Trim(PipeReportes.DataSource.DataSet.FieldByName('Metodo_Calculo_Costo').AsString) = 'Promedio' Then
    (Sender  As TppDBText).DataField := Modulo.tProductosCosto_Promedio.FieldName;

  If Trim(PipeReportes.DataSource.DataSet.FieldByName('Metodo_Calculo_Costo').AsString) = 'Estandar' Then
    (Sender  As TppDBText).DataField := Modulo.tProductosCosto_Standar.FieldName;

  If Trim(PipeReportes.DataSource.DataSet.FieldByName('Metodo_Calculo_Costo').AsString) = 'Última Compra' Then
    (Sender  As TppDBText).DataField := Modulo.tProductosUltimo_Precio_Compra.FieldName;

  Print_Costo(Sender)
end;

procedure TReportsAndForms.InvoiceTitleBandBeforePrint(Sender: TObject);
begin
  InvoiceTitleBand.Visible := Ps <> 0
end;

procedure TReportsAndForms.LogoPrint(Sender: TObject);
  Var
    LogoName : String;
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_CompanyInfoKey,False);
  LogoName := UnEncrypt(RegInfo.ReadString(_LogoName));
  Try
    (Sender As TppImage).Picture.LoadFromFile(LogoName);
  Except
    Logo.Visible := False
  End {Try}
end;

Initialization
  RegisterClass(TReportsAndForms);

end.
