program SCM;

uses
  Forms,
  ConfigForm in 'ConfigForm.pas' {FMainConfig},
  Utilidades in '..\..\..\..\Common\Utilidades.Pas',
  Generales in '..\..\..\..\Common\Generales.pas' {ModuloGenerales: TDataModule},
  RegKeys in '..\RegKeys.pas',
  ESBDates in '..\..\..\..\Common\ESBDates.pas',
  DisplayMessage in '..\..\..\..\Common\DisplayMessage.pas' {FDisplayMessage},
  ErrorHandle in '..\..\..\..\Common\ErrorHandle.pas' {ReconcileErrorForm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Server Configuration Module';
  Application.CreateForm(TFMainConfig, FMainConfig);
  Application.Run;
end.
