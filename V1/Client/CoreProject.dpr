program CoreProject;

uses
  Forms,
  Registry,
  Windows,
  MainForm in 'MainForm.pas' {FMainMenu},
  DataModulo in 'DataModulo.pas' {Modulo: TDataModule},
  Utilidades in 'Utilidades.Pas',
  ErrorHandle in 'ErrorHandle.pas' {ReconcileErrorForm},
  ConfigForm in 'ConfigForm.pas' {FMainConfig};

{$R *.res}

begin
  {Inicia la Aplicacion}
  Application.Initialize;

  {Inicia El Registro}
  RegInfo := TRegistry.Create;
  RegInfo.RootKey := HKEY_LOCAL_MACHINE;

  {Carga el Sistema}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_SystemInforMationKey,False);

  Application.Title := 'Aplication Core Project - RMS (r)';
  Application.CreateForm(TModulo, Modulo);
  Application.CreateForm(TFMainMenu, FMainMenu);
  Application.Run;

end.
