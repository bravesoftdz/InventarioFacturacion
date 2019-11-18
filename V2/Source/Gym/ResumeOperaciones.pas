unit ResumeOperaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, SUIButton, StdCtrls;

type
  TfResumen_Operaciones = class(TForm)
    grdResumen: TwwDBGrid;
    bt_Cerrar: TsuiButton;
    Titulo: TLabel;
    Label1: TLabel;
    TotalGeneral: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fResumen_Operaciones: TfResumen_Operaciones;

implementation

uses DataModulo;

{$R *.dfm}

end.
