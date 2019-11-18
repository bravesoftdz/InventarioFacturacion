unit MainFormLite;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ActnList, XPStyleActnCtrls, ActnMan,
  ToolWin, ActnCtrls, StdStyleActnCtrls, ActnMenus, ExtCtrls, StdCtrls,
  Grids, jpeg, AdvPageControl, DbClient,
  ComCtrls, TeEngine, Series, TeeProcs, Chart, DbChart, RegKeys, DateUtils,
  SUIForm, SuiThemes, WinSkinData, ExtDlgs, dxGDIPlusClasses, AdvShapeButton,
  AdvToolBar, AdvGlowButton, AdvOfficeHint, AdvPreviewMenu,
  AdvPreviewMenuStylers, AdvMenus, AdvMenuStylers, AdvToolBarStylers,
  COMOBJ, OleCtnrs, Activex,Riss_Devices_TLB, Wwdbigrd, Wwdbgrid, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxPC;

type
  TFMainMenuLite = class(TForm)
    Opciones: TActionManager;
    Salir: TAction;
    Configuracion_Inventario: TAction;
    Registro_Productos: TAction;
    Departamentos: TAction;
    Principal: TActionMainMenuBar;
    Categorias: TAction;
    Tipos_Productos: TAction;
    Status: TAction;
    Fabricantes: TAction;
    Proveedores: TAction;
    Clientes: TAction;
    Compras: TAction;
    Facturacion: TAction;
    Cuentas_Cobrar: TAction;
    Cuentas_Pagar: TAction;
    Devoluciones_Compras: TAction;
    Devoluciones_Ventas: TAction;
    Notas_Debito_Clientes: TAction;
    Notas_Credito_Clientes: TAction;
    Salida_Inventario: TAction;
    Rep_Clientes: TAction;
    Rep_Proveedores: TAction;
    Rep_Fabricantes: TAction;
    Rep_Ventas: TAction;
    Rep_Cuadre_Caja: TAction;
    Rep_Flujo_Efectivo: TAction;
    Terminos_Facturacion: TAction;
    Formas_Pago: TAction;
    Bancos: TAction;
    Rep_Prod_Clasificados_Fabricante: TAction;
    Rep_Prod_Clasificados_Proveedor: TAction;
    Rep_Prod_General: TAction;
    Rep_Prod_Clasificados_Categoria: TAction;
    Rep_Prod_Clasificados_Tipo_Productos: TAction;
    Rep_Prod_Clasificados_Tipo_Inventario: TAction;
    Rep_Prod_Vencimientos: TAction;
    Rep_Impresion_Etiquetas: TAction;
    Rep_Prod_EnMinimo: TAction;
    Rep_Prod_Agotados: TAction;
    Rep_Prod_Clasificados_Status: TAction;
    Ventas_Caja: TAction;
    Rep_Prod_Mercancia_Vendida: TAction;
    Opciones_Sistemas: TAction;
    Niveles_Acceso: TAction;
    Actualizacion_Usuarios: TAction;
    Registro_Denominaciones: TAction;
    Retiros_Caja: TAction;
    Facturas_Pendiente_Pago: TAction;
    Impuestos_Pagados_Compra: TAction;
    Impuestos_Cobrados_Ventas: TAction;
    Historial_Compras: TAction;
    Mercancia_Comprada: TAction;
    Card: TImage;
    Label1: TLabel;
    Importar_Datos: TAction;
    Orden_Compra: TAction;
    Empleados: TAction;
    Configuracion_Contabilidad: TAction;
    Configuracion_Nomina: TAction;
    Facturas_Tipo_NCF: TAction;
    Notas_Debito_Proveedores: TAction;
    Notas_Credito_Proveedores: TAction;
    Paises_Ciudades_Sectores_Zonas: TAction;
    Balancear_Facturas: TAction;
    Pagos_Fecha: TAction;
    SkinOpen: TOpenPictureDialog;
    Skin_Change: TAction;
    Main_Skin: TSkinData;
    RMS: TImage;
    Cancelar_Facturas: TAction;
    Registrar_Seriales_Compras: TAction;
    Registrar_Seriales_Facturados: TAction;
    Definir_Almacen: TAction;
    Informe_Salida_Inventario: TAction;
    Mercancia_Despachada: TAction;
    Mercancia_Vendida_Cliente: TAction;
    Mercancia_Despachada_Cliente: TAction;
    Ajuste_Inventario: TAction;
    Config_Terminales: TAction;
    Apertura_Caja: TAction;
    Notificaciones: TStatusBar;
    Ajuste_Balance_Clientes: TAction;
    Cotizaciones: TAction;
    Catalogo_Foto: TAction;
    Registro_Gastos: TAction;
    Listado_Gastos: TAction;
    Listado_Trabajos_Fecha_Entrega: TAction;
    Acuerdos_Trabajo: TAction;
    Reporte_Acuerdos_Trabajo: TAction;
    Informe_Ventas_TipoMoneda: TAction;
    Resumen_Operaciones: TAction;
    Main_Pager_Styler: TAdvToolBarOfficeStyler;
    Main_App_Menu: TAdvPreviewMenu;
    mn_Consultas_Clientes: TAdvPopupMenu;
    AfiliacionesClasificadasporCliente1: TMenuItem;
    ContratacionesCompletadas1: TMenuItem;
    ContratacionesIncompletas1: TMenuItem;
    EstadodeCuentadeClientes1: TMenuItem;
    ListadodeClientes1: TMenuItem;
    PopupMenu_Styler: TAdvMenuOfficeStyler;
    Main_App_Menu_Styler: TAdvPreviewMenuOfficeStyler;
    Show_Office_Hints: TAdvOfficeHint;
    mn_Consultas_Productos: TAdvPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    ReportedeOrdenesdeCompraxEstatus1: TMenuItem;
    mn_Consultas_Administrativas: TAdvPopupMenu;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    Proyecciones1: TMenuItem;
    MainMenuPager: TAdvToolBarPager;
    pg_Registro: TAdvPage;
    tb_Registro_Contigo: TAdvToolBar;
    bt_Panes: TAdvGlowButton;
    bt_Suplidores: TAdvGlowButton;
    bt_Clientes: TAdvGlowButton;
    pg_Operaciones: TAdvPage;
    tb_Ctas_Cobrar: TAdvToolBar;
    AdvGlowButton9: TAdvGlowButton;
    AdvGlowButton10: TAdvGlowButton;
    tb_Ctas_Pagar: TAdvToolBar;
    AdvGlowButton12: TAdvGlowButton;
    pg_Reportes: TAdvPage;
    tb_Registro_Libro_Banco: TAdvToolBar;
    bt_Actualizacion_Cuentas_Bancarias: TAdvGlowButton;
    bt_Bancos: TAdvGlowButton;
    tb_Operaciones_Libro_Banco: TAdvToolBar;
    bt_Depositos_Cuentas: TAdvGlowButton;
    bt_Retiros_Efectivo_Cuentas: TAdvGlowButton;
    bt_Emision_Cheques: TAdvGlowButton;
    pg_Herramientas_Configuracion: TAdvPage;
    pg_Herramientas_Parametros: TAdvToolBar;
    bt_Parametros_Contigo: TAdvGlowButton;
    bt_Terminales: TAdvGlowButton;
    pg_Herramientas_Sistema: TAdvToolBar;
    bt_Configuracion_Conexion: TAdvGlowButton;
    AdvToolBar3: TAdvToolBar;
    bt_Consulta_Padron: TAdvGlowButton;
    bt_Editar_Documentos: TAdvGlowButton;
    AdvQuickAccessToolBar1: TAdvQuickAccessToolBar;
    AdvShapeButton1: TAdvShapeButton;
    mn_Informe_Ventas: TAdvPopupMenu;
    mn_Reporte_General_Contratos: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    mn_Consultas_Pagos: TAdvPopupMenu;
    MenuItem6: TMenuItem;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton8: TAdvGlowButton;
    AdvGlowButton13: TAdvGlowButton;
    AdvGlowButton14: TAdvGlowButton;
    AdvGlowButton15: TAdvGlowButton;
    AdvGlowButton16: TAdvGlowButton;
    AdvGlowButton17: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    Inscripciones: TAction;
    AdvGlowButton5: TAdvGlowButton;
    AdvToolBar4: TAdvToolBar;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton7: TAdvGlowButton;
    AdvGlowButton11: TAdvGlowButton;
    tb_Reportes_Consultas_Contigo: TAdvToolBar;
    AdvGlowButton19: TAdvGlowButton;
    AdvGlowButton20: TAdvGlowButton;
    AdvGlowButton21: TAdvGlowButton;
    ClasificadosporTipodeInventario1: TMenuItem;
    ClasificadosporTipodeProductos1: TMenuItem;
    Agotados1: TMenuItem;
    EnMnimo1: TMenuItem;
    SalidadeInventario1: TMenuItem;
    CatalogodeproductosconFoto1: TMenuItem;
    Rep_Pagos: TAction;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    Reporte_Pagos_Cliente: TAction;
    ReportePagosxCliente1: TMenuItem;
    Reporte_Inscripciones: TAction;
    N1: TMenuItem;
    ReportedeInscripciones1: TMenuItem;
    Cambio_Usuario: TAction;
    lblReloj: TLabel;
    RelojTimer: TTimer;
    pcAsistencia: TcxPageControl;
    pclstAsistencia: TcxTabSheet;
    grdAsistencia: TcxGrid;
    grdAsistenciaDBTableView: TcxGridDBTableView;
    grdAsistenciaLevel: TcxGridLevel;
    AdvGlowButton18: TAdvGlowButton;
    Conectar_Reloj: TAction;
    grdAsistenciaDBTableViewFecha: TcxGridDBColumn;
    grdAsistenciaDBTableViewNumero: TcxGridDBColumn;
    grdAsistenciaDBTableViewDN: TcxGridDBColumn;
    grdAsistenciaDBTableViewUsuario: TcxGridDBColumn;
    grdAsistenciaDBTableViewRegistro: TcxGridDBColumn;
    grdAsistenciaDBTableViewAccion: TcxGridDBColumn;
    grdAsistenciaDBTableViewRegistrado: TcxGridDBColumn;
    grdAsistenciaDBTableViewCliente: TcxGridDBColumn;
    grdAsistenciaDBTableViewNombre_Cliente: TcxGridDBColumn;
    grdAsistenciaDBTableViewAtraso: TcxGridDBColumn;
    grdAsistenciaDBTableViewStatusBalance: TcxGridDBColumn;
    grdAsistenciaDBTableViewStatus: TcxGridDBColumn;
    Detener_Reloj: TAction;
    Verificacion_Cliente_Manual: TAction;
    AdvGlowButton22: TAdvGlowButton;
    AdvGlowButton23: TAdvGlowButton;
    procedure Ajuste_InventarioExecute(Sender: TObject);
    procedure Mercancia_Despachada_ClienteExecute(Sender: TObject);
    procedure Mercancia_Vendida_ClienteExecute(Sender: TObject);
    procedure Mercancia_DespachadaExecute(Sender: TObject);
    procedure Informe_Salida_InventarioExecute(Sender: TObject);
    procedure Registrar_Seriales_FacturadosExecute(Sender: TObject);
    procedure Registrar_Seriales_ComprasExecute(Sender: TObject);
    procedure Cancelar_FacturasExecute(Sender: TObject);
    procedure Facturas_Pendiente_PagoExecute(Sender: TObject);
    procedure Facturas_Tipo_NCFExecute(Sender: TObject);
    procedure Informacion_LaboralExecute(Sender: TObject);
    procedure Directorio_EmpleadosExecute(Sender: TObject);
    procedure Configuracion_NominaExecute(Sender: TObject);
    procedure Reporte_Entradas_DiarioExecute(Sender: TObject);
    procedure Libro_MayorExecute(Sender: TObject);
    procedure Balanza_ComprobacionExecute(Sender: TObject);
    procedure Estado_Ingresos_GastosExecute(Sender: TObject);
    procedure Estado_SituacionExecute(Sender: TObject);
    procedure Catalogo_CuentasExecute(Sender: TObject);
    procedure Configuracion_ContabilidadExecute(Sender: TObject);
    procedure VendedoresExecute(Sender: TObject);
    procedure Orden_CompraExecute(Sender: TObject);
    procedure ClientesExecute(Sender: TObject);
    procedure Notas_Credito_ClientesExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Configuracion_InventarioExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure Registro_ProductosExecute(Sender: TObject);
    procedure DepartamentosExecute(Sender: TObject);
    procedure CategoriasExecute(Sender: TObject);
    procedure Tipos_ProductosExecute(Sender: TObject);
    procedure StatusExecute(Sender: TObject);
    procedure FabricantesExecute(Sender: TObject);
    procedure ProveedoresExecute(Sender: TObject);
    procedure Terminos_FacturacionExecute(Sender: TObject);
    procedure Salida_InventarioExecute(Sender: TObject);
    procedure ComprasExecute(Sender: TObject);
    procedure Formas_PagoExecute(Sender: TObject);
    procedure FacturacionExecute(Sender: TObject);
    procedure BancosExecute(Sender: TObject);
    procedure Rep_Prod_Clasificados_FabricanteExecute(Sender: TObject);
    procedure Rep_Prod_Clasificados_ProveedorExecute(Sender: TObject);
    procedure Action8Execute(Sender: TObject);
    procedure Rep_Prod_VencimientosExecute(Sender: TObject);
    procedure Rep_Impresion_EtiquetasExecute(Sender: TObject);
    procedure Rep_VentasExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Rep_Prod_GeneralExecute(Sender: TObject);
    procedure Ventas_CajaExecute(Sender: TObject);
    procedure Rep_Prod_Mercancia_VendidaExecute(Sender: TObject);
    procedure Opciones_SistemasExecute(Sender: TObject);
    procedure Niveles_AccesoExecute(Sender: TObject);
    procedure Actualizacion_UsuariosExecute(Sender: TObject);
    procedure Rep_Cuadre_CajaExecute(Sender: TObject);
    procedure Retiros_CajaExecute(Sender: TObject);
    procedure Cuentas_CobrarExecute(Sender: TObject);
    procedure Mercancia_CompradaExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Importar_DatosExecute(Sender: TObject);
    procedure ReagruparExecute(Sender: TObject);
    procedure Rep_Prod_Clasificados_CategoriaExecute(Sender: TObject);
    procedure Paises_Ciudades_Sectores_ZonasExecute(Sender: TObject);
    procedure Balancear_FacturasExecute(Sender: TObject);
    procedure Rep_ClientesExecute(Sender: TObject);
    procedure Pagos_FechaExecute(Sender: TObject);
    procedure Skin_ChangeExecute(Sender: TObject);
    procedure Notas_Debito_ClientesExecute(Sender: TObject);
    procedure Config_TerminalesExecute(Sender: TObject);
    procedure Apertura_CajaExecute(Sender: TObject);
    procedure Ajuste_Balance_ClientesExecute(Sender: TObject);
    procedure CotizacionesExecute(Sender: TObject);
    procedure Catalogo_FotoExecute(Sender: TObject);
    procedure Listado_GastosExecute(Sender: TObject);
    procedure Listado_Trabajos_Fecha_EntregaExecute(Sender: TObject);
    procedure login(Sender: TObject);
    procedure Reporte_Acuerdos_TrabajoExecute(Sender: TObject);
    procedure Informe_Ventas_TipoMonedaExecute(Sender: TObject);
    procedure Resumen_OperacionesExecute(Sender: TObject);
    procedure NotificacionesMouseEnter(Sender: TObject);
    procedure PrincipalMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormClick(Sender: TObject);
    procedure InscripcionesExecute(Sender: TObject);
    procedure Reporte_Pagos_ClienteExecute(Sender: TObject);
    procedure Reporte_InscripcionesExecute(Sender: TObject);
    procedure RelojTimerTimer(Sender: TObject);
    procedure Conectar_RelojExecute(Sender: TObject);
    procedure grdAsistenciaDBTableViewStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure Detener_RelojExecute(Sender: TObject);
    procedure Verificacion_Cliente_ManualExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ValidarApertura(Const Terminal, Usuario  : String; Var Actual,ActUsuario : String) : Byte;
    Procedure CloseAllDbs;
    procedure ConectarReloj;
  end;

