unit ResumeOperaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, SUIButton, StdCtrls, AdvGlowButton,
  ExtCtrls;

type
  TfResumen_Operaciones = class(TForm)
    grdResumen: TwwDBGrid;
    Titulo: TLabel;
    Label1: TLabel;
    Total_Ingresado: TLabel;
    TotalOperacion: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    gbt_Aceptar: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    Label2: TLabel;
    Total_Egresado: TLabel;
    Label7: TLabel;
    TotalGeneral: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Shape1: TShape;
    Label6: TLabel;
    Total_Creditos: TLabel;
    Label11: TLabel;
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
