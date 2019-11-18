unit DataModulo;

interface

uses
  SysUtils, Classes, DBClient, DB, SConnect, ImgList, Controls,
  Wwdatsrc, Variants, MConnect, ActnList, XPStyleActnCtrls, ActnMan, wwclient,
  Forms, Windows, MSNPopUp, OoMisc, AdPort, Dialogs;

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
    tProductosExistencia: TBCDField;
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
    tListadoProductosExistencia: TBCDField;
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
    SerialPort: TApdComPort;
    Mensajes: TMSNPopUp;
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
    procedure DataModuleCreate(Sender: TObject);
    procedure DataSetReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure tDetalles_SalidaCodigoValidate(Sender: TField);
    procedure CalculoTotales(Sender: TField);
    procedure tDetalles_SalidaAfterPost(DataSet: TDataSet);
    procedure tVencimientosCalcFields(DataSet: TDataSet);
    procedure tProductosCalcFields(DataSet: TDataSet);
    procedure tDetalles_SalidaBeforePost(DataSet: TDataSet);
    procedure tDetalles_CompraAfterPost(DataSet: TDataSet);
    procedure tDetalles_SalidaBeforeEdit(DataSet: TDataSet);
    procedure tDetalles_CompraBeforePost(DataSet: TDataSet);
    procedure tDetalles_CompraBeforeEdit(DataSet: TDataSet);
    procedure tDetalles_CompraCodigoValidate(Sender: TField);
    procedure Calculo_Totales_Detalle_Compra(Sender: TField);
    procedure Calculo_Totales_Compra(Sender: TField);
    procedure tCompra_ProductosTerminosValidate(Sender: TField);
    procedure tDetalles_CompraCalcFields(DataSet: TDataSet);
    procedure Calculo_Totales_Factura(Sender: TField);
    procedure tFacturasTerminosValidate(Sender: TField);
    procedure tDetalles_FacturaAfterDelete(DataSet: TDataSet);
    procedure tDetalles_FacturaBeforeDelete(DataSet: TDataSet);
    procedure tDetalles_FacturaBeforePost(DataSet: TDataSet);
    procedure tDetalles_FacturaCodigoValidate(Sender: TField);
    procedure Calculo_Totales_Detalle_Factura(Sender: TField);
    procedure Calculo_Totales_Forma_Pago(Sender: TField);
    procedure tDetalle_Pago_FacturaCalcFields(DataSet: TDataSet);
    procedure tDetalle_Pago_FacturaAfterPost(DataSet: TDataSet);
    procedure tDetalle_Pago_FacturaBeforePost(DataSet: TDataSet);
    procedure tFacturasBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    Function ActualizarExistencia(Const Codigo_Producto : String;
                                  Const Tipo_Producto: String;
                                  Const Cantidad_Actualizar : Double) : Double;
  public
    { Public declarations }
    Procedure ImpresionTexto (Const OutDevice, Sorteo : String; Const Fecha : TDate; Const Terminal : Boolean);
    Function ContarDistribucionVencimiento : Double;
  end;

var
  Modulo: TModulo;

implementation

uses Utilidades, ErrorHandle, Registry, DateUtils, Productos,
  DetalledePagos;

{$R *.dfm}

Function TModulo.ActualizarExistencia(Const Codigo_Producto : String;
                                      Const Tipo_Producto: String;
                                      Const Cantidad_Actualizar : Double) : Double;
  Begin
    Result := 0;
    If Trim(Tipo_Producto) = _InventarioNormal Then
      Begin
        tListadoProductos.Locate('Codigo',Codigo_Producto,[]);
        If (tListadoProductosExistencia.Value + Cantidad_Actualizar) < 0 Then
          Begin
            Result := tListadoProductosExistencia.Value;
            Exit;
          End;

        If Not(tListadoProductos.State In DsEditModes) Then tListadoProductos.Edit;

        tListadoProductosExistencia.Value := tListadoProductosExistencia.Value + Cantidad_Actualizar;

        If Modulo.tListadoProductos.State In DsEditModes Then Modulo.tListadoProductos.Post;
      End
  End;

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