var
  FMainMenuLite: TFMainMenuLite;
  gIDevice: IDevice;
  gDeviceConnection: TZd2911DeviceConnection;
  gDeviceTools: TZd2911Tools;

implementation

uses Utilidades, ConfigForm, Productos, Departamentos, Categorias,
  Tipos_Productos, Status, Fabricantes, Proveedores, Terminos, DataModulo,
  Salidas_Inventario, Compra_Productos, Formas_Pago, Facturacion, Bancos,
  Reports_Forms, DialogoDeptos, Criterio_Vencimientos, Criterio_Etiquetas,
  DlgFechas, Venta_Caja, Seleccionar_Usuario, Reportar_Productos,
  Seleccionar_Departamento, Opciones, Niveles, User_Login, Usuarios,
  Cuadre_Caja, Apertura_Caja, Retiros_Caja,
  CtasCobrar, DialogoVendidas, Importar, NotasCredito, clientes, Generales,
  Orden_Compra_Productos, Vendedores, AccountConfigForm, 
  DataModuloContabilidad, Acc_Forms, DialogoMayor, PayRollConfigForm,
  TimerMessage, DataNomina, ESBDates, 
  PayRollForms, DialogoDepartamento,
  Criterio_Rep_Facturas, Criterio_Rep_Facturas_NCF, SkinGraphic,
  NotasDebito, CancelarCtasCobrar, Compras_Seriales, Seriales_Productos,
  Facturas_Seriales, Seriales_Productos_Facturados, Ajuste_Inventario,
  Autorizar, Terminales, Balance_Clientes, Cotizaciones, 
  ResumeOperaciones, Registry, Inscripciones,
  Paises_Ciudades_Sectores_ZonasUnit;

{$R *.dfm}

procedure TFMainMenuLite.CloseAllDbs;
  Begin
    CloseDbs(Modulo);
    CloseDbs(ModuloGenerales);
    CloseDbs (ModuloContabilidad);
    {Abrir la Tabla de Parametros}
    Modulo.TParametros.Params.ParamByName('Terminal').AsString := _CurrentTerminal;
    Modulo.TParametros.Open;
  End;

procedure TFMainMenuLite.FormCreate(Sender: TObject);
  Var
    I : Integer;
begin
  If _Load_Create Then
    Begin
      Caption := Application.Title;
      {Informacion  General}
      RegInfo.CloseKey;
      RegInfo.OpenKey(_CompanyInfoKey,False);


    {      If RegInfo.ReadBool(_BackgroundAlign) then
        BackGroundImage.Align := AlClient
      Else
        BackGroundImage.Align := alRight;}

{      BackGroundImage.Width := RegInfo.ReadInteger(_BackgroundWidth);
      BackGroundImage.Picture.LoadFromFile(UnEncrypt(RegInfo.ReadString(_UserBackground)));}
      MainMenuPager.ActivePage := pg_Operaciones;
      Card.Width := RegInfo.ReadInteger(_BackgroundWidth);
      Card.Picture.LoadFromFile(UnEncrypt(RegInfo.ReadString(_UserCard)));
      Card.Visible := RegInfo.ReadBool(_LogoVisible);
      Card.Left := (Screen.Width - Card.Width) Div 2;
      Card.Height := RegInfo.ReadInteger(_BackgroundHeight);
      Card.Top := RegInfo.ReadInteger(_BackgroundPosY);
      Principal.Visible := RegInfo.ReadBool(_ShowMainMenu);
      grdAsistenciaDBTableView.DataController.DataSource := Modulo.dClockLog;
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

      RegInfo.CloseKey;
      RegInfo.OpenKey(_GeneralConfigKey,False);
      Main_Skin.SkinFile:= RegInfo.ReadString(_MainSkin);

      Modulo.ColorConfig.Color := Color - 5;
      Main_Skin.Colors[csButtonFace] := Color;

//      OpcionesBotones.ColorMap := Modulo.ColorConfig;
      Principal.ColorMap := Modulo.ColorConfig;

    //  Linea.Width := Screen.Width;
      WindowState := wsMaximized;

      Login(Self);

//      Opciones_Pantalla.Top := (Screen.Height - Opciones_Pantalla.Height) - 100;
      Modulo.NotiticationSet(Notificaciones);



      {Asigna a los Botones Los ShortCuts Del Menu y Action Lists}
      For I := 0 To (Self.ComponentCount - 1) Do
        Begin
          If (Self.Components[I] Is TAdvPageControl) Then
//             (Self.Components[I] As TAdvPageControl).TabBackGroundColor := SuiMainMenu.Color;
        End;
    End;

    ConectarReloj;
end;

procedure TFMainMenuLite.grdAsistenciaDBTableViewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if (ARecord is TcxGridDataRow) and not ARecord.Selected and
    (ARecord.Values[grdAsistenciaDBTableViewStatusBalance.Index] = 'ATRASO') then
    AStyle := ModuloGenerales.styRed;
  if (ARecord is TcxGridDataRow) and not ARecord.Selected and
    (ARecord.Values[grdAsistenciaDBTableViewStatusBalance.Index] = 'N/A') then
    AStyle := ModuloGenerales.styBlack;
end;

procedure TFMainMenuLite.Configuracion_InventarioExecute(Sender: TObject);
begin
  OpenForm(TFMainConfig,FMainConfig);
  RegInfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,False);
  Try
    Main_Skin.SkinFile:= RegInfo.ReadString(_MainSkin);
    Main_Skin.Colors[csButtonFace] := Color;

    RegInfo.CloseKey;
    RegInfo.OpenKey(_CompanyInfoKey,False);
    Card.Picture.LoadFromFile(UnEncrypt(RegInfo.ReadString(_UserCard)));
    Card.Visible := RegInfo.ReadBool(_LogoVisible);
    Card.Width := RegInfo.ReadInteger(_BackgroundWidth);
    Card.Height := RegInfo.ReadInteger(_BackgroundHeight);
    Card.Left := (Screen.Width - Card.Width) Div 2;
    Card.Top := RegInfo.ReadInteger(_BackgroundPosY);
  Finally

  End;
end;

procedure TFMainMenuLite.Configuracion_NominaExecute(Sender: TObject);
begin
  OpenForm(TFPayrollConfig,FPayrollConfig)
end;

procedure TFMainMenuLite.Config_TerminalesExecute(Sender: TObject);
begin
  OpenForm(TFTerminales,FTerminales)
end;

procedure TFMainMenuLite.CotizacionesExecute(Sender: TObject);
begin
  OpenForm(tFCotizaciones,FCotizaciones);
  CloseAllDbs
end;

procedure TFMainMenuLite.ConectarReloj;
begin
    {Datos del rejoj}
      RegInfo.CloseKey;
      RegInfo.OpenKey(_Reloj_Key,False);
      Try
        Case RegInfo.ReadInteger(_rlj_Conexion) of
          0 : _rlj_CommType := CommunicationType_Usb;
          1 : _rlj_CommType := CommunicationType_Serial;
          2 : _rlj_CommType := CommunicationType_Tcp;
        End;

        _rlj_DN := RegInfo.ReadInteger(_rlj_ID);
        _rlj_Password := RegInfo.ReadString(_rlj_Key);
        _rlj_SerialPortValue := RegInfo.ReadInteger(_rlj_SerialPort);
        _rlj_Baudrate := StrToInt(RegInfo.ReadString(_rlj_bRate));
        _rlj_IpAddress := RegInfo.ReadString(_rlj_IP);
        _rlj_IpPortValue := StrToInt(RegInfo.ReadString(_rlj_IPPort));
        _rlj_ReadTimer := RegInfo.ReadInteger(_rlj_Timer);

        gIDevice := CoDevice.Create();
        gDeviceConnection := TZd2911DeviceConnection.Create(Self);
        gDeviceTools := TZd2911Tools.Create(Self);

        RelojTimer.Enabled := False;

        Modulo.SetDeviceInfo(gIDevice);
        lblReloj.Caption := 'Reloj Conectado en : ' ;
        Case RegInfo.ReadInteger(_rlj_Conexion) of
          0 : lblReloj.Caption := lblReloj.Caption + 'USB';
          1 : lblReloj.Caption := lblReloj.Caption + 'SERIAL';
          2 : lblReloj.Caption := lblReloj.Caption + 'TCP/IP ' + _rlj_IpAddress;
        End;

        if gDeviceConnection.Open(gIDevice) <= 0 then
        begin
          lblReloj.Caption :=  'Falla en conexión al reloj';
          pcAsistencia.Visible := False;
          Exit;
        end;

        pcAsistencia.Visible := True;
        RelojTimer.Interval := _rlj_ReadTimer;
        RelojTimer.Enabled := True;
      Except

      End;
end;

procedure TFMainMenuLite.Conectar_RelojExecute(Sender: TObject);
begin
  ConectarReloj;
end;

procedure TFMainMenuLite.Configuracion_ContabilidadExecute(Sender: TObject);
begin
  OpenForm(TFAccountConfig,FAccountConfig)
end;

procedure TFMainMenuLite.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFMainMenuLite.Skin_ChangeExecute(Sender: TObject);
begin
  SkinOpen.InitialDir:=GetCurrentDir();
  SkinOpen.Filter:= 'Skin files (*.skn)|*.skn';
  If SkinOpen.Execute Then
    Main_Skin.SkinFile:= SkinOpen.FileName;
end;

procedure TFMainMenuLite.Registro_ProductosExecute(Sender: TObject);
begin
  OpenForm(TFProductos,FProductos);
  CloseAllDbs
end;

procedure TFMainMenuLite.RelojTimerTimer(Sender: TObject);
begin
  Modulo.ReadNewLog(gIDevice,gDeviceTools,gDeviceConnection,Date,Date);
  Modulo.tClockLog.Filter := 'Fecha = ' + QuotedStr(Modulo.Enlace.AppServer.ServerDate);
  Modulo.tClockLog.Filtered := True;
  If pcAsistencia.Visible Then Modulo.tClockLog.Open;
end;

procedure TFMainMenuLite.DepartamentosExecute(Sender: TObject);
begin
  OpenForm(TFDepartamentos,FDepartamentos);
  CloseAllDbs
end;

procedure TFMainMenuLite.Detener_RelojExecute(Sender: TObject);
begin
  RelojTimer.Enabled := False;
end;

procedure TFMainMenuLite.Estado_Ingresos_GastosExecute(Sender: TObject);
begin
  Try
    Application.CreateForm(TDlgFecha,DlgFecha);
    DlgFecha.ShowModal;
    If DlgFecha.ModalResult = MrOk Then
      Begin
        ModuloContabilidad.tEstado_Ingresos_Gastos.Params.ParamByName('Fecha_Inicio').AsDate := DlgFecha.Inicio.Date;
        ModuloContabilidad.tEstado_Ingresos_Gastos.Params.ParamByName('Fecha_Fin').AsDate := DlgFecha.Fin.Date;

        AccountingForms.Fecha_Ingresos.Caption := Format('del %s al %s',[DateToStr(DlgFecha.Inicio.Date), DateToStr(DlgFecha.Fin.Date)]);

        ModuloContabilidad.tEstado_Ingresos_Gastos.Open;

        If (ModuloContabilidad.tEstado_Ingresos_Gastos.RecordCount > 0) Then
          AccountingForms.Estado_Ingresos_Gastos.Print
        Else Mensaje (_NoPrintData,self);
      End
  Finally
    CloseAllDbs;
    DlgFecha.Free;
  End;
end;

procedure TFMainMenuLite.Estado_SituacionExecute(Sender: TObject);
  Var
    Utilidad       ,
    Total_Ingresos ,
    Total_Gastos   : Currency;
