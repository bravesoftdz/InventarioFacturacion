unit Terminos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, RegKeys;

type
  TFTerminos = class(TForm)
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Eliminar: TAction;
    Barra_Menu: TActionMainMenuBar;
    Panel_Botones: TAdvPageControl;
    Pg_Botones: TAdvTabSheet;
    Botones: TActionToolBar;
    Panel_Datos_Generales: TAdvPageControl;
    Pg_Datos_Generales: TAdvTabSheet;
    Label2: TLabel;
    LDias: TLabel;
    Label6: TLabel;
    Lfinal: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Descripcion: TDBEdit;
    Vence: TDBEdit;
    Despues_de: TDBEdit;
    TipoVencimiento: TDBRadioGroup;
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
    procedure TipoVencimientoClick(Sender: TObject);
  private
    { Private declarations }
    _CanClose : Boolean;
  public
    { Public declarations }
  end;

var
  FTerminos : TFTerminos;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, SrchDlg, Generales;

{$R *.dfm}

procedure TFTerminos.FormCreate(Sender: TObject);
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
      _CanClose := Not (Modulo.tTerminos.Active);
      Modulo.tTerminos.Open;

      {Insertar Registro en Blanco}
      Nuevo.Execute
    End
    {If _Load_Create}
end;

procedure TFTerminos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {Cerrar las Tablas Requeridas}
  If _CanClose Then Modulo.tTerminos.Close
end;

procedure TFTerminos.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFTerminos.NuevoExecute(Sender: TObject);
begin
  If Modulo.tTerminos.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
  Modulo.tTerminos.Cancel;
  Modulo.tTerminos.Append;

  TipoVencimientoClick(Sender);
  If Self.Visible Then Descripcion.SetFocus
end;

procedure TFTerminos.GuardarExecute(Sender: TObject);
begin
  If Modulo.tTerminos.State In DsEditModes Then
    Modulo.tTerminos.Post;

  If Modulo.tTerminos.ChangeCount > 0 Then
    Modulo.tTerminos.ApplyUpdates(0);

  Modulo.tTerminos.Refresh;

  Nuevo.Execute;

  PopUpMessage(Modulo.Mensajes,_DatosGuardados)
end;

procedure TFTerminos.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFTerminos.EliminarExecute(Sender: TObject);
begin
  If Modulo.tTerminosNumero_Termino.Value >= 0 Then
    Begin
      If Application.MessageBox(PChar(_ConfirmarEliminar),
                                PChar(Eliminar.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
      Modulo.tTerminos.Delete
    End;

  If Modulo.tTerminos.ChangeCount > 0 Then
    Modulo.tTerminos.ApplyUpdates(0);

  Modulo.tTerminos.Refresh;
  Nuevo.Execute;

  PopUpMessage(Modulo.Mensajes,_DatosEliminados)
end;

procedure TFTerminos.BuscarExecute(Sender: TObject);
begin
    Try
      Application.CreateForm(TDlgSearch,DlgSearch);
      DlgSearch.OpenDlg('Terminos',Modulo.tTerminosDescripcion.FieldName,'A',wsNormal);
      If DlgSearch.ModalResult = MrOk Then
        Begin
          Modulo.tTerminos.Cancel;
          Modulo.tTerminos.Locate(Modulo.tTerminosNumero_Termino.FieldName,
                                   DlgSearch.SrchCds.FieldByName('Numero_Termino').AsInteger,
                                   []);
        End
    Finally
      DlgSearch.CloseDlg
    End {Try}
end;

procedure TFTerminos.TipoVencimientoClick(Sender: TObject);
  Const
     Labels1    : Array [False..True] Of String = ('Vence en','Vence los');
     Labels2    : Array [False..True] Of String = ('Días','De cada mes');
     FontColors : Array [False..True] Of Integer = (ClGray,clWindowText);
  Var
     Colors  : Array [False..True] Of Integer;
begin
  Colors[False] := Self.Color;
  Colors[True] := clWindow;
  LDias.Caption := Labels1[TipoVencimiento.ItemIndex > 0];
  Lfinal.Caption := Labels2[TipoVencimiento.ItemIndex > 0];
  Despues_de.Enabled := TipoVencimiento.ItemIndex > 0;
  Despues_de.Color := Colors[TipoVencimiento.ItemIndex > 0];
  Label6.Font.Color := FontColors[TipoVencimiento.ItemIndex > 0];
  Label9.Font.Color := FontColors[TipoVencimiento.ItemIndex > 0];
end;

Initialization
  RegisterClass(TFTerminos);

end.
