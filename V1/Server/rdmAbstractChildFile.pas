unit rdmAbstractChildFile;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, DataServer_TLB, StdVcl, Provider, DB, IBCustomDataSet, IBQuery;

type
  TrdmAbsChild = class(TRemoteDataModule, IrdmAbsChild)
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
    procedure Set_IB_Database(Value: Integer); safecall;
    procedure Set_Generales_DataBase(Value: Integer); safecall;
  public
    { Public declarations }
  end;

implementation

uses
  IBDatabase, IBSQL, Utilidades;

{$R *.DFM}

class procedure TrdmAbsChild.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
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

procedure TrdmAbsChild.Set_IB_Database(Value: Integer);
var
  i: Integer;
begin
  for i := Pred(ComponentCount) downto 0 do begin
    if (Components[i] is TIBCustomDataset) then begin
      TIBCustomDataset(Components[i]).Database := TIBDatabase(Value);
    end else if (Components[i] is TIBTransaction) then begin
      TIBTransaction(Components[i]).DefaultDatabase := TIBDatabase(Value);
    end else if (Components[i] is TIBSQL) then begin
      TIBSQL(Components[i]).Database := TIBDatabase(Value);
    end; // if
  end; // for
end;

procedure TrdmAbsChild.Set_Generales_DataBase(Value: Integer);
begin
end;

initialization
  TComponentFactory.Create(ComServer, TrdmAbsChild,
    Class_rdmAbsChild, ciInternal, tmApartment);
end.
