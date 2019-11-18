program Inventario_Cnt_SK;





{%TogetherDiagram 'ModelSupport_Inventario_Cnt\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt_SK\default.txaPackage'}
{%File 'FactComm.Cnt'}

uses
  Forms,
  Registry,
  Windows,
  DataModulo in 'DataModulo.pas' {Modulo: TDataModule},
  ErrorHandle in '..\..\..\Common\ErrorHandle.pas' {ReconcileErrorForm},
  Niveles in 'Niveles.pas' {FNiveles},
  Tipos_Productos in 'Tipos_Productos.pas' {FTipos_Productos},
  Venta_Caja in 'Venta_Caja.pas' {FVentas_Caja},
  Status in 'Status.pas' {FStatus},
  Proveedores in 'Proveedores.pas' {FProveedores},
  Departamentos in 'Departamentos.pas' {FDepartamentos},
  Bancos in 'Bancos.pas' {FBancos},
  Distrbuir_Vencimiento in 'Distrbuir_Vencimiento.pas' {FVencimientos},
  Datos_Recargas in 'Datos_Recargas.pas' {FDatos_Recargas},
  PrintLabels in 'PrintLabels.pas' {FPrintLabels},
  frmClientes in 'frmClientes.pas' {FrameClientes: TFrame},
  DotmatrX in 'DotmatrX.pas' {PreviewForm},
  frmProveedores in 'frmProveedores.pas' {FrameProveedores: TFrame},
  PayRollForms in '..\..\..\Nomina\Source\Client\PayRollForms.pas' {PayRoll_Forms: TDataModule},
  Formas_Pago in 'Formas_Pago.pas' {FMetodos},
  Apertura_Caja in 'Apertura_Caja.pas' {FApertura_Caja},
  DetalledePagos in 'DetalledePagos.pas' {FDetallePagos},
  Fabricantes in 'Fabricantes.pas' {FFabricantes},
  DialogoDepartamento in '..\..\..\Nomina\Source\Client\DialogoDepartamento.pas' {FCriterioDepartamento},
  Criterio_Etiquetas in 'Criterio_Etiquetas.pas' {FCriterio_Etiquetas},
  Criterio_Rep_Facturas_NCF in 'Criterio_Rep_Facturas_NCF.pas' {FCriterio_Rep_Facturas_NCF},
  PrintShow in 'PrintShow.pas' {FPrintShow},
  DlgFechas in '..\..\..\Common\DlgFechas.pas' {DlgFecha},
  PayRollConfigForm in 'PayRollConfigForm.pas' {FPayRollConfig},
  Opciones in 'Opciones.pas' {FOpciones},
  User_Login in 'User_Login.pas' {FUser_Login},
  Retiros_Caja in 'Retiros_Caja.pas' {FRetiros_Caja},
  PagosCompras in 'PagosCompras.pas' {FPago_Compra},
  Categorias in 'Categorias.pas' {FCategorias},
  NotasCredito in 'NotasCredito.pas' {FNotas_Credito},
  DialogoDeptos in 'DialogoDeptos.pas' {FCriterioRepProductos},
  Balance_Clientes in 'Balance_Clientes.pas' {FAjuste_Balances_Clientes},
  PagosFacturas in 'PagosFacturas.pas' {FPago_Factura},
  Importar in 'Importar.pas' {FImportar},
  Establecer_Precios_Ventas in 'Establecer_Precios_Ventas.pas' {FPrecios_Venta},
  Aplicar_Pago in 'Aplicar_Pago.pas' {FAplicar_Monto},
  Vendedores in 'Vendedores.pas' {FVendedores},
  Usuarios in 'Usuarios.pas' {FUsuarios},
  Compra_Productos in 'Compra_Productos.pas' {FCompra_Productos},
  Clientes in 'Clientes.pas' {FClientes},
  ConfigForm in 'ConfigForm.pas' {FMainConfig},
  Terminos in 'Terminos.pas' {FTerminos},
  Cuentas in '..\..\..\Lib\Contabilidad_Client\Cuentas.pas' {FCuentas_Contables},
  Salidas_Inventario in 'Salidas_Inventario.pas' {FSalidas_Inventario},
  Transacciones in '..\..\..\Lib\Contabilidad_Client\Transacciones.pas' {FTransacciones},
  DataModuloContabilidad in '..\..\..\Lib\Contabilidad_Client\DataModuloContabilidad.pas' {ModuloContabilidad: TDataModule},
  DialogoVendidas in 'DialogoVendidas.pas' {FCriterioRepVendida},
  Splash in 'Splash.pas' {FSplash},
  Anadir_Compania in '..\..\..\Nomina\Source\Client\Anadir_Compania.pas' {FAnadirCompania},
  Aplicar_Horas in '..\..\..\Nomina\Source\Client\Aplicar_Horas.pas' {FAplicar_Horas},
  Companias in '..\..\..\Nomina\Source\Client\Companias.pas' {FCompanias},
  DataNomina in '..\..\..\Nomina\Source\Client\DataNomina.pas' {ModuloNomina: TDataModule},
  Deducciones in '..\..\..\Nomina\Source\Client\Deducciones.pas' {FDeducciones},
  Departamentos_Empleados in '..\..\..\Nomina\Source\Client\Departamentos_Empleados.pas' {FDepartamentos_Nomina},
  Diario in '..\..\..\Nomina\Source\Client\Diario.pas' {FDiario},
  EditCiudades in '..\..\..\Common\EditCiudades.pas' {FEditCiudades},
  EditSectores in '..\..\..\Common\EditSectores.pas' {FEditSectores},
  EditZonas in '..\..\..\Common\EditZonas.pas' {FEditZonas},
  Empleados in '..\..\..\Nomina\Source\Client\Empleados.pas' {FEmpleados},
  Generar_Nomina in '..\..\..\Nomina\Source\Client\Generar_Nomina.pas' {FNomina},
  Grupos_Nomina in '..\..\..\Nomina\Source\Client\Grupos_Nomina.pas' {FGrupos_Nomina},
  Pagos_Incentivos in '..\..\..\Nomina\Source\Client\Pagos_Incentivos.pas' {FPagos_Incentivos},
  Regalia in '..\..\..\Nomina\Source\Client\Regalia.pas' {FRegalia},
  Seleccionar_Detalles_Grupo in '..\..\..\Nomina\Source\Client\Seleccionar_Detalles_Grupo.pas' {FSelect_Deducciones_Pagos},
  Tipo_Detalle_Grupo in '..\..\..\Nomina\Source\Client\Tipo_Detalle_Grupo.pas' {FTipos_Detalles_Grupo},
  Ver_Detalles_Nomina in '..\..\..\Nomina\Source\Client\Ver_Detalles_Nomina.pas' {FDetalles_Nomina},
  DialogoMayor in '..\..\..\Lib\Contabilidad_Client\DialogoMayor.pas' {FCriterioLibroMayor},
  Acc_Forms in '..\..\..\Lib\Contabilidad_Client\Acc_Forms.pas' {AccountingForms: TDataModule},
  Reports_Forms in 'Reports_Forms.pas' {ReportsAndForms: TDataModule},
  CnfgForms in 'CnfgForms.pas' {FConfigForms},
  Criterio_Vencimientos in 'Criterio_Vencimientos.pas' {FCriterio_Vencimientos},
  DlgFinanciamientos in 'DlgFinanciamientos.pas' {FormFinanciamientos},
  ResumenFacturas in 'ResumenFacturas.pas' {FResumenFacturas},
  Criterio_Rep_Facturas in 'Criterio_Rep_Facturas.pas' {FCriterio_Rep_Facturas},
  Autorizar in '..\..\..\Common\Autorizar.pas' {FAutorizar},
  TimerMessage in '..\..\..\Common\TimerMessage.pas' {FTimerMessage},
  AccountConfigForm in 'AccountConfigForm.pas' {FAccountConfig},
  RegKeys in 'RegKeys.pas',
  Generales in '..\..\..\Common\Generales.pas' {ModuloGenerales: TDataModule},
  Utilidades in '..\..\..\Common\Utilidades.Pas',
  DisplayMessage in '..\..\..\Common\DisplayMessage.pas' {FDisplayMessage},
  Denominaciones_Monedas in 'Denominaciones_Monedas.pas' {FDenominaciones},
  Facturas_Seriales in 'Facturas_Seriales.pas' {FFacturas_Seriales},
  Componentes in 'Componentes.pas' {FComponentes},
  Paises in '..\..\..\Common\Paises.pas' {FPaises},
  ESBDates in '..\..\..\Common\ESBDates.pas',
  CancelarCtasCobrar in 'CancelarCtasCobrar.pas' {FCancel_Ctas_Cobrar},
  SkinGraphic in '..\..\..\Common\SkinGraphic.pas',
  NotasDebito in 'NotasDebito.pas' {FNotas_Debito},
  CtasCobrar in 'CtasCobrar.pas' {FCtas_Cobrar},
  Productos_Similares in 'Productos_Similares.pas' {FProductos_Similares},
  Seriales_Productos_Facturados in 'Seriales_Productos_Facturados.pas' {FSeriales_Productos_Facturados},
  Compras_Seriales in 'Compras_Seriales.pas' {FCompras_Seriales},
  Seriales_Productos in 'Seriales_Productos.pas' {FSeriales_Productos},
  Orden_Compra_Productos in 'Orden_Compra_Productos.pas' {FOrden_Compra_Productos},
  Cotizaciones in 'Cotizaciones.pas' {FCotizaciones},
  Seriales_Productos_Despachados in 'Seriales_Productos_Despachados.pas' {FSeriales_Productos_Despachados},
  Existencia_Productos in 'Existencia_Productos.pas' {FExistencia_Inicial},
  SrchDlg in '..\..\..\Common\SrchDlg.pas' {DlgSearch},
  opMisc_Productos in 'opMisc_Productos.pas' {FOpciones_Misc_Productos},
  Modificar_Precio in 'Modificar_Precio.pas' {FModificar_Precio},
  Cuadre_Caja in 'Cuadre_Caja.pas' {FCuadre_Caja},
  Terminales in 'Terminales.pas' {FTerminales},
  Ajuste_Inventario in 'Ajuste_Inventario.pas' {FAjuste_Inventario},
  MainForm in 'MainForm.pas' {FMainMenu},
  Recargas in 'Recargas.pas' {FRecargas},
  Facturacion in 'Facturacion.pas' {FFacturacion},
  Productos in 'Productos.pas' {FProductos};

{$R *.res}

begin
  {Inicia la Aplicacion}
  Application.Initialize;

  {Inicia El Registro}
  RegInfo := TRegistry.Create;
  RegInfo.RootKey := HKEY_CURRENT_USER;

  FSplash := TFSplash.Create(Application);
  FSplash.Show;
  FSplash.Refresh;

    {Carga el Sistema}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_SystemInforMationKey,False);

  Application.Title := 'Sistema de Inventario & Facturación - RMS (r)';
  Application.HelpFile := 'C:\Development\IBProjects\3t-Inventory And Sales\Help\I_and_S.hlp';
  Application.CreateForm(TModulo, Modulo);
  Application.CreateForm(TModuloGenerales, ModuloGenerales);
  Application.CreateForm(TModuloContabilidad, ModuloContabilidad);
  Application.CreateForm(TModuloNomina, ModuloNomina);
  Application.CreateForm(TReportsAndForms, ReportsAndForms);
  Application.CreateForm(TAccountingForms, AccountingForms);
  Application.CreateForm(TPayRoll_Forms, PayRoll_Forms);
  Application.CreateForm(TFMainMenu, FMainMenu);
  Application.CreateForm(TFProductos, FProductos);
  Application.Run;

end.
