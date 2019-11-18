unit frmProveedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ActnList, wwdbedit, Wwdotdot, Wwdbcomb, StdCtrls, Mask, DBCtrls,
  Buttons, AdvPageControl, ComCtrls, Db, SUIButton;

type
  TFrameProveedores = class(TFrame)
    Panel_Datos_Proveedor: TAdvPageControl;
    Pg_Proveedores: TAdvTabSheet;
    Label10: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Nombre_Proveedor: TDBEdit;
    Contacto_Proveedor: TDBEdit;
    Direccion_Proveedor: TDBEdit;
    Tipo_Telefono_Proveedor: TwwDBComboBox;
    Telefono_Proveedor: TDBEdit;
    OpcionesProveedores: TActionList;
    Guardar: TAction;
    Cancelar: TAction;
    Numero_Proveedor: TDBEdit;
    Label4: TLabel;
    Cedula_Rnc_Proveedor: TDBEdit;
    bt_Guardar: TsuiButton;
    bt_Cancelar: TsuiButton;
    procedure GuardarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFrameProveedores.GuardarExecute(Sender: TObject);
begin
  If Modulo.tProveedores.State In DsEditModes Then Modulo.tProveedores.Post;
  If Modulo.tProveedores.ChangeCount > 0 Then Modulo.tProveedores.ApplyUpdates(0)
end;

procedure TFrameProveedores.CancelarExecute(Sender: TObject);
begin
  Modulo.tProveedores.CancelUpdates
end;

Initialization
  RegisterClass(TFrameProveedores);


end.
