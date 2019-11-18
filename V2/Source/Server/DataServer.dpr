program DataServer;

uses
  Registry,
  Windows,
  Forms,
  Display in 'Display.pas' {FDisplayWindow},
  About in 'About.pas' {AboutBox},
  DataServer_TLB in 'DataServer_TLB.pas',
  Utilidades in '..\..\..\Common\Utilidades.Pas',
  RegKeys in 'RegKeys.pas',
  Generales in '..\..\..\Common\Generales.pas' {ModuloGenerales: TDataModule},
  ESBDates in '..\..\..\Common\ESBDates.pas',
  DisplayMessage in '..\..\..\Common\DisplayMessage.pas' {FDisplayMessage},
  ErrorHandle in '..\..\..\Common\ErrorHandle.pas' {ReconcileErrorForm},
  SrchDlg in '..\..\..\Common\SrchDlg.pas' {DlgSearch},
  Autorizar in '..\..\..\Common\Autorizar.pas' {frmUser_Grant},
  RDMFile in 'RDMFile.pas' {RemoteModule: TRemoteDataModule};

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;

  {Inicia El Registro}
  RegInfo := TRegistry.Create;
  RegInfo.RootKey := HKEY_LOCAL_MACHINE;

  {Carga el Sistema}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_SystemInforMationKey,False);

  Application.Title := 'Inventory && Sales Data Server (RMS)';
  Application.CreateForm(TFDisplayWindow, FDisplayWindow);
  Application.ShowMainForm := False;
  Application.Run;
end.
