unit frmClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, AdvPageControl, ComCtrls, wwdbedit, Wwdotdot,
  Wwdbcomb, Db, Mask, DBCtrls, ActnList, Buttons, SUIButton, wwdblook;

type
  TFrameClientes = class(TFrame)
    Datos_Cliente: TAdvPageControl;
    Pg_Clientes: TAdvTabSheet;
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
    OpcionesCliente: TActionList;
    Guardar: TAction;
    Cancelar: TAction;
    bt_Guardar: TsuiButton;
    bt_Cancelar: TsuiButton;
    Label6: TLabel;
    Condicion_Facturas: TwwDBComboBox;
    Label20: TLabel;
    Terminos_Facturacion: TwwDBLookupCombo;
    procedure Cedula_Rnc_PasaporteExit(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure Condicion_FacturasChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses DataModulo, Utilidades, RegKeys;

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

procedure TFrameClientes.Condicion_FacturasChange(Sender: TObject);
  Var
    T : Integer;
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,False);

  Terminos_Facturacion.Enabled := Condicion_Facturas.ItemIndex = 1;
  T := RegInfo.ReadInteger(_TerminosCredito);
  If (Modulo.tClientes.State In DsEditModes) Then
    Case Condicion_Facturas.ItemIndex Of
      0 : Modulo.tClientesTerminosFacturacion.Value :=  Modulo.tParametrosTermino_COD.Value;
      1 : Modulo.tClientesTerminosFacturacion.Value :=  T;
      2 : Modulo.tClientesTerminosFacturacion.Value :=  Modulo.tParametrosTermino_Financiado.Value;
    End; {Case}

  If Terminos_Facturacion.Enabled And Self.Visible Then
    Terminos_Facturacion.SetFocus
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

Initialization
  RegisterClass(TFrameClientes);

end.
