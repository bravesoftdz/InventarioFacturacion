unit Bancos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, RegKeys;

type
  TFBancos = class(TForm)
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Eliminar: TAction;
    Barra_Menu: TActionMainMenuBar;
    Panel_Datos_Generales: TAdvPageControl;
    Pg_Datos_Generales: TAdvTabSheet;
    Label1: TLabel;
    Nombre: TwwDBComboBox;
    Numero: TDBEdit;
    Panel_Botones: TAdvPageControl;
    Pg_Botones: TAdvTabSheet;
    Botones: TActionToolBar;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Direccion: TwwDBComboBox;
    Telefono: TwwDBComboBox;
    eMail: TwwDBComboBox;
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
  FBancos : TFBancos;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, Generales;

{$R *.dfm}

procedure TFBancos.FormCreate(Sender: TObject);
  Var
    I : Integer;
begin
  If _Load_Create Then
    Begin
      {Configuracion de la Pantalla}
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

      {Abrir los Datasets Requeridos por esta pantalla}
      _CanClose := Not (Modulo.tBancos.Active);
      Modulo.tBancos.Open;

      {Insertar Registro en Blanco}
      Nuevo.Execute
    End; {If _Load_Create}
end;

procedure TFBancos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If Modulo.tBancos.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Salir.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then SysUtils.Abort;

  {Cerrar las Tablas Requeridas}
  If _CanClose Then Modulo.tBancos.Close
end;

procedure TFBancos.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFBancos.NuevoExecute(Sender: TObject);
begin
  If Modulo.tBancos.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
  Modulo.tBancos.Cancel;
  Modulo.tBancos.Append;

  If Self.Visible Then Nombre.SetFocus
end;

procedure TFBancos.GuardarExecute(Sender: TObject);
  Var
    ActualCode : Longint;
begin
  ActualCode := Modulo.tBancosNumero.Value;

  If Modulo.tBancos.State In DsEditModes Then
    Modulo.tBancos.Post;

  If Modulo.tBancos.ChangeCount > 0 Then
    Modulo.tBancos.ApplyUpdates(0);

  Modulo.tBancos.Refresh;

  If ActualCode = 0  Then ActualCode := Modulo.Enlace.AppServer.LastTableCode('Bancos');

  _LastCode := ActualCode;

  Nuevo.Execute;

  PopUpMessage(Modulo.Mensajes,_DatosGuardados)
end;

procedure TFBancos.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFBancos.EliminarExecute(Sender: TObject);
begin
  If Modulo.tBancosNumero.Value > 0 Then
    Begin
      If Application.MessageBox(PChar(_ConfirmarEliminar),
                                PChar(Eliminar.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
      Modulo.tBancos.Delete
    End;

  If Modulo.tBancos.ChangeCount > 0 Then
    Modulo.tBancos.ApplyUpdates(0);

  Modulo.tBancos.Refresh;
  Nuevo.Execute;

  PopUpMessage(Modulo.Mensajes,_DatosEliminados)
end;

procedure TFBancos.BuscarExecute(Sender: TObject);
  Var
    R : Integer;
    S : Integer;
begin
  S := DoSearch(Nil,
                'Bancos',                                          (* TableName *)
                'SrchPr',                                         (* Provider *)
                Modulo.tBancosNumero.FieldName, (* CampoClave *)
                Modulo.tBancosNombre.FieldName,      (* CampoInicial *)
                '',      (* AltQry *)
                Modulo.Enlace,                                   (* RemoteServer *)
                'A',                                                              (* SortOrder *)
                -1,                                                               (* Packet Records *)
                wsMaximized,
                R);
  If R = MrOk Then
    Begin
          Modulo.tBancos.Cancel;
          Modulo.tBancos.Locate(Modulo.tBancosNumero.FieldName,
                                S,
                                []);

{      Cedula_Rnc_Pasaporte.Text := S;
      Cedula_Rnc_PasaporteExit(Cedula_Rnc_Pasaporte);
      CommentTypeFilter(GenericDataModule.tComentarios,True,chk_MostrarHistorial.Checked,chk_MostrarSistema.Checked);
      ValidateEmptyField(Self,Apellido);
      UpdateInfoBoard(InfoBoard,
                      'Buscar',
                      'Cargados los datos de ' + LowerCase(_Tipo_Relacion),
                      Buscar_Registro.ImageIndex,
                      clGreen,
                      clWindowText)}
    End
end;

Initialization
  RegisterClass(TFBancos);

end.
