unit Generales;

interface

uses
  SysUtils, Classes, DB, DBClient, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvAlertWindow, cxEdit, cxEditRepositoryItems,
  TaskDialog, Controls, cxStyles, cxContainer;

type
  TModuloGenerales = class(TDataModule)
    tUsuarios: TClientDataSet;
    tUsuariosNombreCompleto: TStringField;
    tUsuariosPassword: TStringField;
    tUsuariosNivel_Acceso: TStringField;
    dUsuarios: TDataSource;
    tNiveles: TClientDataSet;
    dNiveles: TDataSource;
    tOpciones: TClientDataSet;
    dOpciones: TDataSource;
    tAccesos: TClientDataSet;
    tAccesosOpcion: TStringField;
    tAccesosNivel: TStringField;
    tAccesosForm: TStringField;
    dAccesos: TDataSource;
    tForms: TClientDataSet;
    dForms: TDataSource;
    dPaises: TDataSource;
    tPaises: TClientDataSet;
    dCiudades: TDataSource;
    tCiudades: TClientDataSet;
    dSectores: TDataSource;
    tSectores: TClientDataSet;
    tZonas: TClientDataSet;
    dZonas: TDataSource;
    tListado_Paises: TClientDataSet;
    dListado_Paises: TDataSource;
    tListadoUsuarios: TClientDataSet;
    dListadoUsuarios: TDataSource;
    tlst_Compania_Status: TClientDataSet;
    dlst_Compania_Status: TDataSource;
    tCompania: TClientDataSet;
    dCompania: TDataSource;
    tCompaniaNumero_Compania: TIntegerField;
    tCompaniaRegistrado_En_Fecha: TDateTimeField;
    tCompaniaRNC: TStringField;
    tCompaniaCuenta_Nomina: TStringField;
    tCompaniaID: TStringField;
    tCompaniaNombre: TStringField;
    tCompaniaNombre_Linea_2: TStringField;
    tCompaniaNombre_Linea_3: TStringField;
    tCompaniaDireccion: TStringField;
    tCompaniaDireccion_Linea_2: TStringField;
    tCompaniaTelefono_Principal: TStringField;
    tCompaniaTipo_Telefono_Principal: TStringField;
    tCompaniaTelefono_Secundario: TStringField;
    tCompaniaTipo_Telefono_Secundario: TStringField;
    tCompaniaTelefono_Tercero: TStringField;
    tCompaniaTipo_Telefono_Tercero: TStringField;
    tCompaniaTelefono_Otro: TStringField;
    tCompaniaTipo_Telefono_Otro: TStringField;
    tCompaniaSlogan_Comentario: TStringField;
    tCompaniaPais: TStringField;
    tCompaniaCiudad_Estado: TStringField;
    tCompaniaResponsable: TStringField;
    tCompaniaFecha_Institucion: TDateField;
    tCompaniaSerie_NCF: TStringField;
    tCompaniaDivision_NCF: TStringField;
    tCompaniaPunto_Emision_NCF: TStringField;
    tCompaniaLimite_NCF: TIntegerField;
    tCompaniaAlerta_NCF: TIntegerField;
    tCompaniaLogo: TBlobField;
    tCompaniaFecha_Creacion: TDateField;
    tCompaniaStatus: TStringField;
    tCompaniaCBS: TBooleanField;
    tTerminales: TClientDataSet;
    dTerminales: TDataSource;
    tTerminalesID: TStringField;
    tTerminalesDescripcion: TStringField;
    tTerminalesID_Caja: TStringField;
    tTerminalesID_Almacen: TStringField;
    tTerminalesID_Departamento: TStringField;
    tTerminalesManejo_Inventario: TStringField;
    tTerminalesTermino_COD: TStringField;
    tTerminalesTermino_Credito: TStringField;
    tTerminalesTermino_Financiado: TStringField;
    tTerminalesSimbolo_Moneda: TStringField;
    tTerminalesFormato_Numeros: TStringField;
    tTerminalesFormato_Fecha: TStringField;
    tTerminalesFormato_Fecha_Largo: TStringField;
    tTerminalesFormato_Hora: TStringField;
    tTerminalesFormato_Hora_Largo: TStringField;
    tTerminalesDecimales_Cantidades: TStringField;
    tTerminalesDecimales_Moneda: TStringField;
    tTerminalesImpresora: TStringField;
    tTerminalesPuerto: TStringField;
    tTerminalesSeparador_Linea: TStringField;
    tTerminalesAncho_Linea: TSmallintField;
    tTerminalesLineas_Expulsar: TSmallintField;
    tTerminalesCtrl_Alt_Del: TBooleanField;
    tTerminalesAlt_F4: TBooleanField;
    tTerminalesBarra_Windows: TBooleanField;
    tTerminalesPanel_Control: TBooleanField;
    tTerminalesRun: TBooleanField;
    tTerminalesFind: TBooleanField;
    tTerminalesWindows_Key: TBooleanField;
    tTerminalesApagar_Salir: TBooleanField;
    tTerminalesColor_Pantallas: TIntegerField;
    tTerminalesComentario: TStringField;
    tTerminalesComentario_Linea_2: TStringField;
    tTerminalesComentario_Linea_3: TStringField;
    tTerminalesComentario_Linea_4: TStringField;
    tTerminalesStatus: TStringField;
    tTerminalesConcepto_Status: TStringField;
    tTerminalesFecha_Instalacion: TDateField;
    tTerminalesFecha_Vencimiento: TDateField;
    tTerminalesEjecuciones: TSmallintField;
    tTerminalesLimite_Ejecuciones: TSmallintField;
    tTerminalesNombre_Mascara: TStringField;
    tTerminalesDireccion_Mascara: TStringField;
    tTerminalesDireccion_IP: TStringField;
    tTerminalesDireccion_NETBIOS: TStringField;
    tTerminalesCPU_ID: TStringField;
    tTerminalesMAC_Address: TStringField;
    tTerminalesCarpeta_Fotos_ID: TStringField;
    tTerminalesAncho_Fotos_Documentos: TIntegerField;
    tTerminalesAltura_Fotos_Documentos: TIntegerField;
    tLst_Terminales_Status: TClientDataSet;
    dLst_Terminales_Status: TDataSource;
    tLst_Terminales_StatusID: TStringField;
    tLst_Terminales_StatusDescripcion: TStringField;
    tLst_Terminales_StatusID_Caja: TStringField;
    tLst_Terminales_StatusID_Almacen: TStringField;
    tLst_Terminales_StatusID_Departamento: TStringField;
    tLst_Terminales_StatusManejo_Inventario: TStringField;
    tLst_Terminales_StatusTermino_COD: TStringField;
    tLst_Terminales_StatusTermino_Credito: TStringField;
    tLst_Terminales_StatusTermino_Financiado: TStringField;
    tLst_Terminales_StatusSimbolo_Moneda: TStringField;
    tLst_Terminales_StatusFormato_Numeros: TStringField;
    tLst_Terminales_StatusFormato_Fecha: TStringField;
    tLst_Terminales_StatusFormato_Fecha_Largo: TStringField;
    tLst_Terminales_StatusFormato_Hora: TStringField;
    tLst_Terminales_StatusFormato_Hora_Largo: TStringField;
    tLst_Terminales_StatusDecimales_Cantidades: TStringField;
    tLst_Terminales_StatusDecimales_Moneda: TStringField;
    tLst_Terminales_StatusImpresora: TStringField;
    tLst_Terminales_StatusPuerto: TStringField;
    tLst_Terminales_StatusSeparador_Linea: TStringField;
    tLst_Terminales_StatusAncho_Linea: TSmallintField;
    tLst_Terminales_StatusLineas_Expulsar: TSmallintField;
    tLst_Terminales_StatusCtrl_Alt_Del: TBooleanField;
    tLst_Terminales_StatusAlt_F4: TBooleanField;
    tLst_Terminales_StatusBarra_Windows: TBooleanField;
    tLst_Terminales_StatusPanel_Control: TBooleanField;
    tLst_Terminales_StatusRun: TBooleanField;
    tLst_Terminales_StatusFind: TBooleanField;
    tLst_Terminales_StatusWindows_Key: TBooleanField;
    tLst_Terminales_StatusApagar_Salir: TBooleanField;
    tLst_Terminales_StatusColor_Pantallas: TIntegerField;
    tLst_Terminales_StatusComentario: TStringField;
    tLst_Terminales_StatusComentario_Linea_2: TStringField;
    tLst_Terminales_StatusComentario_Linea_3: TStringField;
    tLst_Terminales_StatusComentario_Linea_4: TStringField;
    tLst_Terminales_StatusStatus: TStringField;
    tLst_Terminales_StatusConcepto_Status: TStringField;
    tLst_Terminales_StatusFecha_Instalacion: TDateField;
    tLst_Terminales_StatusFecha_Vencimiento: TDateField;
    tLst_Terminales_StatusEjecuciones: TSmallintField;
    tLst_Terminales_StatusLimite_Ejecuciones: TSmallintField;
    tLst_Terminales_StatusNombre_Mascara: TStringField;
    tLst_Terminales_StatusDireccion_Mascara: TStringField;
    tLst_Terminales_StatusDireccion_IP: TStringField;
    tLst_Terminales_StatusDireccion_NETBIOS: TStringField;
    tLst_Terminales_StatusCPU_ID: TStringField;
    tLst_Terminales_StatusMAC_Address: TStringField;
    tLst_Terminales_StatusCarpeta_Fotos_ID: TStringField;
    tLst_Terminales_StatusAncho_Fotos_Documentos: TIntegerField;
    tLst_Terminales_StatusAltura_Fotos_Documentos: TIntegerField;
    tUsuariosUserName: TStringField;
    tUsuariosDescription: TStringField;
    tUsuariosDefault_Company: TStringField;
    tUsuariosDefault_Terminal: TStringField;
    tUsuariosLast_Company: TStringField;
    tUsuariosLast_Terminal: TStringField;
    tUsuariosLast_Login: TDateTimeField;
    tUsuariosUser_Type: TStringField;
    tUsuariosFoto: TBlobField;
    tUsuariosmail: TStringField;
    tUsuariosDate_Created: TDateTimeField;
    tUsuariosStatus: TStringField;
    tlst_Compania_StatusNumero_Compania: TIntegerField;
    tlst_Compania_StatusRegistrado_En_Fecha: TDateTimeField;
    tlst_Compania_StatusRNC: TStringField;
    tlst_Compania_StatusCuenta_Nomina: TStringField;
    tlst_Compania_StatusID: TStringField;
    tlst_Compania_StatusNombre: TStringField;
    tlst_Compania_StatusNombre_Linea_2: TStringField;
    tlst_Compania_StatusNombre_Linea_3: TStringField;
    tlst_Compania_StatusDireccion: TStringField;
    tlst_Compania_StatusDireccion_Linea_2: TStringField;
    tlst_Compania_StatusTelefono_Principal: TStringField;
    tlst_Compania_StatusTipo_Telefono_Principal: TStringField;
    tlst_Compania_StatusTelefono_Secundario: TStringField;
    tlst_Compania_StatusTipo_Telefono_Secundario: TStringField;
    tlst_Compania_StatusTelefono_Tercero: TStringField;
    tlst_Compania_StatusTipo_Telefono_Tercero: TStringField;
    tlst_Compania_StatusTelefono_Otro: TStringField;
    tlst_Compania_StatusTipo_Telefono_Otro: TStringField;
    tlst_Compania_StatusSlogan_Comentario: TStringField;
    tlst_Compania_StatusPais: TStringField;
    tlst_Compania_StatusCiudad_Estado: TStringField;
    tlst_Compania_StatusResponsable: TStringField;
    tlst_Compania_StatusFecha_Institucion: TDateField;
    tlst_Compania_StatusSerie_NCF: TStringField;
    tlst_Compania_StatusDivision_NCF: TStringField;
    tlst_Compania_StatusPunto_Emision_NCF: TStringField;
    tlst_Compania_StatusLimite_NCF: TIntegerField;
    tlst_Compania_StatusAlerta_NCF: TIntegerField;
    tlst_Compania_StatusLogo: TBlobField;
    tlst_Compania_StatusFecha_Creacion: TDateField;
    tlst_Compania_StatusStatus: TStringField;
    tlst_Compania_StatusCBS: TBooleanField;
    StatusBarStyler: TAdvOfficeStatusBarOfficeStyler;
    Mensajes: TAdvAlertWindow;
    tARS: TClientDataSet;
    dARS: TDataSource;
    tARSNumero: TIntegerField;
    tARSDescripcion: TStringField;
    tARSLogo: TBlobField;
    tAFP: TClientDataSet;
    dAFP: TDataSource;
    tAFPNumero: TIntegerField;
    tAFPDescripcion: TStringField;
    tAFPLogo: TBlobField;
    tCompaniaPresupuesto_Actual: TStringField;
    tCompaniaPresupuesto_Anterior: TStringField;
    tlst_Compania_StatusPresupuesto_Actual: TStringField;
    tlst_Compania_StatusPresupuesto_Anterior: TStringField;
    tListado_PaisesIso_3_Char: TStringField;
    tListado_PaisesIso_2_Char: TStringField;
    tListado_PaisesNombre: TStringField;
    tListado_PaisesRegion: TStringField;
    tListado_PaisesIdioma: TStringField;
    tDocumentos: TClientDataSet;
    dDocumentos: TDataSource;
    tDocumentosID: TStringField;
    tDocumentosArchivo: TStringField;
    tDocumentosNombre: TStringField;
    tDocumentosFecha_Creacion: TDateField;
    tDocumentosStatus: TStringField;
    tDocumentosTipo: TStringField;
    tDocumentosAPLICA: TStringField;
    tCategorias: TClientDataSet;
    dCategorias: TDataSource;
    tCategoriasID: TStringField;
    tCategoriasNombre: TStringField;
    tCategoriasFecha_Creacion: TDateField;
    tCategoriasStatus: TStringField;
    tCategoriasTipo: TStringField;
    tCategoriasPrioridad: TSmallintField;
    EditStyleController: TcxEditStyleController;
    grdRepositoryItems: TcxEditRepository;
    grdPictures: TcxEditRepositoryImageItem;
    grdsRepository: TcxStyleRepository;
    grdStyleDescuentos: TcxStyle;
    grdStyleImpuestos: TcxStyle;
    grdStyleSubTotales: TcxStyle;
    grdStyleTotales: TcxStyle;
    styChecked: TcxStyle;
    tDocumentosSelected: TBooleanField;
    tCompaniaemail: TStringField;
    tCompaniaURL: TStringField;
    tCompaniatwitter: TStringField;
    tCompaniaFaceBook: TStringField;
    tlst_Compania_Statusemail: TStringField;
    tlst_Compania_StatusURL: TStringField;
    tlst_Compania_Statustwitter: TStringField;
    tlst_Compania_StatusFaceBook: TStringField;
    tTerminalesRestringir_Dias_Semana: TBooleanField;
    tLst_Terminales_StatusRestringir_Dias_Semana: TBooleanField;
    tCompaniaDireccion_Compuesta: TStringField;
    tCompaniaTelefono_Compuesto: TStringField;
    tLst_Terminales_StatusOutputDir: TStringField;
    tTerminalesOutputDir: TStringField;
    tListado_Empleados: TClientDataSet;
    tListado_EmpleadosCedula_Rnc_Pasaporte: TStringField;
    tListado_EmpleadosNombreCompleto: TStringField;
    tListado_EmpleadosTipo_Documento: TStringField;
    tListado_EmpleadosSecuencia: TIntegerField;
    tListado_EmpleadosNombre: TStringField;
    tListado_EmpleadosApellido: TStringField;
    tListado_EmpleadosNacionalidad: TStringField;
    tListado_EmpleadosSexo: TStringField;
    tListado_EmpleadosTipo_Telefono_1: TStringField;
    tListado_EmpleadosTipo_Telefono_2: TStringField;
    tListado_EmpleadosTipo_Telefono_3: TStringField;
    tListado_EmpleadosTipo_Telefono_4: TStringField;
    tListado_EmpleadosNumero_Telefono_1: TStringField;
    tListado_EmpleadosNumero_Telefono_2: TStringField;
    tListado_EmpleadosNumero_Telefono_3: TStringField;
    tListado_EmpleadosNumero_Telefono_4: TStringField;
    tListado_EmpleadosDireccion: TStringField;
    tListado_EmpleadosPais: TStringField;
    tListado_EmpleadosCiudad: TStringField;
    tListado_EmpleadosNumero_Tarjeta: TStringField;
    tListado_EmpleadosNumero_Cuenta: TStringField;
    tListado_EmpleadosRegistrado_En_Fecha: TDateTimeField;
    tListado_Empleadosmail: TStringField;
    tListado_EmpleadosFoto: TBlobField;
    tListado_EmpleadosFecha_Nacimiento: TDateField;
    tListado_EmpleadosEstado_Civil: TStringField;
    tListado_EmpleadosCodigo_Banco: TStringField;
    tCompaniaDia_Corte_Nomina_Mensual: TSmallintField;
    tCompaniaDia_Corte_Primera_Quincena: TSmallintField;
    tCompaniaDia_Corte_Segunda_Quincena: TSmallintField;
    tCompaniaDia_Inicio_Semana: TSmallintField;
    tCompaniaDia_Final_Semana: TSmallintField;
    tlst_Compania_StatusDia_Corte_Nomina_Mensual: TSmallintField;
    tlst_Compania_StatusDia_Corte_Primera_Quincena: TSmallintField;
    tlst_Compania_StatusDia_Corte_Segunda_Quincena: TSmallintField;
    tlst_Compania_StatusDia_Inicio_Semana: TSmallintField;
    tlst_Compania_StatusDia_Final_Semana: TSmallintField;
    tFormsName: TStringField;
    tFormsDescription: TStringField;
    tFormsClass_Name: TStringField;
    tOpcionesForm: TStringField;
    tOpcionesOpcion: TStringField;
    tOpcionesDescripcion: TStringField;
    tOpcionesTipo: TStringField;
    tNivelesCodigo: TStringField;
    tNivelesDescripcion: TStringField;
    tNivelesFecha: TDateField;
    tAutorizaciones: TClientDataSet;
    dAutorizaciones: TDataSource;
    tAutorizacionesForm: TStringField;
    tAutorizacionesNombre: TStringField;
    tAutorizacionesTipo: TStringField;
    tListadoUsuariosNombreCompleto: TStringField;
    tListadoUsuariosPassword: TStringField;
    tListadoUsuariosNivel_Acceso: TStringField;
    tListadoUsuariosUserName: TStringField;
    tListadoUsuariosDescription: TStringField;
    tListadoUsuariosDefault_Company: TStringField;
    tListadoUsuariosDefault_Terminal: TStringField;
    tListadoUsuariosLast_Company: TStringField;
    tListadoUsuariosLast_Terminal: TStringField;
    tListadoUsuariosLast_Login: TDateTimeField;
    tListadoUsuariosUser_Type: TStringField;
    tListadoUsuariosFoto: TBlobField;
    tListadoUsuariosmail: TStringField;
    tListadoUsuariosDate_Created: TDateTimeField;
    tListadoUsuariosStatus: TStringField;
    tPaisesIso_3_Char: TStringField;
    tPaisesIso_2_Char: TStringField;
    tPaisesNombre: TStringField;
    tPaisesRegion: TStringField;
    tPaisesIdioma: TStringField;
    tPaisesBandera: TBlobField;
    tPaisesEscudo: TBlobField;
    tPaisesStatus: TStringField;
    tPaisesqrCiudades: TDataSetField;
    tCiudadesSerie_Codigo: TStringField;
    tCiudadesPais: TStringField;
    tCiudadesNombre: TStringField;
    tCiudadesEscudo: TBlobField;
    tCiudadesStatus: TStringField;
    tCiudadesqrZonas: TDataSetField;
    tCiudadesqrSectores: TDataSetField;
    tSectoresPais: TStringField;
    tSectoresCiudad: TStringField;
    tSectoresNombre: TStringField;
    tSectoresAbreviatura: TStringField;
    tSectoresStatus: TStringField;
    tSectoresNumero: TIntegerField;
    tZonasID: TStringField;
    tZonasCiudad: TStringField;
    tZonasPais: TStringField;
    tZonasDescripcion: TStringField;
    tZonasStatus: TStringField;
    tZonasNumero: TIntegerField;
    tTerminalesHora_Apertura: TTimeField;
    tTerminalesHora_Cierre: TTimeField;
    tTerminalesNombre: TStringField;
    tTerminalesDireccion: TStringField;
    tTerminalesCiudad: TStringField;
    tTerminalesPais: TStringField;
    tTerminalesTelefono: TStringField;
    tTerminalesComentario_1: TStringField;
    tTerminalesComentario_2: TStringField;
    tTerminalesComentario_3: TStringField;
    tTerminalesComentario_4: TStringField;
    tTerminalesFormato_N_T_H: TStringField;
    tTerminalesBarra: TBooleanField;
    tTerminalesPanel: TBooleanField;
    tTerminalesWinKey: TBooleanField;
    tTerminalesLineas_Despues: TSmallintField;
    tTerminalesDireccion_Local: TStringField;
    tTerminalesIcon: TSmallintField;
    tTerminalesBalance: TFloatField;
    tTerminalesUltima_Cta: TIntegerField;
    tTerminalesFecha_Ultima_Cta: TDateField;
    tTerminalesRNC: TStringField;
    tTerminalesNombre_Impuesto: TStringField;
    tTerminalesCondicion_Facturas: TStringField;
    tTerminalesTermino_LayAway: TIntegerField;
    tTerminalesPorcentaje_LayAway: TFloatField;
    tTerminalesTipo_Factura: TStringField;
    tTerminalesTermino_Facturacion: TStringField;
    tTerminalesInventario_Restringido: TBooleanField;
    tTerminalesAperturar_Caja: TBooleanField;
    tTerminalesAlmacen: TStringField;
    tTerminalesNombre_2: TStringField;
    tTerminalesNombre_3: TStringField;
    tTerminalesDireccion_2: TStringField;
    styRed: TcxStyle;
    styBlack: TcxStyle;
    tUsuariosAccess_Level: TStringField;
    tUsuariosPorciento_Autorizado: TIntegerField;
    tListadoUsuariosAccess_Level: TStringField;
    procedure DataSetReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure tNivelesAfterScroll(DataSet: TDataSet);
    procedure tNivelesAfterDelete(DataSet: TDataSet);
    procedure tFormsAfterScroll(DataSet: TDataSet);
    procedure tAccesosAfterRefresh(DataSet: TDataSet);
    procedure ChkRefresh(DataSet: TDataSet);
    procedure tPaisesAfterRefresh(DataSet: TDataSet);
    procedure tListado_PaisesAfterRefresh(DataSet: TDataSet);
    Procedure CloseDbs;
    procedure tCiudadesBeforePost(DataSet: TDataSet);
    procedure tSectoresBeforePost(DataSet: TDataSet);
    procedure tZonasBeforePost(DataSet: TDataSet);
    procedure tCompaniaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AddCategory(Const Name : String; Const ID,CategoryType : String; Const Priority : SmallInt = 1; Const ShowScreen : Boolean = True);
    Function Autorizar_Opcion(Aowner : TComponent; Const FrmName : String) : Integer;
  end;