begin
  Secuencia := StrToInt(Copy(tDetalles_SalidaCodigo.Value,1,6));
  Try
    Mes := StrToInt(Copy(tDetalles_SalidaCodigo.Value,7,2));
    Anio := StrToInt(Copy(tDetalles_SalidaCodigo.Value,9,4));
  Except
    Mes := 0;
    Anio := 0;
  End; {Try}


  tProductos.Params.ParamByName('Codigo').AsString := Trim (tDetalles_SalidaCodigo.Value);
  tProductos.Params.ParamByName('Secuencia').AsInteger := Secuencia;
  tProductos.Refresh;

  If tProductos.RecordCount <= 0 Then
    Raise Exception.Create('El Código Introducido NO ESTÁ REGISTRADO'#13'Por Favor Verifique');

  If tProductosExistencia.Value = 0 Then
    Raise Exception.Create(Format('No Existen Unidades de %s Disponibles'#13'Por Favor Verifique',[tProductosDescripcion.Value]));

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
  tDetalles_SalidaPrecio.Value        := tProductosPrecio_Venta_Contado.Value;
  tDetalles_SalidaDepartamento.Value  := tProductosDepartamento.Value;
  tDetalles_SalidaCategoria.Value     := tProductosCategoria.Value;
  tDetalles_SalidaTipo_Producto.Value := tProductosTipo_Producto.Value;
  tDetalles_SalidaFabricante.Value    := tProductosFabricante.Value;

  tDetalles_SalidaCliente.Value       := tSalidas_InventarioCliente.Value;
  tDetalles_SalidaFecha.Value         := tSalidas_InventarioFecha.Value;
  tDetalles_SalidaHora.Value          := tSalidas_InventarioHora.Value;
  tDetalles_SalidaSecuencia.Value     := tDetalles_Salida.RecordCount + 1;
  tDetalles_SalidaUsuario.value       := _CurrentUser
end;

procedure TModulo.CalculoTotales(Sender: TField);
begin
  tDetalles_SalidaTotal_Costo.Value := tDetalles_SalidaCantidad.Value * tDetalles_SalidaCosto.Value;
  tDetalles_SalidaTotal_Precio.Value := tDetalles_SalidaCantidad.Value * tDetalles_SalidaPrecio.Value
end;

procedure TModulo.tDetalles_SalidaAfterPost(DataSet: TDataSet);
  Var
    CurrentRecord : TBookmark;
    Total_Costo   ,
    Total_Precios : Currency;
begin
  Try
    Total_Costo   := 0;
    Total_Precios := 0;
    CurrentRecord := tDetalles_Salida.GetBookmark;
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
  tProductosCod_Generado.Value := Pad('L',Trim(tProductosSecuencia.AsString),6,'0') + '000000'
end;

procedure TModulo.tDetalles_SalidaBeforePost(DataSet: TDataSet);
  Var
    Actualizado : Double;

begin
  Actualizado := ActualizarExistencia(tProductosCodigo.Value,
                                      tProductosTipo_Inventario.Value,
                                      -tDetalles_SalidaCantidad.Value);
  If Actualizado > 0 Then
    Raise Exception.Create(Format(_ErrCantidadSalidaInsuficiente,[8,2,Actualizado,tProductosDescripcion.Value + '-' + tProductosPresentacion.Value]));

  If Actualizado > 0 Then
    Raise Exception.Create(Format(_ErrCantidadSalidaInsuficiente,[8,2,Actualizado,tProductosDescripcion.Value + '-' + tProductosPresentacion.Value]));

end;

procedure TModulo.tDetalles_SalidaBeforeEdit(DataSet: TDataSet);
begin
  ActualizarExistencia(tProductosCodigo.Value,
                       tProductosTipo_Inventario.Value,
                       tDetalles_SalidaCantidad.Value)
end;

procedure TModulo.tDetalles_CompraAfterPost(DataSet: TDataSet);
  Var
    CurrentRecord   : TBookmark;
    Total_Costo     ,
    Total_Descuento ,
    Total_Impuesto  : Currency;

begin
  Try
    Total_Costo     := 0;
    Total_Descuento := 0;
    Total_Impuesto  := 0;

    CurrentRecord := tDetalles_Compra.GetBookmark;
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
    Actualizado : Double;

begin
  If Not tDetalles_CompraMes.IsNull Then
    If (tDetalles_CompraMes.Value <= MonthOf(Enlace.AppServer.ServerDate)) And
       (tDetalles_CompraAno.Value <= YearOf(Enlace.AppServer.ServerDate)) Then
      Raise Exception.Create(_ErrProductoVencido);
  Try
    tDetalles_CompraCodigo.OnValidate := Nil;
    tDetalles_CompraCodigo.Value := Trim(UpperCase(tDetalles_CompraCodigo.Value));
    Actualizado := ActualizarExistencia(tDetalles_CompraCodigo_Real.Value,
                                        _InventarioNormal,
                                        tDetalles_CompraCantidad.Value);
    If Actualizado > 0 Then
      Raise Exception.Create(Format(_ErrCantidadCompradaInsuficiente,[8,2,Actualizado,tProductosDescripcion.Value + '-' + tProductosPresentacion.Value]));
  Finally
    tDetalles_CompraCodigo.OnValidate := tDetalles_CompraCodigoValidate
  End
end;

procedure TModulo.tDetalles_CompraBeforeEdit(DataSet: TDataSet);
begin
  ActualizarExistencia(tProductosCodigo.Value,
                       _InventarioNormal,
                       -tDetalles_CompraCantidad.Value)
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
      Begin
        {Application.CreateForm(TFProductos,FProductos);
        FProductos.Codigo.Text := Trim(tDetalles_CompraCodigo.Value);
        FProductos.ShowModal;
        FProductos.Free;}
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

  tDetalles_CompraDescripcion.Value   := Format ('%s - %s',[Trim(tProductosDescripcion.Value),Trim(tProductosPresentacion.Value)]);
  tDetalles_CompraPrecio_Lista.Value  := tProductosCosto_Promedio.Value;
  tDetalles_CompraDepartamento.Value  := tProductosDepartamento.Value;
  tDetalles_CompraCategoria.Value     := tProductosCategoria.Value;
  tDetalles_CompraTipo_Producto.Value := tProductosTipo_Producto.Value;
  tDetalles_CompraFabricante.Value    := tProductosFabricante.Value;
  tDetalles_CompraSecuencia.Value     := tProductosSecuencia.Value;

  tDetalles_CompraProveedor.Value     := tCompra_ProductosProveedor.Value;
  tDetalles_CompraFecha.Value         := tCompra_ProductosFecha.Value;
  tDetalles_CompraHora.Value          := tCompra_ProductosHora.Value;
  tDetalles_CompraUsuario.value       := _CurrentUser;
  tDetalles_Compra.EnableControls
end;

procedure TModulo.Calculo_Totales_Detalle_Compra(Sender: TField);
begin
  tDetalles_CompraValor_Descuento.Value := tDetalles_CompraPrecio_Lista.Value * (tDetalles_CompraDescuento.Value / 100);
  tDetalles_CompraValor_Impuesto.Value  := tDetalles_CompraPrecio_Lista.Value * (tDetalles_CompraImpuesto.Value / 100);
  tDetalles_CompraCosto.Value           := tDetalles_CompraPrecio_Lista.Value + tDetalles_CompraValor_Impuesto.Value - tDetalles_CompraValor_Descuento.Value;

  tDetalles_CompraTotal_Costo.Value := tDetalles_CompraCosto.Value * tDetalles_CompraCantidad.Value;

  tDetalles_CompraTotal_Descuento.Value := tDetalles_CompraValor_Descuento.Value * tDetalles_CompraCantidad.Value;
  tDetalles_CompraTotal_Impuesto.Value  := tDetalles_CompraValor_Impuesto.Value * tDetalles_CompraCantidad.Value
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
                                      tFacturasValor_Impuesto.Value +
                                      tFacturasValor_Descuento.Value;

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

procedure TModulo.tDetalles_FacturaAfterDelete(DataSet: TDataSet);
  Var
    CurrentRecord   : TBookmark;
    Total_Costo     ,
    Total_Precio    ,
    Total_Descuento ,
    Total_Impuesto  : Currency;

begin
  Try
    Total_Costo     := 0;
    Total_Precio    := 0;
    Total_Descuento := 0;
    Total_Impuesto  := 0;

    CurrentRecord := tDetalles_Factura.GetBookmark;
    tDetalles_Factura.DisableControls;
    tDetalles_Factura.First;

    While Not tDetalles_Factura.Eof Do
      Begin
        Total_Costo     := tDetalles_FacturaTotal_Costo.Value + Total_Costo;
        Total_Precio    := tDetalles_FacturaTotal_Precio.Value + Total_Precio;
        Total_Impuesto  := tDetalles_FacturaTotal_Impuesto.Value + Total_Impuesto;
        Total_Descuento := tDetalles_FacturaTotal_Descuento.Value + Total_Descuento;
        tDetalles_Factura.Next
      End;{While}

    tFacturasSubTotal.Value := Total_Precio;
//  tFacturasTotalCosto.Value := Total_Costo;
    tFacturasValor_Impuesto_Detalle.Value := Total_Impuesto;
    tFacturasValor_Descuento_Detalle.Value := Total_Descuento
  Finally
    tDetalles_Factura.GotoBookmark(CurrentRecord);
    tDetalles_Factura.FreeBookmark(CurrentRecord);
    tDetalles_Factura.EnableControls
  End {Try}
end;

procedure TModulo.tDetalles_FacturaBeforeDelete(DataSet: TDataSet);
begin
  ActualizarExistencia(tProductosCodigo.Value,
                       _InventarioNormal,
                       tDetalles_FacturaCantidad.Value)
end;

procedure TModulo.tDetalles_FacturaBeforePost(DataSet: TDataSet);
  Var
    Actualizado : Double;

begin
  If Not tDetalles_FacturaMes.IsNull Then
    If (tDetalles_FacturaMes.Value <= MonthOf(Enlace.AppServer.ServerDate)) And
       (tDetalles_FacturaAno.Value <= YearOf(Enlace.AppServer.ServerDate)) Then
      Raise Exception.Create(_ErrProductoVencido);
  Try
    tDetalles_FacturaCodigo.OnValidate := Nil;
    tDetalles_FacturaCodigo.Value := Trim(UpperCase(tDetalles_FacturaCodigo.Value));
    Actualizado := ActualizarExistencia(tDetalles_FacturaCodigo_Real.Value,
                                        _InventarioNormal,
                                        -tDetalles_FacturaCantidad.Value);
    If Actualizado > 0 Then
      Raise Exception.Create(Format(_ErrCantidadFacturadaInsuficiente,[8,2,Actualizado,tProductosDescripcion.Value + '-' + tProductosPresentacion.Value]));
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
      Begin
        {Application.CreateForm(TFProductos,FProductos);
        FProductos.Codigo.Text := Trim(tDetalles_FacturaCodigo.Value);
        FProductos.ShowModal;
        FProductos.Free;}
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

  tDetalles_FacturaDescripcion.Value   := Format ('%s - %s',[Trim(tProductosDescripcion.Value),Trim(tProductosPresentacion.Value)]);
  tDetalles_FacturaPrecio_Real.Value   := tProductosPrecio_Venta_Contado.Value;
  tDetalles_FacturaPrecio_Venta.Value  := tProductosPrecio_Venta_Contado.Value;
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

  tDetalles_FacturaTotal_Precio.Value := TotalPrecio * tDetalles_FacturaCantidad.Value;
  tDetalles_FacturaTotal_Costo.Value  := tDetalles_FacturaCosto.Value * tDetalles_FacturaCantidad.Value;

  tDetalles_FacturaTotal_Descuento.Value := tDetalles_FacturaValor_Descuento.Value * tDetalles_FacturaCantidad.Value;
  tDetalles_FacturaTotal_Impuesto.Value  := tDetalles_FacturaValor_Impuesto.Value * tDetalles_FacturaCantidad.Value
end;

procedure TModulo.Calculo_Totales_Forma_Pago(Sender: TField);
begin
  tDetalle_Pago_FacturaValor_Recibido_Local.Value := tDetalle_Pago_FacturaValor_Recibido.Value * tDetalle_Pago_FacturaTasa.Value
end;

procedure TModulo.tDetalle_Pago_FacturaCalcFields(DataSet: TDataSet);
begin
  tDetalle_Pago_FacturaTotal_Forma_Pago.Value := tFacturasPendiente.Value / tDetalle_Pago_FacturaTasa.Value;
  tDetalle_Pago_FacturaDevolver_Forma_Pago.Value := tFacturasTotal_Efectivo_Devuelto.Value / tDetalle_Pago_FacturaTasa.Value
end;

procedure TModulo.tDetalle_Pago_FacturaAfterPost(DataSet: TDataSet);
  Var
    CurrentRecord   : TBookmark;
    Total_Pagado    ,
    Total_Efectivo  : Currency;

begin
  Try
    Total_Pagado   := 0;
    Total_Efectivo := 0;

    CurrentRecord := tDetalle_Pago_Factura.GetBookmark;
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

end.


