unit Fabricantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ActnColorMaps, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, MSNPopUp, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, OoMisc, AdPort;

type
  TFFabricantes = class(TForm)
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
    Descripcion: TwwDBComboBox;
    Codigo: TDBEdit;
    AdvPageControl1: TAdvPageControl;
    Botones: TAdvTabSheet;
    ActionToolBar1: TActionToolBar;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    wwDBComboBox1: TwwDBComboBox;
    wwDBComboBox2: TwwDBComboBox;
    wwDBComboBox3: TwwDBComboBox;
    wwDBComboBox4: TwwDBComboBox;
    wwDBComboBox5: TwwDBComboBox;
    wwDBComboBox6: TwwDBComboBox;
    wwDBComboBox7: TwwDBComboBox;
    wwDBComboBox8: TwwDBComboBox;
    Fecha: TwwDBDateTimePicker;
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
  FFabricantes : TFFabricantes;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, SrchDlg;

{$R *.dfm}

procedure TFFabricantes.FormCreate(Sender: TObject);
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
      If (Self.Components[I] Is TAdvPageControl) Then
         (Self.Components[I] As TAdvPageControl).TabBackGroundColor := Color;
    End;

  {Abrir los Datasets Requeridos por esta pantalla}
  _CanClose := Not (Modulo.tFabricante.Active);
  Modulo.tFabricante.Open;

  {Insertar Registro en Blanco}
  Nuevo.Execute
end;

procedure TFFabricantes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {Cerrar las Tablas Requeridas}
  If _CanClose Then Modulo.tFabricante.Close
end;

procedure TFFabricantes.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFFabricantes.NuevoExecute(Sender: TObject);
begin
  If Modulo.tFabricante.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
  Modulo.tFabricante.Cancel;
  Modulo.tFabricante.Append;

  If Self.Visible Then Descripcion.SetFocus
end;

procedure TFFabricantes.GuardarExecute(Sender: TObject);
  Var
    ActualCode : Longint;
begin
  ActualCode := Modulo.tFabricanteNumero.Value;

  If Modulo.tFabricante.State In DsEditModes Then
    Modulo.tFabricante.Post;

  If Modulo.tFabricante.ChangeCount > 0 Then
    Modulo.tFabricante.ApplyUpdates(0);

  Modulo.tFabricante.Refresh;

  If ActualCode = 0  Then ActualCode := Modulo.Enlace.AppServer.LastTableCode('Fabricantes');

  _LastCode := ActualCode;

  Nuevo.Execute;

  Modulo.Mensajes.Text := _DatosGuardados;
  Modulo.Mensajes.ShowPopUp
end;

procedure TFFabricantes.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFFabricantes.EliminarExecute(Sender: TObject);
begin
  If Modulo.tFabricanteNumero.Value > 0 Then
    Begin
      If Application.MessageBox(PChar(_ConfirmarEliminar),
                                PChar(Eliminar.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
      Modulo.tFabricante.Delete
    End;

  If Modulo.tFabricante.ChangeCount > 0 Then
    Modulo.tFabricante.ApplyUpdates(0);

  Modulo.tFabricante.Refresh;
  Nuevo.Execute;

  Modulo.Mensajes.Text := _DatosEliminados;
  Modulo.Mensajes.ShowPopUp
end;

procedure TFFabricantes.BuscarExecute(Sender: TObject);
begin
    Try
      Application.CreateForm(TDlgSearch,DlgSearch);
      DlgSearch.OpenDlg('Fabricantes',Modulo.tFabricanteNombre.FieldName,'A',wsNormal);
      If DlgSearch.ModalResult = MrOk Then
        Begin
          Modulo.tFabricante.Cancel;
          Modulo.tFabricante.Locate(Modulo.tFabricanteNumero.FieldName,
                                   DlgSearch.SrchCds.FieldByName('Numero').AsInteger,
                                   []);
        End
    Finally
      DlgSearch.CloseDlg
    End {Try}
end;

end.
