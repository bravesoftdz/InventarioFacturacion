unit Usuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, RegKeys;

type
  TFUsuarios = class(TForm)
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Eliminar: TAction;
    Barra_Menu: TActionMainMenuBar;
    Panel_Datos_Generales: TAdvPageControl;
    Pg_Datos_Generales: TAdvTabSheet;
    Label7: TLabel;
    Panel_Botones: TAdvPageControl;
    Pg_Botones: TAdvTabSheet;
    Botones: TActionToolBar;
    Nombre_Completo: TwwDBComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Contrasena: TEdit;
    Confirmar_Contrasena: TEdit;
    Nivel_Acceso: TwwDBLookupCombo;
    Nombre_Usuario: TEdit;
    Set_Upper_Case: TAction;
    procedure FormCreate(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EliminarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ContrasenaChange(Sender: TObject);
    procedure Nombre_UsuarioExit(Sender: TObject);
    procedure Set_Upper_CaseExecute(Sender: TObject);
  private
    { Private declarations }
    _CanClose : Boolean;
  public
    { Public declarations }
  end;

var
  FUsuarios : TFUsuarios;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, Generales;

{$R *.dfm}

procedure TFUsuarios.FormCreate(Sender: TObject);
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
      {    If (Self.Components[I] Is TAction) Then
             (Self.Components[I] As TAction).Caption := Format('%s (%s)',[Trim((Self.Components[I] As TAction).Caption),
                                                                          ShortCutToText((Self.Components[I] As TAction).ShortCut)]);}
          If (Self.Components[I] Is TAdvPageControl) Then
             (Self.Components[I] As TAdvPageControl).TabBackGroundColor := Color;
        End;

      {Abrir los Datasets Requeridos por esta pantalla}
      _CanClose := Not (ModuloGenerales.tUsuarios.Active);
      ModuloGenerales.tUsuarios.Open;
      ModuloGenerales.tNiveles.Open;

      {Insertar Registro en Blanco}
      Nuevo.Execute
    End
    {If _Load_Create}
end;

procedure TFUsuarios.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFUsuarios.Set_Upper_CaseExecute(Sender: TObject);
begin
  ModuloGenerales.tUsuarios.Edit;
  ModuloGenerales.tUsuariosNivel_Acceso.Value := _SuperUserLevel;
end;

procedure TFUsuarios.Nombre_UsuarioExit(Sender: TObject);
  Var
    SearchResult : Integer;
begin
  SearchResult := ParamSearchKey(ModuloGenerales.tUsuarios,'NickName',Nombre_Usuario.Text);

  If SearchResult = _CodeNotFound Then
    Begin
      _MoveFocus := False;
      NuevoExecute(Sender);
      _MoveFocus := True;

      ModuloGenerales.tUsuariosNickName.Value := Trim(Nombre_Usuario.Text)
    End;

    If Trim(ModuloGenerales.tUsuariosPassword.Value) <> '' Then
      Contrasena.Text := UnEncrypt(ModuloGenerales.tUsuariosPassword.Value);
    Confirmar_Contrasena.Text := Contrasena.Text
end;

procedure TFUsuarios.NuevoExecute(Sender: TObject);
begin
  If ModuloGenerales.tUsuarios.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
  ModuloGenerales.tUsuarios.Cancel;
  ModuloGenerales.tUsuarios.Append;
  Contrasena.Text := '';
  Confirmar_Contrasena.Text := '';

  If Self.Visible And _MoveFocus Then
   Begin
     Nombre_Usuario.SetFocus;
     Nombre_Usuario.Clear
   End
end;

procedure TFUsuarios.GuardarExecute(Sender: TObject);
  Var
    ActualCode   : String;
    Enc_Password : String;
begin
  If Trim(Contrasena.Text) <> Trim(Confirmar_Contrasena.Text) Then
    Raise Exception.Create(_ErrContrasena_Confirma_Diferente);

  If (_CurrentLevel <> _SuperUserLevel) And
     (_CurrentLevel <> _SysAdmin) And
     (Trim(ModuloGenerales.tUsuariosNivel_Acceso.Value) = _SysAdmin) Then Exit;

  If (_CurrentLevel <> _SuperUserLevel) And
     (Trim(ModuloGenerales.tUsuariosNivel_Acceso.Value) = _SuperUserLevel) Then Exit;

  ActualCode   := Trim(ModuloGenerales.tUsuariosNickName.Value);
  Enc_Password := Encrypt(Trim(Contrasena.Text));

  If ModuloGenerales.tUsuarios.State In DsEditModes Then
    Begin
      ModuloGenerales.tUsuariosPassword.Value := Enc_Password;
      ModuloGenerales.tUsuarios.Post;
    End;

  If ModuloGenerales.tUsuarios.ChangeCount > 0 Then
    ModuloGenerales.tUsuarios.ApplyUpdates(0);

  ModuloGenerales.tUsuarios.Refresh;

  Nuevo.Execute;

  PopUpMessage(Modulo.Mensajes,_DatosGuardados)
end;

procedure TFUsuarios.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFUsuarios.EliminarExecute(Sender: TObject);
begin
  If Trim(ModuloGenerales.tUsuariosNombreCompleto.Value) <> '' Then
    Begin
      If Application.MessageBox(PChar(_ConfirmarEliminar),
                                PChar(Eliminar.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
      ModuloGenerales.tUsuarios.Delete
    End;

  If ModuloGenerales.tUsuarios.ChangeCount > 0 Then
    ModuloGenerales.tUsuarios.ApplyUpdates(0);

  ModuloGenerales.tUsuarios.Refresh;
  Nuevo.Execute;

  PopUpMessage(Modulo.Mensajes,_DatosEliminados)
end;

procedure TFUsuarios.BuscarExecute(Sender: TObject);
  Var
    R : Integer;
    S : String;
begin
  S := DoSearch(Nil,
                'Usuarios',                                          (* TableName *)
                'SrchPr',                                         (* Provider *)
                ModuloGenerales.tUsuariosNickName.FieldName, (* CampoClave *)
                ModuloGenerales.tUsuariosNombreCompleto.FieldName,      (* CampoInicial *)
                '',      (* AltQry *)
                Modulo.Enlace,                                   (* RemoteServer *)
                'A',                                                              (* SortOrder *)
                -1,                                                               (* Packet Records *)
                wsMaximized,
                R);
  If R = MrOk Then
    Begin
           Nombre_Usuario.Text := S;
           Nombre_UsuarioExit(Sender)

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

procedure TFUsuarios.ContrasenaChange(Sender: TObject);
begin
  ModuloGenerales.tUsuarios.Edit
end;

Initialization
  RegisterClass(TFUsuarios);

end.
