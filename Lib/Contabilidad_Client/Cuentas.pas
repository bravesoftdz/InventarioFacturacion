unit Cuentas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, RegKeys;

type
  TFCuentas_Contables = class(TForm)
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Eliminar: TAction;
    Barra_Menu: TActionMainMenuBar;
    Page_Botones: TAdvPageControl;
    Botones: TAdvTabSheet;
    Atb_Botones: TActionToolBar;
    Page_Datos_Generales: TAdvPageControl;
    DatosGenerales: TAdvTabSheet;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Descripcion: TDBEdit;
    TipoCuenta: TDBRadioGroup;
    Numero: TDBEdit;
    Label4: TLabel;
    Principales: TwwDBLookupCombo;
    Label5: TLabel;
    Controles: TwwDBLookupCombo;
    Label6: TLabel;
    Secuencia: TDBEdit;
    Origen: TwwDBComboBox;
    Label11: TLabel;
    Label7: TLabel;
    Balance: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EliminarExecute(Sender: TObject);
    procedure TipoCuentaClick(Sender: TObject);
  private
    { Private declarations }
    _CanClose : Boolean;
  public
    { Public declarations }
  end;

var
  FCuentas_Contables : TFCuentas_Contables;
  Buffer     : String = '';

implementation

uses DataModuloContabilidad, Utilidades, Generales, DataModulo;

{$R *.dfm}

procedure TFCuentas_Contables.FormCreate(Sender: TObject);
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
      _CanClose := Not (ModuloContabilidad.tCuentas.Active);
      ModuloContabilidad.tCuentas.Open;
      ModuloContabilidad.tPrincipales.Open;
      ModuloContabilidad.tControles.Open;

      {Insertar Registro en Blanco}
      Nuevo.Execute
    End; {If _Load_Create}
end;

procedure TFCuentas_Contables.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {Cerrar las Tablas Requeridas}
  If _CanClose Then
    Begin
      ModuloContabilidad.tCuentas.Close;
      ModuloContabilidad.tPrincipales.Close;
      ModuloContabilidad.tControles.Close
    end;
end;

procedure TFCuentas_Contables.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFCuentas_Contables.NuevoExecute(Sender: TObject);
begin
  ModuloContabilidad.tPrincipales.Refresh;
  ModuloContabilidad.tControles.Refresh;
  If ModuloContabilidad.tCuentas.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
  ModuloContabilidad.tCuentas.Cancel;
  ModuloContabilidad.tCuentas.Append;

  TipoCuentaClick(Sender);
  If Self.Visible Then TipoCuenta.SetFocus
end;

procedure TFCuentas_Contables.GuardarExecute(Sender: TObject);
begin
  If ModuloContabilidad.tCuentas.State In DsEditModes Then
    ModuloContabilidad.tCuentas.Post;

  If ModuloContabilidad.tCuentas.ChangeCount > 0 Then
    ModuloContabilidad.tCuentas.ApplyUpdates(0);

  ModuloContabilidad.tCuentas.Refresh;

  Nuevo.Execute;

  PopUpMessage(Modulo.Mensajes,_DatosGuardados)
end;

procedure TFCuentas_Contables.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFCuentas_Contables.EliminarExecute(Sender: TObject);
begin
  If ModuloContabilidad.tCuentasSecuencia.Value >= 0 Then
    Begin
      If Application.MessageBox(PChar(_ConfirmarEliminar),
                                PChar(Eliminar.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
      ModuloContabilidad.tCuentas.Delete
    End;

  If ModuloContabilidad.tCuentas.ChangeCount > 0 Then
    ModuloContabilidad.tCuentas.ApplyUpdates(0);

  ModuloContabilidad.tCuentas.Refresh;
  Nuevo.Execute;

  PopUpMessage(Modulo.Mensajes,_DatosEliminados)
end;

procedure TFCuentas_Contables.TipoCuentaClick(Sender: TObject);
  Const
     FontColors : Array [False..True] Of Integer = (ClGray,clWindowText);
  Var
     Colors  : Array [False..True] Of Integer;
begin
  Colors[False] := Self.Color;
  Colors[True] := clWindow;
  Principales.Enabled := TipoCuenta.ItemIndex = 1;
  Principales.Color := Colors[TipoCuenta.ItemIndex = 1];
  Label4.Font.Color := FontColors[Principales.Enabled];

  Controles.Enabled := TipoCuenta.ItemIndex > 0;
  Controles.Color := Colors[TipoCuenta.ItemIndex > 0];
  Label5.Font.Color := FontColors[Controles.Enabled];

  Numero.Enabled := TipoCuenta.ItemIndex <= 1;
  Numero.Color := Colors[TipoCuenta.ItemIndex <= 1];
  Label1.Font.Color := FontColors[Numero.Enabled]
end;

Initialization
  RegisterClass(TFCuentas_Contables);

end.
