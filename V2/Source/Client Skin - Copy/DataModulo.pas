unit DataModulo;

interface

uses
  SysUtils, Classes, DBClient, DB, SConnect, ImgList, Controls,
  Wwdatsrc, Variants, MConnect, ActnList, XPStyleActnCtrls, ActnMan,
  Forms, Windows, Dialogs, ActnColorMaps, RegKeys, Math,
  SUIForm, ComCtrls, OoMisc, AdPort, Graphics, SUIMgr;

type
  TModulo = class(TDataModule)
    Enlace: TSocketConnection;
    Concentrador: TConnectionBroker;
    tProductos: TClientDataSet;
    dProductos: TDataSource;
    tProductosCodigo: TStringField;
    tProductosBarra: TStringField;
    tProductosSecuencia: TIntegerField;
    tProductosReferencia: TStringField;
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
    tProductosMedida_Compra: TStringField;
    tProductosUnidades_Medida_Compra: TBCDField;
    tProductosUltima_Compra: TDateField;
    tProductosMedida_Venta: TStringField;
    tProductosUnidades_Medida_Venta: TBCDField;
    tProductosAplica_Descuento: TBooleanField;
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
    tSimilares: TClientDataSet;
    tProductosUsuario: TStringField;
    tProductosqrSimilares: TDataSetField;
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
    tDetalles_FacturaCantidad: TBCDField;
    tDetalles_FacturaFecha: TDateField;
    tDetalles_FacturaHora: TTimeField;
    tDetalles_FacturaUsuario: TStringField;
    tDetalles_FacturaMes: TSmallintField;
    tDetalles_FacturaAno: TSmallintField;
    tDetalles_FacturaCliente: TStringField;
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
    tDetalles_FacturaCantidad_Devuelto: TBCDField;
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
    tNotas_Credito: TClientDataSet;
    dNotas_Credito: TDataSource;
    tDetalle_Notas_Credito: TClientDataSet;
    dDetalle_Notas_Credito: TDataSource;
    tClientesSecuencia: TIntegerField;
    tClientesProceso: TStringField;
    tListado_Clientesmail: TStringField;
    tListado_ClientesSecuencia: TIntegerField;
    tListado_ClientesProceso: TStringField;
    tFacturas_ClienteTotal_Costo: TBCDField;
    tFacturas_ClienteTipo_Factura: TStringField;
    tFacturas_ClienteTipo_NCF: TStringField;
    tFacturas_ClienteNCF: TStringField;
    tFacturasTipo_NCF: TStringField;
    tFacturasNCF: TStringField;
    tCompra_ProductosTipo_NCF: TStringField;
    tCompra_ProductosNCF: TStringField;
    tCompra_ProductosqrDetalle_Pago_Compra: TDataSetField;
    tComprobantes_Fiscales: TClientDataSet;
    dComprobantes_Fiscales: TDataSource;
    tComprobantes_FiscalesTipo: TStringField;
    tComprobantes_FiscalesAplicable: TStringField;
    tComprobantes_FiscalesSucursal: TStringField;
    tComprobantes_FiscalesDescripcion: TStringField;
    tComprobantes_FiscalesTitulo_Impresion: TStringField;
    tComprobantes_FiscalesSecuencia: TIntegerField;
    tProductosFoto: TBlobField;
    tClientesFoto: TBlobField;
    tClientesNacionalidad: TStringField;
    tClientesSexo: TStringField;
    tClientesSector: TIntegerField;
    tClientesFecha_Nacimiento: TDateField;
    tClientesEstado_Civil: TStringField;
    tClientesZona: TIntegerField;
    tClientesLugar_Trabajo: TStringField;
    tListado_ClientesFoto: TBlobField;
    tListado_ClientesNacionalidad: TStringField;
    tListado_ClientesSexo: TStringField;
    tListado_ClientesSector: TIntegerField;
    tListado_ClientesFecha_Nacimiento: TDateField;
    tListado_ClientesEstado_Civil: TStringField;
    tListado_ClientesZona: TIntegerField;
    tListado_ClientesLugar_Trabajo: TStringField;
    tOrdenes_Compra: TClientDataSet;
    dOrdenes_Compra: TDataSource;
    tDetalles_Orden_Compra: TClientDataSet;
    dDetalles_Orden_Compra: TDataSource;
    tOrdenes_CompraNumero: TIntegerField;
    tOrdenes_CompraProceso: TStringField;
    tOrdenes_CompraNombre_Proveedor: TStringField;
    tOrdenes_CompraFecha: TDateField;
    tOrdenes_CompraHora: TTimeField;
    tOrdenes_CompraConcepto_Compra: TStringField;
    tOrdenes_CompraReferencia: TStringField;
    tOrdenes_CompraSubTotal: TBCDField;
    tOrdenes_CompraTotalNeto: TBCDField;
    tOrdenes_CompraComentario: TStringField;
    tOrdenes_CompraFecha_Validacion: TDateField;
    tOrdenes_CompraFecha_Cierre: TDateField;
    tOrdenes_CompraUsuario: TStringField;
    tOrdenes_CompraValidado: TBooleanField;
    tOrdenes_CompraCerrado: TBooleanField;
    tOrdenes_CompraImpuesto_Global: TBCDField;
    tOrdenes_CompraValor_Impuesto: TBCDField;
    tOrdenes_CompraValor_Impuesto_Detalle: TBCDField;
    tOrdenes_CompraTotal_Impuesto: TBCDField;
    tOrdenes_CompraDescuento_Global: TBCDField;
    tOrdenes_CompraValor_Descuento: TBCDField;
    tOrdenes_CompraValor_Descuento_Detalle: TBCDField;
    tOrdenes_CompraTotal_Descuento: TBCDField;
    tOrdenes_CompraTerminos: TIntegerField;
    tOrdenes_CompraVencimiento: TDateField;
    tOrdenes_CompraPagado: TBCDField;
    tOrdenes_CompraPendiente: TBCDField;
    tOrdenes_CompraUltimoPago: TDateField;
    tOrdenes_CompraProveedor: TIntegerField;
    tOrdenes_CompraTipo_NCF: TStringField;
    tOrdenes_CompraNCF: TStringField;
    tOrdenes_CompraqrDetalles_Orden_Compra: TDataSetField;
    tDetalles_Orden_CompraProceso: TStringField;
    tDetalles_Orden_CompraCodigo: TStringField;
    tDetalles_Orden_CompraCodigo_Real: TStringField;
    tDetalles_Orden_CompraSecuencia: TIntegerField;
    tDetalles_Orden_CompraDescripcion: TStringField;
    tDetalles_Orden_CompraCategoria: TIntegerField;
    tDetalles_Orden_CompraFabricante: TIntegerField;
    tDetalles_Orden_CompraDepartamento: TIntegerField;
    tDetalles_Orden_CompraTipo_Producto: TIntegerField;
    tDetalles_Orden_CompraCosto: TBCDField;
    tDetalles_Orden_CompraPrecio_Lista: TBCDField;
    tDetalles_Orden_CompraCantidad: TBCDField;
    tDetalles_Orden_CompraTotal_Costo: TBCDField;
    tDetalles_Orden_CompraTotal_Precio: TBCDField;
    tDetalles_Orden_CompraFecha: TDateField;
    tDetalles_Orden_CompraHora: TTimeField;
    tDetalles_Orden_CompraUsuario: TStringField;
    tDetalles_Orden_CompraMes: TSmallintField;
    tDetalles_Orden_CompraAno: TSmallintField;
    tDetalles_Orden_CompraProveedor: TIntegerField;
    tDetalles_Orden_CompraImpuesto: TBCDField;
    tDetalles_Orden_CompraDescuento: TBCDField;
    tDetalles_Orden_CompraValor_Impuesto: TBCDField;
    tDetalles_Orden_CompraValor_Descuento: TBCDField;
    tDetalles_Orden_CompraTotal_Impuesto: TBCDField;
    tDetalles_Orden_CompraTotal_Descuento: TBCDField;
    tDetalles_Orden_CompraCantidad_Devuelto: TBCDField;
    tDetalles_Orden_CompraTipo_Beneficio: TStringField;
    tDetalles_Orden_CompraValor_Beneficio_PMayor_Contado: TBCDField;
    tDetalles_Orden_CompraValor_Beneficio_PMayor_Credito: TBCDField;
    tDetalles_Orden_CompraValor_Beneficio_Detalle_Contado: TBCDField;
    tDetalles_Orden_CompraValor_Beneficio_Detalle_Credito: TBCDField;
    tDetalles_Orden_CompraPrecio_Venta_Por_Mayor_Contado: TBCDField;
    tDetalles_Orden_CompraPrecio_Venta_Por_Mayor_Credito: TBCDField;
    tDetalles_Orden_CompraPrecio_Venta_Detalle_Contado: TBCDField;
    tDetalles_Orden_CompraPrecio_Venta_Detalle_Credito: TBCDField;
    tDetalles_Orden_CompraPrecio_Minimo: TBCDField;
    tDetalles_Orden_CompraContenido: TBCDField;
    tDetalles_Orden_CompraReferencia: TStringField;
    tListadoVendedores: TClientDataSet;
    dListadoVendedores: TDataSource;
    tVendedores: TClientDataSet;
    dVendedores: TDataSource;
    tVendedoresCedula_Rnc_Pasaporte: TStringField;
    tVendedoresNombre: TStringField;
    tVendedoresApellido: TStringField;
    tVendedoresTipo_Telefono_1: TStringField;
    tVendedoresTipo_Telefono_2: TStringField;
    tVendedoresTipo_Telefono_3: TStringField;
    tVendedoresTipo_Telefono_4: TStringField;
    tVendedoresNumero_Telefono_1: TStringField;
    tVendedoresNumero_Telefono_2: TStringField;
    tVendedoresNumero_Telefono_3: TStringField;
    tVendedoresNumero_Telefono_4: TStringField;
    tVendedoresDireccion: TStringField;
    tVendedoresPais: TStringField;
    tVendedoresCiudad: TStringField;
    tVendedoresEstado: TStringField;
    tVendedoresNombreCompleto: TStringField;
    tVendedoresStatus: TStringField;
    tVendedoresFecha_Registro: TDateField;
    tVendedoresmail: TStringField;
    tVendedoresSecuencia: TIntegerField;
    tVendedoresFoto: TBlobField;
    tVendedoresSexo: TStringField;
    tVendedoresSector: TIntegerField;
    tVendedoresEstado_Civil: TStringField;
    tVendedoresZona: TIntegerField;
    tListadoVendedoresCedula_Rnc_Pasaporte: TStringField;
    tListadoVendedoresNombre: TStringField;
    tListadoVendedoresApellido: TStringField;
    tListadoVendedoresTipo_Telefono_1: TStringField;
    tListadoVendedoresTipo_Telefono_2: TStringField;
    tListadoVendedoresTipo_Telefono_3: TStringField;
    tListadoVendedoresTipo_Telefono_4: TStringField;
    tListadoVendedoresNumero_Telefono_1: TStringField;
    tListadoVendedoresNumero_Telefono_2: TStringField;
    tListadoVendedoresNumero_Telefono_3: TStringField;
    tListadoVendedoresNumero_Telefono_4: TStringField;
    tListadoVendedoresDireccion: TStringField;
    tListadoVendedoresPais: TStringField;
    tListadoVendedoresCiudad: TStringField;
    tListadoVendedoresEstado: TStringField;
    tListadoVendedoresNombreCompleto: TStringField;
    tListadoVendedoresStatus: TStringField;
    tListadoVendedoresFecha_Registro: TDateField;
    tListadoVendedoresmail: TStringField;
    tListadoVendedoresSecuencia: TIntegerField;
    tListadoVendedoresFoto: TBlobField;
    tListadoVendedoresSexo: TStringField;
    tListadoVendedoresSector: TIntegerField;
    tListadoVendedoresEstado_Civil: TStringField;
    tListadoVendedoresZona: TIntegerField;
    tCompra_ProductosOrden_Compra_Numero: TIntegerField;
    tCompra_ProductosProceso_Orden_Compra: TStringField;
    tOrdenes_CompraStatus: TStringField;
    tOrdenes_CompraProceso_Compra: TStringField;
    tOrdenes_CompraCompra_Numero: TIntegerField;
    tFacturasVendedor: TStringField;
    tFacturasNombre_Vendedor: TStringField;
    tDetalles_FacturaRegistro: TIntegerField;
    tCompra_ProductosCondicion: TStringField;
    tFacturas_ClienteVendedor: TStringField;
    tFacturas_ClienteNombre_Vendedor: TStringField;
    tFacturas_ClienteTotal_Restante: TBCDField;
    tFacturas_ClienteInteres: TBCDField;
    tFacturas_ClienteModalidad: TStringField;
    tFacturas_ClienteValor_Interes: TBCDField;
    tFacturas_ClienteValor_Capital: TBCDField;
    tFacturas_ClienteValor_Cuotas: TBCDField;
    tFacturas_ClienteGasto_Cierre: TBCDField;
    tFacturas_ClienteValor_Gasto_Cierre: TBCDField;
    tFacturas_ClienteVence_Financiamiento: TDateField;
    tFacturas_ClienteTotal_Estimado: TBCDField;
    tFacturas_ClienteMonto_Financiado: TBCDField;
    tFacturas_ClienteTipo_Gasto_Cierre: TStringField;
    tFacturas_ClientePeriodo_Pagos: TStringField;
    tFacturas_ClientePlazo_Pago: TSmallintField;
    tFacturasTotal_Restante: TBCDField;
    tFacturasInteres: TBCDField;
    tFacturasModalidad: TStringField;
    tFacturasValor_Interes: TBCDField;
    tFacturasValor_Capital: TBCDField;
    tFacturasValor_Cuotas: TBCDField;
    tFacturasGasto_Cierre: TBCDField;
    tFacturasValor_Gasto_Cierre: TBCDField;
    tFacturasVence_Financiamiento: TDateField;
    tFacturasTotal_Estimado: TBCDField;
    tFacturasMonto_Financiado: TBCDField;
    tFacturasTipo_Gasto_Cierre: TStringField;
    tFacturasPeriodo_Pagos: TStringField;
    tFacturasPlazo_Pago: TSmallintField;
    tFacturasqrCuotas_Factura: TDataSetField;
    tCuotas: TClientDataSet;
    dCuotas: TDataSource;
    tCuotasProceso: TStringField;
    tCuotasNumero: TSmallintField;
    tCuotasTipo: TStringField;
    tCuotasFecha: TDateField;
    tCuotasVence: TDateField;
    tCuotasMonto: TBCDField;
    tCuotasConcepto: TStringField;
    tCuotasCapital: TBCDField;
    tCuotasCapital_Pendiente: TBCDField;
    tCuotasInteres: TBCDField;
    tCuotasInteres_Pendiente: TBCDField;
    tCuotasMora: TBCDField;
    tCuotasMora_Pendiente: TBCDField;
    tCuotasTotal_Pagado: TBCDField;
    tCuotasTotal_Pendiente: TBCDField;
    tCuotasDias_Vencidos: TIntegerField;
    tCuotasFecha_Calculo_Mora: TDateField;
    tCuotasRecargo: TStringField;
    tCuotasPrioridad: TStringField;
    DsImageCDS: TDataSource;
    tParametrosDEMO: TBooleanField;
    tParametrosTIME: TSmallintField;
    tParametrosCOUNTER: TSmallintField;
    tParametrosDATECOUNT: TDateField;
    tParametrosCount_Day: TSmallintField;
    tParametrosSerie_NCF: TStringField;
    tParametrosDivision_NCF: TStringField;
    tParametrosPunto_Emision_NCF: TStringField;
    tParametrosArea_Impresion_NCF: TStringField;
    tParametrosLimite_NCF: TIntegerField;
    tParametrosInforme_Nuevo_NCF: TIntegerField;
    tParametrosTermino_Financiado: TIntegerField;
    tFacturasDescripcion_NCF: TStringField;
    tCuotas_Facturas: TClientDataSet;
    dCuotas_Facturas: TDataSource;
    tCuotas_FacturasProceso: TStringField;
    tCuotas_FacturasNumero: TSmallintField;
    tCuotas_FacturasTipo: TStringField;
    tCuotas_FacturasFecha: TDateField;
    tCuotas_FacturasVence: TDateField;
    tCuotas_FacturasMonto: TBCDField;
    tCuotas_FacturasConcepto: TStringField;
    tCuotas_FacturasCapital: TBCDField;
    tCuotas_FacturasCapital_Pendiente: TBCDField;
    tCuotas_FacturasInteres: TBCDField;
    tCuotas_FacturasInteres_Pendiente: TBCDField;
    tCuotas_FacturasMora: TBCDField;
    tCuotas_FacturasMora_Pendiente: TBCDField;
    tCuotas_FacturasTotal_Pagado: TBCDField;
    tCuotas_FacturasTotal_Pendiente: TBCDField;
    tCuotas_FacturasDias_Vencidos: TIntegerField;
    tCuotas_FacturasFecha_Calculo_Mora: TDateField;
    tCuotas_FacturasRecargo: TStringField;
    tCuotas_FacturasPrioridad: TStringField;
    Mensajes: TsuiMSNPopForm;
    SystemImages: TImageList;
    ImageList1: TImageList;
    tParametrosTipo_NCF_Notas_Credito: TStringField;
    tParametrosTipo_NCF_Notas_Debito: TStringField;
    SerialPort: TApdComPort;
    tFacturasInicial: TBCDField;
    tFacturas_ClienteDescripcion_NCF: TStringField;
    tFacturas_ClienteInicial: TBCDField;
    tFacturasNombre_Termino: TStringField;
    tProveedoresFoto: TBlobField;
    tFacturas_Proveedor: TClientDataSet;
    dFacturas_Proveedor: TDataSource;
    tFacturas_ProveedorNumero: TIntegerField;
    tFacturas_ProveedorProceso: TStringField;
    tFacturas_ProveedorNombre_Proveedor: TStringField;
    tFacturas_ProveedorCondicion: TStringField;
    tFacturas_ProveedorFecha: TDateField;
    tFacturas_ProveedorHora: TTimeField;
    tFacturas_ProveedorConcepto_Compra: TStringField;
    tFacturas_ProveedorReferencia: TStringField;
    tFacturas_ProveedorSubTotal: TBCDField;
    tFacturas_ProveedorTotalNeto: TBCDField;
    tFacturas_ProveedorComentario: TStringField;
    tFacturas_ProveedorFecha_Validacion: TDateField;
    tFacturas_ProveedorFecha_Cierre: TDateField;
    tFacturas_ProveedorUsuario: TStringField;
    tFacturas_ProveedorValidado: TBooleanField;
    tFacturas_ProveedorCerrado: TBooleanField;
    tFacturas_ProveedorImpuesto_Global: TBCDField;
    tFacturas_ProveedorValor_Impuesto: TBCDField;
    tFacturas_ProveedorValor_Impuesto_Detalle: TBCDField;
    tFacturas_ProveedorTotal_Impuesto: TBCDField;
    tFacturas_ProveedorDescuento_Global: TBCDField;
    tFacturas_ProveedorValor_Descuento: TBCDField;
    tFacturas_ProveedorValor_Descuento_Detalle: TBCDField;
    tFacturas_ProveedorTotal_Descuento: TBCDField;
    tFacturas_ProveedorTerminos: TIntegerField;
    tFacturas_ProveedorVencimiento: TDateField;
    tFacturas_ProveedorPagado: TBCDField;
    tFacturas_ProveedorPendiente: TBCDField;
    tFacturas_ProveedorUltimoPago: TDateField;
    tFacturas_ProveedorProveedor: TIntegerField;
    tFacturas_ProveedorTipo_NCF: TStringField;
    tFacturas_ProveedorNCF: TStringField;
    tFacturas_ProveedorOrden_Compra_Numero: TIntegerField;
    tFacturas_ProveedorProceso_Orden_Compra: TStringField;
    tProductosLector_Codigo: TStringField;
    tSimilaresDescripcion: TStringField;
    tSimilaresCodigo: TStringField;
    tComponentesCosto: TBCDField;
    tComponentesTotal_Costo: TCurrencyField;
    tComponentesDescripcion_Componente: TStringField;
    tFabricanteFoto: TBlobField;
    tProveedoresZona: TIntegerField;
    tFacturasConduce: TStringField;
    tPagos_ClientesProceso: TStringField;
    tPagos_ClientesNumero: TIntegerField;
    tPagos_ClientesFecha: TDateField;
    tPagos_ClientesHora: TTimeField;
    tPagos_ClientesCliente: TStringField;
    tPagos_ClientesFactura: TStringField;
    tPagos_ClientesMonto: TBCDField;
    tPagos_ClientesConcepto: TStringField;
    tPagos_ClientesPagado_Capital: TBCDField;
    tPagos_ClientesPagado_Interes: TBCDField;
    tPagos_ClientesPagado_Mora: TBCDField;
    tPagos_ClientesPagado_Otros: TBCDField;
    tPagos_ClientesTotal_Pagado: TBCDField;
    tPagos_ClientesRecibido_Por: TStringField;
    tPagos_ClientesStatus: TStringField;
    tPagos_ClientesqrDetalle_Pago_Facturas: TDataSetField;
    tDetalle_Pago_ClientesProceso: TStringField;
    tDetalle_Pago_ClientesFactura: TStringField;
    tDetalle_Pago_ClientesCliente: TStringField;
    tDetalle_Pago_ClientesCuota: TSmallintField;
    tDetalle_Pago_ClientesFecha: TDateField;
    tDetalle_Pago_ClientesHora: TTimeField;
    tDetalle_Pago_ClientesCapital: TBCDField;
    tDetalle_Pago_ClientesInteres: TBCDField;
    tDetalle_Pago_ClientesMora: TBCDField;
    tDetalle_Pago_ClientesOtros: TBCDField;
    tDetalle_Pago_ClientesVencimiento: TDateField;
    tDetalle_Pago_ClientesPendiente: TBCDField;
    tCuotas_FacturasOtros: TBCDField;
    tCuotas_FacturasOtros_Pendiente: TBCDField;
    tCuotas_FacturasFecha_Ultimo_Pago: TDateField;
    tNotas_CreditoProceso: TStringField;
    tNotas_CreditoNumero: TIntegerField;
    tNotas_CreditoFecha: TDateField;
    tNotas_CreditoHora: TTimeField;
    tNotas_CreditoCliente: TStringField;
    tNotas_CreditoFactura: TStringField;
    tNotas_CreditoTipo_NCF: TStringField;
    tNotas_CreditoNCF: TStringField;
    tNotas_CreditoNCF_Modificado: TStringField;
    tNotas_CreditoMonto: TBCDField;
    tNotas_CreditoConcepto: TStringField;
    tNotas_CreditoCapital: TBCDField;
    tNotas_CreditoInteres: TBCDField;
    tNotas_CreditoMora: TBCDField;
    tNotas_CreditoOtros: TBCDField;
    tNotas_CreditoTotal: TBCDField;
    tNotas_CreditoRealizada_Por: TStringField;
    tNotas_CreditoStatus: TStringField;
    tNotas_CreditoqrDetalle_Notas_Credito: TDataSetField;
    tDetalle_Notas_CreditoProceso: TStringField;
    tDetalle_Notas_CreditoFactura: TStringField;
    tDetalle_Notas_CreditoCliente: TStringField;
    tDetalle_Notas_CreditoCuota: TSmallintField;
    tDetalle_Notas_CreditoFecha: TDateField;
    tDetalle_Notas_CreditoHora: TTimeField;
    tDetalle_Notas_CreditoCapital: TBCDField;
    tDetalle_Notas_CreditoInteres: TBCDField;
    tDetalle_Notas_CreditoMora: TBCDField;
    tDetalle_Notas_CreditoOtros: TBCDField;
    tDetalle_Notas_CreditoVencimiento: TDateField;
    tDetalle_Notas_CreditoPendiente: TBCDField;
    tNotas_CreditoNumero_Factura: TIntegerField;
    tListadoPagosProceso: TStringField;
    tListadoPagosNumero: TIntegerField;
    tListadoPagosFecha: TDateField;
    tListadoPagosHora: TTimeField;
    tListadoPagosCliente: TStringField;
    tListadoPagosFactura: TStringField;
    tListadoPagosMonto: TBCDField;
    tListadoPagosConcepto: TStringField;
    tListadoPagosPagado_Capital: TBCDField;
    tListadoPagosPagado_Interes: TBCDField;
    tListadoPagosPagado_Mora: TBCDField;
    tListadoPagosPagado_Otros: TBCDField;
    tListadoPagosTotal_Pagado: TBCDField;
    tListadoPagosRecibido_Por: TStringField;
    tListadoPagosStatus: TStringField;
    tListado_ClientesInicial: TStringField;
    tNotas_Debito: TClientDataSet;
    dNotas_Debito: TDataSource;
    tDetalles_Notas_Debito: TClientDataSet;
    dDetalles_Notas_Debito: TDataSource;
    tListado_Facturas: TClientDataSet;
    dListado_Facturas: TDataSource;
    tListado_FacturasNumero: TIntegerField;
    tListado_FacturasProceso: TStringField;
    tListado_FacturasNombre_Cliente: TStringField;
    tListado_FacturasCondicion: TStringField;
    tListado_FacturasFecha: TDateField;
    tListado_FacturasHora: TTimeField;
    tListado_FacturasConcepto_Factura: TStringField;
    tListado_FacturasReferencia: TStringField;
    tListado_FacturasSubTotal: TBCDField;
    tListado_FacturasTotalNeto: TBCDField;
    tListado_FacturasTotal_Costo: TBCDField;
    tListado_FacturasComentario: TStringField;
    tListado_FacturasFecha_Validacion: TDateField;
    tListado_FacturasFecha_Cierre: TDateField;
    tListado_FacturasUsuario: TStringField;
    tListado_FacturasValidado: TBooleanField;
    tListado_FacturasCerrado: TBooleanField;
    tListado_FacturasImpuesto_Global: TBCDField;
    tListado_FacturasValor_Impuesto: TBCDField;
    tListado_FacturasValor_Impuesto_Detalle: TBCDField;
    tListado_FacturasTotal_Impuesto: TBCDField;
    tListado_FacturasDescuento_Global: TBCDField;
    tListado_FacturasValor_Descuento: TBCDField;
    tListado_FacturasValor_Descuento_Detalle: TBCDField;
    tListado_FacturasTotal_Descuento: TBCDField;
    tListado_FacturasTerminos: TIntegerField;
    tListado_FacturasVencimiento: TDateField;
    tListado_FacturasPagado: TBCDField;
    tListado_FacturasPendiente: TBCDField;
    tListado_FacturasUltimoPago: TDateField;
    tListado_FacturasTotal_Efectivo_Recibido: TBCDField;
    tListado_FacturasTotal_Efectivo_Devuelto: TBCDField;
    tListado_FacturasCliente: TStringField;
    tListado_FacturasStatus: TStringField;
    tListado_FacturasTipo_Factura: TStringField;
    tListado_FacturasTipo_NCF: TStringField;
    tListado_FacturasNCF: TStringField;
    tListado_FacturasVendedor: TStringField;
    tListado_FacturasNombre_Vendedor: TStringField;
    tListado_FacturasTotal_Restante: TBCDField;
    tListado_FacturasInteres: TBCDField;
    tListado_FacturasModalidad: TStringField;
    tListado_FacturasValor_Interes: TBCDField;
    tListado_FacturasValor_Capital: TBCDField;
    tListado_FacturasValor_Cuotas: TBCDField;
    tListado_FacturasGasto_Cierre: TBCDField;
    tListado_FacturasValor_Gasto_Cierre: TBCDField;
    tListado_FacturasVence_Financiamiento: TDateField;
    tListado_FacturasTotal_Estimado: TBCDField;
    tListado_FacturasMonto_Financiado: TBCDField;
    tListado_FacturasTipo_Gasto_Cierre: TStringField;
    tListado_FacturasPeriodo_Pagos: TStringField;
    tListado_FacturasPlazo_Pago: TSmallintField;
    tListado_FacturasDescripcion_NCF: TStringField;
    tListado_FacturasInicial: TBCDField;
    tListado_FacturasNombre_Termino: TStringField;
    tListado_FacturasConduce: TStringField;
    tListado_FacturasSelected: TBooleanField;
    tSeriales_Compra: TClientDataSet;
    dSeriales_Compra: TDataSource;
    tDetalles_CompraRegistro_Compra: TIntegerField;
    tDetalles_CompraUso_Inmediato: TBooleanField;
    tDetalles_CompraCantidad_Despachada: TBCDField;
    tDetalles_CompraConcepto_Uso: TStringField;
    tDetalles_CompraqrSeriales_Compra: TDataSetField;
    tSeriales_CompraCodigo: TStringField;
    tSeriales_CompraSerial: TStringField;
    tSeriales_CompraProceso: TStringField;
    tSeriales_CompraProveedor: TStringField;
    tSeriales_CompraFecha_Comprado: TDateField;
    tSeriales_CompraHora_Comprado: TTimeField;
    tSeriales_CompraSecuencia: TIntegerField;
    tSeriales_CompraUsuario: TStringField;
    tCompra_ProductosTotal_Seriales: TIntegerField;
    tCompra_ProductosSeriales_Registrados: TIntegerField;
    tCompras_Seriales: TClientDataSet;
    dCompras_Seriales: TDataSource;
    tCompras_SerialesNumero: TIntegerField;
    tCompras_SerialesProceso: TStringField;
    tCompras_SerialesNombre_Proveedor: TStringField;
    tCompras_SerialesFecha: TDateField;
    tCompras_SerialesHora: TTimeField;
    tCompras_SerialesConcepto_Compra: TStringField;
    tCompras_SerialesReferencia: TStringField;
    tCompras_SerialesSubTotal: TBCDField;
    tCompras_SerialesTotalNeto: TBCDField;
    tCompras_SerialesComentario: TStringField;
    tCompras_SerialesFecha_Validacion: TDateField;
    tCompras_SerialesFecha_Cierre: TDateField;
    tCompras_SerialesUsuario: TStringField;
    tCompras_SerialesValidado: TBooleanField;
    tCompras_SerialesCerrado: TBooleanField;
    tCompras_SerialesImpuesto_Global: TBCDField;
    tCompras_SerialesValor_Impuesto: TBCDField;
    tCompras_SerialesValor_Impuesto_Detalle: TBCDField;
    tCompras_SerialesTotal_Impuesto: TBCDField;
    tCompras_SerialesDescuento_Global: TBCDField;
    tCompras_SerialesValor_Descuento: TBCDField;
    tCompras_SerialesValor_Descuento_Detalle: TBCDField;
    tCompras_SerialesTotal_Descuento: TBCDField;
    tCompras_SerialesTerminos: TIntegerField;
    tCompras_SerialesVencimiento: TDateField;
    tCompras_SerialesPagado: TBCDField;
    tCompras_SerialesPendiente: TBCDField;
    tCompras_SerialesUltimoPago: TDateField;
    tCompras_SerialesProveedor: TIntegerField;
    tCompras_SerialesTipo_NCF: TStringField;
    tCompras_SerialesNCF: TStringField;
    tCompras_SerialesOrden_Compra_Numero: TIntegerField;
    tCompras_SerialesProceso_Orden_Compra: TStringField;
    tCompras_SerialesCondicion: TStringField;
    tCompras_SerialesTotal_Seriales: TIntegerField;
    tCompras_SerialesSeriales_Registrados: TIntegerField;
    tDetalles_CompraRequiere_Serial: TBooleanField;
    tSeriales_CompraStatus: TStringField;
    tSeriales_Factura: TClientDataSet;
    dSeriales_Factura: TDataSource;
    tDetalles_FacturaqrSeriales_Factura: TDataSetField;
    tSeriales_FacturaCodigo: TStringField;
    tSeriales_FacturaSerial: TStringField;
    tSeriales_FacturaProceso: TStringField;
    tSeriales_FacturaSecuencia: TIntegerField;
    tSeriales_FacturaUsuario: TStringField;
    tSeriales_FacturaCliente: TStringField;
    tSeriales_FacturaFecha_Facturado: TDateField;
    tSeriales_FacturaHora_Facturado: TTimeField;
    tSeriales_FacturaStatus: TStringField;
    tFacturasDebitado: TBCDField;
    tFacturasAcreditado: TBCDField;
    tFacturasBalance: TBCDField;
    tFacturasMora: TBCDField;
    tFacturasMonto_Vencido: TBCDField;
    tFacturasCuotas_Vencidas: TIntegerField;
    tFacturasMonto_Interes_Cumplido: TBCDField;
    tFacturasBalance_Capital: TBCDField;
    tFacturasBalance_Interes: TBCDField;
    tFacturasBalance_Otros: TBCDField;
    tFacturasFecha_Ultimo_Pago: TDateField;
    tFacturasDias_Vencidos: TIntegerField;
    tFacturasTotal_Seriales: TIntegerField;
    tFacturasSeriales_Registrados: TIntegerField;
    tDetalles_FacturaRequiere_Serial: TBooleanField;
    tFacturas_ClienteConduce: TStringField;
    tFacturas_ClienteDebitado: TBCDField;
    tFacturas_ClienteAcreditado: TBCDField;
    tFacturas_ClienteBalance: TBCDField;
    tFacturas_ClienteMora: TBCDField;
    tFacturas_ClienteMonto_Vencido: TBCDField;
    tFacturas_ClienteCuotas_Vencidas: TIntegerField;
    tFacturas_ClienteMonto_Interes_Cumplido: TBCDField;
    tFacturas_ClienteBalance_Capital: TBCDField;
    tFacturas_ClienteBalance_Interes: TBCDField;
    tFacturas_ClienteBalance_Otros: TBCDField;
    tFacturas_ClienteFecha_Ultimo_Pago: TDateField;
    tFacturas_ClienteDias_Vencidos: TIntegerField;
    tFacturas_ClienteTotal_Seriales: TIntegerField;
    tFacturas_ClienteSeriales_Registrados: TIntegerField;
    tFacturas_ProveedorTotal_Seriales: TIntegerField;
    tFacturas_ProveedorSeriales_Registrados: TIntegerField;
    tSeriales_Comprados: TClientDataSet;
    dSeriales_Comprados: TDataSource;
    tSeriales_CompradosCodigo: TStringField;
    tSeriales_CompradosProceso: TStringField;
    tSeriales_CompradosSerial: TStringField;
    tSeriales_CompradosProveedor: TStringField;
    tSeriales_CompradosFecha_Comprado: TDateField;
    tSeriales_CompradosHora_Comprado: TTimeField;
    tSeriales_CompradosSecuencia: TIntegerField;
    tSeriales_CompradosUsuario: TStringField;
    tSeriales_CompradosStatus: TStringField;
    tSeriales_Facturados: TClientDataSet;
    dSeriales_Facturados: TDataSource;
    tSeriales_FacturadosCodigo: TStringField;
    tSeriales_FacturadosSerial: TStringField;
    tSeriales_FacturadosCliente: TStringField;
    tSeriales_FacturadosProceso: TStringField;
    tSeriales_FacturadosFecha_Facturado: TDateField;
    tSeriales_FacturadosHora_Facturado: TTimeField;
    tSeriales_FacturadosUsuario: TStringField;
    tSeriales_FacturadosSecuencia: TIntegerField;
    tSeriales_FacturadosStatus: TStringField;
    tFacturas_Seriales: TClientDataSet;
    dFacturas_Seriales: TDataSource;
    tFacturas_SerialesNumero: TIntegerField;
    tFacturas_SerialesNombre_Cliente: TStringField;
    tFacturas_SerialesCondicion: TStringField;
    tFacturas_SerialesFecha: TDateField;
    tFacturas_SerialesHora: TTimeField;
    tFacturas_SerialesConcepto_Factura: TStringField;
    tFacturas_SerialesProceso: TStringField;
    tFacturas_SerialesReferencia: TStringField;
    tFacturas_SerialesSubTotal: TBCDField;
    tFacturas_SerialesTotalNeto: TBCDField;
    tFacturas_SerialesComentario: TStringField;
    tFacturas_SerialesFecha_Validacion: TDateField;
    tFacturas_SerialesFecha_Cierre: TDateField;
    tFacturas_SerialesUsuario: TStringField;
    tFacturas_SerialesValidado: TBooleanField;
    tFacturas_SerialesCerrado: TBooleanField;
    tFacturas_SerialesImpuesto_Global: TBCDField;
    tFacturas_SerialesValor_Impuesto: TBCDField;
    tFacturas_SerialesValor_Impuesto_Detalle: TBCDField;
    tFacturas_SerialesTotal_Impuesto: TBCDField;
    tFacturas_SerialesDescuento_Global: TBCDField;
    tFacturas_SerialesValor_Descuento: TBCDField;
    tFacturas_SerialesValor_Descuento_Detalle: TBCDField;
    tFacturas_SerialesTotal_Descuento: TBCDField;
    tFacturas_SerialesTerminos: TIntegerField;
    tFacturas_SerialesVencimiento: TDateField;
    tFacturas_SerialesPagado: TBCDField;
    tFacturas_SerialesPendiente: TBCDField;
    tFacturas_SerialesUltimoPago: TDateField;
    tFacturas_SerialesCliente: TStringField;
    tFacturas_SerialesTotal_Efectivo_Recibido: TBCDField;
    tFacturas_SerialesTotal_Efectivo_Devuelto: TBCDField;
    tFacturas_SerialesStatus: TStringField;
    tFacturas_SerialesTotal_Costo: TBCDField;
    tFacturas_SerialesTipo_Factura: TStringField;
    tFacturas_SerialesTipo_NCF: TStringField;
    tFacturas_SerialesNCF: TStringField;
    tFacturas_SerialesVendedor: TStringField;
    tFacturas_SerialesNombre_Vendedor: TStringField;
    tFacturas_SerialesTotal_Restante: TBCDField;
    tFacturas_SerialesInteres: TBCDField;
    tFacturas_SerialesModalidad: TStringField;
    tFacturas_SerialesValor_Interes: TBCDField;
    tFacturas_SerialesValor_Capital: TBCDField;
    tFacturas_SerialesValor_Cuotas: TBCDField;
    tFacturas_SerialesGasto_Cierre: TBCDField;
    tFacturas_SerialesValor_Gasto_Cierre: TBCDField;
    tFacturas_SerialesVence_Financiamiento: TDateField;
    tFacturas_SerialesTotal_Estimado: TBCDField;
    tFacturas_SerialesMonto_Financiado: TBCDField;
    tFacturas_SerialesTipo_Gasto_Cierre: TStringField;
    tFacturas_SerialesPeriodo_Pagos: TStringField;
    tFacturas_SerialesPlazo_Pago: TSmallintField;
    tFacturas_SerialesDescripcion_NCF: TStringField;
    tFacturas_SerialesInicial: TBCDField;
    tFacturas_SerialesConduce: TStringField;
    tFacturas_SerialesDebitado: TBCDField;
    tFacturas_SerialesAcreditado: TBCDField;
    tFacturas_SerialesBalance: TBCDField;
    tFacturas_SerialesMora: TBCDField;
    tFacturas_SerialesMonto_Vencido: TBCDField;
    tFacturas_SerialesCuotas_Vencidas: TIntegerField;
    tFacturas_SerialesMonto_Interes_Cumplido: TBCDField;
    tFacturas_SerialesBalance_Capital: TBCDField;
    tFacturas_SerialesBalance_Interes: TBCDField;
    tFacturas_SerialesBalance_Otros: TBCDField;
    tFacturas_SerialesFecha_Ultimo_Pago: TDateField;
    tFacturas_SerialesDias_Vencidos: TIntegerField;
    tFacturas_SerialesTotal_Seriales: TIntegerField;
    tFacturas_SerialesSeriales_Registrados: TIntegerField;
    tAlmacen: TClientDataSet;
    dAlmacen: TDataSource;
    tAlmacenCodigo: TStringField;
    tAlmacenDescripcion: TStringField;
    tAlmacenUbicacion: TStringField;
    tAlmacenEncargado: TStringField;
    tAlmacenTelefono: TStringField;
    tAlmacenFax: TStringField;
    tAlmacenemail: TStringField;
    tFacturasAlmacen: TStringField;
    tDetalles_FacturaAlmacen: TStringField;
    tDetalles_CompraAlmacen: TStringField;
    tCompra_ProductosAlmacen: TStringField;
    tSeriales_Salida: TClientDataSet;
    dSeriales_Salida: TDataSource;
    tSalidas_InventarioAlmacen: TStringField;
    tSalidas_InventarioCondicion: TStringField;
    tSalidas_InventarioSubTotal: TBCDField;
    tSalidas_InventarioTotalNeto: TBCDField;
    tSalidas_InventarioImpuesto_Global: TBCDField;
    tSalidas_InventarioValor_Impuesto: TBCDField;
    tSalidas_InventarioValor_Impuesto_Detalle: TBCDField;
    tSalidas_InventarioTotal_Impuesto: TBCDField;
    tSalidas_InventarioDescuento_Global: TBCDField;
    tSalidas_InventarioValor_Descuento: TBCDField;
    tSalidas_InventarioValor_Descuento_Detalle: TBCDField;
    tSalidas_InventarioTotal_Descuento: TBCDField;
    tSalidas_InventarioTerminos: TIntegerField;
    tSalidas_InventarioVencimiento: TDateField;
    tSalidas_InventarioPagado: TBCDField;
    tSalidas_InventarioPendiente: TBCDField;
    tSalidas_InventarioUltimoPago: TDateField;
    tSalidas_InventarioTotal_Efectivo_Recibido: TBCDField;
    tSalidas_InventarioTotal_Efectivo_Devuelto: TBCDField;
    tSalidas_InventarioStatus: TStringField;
    tSalidas_InventarioTipo_Salida: TStringField;
    tSalidas_InventarioVendedor: TStringField;
    tSalidas_InventarioNombre_Vendedor: TStringField;
    tSalidas_InventarioTotal_Restante: TBCDField;
    tSalidas_InventarioConduce: TStringField;
    tSalidas_InventarioDebitado: TBCDField;
    tSalidas_InventarioAcreditado: TBCDField;
    tSalidas_InventarioBalance: TBCDField;
    tSalidas_InventarioFecha_Ultimo_Pago: TDateField;
    tSalidas_InventarioTotal_Seriales: TIntegerField;
    tSalidas_InventarioSeriales_Registrados: TIntegerField;
    tDetalles_SalidaCantidad_Devuelto: TBCDField;
    tDetalles_SalidaContenido: TBCDField;
    tDetalles_SalidaAlmacen: TStringField;
    tDetalles_SalidaPrecio_Real: TBCDField;
    tDetalles_SalidaPrecio_Venta: TBCDField;
    tDetalles_SalidaPrecio_Minimo: TBCDField;
    tDetalles_SalidaImpuesto: TBCDField;
    tDetalles_SalidaDescuento: TBCDField;
    tDetalles_SalidaValor_Impuesto: TBCDField;
    tDetalles_SalidaValor_Descuento: TBCDField;
    tDetalles_SalidaTotal_Impuesto: TBCDField;
    tDetalles_SalidaTotal_Descuento: TBCDField;
    tDetalles_SalidaTipo_Precio: TStringField;
    tDetalles_SalidaRegistro: TIntegerField;
    tDetalles_SalidaRequiere_Serial: TBooleanField;
    tDetalles_SalidaqrSeriales_Salida: TDataSetField;
    tSeriales_SalidaCodigo: TStringField;
    tSeriales_SalidaSerial: TStringField;
    tSeriales_SalidaCliente: TStringField;
    tSeriales_SalidaProceso: TStringField;
    tSeriales_SalidaFecha_Facturado: TDateField;
    tSeriales_SalidaHora_Facturado: TTimeField;
    tSeriales_SalidaUsuario: TStringField;
    tSeriales_SalidaSecuencia: TIntegerField;
    tSeriales_SalidaStatus: TStringField;
    tMercancia_Cliente: TClientDataSet;
    dMercancia_Cliente: TDataSource;
    tSeriales_Vendida_Cliente: TClientDataSet;
    dSeriales_Vendida_Cliente: TDataSource;
    tSeriales_Vendida_ClienteCodigo: TStringField;
    tSeriales_Vendida_ClienteSerial: TStringField;
    tSeriales_Vendida_ClienteCliente: TStringField;
    tSeriales_Vendida_ClienteProceso: TStringField;
    tSeriales_Vendida_ClienteFecha_Facturado: TDateField;
    tSeriales_Vendida_ClienteHora_Facturado: TTimeField;
    tSeriales_Vendida_ClienteUsuario: TStringField;
    tSeriales_Vendida_ClienteSecuencia: TIntegerField;
    tSeriales_Vendida_ClienteStatus: TStringField;
    tMercancia_Desp_Cliente: TClientDataSet;
    dMercancia_Desp_Cliente: TDataSource;
    tSeriales_Desp_Cliente: TClientDataSet;
    dSeriales_Desp_Cliente: TDataSource;
    tMercancia_Desp_ClienteProceso: TStringField;
    tMercancia_Desp_ClienteCodigo: TStringField;
    tMercancia_Desp_ClienteCodigo_Real: TStringField;
    tMercancia_Desp_ClienteSecuencia: TIntegerField;
    tMercancia_Desp_ClienteDescripcion: TStringField;
    tMercancia_Desp_ClienteCategoria: TIntegerField;
    tMercancia_Desp_ClienteFabricante: TIntegerField;
    tMercancia_Desp_ClienteDepartamento: TIntegerField;
    tMercancia_Desp_ClienteTipo_Producto: TIntegerField;
    tMercancia_Desp_ClienteCosto: TBCDField;
    tMercancia_Desp_ClientePrecio_Real: TBCDField;
    tMercancia_Desp_ClientePrecio_Venta: TBCDField;
    tMercancia_Desp_ClientePrecio_Minimo: TBCDField;
    tMercancia_Desp_ClienteCantidad: TBCDField;
    tMercancia_Desp_ClienteTotal_Costo: TBCDField;
    tMercancia_Desp_ClienteTotal_Precio: TBCDField;
    tMercancia_Desp_ClienteFecha: TDateField;
    tMercancia_Desp_ClienteHora: TTimeField;
    tMercancia_Desp_ClienteUsuario: TStringField;
    tMercancia_Desp_ClienteMes: TSmallintField;
    tMercancia_Desp_ClienteAno: TSmallintField;
    tMercancia_Desp_ClienteCliente: TStringField;
    tMercancia_Desp_ClienteImpuesto: TBCDField;
    tMercancia_Desp_ClienteDescuento: TBCDField;
    tMercancia_Desp_ClienteValor_Impuesto: TBCDField;
    tMercancia_Desp_ClienteValor_Descuento: TBCDField;
    tMercancia_Desp_ClienteTotal_Impuesto: TBCDField;
    tMercancia_Desp_ClienteTotal_Descuento: TBCDField;
    tMercancia_Desp_ClienteCantidad_Devuelto: TBCDField;
    tMercancia_Desp_ClienteTipo_Precio: TStringField;
    tMercancia_Desp_ClienteContenido: TBCDField;
    tMercancia_Desp_ClienteRegistro: TIntegerField;
    tMercancia_Desp_ClienteRequiere_Serial: TBooleanField;
    tMercancia_Desp_ClienteAlmacen: TStringField;
    tMercancia_Desp_ClienteqrSeriales_Desp_Cliente: TDataSetField;
    tSeriales_Desp_ClienteCodigo: TStringField;
    tSeriales_Desp_ClienteSerial: TStringField;
    tSeriales_Desp_ClienteCliente: TStringField;
    tSeriales_Desp_ClienteProceso: TStringField;
    tSeriales_Desp_ClienteFecha_Facturado: TDateField;
    tSeriales_Desp_ClienteHora_Facturado: TTimeField;
    tSeriales_Desp_ClienteUsuario: TStringField;
    tSeriales_Desp_ClienteSecuencia: TIntegerField;
    tSeriales_Desp_ClienteStatus: TStringField;
    tSalidas_Cliente: TClientDataSet;
    dSalidas_Cliente: TDataSource;
    tSalidas_ClienteNumero: TIntegerField;
    tSalidas_ClienteProceso: TStringField;
    tSalidas_ClienteCliente: TStringField;
    tSalidas_ClienteNombre_Cliente: TStringField;
    tSalidas_ClienteFecha: TDateField;
    tSalidas_ClienteHora: TTimeField;
    tSalidas_ClienteConcepto_Salida: TStringField;
    tSalidas_ClienteReferencia: TStringField;
    tSalidas_ClienteTotal_Costo: TBCDField;
    tSalidas_ClienteTotal_Salida: TBCDField;
    tSalidas_ClienteComentario: TStringField;
    tSalidas_ClienteFecha_Validacion: TDateField;
    tSalidas_ClienteFecha_Cierre: TDateField;
    tSalidas_ClienteUsuario: TStringField;
    tSalidas_ClienteValidado: TBooleanField;
    tSalidas_ClienteCerrado: TBooleanField;
    tSalidas_ClienteAlmacen: TStringField;
    tSalidas_ClienteCondicion: TStringField;
    tSalidas_ClienteSubTotal: TBCDField;
    tSalidas_ClienteTotalNeto: TBCDField;
    tSalidas_ClienteImpuesto_Global: TBCDField;
    tSalidas_ClienteValor_Impuesto: TBCDField;
    tSalidas_ClienteValor_Impuesto_Detalle: TBCDField;
    tSalidas_ClienteTotal_Impuesto: TBCDField;
    tSalidas_ClienteDescuento_Global: TBCDField;
    tSalidas_ClienteValor_Descuento: TBCDField;
    tSalidas_ClienteValor_Descuento_Detalle: TBCDField;
    tSalidas_ClienteTotal_Descuento: TBCDField;
    tSalidas_ClienteTerminos: TIntegerField;
    tSalidas_ClienteVencimiento: TDateField;
    tSalidas_ClientePagado: TBCDField;
    tSalidas_ClientePendiente: TBCDField;
    tSalidas_ClienteUltimoPago: TDateField;
    tSalidas_ClienteTotal_Efectivo_Recibido: TBCDField;
    tSalidas_ClienteTotal_Efectivo_Devuelto: TBCDField;
    tSalidas_ClienteStatus: TStringField;
    tSalidas_ClienteTipo_Salida: TStringField;
    tSalidas_ClienteVendedor: TStringField;
    tSalidas_ClienteNombre_Vendedor: TStringField;
    tSalidas_ClienteTotal_Restante: TBCDField;
    tSalidas_ClienteConduce: TStringField;
    tSalidas_ClienteDebitado: TBCDField;
    tSalidas_ClienteAcreditado: TBCDField;
    tSalidas_ClienteBalance: TBCDField;
    tSalidas_ClienteFecha_Ultimo_Pago: TDateField;
    tSalidas_ClienteTotal_Seriales: TIntegerField;
    tSalidas_ClienteSeriales_Registrados: TIntegerField;
    tMercancia_Desp_ClienteNumero_Salida: TIntegerField;
    tAjuste_Inventario: TClientDataSet;
    dAjuste_Inventario: TDataSource;
    tAjuste_InventarioCodigo: TStringField;
    tAjuste_InventarioDescripcion: TStringField;
    tAjuste_InventarioExistencia_Actual: TBCDField;
    tAjuste_InventarioExistencia_Fisica: TBCDField;
    tAjuste_InventarioDiferencia: TBCDField;
    tAjuste_InventarioInicial: TStringField;
    tProductosUltimo_Precio_Compra: TFloatField;
    tProductosCosto_Standar: TFloatField;
    tProductosCosto_Promedio: TFloatField;
    tProductosPrecio_Venta_Contado: TFloatField;
    tProductosPrecio_Venta_Credito: TFloatField;
    tProductosPrecio_Venta_Minimo: TFloatField;
    tProductosPrecio_Venta_Por_Mayor_Contado: TFloatField;
    tProductosPrecio_Venta_Por_Mayor_Credito: TFloatField;
    tProductosPrecio_Unidad: TFloatField;
    tProductosExistencia_Medida: TBCDField;
    tListadoProductosCodigo: TStringField;
    tListadoProductosDescripcion: TStringField;
    tListadoProductosPresentacion: TStringField;
    tListadoProductosBarra: TStringField;
    tListadoProductosReferencia: TStringField;
    tListadoProductosSecuencia: TIntegerField;
    tListadoProductosFabricante: TIntegerField;
    tListadoProductosDepartamento: TIntegerField;
    tListadoProductosExistencia: TBCDField;
    tListadoProductosCompradas: TBCDField;
    tListadoProductosDespachadas: TBCDField;
    tListadoProductosMedida_Compra: TStringField;
    tListadoProductosMedida_Venta: TStringField;
    tListadoProductosUbicacion: TStringField;
    tListadoProductosUnidades_Medida_Compra: TBCDField;
    tListadoProductosUnidades_Medida_Venta: TBCDField;
    tListadoProductosValor_Beneficio_Contado: TBCDField;
    tListadoProductosValor_Beneficio_Credito: TBCDField;
    tListadoProductosVendidas: TBCDField;
    tListadoProductosTipo_Beneficio: TStringField;
    tListadoProductosTipo_Inventario: TStringField;
    tListadoProductosAno: TSmallintField;
    tListadoProductosColor: TStringField;
    tListadoProductosModelo: TStringField;
    tListadoProductosNombre: TStringField;
    tListadoProductosOrientacion: TStringField;
    tListadoProductosPosicion: TStringField;
    tListadoProductosLector_Codigo: TStringField;
    tListadoProductosFecha_Registro: TDateField;
    tListadoProductosCategoria: TIntegerField;
    tListadoProductosProveedor_Principal: TIntegerField;
    tListadoProductosTipo_Producto: TIntegerField;
    tListadoProductosMinimo: TBCDField;
    tListadoProductosReorden: TBCDField;
    tListadoProductosCuenta_Contable: TStringField;
    tListadoProductosMetodo_Calculo_Costo: TStringField;
    tListadoProductosAplica_Descuento: TBooleanField;
    tListadoProductosPaga_Comision: TBooleanField;
    tListadoProductosRequiere_Numero_Serie: TBooleanField;
    tListadoProductosPaga_Impuesto: TBooleanField;
    tListadoProductosRequiere_Fecha_Vencimiento: TBooleanField;
    tListadoProductosDevuelto_Compras: TBCDField;
    tListadoProductosUltima_Compra: TDateField;
    tListadoProductosNumero_Ultima_Compra: TIntegerField;
    tListadoProductosDevuelto_Ventas: TBCDField;
    tListadoProductosUltima_Venta: TDateField;
    tListadoProductosNumero_Ultima_Factura: TIntegerField;
    tListadoProductosUltima_Salida: TDateField;
    tListadoProductosNumero_Ultima_Salida: TIntegerField;
    tListadoProductosEnPedidos: TBCDField;
    tListadoProductosEnTransito: TBCDField;
    tListadoProductosStatus: TIntegerField;
    tListadoProductosUsuario: TStringField;
    tListadoProductosDevuelto_Despacho: TBCDField;
    tListadoProductosEditar_Existencia: TBooleanField;
    tListadoProductosMarca: TStringField;
    tListadoProductosProceso: TStringField;
    tListadoProductosFoto: TBlobField;
    tListadoProductosUltimo_Precio_Compra: TFloatField;
    tListadoProductosCosto_Standar: TFloatField;
    tListadoProductosCosto_Promedio: TFloatField;
    tListadoProductosPrecio_Venta_Contado: TFloatField;
    tListadoProductosPrecio_Venta_Credito: TFloatField;
    tListadoProductosPrecio_Venta_Minimo: TFloatField;
    tListadoProductosPrecio_Venta_Por_Mayor_Contado: TFloatField;
    tListadoProductosPrecio_Venta_Por_Mayor_Credito: TFloatField;
    tListadoProductosPrecio_Unidad: TFloatField;
    tListadoProductosExistencia_Medida: TBCDField;
    tDetalles_FacturaCosto: TFloatField;
    tDetalles_FacturaPrecio_Real: TFloatField;
    tDetalles_FacturaPrecio_Venta: TFloatField;
    tDetalles_FacturaPrecio_Minimo: TFloatField;
    tDetalles_FacturaTotal_Costo: TFloatField;
    tDetalles_FacturaTotal_Precio: TFloatField;
    tDetalles_FacturaImpuesto: TFloatField;
    tDetalles_FacturaDescuento: TFloatField;
    tDetalles_FacturaValor_Impuesto: TFloatField;
    tDetalles_FacturaValor_Descuento: TFloatField;
    tDetalles_FacturaTotal_Impuesto: TFloatField;
    tDetalles_FacturaTotal_Descuento: TFloatField;
    tDetalles_FacturaUnidades: TBCDField;
    tDetalles_FacturaPrecio_Unidad: TFloatField;
    tDetalles_FacturaMedida: TStringField;
    tDetalles_FacturaUsuario_Autorizacion: TStringField;
    tDetalles_FacturaProc_Detalle: TStringField;
    tSeriales_FacturaProc_Detalle: TStringField;
    tApertura_CajaProceso: TStringField;
    tApertura_CajaUsuario_Cuadre: TStringField;
    tSeriales_CompraModalidad_Servicio: TStringField;
    tTerminal: TClientDataSet;
    dTerminal: TDataSource;
    tTerminalID: TStringField;
    tTerminalDescripcion: TStringField;
    tTerminalStatus: TStringField;
    tTerminalHora_Apertura: TTimeField;
    tTerminalHora_Cierre: TTimeField;
    tTerminalNombre: TStringField;
    tTerminalDireccion: TStringField;
    tTerminalCiudad: TStringField;
    tTerminalPais: TStringField;
    tTerminalTelefono: TStringField;
    tTerminalImpresora: TStringField;
    tTerminalPuerto: TStringField;
    tTerminalFormato_Numeros: TStringField;
    tTerminalComentario_1: TStringField;
    tTerminalComentario_2: TStringField;
    tTerminalComentario_3: TStringField;
    tTerminalComentario_4: TStringField;
    tTerminalSeparador_Linea: TStringField;
    tTerminalSimbolo_Moneda: TStringField;
    tTerminalFormato_Fecha: TStringField;
    tTerminalFormato_Hora: TStringField;
    tTerminalFormato_Fecha_Largo: TStringField;
    tTerminalFormato_Hora_Largo: TStringField;
    tTerminalFormato_N_T_H: TStringField;
    tTerminalCtrl_Alt_Del: TBooleanField;
    tTerminalAlt_F4: TBooleanField;
    tTerminalBarra: TBooleanField;
    tTerminalPanel: TBooleanField;
    tTerminalRun: TBooleanField;
    tTerminalFind: TBooleanField;
    tTerminalWinKey: TBooleanField;
    tTerminalColor_Pantallas: TIntegerField;
    tTerminalApagar_Salir: TBooleanField;
    tTerminalLineas_Despues: TSmallintField;
    tTerminalAncho_Linea: TSmallintField;
    tTerminalDireccion_Local: TStringField;
    tTerminalIcon: TSmallintField;
    tTerminalBalance: TBCDField;
    tTerminalUltima_Cta: TIntegerField;
    tTerminalFecha_Ultima_Cta: TDateField;
    tTerminales: TClientDataSet;
    dTerminales: TDataSource;
    tTerminalesID: TStringField;
    tTerminalesDescripcion: TStringField;
    tTerminalesStatus: TStringField;
    tTerminalesHora_Apertura: TTimeField;
    tTerminalesHora_Cierre: TTimeField;
    tTerminalesNombre: TStringField;
    tTerminalesDireccion: TStringField;
    tTerminalesCiudad: TStringField;
    tTerminalesPais: TStringField;
    tTerminalesTelefono: TStringField;
    tTerminalesImpresora: TStringField;
    tTerminalesPuerto: TStringField;
    tTerminalesFormato_Numeros: TStringField;
    tTerminalesComentario_1: TStringField;
    tTerminalesComentario_2: TStringField;
    tTerminalesComentario_3: TStringField;
    tTerminalesComentario_4: TStringField;
    tTerminalesSeparador_Linea: TStringField;
    tTerminalesSimbolo_Moneda: TStringField;
    tTerminalesFormato_Fecha: TStringField;
    tTerminalesFormato_Hora: TStringField;
    tTerminalesFormato_Fecha_Largo: TStringField;
    tTerminalesFormato_Hora_Largo: TStringField;
    tTerminalesFormato_N_T_H: TStringField;
    tTerminalesCtrl_Alt_Del: TBooleanField;
    tTerminalesAlt_F4: TBooleanField;
    tTerminalesBarra: TBooleanField;
    tTerminalesPanel: TBooleanField;
    tTerminalesRun: TBooleanField;
    tTerminalesFind: TBooleanField;
    tTerminalesWinKey: TBooleanField;
    tTerminalesColor_Pantallas: TIntegerField;
    tTerminalesApagar_Salir: TBooleanField;
    tTerminalesLineas_Despues: TSmallintField;
    tTerminalesAncho_Linea: TSmallintField;
    tTerminalesDireccion_Local: TStringField;
    tTerminalesIcon: TSmallintField;
    tTerminalesBalance: TBCDField;
    tTerminalesUltima_Cta: TIntegerField;
    tTerminalesFecha_Ultima_Cta: TDateField;
    tInventario_Terminal: TClientDataSet;
    dInventario_Terminal: TDataSource;
    tInventario_TerminalCodigo_Producto: TStringField;
    tInventario_TerminalCodigo_Almacen: TStringField;
    tInventario_TerminalUnidades_Compradas: TBCDField;
    tInventario_TerminalUnidades_Facturadas: TBCDField;
    tInventario_TerminalUnidades_Despachadas: TBCDField;
    tInventario_TerminalUnidades_Devueltas_Compras: TBCDField;
    tInventario_TerminalUnidades_Devueltas_Facturas: TBCDField;
    tInventario_TerminalExistencia: TBCDField;
    tInventario_TerminalID: TStringField;
    tSeriales_CompradosModalidad_Servicio: TStringField;
    tSeriales_CompradosID: TStringField;
    tSeriales_FacturadosProc_Detalle: TStringField;
    tSeriales_FacturadosID: TStringField;
    tDepartamentosID: TStringField;
    tSalidas_InventarioID: TStringField;
    tDetalles_SalidaID: TStringField;
    tSeriales_SalidaProc_Detalle: TStringField;
    tSeriales_SalidaID: TStringField;
    tMercancia_ClienteProceso: TStringField;
    tMercancia_ClienteCodigo: TStringField;
    tMercancia_ClienteCodigo_Real: TStringField;
    tMercancia_ClienteSecuencia: TIntegerField;
    tMercancia_ClienteDescripcion: TStringField;
    tMercancia_ClienteCategoria: TIntegerField;
    tMercancia_ClienteFabricante: TIntegerField;
    tMercancia_ClienteDepartamento: TIntegerField;
    tMercancia_ClienteTipo_Producto: TIntegerField;
    tMercancia_ClienteCosto: TFloatField;
    tMercancia_ClientePrecio_Real: TFloatField;
    tMercancia_ClientePrecio_Venta: TFloatField;
    tMercancia_ClientePrecio_Minimo: TFloatField;
    tMercancia_ClienteCantidad: TBCDField;
    tMercancia_ClienteTotal_Costo: TFloatField;
    tMercancia_ClienteTotal_Precio: TFloatField;
    tMercancia_ClienteFecha: TDateField;
    tMercancia_ClienteHora: TTimeField;
    tMercancia_ClienteUsuario: TStringField;
    tMercancia_ClienteMes: TSmallintField;
    tMercancia_ClienteAno: TSmallintField;
    tMercancia_ClienteCliente: TStringField;
    tMercancia_ClienteImpuesto: TFloatField;
    tMercancia_ClienteDescuento: TFloatField;
    tMercancia_ClienteValor_Impuesto: TFloatField;
    tMercancia_ClienteValor_Descuento: TFloatField;
    tMercancia_ClienteTotal_Impuesto: TFloatField;
    tMercancia_ClienteTotal_Descuento: TFloatField;
    tMercancia_ClienteCantidad_Devuelto: TBCDField;
    tMercancia_ClienteTipo_Precio: TStringField;
    tMercancia_ClienteContenido: TBCDField;
    tMercancia_ClienteRegistro: TIntegerField;
    tMercancia_ClienteRequiere_Serial: TBooleanField;
    tMercancia_ClienteAlmacen: TStringField;
    tMercancia_ClienteUnidades: TBCDField;
    tMercancia_ClientePrecio_Unidad: TFloatField;
    tMercancia_ClienteMedida: TStringField;
    tMercancia_ClienteUsuario_Autorizacion: TStringField;
    tMercancia_ClienteProc_Detalle: TStringField;
    tMercancia_ClienteID: TStringField;
    tMercancia_ClienteqrSeriales_Vendida_Cliente: TDataSetField;
    tSeriales_Vendida_ClienteProc_Detalle: TStringField;
    tSeriales_Vendida_ClienteID: TStringField;
    tCompra_ProductosID: TStringField;
    tDetalles_CompraID: TStringField;
    tSeriales_CompraID: TStringField;
    tFacturasApertura: TStringField;
    tFacturasID: TStringField;
    tDetalles_FacturaID: TStringField;
    tDetalle_Pago_FacturaPendiente: TBCDField;
    tDetalle_Pago_FacturaID: TStringField;
    tCuotasOtros: TBCDField;
    tCuotasOtros_Pendiente: TBCDField;
    tCuotasFecha_Ultimo_Pago: TDateField;
    tCuotasID: TStringField;
    tSeriales_FacturaID: TStringField;
    tMercancia_Desp_ClientePrecio: TBCDField;
    tMercancia_Desp_ClienteID: TStringField;
    tSeriales_Desp_ClienteProc_Detalle: TStringField;
    tSeriales_Desp_ClienteID: TStringField;
    tSalidas_ClienteID: TStringField;
    tComprobantes_FiscalesID: TStringField;
    tCuadre_CajaID: TStringField;
    tDetalle_CuadreID: TStringField;
    tRetiros_CajaID: TStringField;
    tFacturas_ClienteAlmacen: TStringField;
    tFacturas_ClienteApertura: TStringField;
    tFacturas_ClienteID: TStringField;
    tPagos_ClientesID: TStringField;
    tDetalle_Pago_ClientesID: TStringField;
    tExistenciaInicialRegistro_Compra: TIntegerField;
    tExistenciaInicialUso_Inmediato: TBooleanField;
    tExistenciaInicialCantidad_Despachada: TBCDField;
    tExistenciaInicialConcepto_Uso: TStringField;
    tExistenciaInicialRequiere_Serial: TBooleanField;
    tExistenciaInicialAlmacen: TStringField;
    tExistenciaInicialID: TStringField;
    tDesgloceEfectivoID: TStringField;
    tCuotas_FacturasID: TStringField;
    tCompras_SerialesAlmacen: TStringField;
    tCompras_SerialesID: TStringField;
    tFacturas_SerialesAlmacen: TStringField;
    tFacturas_SerialesApertura: TStringField;
    tFacturas_SerialesID: TStringField;
    tListadoPagosID: TStringField;
    tNotas_CreditoID: TStringField;
    tDetalle_Notas_CreditoID: TStringField;
    tOrdenes_CompraID: TStringField;
    tDetalles_Orden_CompraID: TStringField;
    tListado_FacturasDebitado: TBCDField;
    tListado_FacturasAcreditado: TBCDField;
    tListado_FacturasBalance: TBCDField;
    tListado_FacturasMora: TBCDField;
    tListado_FacturasMonto_Vencido: TBCDField;
    tListado_FacturasCuotas_Vencidas: TIntegerField;
    tListado_FacturasMonto_Interes_Cumplido: TBCDField;
    tListado_FacturasBalance_Capital: TBCDField;
    tListado_FacturasBalance_Interes: TBCDField;
    tListado_FacturasBalance_Otros: TBCDField;
    tListado_FacturasFecha_Ultimo_Pago: TDateField;
    tListado_FacturasDias_Vencidos: TIntegerField;
    tListado_FacturasTotal_Seriales: TIntegerField;
    tListado_FacturasSeriales_Registrados: TIntegerField;
    tListado_FacturasAlmacen: TStringField;
    tListado_FacturasApertura: TStringField;
    tListado_FacturasID: TStringField;
    tFacturas_ProveedorAlmacen: TStringField;
    tFacturas_ProveedorID: TStringField;
    tNotas_DebitoNumero: TIntegerField;
    tNotas_DebitoNombre_Cliente: TStringField;
    tNotas_DebitoFecha: TDateField;
    tNotas_DebitoHora: TTimeField;
    tNotas_DebitoConcepto: TStringField;
    tNotas_DebitoProceso: TStringField;
    tNotas_DebitoReferencia: TStringField;
    tNotas_DebitoSubTotal: TBCDField;
    tNotas_DebitoTotalNeto: TBCDField;
    tNotas_DebitoComentario: TStringField;
    tNotas_DebitoFecha_Validacion: TDateField;
    tNotas_DebitoFecha_Cierre: TDateField;
    tNotas_DebitoUsuario: TStringField;
    tNotas_DebitoValidado: TBooleanField;
    tNotas_DebitoCerrado: TBooleanField;
    tNotas_DebitoImpuesto_Global: TBCDField;
    tNotas_DebitoValor_Impuesto: TBCDField;
    tNotas_DebitoValor_Impuesto_Detalle: TBCDField;
    tNotas_DebitoTotal_Impuesto: TBCDField;
    tNotas_DebitoDescuento_Global: TBCDField;
    tNotas_DebitoValor_Descuento: TBCDField;
    tNotas_DebitoValor_Descuento_Detalle: TBCDField;
    tNotas_DebitoTotal_Descuento: TBCDField;
    tNotas_DebitoTerminos: TIntegerField;
    tNotas_DebitoVencimiento: TDateField;
    tNotas_DebitoPagado: TBCDField;
    tNotas_DebitoPendiente: TBCDField;
    tNotas_DebitoUltimoPago: TDateField;
    tNotas_DebitoCliente: TStringField;
    tNotas_DebitoTotal_Efectivo_Recibido: TBCDField;
    tNotas_DebitoTotal_Efectivo_Devuelto: TBCDField;
    tNotas_DebitoStatus: TStringField;
    tNotas_DebitoTipo_NCF: TStringField;
    tNotas_DebitoNCF: TStringField;
    tNotas_DebitoID: TStringField;
    tNotas_DebitoqrDetalles_Notas_Debito: TDataSetField;
    tDetalles_Notas_DebitoProceso: TStringField;
    tDetalles_Notas_DebitoNumero: TSmallintField;
    tDetalles_Notas_DebitoTipo: TStringField;
    tDetalles_Notas_DebitoFecha: TDateField;
    tDetalles_Notas_DebitoVence: TDateField;
    tDetalles_Notas_DebitoMonto: TBCDField;
    tDetalles_Notas_DebitoConcepto: TStringField;
    tDetalles_Notas_DebitoCapital: TBCDField;
    tDetalles_Notas_DebitoCapital_Pendiente: TBCDField;
    tDetalles_Notas_DebitoInteres: TBCDField;
    tDetalles_Notas_DebitoInteres_Pendiente: TBCDField;
    tDetalles_Notas_DebitoMora: TBCDField;
    tDetalles_Notas_DebitoMora_Pendiente: TBCDField;
    tDetalles_Notas_DebitoOtros: TBCDField;
    tDetalles_Notas_DebitoTotal_Pagado: TBCDField;
    tDetalles_Notas_DebitoOtros_Pendiente: TBCDField;
    tDetalles_Notas_DebitoTotal_Pendiente: TBCDField;
    tDetalles_Notas_DebitoDias_Vencidos: TIntegerField;
    tDetalles_Notas_DebitoFecha_Calculo_Mora: TDateField;
    tDetalles_Notas_DebitoFecha_Ultimo_Pago: TDateField;
    tDetalles_Notas_DebitoRecargo: TStringField;
    tDetalles_Notas_DebitoPrioridad: TStringField;
    tDetalles_Notas_DebitoID: TStringField;
    tTerminalRNC: TStringField;
    tTerminalNombre_Impuesto: TStringField;
    tTerminalCondicion_Facturas: TStringField;
    tTerminalTipo_Factura: TStringField;
    tTerminalTermino_Facturacion: TStringField;
    tTerminalInventario_Restringido: TBooleanField;
    tTerminalAperturar_Caja: TBooleanField;
    tTerminalDecimales_Cantidades: TStringField;
    tTerminalAlmacen: TStringField;
    tTerminalesRNC: TStringField;
    tTerminalesNombre_Impuesto: TStringField;
    tTerminalesCondicion_Facturas: TStringField;
    tTerminalesTipo_Factura: TStringField;
    tTerminalesTermino_Facturacion: TStringField;
    tTerminalesInventario_Restringido: TBooleanField;
    tTerminalesAperturar_Caja: TBooleanField;
    tTerminalesDecimales_Cantidades: TStringField;
    tTerminalesAlmacen: TStringField;
    tApertura_CajaID: TStringField;
    tCotizaciones: TClientDataSet;
    dCotizaciones: TDataSource;
    tDetalles_Cotizacion: TClientDataSet;
    dDetalles_Cotizacion: TDataSource;
    tCotizacionesNumero: TIntegerField;
    tCotizacionesNombre_Cliente: TStringField;
    tCotizacionesCondicion: TStringField;
    tCotizacionesFecha: TDateField;
    tCotizacionesHora: TTimeField;
    tCotizacionesConcepto_Factura: TStringField;
    tCotizacionesProceso: TStringField;
    tCotizacionesReferencia: TStringField;
    tCotizacionesSubTotal: TBCDField;
    tCotizacionesTotalNeto: TBCDField;
    tCotizacionesComentario: TStringField;
    tCotizacionesFecha_Validacion: TDateField;
    tCotizacionesFecha_Cierre: TDateField;
    tCotizacionesUsuario: TStringField;
    tCotizacionesValidado: TBooleanField;
    tCotizacionesCerrado: TBooleanField;
    tCotizacionesImpuesto_Global: TBCDField;
    tCotizacionesValor_Impuesto: TBCDField;
    tCotizacionesValor_Impuesto_Detalle: TBCDField;
    tCotizacionesTotal_Impuesto: TBCDField;
    tCotizacionesDescuento_Global: TBCDField;
    tCotizacionesValor_Descuento: TBCDField;
    tCotizacionesValor_Descuento_Detalle: TBCDField;
    tCotizacionesTotal_Descuento: TBCDField;
    tCotizacionesTerminos: TIntegerField;
    tCotizacionesVencimiento: TDateField;
    tCotizacionesPagado: TBCDField;
    tCotizacionesPendiente: TBCDField;
    tCotizacionesUltimoPago: TDateField;
    tCotizacionesCliente: TStringField;
    tCotizacionesTotal_Efectivo_Recibido: TBCDField;
    tCotizacionesTotal_Efectivo_Devuelto: TBCDField;
    tCotizacionesStatus: TStringField;
    tCotizacionesTotal_Costo: TBCDField;
    tCotizacionesTipo_Factura: TStringField;
    tCotizacionesTipo_NCF: TStringField;
    tCotizacionesNCF: TStringField;
    tCotizacionesVendedor: TStringField;
    tCotizacionesNombre_Vendedor: TStringField;
    tCotizacionesTotal_Restante: TBCDField;
    tCotizacionesInteres: TBCDField;
    tCotizacionesModalidad: TStringField;
    tCotizacionesValor_Interes: TBCDField;
    tCotizacionesValor_Capital: TBCDField;
    tCotizacionesValor_Cuotas: TBCDField;
    tCotizacionesGasto_Cierre: TBCDField;
    tCotizacionesValor_Gasto_Cierre: TBCDField;
    tCotizacionesVence_Financiamiento: TDateField;
    tCotizacionesTotal_Estimado: TBCDField;
    tCotizacionesMonto_Financiado: TBCDField;
    tCotizacionesTipo_Gasto_Cierre: TStringField;
    tCotizacionesPeriodo_Pagos: TStringField;
    tCotizacionesPlazo_Pago: TSmallintField;
    tCotizacionesDescripcion_NCF: TStringField;
    tCotizacionesInicial: TBCDField;
    tCotizacionesConduce: TStringField;
    tCotizacionesDebitado: TBCDField;
    tCotizacionesAcreditado: TBCDField;
    tCotizacionesBalance: TBCDField;
    tCotizacionesMora: TBCDField;
    tCotizacionesMonto_Vencido: TBCDField;
    tCotizacionesCuotas_Vencidas: TIntegerField;
    tCotizacionesMonto_Interes_Cumplido: TBCDField;
    tCotizacionesBalance_Capital: TBCDField;
    tCotizacionesBalance_Interes: TBCDField;
    tCotizacionesBalance_Otros: TBCDField;
    tCotizacionesFecha_Ultimo_Pago: TDateField;
    tCotizacionesDias_Vencidos: TIntegerField;
    tCotizacionesTotal_Seriales: TIntegerField;
    tCotizacionesSeriales_Registrados: TIntegerField;
    tCotizacionesAlmacen: TStringField;
    tCotizacionesApertura: TStringField;
    tCotizacionesID: TStringField;
    tCotizacionesqrDetalles_Cotizacion: TDataSetField;
    tDetalles_CotizacionProceso: TStringField;
    tDetalles_CotizacionCodigo: TStringField;
    tDetalles_CotizacionCodigo_Real: TStringField;
    tDetalles_CotizacionSecuencia: TIntegerField;
    tDetalles_CotizacionDescripcion: TStringField;
    tDetalles_CotizacionCategoria: TIntegerField;
    tDetalles_CotizacionFabricante: TIntegerField;
    tDetalles_CotizacionDepartamento: TIntegerField;
    tDetalles_CotizacionTipo_Producto: TIntegerField;
    tDetalles_CotizacionCosto: TFloatField;
    tDetalles_CotizacionPrecio_Real: TFloatField;
    tDetalles_CotizacionPrecio_Venta: TFloatField;
    tDetalles_CotizacionPrecio_Minimo: TFloatField;
    tDetalles_CotizacionCantidad: TBCDField;
    tDetalles_CotizacionTotal_Costo: TFloatField;
    tDetalles_CotizacionTotal_Precio: TFloatField;
    tDetalles_CotizacionFecha: TDateField;
    tDetalles_CotizacionHora: TTimeField;
    tDetalles_CotizacionUsuario: TStringField;
    tDetalles_CotizacionMes: TSmallintField;
    tDetalles_CotizacionAno: TSmallintField;
    tDetalles_CotizacionCliente: TStringField;
    tDetalles_CotizacionImpuesto: TFloatField;
    tDetalles_CotizacionDescuento: TFloatField;
    tDetalles_CotizacionValor_Impuesto: TFloatField;
    tDetalles_CotizacionValor_Descuento: TFloatField;
    tDetalles_CotizacionTotal_Impuesto: TFloatField;
    tDetalles_CotizacionTotal_Descuento: TFloatField;
    tDetalles_CotizacionCantidad_Devuelto: TBCDField;
    tDetalles_CotizacionTipo_Precio: TStringField;
    tDetalles_CotizacionContenido: TBCDField;
    tDetalles_CotizacionRegistro: TIntegerField;
    tDetalles_CotizacionRequiere_Serial: TBooleanField;
    tDetalles_CotizacionAlmacen: TStringField;
    tDetalles_CotizacionUnidades: TBCDField;
    tDetalles_CotizacionPrecio_Unidad: TFloatField;
    tDetalles_CotizacionMedida: TStringField;
    tDetalles_CotizacionUsuario_Autorizacion: TStringField;
    tDetalles_CotizacionProc_Detalle: TStringField;
    tDetalles_CotizacionID: TStringField;
    tCotizacionesNombre_Termino: TStringField;
    tDetalles_CotizacionReferencia: TStringField;
    tFacturasCotizacion_Numero: TIntegerField;
    tFacturasProceso_Cotizacion: TStringField;
    tRegistro_Gastos: TClientDataSet;
    dRegistro_Gastos: TDataSource;
    tRegistro_GastosNumero: TIntegerField;
    tRegistro_GastosFecha: TDateField;
    tRegistro_GastosHora: TTimeField;
    tRegistro_GastosA_Nombre_De: TStringField;
    tRegistro_GastosConcepto: TStringField;
    tRegistro_GastosProceso: TStringField;
    tRegistro_GastosReferencia: TStringField;
    tRegistro_GastosSubTotal: TBCDField;
    tRegistro_GastosTotalNeto: TBCDField;
    tRegistro_GastosComentario: TStringField;
    tRegistro_GastosUsuario: TStringField;
    tRegistro_GastosTotal_Impuesto: TBCDField;
    tRegistro_GastosTotal_Descuento: TBCDField;
    tRegistro_GastosStatus: TStringField;
    tRegistro_GastosTipo_NCF: TStringField;
    tRegistro_GastosNCF: TStringField;
    tRegistro_GastosEmpleado: TStringField;
    tRegistro_GastosqrDetalle_Pago_Empeados: TDataSetField;
    tDetalle_Pago_Empeados: TClientDataSet;
    dDetalle_Pago_Empeados: TDataSource;
    tDetalle_Pago_EmpeadosProceso: TStringField;
    tDetalle_Pago_EmpeadosFecha: TDateField;
    tDetalle_Pago_EmpeadosHora: TTimeField;
    tDetalle_Pago_EmpeadosID: TStringField;
    tDetalle_Pago_EmpeadosAcuerdo: TStringField;
    tDetalle_Pago_EmpeadosEmpleado: TStringField;
    tDetalle_Pago_EmpeadosMonto: TBCDField;
    tDetalle_Pago_EmpeadosRegistro: TIntegerField;
    tEmpleados: TClientDataSet;
    dEmpleados: TDataSource;
    tEmpleadosCedula_Rnc_Pasaporte: TStringField;
    tEmpleadosNombre: TStringField;
    tEmpleadosApellido: TStringField;
    tEmpleadosTipo_Cliente: TStringField;
    tEmpleadosTipo_Telefono_1: TStringField;
    tEmpleadosTipo_Telefono_2: TStringField;
    tEmpleadosTipo_Telefono_3: TStringField;
    tEmpleadosTipo_Telefono_4: TStringField;
    tEmpleadosNumero_Telefono_1: TStringField;
    tEmpleadosNumero_Telefono_2: TStringField;
    tEmpleadosNumero_Telefono_3: TStringField;
    tEmpleadosNumero_Telefono_4: TStringField;
    tEmpleadosDireccion: TStringField;
    tEmpleadosPais: TStringField;
    tEmpleadosCiudad: TStringField;
    tEmpleadosEstado: TStringField;
    tEmpleadosCondicion_Cliente: TStringField;
    tEmpleadosNombreCompleto: TStringField;
    tEmpleadosStatus: TStringField;
    tEmpleadosFecha_Registro: TDateField;
    tEmpleadosBalance_Actual: TBCDField;
    tEmpleadosmail: TStringField;
    tEmpleadosSecuencia: TIntegerField;
    tEmpleadosProceso: TStringField;
    tEmpleadosFoto: TBlobField;
    tEmpleadosNacionalidad: TStringField;
    tEmpleadosSexo: TStringField;
    tEmpleadosSector: TIntegerField;
    tEmpleadosFecha_Nacimiento: TDateField;
    tEmpleadosEstado_Civil: TStringField;
    tEmpleadosZona: TIntegerField;
    tEmpleadosLugar_Trabajo: TStringField;
    tAcuerdos: TClientDataSet;
    dAcuerdos: TDataSource;
    tAcuerdosProceso: TStringField;
    tAcuerdosNumero: TIntegerField;
    tAcuerdosFecha: TDateField;
    tAcuerdosHora: TTimeField;
    tAcuerdosConcepto: TStringField;
    tAcuerdosEmpleado: TStringField;
    tAcuerdosMonto: TBCDField;
    tAcuerdosPagado: TBCDField;
    tAcuerdosPendiente: TBCDField;
    tAcuerdosStatus: TStringField;
    tAcuerdosFactura: TStringField;
    tAcuerdosCotizacion: TStringField;
    tAcuerdosReferencia: TStringField;
    tAcuerdosCliente: TStringField;
    tRegistro_GastosMonto_Letras: TStringField;
    tRegistro_GastosDescripcion_NCF: TStringField;
    tDetalles_Acuerdos: TClientDataSet;
    dDetalles_Acuerdos: TDataSource;
    tAcuerdosqrDetalle_Acuerdo: TDataSetField;
    tDetalles_AcuerdosProceso: TStringField;
    tDetalles_AcuerdosEmpleado: TStringField;
    tDetalles_AcuerdosNumero: TIntegerField;
    tDetalles_AcuerdosCodigo: TStringField;
    tDetalles_AcuerdosDescripcion: TStringField;
    tDetalles_AcuerdosCantidad: TFloatField;
    tDetalles_AcuerdosMonto: TBCDField;
    tFacturasStatus_Trabajo: TStringField;
    tFacturasMoneda: TIntegerField;
    tFacturasSub_Total_Moneda: TBCDField;
    tFacturasTotal_Impuesto_Moneda: TBCDField;
    tFacturasTotal_Descuento_Moneda: TBCDField;
    tDetalles_FacturaValor_Moneda: TBCDField;
    tDetalles_FacturaTotal_Moneda: TBCDField;
    tDetalles_FacturaImpuesto_Moneda: TBCDField;
    tDetalles_FacturaDescuento_Moneda: TBCDField;
    tFacturasTotal_Moneda: TBCDField;
    tFacturasTasa: TBCDField;
    tFacturasTotal_Efectivo_Recibido_Moneda: TBCDField;
    tFacturasTotal_Efectivo_Devuelto_Moneda: TBCDField;
    tAcuerdosNombre_Empleado: TStringField;
    tDetalles_AcuerdosFactura: TIntegerField;
    tDetalles_AcuerdosCliente: TStringField;
    tResumenes: TClientDataSet;
    dResumenes: TDataSource;
    tResumenesConcepto: TStringField;
    tResumenesMonto: TCurrencyField;
    tDetalles_AcuerdosFecha_Entrega: TDateField;
    tArchivos: TClientDataSet;
    dArchivos: TDataSource;
    tArchivosDescripcion: TStringField;
    tArchivosVisible: TBooleanField;
    tArchivosDireccion: TStringField;
    tResumenesPagado: TCurrencyField;
    tResumenesPendiente: TCurrencyField;
    procedure tFacturasClienteValidate(Sender: TField);
    procedure tAjuste_InventarioCalcFields(DataSet: TDataSet);
    procedure CalcDiferenciasInventario(Sender: TField);
    procedure tSeriales_FacturaBeforeDelete(DataSet: TDataSet);
    procedure tSeriales_SalidaBeforeDelete(DataSet: TDataSet);
    procedure tSeriales_SalidaBeforePost(DataSet: TDataSet);
    procedure tSeriales_SalidaBeforeInsert(DataSet: TDataSet);
    procedure tDetalles_SalidaTipo_PrecioValidate(Sender: TField);
    procedure tDetalles_SalidaBeforeDelete(DataSet: TDataSet);
    procedure tSalidas_InventarioVendedorValidate(Sender: TField);
    procedure Calculo_Totales_Salida(Sender: TField);
    procedure tSalidas_InventarioBeforePost(DataSet: TDataSet);
    procedure tSalidas_InventarioBeforeEdit(DataSet: TDataSet);
    procedure tSalidas_InventarioAfterInsert(DataSet: TDataSet);
    procedure tDetalles_FacturaBeforeDelete(DataSet: TDataSet);
    procedure tSeriales_FacturaBeforePost(DataSet: TDataSet);
    procedure tSeriales_FacturaBeforeInsert(DataSet: TDataSet);
    procedure tCompra_ProductosBeforeEdit(DataSet: TDataSet);
    procedure tDetalles_CompraBeforeDelete(DataSet: TDataSet);
    procedure tSeriales_CompraBeforePost(DataSet: TDataSet);
    procedure tSeriales_CompraBeforeInsert(DataSet: TDataSet);
    procedure CalcularFinanciamiento(Sender: TField);
    procedure tFacturasVendedorValidate(Sender: TField);
    procedure tOrdenes_CompraBeforeEdit(DataSet: TDataSet);
    procedure tOrdenes_CompraBeforePost(DataSet: TDataSet);
    procedure tCompra_ProductosBeforePost(DataSet: TDataSet);
    procedure tOrdenes_CompraAfterInsert(DataSet: TDataSet);
    procedure tCompra_ProductosAfterInsert(DataSet: TDataSet);
    procedure tOrdenes_CompraProveedorValidate(Sender: TField);
    procedure tCompra_ProductosProveedorValidate(Sender: TField);
    procedure tDetalles_Orden_CompraCodigoValidate(Sender: TField);
    procedure tFacturasTipo_NCFValidate(Sender: TField);
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
    procedure Calculo_Totales_Detalle_Salida(Sender: TField);
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
    procedure ChkRefresh(DataSet: TDataSet);
    procedure tProductosBeforePost(DataSet: TDataSet);
    procedure tProductosAfterRefresh(DataSet: TDataSet);
    procedure tSimilaresCalcFields(DataSet: TDataSet);
    procedure tComponentesCalcFields(DataSet: TDataSet);
    procedure tComponentesCodigo_ComponenteValidate(Sender: TField);
    procedure tComponentesAfterPost(DataSet: TDataSet);
    procedure tFacturasInicialValidate(Sender: TField);
    procedure BalanceCuotasFacturas(Sender: TField);
    procedure tFacturasBeforeEdit(DataSet: TDataSet);
    procedure tListado_ClientesCalcFields(DataSet: TDataSet);
    procedure tProductosPrecio_Venta_Por_Mayor_ContadoValidate(Sender: TField);
    procedure tDetalles_FacturaMedidaValidate(Sender: TField);
    procedure tDetalles_FacturaAfterScroll(DataSet: TDataSet);
    procedure tCotizacionesAfterInsert(DataSet: TDataSet);
    procedure tCotizacionesBeforeEdit(DataSet: TDataSet);
    procedure tCotizacionesBeforePost(DataSet: TDataSet);
    procedure ActualizarDetallesCotizacion(DataSet: TDataSet);
    procedure tDetalles_CotizacionAfterScroll(DataSet: TDataSet);
    procedure tDetalles_CotizacionBeforePost(DataSet: TDataSet);
    procedure tDetalles_CotizacionCodigoValidate(Sender: TField);
    procedure Calculo_Totales_Detalle_Cotizacion(Sender: TField);
    procedure tDetalles_CotizacionTipo_PrecioValidate(Sender: TField);
    procedure tDetalles_CotizacionMedidaValidate(Sender: TField);
    procedure tCotizacionesFechaValidate(Sender: TField);
    procedure Calculo_Totales_Cotizacion(Sender: TField);
    procedure tCotizacionesTerminosValidate(Sender: TField);
    procedure tCotizacionesClienteValidate(Sender: TField);
    procedure tCotizacionesVendedorValidate(Sender: TField);
    procedure Calc_Total_Registro(Sender: TField);
    procedure tRegistro_GastosBeforePost(DataSet: TDataSet);
    procedure tRegistro_GastosCalcFields(DataSet: TDataSet);
    procedure tDetalles_FacturaBeforeOpen(DataSet: TDataSet);
    procedure tDetalles_AcuerdosAfterPost(DataSet: TDataSet);
    procedure tDetalles_FacturaValor_MonedaValidate(Sender: TField);
    procedure tFacturasMonedaValidate(Sender: TField);
    procedure tFacturasTotal_Efectivo_RecibidoValidate(Sender: TField);
    procedure tFacturasTotal_Efectivo_DevueltoValidate(Sender: TField);
    procedure tAcuerdosEmpleadoValidate(Sender: TField);
    procedure tDetalles_AcuerdosAfterInsert(DataSet: TDataSet);
    procedure tDetalles_AcuerdosBeforePost(DataSet: TDataSet);
    procedure tRegistro_GastosBeforeEdit(DataSet: TDataSet);
    procedure tAcuerdosBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
{    Function ActualizarExistencia(Const Codigo_Producto : String;
                                  Const Tipo_Producto: String;
                                  Const Cantidad_Actualizar : Double) : Double;}
  public
    { Public declarations }
    Procedure SetCashParams;
    Procedure CalculosGenereales;
    Procedure CargarFacturaXML(Const NombreCDS : String);
    Procedure ImpresionTexto (Const OutDevice, Sorteo : String; Const Fecha : TDate; Const Terminal : Boolean);
    Function ContarDistribucionVencimiento : Double;
    Function GenerarCuotas (Var Vence : TDate; Dias : Integer):Boolean;
    Procedure NotiticationSet(var _StatusBar : TStatusBar);
    Procedure AnadirCuota (Const Proceso     : String;
                           Var   Numero      : Integer;
                           Const Capital     ,
                                 Interes     ,
                                 Mora        ,
                                 Pagado      : Currency;
                           Const Fecha       ,
                                 Vencimiento : TDate;
                           Const Prioridad   ,
                                 Tipo        ,
                                 Concepto    : String);
    Function Vencimiento (Const Fecha   : TDate;
                          Const Cuota   : Integer;
                          Const Periodo : String;
                          Const Dias    : Integer) : TDate;
  end;

