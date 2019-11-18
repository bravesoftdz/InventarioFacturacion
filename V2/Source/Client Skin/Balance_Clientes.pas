unit Balance_Clientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, wwriched, Grids,
  Wwdbigrd, Wwdbgrid, frmProveedores, Wwdbspin, IniFiles, RegKeys, SUIButton,
  Wwkeycb;

type
  TFAjuste_Balances_Clientes = class(TForm)
    Detalles_Compra: TAdvPageControl;
    Page_Detalles: TAdvTabSheet;
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    bt_Aceptar: TsuiButton;
    bt_Cancelar: TsuiButton;
    Imprimir: TAction;
    suiButton1: TsuiButton;
    Imprimir_Plantilla_Conteo: TAction;
    suiButton2: TsuiButton;
    Buscar_Producto: TwwIncrementalSearch;
    Label1: TLabel;
    Imprimir_Plantilla_Verificacion: TAction;
    grdClientes: TwwDBGrid;
    wwIButton1: TwwIButton;
    Balance: TEdit;
    Descripcion_Pendientes: TMemo;
    Diferencia: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Imprimir_Plantilla_VerificacionExecute(Sender: TObject);
    procedure Imprimir_Plantilla_ConteoExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DetallesExit(Sender: TObject);
    procedure grdClientesRowChanged(Sender: TObject);
    procedure BalanceExit(Sender: TObject);
    procedure grdClientesCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAjuste_Balances_Clientes : TFAjuste_Balances_Clientes;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, DateUtils, Generales, Reports_Forms;

{$R *.dfm}

procedure TFAjuste_Balances_Clientes.FormCreate(Sender: TObject);
  Var
    I : Integer;
begin
  If _Load_Create Then
    Begin
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);

      {Asigna a los Botones Los ShortCuts Del Menu y Action Lists}
      For I := 0 To (Self.ComponentCount - 1) Do
        Begin
          If (Self.Components[I] Is TAdvPageControl) Then
             (Self.Components[I] As TAdvPageControl).TabBackGroundColor := Color;
        End;

      {Abrir las Tablas Requeridas}
      Modulo.tListado_Clientes.Open;
    End; {If _Load_Create}
end;

