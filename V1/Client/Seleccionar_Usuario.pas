unit Seleccionar_Usuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Wwdatsrc, DBTables, Wwtable, StdCtrls, Buttons, Grids,
  Wwdbigrd, Wwdbgrid, ExtCtrls, Wwkeycb, RegKeys;

type
  TFSeleccion_Usuarios = class(TForm)
    Seleccion: TRadioGroup;
    Lista: TwwDBGrid;
    Encab: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    busqueda: TwwIncrementalSearch;
    procedure FormActivate(Sender: TObject);
    procedure SeleccionClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSeleccion_Usuarios: TFSeleccion_Usuarios;

implementation

uses DataModulo, Utilidades, Generales;

{$R *.dfm}

procedure TFSeleccion_Usuarios.FormActivate(Sender: TObject);
begin
  Modulo.tListadoProductos.Open;
end;

procedure TFSeleccion_Usuarios.SeleccionClick(Sender: TObject);
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

procedure TFSeleccion_Usuarios.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);

      Color := GetRegColor(_GeneralConfigKey,_WindowsColor)
    End
    {If _Load_Create}
end;

Initialization
  RegisterClass(TFSeleccion_Usuarios);


end.