var
  Modulo: TModulo;
  Porcentaje_Global_Impuesto  : Double  = 0;
  Porcentaje_Global_Descuento : Double  = 0;
  _Recalcular_Beneficios      : Boolean = True;
  Ps                          : Integer = 0;
implementation

uses Utilidades, Registry, DateUtils, Productos,
     DetalledePagos, Establecer_Precios_Ventas, PrintShow, Splash, ESBDates,
  Autorizar, Seriales_Productos, FileSelection;

{$R *.dfm}

Procedure TModulo.NotiticationSet(var _StatusBar : TStatusBar);
   Begin
      _StatusBar.Panels.Items[1].Text := _CurrentTerminal;
      _StatusBar.Panels.Items[2].Text := _CurrentStore;
      _StatusBar.Panels.Items[3].Text := _CurrentUser;
      _StatusBar.Panels.Items[4].Text := _ARCHIVO;
   End;

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

Procedure TModulo.SetCashParams;
  Begin
    tApertura_Caja.Params.ParamByName('Usuario').AsString := Trim(_CurrentUser);
    tApertura_Caja.Params.ParamByName('Abierto').Value := 'TRUE';
    tApertura_Caja.Params.ParamByName('ID').AsString := Trim(_CurrentTerminal);
    tApertura_Caja.Params.ParamByName('Fecha').AsDate := Enlace.AppServer.ServerDate;
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
  If _Load_Create Then
    Begin
      {Cerrar La Conección (Si es necesario)}
      If Enlace.Connected Then Enlace.Close;

      {Configuracion de la Conexion}
      RegInfo.CloseKey;
      RegInfo.OpenKey(_DataRouteKey,_AutoConfig);
      Enlace.Host       := UnEncrypt(RegInfo.ReadString(_ConectionURL));
      Enlace.ServerName := UnEncrypt(RegInfo.ReadString(_ConectionServerPath));

      {Activar la Coneccion}
      Enlace.Open;
      tArchivos.Open;
      OpenForm(TfFileSelection,fFileSelection);
      Enlace.AppServer.LoginToDb(tArchivosDireccion.Value,'','','');
      tArchivos.Close;


      {Terminal y Grupo}
      RegInfo.CloseKey;
      RegInfo.OpenKey(_GeneralConfigKey,_AutoConfig);
      _CurrentTerminal := UnEncrypt(RegInfo.ReadString(_TerminalName));

      {Abrir la configuracion de la terminal}
      tTerminal.Params.ParamByName('ID').AsString := _CurrentTerminal;
      tTerminal.Open;

      Try
        _CurrentStore    := Trim(tTerminalAlmacen.Value);
        _RestrictInventory := RegInfo.ReadBool(_InventoryManagement);
      Except

      end;


       {Formato de Fecha, Hora y Moneda}
      ShortDateFormat  := tTerminalFormato_Fecha.Value;
      LongDateFormat   := tTerminalFormato_Fecha_Largo.Value;
      CurrencyString   := tTerminalesSimbolo_Moneda.Value;
      ShortTimeFormat  := tTerminalFormato_Hora.Value;
      LongTimeFormat   := tTerminalFormato_Hora_Largo.Value;

      {Actualizar Fecha y Hora con la del Servidor}
      SetPCSystemTime(Enlace.AppServer.ServerDate,Enlace.AppServer.ServerTime);

      {Abrir la Tabla de Parametros}
      TParametros.Params.ParamByName('Terminal').AsString := _CurrentTerminal;
      TParametros.Open;

      _DefaultImgDir := GetCurrentDir + '\Images\';
      _DefaultClientImg := _DefaultImgDir + _DefaultClientImg;


      (* Asignar la tarminal a las operaciones realizadas *)

      // Compras
      tCompra_ProductosID.DefaultExpression := QuotedStr(_CurrentTerminal);
      tDetalles_CompraID.DefaultExpression := QuotedStr(_CurrentTerminal);
      tCompras_SerialesID.DefaultExpression := QuotedStr(_CurrentTerminal);

      // Comprobantes Fiscales
      tComprobantes_FiscalesID.DefaultExpression := QuotedStr(_CurrentTerminal);

      // Cuadres Caja
      tCuadre_CajaID.DefaultExpression := QuotedStr(_CurrentTerminal);
      tDetalle_CuadreID.DefaultExpression := QuotedStr(_CurrentTerminal);

      // Departamentos
      tDepartamentosID.DefaultExpression := QuotedStr(_CurrentTerminal);

      // Existencia Inicial del Producto
      tExistenciaInicialID.DefaultExpression := QuotedStr(_CurrentTerminal);

      // Facturas
      tFacturas_ClienteID.DefaultExpression := QuotedStr(_CurrentTerminal);
      tFacturasID.DefaultExpression := QuotedStr(_CurrentTerminal);
      tDetalles_FacturaID.DefaultExpression := QuotedStr(_CurrentTerminal);
      tDetalle_Pago_FacturaID.DefaultExpression := QuotedStr(_CurrentTerminal);
      tcuotasID.DefaultExpression := QuotedStr(_CurrentTerminal);
      tCuotas_FacturasID.DefaultExpression := QuotedStr(_CurrentTerminal);
      tFacturas_SerialesID.DefaultExpression := QuotedStr(_CurrentTerminal);

      // Inventario
      tInventario_TerminalID.DefaultExpression := QuotedStr(_CurrentTerminal);

      // Mercancia Vendida Cliente
      tMercancia_ClienteID.DefaultExpression := QuotedStr(_CurrentTerminal);
      tMercancia_Desp_ClienteID.DefaultExpression := QuotedStr(_CurrentTerminal);

      // Movimientos de Caja
      tRetiros_CajaID.DefaultExpression := QuotedStr(_CurrentTerminal);
      tApertura_CajaID.DefaultExpression := QuotedStr(_CurrentTerminal);
      tDesgloceEfectivoID.DefaultExpression := QuotedStr(_CurrentTerminal);

      // Notas de Credito
      tNotas_CreditoID.DefaultExpression := QuotedStr(_CurrentTerminal);
      tDetalle_Notas_CreditoID.DefaultExpression := QuotedStr(_CurrentTerminal);

      // Notas de Debito
      tNotas_DebitoID.DefaultExpression := QuotedStr(_CurrentTerminal);
      tDetalles_Notas_DebitoID.DefaultExpression := QuotedStr(_CurrentTerminal);

      // Ordenes de Compra
      tOrdenes_CompraID.DefaultExpression := QuotedStr(_CurrentTerminal);
      tDetalles_Orden_CompraID.DefaultExpression := QuotedStr(_CurrentTerminal);

      // Pagos de Clientes
      tPagos_ClientesID.DefaultExpression := QuotedStr(_CurrentTerminal);
      tDetalle_Pago_ClientesID.DefaultExpression := QuotedStr(_CurrentTerminal);

      // Salidas
      tSalidas_InventarioID.DefaultExpression := QuotedStr(_CurrentTerminal);
      tDetalles_SalidaID.DefaultExpression := QuotedStr(_CurrentTerminal);
      tSeriales_SalidaID.DefaultExpression := QuotedStr(_CurrentTerminal);

      // Seriales
      tSeriales_FacturaID.DefaultExpression := QuotedStr(_CurrentTerminal);
      tSeriales_CompradosID.DefaultExpression := QuotedStr(_CurrentTerminal);
      tSeriales_FacturadosID.DefaultExpression := QuotedStr(_CurrentTerminal);
      tSeriales_Vendida_ClienteID.DefaultExpression := QuotedStr(_CurrentTerminal);
      tSeriales_Desp_ClienteID.DefaultExpression := QuotedStr(_CurrentTerminal);
      tSeriales_CompraID.DefaultExpression := QuotedStr(_CurrentTerminal);

      Try
        Modulo.SerialPort.Open := True;
        Modulo.SerialPort.OutPut := 'ATZ'^M;
      Except
        PopupMessage(Mensajes,'El Puerto COM' + IntToStr(SerialPort.ComNumber) + ' Esta Siendo Utilizado por Otra Aplicación Se Ha Desabilitado La Comunicación con Dicho Puerto');
      end;

    End; {If _Load_Create}