var
  ModuloGenerales: TModuloGenerales;

implementation

uses Utilidades, Autorizar;

{$R *.dfm}

procedure TModuloGenerales.DataSetReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Utilidades.DataSetReconcileError(DataSet,E,UpdateKind,Action)
end;

Procedure TModuloGenerales.CloseDbs;
  Var
    I : Integer;
  begin
    For I := 0 To ComponentCount - 1 Do
      If (Components[I] Is TClientDataSet) Then (Components[I] As TClientDataSet).Close
  end;

procedure TModuloGenerales.tNivelesAfterScroll(DataSet: TDataSet);
begin
  If tAccesos.Active Then
    Begin
      If tAccesos.ChangeCount > 0 Then tAccesos.CancelUpdates;
      tAccesos.Params.ParamByName('Nivel').Value := tNivelesCodigo.Value;
      tAccesos.Refresh
    End
end;

procedure TModuloGenerales.tPaisesAfterRefresh(DataSet: TDataSet);
begin
  ChkRefresh(tPaises)
end;

procedure TModuloGenerales.tSectoresBeforePost(DataSet: TDataSet);
begin
  If Trim(tSectoresCiudad.Value) = '' Then
    tSectoresCiudad.Value := tCiudadesSerie_Codigo.Value;

  If Trim(tSectoresPais.Value) = '' Then
    tSectoresPais.Value := tPaisesIso_3_Char.Value
