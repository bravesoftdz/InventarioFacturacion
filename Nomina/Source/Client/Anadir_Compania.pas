unit Anadir_Compania;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ActnColorMaps, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, Grids, Wwdbigrd, Wwdbgrid;

type
  TFAnadirCompania = class(TForm)
    Opciones: TActionManager;
    Cancelar: TAction;
    Anadir: TAction;
    Datos_Generales: TAdvPageControl;
    DatosGenerales: TAdvTabSheet;
    Atb_Botones: TActionToolBar;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Salario: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Cargos: TwwDBComboBox;
    FechaRegistro: TwwDBDateTimePicker;
    Compania: TwwDBLookupCombo;
    Departamento: TwwDBLookupCombo;
    Periodos: TwwDBComboBox;
    Tipos_Empleados: TwwDBComboBox;
    Tipos_Salarios: TwwDBComboBox;
    Grupos: TwwDBLookupCombo;
    Label1: TLabel;
    Forma_Cobro: TwwDBComboBox;
    Detalle_Grupo: TwwDBGrid;
    Action1: TAction;
    Eliminar_Detalles_Nomina: TAction;
    procedure Detalle_GrupoExit(Sender: TObject);
    procedure Eliminar_Detalles_NominaExecute(Sender: TObject);
    procedure Detalle_GrupoCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure Action1Execute(Sender: TObject);
    procedure CompaniaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure AnadirExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAnadirCompania : TFAnadirCompania;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, DataNomina, Tipo_Detalle_Grupo, RegKeys;

{$R *.dfm}

procedure TFAnadirCompania.FormCreate(Sender: TObject);
  Var I : Integer;
begin
  If _Load_Create Then
    Begin
      ModuloNomina.tEmpleados.AfterEdit := Nil;
      {Configuracion de la Pantalla}
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

      {Activar Los Permisos del Usuario}
    //  ActivateOptions(Sender,_CurrentLevel,ModuloNomina.tAccesos);
      For I := 0 To (Self.ComponentCount - 1) Do
        Begin
          If (Self.Components[I] Is TAdvPageControl) Then
             (Self.Components[I] As TAdvPageControl).TabBackGroundColor := Color;
        End;
    End; {If _Load_Create}
end;

procedure TFAnadirCompania.CancelarExecute(Sender: TObject);
begin
  Close
end;

procedure TFAnadirCompania.CompaniaChange(Sender: TObject);
begin
  Departamento.Clear;
  ModuloNomina.Filtrar_Departamentos(ModuloNomina.tCompaniaNumero_Compania)
end;

procedure TFAnadirCompania.Detalle_GrupoCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  If (Field = ModuloNomina.tDetalle_EmpleadoTipo) And Not Highlight Then
    Begin
     If (Trim(Field.AsString) = 'Deducción') Then ABrush.Color := clWebLightYellow;
     If (Trim(Field.AsString) = 'Pago/Incentivo') Then ABrush.Color := clMoneyGreen
    end
end;

procedure TFAnadirCompania.Detalle_GrupoExit(Sender: TObject);
begin
  KeyPreview := Not KeyPreview 
end;

procedure TFAnadirCompania.Eliminar_Detalles_NominaExecute(Sender: TObject);
begin
  If Application.MessageBox(PChar(_ConfirmarEliminar + #13 +
                                  ModuloNomina.tDetalle_EmpleadoTipo.Value + ' : ' +
                                  ModuloNomina.tDetalle_EmpleadoDescripcion.Value),
                            PChar(Eliminar_Detalles_Nomina.Caption),
                            MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

  If ModuloNomina.tDetalle_Empleado.RecordCount > 0  Then ModuloNomina.tDetalle_Empleado.Delete
end;

procedure TFAnadirCompania.Action1Execute(Sender: TObject);
begin
  _DetailCall := 2;
  OpenForm(TFTipos_Detalles_Grupo,FTipos_Detalles_Grupo)
end;

procedure TFAnadirCompania.AnadirExecute(Sender: TObject);
begin
  If ModuloNomina.tInformacion_Laboral.State In DsEditModes Then
    ModuloNomina.tInformacion_Laboral.Post;

  If ModuloNomina.tDetalle_Empleado.State In DsEditModes Then
    ModuloNomina.tDetalle_Empleado.Post;

  Cancelar.Execute
end;

procedure TFAnadirCompania.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFAnadirCompania.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  If ModuloNomina.tInformacion_Laboral.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicionSalida),
                              PChar(Cancelar.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then
      Begin
        Action := caNone;
        Exit
      End;

  ModuloNomina.tEmpleados.AfterEdit := ModuloNomina.EditReminder;
  ModuloNomina.tInformacion_Laboral.Cancel;
  ModuloNomina.tDepartamentos.Filtered := False;
end;

Initialization
  RegisterClass(TFAnadirCompania);

end.