end;

Procedure TModulo.ImpresionTexto (Const OutDevice, Sorteo : String; Const Fecha : TDate; Const Terminal : Boolean);
begin
End;

procedure TModulo.DataSetReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  Utilidades.DataSetReconcileError(DataSet,E,UpdateKind,Action)
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

  If Trim (tDetalles_SalidaCodigo.Value) = '+' Then
    Begin
      tListadoProductos.Cancel;
      tListadoProductos.CancelUpdates;
      OpenForm(TFProductos,FProductos);
      tListadoProductos.Refresh;
      SysUtils.Abort
    End;

  tProductos.Cancel;
  tProductos.CancelUpdates;
  tProductos.Close;
  tProductos.Params.ParamByName('Codigo').AsString := Trim (UpperCase(tDetalles_SalidaCodigo.Value));
  tProductos.Params.ParamByName('Barra').AsString := Trim (UpperCase(tDetalles_SalidaCodigo.Value));
  tProductos.Params.ParamByName('Referencia').AsString := Trim (UpperCase(tDetalles_SalidaCodigo.Value));
  tProductos.Params.ParamByName('Secuencia').AsInteger := Secuencia;
  tProductos.Params.ParamByName('Proceso').Clear;
  tProductos.Open;

  If tProductos.RecordCount <= 0 Then
    Raise Exception.Create(_ProductoNoExiste);

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

  tDetalles_SalidaDescripcion.Value   := Trim(tProductosDescripcion.Value);
  If Trim(tProductosTipo_Inventario.Value) <> 'Mensaje' Then
    Begin
      tDetalles_SalidaTipo_Precio.Value   := Trim(tSalidas_InventarioTipo_Salida.Value) + ' ' + Trim(tSalidas_InventarioCondicion.Value);
      tDetalles_SalidaContenido.Value     := tProductosUnidades_Medida_Venta.Value;
      If (tDetalles_SalidaContenido.Value = 0) Or (tDetalles_SalidaContenido.IsNull) Then
        tDetalles_SalidaContenido.Value := 0;

      tDetalles_SalidaPrecio_Minimo.Value := tProductosPrecio_Venta_Minimo.Value;

      tDetalles_SalidaPrecio_Real.Value   := tDetalles_SalidaPrecio_Venta.Value;

      If (tProductosMetodo_Calculo_Costo.Value = 'Promedio')  Then
        tDetalles_SalidaCosto.Value         := tProductosCosto_Promedio.Value;

      If (tProductosMetodo_Calculo_Costo.Value = 'Estandar')  Then
        tDetalles_SalidaCosto.Value         := tProductosCosto_Standar.Value;

      If (tProductosMetodo_Calculo_Costo.Value = 'Última Compra')  Then
        tDetalles_SalidaCosto.Value         := tProductosUltimo_Precio_Compra.Value;

      tDetalles_SalidaDepartamento.Value    := tProductosDepartamento.Value;
      tDetalles_SalidaCategoria.Value       := tProductosCategoria.Value;
      tDetalles_SalidaTipo_Producto.Value   := tProductosTipo_Producto.Value;
      tDetalles_SalidaFabricante.Value      := tProductosFabricante.Value;
      tDetalles_SalidaSecuencia.Value       := tProductosSecuencia.Value;
      tDetalles_SalidaRequiere_Serial.Value := tProductosRequiere_Numero_Serie.Value;

      If tProductosPaga_Impuesto.Value Then tDetalles_SalidaImpuesto.Value := tParametrosImpuesto.Value;
    End
  Else
    Begin
      tDetalles_SalidaCantidad.Clear;
      tDetalles_SalidaContenido.Clear;
      tDetalles_SalidaDescuento.Clear;
      tDetalles_SalidaImpuesto.Clear;
      tDetalles_SalidaPrecio_Venta.Clear;
      tDetalles_SalidaTotal_Precio.Clear
    end;

  tDetalles_SalidaCliente.Value       := tSalidas_InventarioCliente.Value;
  tDetalles_SalidaFecha.Value         := tSalidas_InventarioFecha.Value;
  tDetalles_SalidaHora.Value          := tSalidas_InventarioHora.Value;
  tDetalles_SalidaUsuario.value       := _CurrentUser;
  tDetalles_Salida.EnableControls
