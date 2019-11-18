unit MainFormLite;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ActnList, XPStyleActnCtrls, ActnMan,
  ToolWin, ActnCtrls, StdStyleActnCtrls, ActnMenus, ExtCtrls, StdCtrls,
  Grids, jpeg, AdvPageControl, Db, DbClient, 
  ComCtrls, TeEngine, Series, TeeProcs, Chart, DbChart, RegKeys, DateUtils,
  WinSkinData, ExtDlgs, Mask, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxPC;

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
    Retiros_Caja: TAction;
    Facturas_Pendiente_Pago: TAction;
    Impuestos_Pagados_Compra: TAction;
    Impuestos_Cobrados_Ventas: TAction;
    Historial_Compras: TAction;
    Mercancia_Comprada: TAction;
    Card: TImage;
    Label1: TLabel;
    Opciones_Pantalla: TAdvPageControl;
    Botones: TAdvTabSheet;
    OpcionesBotones: TActionToolBar;
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
    Reimprimir_Cuadre: TAction;
    Reimprimir_Apertura: TAction;
    Cambio_Usuario: TAction;
    chkExistencia: TTimer;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    pcExistencia: TcxPageControl;
    pcMinimo_Agotados: TcxTabSheet;
    pcMaximo: TcxTabSheet;
    PrdMinimo: TcxGrid;
    PrdMinimoDBTableView: TcxGridDBTableView;
    PrdMinimoDBTableViewCodigo: TcxGridDBColumn;
    PrdMinimoDBTableViewDescripcion: TcxGridDBColumn;
    PrdMinimoDBTableViewMinimo: TcxGridDBColumn;
    PrdMinimoDBTableViewExistencia: TcxGridDBColumn;
    PrdMinimoLevel: TcxGridLevel;
    Rep_Prod_SobreMaximo: TAction;
    PrdMaximo: TcxGrid;
    PrdMaximoDBTableView: TcxGridDBTableView;
    PrdMaximoLevel: TcxGridLevel;
    PrdMaximoDBTableViewCodigo: TcxGridDBColumn;
    PrdMaximoDBTableViewDescripcion: TcxGridDBColumn;
    PrdMaximoDBTableViewExistencia: TcxGridDBColumn;
    PrdMaximoDBTableViewMaximo: TcxGridDBColumn;
    Listado_Precios: TAction;
    LayAwayActivos: TAction;
    Reporte_Devoluciones: TAction;
    Conteo_Inventario: TAction;
    Informe_Ventas_Detallado: TAction;
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
    procedure Entrada_DiarioExecute(Sender: TObject);
    procedure Configuracion_ContabilidadExecute(Sender: TObject);
    procedure Cuentas_ContablesExecute(Sender: TObject);
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
    procedure Nomina_RegaliaExecute(Sender: TObject);
    procedure ReagruparExecute(Sender: TObject);
    procedure Generar_NominaExecute(Sender: TObject);
    procedure Grupos_NominaExecute(Sender: TObject);
    procedure Pagos_IncentivosExecute(Sender: TObject);
    procedure DeduccionesExecute(Sender: TObject);
    procedure EmpleadosExecute(Sender: TObject);
    procedure CompaniasExecute(Sender: TObject);
    procedure Departamentos_NominaExecute(Sender: TObject);
    procedure Entradas_Horas_DiariasExecute(Sender: TObject);
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
    procedure Registro_GastosExecute(Sender: TObject);
    procedure Listado_GastosExecute(Sender: TObject);
    procedure Listado_Trabajos_Fecha_EntregaExecute(Sender: TObject);
    procedure Acuerdos_TrabajoExecute(Sender: TObject);
    procedure Reporte_Acuerdos_TrabajoExecute(Sender: TObject);
    procedure Informe_Ventas_TipoMonedaExecute(Sender: TObject);
    procedure Resumen_OperacionesExecute(Sender: TObject);
    procedure Cambio_UsuarioExecute(Sender: TObject);
    procedure Login(Sender: TObject);
    procedure Rep_Prod_AgotadosExecute(Sender: TObject);
    procedure Rep_Prod_EnMinimoExecute(Sender: TObject);
    procedure chkExistenciaTimer(Sender: TObject);
    procedure PrdMinimoDBTableViewDblClick(Sender: TObject);
    procedure Rep_Prod_SobreMaximoExecute(Sender: TObject);
    procedure PrdMaximoDBTableViewDblClick(Sender: TObject);
    procedure Listado_PreciosExecute(Sender: TObject);
    procedure Reimprimir_CuadreExecute(Sender: TObject);
    procedure Reimprimir_AperturaExecute(Sender: TObject);
    procedure LayAwayActivosExecute(Sender: TObject);
    procedure Devoluciones_VentasExecute(Sender: TObject);
    procedure Reporte_DevolucionesExecute(Sender: TObject);
    procedure Conteo_InventarioExecute(Sender: TObject);
    procedure Informe_Ventas_DetalladoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure CloseAllDbs;
    procedure tReporterCalcFields(DataSet: TDataSet);
    function ValidarApertura(Const Terminal, Usuario  : String; Var Actual,ActUsuario : String) : Byte;
  end;

var
  FMainMenuLite: TFMainMenuLite;

implementation

uses Utilidades, ConfigForm, Productos, Departamentos, Categorias,
  Tipos_Productos, Status, Fabricantes, Proveedores, Terminos, DataModulo,
  Salidas_Inventario, Compra_Productos, Formas_Pago, Facturacion, Bancos,
  Reports_Forms, DialogoDeptos, Criterio_Vencimientos, Criterio_Etiquetas,
  DlgFechas, Venta_Caja, Seleccionar_Usuario, Reportar_Productos,
  Seleccionar_Departamento, Opciones, Niveles, User_Login, Usuarios,
  Cuadre_Caja, Apertura_Caja, Retiros_Caja,
  CtasCobrar, DialogoVendidas, Importar, NotasCredito, clientes, Generales,
  Orden_Compra_Productos, Vendedores, Cuentas, AccountConfigForm, Transacciones,
  DataModuloContabilidad, Acc_Forms, DialogoMayor, PayRollConfigForm,
  Companias, Deducciones, Grupos_Nomina, Pagos_Incentivos, TimerMessage,
  DataNomina, Empleados, Diario, Generar_Nomina, ESBDates, Regalia,
  Departamentos_Empleados, PayRollForms, DialogoDepartamento,
  Criterio_Rep_Facturas, Criterio_Rep_Facturas_NCF, SkinGraphic,
  NotasDebito, CancelarCtasCobrar, Compras_Seriales, Seriales_Productos,
  Facturas_Seriales, Seriales_Productos_Facturados, Ajuste_Inventario,
  Autorizar, Balance_Clientes, Cotizaciones, Registro_Gastos,
  Acuerdos, ResumeOperaciones, Splash, Modificar_Precio, DotmatrX,
  Paises_Ciudades_Sectores_ZonasUnit, TerminalesUnit, Devoluciones_Ventas,
  Conteo_Inventario, exportar_facturas_unit;

{$R *.dfm}

procedure TFMainMenuLite.CloseAllDbs;
  Begin
    CloseDbs(Modulo);
    CloseDbs(ModuloGenerales);
    {Abrir la Tabla de Parametros}
    Modulo.TParametros.Params.ParamByName('Terminal').AsString := _CurrentTerminal;
    Modulo.TParametros.Open;
    chkExistenciaTimer(chkExistencia);
  End;

procedure TFMainMenuLite.FormCreate(Sender: TObject);
  Var
    I : Integer;
begin
  If _Load_Create Then
    Begin
      If Assigned(FSplash) Then FSplash.Free;
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
      Card.Width := RegInfo.ReadInteger(_BackgroundWidth);
      Card.Picture.LoadFromFile(UnEncrypt(RegInfo.ReadString(_UserCard)));
      Card.Visible := RegInfo.ReadBool(_LogoVisible);
      Card.Left := (Screen.Width - Card.Width) Div 2;
      Card.Height := RegInfo.ReadInteger(_BackgroundHeight);
      Card.Top := RegInfo.ReadInteger(_BackgroundPosY);

      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

      RegInfo.CloseKey;
      RegInfo.OpenKey(_GeneralConfigKey,False);

      Main_Skin.SkinFile:= RegInfo.ReadString(_MainSkin);

      Modulo.ColorConfig.Color := Color - 5;
      Main_Skin.Colors[csButtonFace] := Color;

      OpcionesBotones.ColorMap := Modulo.ColorConfig;
      Principal.ColorMap := Modulo.ColorConfig;

    //  Linea.Width := Screen.Width;
      WindowState := wsMaximized;

      Opciones_Pantalla.Top := (Screen.Height - Opciones_Pantalla.Height) - 100;

      Login(Sender);

      {Asigna a los Botones Los ShortCuts Del Menu y Action Lists}
      For I := 0 To (Self.ComponentCount - 1) Do
        Begin
          If (Self.Components[I] Is TAdvPageControl) Then
             (Self.Components[I] As TAdvPageControl).TabBackGroundColor := Self.Color;
        End;
    End;
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
    Card.Left := (Screen.Width - Card.Width) Div 2;
  Finally

  End;
