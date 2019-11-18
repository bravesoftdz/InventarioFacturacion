program Inventario_Cnt;

uses
  Forms,
  Registry,
  Windows,
  MainForm in 'MainForm.pas' {FMainMenu},
  DataModulo in 'DataModulo.pas' {Modulo: TDataModule},
  Utilidades in 'Utilidades.Pas',
  ErrorHandle in 'ErrorHandle.pas' {ReconcileErrorForm},
  ConfigForm in 'ConfigForm.pas' {FMainConfig},
  Tipos_Productos in 'Tipos_Productos.pas' {FTipos_Productos},
  SrchDlg in 'SrchDlg.pas' {DlgSearch},
  Facturacion in 'Facturacion.pas' {FFacturacion},
  Status in 'Status.pas' {FStatus},
  Proveedores in 'Proveedores.pas' {FProveedores},
  Departamentos in 'Departamentos.pas' {FDepartamentos},
  Terminos in 'Terminos.pas' {FTerminos},
  Bancos in 'Bancos.pas' {FBancos},
  Categorias in 'Categorias.pas' {FCategorias},
  Distrbuir_Vencimiento in 'Distrbuir_Vencimiento.pas' {FVencimientos},
  Productos in 'Productos.pas' {FProductos},
  CnfgForms in 'CnfgForms.pas' {FConfigForms},
  frmClientes in 'frmClientes.pas' {FrameClientes: TFrame},
  dotmatrx in 'DotmatrX.pas' {PreviewForm},
  Salidas_Inventario in 'Salidas_Inventario.pas' {FSalidas_Inventario},
  frmProveedores in 'frmProveedores.pas' {FrameProveedores: TFrame},
  Reports_Forms in 'Reports_Forms.pas' {ReportsAndForms: TDataModule},
  Compra_Productos in 'Compra_Productos.pas' {FCompra_Productos},
  Formas_Pago in 'Formas_Pago.pas' {FMetodos},
  PagosFacturas in 'PagosFacturas.pas' {FPago_Factura},
  DetalledePagos in 'DetalledePagos.pas' {FDetallePagos},
  Fabricantes in 'Fabricantes.pas' {FFabricantes},
  DialogoDeptos in 'DialogoDeptos.pas' {FCriterioRepProductos},
  Criterio_Etiquetas in 'Criterio_Etiquetas.pas' {FCriterio_Etiquetas},
  Criterio_Vencimientos in 'Criterio_Vencimientos.pas' {FCriterio_Vencimientos},
  PrintShow in 'PrintShow.pas' {FPrintShow},
  DlgFechas in 'DlgFechas.pas' {DlgFecha};

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
