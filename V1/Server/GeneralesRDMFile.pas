unit GeneralesRDMFile;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, DataServer_TLB, StdVcl, rdmAbstractChildFile, Provider, DB,
  IBCustomDataSet, IBQuery;

type
  TGeneralesRDM = class(TrdmAbsChild, IGeneralesRDM)
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


{$R *.DFM}

class procedure TGeneralesRDM.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
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
  GeneralesObjectFactory := TComponentFactory.Create(ComServer, TGeneralesRDM,
    Class_GeneralesRDM, ciInternal, tmApartment);
end.
