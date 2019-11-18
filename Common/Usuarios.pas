unit Usuarios;
//*****************************************************************************
//*                                                                           *
//*                   Sistema de Administración Financiera                    *
//*                                                                           *
//* Desarrollado por    : Ing. Moises Gumbs Peralta                           *
//* Derechos Reservados : 2011, Romana MicroSystems                           *
//*                                                                           *
//* Datos_GeneralesUnit.pas                                                   *
//*                                                                           *
//* Esta pantalla se utiliza para el control de y actualización de los        *
//* Datos Generales de las personas (físicas o morales)                       *
//* que están relacionadas con las operaciones del sistema                    *
//*                                                                           *
//*****************************************************************************

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, Mask, ExtCtrls, ClipBrd,
  AdvGlowButton, ToolPanels, ActnList,
  PlatformDefaultStyleActnCtrls, ActnMan, AdvMemo,
  AdvSmoothEdit, AdvSmoothEditButton, AdvSmoothDatePicker, DBAdvSmoothDatePicker,
  AdvPicture, DBAdvPicture, AdvGroupBox, AdvOfficeButtons, DBAdvOfficeButtons,
  Grids, AdvOfficePager, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, W7Classes, W7ListViewItems, cxContainer, cxGroupBox,
  cxRadioGroup, cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxMRUEdit, cxCheckBox, cxImage, cxGridCardView, cxGridDBCardView, Menus,
  AdvMenus, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  XPStyleActnCtrls;

