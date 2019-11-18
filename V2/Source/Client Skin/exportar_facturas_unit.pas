unit exportar_facturas_unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  Buttons, cxGridExportLink, cxCurrencyEdit;

type
  TfrmExportar_Facturas = class(TForm)
    grdFacturasDBTableView: TcxGridDBTableView;
    grdFacturasLevel: TcxGridLevel;
    grdFacturas: TcxGrid;
    grdFacturasDBTableViewNumero: TcxGridDBColumn;
    grdFacturasDBTableViewNombre_Cliente: TcxGridDBColumn;
    grdFacturasDBTableViewCondicion: TcxGridDBColumn;
    grdFacturasDBTableViewFecha: TcxGridDBColumn;
    grdFacturasDBTableViewSubTotal: TcxGridDBColumn;
    grdFacturasDBTableViewTotalNeto: TcxGridDBColumn;
    grdFacturasDBTableViewPagado: TcxGridDBColumn;
    grdFacturasDBTableViewPendiente: TcxGridDBColumn;
    grdFacturasDBTableViewCliente: TcxGridDBColumn;
    grdFacturasDBTableViewStatus: TcxGridDBColumn;
    grdFacturasDBTableViewNCF: TcxGridDBColumn;
    grdFacturasDBTableViewTotal_Impuesto_Moneda: TcxGridDBColumn;
    grdFacturasDBTableViewTotal_Descuento_Moneda: TcxGridDBColumn;
    Aceptar: TBitBtn;
    Cancelar: TBitBtn;
    fileSaveDialog: TSaveDialog;
    grdFacturasDBTableViewMonto: TcxGridDBColumn;
    procedure AceptarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExportar_Facturas: TfrmExportar_Facturas;

implementation

uses DataModulo;

{$R *.dfm}

procedure TfrmExportar_Facturas.AceptarClick(Sender: TObject);
begin
  If fileSaveDialog.Execute Then
    ExportGridToExcel(fileSaveDialog.FileName,grdFacturas);
end;

end.
