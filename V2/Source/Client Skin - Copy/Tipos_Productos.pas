unit Tipos_Productos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, RegKeys;

type
  TFTipos_Productos = class(TForm)
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
    Codigo: TDBEdit;
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
  FTipos_Productos : TFTipos_Productos;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, SrchDlg, Generales;

{$R *.dfm}

procedure TFTipos_Productos.FormCreate(Sender: TObject);
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
      _CanClose := Not (Modulo.tTipos_Productos.Active);
      Modulo.tTipos_Productos.Open;

      {Insertar Registro en Blanco}
      Nuevo.Execute
    End
    {If _Load_Create}
end;

procedure TFTipos_Productos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {Cerrar las Tablas Requeridas}
  If _CanClose Then Modulo.tTipos_Productos.Close
end;

procedure TFTipos_Productos.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFTipos_Productos.NuevoExecute(Sender: TObject);
begin
  If Modulo.tTipos_Productos.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
  Modulo.tTipos_Productos.Cancel;
  Modulo.tTipos_Productos.Append;

  If Self.Visible Then Descripcion.SetFocus
end;

procedure TFTipos_Productos.GuardarExecute(Sender: TObject);
  Var
    ActualCode : Longint;
begin
  ActualCode := Modulo.tTipos_ProductosNumero.Value;

  If Modulo.tTipos_Productos.State In DsEditModes Then
    Modulo.tTipos_Productos.Post;

  If Modulo.tTipos_Productos.ChangeCount > 0 Then
    Modulo.tTipos_Productos.ApplyUpdates(0);

  Modulo.tTipos_Productos.Refresh;

  If ActualCode = 0  Then ActualCode := Modulo.Enlace.AppServer.LastTableCode('Tipos_Productos');

  _LastCode := ActualCode;

  Nuevo.Execute;

  PopUpMessage(Modulo.Mensajes,_DatosGuardados)
end;

procedure TFTipos_Productos.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFTipos_Productos.EliminarExecute(Sender: TObject);
begin
  If Modulo.tTipos_ProductosNumero.Value > 0 Then
    Begin
      If Application.MessageBox(PChar(_ConfirmarEliminar),
                                PChar(Eliminar.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
      Modulo.tTipos_Productos.Delete
    End;

  If Modulo.tTipos_Productos.ChangeCount > 0 Then
    Modulo.tTipos_Productos.ApplyUpdates(0);

  Modulo.tTipos_Productos.Refresh;
  Nuevo.Execute;

  PopUpMessage(Modulo.Mensajes,_DatosEliminados)
end;

procedure TFTipos_Productos.BuscarExecute(Sender: TObject);
begin
    Try
      Application.CreateForm(TDlgSearch,DlgSearch);
      DlgSearch.OpenDlg('Tipos_Productos',Modulo.tTipos_ProductosDescripcion.FieldName,'A',wsNormal);
      If DlgSearch.ModalResult = MrOk Then
        Begin
          Modulo.tTipos_Productos.Cancel;
          Modulo.tTipos_Productos.Locate(Modulo.tTipos_ProductosNumero.FieldName,
                                   DlgSearch.SrchCds.FieldByName('Numero').AsInteger,
                                   []);
        End
    Finally
      DlgSearch.CloseDlg
    End {Try}
end;

Initialization
  RegisterClass(TFTipos_Productos);

end.
