unit Caja_RDMFile;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, DataServer_TLB, StdVcl, DB, IBCustomDataSet, IBQuery, Provider;

type
  TCaja_RDM = class(TRemoteDataModule, ICaja_RDM)
    prApertura_Caja: TDataSetProvider;
    qrApertura_Caja: TIBQuery;
    qrApertura_CajaNumero: TIntegerField;
    qrApertura_CajaUsuario: TIBStringField;
    qrApertura_CajaFecha: TDateField;
    qrApertura_CajaHora: TTimeField;
    qrApertura_CajaMonto: TIBBCDField;
    qrApertura_CajaRetirado: TIBBCDField;
    qrApertura_CajaAbierto: TBooleanField;
    qrApertura_CajaBalance: TIBBCDField;
    qrApertura_CajaProceso: TIBStringField;
    qrApertura_CajaUsuario_Cuadre: TIBStringField;
    qrApertura_CajaID: TIBStringField;
    prDenominaciones_Moneda: TDataSetProvider;
    qrDenominaciones_Moneda: TIBQuery;
    qrDenominaciones_MonedaMoneda: TIBStringField;
    qrDenominaciones_MonedaDenominacion: TIBBCDField;
    prCuadre_Caja: TDataSetProvider;
    qrCuadre_Caja: TIBQuery;
    qrCuadre_CajaNumero_Cuadre: TIntegerField;
    qrCuadre_CajaProceso: TIBStringField;
    qrCuadre_CajaFecha: TDateField;
    qrCuadre_CajaHora: TTimeField;
    qrCuadre_CajaUsuario: TIBStringField;
    qrCuadre_CajaSupervisor: TIBStringField;
    qrCuadre_CajaTotal_Vendido: TIBBCDField;
    qrCuadre_CajaFondo_Caja: TIBBCDField;
    qrCuadre_CajaTotal_Retiros: TIBBCDField;
    qrCuadre_CajaTotal_Efectivo: TIBBCDField;
    qrCuadre_CajaTotal_NoEfectivo: TIBBCDField;
    qrCuadre_CajaID: TIBStringField;
    qrDetalle_Cuadre: TIBQuery;
    qrDetalle_CuadreProceso: TIBStringField;
    qrDetalle_CuadreMoneda: TIBStringField;
    qrDetalle_CuadreDenominacion: TIBBCDField;
    qrDetalle_CuadreCantidad: TIntegerField;
    qrDetalle_CuadreTotal: TIBBCDField;
    qrDetalle_CuadreID: TIBStringField;
    lnkCuadre_Caja: TDataSource;
    prRetiros_Caja: TDataSetProvider;
    qrRetiros_Caja: TIBQuery;
    qrRetiros_CajaNumero: TIntegerField;
    qrRetiros_CajaFecha: TDateField;
    qrRetiros_CajaHora: TTimeField;
    qrRetiros_CajaUsuario: TIBStringField;
    qrRetiros_CajaMonto: TIBBCDField;
    qrRetiros_CajaNumero_Factura: TIBStringField;
    qrRetiros_CajaNombre_Establecimiento: TIBStringField;
    qrRetiros_CajaID: TIBStringField;
    qrDesgloceEfectivo: TIBQuery;
    qrDesgloceEfectivoForma_Pago: TIntegerField;
    qrDesgloceEfectivoTOTAL_RECIBIDO: TIBBCDField;
    qrDesgloceEfectivoTOTAL_DEVUELTO: TIBBCDField;
    qrDesgloceEfectivoID: TIBStringField;
    prDesgloceEfectivo: TDataSetProvider;
    qrFormas_Pago: TIBQuery;
    qrFormas_PagoNumero: TIntegerField;
    qrFormas_PagoDescripcion: TIBStringField;
    qrFormas_PagoTasa: TIBBCDField;
    qrFormas_PagoEs_Efectivo: TBooleanField;
    qrFormas_PagoRequiere_Documento: TBooleanField;
    qrFormas_PagoRequiere_Aprobacion: TBooleanField;
    qrFormas_PagoRequiere_Vencimiento: TBooleanField;
    qrFormas_PagoFecha: TDateField;
    qrFormas_PagoUsuario: TIBStringField;
    prFormas_Pago: TDataSetProvider;
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
  public
    { Public declarations }
  end;

var
  CajaObjectFactory : TCOMObjectFactory;

implementation

{$R *.DFM}

class procedure TCaja_RDM.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
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
  CajaObjectFactory := TComponentFactory.Create(ComServer, TCaja_RDM,
    Class_Caja_RDM, ciInternal, tmApartment);
end.