end;

procedure TModulo.tDetalles_SalidaTipo_PrecioValidate(Sender: TField);
begin
  If (Trim(tDetalles_SalidaTipo_Precio.Value) = 'Detalle Contado') Then tDetalles_SalidaPrecio_Venta.Value  := tProductosPrecio_Venta_Contado.Value;
  If (Trim(tDetalles_SalidaTipo_Precio.Value) = 'Detalle Crédito') Then tDetalles_SalidaPrecio_Venta.Value  := tProductosPrecio_Venta_Credito.Value;
  If (Trim(tDetalles_SalidaTipo_Precio.Value) = 'Por Mayor Contado') Then tDetalles_SalidaPrecio_Venta.Value  := tProductosPrecio_Venta_Por_Mayor_Contado.Value;
  If (Trim(tDetalles_SalidaTipo_Precio.Value) = 'Por Mayor Crédito') Then tDetalles_SalidaPrecio_Venta.Value  := tProductosPrecio_Venta_Por_Mayor_Credito.Value;
  If tDetalles_SalidaPrecio_Venta.IsNull Or (tDetalles_SalidaPrecio_Venta.Value = 0)  Then
    tDetalles_SalidaPrecio_Venta.Value := tProductosPrecio_Venta_Contado.Value
end;

procedure TModulo.Calculo_Totales_Detalle_Salida(Sender: TField);
  Var
    TotalPrecio : Currency;
