unit Retiros_Caja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ActnColorMaps, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, MSNPopUp, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, OoMisc, AdPort;

type
  TFRetiros_Caja = class(TForm)
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Eliminar: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    Datos_Generales: TAdvPageControl;
    DatosGenerales: TAdvTabSheet;
    Label1: TLabel;
    Label7: TLabel;
    AdvPageControl1: TAdvPageControl;
    Botones: TAdvTabSheet;
    ActionToolBar1: TActionToolBar;
    Concepto: TwwDBComboBox;
    Numero: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Fecha: TDBEdit;
    Hora: TDBEdit;
    Imprimir: TAction;
    Monto: TDBEdit;
    Factura: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EliminarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
  private
    { Private declarations }
    _CanClose : Boolean;
  public
    { Public declarations }
  end;

var
  FRetiros_Caja : TFRetiros_Caja;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, SrchDlg;

{$R *.dfm}

procedure TFRetiros_Caja.FormCreate(Sender: TObject);
  Var
    I : Integer;
begin
  {Configuracion de la Pantalla}
  Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

  {Activar Los Permisos del Usuario}
  ActivateOptions(Sender,_CurrentLevel,Modulo.tAccesos);

  {Asigna a los Botones Los ShortCuts Del Menu y Action Lists}
  For I := 0 To (Self.ComponentCount - 1) Do
    Begin
  {    If (Self.Components[I] Is TAction) Then
         (Self.Components[I] As TAction).Caption := Format('%s (%s)',[Trim((Self.Components[I] As TAction).Caption),
                                                                      ShortCutToText((Self.Components[I] As TAction).ShortCut)]);}
      If (Self.Components[I] Is TAdvPageControl) Then
         (Self.Components[I] As TAdvPageControl).TabBackGroundColor := Color;
    End;

  {Abrir los Datasets Requeridos por esta pantalla}
  _CanClose := Not (Modulo.tRetiros_Caja.Active);
  Modulo.tRetiros_Caja.Open;

  {Insertar Registro en Blanco}
  Nuevo.Execute
end;

procedure TFRetiros_Caja.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {Cerrar las Tablas Requeridas}
  If _CanClose Then Modulo.tRetiros_Caja.Close
end;

procedure TFRetiros_Caja.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFRetiros_Caja.NuevoExecute(Sender: TObject);
begin
  If Modulo.tRetiros_Caja.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
  Modulo.tRetiros_Caja.Cancel;
  Modulo.tRetiros_Caja.Append;

  Modulo.tRetiros_CajaFecha.Value := Modulo.Enlace.AppServer.ServerDate;
  Modulo.tRetiros_CajaHora.Value := Modulo.Enlace.AppServer.ServerTime;
  Modulo.tRetiros_CajaUsuario.Value := _CurrentUser;


  If Self.Visible Then Concepto.SetFocus
end;

procedure TFRetiros_Caja.GuardarExecute(Sender: TObject);
  Var
    ActualCode : Longint;
begin
  ActualCode := Modulo.tRetiros_CajaNumero.Value;

  If Modulo.tRetiros_Caja.State In DsEditModes Then
    Modulo.tRetiros_Caja.Post;

  If Modulo.tRetiros_Caja.ChangeCount > 0 Then
    Modulo.tRetiros_Caja.ApplyUpdates(0);

  Modulo.tRetiros_Caja.Refresh;

//  If ActualCode = 0  Then ActualCode := Modulo.Enlace.AppServer.LastTableCode('Retiros_Cajas');

  _LastCode := ActualCode;

  Nuevo.Execute;

  Modulo.Mensajes.Text := _DatosGuardados;
  Modulo.Mensajes.ShowPopUp
end;

procedure TFRetiros_Caja.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  Found : TWinControl;
begin
  Case Key Of
    VK_HOME    : Numero.SetFocus;

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

procedure TFRetiros_Caja.EliminarExecute(Sender: TObject);
begin
  If Modulo.tRetiros_CajaNumero.Value > 0 Then
    Begin
      If Application.MessageBox(PChar(_ConfirmarEliminar),
                                PChar(Eliminar.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
      Modulo.tRetiros_Caja.Delete
    End;

  If Modulo.tRetiros_Caja.ChangeCount > 0 Then
    Modulo.tRetiros_Caja.ApplyUpdates(0);

  Modulo.tRetiros_Caja.Refresh;
  Nuevo.Execute;

  Modulo.Mensajes.Text := _DatosEliminados;
  Modulo.Mensajes.ShowPopUp
end;

procedure TFRetiros_Caja.BuscarExecute(Sender: TObject);
begin
    Try
      Application.CreateForm(TDlgSearch,DlgSearch);
      DlgSearch.OpenDlg('Retiros_Caja',Modulo.tRetiros_CajaNumero.FieldName,'D',wsNormal);
      If DlgSearch.ModalResult = MrOk Then
        Begin
          Modulo.tRetiros_Caja.Cancel;
          Modulo.tRetiros_Caja.Params.ParamByName('Numero').AsInteger := DlgSearch.SrchCds.FieldByName('Numero').AsInteger;
          Modulo.tRetiros_Caja.Refresh
        End
    Finally
      DlgSearch.CloseDlg
    End {Try}
end;

end.