end;

procedure TFMainMenuLite.Configuracion_NominaExecute(Sender: TObject);
begin
  OpenForm(TFPayrollConfig,FPayrollConfig)
end;

procedure TFMainMenuLite.Config_TerminalesExecute(Sender: TObject);
begin
  OpenForm(TfrmTerminales,frmTerminales)
end;

procedure TFMainMenuLite.Conteo_InventarioExecute(Sender: TObject);
begin
  OPenForm(TfrmConteo_Inventario,frmConteo_Inventario) ;
  CloseAllDbs;
end;

procedure TFMainMenuLite.CotizacionesExecute(Sender: TObject);
begin
  OpenForm(tFCotizaciones,FCotizaciones);
  CloseAllDbs
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

procedure TFMainMenuLite.Reimprimir_AperturaExecute(Sender: TObject);
  Var
    R            : Integer;
    S,U,T        : String;
    st           ,
    DoPreview    : Boolean;
    OutputFormat : ShortInt;
    PrintFormat  : ShortInt;
begin
  Try
    S := DoSearch(Nil,
                  'Apertura_Caja',                                 (* TableName *)
                  'SrchPr',                                        (* Provider *)
                  Modulo.tApertura_CajaProceso.FieldName,          (* CampoClave *)
                  Modulo.tApertura_CajaNumero.FieldName,           (* CampoInicial *)
                  '',                                              (* AltQry *)
                  Modulo.Enlace,                                   (* RemoteServer *)
                  'D',                                             (* SortOrder *)
                  -1,                                              (* Packet Records *)
                  wsMaximized,
                  R);

    If R = MrOk Then
      Begin
        Modulo.SetCashParams('','',S,False);
        Modulo.tApertura_Caja.Open;
        If Modulo.tApertura_Caja.RecordCount > 0 Then
          Begin
            RegInfo.CloseKey;
            RegInfo.OpenKey(_AperturaKey,False);

            DoPreview := True;
            OutputFormat := RegInfo.ReadInteger(_OutputFormat);
            PrintFormat := RegInfo.ReadInteger(_PrinterStyle);

            Case OutputFormat Of
              _Ticket : Begin
                          If DoPreview Then
                            Begin
                              Application.CreateForm(TPreviewForm,PreviewForm);
                              FApertura_Caja.ImprimirRecibo(_Screen);
                              PreviewForm.Vista.Lines.LoadFromFile(_PreviewFile);
                              PreviewForm.ShowModal;
                              If PreviewForm.ModalResult = MrOk Then DoPreview := False;
                              PreviewForm.Free
                            End; {If DoPreview}

                            If Not (DoPreview) Then FApertura_Caja.ImprimirRecibo(_Port);
                        End; // _Ticket

              _GraphicForm : Begin
                               RegInfo.CloseKey;
                               RegInfo.OpenKey(_AperturaKey,False);
                               With ReportsAndForms.FormApertura_Caja Do
                                 Begin
                                   Template.FileName := RegInfo.ReadString(_TemplateFileName);

                                   If (Trim(Template.FileName) <> _NoneStr) And (Trim(Template.FileName) <> '') Then
                                     Template.LoadFromFile;

                                   DeviceType                := DeviceTypes[True];
                                   ShowPrintDialog           := RegInfo.ReadBool(_ShowPrintDialog);
                                   PrinterSetup.Copies       := RegInfo.ReadInteger(_PrintCopies);
                                   PrinterSetup.PaperName    := RegInfo.ReadString(_PaperName);
                                   PrinterSetup.PaperHeight  := RegInfo.ReadFloat(_PaperHeight);
                                   PrinterSetup.PaperWidth   := RegInfo.ReadFloat(_PaperWidth);
                                   PrinterSetup.PrinterName  := RegInfo.ReadString(_PrinterName);
                                   PrinterSetup.MarginBottom := RegInfo.ReadFloat(_MarginBottom);
                                   PrinterSetup.MarginTop    := RegInfo.ReadFloat(_MarginTop);
                                   PrinterSetup.MarginLeft   := RegInfo.ReadFloat(_MarginLeft);
                                   PrinterSetup.MarginRight  := RegInfo.ReadFloat(_MarginRight);

                                   ReportsAndForms._Seccion  := _AperturaKey;

                                   Print
                                 End // With
                             End // _GraphicForm
            End; // Case

          End;
      End;
  Finally
    CloseAllDbs;
  End;
end;

procedure TFMainMenuLite.Reimprimir_CuadreExecute(Sender: TObject);
  Var
    R : Integer;
    S : String;
    DoPreview    : Boolean;
    OutputFormat : ShortInt;
    PrintFormat  : ShortInt;
begin
  Try
    S := DoSearch(Nil,
                  'Cuadre_Caja',                                      (* TableName *)
                  'SrchPr',                                        (* Provider *)
                  Modulo.tCuadre_CajaProceso.FieldName,               (* CampoClave *)
                  Modulo.tCuadre_CajaNumero_Cuadre.FieldName,                (* CampoInicial *)
                  '',                  (* AltQry *)
                  Modulo.Enlace,                                   (* RemoteServer *)
                  'D',                                             (* SortOrder *)
                  -1,                                              (* Packet Records *)
                  wsMaximized,
                  R);

    If R = MrOk Then
      Begin
        ParamSearchKey(Modulo.tCuadre_Caja,'Proceso',S);

        RegInfo.CloseKey;
        RegInfo.OpenKey(_Cuadre_CajaKey,False);

        DoPreview := RegInfo.ReadBool(_PreviewForm);
        OutputFormat := RegInfo.ReadInteger(_OutputFormat);
        PrintFormat := RegInfo.ReadInteger(_PrinterStyle);

        Case OutputFormat Of
          _Ticket : Begin
                      If DoPreview Then
                        Begin
                          Application.CreateForm(TPreviewForm,PreviewForm);
                          FCuadre_Caja.ImprimirRecibo(_Screen);
                          PreviewForm.Vista.Lines.LoadFromFile(_PreviewFile);
                          PreviewForm.ShowModal;
                          If PreviewForm.ModalResult = MrOk Then DoPreview := False;
                          PreviewForm.Free
                        End; {If DoPreview}

                        If Not (DoPreview) Then FCuadre_Caja.ImprimirRecibo(_Port);
                    End; // _Ticket

          _GraphicForm : Begin
                           RegInfo.CloseKey;
                           RegInfo.OpenKey(_Cuadre_CajaKey,False);
                           With ReportsAndForms.FormCuadre_Caja Do
                             Begin
                               Template.FileName := RegInfo.ReadString(_TemplateFileName);

                               If (Trim(Template.FileName) <> _NoneStr) And (Trim(Template.FileName) <> '') Then
                                 Template.LoadFromFile;

                               DeviceType                := DeviceTypes[True];
                               ShowPrintDialog           := RegInfo.ReadBool(_ShowPrintDialog);
                               PrinterSetup.Copies       := RegInfo.ReadInteger(_PrintCopies);
                               PrinterSetup.PaperName    := RegInfo.ReadString(_PaperName);
                               PrinterSetup.PaperHeight  := RegInfo.ReadFloat(_PaperHeight);
                               PrinterSetup.PaperWidth   := RegInfo.ReadFloat(_PaperWidth);
                               PrinterSetup.PrinterName  := RegInfo.ReadString(_PrinterName);
                               PrinterSetup.MarginBottom := RegInfo.ReadFloat(_MarginBottom);
                               PrinterSetup.MarginTop    := RegInfo.ReadFloat(_MarginTop);
                               PrinterSetup.MarginLeft   := RegInfo.ReadFloat(_MarginLeft);
                               PrinterSetup.MarginRight  := RegInfo.ReadFloat(_MarginRight);

                               ReportsAndForms._Seccion  := _Cuadre_CajaKey;

                               Print
                             End // With
                         End // _GraphicForm
        End; // Case
      End
  Finally
    CloseAllDbs;
  End;
end;

procedure TFMainMenuLite.DepartamentosExecute(Sender: TObject);
begin
  OpenForm(TFDepartamentos,FDepartamentos);
  CloseAllDbs
end;

procedure TFMainMenuLite.Entrada_DiarioExecute(Sender: TObject);
begin
  OpenForm(TFTransacciones,FTransacciones)
end;

procedure TFMainMenuLite.Estado_Ingresos_GastosExecute(Sender: TObject);
begin
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

      ModuloContabilidad.tEstado_Ingresos_Gastos.Close
    End
end;

