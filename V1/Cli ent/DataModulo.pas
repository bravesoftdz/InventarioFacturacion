unit DataModulo;

// Value >= (Precio_Minimo * Cantidad)
// El Precio de Venta no bebe ser menor al Precio Mínimo (Verifique el Precio de Venta y el Porcentaje de Descuento)

interface

uses
  SysUtils, Classes, DBClient, DB, SConnect, ImgList, Controls,
  Wwdatsrc, Variants, MConnect, ActnList, XPStyleActnCtrls, ActnMan, 
  Forms, Windows, MSNPopUp, OoMisc, AdPort, Dialogs, ActnColorMaps;

type
  TModulo = class(TDataModule)
    SystemImages: TImageList;
    Enlace: TSocketConnection;
    Concentrador: TConnectionBroker;
    tProductos: TClientDataSet;
    dProductos: TDataSource;
    tProductosCodigo: TStringField;
    tProductosBarra: TStringField;
    tProductosSecuencia: TIntegerField;
    tProductosReferencia: TStringField;
    tProductosLector_Codigo: TStringField;
    tProductosFecha_Registro: TDateField;
    tProductosDescripcion: TStringField;
    tProductosDepartamento: TIntegerField;
    tProductosCategoria: TIntegerField;
    tProductosProveedor_Principal: TIntegerField;
    tProductosTipo_Inventario: TStringField;
    tProductosTipo_Producto: TIntegerField;
    tProductosMinimo: TBCDField;
    tProductosReorden: TBCDField;
    tProductosUbicacion: TStringField;
    tProductosCuenta_Contable: TStringField;
    tProductosMetodo_Calculo_Costo: TStringField;
    tProductosUltimo_Precio_Compra: TBCDField;
    tProductosCosto_Standar: TBCDField;
    tProductosCosto_Promedio: TBCDField;
    tProductosMedida_Compra: TStringField;
    tProductosUnidades_Medida_Compra: TBCDField;
    tProductosUltima_Compra: TDateField;
    tProductosMedida_Venta: TStringField;
    tProductosUnidades_Medida_Venta: TBCDField;
    tProductosAplica_Descuento: TBooleanField;
    tProductosPrecio_Venta_Contado: TBCDField;
    tProductosPrecio_Venta_Credito: TBCDField;
    tProductosPrecio_Venta_Minimo: TBCDField;
    tProductosTipo_Beneficio: TStringField;
    tProductosValor_Beneficio_Contado: TBCDField;
    tProductosValor_Beneficio_Credito: TBCDField;
    tProductosPaga_Comision: TBooleanField;
    tProductosRequiere_Numero_Serie: TBooleanField;
    tProductosPaga_Impuesto: TBooleanField;
    tProductosRequiere_Fecha_Vencimiento: TBooleanField;
    tProductosCompradas: TBCDField;
    tProductosVendidas: TBCDField;
    tProductosEnPedidos: TBCDField;
    tProductosEnTransito: TBCDField;
    tProductosStatus: TIntegerField;
    tProductosPresentacion: TStringField;
    tProductosFabricante: TIntegerField;
    tProductosFotografia: TStringField;
    tSimilares: TClientDataSet;
    tProductosUsuario: TStringField;
    tProductosqrSimilares: TDataSetField;
    tSimilaresProducto: TStringField;
    tSimilaresSimilar: TStringField;
    dSimilares: TDataSource;
    tDepartamentos: TClientDataSet;
    dDepartamentos: TDataSource;
    tDepartamentosNumero: TIntegerField;
    tDepartamentosDescripcion: TStringField;
    tDepartamentosUsuario: TStringField;
    tCategoria: TClientDataSet;
    dCategoria: TDataSource;
    tCategoriaNumero: TIntegerField;
    tCategoriaDescripcion: TStringField;
    tCategoriaUsuario: TStringField;
    tTipos_Productos: TClientDataSet;
    dTipos_Productos: TDataSource;
    tTipos_ProductosNumero: TIntegerField;
    tTipos_ProductosDescripcion: TStringField;
    tTipos_ProductosUsuario: TStringField;
    tStatus: TClientDataSet;
    dStatus: TDataSource;
    tStatusNumero: TIntegerField;
    tStatusStatus: TStringField;
    tStatusUsuario: TStringField;
    tFabricante: TClientDataSet;
    dFabricante: TDataSource;
    tFabricanteNumero: TIntegerField;
    tFabricanteCedula_Rnc_Pasaporte: TStringField;
    tFabricanteNombre: TStringField;
    tFabricanteRepresentante: TStringField;
    tFabricanteDireccion: TStringField;
    tFabricantePais: TStringField;
    tFabricanteCiudad: TStringField;
    tFabricanteEstado: TStringField;
    tFabricanteSector: TStringField;
    tFabricanteStatus: TStringField;
    tFabricanteFecha_Registro: TDateField;
    tProveedores: TClientDataSet;
    dProveedores: TDataSource;
    tProveedoresNumero: TIntegerField;
    tProveedoresCedula_Rnc_Pasaporte: TStringField;
    tProveedoresNombre: TStringField;
    tProveedoresContacto: TStringField;
    tProveedoresTipo_Suplidor: TStringField;
    tProveedoresTipo_Telefono_1: TStringField;
    tProveedoresTipo_Telefono_2: TStringField;
    tProveedoresTipo_Telefono_3: TStringField;
    tProveedoresTipo_Telefono_4: TStringField;
    tProveedoresNumero_Telefono_1: TStringField;
    tProveedoresNumero_Telefono_2: TStringField;
    tProveedoresNumero_Telefono_3: TStringField;
    tProveedoresNumero_Telefono_4: TStringField;
    tProveedoresDireccion: TStringField;
    tProveedoresPais: TStringField;
    tProveedoresCiudad: TStringField;
    tProveedoresEstado: TStringField;
    tProveedoresSector: TStringField;
    tProveedoresLimite_Credito: TBCDField;
    tProveedoresCondicion_Suplidor: TStringField;
    tProveedoresNombreCompleto: TStringField;
    tProveedoresTerminosFacturacion: TIntegerField;
    tProveedoresNumero_Tarjeta: TStringField;
    tProveedoresNumero_Cuenta: TStringField;
    tProveedoresDescuento_Asignado: TBCDField;
    tProveedoresStatus: TStringField;
    tProveedoresFecha_Registro: TDateField;
    tProveedoresBalance_Actual: TBCDField;
    tProveedoresUltima_Factura: TIntegerField;
    tProveedoresFecha_Ultima_Factura: TDateField;
    tClientes: TClientDataSet;
    dClientes: TDataSource;
    tClientesCedula_Rnc_Pasaporte: TStringField;
    tClientesNombre: TStringField;
    tClientesApellido: TStringField;
    tClientesTipo_Cliente: TStringField;
    tClientesTipo_Telefono_1: TStringField;
    tClientesTipo_Telefono_2: TStringField;
    tClientesTipo_Telefono_3: TStringField;
    tClientesTipo_Telefono_4: TStringField;
    tClientesNumero_Telefono_1: TStringField;
    tClientesNumero_Telefono_2: TStringField;
    tClientesNumero_Telefono_3: TStringField;
    tClientesNumero_Telefono_4: TStringField;
    tClientesDireccion: TStringField;
    tClientesPais: TStringField;
    tClientesCiudad: TStringField;
    tClientesEstado: TStringField;
    tClientesSector: TStringField;
    tClientesLimite_Credito: TBCDField;
    tClientesCondicion_Cliente: TStringField;
    tClientesNombreCompleto: TStringField;
    tClientesTerminosFacturacion: TIntegerField;
    tClientesNumero_Tarjeta: TStringField;
    tClientesNumero_Cuenta: TStringField;
    tClientesDescuento_Asignado: TBCDField;
    tClientesStatus: TStringField;
    tClientesFecha_Registro: TDateField;
    tClientesBalance_Actual: TBCDField;
    tClientesUltima_Factura: TIntegerField;
    tClientesFecha_Ultima_Factura: TDateField;
    tTerminos: TClientDataSet;
    dTerminos: TDataSource;
    tTerminosNumero_Termino: TIntegerField;
    tTerminosDescripcion: TStringField;
    tTerminosFormaDeVencimiento: TStringField;
    tTerminosDiasDeGracia: TIntegerField;
    tTerminosMargenDeDias: TIntegerField;
    tProductosqrVencimientos: TDataSetField;
    tVencimientos: TClientDataSet;
    dVencimientos: TDataSource;
    tVencimientosCodigo: TStringField;
    tVencimientosMes: TSmallintField;
    tVencimientosAno: TSmallintField;
    tVencimientosCantidad: TBCDField;
    tProductosDistribuido: TFloatField;
    tSalidas_Inventario: TClientDataSet;
    dSalidas_Inventario: TDataSource;
    tDetalles_Salida: TClientDataSet;
    dDetalles_Salida: TDataSource;
    tSalidas_InventarioNumero: TIntegerField;
    tSalidas_InventarioProceso: TStringField;
    tSalidas_InventarioCliente: TStringField;
    tSalidas_InventarioNombre_Cliente: TStringField;
    tSalidas_InventarioFecha: TDateField;
    tSalidas_InventarioHora: TTimeField;
    tSalidas_InventarioConcepto_Salida: TStringField;
    tSalidas_InventarioReferencia: TStringField;
    tSalidas_InventarioTotal_Costo: TBCDField;
    tSalidas_InventarioTotal_Salida: TBCDField;
    tSalidas_InventarioComentario: TStringField;
    tSalidas_InventarioValidado: TBooleanField;
    tSalidas_InventarioFecha_Validacion: TDateField;
    tSalidas_InventarioCerrado: TBooleanField;
    tSalidas_InventarioFecha_Cierre: TDateField;
    tSalidas_InventarioUsuario: TStringField;
    tSalidas_InventarioqrDetalles_Salida: TDataSetField;
    tDetalles_SalidaProceso: TStringField;
    tDetalles_SalidaSecuencia: TIntegerField;
    tDetalles_SalidaCodigo: TStringField;
    tDetalles_SalidaDescripcion: TStringField;
    tDetalles_SalidaCategoria: TIntegerField;
    tDetalles_SalidaFabricante: TIntegerField;
    tDetalles_SalidaDepartamento: TIntegerField;
    tDetalles_SalidaTipo_Producto: TIntegerField;
    tDetalles_SalidaCosto: TBCDField;
    tDetalles_SalidaPrecio: TBCDField;
    tDetalles_SalidaCantidad: TBCDField;
    tDetalles_SalidaTotal_Costo: TBCDField;
    tDetalles_SalidaTotal_Precio: TBCDField;
    tDetalles_SalidaCliente: TStringField;
    tDetalles_SalidaFecha: TDateField;
    tDetalles_SalidaHora: TTimeField;
    tDetalles_SalidaUsuario: TStringField;
    tDetalles_SalidaMes: TSmallintField;
    tDetalles_SalidaAno: TSmallintField;
    tListadoProductos: TClientDataSet;
    dListadoProductos: TDataSource;
    tListadoProductosCodigo: TStringField;
    tListadoProductosDescripcion: TStringField;
    tListadoProductosBarra: TStringField;
    tListadoProductosPresentacion: TStringField;
    tListadoProductosReferencia: TStringField;
    tListadoProductosSecuencia: TIntegerField;
    tListadoProductosFabricante: TIntegerField;
    tListadoProductosNombre_Fabricante: TStringField;
    tVencimientosCod_Generado: TStringField;
    tProductosCod_Generado: TStringField;
    tDetalles_SalidaCodigo_Real: TStringField;
    tSalidas_InventarioTelefono_Cliente: TStringField;
    tListado_Clientes: TClientDataSet;
    dListado_Clientes: TDataSource;
    tListado_ClientesCedula_Rnc_Pasaporte: TStringField;
    tListado_ClientesNombre: TStringField;
    tListado_ClientesApellido: TStringField;
    tListado_ClientesTipo_Cliente: TStringField;
    tListado_ClientesTipo_Telefono_1: TStringField;
    tListado_ClientesTipo_Telefono_2: TStringField;
    tListado_ClientesTipo_Telefono_3: TStringField;
    tListado_ClientesTipo_Telefono_4: TStringField;
    tListado_ClientesNumero_Telefono_1: TStringField;
    tListado_ClientesNumero_Telefono_2: TStringField;
    tListado_ClientesNumero_Telefono_3: TStringField;
    tListado_ClientesNumero_Telefono_4: TStringField;
    tListado_ClientesDireccion: TStringField;
    tListado_ClientesPais: TStringField;
    tListado_ClientesCiudad: TStringField;
    tListado_ClientesEstado: TStringField;
    tListado_ClientesSector: TStringField;
    tListado_ClientesLimite_Credito: TBCDField;
    tListado_ClientesCondicion_Cliente: TStringField;
    tListado_ClientesNombreCompleto: TStringField;
    tListado_ClientesTerminosFacturacion: TIntegerField;
    tListado_ClientesNumero_Tarjeta: TStringField;
    tListado_ClientesNumero_Cuenta: TStringField;
    tListado_ClientesDescuento_Asignado: TBCDField;
    tListado_ClientesStatus: TStringField;
    tListado_ClientesFecha_Registro: TDateField;
    tListado_ClientesBalance_Actual: TBCDField;
    tListado_ClientesUltima_Factura: TIntegerField;
    tListado_ClientesFecha_Ultima_Factura: TDateField;
    tCompra_Productos: TClientDataSet;
    dCompra_Productos: TDataSource;
    tDetalles_Compra: TClientDataSet;
    dDetalles_Compra: TDataSource;
    tCompra_ProductosNumero: TIntegerField;
    tCompra_ProductosProceso: TStringField;
    tCompra_ProductosNombre_Proveedor: TStringField;
    tCompra_ProductosFecha: TDateField;
    tCompra_ProductosHora: TTimeField;
    tCompra_ProductosConcepto_Compra: TStringField;
    tCompra_ProductosReferencia: TStringField;
    tCompra_ProductosSubTotal: TBCDField;
    tCompra_ProductosTotalNeto: TBCDField;
    tCompra_ProductosComentario: TStringField;
    tCompra_ProductosFecha_Validacion: TDateField;
    tCompra_ProductosFecha_Cierre: TDateField;
    tCompra_ProductosUsuario: TStringField;
    tCompra_ProductosValidado: TBooleanField;
    tCompra_ProductosCerrado: TBooleanField;
    tCompra_ProductosImpuesto_Global: TBCDField;
    tCompra_ProductosValor_Impuesto: TBCDField;
    tCompra_ProductosValor_Impuesto_Detalle: TBCDField;
    tCompra_ProductosTotal_Impuesto: TBCDField;
    tCompra_ProductosDescuento_Global: TBCDField;
    tCompra_ProductosValor_Descuento: TBCDField;
    tCompra_ProductosValor_Descuento_Detalle: TBCDField;
    tCompra_ProductosTotal_Descuento: TBCDField;
    tCompra_ProductosTerminos: TIntegerField;
    tCompra_ProductosVencimiento: TDateField;
    tCompra_ProductosPagado: TBCDField;
    tCompra_ProductosPendiente: TBCDField;
    tCompra_ProductosUltimoPago: TDateField;
    tCompra_ProductosqrDetalles_Compra: TDataSetField;
    tDetalles_CompraProceso: TStringField;
    tDetalles_CompraCodigo: TStringField;
    tDetalles_CompraCodigo_Real: TStringField;
    tDetalles_CompraSecuencia: TIntegerField;
    tDetalles_CompraDescripcion: TStringField;
    tDetalles_CompraCategoria: TIntegerField;
    tDetalles_CompraFabricante: TIntegerField;
    tDetalles_CompraDepartamento: TIntegerField;
    tDetalles_CompraTipo_Producto: TIntegerField;
    tDetalles_CompraCosto: TBCDField;
    tDetalles_CompraPrecio_Lista: TBCDField;
    tDetalles_CompraCantidad: TBCDField;
    tDetalles_CompraTotal_Costo: TBCDField;
    tDetalles_CompraProveedor: TIntegerField;
    tDetalles_CompraFecha: TDateField;
    tDetalles_CompraHora: TTimeField;
    tDetalles_CompraUsuario: TStringField;
    tDetalles_CompraMes: TSmallintField;
    tDetalles_CompraAno: TSmallintField;
    tDetalles_CompraImpuesto: TBCDField;
    tDetalles_CompraDescuento: TBCDField;
    tDetalles_CompraValor_Impuesto: TBCDField;
    tDetalles_CompraValor_Descuento: TBCDField;
    tDetalles_CompraTotal_Impuesto: TBCDField;
    tDetalles_CompraTotal_Descuento: TBCDField;
    tCompra_ProductosProveedor: TIntegerField;
    tDetalles_CompraCod_Generado: TStringField;
    tFacturas: TClientDataSet;
    dFacturas: TDataSource;
    tDetalles_Factura: TClientDataSet;
    dDetalles_Factura: TDataSource;
    tFacturasNumero: TIntegerField;
    tFacturasProceso: TStringField;
    tFacturasNombre_Cliente: TStringField;
    tFacturasFecha: TDateField;
    tFacturasHora: TTimeField;
    tFacturasConcepto_Factura: TStringField;
    tFacturasReferencia: TStringField;
    tFacturasSubTotal: TBCDField;
    tFacturasTotalNeto: TBCDField;
    tFacturasComentario: TStringField;
    tFacturasFecha_Validacion: TDateField;
    tFacturasFecha_Cierre: TDateField;
    tFacturasUsuario: TStringField;
    tFacturasValidado: TBooleanField;
    tFacturasCerrado: TBooleanField;
    tFacturasImpuesto_Global: TBCDField;
    tFacturasValor_Impuesto: TBCDField;
    tFacturasValor_Impuesto_Detalle: TBCDField;
    tFacturasTotal_Impuesto: TBCDField;
    tFacturasDescuento_Global: TBCDField;
    tFacturasValor_Descuento: TBCDField;
    tFacturasValor_Descuento_Detalle: TBCDField;
    tFacturasTotal_Descuento: TBCDField;
    tFacturasTerminos: TIntegerField;
    tFacturasVencimiento: TDateField;
    tFacturasPagado: TBCDField;
    tFacturasPendiente: TBCDField;
    tFacturasUltimoPago: TDateField;
    tFacturasTotal_Efectivo_Recibido: TBCDField;
    tFacturasTotal_Efectivo_Devuelto: TBCDField;
    tFacturasqrDetalle_Pago_Factura: TDataSetField;
    tFacturasqrDetalles_Factura: TDataSetField;
    tDetalles_FacturaProceso: TStringField;
    tDetalles_FacturaCodigo: TStringField;
    tDetalles_FacturaCodigo_Real: TStringField;
    tDetalles_FacturaSecuencia: TIntegerField;
    tDetalles_FacturaDescripcion: TStringField;
    tDetalles_FacturaCategoria: TIntegerField;
    tDetalles_FacturaFabricante: TIntegerField;
    tDetalles_FacturaDepartamento: TIntegerField;
    tDetalles_FacturaTipo_Producto: TIntegerField;
    tDetalles_FacturaCosto: TBCDField;
    tDetalles_FacturaPrecio_Real: TBCDField;
    tDetalles_FacturaPrecio_Venta: TBCDField;
    tDetalles_FacturaCantidad: TBCDField;
    tDetalles_FacturaTotal_Costo: TBCDField;
    tDetalles_FacturaTotal_Precio: TBCDField;
    tDetalles_FacturaFecha: TDateField;
    tDetalles_FacturaHora: TTimeField;
    tDetalles_FacturaUsuario: TStringField;
    tDetalles_FacturaMes: TSmallintField;
    tDetalles_FacturaAno: TSmallintField;
    tDetalles_FacturaCliente: TStringField;
    tDetalles_FacturaImpuesto: TBCDField;
    tDetalles_FacturaDescuento: TBCDField;
    tDetalles_FacturaValor_Impuesto: TBCDField;
    tDetalles_FacturaValor_Descuento: TBCDField;
    tDetalles_FacturaTotal_Impuesto: TBCDField;
    tDetalles_FacturaTotal_Descuento: TBCDField;
    tDetalle_Pago_Factura: TClientDataSet;
    dDetalle_Pago_Factura: TDataSource;
    tDetalle_Pago_FacturaProceso: TStringField;
    tDetalle_Pago_FacturaForma_Pago: TIntegerField;
    tDetalle_Pago_FacturaFecha: TDateField;
    tDetalle_Pago_FacturaHora: TTimeField;
    tDetalle_Pago_FacturaTasa: TBCDField;
    tDetalle_Pago_FacturaValor_Recibido: TBCDField;
    tDetalle_Pago_FacturaValor_Recibido_Local: TBCDField;
    tDetalle_Pago_FacturaValor_Devolver: TBCDField;
    tDetalle_Pago_FacturaValor_Devolver_Local: TBCDField;
    tDetalle_Pago_FacturaNumero_Documento: TStringField;
    tDetalle_Pago_FacturaMes_Vencimiento: TSmallintField;
    tDetalle_Pago_FacturaAno_Vencimiento: TSmallintField;
    tDetalle_Pago_FacturaTipo_Documento: TStringField;
    tDetalle_Pago_FacturaEs_Efectivo: TBooleanField;
    tDetalle_Pago_FacturaRequiere_Documento: TBooleanField;
    tDetalle_Pago_FacturaRequiere_Vencimiento: TBooleanField;
    tFormas_Pago: TClientDataSet;
    dFormas_Pago: TDataSource;
    tFormas_PagoNumero: TIntegerField;
    tFormas_PagoDescripcion: TStringField;
    tFormas_PagoTasa: TBCDField;
    tFormas_PagoRequiere_Documento: TBooleanField;
    tFormas_PagoRequiere_Vencimiento: TBooleanField;
    tFormas_PagoFecha: TDateField;
    tFormas_PagoUsuario: TStringField;
    tFormas_PagoEs_Efectivo: TBooleanField;
    tFormas_PagoRequiere_Aprobacion: TBooleanField;
    tFacturasCliente: TStringField;
    tDetalle_Pago_FacturaNombre_Forma_Pago: TStringField;
    tDetalle_Pago_FacturaTotal_Forma_Pago: TCurrencyField;
    tFacturasCondicion: TStringField;
    tParametros: TClientDataSet;
    dParametros: TDataSource;
    tParametrosTerminal: TStringField;
    tParametrosImpuesto: TBCDField;
    tParametrosTermino_COD: TIntegerField;
    tParametrosDescuento: TBCDField;
    tParametrosCondicion_Facturacion: TStringField;
    tDetalle_Pago_FacturaDevolver_Forma_Pago: TCurrencyField;
    tBancos: TClientDataSet;
    dBancos: TDataSource;
    tBancosNumero: TIntegerField;
    tBancosNombre: TStringField;
    tBancosDireccion: TStringField;
    tBancosTelefono: TStringField;
    tBancosmail: TStringField;
    tProveedoresmail: TStringField;
    tClientesmail: TStringField;
    tDetalle_Pago_FacturaNumero_Aprobacion: TStringField;
    tDetalle_Pago_FacturaNumero_Banco: TIntegerField;
    tDetalle_Pago_FacturaNombre_Banco: TStringField;
    tDetalle_Pago_FacturaRequiere_Aprobacion: TBooleanField;
    tReporter: TClientDataSet;
    dReporter: TDataSource;
    tVencimientos_Categoria: TClientDataSet;
    dVencimientos_Categoria: TDataSource;
    tVencimientos_Codigo: TClientDataSet;
    dVencimientos_Codigo: TDataSource;
    tVencimientos_Departamento: TClientDataSet;
    dVencimientos_Departamento: TDataSource;
    tVencimientos_Fabricante: TClientDataSet;
    dVencimientos_Fabricante: TDataSource;
    tVencimientos_Fecha: TClientDataSet;
    dVencimientos_Fecha: TDataSource;
    tVencimientos_Proveedor: TClientDataSet;
    dVencimientos_Proveedor: TDataSource;
    tVencimientos_Todos: TClientDataSet;
    dVencimientos_Todos: TDataSource;
    tVencimientos_CategoriaCODIGO: TStringField;
    tVencimientos_CategoriaMES: TSmallintField;
    tVencimientos_CategoriaANO: TSmallintField;
    tVencimientos_CategoriaCANTIDAD: TBCDField;
    tVencimientos_CategoriaDESCRIPCION: TStringField;
    tVencimientos_CodigoCODIGO: TStringField;
    tVencimientos_CodigoMES: TSmallintField;
    tVencimientos_CodigoANO: TSmallintField;
    tVencimientos_CodigoCANTIDAD: TBCDField;
    tVencimientos_CodigoDESCRIPCION: TStringField;
    tVencimientos_FabricanteCODIGO: TStringField;
    tVencimientos_FabricanteMES: TSmallintField;
    tVencimientos_FabricanteANO: TSmallintField;
    tVencimientos_FabricanteCANTIDAD: TBCDField;
    tVencimientos_FabricanteDESCRIPCION: TStringField;
    tVencimientos_DepartamentoCODIGO: TStringField;
    tVencimientos_DepartamentoMES: TSmallintField;
    tVencimientos_DepartamentoANO: TSmallintField;
    tVencimientos_DepartamentoCANTIDAD: TBCDField;
    tVencimientos_DepartamentoDESCRIPCION: TStringField;
    tVencimientos_FechaCODIGO: TStringField;
    tVencimientos_FechaMES: TSmallintField;
    tVencimientos_FechaANO: TSmallintField;
    tVencimientos_FechaCANTIDAD: TBCDField;
    tVencimientos_FechaDESCRIPCION: TStringField;
    tVencimientos_ProveedorCODIGO: TStringField;
    tVencimientos_ProveedorMES: TSmallintField;
    tVencimientos_ProveedorANO: TSmallintField;
    tVencimientos_ProveedorCANTIDAD: TBCDField;
    tVencimientos_ProveedorDESCRIPCION: TStringField;
    tVencimientos_TodosCODIGO: TStringField;
    tVencimientos_TodosMES: TSmallintField;
    tVencimientos_TodosANO: TSmallintField;
    tVencimientos_TodosCANTIDAD: TBCDField;
    tVencimientos_TodosDESCRIPCION: TStringField;
    tComponentes: TClientDataSet;
    dComponentes: TDataSource;
    tProductosqrComponentes: TDataSetField;
    tComponentesCodigo: TStringField;
    tComponentesCodigo_Componente: TStringField;
    tComponentesCantidad: TBCDField;
    tComponentesDescripcion_Componente: TStringField;
    tUsuarios: TClientDataSet;
    dUsuarios: TDataSource;
    tUsuariosNickName: TStringField;
    tUsuariosNombreCompleto: TStringField;
    tUsuariosPassword: TStringField;
    tUsuariosNivel_Acceso: TStringField;
    tNiveles: TClientDataSet;
    dNiveles: TDataSource;
    tNivelesCodigo: TStringField;
    tNivelesDescripcion: TStringField;
    tNivelesFecha: TDateField;
    tOpciones: TClientDataSet;
    dOpciones: TDataSource;
    tOpcionesForm: TStringField;
    tOpcionesOpcion: TStringField;
    tOpcionesDescripcion: TStringField;
    tOpcionesTipo: TStringField;
    tAccesos: TClientDataSet;
    dAccesos: TDataSource;
    tAccesosNivel: TStringField;
    tAccesosForm: TStringField;
    tAccesosOpcion: TStringField;
    tAccesosDescripcion_Form: TStringField;
    dCuadre_Caja: TDataSource;
    tCuadre_Caja: TClientDataSet;
    tDetalle_Cuadre: TClientDataSet;
    dDetalle_Cuadre: TDataSource;
    tCuadre_CajaNumero_Cuadre: TIntegerField;
    tCuadre_CajaProceso: TStringField;
    tCuadre_CajaFecha: TDateField;
    tCuadre_CajaHora: TTimeField;
    tCuadre_CajaUsuario: TStringField;
    tCuadre_CajaSupervisor: TStringField;
    tCuadre_CajaTotal_Vendido: TBCDField;
    tCuadre_CajaFondo_Caja: TBCDField;
    tCuadre_CajaTotal_Retiros: TBCDField;
    tCuadre_CajaqrDetalle_Cuadre: TDataSetField;
    tDetalle_CuadreProceso: TStringField;
    tDetalle_CuadreMoneda: TStringField;
    tDetalle_CuadreDenominacion: TBCDField;
    tDetalle_CuadreCantidad: TIntegerField;
    tDetalle_CuadreTotal: TBCDField;
    tCuadre_CajaTotal_Efectivo: TBCDField;
    tCuadre_CajaTotal_NoEfectivo: TBCDField;
    tDenominaciones_Moneda: TClientDataSet;
    dDenominaciones: TDataSource;
    tDenominaciones_MonedaMoneda: TStringField;
    tDenominaciones_MonedaDenominacion: TBCDField;
    tRetiros_Caja: TClientDataSet;
    dRetiros_Caja: TDataSource;
    tRetiros_CajaNumero: TIntegerField;
    tRetiros_CajaFecha: TDateField;
    tRetiros_CajaHora: TTimeField;
    tRetiros_CajaUsuario: TStringField;
    tRetiros_CajaMonto: TBCDField;
    tRetiros_CajaNumero_Factura: TStringField;
    tRetiros_CajaNombre_Establecimiento: TStringField;
    tCuadre_CajaDiferencia: TCurrencyField;
    tApertura_Caja: TClientDataSet;
    dApertura_Caja: TDataSource;
    tApertura_CajaNumero: TIntegerField;
    tApertura_CajaUsuario: TStringField;
    tApertura_CajaFecha: TDateField;
    tApertura_CajaHora: TTimeField;
    tApertura_CajaMonto: TBCDField;
    tApertura_CajaRetirado: TBCDField;
    tApertura_CajaBalance: TBCDField;
    tApertura_CajaAbierto: TBooleanField;
    tFacturas_Cliente: TClientDataSet;
    dFacturas_Cliente: TDataSource;
    tPagos_Clientes: TClientDataSet;
    dPagos_Clientes: TDataSource;
    tDetalle_Pago_Clientes: TClientDataSet;
    dDetalle_Pago_Clientes: TDataSource;
    tFacturas_ClienteNumero: TIntegerField;
    tFacturas_ClienteNombre_Cliente: TStringField;
    tFacturas_ClienteCondicion: TStringField;
    tFacturas_ClienteFecha: TDateField;
    tFacturas_ClienteHora: TTimeField;
    tFacturas_ClienteConcepto_Factura: TStringField;
    tFacturas_ClienteProceso: TStringField;
    tFacturas_ClienteReferencia: TStringField;
    tFacturas_ClienteSubTotal: TBCDField;
    tFacturas_ClienteTotalNeto: TBCDField;
    tFacturas_ClienteComentario: TStringField;
    tFacturas_ClienteFecha_Validacion: TDateField;
    tFacturas_ClienteFecha_Cierre: TDateField;
    tFacturas_ClienteUsuario: TStringField;
    tFacturas_ClienteValidado: TBooleanField;
    tFacturas_ClienteCerrado: TBooleanField;
    tFacturas_ClienteImpuesto_Global: TBCDField;
    tFacturas_ClienteValor_Impuesto: TBCDField;
    tFacturas_ClienteValor_Impuesto_Detalle: TBCDField;
    tFacturas_ClienteTotal_Impuesto: TBCDField;
    tFacturas_ClienteDescuento_Global: TBCDField;
    tFacturas_ClienteValor_Descuento: TBCDField;
    tFacturas_ClienteValor_Descuento_Detalle: TBCDField;
    tFacturas_ClienteTotal_Descuento: TBCDField;
    tFacturas_ClienteTerminos: TIntegerField;
    tFacturas_ClienteVencimiento: TDateField;
    tFacturas_ClientePagado: TBCDField;
    tFacturas_ClientePendiente: TBCDField;
    tFacturas_ClienteUltimoPago: TDateField;
    tFacturas_ClienteCliente: TStringField;
    tFacturas_ClienteTotal_Efectivo_Recibido: TBCDField;
    tFacturas_ClienteTotal_Efectivo_Devuelto: TBCDField;
    tFacturas_ClienteStatus: TStringField;
    tPagos_ClientesNumero_Pago: TIntegerField;
    tPagos_ClientesFecha: TDateField;
    tPagos_ClientesHora: TTimeField;
    tPagos_ClientesMonto: TBCDField;
    tPagos_ClientesProceso: TStringField;
    tPagos_ClientesConcepto: TStringField;
    tPagos_ClientesUsuario: TStringField;
    tPagos_ClientesqrDetalle_Pago_Facturas: TDataSetField;
    tDetalle_Pago_ClientesProceso: TStringField;
    tDetalle_Pago_ClientesFecha: TDateField;
    tDetalle_Pago_ClientesHora: TTimeField;
    tDetalle_Pago_ClientesMonto: TBCDField;
    tDetalle_Pago_ClientesProceso_Factura: TStringField;
    tDetalle_Pago_ClientesPendiente_Factura: TBCDField;
    tPagos_ClientesCliente: TStringField;
    tDetalle_Pago_ClientesCliente: TStringField;
    tDetalle_Pago_ClientesNumero_Factura: TIntegerField;
    tListadoProductosDepartamento: TIntegerField;
    tListadoUsuarios: TClientDataSet;
    dListadoUsuarios: TDataSource;
    tListadoUsuariosNickName: TStringField;
    tListadoUsuariosNombreCompleto: TStringField;
    tListadoUsuariosNivel_Acceso: TStringField;
    tListadoUsuariosPassword: TStringField;
    tFacturasStatus: TStringField;
    tFacturasTotal_Costo: TBCDField;
    tProductosDevuelto_Compras: TBCDField;
    tProductosNumero_Ultima_Compra: TIntegerField;
    tProductosDevuelto_Ventas: TBCDField;
    tProductosUltima_Venta: TDateField;
    tProductosNumero_Ultima_Factura: TIntegerField;
    tProductosDespachadas: TBCDField;
    tProductosUltima_Salida: TDateField;
    tProductosNumero_Ultima_Salida: TIntegerField;
    tProductosDevuelto_Despacho: TBCDField;
    tProductosExistencia: TBCDField;
    tListadoProductosExistencia: TBCDField;
    tProductosEditar_Existencia: TBooleanField;
    tExistenciaInicial: TClientDataSet;
    dExistenciaInicial: TDataSource;
    tExistenciaInicialProceso: TStringField;
    tExistenciaInicialCodigo: TStringField;
    tExistenciaInicialCodigo_Real: TStringField;
    tExistenciaInicialSecuencia: TIntegerField;
    tExistenciaInicialDescripcion: TStringField;
    tExistenciaInicialCategoria: TIntegerField;
    tExistenciaInicialFabricante: TIntegerField;
    tExistenciaInicialDepartamento: TIntegerField;
    tExistenciaInicialTipo_Producto: TIntegerField;
    tExistenciaInicialCosto: TBCDField;
    tExistenciaInicialPrecio_Lista: TBCDField;
    tExistenciaInicialCantidad: TBCDField;
    tExistenciaInicialTotal_Costo: TBCDField;
    tExistenciaInicialProveedor: TIntegerField;
    tExistenciaInicialFecha: TDateField;
    tExistenciaInicialHora: TTimeField;
    tExistenciaInicialUsuario: TStringField;
    tExistenciaInicialMes: TSmallintField;
    tExistenciaInicialAno: TSmallintField;
    tExistenciaInicialImpuesto: TBCDField;
    tExistenciaInicialDescuento: TBCDField;
    tExistenciaInicialValor_Impuesto: TBCDField;
    tExistenciaInicialValor_Descuento: TBCDField;
    tExistenciaInicialTotal_Impuesto: TBCDField;
    tExistenciaInicialTotal_Descuento: TBCDField;
    tExistenciaInicialTotal_Precio: TBCDField;
    tExistenciaInicialCantidad_Devuelto: TBCDField;
    tDetalles_CompraTotal_Precio: TBCDField;
    tDetalles_CompraCantidad_Devuelto: TBCDField;
    tListadoProductosCosto_Promedio: TBCDField;
    tListadoProductosCosto_Standar: TBCDField;
    tListadoProductosCompradas: TBCDField;
    tListadoProductosDespachadas: TBCDField;
    tListadoProductosMedida_Compra: TStringField;
    tListadoProductosMedida_Venta: TStringField;
    tListadoProductosPrecio_Venta_Contado: TBCDField;
    tListadoProductosPrecio_Venta_Credito: TBCDField;
    tListadoProductosPrecio_Venta_Minimo: TBCDField;
    tListadoProductosUbicacion: TStringField;
    tListadoProductosUltimo_Precio_Compra: TBCDField;
    tListadoProductosUnidades_Medida_Compra: TBCDField;
    tListadoProductosUnidades_Medida_Venta: TBCDField;
    tListadoProductosValor_Beneficio_Contado: TBCDField;
    tListadoProductosValor_Beneficio_Credito: TBCDField;
    tListadoProductosVendidas: TBCDField;
    tListadoProductosTipo_Beneficio: TStringField;
    tListadoProductosTipo_Inventario: TStringField;
    tDetalles_FacturaPrecio_Minimo: TBCDField;
    tDetalles_FacturaCantidad_Devuelto: TBCDField;
    SerialPort: TApdComPort;
    ColorConfig: TXPColorMap;
    tDesgloceEfectivo: TClientDataSet;
    dDesgloceEfectivo: TDataSource;
    tListadoPagos: TClientDataSet;
    dListadoPagos: TDataSource;
    tDesgloceEfectivoForma_Pago: TIntegerField;
    tDesgloceEfectivoTOTAL_RECIBIDO: TBCDField;
    tDesgloceEfectivoTOTAL_DEVUELTO: TBCDField;
    tDesgloceEfectivoDiferencia: TCurrencyField;
    tDesgloceEfectivoNombre_Forma_Pago: TStringField;
    tListadoPagosNumero_Pago: TIntegerField;
    tListadoPagosCliente: TStringField;
    tListadoPagosFecha: TDateField;
    tListadoPagosHora: TTimeField;
    tListadoPagosMonto: TBCDField;
    tListadoPagosProceso: TStringField;
    tListadoPagosConcepto: TStringField;
    tListadoPagosUsuario: TStringField;
    tProductosPrecio_Venta_Por_Mayor_Contado: TBCDField;
    tProductosPrecio_Venta_Por_Mayor_Credito: TBCDField;
    tProductosNombre: TStringField;
    tProductosMarca: TStringField;
    tProductosColor: TStringField;
    tProductosModelo: TStringField;
    tProductosOrientacion: TStringField;
    tProductosPosicion: TStringField;
    tProductosAno: TSmallintField;
    tDetalles_CompraTipo_Beneficio: TStringField;
    tDetalles_CompraValor_Beneficio_PMayor_Contado: TBCDField;
    tDetalles_CompraValor_Beneficio_PMayor_Credito: TBCDField;
    tDetalles_CompraValor_Beneficio_Detalle_Contado: TBCDField;
    tDetalles_CompraValor_Beneficio_Detalle_Credito: TBCDField;
    tDetalles_CompraPrecio_Venta_Por_Mayor_Contado: TBCDField;
    tDetalles_CompraPrecio_Venta_Por_Mayor_Credito: TBCDField;
    tDetalles_CompraPrecio_Venta_Detalle_Contado: TBCDField;
    tDetalles_CompraPrecio_Venta_Detalle_Credito: TBCDField;
    tDetalles_CompraPrecio_Minimo: TBCDField;
    tFacturasTipo_Factura: TStringField;
    tProductosNombre_Fabricante: TStringField;
    tProductosNombre_Departamento: TStringField;
    tProductosDescripcion_Status: TStringField;
    tProductosNombre_Tipo_Producto: TStringField;
    tDetalles_FacturaTipo_Precio: TStringField;
    tDetalles_CompraContenido: TBCDField;
    tDetalles_FacturaContenido: TBCDField;
    tDetalles_CompraReferencia: TStringField;
    tDetalles_FacturaReferencia: TStringField;
    tDetalles_SalidaReferencia: TStringField;
    tExistenciaInicialTipo_Beneficio: TStringField;
    tExistenciaInicialValor_Beneficio_PMayor_Contado: TBCDField;
    tExistenciaInicialValor_Beneficio_PMayor_Credito: TBCDField;
    tExistenciaInicialValor_Beneficio_Detalle_Contado: TBCDField;
    tExistenciaInicialValor_Beneficio_Detalle_Credito: TBCDField;
    tExistenciaInicialPrecio_Venta_Por_Mayor_Contado: TBCDField;
    tExistenciaInicialPrecio_Venta_Por_Mayor_Credito: TBCDField;
    tExistenciaInicialPrecio_Venta_Detalle_Contado: TBCDField;
    tExistenciaInicialPrecio_Venta_Detalle_Credito: TBCDField;
    tExistenciaInicialPrecio_Minimo: TBCDField;
    tExistenciaInicialContenido: TBCDField;
    tProductosProceso: TStringField;
    Mensajes: TMSNPopUp;
    tNotas_Credito: TClientDataSet;
    dNotas_Credito: TDataSource;
    tNotas_CreditoNumero_Nota: TIntegerField;
    tNotas_CreditoCliente: TStringField;
    tNotas_CreditoFecha: TDateField;
    tNotas_CreditoHora: TTimeField;
    tNotas_CreditoMonto: TBCDField;
    tNotas_CreditoProceso: TStringField;
    tNotas_CreditoConcepto: TStringField;
    tNotas_CreditoUsuario: TStringField;
    tNotas_CreditoqrDetalle_Notas_Credito: TDataSetField;
    tDetalle_Notas_Credito: TClientDataSet;
    dDetalle_Notas_Credito: TDataSource;
    tDetalle_Notas_CreditoProceso: TStringField;
    tDetalle_Notas_CreditoFecha: TDateField;
    tDetalle_Notas_CreditoHora: TTimeField;
    tDetalle_Notas_CreditoMonto: TBCDField;
    tDetalle_Notas_CreditoProceso_Factura: TStringField;
    tDetalle_Notas_CreditoPendiente_Factura: TBCDField;
    tDetalle_Notas_CreditoCliente: TStringField;
    tDetalle_Notas_CreditoNumero_Factura: TIntegerField;
    tClientesSecuencia: TIntegerField;
    tClientesProceso: TStringField;
    tListado_Clientesmail: TStringField;
    tListado_ClientesSecuencia: TIntegerField;
    tListado_ClientesProceso: TStringField;
    tListado_ClientesFoto: TBlobField;
    tClientesFoto: TBlobField;
    tParametrosDEMO: TBooleanField;
    tParametrosTIME: TSmallintField;
    tParametrosCOUNTER: TSmallintField;
    tParametrosDATECOUNT: TDateField;
    tParametrosCount_Day: TSmallintField;
    procedure tDetalles_CompraValor_Beneficio_Detalle_ContadoValidate(
      Sender: TField);
    procedure tDetalles_CompraValor_Beneficio_PMayor_ContadoValidate(
      Sender: TField);
    procedure Calcular_Beneficio_Inicial(Sender: TField);
    procedure Calcular_Beneficio_Compras(
      Sender: TField);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataSetReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure tDetalles_SalidaCodigoValidate(Sender: TField);
    procedure CalculoTotales(Sender: TField);
    procedure ActualizarDetallesSalida(DataSet: TDataSet);
    procedure tVencimientosCalcFields(DataSet: TDataSet);
    procedure tProductosCalcFields(DataSet: TDataSet);
    procedure ActualizarDetallleCompras(DataSet: TDataSet);
    procedure tDetalles_CompraBeforePost(DataSet: TDataSet);
    procedure tDetalles_CompraCodigoValidate(Sender: TField);
    procedure Calculo_Totales_Detalle_Compra(Sender: TField);
    procedure Calculo_Totales_Compra(Sender: TField);
    procedure tCompra_ProductosTerminosValidate(Sender: TField);
    procedure tDetalles_CompraCalcFields(DataSet: TDataSet);
    procedure Calculo_Totales_Factura(Sender: TField);
    procedure tFacturasTerminosValidate(Sender: TField);
    procedure ActualizarDetallesFactura(DataSet: TDataSet);
    procedure tDetalles_FacturaBeforePost(DataSet: TDataSet);
    procedure tDetalles_FacturaCodigoValidate(Sender: TField);
    procedure Calculo_Totales_Detalle_Factura(Sender: TField);
    procedure Calculo_Totales_Forma_Pago(Sender: TField);
    procedure tDetalle_Pago_FacturaCalcFields(DataSet: TDataSet);
    procedure tDetalle_Pago_FacturaAfterPost(DataSet: TDataSet);
    procedure tDetalle_Pago_FacturaBeforePost(DataSet: TDataSet);
    procedure tFacturasBeforePost(DataSet: TDataSet);
    procedure tNivelesAfterScroll(DataSet: TDataSet);
    procedure tNivelesAfterDelete(DataSet: TDataSet);
    procedure tFacturasAfterInsert(DataSet: TDataSet);
    procedure tCuadre_CajaCalcFields(DataSet: TDataSet);
    procedure tDetalle_CuadreAfterPost(DataSet: TDataSet);
    procedure CalcularTotalMoneda(Sender: TField);
    procedure tCuadre_CajaAfterInsert(DataSet: TDataSet);
    procedure tRetiros_CajaBeforeEdit(DataSet: TDataSet);
    procedure BalanceCaja(Sender: TField);
    procedure tRetiros_CajaBeforePost(DataSet: TDataSet);
    procedure tDetalles_SalidaBeforePost(DataSet: TDataSet);
    procedure tExistenciaInicialBeforePost(DataSet: TDataSet);
    procedure tExistenciaInicialCodigoValidate(Sender: TField);
    procedure Calculo_Totales_ExistenciaInicial(Sender: TField);
    procedure tDesgloceEfectivoCalcFields(DataSet: TDataSet);
    procedure Generar_Descripcion(Sender: TField);
    procedure Calcular_Beneficio_Productos(Sender: TField);
    procedure tDetalles_FacturaTipo_PrecioValidate(Sender: TField);
  private
    { Private declarations }
{    Function ActualizarExistencia(Const Codigo_Producto : String;
                                  Const Tipo_Producto: String;
                                  Const Cantidad_Actualizar : Double) : Double;}
  public
    { Public declarations }
    Procedure ImpresionTexto (Const OutDevice, Sorteo : String; Const Fecha : TDate; Const Terminal : Boolean);
    Function ContarDistribucionVencimiento : Double;
  end;

