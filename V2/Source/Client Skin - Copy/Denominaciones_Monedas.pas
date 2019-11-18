unit Denominaciones_Monedas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, Mask, DBCtrls,
  wwdblook, ActnMan, ActnList, XPStyleActnCtrls, ToolWin,
  ActnCtrls, Db, wwdbedit, Wwdotdot, Wwdbcomb, RegKeys;

type
  TFDenominaciones = class(TForm)
    Detalles: TwwDBGrid;
    Atb_Control_Opciones: TActionToolBar;
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Eliminar: TAction;
    Combo_Moneda: TwwDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GuardarExecute(Sender: TObject);
    procedure EliminarExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDenominaciones: TFDenominaciones;

implementation

uses DataModulo, Utilidades, Generales;

{$R *.dfm}

procedure TFDenominaciones.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Configuracion de la Pantalla}
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

      ModuloGenerales.tDenominaciones_Moneda.Open;

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);
    End; {If _Load_Create}
end;

procedure TFDenominaciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  If ModuloGenerales.tDenominaciones_Moneda.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Salir.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then SysUtils.Abort;

  ModuloGenerales.tDenominaciones_Moneda.Close
end;

procedure TFDenominaciones.GuardarExecute(Sender: TObject);
begin
  If ModuloGenerales.tDenominaciones_Moneda.State In DsEditModes Then ModuloGenerales.tDenominaciones_Moneda.Post;
  If ModuloGenerales.tDenominaciones_Moneda.ChangeCount > 0  Then ModuloGenerales.tDenominaciones_Moneda.ApplyUpdates(0);
  ModuloGenerales.tDenominaciones_Moneda.Refresh
end;

procedure TFDenominaciones.EliminarExecute(Sender: TObject);
begin
    If Application.MessageBox(PChar(_ConfirmarEliminar),
                              PChar(Eliminar.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

    If ModuloGenerales.tDenominaciones_Moneda.RecordCount > 0 Then ModuloGenerales.tDenominaciones_Moneda.Delete;
    If ModuloGenerales.tDenominaciones_Moneda.ChangeCount > 0 Then ModuloGenerales.tDenominaciones_Moneda.ApplyUpdates(0);
    ModuloGenerales.tDenominaciones_Moneda.Refresh
end;

procedure TFDenominaciones.SalirExecute(Sender: TObject);
begin
  Close
end;

Initialization
  RegisterClass(TFDenominaciones);

end.
