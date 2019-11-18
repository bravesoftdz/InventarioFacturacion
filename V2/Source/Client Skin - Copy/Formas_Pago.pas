unit Formas_Pago;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ActnMenus, ActnList, XPStyleActnCtrls,
  ActnMan, ToolWin, ActnCtrls, Db, Menus, Grids, Wwdbigrd,
  Wwdbgrid, wwcheckbox, AdvPageControl, ComCtrls, RegKeys, IniFiles;

type
  TFMetodos = class(TForm)
    Panel_Datos_Generales: TAdvPageControl;
    Pg_Datos_Generales: TAdvTabSheet;
    Label4: TLabel;
    Label5: TLabel;
    Descripcion: TDBEdit;
    Numero: TDBEdit;
    Panel_Botones: TAdvPageControl;
    Pg_Botones: TAdvTabSheet;
    Botones: TActionToolBar;
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Eliminar: TAction;
    Barra_Menu: TActionMainMenuBar;
    Label3: TLabel;
    Tasa: TDBEdit;
    EsEfectivo: TDBCheckBox;
    ReqAprobacion: TDBCheckBox;
    ReqDocumento: TDBCheckBox;
    ReqVencimiento: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ReqDocumentoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GuardarExecute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure EliminarExecute(Sender: TObject);
  private
    { Private declarations }
    _CanClose : Boolean;
  public
    { Public declarations }
  end;

var
  FMetodos: TFMetodos;

implementation

uses DataModulo, Utilidades, SrchDlg, Generales;

{$R *.dfm}

procedure TFMetodos.FormCreate(Sender: TObject);
  Var
    I : Integer;
    HintIni    : tInifile;

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
             (Self.Components[I] As TAdvPageControl).TabBackGroundColor := Color
        End;

      {Abrir los Datasets Requeridos por esta pantalla}
      _CanClose := Not (Modulo.tFormas_Pago.Active);
      Modulo.tFormas_Pago.Open;

      {Insertar Registro en Blanco}
      Nuevo.Execute
    End
end;

procedure TFMetodos.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFMetodos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {Cerrar las Tablas Requeridas}
  If _CanClose Then Modulo.tFormas_Pago.Close
end;

procedure TFMetodos.ReqDocumentoClick(Sender: TObject);
begin
  ReqVencimiento.Enabled := ReqDocumento.Checked;
  If Not ReqDocumento.Checked Then ReqVencimiento.Checked := False
end;

procedure TFMetodos.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFMetodos.GuardarExecute(Sender: TObject);
begin
  If Modulo.tFormas_Pago.State In DsEditModes Then
    Modulo.tFormas_Pago.Post;

  If Modulo.tFormas_Pago.ChangeCount > 0 Then
    Modulo.tFormas_Pago.ApplyUpdates(0);

  Modulo.tFormas_Pago.Refresh;

  Nuevo.Execute;

  PopUpMessage(Modulo.Mensajes,_DatosGuardados)
end;

procedure TFMetodos.NuevoExecute(Sender: TObject);
begin
  If Modulo.tFormas_Pago.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
  Modulo.tFormas_Pago.Cancel;
  Modulo.tFormas_Pago.Append;

  If Self.Visible Then Descripcion.SetFocus
end;

procedure TFMetodos.BuscarExecute(Sender: TObject);
begin
    Try
      Application.CreateForm(TDlgSearch,DlgSearch);
      DlgSearch.OpenDlg('Formas_Pago',Modulo.tFormas_PagoDescripcion.FieldName,'A',wsNormal);
      If DlgSearch.ModalResult = MrOk Then
        Begin
          Modulo.tFormas_Pago.Cancel;
          Modulo.tFormas_Pago.Locate(Modulo.tFormas_PagoNumero.FieldName,
                                   DlgSearch.SrchCds.FieldByName('Numero').AsInteger,
                                   []);
        End
    Finally
      DlgSearch.CloseDlg
    End {Try}
end;

procedure TFMetodos.EliminarExecute(Sender: TObject);
begin
  If Modulo.tFormas_PagoNumero.Value >= 0 Then
    Begin
      If Application.MessageBox(PChar(_ConfirmarEliminar),
                                PChar(Eliminar.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
      Modulo.tFormas_Pago.Delete
    End;

  If Modulo.tFormas_Pago.ChangeCount > 0 Then
    Modulo.tFormas_Pago.ApplyUpdates(0);

  Modulo.tFormas_Pago.Refresh;
  Nuevo.Execute;

  PopUpMessage(Modulo.Mensajes,_DatosEliminados)
end;

Initialization
  RegisterClass(TFMetodos);

end.
