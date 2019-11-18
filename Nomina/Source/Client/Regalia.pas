unit Regalia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ActnColorMaps, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, DateUtils,
  wwclearbuttongroup, wwradiogroup, wwriched, Grids, Wwdbigrd, Wwdbgrid, JPeg,
  Wwkeycb, DBGrids, wwDataInspector, Gauges, wwcheckbox;

type
  TFRegalia = class(TForm)
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Postear: TAction;
    Barra_Menu: TActionMainMenuBar;
    Agregar_Modificar_Garantia: TAction;
    Atb_Botones: TActionToolBar;
    Action1: TAction;
    Generar: TAction;
    Label3: TLabel;
    Label4: TLabel;
    Departamento: TwwDBLookupCombo;
    Compania: TwwDBLookupCombo;
    Label1: TLabel;
    Atb_Editar: TActionToolBar;
    DetalleRegalia: TwwDBGrid;
    Label2: TLabel;
    Label9: TLabel;
    Periodos: TwwDBComboBox;
    Fecha_Inicio: TwwDBDateTimePicker;
    Fecha_Final: TwwDBDateTimePicker;
    Mostrar_Ocultar_Detalles: TAction;
    Laboral: TwwDataInspector;
    Imprimir: TAction;
    SpeedButton2: TSpeedButton;
    Generar_Reporte_Banco: TAction;
    DBEdit1: TDBEdit;
    procedure DepartamentoExit(Sender: TObject);
    procedure PostearExecute(Sender: TObject);
    procedure Generar_Reporte_BancoExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure DetalleRegaliaRowChanged(Sender: TObject);
    procedure Mostrar_Ocultar_DetallesExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure GenerarExecute(Sender: TObject);
    procedure CompaniaChange(Sender: TObject);
    procedure DetalleRegaliaCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure DetalleRegaliaExit(Sender: TObject);
    procedure DetalleRegaliaEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    _CanClose : Boolean;
  public
    { Public declarations }
  end;

var
  FRegalia : TFRegalia;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, Anadir_Compania, Ver_Detalles_Nomina,
  TimerMessage, Reports_Forms,  DataNomina, ESBDates, RegKeys;

{$R *.dfm}

procedure TFRegalia.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Configuracion de la Pantalla}
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

      {Abrir los Datasets Requeridos por esta pantalla}
      _CanClose := Not (ModuloNomina.tNomina.Active);
      ModuloNomina.tNomina.Open;
      ModuloNomina.tListado_Empleados.Open;
      ModuloNomina.tCompania.Open;
      ModuloNomina.tDepartamentos.Open;
      ModuloNomina.tNominaPeriodo.OnValidate := Nil;

      Nuevo.Execute
    End
    {If _Load_Create}
end;

