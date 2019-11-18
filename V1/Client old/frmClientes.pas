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
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    wwDBComboBox10: TwwDBComboBox;
    DBEdit15: TDBEdit;
    Codigo: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    OpcionesCliente: TActionList;
    Guardar: TAction;
    Cancelar: TAction;
    procedure CodigoExit(Sender: TObject);
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

procedure TFrameClientes.CodigoExit(Sender: TObject);
begin
  If Trim(Codigo.Text) = '' Then Exit;

  Modulo.tClientes.Cancel;
  Modulo.tClientes.Params.ParamByName('Cedula_Rnc_Pasaporte').AsString := Trim(Codigo.Text);
  Modulo.tClientes.Refresh;

  If Modulo.tClientes.RecordCount <= 0 Then
    Begin
      Modulo.tClientes.Append;
      Modulo.tClientesCedula_Rnc_Pasaporte.Value := Trim(Codigo.Text)
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