procedure TFMainMenuLite.Estado_SituacionExecute(Sender: TObject);
  Var
    Utilidad       ,
    Total_Ingresos ,
    Total_Gastos   : Currency;
begin
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

      ModuloContabilidad.tEstado_Situacion.Close;
      ModuloContabilidad.tIngresos.Close;
      ModuloContabilidad.tGastos.Close
    End
end;

procedure TFMainMenuLite.Cambio_UsuarioExecute(Sender: TObject);
begin
  Login(Sender);
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

procedure TFMainMenuLite.chkExistenciaTimer(Sender: TObject);
  Var
    Q : TClientDataSet;
begin

  pcExistencia.Visible := True;

  RegInfo.CloseKey;
  RegInfo.OpenKey(_CompanyInfoKey,True);
  Try
    If Not RegInfo.ReadBool('Alerta_Existencia') Then
      Begin
        pcExistencia.Visible := False;
        Exit;
      End;
  Except
    Exit;
  End;

  Try
    chkExistencia.Interval := 300000;
    Modulo.tShwMinimos.Close;
    Modulo.tShwMaximos.Close;
    pcMinimo_Agotados.Visible := False;
    pcMaximo.Visible := False;

    // En Minimo
    Q := TClientDataSet.Create(Self);
    Q.ConnectionBroker := Modulo.Concentrador;
    Q.ProviderName := 'SrchPr';
    Q.CommandText := 'Select * From "Productos" Where "Existencia" <= "Minimo" Order By "Descripcion"';
    Q.Open;
    If Q.RecordCount > 0 Then
      Begin
        Q.First;
        Modulo.tShwMinimos.CreateDataSet;
        While Not Q.Eof Do
          Begin
            Modulo.tShwMinimos.Append;
            Modulo.tShwMinimosCodigo.AsString := Q.FieldByName('Codigo').AsString;
            Modulo.tShwMinimosDescripcion.AsString := Q.FieldByName('Descripcion').AsString;
            Modulo.tShwMinimosMinimo.AsString := Q.FieldByName('Minimo').AsString;
            Modulo.tShwMinimosExistencia.AsString := Q.FieldByName('Existencia').AsString;
            Modulo.tShwMinimos.Post;
            Q.Next;
          End;
        PrdMinimoDBTableView.DataController.DataSource := Modulo.dShwMinimos;
        pcMinimo_Agotados.Visible := True;
      End;

    // Sober Maximo
    Q.Close;
    Q.CommandText := 'Select * From "Productos" Where "Existencia" >= "Maximo" Order By "Descripcion"';
    Q.Open;
    If Q.RecordCount > 0 Then
      Begin
        Q.First;
        Modulo.tShwMaximos.CreateDataSet;
        While Not Q.Eof Do
          Begin
            Modulo.tShwMaximos.Append;
            Modulo.tShwMaximosCodigo.AsString := Q.FieldByName('Codigo').AsString;
            Modulo.tShwMaximosDescripcion.AsString := Q.FieldByName('Descripcion').AsString;
            Modulo.tShwMaximosMaximo.AsString := Q.FieldByName('Maximo').AsString;
            Modulo.tShwMaximosExistencia.AsString := Q.FieldByName('Existencia').AsString;
            Modulo.tShwMaximos.Post;
            Q.Next;
          End;
        PrdMaximoDBTableView.DataController.DataSource := Modulo.dShwMaximos;
        pcMaximo.Visible := True;
      End;
  Finally
    Q.Close;
    Q.Free;
  End;
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

procedure TFMainMenuLite.PrdMaximoDBTableViewDblClick(Sender: TObject);
begin
  Rep_Prod_SobreMaximo.Execute;
end;

procedure TFMainMenuLite.PrdMinimoDBTableViewDblClick(Sender: TObject);
begin
  Rep_Prod_EnMinimo.Execute
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
  OpenForm(TFCompra_Productos,FCompra_Productos);
  CloseAllDbs
end;

procedure TFMainMenuLite.Formas_PagoExecute(Sender: TObject);
begin
  OpenForm(TFMetodos,FMetodos);
  CloseAllDbs
end;

procedure TFMainMenuLite.FacturacionExecute(Sender: TObject);
  Var
    UsuarioApertura : String;