var
  Modulo: TModulo;
  Porcentaje_Global_Impuesto  : Double = 0;
  Porcentaje_Global_Descuento : Double = 0;
  _Recalcular_Beneficios      : Boolean = True; 

implementation

uses Utilidades, ErrorHandle, Registry, DateUtils, Productos,
  DetalledePagos, Establecer_Precios_Ventas, PrintShow;

{$R *.dfm}

{Function TModulo.ActualizarExistencia(Const Codigo_Producto : String;
                                      Const Tipo_Producto: String;
                                      Const Cantidad_Actualizar : Double) : Double;
  Begin
 // 28/02/2006 IMGP
 // Esta seccion está ignorada debido a que se modifico el metodos de manejo de existencia
 // Ahora lo hace la Base de Datos a partir de las compras y las ventas
{    Result := -1;
    If Trim(Tipo_Producto) = _InventarioNormal Then
      Begin
        tListadoProductos.Locate('Codigo',Codigo_Producto,[]);
        If (tListadoProductosExistencia.Value + Cantidad_Actualizar) < 0 Then
          Begin
            Result := tListadoProductosExistencia.Value;
            Exit;
          End;

        tListadoProductos.Locate('Codigo',Codigo_Producto,[]);
        If (tListadoProductosExistencia.Value + Cantidad_Actualizar) < 0 Then
          Begin
            Result := tListadoProductosExistencia.Value;
            Exit;
          End;

        If Not(tListadoProductos.State In DsEditModes) Then tListadoProductos.Edit;

        tListadoProductosExistencia.Value := tListadoProductosExistencia.Value + Cantidad_Actualizar;

        If Modulo.tListadoProductos.State In DsEditModes Then Modulo.tListadoProductos.Post;
      End; {If Trim(Tipo_Producto) = _InventarioNormal}

{    If Trim(Tipo_Producto) = _InventarioCompuesto Then
      Begin
        tComponentes.First;
        While Not tComponentes.Eof Do
          Begin
            tListadoProductos.Locate('Codigo',Trim(tComponentesCodigo_Componente.Value),[]);

            If Not(tListadoProductos.State In DsEditModes) Then tListadoProductos.Edit;
            tListadoProductosExistencia.Value := tListadoProductosExistencia.Value - tComponentesCantidad.Value;

            Modulo.tListadoProductos.Post;
            tComponentes.Next
          End; {While}
 {     End; {If Trim(Tipo_Producto) = _InventarioCompuesto}
 {  Result := 0
  End;}

Function TModulo.ContarDistribucionVencimiento : Double;
  Var
    Total : Double;
begin
  Total := 0;
  tVencimientos.DisableControls;
  tVencimientos.First;
  While Not tVencimientos.Eof Do
    Begin
      Total := Total + tVencimientosCantidad.Value;
      tVencimientos.Next
    End;
  Result := Total;
  tVencimientos.EnableControls
End;

procedure TModulo.DataModuleCreate(Sender: TObject);
begin
  {Cerrar La Conección (Si es necesario)}
  If Enlace.Connected Then Enlace.Close;

  {Formato de Fecha, Hora y Moneda}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,_AutoConfig);

  ShortDateFormat  := RegInfo.ReadString(_ShortDateFormat);
  LongDateFormat   := RegInfo.ReadString(_LongDateTimeFormat);
  CurrencyString   := RegInfo.ReadString(_CurrencyString);
  ShortTimeFormat  := RegInfo.ReadString(_ShortTimeFormat);
  LongTimeFormat   := RegInfo.ReadString(_LongTimeFormat);
  _CurrentTerminal := UnEncrypt(RegInfo.ReadString(_TerminalName));
  // TODO 1 -cAutenticacion de USUARIOS -oIMGP : Añadir Información del Usuario

  {Configuracion de la Conexion}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_DataRouteKey,_AutoConfig);
  Enlace.Host       := UnEncrypt(RegInfo.ReadString(_ConectionURL));
  Enlace.ServerName := UnEncrypt(RegInfo.ReadString(_ConectionServerPath));

  {Activar la Coneccion}
  Enlace.Open;
  Try
    Modulo.SerialPort.Open := True;
    Modulo.SerialPort.OutPut := 'ATZ'^M;
  Except
    Mensajes.Text := 'El Puerto COM' + IntToStr(SerialPort.ComNumber) + ' Esta Siendo Utilizado por Otra Aplicación Se Ha Desabilitado La Comunicación con Dicho Puerto';
    Mensajes.ShowPopUp
  end;

  tParametros.Params.ParamByName('Terminal').AsString := '001';
  tParametros.Open;
  If tParametrosDEMO.Value Then
    Begin
    tParametros.Edit;
    tParametrosCount_Day.Value := tParametrosCount_Day.Value + 1;
      If (tParametrosDATECOUNT.Value <> Enlace.AppServer.ServerDate) Or (tParametrosCount_Day.Value > 5) Then
        Begin
          tParametrosCOUNTER.Value := tParametrosCOUNTER.Value + 1;
          tParametrosDATECOUNT.Value := Enlace.AppServer.ServerDate;
          tParametrosCount_Day.Value := 0;
        end;
      tParametros.Post;
      tParametros.ApplyUpdates(0);
      If tParametrosCOUNTER.Value >= tParametrosTIME.Value Then
        Begin
          Mensaje('DEMO EXIRADO');
          Application.Terminate
        end;
    end;
    tParametros.Close;
  // TODO 1 -cConexion al Servidor -oIMGP : Verificar si se puede mantener la conexion desactivada y que los datasets llamen cuando deseen informacion

end;

Procedure TModulo.ImpresionTexto (Const OutDevice, Sorteo : String; Const Fecha : TDate; Const Terminal : Boolean);
begin
End;

procedure TModulo.DataSetReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet,UpdateKind, E);
  DataSet.Cancel
end;

procedure TModulo.tDetalles_SalidaCodigoValidate(Sender: TField);
  Var
    Secuencia : LongInt;
    Mes, Anio : Word;
    Name      : String;

begin
  Name := '';
  Try
    Mes := StrToInt(Copy(tDetalles_SalidaCodigo.Value,7,2));
    Anio := StrToInt(Copy(tDetalles_SalidaCodigo.Value,9,4));
    Secuencia := StrToInt(Copy(tDetalles_SalidaCodigo.Value,1,6));
  Except
    Mes := 0;
    Anio := 0;
    Secuencia := 0;
  End; {Try}


  tProductos.Params.ParamByName('Codigo').AsString := Trim (UpperCase(tDetalles_SalidaCodigo.Value));
  tProductos.Params.ParamByName('Secuencia').AsInteger := Secuencia;
  tProductos.Refresh;

  If tProductos.RecordCount <= 0 Then
    If Application.MessageBox(PChar(_ProductoNoRegistrado),
                              'Código Inválido',
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then SysUtils.Abort
    Else
      Begin
        {Application.CreateForm(TFProductos,FProductos);
        FProductos.Codigo.Text := Trim(tDetalles_SalidaCodigo.Value);
        FProductos.ShowModal;
        FProductos.Free;}
        tListadoProductos.Insert;
        tListadoProductosCodigo.Value := Trim(UpperCase(tDetalles_SalidaCodigo.Value));
        tListadoProductosSecuencia.Value := 0;
        tListadoProductosBarra.Value := tListadoProductosCodigo.Value;
        If InputQuery('Registrar Producto','Escriba el Nombre del Producto',Name) Then
          Begin
            tListadoProductosDescripcion.Value := UpperCase(Name);
            tDetalles_SalidaDescripcion.Value  := UpperCase(Name);
            tDetalles_SalidaCodigo_Real.Value  := tDetalles_SalidaCodigo.Value;
            tListadoProductos.Post;
            Exit;
          End
        Else tListadoProductos.Cancel;
        SysUtils.Abort
      End;

  tDetalles_SalidaCodigo_Real.Value := tProductosCodigo.Value;

  If tProductosLector_Codigo.Value = _LeerSecuencia Then
    Begin
      tDetalles_SalidaSecuencia.Value := Secuencia;
      If (Mes > 0) And (Mes <= 12) Then
        Begin
          tDetalles_SalidaAno.Value := Anio;
          tDetalles_SalidaMes.Value := Mes;
        End
    End;

  tDetalles_SalidaDescripcion.Value   := Format ('%s - %s',[Trim(tProductosDescripcion.Value),Trim(tProductosPresentacion.Value)]);
  tDetalles_SalidaCosto.Value         := tProductosCosto_Promedio.Value;
  tDetalles_SalidaDepartamento.Value  := tProductosDepartamento.Value;
  tDetalles_SalidaCategoria.Value     := tProductosCategoria.Value;
  tDetalles_SalidaTipo_Producto.Value := tProductosTipo_Producto.Value;
  tDetalles_SalidaFabricante.Value    := tProductosFabricante.Value;
  tDetalles_SalidaSecuencia.Value     := tProductosSecuencia.Value;

  tDetalles_SalidaCliente.Value       := tSalidas_InventarioCliente.Value;
  tDetalles_SalidaFecha.Value         := tSalidas_InventarioFecha.Value;
  tDetalles_SalidaHora.Value          := tSalidas_InventarioHora.Value;
  tDetalles_SalidaUsuario.value       := _CurrentUser;
  tDetalles_Salida.EnableControls

end;

procedure TModulo.CalculoTotales(Sender: TField);
begin
  tDetalles_SalidaTotal_Costo.Value := tDetalles_SalidaCantidad.Value * tDetalles_SalidaCosto.Value;
  tDetalles_SalidaTotal_Precio.Value := tDetalles_SalidaCantidad.Value * tDetalles_SalidaPrecio.Value
end;

procedure TModulo.ActualizarDetallesSalida(DataSet: TDataSet);
  Var
    CurrentRecord : TBookmark;
    Total_Costo   ,
    Total_Precios : Currency;
begin
  CurrentRecord := tDetalles_Salida.GetBookmark;
  Try
    Total_Costo   := 0;
    Total_Precios := 0;
    tDetalles_Salida.DisableControls;
    tDetalles_Salida.First;
    While Not tDetalles_Salida.Eof Do
      Begin
        Total_Costo   := tDetalles_SalidaTotal_Costo.Value + Total_Costo;
        Total_Precios := tDetalles_SalidaTotal_Precio.Value + Total_Precios;
        tDetalles_Salida.Next
      End;{While}
    tSalidas_InventarioTotal_Costo.Value := Total_Costo;
    tSalidas_InventarioTotal_Salida.Value := Total_Precios
  Finally
    tDetalles_Salida.GotoBookmark(CurrentRecord);
    tDetalles_Salida.FreeBookmark(CurrentRecord);
    tDetalles_Salida.EnableControls
  End {Try}
end;

procedure TModulo.tVencimientosCalcFields(DataSet: TDataSet);
begin
  tVencimientosCod_Generado.Value := Pad('L',Trim(tProductosSecuencia.AsString),6,'0') +
                                     Trim(tVencimientosMes.Text) +
                                     Trim(tVencimientosAno.AsString)
end;

procedure TModulo.tProductosCalcFields(DataSet: TDataSet);
begin
  If tProductosLector_Codigo.Value = 'Código Principal' Then
    tProductosCod_Generado.Value := Trim(tProductosCodigo.Value);

  If tProductosLector_Codigo.Value = 'Código de Barra' Then
    tProductosCod_Generado.Value := Trim(tProductosBarra.Value);

  If tProductosLector_Codigo.Value = 'Referencia' Then
    tProductosCod_Generado.Value := Trim(tProductosReferencia.Value);

  If tProductosLector_Codigo.Value = 'Secuencia' Then
    tProductosCod_Generado.Value := Pad('L',Trim(tProductosSecuencia.Text),6,'0');

  If tProductosLector_Codigo.Value = 'Vencimiento' Then
    tProductosCod_Generado.Value := Pad('L',Trim(tProductosSecuencia.AsString),6,'0') + '000000'
end;

procedure TModulo.ActualizarDetallleCompras(DataSet: TDataSet);
  Var
    CurrentRecord   : TBookmark;
    Total_Costo     ,
    Total_Descuento ,
    Total_Impuesto  : Currency;

begin
  CurrentRecord := tDetalles_Compra.GetBookmark;
  Try
    Total_Costo     := 0;
    Total_Descuento := 0;
    Total_Impuesto  := 0;

    tDetalles_Compra.DisableControls;
    tDetalles_Compra.First;

    While Not tDetalles_Compra.Eof Do
      Begin
        Total_Costo     := tDetalles_CompraTotal_Costo.Value + Total_Costo;
        Total_Impuesto  := tDetalles_CompraTotal_Impuesto.Value + Total_Impuesto;
        Total_Descuento := tDetalles_CompraTotal_Descuento.Value + Total_Descuento;
        tDetalles_Compra.Next
      End;{While}

    tCompra_ProductosSubTotal.Value := Total_Costo;
    tCompra_ProductosValor_Impuesto_Detalle.Value := Total_Impuesto;
    tCompra_ProductosValor_Descuento_Detalle.Value := Total_Descuento
  Finally
    tDetalles_Compra.GotoBookmark(CurrentRecord);
    tDetalles_Compra.FreeBookmark(CurrentRecord);
    tDetalles_Compra.EnableControls
  End {Try}
end;

procedure TModulo.tDetalles_CompraBeforePost(DataSet: TDataSet);
  Var
    WindowResult : TModalResult;
begin
  If Not tDetalles_CompraMes.IsNull Then
    If (tDetalles_CompraMes.Value <= MonthOf(Enlace.AppServer.ServerDate)) And
       (tDetalles_CompraAno.Value <= YearOf(Enlace.AppServer.ServerDate)) Then
      Raise Exception.Create(_ErrProductoVencido);

  Application.CreateForm(TFPrecios_Venta,FPrecios_Venta);
  FPrecios_Venta.ShowModal;
  WindowResult := FPrecios_Venta.ModalResult;
  FPrecios_Venta.Free;

  If  WindowResult = MrCancel Then SysUtils.Abort;

  Try
    tDetalles_CompraCodigo.OnValidate := Nil;
    tDetalles_CompraCodigo.Value := Trim(UpperCase(tDetalles_CompraCodigo.Value));
  Finally
    tDetalles_CompraCodigo.OnValidate := tDetalles_CompraCodigoValidate
  End
end;

procedure TModulo.tDetalles_CompraCodigoValidate(Sender: TField);
  Var
    Secuencia : LongInt;
    Mes, Anio : Word;
    Name      : String;

begin
  Name := '';
  Try
    Mes := StrToInt(Copy(tDetalles_CompraCodigo.Value,7,2));
    Anio := StrToInt(Copy(tDetalles_CompraCodigo.Value,9,4));
    Secuencia := StrToInt(Copy(tDetalles_CompraCodigo.Value,1,6));
  Except
    Mes := 0;
    Anio := 0;
    Secuencia := 0;
  End; {Try}

  tProductos.Params.ParamByName('Codigo').AsString := Trim (UpperCase(tDetalles_CompraCodigo.Value));
  tProductos.Params.ParamByName('Secuencia').AsInteger := Secuencia;
  tProductos.Refresh;

  If tProductos.RecordCount <= 0 Then
    If Application.MessageBox(PChar(_ProductoNoRegistrado),
                              'Código Inválido',
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then SysUtils.Abort
    Else
      // 28/2/2006 : OPTIMIZAR
      Begin
        tListadoProductos.Insert;
        tListadoProductosCodigo.Value := Trim(UpperCase(tDetalles_CompraCodigo.Value));
        tListadoProductosSecuencia.Value := 0;
        tListadoProductosBarra.Value := tListadoProductosCodigo.Value;
        If InputQuery('Registrar Producto','Escriba el Nombre del Producto',Name) Then
          Begin
            tListadoProductosDescripcion.Value := UpperCase(Name);
            tDetalles_CompraDescripcion.Value  := UpperCase(Name);
            tDetalles_CompraCodigo_Real.Value  := tDetalles_CompraCodigo.Value;
            tListadoProductos.Post;
            Exit;
          End
        Else tListadoProductos.Cancel;
        SysUtils.Abort
      End;

  tDetalles_CompraCodigo_Real.Value := tProductosCodigo.Value;

  If tProductosLector_Codigo.Value = _LeerSecuencia Then
    Begin
      tDetalles_CompraSecuencia.Value := Secuencia;
      If (Mes > 0) And (Mes <= 12) Then
        Begin
          tDetalles_CompraAno.Value := Anio;
          tDetalles_CompraMes.Value := Mes;
        End
    End;

  tDetalles_CompraDescripcion.Value            := Trim(tProductosDescripcion.Value);

  _Recalcular_Beneficios := False;
  If Trim(tProductosMetodo_Calculo_Costo.Value) = 'Promedio' Then
     tDetalles_CompraPrecio_Lista.Value        := tProductosCosto_Promedio.Value;

  If Trim(tProductosMetodo_Calculo_Costo.Value) = 'Estandar' Then
     tDetalles_CompraPrecio_Lista.Value        := tProductosCosto_Standar.Value;

  If Trim(tProductosMetodo_Calculo_Costo.Value) = 'Última Compra' Then
     tDetalles_CompraPrecio_Lista.Value        := tProductosUltimo_Precio_Compra.Value;

  tDetalles_CompraContenido.Value                       := tProductosUnidades_Medida_Compra.Value;
  tDetalles_CompraTipo_Beneficio.Value                  := tProductosTipo_Beneficio.Value;
  tDetalles_CompraValor_Beneficio_PMayor_Contado.Value  := tProductosValor_Beneficio_Contado.Value;
  tDetalles_CompraValor_Beneficio_PMayor_Credito.Value  := tProductosValor_Beneficio_Credito.Value;
  tDetalles_CompraValor_Beneficio_Detalle_Contado.Value := tProductosValor_Beneficio_Contado.Value;
  tDetalles_CompraValor_Beneficio_Detalle_Credito.Value := tProductosValor_Beneficio_Credito.Value;
  tDetalles_CompraDepartamento.Value                    := tProductosDepartamento.Value;
  tDetalles_CompraCategoria.Value                       := tProductosCategoria.Value;
  tDetalles_CompraTipo_Producto.Value                   := tProductosTipo_Producto.Value;
  tDetalles_CompraFabricante.Value                      := tProductosFabricante.Value;
  tDetalles_CompraSecuencia.Value                       := tProductosSecuencia.Value;

  tDetalles_CompraImpuesto.Value                        := Porcentaje_Global_Impuesto;
  tDetalles_CompraDescuento.Value                       := Porcentaje_Global_Descuento;
  _Recalcular_Beneficios := True;

  tDetalles_CompraProveedor.Value                       := tCompra_ProductosProveedor.Value;
  tDetalles_CompraFecha.Value                           := tCompra_ProductosFecha.Value;
  tDetalles_CompraHora.Value                            := tCompra_ProductosHora.Value;
  tDetalles_CompraUsuario.value                         := _CurrentUser;
  tDetalles_Compra.EnableControls

end;

procedure TModulo.tDetalles_CompraValor_Beneficio_Detalle_ContadoValidate(
  Sender: TField);
begin
  tDetalles_CompraValor_Beneficio_Detalle_Credito.Value := tDetalles_CompraValor_Beneficio_Detalle_Contado.Value;
end;

procedure TModulo.tDetalles_CompraValor_Beneficio_PMayor_ContadoValidate(
  Sender: TField);
begin
  tDetalles_CompraValor_Beneficio_PMayor_Credito.Value := tDetalles_CompraValor_Beneficio_PMayor_Contado.Value;
end;

procedure TModulo.Calcular_Beneficio_Compras(
  Sender: TField);
begin
  tDetalles_CompraPrecio_Minimo.Value := tDetalles_CompraCosto.Value;

  If Trim(tDetalles_CompraTipo_Beneficio.Value) = 'Porcentual' Then
    Begin
      tDetalles_CompraPrecio_Venta_Por_Mayor_Contado.Value := tDetalles_CompraCosto.Value * (1 + tDetalles_CompraValor_Beneficio_PMayor_Contado.Value / 100);
      tDetalles_CompraPrecio_Venta_Por_Mayor_Credito.Value := tDetalles_CompraCosto.Value * (1 + tDetalles_CompraValor_Beneficio_PMayor_Credito.Value / 100);

      tDetalles_CompraPrecio_Venta_Detalle_Contado.Value := tDetalles_CompraCosto.Value * (1 + tDetalles_CompraValor_Beneficio_Detalle_Contado.Value / 100);
      tDetalles_CompraPrecio_Venta_Detalle_Credito.Value := tDetalles_CompraCosto.Value * (1 + tDetalles_CompraValor_Beneficio_Detalle_Credito.Value / 100)
    End;

  If Trim(tProductosTipo_Beneficio.Value) = 'Fijo' Then
    Begin
      tDetalles_CompraPrecio_Venta_Por_Mayor_Contado.Value := tDetalles_CompraCosto.Value + tDetalles_CompraValor_Beneficio_PMayor_Contado.Value;
      tDetalles_CompraPrecio_Venta_Por_Mayor_Credito.Value := tDetalles_CompraCosto.Value + tDetalles_CompraValor_Beneficio_PMayor_Credito.Value;

      tDetalles_CompraPrecio_Venta_Detalle_Contado.Value := tDetalles_CompraCosto.Value + tDetalles_CompraValor_Beneficio_Detalle_Contado.Value;
      tDetalles_CompraPrecio_Venta_Detalle_Credito.Value := tDetalles_CompraCosto.Value + tDetalles_CompraValor_Beneficio_Detalle_Credito.Value
    End;

  RegInfo.CloseKey;
  RegInfo.OpenKey(_CompraProductosKey,False);

  If RegInfo.ReadBool(_Redondear)Then
    Begin
      tDetalles_CompraPrecio_Venta_Por_Mayor_Contado.Value := Round(tDetalles_CompraPrecio_Venta_Por_Mayor_Contado.Value);
      tDetalles_CompraPrecio_Venta_Por_Mayor_Credito.Value := Round(tDetalles_CompraPrecio_Venta_Por_Mayor_Credito.Value);

      tDetalles_CompraPrecio_Venta_Detalle_Contado.Value := Round(tDetalles_CompraPrecio_Venta_Detalle_Contado.Value);
      tDetalles_CompraPrecio_Venta_Detalle_Credito.Value := Round(tDetalles_CompraPrecio_Venta_Detalle_Credito.Value)
    end;
  
end;

procedure TModulo.Calcular_Beneficio_Inicial(Sender: TField);
begin
  tExistenciaInicialPrecio_Minimo.Value := tExistenciaInicialCosto.Value;

  If Trim(tExistenciaInicialTipo_Beneficio.Value) = 'Porcentual' Then
    Begin
      tExistenciaInicialPrecio_Venta_Por_Mayor_Contado.Value := tExistenciaInicialCosto.Value * (1 + tExistenciaInicialValor_Beneficio_PMayor_Contado.Value / 100);
      tExistenciaInicialPrecio_Venta_Por_Mayor_Credito.Value := tExistenciaInicialCosto.Value * (1 + tExistenciaInicialValor_Beneficio_PMayor_Credito.Value / 100);

      tExistenciaInicialPrecio_Venta_Detalle_Contado.Value := tExistenciaInicialCosto.Value * (1 + tExistenciaInicialValor_Beneficio_Detalle_Contado.Value / 100);
      tExistenciaInicialPrecio_Venta_Detalle_Credito.Value := tExistenciaInicialCosto.Value * (1 + tExistenciaInicialValor_Beneficio_Detalle_Credito.Value / 100)
    End;

  If Trim(tProductosTipo_Beneficio.Value) = 'Fijo' Then
    Begin
      tExistenciaInicialPrecio_Venta_Por_Mayor_Contado.Value := tExistenciaInicialCosto.Value + tExistenciaInicialValor_Beneficio_PMayor_Contado.Value;
      tExistenciaInicialPrecio_Venta_Por_Mayor_Credito.Value := tExistenciaInicialCosto.Value + tExistenciaInicialValor_Beneficio_PMayor_Credito.Value;

      tExistenciaInicialPrecio_Venta_Detalle_Contado.Value := tExistenciaInicialCosto.Value + tExistenciaInicialValor_Beneficio_Detalle_Contado.Value;
      tExistenciaInicialPrecio_Venta_Detalle_Credito.Value := tExistenciaInicialCosto.Value + tExistenciaInicialValor_Beneficio_Detalle_Credito.Value
    End
end;

procedure TModulo.Calculo_Totales_Detalle_Compra(Sender: TField);
begin
  tDetalles_CompraValor_Descuento.Value := tDetalles_CompraPrecio_Lista.Value *
                                          (tDetalles_CompraDescuento.Value / 100);

  tDetalles_CompraValor_Impuesto.Value  := tDetalles_CompraPrecio_Lista.Value *
                                          (tDetalles_CompraImpuesto.Value / 100);

  tDetalles_CompraCosto.Value           :=(tDetalles_CompraPrecio_Lista.Value +
                                           tDetalles_CompraValor_Impuesto.Value -
                                           tDetalles_CompraValor_Descuento.Value) /
                                           tDetalles_CompraContenido.Value;

  tDetalles_CompraTotal_Costo.Value     := tDetalles_CompraCosto.Value *
                                          (tDetalles_CompraCantidad.Value *
                                           tDetalles_CompraContenido.Value);

  tDetalles_CompraTotal_Descuento.Value := tDetalles_CompraValor_Descuento.Value *
                                          (tDetalles_CompraCantidad.Value *
                                           tDetalles_CompraContenido.Value);

  tDetalles_CompraTotal_Impuesto.Value  := tDetalles_CompraValor_Impuesto.Value *
                                          (tDetalles_CompraCantidad.Value *
                                           tDetalles_CompraContenido.Value);
end;

procedure TModulo.Calculo_Totales_Compra(Sender: TField);
begin
  tCompra_ProductosValor_Impuesto.Value  := tCompra_ProductosSubTotal.Value * (tCompra_ProductosImpuesto_Global.Value / 100);
  tCompra_ProductosValor_Descuento.Value := tCompra_ProductosSubTotal.Value * (tCompra_ProductosDescuento_Global.Value / 100);

  tCompra_ProductosTotal_Impuesto.Value := tCompra_ProductosValor_Impuesto.Value + tCompra_ProductosValor_Impuesto_Detalle.Value;
  tCompra_ProductosTotal_Descuento.Value := tCompra_ProductosValor_Descuento.Value + tCompra_ProductosValor_Descuento_Detalle.Value;

  tCompra_ProductosTotalNeto.Value := tCompra_ProductosSubTotal.Value +
                                      tCompra_ProductosValor_Impuesto.Value +
                                      tCompra_ProductosValor_Descuento.Value;

  tCompra_ProductosPendiente.Value := tCompra_ProductosTotalNeto.Value - tCompra_ProductosPagado.Value
end;

procedure TModulo.tCompra_ProductosTerminosValidate(Sender: TField);
  Var
    D,M,Y : Word;
begin
  DecodeDate(Modulo.Enlace.AppServer.ServerDate,Y,M,D);

  If M = 12 Then
    Begin
      M := 0;
      Inc(Y);
    End;

  Inc(M);

  If D >= tTerminosMargenDeDias.Value Then Inc(M);

  tCompra_ProductosVencimiento.Value := tCompra_ProductosFecha.Value + tTerminosDiasDeGracia.Value;

  If Trim(tTerminosFormaDeVencimiento.Value) = 'En Fechas' Then
    tCompra_ProductosVencimiento.Value := EncodeDate(Y,M,tTerminosDiasDeGracia.Value)
end;

procedure TModulo.tDetalles_CompraCalcFields(DataSet: TDataSet);
begin
//  tProductos.Params.ParamByName('Codigo').AsString := Trim (UpperCase(tDetalles_CompraCodigo.Value));
//  tProductos.Refresh;

  If tProductosLector_Codigo.Value = 'Código Principal' Then
    tDetalles_CompraCod_Generado.Value := Trim(tProductosCodigo.Value);

  If tProductosLector_Codigo.Value = 'Código de Barra' Then
    tDetalles_CompraCod_Generado.Value := Trim(tProductosBarra.Value);

  If tProductosLector_Codigo.Value = 'Referencia' Then
    tDetalles_CompraCod_Generado.Value := Trim(tProductosReferencia.Value);

  If tProductosLector_Codigo.Value = 'Secuencia' Then
    tDetalles_CompraCod_Generado.Value := Pad('L',Trim(tDetalles_CompraSecuencia.Text),6,'0');

  If tProductosLector_Codigo.Value = 'Vencimiento' Then
    tDetalles_CompraCod_Generado.Value := Pad('L',Trim(tDetalles_CompraSecuencia.Text),6,'0') +
                                                  Trim(tDetalles_CompraMes.Text) +
                                                  Trim(tDetalles_CompraAno.Text)
end;

procedure TModulo.Calculo_Totales_Factura(Sender: TField);
begin
  tFacturasValor_Impuesto.Value  := tFacturasSubTotal.Value * (tFacturasImpuesto_Global.Value / 100);
  tFacturasValor_Descuento.Value := tFacturasSubTotal.Value * (tFacturasDescuento_Global.Value / 100);

  tFacturasTotal_Impuesto.Value := tFacturasValor_Impuesto.Value + tFacturasValor_Impuesto_Detalle.Value;
  tFacturasTotal_Descuento.Value := tFacturasValor_Descuento.Value + tFacturasValor_Descuento_Detalle.Value;

  tFacturasTotalNeto.Value := tFacturasSubTotal.Value +
                              tFacturasTotal_Impuesto.Value -
                              tFacturasTotal_Descuento.Value;

  tFacturasPendiente.Value := tFacturasTotalNeto.Value - tFacturasPagado.Value
end;

procedure TModulo.tFacturasTerminosValidate(Sender: TField);
  Var
    D,M,Y : Word;
begin
  tTerminos.Locate(tTerminosNumero_Termino.FieldName,
                   tFacturasTerminos.Value,[]);
                   
  DecodeDate(Modulo.Enlace.AppServer.ServerDate,Y,M,D);

  If M = 12 Then
    Begin
      M := 0;
      Inc(Y);
    End;

  Inc(M);

  If D >= tTerminosMargenDeDias.Value Then Inc(M);

  tFacturasVencimiento.Value := tFacturasFecha.Value + tTerminosDiasDeGracia.Value;

  If Trim(tTerminosFormaDeVencimiento.Value) = 'En Fechas' Then
    tFacturasVencimiento.Value := EncodeDate(Y,M,tTerminosDiasDeGracia.Value)
end;

procedure TModulo.ActualizarDetallesFactura(DataSet: TDataSet);
  Var
    CurrentRecord   : TBookmark;
    Total_Costo     ,
    Total_Precio    ,
    Total_Descuento ,
    Total_Impuesto  : Currency;

begin
  CurrentRecord := tDetalles_Factura.GetBookmark;
  Try
    Total_Costo     := 0;
    Total_Precio    := 0;
    Total_Descuento := 0;
    Total_Impuesto  := 0;

    tDetalles_Factura.DisableControls;
    tDetalles_Factura.First;

    While Not tDetalles_Factura.Eof Do
      Begin
        Total_Costo     := tDetalles_FacturaTotal_Costo.Value + Total_Costo;
        Total_Precio    := tDetalles_FacturaTotal_Precio.Value +
                           tDetalles_FacturaTotal_Descuento.Value +
                           tDetalles_FacturaTotal_Impuesto.Value + 
                           Total_Precio;
        Total_Impuesto  := tDetalles_FacturaTotal_Impuesto.Value + Total_Impuesto;
        Total_Descuento := tDetalles_FacturaTotal_Descuento.Value + Total_Descuento;
        tDetalles_Factura.Next
      End;{While}

    tFacturasSubTotal.Value := Total_Precio;
    tFacturasTotal_Costo.Value := Total_Costo;
    tFacturasValor_Impuesto_Detalle.Value := Total_Impuesto;
    tFacturasValor_Descuento_Detalle.Value := Total_Descuento
  Finally
    tDetalles_Factura.GotoBookmark(CurrentRecord);
    tDetalles_Factura.FreeBookmark(CurrentRecord);
    tDetalles_Factura.EnableControls
  End {Try}
end;

procedure TModulo.tDetalles_FacturaBeforePost(DataSet: TDataSet);
begin
  If Not tDetalles_FacturaMes.IsNull Then
    If (tDetalles_FacturaMes.Value <= MonthOf(Enlace.AppServer.ServerDate)) And
       (tDetalles_FacturaAno.Value <= YearOf(Enlace.AppServer.ServerDate)) Then
      Raise Exception.Create(_ErrProductoVencido);

  If tDetalles_FacturaTotal_Precio.Value < (tDetalles_FacturaPrecio_Minimo.Value * tDetalles_FacturaCantidad.Value) Then
      Raise Exception.Create(_ErrPrecio_Menor_Precio_Minimo);

  Try
    tDetalles_FacturaCodigo.OnValidate := Nil;
    tDetalles_FacturaCodigo.Value := Trim(UpperCase(tDetalles_FacturaCodigo.Value));
  Finally
    tDetalles_FacturaCodigo.OnValidate := tDetalles_FacturaCodigoValidate
  End
end;

procedure TModulo.tDetalles_FacturaCodigoValidate(Sender: TField);
  Var
    Secuencia : LongInt;
    Mes, Anio : Word;
    Name      : String;

begin
  Name := '';
  Try
    Mes := StrToInt(Copy(tDetalles_FacturaCodigo.Value,7,2));
    Anio := StrToInt(Copy(tDetalles_FacturaCodigo.Value,9,4));
    Secuencia := StrToInt(Copy(tDetalles_FacturaCodigo.Value,1,6));
  Except
    Mes := 0;
    Anio := 0;
    Secuencia := 0;
  End; {Try}

  tProductos.Params.ParamByName('Codigo').AsString := Trim (UpperCase(tDetalles_FacturaCodigo.Value));
  tProductos.Params.ParamByName('Secuencia').AsInteger := Secuencia;
  tProductos.Refresh;

  If tProductos.RecordCount <= 0 Then
    If Application.MessageBox(PChar(_ProductoNoRegistrado),
                              'Código Inválido',
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then SysUtils.Abort
    Else
      Begin // 28/2/2006 : OPTIMIZAR
        tListadoProductos.Insert;
        tListadoProductosCodigo.Value := Trim(UpperCase(tDetalles_FacturaCodigo.Value));
        tListadoProductosSecuencia.Value := 0;
        tListadoProductosBarra.Value := tListadoProductosCodigo.Value;
        If InputQuery('Registrar Producto','Escriba el Nombre del Producto',Name) Then
          Begin
            tListadoProductosDescripcion.Value := UpperCase(Name);
            tDetalles_FacturaDescripcion.Value  := UpperCase(Name);
            tDetalles_FacturaCodigo_Real.Value  := tDetalles_FacturaCodigo.Value;
            tListadoProductos.Post;
            Exit;
          End
        Else tListadoProductos.Cancel;
        SysUtils.Abort
      End;

  tDetalles_FacturaCodigo_Real.Value := tProductosCodigo.Value;

  If tProductosLector_Codigo.Value = _LeerSecuencia Then
    Begin
      tDetalles_FacturaSecuencia.Value := Secuencia;
      If (Mes > 0) And (Mes <= 12) Then
        Begin
          tDetalles_FacturaAno.Value := Anio;
          tDetalles_FacturaMes.Value := Mes;
        End
    End;

  tDetalles_FacturaDescripcion.Value   := Trim(tProductosDescripcion.Value);

  tDetalles_FacturaTipo_Precio.Value   := Trim(tFacturasTipo_Factura.Value) + ' ' + Trim(tFacturasCondicion.Value);
  tDetalles_FacturaContenido.Value     := tProductosUnidades_Medida_Venta.Value;
  tDetalles_FacturaPrecio_Minimo.Value := tProductosPrecio_Venta_Minimo.Value;
  tDetalles_FacturaPrecio_Real.Value   := tDetalles_FacturaPrecio_Venta.Value;
  tDetalles_FacturaCosto.Value         := tProductosCosto_Promedio.Value;
  tDetalles_FacturaDepartamento.Value  := tProductosDepartamento.Value;
  tDetalles_FacturaCategoria.Value     := tProductosCategoria.Value;
  tDetalles_FacturaTipo_Producto.Value := tProductosTipo_Producto.Value;
  tDetalles_FacturaFabricante.Value    := tProductosFabricante.Value;
  tDetalles_FacturaSecuencia.Value     := tProductosSecuencia.Value;

  If tProductosPaga_Impuesto.Value Then tDetalles_FacturaImpuesto.Value := tParametrosImpuesto.Value;

  tDetalles_FacturaCliente.Value       := tFacturasCliente.Value;
  tDetalles_FacturaFecha.Value         := tFacturasFecha.Value;
  tDetalles_FacturaHora.Value          := tFacturasHora.Value;
  tDetalles_FacturaUsuario.value       := _CurrentUser;
  tDetalles_Factura.EnableControls
end;

procedure TModulo.Calculo_Totales_Detalle_Factura(Sender: TField);
  Var
    TotalPrecio : Currency;
begin
  tDetalles_FacturaValor_Descuento.Value := tDetalles_FacturaPrecio_Venta.Value * (tDetalles_FacturaDescuento.Value / 100);
  tDetalles_FacturaValor_Impuesto.Value  := tDetalles_FacturaPrecio_Venta.Value * (tDetalles_FacturaImpuesto.Value / 100);
  TotalPrecio                            := tDetalles_FacturaPrecio_Venta.Value + tDetalles_FacturaValor_Impuesto.Value - tDetalles_FacturaValor_Descuento.Value;

  tDetalles_FacturaTotal_Precio.Value := TotalPrecio * (tDetalles_FacturaCantidad.Value * tDetalles_FacturaContenido.Value);
  tDetalles_FacturaTotal_Costo.Value  := tDetalles_FacturaCosto.Value * (tDetalles_FacturaCantidad.Value * tDetalles_FacturaContenido.Value);

  tDetalles_FacturaTotal_Descuento.Value := tDetalles_FacturaValor_Descuento.Value * (tDetalles_FacturaCantidad.Value * tDetalles_FacturaContenido.Value);
  tDetalles_FacturaTotal_Impuesto.Value  := tDetalles_FacturaValor_Impuesto.Value * (tDetalles_FacturaCantidad.Value * tDetalles_FacturaContenido.Value)
end;

procedure TModulo.Calculo_Totales_Forma_Pago(Sender: TField);
begin
  tDetalle_Pago_FacturaValor_Recibido_Local.Value := tDetalle_Pago_FacturaValor_Recibido.Value *
                                                     tDetalle_Pago_FacturaTasa.Value;
end;

procedure TModulo.tDetalle_Pago_FacturaCalcFields(DataSet: TDataSet);
begin
  tDetalle_Pago_FacturaTotal_Forma_Pago.Value := tFacturasTotalNeto.Value / tDetalle_Pago_FacturaTasa.Value;
  tDetalle_Pago_FacturaDevolver_Forma_Pago.Value := tFacturasTotal_Efectivo_Devuelto.Value / tDetalle_Pago_FacturaTasa.Value
end;

procedure TModulo.tDetalle_Pago_FacturaAfterPost(DataSet: TDataSet);
  Var
    CurrentRecord   : TBookmark;
    Total_Pagado    ,
    Total_Efectivo  : Currency;

begin
  CurrentRecord := tDetalle_Pago_Factura.GetBookmark;
  Try
    Total_Pagado   := 0;
    Total_Efectivo := 0;

    tDetalle_Pago_Factura.DisableControls;
    tDetalle_Pago_Factura.First;

    While Not tDetalle_Pago_Factura.Eof Do
      Begin
        Total_Pagado    := tDetalle_Pago_FacturaValor_Recibido_Local.Value + Total_Pagado;
        If tDetalle_Pago_FacturaEs_Efectivo.Value Then Total_Efectivo  := tDetalle_Pago_FacturaValor_Recibido_Local.Value + Total_Efectivo;
        tDetalle_Pago_Factura.Next
      End;{While}

    If Total_Pagado > tFacturasTotalNeto.Value Then
      tFacturasPagado.Value := tFacturasTotalNeto.Value
    Else tFacturasPagado.Value := Total_Pagado;

    tFacturasTotal_Efectivo_Recibido.Value := Total_Efectivo;

    tFacturasTotal_Efectivo_Devuelto.Value := Total_Pagado - tFacturasTotalNeto.Value;
    If tFacturasTotal_Efectivo_Devuelto.Value < 0 Then tFacturasTotal_Efectivo_Devuelto.Value := 0
  Finally
    tDetalle_Pago_Factura.GotoBookmark(CurrentRecord);
    tDetalle_Pago_Factura.FreeBookmark(CurrentRecord);
    tDetalle_Pago_Factura.EnableControls
  End {Try}
end;

procedure TModulo.tDetalle_Pago_FacturaBeforePost(DataSet: TDataSet);
Var
    D,M,Y       : Word;
    Vencimiento : TDate;
    Aprobado    : Boolean;

begin
  Aprobado := False;
  If tDetalle_Pago_Factura.State In DsEditModes Then
    Begin
      DecodeDate (Date(),Y,M,D);

      If tDetalle_Pago_FacturaAno_Vencimiento.IsNull Or (tDetalle_Pago_FacturaAno_Vencimiento.Value <= 0) Then
        tDetalle_Pago_FacturaAno_Vencimiento.Value := Y;

      If tDetalle_Pago_FacturaMes_Vencimiento.IsNull Or (tDetalle_Pago_FacturaMes_Vencimiento.Value <= 0) Then
        tDetalle_Pago_FacturaMes_Vencimiento.Value := M
    End;

  While Not Aprobado Do
    Begin
      Aprobado := True;

      If (tDetalle_Pago_FacturaRequiere_Aprobacion.Value)  Or
         (tDetalle_Pago_FacturaRequiere_Documento.Value)   Or
         (tDetalle_Pago_FacturaRequiere_Vencimiento.Value) Then
        Begin
          Application.CreateForm(TFDetallePagos,FDetallePagos);
          FDetallePagos.ChanceDS(dDetalle_Pago_Factura);
          FDetallePagos.ShowModal;
          If FDetallePagos.ModalResult = MrCancel Then
            Begin
              FDetallePagos.Free;
              SysUtils.Abort
            End;
          FDetallePagos.Free
        End;

      If (tDetalle_Pago_FacturaRequiere_Aprobacion.Value) And
         (Trim(tDetalle_Pago_FacturaNumero_Aprobacion.Value) = '') Then
        Begin
          Aprobado := False;
          Mensaje (_ErrDebeIntroducirAprobacion)
        End;

      If (tDetalle_Pago_FacturaRequiere_Documento.Value) And
         (Trim(tDetalle_Pago_FacturaNumero_Documento.Value) = '') Then
        Begin
          Aprobado := False;
          Mensaje (Format(_ErrDebeIntroducirDocumento,[tDetalle_Pago_FacturaNombre_Forma_Pago.Value]))
        End;

      If (tDetalle_Pago_FacturaRequiere_Vencimiento.Value) Then
        Begin
          If ((tDetalle_Pago_FacturaMes_Vencimiento.Value = 0) Or (tDetalle_Pago_FacturaMes_Vencimiento.IsNull)) Then
            Begin
              Aprobado := False;
              Mensaje (_ErrDebeIntroducirMesVencimiento)
            End;

          If ((tDetalle_Pago_FacturaAno_Vencimiento.Value = 0) Or (tDetalle_Pago_FacturaAno_Vencimiento.IsNull)) Then
            Begin
              Aprobado := False;
              Mensaje (_ErrDebeIntroducirAnioVencimiento)
            End;

          D := 1; M := tDetalle_Pago_FacturaMes_Vencimiento.Value; Y := tDetalle_Pago_FacturaAno_Vencimiento.Value;

          Vencimiento :=  EncodeDate(Y,M,D);

          If Vencimiento <= Date() Then
            Begin
              Aprobado := False;
              Mensaje (Format(_ErrDocumentoVencido,[tDetalle_Pago_FacturaNombre_Forma_Pago.Value]))
            End
        End {If (TPagosSolVencimiento.Value = 1)}
    End; {Do While}end;

procedure TModulo.tFacturasBeforePost(DataSet: TDataSet);
begin
  If Trim(tFacturasNombre_Cliente.Value) = '' Then tFacturasNombre_Cliente.Value := tListado_ClientesNombreCompleto.Value;
  If Trim(tFacturasConcepto_Factura.Value) = '' Then tFacturasConcepto_Factura.Value := Format('Factura de Fecha %s - %s',[tFacturasFecha.AsString,tFacturasNombre_Cliente.Value]);
end;

procedure TModulo.tNivelesAfterScroll(DataSet: TDataSet);
begin
  If tAccesos.Active Then
    Begin
      If tAccesos.ChangeCount > 0 Then tAccesos.CancelUpdates; 
      tAccesos.Params.ParamByName('Nivel').Value := tNivelesCodigo.Value;
      tAccesos.Refresh
    End
end;

procedure TModulo.tNivelesAfterDelete(DataSet: TDataSet);
begin
  If (DataSet as TClientDataSet).ChangeCount > 0 Then (DataSet as TClientDataSet).ApplyUpdates(0);
  (DataSet as TClientDataSet).Refresh
end;

procedure TModulo.tFacturasAfterInsert(DataSet: TDataSet);
begin
  tFacturasUsuario.Value := _CurrentUser;
end;

procedure TModulo.tCuadre_CajaCalcFields(DataSet: TDataSet);
begin
  tCuadre_CajaDiferencia.Value := tCuadre_CajaTotal_Efectivo.Value - (tCuadre_CajaTotal_Vendido.Value +
                                                                      tCuadre_CajaFondo_Caja.Value -
                                                                      tCuadre_CajaTotal_Retiros.Value)
end;

procedure TModulo.tDetalle_CuadreAfterPost(DataSet: TDataSet);
  Var
    CurrentRecord   : TBookmark;
    Total_Efectivo  : Currency;

begin
  CurrentRecord := tDetalle_Cuadre.GetBookmark;
  Try
    Total_Efectivo := 0;

    tDetalle_Cuadre.DisableControls;
    tDetalle_Cuadre.First;

    While Not tDetalle_Cuadre.Eof Do
      Begin
        Total_Efectivo := tDetalle_CuadreTotal.Value + Total_Efectivo;
        tDetalle_Cuadre.Next
      End;{While}

    tCuadre_CajaTotal_Efectivo.Value := Total_Efectivo
  Finally
    tDetalle_Cuadre.GotoBookmark(CurrentRecord);
    tDetalle_Cuadre.FreeBookmark(CurrentRecord);
    tDetalle_Cuadre.EnableControls
  End {Try}
end;

procedure TModulo.CalcularTotalMoneda(Sender: TField);
begin
  tDetalle_CuadreTotal.Value := tDetalle_CuadreCantidad.Value * tDetalle_CuadreDenominacion.Value
end;

procedure TModulo.tCuadre_CajaAfterInsert(DataSet: TDataSet);
begin
  tCuadre_CajaFecha.Value := Enlace.AppServer.ServerDate;
  tCuadre_CajaHora.Value := Enlace.AppServer.ServerTime;
  tCuadre_CajaProceso.Value := Gen_ProcessNumber(_CurrentUser);
  tCuadre_CajaUsuario.Value := _CurrentUser;
  tCuadre_Caja.Params.ParamByName('Proceso').AsString := tCuadre_CajaProceso.Value
end;

procedure TModulo.tRetiros_CajaBeforeEdit(DataSet: TDataSet);
begin
  tApertura_Caja.Params.ParamByName('Usuario').AsString := Trim(_CurrentUser);
  tApertura_Caja.Params.ParamByName('Fecha').AsDate := Enlace.AppServer.ServerDate;
  tApertura_Caja.Params.ParamByName('Abierto').Value := 'TRUE';

  tApertura_Caja.Open;

  If tApertura_Caja.RecordCount > 0 Then
    Begin
      tApertura_Caja.Edit;
      tApertura_CajaRetirado.Value := tApertura_CajaRetirado.Value - tRetiros_CajaMonto.Value;
      tApertura_Caja.Post;
      tApertura_Caja.ApplyUpdates(0)
    End;
  tApertura_Caja.Close
end;

procedure TModulo.BalanceCaja(Sender: TField);
begin
  tApertura_CajaBalance.Value := tApertura_CajaMonto.Value - tApertura_CajaRetirado.Value
end;

procedure TModulo.tRetiros_CajaBeforePost(DataSet: TDataSet);
begin
  tApertura_Caja.Params.ParamByName('Usuario').AsString := Trim(_CurrentUser);
  tApertura_Caja.Params.ParamByName('Fecha').AsDate := Enlace.AppServer.ServerDate;
  tApertura_Caja.Params.ParamByName('Abierto').Value := 'TRUE';

  tApertura_Caja.Open;

  If tApertura_Caja.RecordCount <= 0 Then
    Begin
      Mensaje (_ErrNoTieneFondoRegistrado);
      SysUtils.Abort;
    End;

    If (tRetiros_CajaMonto.Value > tApertura_CajaBalance.Value) Then
    Begin
      Mensaje (Format(_ErrFondoInsuficiente,[tApertura_CajaBalance.Value]));
      SysUtils.Abort;
    End;

  tApertura_Caja.Edit;
  tApertura_CajaRetirado.Value := tApertura_CajaRetirado.Value + tRetiros_CajaMonto.Value;
  tApertura_Caja.Post;
  tApertura_Caja.ApplyUpdates(0);
  tApertura_Caja.Close
end;

procedure TModulo.tDetalles_SalidaBeforePost(DataSet: TDataSet);
begin
  If Not tDetalles_SalidaMes.IsNull Then
    If (tDetalles_SalidaMes.Value <= MonthOf(Enlace.AppServer.ServerDate)) And
       (tDetalles_SalidaAno.Value <= YearOf(Enlace.AppServer.ServerDate)) Then
      Raise Exception.Create(_ErrProductoVencido);
  Try
    tDetalles_SalidaCodigo.OnValidate := Nil;
    tDetalles_SalidaCodigo.Value := Trim(UpperCase(tDetalles_SalidaCodigo.Value));
  Finally
    tDetalles_SalidaCodigo.OnValidate := tDetalles_SalidaCodigoValidate
  End
end;

procedure TModulo.tExistenciaInicialBeforePost(DataSet: TDataSet);
begin
  If Trim(tExistenciaInicialCodigo.Value) = '' Then
    tExistenciaInicialCodigo.Value := tProductosCodigo.Value;

  If Not tExistenciaInicialMes.IsNull Then
    If (tExistenciaInicialMes.Value <= MonthOf(Enlace.AppServer.ServerDate)) And
       (tExistenciaInicialAno.Value <= YearOf(Enlace.AppServer.ServerDate)) Then
      Raise Exception.Create(_ErrProductoVencido);

  Try
    tExistenciaInicialCodigo.OnValidate := Nil;
    tExistenciaInicialCodigo.Value := Trim(UpperCase(tExistenciaInicialCodigo.Value));
  Finally
    tExistenciaInicialCodigo.OnValidate := tExistenciaInicialCodigoValidate
  End
end;

procedure TModulo.tExistenciaInicialCodigoValidate(Sender: TField);
  Var
    Secuencia : LongInt;
    Mes, Anio : Word;

begin
  Mes := 0;
  Anio := 0;
  Secuencia := 0;

  tExistenciaInicialCodigo_Real.Value := tProductosCodigo.Value;

  If tProductosLector_Codigo.Value = _LeerSecuencia Then
    Begin
      tExistenciaInicialSecuencia.Value := Secuencia;
      If (Mes > 0) And (Mes <= 12) Then
        Begin
          tExistenciaInicialAno.Value := Anio;
          tExistenciaInicialMes.Value := Mes;
        End
    End;

  tExistenciaInicialDescripcion.Value   := Trim(tProductosDescripcion.Value);

  If (tExistenciaInicialPrecio_Lista.Value = 0) Or tExistenciaInicialPrecio_Lista.IsNull Then
    tExistenciaInicialPrecio_Lista.Value  := tProductosCosto_Promedio.Value;

  tExistenciaInicialDescripcion.Value                     := Trim(tProductosDescripcion.Value);
  tExistenciaInicialPrecio_Lista.Value                    := tProductosCosto_Promedio.Value;
  tExistenciaInicialContenido.Value                       := tProductosUnidades_Medida_Compra.Value;
  tExistenciaInicialTipo_Beneficio.Value                  := tProductosTipo_Beneficio.Value;
  tExistenciaInicialValor_Beneficio_PMayor_Contado.Value  := tProductosValor_Beneficio_Contado.Value;
  tExistenciaInicialValor_Beneficio_PMayor_Credito.Value  := tProductosValor_Beneficio_Credito.Value;
  tExistenciaInicialValor_Beneficio_Detalle_Contado.Value := tProductosValor_Beneficio_Contado.Value;
  tExistenciaInicialValor_Beneficio_Detalle_Credito.Value := tProductosValor_Beneficio_Credito.Value;
  tExistenciaInicialDepartamento.Value                    := tProductosDepartamento.Value;
  tExistenciaInicialCategoria.Value                       := tProductosCategoria.Value;
  tExistenciaInicialTipo_Producto.Value                   := tProductosTipo_Producto.Value;
  tExistenciaInicialFabricante.Value                      := tProductosFabricante.Value;
  tExistenciaInicialSecuencia.Value                       := tProductosSecuencia.Value;

  tExistenciaInicialProceso.Value       := tProductosCodigo.Value;

  If tProductosPaga_Impuesto.Value Then
    If (tExistenciaInicialImpuesto.Value = 0) Or tExistenciaInicialImpuesto.IsNull Then
      tExistenciaInicialImpuesto.Value := tParametrosImpuesto.Value;

  tExistenciaInicialProveedor.Value                       := tCompra_ProductosProveedor.Value;
  tExistenciaInicialFecha.Value                           := tCompra_ProductosFecha.Value;
  tExistenciaInicialHora.Value                            := tCompra_ProductosHora.Value;
  tExistenciaInicialUsuario.value                         := _CurrentUser
end;

procedure TModulo.Calculo_Totales_ExistenciaInicial(Sender: TField);
begin
  tExistenciaInicialValor_Descuento.Value := tExistenciaInicialPrecio_Lista.Value * (tExistenciaInicialDescuento.Value / 100);
  tExistenciaInicialValor_Impuesto.Value  := tExistenciaInicialPrecio_Lista.Value * (tExistenciaInicialImpuesto.Value / 100);
  tExistenciaInicialCosto.Value           := tExistenciaInicialPrecio_Lista.Value + tExistenciaInicialValor_Impuesto.Value - tExistenciaInicialValor_Descuento.Value;

  tExistenciaInicialTotal_Costo.Value := tExistenciaInicialCosto.Value * tExistenciaInicialCantidad.Value;

  tExistenciaInicialTotal_Descuento.Value := tExistenciaInicialValor_Descuento.Value * tExistenciaInicialCantidad.Value;
  tExistenciaInicialTotal_Impuesto.Value  := tExistenciaInicialValor_Impuesto.Value * tExistenciaInicialCantidad.Value
end;

procedure TModulo.tDesgloceEfectivoCalcFields(DataSet: TDataSet);
begin
  tDesgloceEfectivoDiferencia.Value := tDesgloceEfectivoTOTAL_RECIBIDO.Value - tDesgloceEfectivoTOTAL_DEVUELTO.Value
end;

procedure TModulo.Generar_Descripcion(Sender: TField);
  Var
    Formato : String;
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,False);

  Formato := UpperCase(RegInfo.ReadString(_Format_Descriptions));
  Formato := ReplaceStr(UpperCase(tProductosNombre.FieldName),Formato,tProductosNombre.AsString);
  Formato := ReplaceStr(UpperCase(tProductosModelo.FieldName),Formato,tProductosModelo.AsString);
  Formato := ReplaceStr(UpperCase(tProductosMarca.FieldName),Formato,tProductosMarca.AsString);
  Formato := ReplaceStr(UpperCase(tProductosNombre_Fabricante.FieldName),Formato,tProductosNombre_Fabricante.AsString);
  Formato := ReplaceStr(UpperCase(tProductosPresentacion.FieldName),Formato,tProductosPresentacion.AsString);
  Formato := ReplaceStr(UpperCase(tProductosColor.FieldName),Formato,tProductosColor.AsString);
  Formato := ReplaceStr(UpperCase(tProductosAno.FieldName),Formato,tProductosAno.AsString);

  // Orientacion
  If Trim(tProductosOrientacion.Value) = '-' Then
    Formato := ReplaceStr(UpperCase(tProductosOrientacion.FieldName),Formato,'')
  Else
    Formato := ReplaceStr(UpperCase(tProductosOrientacion.FieldName),Formato,tProductosOrientacion.AsString);

  // Posicion
  If Trim(tProductosPosicion.Value) = '-' Then
    Formato := ReplaceStr(UpperCase(tProductosPosicion.FieldName),Formato,'')
  Else
    Formato := ReplaceStr(UpperCase(tProductosPosicion.FieldName),Formato,tProductosPosicion.AsString);

    Formato := ReplaceStr('  ',Formato,' ');

  tProductosDescripcion.Value := Formato
end;

procedure TModulo.Calcular_Beneficio_Productos(Sender: TField);
  Var
    Costo : Currency;
begin
  Costo := 0;

  If Trim(tProductosMetodo_Calculo_Costo.Value) = 'Promedio' Then
    Costo := tProductosCosto_Promedio.Value;

  If Trim(tProductosMetodo_Calculo_Costo.Value) = 'Estandar' Then
    Costo := tProductosCosto_Standar.Value;

  If Trim(tProductosMetodo_Calculo_Costo.Value) = 'Última Compra' Then
    Costo := tProductosUltimo_Precio_Compra.Value;

  tProductosPrecio_Venta_Minimo.Value := Costo;

  If Trim(tProductosTipo_Beneficio.Value) = 'Porcentual' Then
    Begin
      tProductosPrecio_Venta_Por_Mayor_Contado.Value := Costo * (1 + tProductosValor_Beneficio_Contado.Value / 100);
      tProductosPrecio_Venta_Por_Mayor_Credito.Value := Costo * (1 + tProductosValor_Beneficio_Credito.Value / 100);

      tProductosPrecio_Venta_Contado.Value := Costo * (1 + tProductosValor_Beneficio_Contado.Value / 100);
      tProductosPrecio_Venta_Credito.Value := Costo * (1 + tProductosValor_Beneficio_Credito.Value / 100)
    End;

  If Trim(tProductosTipo_Beneficio.Value) = 'Fijo' Then
    Begin
      tProductosPrecio_Venta_Por_Mayor_Contado.Value := Costo + tProductosValor_Beneficio_Contado.Value;
      tProductosPrecio_Venta_Por_Mayor_Credito.Value := Costo + tProductosValor_Beneficio_Credito.Value;

      tProductosPrecio_Venta_Contado.Value := Costo + tProductosValor_Beneficio_Contado.Value;
      tProductosPrecio_Venta_Credito.Value := Costo + tProductosValor_Beneficio_Credito.Value
    End
end;

procedure TModulo.tDetalles_FacturaTipo_PrecioValidate(Sender: TField);
begin
  If (Trim(tDetalles_FacturaTipo_Precio.Value) = 'Detalle Contado') Then tDetalles_FacturaPrecio_Venta.Value  := tProductosPrecio_Venta_Contado.Value;
  If (Trim(tDetalles_FacturaTipo_Precio.Value) = 'Detalle Crédito') Then tDetalles_FacturaPrecio_Venta.Value  := tProductosPrecio_Venta_Credito.Value;
  If (Trim(tDetalles_FacturaTipo_Precio.Value) = 'Por Mayor Contado') Then tDetalles_FacturaPrecio_Venta.Value  := tProductosPrecio_Venta_Por_Mayor_Contado.Value;
  If (Trim(tDetalles_FacturaTipo_Precio.Value) = 'Por Mayor Crédito') Then tDetalles_FacturaPrecio_Venta.Value  := tProductosPrecio_Venta_Por_Mayor_Credito.Value;
end;

end.