begin
  tDetalles_SalidaValor_Descuento.Value := tDetalles_SalidaPrecio_Venta.Value * (tDetalles_SalidaDescuento.Value / 100);
  tDetalles_SalidaValor_Impuesto.Value  := (tDetalles_SalidaPrecio_Venta.Value - tDetalles_SalidaValor_Descuento.Value) * (tDetalles_SalidaImpuesto.Value / 100);
  TotalPrecio                            := tDetalles_SalidaPrecio_Venta.Value + tDetalles_SalidaValor_Impuesto.Value - tDetalles_SalidaValor_Descuento.Value;

  tDetalles_SalidaTotal_Precio.Value := TotalPrecio * (tDetalles_SalidaCantidad.Value * tDetalles_SalidaContenido.Value);
  tDetalles_SalidaTotal_Costo.Value  := tDetalles_SalidaCosto.Value * (tDetalles_SalidaCantidad.Value * tDetalles_SalidaContenido.Value);

  tDetalles_SalidaTotal_Descuento.Value := tDetalles_SalidaValor_Descuento.Value * (tDetalles_SalidaCantidad.Value * tDetalles_SalidaContenido.Value);
  tDetalles_SalidaTotal_Impuesto.Value  := tDetalles_SalidaValor_Impuesto.Value * (tDetalles_SalidaCantidad.Value * tDetalles_SalidaContenido.Value)
end;

procedure TModulo.ActualizarDetallesSalida(DataSet: TDataSet);
  Var
    CurrentRecord   : TBookmark;
    Total_Costo     ,
    Total_Precio    ,
    Total_Descuento ,
    Total_Impuesto  : Currency;
    Total_Seriales  : Integer;

begin
  CurrentRecord := tDetalles_Salida.GetBookmark;
  Try
    Total_Costo     := 0;
    Total_Precio    := 0;
    Total_Descuento := 0;
    Total_Impuesto  := 0;
    Total_Seriales  := 0;

    tDetalles_Salida.DisableControls;
    tDetalles_Salida.First;

    While Not tDetalles_Salida.Eof Do
      Begin
        Total_Costo     := tDetalles_SalidaTotal_Costo.Value + Total_Costo;
        Total_Precio    := tDetalles_SalidaTotal_Precio.Value +
                           tDetalles_SalidaTotal_Descuento.Value -
                           tDetalles_SalidaTotal_Impuesto.Value +
                           Total_Precio;
        Total_Impuesto  := tDetalles_SalidaTotal_Impuesto.Value + Total_Impuesto;
        Total_Descuento := tDetalles_SalidaTotal_Descuento.Value + Total_Descuento;

        If tDetalles_SalidaRequiere_Serial.Value Then
          Total_Seriales := Total_Seriales + Round(tDetalles_SalidaCantidad.Value * tDetalles_SalidaContenido.Value);

        tDetalles_Salida.Next
      End;{While}

    If Not (tSalidas_Inventario.State In DsEditModes) Then tSalidas_Inventario.Edit;
    tSalidas_InventarioSubTotal.Value := Total_Precio;
    tSalidas_InventarioTotal_Costo.Value := Total_Costo;
    tSalidas_InventarioValor_Impuesto_Detalle.Value := Total_Impuesto;
    tSalidas_InventarioValor_Descuento_Detalle.Value := Total_Descuento;
    tSalidas_InventarioTotal_Seriales.Value := Total_Seriales

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

procedure TModulo.tProductosAfterRefresh(DataSet: TDataSet);
begin
  If _ChkExistence Then
    If tProductosExistencia.Value <= tProductosMinimo.Value Then
      DisplayMessage(_ScreenCenter,100,
                     'Producto en Mínimo',
                     Format('La existencia de %s es de %s y está por debajo de %s que es su valor Mínimo'#10#13+
                            'Debe realizar una compra de al menos %s para el inventario de este producto/artículo',
                            [Trim(tProductosDescripcion.Value), tProductosExistencia.Text, tProductosMinimo.Text, Format('%n',[tProductosReorden.Value - tProductosExistencia.Value])]),
                     '',
                     clWebMoccasin,
                     taCenter,
                     0,
                     _dm_Modal)
end;

procedure TModulo.tProductosBeforePost(DataSet: TDataSet);
  Var
    tmpDescript : String;
begin
  tmpDescript := Trim(tProductosDescripcion.Value);

  If Copy(tmpDescript,1,1) = '-' Then
    Delete(tmpDescript,1,1);

  tProductosDescripcion.Value := UpperCase(tmpDescript);

{  tmpDescript := Trim(tProductosNombre.Value);
  If Copy(tmpDescript,1,1) = '-' Then
    Delete(tmpDescript,1,1);

  tProductosNombre.Value := tmpDescript;}
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

procedure TModulo.tProductosPrecio_Venta_Por_Mayor_ContadoValidate(
  Sender: TField);
begin
  If (tProductosPrecio_Venta_Contado.Value <= _Margen) Or tProductosPrecio_Venta_Contado.IsNull Then
    tProductosPrecio_Venta_Contado.Value := tProductosPrecio_Venta_Por_Mayor_Contado.Value;

  If (tProductosPrecio_Venta_Credito.Value <= _Margen) Or tProductosPrecio_Venta_Credito.IsNull Then
    tProductosPrecio_Venta_Credito.Value := tProductosPrecio_Venta_Por_Mayor_Contado.Value;

  If (tProductosPrecio_Venta_Por_Mayor_Credito.Value <= _Margen) Or tProductosPrecio_Venta_Por_Mayor_Credito.IsNull Then
    tProductosPrecio_Venta_Por_Mayor_Credito.Value := tProductosPrecio_Venta_Por_Mayor_Contado.Value;

  If (tProductosPrecio_Venta_Minimo.Value <= _Margen) Or tProductosPrecio_Venta_Minimo.IsNull Then
    tProductosPrecio_Venta_Minimo.Value := tProductosPrecio_Venta_Por_Mayor_Contado.Value;

  If (tProductosPrecio_Unidad.Value <= _Margen) Or tProductosPrecio_Unidad.IsNull Then
    tProductosPrecio_Unidad.Value := tProductosPrecio_Venta_Por_Mayor_Contado.Value / tProductosUnidades_Medida_Venta.Value;
end;

procedure TModulo.ActualizarDetallleCompras(DataSet: TDataSet);
  Var
    CurrentRecord   : TBookmark;
    Total_Costo     ,
    Total_Descuento ,
    Total_Impuesto  : Currency;
    Total_Seriales  : Integer;

begin
  CurrentRecord := tDetalles_Compra.GetBookmark;
  Try
    Total_Costo     := 0;
    Total_Descuento := 0;
    Total_Impuesto  := 0;
    Total_Seriales  := 0;

    tDetalles_Compra.DisableControls;
    tDetalles_Compra.First;

    While Not tDetalles_Compra.Eof Do
      Begin
        Total_Costo     := tDetalles_CompraTotal_Costo.Value + Total_Costo;
        Total_Impuesto  := tDetalles_CompraTotal_Impuesto.Value + Total_Impuesto;
        Total_Descuento := tDetalles_CompraTotal_Descuento.Value + Total_Descuento;

        If tDetalles_CompraRequiere_Serial.Value Then
          Total_Seriales := Total_Seriales + Round(tDetalles_CompraCantidad.Value * tDetalles_CompraContenido.Value);

        tDetalles_Compra.Next
      End;{While}

    If Not (tCompra_Productos.State In DsEditModes) Then tCompra_Productos.Edit;

    tCompra_ProductosSubTotal.Value := Total_Costo;
    tCompra_ProductosValor_Impuesto_Detalle.Value := Total_Impuesto;
    tCompra_ProductosValor_Descuento_Detalle.Value := Total_Descuento;
    tCompra_ProductosTotal_Seriales.Value := Total_Seriales

  Finally
    tDetalles_Compra.GotoBookmark(CurrentRecord);
    tDetalles_Compra.FreeBookmark(CurrentRecord);
    tDetalles_Compra.EnableControls
  End {Try}
end;

procedure TModulo.tDetalles_AcuerdosAfterInsert(DataSet: TDataSet);
begin
  tDetalles_AcuerdosFactura.Value := tListado_FacturasNumero.Value;
  tDetalles_AcuerdosCliente.Value := tListado_FacturasNombre_Cliente.Value;
  tDetalles_AcuerdosFecha_Entrega.Value := tListado_FacturasFecha_Cierre.Value;
end;

procedure TModulo.tDetalles_AcuerdosAfterPost(DataSet: TDataSet);
  Var
    CurrentRecord   : TBookmark;
    Total_Precio    : Currency;

begin
  CurrentRecord := tDetalles_Acuerdos.GetBookmark;
  Try
    Total_Precio    := 0;
    tDetalles_Acuerdos.DisableControls;
    tDetalles_Acuerdos.First;

    While Not tDetalles_Acuerdos.Eof Do
      Begin
        Total_Precio    := tDetalles_AcuerdosMonto.Value + Total_Precio;
        tDetalles_Acuerdos.Next
      End;{While}

    If Not (tAcuerdos.State In DsEditModes) Then tAcuerdos.Edit;
    tAcuerdosMonto.Value := Total_Precio;
  Finally
    tDetalles_Acuerdos.GotoBookmark(CurrentRecord);
    tDetalles_Acuerdos.FreeBookmark(CurrentRecord);
    tDetalles_Acuerdos.EnableControls
  End {Try}
end;

procedure TModulo.tDetalles_AcuerdosBeforePost(DataSet: TDataSet);
begin
  tDetalles_AcuerdosDescripcion.Value := UpperCase(tDetalles_AcuerdosDescripcion.Value)
end;

procedure TModulo.tDetalles_CompraBeforeDelete(DataSet: TDataSet);
begin
  tCompra_Productos.Edit;
  tSeriales_Compra.First;
  While Not tSeriales_Compra.EOF Do tSeriales_Compra.Delete
end;

procedure TModulo.tDetalles_CompraBeforePost(DataSet: TDataSet);
  Var
    WindowResult : TModalResult;
begin
  If Not tInventario_Terminal.Active Then
    Begin
      tInventario_Terminal.Params.ParamByName('Codigo_Almacen').AsString := Trim(_CurrentStore);
      tInventario_Terminal.Open
    End;

  If Not tInventario_Terminal.Locate('Codigo_Producto',tDetalles_CompraCodigo_Real.Value,[]) Then
    Begin
      tInventario_Terminal.Append;
      tInventario_TerminalCodigo_Producto.Value := tDetalles_CompraCodigo_Real.Value;
      tInventario_TerminalCodigo_Almacen.Value := Trim(_CurrentStore);
      tInventario_TerminalID.Value := _CurrentTerminal;
      tInventario_Terminal.Post;
      tInventario_Terminal.ApplyUpdates(0)
    End;

  If Not tDetalles_CompraMes.IsNull Then
    If (tDetalles_CompraMes.Value <= MonthOf(Enlace.AppServer.ServerDate)) And
       (tDetalles_CompraAno.Value <= YearOf(Enlace.AppServer.ServerDate)) Then
      Raise Exception.Create(_ErrProductoVencido);

  tDetalles_CompraID.Value := tCompra_ProductosID.Value;
  tDetalles_CompraAlmacen.Value := tCompra_ProductosAlmacen.Value;

{ Application.CreateForm(TFPrecios_Venta,FPrecios_Venta);
  FPrecios_Venta.ShowModal;

  WindowResult := FPrecios_Venta.ModalResult;
  FPrecios_Venta.Free;


  If  WindowResult = MrCancel Then SysUtils.Abort;
}

// Cambiar a Mayuscula los Codigos del Detalle de Compras
  Try
    tDetalles_CompraCodigo.OnValidate := Nil;
    tDetalles_CompraCodigo.Value := Trim(UpperCase(tDetalles_CompraCodigo.Value));
  Finally
    tDetalles_CompraCodigo.OnValidate := tDetalles_CompraCodigoValidate
  End;

  _ChkSerials := True
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


  If Trim (tDetalles_CompraCodigo.Value) = '+' Then
    Begin
      tListadoProductos.Cancel;
      tListadoProductos.CancelUpdates;
      OpenForm(TFProductos,FProductos);
      tListadoProductos.Refresh;
      SysUtils.Abort
    End;


  tProductos.Cancel;
  tProductos.CancelUpdates;
  tProductos.Close;
  tProductos.Params.ParamByName('Codigo').AsString := Trim (UpperCase(tDetalles_CompraCodigo.Value));
  tProductos.Params.ParamByName('Barra').AsString := Trim (UpperCase(tDetalles_CompraCodigo.Value));
  tProductos.Params.ParamByName('Referencia').AsString := Trim (UpperCase(tDetalles_CompraCodigo.Value));
  tProductos.Params.ParamByName('Secuencia').AsInteger := Secuencia;
  tProductos.Params.ParamByName('Proceso').Clear;
  tProductos.Open;

  If tProductos.RecordCount <= 0 Then
    Raise Exception.Create(_ProductoNoExiste);

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

  tDetalles_CompraPrecio_Venta_Por_Mayor_Contado.Value  := tProductosPrecio_Venta_Por_Mayor_Contado.Value;
  tDetalles_CompraPrecio_Venta_Por_Mayor_Credito.Value  := tProductosPrecio_Venta_Por_Mayor_Credito.Value;
  tDetalles_CompraPrecio_Venta_Detalle_Contado.Value    := tProductosPrecio_Venta_Contado.Value;
  tDetalles_CompraPrecio_Venta_Detalle_Credito.Value    := tProductosPrecio_Venta_Credito.Value;
  tDetalles_CompraPrecio_Minimo.Value                   := tProductosPrecio_Venta_Minimo.Value;

  tDetalles_CompraDepartamento.Value                    := tProductosDepartamento.Value;
  tDetalles_CompraCategoria.Value                       := tProductosCategoria.Value;
  tDetalles_CompraTipo_Producto.Value                   := tProductosTipo_Producto.Value;
  tDetalles_CompraFabricante.Value                      := tProductosFabricante.Value;
  tDetalles_CompraSecuencia.Value                       := tProductosSecuencia.Value;
  tDetalles_CompraRequiere_Serial.Value                 := tProductosRequiere_Numero_Serie.Value;

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

procedure TModulo.tDetalles_CotizacionAfterScroll(DataSet: TDataSet);
begin
  If Trim(tDetalles_CotizacionCodigo_Real.Value) <> '' Then
    Begin
      tProductos.Cancel;
      tProductos.CancelUpdates;
      tProductos.Close;
      tProductos.Params.ParamByName('Codigo').AsString := Trim (UpperCase(tDetalles_CotizacionCodigo_Real.Value));
      tProductos.Open;
    End;
end;

procedure TModulo.tDetalles_CotizacionBeforePost(DataSet: TDataSet);
begin
  If Not tInventario_Terminal.Active Then
    Begin
      tInventario_Terminal.Params.ParamByName('Codigo_Almacen').AsString := Trim(_CurrentStore);
      tInventario_Terminal.Open
    End;

  If Not tInventario_Terminal.Locate('Codigo_Producto',tDetalles_CotizacionCodigo_Real.Value,[]) Then
    Begin
      tInventario_Terminal.Append;
      tInventario_TerminalCodigo_Producto.Value := tDetalles_CotizacionCodigo_Real.Value;
      tInventario_TerminalCodigo_Almacen.Value := Trim(_CurrentStore);
      tInventario_TerminalID.Value := _CurrentTerminal;
      tInventario_Terminal.Post;
      tInventario_Terminal.ApplyUpdates(0)
    End;

  If tDetalles_CotizacionProc_Detalle.IsNull Or (Trim(tDetalles_CotizacionProc_Detalle.Value) = '') Then
    tDetalles_CotizacionProc_Detalle.Value := Gen_ProcessNumber(_CurrentUser);

  If Not tDetalles_CotizacionMes.IsNull Then
    If (tDetalles_CotizacionMes.Value <= MonthOf(Enlace.AppServer.ServerDate)) And
       (tDetalles_CotizacionAno.Value <= YearOf(Enlace.AppServer.ServerDate)) Then
      Raise Exception.Create(_ErrProductoVencido);

  If tDetalles_CotizacionMedida.Value <> 'Unidad' Then
    Begin
      If tDetalles_CotizacionTotal_Precio.Value < (tDetalles_CotizacionPrecio_Minimo.Value * tDetalles_CotizacionCantidad.Value) Then
          Raise Exception.Create(_ErrPrecio_Menor_Precio_Minimo)
    End
  Else
      If tDetalles_CotizacionTotal_Precio.Value < (tDetalles_CotizacionPrecio_Unidad.Value * tDetalles_CotizacionCantidad.Value) Then
          Raise Exception.Create(_ErrPrecio_Menor_Precio_Minimo);

  tDetalles_CotizacionID.Value := tCotizacionesID.Value;
  tDetalles_CotizacionAlmacen.Value := tCotizacionesAlmacen.Value;

  Modulo.tListadoProductos.Locate('Codigo',tDetalles_CotizacionCodigo_Real.Value,[]);

  If _RestrictInventory Then
    If Trim(Modulo.tListadoProductosTipo_Inventario.Value)  = 'Regular' Then
      If (tDetalles_CotizacionUnidades.Value > tListadoProductosExistencia.Value) Then
          Raise Exception.Create(Format(_ErrExistenciaProducto,[tListadoProductosDescripcion.Value,tListadoProductosExistencia.Text, tListadoProductosExistencia_Medida.Text, tListadoProductosMedida_Venta.Value]));

  Modulo.tDetalles_CotizacionAlmacen.Value := Modulo.tCotizacionesAlmacen.Value;

  Try
    tDetalles_CotizacionCodigo.OnValidate := Nil;
    tDetalles_CotizacionCodigo.Value := Trim(UpperCase(tDetalles_CotizacionCodigo.Value));
  Finally
    tDetalles_CotizacionCodigo.OnValidate := tDetalles_CotizacionCodigoValidate
  End
end;

procedure TModulo.Calculo_Totales_Detalle_Cotizacion(Sender: TField);
  Var
    TotalPrecio : Currency;
