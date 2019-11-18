unit Doc_PrintModuleUnit;

interface

uses
  SysUtils, Classes, ActnList, PlatformDefaultStyleActnCtrls, ActnMan,
  wpDefActions, Wpdbrich;

type
  TDoc_PrintDataModule = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Procedure AddTablesToList (List,ModuleMap : tStrings);

var
  Doc_PrintDataModule: TDoc_PrintDataModule;

implementation

uses Generales, Modulo, DataNomina, DataBanco,
  Utilidades, IdentityDataUnit, CashDataUnit, BankingDataUnit, MailMergeEditor;

{$R *.dfm}

Procedure AddTablesToList (List,ModuleMap : tStrings);
  Begin
    List.Add('** DATOS GENERALES **');
    ModuleMap.Add('****');
    ListDbs(GenericDataModule,List,ModuleMap);
    List.Add('** PADRON **');
    ModuleMap.Add('****');
    ListDbs(IdentityDataModule,List,ModuleMap);
    List.Add('** VENTAS PROMOCIONALES **');
    ModuleMap.Add('****');
    ListDbs(PromoSalesDataModule,List,ModuleMap);
    List.Add('** ADMINISTRACION DE CAJA **');
    ModuleMap.Add('****');
    ListDbs(CashDataModule,List,ModuleMap);
    List.Add('** BANCOS **');
    ModuleMap.Add('****');
    ListDbs(BankingDataModule,List,ModuleMap);
  End;

Initialization
  RegisterClass(TDoc_PrintDataModule);

end.
