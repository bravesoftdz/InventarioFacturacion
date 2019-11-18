unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ActnList, XPStyleActnCtrls, ActnMan,
  ToolWin, ActnCtrls, StdStyleActnCtrls, ActnMenus, ExtCtrls, StdCtrls,
  Grids, DBGrids, Wwdbigrd, Wwdbgrid, jpeg, AdvPageControl,
  ComCtrls, TeEngine, Series, TeeProcs, Chart, DbChart, RegKeys, DateUtils;

type
  TFMainMenu = class(TForm)
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
    BackGroundImage: TImage;
    Label1: TLabel;
    AdvPageControl1: TAdvPageControl;
    Botones: TAdvTabSheet;
    OpcionesBotones: TActionToolBar;
    Importar_Datos: TAction;
    Orden_Compra: TAction;
    Vendedores: TAction;
    Cuentas_Contables: TAction;
    Configuracion_Contabilidad: TAction;
    Entrada_Diario: TAction;
    Catalogo_Cuentas: TAction;
    Estado_Situacion: TAction;
    Estado_Ingresos_Gastos: TAction;
    Balanza_Comprobacion: TAction;
    Libro_Mayor: TAction;
    Reporte_Entradas_Diario: TAction;
    Configuracion_Nomina: TAction;
    Companias: TAction;
    Departamentos_Nomina: TAction;
    Deducciones: TAction;
    Pagos_Incentivos: TAction;
    Empleados: TAction;
    Entradas_Horas_Diarias: TAction;
    Generar_Nomina: TAction;
    Grupos_Nomina: TAction;
    Reagrupar: TAction;
    Nomina_Regalia: TAction;
    Directorio_Empleados: TAction;
    Informacion_Laboral: TAction;
    Facturas_Tipo_NCF: TAction;
    Notas_Debito_Proveedores: TAction;
    Notas_Credito_Proveedores: TAction;
    Paises_Ciudades_Sectores_Zonas: TAction;
    Balancear_Facturas: TAction;
    Pagos_Fecha: TAction;
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
    procedure Registro_DenominacionesExecute(Sender: TObject);
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMainMenu: TFMainMenu;

implementation

uses Utilidades, ConfigForm, Productos, Departamentos, Categorias,
  Tipos_Productos, Status, Fabricantes, Proveedores, Terminos, DataModulo,
  Salidas_Inventario, Compra_Productos, Formas_Pago, Facturacion, Bancos,
  Reports_Forms, DialogoDeptos, Criterio_Vencimientos, Criterio_Etiquetas,
  DlgFechas, Venta_Caja, Seleccionar_Usuario, Reportar_Productos,
  Seleccionar_Departamento, Opciones, Niveles, User_Login, Usuarios,
  Denominaciones_Monedas, Cuadre_Caja, Apertura_Caja, Retiros_Caja,
  CtasCobrar, DialogoVendidas, Importar, NotasCredito, clientes, Generales,
  Orden_Compra_Productos, Vendedores, Cuentas, AccountConfigForm, Transacciones,
  DataModuloContabilidad, Acc_Forms, DialogoMayor, DB, PayRollConfigForm,
  Companias, Deducciones, Grupos_Nomina, Pagos_Incentivos, TimerMessage,
  DataNomina, Empleados, Diario, Generar_Nomina, ESBDates, Regalia,
  Departamentos_Empleados, PayRollForms, DialogoDepartamento,
  Criterio_Rep_Facturas, Criterio_Rep_Facturas_NCF, Paises;

{$R *.dfm}

procedure TFMainMenu.FormCreate(Sender: TObject);
  Var
    I : Integer;
    Open_Cash : Boolean;
