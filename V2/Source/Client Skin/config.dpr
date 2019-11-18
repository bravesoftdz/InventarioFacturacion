program config;

uses
  Forms,
  ConfigForm in 'ConfigForm.pas' {FMainConfig},
  Generales in '..\..\..\Common\Generales.pas' {ModuloGenerales: TDataModule},
  Utilidades in '..\..\..\Common\Utilidades.Pas',
  ESBDates in '..\..\..\Common\ESBDates.pas',
  DisplayMessage in '..\..\..\Common\DisplayMessage.pas' {FDisplayMessage},
  ErrorHandle in '..\..\..\Common\ErrorHandle.pas' {ReconcileErrorForm},
  Paises in '..\..\..\Common\Paises.pas' {FPaises},
  EditZonas in '..\..\..\Common\EditZonas.pas' {FEditZonas},
  EditCiudades in '..\..\..\Common\EditCiudades.pas' {FEditCiudades},
  EditSectores in '..\..\..\Common\EditSectores.pas' {FEditSectores},
  SrchDlg in '..\..\..\Common\SrchDlg.pas' {DlgSearch},
  Autorizar in '..\..\..\Common\Autorizar.pas' {FAutorizar};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TModuloGenerales, ModuloGenerales);
  Application.CreateForm(TFMainConfig, FMainConfig);
  Application.Run;
end.

