unit Categorias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, RegKeys;

type
  TFCategorias = class(TForm)
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
    Label7: TLabel;
    Panel_Botones: TAdvPageControl;
    Pg_Botones: TAdvTabSheet;
    Botones: TActionToolBar;
    Descripcion: TwwDBComboBox;
    Numero: TDBEdit;
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
  FCategorias : TFCategorias;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, SrchDlg, Generales;

{$R *.dfm}

procedure TFCategorias.FormCreate(Sender: TObject);
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
      _CanClose := Not (Modulo.tCategoria.Active);
      Modulo.tCategoria.Open;

      {Insertar Registro en Blanco}
      Nuevo.Execute
    End; {If _Load_Create}
end;

procedure TFCategorias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {Cerrar las Tablas Requeridas}
  If _CanClose Then Modulo.tCategoria.Close
end;

procedure TFCategorias.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFCategorias.NuevoExecute(Sender: TObject);
begin
  If Modulo.tCategoria.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
  Modulo.tCategoria.Cancel;
  Modulo.tCategoria.Append;

  If Self.Visible Then Descripcion.SetFocus
end;

procedure TFCategorias.GuardarExecute(Sender: TObject);
  Var
    ActualCode : Longint;
begin
  ActualCode := Modulo.tCategoriaNumero.Value;

  If Modulo.tCategoria.State In DsEditModes Then
    Modulo.tCategoria.Post;

  If Modulo.tCategoria.ChangeCount > 0 Then
    Modulo.tCategoria.ApplyUpdates(0);

  Modulo.tCategoria.Refresh;

  If ActualCode = 0  Then ActualCode := Modulo.Enlace.AppServer.LastTableCode('Categorias');

  _LastCode := ActualCode;

  Nuevo.Execute;

  PopUpMessage(Modulo.Mensajes,_DatosGuardados)
end;

procedure TFCategorias.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFCategorias.EliminarExecute(Sender: TObject);
begin
  If Modulo.tCategoriaNumero.Value > 0 Then
    Begin
      If Application.MessageBox(PChar(_ConfirmarEliminar),
                                PChar(Eliminar.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
      Modulo.tCategoria.Delete
    End;

  If Modulo.tCategoria.ChangeCount > 0 Then
    Modulo.tCategoria.ApplyUpdates(0);

  Modulo.tCategoria.Refresh;
  Nuevo.Execute;

  PopUpMessage(Modulo.Mensajes,_DatosEliminados)
end;

procedure TFCategorias.BuscarExecute(Sender: TObject);
begin
    Try
      Application.CreateForm(TDlgSearch,DlgSearch);
      DlgSearch.OpenDlg('Categorias',Modulo.tCategoriaDescripcion.FieldName,'A',wsNormal);
      If DlgSearch.ModalResult = MrOk Then
        Begin
          Modulo.tCategoria.Cancel;
          Modulo.tCategoria.Locate(Modulo.tCategoriaNumero.FieldName,
                                   DlgSearch.SrchCds.FieldByName('Numero').AsInteger,
                                   []);
        End
    Finally
      DlgSearch.CloseDlg
    End {Try}
end;

Initialization
  RegisterClass(TFCategorias);

end.