end;

procedure TModuloGenerales.tZonasBeforePost(DataSet: TDataSet);
begin
  If Trim(tZonasCiudad.Value) = '' Then
    tZonasCiudad.Value := tCiudadesSerie_Codigo.Value;

  If Trim(tZonasPais.Value) = '' Then
    tZonasPais.Value := tPaisesIso_3_Char.Value
end;

function TModuloGenerales.Autorizar_Opcion(Aowner : TComponent; const FrmName: String): Integer;
  Var
    F : TfrmUser_Grant;
begin
  F := TfrmUser_Grant.Create(Aowner,FrmName);
  F.ShowModal;
  Result := F.ModalResult;
  F.Free;
end;

procedure TModuloGenerales.ChkRefresh(DataSet: TDataSet);
begin
  DoBeforeRefresh(DataSet);
end;

procedure TModuloGenerales.tAccesosAfterRefresh(DataSet: TDataSet);
begin
  If tOpciones.Active Then tOpciones.Refresh
end;

procedure TModuloGenerales.tCiudadesBeforePost(DataSet: TDataSet);
begin
  If Trim(tCiudadesPais.Value) = '' Then
    tCiudadesPais.Value := tPaisesIso_3_Char.Value
end;

procedure TModuloGenerales.tCompaniaCalcFields(DataSet: TDataSet);
begin
  // Direccion
  If Trim(tCompaniaDireccion.Value) <> '' Then
    tCompaniaDireccion_Compuesta.Value := tCompaniaDireccion.Value;

  If Trim(tCompaniaCiudad_Estado.Value) <> '' Then
    Begin
      If Trim(tCompaniaDireccion_Compuesta.Value) <> '' Then tCompaniaDireccion_Compuesta.Value := tCompaniaDireccion_Compuesta.Value + ', ';
      tCompaniaDireccion_Compuesta.Value := tCompaniaDireccion_Compuesta.Value + tCompaniaCiudad_Estado.Value;
    End;

  If Trim(tCompaniaPais.Value) <> '' Then
    Begin
      If Trim(tCompaniaDireccion_Compuesta.Value) <> '' Then tCompaniaDireccion_Compuesta.Value := tCompaniaDireccion_Compuesta.Value + ', ';
      tCompaniaDireccion_Compuesta.Value := tCompaniaDireccion_Compuesta.Value + tCompaniaPais.Value;
    End;

  // Telefonos / RNC
  If Trim(tCompaniaRNC.Value) <> '' Then
    tCompaniaTelefono_Compuesto.Value := 'RNC.: ' +
                                         tCompaniaRNC.Value;

  If Trim(tCompaniaTelefono_Principal.Value) <> '' Then
    Begin
      If Trim(tCompaniaTelefono_Compuesto.Value) <> '' Then tCompaniaTelefono_Compuesto.Value := tCompaniaTelefono_Compuesto.Value + ' / ';
      tCompaniaTelefono_Compuesto.Value := tCompaniaTelefono_Compuesto.Value +
                                           tCompaniaTipo_Telefono_Principal.Value + ': ' +
                                           tCompaniaTelefono_Principal.Value;
    End;

  If Trim(tCompaniaTelefono_Secundario.Value) <> '' Then
    Begin
      If Trim(tCompaniaTelefono_Compuesto.Value) <> '' Then tCompaniaTelefono_Compuesto.Value := tCompaniaTelefono_Compuesto.Value + ' / ';
      tCompaniaTelefono_Compuesto.Value := tCompaniaTelefono_Compuesto.Value +
                                           tCompaniaTipo_Telefono_Secundario.Value + ': ' +
                                           tCompaniaTelefono_Secundario.Value;
    End;
