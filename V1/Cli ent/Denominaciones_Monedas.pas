unit Denominaciones_Monedas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, Mask, DBCtrls,
  wwdblook, ActnMan, ActnColorMaps, ActnList, XPStyleActnCtrls, ToolWin,
  ActnCtrls, Db, wwdbedit, Wwdotdot, Wwdbcomb;

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

uses DataModulo, Utilidades;

{$R *.dfm}

procedure TFDenominaciones.FormCreate(Sender: TObject);
begin
  {Configuracion de la Pantalla}
  Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

  Modulo.tDenominaciones_Moneda.Open;

  {Activar Los Permisos del Usuario}
  ActivateOptions(Sender,_CurrentLevel,Modulo.tAccesos)
end;

procedure TFDenominaciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  If Modulo.tDenominaciones_Moneda.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Salir.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then SysUtils.Abort;

  Modulo.tDenominaciones_Moneda.Close
end;

procedure TFDenominaciones.GuardarExecute(Sender: TObject);
begin
  If Modulo.tDenominaciones_Moneda.State In DsEditModes Then Modulo.tDenominaciones_Moneda.Post;
  If Modulo.tDenominaciones_Moneda.ChangeCount > 0  Then Modulo.tDenominaciones_Moneda.ApplyUpdates(0);
  Modulo.tDenominaciones_Moneda.Refresh
end;

procedure TFDenominaciones.EliminarExecute(Sender: TObject);
begin
    If Application.MessageBox(PChar(_ConfirmarEliminar),
                              PChar(Eliminar.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

    If Modulo.tDenominaciones_Moneda.RecordCount > 0 Then Modulo.tDenominaciones_Moneda.Delete;
    If Modulo.tDenominaciones_Moneda.ChangeCount > 0 Then Modulo.tDenominaciones_Moneda.ApplyUpdates(0);
    Modulo.tDenominaciones_Moneda.Refresh
end;

procedure TFDenominaciones.SalirExecute(Sender: TObject);
begin
  Close
end;

end.
