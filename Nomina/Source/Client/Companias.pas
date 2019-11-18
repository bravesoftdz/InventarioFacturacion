unit Companias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ActnColorMaps, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker;

type
  TFCompanias = class(TForm)
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
    AdvPageControl1: TAdvPageControl;
    Botones: TAdvTabSheet;
    pg_Botones: TActionToolBar;
    Label2: TLabel;
    Label3: TLabel;
    RNC: TwwDBComboBox;
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
  FCompanias : TFCompanias;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, DataNomina, RegKeys, Generales;

{$R *.dfm}

procedure TFCompanias.FormCreate(Sender: TObject);
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
      _CanClose := Not (ModuloNomina.tCompania.Active);
      ModuloNomina.tCompania.Open;

      {Insertar Registro en Blanco}
      Nuevo.Execute
    End; {If _Load_Create}
end;

procedure TFCompanias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If ModuloNomina.tCompania.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Salir.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then SysUtils.Abort;

  {Cerrar las Tablas Requeridas}
  If _CanClose Then ModuloNomina.tCompania.Close
end;

procedure TFCompanias.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFCompanias.NuevoExecute(Sender: TObject);
begin
  If ModuloNomina.tCompania.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
  ModuloNomina.tCompania.Cancel;
  ModuloNomina.tCompania.Append;

  If Self.Visible Then Descripcion.SetFocus
end;

procedure TFCompanias.GuardarExecute(Sender: TObject);
begin
  If ModuloNomina.tCompania.State In DsEditModes Then
    ModuloNomina.tCompania.Post;

  If ModuloNomina.tCompania.ChangeCount > 0 Then
    ModuloNomina.tCompania.ApplyUpdates(0);

  ModuloNomina.tCompania.Refresh;

  Nuevo.Execute;

  PopupMessage(Modulo.Mensajes,_DatosGuardados)
end;

procedure TFCompanias.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFCompanias.EliminarExecute(Sender: TObject);
begin
  If ModuloNomina.tCompaniaNumero_Compania.Value > 0 Then
    Begin
      If Application.MessageBox(PChar(_ConfirmarEliminar),
                                PChar(Eliminar.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
      ModuloNomina.tCompania.Delete
    End;

  If ModuloNomina.tCompania.ChangeCount > 0 Then
    ModuloNomina.tCompania.ApplyUpdates(0);

  ModuloNomina.tCompania.Refresh;
  Nuevo.Execute;

  PopupMessage(Modulo.Mensajes,_DatosEliminados)
end;

procedure TFCompanias.BuscarExecute(Sender: TObject);
  Var
    R : Integer;
    S : String;
begin
  S := DoSearch(Nil,
                'Compania',                                          (* TableName *)
                'SrchPr',                                         (* Provider *)
                ModuloNomina.tCompaniaRNC.FieldName, (* CampoClave *)
                ModuloNomina.tCompaniaNombre_Compania.FieldName,      (* CampoInicial *)
                '',      (* AltQry *)
                ModuloNomina.Enlace,                                   (* RemoteServer *)
                'A',                                                              (* SortOrder *)
                -1,                                                               (* Packet Records *)
                wsMaximized,
                R);
  If R = MrOk Then
    Begin
      ModuloNomina.tCompania.Cancel;
      ModuloNomina.tCompania.Locate(ModuloNomina.tCompaniaRNC.FieldName,
                            S,
                            []);

    End
end;

Initialization
  RegisterClass(TFCompanias);

end.
