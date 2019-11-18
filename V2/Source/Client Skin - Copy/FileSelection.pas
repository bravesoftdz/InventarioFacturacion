unit FileSelection;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, slstbox, SUIButton, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls;

type
  TfFileSelection = class(TForm)
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
    bt_Aceptar: TsuiButton;
    procedure bt_AceptarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFileSelection: TfFileSelection;

implementation

uses Utilidades, DataModulo;

{$R *.dfm}

procedure TfFileSelection.bt_AceptarClick(Sender: TObject);
begin
    _ARCHIVO := Modulo.tArchivosDescripcion.Value;
end;

end.
