unit Child;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, DataServer_TLB, StdVcl, DB, wwclient, Provider, IBCustomDataSet,
  IBQuery, IBDatabase;

type
  TChild_1 = class(TRemoteDataModule, IChild_1)
    ComunesTransaction: TIBTransaction;
    ComunesDb: TIBDatabase;
    qrFacturasComunes: TIBQuery;
    qrFacturasComunesNumero: TIntegerField;
    qrFacturasComunesProceso: TIBStringField;
    qrFacturasComunesNombre_Cliente: TIBStringField;
    qrFacturasComunesCondicion: TIBStringField;
    qrFacturasComunesFecha: TDateField;
    qrFacturasComunesHora: TTimeField;
    qrFacturasComunesConcepto_Factura: TIBStringField;
    qrFacturasComunesReferencia: TIBStringField;
    qrFacturasComunesSubTotal: TIBBCDField;
    qrFacturasComunesTotal_Costo: TIBBCDField;
    qrFacturasComunesTotalNeto: TIBBCDField;
    qrFacturasComunesComentario: TIBStringField;
    qrFacturasComunesFecha_Validacion: TDateField;
    qrFacturasComunesFecha_Cierre: TDateField;
    qrFacturasComunesUsuario: TIBStringField;
    qrFacturasComunesValidado: TBooleanField;
    qrFacturasComunesCerrado: TBooleanField;
    qrFacturasComunesImpuesto_Global: TIBBCDField;
    qrFacturasComunesValor_Impuesto: TIBBCDField;
    qrFacturasComunesValor_Impuesto_Detalle: TIBBCDField;
    qrFacturasComunesTotal_Impuesto: TIBBCDField;
    qrFacturasComunesDescuento_Global: TIBBCDField;
    qrFacturasComunesValor_Descuento: TIBBCDField;
    qrFacturasComunesValor_Descuento_Detalle: TIBBCDField;
    qrFacturasComunesTotal_Descuento: TIBBCDField;
    qrFacturasComunesTerminos: TIntegerField;
    qrFacturasComunesVencimiento: TDateField;
    qrFacturasComunesPagado: TIBBCDField;
    qrFacturasComunesPendiente: TIBBCDField;
    qrFacturasComunesUltimoPago: TDateField;
    qrFacturasComunesTotal_Efectivo_Recibido: TIBBCDField;
    qrFacturasComunesTotal_Efectivo_Devuelto: TIBBCDField;
    qrFacturasComunesCliente: TIBStringField;
    qrFacturasComunesStatus: TIBStringField;
    qrFacturasComunesTipo_Factura: TIBStringField;
    qrFacturasComunesTipo_NCF: TIBStringField;
    qrFacturasComunesNCF: TIBStringField;
    prFacturasComunes: TDataSetProvider;
    qrDetalles_Factura: TIBQuery;
    qrDetalles_FacturaProceso: TIBStringField;
    qrDetalles_FacturaCodigo: TIBStringField;
    qrDetalles_FacturaCodigo_Real: TIBStringField;
    qrDetalles_FacturaSecuencia: TIntegerField;
    qrDetalles_FacturaDescripcion: TIBStringField;
    qrDetalles_FacturaCategoria: TIntegerField;
    qrDetalles_FacturaFabricante: TIntegerField;
    qrDetalles_FacturaDepartamento: TIntegerField;
    qrDetalles_FacturaTipo_Producto: TIntegerField;
    qrDetalles_FacturaCosto: TIBBCDField;
    qrDetalles_FacturaPrecio_Real: TIBBCDField;
    qrDetalles_FacturaPrecio_Venta: TIBBCDField;
    qrDetalles_FacturaCantidad: TIBBCDField;
    qrDetalles_FacturaTotal_Costo: TIBBCDField;
    qrDetalles_FacturaTotal_Precio: TIBBCDField;
    qrDetalles_FacturaPrecio_Minimo: TIBBCDField;
    qrDetalles_FacturaFecha: TDateField;
    qrDetalles_FacturaHora: TTimeField;
    qrDetalles_FacturaUsuario: TIBStringField;
    qrDetalles_FacturaMes: TSmallintField;
    qrDetalles_FacturaAno: TSmallintField;
    qrDetalles_FacturaCliente: TIBStringField;
    qrDetalles_FacturaImpuesto: TIBBCDField;
    qrDetalles_FacturaDescuento: TIBBCDField;
    qrDetalles_FacturaValor_Impuesto: TIBBCDField;
    qrDetalles_FacturaValor_Descuento: TIBBCDField;
    qrDetalles_FacturaTotal_Impuesto: TIBBCDField;
    qrDetalles_FacturaTotal_Descuento: TIBBCDField;
    qrDetalles_FacturaCantidad_Devuelto: TIBBCDField;
    qrDetalles_FacturaTipo_Precio: TIBStringField;
    qrDetalles_FacturaContenido: TIBBCDField;
    lnkFacturasComunes: TDataSource;
    qrDetalle_Pago_Factura: TIBQuery;
    qrDetalle_Pago_FacturaProceso: TIBStringField;
    qrDetalle_Pago_FacturaForma_Pago: TIntegerField;
    qrDetalle_Pago_FacturaFecha: TDateField;
    qrDetalle_Pago_FacturaHora: TTimeField;
    qrDetalle_Pago_FacturaTasa: TIBBCDField;
    qrDetalle_Pago_FacturaValor_Recibido: TIBBCDField;
    qrDetalle_Pago_FacturaValor_Recibido_Local: TIBBCDField;
    qrDetalle_Pago_FacturaValor_Devolver: TIBBCDField;
    qrDetalle_Pago_FacturaValor_Devolver_Local: TIBBCDField;
    qrDetalle_Pago_FacturaNumero_Banco: TIntegerField;
    qrDetalle_Pago_FacturaNumero_Documento: TIBStringField;
    qrDetalle_Pago_FacturaNumero_Aprobacion: TIBStringField;
    qrDetalle_Pago_FacturaMes_Vencimiento: TSmallintField;
    qrDetalle_Pago_FacturaAno_Vencimiento: TSmallintField;
    qrDetalle_Pago_FacturaTipo_Documento: TIBStringField;
    qrDetalle_Pago_FacturaEs_Efectivo: TBooleanField;
    qrDetalle_Pago_FacturaRequiere_Documento: TBooleanField;
    qrDetalle_Pago_FacturaRequiere_Vencimiento: TBooleanField;
    qrDetalle_Pago_FacturaRequiere_Aprobacion: TBooleanField;
    qrDetalle_Pago_FacturaPendiente: TIBBCDField;
    TApplyDS: TwwClientDataSet;
    TApplyDSNumero: TIntegerField;
    TApplyDSProceso: TStringField;
    TApplyDSNombre_Cliente: TStringField;
    TApplyDSCondicion: TStringField;
    TApplyDSFecha: TDateField;
    TApplyDSHora: TTimeField;
    TApplyDSConcepto_Factura: TStringField;
    TApplyDSReferencia: TStringField;
    TApplyDSSubTotal: TBCDField;
    TApplyDSTotal_Costo: TBCDField;
    TApplyDSTotalNeto: TBCDField;
    TApplyDSComentario: TStringField;
    TApplyDSFecha_Validacion: TDateField;
    TApplyDSFecha_Cierre: TDateField;
    TApplyDSUsuario: TStringField;
    TApplyDSValidado: TBooleanField;
    TApplyDSCerrado: TBooleanField;
    TApplyDSImpuesto_Global: TBCDField;
    TApplyDSValor_Impuesto: TBCDField;
    TApplyDSValor_Impuesto_Detalle: TBCDField;
    TApplyDSTotal_Impuesto: TBCDField;
    TApplyDSDescuento_Global: TBCDField;
    TApplyDSValor_Descuento: TBCDField;
    TApplyDSValor_Descuento_Detalle: TBCDField;
    TApplyDSTotal_Descuento: TBCDField;
    TApplyDSTerminos: TIntegerField;
    TApplyDSVencimiento: TDateField;
    TApplyDSPagado: TBCDField;
    TApplyDSPendiente: TBCDField;
    TApplyDSUltimoPago: TDateField;
    TApplyDSTotal_Efectivo_Recibido: TBCDField;
    TApplyDSTotal_Efectivo_Devuelto: TBCDField;
    TApplyDSCliente: TStringField;
    TApplyDSStatus: TStringField;
    TApplyDSTipo_Factura: TStringField;
    TApplyDSTipo_NCF: TStringField;
    TApplyDSNCF: TStringField;
    TApplyDSqrDetalle_Pago_Factura: TDataSetField;
    TApplyDSqrDetalles_Factura: TDataSetField;
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

class procedure TChild_1.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
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
  TComponentFactory.Create(ComServer, TChild_1,
    Class_Child_1, ciMultiInstance, tmApartment);
end.
