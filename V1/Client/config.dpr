program config;

uses
  Forms,
  Utilidades in '..\..\..\Common\Utilidades.Pas',
  Autorizar in '..\..\..\Common\Autorizar.pas' {FAutorizar},
  Barcodes in '..\..\..\Common\Barcodes.pas',
  DisplayMessage in '..\..\..\Common\DisplayMessage.pas' {FDisplayMessage},
  DlgFechas in '..\..\..\Common\DlgFechas.pas' {DlgFecha},
  DotmatrX in '..\..\..\Common\DotmatrX.pas' {PreviewForm},
  EditCiudades in '..\..\..\Common\EditCiudades.pas' {FEditCiudades},
  EditSectores in '..\..\..\Common\EditSectores.pas' {FEditSectores},
  EditZonas in '..\..\..\Common\EditZonas.pas' {FEditZonas},
  ErrorHandle in '..\..\..\Common\ErrorHandle.pas' {ReconcileErrorForm},
  ESBDates in '..\..\..\Common\ESBDates.pas',
  Fmxutils in '..\..\..\Common\Fmxutils.pas',
  Generales in '..\..\..\Common\Generales.pas' {ModuloGenerales: TDataModule},
  HintFormU in '..\..\..\Common\HintFormU.pas' {HintForm},
  Niveles in '..\..\..\Common\Niveles.pas' {FNiveles},
  Paises in '..\..\..\Common\Paises.pas' {FPaises},
  ProgressShow in '..\..\..\Common\ProgressShow.pas' {DisplayProgress},
  SkinGraphic in '..\..\..\Common\SkinGraphic.pas',
  SrchDlg in '..\..\..\Common\SrchDlg.pas' {DlgSearch},
  TimerMessage in '..\..\..\Common\TimerMessage.pas' {FTimerMessage},
  Usuarios in '..\..\..\Common\Usuarios.pas' {FUsuarios},
  ConfigForm in '..\Client Skin\ConfigForm.pas' {FMainConfig};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TModuloGenerales, ModuloGenerales);
  Application.CreateForm(TModuloGenerales, ModuloGenerales);
  Application.CreateForm(TFMainConfig, FMainConfig);
  Application.Run;
end.
