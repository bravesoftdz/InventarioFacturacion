unit CtasXPagar_RDMFile;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, DataServer_TLB, StdVcl, Provider, DB, IBCustomDataSet, IBQuery;

type
  TCtasXPagar_RDM = class(TRemoteDataModule, ICtasXPagar_RDM)
    qrFacturas_Proveedor: TIBQuery;
    qrFacturas_ProveedorNumero: TIntegerField;
    qrFacturas_ProveedorProceso: TIBStringField;
    qrFacturas_ProveedorNombre_Proveedor: TIBStringField;
    qrFacturas_ProveedorCondicion: TIBStringField;
    qrFacturas_ProveedorFecha: TDateField;
    qrFacturas_ProveedorHora: TTimeField;
    qrFacturas_ProveedorConcepto_Compra: TIBStringField;
    qrFacturas_ProveedorReferencia: TIBStringField;
    qrFacturas_ProveedorSubTotal: TIBBCDField;
    qrFacturas_ProveedorTotalNeto: TIBBCDField;
    qrFacturas_ProveedorComentario: TIBStringField;
    qrFacturas_ProveedorFecha_Validacion: TDateField;
    qrFacturas_ProveedorFecha_Cierre: TDateField;
    qrFacturas_ProveedorUsuario: TIBStringField;
    qrFacturas_ProveedorValidado: TBooleanField;
    qrFacturas_ProveedorCerrado: TBooleanField;
    qrFacturas_ProveedorImpuesto_Global: TIBBCDField;
    qrFacturas_ProveedorValor_Impuesto: TIBBCDField;
    qrFacturas_ProveedorValor_Impuesto_Detalle: TIBBCDField;
    qrFacturas_ProveedorTotal_Impuesto: TIBBCDField;
    qrFacturas_ProveedorDescuento_Global: TIBBCDField;
    qrFacturas_ProveedorValor_Descuento: TIBBCDField;
    qrFacturas_ProveedorValor_Descuento_Detalle: TIBBCDField;
    qrFacturas_ProveedorTotal_Descuento: TIBBCDField;
    qrFacturas_ProveedorTerminos: TIntegerField;
    qrFacturas_ProveedorVencimiento: TDateField;
    qrFacturas_ProveedorPagado: TIBBCDField;
    qrFacturas_ProveedorPendiente: TIBBCDField;
    qrFacturas_ProveedorUltimoPago: TDateField;
    qrFacturas_ProveedorProveedor: TIntegerField;
    qrFacturas_ProveedorTipo_NCF: TIBStringField;
    qrFacturas_ProveedorNCF: TIBStringField;
    qrFacturas_ProveedorOrden_Compra_Numero: TIntegerField;
    qrFacturas_ProveedorProceso_Orden_Compra: TIBStringField;
    qrFacturas_ProveedorTotal_Seriales: TIntegerField;
    qrFacturas_ProveedorSeriales_Registrados: TIntegerField;
    qrFacturas_ProveedorAlmacen: TIBStringField;
    qrFacturas_ProveedorID: TIBStringField;
    prFacturas_Proveedor: TDataSetProvider;
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
  public
    { Public declarations }
  end;

var
  CtasXPagarObjectFactory : TCOMObjectFactory;

implementation

{$R *.DFM}

class procedure TCtasXPagar_RDM.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
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
  CtasXPagarObjectFactory := TComponentFactory.Create(ComServer, TCtasXPagar_RDM,
    Class_CtasXPagar_RDM, ciInternal, tmApartment);
end.
