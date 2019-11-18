unit Generales_RDMFile;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, DataServer_TLB, StdVcl, Provider, DB, IBCustomDataSet, IBQuery,
  IBTable, IBDatabase;

type
  TGenerales_RDM = class(TRemoteDataModule, IGenerales_RDM)
    qrClientes: TIBQuery;
    qrClientesCedula_Rnc_Pasaporte: TIBStringField;
    qrClientesNombre: TIBStringField;
    qrClientesTipo_Cliente: TIBStringField;
    qrClientesTipo_Telefono_1: TIBStringField;
    qrClientesTipo_Telefono_4: TIBStringField;
    qrClientesNumero_Telefono_1: TIBStringField;
    qrClientesNumero_Telefono_2: TIBStringField;
    qrClientesNumero_Telefono_3: TIBStringField;
    qrClientesNumero_Telefono_4: TIBStringField;
    qrClientesPais: TIBStringField;
    qrClientesEstado: TIBStringField;
    qrClientesLimite_Credito: TIBBCDField;
    qrClientesNombreCompleto: TIBStringField;
    qrClientesTerminosFacturacion: TIntegerField;
    qrClientesNumero_Tarjeta: TIBStringField;
    qrClientesNumero_Cuenta: TIBStringField;
    qrClientesStatus: TIBStringField;
    qrClientesFecha_Registro: TDateField;
    qrClientesBalance_Actual: TIBBCDField;
    qrClientesUltima_Factura: TIntegerField;
    qrClientesFecha_Ultima_Factura: TDateField;
    qrClientesmail: TIBStringField;
    qrClientesSecuencia: TIntegerField;
    qrClientesProceso: TIBStringField;
    qrClientesFoto: TBlobField;
    qrClientesNacionalidad: TIBStringField;
    qrClientesSexo: TIBStringField;
    qrClientesSector: TIntegerField;
    qrClientesFecha_Nacimiento: TDateField;
    qrClientesEstado_Civil: TIBStringField;
    qrClientesZona: TIntegerField;
    qrClientesLugar_Trabajo: TIBStringField;
    prClientes: TDataSetProvider;
    qrListado_Clientes: TIBQuery;
    qrListado_ClientesCedula_Rnc_Pasaporte: TIBStringField;
    qrListado_ClientesNombre: TIBStringField;
    qrListado_ClientesApellido: TIBStringField;
    qrListado_ClientesTipo_Cliente: TIBStringField;
    qrListado_ClientesTipo_Telefono_1: TIBStringField;
    qrListado_ClientesTipo_Telefono_2: TIBStringField;
    qrListado_ClientesTipo_Telefono_3: TIBStringField;
    qrListado_ClientesTipo_Telefono_4: TIBStringField;
    qrListado_ClientesNumero_Telefono_4: TIBStringField;
    qrListado_ClientesDireccion: TIBStringField;
    qrListado_ClientesPais: TIBStringField;
    qrListado_ClientesCiudad: TIBStringField;
    qrListado_ClientesEstado: TIBStringField;
    qrListado_ClientesLimite_Credito: TIBBCDField;
    qrListado_ClientesCondicion_Cliente: TIBStringField;
    qrListado_ClientesNombreCompleto: TIBStringField;
    qrListado_ClientesTerminosFacturacion: TIntegerField;
    qrListado_ClientesNumero_Tarjeta: TIBStringField;
    qrListado_ClientesDescuento_Asignado: TIBBCDField;
    qrListado_ClientesStatus: TIBStringField;
    qrListado_ClientesFecha_Registro: TDateField;
    qrListado_ClientesBalance_Actual: TIBBCDField;
    qrListado_ClientesUltima_Factura: TIntegerField;
    qrListado_ClientesFecha_Ultima_Factura: TDateField;
    qrListado_Clientesmail: TIBStringField;
    qrListado_ClientesSecuencia: TIntegerField;
    qrListado_ClientesFoto: TBlobField;
    qrListado_ClientesNacionalidad: TIBStringField;
    qrListado_ClientesSexo: TIBStringField;
    qrListado_ClientesSector: TIntegerField;
    qrListado_ClientesFecha_Nacimiento: TDateField;
    qrListado_ClientesEstado_Civil: TIBStringField;
    qrListado_ClientesZona: TIntegerField;
    qrListado_ClientesLugar_Trabajo: TIBStringField;
    prListado_Clientes: TDataSetProvider;
    qrDepartamentos: TIBQuery;
    qrDepartamentosNumero: TIntegerField;
    qrDepartamentosDescripcion: TIBStringField;
    qrDepartamentosUsuario: TIBStringField;
    qrDepartamentosID: TIBStringField;
    prDepartamentos: TDataSetProvider;
    qrCategoria: TIBQuery;
    qrCategoriaNumero: TIntegerField;
    qrCategoriaDescripcion: TIBStringField;
    qrCategoriaUsuario: TIBStringField;
    prCategoria: TDataSetProvider;
    qrParametros: TIBQuery;
    prParametros: TDataSetProvider;
    qrFabricante: TIBQuery;
    qrFabricanteNumero: TIntegerField;
    qrFabricanteNombre: TIBStringField;
    qrFabricanteRepresentante: TIBStringField;
    qrFabricanteDireccion: TIBStringField;
    qrFabricanteCiudad: TIBStringField;
    qrFabricanteSector: TIBStringField;
    qrFabricanteStatus: TIBStringField;
    qrFabricanteFecha_Registro: TDateField;
    qrFabricanteFoto: TBlobField;
    prFabricante: TDataSetProvider;
    qrProveedores: TIBQuery;
    qrProveedoresNumero: TIntegerField;
    qrProveedoresCedula_Rnc_Pasaporte: TIBStringField;
    qrProveedoresContacto: TIBStringField;
    qrProveedoresTipo_Suplidor: TIBStringField;
    qrProveedoresTipo_Telefono_1: TIBStringField;
    qrProveedoresTipo_Telefono_2: TIBStringField;
    qrProveedoresTipo_Telefono_3: TIBStringField;
    qrProveedoresTipo_Telefono_4: TIBStringField;
    qrProveedoresNumero_Telefono_1: TIBStringField;
    qrProveedoresNumero_Telefono_2: TIBStringField;
    qrProveedoresNumero_Telefono_3: TIBStringField;
    qrProveedoresNumero_Telefono_4: TIBStringField;
    qrProveedoresDireccion: TIBStringField;
    qrProveedoresPais: TIBStringField;
    qrProveedoresCiudad: TIBStringField;
    qrProveedoresEstado: TIBStringField;
    qrProveedoresSector: TIBStringField;
    qrProveedoresLimite_Credito: TIBBCDField;
    qrProveedoresCondicion_Suplidor: TIBStringField;
    qrProveedoresTerminosFacturacion: TIntegerField;
    qrProveedoresNumero_Cuenta: TIBStringField;
    qrProveedoresDescuento_Asignado: TIBBCDField;
    qrProveedoresStatus: TIBStringField;
    qrProveedoresFecha_Registro: TDateField;
    qrProveedoresBalance_Actual: TIBBCDField;
    qrProveedoresUltima_Factura: TIntegerField;
    qrProveedoresFecha_Ultima_Factura: TDateField;
    qrProveedoresFoto: TBlobField;
    qrProveedoresZona: TIntegerField;
    prProveedores: TDataSetProvider;
    qrTerminos: TIBQuery;
    qrTerminosNumero_Termino: TIntegerField;
    qrTerminosDescripcion: TIBStringField;
    qrTerminosFormaDeVencimiento: TIBStringField;
    qrTerminosDiasDeGracia: TIntegerField;
    qrTerminosMargenDeDias: TIntegerField;
    prTerminos: TDataSetProvider;
    qrCiudades: TIBQuery;
    qrCiudadesSerie_Codigo: TIBStringField;
    qrCiudadesNombre: TIBStringField;
    prCiudades: TDataSetProvider;
    qrPaises: TIBQuery;
    qrPaisesIso_3_Char: TIBStringField;
    qrPaisesIso_2_Char: TIBStringField;
    qrPaisesNombre: TIBStringField;
    qrPaisesRegion: TIBStringField;
    qrPaisesIdioma: TIBStringField;
    prPaises: TDataSetProvider;
    qrSector: TIBQuery;
    qrSectorNumero: TIntegerField;
    qrSectorNombre: TIBStringField;
    qrSectorAbreviatura: TIBStringField;
    prSector: TDataSetProvider;
    qrZona: TIBQuery;
    qrZonaNumero: TIntegerField;
    qrZonaCiudad: TIBStringField;
    qrZonaDescripcion: TIBStringField;
    prZona: TDataSetProvider;
    qrListado_Paises: TIBQuery;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    prListado_Paises: TDataSetProvider;
    prComprobantes_Fiscales: TDataSetProvider;
    qrComprobantes_Fiscales: TIBQuery;
    qrComprobantes_FiscalesAplicable: TIBStringField;
    qrComprobantes_FiscalesSucursal: TIBStringField;
    qrComprobantes_FiscalesSecuencia: TIntegerField;
    qrComprobantes_FiscalesID: TIBStringField;
    prTerminales: TDataSetProvider;
    qrTerminales: TIBQuery;
    qrTerminalesDescripcion: TIBStringField;
    qrTerminalesHora_Apertura: TTimeField;
    qrTerminalesHora_Cierre: TTimeField;
    qrTerminalesNombre: TIBStringField;
    qrTerminalesNombre_2: TIBStringField;
    qrTerminalesNombre_3: TIBStringField;
    qrTerminalesDireccion_2: TIBStringField;
    qrTerminalesCiudad: TIBStringField;
    qrTerminalesPais: TIBStringField;
    qrTerminalesTelefono: TIBStringField;
    qrTerminalesImpresora: TIBStringField;
    qrTerminalesPuerto: TIBStringField;
    qrTerminalesFormato_Numeros: TIBStringField;
    qrTerminalesComentario_1: TIBStringField;
    qrTerminalesComentario_3: TIBStringField;
    qrTerminalesComentario_4: TIBStringField;
    qrTerminalesSeparador_Linea: TIBStringField;
    qrTerminalesSimbolo_Moneda: TIBStringField;
    qrTerminalesFormato_Fecha: TIBStringField;
    qrTerminalesFormato_Fecha_Largo: TIBStringField;
    qrTerminalesFormato_Hora_Largo: TIBStringField;
    qrTerminalesFormato_N_T_H: TIBStringField;
    qrTerminalesCtrl_Alt_Del: TBooleanField;
    qrTerminalesAlt_F4: TBooleanField;
    qrTerminalesBarra: TBooleanField;
    qrTerminalesPanel: TBooleanField;
    qrTerminalesRun: TBooleanField;
    qrTerminalesFind: TBooleanField;
    qrTerminalesWinKey: TBooleanField;
    qrTerminalesColor_Pantallas: TIntegerField;
    qrTerminalesApagar_Salir: TBooleanField;
    qrTerminalesLineas_Despues: TSmallintField;
    qrTerminalesAncho_Linea: TSmallintField;
    qrTerminalesDireccion_Local: TIBStringField;
    qrTerminalesIcon: TSmallintField;
    qrTerminalesBalance: TIBBCDField;
    qrTerminalesUltima_Cta: TIntegerField;
    qrTerminalesFecha_Ultima_Cta: TDateField;
    qrTerminalesRNC: TIBStringField;
    qrTerminalesNombre_Impuesto: TIBStringField;
    qrTerminalesCondicion_Facturas: TIBStringField;
    qrTerminalesTipo_Factura: TIBStringField;
    qrTerminalesInventario_Restringido: TBooleanField;
    qrTerminalesAperturar_Caja: TBooleanField;
    qrTerminalesAlmacen: TIBStringField;
    prTerminal: TDataSetProvider;
    qrTerminal: TIBQuery;
    qrTerminalID: TIBStringField;
    qrTerminalDescripcion: TIBStringField;
    qrTerminalStatus: TIBStringField;
    qrTerminalImpresora: TIBStringField;
    qrTerminalPuerto: TIBStringField;
    qrTerminalComentario_2: TIBStringField;
    qrTerminalSeparador_Linea: TIBStringField;
    qrTerminalSimbolo_Moneda: TIBStringField;
    qrTerminalFormato_Hora: TIBStringField;
    qrTerminalFormato_Fecha_Largo: TIBStringField;
    qrTerminalFormato_Hora_Largo: TIBStringField;
    qrTerminalCtrl_Alt_Del: TBooleanField;
    qrTerminalAlt_F4: TBooleanField;
    qrTerminalBarra: TBooleanField;
    qrTerminalPanel: TBooleanField;
    qrTerminalRun: TBooleanField;
    qrTerminalFind: TBooleanField;
    qrTerminalWinKey: TBooleanField;
    qrTerminalColor_Pantallas: TIntegerField;
    qrTerminalApagar_Salir: TBooleanField;
    qrTerminalLineas_Despues: TSmallintField;
    qrTerminalAncho_Linea: TSmallintField;
    qrTerminalDireccion_Local: TIBStringField;
    qrTerminalIcon: TSmallintField;
    qrTerminalBalance: TIBBCDField;
    qrTerminalUltima_Cta: TIntegerField;
    qrTerminalFecha_Ultima_Cta: TDateField;
    qrTerminalRNC: TIBStringField;
    qrTerminalTipo_Factura: TIBStringField;
    qrTerminalTermino_Facturacion: TIBStringField;
    qrTerminalInventario_Restringido: TBooleanField;
    qrTerminalAperturar_Caja: TBooleanField;
    qrTerminalDecimales_Cantidades: TIBStringField;
    qrStatus: TIBQuery;
    qrStatusNumero: TIntegerField;
    qrStatusStatus: TIBStringField;
    qrStatusUsuario: TIBStringField;
    prStatus: TDataSetProvider;
    GeneralesTr: TIBTransaction;
    GeneralesDB: TIBDatabase;
    tConfigDataset: TClientDataSet;
    tConfigDatasetUserName: TWideStringField;
    tConfigDatasetPassword: TWideStringField;
    tConfigDatasetModulo_Inventario: TBooleanField;
    tConfigDatasetModulo_CtasxCobrar: TBooleanField;
    tConfigDatasetModulo_CtasxPagar: TBooleanField;
    tConfigDatasetModulo_Caja: TBooleanField;
    tConfigDatasetModulo_LibroBanco: TBooleanField;
    tConfigDatasetModulo_Nomina: TBooleanField;
    tConfigDatasetModulo_Contabilidad: TBooleanField;
    tConfigDatasetDatos_Generales: TWideStringField;
    tConfigDatasetInventario_Facturacion: TWideStringField;
    tConfigDatasetCuentas_Cobrar: TWideStringField;
    tConfigDatasetCuentas_Pagar: TWideStringField;
    tConfigDatasetManejo_Caja: TWideStringField;
    tConfigDatasetLibro_Banco: TWideStringField;
    tConfigDatasetNomina: TWideStringField;
    tConfigDatasetContabilidad: TWideStringField;
    tConfigDatasetProcessor_INFO: TWideStringField;
    tConfigDatasetVolume_INFO: TWideStringField;
    tConfigDatasetNIC_INFO: TWideStringField;
    procedure RemoteDataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
  public
    { Public declarations }
  end;

