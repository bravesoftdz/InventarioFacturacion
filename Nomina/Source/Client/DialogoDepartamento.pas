unit DialogoDepartamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, wwdblook, Grids, Wwdbigrd, Wwdbgrid,
  Mask, wwdbedit, Wwdotdot, db, Wwdbcomb, RegKeys;

type
  TFCriterioDepartamento = class(TForm)
    btAceptar: TBitBtn;
    btCancelar: TBitBtn;
    LDepto: TLabel;
    Departamento: TwwDBLookupCombo;
    Label1: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure btAceptarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }

    SeleccionDepartamento : Integer;
    SeleccionCompania     : Integer;
    NombreDepartamento    : String;
    NombreCompania        : String;
  end;

var
  FCriterioDepartamento: TFCriterioDepartamento;

implementation

uses Utilidades, Generales, DataNomina;

{$R *.dfm}

procedure TFCriterioDepartamento.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);

      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

      ModuloNomina.tCompania.Open;
      ModuloNomina.tDepartamentos.Open
    End; {If _Load_Create}
end;

procedure TFCriterioDepartamento.btAceptarClick(Sender: TObject);
begin
  SeleccionDepartamento := ModuloNomina.tDepartamentosNumero.Value;
  SeleccionCompania := ModuloNomina.tDepartamentosCompania.Value;
  NombreDepartamento := ModuloNomina.tDepartamentosDescripcion.Value;
  NombreCompania := ModuloNomina.tDepartamentosNombre_Compania.Value
end;

procedure TFCriterioDepartamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ModuloNomina.tCompania.Close;
  ModuloNomina.tDepartamentos.Close
end;

Initialization
  RegisterClass(TFCriterioDepartamento);

end.
