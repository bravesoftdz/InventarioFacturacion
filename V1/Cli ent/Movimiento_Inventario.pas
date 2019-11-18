unit Movimiento_Inventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, AdvPageControl, ComCtrls;

type
  TForm1 = class(TForm)
    Resumen_Existencia: TAdvPageControl;
    AdvTabSheet3: TAdvTabSheet;
    Label23: TLabel;
    Label33: TLabel;
    Ultima_Compra: TDBText;
    Label39: TLabel;
    Compradas: TDBText;
    Numero_Compra: TDBText;
    Label34: TLabel;
    Numero_Factura: TDBText;
    Label35: TLabel;
    Vendidas: TDBText;
    Ultima_Venta: TDBText;
    Label36: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Numero_Salida: TDBText;
    Despachadas: TDBText;
    Ultima_Salida: TDBText;
    Label32: TLabel;
    Pedidas: TDBText;
    Label43: TLabel;
    Transito: TDBText;
    Label44: TLabel;
    Existensia: TDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