begin
  {Calculo de Unidades}
  tDetalles_CotizacionUnidades.Value := tDetalles_CotizacionCantidad.Value * tDetalles_CotizacionContenido.Value;
  tDetalles_CotizacionPrecio_Unidad.Value := tDetalles_CotizacionPrecio_Venta.Value / tDetalles_CotizacionContenido.Value;

  tDetalles_CotizacionValor_Descuento.Value := tDetalles_CotizacionPrecio_Unidad.Value * (tDetalles_CotizacionDescuento.Value / 100);
  tDetalles_CotizacionValor_Impuesto.Value  := (tDetalles_CotizacionPrecio_Unidad.Value - tDetalles_CotizacionValor_Descuento.Value) * (tDetalles_CotizacionImpuesto.Value / 100);
  TotalPrecio := tDetalles_CotizacionPrecio_Unidad.Value + tDetalles_CotizacionValor_Impuesto.Value - tDetalles_CotizacionValor_Descuento.Value;

  tDetalles_CotizacionTotal_Precio.Value := TotalPrecio * tDetalles_CotizacionUnidades.Value;
  tDetalles_CotizacionTotal_Costo.Value  := tDetalles_CotizacionCosto.Value * tDetalles_CotizacionUnidades.Value;

  tDetalles_CotizacionTotal_Descuento.Value := tDetalles_CotizacionValor_Descuento.Value * tDetalles_CotizacionUnidades.Value;
  tDetalles_CotizacionTotal_Impuesto.Value := tDetalles_CotizacionValor_Impuesto.Value * tDetalles_CotizacionUnidades.Value
end;

procedure TModulo.tDetalles_CotizacionCodigoValidate(Sender: TField);
  Var
    Secuencia : LongInt;
    Mes, Anio : Word;
    Name      : String;

begin
  Name := '';
  Try
    Mes := StrToInt(Copy(tDetalles_CotizacionCodigo.Value,7,2));
    Anio := StrToInt(Copy(tDetalles_CotizacionCodigo.Value,9,4));
    Secuencia := StrToInt(Copy(tDetalles_CotizacionCodigo.Value,1,6));
  Except
    Mes := 0;
    Anio := 0;
    Secuencia := 0;
  End; {Try}

  If Trim (tDetalles_CotizacionCodigo.Value) = '+' Then
    Begin
      tListadoProductos.Cancel;
      tListadoProductos.CancelUpdates;
      OpenForm(TFProductos,FProductos);
      tListadoProductos.Refresh;
      SysUtils.Abort
    End;

  tProductos.Cancel;
  tProductos.CancelUpdates;
  tProductos.Close;
  tProductos.Params.ParamByName('Codigo').AsString := Trim (UpperCase(tDetalles_CotizacionCodigo.Value));
  tProductos.Params.ParamByName('Barra').AsString := Trim (UpperCase(tDetalles_CotizacionCodigo.Value));
  tProductos.Params.ParamByName('Referencia').AsString := Trim (UpperCase(tDetalles_CotizacionCodigo.Value));
  tProductos.Params.ParamByName('Secuencia').AsInteger := Secuencia;
  tProductos.Params.ParamByName('Proceso').Clear;
  tProductos.Open;

  If tProductos.RecordCount <= 0 Then
    Raise Exception.Create(_ProductoNoExiste);

  tDetalles_CotizacionCodigo_Real.Value := tProductosCodigo.Value;

  If tProductosLector_Codigo.Value = _LeerSecuencia Then
    Begin
      tDetalles_CotizacionSecuencia.Value := Secuencia;
      If (Mes > 0) And (Mes <= 12) Then
        Begin
          tDetalles_CotizacionAno.Value := Anio;
          tDetalles_CotizacionMes.Value := Mes;
        End
    End;

  tDetalles_CotizacionDescripcion.Value   := Trim(tProductosDescripcion.Value);
  If Trim(tProductosTipo_Inventario.Value) <> 'Mensaje' Then
    Begin
//      tDetalles_CotizacionTipo_Precio.Value   := Trim(tCotizacionsTipo_Cotizacion.Value) + ' ' + Trim(tCotizacionsCondicion.Value);
      tDetalles_CotizacionTipo_Precio.Value   := 'P-1';
      tDetalles_CotizacionMedida.Value        := Trim(tProductosMedida_Venta.Value);
      tDetalles_CotizacionContenido.Value     := tProductosUnidades_Medida_Venta.Value;
      If (tDetalles_CotizacionContenido.Value = 0) Or (tDetalles_CotizacionContenido.IsNull) Then
        tDetalles_CotizacionContenido.Value := 1;

      tDetalles_CotizacionPrecio_Minimo.Value := tProductosPrecio_Venta_Minimo.Value;

      tDetalles_CotizacionPrecio_Real.Value   := tDetalles_CotizacionPrecio_Venta.Value;

      If (tProductosMetodo_Calculo_Costo.Value = 'Promedio')  Then
        tDetalles_CotizacionCosto.Value         := tProductosCosto_Promedio.Value;

      If (tProductosMetodo_Calculo_Costo.Value = 'Estandar')  Then
        tDetalles_CotizacionCosto.Value         := tProductosCosto_Standar.Value;

      If (tProductosMetodo_Calculo_Costo.Value = 'Última Compra')  Then
        tDetalles_CotizacionCosto.Value         := tProductosUltimo_Precio_Compra.Value;

      tDetalles_CotizacionDepartamento.Value    := tProductosDepartamento.Value;
      tDetalles_CotizacionCategoria.Value       := tProductosCategoria.Value;
      tDetalles_CotizacionTipo_Producto.Value   := tProductosTipo_Producto.Value;
      tDetalles_CotizacionFabricante.Value      := tProductosFabricante.Value;
      tDetalles_CotizacionSecuencia.Value       := tProductosSecuencia.Value;
      tDetalles_CotizacionRequiere_Serial.Value := tProductosRequiere_Numero_Serie.Value;

      If tProductosPaga_Impuesto.Value Then tDetalles_CotizacionImpuesto.Value := tParametrosImpuesto.Value;
    End
  Else
    Begin
      tDetalles_CotizacionCantidad.Value := 0;
      tDetalles_CotizacionContenido.Value := 0;
      tDetalles_CotizacionDescuento.Clear;
      tDetalles_CotizacionImpuesto.Clear;
      tDetalles_CotizacionPrecio_Venta.Clear;
      tDetalles_CotizacionTotal_Precio.Clear
    end;

  tDetalles_CotizacionCliente.Value       := tCotizacionesCliente.Value;
  tDetalles_CotizacionFecha.Value         := tCotizacionesFecha.Value;
  tDetalles_CotizacionHora.Value          := tCotizacionesHora.Value;
  tDetalles_CotizacionUsuario.value       := _CurrentUser;
  tDetalles_Cotizacion.EnableControls
end;

procedure TModulo.tDetalles_CotizacionMedidaValidate(Sender: TField);
begin
  If Trim(tDetalles_CotizacionMedida.Value) = 'Unidad' Then
    Begin
      tDetalles_CotizacionPrecio_Venta.Value := tProductosPrecio_Unidad.Value;
      tDetalles_CotizacionContenido.Value := 1
    End
  Else
    Begin
      tDetalles_CotizacionTipo_PrecioValidate(Sender);
      tDetalles_CotizacionContenido.Value := tProductosUnidades_Medida_Venta.Value
    End;
end;

procedure TModulo.tDetalles_CotizacionTipo_PrecioValidate(Sender: TField);
begin
  If tDetalles_CotizacionMedida.Value <> 'Unidad' Then
    Begin
      tDetalles_CotizacionPrecio_Venta.Value := 0;
      If (Trim(tDetalles_CotizacionTipo_Precio.Value) = 'P-1') Then tDetalles_CotizacionPrecio_Venta.Value  := tProductosPrecio_Venta_Por_Mayor_Contado.Value;
      If (Trim(tDetalles_CotizacionTipo_Precio.Value) = 'P-2') Then tDetalles_CotizacionPrecio_Venta.Value  := tProductosPrecio_Venta_Por_Mayor_Credito.Value;
      If (Trim(tDetalles_CotizacionTipo_Precio.Value) = 'P-3') Then tDetalles_CotizacionPrecio_Venta.Value  := tProductosPrecio_Venta_Contado.Value;
      If (Trim(tDetalles_CotizacionTipo_Precio.Value) = 'P-4') Then tDetalles_CotizacionPrecio_Venta.Value  := tProductosPrecio_Venta_Credito.Value;
      If tDetalles_CotizacionPrecio_Venta.IsNull Or (tDetalles_CotizacionPrecio_Venta.Value = 0)  Then
        tDetalles_CotizacionPrecio_Venta.Value := tProductosPrecio_Venta_Contado.Value
    End
  Else
    tDetalles_CotizacionPrecio_Venta.Value := tProductosPrecio_Unidad.Value
end;

procedure TModulo.ActualizarDetallesCotizacion(DataSet: TDataSet);
  Var
    CurrentRecord   : TBookmark;
    Total_Costo     ,
    Total_Precio    ,
    Total_Descuento ,
    Total_Impuesto  : Currency;
    Total_Seriales  : Integer;
begin
  CurrentRecord := tDetalles_Cotizacion.GetBookmark;
  Try
    Total_Costo     := 0;
    Total_Precio    := 0;
    Total_Descuento := 0;
    Total_Impuesto  := 0;
    Total_Seriales  := 0;

    tDetalles_Cotizacion.DisableControls;
    tDetalles_Cotizacion.First;

    While Not tDetalles_Cotizacion.Eof Do
      Begin
        Total_Costo     := tDetalles_CotizacionTotal_Costo.Value + Total_Costo;
        Total_Precio    := tDetalles_CotizacionTotal_Precio.Value +
                           tDetalles_CotizacionTotal_Descuento.Value -
                           tDetalles_CotizacionTotal_Impuesto.Value +
                           Total_Precio;
        Total_Impuesto  := tDetalles_CotizacionTotal_Impuesto.Value + Total_Impuesto;
        Total_Descuento := tDetalles_CotizacionTotal_Descuento.Value + Total_Descuento;

        If tDetalles_CotizacionRequiere_Serial.Value Then
          Total_Seriales := Total_Seriales + Round(tDetalles_CotizacionCantidad.Value * tDetalles_CotizacionContenido.Value);

        tDetalles_Cotizacion.Next
      End;{While}

    If Not (tCotizaciones.State In DsEditModes) Then tCotizaciones.Edit;
    tCotizacionesSubTotal.Value := Total_Precio;
    tCotizacionesTotal_Costo.Value := Total_Costo;
    tCotizacionesValor_Impuesto_Detalle.Value := Total_Impuesto;
    tCotizacionesValor_Descuento_Detalle.Value := Total_Descuento;
    tCotizacionesTotal_Seriales.Value := Total_Seriales

  Finally
    tDetalles_Cotizacion.GotoBookmark(CurrentRecord);
    tDetalles_Cotizacion.FreeBookmark(CurrentRecord);
    tDetalles_Cotizacion.EnableControls
  End {Try}
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

procedure TModulo.Calculo_Totales_Cotizacion(Sender: TField);
begin
  tCotizacionesValor_Descuento.Value := tCotizacionesSubTotal.Value * (tCotizacionesDescuento_Global.Value / 100);
  tCotizacionesValor_Impuesto.Value  := (tCotizacionesSubTotal.Value - tCotizacionesValor_Descuento.Value) * (tCotizacionesImpuesto_Global.Value / 100);

  tCotizacionesTotal_Impuesto.Value := tCotizacionesValor_Impuesto.Value + tCotizacionesValor_Impuesto_Detalle.Value;
  tCotizacionesTotal_Descuento.Value := tCotizacionesValor_Descuento.Value + tCotizacionesValor_Descuento_Detalle.Value;

  tCotizacionesTotalNeto.Value := tCotizacionesSubTotal.Value +
                              tCotizacionesTotal_Impuesto.Value -
                              tCotizacionesTotal_Descuento.Value;

  tCotizacionesPendiente.Value := tCotizacionesTotalNeto.Value - tCotizacionesPagado.Value;
  tCotizacionesTotal_Restante.Value := tCotizacionesPendiente.Value;
end;

procedure TModulo.tAcuerdosBeforeEdit(DataSet: TDataSet);
begin
  If (tAcuerdosNumero.Value <> 0) And Not(tAcuerdosNumero.IsNull) Then
    Begin
      If Application.MessageBox(PChar(Format(_ConfirmarEditarDocumento,[tAcuerdosNumero.Text])),
                        'EDITAR REGISTRO DE GASTOS',
                        MB_YESNO + MB_ICONQUESTION) = ID_No Then Raise Exception.Create(_ErrAccesoDenegadoOpcion);

      Granted := False;
      OpenForm(TFAutorizar,FAutorizar);
      If (Not Granted) Then Raise Exception.Create(_ErrAccesoDenegadoOpcion)
    End
end;

procedure TModulo.tAcuerdosEmpleadoValidate(Sender: TField);
begin
  tAcuerdosNombre_Empleado.Value := tListadoVendedoresNombreCompleto.Value
end;

procedure TModulo.tAjuste_InventarioCalcFields(DataSet: TDataSet);
begin
  tAjuste_InventarioInicial.Value := UpperCase(Copy(tAjuste_InventarioDescripcion.Value,1,1))
end;

procedure TModulo.tComponentesAfterPost(DataSet: TDataSet);
  Var
    CurrentRecord   : TBookmark;
    Total_Costo     : Currency;

begin
  CurrentRecord := tComponentes.GetBookmark;
  Try
    Total_Costo     := 0;

    tComponentes.DisableControls;
    tComponentes.First;

    While Not tComponentes.Eof Do
      Begin
        Total_Costo     := tComponentesTotal_Costo.Value + Total_Costo;
        tComponentes.Next
      End;{While}

  If Trim(tListadoProductosMetodo_Calculo_Costo.Value) = 'Promedio' Then
    tProductosCosto_Promedio.Value := Total_Costo;

  If Trim(tListadoProductosMetodo_Calculo_Costo.Value) = 'Estandar' Then
    tProductosCosto_Standar.Value := Total_Costo;

  If Trim(tListadoProductosMetodo_Calculo_Costo.Value) = 'Última Compra' Then
    tProductosUltimo_Precio_Compra.Value := Total_Costo;

  Finally
    tComponentes.GotoBookmark(CurrentRecord);
    tComponentes.FreeBookmark(CurrentRecord);
    tComponentes.EnableControls
  End {Try}
end;

procedure TModulo.tComponentesCalcFields(DataSet: TDataSet);
begin
  tComponentesTotal_Costo.Value := tComponentesCantidad.Value * tComponentesCosto.Value
end;

procedure TModulo.tComponentesCodigo_ComponenteValidate(Sender: TField);
begin
  tComponentesDescripcion_Componente.Value := tListadoProductosDescripcion.Value;

  If Trim(tListadoProductosMetodo_Calculo_Costo.Value) = 'Promedio' Then
    tComponentesCosto.Value := tListadoProductosCosto_Promedio.Value;

  If Trim(tListadoProductosMetodo_Calculo_Costo.Value) = 'Estandar' Then
    tComponentesCosto.Value := tListadoProductosCosto_Standar.Value;

  If Trim(tListadoProductosMetodo_Calculo_Costo.Value) = 'Última Compra' Then
    tComponentesCosto.Value := tListadoProductosUltimo_Precio_Compra.Value
end;

procedure TModulo.tCompra_ProductosAfterInsert(DataSet: TDataSet);
begin
  tCompra_ProductosUsuario.Value := _CurrentUser;
end;

