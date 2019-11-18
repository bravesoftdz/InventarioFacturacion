program Acc_SCM;

uses
  Forms,
  ConfigForm in 'ConfigForm.pas' {FMainConfig},
  Utilidades in '..\Utilidades.Pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Server Configuration Module';
  Application.CreateForm(TFMainConfig, FMainConfig);
  Application.Run;
end.
