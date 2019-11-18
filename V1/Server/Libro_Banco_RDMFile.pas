unit Libro_Banco_RDMFile;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, DataServer_TLB, StdVcl, Provider, DB, IBCustomDataSet, IBQuery;

type
  TLibro_Banco_RDM = class(TRemoteDataModule, ILibro_Banco_RDM)
    qrBancos: TIBQuery;
    qrBancosNumero: TIntegerField;
    qrBancosNombre: TIBStringField;
    qrBancosDireccion: TIBStringField;
    qrBancosTelefono: TIBStringField;
    qrBancosmail: TIBStringField;
    prBancos: TDataSetProvider;
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
  public
    { Public declarations }
  end;

var
  Libro_BancoObjectFactory : TCOMObjectFactory;


implementation

{$R *.DFM}

class procedure TLibro_Banco_RDM.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
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
  Libro_BancoObjectFactory := TComponentFactory.Create(ComServer, TLibro_Banco_RDM,
    Class_Libro_Banco_RDM, ciInternal, tmApartment);
end.
