unit Seguridad_RDMFile;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, DataServer_TLB, StdVcl, DB, Provider, IBCustomDataSet, IBQuery;

type
  TSeguridad_RDM = class(TRemoteDataModule, ISeguridad_RDM)
    qrUsuarios: TIBQuery;
    qrUsuariosNickName: TIBStringField;
    qrUsuariosNombreCompleto: TIBStringField;
    qrUsuariosNivel_Acceso: TIBStringField;
    qrUsuariosPassword: TIBStringField;
    prUsuarios: TDataSetProvider;
    prNiveles: TDataSetProvider;
    qrNiveles: TIBQuery;
    qrNivelesCodigo: TIBStringField;
    qrNivelesDescripcion: TIBStringField;
    qrNivelesFecha: TDateField;
    prOpciones: TDataSetProvider;
    qrOpciones: TIBQuery;
    qrOpcionesForm: TIBStringField;
    qrOpcionesOpcion: TIBStringField;
    qrOpcionesDescripcion: TIBStringField;
    qrOpcionesTipo: TIBStringField;
    prAccesos: TDataSetProvider;
    qrAccesos: TIBQuery;
    qrAccesosNivel: TIBStringField;
    qrAccesosForm: TIBStringField;
    qrAccesosOpcion: TIBStringField;
    prForms: TDataSetProvider;
    qrForms: TIBQuery;
    qrFormsName: TIBStringField;
    qrFormsDescription: TIBStringField;
    qrFormsClass_Name: TIBStringField;
    qrListadoUsuarios: TIBQuery;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    prListadoUsuarios: TDataSetProvider;
    qrListadoVendedores: TIBQuery;
    qrListadoVendedoresCedula_Rnc_Pasaporte: TIBStringField;
    qrListadoVendedoresNombre: TIBStringField;
    qrListadoVendedoresApellido: TIBStringField;
    qrListadoVendedoresTipo_Telefono_1: TIBStringField;
    qrListadoVendedoresTipo_Telefono_2: TIBStringField;
    qrListadoVendedoresTipo_Telefono_3: TIBStringField;
    qrListadoVendedoresTipo_Telefono_4: TIBStringField;
    qrListadoVendedoresNumero_Telefono_1: TIBStringField;
    qrListadoVendedoresNumero_Telefono_2: TIBStringField;
    qrListadoVendedoresNumero_Telefono_3: TIBStringField;
    qrListadoVendedoresNumero_Telefono_4: TIBStringField;
    qrListadoVendedoresDireccion: TIBStringField;
    qrListadoVendedoresPais: TIBStringField;
    qrListadoVendedoresCiudad: TIBStringField;
    qrListadoVendedoresEstado: TIBStringField;
    qrListadoVendedoresNombreCompleto: TIBStringField;
    qrListadoVendedoresStatus: TIBStringField;
    qrListadoVendedoresFecha_Registro: TDateField;
    qrListadoVendedoresmail: TIBStringField;
    qrListadoVendedoresSecuencia: TIntegerField;
    qrListadoVendedoresFoto: TBlobField;
    qrListadoVendedoresSexo: TIBStringField;
    qrListadoVendedoresSector: TIntegerField;
    qrListadoVendedoresEstado_Civil: TIBStringField;
    qrListadoVendedoresZona: TIntegerField;
    prListadoVendedores: TDataSetProvider;
    qrVendedores: TIBQuery;
    qrVendedoresCedula_Rnc_Pasaporte: TIBStringField;
    qrVendedoresNombre: TIBStringField;
    qrVendedoresApellido: TIBStringField;
    qrVendedoresTipo_Telefono_1: TIBStringField;
    qrVendedoresTipo_Telefono_2: TIBStringField;
    qrVendedoresTipo_Telefono_3: TIBStringField;
    qrVendedoresTipo_Telefono_4: TIBStringField;
    qrVendedoresNumero_Telefono_1: TIBStringField;
    qrVendedoresNumero_Telefono_2: TIBStringField;
    qrVendedoresNumero_Telefono_3: TIBStringField;
    qrVendedoresNumero_Telefono_4: TIBStringField;
    qrVendedoresDireccion: TIBStringField;
    qrVendedoresPais: TIBStringField;
    qrVendedoresCiudad: TIBStringField;
    qrVendedoresEstado: TIBStringField;
    qrVendedoresNombreCompleto: TIBStringField;
    qrVendedoresStatus: TIBStringField;
    qrVendedoresFecha_Registro: TDateField;
    qrVendedoresmail: TIBStringField;
    qrVendedoresSecuencia: TIntegerField;
    qrVendedoresFoto: TBlobField;
    qrVendedoresSexo: TIBStringField;
    qrVendedoresSector: TIntegerField;
    qrVendedoresEstado_Civil: TIBStringField;
    qrVendedoresZona: TIntegerField;
    prVendedores: TDataSetProvider;
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
  public
    { Public declarations }
  end;

var
  SeguridadObjectFactory : TCOMObjectFactory;

implementation

{$R *.DFM}

class procedure TSeguridad_RDM.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
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
  SeguridadObjectFactory := TComponentFactory.Create(ComServer, TSeguridad_RDM,
    Class_Seguridad_RDM, ciInternal, tmApartment);
end.