begin
  Try
    Application.CreateForm(TDlgFecha,DlgFecha);
    DlgFecha.ShowModal;
    If DlgFecha.ModalResult = MrOk Then
      Begin
        ModuloContabilidad.tEstado_Situacion.Params.ParamByName('Fecha_Inicio').AsDate := DlgFecha.Inicio.Date;
        ModuloContabilidad.tEstado_Situacion.Params.ParamByName('Fecha_Fin').AsDate := DlgFecha.Fin.Date;

        ModuloContabilidad.tIngresos.Params.ParamByName('Fecha_Inicio').AsDate := DlgFecha.Inicio.Date;
        ModuloContabilidad.tIngresos.Params.ParamByName('Fecha_Fin').AsDate := DlgFecha.Fin.Date;

        ModuloContabilidad.tGastos.Params.ParamByName('Fecha_Inicio').AsDate := DlgFecha.Inicio.Date;
        ModuloContabilidad.tGastos.Params.ParamByName('Fecha_Fin').AsDate := DlgFecha.Fin.Date;

        AccountingForms.Fecha_Situacion.Caption := Format('al %s',[DateToStr(DlgFecha.Fin.Date)]);

        ModuloContabilidad.tIngresos.Open;
        ModuloContabilidad.tGastos.Open;
        ModuloContabilidad.tEstado_Situacion.Open;

        Total_Ingresos := ModuloContabilidad.tIngresosTotal_Creditos.Value - ModuloContabilidad.tIngresosTotal_Debitos.Value;
        Total_Gastos := ModuloContabilidad.tGastosTotal_Debitos.Value - ModuloContabilidad.tGastosTotal_Creditos.Value;
        Utilidad := Total_Ingresos - Total_Gastos;

        If Utilidad <> 0 Then
          Begin
            ModuloContabilidad.tEstado_Situacion.Append;
            ModuloContabilidad.tEstado_SituacionControl.Value := _Current_Gains_Acc;
            ModuloContabilidad.tEstado_SituacionPrincipal.Value := _Current_Capital_Acc;
            ModuloContabilidad.tEstado_SituacionOrigen.Value := 'Capital';
            ModuloContabilidad.tEstado_SituacionTotal_Creditos.Value := Utilidad;
            ModuloContabilidad.tEstado_Situacion.Post
          End;

        If (ModuloContabilidad.tEstado_Situacion.RecordCount > 0) Then
          AccountingForms.Estado_Situacion.Print
        Else Mensaje (_NoPrintData,self);
      End
  Finally
    DlgFecha.Free;
    CloseAllDbs;
  End;
end;

procedure TFMainMenuLite.Cancelar_FacturasExecute(Sender: TObject);
begin
  OpenForm(TFCancel_Ctas_Cobrar,FCancel_Ctas_Cobrar);
end;

procedure TFMainMenuLite.Catalogo_CuentasExecute(Sender: TObject);
begin
  ModuloContabilidad.tListado_Cuentas.Open;
  If ModuloContabilidad.tListado_Cuentas.RecordCount > 0  Then
    AccountingForms.ReporteCatalogo_Cuentas.Print
  Else
    Mensaje(_NoPrintData,self);
  ModuloContabilidad.tListado_Cuentas.Close
end;

