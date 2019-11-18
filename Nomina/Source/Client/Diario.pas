unit Diario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ActnColorMaps, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker,
  wwclearbuttongroup, wwradiogroup, wwriched, Grids, Wwdbigrd, Wwdbgrid, JPeg,
  Wwkeycb, Gauges;

type
  TFDiario = class(TForm)
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Imprimir_Planilla: TAction;
    Barra_Menu: TActionMainMenuBar;
    Asignar_Horas: TAction;
    Editar: TAction;
    Label3: TLabel;
    Label4: TLabel;
    Departamento: TwwDBLookupCombo;
    Compania: TwwDBLookupCombo;
    Fecha: TDateTimePicker;
    Label1: TLabel;
    Atb_Editar: TActionToolBar;
    DetalleJornal: TwwDBGrid;
    wwDBEdit1: TwwDBEdit;
    Indicador: TGauge;
    LIndicador: TLabel;
    Panel_Botones: TAdvPageControl;
    Pg_Botones: TAdvTabSheet;
    Botones: TActionToolBar;
    procedure Asignar_HorasExecute(Sender: TObject);
    procedure DetalleJornalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DetalleJornalTitleButtonClick(Sender: TObject;
      AFieldName: string);
    procedure CompaniaChange(Sender: TObject);
    procedure DetalleJornalCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure DetalleJornalExit(Sender: TObject);
    procedure DetalleJornalEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditarExecute(Sender: TObject);
  private
    { Private declarations }
    _CanClose : Boolean;
  public
    { Public declarations }
  end;

var
  FDiario : TFDiario;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, Anadir_Compania, Aplicar_Horas,
  DataNomina, RegKeys;

{$R *.dfm}

procedure TFDiario.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Configuracion de la Pantalla}
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
  
      {Abrir los Datasets Requeridos por esta pantalla}
  
      _CanClose := Not (ModuloNomina.tJornal_Diario.Active);
      ModuloNomina.tJornal_Diario.Open;
      ModuloNomina.tListado_Empleados.Open;
      ModuloNomina.tCompania.Open;
      ModuloNomina.tDepartamentos.Open;

      Nuevo.Execute
    End; {If _Load_Create}
end;

