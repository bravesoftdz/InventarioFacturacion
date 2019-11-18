program Acc_Server;

uses
  Registry,
  Windows,
  Forms,
  Display in 'Display.pas' {FDisplayWindow},
  Utilidades in 'Utilidades.Pas',
  About in 'About.pas' {AboutBox},
  Acc_Server_TLB in 'Acc_Server_TLB.pas',
  RDMFile in 'RDMFile.pas' {RemoteModule: TRemoteDataModule} {RemoteModule: CoClass};

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  {Inicia El Registro}
  RegInfo := TRegistry.Create;
  RegInfo.RootKey := HKEY_LOCAL_MACHINE;

  Application.Title := 'Accounting Data Server (RMS)';
  Application.CreateForm(TFDisplayWindow, FDisplayWindow);
  Application.ShowMainForm := False;
  Application.Run;
end.
