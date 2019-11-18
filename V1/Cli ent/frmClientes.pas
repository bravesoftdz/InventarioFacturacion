unit frmClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, AdvPageControl, ComCtrls, wwdbedit, Wwdotdot,
  Wwdbcomb, Db, Mask, DBCtrls, ActnList, Buttons;

type
  TFrameClientes = class(TFrame)
    Datos_Cliente: TAdvPageControl;
    Page_Clientes: TAdvTabSheet;
    Label10: TLabel;
    Label1: TLabel;
    Nombre_Cliente: TDBEdit;
    Label2: TLabel;
    Apellido_Cliente: TDBEdit;
    Label3: TLabel;
    Direccion_Cliente: TDBEdit;
    TipoTelefono_Principal: TwwDBComboBox;
    Telefono_Principal: TDBEdit;
    Cedula_Rnc_Pasaporte: TEdit;
    sbGuardar: TSpeedButton;
    sbCancelar: TSpeedButton;
    OpcionesCliente: TActionList;
    Guardar: TAction;
    Cancelar: TAction;
    procedure Cedula_Rnc_PasaporteExit(Sender: TObject);
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

procedure TFrameClientes.Cedula_Rnc_PasaporteExit(Sender: TObject);
begin
  If Trim(Cedula_Rnc_Pasaporte.Text) = '' Then Exit;

  Modulo.tClientes.Cancel;
  Modulo.tClientes.Params.ParamByName('Cedula_Rnc_Pasaporte').AsString := Trim(Cedula_Rnc_Pasaporte.Text);
  Modulo.tClientes.Refresh;

  If Modulo.tClientes.RecordCount <= 0 Then
    Begin
      Modulo.tClientes.Append;
      Modulo.tClientesCedula_Rnc_Pasaporte.Value := Trim(Cedula_Rnc_Pasaporte.Text)
    End
end;

procedure TFrameClientes.GuardarExecute(Sender: TObject);
begin
  If Modulo.tClientes.State In DsEditModes Then Modulo.tClientes.Post;
  If Modulo.tClientes.ChangeCount > 0 Then Modulo.tClientes.ApplyUpdates(0)
end;

procedure TFrameClientes.CancelarExecute(Sender: TObject);
begin
  Modulo.tClientes.CancelUpdates
end;

end.
