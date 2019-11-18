unit Bancos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ActnColorMaps, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, MSNPopUp, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, OoMisc, AdPort;

type
  TFBancos = class(TForm)
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
    Descripcion: TwwDBComboBox;
    Codigo: TDBEdit;
    AdvPageControl1: TAdvPageControl;
    Botones: TAdvTabSheet;
    ActionToolBar1: TActionToolBar;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    wwDBComboBox3: TwwDBComboBox;
    wwDBComboBox4: TwwDBComboBox;
    wwDBComboBox5: TwwDBComboBox;
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

uses DataModulo, Utilidades, SrchDlg;

{$R *.dfm}

procedure TFBancos.FormCreate(Sender: TObject);
  Var
    I : Integer;
begin
  {Configuracion de la Pantalla}
  Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
  ColorConfig.Color := Color - 5;

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
end;

procedure TFBancos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
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

  If Self.Visible Then Descripcion.SetFocus
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

  Modulo.Mensajes.Text := _DatosGuardados;
  Modulo.Mensajes.ShowPopUp
end;

procedure TFBancos.FormKeyDown(Sender: TObject; var Key: Word;
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

  Modulo.Mensajes.Text := _DatosEliminados;
  Modulo.Mensajes.ShowPopUp
end;

procedure TFBancos.BuscarExecute(Sender: TObject);
begin
    Try
      Application.CreateForm(TDlgSearch,DlgSearch);
      DlgSearch.OpenDlg('Bancos',Modulo.tBancosNombre.FieldName,'A',wsNormal);
      If DlgSearch.ModalResult = MrOk Then
        Begin
          Modulo.tBancos.Cancel;
          Modulo.tBancos.Locate(Modulo.tBancosNumero.FieldName,
                                   DlgSearch.SrchCds.FieldByName('Numero').AsInteger,
                                   []);
        End
    Finally
      DlgSearch.CloseDlg
    End {Try}
end;

end.
