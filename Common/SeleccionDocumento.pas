unit SeleccionDocumento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, SUIForm, SUIButton, StdCtrls;

type
  TFSeleccionDocumento = class(TForm)
    wwDBGrid1: TwwDBGrid;
    suiForm1: TsuiForm;
    btCancelar: TsuiButton;
    btBuscar: TsuiButton;
    Label1: TLabel;
    Todos: TCheckBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSeleccionDocumento: TFSeleccionDocumento;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFSeleccionDocumento.FormCreate(Sender: TObject);
begin
  If Not Modulo.tDocumentos.Active Then Modulo.tDocumentos.Open
end;

end.
