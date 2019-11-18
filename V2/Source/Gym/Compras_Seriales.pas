unit Compras_Seriales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, wwdblook, ExtCtrls, SUIButton, Db,
  ActnList, XPStyleActnCtrls, ActnMan, Mask, DBCtrls;

type
  TFCompras_Seriales = class(TForm)
    bt_Salir: TsuiButton;
    Opciones: TActionManager;
    Salir: TAction;
    wwDBGrid1: TwwDBGrid;
    suiButton1: TsuiButton;
    Siguiente: TAction;
    Cantidad: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure SiguienteExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCompras_Seriales: TFCompras_Seriales;

implementation

uses DataModulo, Generales, RegKeys, Utilidades;

{$R *.dfm}

procedure TFCompras_Seriales.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      Self.Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);
    End; {If _Load_Create}

end;

procedure TFCompras_Seriales.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFCompras_Seriales.SiguienteExecute(Sender: TObject);
begin
  If Modulo.tCompras_Seriales.RecordCount > 0 Then
    ModalResult := mrOk
  Else Salir.Execute
end;

end.
