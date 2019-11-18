unit Proveedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ActnColorMaps, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, MSNPopUp, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, OoMisc, AdPort;

type
  TFProveedores = class(TForm)
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
    Label7: TLabel;
    Label13: TLabel;
    DBEdit2: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit5: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit7: TDBEdit;
    Label19: TLabel;
    DBEdit8: TDBEdit;
    Label20: TLabel;
    DBEdit9: TDBEdit;
    wwDBComboBox9: TwwDBComboBox;
    wwDBComboBox10: TwwDBComboBox;
    wwDBComboBox11: TwwDBComboBox;
    wwDBComboBox12: TwwDBComboBox;
    wwDBComboBox13: TwwDBComboBox;
    DBEdit21: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit15: TDBEdit;
    wwDBComboBox14: TwwDBComboBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBEdit10: TDBEdit;
    Label21: TLabel;
    wwDBComboBox15: TwwDBComboBox;
    TipoProducto: TwwDBLookupCombo;
    SpeedButton1: TSpeedButton;
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Eliminar: TAction;
    Anadir_Terminos: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EliminarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure Anadir_TerminosExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    _CanClose         : Boolean;
    _CanCloseTerminos : Boolean;
  public
    { Public declarations }
  end;

var
  FProveedores : TFProveedores;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, SrchDlg, Terminos;

{$R *.dfm}

procedure TFProveedores.FormCreate(Sender: TObject);
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
  _CanClose := Not (Modulo.tProveedores.Active);
  _CanCloseTerminos := Not (Modulo.tTerminos.Active);
  Modulo.tTerminos.Open;
  Modulo.tProveedores.Open;

  {Insertar Registro en Blanco}
  Nuevo.Execute
end;

procedure TFProveedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {Cerrar las Tablas Requeridas}
  If _CanClose Then Modulo.tProveedores.Close;
  If _CanCloseTerminos Then Modulo.tTerminos.Close
end;

procedure TFProveedores.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFProveedores.NuevoExecute(Sender: TObject);
begin
  If Modulo.tProveedores.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
  Modulo.tProveedores.Cancel;
  Modulo.tProveedores.Append;

  If Self.Visible Then Descripcion.SetFocus
end;

procedure TFProveedores.GuardarExecute(Sender: TObject);
  Var
    ActualCode : Longint;
begin
  ActualCode := Modulo.tProveedoresNumero.Value;

  If Modulo.tProveedores.State In DsEditModes Then
    Modulo.tProveedores.Post;

  If Modulo.tProveedores.ChangeCount > 0 Then
    Modulo.tProveedores.ApplyUpdates(0);

  If ActualCode = 0  Then ActualCode := Modulo.Enlace.AppServer.LastTableCode('Proveedores');

  _LastCode := ActualCode;

  Modulo.tProveedores.Refresh;

  Nuevo.Execute;

  Modulo.Mensajes.Text := _DatosGuardados;
  Modulo.Mensajes.ShowPopUp
end;

procedure TFProveedores.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFProveedores.EliminarExecute(Sender: TObject);
begin
  If Modulo.tProveedoresNumero.Value > 0 Then
    Begin
      If Application.MessageBox(PChar(_ConfirmarEliminar),
                                PChar(Eliminar.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
      Modulo.tProveedores.Delete
    End;

  If Modulo.tProveedores.ChangeCount > 0 Then
    Modulo.tProveedores.ApplyUpdates(0);

  Modulo.tProveedores.Refresh;
  Nuevo.Execute;

  Modulo.Mensajes.Text := _DatosEliminados;
  Modulo.Mensajes.ShowPopUp
end;

procedure TFProveedores.BuscarExecute(Sender: TObject);
begin
    Try
      Application.CreateForm(TDlgSearch,DlgSearch);
      DlgSearch.OpenDlg('Proveedores',Modulo.tProveedoresNombre.FieldName,'A',wsNormal);
      If DlgSearch.ModalResult = MrOk Then
        Begin
          Modulo.tProveedores.Cancel;
          Modulo.tProveedores.Locate(Modulo.tProveedoresNumero.FieldName,
                                   DlgSearch.SrchCds.FieldByName('Numero').AsInteger,
                                   []);
        End
    Finally
      DlgSearch.CloseDlg
    End {Try}
end;

procedure TFProveedores.Anadir_TerminosExecute(Sender: TObject);
begin
  OpenForm(TFTerminos,FTerminos)
end;

procedure TFProveedores.SpeedButton1Click(Sender: TObject);
begin
  Anadir_Terminos.Execute
end;

end.
