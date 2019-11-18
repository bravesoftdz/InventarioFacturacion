unit Grupos_Nomina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ActnColorMaps, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, Grids, Wwdbigrd, Wwdbgrid;

type
  TFGrupos_Nomina = class(TForm)
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
    Atb_Editar: TActionToolBar;
    Detalle_Grupo: TwwDBGrid;
    Agregar_Detalle_Grupo: TAction;
    Eliminar_Detalle_Grupo: TAction;
    Panel_Botones: TAdvPageControl;
    Pg_Botones: TAdvTabSheet;
    Botones: TActionToolBar;
    procedure Eliminar_Detalle_GrupoExecute(Sender: TObject);
    procedure Detalle_GrupoCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure Agregar_Detalle_GrupoExecute(Sender: TObject);
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
  FGrupos_Nomina : TFGrupos_Nomina;
  Buffer     : String = '';

implementation

uses DataNomina, Utilidades, Tipo_Detalle_Grupo, DataModulo, RegKeys;

{$R *.dfm}

procedure TFGrupos_Nomina.FormCreate(Sender: TObject);
  Var
    I : Integer;
begin
  If _Load_Create Then
    Begin
      {Configuracion de la Pantalla}
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
  
      {Activar Los Permisos del Usuario}
     // ActivateOptions(Sender,_CurrentLevel,ModuloNomina.tAccesos);
  
      {Asigna a los Botones Los ShortCuts Del Menu y Action Lists}
      For I := 0 To (Self.ComponentCount - 1) Do
        Begin
          If (Self.Components[I] Is TAdvPageControl) Then
             (Self.Components[I] As TAdvPageControl).TabBackGroundColor := Color;
        End;
  
      {Abrir los Datasets Requeridos por esta pantalla}
      _CanClose := Not (ModuloNomina.tGrupo_Nomina.Active);
      ModuloNomina.tGrupo_Nomina.Open;
  
      {Insertar Registro en Blanco}
      Nuevo.Execute
    End; {If _Load_Create}
end;

procedure TFGrupos_Nomina.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If ModuloNomina.tGrupo_Nomina.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Salir.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then SysUtils.Abort;

  {Cerrar las Tablas Requeridas}
  If _CanClose Then ModuloNomina.tGrupo_Nomina.Close
end;

procedure TFGrupos_Nomina.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFGrupos_Nomina.NuevoExecute(Sender: TObject);
begin
  If ModuloNomina.tGrupo_Nomina.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
  ModuloNomina.tGrupo_Nomina.Cancel;
  ModuloNomina.tGrupo_Nomina.Append;

  ModuloNomina.tGrupo_NominaProceso.Value := Gen_ProcessNumber(_CurrentUser);
  ModuloNomina.tGrupo_Nomina.Params.ParamByName('Proceso').AsString := ModuloNomina.tGrupo_NominaProceso.Value;

  If Self.Visible Then Descripcion.SetFocus
end;

procedure TFGrupos_Nomina.GuardarExecute(Sender: TObject);
begin
  If ModuloNomina.tGrupo_Nomina.State In DsEditModes Then
    ModuloNomina.tGrupo_Nomina.Post;

  If ModuloNomina.tGrupo_Nomina.ChangeCount > 0 Then
    ModuloNomina.tGrupo_Nomina.ApplyUpdates(0);

  ModuloNomina.tGrupo_Nomina.Refresh;

  Nuevo.Execute;

  PopupMessage(Modulo.Mensajes,_DatosGuardados)
end;

procedure TFGrupos_Nomina.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFGrupos_Nomina.EliminarExecute(Sender: TObject);
begin
  If ModuloNomina.tGrupo_NominaNumero.Value > 0 Then
    Begin
      If Application.MessageBox(PChar(_ConfirmarEliminar),
                                PChar(Eliminar.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
      ModuloNomina.tGrupo_Nomina.Delete
    End;

  If ModuloNomina.tGrupo_Nomina.ChangeCount > 0 Then
    ModuloNomina.tGrupo_Nomina.ApplyUpdates(0);

  ModuloNomina.tGrupo_Nomina.Refresh;
  Nuevo.Execute;

  PopupMessage(Modulo.Mensajes,_DatosEliminados)
end;

procedure TFGrupos_Nomina.Eliminar_Detalle_GrupoExecute(Sender: TObject);
begin
  If Application.MessageBox(PChar(_ConfirmarEliminar + #13 +
                                  ModuloNomina.tDetalle_Grupo_NominaTipo.Value + ' : ' +
                                  ModuloNomina.tDetalle_Grupo_NominaDescripcion.Value),
                            PChar(Eliminar_Detalle_Grupo.Caption),
                            MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

  If ModuloNomina.tDetalle_Grupo_Nomina.RecordCount > 0  Then
    ModuloNomina.tDetalle_Grupo_Nomina.Delete
end;

procedure TFGrupos_Nomina.Agregar_Detalle_GrupoExecute(Sender: TObject);
begin
  _DetailCall := 1;
  OpenForm(TFTipos_Detalles_Grupo,FTipos_Detalles_Grupo)
end;

procedure TFGrupos_Nomina.BuscarExecute(Sender: TObject);
  Var
    R : Integer;
    S : String;
begin
  S := DoSearch(Nil,
                'Grupo_Nomina',                                      (* TableName *)
                'SrchPr',                                        (* Provider *)
                ModuloNomina.tGrupo_NominaProceso.FieldName,               (* CampoClave *)
                ModuloNomina.tGrupo_NominaDescripcion.FieldName,                (* CampoInicial *)
                '',                  (* AltQry *)
                ModuloNomina.Enlace,                                   (* RemoteServer *)
                'A',                                             (* SortOrder *)
                -1,                                              (* Packet Records *)
                wsMaximized,
                R);

  If R = MrOk Then
    Begin
      {Verificar el estado de la tabla de Salidas}
      If ModuloNomina.tGrupo_Nomina.State In DsEditModes Then
        If Application.MessageBox(PChar(_DatosEnEdicion),
                                  PChar(Buscar.Caption),
                                  MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

      ModuloNomina.tGrupo_Nomina.Cancel;
      ModuloNomina.tGrupo_Nomina.CancelUpdates;
      ModuloNomina.tGrupo_Nomina.Params.ParamByName('Proceso').AsString := S;
      ModuloNomina.tGrupo_Nomina.Refresh;
    End
end;

procedure TFGrupos_Nomina.Detalle_GrupoCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  If (Field = ModuloNomina.tDetalle_Grupo_NominaTipo) And Not Highlight Then
    Begin
     If (Trim(Field.AsString) = 'Deducción') Then ABrush.Color := clWebLightYellow;
     If (Trim(Field.AsString) = 'Pago/Incentivo') Then ABrush.Color := clMoneyGreen
    end
end;


Initialization
  RegisterClass(TFGrupos_Nomina);

end.