type
  TfrmDatos_Usuarios = class(TForm)
    adv_OptionPanel: TAdvToolPanel;
    gbt_Nuevo_Registro: TAdvGlowButton;
    gbt_Guardar_Registro: TAdvGlowButton;
    Opciones_Pantalla: TActionManager;
    Guardar_Registro: TAction;
    Buscar_Registro: TAction;
    Nuevo_Registro: TAction;
    Eliminar_Registro: TAction;
    Salir: TAction;
    gbt_Buscar_Registro: TAdvGlowButton;
    gbt_Eliminar_Registro: TAdvGlowButton;
    gbt_Salir: TAdvGlowButton;
    Agregar_Foto: TAction;
    Data_Group_Pannel: TAdvOfficePager;
    pg_Datos_Generales: TAdvOfficePage;
    Panel_Generales: TAdvToolPanel;
    lbl_Nombre: TLabel;
    lbl_ID: TLabel;
    lbl_Apellido: TLabel;
    Nombre: TDBEdit;
    Nombre_Usuario: TEdit;
    InfoBoard: TW7TaskItem;
    FOTO: TDBAdvPicture;
    imgFrame: TShape;
    InfoBoardOptions: TAdvPopupMenu;
    Copiar1: TMenuItem;
    Label1: TLabel;
    Confirmar_Contrasena: TEdit;
    Label2: TLabel;
    email: TDBEdit;
    Nivel_Acceso: TcxDBLookupComboBox;
    lblNivel_Acceso: TLabel;
    Label3: TLabel;
    Compania: TcxDBLookupComboBox;
    Label4: TLabel;
    Terminales: TcxDBLookupComboBox;
    Tipo_Persona: TcxDBRadioGroup;
    Label28: TLabel;
    Label5: TLabel;
    Fecha_Creado: TDBEdit;
    Contrasena: TEdit;
    gbt_Autorizaciones: TAdvGlowButton;
    Autorizaciones: TAction;
    Status: TcxDBComboBox;
    procedure Guardar_RegistroExecute(Sender: TObject);
    procedure Buscar_RegistroExecute(Sender: TObject);
    procedure Nuevo_RegistroExecute(Sender: TObject);
    procedure Eliminar_RegistroExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure Nombre_UsuarioExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Agregar_FotoExecute(Sender: TObject);
    procedure NoCursor(Sender: TObject);
    procedure SetCursor(Sender: TObject);
    procedure pg_Datos_GeneralesShow(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure PasswordEdit(Sender: TObject);
    procedure AutorizacionesExecute(Sender: TObject);
  private
    { Private declarations }
    _Tipo_Relacion      : String;
    _Encabezado_Inicial : String;
  public
    { Public declarations }
    CATEGORIA_IMPRESON : String;
    _ID : String;
  Published
    { Publishe declarations }
    Constructor Create(Aowner : TComponent; const ID, Relatioship : String); overload;
  end;

var
  frmDatos_Usuarios: TfrmDatos_Usuarios;

implementation

uses Utilidades, RegKeys,
  CommentsLib, DataModulo, Generales, Autorizaciones;

{$R *.dfm}
constructor TfrmDatos_Usuarios.Create(Aowner : TComponent; const ID, Relatioship : String);
begin
  inherited Create(AOwner); // Llamada al inherited constructor
  _Tipo_Relacion := UpperCase(Relatioship);  // Initialize the member variable
  _Encabezado_Inicial := Self.Caption;
  _ID := ID;
  CATEGORIA_IMPRESON := 'DATOS GENERALES';

//  Self.Caption := _Encabezado_Inicial + ' : ' + _Tipo_Relacion;
  If _Load_Create Then
    Begin
      {Configuracion de la Pantalla}
//      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

      {Activar Los Permisos del Usuario}
      ActivateOptions(self,_CurrentLevel,ModuloGenerales.tAccesos);

      {Activar Los Hints Disponibles}
      LoadHints(Self);

      ModuloGenerales.tNiveles.Open;

      ModuloGenerales.tlst_Compania_Status.Params.ParamByName('Status').AsString := _stACTIVO;
      ModuloGenerales.tlst_Compania_Status.Open;

      ModuloGenerales.tLst_Terminales_Status.Params.ParamByName('Status').AsString := _stACTIVO;
      ModuloGenerales.tLst_Terminales_Status.Open;

      ModuloGenerales.tUsuarios.Open;

      {Insertar Registro en Blanco}
      Nuevo_Registro.Execute;

      {Si se Especifica un ID, cargar los datos}
      If Trim(_ID) <> '' Then
        Begin
          Nombre_Usuario.Text := Trim(_ID);
          Nombre_UsuarioExit(nil)
        End

    End {If _Load_Create}
end;

procedure TfrmDatos_Usuarios.Agregar_FotoExecute(Sender: TObject);
begin
  ModuloGenerales.tUsuarios.Edit;
  AgregarTMSFoto(ModuloGenerales.tUsuariosFoto)
end;

procedure TfrmDatos_Usuarios.AutorizacionesExecute(Sender: TObject);
begin
  Guardar_RegistroExecute(Autorizaciones);

  If Trim(ModuloGenerales.tUsuariosUserName.Value) = ''  Then Exit;

  OpenForm(TfrmAutorizaciones_Accesos,frmAutorizaciones_Accesos);
end;

procedure TfrmDatos_Usuarios.Buscar_RegistroExecute(Sender: TObject);
  Var
    R : Integer;
    S : String;
begin
  Data_Group_Pannel.ActivePage := pg_Datos_Generales;
  S := DoSearch(Nil,
                'Usuarios',                                        (* TableName *)
                'SrchPr',                                          (* Provider *)
                ModuloGenerales.tUsuariosUserName.FieldName,       (* CampoClave *)
                ModuloGenerales.tUsuariosNombreCompleto.FieldName, (* CampoInicial *)
                '',                                                (* AltQry *)
                Modulo.Enlace,                                     (* RemoteServer *)
                'A',                                               (* SortOrder *)
                -1,                                                (* Packet Records *)
                wsMaximized,
                R);
  If R = MrOk Then
    Begin
      Nombre_Usuario.Text := S;
      Nombre_UsuarioExit(Nombre_Usuario);
      ValidateEmptyField(Self,Nombre);
      UpdateInfoBoard(InfoBoard,
                      'Buscar',
                      'Cargados los datos de Usuario',
                      Buscar_Registro.ImageIndex,
                      clGreen,
                      clWindowText)
    End
end;

procedure TfrmDatos_Usuarios.Eliminar_RegistroExecute(Sender: TObject);
begin
  Data_Group_Pannel.ActivePage := pg_Datos_Generales;
  If Trim(ModuloGenerales.tUsuariosNombreCompleto.Value) <> '' Then
    Begin
      If Application.MessageBox(PChar(_ConfirmarEliminar),
                                PChar(Eliminar_Registro.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
      ModuloGenerales.tUsuarios.Delete;

      UpdateInfoBoard(InfoBoard,
                      'Eliminado',
                      'Eliminados los datos de ' + LowerCase(_Tipo_Relacion) + ' ' + Nombre_Usuario.Text,
                      Eliminar_Registro.ImageIndex,
                      clRed,
                      clWindowText)
    End;

  If ModuloGenerales.tUsuarios.ChangeCount > 0 Then
    ModuloGenerales.tUsuarios.ApplyUpdates(0);

  ModuloGenerales.tUsuarios.Refresh;
  Nuevo_RegistroExecute(Eliminar_Registro);

  PopUpMessage(ModuloGenerales.Mensajes,_DatosEliminados)
end;

procedure TfrmDatos_Usuarios.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  FirstComponent : TWinControl;
begin
  FirstComponent := Nombre_Usuario;
  {$I ..\..\Common\formkeys.Cnt}
end;

procedure TfrmDatos_Usuarios.Guardar_RegistroExecute(Sender: TObject);
  Var
    CamposVacios : Integer;
    Enc_Password : String;
begin
  CamposVacios := ValidateEmptyField(Self,Nombre);

  If CamposVacios > 0 Then
    Begin
      UpdateInfoBoard(InfoBoard,
                      'Campos Requeridos',
                      'Estos ' + IntToStr(CamposVacios) + ' campos son requeridos. por favor, VERIFIQUE :'#13+
                      _Last_Error_Message,
                      68,
                      clRed,
                      clRed);
      Exit
    End;

  If Trim(Contrasena.Text) <> Trim(Confirmar_Contrasena.Text) Then
    Begin
      UpdateInfoBoard(InfoBoard,
                      'Contraseña',
                      _ErrContrasena_Confirma_Diferente + #13#13 +
                      'por favor, VERIFIQUE :',
                      68,
                      clRed,
                      clRed);
      Exit
    End;

  If (_CurrentLevel <> _SuperUserLevel) And
     (_CurrentLevel <> _SysAdmin) And
     (Trim(ModuloGenerales.tUsuariosNivel_Acceso.Value) = _SysAdmin) Then Exit;

  If (_CurrentLevel <> _SuperUserLevel) And
     (Trim(ModuloGenerales.tUsuariosNivel_Acceso.Value) = _SuperUserLevel) Then Exit;

  Enc_Password := Encrypt(Trim(Contrasena.Text));


  _ID   := Trim(ModuloGenerales.tUsuariosUserName.Value);

  If ModuloGenerales.tUsuarios.State In DsEditModes Then
    Begin
      ModuloGenerales.tUsuariosPassword.Value := Enc_Password;
      ModuloGenerales.tUsuarios.Post;
    End;

  If ModuloGenerales.tUsuarios.ChangeCount > 0 Then ModuloGenerales.tUsuarios.ApplyUpdates(0);
  ModuloGenerales.tUsuarios.Refresh;

  If (Sender as TAction).Name = Guardar_Registro.Name Then Nuevo_Registro.Execute;

  UpdateInfoBoard(InfoBoard,
                  'Guardado',
                  LowerCase(_Tipo_Relacion) +
                  ' guardado correctamente',
                  Guardar_Registro.ImageIndex,
                  clGreen,
                  clWindowText);
end;

procedure TfrmDatos_Usuarios.NoCursor(Sender: TObject);
begin
  _FormCursors := False;
end;

procedure TfrmDatos_Usuarios.Nuevo_RegistroExecute(Sender: TObject);
Var
  Fn    : String;
begin
  If ModuloGenerales.tUsuarios.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo_Registro.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

  ModuloGenerales.tUsuarios.CancelUpdates;
  ModuloGenerales.tUsuarios.Cancel;
  ModuloGenerales.tUsuarios.Append;

  ModuloGenerales.tUsuariosDate_Created.Value := Modulo.Enlace.AppServer.ServerDate;
  ModuloGenerales.tUsuariosStatus.Value := _stACTIVO;
  ModuloGenerales.tUsuariosNivel_Acceso.Value := 'USUARIO';
  ModuloGenerales.tUsuariosUser_Type.Value := 'General';

  Contrasena.Text := '';
  Confirmar_Contrasena.Text := '';

  AgregarFoto_Bolb(_DefaultClientImg,ModuloGenerales.tUsuariosFoto);

  If Self.Visible And _MoveFocus Then
    Begin
      Nombre_Usuario.SetFocus;
      Nombre_Usuario.Clear
    End;

  If (Sender As TAction).Name = Nuevo_Registro.Name Then
    UpdateInfoBoard(InfoBoard,
                    'Nuevo',
                    'Registro, modificación y actualización de datos de Usuario',
                    Nuevo_Registro.ImageIndex,
                    clGreen,
                    clWindowText)
end;

procedure TfrmDatos_Usuarios.PasswordEdit(Sender: TObject);
begin
  ModuloGenerales.tUsuarios.Edit;
end;

procedure TfrmDatos_Usuarios.pg_Datos_GeneralesShow(Sender: TObject);
begin
  adv_OptionPanel.Sections[0].Expanded := True;
  adv_OptionPanel.Sections[0].Node := False;
    UpdateInfoBoard(InfoBoard,
                    'Datos Generales',
                    'Registro, modificación y actualización de datos de Usuario',
                    pg_Datos_Generales.ImageIndex,
                    clGreen,
                    clWindowText)
end;

procedure TfrmDatos_Usuarios.Nombre_UsuarioExit(Sender: TObject);
  Var
    SearchResult  : Integer;
    CurrCursor    : TCursor;
    _Municipio,
    _Secuencia,
    _Verificador,
    _Search_Table ,
    _FName        ,
    _Querry       : String;
    _Validar      : Boolean;
begin
  CurrCursor := Screen.Cursor;

  If Trim(Nombre_Usuario.Text) = '' Then Exit;

  Nombre_Usuario.Text := TrimChar('-',Nombre_Usuario.Text);
  Nombre_Usuario.Text := TrimChar(#32,Nombre_Usuario.Text);
  Nombre_Usuario.Text := TrimChar('/',Nombre_Usuario.Text);

  SearchResult := ParamSearchKey(ModuloGenerales.tUsuarios,'UserName',Nombre_Usuario.Text);
  _ID := ModuloGenerales.tUsuariosUserName.Value;

  If SearchResult = _CodeNotFound Then
    Begin
      _MoveFocus := False;
      Nuevo_RegistroExecute(Nuevo_Registro);
      _MoveFocus := True;

      ModuloGenerales.tUsuariosUserName.Value := Trim(Nombre_Usuario.Text);
    End;

  If Trim(ModuloGenerales.tUsuariosPassword.Value) <> '' Then
        Contrasena.Text := UnEncrypt(ModuloGenerales.tUsuariosPassword.Value);
      Confirmar_Contrasena.Text := Contrasena.Text
end;

procedure TfrmDatos_Usuarios.Copiar1Click(Sender: TObject);
begin
  Clipboard.AsText := InfoBoard.Description;
end;

procedure TfrmDatos_Usuarios.SalirExecute(Sender: TObject);
begin
  ModuloGenerales.tUsuarios.Cancel;
  ModuloGenerales.tUsuarios.CancelUpdates;
  Close
end;

procedure TfrmDatos_Usuarios.SetCursor(Sender: TObject);
begin
  _FormCursors := True;
end;

Initialization
  RegisterClass(TfrmDatos_Usuarios);

end.
