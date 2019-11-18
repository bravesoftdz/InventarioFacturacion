program PayRoll_Server;

{%File 'PayRoll_Server.tlb'}

uses
  Registry,
  Windows,
  Forms,
  Display in 'Display.pas' {FDisplayWindow},
  RDMFile in 'RDMFile.pas' {RemoteModule: TRemoteDataModule},
  About in 'About.pas' {AboutBox},
  PayRoll_Server_TLB in 'PayRoll_Server_TLB.pas',
  Utilidades in '..\..\..\Common\Utilidades.Pas',
  ESBDates in '..\..\..\Common\ESBDates.pas',
  RegKeys in 'RegKeys.pas',
  ErrorHandle in '..\..\..\Common\ErrorHandle.pas' {ReconcileErrorForm},
  Generales in '..\..\..\Common\Generales.pas' {ModuloGenerales: TDataModule},
  DisplayMessage in '..\..\..\Common\DisplayMessage.pas' {FDisplayMessage};

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  {Inicia El Registro}
  RegInfo := TRegistry.Create;
  RegInfo.RootKey := HKEY_LOCAL_MACHINE;

  Application.Title := 'PayRoll Data Server (RMS)';
  Application.CreateForm(TFDisplayWindow, FDisplayWindow);
  Application.ShowMainForm := False;
  Application.Run;
end.
