unit Reports_Forms;

interface

uses
  SysUtils, Classes, Graphics, ppCtrls, ppBarCod, ppPrnabl, ppClass,
  ppCache, ppBands, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,
  ppVar, ppModule, raCodMod, ppStrtch, ppSubRpt, ppChrt, ppChrtDP,
  ppParameter, myChkBox, ppMemo;

type
  TReportsAndForms = class(TDataModule)
    PipeVencimientos: TppDBPipeline;
    PipeVencimientosppField1: TppField;
    PipeVencimientosppField2: TppField;
    PipeVencimientosppField3: TppField;
    PipeVencimientosppField4: TppField;
    PipeVencimientosppField5: TppField;
    Labels: TppReport;
    ppDetailBand1: TppDetailBand;
    Descripcion_Etiqueta: TppDBText;
    Nombre_Comp: TppLabel;
    Cod_Generado: TppDBBarCode;
    Tel_Comp: TppLabel;
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
    ppDBText3: TppDBText;
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
    ppDBText21: TppDBText;
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
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    TotalEfectivo: TppVariable;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    TotaPagadoFact: TppVariable;
    ppLine15: TppLine;
    ppSummaryBand3: TppSummaryBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLine18: TppLine;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
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
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLine19: TppLine;
    ppLabel101: TppLabel;
    ppDBText35: TppDBText;
    Pipe_Facturas: TppDBPipeline;
    ppLabel50: TppLabel;
    ppLabel58: TppLabel;
    ppLabel71: TppLabel;
    ppLabel74: TppLabel;
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
    raCodeModule1: TraCodeModule;
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
    PipeDetPagosppField1: TppField;
    PipeDetPagosppField2: TppField;
    PipeDetPagosppField3: TppField;
    PipeDetPagosppField4: TppField;
    PipeDetPagosppField5: TppField;
    PipeDetPagosppField6: TppField;
    PipeDetPagosppField7: TppField;
    PipeDetPagosppField8: TppField;
    PipeClientes: TppDBPipeline;
    PipePagos: TppDBPipeline;
    PipePagosppField1: TppField;
    PipePagosppField2: TppField;
    PipePagosppField3: TppField;
    PipePagosppField4: TppField;
    PipePagosppField5: TppField;
    PipePagosppField6: TppField;
    PipePagosppField7: TppField;
    PipePagosppField8: TppField;
    PipePagosppField9: TppField;
    ReciboPagoCliente: TppReport;
    ppTitleBand6: TppTitleBand;
    Nombre_Siglas: TppLabel;
    Direccion_Ciudad_Pais: TppLabel;
    Telefono_Fax_Rnc: TppLabel;
    ppHeaderBand6: TppHeaderBand;
    ppLabel108: TppLabel;
    ppDBText32: TppDBText;
    ppLabel109: TppLabel;
    ppLabel111: TppLabel;
    ValorLetras: TppLabel;
    ppLabel112: TppLabel;
    ppLabel115: TppLabel;
    ppDBText33: TppDBText;
    ppDBText36: TppDBText;
    ppLabel116: TppLabel;
    ppDBText37: TppDBText;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppDetailBand8: TppDetailBand;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppFooterBand6: TppFooterBand;
    ppSystemVariable11: TppSystemVariable;
    ppLabel120: TppLabel;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLabel121: TppLabel;
    ppSummaryBand4: TppSummaryBand;
    ppLabel122: TppLabel;
    ppDBText41: TppDBText;
    raCodeModule2: TraCodeModule;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
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
    raCodeModule3: TraCodeModule;
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
    ppDBText69: TppDBText;
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
    ppLabel2: TppLabel;
    ppLabel277: TppLabel;
    ppLabel278: TppLabel;
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
    ppColumnHeaderBand2: TppColumnHeaderBand;
    ppLabel289: TppLabel;
    ppLabel290: TppLabel;
    ppLabel291: TppLabel;
    ppLabel292: TppLabel;
    ppDetailBand16: TppDetailBand;
    ppDBText164: TppDBText;
    ppDBText165: TppDBText;
    ppDBText166: TppDBText;
    ppColumnFooterBand2: TppColumnFooterBand;
    ppFooterBand11: TppFooterBand;
    ppSystemVariable22: TppSystemVariable;
    ppLabel293: TppLabel;
    ppLine38: TppLine;
    ppLine48: TppLine;
    ppLabel294: TppLabel;
    ppSummaryBand7: TppSummaryBand;
    ppLabel295: TppLabel;
    ppDBText167: TppDBText;
    ppLabel296: TppLabel;
    raCodeModule4: TraCodeModule;
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
    raCodeModule5: TraCodeModule;
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
    ppField36: TppField;
    ppField37: TppField;
    ppField38: TppField;
    ppField39: TppField;
    ppField40: TppField;
    ppField41: TppField;
    ppField42: TppField;
    ppField43: TppField;
    ppField44: TppField;
    Pipe_Notas_Credito_Cliente: TppDBPipeline;
    ppField45: TppField;
    ppField46: TppField;
    ppField47: TppField;
    ppField48: TppField;
    ppField49: TppField;
    ppField50: TppField;
    ppField51: TppField;
    ppField52: TppField;
    ppField53: TppField;
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
  TGCostoPromedio.AsCurrency := TGCostoPromedio.AsCurrency + Value
end;

procedure TReportsAndForms.PrecioContadoCalc(Sender: TObject;
  var Value: Variant);
begin
  Value := Modulo.tReporter.FieldByName('Existencia').AsFloat *
           Modulo.tReporter.FieldByName('Precio_Venta_Contado').AsFloat;

  TPrecioContado.AsCurrency := TPrecioContado.AsCurrency + Value;
  TGPrecioContado.AsCurrency := TGPrecioContado.AsCurrency + Value
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
  TCostoPromedio.AsCurrency := 0;
  TPrecioContado.AsCurrency := 0
end;

procedure TReportsAndForms.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
  NombreProveedor.Caption := 'No Definido';
  If Modulo.tProveedores.Locate(Modulo.tProveedoresNumero.FieldName,
                                Modulo.tReporter.FieldByName('Proveedor_Principal').AsInteger,
                                []) Then NombreProveedor.Caption := Modulo.tProveedoresNombreCompleto.Value;

 Num_Proveedor.Caption := Pad('L',Modulo.tReporter.FieldByName('Proveedor_Principal').AsString,6,'0')
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

end.
