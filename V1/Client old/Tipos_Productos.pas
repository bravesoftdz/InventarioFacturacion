unit Tipos_Productos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ActnColorMaps, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, MSNPopUp, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, OoMisc, AdPort;

type
  TFTipos_Productos = class(TForm)
    ColorConfig: TXPColorMap;
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

uses DataModulo, Utilidades, SrchDlg;

{$R *.dfm}

procedure TFTipos_Productos.FormCreate(Sender: TObject);
  Var
    I : Integer;
begin
  {Configuracion de la Pantalla}
  Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
  ColorConfig.Color := Color - 5;

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

  Modulo.Mensajes.Text := _DatosGuardados;
  Modulo.Mensajes.ShowPopUp
end;

procedure TFTipos_Productos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  Found : TWinControl;
begin
  Case Key Of
    VK_HOME    : Codigo.SetFocus;

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

  Modulo.Mensajes.Text := _DatosEliminados;
  Modulo.Mensajes.ShowPopUp
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

end.