procedure TFAjuste_Balances_Clientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If Modulo.tExistenciaInicial.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicionSalida),
                              PChar(Salir.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then
      Begin
        Action := caNone;
        Exit
      End
end;

procedure TFAjuste_Balances_Clientes.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFAjuste_Balances_Clientes.GuardarExecute(Sender: TObject);
  Var
    Diferencias : Currency;
    Vence       : TDate;
begin
  Diferencias := StrToCurr(Diferencia.Text);
  If Diferencias < 0 Then
    Begin
      Mensaje ('BALANCE MENOR AL ACTUAL'#13#13'Para lograr este balance, haga un abono a la cuenta '#13'mediante la opcion de CUENTAS POR COBRAR en el menu principal',self);
      Exit;
    End;

  If Diferencias > 0 Then
    Begin
      {Factura}
      Modulo.tProductos.Open;
      Modulo.tFacturas.Open;
      Modulo.tFacturas.Append;
      Modulo.tFacturasProceso.AsString := Gen_ProcessNumber(_CurrentUser);
      Modulo.tFacturasCliente.Value := Modulo.tListado_ClientesCedula_Rnc_Pasaporte.Value;
      Modulo.tFacturasFecha.Value := Modulo.Enlace.AppServer.ServerDate;
      Modulo.tFacturasHora.Value := Modulo.Enlace.AppServer.ServerTime;
      Modulo.tFacturasCondicion.Value := 'Crédito';
      Modulo.tFacturasTipo_NCF.Value := '02';
      Modulo.tFacturasComentario.Value := 'AJUSTE DE BALANCES : ' + UpperCase(Descripcion_Pendientes.Text);
      Modulo.tFacturasInteres.Value := 0;
      Modulo.tFacturasModalidad.Value := 'Cuotas Fijas';
      Modulo.tFacturasPlazo_Pago.Value := 1;


      {Detalle}
      Modulo.tDetalles_Factura.Append;
      Modulo.tDetalles_FacturaCodigo.Value := '*';
      Modulo.tDetalles_FacturaDescripcion.Value := 'Ajuste de Balance del Cliente';
      Modulo.tDetalles_FacturaCantidad.Value := 1;
      Modulo.tDetalles_FacturaContenido.Value := 1;
      Modulo.tDetalles_FacturaCosto.Value := 0;
      Modulo.tDetalles_FacturaPrecio_Venta.Value := Diferencias;
      Modulo.tDetalles_FacturaPrecio_Unidad.Value := Diferencias;
      Modulo.tDetalles_Factura.Post;

      Modulo.tFacturas.Edit;
      Modulo.tFacturasMonto_Financiado.Value := Modulo.tFacturasPendiente.Value;
      Modulo.tFacturasPeriodo_Pagos.Value := Modulo.tFacturasNombre_Termino.Value;
      Modulo.GenerarCuotas(Vence,Modulo.tTerminosDiasDeGracia.Value);

      Modulo.tFacturas.Post;
      Modulo.tFacturas.ApplyUpdates(0);
      Modulo.tFacturas.Close;

      Modulo.tProductos.Close;

      Modulo.tListado_Clientes.Refresh;
      Modulo.tListado_Clientes.Edit;
      Modulo.tListado_ClientesEstado.AsString := 'A';
      Modulo.tListado_Clientes.Post;
      Modulo.tListado_Clientes.ApplyUpdates(0);

      grdClientesRowChanged(Sender)
    end;

  PopUpMessage(Modulo.Mensajes,_DatosGuardados);
end;

procedure TFAjuste_Balances_Clientes.ImprimirExecute(Sender: TObject);
begin
  If Modulo.tAjuste_Inventario.RecordCount > 0 Then
    ReportsAndForms.Form_Ajuste_Inventario.Print
  Else
    Mensaje(_NoPrintData,self)
end;

procedure TFAjuste_Balances_Clientes.Imprimir_Plantilla_ConteoExecute(Sender: TObject);
begin
  ReportsAndForms.Lbl_Existencia_Actual.Visible := True;
  ReportsAndForms.Dt_Existencia_Actual.Visible := True;

  If Modulo.tAjuste_Inventario.RecordCount > 0 Then
    ReportsAndForms.Form_Plantilla_Conteo.Print
  Else
    Mensaje(_NoPrintData,self)
end;

procedure TFAjuste_Balances_Clientes.Imprimir_Plantilla_VerificacionExecute(
  Sender: TObject);
begin
  ReportsAndForms.Lbl_Existencia_Actual.Visible := False;
  ReportsAndForms.Dt_Existencia_Actual.Visible := False;

  If Modulo.tAjuste_Inventario.RecordCount > 0 Then
    ReportsAndForms.Form_Plantilla_Conteo.Print
  Else
    Mensaje(_NoPrintData,self)
end;

procedure TFAjuste_Balances_Clientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  Found : TWinControl;
begin
  Case Key Of

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
      End;

    VK_F3      :
      Begin
      End
  End {Case}
end;

procedure TFAjuste_Balances_Clientes.grdClientesCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  If Trim(Modulo.tListado_ClientesEstado.AsString) = 'A' Then
    Begin
      ABrush.Color := clYellow;
      AFont.Color := clRed;
    End;
end;

procedure TFAjuste_Balances_Clientes.grdClientesRowChanged(Sender: TObject);
begin
  Balance.Text := Modulo.tListado_ClientesBalance_Actual.AsString;
  Diferencia.Text := '0.00';
  Descripcion_Pendientes.Lines.Clear;
  Descripcion_Pendientes.Text := 'Factura(s) Número : ' + #13 + 'De Fecha :'
end;

procedure TFAjuste_Balances_Clientes.BalanceExit(Sender: TObject);
  Var
    Bal : Currency;
begin
  Try
    Bal := StrToCurr(Balance.Text);
  Except
    Mensaje ('Balance Invalido',self);
    SysUtils.Abort
  End;
  Diferencia.Text := CurrToStr(Bal - Modulo.tListado_ClientesBalance_Actual.Value);
end;

procedure TFAjuste_Balances_Clientes.DetallesExit(Sender: TObject);
begin
  KeyPreview := True
end;

Initialization
  RegisterClass(TFAjuste_Balances_Clientes);

end.

