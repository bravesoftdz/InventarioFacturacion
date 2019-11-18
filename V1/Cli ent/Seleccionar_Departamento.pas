unit Seleccionar_Departamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Wwdatsrc, DBTables, Wwtable, StdCtrls, Buttons, Grids,
  Wwdbigrd, Wwdbgrid, ExtCtrls, Wwkeycb;

type
  TFSeleccion_Departamentos = class(TForm)
    Seleccion: TRadioGroup;
    Lista: TwwDBGrid;
    Encab: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    busqueda: TwwIncrementalSearch;
    procedure SeleccionClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSeleccion_Departamentos: TFSeleccion_Departamentos;

implementation

uses DataModulo, Utilidades;

{$R *.dfm}

procedure TFSeleccion_Departamentos.SeleccionClick(Sender: TObject);
  Var
    Colores : Array [False..True] Of Integer;
begin
  Colores[False] := Color;
  Colores[True] := clWindow;
  Encab.Enabled := Seleccion.ItemIndex = 1;
  Lista.Enabled := Seleccion.ItemIndex = 1;
  busqueda.Enabled := Seleccion.ItemIndex = 1;
  Busqueda.Color := Colores[busqueda.Enabled];
  Lista.Color := Colores[Lista.Enabled];
end;

procedure TFSeleccion_Departamentos.FormCreate(Sender: TObject);
begin
  {Activar Los Permisos del Usuario}
  ActivateOptions(Sender,_CurrentLevel,Modulo.tAccesos);

  Modulo.tDepartamentos.Open;
  Color := GetRegColor(_GeneralConfigKey,_WindowsColor)
end;

end.
