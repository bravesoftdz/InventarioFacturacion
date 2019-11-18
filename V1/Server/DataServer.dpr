program DataServer;

uses
  Registry,
  Windows,
  Forms,
  SysUtils,
  Display in 'Display.pas' {FDisplayWindow},
  About in 'About.pas' {AboutBox},
  DataServer_TLB in 'DataServer_TLB.pas',
  RDMFile in 'RDMFile.pas' {RemoteModule: TRemoteDataModule} {RemoteModule: CoClass},
  Utilidades in '..\..\..\Common\Utilidades.Pas',
  RegKeys in 'RegKeys.pas',
  ESBDates in '..\..\..\Common\ESBDates.pas',
  DisplayMessage in '..\..\..\Common\DisplayMessage.pas' {FDisplayMessage},
  ErrorHandle in '..\..\..\Common\ErrorHandle.pas' {ReconcileErrorForm},
  rdmAbstractChildFile in 'rdmAbstractChildFile.pas' {rdmAbsChild: TRemoteDataModule} {rdmAbsChild: CoClass},
  Inventario_RDMFile in 'Inventario_RDMFile.pas' {Inventario_RDM: TRemoteDataModule} {Inventario_RDM: CoClass},
  Caja_RDMFile in 'Caja_RDMFile.pas' {Caja_RDM: TRemoteDataModule} {Caja_RDM: CoClass},
  Seguridad_RDMFile in 'Seguridad_RDMFile.pas' {Seguridad_RDM: TRemoteDataModule} {Seguridad_RDM: CoClass},
  Mov_Inventario_RDMFile in 'Mov_Inventario_RDMFile.pas' {Mov_Inventario_RDM: TRemoteDataModule} {Mov_Inventario_RDM: CoClass},
  CtasXCobrar_RDMFile in 'CtasXCobrar_RDMFile.pas' {CtasXCobrar_RDM: TRemoteDataModule} {CtasXCobrar_RDM: CoClass},
  CtasXPagar_RDMFile in 'CtasXPagar_RDMFile.pas' {CtasXPagar_RDM: TRemoteDataModule} {CtasXPagar_RDM: CoClass},
  Libro_Banco_RDMFile in 'Libro_Banco_RDMFile.pas' {Libro_Banco_RDM: TRemoteDataModule} {Libro_Banco_RDM: CoClass},
  Generales_RDMFile in 'Generales_RDMFile.pas' {Generales_RDM: TRemoteDataModule} {Generales_RDM: CoClass};

{$R *.TLB}

{$R *.res}

Var
  VolumeDrive : Char;

begin

  {Identificacion del Programa}
  _Guid1 := $868CB603;
  _Guid2 := $D131;
  _Guid3 := $48E8;
  _Guid4 := $89E2;
  _Guid5 := $B5DD989A7410;

  _Program_ID := StringToGUID (Format('{%x-%x-%x-%x-%x}',[_Guid1,_Guid2,_Guid3,_Guid4,_Guid5]));

  {Incluir la Configuracion del Servidor}
  {$I ConfigID.Cnt}

  {Datos de Validación}
  If (DirectoryExists(_WorkFolder)) And (FileExists(_ConfigFileName)) Then _ProperConfig := True;

  Application.Initialize;

  {Inicia El Registro}
  RegInfo := TRegistry.Create;
  RegInfo.RootKey := HKEY_LOCAL_MACHINE;

  {Carga el Sistema}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_SystemInforMationKey,False);

  Application.Title := 'Romana MicroSystems (r) Data Server Module (Inventario && Facturación)';
  Application.CreateForm(TFDisplayWindow, FDisplayWindow);
  Application.ShowMainForm := False;
  Application.Run;
end.
