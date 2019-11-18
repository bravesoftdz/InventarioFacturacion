unit CtasXCobrar_RDMFile;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, DataServer_TLB, StdVcl, DB, Provider, IBCustomDataSet, IBQuery;

type
  TCtasXCobrar_RDM = class(TRemoteDataModule, ICtasXCobrar_RDM)
    qrNotas_Credito: TIBQuery;
    qrNotas_CreditoProceso: TIBStringField;
    qrNotas_CreditoNumero: TIntegerField;
    qrNotas_CreditoFecha: TDateField;
    qrNotas_CreditoHora: TTimeField;
    qrNotas_CreditoCliente: TIBStringField;
    qrNotas_CreditoFactura: TIBStringField;
    qrNotas_CreditoTipo_NCF: TIBStringField;
    qrNotas_CreditoNCF: TIBStringField;
    qrNotas_CreditoNCF_Modificado: TIBStringField;
    qrNotas_CreditoMonto: TIBBCDField;
    qrNotas_CreditoConcepto: TIBStringField;
    qrNotas_CreditoCapital: TIBBCDField;
    qrNotas_CreditoInteres: TIBBCDField;
    qrNotas_CreditoMora: TIBBCDField;
    qrNotas_CreditoOtros: TIBBCDField;
    qrNotas_CreditoTotal: TIBBCDField;
    qrNotas_CreditoRealizada_Por: TIBStringField;
    qrNotas_CreditoStatus: TIBStringField;
    qrNotas_CreditoID: TIBStringField;
    prNotas_Credito: TDataSetProvider;
    lnkNotas_Credito: TDataSource;
    qrDetalle_Notas_Credito: TIBQuery;
    qrDetalle_Notas_CreditoProceso: TIBStringField;
    qrDetalle_Notas_CreditoFactura: TIBStringField;
    qrDetalle_Notas_CreditoCliente: TIBStringField;
    qrDetalle_Notas_CreditoCuota: TSmallintField;
    qrDetalle_Notas_CreditoFecha: TDateField;
    qrDetalle_Notas_CreditoHora: TTimeField;
    qrDetalle_Notas_CreditoCapital: TIBBCDField;
    qrDetalle_Notas_CreditoInteres: TIBBCDField;
    qrDetalle_Notas_CreditoMora: TIBBCDField;
    qrDetalle_Notas_CreditoOtros: TIBBCDField;
    qrDetalle_Notas_CreditoVencimiento: TDateField;
    qrDetalle_Notas_CreditoPendiente: TIBBCDField;
    qrDetalle_Notas_CreditoID: TIBStringField;
    qrListadoPagos: TIBQuery;
    qrListadoPagosProceso: TIBStringField;
    qrListadoPagosNumero: TIntegerField;
    qrListadoPagosFecha: TDateField;
    qrListadoPagosHora: TTimeField;
    qrListadoPagosCliente: TIBStringField;
    qrListadoPagosFactura: TIBStringField;
    qrListadoPagosMonto: TIBBCDField;
    qrListadoPagosConcepto: TIBStringField;
    qrListadoPagosPagado_Capital: TIBBCDField;
    qrListadoPagosPagado_Interes: TIBBCDField;
    qrListadoPagosPagado_Mora: TIBBCDField;
    qrListadoPagosPagado_Otros: TIBBCDField;
    qrListadoPagosTotal_Pagado: TIBBCDField;
    qrListadoPagosRecibido_Por: TIBStringField;
    qrListadoPagosStatus: TIBStringField;
    qrListadoPagosID: TIBStringField;
    prListadoPagos: TDataSetProvider;
    IBQuery1: TIBQuery;
    IBStringField1: TIBStringField;
    IntegerField1: TIntegerField;
    DateField1: TDateField;
    TimeField1: TTimeField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IBBCDField1: TIBBCDField;
    IBStringField4: TIBStringField;
    IBBCDField2: TIBBCDField;
    IBBCDField3: TIBBCDField;
    IBBCDField4: TIBBCDField;
    IBBCDField5: TIBBCDField;
    IBBCDField6: TIBBCDField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    DataSetProvider1: TDataSetProvider;
    qrNotas_Debito: TIBQuery;
    qrNotas_DebitoNumero: TIntegerField;
    qrNotas_DebitoNombre_Cliente: TIBStringField;
    qrNotas_DebitoFecha: TDateField;
    qrNotas_DebitoHora: TTimeField;
    qrNotas_DebitoConcepto: TIBStringField;
    qrNotas_DebitoProceso: TIBStringField;
    qrNotas_DebitoReferencia: TIBStringField;
    qrNotas_DebitoSubTotal: TIBBCDField;
    qrNotas_DebitoTotalNeto: TIBBCDField;
    qrNotas_DebitoComentario: TIBStringField;
    qrNotas_DebitoFecha_Validacion: TDateField;
    qrNotas_DebitoFecha_Cierre: TDateField;
    qrNotas_DebitoUsuario: TIBStringField;
    qrNotas_DebitoValidado: TBooleanField;
    qrNotas_DebitoCerrado: TBooleanField;
    qrNotas_DebitoImpuesto_Global: TIBBCDField;
    qrNotas_DebitoValor_Impuesto: TIBBCDField;
    qrNotas_DebitoValor_Impuesto_Detalle: TIBBCDField;
    qrNotas_DebitoTotal_Impuesto: TIBBCDField;
    qrNotas_DebitoDescuento_Global: TIBBCDField;
    qrNotas_DebitoValor_Descuento: TIBBCDField;
    qrNotas_DebitoValor_Descuento_Detalle: TIBBCDField;
    qrNotas_DebitoTotal_Descuento: TIBBCDField;
    qrNotas_DebitoTerminos: TIntegerField;
    qrNotas_DebitoVencimiento: TDateField;
    qrNotas_DebitoPagado: TIBBCDField;
    qrNotas_DebitoPendiente: TIBBCDField;
    qrNotas_DebitoUltimoPago: TDateField;
    qrNotas_DebitoCliente: TIBStringField;
    qrNotas_DebitoTotal_Efectivo_Recibido: TIBBCDField;
    qrNotas_DebitoTotal_Efectivo_Devuelto: TIBBCDField;
    qrNotas_DebitoStatus: TIBStringField;
    qrNotas_DebitoTipo_NCF: TIBStringField;
    qrNotas_DebitoNCF: TIBStringField;
    qrNotas_DebitoID: TIBStringField;
    prNotas_Debito: TDataSetProvider;
    qrDetalles_Notas_Debito: TIBQuery;
    qrDetalles_Notas_DebitoProceso: TIBStringField;
    qrDetalles_Notas_DebitoNumero: TSmallintField;
    qrDetalles_Notas_DebitoTipo: TIBStringField;
    qrDetalles_Notas_DebitoFecha: TDateField;
    qrDetalles_Notas_DebitoVence: TDateField;
    qrDetalles_Notas_DebitoMonto: TIBBCDField;
    qrDetalles_Notas_DebitoConcepto: TIBStringField;
    qrDetalles_Notas_DebitoCapital: TIBBCDField;
    qrDetalles_Notas_DebitoCapital_Pendiente: TIBBCDField;
    qrDetalles_Notas_DebitoInteres: TIBBCDField;
    qrDetalles_Notas_DebitoInteres_Pendiente: TIBBCDField;
    qrDetalles_Notas_DebitoMora: TIBBCDField;
    qrDetalles_Notas_DebitoMora_Pendiente: TIBBCDField;
    qrDetalles_Notas_DebitoOtros: TIBBCDField;
    qrDetalles_Notas_DebitoTotal_Pagado: TIBBCDField;
    qrDetalles_Notas_DebitoOtros_Pendiente: TIBBCDField;
    qrDetalles_Notas_DebitoTotal_Pendiente: TIBBCDField;
    qrDetalles_Notas_DebitoDias_Vencidos: TIntegerField;
    qrDetalles_Notas_DebitoFecha_Calculo_Mora: TDateField;
    qrDetalles_Notas_DebitoFecha_Ultimo_Pago: TDateField;
    qrDetalles_Notas_DebitoRecargo: TIBStringField;
    qrDetalles_Notas_DebitoPrioridad: TIBStringField;
    qrDetalles_Notas_DebitoID: TIBStringField;
    lnkNotas_Debito: TDataSource;
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
  public
    { Public declarations }
  end;

var
  CtasXCobrarObjectFactory : TCOMObjectFactory;

implementation

{$R *.DFM}

class procedure TCtasXCobrar_RDM.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
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
  CtasXCobrarObjectFactory := TComponentFactory.Create(ComServer, TCtasXCobrar_RDM,
    Class_CtasXCobrar_RDM, ciInternal, tmApartment);
end.
