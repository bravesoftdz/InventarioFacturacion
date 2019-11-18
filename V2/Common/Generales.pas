unit Generales;

interface

uses
  SysUtils, Classes, DB, DBClient, MidasLib, SUIForm;

type
  TModuloGenerales = class(TDataModule)
    tUsuarios: TClientDataSet;
    tUsuariosNombreCompleto: TStringField;
    tUsuariosNickName: TStringField;
    tUsuariosPassword: TStringField;
    tUsuariosNivel_Acceso: TStringField;
    dUsuarios: TDataSource;
    tNiveles: TClientDataSet;
    tNivelesCodigo: TStringField;
    tNivelesDescripcion: TStringField;
    tNivelesFecha: TDateField;
    dNiveles: TDataSource;
    tOpciones: TClientDataSet;
    tOpcionesDescripcion: TStringField;
    tOpcionesOpcion: TStringField;
    tOpcionesTipo: TStringField;
    tOpcionesForm: TStringField;
    dOpciones: TDataSource;
    tAccesos: TClientDataSet;
    tAccesosOpcion: TStringField;
    tAccesosNivel: TStringField;
    tAccesosForm: TStringField;
    dAccesos: TDataSource;
    tForms: TClientDataSet;
    tFormsDescription: TStringField;
    tFormsName: TStringField;
    tFormsClass_Name: TStringField;
    dForms: TDataSource;
    dPaises: TDataSource;
    tPaises: TClientDataSet;
    tPaisesIso_3_Char: TStringField;
    tPaisesIso_2_Char: TStringField;
    tPaisesNombre: TStringField;
    tPaisesRegion: TStringField;
    tPaisesIdioma: TStringField;
    dCiudades: TDataSource;
    tCiudades: TClientDataSet;
    tCiudadesNombre: TStringField;
    tCiudadesSerie_Codigo: TStringField;
    tCiudadesPais: TStringField;
    dSectores: TDataSource;
    tSectores: TClientDataSet;
    tSectoresNombre: TStringField;
    tSectoresAbreviatura: TStringField;
    tSectoresCiudad: TStringField;
    tSectoresNumero: TIntegerField;
    tZonas: TClientDataSet;
    tZonasDescripcion: TStringField;
    tZonasNumero: TIntegerField;
    tZonasCiudad: TStringField;
    dZonas: TDataSource;
    tListado_Paises: TClientDataSet;
    tListado_PaisesNombre: TStringField;
    tListado_PaisesIso_3_Char: TStringField;
    tListado_PaisesRegion: TStringField;
    tListado_PaisesIso_2_Char: TStringField;
    tListado_PaisesIdioma: TStringField;
    dListado_Paises: TDataSource;
    tListadoUsuarios: TClientDataSet;
    tListadoUsuariosNickName: TStringField;
    tListadoUsuariosNombreCompleto: TStringField;
    tListadoUsuariosNivel_Acceso: TStringField;
    tListadoUsuariosPassword: TStringField;
    dListadoUsuarios: TDataSource;
    tDenominaciones_Moneda: TClientDataSet;
    tDenominaciones_MonedaMoneda: TStringField;
    tDenominaciones_MonedaDenominacion: TBCDField;
    dDenominaciones: TDataSource;
    tOpcionesVerificar: TStringField;
    Mensajes: TsuiMSNPopForm;
    procedure DataSetReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure tNivelesAfterScroll(DataSet: TDataSet);
    procedure tNivelesAfterDelete(DataSet: TDataSet);
    procedure tFormsAfterScroll(DataSet: TDataSet);
    procedure tAccesosAfterRefresh(DataSet: TDataSet);
    procedure ChkRefresh(DataSet: TDataSet);
    procedure LoadCityes(DataSet: TDataSet);
    procedure LoadSector_Zones(DataSet: TDataSet);
    procedure tPaisesAfterRefresh(DataSet: TDataSet);
    procedure tListado_PaisesAfterScroll(DataSet: TDataSet);
    procedure tListado_PaisesAfterRefresh(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModuloGenerales: TModuloGenerales;

implementation

uses Utilidades;

{$R *.dfm}

procedure TModuloGenerales.DataSetReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Utilidades.DataSetReconcileError(DataSet,E,UpdateKind,Action)
end;

procedure TModuloGenerales.LoadCityes(DataSet: TDataSet);
begin
  If Not tCiudades.Active Then tCiudades.Open;
  tCiudades.Cancel;
  tCiudades.CancelUpdates;
  tCiudades.Params.ParamByName('Pais').AsString := Trim(DataSet.FieldByName('Iso_3_Char').AsString);
  tCiudades.Refresh;
end;

procedure TModuloGenerales.LoadSector_Zones(DataSet: TDataSet);
begin
  If Not tSectores.Active Then tSectores.Open;
  tSectores.Cancel;
  tSectores.CancelUpdates;
  tSectores.Close;
  tSectores.Params.ParamByName('Ciudad').AsString := Trim(DataSet.FieldByName('Serie_Codigo').AsString);
  tSectores.Open;

  If Not tZonas.Active Then tZonas.Open;
  tZonas.Cancel;
  tZonas.CancelUpdates;
  tZonas.Close;
  tZonas.Params.ParamByName('Ciudad').AsString := Trim(DataSet.FieldByName('Serie_Codigo').AsString);
  tZonas.Open
end;

procedure TModuloGenerales.tNivelesAfterScroll(DataSet: TDataSet);
begin
  If tAccesos.Active Then
    Begin
      If tAccesos.ChangeCount > 0 Then tAccesos.CancelUpdates;
      tAccesos.Params.ParamByName('Nivel').Value := tNivelesCodigo.Value;
      tAccesos.Refresh
    End
end;

procedure TModuloGenerales.tPaisesAfterRefresh(DataSet: TDataSet);
begin
  LoadCityes(tPaises);
  ChkRefresh(tPaises)
end;

procedure TModuloGenerales.ChkRefresh(DataSet: TDataSet);
begin
  DoBeforeRefresh(DataSet);
end;

procedure TModuloGenerales.tAccesosAfterRefresh(DataSet: TDataSet);
begin
  If tOpciones.Active Then tOpciones.Refresh
end;

procedure TModuloGenerales.tFormsAfterScroll(DataSet: TDataSet);
begin
  If tAccesos.Active Then
    begin
      tAccesos.Filter := 'Form = ' + QuotedStr(tFormsName.Value);
      tAccesos.Filtered := True
    end;

  If tOpciones.Active Then
    begin
      tOpciones.Filter := 'Form = ' + QuotedStr(tFormsName.Value);
      tOpciones.Filtered := True
    end
end;

procedure TModuloGenerales.tListado_PaisesAfterRefresh(DataSet: TDataSet);
begin
  LoadCityes(tListado_Paises);
  ChkRefresh(tListado_Paises)
end;

procedure TModuloGenerales.tListado_PaisesAfterScroll(DataSet: TDataSet);
begin
  LoadCityes(tListado_Paises)
end;

procedure TModuloGenerales.tNivelesAfterDelete(DataSet: TDataSet);
begin
  If (DataSet as TClientDataSet).ChangeCount > 0 Then (DataSet as TClientDataSet).ApplyUpdates(0);
  (DataSet as TClientDataSet).Refresh
end;

Initialization
  RegisterClass(TModuloGenerales);

end.
