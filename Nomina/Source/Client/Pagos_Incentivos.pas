unit Pagos_Incentivos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ActnColorMaps, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker;

type
  TFPagos_Incentivos = class(TForm)
    ColorConfig: TXPColorMap;
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
    Descripcion: TwwDBComboBox;
    Codigo: TDBEdit;
    Panel_Botones: TAdvPageControl;
    Pg_Botones: TAdvTabSheet;
    Botones: TActionToolBar;
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
  FPagos_Incentivos : TFPagos_Incentivos;
  Buffer     : String = '';

implementation

uses DataNomina, Utilidades, DataModulo, RegKeys, Generales;

{$R *.dfm}

procedure TFPagos_Incentivos.FormCreate(Sender: TObject);
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
      _CanClose := Not (ModuloNomina.tPagos_Incentivos.Active);
      ModuloNomina.tPagos_Incentivos.Open;

      {Insertar Registro en Blanco}
      Nuevo.Execute

     End
    {If _Load_Create}
end;

procedure TFPagos_Incentivos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If ModuloNomina.tPagos_Incentivos.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Salir.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then SysUtils.Abort;

  {Cerrar las Tablas Requeridas}
  If _CanClose Then ModuloNomina.tPagos_Incentivos.Close
end;

procedure TFPagos_Incentivos.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFPagos_Incentivos.NuevoExecute(Sender: TObject);
begin
  If ModuloNomina.tPagos_Incentivos.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
  ModuloNomina.tPagos_Incentivos.Cancel;
  ModuloNomina.tPagos_Incentivos.Append;

  If Self.Visible Then Descripcion.SetFocus
end;

procedure TFPagos_Incentivos.GuardarExecute(Sender: TObject);
begin
  If ModuloNomina.tPagos_Incentivos.State In DsEditModes Then
    ModuloNomina.tPagos_Incentivos.Post;

  If ModuloNomina.tPagos_Incentivos.ChangeCount > 0 Then
    ModuloNomina.tPagos_Incentivos.ApplyUpdates(0);

  ModuloNomina.tPagos_Incentivos.Refresh;

  Nuevo.Execute;

  PopupMessage(Modulo.Mensajes,_DatosGuardados)
end;

procedure TFPagos_Incentivos.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFPagos_Incentivos.EliminarExecute(Sender: TObject);
begin
  If ModuloNomina.tPagos_IncentivosNumero.Value > 0 Then
    Begin
      If Application.MessageBox(PChar(_ConfirmarEliminar),
                                PChar(Eliminar.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
      ModuloNomina.tPagos_Incentivos.Delete
    End;

  If ModuloNomina.tPagos_Incentivos.ChangeCount > 0 Then
    ModuloNomina.tPagos_Incentivos.ApplyUpdates(0);

  ModuloNomina.tPagos_Incentivos.Refresh;
  Nuevo.Execute;

  PopupMessage(Modulo.Mensajes,_DatosEliminados)
end;

procedure TFPagos_Incentivos.AplicableChange(Sender: TObject);
  Const
    LabelsDesde : Array [-1..3] Of String [20] = ('-','Desde','Mayor de','Menor De','No Aplicable');
    LabelsHasta : Array [-1..3] Of String [20] = ('-','Hasta','No Aplicable','No Aplicable','No Aplicable');
begin
  LDesde.Caption := LabelsDesde[Aplicable.ItemIndex];
  LHasta.Caption := LabelsHasta[Aplicable.ItemIndex];

  Desde.Enabled := Aplicable.ItemIndex < 3;
  Hasta.Enabled := Aplicable.ItemIndex < 1;

end;

procedure TFPagos_Incentivos.BuscarExecute(Sender: TObject);
  Var
    R : Integer;
    S : Integer;
begin
  S := DoSearch(Nil,
                'Pagos_Incentivos',                                          (* TableName *)
                'SrchPr',                                         (* Provider *)
                ModuloNomina.tPagos_IncentivosNumero.FieldName, (* CampoClave *)
                ModuloNomina.tPagos_IncentivosDescripcion.FieldName,      (* CampoInicial *)
                '',      (* AltQry *)
                ModuloNomina.Enlace,                                   (* RemoteServer *)
                'A',                                                              (* SortOrder *)
                -1,                                                               (* Packet Records *)
                wsMaximized,
                R);
  If R = MrOk Then
    Begin
      ModuloNomina.tPagos_Incentivos.Cancel;
      ModuloNomina.tPagos_Incentivos.Locate(ModuloNomina.tPagos_IncentivosNumero.FieldName,
                            S,
                            []);

    End
end;

Initialization
  RegisterClass(TFPagos_Incentivos);

  end.
