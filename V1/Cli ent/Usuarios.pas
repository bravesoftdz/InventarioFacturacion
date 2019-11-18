unit Usuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ActnColorMaps, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, MSNPopUp, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, OoMisc, AdPort;

type
  TFUsuarios = class(TForm)
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Eliminar: TAction;
    Barra_Menu: TActionMainMenuBar;
    Datos_Generales: TAdvPageControl;
    DatosGenerales: TAdvTabSheet;
    Label7: TLabel;
    Page_Botones: TAdvPageControl;
    Botones: TAdvTabSheet;
    atb_Botones: TActionToolBar;
    Nombre_Usuario: TwwDBComboBox;
    Nombre_Completo: TwwDBComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Contrasena: TEdit;
    Confirmar_Contrasena: TEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EliminarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ContrasenaChange(Sender: TObject);
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

uses DataModulo, Utilidades, SrchDlg;

{$R *.dfm}

procedure TFUsuarios.FormCreate(Sender: TObject);
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
  _CanClose := Not (Modulo.tUsuarios.Active);
  Modulo.tUsuarios.Open;
  Modulo.tNiveles.Open;

  {Insertar Registro en Blanco}
  Nuevo.Execute
end;

procedure TFUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {Cerrar las Tablas Requeridas}
  If _CanClose Then
    Begin
      Modulo.tUsuarios.Close;
      Modulo.tNiveles.Close
    End
end;

procedure TFUsuarios.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFUsuarios.NuevoExecute(Sender: TObject);
begin
  If Modulo.tUsuarios.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
  Modulo.tUsuarios.Cancel;
  Modulo.tUsuarios.Append;
  Contrasena.Text := '';
  Confirmar_Contrasena.Text := '';

  If Self.Visible Then Nombre_Usuario.SetFocus
end;

procedure TFUsuarios.GuardarExecute(Sender: TObject);
  Var
    ActualCode   : String;
    Enc_Password : String;
begin
  If Trim(Contrasena.Text) <> Trim(Confirmar_Contrasena.Text) Then
    Raise Exception.Create(_ErrContrasena_Confirma_Diferente);

  If (_CurrentLevel <> _SysAdmin) And (Trim(Modulo.tUsuariosNivel_Acceso.Value) = _SysAdmin) Then Exit;

  ActualCode   := Trim(Modulo.tUsuariosNickName.Value);
  Enc_Password := Encrypt(Trim(Contrasena.Text));

  If Modulo.tUsuarios.State In DsEditModes Then
    Begin
      Modulo.tUsuariosPassword.Value := Enc_Password;
      Modulo.tUsuarios.Post;
    End;

  If Modulo.tUsuarios.ChangeCount > 0 Then
    Modulo.tUsuarios.ApplyUpdates(0);

  Modulo.tUsuarios.Refresh;

  Nuevo.Execute;

  Modulo.Mensajes.Text := _DatosGuardados;
  Modulo.Mensajes.ShowPopUp
end;

procedure TFUsuarios.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  Found : TWinControl;
begin
  Case Key Of
    VK_HOME    : Nombre_Usuario.SetFocus;

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
  If Trim(Modulo.tUsuariosNombreCompleto.Value) <> '' Then
    Begin
      If Application.MessageBox(PChar(_ConfirmarEliminar),
                                PChar(Eliminar.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
      Modulo.tUsuarios.Delete
    End;

  If Modulo.tUsuarios.ChangeCount > 0 Then
    Modulo.tUsuarios.ApplyUpdates(0);

  Modulo.tUsuarios.Refresh;
  Nuevo.Execute;

  Modulo.Mensajes.Text := _DatosEliminados;
  Modulo.Mensajes.ShowPopUp
end;

procedure TFUsuarios.BuscarExecute(Sender: TObject);
begin
    Try
      Application.CreateForm(TDlgSearch,DlgSearch);
      DlgSearch.OpenDlg('Usuarios',Modulo.tUsuariosNombreCompleto.FieldName,'A',wsNormal);
      If DlgSearch.ModalResult = MrOk Then
        Begin
          Modulo.tUsuarios.CancelUpdates;
          Modulo.tUsuarios.Params.ParamByName('NickName').AsString:= DlgSearch.SrchCds.FieldByName('NickName').AsString;
          Modulo.tUsuarios.Refresh;
          Contrasena.Text := UnEncrypt(Modulo.tUsuariosPassword.Value);
          Confirmar_Contrasena.Text := Contrasena.Text
        End
    Finally
      DlgSearch.CloseDlg
    End {Try}
end;

procedure TFUsuarios.ContrasenaChange(Sender: TObject);
begin
  Modulo.tUsuarios.Edit
end;

end.
