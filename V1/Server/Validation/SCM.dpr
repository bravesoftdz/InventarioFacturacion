program SCM;
uses
  Forms,
  SysUtils,
  ConfigForm in 'ConfigForm.pas' {FMainConfig},
  Utilidades in '..\..\..\..\Common\Utilidades.Pas',
  RegKeys in '..\RegKeys.pas',
  ESBDates in '..\..\..\..\Common\ESBDates.pas',
  DisplayMessage in '..\..\..\..\Common\DisplayMessage.pas' {FDisplayMessage},
  ErrorHandle in '..\..\..\..\Common\ErrorHandle.pas' {ReconcileErrorForm};

{$R *.res}

Var
  VolumeDrive : Char;

begin
  {Incluir la Configuracion del Servidor}
  {$I ConfigID.Cnt}

  {Datos de Validación}
  If (DirectoryExists(_WorkFolder)) And (FileExists(_ConfigFileName)) Then _ProperConfig := True;

  Application.Initialize;
  Application.Title := 'Server Configuration Module';
  Application.CreateForm(TFMainConfig, FMainConfig);
  Application.Run;
end.