begin
  If _Load_Create Then
    begin
      Caption := Application.Title;
      {Informacion  General}
      RegInfo.CloseKey;
      RegInfo.OpenKey(_CompanyInfoKey,False);
      If RegInfo.ReadBool(_BackgroundAlign) then
        BackGroundImage.Align := AlClient
      Else
        BackGroundImage.Align := alRight;

      BackGroundImage.Width := RegInfo.ReadInteger(_BackgroundWidth);
      BackGroundImage.Picture.LoadFromFile(UnEncrypt(RegInfo.ReadString(_UserBackground)));
      Card.Picture.LoadFromFile(UnEncrypt(RegInfo.ReadString(_UserCard)));
      Card.Visible := RegInfo.ReadBool(_LogoVisible);
      Open_Cash := RegInfo.ReadBool(_OpenCash);
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
      Modulo.ColorConfig.Color := Color - 5;

      OpcionesBotones.ColorMap := Modulo.ColorConfig;
      Principal.ColorMap := Modulo.ColorConfig;

    //  Linea.Width := Screen.Width;
      WindowState := wsMaximized;

      OpenForm(TFUser_Login,FUser_Login);

      If Not Granted Then Exit;

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);

      If Open_Cash Then
        Begin
          Modulo.tApertura_Caja.Params.ParamByName('Usuario').AsString := Trim(_CurrentUser);
          Modulo.tApertura_Caja.Params.ParamByName('Fecha').AsDate := Modulo.Enlace.AppServer.ServerDate;
          Modulo.tApertura_Caja.Params.ParamByName('Abierto').Value := 'TRUE';

          Modulo.tApertura_Caja.Open;

          If Modulo.tApertura_Caja.RecordCount <= 0 Then OpenForm (TFApertura_Caja,FApertura_Caja);
          Modulo.tApertura_Caja.Close;
        End;

      {Asigna a los Botones Los ShortCuts Del Menu y Action Lists}
      For I := 0 To (Self.ComponentCount - 1) Do
        Begin
          If (Self.Components[I] Is TAdvPageControl) Then
             (Self.Components[I] As TAdvPageControl).TabBackGroundColor := Color;
        End;
    end
end;

procedure TFMainMenu.Configuracion_InventarioExecute(Sender: TObject);
begin
  OpenForm(TFMainConfig,FMainConfig);
end;

procedure TFMainMenu.Configuracion_NominaExecute(Sender: TObject);
begin
  OpenForm(TFPayrollConfig,FPayrollConfig)
end;

procedure TFMainMenu.Configuracion_ContabilidadExecute(Sender: TObject);
begin
  OpenForm(TFAccountConfig,FAccountConfig)
end;

procedure TFMainMenu.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFMainMenu.Registro_ProductosExecute(Sender: TObject);
begin
  OpenForm(TFProductos,FProductos)
end;

procedure TFMainMenu.DepartamentosExecute(Sender: TObject);
begin
  OpenForm(TFDepartamentos,FDepartamentos)
end;

procedure TFMainMenu.Entrada_DiarioExecute(Sender: TObject);
begin
  OpenForm(TFTransacciones,FTransacciones)
end;

procedure TFMainMenu.Estado_Ingresos_GastosExecute(Sender: TObject);
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
      Else Mensaje (_NoPrintData);

      ModuloContabilidad.tEstado_Ingresos_Gastos.Close
    End
end;

procedure TFMainMenu.Estado_SituacionExecute(Sender: TObject);
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
      Else Mensaje (_NoPrintData);

      ModuloContabilidad.tEstado_Situacion.Close;
      ModuloContabilidad.tIngresos.Close;
      ModuloContabilidad.tGastos.Close
    End
end;

procedure TFMainMenu.Catalogo_CuentasExecute(Sender: TObject);
begin
  ModuloContabilidad.tListado_Cuentas.Open;
  If ModuloContabilidad.tListado_Cuentas.RecordCount > 0  Then
    AccountingForms.ReporteCatalogo_Cuentas.Print
  Else
    Mensaje(_NoPrintData);
  ModuloContabilidad.tListado_Cuentas.Close
end;

procedure TFMainMenu.CategoriasExecute(Sender: TObject);
begin
  OpenForm(TFCategorias,FCategorias);
end;

procedure TFMainMenu.ClientesExecute(Sender: TObject);
begin
  OpenForm(TFClientes,FClientes);
end;

procedure TFMainMenu.Tipos_ProductosExecute(Sender: TObject);
begin
  OpenForm(TFTipos_Productos,FTipos_Productos)
end;

procedure TFMainMenu.StatusExecute(Sender: TObject);
begin
  OpenForm(TFStatus,FStatus)
end;

