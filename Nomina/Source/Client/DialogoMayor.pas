unit DialogoMayor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, wwdblook, Grids, Wwdbigrd, Wwdbgrid,
  Mask, wwdbedit, Wwdotdot, db, Wwdbcomb, RegKeys;

type
  TFCriterioLibroMayor = class(TForm)
    btAceptar: TBitBtn;
    btCancelar: TBitBtn;
    LDepto: TLabel;
    Departamento: TwwDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure btAceptarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }

    SeleccionCuenta : String;
    NombreCuenta    : String;
    OrigenCuenta    : String;
  end;

var
  FCriterioLibroMayor: TFCriterioLibroMayor;

implementation

uses Utilidades, Generales, DataModuloContabilidad;

{$R *.dfm}

procedure TFCriterioLibroMayor.FormCreate(Sender: TObject);
begin
  Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

  ModuloContabilidad.tListado_Cuentas.Open
end;

procedure TFCriterioLibroMayor.btAceptarClick(Sender: TObject);
begin
  SeleccionCuenta := ModuloContabilidad.tListado_CuentasNumero.Value;
  NombreCuenta := ModuloContabilidad.tListado_CuentasDescripcion.Value;
  OrigenCuenta := ModuloContabilidad.tListado_CuentasOrigen.Value
end;

procedure TFCriterioLibroMayor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ModuloContabilidad.tListado_Cuentas.Close
end;

end.
