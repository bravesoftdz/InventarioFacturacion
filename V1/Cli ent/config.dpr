program config;

uses
  Forms,
  ConfigForm in 'ConfigForm.pas' {FMainConfig},
  Utilidades in 'Utilidades.Pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFMainConfig, FMainConfig);
  Application.Run;
end.