procedure TFMainMenu.FabricantesExecute(Sender: TObject);
begin
  OpenForm(TFFabricantes,FFabricantes)
end;

procedure TFMainMenu.ProveedoresExecute(Sender: TObject);
begin
  OpenForm(TFProveedores,FProveedores)
end;

procedure TFMainMenu.Terminos_FacturacionExecute(Sender: TObject);
begin
  OpenForm(TFTerminos,FTerminos)
end;

procedure TFMainMenu.Salida_InventarioExecute(Sender: TObject);
begin
  OpenForm(TFSalidas_Inventario,FSalidas_Inventario)
end;

procedure TFMainMenu.ComprasExecute(Sender: TObject);
begin
  OpenForm(TFCompra_Productos,FCompra_Productos)
end;

procedure TFMainMenu.Formas_PagoExecute(Sender: TObject);
begin
  OpenForm(TFMetodos,FMetodos)
end;

procedure TFMainMenu.FacturacionExecute(Sender: TObject);
begin
  OpenForm(TFFacturacion,FFacturacion)
end;

procedure TFMainMenu.Facturas_Tipo_NCFExecute(Sender: TObject);
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
            Else Mensaje (_NoPrintData);
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

procedure TFMainMenu.Balancear_FacturasExecute(Sender: TObject);
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

procedure TFMainMenu.Balanza_ComprobacionExecute(Sender: TObject);
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
      Else Mensaje (_NoPrintData);

      ModuloContabilidad.tBalanza_Comprobacion.Close
    End
end;

procedure TFMainMenu.BancosExecute(Sender: TObject);
begin
  OpenForm(TFBancos,FBancos)
end;

procedure TFMainMenu.Rep_Prod_Clasificados_CategoriaExecute(Sender: TObject);
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
           Mensaje(_NoPrintData)
      End {If}
  Finally
    FCriterioRepProductos.Free;
    Modulo.tReporter.Close;
    Modulo.tCategoria.Close
  End {Try}
end;

procedure TFMainMenu.Rep_Prod_Clasificados_FabricanteExecute(Sender: TObject);
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
           Mensaje(_NoPrintData)
      End {If}
  Finally
    FCriterioRepProductos.Free;
    Modulo.tReporter.Close;
    Modulo.tFabricante.Close
  End {Try}
end;

procedure TFMainMenu.Rep_Prod_Clasificados_ProveedorExecute(Sender: TObject);
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
           Mensaje(_NoPrintData)
      End {If}
  Finally
    FCriterioRepProductos.Free;
    Modulo.tReporter.Close;
    Modulo.tProveedores.Close;
    Modulo.tFabricante.Close
  End {Try}
end;

procedure TFMainMenu.Action8Execute(Sender: TObject);
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
  Mensaje ('Terminado ' + Label1.Caption)
end;

procedure TFMainMenu.Rep_Prod_VencimientosExecute(Sender: TObject);
begin
  OpenForm(TFCriterio_Vencimientos,FCriterio_Vencimientos);
end;

procedure TFMainMenu.Rep_Impresion_EtiquetasExecute(Sender: TObject);
begin
  OpenForm(TFCriterio_Etiquetas,FCriterio_Etiquetas);
end;

