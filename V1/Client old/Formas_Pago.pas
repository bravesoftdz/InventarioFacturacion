unit Formas_Pago;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ActnMenus, ActnList, XPStyleActnCtrls,
  ActnMan, ActnColorMaps, ToolWin, ActnCtrls, Db, Menus, Grids, Wwdbigrd,
  Wwdbgrid, wwcheckbox, AdvPageControl, ComCtrls;

type
  TFMetodos = class(TForm)
    Datos_Producto: TAdvPageControl;
    DatosGenerales: TAdvTabSheet;
    Label4: TLabel;
    Label5: TLabel;
    Descripcion: TDBEdit;
    DBEdit6: TDBEdit;
    AdvPageControl1: TAdvPageControl;
    Botones: TAdvTabSheet;
    ActionToolBar1: TActionToolBar;
    ColorConfig: TXPColorMap;
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Eliminar: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    Label3: TLabel;
    DBEdit3: TDBEdit;
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

uses DataModulo, Utilidades, SrchDlg;

{$R *.dfm}

procedure TFMetodos.FormCreate(Sender: TObject);
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
  _CanClose := Not (Modulo.tFormas_Pago.Active);
  Modulo.tFormas_Pago.Open;

  {Insertar Registro en Blanco}
  Nuevo.Execute
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
    VK_HOME    : Descripcion.SetFocus;

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

  Modulo.Mensajes.Text := _DatosGuardados;
  Modulo.Mensajes.ShowPopUp
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

  Modulo.Mensajes.Text := _DatosEliminados;
  Modulo.Mensajes.ShowPopUp
end;

end.
