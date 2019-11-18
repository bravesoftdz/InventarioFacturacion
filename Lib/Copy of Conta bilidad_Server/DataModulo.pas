unit DataModulo;

interface

uses
  SysUtils, Classes, DB, DBClient, wwclient, Provider, IBCustomDataSet, IBQuery,
  IBDatabase;

type
  TModular = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Modular: TModular;

implementation

{$R *.dfm}

end.