procedure TFMainMenu.Rep_VentasExecute(Sender: TObject);
begin
  Application.CreateForm(TFCriterio_Rep_Facturas,FCriterio_Rep_Facturas);
  FCriterio_Rep_Facturas.ShowModal;
  If FCriterio_Rep_Facturas.ModalResult = MrOk Then
    Begin
      Case FCriterio_Rep_Facturas.Clasificacion.ItemIndex Of
        0 : Begin
              Modulo.tReporter.Filter := '';
              Modulo.tReporter.Filtered := False;
              ReportsAndForms.RptPagos.Visible := True;
              ReportsAndForms.RptEfectivo.Visible := True
            end;

        1 : Begin
              Modulo.tReporter.Filter := 'Condicion = ' + QuotedStr('Contado');
              Modulo.tReporter.Filtered := True;
              ReportsAndForms.RptPagos.Visible := False;
              ReportsAndForms.RptEfectivo.Visible := False
            end;

        2 : Begin
              Modulo.tReporter.Filter := Format('(Condicion = %s) Or (Condicion = %s)',[QuotedStr('Crédito'),QuotedStr('Financiamiento')]);
              Modulo.tReporter.Filtered := True;
              ReportsAndForms.RptPagos.Visible := False;
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

      Modulo.tListadoPagos.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
      Modulo.tListadoPagos.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;
      ReportsAndForms.ClasificacionVentas.Caption := Format('Reporte de Facturas del %s al %s',[DateToStr(DlgFecha.Inicio.Date),DateToStr(DlgFecha.Fin.Date)]);

      Modulo.tReporter.Open;
      Modulo.tDesgloceEfectivo.Open;
      Modulo.tListadoPagos.Open;

      ReportsAndForms.Pipe_Facturas.DataSource := Modulo.dReporter;

        If (Modulo.tReporter.RecordCount > 0) Or
           (Modulo.tListadoPagos.RecordCount > 0) Then

        ReportsAndForms.Reporte_Ventas.Print
      Else Mensaje (_NoPrintData);
      Modulo.tReporter.Close;
      Modulo.tDesgloceEfectivo.Close;
      Modulo.tListadoPagos.Close
    End;
  DlgFecha.Free;
  FCriterio_Rep_Facturas.Free;
  Modulo.tReporter.Filter := '';
  Modulo.tReporter.Filtered := False
end;

procedure TFMainMenu.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFMainMenu.Rep_Prod_GeneralExecute(Sender: TObject);
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
      Mensaje(_NoPrintData)
  Finally
    Modulo.tReporter.Close;
    Modulo.tFabricante.Close
  End {Try}
end;

procedure TFMainMenu.VendedoresExecute(Sender: TObject);
begin
  OpenForm(TFVendedores,FVendedores)
end;

procedure TFMainMenu.Ventas_CajaExecute(Sender: TObject);
begin
  OpenForm(TFVentas_Caja,FVentas_Caja)
end;

procedure TFMainMenu.Rep_Prod_Mercancia_VendidaExecute(Sender: TObject);
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
             Else Mensaje(_NoPrintData)
           End {If}
      End {If}
  Finally
    FCriterioRepVendida.Free;
    Modulo.tReporter.Close;
    Modulo.tListadoProductos.Close
  End {Try}
end;

procedure TFMainMenu.Opciones_SistemasExecute(Sender: TObject);
begin
  OpenForm(TFOpciones,FOpciones)
end;

procedure TFMainMenu.Orden_CompraExecute(Sender: TObject);
begin
  OpenForm(TFOrden_Compra_Productos,FOrden_Compra_Productos)
end;

procedure TFMainMenu.Niveles_AccesoExecute(Sender: TObject);
begin
  OpenForm(TFNiveles,FNiveles)
end;

procedure TFMainMenu.Notas_Credito_ClientesExecute(Sender: TObject);
begin
  OpenForm(TFNotas_Credito,FNotas_Credito)
end;

procedure TFMainMenu.Actualizacion_UsuariosExecute(Sender: TObject);
begin
  OpenForm(TFUsuarios,FUsuarios)
end;

procedure TFMainMenu.Registro_DenominacionesExecute(Sender: TObject);
begin
  OpenForm(TFDenominaciones,FDenominaciones)
end;

procedure TFMainMenu.Reporte_Entradas_DiarioExecute(Sender: TObject);
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
         Else Mensaje(_NoPrintData)
       End {If}
  Finally
    DlgFecha.Free;
    ModuloContabilidad.tListado_Transacciones.Close
  End {Try}
end;

procedure TFMainMenu.Rep_ClientesExecute(Sender: TObject);
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

procedure TFMainMenu.Rep_Cuadre_CajaExecute(Sender: TObject);
begin
  OpenForm(TFCuadre_Caja,FCuadre_Caja)
end;

procedure TFMainMenu.Retiros_CajaExecute(Sender: TObject);
begin
  OpenForm(TFRetiros_Caja,FRetiros_Caja)
end;

procedure TFMainMenu.Cuentas_CobrarExecute(Sender: TObject);
begin
  OpenForm(TFCtas_Cobrar,FCtas_Cobrar)