procedure TFMainMenuLite.Catalogo_FotoExecute(Sender: TObject);
begin
  Try
    Modulo.tCategoria.Open;
    Application.CreateForm(TFCriterioRepProductos,FCriterioRepProductos);
    FCriterioRepProductos.Elemento.LookupTable := Modulo.tCategoria;
    FCriterioRepProductos.CaptionElemento := 'Categorias';
    FCriterioRepProductos.CampoElemento := Modulo.tProductosCategoria.FieldName;
    FCriterioRepProductos.Elemento.Selected.Add('Descripcion'#9'50'#9'Descripcion'#9'F');
    FCriterioRepProductos.ShowModal;
    If FCriterioRepProductos.ModalResult = MrOk Then
      Begin
         Modulo.tCategoria.Open;
         Modulo.tReporter.CommandText := Format(_SelectTodosProductos,[FCriterioRepProductos.CriterioDepartamento,
                                                                       FCriterioRepProductos.CriterioElemento,
                                                                       FCriterioRepProductos.CriterioStatus,
                                                                       FCriterioRepProductos.CriterioTipoProducto,
                                                                       DoubleQuoted(FCriterioRepProductos.CampoElemento),
                                                                       '']);
         Modulo.tReporter.Open;

         Case FCriterioRepProductos.ExistenciaCero.Checked Of
           True : Begin
                    Modulo.tReporter.Filter := 'Existencia <> 0';
                    Modulo.tReporter.Filtered := True;
                  End;

           False : Begin
                    Modulo.tReporter.Filter := '';
                    Modulo.tReporter.Filtered := False;
                  End;
         End; {Casse}

         If Modulo.tReporter.RecordCount > 0 Then
           ReportsAndForms.CatalogoProductos_Categoria.Print
         Else
           Mensaje(_NoPrintData,self)
      End {If}
  Finally
    FCriterioRepProductos.Free;
    Modulo.tReporter.Close;
    Modulo.tCategoria.Close
  End {Try}
end;

procedure TFMainMenuLite.CategoriasExecute(Sender: TObject);
begin
  OpenForm(TFCategorias,FCategorias);
  CloseAllDbs
end;

procedure TFMainMenuLite.ClientesExecute(Sender: TObject);
begin
  OpenForm(TFClientes,FClientes);
  CloseAllDbs
end;

procedure TFMainMenuLite.Tipos_ProductosExecute(Sender: TObject);
begin
  OpenForm(TFTipos_Productos,FTipos_Productos);
  CloseAllDbs
end;

procedure TFMainMenuLite.StatusExecute(Sender: TObject);
begin
  OpenForm(TFStatus,FStatus);
  CloseAllDbs
end;

procedure TFMainMenuLite.FabricantesExecute(Sender: TObject);
begin
  OpenForm(TFFabricantes,FFabricantes);
  CloseAllDbs
end;

procedure TFMainMenuLite.PrincipalMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
//  MainMenuPager.Caption.Caption := Format('H: %s - P: %s - M: %s',[IntToStr(Self.Height),IntToStr(Principal.Top), IntToStr(Y)]);
  If Y <= 1 Then Principal.Hide

end;

procedure TFMainMenuLite.ProveedoresExecute(Sender: TObject);
begin
  OpenForm(TFProveedores,FProveedores);
  CloseAllDbs
end;

procedure TFMainMenuLite.Terminos_FacturacionExecute(Sender: TObject);
begin
  OpenForm(TFTerminos,FTerminos);
  CloseAllDbs
end;

procedure TFMainMenuLite.Salida_InventarioExecute(Sender: TObject);
begin
  OpenForm(TFSalidas_Inventario,FSalidas_Inventario)
end;

procedure TFMainMenuLite.ComprasExecute(Sender: TObject);
begin
  OpenForm(TFCompra_Productos,FCompra_Productos)
end;

procedure TFMainMenuLite.Formas_PagoExecute(Sender: TObject);
begin
  OpenForm(TFMetodos,FMetodos);
  CloseAllDbs
end;

procedure TFMainMenuLite.FacturacionExecute(Sender: TObject);
begin
{  If Trim(_CurrentApertura) = '_NO_' Then
    Raise Exception.Create('No ha aperturado aun su caja'#13'Por Favor, Verifique');}
  OpenForm(TFFacturacion,FFacturacion);
  CloseAllDbs
end;

procedure TFMainMenuLite.Facturas_Pendiente_PagoExecute(Sender: TObject);
begin
  try
    Modulo.tReporter.CommandText := _SelectInvoicesUnPaid;

    ReportsAndForms.Clasificacion_Vt_Cliente.Caption := 'Reporte de Facturas Pendiente de Cobro';

    Modulo.tReporter.Filter := 'Condicion <> ' + QuotedStr('Inscripcion');
    Modulo.tReporter.Filtered := True;

    Modulo.tReporter.Open;
    Modulo.tDesgloceEfectivo.Open;
    Modulo.tListadoPagos.Open;

    ReportsAndForms.Pipe_Facturas.DataSource := Modulo.dReporter;

    If (Modulo.tReporter.RecordCount > 0) Or
      (Modulo.tListadoPagos.RecordCount > 0) Then ReportsAndForms.Reporte_Ventas_Cliente.Print
    Else Mensaje (_NoPrintData,self);
  finally
    Modulo.tReporter.Close;
    Modulo.tDesgloceEfectivo.Close;
    Modulo.tListadoPagos.Close;
    Modulo.tReporter.Filter := '';
    Modulo.tReporter.Filtered := False
  end;

end;

procedure TFMainMenuLite.Facturas_Tipo_NCFExecute(Sender: TObject);
begin
  Try
    Modulo.tComprobantes_Fiscales.Params.ParamByName('Aplicable').AsString := 'FT';
    Modulo.tComprobantes_Fiscales.Open;
    Application.CreateForm(TFCriterio_Rep_Facturas_NCF,FCriterio_Rep_Facturas_NCF);
    FCriterio_Rep_Facturas_NCF.ShowModal;
    If FCriterio_Rep_Facturas_NCF.ModalResult = MrOk Then
      Begin
        Case FCriterio_Rep_Facturas_NCF.Clasificacion.ItemIndex Of
          0 : Begin
                Modulo.tReporter.Filter := 'Condicion <> ' + QuotedStr('Inscripcion');
                Modulo.tReporter.Filtered := True;
                ReportsAndForms.RptPagos.Visible := True;
                ReportsAndForms.RptEfectivo.Visible := True
              end;

          1 : Begin
                Modulo.tReporter.Filter := 'Tipo_NCF = ' + Trim(Modulo.tComprobantes_FiscalesTipo.Value) + 'AND Condicion <> ' + QuotedStr('Inscripcion');;
                Modulo.tReporter.Filtered := True;
              end
        End;{Case}

        Application.CreateForm(TDlgFecha,DlgFecha);
        DlgFecha.ShowModal;
        If DlgFecha.ModalResult = MrOk Then
          Begin

            Modulo.tReporter.CommandText := _SelectInvoicesByNCFDate;
            Modulo.tReporter.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
            Modulo.tReporter.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;
            ReportsAndForms.ClasificacionNCF.Caption := Format('Reporte de Facturas del %s al %s',[DateToStr(DlgFecha.Inicio.Date),DateToStr(DlgFecha.Fin.Date)]);
            Modulo.tReporter.Open;

            ReportsAndForms.Pipe_Facturas.DataSource := Modulo.dReporter;
            If (Modulo.tReporter.RecordCount > 0) Then
              ReportsAndForms.ReporteNCF.Print
            Else Mensaje (_NoPrintData,self);
            Modulo.tReporter.Close
          End;
      End; {If FCriterio_Rep_Facturas.ModalResult = MrOk}
  Finally
    DlgFecha.Free;
    FCriterio_Rep_Facturas_NCF.Free;
    Modulo.tReporter.Filter := '';
    Modulo.tReporter.Filtered := False;
    Modulo.tComprobantes_Fiscales.Close
  end;
end;

procedure TFMainMenuLite.Balancear_FacturasExecute(Sender: TObject);
  Var
    Vence : TDate;
begin
  Modulo.tReporter.Close;
  Modulo.tReporter.CommandText := 'Select "Proceso" From "Facturas" Where "Pendiente" > 0';
  Modulo.tReporter.Open;
  Modulo.tReporter.First;
  Try
    Modulo.tFacturas.BeforeEdit := Nil;
    While Not Modulo.tReporter.Eof Do
      Begin
          Modulo.tFacturas.Close;
          Modulo.tFacturas.Params.ParamByName('Proceso').AsString := Trim(Modulo.tReporter.FieldByName('Proceso').AsString);
          Modulo.tFacturas.Open;
          Modulo.tFacturas.Edit;

          Modulo.tFacturasInteres.Value := 0;
          Modulo.tFacturasModalidad.Value := 'Cuotas Fijas';
          Modulo.tFacturasPlazo_Pago.Value := 1;
          Modulo.tFacturasInicial.Value := Modulo.tFacturasPagado.Value;
          Modulo.tFacturasMonto_Financiado.Value := Modulo.tFacturasPendiente.Value;
          Modulo.tFacturasPeriodo_Pagos.Value := Modulo.tFacturasNombre_Termino.Value;
          Modulo.GenerarCuotas(Vence,Modulo.tTerminosDiasDeGracia.Value,_ConceptoCuotaPrestamo);
          Modulo.tFacturas.Post;
          Modulo.tFacturas.ApplyUpdates(0);
          Modulo.tReporter.Next
      End;
  Finally
    Modulo.tFacturas.BeforeEdit := Modulo.tFacturasBeforeEdit;
    Modulo.tFacturas.Close;
    Modulo.tReporter.Close
  End;
end;

procedure TFMainMenuLite.Balanza_ComprobacionExecute(Sender: TObject);
begin
  Try
    Application.CreateForm(TDlgFecha,DlgFecha);
    DlgFecha.ShowModal;
    If DlgFecha.ModalResult = MrOk Then
      Begin
        ModuloContabilidad.tBalanza_Comprobacion.Params.ParamByName('Fecha_Inicio').AsDate := DlgFecha.Inicio.Date;
        ModuloContabilidad.tBalanza_Comprobacion.Params.ParamByName('Fecha_Fin').AsDate := DlgFecha.Fin.Date;

        AccountingForms.Fecha_Balanza.Caption := Format('del %s al %s',[DateToStr(DlgFecha.Inicio.Date), DateToStr(DlgFecha.Fin.Date)]);

        ModuloContabilidad.tBalanza_Comprobacion.Open;

        If (ModuloContabilidad.tBalanza_Comprobacion.RecordCount > 0) Then
          AccountingForms.Balanza_Comprobacion.Print
        Else Mensaje (_NoPrintData,self);

        ModuloContabilidad.tBalanza_Comprobacion.Close
      End
  Finally
    DlgFecha.Free;
  End;
end;

procedure TFMainMenuLite.BancosExecute(Sender: TObject);
begin
  OpenForm(TFBancos,FBancos);
  CloseAllDbs
end;

procedure TFMainMenuLite.Rep_Prod_Clasificados_CategoriaExecute(Sender: TObject);
begin
  Try
    Modulo.tCategoria.Open;
    Application.CreateForm(TFCriterioRepProductos,FCriterioRepProductos);
    FCriterioRepProductos.Elemento.LookupTable := Modulo.tCategoria;
    FCriterioRepProductos.CaptionElemento := 'Categorias';
    FCriterioRepProductos.CampoElemento := Modulo.tProductosCategoria.FieldName;
    FCriterioRepProductos.Elemento.Selected.Add('Descripcion'#9'50'#9'Descripcion'#9'F');
    FCriterioRepProductos.ShowModal;
    If FCriterioRepProductos.ModalResult = MrOk Then
      Begin
         ReportsAndForms.Usuario.Caption := 'Impreso Por ' + _CurrentUser;
         Modulo.tCategoria.Open;

         ReportsAndForms.Depto_Categoria.Text := FCriterioRepProductos.SeleccionDepartamento;
         ReportsAndForms.Elemento_Categoria.Text := FCriterioRepProductos.SeleccionElemento;
         ReportsAndForms.Status_Categoria.Text := FCriterioRepProductos.SeleccionStatus;
         ReportsAndForms.Tipo_Categoria.Text := FCriterioRepProductos.SeleccionTipoProducto;

         Modulo.tReporter.CommandText := Format(_SelectTodosProductos,[FCriterioRepProductos.CriterioDepartamento,
                                                                       FCriterioRepProductos.CriterioElemento,
                                                                       FCriterioRepProductos.CriterioStatus,
                                                                       FCriterioRepProductos.CriterioTipoProducto,
                                                                       DoubleQuoted(FCriterioRepProductos.CampoElemento),
                                                                       '']);
         Modulo.tReporter.Open;

         Case FCriterioRepProductos.ExistenciaCero.Checked Of
           True : Begin
                    Modulo.tReporter.Filter := 'Existencia <> 0';
                    Modulo.tReporter.Filtered := True;
                  End;

           False : Begin
                    Modulo.tReporter.Filter := '';
                    Modulo.tReporter.Filtered := False;
                  End;
         End; {Casse}

         If Modulo.tReporter.RecordCount > 0 Then
           ReportsAndForms.ReporteProductos_Categoria.Print
         Else
           Mensaje(_NoPrintData,self)
      End {If}
  Finally
    FCriterioRepProductos.Free;
    Modulo.tReporter.Close;
    Modulo.tCategoria.Close
  End {Try}
end;

procedure TFMainMenuLite.Rep_Prod_Clasificados_FabricanteExecute(Sender: TObject);
begin
  Try
    Application.CreateForm(TFCriterioRepProductos,FCriterioRepProductos);
    FCriterioRepProductos.Elemento.LookupTable := Modulo.tFabricante;
    FCriterioRepProductos.CaptionElemento := 'Fabricantes';
    FCriterioRepProductos.CampoElemento := Modulo.tProductosFabricante.FieldName;
    FCriterioRepProductos.Elemento.Selected.Add('Nombre'#9'50'#9'Nombre'#9'F');
    FCriterioRepProductos.ShowModal;
    If FCriterioRepProductos.ModalResult = MrOk Then
      Begin
         ReportsAndForms.Usuario.Caption := 'Impreso Por ' + _CurrentUser;
         Modulo.tFabricante.Open;

         ReportsAndForms.Depto_Fabricante.Text := FCriterioRepProductos.SeleccionDepartamento;
         ReportsAndForms.Elemento_Fabricante.Text := FCriterioRepProductos.SeleccionElemento;
         ReportsAndForms.Status_Fabricante.Text := FCriterioRepProductos.SeleccionStatus;
         ReportsAndForms.Tipo_Fabricante.Text := FCriterioRepProductos.SeleccionTipoProducto;

         Modulo.tReporter.CommandText := Format(_SelectTodosProductos,[FCriterioRepProductos.CriterioDepartamento,
                                                                       FCriterioRepProductos.CriterioElemento,
                                                                       FCriterioRepProductos.CriterioStatus,
                                                                       FCriterioRepProductos.CriterioTipoProducto,
                                                                       DoubleQuoted(FCriterioRepProductos.CampoElemento),
                                                                       '']);
         Modulo.tReporter.Open;

         Case FCriterioRepProductos.ExistenciaCero.Checked Of
           True : Begin
                    Modulo.tReporter.Filter := 'Existencia <> 0';
                    Modulo.tReporter.Filtered := True;
                  End;

           False : Begin
                    Modulo.tReporter.Filter := '';
                    Modulo.tReporter.Filtered := False;
                  End;
         End; {Casse}

         If Modulo.tReporter.RecordCount > 0 Then
           ReportsAndForms.ReporteProductos_Fabricante.Print
         Else
           Mensaje(_NoPrintData,self)
      End {If}
  Finally
    FCriterioRepProductos.Free;
    Modulo.tReporter.Close;
    Modulo.tFabricante.Close
  End {Try}
end;

procedure TFMainMenuLite.Rep_Prod_Clasificados_ProveedorExecute(Sender: TObject);
begin
  Try
    Application.CreateForm(TFCriterioRepProductos,FCriterioRepProductos);
    FCriterioRepProductos.Elemento.LookupTable := Modulo.tProveedores;
    Modulo.tProveedores.Open;
    FCriterioRepProductos.CaptionElemento := 'Proveedores';
    FCriterioRepProductos.CampoElemento := Modulo.tProductosProveedor_Principal.FieldName;
    FCriterioRepProductos.Elemento.Selected.Add('Nombre'#9'50'#9'Nombre'#9'F');
    FCriterioRepProductos.ShowModal;
    If FCriterioRepProductos.ModalResult = MrOk Then
      Begin
         ReportsAndForms.Usuario.Caption := 'Impreso Por ' + _CurrentUser;
         Modulo.tFabricante.Open;

         ReportsAndForms.Depto_Proveedor.Text := FCriterioRepProductos.SeleccionDepartamento;
         ReportsAndForms.Elemento_Proveedor.Text := FCriterioRepProductos.SeleccionElemento;
         ReportsAndForms.Status_Proveedor.Text := FCriterioRepProductos.SeleccionStatus;
         ReportsAndForms.Tipo_Proveedor.Text := FCriterioRepProductos.SeleccionTipoProducto;

         Modulo.tReporter.CommandText := Format(_SelectTodosProductos,[FCriterioRepProductos.CriterioDepartamento,
                                                                       FCriterioRepProductos.CriterioElemento,
                                                                       FCriterioRepProductos.CriterioStatus,
                                                                       FCriterioRepProductos.CriterioTipoProducto,
                                                                       DoubleQuoted(FCriterioRepProductos.CampoElemento),
                                                                       DoubleQuoted('Fabricante')+',']);
         Modulo.tReporter.Open;
         If Modulo.tReporter.RecordCount > 0 Then
           ReportsAndForms.ReporteProductos_Proveedores.Print
         Else
           Mensaje(_NoPrintData,self)
      End {If}
  Finally
    FCriterioRepProductos.Free;
    Modulo.tReporter.Close;
    Modulo.tProveedores.Close;
    Modulo.tFabricante.Close
  End {Try}
end;

procedure TFMainMenuLite.Action8Execute(Sender: TObject);
  Var I : Integer;
begin
  Modulo.tListadoProductos.Open;
  Modulo.tListadoProductos.First;
  I := 0;
  Label1.Visible := True;
  While Not Modulo.tListadoProductos.Eof Do
    Begin
      Inc(I);
      Modulo.tListadoProductos.Edit;
      Modulo.tListadoProductosSecuencia.Value := I;
      Modulo.tListadoProductos.Post;
      Label1.Caption := Format('Secuencia %d',[I]);
      Modulo.tListadoProductos.ApplyUpdates(0);
      Modulo.tListadoProductos.Next;
      Update
    End;
  Modulo.tListadoProductos.Close;
  Label1.Visible := False;
  Mensaje ('Terminado ' + Label1.Caption,self)
end;

procedure TFMainMenuLite.Rep_Prod_VencimientosExecute(Sender: TObject);
begin
  OpenForm(TFCriterio_Vencimientos,FCriterio_Vencimientos);
end;

procedure TFMainMenuLite.Rep_Impresion_EtiquetasExecute(Sender: TObject);
begin
  OpenForm(TFCriterio_Etiquetas,FCriterio_Etiquetas);
end;

procedure TFMainMenuLite.Rep_VentasExecute(Sender: TObject);
begin
  Application.CreateForm(TFCriterio_Rep_Facturas,FCriterio_Rep_Facturas);
  FCriterio_Rep_Facturas.ShowModal;
  If FCriterio_Rep_Facturas.ModalResult = MrOk Then
    Begin
      Case FCriterio_Rep_Facturas.Clasificacion.ItemIndex Of
        0 : Begin
              Modulo.tReporter.Filter := 'Condicion <> ' + QuotedStr('Inscripcion');
              Modulo.tReporter.Filtered := True;
//              ReportsAndForms.RptPagos.Visible := True;
              ReportsAndForms.RptEfectivo.Visible := True
            end;

        1 : Begin
              Modulo.tReporter.Filter := 'Condicion = ' + QuotedStr('Contado');
              Modulo.tReporter.Filtered := True;
//              ReportsAndForms.RptPagos.Visible := False;
              ReportsAndForms.RptEfectivo.Visible := False
            end;

        2 : Begin
              Modulo.tReporter.Filter := Format('(Condicion = %s) Or (Condicion = %s)',[QuotedStr('Crédito'),QuotedStr('Financiamiento')]);
              Modulo.tReporter.Filtered := True;
//              ReportsAndForms.RptPagos.Visible := False;
              ReportsAndForms.RptEfectivo.Visible := False
            end;
      End;{Case}
    End; {If FCriterio_Rep_Facturas.ModalResult = MrOk}

  Application.CreateForm(TDlgFecha,DlgFecha);
  DlgFecha.ShowModal;
  If DlgFecha.ModalResult = MrOk Then
    Begin

      Modulo.tReporter.CommandText := _SelectInvoicesByDate;
      Modulo.tReporter.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
      Modulo.tReporter.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;

      Modulo.tDesgloceEfectivo.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
      Modulo.tDesgloceEfectivo.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;

//      Modulo.tListadoPagos.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
//      Modulo.tListadoPagos.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;
      ReportsAndForms.Clasificacion_Vt_Cliente.Caption := Format('Reporte de Facturas del %s al %s',[DateToStr(DlgFecha.Inicio.Date),DateToStr(DlgFecha.Fin.Date)]);

      Modulo.tReporter.Open;
      Modulo.tDesgloceEfectivo.Open;
//      Modulo.tListadoPagos.Open;

      ReportsAndForms.Pipe_Facturas.DataSource := Modulo.dReporter;

        If (Modulo.tReporter.RecordCount > 0) Then

        ReportsAndForms.Reporte_Ventas_Cliente.Print
      Else Mensaje (_NoPrintData,self);
      Modulo.tReporter.Close;
      Modulo.tDesgloceEfectivo.Close;
//      Modulo.tListadoPagos.Close
    End;
  DlgFecha.Free;
  ReportsAndForms.Pipe_Facturas.DataSource := Modulo.dFacturas;
  FCriterio_Rep_Facturas.Free;
  Modulo.tReporter.Filter := '';
  Modulo.tReporter.Filtered := False
end;

procedure TFMainMenuLite.Resumen_OperacionesExecute(Sender: TObject);
  Var
    TG, TC, TCr, TP, TE : Currency;
begin
  Application.CreateForm(TDlgFecha,DlgFecha);
  DlgFecha.ShowModal;
  If DlgFecha.ModalResult = MrOk Then
    Begin
      Modulo.tResumenes.Close;
      Modulo.tResumenes.CreateDataSet;

      // Inscripciones
      Modulo.tReporter.Close;
      Modulo.tReporter.CommandText := 'Select Sum ("Gasto_Cierre") TOTAL , Sum ("Interes") PAG, Sum ("Pendiente") PEND From "Facturas" Where ("Condicion" = :Cond) And ("Fecha" Between :F1 And :F2)';
      Modulo.tReporter.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
      Modulo.tReporter.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;
      Modulo.tReporter.Params.ParamByName('Cond').AsString := 'Inscripcion';
      Modulo.tReporter.Open;

      Modulo.tResumenes.Append;
      Modulo.tResumenesConcepto.AsString := 'INSCRIPCIONES';
      Modulo.tResumenesMonto.AsCurrency := Modulo.tReporter.FieldByName('TOTAL').AsCurrency;
      Modulo.tResumenesPagado.AsCurrency := 0;
      TC := Modulo.tResumenesPagado.AsCurrency;
      Modulo.tResumenesPendiente.AsCurrency := 0;
      Modulo.tResumenes.Post;

      // Facturacion Contado
      Modulo.tReporter.Close;
      Modulo.tReporter.CommandText := 'Select Sum ("TotalNeto") TOTAL , Sum ("Pagado") PAG, Sum ("Pendiente") PEND From "Facturas" Where ("Condicion" = :Cond) And ("Fecha" Between :F1 And :F2)';
      Modulo.tReporter.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
      Modulo.tReporter.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;
      Modulo.tReporter.Params.ParamByName('Cond').AsString := 'Contado';
      Modulo.tReporter.Open;

      Modulo.tResumenes.Append;
      Modulo.tResumenesConcepto.AsString := 'Facturacion de CONTADO';
      Modulo.tResumenesMonto.AsCurrency := Modulo.tReporter.FieldByName('TOTAL').AsCurrency;
      Modulo.tResumenesPagado.AsCurrency := Modulo.tReporter.FieldByName('PAG').AsCurrency;
      TC := Modulo.tResumenesPagado.AsCurrency;
      Modulo.tResumenesPendiente.AsCurrency := Modulo.tReporter.FieldByName('PEND').AsCurrency;
      Modulo.tResumenes.Post;

      // Facturacion Credito
      Modulo.tReporter.Close;
      Modulo.tReporter.CommandText := 'Select Sum ("TotalNeto") TOTAL , Sum ("Pagado") PAG, Sum ("Pendiente") PEND From "Facturas" Where ("Condicion" = :Cond) And ("Fecha" Between :F1 And :F2)';
      Modulo.tReporter.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
      Modulo.tReporter.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;
      Modulo.tReporter.Params.ParamByName('Cond').AsString := 'Crédito';
      Modulo.tReporter.Open;

      Modulo.tResumenes.Append;
      Modulo.tResumenesConcepto.AsString := 'Facturacion de CRÉDITO';
      Modulo.tResumenesMonto.AsCurrency := Modulo.tReporter.FieldByName('TOTAL').AsCurrency;
      Modulo.tResumenesPagado.AsCurrency := Modulo.tReporter.FieldByName('PAG').AsCurrency;
      TCr := Modulo.tResumenesPagado.AsCurrency;
      Modulo.tResumenesPendiente.AsCurrency := Modulo.tReporter.FieldByName('PEND').AsCurrency;
      Modulo.tResumenes.Post;

      // Pagos
      Modulo.tReporter.Close;
      Modulo.tReporter.CommandText := 'Select Sum ("Monto") TOTAL From "Pagos_Clientes" Where "Fecha" Between :F1 And :F2';
      Modulo.tReporter.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
      Modulo.tReporter.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;
      Modulo.tReporter.Open;

      Modulo.tResumenes.Append;
      Modulo.tResumenesConcepto.AsString := 'Cobros de Cuentas';
      Modulo.tResumenesMonto.AsCurrency := Modulo.tReporter.FieldByName('TOTAL').AsCurrency;
      Modulo.tResumenesPagado.AsCurrency := Modulo.tReporter.FieldByName('TOTAL').AsCurrency;
      TP := Modulo.tResumenesPagado.AsCurrency;
      Modulo.tResumenes.Post;

      // Egresos
      Modulo.tReporter.Close;
      Modulo.tReporter.CommandText := 'Select Sum ("TotalNeto") TOTAL From "Registro_Gastos" Where "Fecha" Between :F1 And :F2';
      Modulo.tReporter.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
      Modulo.tReporter.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;
      Modulo.tReporter.Open;

      Modulo.tResumenes.Append;
      Modulo.tResumenesConcepto.AsString := 'EGRESOS POR GASTOS Y/O PAGOS';
      Modulo.tResumenesMonto.AsCurrency := Modulo.tReporter.FieldByName('TOTAL').AsCurrency;
      TE := Modulo.tResumenesMonto.AsCurrency;
      Modulo.tResumenes.Post;
      Modulo.tReporter.Close;

      TG := TC + TCr + TP - TE;

      Application.CreateForm(TfResumen_Operaciones,fResumen_Operaciones);
      fResumen_Operaciones.TotalGeneral.Caption := format('%m',[TG]);
      fResumen_Operaciones.Titulo.Caption := format('Resumen del %s al %s',[DateToStr(DlgFecha.Inicio.Date),DateToStr(DlgFecha.Fin.Date)]);
      fResumen_Operaciones.ShowModal;
      fResumen_Operaciones.Free;
      Modulo.tResumenes.Close
    End;
  DlgFecha.Free;
  Modulo.tReporter.IndexFieldNames := '';
  Modulo.tReporter.Filter := '';
  Modulo.tReporter.Filtered := False
end;

procedure TFMainMenuLite.FormClick(Sender: TObject);
begin
  Principal.Hide;
end;

procedure TFMainMenuLite.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If Application.MessageBox('Realmente Desea Terminar La Ejecución del Programa',
                            'Salida del Sistema',
                            MB_YESNO + MB_ICONQUESTION) = ID_No Then
    Begin
      Action := caNone;
      Exit
    End;

  Modulo.Concentrador.Close
end;

procedure TFMainMenuLite.Rep_Prod_GeneralExecute(Sender: TObject);
begin
  Try
    ReportsAndForms.Usuario.Caption := 'Impreso Por ' + _CurrentUser;

    ReportsAndForms.Depto_Fabricante.Text    := 'Todos';
    ReportsAndForms.Elemento_Fabricante.Text := 'Todos';
    ReportsAndForms.Status_Fabricante.Text   := 'Todos';
    ReportsAndForms.Tipo_Fabricante.Text     := 'Todos';

    ReportsAndForms.Titulo.Text              := 'Reporte General de Productos Clasificado por Fabricantes';


    Modulo.tFabricante.Open;

    Modulo.tReporter.CommandText := Format(_SelectTodosProductos,['',
                                                                  '',
                                                                  '',
                                                                  '',
                                                                  DoubleQuoted('Fabricante'),
                                                                  '']);
    Modulo.tReporter.Open;
    If Modulo.tReporter.RecordCount > 0 Then
      ReportsAndForms.ReporteProductos_Fabricante.Print
    Else
      Mensaje(_NoPrintData,self)
  Finally
    Modulo.tReporter.Close;
    Modulo.tFabricante.Close
  End {Try}
end;

function TFMainMenuLite.ValidarApertura(Const Terminal, Usuario  : String; Var Actual,ActUsuario : String) : Byte;
  Var
    Q : TClientDataSet;
begin
  Try
    Result := 0;
    Actual := '_NO_';
    ActUsuario := '';
    Q := TClientDataSet.Create(Self);
    Q.ConnectionBroker := Modulo.tFacturas.ConnectionBroker;
    Q.ProviderName := 'prReporter';
    Q.CommandText := 'Select * From "Apertura_Caja" Where (ID = :ID) And ("Abierto" = TRUE)';
    Q.Params.ParamByName('ID').AsString := Trim(Terminal);
    Q.Open;

    If (Q.RecordCount > 0) Then
      Begin
        Actual := Q.FieldByName('Proceso').AsString;
        ActUsuario := Q.FieldByName('Usuario').AsString;
        If (Q.FieldByName('Usuario').AsString = Usuario)  Then Result := 1
        Else Result := 2;
      End
  Finally
    Q.Close;
    Q.Free;
  End;
end;

procedure TFMainMenuLite.VendedoresExecute(Sender: TObject);
begin
  OpenForm(TFVendedores,FVendedores);
  CloseAllDbs
end;

procedure TFMainMenuLite.Ventas_CajaExecute(Sender: TObject);
begin
  OpenForm(TFVentas_Caja,FVentas_Caja)
end;

procedure TFMainMenuLite.Verificacion_Cliente_ManualExecute(Sender: TObject);
    Var
      Q : TClientDataset;
      R : Integer;
      S,
      ID,
      Nombre,
      Status,
      StatusDeuda : String;
      Deuda : Currency;
    Begin
      Modulo.tClockLog.Close;
      Modulo.tClockLog.Params.ParamByName('Fecha').AsDate := Modulo.Enlace.AppServer.ServerDate;
      Modulo.tClockLog.Open;

  S := DoSearch(Nil,
                'Clientes',                                          (* TableName *)
                'SrchPr',                                         (* Provider *)
                Modulo.tClientesCedula_Rnc_Pasaporte.FieldName, (* CampoClave *)
                Modulo.tClientesNombreCompleto.FieldName,      (* CampoInicial *)
                '',      (* AltQry *)
                Modulo.Enlace,                                   (* RemoteServer *)
                'A',                                                              (* SortOrder *)
                -1,                                                               (* Packet Records *)
                wsMaximized,
                R);
  If R = MrOk Then
    Begin
      ID := S;
      ParamSearchKey(Modulo.tClientes,'Cedula_Rnc_Pasaporte',ID);
      Nombre := Modulo.tClientesNombreCompleto.AsString;
      Status := Modulo.tClientesStatus.AsString;
      StatusDeuda := 'OK';
      Q := TClientDataSet.Create(Self);
      Q.ConnectionBroker := Modulo.tClientes.ConnectionBroker;
      Q.ProviderName := 'prReporter';
      Q.CommandText := 'Select  Sum("Total_Pendiente") TOTAL From "Cuotas" ' +
                           'Where ("Proceso" In (Select "Proceso" From "Facturas" Where "Cliente" = :Cliente)) ' +
                           'And ("Total_Pendiente" > 0) ' +
                           'And ("Vence" <= current_date) ' +
                           'Order By "Vence"';
      Q.Params.ParamByName('Cliente').AsString := Trim(ID);
      Q.Open;
      Deuda := Q.FieldByName('TOTAL').AsCurrency;
      Q.Close;
      Q.Free;
      If Deuda > 0 Then StatusDeuda := 'ATRASO';

      Modulo.tClockLog.Append;
      Modulo.tClockLogFecha.AsDateTime := Modulo.Enlace.AppServer.ServerDate;
      Modulo.tClockLogNumero.AsInteger := Modulo.tClockLog.RecordCount + 1;
      Modulo.tClockLogDN.AsInteger := 1;
      Modulo.tClockLogUsuario.AsString := Modulo.tClientesNumero_Cuenta.AsString;
      Modulo.tClockLogRegistro.AsString := 'MANUAL';
      Modulo.tClockLogAccion.AsInteger := 1;
      Modulo.tClockLogRegistrado.AsString := FormatDateTime('dd-mm-yyyy hh:nn:ss', Modulo.Enlace.AppServer.ServerDate);
      Modulo.tClockLogCliente.AsString := ID;
      Modulo.tClockLogNombre_Cliente.AsString := Nombre;
      Modulo.tClockLogStatus.AsString := Status;
      Modulo.tClockLogStatus_Balance.AsString := StatusDeuda;
      Modulo.tClockLogAtraso.AsCurrency := Deuda;
      Modulo.tClockLog.Post;
      Modulo.tClockLog.ApplyUpdates(0);
      pcAsistencia.Visible := True;

      RegInfo.CloseKey;
      RegInfo.OpenKey(_Reloj_Key,False);

      If RegInfo.ReadBool(_rlj_PlaySound) Then
        Begin
          If StatusDeuda = 'OK' Then PlaySound(GetCurrentDir + '\OK.wav');
          If StatusDeuda = 'ATRASO' Then PlaySound(GetCurrentDir + '\STOP.wav');
          If StatusDeuda = 'N/A' Then PlaySound(GetCurrentDir + '\NOTFOUND.wav');
        End;

      If RegInfo.ReadBool(_rlj_DoorOpen) Then
        Begin
          If StatusDeuda = 'OK' Then
            Activar_RTS(RegInfo.ReadString(_rlj_DoorPort),RegInfo.ReadInteger(_rlj_DoorTimer));

          If (StatusDeuda = 'N/A') AND  RegInfo.ReadBool(_rlj_DoorOpen_NR) Then
            Activar_RTS(RegInfo.ReadString(_rlj_DoorPort),RegInfo.ReadInteger(_rlj_DoorTimer));
        End;
    End;
   CloseAllDbs;
   Modulo.tClockLog.Params.ParamByName('Fecha').AsDate := Modulo.Enlace.AppServer.ServerDate;
   Modulo.tClockLog.Open;
end;

procedure TFMainMenuLite.Rep_Prod_Mercancia_VendidaExecute(Sender: TObject);
begin
  Try
    Application.CreateForm(TFCriterioRepVendida,FCriterioRepVendida);
    FCriterioRepVendida.Caption := 'Criterio para Reporte de Mercancía Vendida';
    FCriterioRepVendida.ShowModal;
    If FCriterioRepVendida.ModalResult = MrOk Then
      Begin
         ReportsAndForms.Usuario.Caption := 'Impreso Por ' + _CurrentUser;
         Modulo.tFabricante.Open;

         ReportsAndForms.Usuario_Vendida.Caption  := FCriterioRepVendida.SeleccionUsuario;
         ReportsAndForms.Producto_Vendida.Caption := FCriterioRepVendida.SeleccionProducto;
         ReportsAndForms.Depto_Vendida.Caption    := FCriterioRepVendida.SeleccionDepartamento;

         Application.CreateForm (TDlgFecha,DlgFecha);
         DlgFecha.Caption := 'Reporte de Mercancía Vendida Por Fecha :';
         DlgFecha.ShowModal;
         If DlgFecha.ModalResult = MROk Then
           Begin
             Modulo.tReporter.CommandText := Format(_SelectDetFacturas,[FCriterioRepVendida.CriterioUsuario,
                                                                        FCriterioRepVendida.CriterioDepartamento,
                                                                        FCriterioRepVendida.CriterioProducto,
                                                                        FCriterioRepVendida.CriterioTipoProducto]);
             Modulo.tReporter.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
             Modulo.tReporter.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;
             Modulo.tReporter.Open;
             ReportsAndForms.Pipe_Mercancia_Vendida.DataSource := Modulo.dReporter;

             ReportsAndForms.DelAl.Caption := Format('Reporte de Mercancía Vendida del %s al %s',
                                                     [DateToStr(DlgFecha.Inicio.Date),
                                                      DateToStr(DlgFecha.Fin.Date)]);

             If (Modulo.tReporter.RecordCount > 0) Then ReportsAndForms.InventarioVendido.Print
             Else Mensaje(_NoPrintData,self)
           End {If}
      End {If}
  Finally
    FCriterioRepVendida.Free;
    DlgFecha.Free;
    Modulo.tReporter.Close;
    Modulo.tListadoProductos.Close
  End {Try}
end;

procedure TFMainMenuLite.Opciones_SistemasExecute(Sender: TObject);
begin
  OpenForm(TfrmOpciones_Sistema,frmOpciones_Sistema)
end;

procedure TFMainMenuLite.Orden_CompraExecute(Sender: TObject);
begin
  OpenForm(TFOrden_Compra_Productos,FOrden_Compra_Productos)
end;

procedure TFMainMenuLite.Niveles_AccesoExecute(Sender: TObject);
begin
  OpenForm(TfrmNiveles_Acceso,frmNiveles_Acceso)
end;

procedure TFMainMenuLite.Notas_Credito_ClientesExecute(Sender: TObject);
begin
  OpenForm(TFNotas_Credito,FNotas_Credito);
  CloseAllDbs
end;

procedure TFMainMenuLite.Notas_Debito_ClientesExecute(Sender: TObject);
begin
  OpenForm(TFNotas_Debito,FNotas_Debito);
  CloseAllDbs
end;

procedure TFMainMenuLite.NotificacionesMouseEnter(Sender: TObject);
begin
  Principal.Show
end;

procedure TFMainMenuLite.Actualizacion_UsuariosExecute(Sender: TObject);
begin
  OpenForm(TFUsuarios,FUsuarios)
end;

procedure TFMainMenuLite.Ajuste_Balance_ClientesExecute(Sender: TObject);
begin
  OPenForm(TFAjuste_Balances_Clientes,FAjuste_Balances_Clientes)
end;

procedure TFMainMenuLite.Ajuste_InventarioExecute(Sender: TObject);
begin
  OPenForm(TFAjuste_Inventario,FAjuste_Inventario)
end;

procedure TFMainMenuLite.Apertura_CajaExecute(Sender: TObject);
begin
  Granted := False;
  ModuloGenerales.Autorizar_Opcion(Self,self.Name);
  If (Not Granted) Then Raise Exception.Create(_ErrAccesoDenegadoOpcion);

  Modulo.SetCashParams(_CurrentUser,_CurrentTerminal,'-*-',True);

  If Modulo.tApertura_Caja.RecordCount = 0 Then
    Begin
      Modulo.tApertura_Caja.Append;
      Modulo.tApertura_CajaProceso.Value := Gen_ProcessNumber(_CurrentUser);
      Modulo.tApertura_CajaUsuario.Value := _CurrentUser;
      Modulo.tApertura_CajaFecha.Value := Modulo.Enlace.AppServer.ServerDate;
      Modulo.tApertura_CajaHora.Value := Modulo.Enlace.AppServer.ServerTime;
      Modulo.tApertura_CajaUsuario_Cuadre.Value := _CurrentUser;
    End
  Else Mensaje('Este Usuario Ya Tiene Aperturada la Caja',self);

  {Detalles}
  Try
    Modulo.tFormas_Pago.Open;
    Modulo.tFormas_Pago.IndexFieldNames := 'Numero';
    Modulo.tFormas_Pago.First;
    While Not Modulo.tFormas_Pago.Eof Do
      Begin
{            If Not Modulo.tDetalle_Apertura.Locate(Modulo.tDetalle_AperturaMoneda.FieldName,
                                             Modulo.tFormas_PagoDescripcion.Value,
                                             []) Then
          Modulo.tDetalle_Apertura.Append
        Else
          Modulo.tDetalle_Apertura.Edit;

        Modulo.tDetalle_AperturaMoneda.Value := Modulo.tFormas_PagoDescripcion.Value;}

        Case Modulo.tFormas_PagoEs_Efectivo.Value Of
           True : Begin
                    Modulo.tDenominaciones.First;
                    While Not Modulo.tDenominaciones.Eof Do
                      Begin
                        If Not Modulo.tDetalle_Apertura.Locate(Modulo.tDetalle_AperturaMoneda.FieldName+';'+Modulo.tDetalle_AperturaDenominacion.FieldName,
                                                             VarArrayOf([Modulo.tDenominacionesDescripcion.Value,Modulo.tDenominacionesDenominacion.Value]),
                                                             []) Then
                          Modulo.tDetalle_Apertura.Append
                        Else
                          Modulo.tDetalle_Apertura.Edit;

                        Modulo.tDetalle_AperturaEfectivo.Value := True;
                        Modulo.tDetalle_AperturaMoneda.Value := Modulo.tDenominacionesDescripcion.Value;
                        Modulo.tDetalle_AperturaDenominacion.Value := Modulo.tDenominacionesDenominacion.Value;
                        Modulo.tDetalle_AperturaTipo.Value := 'D';
                        Modulo.tDetalle_Apertura.Post;
                        Modulo.tDenominaciones.Next;
                      End; {While}
                  End; {True}
        End; {Case}
        Modulo.tFormas_Pago.Next;
      End;{While}
  Finally
//    Modulo.tDetalle_Apertura.BeforePost := Modulo.tDetalle_CuadreBeforePost;
    Modulo.tDetalle_Apertura.First;

    Modulo.tFormas_Pago.Close;

    Modulo.SetCashParams(_CurrentUser,_CurrentTerminal,'-*-',True);
  End;
  OpenForm (TFApertura_Caja,FApertura_Caja);
  Modulo.tApertura_Caja.Close;
end;

procedure TFMainMenuLite.Registrar_Seriales_ComprasExecute(Sender: TObject);
 Var
    Fin      : Boolean;
    vr_Step  : Integer;
begin
  Try
    vr_Step := 1;
    Fin := False;
    Modulo.tCompra_Productos.BeforeEdit := Nil;
    Modulo.tCompras_Seriales.Filter := 'Almacen = ' + QuotedStr (_CurrentStore);
    Modulo.tCompras_Seriales.Filtered := True;
    Modulo.tCompras_Seriales.Open;
    While Not Fin Do
      Begin
        Case vr_Step Of
           1 : Begin
                 Application.CreateForm(TFCompras_Seriales,FCompras_Seriales);
                 FCompras_Seriales.ShowModal;
                 Fin := FCompras_Seriales.ModalResult = MrCancel;
                 If Not Fin Then Vr_Step := 2;
                 Modulo.tCompra_Productos.Close;
                 Modulo.tCompra_Productos.Params.ParamByName('Proceso').AsString := Modulo.tCompras_SerialesProceso.AsString;
                 Modulo.tCompra_Productos.Open;
                 Modulo.tProveedores.Open;
                 Modulo.tProveedores.Locate('Numero',Modulo.tCompra_ProductosProveedor.Value,[]);
                 FCompras_Seriales.Free
               End;
           2 : Begin
                 Application.CreateForm(TFSeriales_Productos,FSeriales_Productos);
                 FSeriales_Productos.ShowModal;
                 Fin := FSeriales_Productos.ModalResult = MrCancel;
                 If Not Fin Then Vr_Step := 1;
                 FSeriales_Productos.Free
               End
        End {Case}
      End {While}
  Finally
    Modulo.tCompras_Seriales.Filter := '';
    Modulo.tCompras_Seriales.Filtered := False;
    Modulo.tCompra_Productos.BeforeEdit := Modulo.tCompra_ProductosBeforeEdit;
    Modulo.tCompra_Productos.Close;
    Modulo.tCompras_Seriales.Close;
    Modulo.tProveedores.Close
  End
End;

procedure TFMainMenuLite.Registrar_Seriales_FacturadosExecute(Sender: TObject);
 Var
    Fin      : Boolean;
    vr_Step  : Integer;
begin
  Try
    vr_Step := 1;
    Fin := False;
    Modulo.tFacturas.BeforeEdit := Nil;
    Modulo.tFacturas_Seriales.Open;
    While Not Fin Do
      Begin
        Case vr_Step Of
           1 : Begin
      {Abrir las Tablas Requeridas}
      Modulo.tParametros.Params.ParamByName('Terminal').AsString := _CurrentTerminal;
      Modulo.tParametros.Open;
      Modulo.tComprobantes_Fiscales.Params.ParamByName('Aplicable').AsString := 'FT';
      Modulo.tComprobantes_Fiscales.Open;
      Modulo.tListado_Clientes.Open;
      Modulo.tListadoVendedores.Open;
      Modulo.tTerminos.Open;
      Modulo.tProductos.Open;
      Modulo.tListadoProductos.Open;
      Modulo.tCategoria.Open;
                 Application.CreateForm(TFFacturas_Seriales,FFacturas_Seriales);
                 FFacturas_Seriales.ShowModal;
                 Fin := FFacturas_Seriales.ModalResult = MrCancel;
                 If Not Fin Then Vr_Step := 2;
                 Modulo.tFacturas.Close;
                 Modulo.tFacturas.Params.ParamByName('Proceso').AsString := Modulo.tFacturas_SerialesProceso.AsString;
                 Modulo.tFacturas.Open;
                 Modulo.tListado_Clientes.Locate('Cedula_Rnc_Pasaporte',Modulo.tFacturasCliente.Value,[]);
                 FFacturas_Seriales.Free
               End;
           2 : Begin
                 Application.CreateForm(TFSeriales_Productos_Facturados,FSeriales_Productos_Facturados);
                 FSeriales_Productos_Facturados.ShowModal;
                 Fin := FSeriales_Productos_Facturados.ModalResult = MrCancel;
                 If Not Fin Then Vr_Step := 1;
                 FSeriales_Productos_Facturados.Free
               End
        End {Case}
      End {While}
  Finally
    Modulo.tFacturas.BeforeEdit := Modulo.tFacturasBeforeEdit;
//    Modulo.tFacturas.Close;
    Modulo.tFacturas_Seriales.Close;
    Modulo.tProveedores.Close;

    {Cerrar las Tablas}
    If Modulo.tClientes.Active Then
      Begin
        Modulo.tClientes.Cancel;
        Modulo.tClientes.CancelUpdates;
        Modulo.tClientes.Close
      End;

    _ChkExistence := False;

    Modulo.tListado_Clientes.Cancel;
    Modulo.tListado_Clientes.CancelUpdates;
    Modulo.tListado_Clientes.Close;

    Modulo.tListadoVendedores.Close;

    Modulo.tTerminos.Close;

    Modulo.tDepartamentos.Close;

    Modulo.tProductos.Close;

    Modulo.tComprobantes_Fiscales.Close;

    Modulo.tListadoProductos.Filter := '';
    Modulo.tListadoProductos.Filtered := False;
    Modulo.tListadoProductos.Close;

    Modulo.tCategoria.Close;

    Modulo.tFacturas.Cancel;
    Modulo.tFacturas.CancelUpdates;
    Modulo.tFacturas.Params.ParamByName('Proceso').Clear;
    Modulo.tFacturas.Refresh;
    Modulo.tFacturas.Close
  End
end;

procedure TFMainMenuLite.Reporte_Acuerdos_TrabajoExecute(Sender: TObject);
begin
  Application.CreateForm(TDlgFecha,DlgFecha);
  DlgFecha.ShowModal;
  If DlgFecha.ModalResult = MrOk Then
    Begin

      Modulo.tReporter.CommandText := _SelectAcuerdosByDate;
      Modulo.tReporter.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
      Modulo.tReporter.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;

      ReportsAndForms.Clasificacion_Listado_Acuerdos.Caption := Format('Del  %s al %s',[DateToStr(DlgFecha.Inicio.Date),DateToStr(DlgFecha.Fin.Date)]);

      Modulo.tReporter.Open;

      ReportsAndForms.PipeAcuerdos.DataSource := Modulo.dReporter;

        If (Modulo.tReporter.RecordCount > 0) Then

        ReportsAndForms.Reporte_Listado_Acuerdos.Print
      Else Mensaje (_NoPrintData,self);
      Modulo.tReporter.Close;
    End;
  DlgFecha.Free;
  ReportsAndForms.PipeAcuerdos.DataSource := Modulo.dAcuerdos;
  Modulo.tReporter.Filter := '';
  Modulo.tReporter.Filtered := False
end;

procedure TFMainMenuLite.Reporte_Entradas_DiarioExecute(Sender: TObject);
begin
  Try
     Application.CreateForm (TDlgFecha,DlgFecha);
     DlgFecha.Caption := 'Reporte de Entradas de Diario :';
     DlgFecha.ShowModal;
     If DlgFecha.ModalResult = MROk Then
       Begin
         ModuloContabilidad.tListado_Transacciones.Params.ParamByName('Fecha_Inicio').AsDate := DlgFecha.Inicio.Date;
         ModuloContabilidad.tListado_Transacciones.Params.ParamByName('Fecha_Fin').AsDate := DlgFecha.Fin.Date;
         ModuloContabilidad.tListado_Transacciones.Open;

         AccountingForms.Fecha_Listado_Transacciones.Caption := Format('del %s al %s',
                                                                       [DateToStr(DlgFecha.Inicio.Date),
                                                                        DateToStr(DlgFecha.Fin.Date)]);


         If (ModuloContabilidad.tListado_Transacciones.RecordCount > 0) Then AccountingForms.Form_Listado_Transacciones.Print
         Else Mensaje(_NoPrintData,self)
       End {If}
  Finally
    DlgFecha.Free;
    ModuloContabilidad.tListado_Transacciones.Close
  End {Try}
end;

procedure TFMainMenuLite.Reporte_InscripcionesExecute(Sender: TObject);
begin
  Try
    Modulo.tReporter.Filter := 'Condicion = ' + QuotedStr('Inscripcion');
    Modulo.tReporter.Filtered := True;

    Application.CreateForm(TDlgFecha,DlgFecha);
    DlgFecha.ShowModal;
    If DlgFecha.ModalResult = MrOk Then
      Begin

        Modulo.tReporter.CommandText := _SelectInvoicesByDate;
        Modulo.tReporter.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
        Modulo.tReporter.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;

        ReportsAndForms.Clasificacion_Vt_Cliente.Caption := Format('Reporte de Facturas del %s al %s',[DateToStr(DlgFecha.Inicio.Date),DateToStr(DlgFecha.Fin.Date)]);

        ReportsAndForms.Pipe_Facturas.OnRecordPositionChange := ReportsAndForms.FiltrarCuotas;
        ReportsAndForms.Pipe_Facturas.DataSource := Modulo.dReporter;
        Modulo.tReporter.Open;

        If (Modulo.tReporter.RecordCount > 0) Then
          ReportsAndForms.Reporte_Inscripciones.Print

        Else Mensaje (_NoPrintData,self);
      End;
  Finally
    Modulo.tCuotas_Facturas.Filtered := False;
    Modulo.tCuotas_Facturas.Filter := '';
    Modulo.tReporter.Close;
    DlgFecha.Free;
    ReportsAndForms.Pipe_Facturas.OnRecordPositionChange := Nil;
    ReportsAndForms.Pipe_Facturas.DataSource := Modulo.dFacturas;
    Modulo.tReporter.Filter := '';
    Modulo.tReporter.Filtered := False;
  End;
end;

procedure TFMainMenuLite.Reporte_Pagos_ClienteExecute(Sender: TObject);
  Var
    R : Integer;
    S : String;
begin
  S := DoSearch(Nil,
                'Clientes',                                          (* TableName *)
                'SrchPr',                                         (* Provider *)
                Modulo.tClientesCedula_Rnc_Pasaporte.FieldName, (* CampoClave *)
                Modulo.tClientesNombreCompleto.FieldName,      (* CampoInicial *)
                '',      (* AltQry *)
                Modulo.Enlace,                                   (* RemoteServer *)
                'A',                                                              (* SortOrder *)
                -1,                                                               (* Packet Records *)
                wsMaximized,
                R);
  If R = MrOk Then
    Begin
      Application.CreateForm(TDlgFecha,DlgFecha);
      DlgFecha.ShowModal;
      If DlgFecha.ModalResult = MrOk Then
        Try
          Modulo.tReporter.Close;
          Modulo.tReporter.CommandText := 'Select P.*, T."Numero" "Numero_Factura"  From "Pagos_Clientes" P ' +
                                          'LEFT JOIN "Facturas" T ON T."Proceso" = P."Factura" ' +
                                          'Where (P."Fecha" Between :F1 And :F2) And (P."Cliente" = :Cliente) Order By P."Numero"';

          Modulo.tReporter.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
          Modulo.tReporter.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;
          Modulo.tReporter.Params.ParamByName('Cliente').AsString := S;
          Modulo.tReporter.Open;
          Modulo.tListado_Clientes.Open;
          ReportsAndForms.PipePagos.DataSource := Modulo.dReporter;

          ReportsAndForms.TitPagos.Caption := Format('Reporte de Pagos Recibidos Entre el %s y el %s',
                                                     [DateToStr(DlgFecha.Inicio.Date),DateToStr(DlgFecha.Fin.Date)]);
          If Modulo.tReporter.RecordCount > 0 Then
            ReportsAndForms.ReportePagos.Print
          Else
            PopupMessage(ModuloGenerales.Mensajes,_NoPrintData)
        Finally
          ReportsAndForms.PipePagos.DataSource := Modulo.dPagos_Clientes;
          Modulo.tListado_Clientes.Close;
          Modulo.tReporter.Close
        End; {Try}
      DlgFecha.Free;
    End
end;

procedure TFMainMenuLite.Rep_ClientesExecute(Sender: TObject);
begin
  Try
    Modulo.tListado_Clientes.Open;
    If Modulo.tListado_Clientes.RecordCount > 0 Then
      ReportsAndForms.ReporteClientes.Print
    Else
      PopupMessage(ModuloGenerales.Mensajes,_NoPrintData)
  Finally
    Modulo.tListado_Clientes.Close
  End
end;

procedure TFMainMenuLite.Rep_Cuadre_CajaExecute(Sender: TObject);
begin
  Granted := False;
  ModuloGenerales.Autorizar_Opcion(Self,self.Name);
  If (Not Granted) Then Raise Exception.Create(_ErrAccesoDenegadoOpcion);
  OpenForm(TFCuadre_Caja,FCuadre_Caja)
end;

procedure TFMainMenuLite.Retiros_CajaExecute(Sender: TObject);
begin
  OpenForm(TFRetiros_Caja,FRetiros_Caja)
end;

procedure TFMainMenuLite.Cuentas_CobrarExecute(Sender: TObject);
begin
  OpenForm(TFCtas_Cobrar,FCtas_Cobrar);
  CloseAllDbs
end;

procedure TFMainMenuLite.Mercancia_CompradaExecute(Sender: TObject);
begin
  Try
    Application.CreateForm(TFCriterioRepVendida,FCriterioRepVendida);
    FCriterioRepVendida.Caption := 'Criterio para Reporte de Mercancía Comprada';
    FCriterioRepVendida.ShowModal;
    If FCriterioRepVendida.ModalResult = MrOk Then
      Begin
         ReportsAndForms.Usuario.Caption := 'Impreso Por ' + _CurrentUser;
         Modulo.tFabricante.Open;

         ReportsAndForms.Usuario_Comprada.Caption  := FCriterioRepVendida.SeleccionUsuario;
         ReportsAndForms.Producto_Comprada.Caption := FCriterioRepVendida.SeleccionProducto;
         ReportsAndForms.Depto_Comprada.Caption    := FCriterioRepVendida.SeleccionDepartamento;

         Application.CreateForm (TDlgFecha,DlgFecha);
         DlgFecha.Caption := 'Reporte de Mercancía Comprada Por Fecha :';
         DlgFecha.ShowModal;
         If DlgFecha.ModalResult = MROk Then
           Begin
             Modulo.tReporter.CommandText := Format(_SelectDetCompras,[FCriterioRepVendida.CriterioUsuario,
                                                                       FCriterioRepVendida.CriterioDepartamento,
                                                                       FCriterioRepVendida.CriterioProducto,
                                                                       FCriterioRepVendida.CriterioTipoProducto]);

             Modulo.tReporter.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
             Modulo.tReporter.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;
             Modulo.tReporter.Open;
             ReportsAndForms.Pipe_Mercancia_Comprada.DataSource := Modulo.dReporter;

             ReportsAndForms.DelAlComprada.Caption := Format('Reporte de Mercancía Comprada del %s al %s',
                                                     [DateToStr(DlgFecha.Inicio.Date),
                                                      DateToStr(DlgFecha.Fin.Date)]);

             If (Modulo.tReporter.RecordCount > 0) Then ReportsAndForms.InventarioComprado.Print
             Else Mensaje(_NoPrintData,Self)
           End {If}
      End {If}
  Finally
    DlgFecha.Free;
    FCriterioRepVendida.Free;
    Modulo.tReporter.Close;
    Modulo.tListadoProductos.Close
  End {Try}
end;

procedure TFMainMenuLite.Mercancia_DespachadaExecute(Sender: TObject);
begin
  Try
    Application.CreateForm(TFCriterioRepVendida,FCriterioRepVendida);
    FCriterioRepVendida.Caption := 'Criterio para Reporte de Mercancía Despachada';
    FCriterioRepVendida.ShowModal;
    If FCriterioRepVendida.ModalResult = MrOk Then
      Begin
         ReportsAndForms.Usuario.Caption := 'Impreso Por ' + _CurrentUser;
         Modulo.tFabricante.Open;

         ReportsAndForms.Usuario_Despachada.Caption  := FCriterioRepVendida.SeleccionUsuario;
         ReportsAndForms.Producto_Despachada.Caption := FCriterioRepVendida.SeleccionProducto;
         ReportsAndForms.Depto_Despachada.Caption    := FCriterioRepVendida.SeleccionDepartamento;

         Application.CreateForm (TDlgFecha,DlgFecha);
         DlgFecha.Caption := 'Reporte de Mercancía Despachada Por Fecha :';
         DlgFecha.ShowModal;
         If DlgFecha.ModalResult = MROk Then
           Begin
             Modulo.tReporter.CommandText := Format(_SelectDetSalidas,[FCriterioRepVendida.CriterioUsuario,
                                                                        FCriterioRepVendida.CriterioDepartamento,
                                                                        FCriterioRepVendida.CriterioProducto,
                                                                        FCriterioRepVendida.CriterioTipoProducto]);
             Modulo.tReporter.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
             Modulo.tReporter.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;
             Modulo.tReporter.Open;
             ReportsAndForms.Pipe_Mercancia_Despachada.DataSource := Modulo.dReporter;

             ReportsAndForms.DelAl_Salida.Caption := Format('Reporte de Mercancía Despachada del %s al %s',
                                                     [DateToStr(DlgFecha.Inicio.Date),
                                                      DateToStr(DlgFecha.Fin.Date)]);

             If (Modulo.tReporter.RecordCount > 0) Then ReportsAndForms.InventarioDespachado.Print
             Else Mensaje(_NoPrintData,Self)
           End {If}
      End {If}
  Finally
    DlgFecha.Free;
    FCriterioRepVendida.Free;
    Modulo.tReporter.Close;
    Modulo.tListadoProductos.Close
  End {Try}
end;

procedure TFMainMenuLite.Mercancia_Despachada_ClienteExecute(Sender: TObject);
  Var
    R : Integer;
    S : String;
begin
  Try
  S := DoSearch(Nil,
                'Clientes',                                    (* TableName *)
                'SrchPr',                                      (* Provider *)
                Modulo.tClientesCedula_Rnc_Pasaporte.FieldName,(* CampoClave *)
                Modulo.tClientesNombreCompleto.FieldName,      (* CampoInicial *)
                '',                                            (* AltQry *)
                Modulo.Enlace,                                 (* RemoteServer *)
                'A',                                           (* SortOrder *)
                -1,                                            (* Packet Records *)
                wsMaximized,
                R);
    If R = MrOk Then
      Begin
        Modulo.tClientes.Open;
        ParamSearchKey(Modulo.tClientes,'Cedula_Rnc_Pasaporte',S);
        Application.CreateForm (TDlgFecha,DlgFecha);
        DlgFecha.Caption := 'Reporte de Mercancía Despachada Por Fecha :';
        DlgFecha.ShowModal;
        If DlgFecha.ModalResult = MROk Then
          Begin
             Modulo.tSalidas_Cliente.Close;
             Modulo.tSalidas_Cliente.Params.ParamByName('Cliente').AsString := S;
             Modulo.tSalidas_Cliente.Open;

             Modulo.tMercancia_Desp_Cliente.Params.ParamByName('Cliente').AsString := S;
             Modulo.tMercancia_Desp_Cliente.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
             Modulo.tMercancia_Desp_Cliente.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;
             Modulo.tMercancia_Desp_Cliente.Open;

             ReportsAndForms.DelAlMDespCliente.Caption := Format('Reporte de Mercancía Despachada del %s al %s',
                                                         [DateToStr(DlgFecha.Inicio.Date),
                                                          DateToStr(DlgFecha.Fin.Date)]);

             If (Modulo.tMercancia_Desp_Cliente.RecordCount > 0) Then ReportsAndForms.Mercancia_Despachada_Cliente.Print
             Else Mensaje(_NoPrintData,Self)
          End {If}
      End {If}
  Finally
    Modulo.tClientes.Close;
    DlgFecha.Free;
    Modulo.tSalidas_Cliente.Close;
    Modulo.tMercancia_Desp_Cliente.Close;
    Modulo.tListadoProductos.Close
  End {Try}
end;

procedure TFMainMenuLite.Mercancia_Vendida_ClienteExecute(Sender: TObject);
  Var
    R : Integer;
    S : String;
begin
  Try
  S := DoSearch(Nil,
                'Clientes',                                    (* TableName *)
                'SrchPr',                                      (* Provider *)
                Modulo.tClientesCedula_Rnc_Pasaporte.FieldName,(* CampoClave *)
                Modulo.tClientesNombreCompleto.FieldName,      (* CampoInicial *)
                '',                                            (* AltQry *)
                Modulo.Enlace,                                 (* RemoteServer *)
                'A',                                           (* SortOrder *)
                -1,                                            (* Packet Records *)
                wsMaximized,
                R);
    If R = MrOk Then
      Begin
        Modulo.tClientes.Open;
        ParamSearchKey(Modulo.tClientes,'Cedula_Rnc_Pasaporte',S);
        Application.CreateForm (TDlgFecha,DlgFecha);
        DlgFecha.Caption := 'Reporte de Mercancía Despachada Por Fecha :';
        DlgFecha.ShowModal;
        If DlgFecha.ModalResult = MROk Then
          Begin
             Modulo.tFacturas_Cliente.Close;
             Modulo.tFacturas_Cliente.Params.ParamByName('Cliente').AsString := S;
             Modulo.tFacturas_Cliente.Open;

             Modulo.tMercancia_Cliente.Params.ParamByName('Cliente').AsString := S;
             Modulo.tMercancia_Cliente.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
             Modulo.tMercancia_Cliente.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;
             Modulo.tMercancia_Cliente.Open;

             ReportsAndForms.DelAlMCliente.Caption := Format('Reporte de Mercancía Vendida del %s al %s',
                                                     [DateToStr(DlgFecha.Inicio.Date),
                                                      DateToStr(DlgFecha.Fin.Date)]);

             If (Modulo.tMercancia_Cliente.RecordCount > 0) Then ReportsAndForms.Mercancia_Cliente.Print
             Else Mensaje(_NoPrintData,Self)
          End {If}
      End {If}
  Finally
    Modulo.tClientes.Close;
    DlgFecha.Free;
    Modulo.tFacturas_Cliente.Close;
    Modulo.tMercancia_Cliente.Close;
    Modulo.tListadoProductos.Close
  End {Try}
end;

procedure TFMainMenuLite.FormActivate(Sender: TObject);
begin
//  Modulo.ColorConfig.Color := SuiMainMenu.Color;
//  Modulo.ColorConfig.Color := Color - 5;
end;

procedure TFMainMenuLite.Importar_DatosExecute(Sender: TObject);
begin
  OpenForm(TFImportar,FImportar)
end;

procedure TFMainMenuLite.Informacion_LaboralExecute(Sender: TObject);
Begin
  Try
    ModuloNomina.tListado_Laboral.Close;
    Application.CreateForm(TFCriterioDepartamento,FCriterioDepartamento);
    FCriterioDepartamento.Caption := 'Criterio para Información Laboral';
    FCriterioDepartamento.ShowModal;
    If FCriterioDepartamento.ModalResult = MrOk Then
      Begin
        ModuloNomina.tListado_Laboral.Params.ParamByName('Compania').AsInteger := FCriterioDepartamento.SeleccionCompania;
        ModuloNomina.tListado_Laboral.Params.ParamByName('Departamento').AsInteger := FCriterioDepartamento.SeleccionDepartamento;
        ModuloNomina.tListado_Laboral.Open;

        PayRoll_Forms.Compania_Informacion_Laboral.Caption := FCriterioDepartamento.NombreCompania;
        PayRoll_Forms.Departamento_Informacion_Laboral.Caption := FCriterioDepartamento.NombreDepartamento;

        If (ModuloNomina.tListado_Laboral.RecordCount > 0) Then PayRoll_Forms.ListadoLaboral.Print
        Else Mensaje(_NoPrintData,Self)
      End {If}
  Finally
    FCriterioDepartamento.Free;
    ModuloNomina.tListado_Laboral.Close
  End {Try}
end;

procedure TFMainMenuLite.Informe_Salida_InventarioExecute(Sender: TObject);
begin
  Application.CreateForm(TDlgFecha,DlgFecha);
  DlgFecha.ShowModal;
  If DlgFecha.ModalResult = MrOk Then
    Begin

      Modulo.tReporter.CommandText := _SelectSalidasByDate;
      Modulo.tReporter.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
      Modulo.tReporter.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;

      ReportsAndForms.Clasificacion_Sal_Cliente.Caption := Format('Reporte de Salidas de Inventario del %s al %s',[DateToStr(DlgFecha.Inicio.Date),DateToStr(DlgFecha.Fin.Date)]);

      Modulo.tReporter.Open;

      ReportsAndForms.PipeSalida.DataSource := Modulo.dReporter;

        If (Modulo.tReporter.RecordCount > 0) Then

        ReportsAndForms.Reporte_Salidas_Cliente.Print
      Else Mensaje (_NoPrintData,Self);
      Modulo.tReporter.Close;
    End;
  DlgFecha.Free;
  ReportsAndForms.PipeSalida.DataSource := Modulo.dSalidas_Inventario;
  Modulo.tReporter.Filter := '';
  Modulo.tReporter.Filtered := False
end;

procedure TFMainMenuLite.Informe_Ventas_TipoMonedaExecute(Sender: TObject);
begin
  Application.CreateForm(TDlgFecha,DlgFecha);
  DlgFecha.ShowModal;
  If DlgFecha.ModalResult = MrOk Then
    Begin

      Modulo.tReporter.CommandText := _SelectInvoicesByDate;
      Modulo.tReporter.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
      Modulo.tReporter.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;
      Modulo.tReporter.IndexFieldNames := 'Moneda';
      ReportsAndForms.Clasificacion_Fact_Moneda.Caption := Format('Reporte de Facturas del %s al %s',[DateToStr(DlgFecha.Inicio.Date),DateToStr(DlgFecha.Fin.Date)]);

      Modulo.tReporter.Open;

      ReportsAndForms.Pipe_Facturas.DataSource := Modulo.dReporter;

      If (Modulo.tReporter.RecordCount > 0) Then

      ReportsAndForms.Reporte_Facturas_Moneda.Print
      Else Mensaje (_NoPrintData,Self);
      Modulo.tReporter.Close;
    End;
  DlgFecha.Free;
  ReportsAndForms.Pipe_Facturas.DataSource := Modulo.dFacturas;
  Modulo.tReporter.IndexFieldNames := '';
  Modulo.tReporter.Filter := '';
  Modulo.tReporter.Filtered := False
end;

procedure TFMainMenuLite.InscripcionesExecute(Sender: TObject);
begin
  OpenForm(TFInscripciones,FInscripciones);
  CloseAllDbs
end;

procedure TFMainMenuLite.Libro_MayorExecute(Sender: TObject);
begin
  Try
    Application.CreateForm(TFCriterioLibroMayor,FCriterioLibroMayor);
    FCriterioLibroMayor.Caption := 'Criterio para Reporte de Libro Mayor';
    FCriterioLibroMayor.ShowModal;
    If FCriterioLibroMayor.ModalResult = MrOk Then
      Begin
         Application.CreateForm (TDlgFecha,DlgFecha);
         DlgFecha.Caption := 'Reporte de Libro Mayor :';
         DlgFecha.ShowModal;
         If DlgFecha.ModalResult = MROk Then
           Begin
             ModuloContabilidad.tMayor.Params.ParamByName('Numero_Cuenta').AsString := FCriterioLibroMayor.SeleccionCuenta;
             ModuloContabilidad.tMayor.Params.ParamByName('Control').AsString := FCriterioLibroMayor.SeleccionCuenta;
             ModuloContabilidad.tMayor.Params.ParamByName('Principal').AsString := FCriterioLibroMayor.SeleccionCuenta;

             ModuloContabilidad.tMayor.Params.ParamByName('Fecha_Inicio').AsDate := DlgFecha.Inicio.Date;
             ModuloContabilidad.tMayor.Params.ParamByName('Fecha_Fin').AsDate := DlgFecha.Fin.Date;
             ModuloContabilidad.tMayor.Open;

             AccountingForms.Cuenta_Mayor.Caption := FCriterioLibroMayor.NombreCuenta;
             AccountingForms.Origen_Mayor.AsString := FCriterioLibroMayor.OrigenCuenta;

             AccountingForms.Fecha_Mayor.Caption := Format('del %s al %s',
                                                     [DateToStr(DlgFecha.Inicio.Date),
                                                      DateToStr(DlgFecha.Fin.Date)]);


             If (ModuloContabilidad.tMayor.RecordCount > 0) Then AccountingForms.Form_Mayor.Print
             Else Mensaje(_NoPrintData,Self)
           End {If}
      End {If}
  Finally
    FCriterioLibroMayor.Free;
    DlgFecha.Free;
    ModuloContabilidad.tMayor.Close
  End {Try}
end;

procedure TFMainMenuLite.Listado_GastosExecute(Sender: TObject);
begin
  Application.CreateForm(TDlgFecha,DlgFecha);
  DlgFecha.ShowModal;
  If DlgFecha.ModalResult = MrOk Then
    Begin
      Modulo.tReporter.CommandText := _SelectExpensesByDate;
      Modulo.tReporter.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
      Modulo.tReporter.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;

      ReportsAndForms.Clasificacion_Gastos.Caption := Format('Reporte de Gastos del %s al %s',[DateToStr(DlgFecha.Inicio.Date),DateToStr(DlgFecha.Fin.Date)]);

      Modulo.tReporter.Open;

      ReportsAndForms.pipe_Listado_Gastos.DataSource := Modulo.dReporter;

      If (Modulo.tReporter.RecordCount > 0) Then
        ReportsAndForms.Reporte_Gastos.Print
      Else Mensaje (_NoPrintData,Self);
      Modulo.tReporter.Close;
    End;
  DlgFecha.Free;
  ReportsAndForms.pipe_Listado_Gastos.DataSource := Modulo.dRegistro_Gastos;
  Modulo.tReporter.Filter := '';
  Modulo.tReporter.Filtered := False
end;

procedure TFMainMenuLite.Listado_Trabajos_Fecha_EntregaExecute(Sender: TObject);
Begin
  Application.CreateForm(TDlgFecha,DlgFecha);
  DlgFecha.ShowModal;
  If DlgFecha.ModalResult = MrOk Then
    Begin

      Modulo.tReporter.CommandText := _SelectInvoicesByCloseDate;
      Modulo.tReporter.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
      Modulo.tReporter.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;

      ReportsAndForms.Clasificacion_Listado_Trabajo.Caption := Format('Reporte de Trabajos para Entrega entre el %s y %s',[DateToStr(DlgFecha.Inicio.Date),DateToStr(DlgFecha.Fin.Date)]);

      Modulo.tReporter.Open;

      ReportsAndForms.Pipe_Facturas.DataSource := Modulo.dReporter;

        If (Modulo.tReporter.RecordCount > 0) Then

        ReportsAndForms.Reporte_Listado_Trabajos.Print
      Else Mensaje (_NoPrintData,Self);
      Modulo.tReporter.Close;
    End;
  DlgFecha.Free;
  ReportsAndForms.Pipe_Facturas.DataSource := Modulo.dFacturas;
  FCriterio_Rep_Facturas.Free;
  Modulo.tReporter.Filter := '';
  Modulo.tReporter.Filtered := False
end;

procedure TFMainMenuLite.Login(Sender: TObject);
  Var
    Open_Cash : Boolean;
    UsuarioApertura : String;
begin
  Try
    RegInfo.CloseKey;
    RegInfo.OpenKey(_CompanyInfoKey,False);

    Open_Cash := RegInfo.ReadBool(_OpenCash);

    OpenForm(TFUser_Login,FUser_Login);

    If Not Granted Then Exit;

    {Activar Los Permisos del Usuario}
    ActivateOptions(Self,_CurrentLevel,ModuloGenerales.tAccesos);
    Cambio_Usuario.Enabled := True;
    _CurrentApertura := '_NO_';

    Case ValidarApertura(_CurrentTerminal,_CurrentUser,_CurrentApertura,UsuarioApertura) Of
      0 : Begin
            Modulo.SetCashParams(_CurrentUser,_CurrentTerminal,'-*-',True);
            Modulo.tApertura_Caja.Open;
            If Open_Cash Then
              Begin
                Modulo.tApertura_Caja.Append;
                Modulo.tApertura_CajaProceso.Value := Gen_ProcessNumber(_CurrentUser);
                Modulo.tApertura_CajaUsuario.Value := _CurrentUser;
                Modulo.tApertura_CajaFecha.Value := Modulo.Enlace.AppServer.ServerDate;
                Modulo.tApertura_CajaHora.Value := Modulo.Enlace.AppServer.ServerTime;
                Modulo.tApertura_CajaUsuario_Cuadre.Value := _CurrentUser;

                {Detalles}
                Try
                  Modulo.tFormas_Pago.Open;
                  Modulo.tFormas_Pago.IndexFieldNames := 'Numero';
                  Modulo.tFormas_Pago.First;
                  While Not Modulo.tFormas_Pago.Eof Do
                    Begin
                      Case Modulo.tFormas_PagoEs_Efectivo.Value Of
                         True : Begin
                                  Modulo.tDenominaciones.First;
                                  While Not Modulo.tDenominaciones.Eof Do
                                    Begin
                                      If Not Modulo.tDetalle_Apertura.Locate(Modulo.tDetalle_AperturaMoneda.FieldName+';'+Modulo.tDetalle_AperturaDenominacion.FieldName,
                                                                           VarArrayOf([Modulo.tDenominacionesDescripcion.Value,Modulo.tDenominacionesDenominacion.Value]),
                                                                           []) Then
                                        Modulo.tDetalle_Apertura.Append
                                      Else
                                        Modulo.tDetalle_Apertura.Edit;

                                      Modulo.tDetalle_AperturaEfectivo.Value := True;
                                      Modulo.tDetalle_AperturaMoneda.Value := Modulo.tDenominacionesDescripcion.Value;
                                      Modulo.tDetalle_AperturaDenominacion.Value := Modulo.tDenominacionesDenominacion.Value;
                                      Modulo.tDetalle_AperturaTipo.Value := 'D';
                                      Modulo.tDetalle_Apertura.Post;
                                      Modulo.tDenominaciones.Next;
                                    End; {While}
                                End; {True}
                      End; {Case}
                      Modulo.tFormas_Pago.Next;
                    End;{While}
                Finally
                  Modulo.tDetalle_Apertura.First;

                  Modulo.tFormas_Pago.Close;

                  Modulo.SetCashParams(_CurrentUser,_CurrentTerminal,'-*-',True);
                End;
                OpenForm (TFApertura_Caja,FApertura_Caja);
              End;
            Modulo.tApertura_Caja.Close;
          End;

      2 : Begin
            _CurrentApertura := '_NO_';
            Mensaje ('Esta terminal está APERTURADA para el usuario : ' + UsuarioApertura +
                     #13'se debe CUADRAR/CERRAR esta apertura ANTES de realizar una apertura para otro usuario'#13+
                     'Por Favor, VERIFIQUE',self);
          End;
    End;
  Finally
    Modulo.NotiticationSet(Notificaciones);
  End;
end;

procedure TFMainMenuLite.Directorio_EmpleadosExecute(Sender: TObject);
begin
  ModuloNomina.tListado_Laboral.Params.ParamByName('Compania').AsInteger := ModuloNomina.tCompaniaNumero_Compania.AsInteger;
  ModuloNomina.tListado_Laboral.Params.ParamByName('Departamento').AsInteger := ModuloNomina.tDepartamentosNumero.AsInteger;
  ModuloNomina.tListado_Laboral.Open;

  ModuloNomina.tListado_Empleados.Open;
  If (ModuloNomina.tListado_Empleados.RecordCount > 0) Then PayRoll_Forms.ListadoEmpleados.Print
  Else Mensaje(_NoPrintData,Self)
end;

procedure TFMainMenuLite.Pagos_FechaExecute(Sender: TObject);
begin
  Application.CreateForm(TDlgFecha,DlgFecha);
  DlgFecha.ShowModal;
  If DlgFecha.ModalResult = MrOk Then
    Try
      Modulo.tReporter.Close;
      Modulo.tReporter.CommandText := 'Select P.*, T."Numero" "Numero_Factura"  From "Pagos_Clientes" P ' +
                                      'LEFT JOIN "Facturas" T ON T."Proceso" = P."Factura" ' +
                                      'Where P."Fecha" Between :F1 And :F2 Order By P."Numero"';

      Modulo.tReporter.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
      Modulo.tReporter.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;
      Modulo.tReporter.Open;
      Modulo.tListado_Clientes.Open;
      ReportsAndForms.PipePagos.DataSource := Modulo.dReporter;

      ReportsAndForms.TitPagos.Caption := Format('Reporte de Pagos Recibidos Entre el %s y el %s',
                                                 [DateToStr(DlgFecha.Inicio.Date),DateToStr(DlgFecha.Fin.Date)]);
      If Modulo.tReporter.RecordCount > 0 Then
        ReportsAndForms.ReportePagos.Print
      Else
        PopupMessage(ModuloGenerales.Mensajes,_NoPrintData)
    Finally
      ReportsAndForms.PipePagos.DataSource := Modulo.dPagos_Clientes;
      Modulo.tListado_Clientes.Close;
      Modulo.tReporter.Close
    End; {Try}
    DlgFecha.Free;
end;

procedure TFMainMenuLite.Paises_Ciudades_Sectores_ZonasExecute(Sender: TObject);
begin
  OpenForm(TfrmPaises_Ciudades_Sectores_Zonas,frmPaises_Ciudades_Sectores_Zonas);
  CloseAllDbs
end;

procedure TFMainMenuLite.ReagruparExecute(Sender: TObject);
  Var
    Grupo : Integer;
begin
  Application.CreateForm(TFTimerMessage,FTimerMessage);
  FTimerMessage.Titulo.Caption := 'Actualizando Información de Grupos de Nómina';
  FTimerMessage.Linea1.Caption := _MuchoTiempo;
  FTimerMessage.Linea2.Caption := _Espere;

  ModuloNomina.tListado_Grupo_Nomina.Open;
  ModuloNomina.tListado_Empleados.Open;
  ModuloNomina.tListado_Empleados.First;
  ModuloNomina.tEmpleados.AfterEdit := Nil;

  FTimerMessage.Indicador.MaxValue := ModuloNomina.tListado_Empleados.RecordCount;
  FTimerMessage.Indicador.Progress := 0;
  FTimerMessage.Show;
  FTimerMessage.Refresh;

  While Not ModuloNomina.tListado_Empleados.Eof Do
    Begin
      ModuloNomina.tEmpleados.Params.ParamByName('Cedula_Rnc_Pasaporte').AsString := Trim(ModuloNomina.tListado_EmpleadosCedula_Rnc_Pasaporte.AsString);
      ModuloNomina.tEmpleados.Open;
      ModuloNomina.tInformacion_Laboral.First;
      While Not ModuloNomina.tInformacion_Laboral.Eof Do
        Begin
          ModuloNomina.tInformacion_Laboral.Edit;
          Grupo := ModuloNomina.tInformacion_LaboralGrupo_Deducciones.Value;
          ModuloNomina.tListado_Grupo_Nomina.Locate(ModuloNomina.tListado_Grupo_NominaNumero.FieldName,Grupo,[]);
          ModuloNomina.tInformacion_LaboralGrupo_Deducciones.Value := Grupo;
          ModuloNomina.tInformacion_Laboral.Next
        End;
      ModuloNomina.tEmpleados.Post;
      ModuloNomina.tEmpleados.ApplyUpdates(0);
      ModuloNomina.tEmpleados.Close;
      ModuloNomina.tListado_Empleados.Next;
      FTimerMessage.Indicador.AddProgress(1);
      FTimerMessage.Refresh
    end;
  FTimerMessage.Free;
  ModuloNomina.tEmpleados.AfterEdit := ModuloNomina.EditReminder;
  ModuloNomina.tListado_Empleados.Close;
  ModuloNomina.tListado_Grupo_Nomina.Close
end;

Initialization
  RegisterClass(TFMainMenuLite);
  
end.
