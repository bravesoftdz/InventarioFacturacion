unit DlgFinanciamientos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls, ExtCtrls, Spin, ActnMan, ActnColorMaps,
  ActnList, XPStyleActnCtrls, ToolWin, ActnCtrls, DB, Mask, DBCtrls, Grids,
  wwDataInspector, DBGrids, Wwdbigrd, Wwdbgrid, wwdblook, wwdbedit, Wwdotdot,
  Wwdbcomb, RegKeys, SUIButton;

type
  TFormFinanciamientos = class(TForm)
    Opciones: TActionManager;
    Aplicar: TAction;
    Salir: TAction;
    ColorConfig: TXPColorMap;
    Label1: TLabel;
    Recargo: TDBEdit;
    Label2: TLabel;
    Monto: TDBEdit;
    Label5: TLabel;
    Modalidad_Prestamo: TDBRadioGroup;
    Label9: TLabel;
    Label10: TLabel;
    Cuotas: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    Monto_Gasto_Cierre: TDBEdit;
    Distribucion_Cuotas: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Valor_Interes: TDBEdit;
    Valor_Capital: TDBEdit;
    Valor_Cuotas: TDBEdit;
    Label35: TLabel;
    Total_Estimado: TDBEdit;
    Vence: TDBEdit;
    Label36: TLabel;
    Periodo: TwwDBComboBox;
    Tipo_Gasto_Cierre: TDBRadioGroup;
    Label3: TLabel;
    Gasto_Cierre: TDBEdit;
    Label4: TLabel;
    Restante: TDBEdit;
    Inicial: TDBEdit;
    Label6: TLabel;
    bt_Aceptar: TsuiButton;
    bt_Cancelar: TsuiButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure AplicarExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFinanciamientos: TFormFinanciamientos;

implementation

uses Utilidades, DataModulo, Generales;

{$R *.DFM}

procedure TFormFinanciamientos.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);

      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
      ColorConfig.Color := Color - 5;

      _Num_Cuota := 1
    End
end;

procedure TFormFinanciamientos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  Found : TWinControl;
begin
  Case Key Of
    VK_HOME    : Recargo.SetFocus;

    VK_RETURN,
    VK_NEXT    :
      Begin
        Found := FindNextControl(ActiveControl,True, True, False);
        Found.SetFocus
      End;

    VK_PRIOR   :
      Begin
        Found := FindNextControl(ActiveControl,False, True, False);
        Found.SetFocus
      End
  End {Case}
end;

procedure TFormFinanciamientos.AplicarExecute(Sender: TObject);
  Var Vencimiento : TDate;
begin
  Modulo.tClientes.Params.ParamByName('Cedula_RNC_Pasaporte').AsString := Trim(Modulo.tFacturasCliente.Value);
  Modulo.tClientes.Open;

  Modulo.GenerarCuotas(Vencimiento,30);
  If Modulo.tCuotas.State In DsEditModes Then Modulo.tCuotas.Post;

  Modulo.tFacturas.Edit;
  Modulo.tFacturasStatus.Value := 'FINANCIADO';
  Modulo.tFacturasVence_Financiamiento.Value := Vencimiento;
  Modulo.tFacturasVencimiento.Value := Vencimiento;
  Modulo.tFacturasTotalNeto.Value := Modulo.tFacturasTotal_Estimado.Value;
  Modulo.tFacturasPendiente.Value := Modulo.tFacturasTotal_Estimado.Value;
  ModalResult := MrOk
end;

procedure TFormFinanciamientos.SalirExecute(Sender: TObject);
begin
  ModalResult := mrCancel
end;

Initialization
  RegisterClass(TFormFinanciamientos);

end.