end;

procedure TFMainMenu.Cuentas_ContablesExecute(Sender: TObject);
begin
  OpenForm(TFCuentas_Contables,FCuentas_Contables)
end;

procedure TFMainMenu.Mercancia_CompradaExecute(Sender: TObject);
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
             Else Mensaje(_NoPrintData)
           End {If}
      End {If}
  Finally
    FCriterioRepVendida.Free;
    Modulo.tReporter.Close;
    Modulo.tListadoProductos.Close
  End {Try}
end;

procedure TFMainMenu.FormActivate(Sender: TObject);
begin
  Modulo.ColorConfig.Color := Color - 5;
end;

procedure TFMainMenu.Importar_DatosExecute(Sender: TObject);
begin
  OpenForm(TFImportar,FImportar)
end;

procedure TFMainMenu.Informacion_LaboralExecute(Sender: TObject);
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
        Else Mensaje(_NoPrintData)
      End {If}
  Finally
    FCriterioDepartamento.Free;
    ModuloNomina.tListado_Laboral.Close
  End {Try}
end;

procedure TFMainMenu.Libro_MayorExecute(Sender: TObject);
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
             Else Mensaje(_NoPrintData)
           End {If}
      End {If}
  Finally
    FCriterioLibroMayor.Free;
    DlgFecha.Free;
    ModuloContabilidad.tMayor.Close
  End {Try}
end;

procedure TFMainMenu.CompaniasExecute(Sender: TObject);
begin
  OpenForm(TFCompanias,FCompanias)
end;

procedure TFMainMenu.DeduccionesExecute(Sender: TObject);
begin
  OpenForm(TFDeducciones,FDeducciones)
end;

procedure TFMainMenu.Departamentos_NominaExecute(Sender: TObject);
begin
  OpenForm(TFDepartamentos_Nomina,FDepartamentos_Nomina)
end;

procedure TFMainMenu.Directorio_EmpleadosExecute(Sender: TObject);
begin
  ModuloNomina.tListado_Laboral.Params.ParamByName('Compania').AsInteger := ModuloNomina.tCompaniaNumero_Compania.AsInteger;
  ModuloNomina.tListado_Laboral.Params.ParamByName('Departamento').AsInteger := ModuloNomina.tDepartamentosNumero.AsInteger;
  ModuloNomina.tListado_Laboral.Open;

  ModuloNomina.tListado_Empleados.Open;
  If (ModuloNomina.tListado_Empleados.RecordCount > 0) Then PayRoll_Forms.ListadoEmpleados.Print
  Else Mensaje(_NoPrintData)
end;

procedure TFMainMenu.Entradas_Horas_DiariasExecute(Sender: TObject);
begin
  OpenForm(TFDiario,FDiario)
end;

procedure TFMainMenu.Generar_NominaExecute(Sender: TObject);
begin
  OpenForm(TFNomina,FNomina)
end;

procedure TFMainMenu.Grupos_NominaExecute(Sender: TObject);
begin
  OpenForm(TFGrupos_Nomina,FGrupos_Nomina)
end;

procedure TFMainMenu.Pagos_FechaExecute(Sender: TObject);
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
    End {Try}
end;

procedure TFMainMenu.Pagos_IncentivosExecute(Sender: TObject);
begin
  OpenForm(TFPagos_Incentivos,FPagos_Incentivos)
end;

procedure TFMainMenu.Paises_Ciudades_Sectores_ZonasExecute(Sender: TObject);
begin
  OpenForm(TFPaises,FPaises)
end;

procedure TFMainMenu.Nomina_RegaliaExecute(Sender: TObject);
begin
  If MonthOf(Modulo.Enlace.AppServer.ServerDate) <> 12 Then
    Begin
      Mensaje ('La Regalía Pascual se Genera Solamente a Final de Año');
      Exit
    end;
  OpenForm(TFRegalia,FRegalia)
end;

procedure TFMainMenu.ReagruparExecute(Sender: TObject);
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

procedure TFMainMenu.EmpleadosExecute(Sender: TObject);
begin
  OpenForm(TFEmpleados,FEmpleados)
end;

Initialization
  RegisterClass(TFMainMenu);
  
end.