procedure TFRegalia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If (ModuloNomina.tNomina.State In DsEditModes) Or
     (ModuloNomina.tNomina.ChangeCount > 0) Then
    If Application.MessageBox(PChar(_DatosEnEdicionSalida),
                              PChar(Salir.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then

      Begin
        Action := caNone;
        Exit
      End;

//  FDetalles_Nomina.Free;

  {Cerrar las Tablas Requeridas}
  ModuloNomina.tNominaPeriodo.OnValidate := ModuloNomina.ValidarFechas;
  ModuloNomina.tDias_Laborados.Close;
  ModuloNomina.tNomina.Close;
  ModuloNomina.tListado_Empleados.Close;
  ModuloNomina.tDeducciones.Close;
  ModuloNomina.tPagos_Incentivos.Close;
  ModuloNomina.tCompania.Close;
  ModuloNomina.tDepartamentos.Close
end;

procedure TFRegalia.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFRegalia.BuscarExecute(Sender: TObject);
  Var
    R : Integer;
    S : String;
begin
  S := DoSearch(Nil,
                'Nomina',                                      (* TableName *)
                'SrchPr',                                        (* Provider *)
                ModuloNomina.tNominaProceso.FieldName,               (* CampoClave *)
                ModuloNomina.tNominaNumero_Nomina.FieldName,                (* CampoInicial *)
                '',                  (* AltQry *)
                ModuloNomina.Enlace,                                   (* RemoteServer *)
                'A',                                             (* SortOrder *)
                -1,                                              (* Packet Records *)
                wsMaximized,
                R);

  If R = MrOk Then
    Begin
      {Verificar el estado de la tabla de Salidas}
      If ModuloNomina.tNomina.State In DsEditModes Then
        If Application.MessageBox(PChar(_DatosEnEdicion),
                                  PChar(Buscar.Caption),
                                  MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

      ModuloNomina.tNomina.Cancel;
      ModuloNomina.tNomina.CancelUpdates;
      ModuloNomina.tNomina.Params.ParamByName('Proceso').AsString := S;
      ModuloNomina.tNomina.Refresh;
    End
end;

procedure TFRegalia.PostearExecute(Sender: TObject);
begin
  If ModuloNomina.tNominaStatus.Value = _stACTIVO Then
    Begin
      If Not(ModuloNomina.tNomina.State In DsEditModes) Then ModuloNomina.tNomina.Edit;
      ModuloNomina.tNominaStatus.Value := _stCERRADO;
    end;
  GuardarExecute(Sender);
end;

procedure TFRegalia.CompaniaChange(Sender: TObject);
begin
  Departamento.Clear;
  ModuloNomina.Filtrar_Departamentos(ModuloNomina.tCompaniaNumero_Compania)
end;

procedure TFRegalia.DepartamentoExit(Sender: TObject);
begin
  If ModuloNomina.tNomina.State In DsEditModes Then
    ModuloNomina.tNominaSimbolo.Value := '08'
end;

procedure TFRegalia.DetalleRegaliaCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if (Field = ModuloNomina.tJornal_DiarioNombre_Empleado) then
    ABrush.Color := Modulo.ColorConfig.Color
end;

procedure TFRegalia.DetalleRegaliaEnter(Sender: TObject);
begin
  KeyPreview := False
end;

procedure TFRegalia.DetalleRegaliaExit(Sender: TObject);
begin
  KeyPreview := True
end;

procedure TFRegalia.DetalleRegaliaRowChanged(Sender: TObject);
begin
{  If ModuloNomina.tDetalle_Nomina.RecordCount > 0 Then

  ExpandHoras.Expanded := True}
end;

procedure TFRegalia.NuevoExecute(Sender: TObject);
begin
  If (ModuloNomina.tNomina.State In DsEditModes) Or
     (ModuloNomina.tNomina.ChangeCount > 0) Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

  ModuloNomina.tNomina.Cancel;
  ModuloNomina.tNomina.CancelUpdates;
  ModuloNomina.tNomina.Params.ParamByName('Proceso').AsString := Gen_ProcessNumber(_CurrentUser);

  ModuloNomina.tNomina.Append;
  ModuloNomina.tNominaFecha_Nomina.Value := Modulo.Enlace.AppServer.ServerDate;
  ModuloNomina.tNominaFecha_Inicio.Value := GetFirstDayOfYear(YearOf(Modulo.Enlace.AppServer.ServerDate));
  ModuloNomina.tNominaFecha_Final.Value := GetLastDayOfYear(YearOf(Modulo.Enlace.AppServer.ServerDate));
  ModuloNomina.tNominaTipo_Nomina.Value := 'REGALÍA PASCUAL';
  ModuloNomina.tNominaStatus.Value := _stACTIVO;
  ModuloNomina.tNominaProceso.Value := ModuloNomina.tNomina.Params.ParamByName('Proceso').AsString;

  Compania.Clear;
  Departamento.Clear;

  If Self.Visible Then Compania.SetFocus

end;

procedure TFRegalia.GenerarExecute(Sender: TObject);
begin
  Try
    Fecha_Inicio.SetFocus;

    Application.CreateForm(TFTimerMessage,FTimerMessage);
    FTimerMessage.Titulo.Caption := 'Generando Nómina';
    FTimerMessage.Linea1.Caption := _MuchoTiempo;
    FTimerMessage.Linea2.Caption := _Espere;

    DetalleRegalia.OnRowChanged := Nil;

    // Filtrar los empleadas por compañía, departamento y periodo
    ModuloNomina.tListado_Laboral.Params.ParamByName('Compania').AsInteger := ModuloNomina.tCompaniaNumero_Compania.AsInteger;
    ModuloNomina.tListado_Laboral.Params.ParamByName('Departamento').AsInteger := ModuloNomina.tDepartamentosNumero.AsInteger;
    ModuloNomina.tListado_Laboral.Open;

    ModuloNomina.tListado_Laboral.Filter := 'Periodo_Nomina = ' + QuotedStr(Trim(UpperCase(ModuloNomina.tNominaPeriodo.Value)));
    ModuloNomina.tListado_Laboral.Filtered := True;

    FTimerMessage.Indicador.MaxValue := ModuloNomina.tListado_Laboral.RecordCount;
    FTimerMessage.Indicador.Progress := 0;
    FTimerMessage.Show;
    FTimerMessage.Refresh;

    While Not ModuloNomina.tListado_Laboral.Eof Do
      Begin

        If Not ModuloNomina.tDetalle_Nomina.Locate('Empleado',ModuloNomina.tListado_LaboralCedula_Rnc_Pasaporte.Value,[]) Then
          Begin
            ModuloNomina.tDetalle_Nomina.Append;

            ModuloNomina.tDetalle_NominaEmpleado.Value := ModuloNomina.tListado_LaboralCedula_Rnc_Pasaporte.Value;
            ModuloNomina.tDetalle_NominaCargo.Value := ModuloNomina.tListado_LaboralCargo.Value;
            ModuloNomina.tDetalle_NominaFecha_Inicio.Value := ModuloNomina.tNominaFecha_Inicio.Value;
            ModuloNomina.tDetalle_NominaFecha_Final.Value := ModuloNomina.tNominaFecha_Final.Value;
            ModuloNomina.tDetalle_NominaBase_Pago_Hora.Value := ModuloNomina.tListado_LaboralSalario.Value;

            ModuloNomina.tSalarioEmpleado_Rango.Close;
            ModuloNomina.tSalarioEmpleado_Rango.Params.ParamByName('Empleado').AsString := ModuloNomina.tListado_LaboralCedula_Rnc_Pasaporte.Value;
            ModuloNomina.tSalarioEmpleado_Rango.Params.ParamByName('Fecha_1').AsDate:= ModuloNomina.tNominaFecha_Inicio.Value;
            ModuloNomina.tSalarioEmpleado_Rango.Params.ParamByName('Fecha_2').AsDate:= ModuloNomina.tNominaFecha_Final.Value;
            ModuloNomina.tSalarioEmpleado_Rango.Open;


            ModuloNomina.tDetalle_NominaTotal_Horas_Extraordinarias.Value := ModuloNomina.tSalarioEmpleado_RangoTotal_Salario_Rango.Value;
            ModuloNomina.tDetalle_NominaTotal_Horas_Trabajadas.AsInteger := ModuloNomina.tSalarioEmpleado_RangoCantidad_Salarios.Value;

            {Calcular Proporcion de la Regalia}
            ModuloNomina.tDetalle_NominaSalario_Bruto.Value := ModuloNomina.tDetalle_NominaTotal_Horas_Extraordinarias.AsCurrency / 12;

            ModuloNomina.tDetalle_Nomina.Post;
          end; // If Not ModuloNomina.tDetalle_Nomina.Locate('Empleado',ModuloNomina.tListado_LaboralCedula_Rnc_Pasaporte.Value,[])
        ModuloNomina.tListado_Laboral.Next;
        FTimerMessage.Indicador.AddProgress(1);
        FTimerMessage.Refresh
       End; {While}

    ModuloNomina.tNomina.Edit;
    ModuloNomina.CalcularTotalNomina(ModuloNomina.tNomina);
    ModuloNomina.tNomina.Post;

  Finally
    ModuloNomina.tListado_Laboral.Close;
    ModuloNomina.tDetalle_Nomina.First;
    DetalleRegalia.SelectedField := ModuloNomina.tDetalle_NominaEmpleado;
    DetalleRegalia.SetFocus;
    FTimerMessage.Free
  End
end;

procedure TFRegalia.Generar_Reporte_BancoExecute(Sender: TObject);
{  Var
    Cadena  : String;
    Fecha   : String;
    Monto   : String;
    Archivo : TextFile;
    Total   : Double;}

begin
{  Total := 0;
  ModuloNomina.tNomina.Edit;
  ModuloNomina.CalcularTotalNomina(ModuloNomina.tNomina);
  ModuloNomina.tNomina.Post;

  If Modulo.Abrir_Archivo.Execute Then
    Begin
      AssignFile(Archivo,Modulo.Abrir_Archivo.FileName);
      Rewrite(Archivo);
      ModuloNomina.tDetalle_Nomina.First;
      Fecha := FormatDateTime('mmddyyyy',Date());
      Monto := FloatToStr(ModuloNomina.tNominaTotal_Neto.AsFloat);
      Monto := Trimchar(',',Monto);
      Monto := Trimchar('.',Monto);
      Cadena := Format('%s%s%s%s%s%s%s',[Pad('L',ModuloNomina.tCompaniaRNC.Text,11,'0'),
                                             'H',
                                             Pad('L',ModuloNomina.tCompaniaCuenta_Nomina.Text,10,'0'),
                                             Pad('L',Monto,11,'0'),
                                             Pad('L',Fecha,8,'0'),
                                             Pad('L','0',6,'0'),
                                             ModuloNomina.tCompaniaNombre_Compania.Text]);
      Writeln(Archivo,Cadena);
      While Not ModuloNomina.tDetalle_Nomina.Eof Do
        Begin
          Total := Total + ModuloNomina.tDetalle_NominaTotal_Neto.AsFloat;
          Monto := FloatToStr(ModuloNomina.tDetalle_NominaTotal_Neto.AsFloat);
          Monto := Trimchar(',',Monto);
          Monto := Trimchar('.',Monto);
          Cadena := Format('%s%s%s%s%s%s%s',[Pad('L',ModuloNomina.tCompaniaRNC.Text,11,'0'),
                                             'N',
                                             Pad('L',ModuloNomina.tDetalle_NominaCuenta_Banco.Text,10,'0'),
                                             Pad('L',Monto,11,'0'),
                                             Pad('L','0',8,'0'),
                                             Pad('L','0',6,'0'),
                                             ModuloNomina.tDetalle_NominaNombre_Empleado.Text]);
          Writeln(Archivo,Cadena);
          ModuloNomina.tDetalle_Nomina.Next;
        End;
      CloseFile(Archivo);
      ModuloNomina.tDetalle_Nomina.First;
    End;}
end;

procedure TFRegalia.GuardarExecute(Sender: TObject);
begin
  If ModuloNomina.tNomina.State In DsEditModes Then
      ModuloNomina.tNomina.Post;

  If ModuloNomina.tNomina.ChangeCount > 0 Then
    ModuloNomina.tNomina.ApplyUpdates(0);


  ModuloNomina.tHistorial_Nomina.Close;
  ModuloNomina.tHistorial_Nomina.Params.ParamByName('Compania').AsInteger     := ModuloNomina.tNominaCompania.Value;
  ModuloNomina.tHistorial_Nomina.Params.ParamByName('Departamento').AsInteger := ModuloNomina.tNominaDepartamento.Value;
  ModuloNomina.tHistorial_Nomina.Params.ParamByName('Periodo').AsString       := ModuloNomina.tNominaPeriodo.Value;
  ModuloNomina.tHistorial_Nomina.Params.ParamByName('Fecha_Inicio').AsDate    := ModuloNomina.tNominaFecha_Inicio.Value;
  ModuloNomina.tHistorial_Nomina.Params.ParamByName('Fecha_Final').AsDate     := ModuloNomina.tNominaFecha_Final.Value;
  ModuloNomina.tHistorial_Nomina.Open;

  If ModuloNomina.tHistorial_Nomina.RecordCount <= 0 Then ModuloNomina.tHistorial_Nomina.Append
  Else ModuloNomina.tHistorial_Nomina.Edit;

  ModuloNomina.tHistorial_NominaProceso_Nomina.Value    := ModuloNomina.tNominaProceso.Value;
  ModuloNomina.tHistorial_NominaCompania.AsInteger      := ModuloNomina.tNominaCompania.Value;
  ModuloNomina.tHistorial_NominaDepartamento.AsInteger  := ModuloNomina.tNominaDepartamento.Value;
  ModuloNomina.tHistorial_NominaPeriodo.AsString        := ModuloNomina.tNominaPeriodo.Value;
  ModuloNomina.tHistorial_NominaFecha_Inicio.AsDateTime := ModuloNomina.tNominaFecha_Inicio.Value;
  ModuloNomina.tHistorial_NominaFecha_Final.AsDateTime  := ModuloNomina.tNominaFecha_Final.Value;
  ModuloNomina.tHistorial_NominaStatus.Value            := ModuloNomina.tNominaStatus.Value;

  ModuloNomina.tHistorial_Nomina.Post;
  ModuloNomina.tHistorial_Nomina.ApplyUpdates(0);

  ModuloNomina.tNomina.Refresh;
  If (Sender is tAction) And
     ((Sender as tAction).Name = Guardar.Name) Then Nuevo.Execute;

  PopupMessage(Modulo.Mensajes,_DatosGuardados)
end;

procedure TFRegalia.ImprimirExecute(Sender: TObject);
begin
  If ModuloNomina.tDetalle_Nomina.RecordCount > 0 Then
//    ReportsAndForms.FormRegalia.Print;
end;

procedure TFRegalia.Mostrar_Ocultar_DetallesExecute(Sender: TObject);
begin
  OpenForm(TFDetalles_Nomina,FDetalles_Nomina)
end;

procedure TFRegalia.FormKeyDown(Sender: TObject; var Key: Word;
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

Initialization
  RegisterClass(TFRegalia);


end.