var
  GeneralesObjectFactory : TCOMObjectFactory;

implementation

uses Utilidades;

{$R *.DFM}

procedure TGenerales_RDM.RemoteDataModuleCreate(Sender: TObject);
begin
      {Configurar las Bases De Datos}

      // Datos Generales
      GeneralesDB.Params.Clear;
      GeneralesDB.DatabaseName := Trim(UnEncrypt(tConfigDatasetDatos_Generales.Value));
      GeneralesDB.Params.Add('user_name='+ Trim(UnEncrypt(tConfigDatasetUserName.Value)));
      GeneralesDB.Params.Add('password='+ Trim(UnEncrypt(tConfigDatasetPassword.Value)));
      GeneralesDB.Params.Add('sql_role_name=Admin');
end;

class procedure TGenerales_RDM.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
begin
  if Register then
  begin
    inherited UpdateRegistry(Register, ClassID, ProgID);
    EnableSocketTransport(ClassID);
    EnableWebTransport(ClassID);
  end else
  begin
    DisableSocketTransport(ClassID);
    DisableWebTransport(ClassID);
    inherited UpdateRegistry(Register, ClassID, ProgID);
  end;
end;

initialization
  GeneralesObjectFactory := TComponentFactory.Create(ComServer, TGenerales_RDM,
    Class_Generales_RDM, ciInternal, tmApartment);
end.
