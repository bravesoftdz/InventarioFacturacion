unit Deducciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ActnColorMaps, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker;

type
  TFDeducciones = class(TForm)
    ColorConfig: TXPColorMap;
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Eliminar: TAction;
    Barra_Menu: TActionMainMenuBar;
    Datos_Generales: TAdvPageControl;
    DatosGenerales: TAdvTabSheet;
    Label1: TLabel;
    Descripcion: TwwDBComboBox;
    Codigo: TDBEdit;
    Label2: TLabel;
    LDesde: TLabel;
    LHasta: TLabel;
    Label3: TLabel;
    Tipos: TDBRadioGroup;
    Label4: TLabel;
    Aplicable: TwwDBComboBox;
    Desde: TDBEdit;
    Hasta: TDBEdit;
    Label7: TLabel;
    Monto: TDBEdit;
    Entrada_Vigencia: TwwDBDateTimePicker;
    Label8: TLabel;
    Label9: TLabel;
    Deducir_de: TDBRadioGroup;
    Panel_Botones: TAdvPageControl;
    Pg_Botones: TAdvTabSheet;
    Botones: TActionToolBar;
    procedure AplicableChange(Sender: TObject);
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
  FDeducciones : TFDeducciones;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, DataNomina, RegKeys, Generales;

{$R *.dfm}

procedure TFDeducciones.FormCreate(Sender: TObject);
  Var
    I : Integer;
begin
  If _Load_Create Then
    Begin
      {Configuracion de la Pantalla}
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
      ColorConfig.Color := Color - 5;

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
      _CanClose := Not (ModuloNomina.tDeducciones.Active);
      ModuloNomina.tDeducciones.Open;

      {Insertar Registro en Blanco}
      Nuevo.Execute
    End; {If _Load_Create}
end;

procedure TFDeducciones.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If ModuloNomina.tDeducciones.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Salir.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then SysUtils.Abort;

  {Cerrar las Tablas Requeridas}
  If _CanClose Then ModuloNomina.tDeducciones.Close
end;

procedure TFDeducciones.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFDeducciones.NuevoExecute(Sender: TObject);
begin
  If ModuloNomina.tDeducciones.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
  ModuloNomina.tDeducciones.Cancel;
  ModuloNomina.tDeducciones.Append;

  If Self.Visible Then Descripcion.SetFocus
end;

procedure TFDeducciones.GuardarExecute(Sender: TObject);
begin
  If ModuloNomina.tDeducciones.State In DsEditModes Then
    ModuloNomina.tDeducciones.Post;

  If ModuloNomina.tDeducciones.ChangeCount > 0 Then
    ModuloNomina.tDeducciones.ApplyUpdates(0);

  ModuloNomina.tDeducciones.Refresh;

  Nuevo.Execute;

  PopupMessage(Modulo.Mensajes,_DatosGuardados)
end;

procedure TFDeducciones.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFDeducciones.EliminarExecute(Sender: TObject);
begin
  If ModuloNomina.tDeduccionesNumero.Value > 0 Then
    Begin
      If Application.MessageBox(PChar(_ConfirmarEliminar),
                                PChar(Eliminar.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
      ModuloNomina.tDeducciones.Delete
    End;

  If ModuloNomina.tDeducciones.ChangeCount > 0 Then
    ModuloNomina.tDeducciones.ApplyUpdates(0);

  ModuloNomina.tDeducciones.Refresh;
  Nuevo.Execute;

  PopupMessage(Modulo.Mensajes,_DatosEliminados)
end;

procedure TFDeducciones.AplicableChange(Sender: TObject);
  Const
    LabelsDesde : Array [-1..3] Of String [20] = ('-','Desde','Mayor de','Menor De','No Aplicable');
    LabelsHasta : Array [-1..3] Of String [20] = ('-','Hasta','No Aplicable','No Aplicable','No Aplicable');
begin
  LDesde.Caption := LabelsDesde[Aplicable.ItemIndex];
  LHasta.Caption := LabelsHasta[Aplicable.ItemIndex];

  Desde.Enabled := Aplicable.ItemIndex < 3;
  Hasta.Enabled := Aplicable.ItemIndex < 1;

end;

procedure TFDeducciones.BuscarExecute(Sender: TObject);
  Var
    R : Integer;
    S : Integer;
begin
  S := DoSearch(Nil,
                'Deducciones',                                          (* TableName *)
                'SrchPr',                                         (* Provider *)
                ModuloNomina.tDeduccionesNumero.FieldName, (* CampoClave *)
                ModuloNomina.tDeduccionesDescripcion.FieldName,      (* CampoInicial *)
                '',      (* AltQry *)
                ModuloNomina.Enlace,                                   (* RemoteServer *)
                'A',                                                              (* SortOrder *)
                -1,                                                               (* Packet Records *)
                wsMaximized,
                R);
  If R = MrOk Then
    Begin
      ModuloNomina.tDeducciones.Cancel;
      ModuloNomina.tDeducciones.Locate(ModuloNomina.tDeduccionesNumero.FieldName,
                            S,
                            []);

    End
end;

Initialization
  RegisterClass(TFDeducciones);

end.