begin
  case ValidarApertura(_CurrentTerminal,_CurrentUser,_CurrentApertura,UsuarioApertura) Of
    0 : Raise Exception.Create('No ha aperturado aun su caja'#13'Por Favor, Verifique');
    2 : Begin
          Mensaje ('Esta terminal está APERTURADA para el usuario : ' + UsuarioApertura +
                   #13'se debe CUADRAR/CERRAR esta apertura ANTES de realizar una apertura para otro usuario'#13+
                   'Por Favor, VERIFIQUE',self);

          Granted := False;
          ModuloGenerales.Autorizar_Opcion(Self,self.Name);
          If (Not Granted) Then Raise Exception.Create(_ErrAccesoDenegadoOpcion);
        End;
  end;

  OpenForm(TFFacturacion,FFacturacion);
  CloseAllDbs
end;

procedure TFMainMenuLite.Facturas_Pendiente_PagoExecute(Sender: TObject);
  Var
    R : Integer;
    S : String;
    P,D : TClientDataset;
    DP,DD : TDataSource;
begin
  Try
    Modulo.tReporter.CommandText := _SelectInvoicesUnPaid;
    ReportsAndForms.Clasificacion_Vt_Cliente.Caption := 'Reporte de Facturas Pendiente de Cobro' ;

    Modulo.tReporter.Open;
    Modulo.tDesgloceEfectivo.Filter := 'Es_Efectivo = False';
    Modulo.tDesgloceEfectivo.Filtered := True;
    Modulo.tDesgloceEfectivo.Open;

    ReportsAndForms.Pipe_Facturas.DataSource := Modulo.dReporter;

    // Pagos
    P := TClientDataSet.Create(Self);
    Dp := TDataSource.Create(Self);
    P.ConnectionBroker := Modulo.Concentrador;
    P.ProviderName := 'prListadoPagos';
    P.CommandText := 'Select * From "Pagos_Clientes"' +
                     'Where "Fecha" Between :F1 And :F2 Order By "Numero"';
    P.Open;
    DP.DataSet := P;
    ReportsAndForms.PipePagos.DataSource := DP;

    // Devoluciones
    D := TClientDataSet.Create(Self);
    DD := TDataSource.Create(Self);
    D.ConnectionBroker := Modulo.Concentrador;
    D.ProviderName := 'prDevoluciones';
    D.CommandText := 'Select * From "Devoluciones"' +
                     'Where "Fecha" Between :F1 And :F2 Order By "Numero"';

    D.Open;
    DD.DataSet := D;
    ReportsAndForms.Pipe_RepDevoluciones.DataSource := DD;

    ReportsAndForms.Reporte_Ventas_Cliente.Print;

    P.Close;
    P.Free;
    D.Close;
    D.Free;
  Finally
    Modulo.tDesgloceEfectivo.Filtered := False;
    ReportsAndForms.PipePagos.DataSource := Modulo.dPagos_Clientes;
    ReportsAndForms.Pipe_RepDevoluciones.DataSource := Modulo.dDevoluciones;
    ReportsAndForms.Pipe_Facturas.DataSource := Modulo.dFacturas;
    FCriterio_Rep_Facturas.Free;
    Modulo.tReporter.Filter := '';
    Modulo.tReporter.Filtered := False;
    CloseAllDbs;
  End;
end;

procedure TFMainMenuLite.Facturas_Tipo_NCFExecute(Sender: TObject);
  var
    DoExport : Boolean;
    F : TfrmExportar_Facturas;
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
                Modulo.tReporter.Filter := '';
                Modulo.tReporter.Filtered := False;
                ReportsAndForms.RptPagos.Visible := True;
                ReportsAndForms.RptEfectivo.Visible := True
              end;

          1 : Begin
                Modulo.tReporter.Filter := 'Tipo_NCF = ' + Trim(Modulo.tComprobantes_FiscalesTipo.Value);
                Modulo.tReporter.Filtered := True;
              end
        End;{Case}
        DoExport := FCriterio_Rep_Facturas_NCF.chkExportar.Checked;
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
              Case DoExport Of
                False : ReportsAndForms.ReporteNCF.Print;
                True : Begin

                         F := TfrmExportar_Facturas.Create(Self);
                         F.grdFacturasDBTableView.DataController.DataSource := Modulo.dReporter;
                         F.ShowModal;
                         F.Free;
                       End;
              End {Case}
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
          Modulo.GenerarCuotas(Vence,Modulo.tTerminosDiasDeGracia.Value);
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
end;

procedure TFMainMenuLite.BancosExecute(Sender: TObject);
begin
  OpenForm(TFBancos,FBancos);
  CloseAllDbs
end;

procedure TFMainMenuLite.Rep_Prod_AgotadosExecute(Sender: TObject);
  Var
    Field: TField;
    I : Integer;
begin
  Try
    ReportsAndForms.Usuario.Caption := 'Impreso Por ' + _CurrentUser;

    ReportsAndForms.Depto_Fabricante.Text    := 'Todos';
    ReportsAndForms.Elemento_Fabricante.Text := 'Todos';
    ReportsAndForms.Status_Fabricante.Text   := 'Todos';
    ReportsAndForms.Tipo_Fabricante.Text     := 'Todos';

    ReportsAndForms.RptExistencia_Titulo.Text     := 'Reporte de Productos Agotados';
    ReportsAndForms.rptExistenciaMinMax.DataField := 'Minimo';
    ReportsAndForms.rptExistenciaMinMaxTitulo.Caption := 'Minimo';
    ReportsAndForms.Pipe_Existencia.DataSource := Modulo.dReporter;

    Modulo.tFabricante.Open;

    Modulo.tReporter.CommandText := 'SELECT * FROM "Productos" WHERE "Existencia" <= 0 ORDER BY "Descripcion", "Codigo"';
    // add existing fields
    Modulo.tReporter.Open;
    Modulo.tReporter.Close;
    Modulo.tReporter.FieldDefs.Update;
    for I := 0 to Modulo.tReporter.FieldDefs.Count - 1 do
       Modulo.tReporter.FieldDefs[I].CreateField(Modulo.tReporter);

    // add calculated field
    Field := TStringField.Create(Modulo.tReporter);
    Field.FieldName := 'Initial';
    Field.Calculated := True;
    Field.DataSet := Modulo.tReporter;
    Modulo.tReporter.OnCalcFields := Self.tReporterCalcFields;
    Modulo.tReporter.Open;

    Modulo.tReporter.Open;
    If Modulo.tReporter.RecordCount > 0 Then
      ReportsAndForms.Form_Existencia.Print
    Else
      Mensaje(_NoPrintData,self)
  Finally
    Modulo.tReporter.OnCalcFields := Nil;
    Modulo.tReporter.Close;
    Modulo.tReporter.Fields.Clear;
    Modulo.tFabricante.Close;
  End {Try}
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


procedure TFMainMenuLite.tReporterCalcFields(DataSet: TDataSet);
   begin
     DataSet.FieldByName('Initial').AsString := Copy(DataSet.FieldByName('Descripcion').AsString,1,1);
   End;

procedure TFMainMenuLite.Rep_Prod_Clasificados_FabricanteExecute(Sender: TObject);
  Var
    Q : TClientDataset;
    D : TDataSource;
    Field: TField;
    I : Integer;
begin
  Try
    Q := TClientDataSet.Create(Self);
    Q.ConnectionBroker := Modulo.Concentrador;
    Q.ProviderName := 'SrchPr';

    D := TDataSource.Create(Self);
    D.DataSet := Q;

    Application.CreateForm(TFCriterioRepProductos,FCriterioRepProductos);
    FCriterioRepProductos.Elemento.LookupTable := Modulo.tFabricante;
    FCriterioRepProductos.CaptionElemento := 'Fabricantes';
    FCriterioRepProductos.CampoElemento := Modulo.tProductosFabricante.FieldName;
    FCriterioRepProductos.Elemento.Selected.Add('Nombre'#9'50'#9'Nombre'#9'F');
    FCriterioRepProductos.ShowModal;
    If FCriterioRepProductos.ModalResult = MrOk Then
      Begin
         ReportsAndForms.PipeReportes.DataSource := D;
         ReportsAndForms.Usuario.Caption := 'Impreso Por ' + _CurrentUser;
         Modulo.tFabricante.Open;

         ReportsAndForms.Depto_Fabricante.Text := FCriterioRepProductos.SeleccionDepartamento;
         ReportsAndForms.Elemento_Fabricante.Text := FCriterioRepProductos.SeleccionElemento;
         ReportsAndForms.Status_Fabricante.Text := FCriterioRepProductos.SeleccionStatus;
         ReportsAndForms.Tipo_Fabricante.Text := FCriterioRepProductos.SeleccionTipoProducto;

         Q.CommandText := Format(_SelectTodosProductos,[FCriterioRepProductos.CriterioDepartamento,
                                                        FCriterioRepProductos.CriterioElemento,
                                                        FCriterioRepProductos.CriterioStatus,
                                                        FCriterioRepProductos.CriterioTipoProducto,
                                                        DoubleQuoted(FCriterioRepProductos.CampoElemento),
                                                        '']);
        // add existing fields
        Q.Open;
        Q.Close;
        Q.FieldDefs.Update;
        For I := 0 To Q.FieldDefs.Count - 1 Do
            Q.FieldDefs[I].CreateField(Q);

        // add calculated field
        Field := TStringField.Create(Q);
        Field.FieldName := 'Initial';
        Field.Calculated := True;
        Field.DataSet := Q;
        Q.OnCalcFields := Self.tReporterCalcFields;
        Q.Open;

         Case FCriterioRepProductos.ExistenciaCero.Checked Of
           True : Begin
                    Q.Filter := 'Existencia <> 0';
                    Q.Filtered := True;
                  End;

           False : Begin
                    Q.Filter := '';
                    Q.Filtered := False;
                  End;
         End; {Casse}

         If Q.RecordCount > 0 Then
           ReportsAndForms.ReporteProductos_Fabricante.Print
         Else
           Mensaje(_NoPrintData,self)
      End {If}
  Finally
    ReportsAndForms.PipeReportes.DataSource := Modulo.DReporter;
    FCriterioRepProductos.Free;
    Q.Close;
    Q.Free;
    CloseAllDbs;
  End {Try}
end;

procedure TFMainMenuLite.Rep_Prod_Clasificados_ProveedorExecute(Sender: TObject);
  Var
    Q : TClientDataset;
    D : TDataSource;
    Field: TField;
    I : Integer;
begin
  Try
    Q := TClientDataSet.Create(Self);
    Q.ConnectionBroker := Modulo.Concentrador;
    Q.ProviderName := 'SrchPr';

    D := TDataSource.Create(Self);
    D.DataSet := Q;

    ReportsAndForms.PipeReportes.DataSource := D;

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

         ReportsAndForms.Depto_Proveedor.Text := FCriterioRepProductos.SeleccionDepartamento;
         ReportsAndForms.Elemento_Proveedor.Text := FCriterioRepProductos.SeleccionElemento;
         ReportsAndForms.Status_Proveedor.Text := FCriterioRepProductos.SeleccionStatus;
         ReportsAndForms.Tipo_Proveedor.Text := FCriterioRepProductos.SeleccionTipoProducto;

         Q.CommandText := Format(_SelectTodosProductos,[FCriterioRepProductos.CriterioDepartamento,
                                                        FCriterioRepProductos.CriterioElemento,
                                                        FCriterioRepProductos.CriterioStatus,
                                                        FCriterioRepProductos.CriterioTipoProducto,
                                                        DoubleQuoted(FCriterioRepProductos.CampoElemento),
                                                        '']);
         Q.Open;
         If Q.RecordCount > 0 Then
           ReportsAndForms.ReporteProductos_Proveedores.Print
         Else
           Mensaje(_NoPrintData,self)
      End {If}
  Finally
    FCriterioRepProductos.Free;
    Q.Close;
    Q.Free;
    CloseAllDbs;
  End {Try}
end;

procedure TFMainMenuLite.Rep_Prod_EnMinimoExecute(Sender: TObject);
  Var
    Field: TField;
    I : Integer;
begin
  Try
    ReportsAndForms.Usuario.Caption := 'Impreso Por ' + _CurrentUser;

    ReportsAndForms.Depto_Fabricante.Text    := 'Todos';
    ReportsAndForms.Elemento_Fabricante.Text := 'Todos';
    ReportsAndForms.Status_Fabricante.Text   := 'Todos';
    ReportsAndForms.Tipo_Fabricante.Text     := 'Todos';

    ReportsAndForms.RptExistencia_Titulo.Text     := 'Reporte de Productos en Minimo';
    ReportsAndForms.rptExistenciaMinMax.DataField := 'Minimo';
    ReportsAndForms.rptExistenciaMinMaxTitulo.Caption := 'Minimo';
    ReportsAndForms.Pipe_Existencia.DataSource := Modulo.dReporter;

    Modulo.tFabricante.Open;

    Modulo.tReporter.CommandText := 'SELECT * FROM "Productos" WHERE "Existencia" <= "Minimo" ORDER BY "Descripcion", "Codigo"';
    // add existing fields
    Modulo.tReporter.Open;
    Modulo.tReporter.Close;
    Modulo.tReporter.FieldDefs.Update;
    for I := 0 to Modulo.tReporter.FieldDefs.Count - 1 do
       Modulo.tReporter.FieldDefs[I].CreateField(Modulo.tReporter);

    // add calculated field
    Field := TStringField.Create(Modulo.tReporter);
    Field.FieldName := 'Initial';
    Field.Calculated := True;
    Field.DataSet := Modulo.tReporter;
    Modulo.tReporter.OnCalcFields := Self.tReporterCalcFields;
    Modulo.tReporter.Open;

    Modulo.tReporter.Open;
    If Modulo.tReporter.RecordCount > 0 Then
      ReportsAndForms.Form_Existencia.Print
    Else
      Mensaje(_NoPrintData,self)
  Finally
    Modulo.tReporter.OnCalcFields := Nil;
    Modulo.tReporter.Close;
    Modulo.tReporter.Fields.Clear;
    Modulo.tFabricante.Close;
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
  Var
    R : Integer;
    S : String;
    P,D : TClientDataset;
    DP,DD : TDataSource;
begin
  Try
    Application.CreateForm(TFCriterio_Rep_Facturas,FCriterio_Rep_Facturas);
    FCriterio_Rep_Facturas.ShowModal;
    If FCriterio_Rep_Facturas.ModalResult = MrOk Then
      Begin
        Case FCriterio_Rep_Facturas.Clasificacion.ItemIndex Of
          0,3 : Begin
                  Modulo.tReporter.Filter := '';
                  Modulo.tReporter.Filtered := False;
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
                ReportsAndForms.RptEfectivo.Visible := True;
              end;
        End;{Case}

        If FCriterio_Rep_Facturas.Clasificacion.ItemIndex <> 3 Then
          Begin
            Application.CreateForm(TDlgFecha,DlgFecha);
            DlgFecha.ShowModal;
            If DlgFecha.ModalResult = MrOk Then
              Begin
                Modulo.tReporter.CommandText := _SelectInvoicesByDate;
                Modulo.tReporter.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
                Modulo.tReporter.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;

                Modulo.tDesgloceEfectivo.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
                Modulo.tDesgloceEfectivo.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;

                ReportsAndForms.Clasificacion_Vt_Cliente.Caption := Format('Reporte de Facturas del %s al %s',[DateToStr(DlgFecha.Inicio.Date),DateToStr(DlgFecha.Fin.Date)]);

                Modulo.tReporter.Open;
                Modulo.tDesgloceEfectivo.Filter := 'Es_Efectivo = False';
                Modulo.tDesgloceEfectivo.Filtered := True;
                Modulo.tDesgloceEfectivo.Open;

                ReportsAndForms.Pipe_Facturas.DataSource := Modulo.dReporter;

                // Pagos
                P := TClientDataSet.Create(Self);
                Dp := TDataSource.Create(Self);
                P.ConnectionBroker := Modulo.Concentrador;
                P.ProviderName := 'prListadoPagos';
                P.CommandText := 'Select * From "Pagos_Clientes"' +
                                 'Where "Fecha" Between :F1 And :F2 Order By "Numero"';

                P.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
                P.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;
                P.Open;
                DP.DataSet := P;
                ReportsAndForms.PipePagos.DataSource := DP;

                // Devoluciones
                D := TClientDataSet.Create(Self);
                DD := TDataSource.Create(Self);
                D.ConnectionBroker := Modulo.Concentrador;
                D.ProviderName := 'prDevoluciones';
                D.CommandText := 'Select * From "Devoluciones"' +
                                 'Where "Fecha" Between :F1 And :F2 Order By "Numero"';

                D.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
                D.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;
                D.Open;
                DD.DataSet := D;
                ReportsAndForms.Pipe_RepDevoluciones.DataSource := DD;

                ReportsAndForms.Reporte_Ventas_Cliente.Print;

                P.Close;
                P.Free;
                D.Close;
                D.Free;
              End;
            DlgFecha.Free;
          End
        Else
          Begin
            S := DoSearch(Nil,
                          'Apertura_Caja',                                      (* TableName *)
                          'SrchPr',                                        (* Provider *)
                          Modulo.tApertura_CajaProceso.FieldName,               (* CampoClave *)
                          Modulo.tApertura_CajaNumero.FieldName,                (* CampoInicial *)
                          '',                  (* AltQry *)
                          Modulo.Enlace,                                   (* RemoteServer *)
                          'D',                                             (* SortOrder *)
                          -1,                                              (* Packet Records *)
                          wsMaximized,
                          R);

            If R = MrOk Then
              Begin
                Modulo.tReporter.CommandText := _SelectInvoicesByApertura;
                Modulo.tReporter.Params.ParamByName('Apertura').AsString := S;

                ReportsAndForms.Clasificacion_Vt_Cliente.Caption := Format('Reporte de Facturas de la Apertura %s',[S]);

                Modulo.tReporter.Open;
                Modulo.tDesgloceEfectivo.Open;

                ReportsAndForms.Reporte_Ventas_Cliente.Print;
              End;
          End;
      End; {If FCriterio_Rep_Facturas.ModalResult = MrOk}
  Finally
    Modulo.tDesgloceEfectivo.Filtered := False;
    ReportsAndForms.PipePagos.DataSource := Modulo.dPagos_Clientes;
    ReportsAndForms.Pipe_RepDevoluciones.DataSource := Modulo.dDevoluciones;
    ReportsAndForms.Pipe_Facturas.DataSource := Modulo.dFacturas;
    FCriterio_Rep_Facturas.Free;
    Modulo.tReporter.Filter := '';
    Modulo.tReporter.Filtered := False;
    CloseAllDbs;
  End;
end;

procedure TFMainMenuLite.Resumen_OperacionesExecute(Sender: TObject);
  Var
    TOp, TNC, TI, TG, TC, TCr, TP, TE : Currency;
begin
  Application.CreateForm(TDlgFecha,DlgFecha);
  DlgFecha.ShowModal;
  If DlgFecha.ModalResult = MrOk Then
    Begin
      Modulo.tResumenes.Close;
      Modulo.tResumenes.CreateDataSet;

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
      TOp := Modulo.tResumenesMonto.AsCurrency;
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
      TOp := TOp + Modulo.tResumenesMonto.AsCurrency;
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
      TOp := TOp + Modulo.tResumenesMonto.AsCurrency;
      Modulo.tResumenes.Post;

      // Devoluciones
      Modulo.tReporter.Close;
      Modulo.tReporter.CommandText := 'Select Sum ("Monto_Final") TOTAL From "Devoluciones" Where ("Fecha" Between :F1 And :F2)';
      Modulo.tReporter.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
      Modulo.tReporter.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;
      Modulo.tReporter.Open;

      Modulo.tResumenes.Append;
      Modulo.tResumenesConcepto.AsString := 'Devoluciones en Ventas';
      Modulo.tResumenesMonto.AsCurrency := Modulo.tReporter.FieldByName('TOTAL').AsCurrency;
      Modulo.tResumenes.Post;

      // Creditos
      Modulo.tReporter.Close;
      Modulo.tReporter.CommandText := 'Select Sum ("Monto_Aplicado") TOTAL From "Creditos" Where ("Fecha_Aplicacion" Between :F1 And :F2)';
      Modulo.tReporter.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
      Modulo.tReporter.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;
      Modulo.tReporter.Open;
      Modulo.tResumenes.Append;
      Modulo.tResumenesConcepto.AsString := 'Notas Creditos Aplicadas';
      Modulo.tResumenesMonto.AsCurrency := Modulo.tReporter.FieldByName('TOTAL').AsCurrency;
      TNC := Modulo.tResumenesMonto.AsCurrency;
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

      TI := TC + TCr + TP;
      TG := TI - TE - TNC;

      Application.CreateForm(TfResumen_Operaciones,fResumen_Operaciones);
      fResumen_Operaciones.TotalOperacion.Caption := format('%m',[TOp]);
      fResumen_Operaciones.Total_Ingresado.Caption := format('%m',[TI]);
      fResumen_Operaciones.Total_Egresado.Caption := format('%m',[TE]);
      fResumen_Operaciones.Total_Creditos.Caption := format('%m',[TNC]);
      fResumen_Operaciones.TotalGeneral.Caption := format('%m',[TG]);
      fResumen_Operaciones.Titulo.Caption := format('Resumen del %s al %s',[DateToStr(DlgFecha.Inicio.Date),DateToStr(DlgFecha.Fin.Date)]);
      fResumen_Operaciones.ShowModal;

      If fResumen_Operaciones.ModalResult = MrOk Then
        Begin
          ReportsAndForms.reop_De_A.Caption := format('del %s al %s',[DateToStr(DlgFecha.Inicio.Date),DateToStr(DlgFecha.Fin.Date)]);
          ReportsAndForms.reop_Creditos.Caption := format('%m',[TNC]);
          ReportsAndForms.reop_Egresado.Caption := format('%m',[TE]);
          ReportsAndForms.reop_Ingresado.Caption := format('%m',[TI]);
          ReportsAndForms.reop_Total.Caption := format('%m',[TG]);
          ReportsAndForms.reop_TotalOP.Caption := format('%m',[TOp]);
          ReportsAndForms.FormResumenOperaciones.Print;
        End;

      fResumen_Operaciones.Free;
      Modulo.tResumenes.Close
    End;
  DlgFecha.Free;
  Modulo.tReporter.IndexFieldNames := '';
  Modulo.tReporter.Filter := '';
  Modulo.tReporter.Filtered := False
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
  Var
    Q : TClientDataset;
    D : TDataSource;
    Field: TField;
    I : Integer;
begin
  Try
    Q := TClientDataSet.Create(Self);
    Q.ConnectionBroker := Modulo.Concentrador;
    Q.ProviderName := 'SrchPr';

    D := TDataSource.Create(Self);
    D.DataSet := Q;

    ReportsAndForms.PipeReportes.DataSource := D;
    ReportsAndForms.Usuario.Caption := 'Impreso Por ' + _CurrentUser;

    ReportsAndForms.Depto_Fabricante.Text    := 'Todos';
    ReportsAndForms.Elemento_Fabricante.Text := 'Todos';
    ReportsAndForms.Status_Fabricante.Text   := 'Todos';
    ReportsAndForms.Tipo_Fabricante.Text     := 'Todos';

    ReportsAndForms.Titulo.Text              := 'Reporte General de Productos';


    Modulo.tFabricante.Open;

    Q.CommandText := Format(_SelectTodosProductos,['',
                                                   '',
                                                   '',
                                                   '',
                                                   DoubleQuoted('Fabricante'),
                                                   '']);
    // add existing fields
    Q.Open;
    Q.Close;
    Q.FieldDefs.Update;
    For I := 0 To Q.FieldDefs.Count - 1 Do Q.FieldDefs[I].CreateField(Q);

    // add calculated field
    Field := TStringField.Create(Q);
    Field.FieldName := 'Initial';
    Field.Calculated := True;
    Field.DataSet := Q;
    Q.OnCalcFields := Self.tReporterCalcFields;
    Q.Open;

    If Q.RecordCount > 0 Then
      ReportsAndForms.ReporteProductos_Fabricante.Print
    Else
      Mensaje(_NoPrintData,self)
  Finally
    ReportsAndForms.PipeReportes.DataSource := Modulo.DReporter;
    FCriterioRepProductos.Free;
    Q.Close;
    Q.Free;
    CloseAllDbs;
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
  If Trim(_CurrentApertura) = '_NO_' Then
    Raise Exception.Create('No ha aperturado aun su caja'#13'Por Favor, Verifique');
  OpenForm(TFVentas_Caja,FVentas_Caja)
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
    Modulo.tReporter.Close;
    Modulo.tListadoProductos.Close
  End {Try}
end;

procedure TFMainMenuLite.Rep_Prod_SobreMaximoExecute(Sender: TObject);
  Var
    Field: TField;
    I : Integer;
begin
  Try
    ReportsAndForms.Usuario.Caption := 'Impreso Por ' + _CurrentUser;

    ReportsAndForms.Depto_Fabricante.Text    := 'Todos';
    ReportsAndForms.Elemento_Fabricante.Text := 'Todos';
    ReportsAndForms.Status_Fabricante.Text   := 'Todos';
    ReportsAndForms.Tipo_Fabricante.Text     := 'Todos';

    ReportsAndForms.RptExistencia_Titulo.Text     := 'Reporte de Productos Sobre - Máximo';
    ReportsAndForms.rptExistenciaMinMax.DataField := 'Maximo';
    ReportsAndForms.rptExistenciaMinMaxTitulo.Caption := 'Máximo';
    ReportsAndForms.Pipe_Existencia.DataSource := Modulo.dReporter;

    Modulo.tFabricante.Open;

    Modulo.tReporter.CommandText := 'SELECT * FROM "Productos" WHERE "Existencia" > "Maximo" ORDER BY "Descripcion", "Codigo"';
    // add existing fields
    Modulo.tReporter.Open;
    Modulo.tReporter.Close;
    Modulo.tReporter.FieldDefs.Update;
    for I := 0 to Modulo.tReporter.FieldDefs.Count - 1 do
       Modulo.tReporter.FieldDefs[I].CreateField(Modulo.tReporter);

    // add calculated field
    Field := TStringField.Create(Modulo.tReporter);
    Field.FieldName := 'Initial';
    Field.Calculated := True;
    Field.DataSet := Modulo.tReporter;
    Modulo.tReporter.OnCalcFields := Self.tReporterCalcFields;
    Modulo.tReporter.Open;

    Modulo.tReporter.Open;
    If Modulo.tReporter.RecordCount > 0 Then
      ReportsAndForms.Form_Existencia.Print
    Else
      Mensaje(_NoPrintData,self)
  Finally
    Modulo.tReporter.OnCalcFields := Nil;
    Modulo.tReporter.Close;
    Modulo.tReporter.Fields.Clear;
    Modulo.tFabricante.Close;
  End {Try}
end;

procedure TFMainMenuLite.Opciones_SistemasExecute(Sender: TObject);
begin
  OpenForm(TfrmOpciones_Sistema,frmOpciones_Sistema)
end;

procedure TFMainMenuLite.Orden_CompraExecute(Sender: TObject);
begin
  OpenForm(TFOrden_Compra_Productos,FOrden_Compra_Productos);
  CloseAllDbs
end;

procedure TFMainMenuLite.Niveles_AccesoExecute(Sender: TObject);
begin
  OpenForm(TfrmNiveles_Acceso,frmNiveles_Acceso);
  CloseAllDbs
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

procedure TFMainMenuLite.Actualizacion_UsuariosExecute(Sender: TObject);
begin
  OpenForm(TFUsuarios,FUsuarios)
end;

procedure TFMainMenuLite.Acuerdos_TrabajoExecute(Sender: TObject);
begin
  OPenForm(TfAcuerdos,fAcuerdos);
  CloseAllDbs
end;

procedure TFMainMenuLite.Ajuste_Balance_ClientesExecute(Sender: TObject);
begin
  OPenForm(TFAjuste_Balances_Clientes,FAjuste_Balances_Clientes)
end;

procedure TFMainMenuLite.Ajuste_InventarioExecute(Sender: TObject);
begin
  OPenForm(TFAjuste_Inventario,FAjuste_Inventario) ;
  CloseAllDbs;
end;

procedure TFMainMenuLite.Apertura_CajaExecute(Sender: TObject);
  Var
    UsuarioApertura : String;
begin
    If ValidarApertura(_CurrentTerminal,_CurrentUser,_CurrentApertura,UsuarioApertura) > 1 Then
      Begin
        Mensaje ('Esta terminal está APERTURADA para el usuario : ' + UsuarioApertura +
                 #13'se debe CUADRAR/CERRAR esta apertura ANTES de realizar una apertura para otro usuario'#13+
                 'Por Favor, VERIFIQUE',self);
        Exit;
      End;

  Granted := False;
  ModuloGenerales.Autorizar_Opcion(Self,self.Name);
  If (Not Granted) Then Raise Exception.Create(_ErrAccesoDenegadoOpcion);

  Modulo.SetCashParams(_CurrentUser,_CurrentTerminal,'-*-',True);

  Modulo.tApertura_Caja.Open;

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

procedure TFMainMenuLite.Registro_GastosExecute(Sender: TObject);
begin
  If Trim(_CurrentApertura) = '_NO_' Then
    Raise Exception.Create('No ha aperturado aun su caja'#13'Por Favor, Verifique');
  OpenForm(TFRegistro_Gastos,FRegistro_Gastos);
  CloseAllDbs
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

procedure TFMainMenuLite.Reporte_DevolucionesExecute(Sender: TObject);
begin
  Application.CreateForm(TDlgFecha,DlgFecha);
  DlgFecha.ShowModal;
  If DlgFecha.ModalResult = MrOk Then
    Try
      Modulo.tReporter.Close;
      Modulo.tReporter.CommandText := 'Select * From "Devoluciones" ' +
                                      'Where "Fecha" Between :F1 And :F2 Order By "Numero"';

      Modulo.tReporter.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
      Modulo.tReporter.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;
      Modulo.tReporter.Open;
      ReportsAndForms.Pipe_RepDevoluciones.DataSource := Modulo.dReporter;

      ReportsAndForms.TitDevoluciones.Caption := Format('Reporte de Devoluciones Realizadas Entre el %s y el %s',
                                                 [DateToStr(DlgFecha.Inicio.Date),DateToStr(DlgFecha.Fin.Date)]);
      If Modulo.tReporter.RecordCount > 0 Then
        ReportsAndForms.ReporteDevoluciones.Print
      Else
        PopupMessage(ModuloGenerales.Mensajes,_NoPrintData)
    Finally
      CloseAllDbs;
    End {Try}
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
  Var
    R : Integer;
    U,A,S : String;
begin
//  If Trim(_CurrentApertura) = '_NO_' Then
//    Raise Exception.Create('No existe apertura de caja activa'#13'Por Favor, Verifique');

  Granted := False;
  ModuloGenerales.Autorizar_Opcion(Self,self.Name);
  If (Not Granted) Then Raise Exception.Create(_ErrAccesoDenegadoOpcion);
  U := _CurrentUser;
  A := _CurrentApertura;

  Try
    S := DoSearch(Nil,
                  'Usuarios',                                       (* TableName *)
                  'SrchPr',                                         (* Provider *)
                  ModuloGenerales.tUsuariosUserName.FieldName,      (* CampoClave *)
                  ModuloGenerales.tUsuariosNombreCompleto.FieldName,(* CampoInicial *)
                  '',                                               (* AltQry *)
                  Modulo.Enlace,                                    (* RemoteServer *)
                  'A',                                              (* SortOrder *)
                  -1,                                               (* Packet Records *)
                  wsMaximized,
                  R);
    If R = MrOk Then
      Begin
        _CurrentUser := S;
        Modulo.SetCashParams(S,_CurrentTerminal,'-*-',True);
        Modulo.tApertura_Caja.Open;
        If Modulo.tApertura_Caja.RecordCount = 0 Then
          Begin
            Mensaje('ESTE USARIO NO TIENE APERTURA ACTIVA'#13'Por Favor, VERIFIQUE.',self);
            Exit;
          End;
        _CurrentApertura := Modulo.tApertura_CajaProceso.Value;
        R := OpenForm(TFCuadre_Caja,FCuadre_Caja);
      End;
  Finally
    _CurrentUser := U;
    _CurrentApertura := A;
    Modulo.NotiticationSet(Notificaciones);
    CloseAllDbs;
    If R = MrOk Then Login(Self);
  end;
end;

procedure TFMainMenuLite.Retiros_CajaExecute(Sender: TObject);
begin
  OpenForm(TFRetiros_Caja,FRetiros_Caja)
end;

procedure TFMainMenuLite.Cuentas_CobrarExecute(Sender: TObject);
begin
  If Trim(_CurrentApertura) = '_NO_' Then
    Raise Exception.Create('No ha aperturado aun su caja'#13'Por Favor, Verifique');
  OpenForm(TFCtas_Cobrar,FCtas_Cobrar);
  CloseAllDbs
end;

procedure TFMainMenuLite.Cuentas_ContablesExecute(Sender: TObject);
begin
  OpenForm(TFCuentas_Contables,FCuentas_Contables)
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
             Else Mensaje(_NoPrintData,self)
           End {If}
      End {If}
  Finally
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
             Else Mensaje(_NoPrintData,self)
           End {If}
      End {If}
  Finally
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
             Else Mensaje(_NoPrintData,self)
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
             Else Mensaje(_NoPrintData,self)
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
  Modulo.ColorConfig.Color := Self.Color;
  Modulo.ColorConfig.Color := Color - 5;
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
        Else Mensaje(_NoPrintData,self)
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
      Else Mensaje(_NoPrintData,self);
      Modulo.tReporter.Close;
    End;
  DlgFecha.Free;
  ReportsAndForms.PipeSalida.DataSource := Modulo.dSalidas_Inventario;
  Modulo.tReporter.Filter := '';
  Modulo.tReporter.Filtered := False
end;

procedure TFMainMenuLite.Informe_Ventas_DetalladoExecute(Sender: TObject);
  Var
    R : Integer;
    S : String;
    P,D : TClientDataset;
    DP,DD : TDataSource;
begin
  Try
    Application.CreateForm(TFCriterio_Rep_Facturas,FCriterio_Rep_Facturas);
    FCriterio_Rep_Facturas.ShowModal;
    If FCriterio_Rep_Facturas.ModalResult = MrOk Then
      Begin
        Case FCriterio_Rep_Facturas.Clasificacion.ItemIndex Of
          0,3 : Begin
                  Modulo.tReporter.Filter := '';
                  Modulo.tReporter.Filtered := False;
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
                ReportsAndForms.RptEfectivo.Visible := True;
              end;
        End;{Case}

        If FCriterio_Rep_Facturas.Clasificacion.ItemIndex <> 3 Then
          Begin
            Application.CreateForm(TDlgFecha,DlgFecha);
            DlgFecha.ShowModal;
            If DlgFecha.ModalResult = MrOk Then
              Begin
                Modulo.tReporter.CommandText := _SelectInvoicesByDate;
                Modulo.tReporter.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
                Modulo.tReporter.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;

                Modulo.tDesgloceEfectivo.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
                Modulo.tDesgloceEfectivo.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;

                ReportsAndForms.Clasificacion_Vt_Cliente.Caption := Format('Reporte de Facturas del %s al %s',[DateToStr(DlgFecha.Inicio.Date),DateToStr(DlgFecha.Fin.Date)]);

                Modulo.tReporter.Open;
                Modulo.tDesgloceEfectivo.Filter := 'Es_Efectivo = False';
                Modulo.tDesgloceEfectivo.Filtered := True;
                Modulo.tDesgloceEfectivo.Open;

                ReportsAndForms.Pipe_Facturas.DataSource := Modulo.dReporter;

                // Pagos
                P := TClientDataSet.Create(Self);
                Dp := TDataSource.Create(Self);
                P.ConnectionBroker := Modulo.Concentrador;
                P.ProviderName := 'prListadoPagos';
                P.CommandText := 'Select * From "Pagos_Clientes"' +
                                 'Where "Fecha" Between :F1 And :F2 Order By "Numero"';

                P.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
                P.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;
                P.Open;
                DP.DataSet := P;
                ReportsAndForms.PipePagos.DataSource := DP;

                // Devoluciones
                D := TClientDataSet.Create(Self);
                DD := TDataSource.Create(Self);
                D.ConnectionBroker := Modulo.Concentrador;
                D.ProviderName := 'prDevoluciones';
                D.CommandText := 'Select * From "Devoluciones"' +
                                 'Where "Fecha" Between :F1 And :F2 Order By "Numero"';

                D.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
                D.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;
                D.Open;
                DD.DataSet := D;
                ReportsAndForms.Pipe_RepDevoluciones.DataSource := DD;
                Modulo.tFacturas.open;
                ReportsAndForms.Reportes_Facturas_Detallado.Print;

                P.Close;
                P.Free;
                D.Close;
                D.Free;
              End;
            DlgFecha.Free;
          End
        Else
          Begin
            S := DoSearch(Nil,
                          'Apertura_Caja',                                      (* TableName *)
                          'SrchPr',                                        (* Provider *)
                          Modulo.tApertura_CajaProceso.FieldName,               (* CampoClave *)
                          Modulo.tApertura_CajaNumero.FieldName,                (* CampoInicial *)
                          '',                  (* AltQry *)
                          Modulo.Enlace,                                   (* RemoteServer *)
                          'D',                                             (* SortOrder *)
                          -1,                                              (* Packet Records *)
                          wsMaximized,
                          R);

            If R = MrOk Then
              Begin
                Modulo.tReporter.CommandText := _SelectInvoicesByApertura;
                Modulo.tReporter.Params.ParamByName('Apertura').AsString := S;

                ReportsAndForms.Clasificacion_Vt_Cliente.Caption := Format('Reporte de Facturas de la Apertura %s',[S]);

                Modulo.tReporter.Open;
                Modulo.tDesgloceEfectivo.Open;

                ReportsAndForms.Reportes_Facturas_Detallado.Print;
              End;
          End;
      End; {If FCriterio_Rep_Facturas.ModalResult = MrOk}
  Finally
    Modulo.tDesgloceEfectivo.Filtered := False;
    ReportsAndForms.PipePagos.DataSource := Modulo.dPagos_Clientes;
    ReportsAndForms.Pipe_RepDevoluciones.DataSource := Modulo.dDevoluciones;
    ReportsAndForms.Pipe_Facturas.DataSource := Modulo.dFacturas;
    FCriterio_Rep_Facturas.Free;
    Modulo.tReporter.Filter := '';
    Modulo.tReporter.Filtered := False;
    CloseAllDbs;
  End;
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
      Else Mensaje(_NoPrintData,self);
      Modulo.tReporter.Close;
    End;
  DlgFecha.Free;
  ReportsAndForms.Pipe_Facturas.DataSource := Modulo.dFacturas;
  Modulo.tReporter.IndexFieldNames := '';
  Modulo.tReporter.Filter := '';
  Modulo.tReporter.Filtered := False
end;

procedure TFMainMenuLite.LayAwayActivosExecute(Sender: TObject);
  Var
    R : Integer;
    S : String;
    P,D : TClientDataset;
    DP,DD : TDataSource;
begin
  Try
    Modulo.tReporter.CommandText := 'SELECT * FROM "Facturas"  WHERE "LayAway" = True And "Pendiente" > 0 ORDER BY "Vencimiento","Numero"';
    ReportsAndForms.Clasificacion_Vt_Cliente.Caption := 'Reporte de Facturas Lay-Away Activos' ;

    Modulo.tReporter.Open;
    Modulo.tDesgloceEfectivo.Filter := 'Es_Efectivo = False';
    Modulo.tDesgloceEfectivo.Filtered := True;
    Modulo.tDesgloceEfectivo.Open;

    ReportsAndForms.Pipe_Facturas.DataSource := Modulo.dReporter;

    // Pagos
    P := TClientDataSet.Create(Self);
    Dp := TDataSource.Create(Self);
    P.ConnectionBroker := Modulo.Concentrador;
    P.ProviderName := 'prListadoPagos';
    P.CommandText := 'Select * From "Pagos_Clientes"' +
                     'Where "Fecha" Between :F1 And :F2 Order By "Numero"';
    P.Open;
    DP.DataSet := P;
    ReportsAndForms.PipePagos.DataSource := DP;

    // Devoluciones
    D := TClientDataSet.Create(Self);
    DD := TDataSource.Create(Self);
    D.ConnectionBroker := Modulo.Concentrador;
    D.ProviderName := 'prDevoluciones';
    D.CommandText := 'Select * From "Devoluciones"' +
                     'Where "Fecha" Between :F1 And :F2 Order By "Numero"';

    D.Open;
    DD.DataSet := D;
    ReportsAndForms.Pipe_RepDevoluciones.DataSource := DD;

    ReportsAndForms.Reporte_Ventas_Cliente.Print;

    P.Close;
    P.Free;
    D.Close;
    D.Free;
  Finally
    Modulo.tDesgloceEfectivo.Filtered := False;
    ReportsAndForms.PipePagos.DataSource := Modulo.dPagos_Clientes;
    ReportsAndForms.Pipe_RepDevoluciones.DataSource := Modulo.dDevoluciones;
    ReportsAndForms.Pipe_Facturas.DataSource := Modulo.dFacturas;
    FCriterio_Rep_Facturas.Free;
    Modulo.tReporter.Filter := '';
    Modulo.tReporter.Filtered := False;
    CloseAllDbs;
  End;
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
             Else Mensaje(_NoPrintData,self)
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
      Else Mensaje(_NoPrintData,self);
      Modulo.tReporter.Close;
    End;
  DlgFecha.Free;
  ReportsAndForms.pipe_Listado_Gastos.DataSource := Modulo.dRegistro_Gastos;
  Modulo.tReporter.Filter := '';
  Modulo.tReporter.Filtered := False
end;

procedure TFMainMenuLite.Listado_PreciosExecute(Sender: TObject);
begin
  Try
    Modulo.tListadoProductos.Close;
    _WindowsExitMode := mrNone;
    Application.CreateForm(tFModificar_Precio,FModificar_Precio);
//    FModificar_Precio.Precios.Items.Delete(FModificar_Precio.Precios.Items.IndexOf('Otro'));
//    FModificar_Precio.Precios.Items.Add('Precio Unidad');
    FModificar_Precio.Nuevo_Precio.Visible := False;
    FModificar_Precio.ShowModal;
    If FModificar_Precio.ModalResult = MrOk Then
      Begin
        ReportsAndForms.rtp_Precios_Titulo.Caption := 'Listado de Precios';
{        ReportsAndForms.rtp_Precios_TipoPrecio.Caption := FModificar_Precio.Precios.Items[FModificar_Precio.Precios.ItemIndex];
        Case FModificar_Precio.Precios.ItemIndex Of
          0 : ReportsAndForms.rtp_Precios_Precio.DataField := 'Precio_Venta_Por_Mayor_Contado';
          1 : ReportsAndForms.rtp_Precios_Precio.DataField := 'Precio_Venta_Por_Mayor_Credito';
          2 : ReportsAndForms.rtp_Precios_Precio.DataField := 'Precio_Venta_Contado';
          3 : ReportsAndForms.rtp_Precios_Precio.DataField := 'Precio_Venta_Credito';
          4 : ReportsAndForms.rtp_Precios_Precio.DataField := 'Precio_Venta_Minimo';
          5 : ReportsAndForms.rtp_Precios_Precio.DataField := 'Precio_Unidad';
        End;{Case}

        Modulo.tListadoProductos.Open;
        Modulo.tListadoProductos.IndexFieldNames := 'Descripcion';
        ReportsAndForms.Pipe_Existencia.DataSource := Modulo.dListadoProductos;
        If Modulo.tListadoProductos.RecordCount > 0 Then
          ReportsAndForms.Form_Listado_Precios.Print;
      End;
  Finally
    FModificar_Precio.Free;
    ReportsAndForms.Pipe_Existencia.DataSource := Modulo.dShwMinimos;
    Modulo.tListadoProductos.IndexFieldNames := 'Codigo';
    CloseAllDbs;
  End;
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
      Else Mensaje(_NoPrintData,self);
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

procedure TFMainMenuLite.CompaniasExecute(Sender: TObject);
begin
  OpenForm(TFCompanias,FCompanias)
end;

procedure TFMainMenuLite.DeduccionesExecute(Sender: TObject);
begin
  OpenForm(TFDeducciones,FDeducciones)
end;

procedure TFMainMenuLite.Departamentos_NominaExecute(Sender: TObject);
begin
  OpenForm(TFDepartamentos_Nomina,FDepartamentos_Nomina)
end;

procedure TFMainMenuLite.Devoluciones_VentasExecute(Sender: TObject);
  Var
    UsuarioApertura : String;
begin
  case ValidarApertura(_CurrentTerminal,_CurrentUser,_CurrentApertura,UsuarioApertura) Of
    0 : Raise Exception.Create('No ha aperturado aun su caja'#13'Por Favor, Verifique');
    2 : Begin
          Mensaje ('Esta terminal está APERTURADA para el usuario : ' + UsuarioApertura +
                   #13'se debe CUADRAR/CERRAR esta apertura ANTES de realizar una apertura para otro usuario'#13+
                   'Por Favor, VERIFIQUE',self);

          Granted := False;
          ModuloGenerales.Autorizar_Opcion(Self,self.Name);
          If (Not Granted) Then Raise Exception.Create(_ErrAccesoDenegadoOpcion);
        End;
  end;

  OpenForm(TfrmDevolucion_Ventas,frmDevolucion_Ventas);
  CloseAllDbs
end;

procedure TFMainMenuLite.Directorio_EmpleadosExecute(Sender: TObject);
begin
  ModuloNomina.tListado_Laboral.Params.ParamByName('Compania').AsInteger := ModuloNomina.tCompaniaNumero_Compania.AsInteger;
  ModuloNomina.tListado_Laboral.Params.ParamByName('Departamento').AsInteger := ModuloNomina.tDepartamentosNumero.AsInteger;
  ModuloNomina.tListado_Laboral.Open;

  ModuloNomina.tListado_Empleados.Open;
  If (ModuloNomina.tListado_Empleados.RecordCount > 0) Then PayRoll_Forms.ListadoEmpleados.Print
  Else Mensaje(_NoPrintData,self)
end;

procedure TFMainMenuLite.Entradas_Horas_DiariasExecute(Sender: TObject);
begin
  OpenForm(TFDiario,FDiario)
end;

procedure TFMainMenuLite.Generar_NominaExecute(Sender: TObject);
begin
  OpenForm(TFNomina,FNomina)
end;

procedure TFMainMenuLite.Grupos_NominaExecute(Sender: TObject);
begin
  OpenForm(TFGrupos_Nomina,FGrupos_Nomina)
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
      CloseAllDbs;
    End {Try}
end;

procedure TFMainMenuLite.Pagos_IncentivosExecute(Sender: TObject);
begin
  OpenForm(TFPagos_Incentivos,FPagos_Incentivos)
end;

procedure TFMainMenuLite.Paises_Ciudades_Sectores_ZonasExecute(Sender: TObject);
begin
  OpenForm(TfrmPaises_Ciudades_Sectores_Zonas,frmPaises_Ciudades_Sectores_Zonas);
  CloseAllDbs
end;

procedure TFMainMenuLite.Nomina_RegaliaExecute(Sender: TObject);
begin
  If MonthOf(Modulo.Enlace.AppServer.ServerDate) <> 12 Then
    Begin
      Mensaje ('La Regalía Pascual se Genera Solamente a Final de Año',self);
      Exit
    end;
  OpenForm(TFRegalia,FRegalia)
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

procedure TFMainMenuLite.EmpleadosExecute(Sender: TObject);
begin
  OpenForm(TFEmpleados,FEmpleados)
end;

Initialization
  RegisterClass(TFMainMenuLite);
  
end.
