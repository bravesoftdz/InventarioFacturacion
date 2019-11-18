unit Departamentos_Empleados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ActnColorMaps, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker;

type
  TFDepartamentos_Nomina = class(TForm)
    ColorConfig: TXPColorMap;
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Eliminar: TAction;
    Barra_Menu: TActionMainMenuBar;
    Datos_Generales: TAdvPageControl;
    DatosGenerales: TAdvTabSheet;
    Label1: TLabel;
    Descripcion: TwwDBComboBox;
    Codigo: TDBEdit;
    atb_Botones: TAdvPageControl;
    Botones: TAdvTabSheet;
    pg_Botones: TActionToolBar;
    Label2: TLabel;
    Compania: TwwDBLookupCombo;
    Label3: TLabel;
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
  FDepartamentos_Nomina : TFDepartamentos_Nomina;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, DataNomina, RegKeys, Generales;

{$R *.dfm}

procedure TFDepartamentos_Nomina.FormCreate(Sender: TObject);
  Var
    I : Integer;
begin
  If _Load_Create Then
    Begin
      {Configuracion de la Pantalla}
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
      ColorConfig.Color := Color - 5;

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

      {Abrir los Datasets Requeridos por esta pantalla}
      _CanClose := Not (ModuloNomina.tDepartamentos.Active);
      ModuloNomina.tDepartamentos.Open;
      ModuloNomina.tCompania.Open;

      {Insertar Registro en Blanco}
      Nuevo.Execute
    End; {If _Load_Create}
end;

procedure TFDepartamentos_Nomina.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If ModuloNomina.tDepartamentos.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Salir.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then SysUtils.Abort;

  {Cerrar las Tablas Requeridas}
  If _CanClose Then
    Begin
      ModuloNomina.tDepartamentos.Close;
      ModuloNomina.tCompania.Close
    End
end;

procedure TFDepartamentos_Nomina.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFDepartamentos_Nomina.NuevoExecute(Sender: TObject);
begin
  If ModuloNomina.tDepartamentos.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
  ModuloNomina.tDepartamentos.Cancel;
  ModuloNomina.tDepartamentos.Append;

  If Self.Visible Then Descripcion.SetFocus
end;

procedure TFDepartamentos_Nomina.GuardarExecute(Sender: TObject);
  Var
    ActualCode : Longint;
begin
  ActualCode := ModuloNomina.tDepartamentosNumero.Value;

  If ModuloNomina.tDepartamentos.State In DsEditModes Then
    ModuloNomina.tDepartamentos.Post;

  If ModuloNomina.tDepartamentos.ChangeCount > 0 Then
    ModuloNomina.tDepartamentos.ApplyUpdates(0);

  ModuloNomina.tDepartamentos.Refresh;

  If ActualCode = 0  Then ActualCode := Modulo.Enlace.AppServer.LastTableCode('Departamentos');

  _LastCode := ActualCode;

  Nuevo.Execute;

  PopupMessage(Modulo.Mensajes,_DatosGuardados)
end;

procedure TFDepartamentos_Nomina.FormKeyDown(Sender: TObject; var Key: Word;
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
      End
  End {Case}
end;

procedure TFDepartamentos_Nomina.EliminarExecute(Sender: TObject);
begin
  If ModuloNomina.tDepartamentosNumero.Value > 0 Then
    Begin
      If Application.MessageBox(PChar(_ConfirmarEliminar),
                                PChar(Eliminar.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
      ModuloNomina.tDepartamentos.Delete
    End;

  If ModuloNomina.tDepartamentos.ChangeCount > 0 Then
    ModuloNomina.tDepartamentos.ApplyUpdates(0);

  ModuloNomina.tDepartamentos.Refresh;
  Nuevo.Execute;

  PopupMessage(Modulo.Mensajes,_DatosEliminados)
end;

procedure TFDepartamentos_Nomina.BuscarExecute(Sender: TObject);
  Var
    R : Integer;
    S : Integer;
begin
  S := DoSearch(Nil,
                'Departamentos',                                      (* TableName *)
                'SrchPr',                                        (* Provider *)
                ModuloNomina.tDepartamentosNumero.FieldName,               (* CampoClave *)
                ModuloNomina.tDepartamentosDescripcion.FieldName,                (* CampoInicial *)
                '',                  (* AltQry *)
                ModuloNomina.Enlace,                                   (* RemoteServer *)
                'A',                                             (* SortOrder *)
                -1,                                              (* Packet Records *)
                wsMaximized,
                R);

  If R = MrOk Then
    Begin
      ModuloNomina.tDepartamentos.Cancel;
      ModuloNomina.tDepartamentos.Locate(ModuloNomina.tDepartamentosNumero.FieldName,
                               S,
                               []);
    End
end;

Initialization
  RegisterClass(TFDepartamentos_Nomina);

end.
