program Inventario_Cnt;

{%TogetherDiagram 'ModelSupport_Inventario_Cnt\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\DialogoVendidas\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Retiros_Caja\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Apertura_Caja\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Niveles\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\PrintShow\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\DialogoDeptos\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\DlgFechas\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\User_Login\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\CnfgForms\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\CtasCobrar\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Importar\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\ConfigForm\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Departamentos\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Venta_Caja\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Seleccionar_Departamento\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Distrbuir_Vencimiento\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\MainForm\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Status\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Usuarios\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Denominaciones_Monedas\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Criterio_Vencimientos\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Utilidades\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\ErrorHandle\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Salidas_Inventario\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\frmProveedores\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\dotmatrx\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Bancos\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Facturacion\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\DetalledePagos\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Reports_Forms\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Compra_Productos\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\SrchDlg\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Establecer_Precios_Ventas\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Cuadre_Caja\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Existencia_Productos\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Proveedores\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\frmClientes\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Fabricantes\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Formas_Pago\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\DataModulo\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Reportar_Productos\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Seleccionar_Usuario\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\PagosFacturas\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Terminos\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Tipos_Productos\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Inventario_Cnt\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\PagosCompras\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Productos\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Componentes\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Criterio_Etiquetas\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Categorias\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Opciones\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\default.txvpck'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Niveles\default.txvpck'}
{%TogetherDiagram 'ModelSupport_Inventario_Cnt\Inventario_Cnt\default.txvpck'}

uses
  Forms,
  Registry,
  Windows,
  MainForm in 'MainForm.pas' {FMainMenu},
  DataModulo in 'DataModulo.pas' {Modulo: TDataModule},
  Utilidades in 'Utilidades.Pas',
  ErrorHandle in 'ErrorHandle.pas' {ReconcileErrorForm},
  Niveles in 'Niveles.pas' {FNiveles},
  Tipos_Productos in 'Tipos_Productos.pas' {FTipos_Productos},
  SrchDlg in 'SrchDlg.pas' {DlgSearch},
  Venta_Caja in 'Venta_Caja.pas' {FVentas_Caja},
  Status in 'Status.pas' {FStatus},
  Proveedores in 'Proveedores.pas' {FProveedores},
  Departamentos in 'Departamentos.pas' {FDepartamentos},
  Terminos in 'Terminos.pas' {FTerminos},
  Bancos in 'Bancos.pas' {FBancos},
  Usuarios in 'Usuarios.pas' {FUsuarios},
  Distrbuir_Vencimiento in 'Distrbuir_Vencimiento.pas' {FVencimientos},
  Productos in 'Productos.pas' {FProductos},
  CnfgForms in 'CnfgForms.pas' {FConfigForms},
  frmClientes in 'frmClientes.pas' {FrameClientes: TFrame},
  DotmatrX in 'DotmatrX.pas' {PreviewForm},
  Salidas_Inventario in 'Salidas_Inventario.pas' {FSalidas_Inventario},
  frmProveedores in 'frmProveedores.pas' {FrameProveedores: TFrame},
  Reports_Forms in 'Reports_Forms.pas' {ReportsAndForms: TDataModule},
  Formas_Pago in 'Formas_Pago.pas' {FMetodos},
  Apertura_Caja in 'Apertura_Caja.pas' {FApertura_Caja},
  DetalledePagos in 'DetalledePagos.pas' {FDetallePagos},
  Fabricantes in 'Fabricantes.pas' {FFabricantes},
  DialogoVendidas in 'DialogoVendidas.pas' {FCriterioRepVendida},
  Criterio_Etiquetas in 'Criterio_Etiquetas.pas' {FCriterio_Etiquetas},
  Criterio_Vencimientos in 'Criterio_Vencimientos.pas' {FCriterio_Vencimientos},
  PrintShow in 'PrintShow.pas' {FPrintShow},
  DlgFechas in 'DlgFechas.pas' {DlgFecha},
  Denominaciones_Monedas in 'Denominaciones_Monedas.pas' {FDenominaciones},
  Facturacion in 'Facturacion.pas' {FFacturacion},
  Seleccionar_Usuario in 'Seleccionar_Usuario.pas' {FSeleccion_Usuarios},
  Seleccionar_Departamento in 'Seleccionar_Departamento.pas' {FSeleccion_Departamentos},
  Reportar_Productos in 'Reportar_Productos.pas' {FSeleccion_Productos},
  ConfigForm in 'ConfigForm.pas' {FMainConfig},
  Opciones in 'Opciones.pas' {FOpciones},
  User_Login in 'User_Login.pas' {FUser_Login},
  Retiros_Caja in 'Retiros_Caja.pas' {FRetiros_Caja},
  Componentes in 'Componentes.pas' {FComponentes},
  PagosCompras in 'PagosCompras.pas' {FPago_Compra},
  Cuadre_Caja in 'Cuadre_Caja.pas' {FCuadre_Caja},
  Categorias in 'Categorias.pas' {FCategorias},
  NotasCredito in 'NotasCredito.pas' {FNotas_Credito},
  DialogoDeptos in 'DialogoDeptos.pas' {FCriterioRepProductos},
  Compra_Productos in 'Compra_Productos.pas' {FCompra_Productos},
  Existencia_Productos in 'Existencia_Productos.pas' {FExistencia_Inicial},
  PagosFacturas in 'PagosFacturas.pas' {FPago_Factura},
  Importar in 'Importar.pas' {FImportar},
  Establecer_Precios_Ventas in 'Establecer_Precios_Ventas.pas' {FPrecios_Venta},
  CtasCobrar in 'CtasCobrar.pas' {FCtasCobrar},
  Aplicar_Pago in 'Aplicar_Pago.pas' {FAplicar_Monto};

{$R *.res}

begin
  {Inicia la Aplicacion}
  Application.Initialize;

  {Inicia El Registro}
  RegInfo := TRegistry.Create;
  RegInfo.RootKey := HKEY_LOCAL_MACHINE;

  {Carga el Sistema}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_SystemInforMationKey,False);

  Application.Title := 'Sistema de Inventario & Facturación - RMS (r)';
  Application.HelpFile := 'C:\Development\IBProjects\3t-Inventory And Sales\Help\I_and_S.hlp';
  Application.CreateForm(TModulo, Modulo);
  Application.CreateForm(TFMainMenu, FMainMenu);
  Application.CreateForm(TReportsAndForms, ReportsAndForms);
  Application.Run;

end.