end;

procedure TModuloGenerales.tFormsAfterScroll(DataSet: TDataSet);
begin
  If tAccesos.Active Then
    begin
      tAccesos.Filter := 'Form = ' + QuotedStr(tFormsName.Value);
      tAccesos.Filtered := True
    end;

  If tOpciones.Active Then
    begin
      tOpciones.Filter := 'Form = ' + QuotedStr(tFormsName.Value);
      tOpciones.Filtered := True
    end;

  ParamSearchKey(tAutorizaciones,'Form',tFormsName.Value);

end;

procedure TModuloGenerales.tListado_PaisesAfterRefresh(DataSet: TDataSet);
begin
  ChkRefresh(tListado_Paises)
end;

procedure TModuloGenerales.tNivelesAfterDelete(DataSet: TDataSet);
begin
  If (DataSet as TClientDataSet).ChangeCount > 0 Then (DataSet as TClientDataSet).ApplyUpdates(0);
  (DataSet as TClientDataSet).Refresh
end;

procedure TModuloGenerales.AddCategory(Const Name : String; Const ID,CategoryType : String; Const Priority : SmallInt = 1; Const ShowScreen : Boolean = True);
  Var
    S : String;
begin
  S := Name;

    If ShowScreen Then
      If AdvMemoInput('Agregar Categoría',
                      'Escriba el Nombre a Agregar',
                      'Escriba el nombre de la categoría y haga clic en [ACEPTAR]',
                      S,
                      tiInformation,
                      Self) <> mrOk Then Exit;


  If Trim(S) = '' Then Exit;

  S := UpperCase(S);

  If Not tCategorias.Locate('Nombre',S,[]) Then
    Begin
      tCategorias.Append;
      tCategorias.FieldByName('Nombre').AsString := S;
      tCategorias.FieldByName('ID').AsString := ID;
      tCategorias.FieldByName('Tipo').AsString := CategoryType;
      tCategorias.FieldByName('Prioridad').AsInteger := Priority;
      tCategorias.Post;
      tCategorias.ApplyUpdates(0)
    End
end;

Initialization
  RegisterClass(TModuloGenerales);

end.
