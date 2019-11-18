unit Componentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, Mask, DBCtrls,
  wwdblook;

type
  TFComponentes = class(TForm)
    Detalles: TwwDBGrid;
    BitBtn1: TBitBtn;
    DBEdit67: TDBEdit;
    Productos: TwwDBLookupCombo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FComponentes: TFComponentes;

implementation

uses DataModulo, Utilidades;

{$R *.dfm}

procedure TFComponentes.FormCreate(Sender: TObject);
begin
  {Configuracion de la Pantalla}
  Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

  {Activar Los Permisos del Usuario}
  ActivateOptions(Sender,_CurrentLevel,Modulo.tAccesos)
end;

end.