procedure TModulo.tCompra_ProductosBeforeEdit(DataSet: TDataSet);
begin
  If (tCompra_ProductosNumero.Value <> 0) And Not(tCompra_ProductosNumero.IsNull) Then
    Begin
      If Application.MessageBox(PChar(Format(_ConfirmarEditarDocumento,[tCompra_ProductosNumero.Text])),
                        'EDITAR COMPRA',
                        MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

      Granted := False;
      OpenForm(TFAutorizar,FAutorizar);
      If (Not Granted) Then
        Begin
          Mensaje(_ErrAccesoDenegadoOpcion);
          SysUtils.Abort
        End
    End
end;

procedure TModulo.tCompra_ProductosBeforePost(DataSet: TDataSet);
begin
  If Trim(tCompra_ProductosNombre_Proveedor.Value) = '' Then tCompra_ProductosNombre_Proveedor.Value := tProveedoresNombreCompleto.Value;
  If Trim(tCompra_ProductosConcepto_Compra.Value) = '' Then tCompra_ProductosConcepto_Compra.Value := Format('Compra de Fecha %s - %s',[tCompra_ProductosFecha.AsString,tCompra_ProductosNombre_Proveedor.Value]);
end;

procedure TModulo.tCompra_ProductosProveedorValidate(Sender: TField);
begin
  tCompra_ProductosNombre_Proveedor.Value := tProveedoresNombre.Value;
  tCompra_ProductosDescuento_Global.Value := tProveedoresDescuento_Asignado.Value;
  tCompra_ProductosTerminos.Value := tProveedoresTerminosFacturacion.Value
end;

procedure TModulo.tCompra_ProductosTerminosValidate(Sender: TField);
  Var
    D,M,Y : Word;
begin
  tTerminos.Locate(tTerminosNumero_Termino.FieldName,
                   tCompra_ProductosTerminos.Value,[]);

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

procedure TModulo.tCotizacionesAfterInsert(DataSet: TDataSet);
begin
  tCotizacionesUsuario.Value := _CurrentUser;
  tCotizacionesApertura.Value := _CurrentApertura;
end;

procedure TModulo.tCotizacionesBeforeEdit(DataSet: TDataSet);
begin
  If (tCotizacionesNumero.Value <> 0) And Not(tCotizacionesNumero.IsNull) Then
    Begin
      If Application.MessageBox(PChar(Format(_ConfirmarEditarDocumento,[tCotizacionesNumero.Text])),
                        'EDITAR FACTURA',
                        MB_YESNO + MB_ICONQUESTION) = ID_No Then Raise Exception.Create(_ErrAccesoDenegadoOpcion);

      Granted := False;
      OpenForm(TFAutorizar,FAutorizar);
      If (Not Granted) Then Raise Exception.Create(_ErrAccesoDenegadoOpcion)
    End
end;

procedure TModulo.tCotizacionesBeforePost(DataSet: TDataSet);
begin
  If Trim(tCotizacionesNombre_Cliente.Value) = '' Then tCotizacionesNombre_Cliente.Value := tListado_ClientesNombreCompleto.Value;
  If Trim(tCotizacionesConcepto_Factura.Value) = '' Then tCotizacionesConcepto_Factura.Value := Format('Factura de Fecha %s - %s',[tCotizacionesFecha.AsString,tCotizacionesNombre_Cliente.Value]);
  tCotizacionesDescripcion_NCF.Value := tComprobantes_FiscalesDescripcion.Value
end;

procedure TModulo.tCotizacionesClienteValidate(Sender: TField);
  Var
    Curr_Record : TBookmark;
begin
  Curr_Record := tDetalles_Cotizacion.GetBookmark;
  Try
    tCotizaciones.BeforeEdit := nil;
    tDetalles_Cotizacion.BeforePost := nil;
    tDetalles_Cotizacion.DisableControls;
    tDetalles_Cotizacion.First;
    While Not tDetalles_Cotizacion.Eof Do
      Begin
        tDetalles_Cotizacion.Edit;
        tDetalles_CotizacionCliente.Value := tCotizacionesCliente.Value;
        tDetalles_Cotizacion.Next
      end
  finally
    tCotizaciones.BeforeEdit := tCotizacionesBeforeEdit;
    tDetalles_Cotizacion.BeforePost := tDetalles_CotizacionBeforePost;
    tDetalles_Cotizacion.GotoBookmark(Curr_Record);
    tDetalles_Cotizacion.EnableControls
  end
end;

procedure TModulo.tCotizacionesFechaValidate(Sender: TField);
begin
  tCotizacionesVencimiento.Value := tCotizacionesFecha.Value + 15
end;

procedure TModulo.tCotizacionesTerminosValidate(Sender: TField);
  Var
    D,M,Y : Word;
begin
  tTerminos.Locate(tTerminosNumero_Termino.FieldName,
                   tCotizacionesTerminos.Value,[]);

  DecodeDate(Modulo.Enlace.AppServer.ServerDate,Y,M,D);

  If M = 12 Then
    Begin
      M := 0;
      Inc(Y);
    End;

  Inc(M);

  If D >= tTerminosMargenDeDias.Value Then Inc(M);

  tCotizacionesVencimiento.Value := tCotizacionesFecha.Value + tTerminosDiasDeGracia.Value;

  If Trim(tTerminosFormaDeVencimiento.Value) = 'En Fechas' Then
    tCotizacionesVencimiento.Value := EncodeDate(Y,M,tTerminosDiasDeGracia.Value)
end;

procedure TModulo.tCotizacionesVendedorValidate(Sender: TField);
begin
  tCotizacionesNombre_Vendedor.Value := tListadoVendedoresNombreCompleto.Value
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
  tFacturasValor_Descuento.Value := tFacturasSubTotal.Value * (tFacturasDescuento_Global.Value / 100);
  tFacturasValor_Impuesto.Value  := (tFacturasSubTotal.Value - tFacturasValor_Descuento.Value) * (tFacturasImpuesto_Global.Value / 100);

  tFacturasTotal_Impuesto.Value := tFacturasValor_Impuesto.Value + tFacturasValor_Impuesto_Detalle.Value;
  tFacturasTotal_Descuento.Value := tFacturasValor_Descuento.Value + tFacturasValor_Descuento_Detalle.Value;

  tFacturasTotalNeto.Value := tFacturasSubTotal.Value +
                              tFacturasTotal_Impuesto.Value -
                              tFacturasTotal_Descuento.Value;

  tFacturasPendiente.Value := tFacturasTotalNeto.Value - tFacturasPagado.Value;
  tFacturasTotal_Restante.Value := tFacturasPendiente.Value;

  tFacturasSub_Total_Moneda.Value := tFacturasSubTotal.Value / tFacturasTasa.Value;
  tFacturasTotal_Impuesto_Moneda.Value := tFacturasTotal_Impuesto.Value / tFacturasTasa.Value;
  tFacturasTotal_Descuento_Moneda.Value := tFacturasTotal_Descuento.Value / tFacturasTasa.Value;
  tFacturasTotal_Moneda.Value := tFacturasTotalNeto.Value / tFacturasTasa.Value;
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

procedure TModulo.tFacturasTipo_NCFValidate(Sender: TField);
begin
  Ps := Const0_1[tFacturasTipo_NCF.Value <> '00']
end;

procedure TModulo.tFacturasTotal_Efectivo_DevueltoValidate(Sender: TField);
begin
  tFacturasTotal_Efectivo_Devuelto_Moneda.Value := tFacturasTotal_Efectivo_Devuelto.Value / tFacturasTasa.Value
end;

procedure TModulo.tFacturasTotal_Efectivo_RecibidoValidate(Sender: TField);
begin
  tFacturasTotal_Efectivo_Recibido_Moneda.Value := tFacturasTotal_Efectivo_Recibido.Value / tFacturasTasa.Value
end;

procedure TModulo.tFacturasVendedorValidate(Sender: TField);
begin
  tFacturasNombre_Vendedor.Value := tListadoVendedoresNombreCompleto.Value
end;

procedure TModulo.tListado_ClientesCalcFields(DataSet: TDataSet);
begin
  tListado_ClientesInicial.Value := Copy(tListado_ClientesNombreCompleto.Value,1,1)
end;

procedure TModulo.tOrdenes_CompraAfterInsert(DataSet: TDataSet);
begin
  tOrdenes_CompraUsuario.Value := _CurrentUser;
end;

procedure TModulo.tOrdenes_CompraBeforeEdit(DataSet: TDataSet);
begin
  If tOrdenes_CompraStatus.Value <> _stACTIVO Then
    Begin
      PopUpMessage(Modulo.Mensajes,Format(_ErrOrdenDeCompraProcesada,[tOrdenes_CompraCompra_Numero.Text]));
      SysUtils.Abort
    end
end;

procedure TModulo.tOrdenes_CompraBeforePost(DataSet: TDataSet);
begin
  If Trim(tOrdenes_CompraNombre_Proveedor.Value) = '' Then tOrdenes_CompraNombre_Proveedor.Value := tProveedoresNombreCompleto.Value;
  If Trim(tOrdenes_CompraConcepto_Compra.Value) = '' Then tOrdenes_CompraConcepto_Compra.Value := Format('Orden de Compra de Fecha %s - %s',[tOrdenes_CompraFecha.AsString,tOrdenes_CompraNombre_Proveedor.Value]);
end;

procedure TModulo.tOrdenes_CompraProveedorValidate(Sender: TField);
begin
  tOrdenes_CompraNombre_Proveedor.Value := tProveedoresNombre.Value;
  tOrdenes_CompraDescuento_Global.Value := tProveedoresDescuento_Asignado.Value;
  tOrdenes_CompraTerminos.Value := tProveedoresTerminosFacturacion.Value
end;

procedure TModulo.ActualizarDetallesFactura(DataSet: TDataSet);
  Var
    CurrentRecord   : TBookmark;
    Total_Costo     ,
    Total_Precio    ,
    Total_Descuento ,
    Total_Impuesto  : Currency;
    Total_Seriales  : Integer;

begin
  CurrentRecord := tDetalles_Factura.GetBookmark;
  Try
    Total_Costo     := 0;
    Total_Precio    := 0;
    Total_Descuento := 0;
    Total_Impuesto  := 0;
    Total_Seriales  := 0;

    tDetalles_Factura.DisableControls;
    tDetalles_Factura.First;

    While Not tDetalles_Factura.Eof Do
      Begin
        Total_Costo     := tDetalles_FacturaTotal_Costo.Value + Total_Costo;
        Total_Precio    := tDetalles_FacturaTotal_Precio.Value +
                           tDetalles_FacturaTotal_Descuento.Value -
                           tDetalles_FacturaTotal_Impuesto.Value +
                           Total_Precio;
        Total_Impuesto  := tDetalles_FacturaTotal_Impuesto.Value + Total_Impuesto;
        Total_Descuento := tDetalles_FacturaTotal_Descuento.Value + Total_Descuento;

        If tDetalles_FacturaRequiere_Serial.Value Then
          Total_Seriales := Total_Seriales + Round(tDetalles_FacturaCantidad.Value * tDetalles_FacturaContenido.Value);

        tDetalles_Factura.Next
      End;{While}

    If Not (tFacturas.State In DsEditModes) Then tFacturas.Edit;
    tFacturasSubTotal.Value := Total_Precio;
    tFacturasTotal_Costo.Value := Total_Costo;
    tFacturasValor_Impuesto_Detalle.Value := Total_Impuesto;
    tFacturasValor_Descuento_Detalle.Value := Total_Descuento;
    tFacturasTotal_Seriales.Value := Total_Seriales

  Finally
    tDetalles_Factura.GotoBookmark(CurrentRecord);
    tDetalles_Factura.FreeBookmark(CurrentRecord);
    tDetalles_Factura.EnableControls
  End {Try}
end;

procedure TModulo.tDetalles_FacturaAfterScroll(DataSet: TDataSet);
begin
  If Trim(tDetalles_FacturaCodigo_Real.Value) <> '' Then
    Begin
      tProductos.Cancel;
      tProductos.CancelUpdates;
      tProductos.Close;
      tProductos.Params.ParamByName('Codigo').AsString := Trim (UpperCase(tDetalles_FacturaCodigo_Real.Value));
      tProductos.Open;
    End;
end;

procedure TModulo.tDetalles_FacturaBeforeDelete(DataSet: TDataSet);
begin
  tFacturas.Edit;
  tSeriales_Factura.First;
  While Not tSeriales_Factura.EOF Do tSeriales_Factura.Delete
end;

procedure TModulo.tDetalles_FacturaBeforeOpen(DataSet: TDataSet);
begin
  tFormas_Pago.Open;
  tProductos.Open
end;

procedure TModulo.tDetalles_FacturaBeforePost(DataSet: TDataSet);
begin
  If Not tInventario_Terminal.Active Then
    Begin
      tInventario_Terminal.Params.ParamByName('Codigo_Almacen').AsString := Trim(_CurrentStore);
      tInventario_Terminal.Open
    End;

  If Not tInventario_Terminal.Locate('Codigo_Producto',tDetalles_FacturaCodigo_Real.Value,[]) Then
    Begin
      tInventario_Terminal.Append;
      tInventario_TerminalCodigo_Producto.Value := tDetalles_FacturaCodigo_Real.Value;
      tInventario_TerminalCodigo_Almacen.Value := Trim(_CurrentStore);
      tInventario_TerminalID.Value := _CurrentTerminal;
      tInventario_Terminal.Post;
      tInventario_Terminal.ApplyUpdates(0)
    End;

  If tDetalles_FacturaProc_Detalle.IsNull Or (Trim(tDetalles_FacturaProc_Detalle.Value) = '') Then
    tDetalles_FacturaProc_Detalle.Value := Gen_ProcessNumber(_CurrentUser);

  If Not tDetalles_FacturaMes.IsNull Then
    If (tDetalles_FacturaMes.Value <= MonthOf(Enlace.AppServer.ServerDate)) And
       (tDetalles_FacturaAno.Value <= YearOf(Enlace.AppServer.ServerDate)) Then
      Raise Exception.Create(_ErrProductoVencido);

  If tDetalles_FacturaTotal_Precio.Value < (tDetalles_FacturaPrecio_Minimo.Value * (tDetalles_FacturaCantidad.Value * tDetalles_FacturaContenido.Value)) Then
    Raise Exception.Create(_ErrPrecio_Menor_Precio_Minimo);

  tDetalles_FacturaID.Value := tFacturasID.Value;
  tDetalles_FacturaAlmacen.Value := tFacturasAlmacen.Value;

  Modulo.tListadoProductos.Locate('Codigo',tDetalles_FacturaCodigo_Real.Value,[]);

  If _RestrictInventory Then
    If Trim(Modulo.tListadoProductosTipo_Inventario.Value)  = 'Regular' Then
      If (tDetalles_FacturaUnidades.Value > tListadoProductosExistencia.Value) Then
          Raise Exception.Create(Format(_ErrExistenciaProducto,[tListadoProductosDescripcion.Value,tListadoProductosExistencia.Text, tListadoProductosExistencia_Medida.Text, tListadoProductosMedida_Venta.Value]));

  Modulo.tDetalles_FacturaAlmacen.Value := Modulo.tFacturasAlmacen.Value;

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

  If Trim (tDetalles_FacturaCodigo.Value) = '+' Then
    Begin
      tListadoProductos.Cancel;
      tListadoProductos.CancelUpdates;
      OpenForm(TFProductos,FProductos);
      tListadoProductos.Refresh;
      SysUtils.Abort
    End;

  tProductos.Cancel;
  tProductos.CancelUpdates;
  tProductos.Close;
  tProductos.Params.ParamByName('Codigo').AsString := Trim (UpperCase(tDetalles_FacturaCodigo.Value));
  tProductos.Params.ParamByName('Barra').AsString := Trim (UpperCase(tDetalles_FacturaCodigo.Value));
  tProductos.Params.ParamByName('Referencia').AsString := Trim (UpperCase(tDetalles_FacturaCodigo.Value));
  tProductos.Params.ParamByName('Secuencia').AsInteger := Secuencia;
  tProductos.Params.ParamByName('Proceso').Clear;
  tProductos.Open;

  If tProductos.RecordCount <= 0 Then
    Raise Exception.Create(_ProductoNoExiste);

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
  If Trim(tProductosTipo_Inventario.Value) <> 'Mensaje' Then
    Begin
//      tDetalles_FacturaTipo_Precio.Value   := Trim(tFacturasTipo_Factura.Value) + ' ' + Trim(tFacturasCondicion.Value);
      tDetalles_FacturaTipo_Precio.Value   := 'Unidad';
      tDetalles_FacturaMedida.Value        := Trim(tProductosMedida_Venta.Value);
      tDetalles_FacturaContenido.Value     := tProductosUnidades_Medida_Venta.Value;
      If (tDetalles_FacturaContenido.Value = 0) Or (tDetalles_FacturaContenido.IsNull) Then
        tDetalles_FacturaContenido.Value := 1;

      tDetalles_FacturaPrecio_Minimo.Value := tProductosPrecio_Venta_Minimo.Value;

      tDetalles_FacturaPrecio_Real.Value   := tDetalles_FacturaPrecio_Venta.Value;

      If (tProductosMetodo_Calculo_Costo.Value = 'Promedio')  Then
        tDetalles_FacturaCosto.Value         := tProductosCosto_Promedio.Value;

      If (tProductosMetodo_Calculo_Costo.Value = 'Estandar')  Then
        tDetalles_FacturaCosto.Value         := tProductosCosto_Standar.Value;

      If (tProductosMetodo_Calculo_Costo.Value = 'Última Compra')  Then
        tDetalles_FacturaCosto.Value         := tProductosUltimo_Precio_Compra.Value;

      tDetalles_FacturaDepartamento.Value    := tProductosDepartamento.Value;
      tDetalles_FacturaCategoria.Value       := tProductosCategoria.Value;
      tDetalles_FacturaTipo_Producto.Value   := tProductosTipo_Producto.Value;
      tDetalles_FacturaFabricante.Value      := tProductosFabricante.Value;
      tDetalles_FacturaSecuencia.Value       := tProductosSecuencia.Value;
      tDetalles_FacturaRequiere_Serial.Value := tProductosRequiere_Numero_Serie.Value;

      If tProductosPaga_Impuesto.Value Then tDetalles_FacturaImpuesto.Value := tParametrosImpuesto.Value;
    End
  Else
    Begin
      tDetalles_FacturaCantidad.Value := 0;
      tDetalles_FacturaContenido.Value := 0;
      tDetalles_FacturaDescuento.Clear;
      tDetalles_FacturaImpuesto.Clear;
      tDetalles_FacturaPrecio_Venta.Clear;
      tDetalles_FacturaTotal_Precio.Clear
    end;

  tDetalles_FacturaCliente.Value       := tFacturasCliente.Value;
  tDetalles_FacturaFecha.Value         := tFacturasFecha.Value;
  tDetalles_FacturaHora.Value          := tFacturasHora.Value;
  tDetalles_FacturaUsuario.value       := _CurrentUser;
  tDetalles_Factura.EnableControls
end;

procedure TModulo.tDetalles_FacturaMedidaValidate(Sender: TField);
begin
  If Trim(tDetalles_FacturaMedida.Value) = 'Unidad' Then
    Begin
      tDetalles_FacturaPrecio_Venta.Value := tProductosPrecio_Unidad.Value;
      tDetalles_FacturaContenido.Value := 1
    End
  Else
    Begin
      tDetalles_FacturaTipo_PrecioValidate(Sender);
      tDetalles_FacturaContenido.Value := tProductosUnidades_Medida_Venta.Value
    End;
end;

procedure TModulo.Calculo_Totales_Detalle_Factura(Sender: TField);
  Var
    TotalPrecio : Currency;
begin
  {Calculo de Unidades}
  tDetalles_FacturaUnidades.Value := tDetalles_FacturaCantidad.Value * tDetalles_FacturaContenido.Value;
  tDetalles_FacturaPrecio_Unidad.Value := tDetalles_FacturaPrecio_Venta.Value / tDetalles_FacturaContenido.Value;

  tDetalles_FacturaValor_Descuento.Value := tDetalles_FacturaPrecio_Unidad.Value * (tDetalles_FacturaDescuento.Value / 100);
  tDetalles_FacturaValor_Impuesto.Value  := (tDetalles_FacturaPrecio_Unidad.Value - tDetalles_FacturaValor_Descuento.Value) * (tDetalles_FacturaImpuesto.Value / 100);
  TotalPrecio                            := tDetalles_FacturaPrecio_Unidad.Value + tDetalles_FacturaValor_Impuesto.Value - tDetalles_FacturaValor_Descuento.Value;

  tDetalles_FacturaTotal_Precio.Value := TotalPrecio * tDetalles_FacturaUnidades.Value;
  tDetalles_FacturaTotal_Costo.Value  := tDetalles_FacturaCosto.Value * tDetalles_FacturaUnidades.Value;
  tDetalles_FacturaTotal_Moneda.Value := tDetalles_FacturaTotal_Precio.Value / tFacturasTasa.Value;

  tDetalles_FacturaTotal_Descuento.Value := tDetalles_FacturaValor_Descuento.Value * tDetalles_FacturaUnidades.Value;
  tDetalles_FacturaTotal_Impuesto.Value  := tDetalles_FacturaValor_Impuesto.Value * tDetalles_FacturaUnidades.Value;
  tDetalles_FacturaImpuesto_Moneda.Value := tDetalles_FacturaTotal_Impuesto.Value / tFacturasTasa.Value;
  tDetalles_FacturaDescuento_Moneda.Value := tDetalles_FacturaTotal_Descuento.Value / tFacturasTasa.Value
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
      tFacturasInicial.Value := tFacturasTotalNeto.Value
    Else tFacturasInicial.Value := Total_Pagado;

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

procedure TModulo.tFacturasBeforeEdit(DataSet: TDataSet);
begin
  If (tFacturasNumero.Value <> 0) And Not(tFacturasNumero.IsNull) Then
    Begin
      If Application.MessageBox(PChar(Format(_ConfirmarEditarDocumento,[tFacturasNumero.Text])),
                        'EDITAR FACTURA',
                        MB_YESNO + MB_ICONQUESTION) = ID_No Then Raise Exception.Create(_ErrAccesoDenegadoOpcion);

      Granted := False;
      OpenForm(TFAutorizar,FAutorizar);
      If (Not Granted) Then Raise Exception.Create(_ErrAccesoDenegadoOpcion)
    End
end;

procedure TModulo.tFacturasBeforePost(DataSet: TDataSet);
begin
  If Trim(tFacturasTipo_NCF.Value) = '00' Then tFacturasTipo_NCF.Value := '02';
  If Trim(tFacturasNombre_Cliente.Value) = '' Then tFacturasNombre_Cliente.Value := tListado_ClientesNombreCompleto.Value;
  If Trim(tFacturasConcepto_Factura.Value) = '' Then tFacturasConcepto_Factura.Value := Format('Factura de Fecha %s - %s',[tFacturasFecha.AsString,tFacturasNombre_Cliente.Value]);
  tFacturasDescripcion_NCF.Value := tComprobantes_FiscalesDescripcion.Value
end;

procedure TModulo.tFacturasClienteValidate(Sender: TField);
  Var
    Curr_Record : TBookmark;
begin
  Curr_Record := tDetalles_Factura.GetBookmark;
  Try
    tFacturas.BeforeEdit := nil;
    tDetalles_Factura.BeforePost := nil;
    tDetalles_Factura.DisableControls;
    tDetalles_Factura.First;
    While Not tDetalles_Factura.Eof Do
      Begin
        tDetalles_Factura.Edit;
        tDetalles_FacturaCliente.Value := tFacturasCliente.Value;

        tSeriales_Factura.First;
        While Not tSeriales_Factura.Eof Do
          Begin
            tSeriales_Factura.Edit;
            tSeriales_FacturaCliente.Value := tFacturasCliente.Value;
            tSeriales_Factura.Post;
            tSeriales_Factura.Next
          end;
        tDetalles_Factura.Next
      end
  finally
    tFacturas.BeforeEdit := tFacturasBeforeEdit;
    tDetalles_Factura.BeforePost := tDetalles_FacturaBeforePost;
    tDetalles_Factura.GotoBookmark(Curr_Record);
    tDetalles_Factura.EnableControls
  end
end;

procedure TModulo.tFacturasInicialValidate(Sender: TField);
begin
  tFacturasPagado.Value := tFacturasInicial.Value
end;

procedure TModulo.tFacturasMonedaValidate(Sender: TField);
begin
  tFacturasTasa.Value := tFormas_PagoTasa.Value
end;

procedure TModulo.tFacturasAfterInsert(DataSet: TDataSet);
begin
  tFacturasUsuario.Value := _CurrentUser;
  tFacturasApertura.Value := _CurrentApertura;
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

procedure TModulo.CalcDiferenciasInventario(Sender: TField);
begin
  tAjuste_InventarioDiferencia.Value := tAjuste_InventarioExistencia_Fisica.Value - tAjuste_InventarioExistencia_Actual.Value
end;

procedure TModulo.CalcularFinanciamiento(Sender: TField);
begin
   CalculosGenereales
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

procedure TModulo.tRegistro_GastosBeforeEdit(DataSet: TDataSet);
begin
  If (tRegistro_GastosNumero.Value <> 0) And Not(tRegistro_GastosNumero.IsNull) Then
    Begin
      If Application.MessageBox(PChar(Format(_ConfirmarEditarDocumento,[tRegistro_GastosNumero.Text])),
                        'EDITAR REGISTRO DE GASTOS',
                        MB_YESNO + MB_ICONQUESTION) = ID_No Then Raise Exception.Create(_ErrAccesoDenegadoOpcion);

      Granted := False;
      OpenForm(TFAutorizar,FAutorizar);
      If (Not Granted) Then Raise Exception.Create(_ErrAccesoDenegadoOpcion)
    End
end;

procedure TModulo.tRegistro_GastosBeforePost(DataSet: TDataSet);
begin
  tRegistro_GastosConcepto.Value := UpperCase(tRegistro_GastosConcepto.Value)
end;

procedure TModulo.tRegistro_GastosCalcFields(DataSet: TDataSet);
begin
  tRegistro_GastosMonto_Letras.AsString := RealNumToAlpha(tRegistro_GastosTotalNeto.Value);
  If tComprobantes_Fiscales.Active Then
    Begin
      tComprobantes_Fiscales.Locate('ID',tRegistro_GastosTipo_NCF.Value,[]);
      tRegistro_GastosDescripcion_NCF.AsString := tComprobantes_FiscalesDescripcion.AsString
    End;
end;

procedure TModulo.tRetiros_CajaBeforeEdit(DataSet: TDataSet);
begin
  SetCashParams;

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

procedure TModulo.BalanceCuotasFacturas(Sender: TField);
begin
  tCuotas_FacturasTotal_Pendiente.Value := tCuotas_FacturasCapital_Pendiente.Value +
                                            tCuotas_FacturasInteres_Pendiente.Value +
                                            tCuotas_FacturasMora_Pendiente.Value +
                                            tCuotas_FacturasOtros_Pendiente.Value;
  tCuotas_FacturasTotal_Pagado.Value := tCuotas_FacturasMonto.Value - tCuotas_FacturasTotal_Pendiente.Value
end;

procedure TModulo.tRetiros_CajaBeforePost(DataSet: TDataSet);
begin
  SetCashParams;

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

procedure TModulo.tSalidas_InventarioAfterInsert(DataSet: TDataSet);
begin
  tSalidas_InventarioUsuario.Value := _CurrentUser;
end;

procedure TModulo.tSalidas_InventarioBeforeEdit(DataSet: TDataSet);
begin
  If (tSalidas_InventarioNumero.Value <> 0) And Not(tSalidas_InventarioNumero.IsNull) Then
    Begin
      If Application.MessageBox(PChar(Format(_ConfirmarEditarDocumento,[tSalidas_InventarioNumero.Text])),
                        'EDITAR FACTURA',
                        MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

      Granted := False;
      OpenForm(TFAutorizar,FAutorizar);
      If (Not Granted) Then
        Begin
          Mensaje(_ErrAccesoDenegadoOpcion);
          SysUtils.Abort
        End
    End
end;

procedure TModulo.tSalidas_InventarioBeforePost(DataSet: TDataSet);
begin
  If Trim(tSalidas_InventarioNombre_Cliente.Value) = '' Then tSalidas_InventarioNombre_Cliente.Value := tListado_ClientesNombreCompleto.Value;
  If Trim(tSalidas_InventarioConcepto_Salida.Value) = '' Then tSalidas_InventarioConcepto_Salida.Value := Format('Salida de Inventario de Fecha %s - %s',[tSalidas_InventarioFecha.AsString,tSalidas_InventarioNombre_Cliente.Value]);
end;

procedure TModulo.tSalidas_InventarioVendedorValidate(Sender: TField);
begin
  tSalidas_InventarioNombre_Vendedor.Value := tListadoVendedoresNombreCompleto.Value
end;

procedure TModulo.Calculo_Totales_Salida(Sender: TField);
begin
  tSalidas_InventarioValor_Descuento.Value := tSalidas_InventarioSubTotal.Value * (tSalidas_InventarioDescuento_Global.Value / 100);
  tSalidas_InventarioValor_Impuesto.Value  := (tSalidas_InventarioSubTotal.Value - tSalidas_InventarioValor_Descuento.Value) * (tSalidas_InventarioImpuesto_Global.Value / 100);

  tSalidas_InventarioTotal_Impuesto.Value := tSalidas_InventarioValor_Impuesto.Value + tSalidas_InventarioValor_Impuesto_Detalle.Value;
  tSalidas_InventarioTotal_Descuento.Value := tSalidas_InventarioValor_Descuento.Value + tSalidas_InventarioValor_Descuento_Detalle.Value;

  tSalidas_InventarioTotalNeto.Value := tSalidas_InventarioSubTotal.Value +
                              tSalidas_InventarioTotal_Impuesto.Value -
                              tSalidas_InventarioTotal_Descuento.Value;

  tSalidas_InventarioPendiente.Value := tSalidas_InventarioTotalNeto.Value - tSalidas_InventarioPagado.Value;
  tSalidas_InventarioTotal_Restante.Value := tSalidas_InventarioPendiente.Value;
end;

procedure TModulo.Calc_Total_Registro(Sender: TField);
begin
  tRegistro_GastosTotalNeto.Value := tRegistro_GastosSubTotal.Value + tRegistro_GastosTotal_Impuesto.Value
end;

procedure TModulo.tSeriales_CompraBeforeInsert(DataSet: TDataSet);
begin
  If tSeriales_Compra.RecordCount >= (tDetalles_CompraCantidad.Value * tDetalles_CompraContenido.Value) Then
    SysUtils.Abort

end;

procedure TModulo.tSeriales_CompraBeforePost(DataSet: TDataSet);
begin
  If tSeriales_CompraFecha_Comprado.IsNull  Then
    Begin
      tSeriales_CompraFecha_Comprado.Value := Enlace.AppServer.ServerDate;
      tSeriales_CompraHora_Comprado.Value := Enlace.AppServer.ServerTime
    end;

  If tProveedores.Active Then
    tSeriales_CompraProveedor.Value := tProveedoresCedula_Rnc_Pasaporte.Value;

  tSeriales_CompraUsuario.Value := _CurrentUser;
end;

procedure TModulo.tSeriales_FacturaBeforeDelete(DataSet: TDataSet);
begin
  tSeriales_Comprados.Close;
  tSeriales_Comprados.Params.ParamByName('Codigo').AsString := tDetalles_FacturaCodigo_Real.AsString;
  tSeriales_Comprados.Open;

  If tSeriales_Comprados.Locate('Serial',Trim(tSeriales_FacturaSerial.Value),[]) Then
    Begin
      tSeriales_Comprados.Edit;
      tSeriales_CompradosStatus.Value := _stRECIBIDO;
      tSeriales_Comprados.Post;
      tSeriales_Comprados.ApplyUpdates(0)
    end
end;

procedure TModulo.tSeriales_FacturaBeforeInsert(DataSet: TDataSet);
begin
  If tSeriales_Factura.RecordCount >= (tDetalles_FacturaCantidad.Value * tDetalles_FacturaContenido.Value) Then
    SysUtils.Abort
end;

procedure TModulo.tSeriales_FacturaBeforePost(DataSet: TDataSet);
begin
  If tSeriales_FacturaFecha_Facturado.IsNull  Then
    Begin
      tSeriales_FacturaFecha_Facturado.Value := Enlace.AppServer.ServerDate;
      tSeriales_FacturaHora_Facturado.Value := Enlace.AppServer.ServerTime
    end;

  tSeriales_FacturaProceso.Value := tFacturasProceso.Value;
  tSeriales_FacturaID.Value := tFacturasID.Value;
  tSeriales_FacturaCliente.Value := tFacturasCliente.Value;

  tSeriales_FacturaUsuario.Value := _CurrentUser;
end;

procedure TModulo.tSeriales_SalidaBeforeDelete(DataSet: TDataSet);
begin
  tSeriales_Comprados.Close;
  tSeriales_Comprados.Params.ParamByName('Codigo').AsString := tDetalles_SalidaCodigo_Real.AsString;
  tSeriales_Comprados.Open;

  If tSeriales_Comprados.Locate('Serial',Trim(tSeriales_SalidaSerial.Value),[]) Then
    Begin
      tSeriales_Comprados.Edit;
      tSeriales_CompradosStatus.Value := _stRECIBIDO;
      tSeriales_Comprados.Post;
      tSeriales_Comprados.ApplyUpdates(0)
    end
end;

procedure TModulo.tSeriales_SalidaBeforeInsert(DataSet: TDataSet);
begin
  If tSeriales_Salida.RecordCount >= (tDetalles_SalidaCantidad.Value * tDetalles_SalidaContenido.Value) Then
    SysUtils.Abort
end;

procedure TModulo.tSeriales_SalidaBeforePost(DataSet: TDataSet);
begin
  If tSeriales_SalidaFecha_Facturado.IsNull  Then
    Begin
      tSeriales_SalidaFecha_Facturado.Value := Enlace.AppServer.ServerDate;
      tSeriales_SalidaHora_Facturado.Value := Enlace.AppServer.ServerTime
    end;

  tSeriales_SalidaCliente.Value := tSalidas_InventarioCliente.Value;

  tSeriales_SalidaUsuario.Value := _CurrentUser;
end;

procedure TModulo.tSimilaresCalcFields(DataSet: TDataSet);
begin
  tSimilaresDescripcion.Value := 'N/D';

  If Not tListadoProductos.Active Then tListadoProductos.Open;

  If Trim(tSimilaresSimilar.Value) <> Trim(tListadoProductosCodigo.Value) Then
    If Not tListadoProductos.Locate(tListadoProductosCodigo.FieldName,Trim(tSimilaresSimilar.Value),[]) Then Exit;

  tSimilaresDescripcion.Value := tListadoProductosDescripcion.Value
end;

procedure TModulo.tDetalles_SalidaBeforeDelete(DataSet: TDataSet);
begin
  tSalidas_Inventario.Edit;
  tSeriales_Salida.First;
  While Not tSeriales_Salida.EOF Do tSeriales_Salida.Delete
end;

procedure TModulo.tDetalles_SalidaBeforePost(DataSet: TDataSet);
begin
  If Not tInventario_Terminal.Active Then
    Begin
      tInventario_Terminal.Params.ParamByName('Codigo_Almacen').AsString := Trim(_CurrentStore);
      tInventario_Terminal.Open
    End;

  If Not tInventario_Terminal.Locate('Codigo_Producto',tDetalles_SalidaCodigo_Real.Value,[]) Then
    Begin
      tInventario_Terminal.Append;
      tInventario_TerminalCodigo_Producto.Value := tDetalles_SalidaCodigo_Real.Value;
      tInventario_TerminalCodigo_Almacen.Value := Trim(_CurrentStore);
      tInventario_TerminalID.Value := _CurrentTerminal;
      tInventario_Terminal.Post;
      tInventario_Terminal.ApplyUpdates(0)
    End;

  If Not tDetalles_SalidaMes.IsNull Then
    If (tDetalles_SalidaMes.Value <= MonthOf(Enlace.AppServer.ServerDate)) And
       (tDetalles_SalidaAno.Value <= YearOf(Enlace.AppServer.ServerDate)) Then
      Raise Exception.Create(_ErrProductoVencido);

  If tDetalles_SalidaTotal_Precio.Value < (tDetalles_SalidaPrecio_Minimo.Value * tDetalles_SalidaCantidad.Value) Then
      Raise Exception.Create(_ErrPrecio_Menor_Precio_Minimo);

  Modulo.tListadoProductos.Locate('Codigo',tDetalles_SalidaCodigo_Real.Value,[]);

  If _RestrictInventory Then
    If Trim(Modulo.tListadoProductosTipo_Inventario.Value)  = 'Regular' Then
      If (tDetalles_SalidaCantidad.Value * tDetalles_SalidaContenido.Value) > tListadoProductosExistencia.Value Then
          Raise Exception.Create(Format(_ErrExistenciaProducto,[tListadoProductosDescripcion.Value,tListadoProductosExistencia.Text, tListadoProductosMedida_Venta.Value]));

  Modulo.tDetalles_SalidaAlmacen.Value := Modulo.tSalidas_InventarioAlmacen.Value;

  Try
    tDetalles_SalidaCodigo.OnValidate := Nil;
    tDetalles_SalidaCodigo.Value := Trim(UpperCase(tDetalles_SalidaCodigo.Value));
  Finally
    tDetalles_SalidaCodigo.OnValidate := tDetalles_SalidaCodigoValidate
  End
end;

procedure TModulo.tExistenciaInicialBeforePost(DataSet: TDataSet);
  Var
    WindowResult : TModalResult;
begin
  If Not tInventario_Terminal.Active Then
    Begin
      tInventario_Terminal.Params.ParamByName('Codigo_Almacen').AsString := Trim(_CurrentStore);
      tInventario_Terminal.Open
    End;

  If Not tInventario_Terminal.Locate('Codigo_Producto',tExistenciaInicialCodigo_Real.Value,[]) Then
    Begin
      tInventario_Terminal.Append;
      tInventario_TerminalCodigo_Producto.Value := tExistenciaInicialCodigo_Real.Value;
      tInventario_TerminalCodigo_Almacen.Value := Trim(_CurrentStore);
      tInventario_TerminalID.Value := _CurrentTerminal;
      tInventario_Terminal.Post;
      tInventario_Terminal.ApplyUpdates(0)
    End;

  If Not tExistenciaInicialMes.IsNull Then
    If (tExistenciaInicialMes.Value <= MonthOf(Enlace.AppServer.ServerDate)) And
       (tExistenciaInicialAno.Value <= YearOf(Enlace.AppServer.ServerDate)) Then
      Raise Exception.Create(_ErrProductoVencido);

  tExistenciaInicialID.Value := tCompra_ProductosID.Value;
  tExistenciaInicialAlmacen.Value := _CurrentStore;

// Cambiar a Mayuscula los Codigos del Detalle de Compras
  Try
    tExistenciaInicialCodigo.OnValidate := Nil;
    tExistenciaInicialCodigo.Value := Trim(UpperCase(tExistenciaInicialCodigo.Value));
  Finally
    tExistenciaInicialCodigo.OnValidate := tExistenciaInicialCodigoValidate
  End;

  _ChkSerials := True
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
  If (Trim(tDetalles_FacturaTipo_Precio.Value) = 'P-1') Then tDetalles_FacturaValor_Moneda.Value  := tProductosPrecio_Venta_Por_Mayor_Contado.Value;
  If (Trim(tDetalles_FacturaTipo_Precio.Value) = 'P-2') Then tDetalles_FacturaValor_Moneda.Value  := tProductosPrecio_Venta_Por_Mayor_Credito.Value;
  If (Trim(tDetalles_FacturaTipo_Precio.Value) = 'P-3') Then tDetalles_FacturaValor_Moneda.Value  := tProductosPrecio_Venta_Contado.Value;
  If (Trim(tDetalles_FacturaTipo_Precio.Value) = 'P-4') Then tDetalles_FacturaValor_Moneda.Value  := tProductosPrecio_Venta_Credito.Value;
  If (Trim(tDetalles_FacturaTipo_Precio.Value) = 'Unidad') Then tDetalles_FacturaValor_Moneda.Value  := tProductosPrecio_Unidad.Value;
  If tDetalles_FacturaValor_Moneda.IsNull Or (tDetalles_FacturaValor_Moneda.Value = 0)  Then
    tDetalles_FacturaValor_Moneda.Value := tProductosPrecio_Unidad.Value
end;

procedure TModulo.tDetalles_FacturaValor_MonedaValidate(Sender: TField);
begin
  tDetalles_FacturaPrecio_Venta.Value := tDetalles_FacturaValor_Moneda.Value * tFacturasTasa.Value;
end;

procedure TModulo.tDetalles_Orden_CompraCodigoValidate(Sender: TField);
  Var
    Secuencia : LongInt;
    Mes, Anio : Word;
    Name      : String;

begin
  Name := '';
  Try
    Mes := StrToInt(Copy(tDetalles_Orden_CompraCodigo.Value,7,2));
    Anio := StrToInt(Copy(tDetalles_Orden_CompraCodigo.Value,9,4));
    Secuencia := StrToInt(Copy(tDetalles_Orden_CompraCodigo.Value,1,6));
  Except
    Mes := 0;
    Anio := 0;
    Secuencia := 0;
  End; {Try}

  tProductos.Params.ParamByName('Codigo').AsString := Trim (UpperCase(tDetalles_Orden_CompraCodigo.Value));
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
        tListadoProductosCodigo.Value := Trim(UpperCase(tDetalles_Orden_CompraCodigo.Value));
        tListadoProductosSecuencia.Value := 0;
        tListadoProductosBarra.Value := tListadoProductosCodigo.Value;
        If InputQuery('Registrar Producto','Escriba el Nombre del Producto',Name) Then
          Begin
            tListadoProductosDescripcion.Value := UpperCase(Name);
            tDetalles_Orden_CompraDescripcion.Value  := UpperCase(Name);
            tDetalles_Orden_CompraCodigo_Real.Value  := tDetalles_Orden_CompraCodigo.Value;
            tListadoProductos.Post;
            Exit;
          End
        Else tListadoProductos.Cancel;
        SysUtils.Abort
      End;

  tDetalles_Orden_CompraCodigo_Real.Value := tProductosCodigo.Value;

  If tProductosLector_Codigo.Value = _LeerSecuencia Then
    Begin
      tDetalles_Orden_CompraSecuencia.Value := Secuencia;
      If (Mes > 0) And (Mes <= 12) Then
        Begin
          tDetalles_Orden_CompraAno.Value := Anio;
          tDetalles_Orden_CompraMes.Value := Mes;
        End
    End;

  tDetalles_Orden_CompraDescripcion.Value            := Trim(tProductosDescripcion.Value);

  _Recalcular_Beneficios := False;
  If Trim(tProductosMetodo_Calculo_Costo.Value) = 'Promedio' Then
     tDetalles_Orden_CompraPrecio_Lista.Value        := tProductosCosto_Promedio.Value;

  If Trim(tProductosMetodo_Calculo_Costo.Value) = 'Estandar' Then
     tDetalles_Orden_CompraPrecio_Lista.Value        := tProductosCosto_Standar.Value;

  If Trim(tProductosMetodo_Calculo_Costo.Value) = 'Última Compra' Then
     tDetalles_Orden_CompraPrecio_Lista.Value        := tProductosUltimo_Precio_Compra.Value;

  tDetalles_Orden_CompraContenido.Value                       := tProductosUnidades_Medida_Compra.Value;
  tDetalles_Orden_CompraTipo_Beneficio.Value                  := tProductosTipo_Beneficio.Value;
  tDetalles_Orden_CompraValor_Beneficio_PMayor_Contado.Value  := tProductosValor_Beneficio_Contado.Value;
  tDetalles_Orden_CompraValor_Beneficio_PMayor_Credito.Value  := tProductosValor_Beneficio_Credito.Value;
  tDetalles_Orden_CompraValor_Beneficio_Detalle_Contado.Value := tProductosValor_Beneficio_Contado.Value;
  tDetalles_Orden_CompraValor_Beneficio_Detalle_Credito.Value := tProductosValor_Beneficio_Credito.Value;
  tDetalles_Orden_CompraDepartamento.Value                    := tProductosDepartamento.Value;
  tDetalles_Orden_CompraCategoria.Value                       := tProductosCategoria.Value;
  tDetalles_Orden_CompraTipo_Producto.Value                   := tProductosTipo_Producto.Value;
  tDetalles_Orden_CompraFabricante.Value                      := tProductosFabricante.Value;
  tDetalles_Orden_CompraSecuencia.Value                       := tProductosSecuencia.Value;

  tDetalles_Orden_CompraImpuesto.Value                        := Porcentaje_Global_Impuesto;
  tDetalles_Orden_CompraDescuento.Value                       := Porcentaje_Global_Descuento;
  _Recalcular_Beneficios := True;

  tDetalles_Orden_CompraProveedor.Value                       := tCompra_ProductosProveedor.Value;
  tDetalles_Orden_CompraFecha.Value                           := tCompra_ProductosFecha.Value;
  tDetalles_Orden_CompraHora.Value                            := tCompra_ProductosHora.Value;
  tDetalles_Orden_CompraUsuario.value                         := _CurrentUser;
  tDetalles_Orden_Compra.EnableControls
end;

Function TModulo.GenerarCuotas (Var Vence : TDate; Dias : Integer):Boolean;
  Var
    I,N     : Integer;
    Capital ,
    Interes ,
    Balance : Currency;

  Begin
    Result := False;

    If tFacturasPlazo_Pago.Value > 0 Then
      Begin
         If tCuotas.RecordCount > 0 Then        // Verificar si existian cuotas generadas
           Begin
             tCuotas.First;
             While Not tCuotas.Eof Do tCuotas.Delete // Eliminar las cuotas anteriores
           End; // tCuotas.RecordCount > 0

        N := 1;
        If Trim(tFacturasModalidad.Value) = 'Cuotas Fijas' Then
            For I := 1 To tFacturasPlazo_Pago.Value Do
              Begin
                Vence := Vencimiento(tFacturasFecha.Value,N,
                                     Trim(tFacturasPeriodo_Pagos.Value),
                                     Dias);

                AnadirCuota (tFacturasProceso.Value,
                             N,                                                  // Numero de Cuota
                             tFacturasValor_Capital.Value,                       // Monto de Capital de la Cuota
                             tFacturasValor_Interes.Value,                       // Monto de Interes de la Cuota
                             0,                                                  // Monto de Mora de la Cuota
                             0,                                                  // Monto Pagado
                             tFacturasFecha.Value,                              // Fecha en que se genera la cuota
                             Vence,                                              // Fecha en que se Vence la cuota
                             'R',                                                // Prioridad de pago
                             _Capital_Interes,                                   // Tipo de Cuota
                             Format(_ConceptoCuotaPrestamo,[IntToStr(N)]));      // Concepto
              End; // For I := 1 To tFacturasPlazo_Pago.Value Do

        If Trim(tFacturasModalidad.Value) = 'Amortizado Fijo' Then
          Begin
            Balance := tFacturasMonto_Financiado.Value;
            For I := 1 To tFacturasPlazo_Pago.Value Do
               Begin
                 Interes := Balance * (tFacturasInteres.Value / 100);
                 Capital := tFacturasValor_Cuotas.Value - Interes;

                 Vence := Vencimiento(tFacturasFecha.Value,N,
                                      Trim(tFacturasPeriodo_Pagos.Value),
                                      0);

                 AnadirCuota (tFacturasProceso.Value,
                              N,                                                // Numero de Cuota
                              Capital,                                          // Monto de Capital de la Cuota
                              Interes,                                          // Monto de Interes de la Cuota
                              0,                                                // Monto de Mora de la Cuota
                              0,                                                // Monto Pagado
                              tFacturasFecha.Value,                            // Fecha en que se genera la cuota
                              Vence,                                            // Fecha en que se Vence la cuota
                              'R',                                              // Prioridad de pago
                              _Capital_Interes,                                 // Tipo de Cuota
                              Format(_ConceptoCuotaPrestamo,[IntToStr(N),tFacturasNumero.Text]));    // Concepto

                 Balance := Balance - Capital
               End; //For ... Do
          End; // If Trim(tFacturasModalidad.Value) = 'Amortizado Fijo'

        Result := True
    End
  End;

Procedure TModulo.AnadirCuota (Const Proceso     : String;
                               Var   Numero      : Integer;
                               Const Capital     ,
                                     Interes     ,
                                     Mora        ,
                                     Pagado      : Currency;
                               Const Fecha       ,
                                     Vencimiento : TDate;
                               Const Prioridad   ,
                                     Tipo        ,
                                     Concepto    : String);
  Begin
    tCuotas.Append;

    tCuotasProceso.Value := Proceso;
    tCuotasNumero.Value := Numero;
    tCuotasTipo.Value := Tipo;
    tCuotasPrioridad.Value := Prioridad;
    tCuotasConcepto.Value := Concepto;

    tCuotasCapital.Value := Capital;
    tCuotasCapital_Pendiente.Value := Capital;

    tCuotasInteres.Value := Interes;
    tCuotasInteres_Pendiente.Value := Interes;

    tCuotasMora.Value := Mora;
    tCuotasMora_Pendiente.Value := Mora;

    tCuotasFecha.Value := Fecha;
    tCuotasFecha_Calculo_Mora.Value := Fecha;
    tCuotasVence.Value := Vencimiento;

    tCuotasMonto.Value := Capital + Interes + Mora;
    tCuotasTotal_Pendiente.Value := Capital + Interes + Mora;
    tCuotasTotal_Pagado.Value := Pagado;
    Inc (Numero);

    tCuotas.Post;
  End;

Function TModulo.Vencimiento (Const Fecha   : TDate;
                      Const Cuota   : Integer;
                      Const Periodo : String;
                      Const Dias    : Integer) : TDate;
   Var
     Calculated : Boolean;
  Begin
    Calculated := False;

    Result := Fecha;

    If Periodo = 'Diario' Then
      Begin
        Result := IncDay(Fecha,Cuota);
        Calculated := True
      End;

    If Periodo = 'Semanal' Then
      Begin
        Result := IncWeek(Fecha,Cuota);
        Calculated := True
      End;

    If Periodo = 'Quincenal' Then
      Begin
        Result := AddFortNights(Fecha,Cuota);
        Calculated := True
      End;

    If Periodo = 'Mensual' Then
      Begin
        Result := IncMonth(Fecha,Cuota);
        Calculated := True
      End;

    If Periodo = 'Trimestral' Then
      Begin
        Result := IncMonth(Fecha,Cuota * 3);
        Calculated := True
      End;

    If Periodo = 'Cuatrimestral' Then
      Begin
        Result := IncMonth(Fecha,Cuota * 4);
        Calculated := True
      End;

    If Periodo = 'Semestral' Then
      Begin
        Result := IncMonth(Fecha,Cuota * 6);
        Calculated := True
      End;

    If Periodo = 'Anual' Then
      Begin
        Result := IncWeek(Fecha,Cuota);
        Calculated := True
      End;

    If Not Calculated Then
      Result := IncDay(Fecha,Cuota * Dias);
  End;


Procedure TModulo.CargarFacturaXML(Const NombreCDS : String);
  Var
    ImageCuotas_Factura ,
    ImageDetalles_Factura ,
    ImageDetalle_Pago_Factura ,
    ImageCDS : TClientDataset;
    I : Integer;
    P : String;
    F : TDate;
    H : TTime;
begin
  ImageCds := TClientDataSet.Create(Self);
  ImageCuotas_Factura := TClientDataSet.Create(Self);
  ImageDetalles_Factura := TClientDataSet.Create(Self);
  ImageDetalle_Pago_Factura := TClientDataSet.Create(Self);

  Try
    tCuotas.DisableControls;
    tDetalles_Factura.DisableControls;
    tDetalle_Pago_Factura.DisableControls;

    ImageCds.AggregatesActive := True;
    DsImageCDS.DataSet := ImageCDS;

    ImageCds.LoadFromFile(NombreCDS);

    ImageCds.Open;

    P := Gen_ProcessNumber(_CurrentUser);
    F := Enlace.AppServer.ServerDate;
    H := Enlace.AppServer.ServerTime;
    ImageCDS.First;
    While Not ImageCDS.Eof Do
      Begin
        tFacturas.Insert;
        For I := 0 To tFacturas.FieldCount - 1 Do
          If tFacturas.FieldByName(tFacturas.Fields.Fields[I].FieldName).FieldKind = fkData Then
            tFacturas.FieldByName(tFacturas.Fields.Fields[I].FieldName).Value := ImageCDS.FieldByName(tFacturas.Fields.Fields[I].FieldName).Value;
        tFacturasProceso.Value := P;
        tFacturasFecha.Value := F;
        tFacturasHora.Value := H;
        tFacturasNumero.Value := 0;
        tFacturas.Post;
        ImageCDS.Next
      End; {Facturas}

    ImageCds.Close;
    with TDataSetField.Create(Self) do
    begin
      Name := 'ImageCdsQrCuotas_Factura';
      FieldName := 'QrCuotas_Factura';
      DataSet := ImageCds;
    end;

    with TDataSetField.Create(Self) do
    begin
      Name := 'ImageCdsQrDetalles_Factura';
      FieldName := 'QrDetalles_Factura';
      DataSet := ImageCds;
    end;

    with TDataSetField.Create(Self) do
    begin
      Name := 'ImageCdsQrDetalle_Pago_Factura';
      FieldName := 'QrDetalle_Pago_Factura';
      DataSet := ImageCds;
    end;

    ImageCuotas_Factura.DataSetField := (ImageCDS.FieldByName('QrCuotas_Factura') As TDataSetField);
    ImageDetalles_Factura.DataSetField := (ImageCDS.FieldByName('QrDetalles_Factura') As TDataSetField);
    ImageDetalle_Pago_Factura.DataSetField := (ImageCDS.FieldByName('QrDetalle_Pago_Factura') As TDataSetField);


    ImageCds.LoadFromFile(NombreCDS);
    ImageCds.Open;

    DsImageCDS.DataSet := ImageDetalles_Factura;
    ImageDetalles_Factura.First;
    While Not ImageDetalles_Factura.Eof Do
      Begin
        tDetalles_Factura.Insert;
        For I := 0 To tDetalles_Factura.FieldCount - 1 Do
          If tDetalles_Factura.FieldByName(tDetalles_Factura.Fields.Fields[I].FieldName).FieldKind = fkData Then
            tDetalles_Factura.FieldByName(tDetalles_Factura.Fields.Fields[I].FieldName).Value := ImageDetalles_Factura.FieldByName(tDetalles_Factura.Fields.Fields[I].FieldName).Value;
        tDetalles_FacturaProceso.Value := P;
        tDetalles_FacturaFecha.Value := F;
        tDetalles_FacturaHora.Value := H;
        tDetalles_Factura.Post;
        ImageDetalles_Factura.Next
      End; {Detalles_Factura}

    ImageDetalle_Pago_Factura.First;
    While Not ImageDetalle_Pago_Factura.Eof Do
      Begin
        tDetalle_Pago_Factura.Insert;
        For I := 0 To tDetalle_Pago_Factura.FieldCount - 1 Do
          If tDetalle_Pago_Factura.FieldByName(tDetalle_Pago_Factura.Fields.Fields[I].FieldName).FieldKind = fkData Then
            tDetalle_Pago_Factura.FieldByName(tDetalle_Pago_Factura.Fields.Fields[I].FieldName).Value := ImageDetalle_Pago_Factura.FieldByName(tDetalle_Pago_Factura.Fields.Fields[I].FieldName).Value;
        tDetalle_Pago_FacturaProceso.Value := P;
        tDetalle_Pago_Factura.Post;
        ImageDetalle_Pago_Factura.Next
      End; {Detalle_Pago_Factura}

    ImageCuotas_Factura.First;
    While Not ImageCuotas_Factura.Eof Do
      Begin
        tCuotas.Insert;
        For I := 0 To tCuotas.FieldCount - 1 Do
          If tCuotas.FieldByName(tCuotas.Fields.Fields[I].FieldName).FieldKind = fkData Then
            tCuotas.FieldByName(tCuotas.Fields.Fields[I].FieldName).Value := ImageCuotas_Factura.FieldByName(tCuotas.Fields.Fields[I].FieldName).Value;
        tCuotasProceso.Value := P;
        tCuotas.Post;
        ImageCuotas_Factura.Next
      End; {Cuotas}
  Finally
    tCuotas.EnableControls;
    tDetalles_Factura.EnableControls;
    tDetalle_Pago_Factura.EnableControls;

    ImageCds.Close;
    ImageCds.Free;
    ImageCuotas_Factura.Free;
    ImageDetalles_Factura.Free;
    ImageDetalle_Pago_Factura.Free;
    TDataSetField(FindComponent('ImageCdsQrCuotas_Factura')).Free;
    TDataSetField(FindComponent('ImageCdsQrDetalles_Factura')).Free;
    TDataSetField(FindComponent('ImageCdsQrDetalle_Pago_Factura')).Free;

    If FileExists(NombreCDS) Then DeleteFile(PAnsiChar(NombreCDS))
  End {Try}
End;

procedure TModulo.ChkRefresh(DataSet: TDataSet);
begin
  DoBeforeRefresh(DataSet);
end;

Procedure TModulo.CalculosGenereales;
  Var
    Divisor : Double;
begin
  SetRoundMode(rmNearest);

  // Calculo del Gasto de Cierre
 tFacturasValor_Gasto_Cierre.Value := tFacturasTotal_Restante.Value * (tFacturasGasto_Cierre.Value / 100);

  If Trim(tFacturasTipo_Gasto_Cierre.Value) = 'Excluido' Then
    tFacturasMonto_Financiado.Value := tFacturasTotal_Restante.Value +
                                       tFacturasValor_Gasto_Cierre.Value
  Else
    tFacturasMonto_Financiado.Value := tFacturasTotal_Restante.Value;

  tFacturasValor_Interes.Value := tFacturasMonto_Financiado.Value * (tFacturasInteres.Value / 100);

  {Calculo de Cuotas}
           // Cuotas Fijas
           // Amortizado Fijo
           // Amortizado Variable


  If tFacturasPlazo_Pago.Value > 0 Then
    Begin
      If Trim(tFacturasModalidad.Value) = 'Cuotas Fijas' Then
        Begin
          tFacturasValor_Capital.Value := tFacturasMonto_Financiado.Value / tFacturasPlazo_Pago.Value;
          tFacturasValor_Cuotas.Value := tFacturasValor_Capital.Value + tFacturasValor_Interes.Value
        End; // If Trim(tFacturasModalidad.Value) = 'Cuotas Fijas'

      If Trim(tFacturasModalidad.Value) = 'Amortizado Fijo' Then
        Begin
          tFacturasValor_Interes.Value := tFacturasMonto_Financiado.Value * (tFacturasInteres.Value / 100);

          Divisor := 1 - Power(1+(tFacturasInteres.Value / 100),-tFacturasPlazo_Pago.Value);

          tFacturasValor_Cuotas.Value := tFacturasValor_Interes.Value / Divisor;

          tFacturasValor_Capital.Value := tFacturasValor_Cuotas.Value - tFacturasValor_Interes.Value
        End; // If Trim(tFacturasModalidad.Value) = 'Amortizado Fijo'

      tFacturasTotal_Estimado.Value := tFacturasValor_Cuotas.Value * tFacturasPlazo_Pago.Value;
      tFacturasPendiente.Value := tFacturasTotal_Estimado.Value
    End
end;

Initialization
  Classes.RegisterClass(TModulo);

end.