procedure TFDiario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If (ModuloNomina.tJornal_Diario.State In DsEditModes) Or
     (ModuloNomina.tJornal_Diario.ChangeCount > 0) Then
    If Application.MessageBox(PChar(_DatosEnEdicionSalida),
                              PChar(Salir.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then

      Begin
        Action := caNone;
        Exit
      End;

  {Cerrar las Tablas Requeridas}
  ModuloNomina.tJornal_Diario.Close;
  ModuloNomina.tListado_Empleados.Close;
  ModuloNomina.tCompania.Close;
  ModuloNomina.tDepartamentos.Close
end;

procedure TFDiario.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFDiario.Asignar_HorasExecute(Sender: TObject);
  Var
    Todos : Boolean;
    H,E,X : SmallInt;
    CurrentRecord   : TBookmark;
begin
  CurrentRecord := Nil;
  Application.CreateForm(TFAplicar_Horas,FAplicar_Horas);
  FAplicar_Horas.ShowModal;
  Todos := Not FAplicar_Horas.Solo_Vacias.Checked;
  H := StrToInt(FAplicar_Horas.Regulares.Text);
  E := StrToInt(FAplicar_Horas.Extra.Text);
  X := StrToInt(FAplicar_Horas.Extraordinarias.Text);
  If FAplicar_Horas.ModalResult = MrOk Then
    Try
      ModuloNomina.tJornal_Diario.DisableControls;
      CurrentRecord := ModuloNomina.tJornal_Diario.GetBookmark;
      ModuloNomina.tJornal_Diario.First;
      While Not ModuloNomina.tJornal_Diario.Eof Do
        Begin
          ModuloNomina.tJornal_Diario.Edit;

          If Todos Or ModuloNomina.tJornal_DiarioHoras.IsNull Or (ModuloNomina.tJornal_DiarioHoras.Value = 0) Then
            ModuloNomina.tJornal_DiarioHoras.Value := H;

          If Todos Or ModuloNomina.tJornal_DiarioHoras_Extra.IsNull Or (ModuloNomina.tJornal_DiarioHoras_Extra.Value = 0) Then
            ModuloNomina.tJornal_DiarioHoras_Extra.Value := E;

          If Todos Or ModuloNomina.tJornal_DiarioHoras_Extraordinarias.IsNull Or (ModuloNomina.tJornal_DiarioHoras_Extraordinarias.Value = 0) Then
            ModuloNomina.tJornal_DiarioHoras_Extraordinarias.Value := X;

          ModuloNomina.tJornal_Diario.Next;
        End;
    Finally
      ModuloNomina.tJornal_Diario.GotoBookmark(CurrentRecord);
      ModuloNomina.tJornal_Diario.FreeBookmark(CurrentRecord);
      ModuloNomina.tJornal_Diario.EnableControls
    End; // Try
  FAplicar_Horas.Free;
end;

procedure TFDiario.CompaniaChange(Sender: TObject);
begin
  Departamento.Clear;
  ModuloNomina.Filtrar_Departamentos(ModuloNomina.tCompaniaNumero_Compania)
end;

procedure TFDiario.DetalleJornalCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  If Not Highlight Then
    Begin
      If (Field = ModuloNomina.tJornal_DiarioNombre_Empleado) then ABrush.Color := Modulo.ColorConfig.Color;

      If (Field = ModuloNomina.tJornal_DiarioHoras) And (ModuloNomina.tJornal_DiarioHoras.Value <> _Jornal)then
        Begin
          If ModuloNomina.tJornal_DiarioHoras.Value >= (_Jornal / 2) Then ABrush.Color := clSkyBlue;
          If ModuloNomina.tJornal_DiarioHoras.Value < (_Jornal / 2) Then ABrush.Color := clWebOrangeRed;
        end;

      If (Field = ModuloNomina.tJornal_DiarioHoras_Extra) And (ModuloNomina.tJornal_DiarioHoras_Extra.Value > 0)then
        ABrush.Color := clWebGold;

      If (Field = ModuloNomina.tJornal_DiarioHoras_Extraordinarias) And (ModuloNomina.tJornal_DiarioHoras_Extraordinarias.Value > 0)then
        ABrush.Color := clWebGold;
    End;
end;

procedure TFDiario.DetalleJornalEnter(Sender: TObject);
begin
  KeyPreview := False
end;

procedure TFDiario.DetalleJornalExit(Sender: TObject);
begin
  KeyPreview := True
end;

procedure TFDiario.DetalleJornalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

    If Key = VK_RETURN Then
    
    If ModuloNomina.tListado_Empleados.Locate(ModuloNomina.tListado_EmpleadosNombreCompleto.FieldName,
                                   wwDBEdit1.Text,[loPartialKey]) Then

    ModuloNomina.tJornal_Diario.Locate(ModuloNomina.tJornal_DiarioEmpleado.FieldName,
                                 ModuloNomina.tListado_EmpleadosCedula_Rnc_Pasaporte.Value,[])
end;

procedure TFDiario.DetalleJornalTitleButtonClick(Sender: TObject;
  AFieldName: string);
begin
  ModuloNomina.tJornal_Diario.IndexFieldNames := AFieldName;
end;

procedure TFDiario.NuevoExecute(Sender: TObject);
begin
  If (ModuloNomina.tJornal_Diario.State In DsEditModes) Or
     (ModuloNomina.tJornal_Diario.ChangeCount > 0) Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

  ModuloNomina.tJornal_Diario.Cancel;
  ModuloNomina.tJornal_Diario.CancelUpdates;
  ModuloNomina.tJornal_Diario.Params.ParamByName('Compania').Clear;
  ModuloNomina.tJornal_Diario.Params.ParamByName('Departamento').Clear;
  ModuloNomina.tJornal_Diario.Params.ParamByName('Fecha').Clear;
  ModuloNomina.tJornal_Diario.Refresh;

  Compania.Clear;
  Departamento.Clear;
  Fecha.Date := Modulo.Enlace.AppServer.ServerDate;

  If Self.Visible Then Compania.SetFocus
  
end;

procedure TFDiario.GuardarExecute(Sender: TObject);
begin
  If ModuloNomina.tJornal_Diario.State In DsEditModes Then
      ModuloNomina.tJornal_Diario.Post;

  If ModuloNomina.tJornal_Diario.ChangeCount > 0 Then
    ModuloNomina.tJornal_Diario.ApplyUpdates(0);

  ModuloNomina.tJornal_Diario.Refresh;

  Nuevo.Execute;

  PopupMessage(Modulo.Mensajes,_DatosGuardados)
end;

procedure TFDiario.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFDiario.EditarExecute(Sender: TObject);
begin
  {Verificar el estado de la tabla de facturas}
  If (ModuloNomina.tJornal_Diario.State In DsEditModes) Or
     (ModuloNomina.tJornal_Diario.ChangeCount > 0) Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

  Try

      // Filtrar los empleadas por compañía y departamento
      ModuloNomina.tListado_Laboral.Params.ParamByName('Compania').AsInteger := ModuloNomina.tCompaniaNumero_Compania.AsInteger;
      ModuloNomina.tListado_Laboral.Params.ParamByName('Departamento').AsInteger := ModuloNomina.tDepartamentosNumero.AsInteger;
      ModuloNomina.tListado_Laboral.Open;
      Indicador.MaxValue := ModuloNomina.tListado_Laboral.RecordCount;
      Indicador.Progress := 0;
      Indicador.Visible := True;
      LIndicador.Visible := True;
      LIndicador.Refresh;

      // Filtrar El Jornal Por compañía , departamento y Fecha
      ModuloNomina.tJornal_Diario.Cancel;
      ModuloNomina.tJornal_Diario.CancelUpdates;
      ModuloNomina.tJornal_Diario.Params.ParamByName('Compania').AsInteger := ModuloNomina.tCompaniaNumero_Compania.AsInteger;
      ModuloNomina.tJornal_Diario.Params.ParamByName('Departamento').AsInteger := ModuloNomina.tDepartamentosNumero.AsInteger;
      ModuloNomina.tJornal_Diario.Params.ParamByName('Fecha').AsDate := Fecha.Date;
      ModuloNomina.tJornal_Diario.Refresh;

      While Not ModuloNomina.tListado_Laboral.Eof Do
        Begin
          If Not ModuloNomina.tJornal_Diario.Locate('Empleado',ModuloNomina.tListado_LaboralCedula_Rnc_Pasaporte.Value,[]) Then
            Begin
              ModuloNomina.tJornal_Diario.Append;

              ModuloNomina.tJornal_DiarioEmpleado.Value := ModuloNomina.tListado_LaboralCedula_Rnc_Pasaporte.Value;
              ModuloNomina.tJornal_DiarioCompania.Value := ModuloNomina.tCompaniaNumero_Compania.Value;
              ModuloNomina.tJornal_DiarioDepartamento.Value := ModuloNomina.tDepartamentosNumero.Value;
              ModuloNomina.tJornal_DiarioFecha.Value := Fecha.Date;

              ModuloNomina.tJornal_Diario.Post
            end;
          ModuloNomina.tListado_Laboral.Next;
          Indicador.AddProgress(1)
        End {While}
  Finally
    Indicador.Visible := False;
    LIndicador.Visible := Indicador.Visible;

    ModuloNomina.tListado_Laboral.Close;
    ModuloNomina.tJornal_Diario.First;
    DetalleJornal.SelectedField := ModuloNomina.tJornal_DiarioHoras;
    DetalleJornal.SetFocus
  End // Try
end;


Initialization
  RegisterClass(TFDiario);

end.
