unit Generar_Nomina;

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
  TFNomina = class(TForm)
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
    DetalleJornal: TwwDBGrid;
    Label2: TLabel;
    Label9: TLabel;
    Periodos: TwwDBComboBox;
    Fecha_Inicio: TwwDBDateTimePicker;
    Fecha_Final: TwwDBDateTimePicker;
    Mostrar_Ocultar_Detalles: TAction;
    SpeedButton1: TSpeedButton;
    Horas: TwwDataInspector;
    Salarios: TwwDataInspector;
    Deducciones: TwwDataInspector;
    Laboral: TwwDataInspector;
    Imprimir: TAction;
    SpeedButton2: TSpeedButton;
    Generar_Reporte_Banco: TAction;
    DBEdit1: TDBEdit;
    CheckBox1: TCheckBox;
    Recalcular: TAction;
    procedure RecalcularExecute(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure PostearExecute(Sender: TObject);
    procedure Generar_Reporte_BancoExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure DetalleJornalRowChanged(Sender: TObject);
    procedure Mostrar_Ocultar_DetallesExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure GenerarExecute(Sender: TObject);
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
  private
    { Private declarations }
    _CanClose : Boolean;
  public
    { Public declarations }
  end;

var
  FNomina : TFNomina;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, Anadir_Compania, Ver_Detalles_Nomina,
  TimerMessage, DataNomina, RegKeys, PayRollForms;

{$R *.dfm}

procedure TFNomina.FormCreate(Sender: TObject);
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
      ModuloNomina.tDeducciones.Open;
      ModuloNomina.tPagos_Incentivos.Open;

      Nuevo.Execute
    End
end;

procedure TFNomina.FormClose(Sender: TObject; var Action: TCloseAction);
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
  ModuloNomina.tDias_Laborados.Close;
  ModuloNomina.tNomina.Close;
  ModuloNomina.tListado_Empleados.Close;
  ModuloNomina.tDeducciones.Close;
  ModuloNomina.tPagos_Incentivos.Close;
  ModuloNomina.tCompania.Close;
  ModuloNomina.tDepartamentos.Close
end;

procedure TFNomina.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFNomina.BuscarExecute(Sender: TObject);
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

      ModuloNomina.tNominaDetalle_Dias.SaveToFile(ModuloNomina.tNominaArchivo_Detalle_Dias.Value);
      ModuloNomina.tDias_Laborados.FileName := ModuloNomina.tNominaArchivo_Detalle_Dias.Value;
      ModuloNomina.tDias_Laborados.Open;
      ModuloNomina.tDias_Laborados.LoadFromFile
    End
end;

procedure TFNomina.PostearExecute(Sender: TObject);
begin
  If ModuloNomina.tNominaStatus.Value = _stACTIVO Then
    Begin
      If Not(ModuloNomina.tNomina.State In DsEditModes) Then ModuloNomina.tNomina.Edit;
      ModuloNomina.tNominaStatus.Value := _stCERRADO;
    end;
  GuardarExecute(Sender);
end;

procedure TFNomina.RecalcularExecute(Sender: TObject);
  Var T : Currency;
begin
  ModuloNomina.tDetalle_Nomina.First;
  While Not ModuloNomina.tDetalle_Nomina.Eof Do
    Begin
      ModuloNomina.tDetalle_Deducciones.First;
      T := 0;
      While Not ModuloNomina.tDetalle_Deducciones.Eof Do
        Begin
          T := T + ModuloNomina.tDetalle_DeduccionesTotal_Deduccion.Value;
          ModuloNomina.tDetalle_Deducciones.Next
        end;
      ModuloNomina.tDetalle_Nomina.Edit;
      ModuloNomina.tDetalle_NominaDeducciones.Value := T;
      ModuloNomina.tDetalle_Nomina.Post;
      ModuloNomina.tDetalle_Nomina.Next
    end
end;

procedure TFNomina.CheckBox1Click(Sender: TObject);
begin
  _Validar_Fecha := CheckBox1.Checked
end;

procedure TFNomina.CompaniaChange(Sender: TObject);
begin
  Departamento.Clear;
  ModuloNomina.Filtrar_Departamentos(ModuloNomina.tCompaniaNumero_Compania)
end;

procedure TFNomina.DetalleJornalCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if (Field = ModuloNomina.tJornal_DiarioNombre_Empleado) then
    ABrush.Color := Modulo.ColorConfig.Color
end;

procedure TFNomina.DetalleJornalEnter(Sender: TObject);
begin
  KeyPreview := False
end;

procedure TFNomina.DetalleJornalExit(Sender: TObject);
begin
  KeyPreview := True
end;

procedure TFNomina.DetalleJornalRowChanged(Sender: TObject);
begin
{  If ModuloNomina.tDetalle_Nomina.RecordCount > 0 Then

  ExpandHoras.Expanded := True}
end;

procedure TFNomina.NuevoExecute(Sender: TObject);
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
  ModuloNomina.tNominaFecha_Inicio.Value := Modulo.Enlace.AppServer.ServerDate;
  ModuloNomina.tNominaStatus.Value := _stACTIVO;
  ModuloNomina.tNominaProceso.Value := ModuloNomina.tNomina.Params.ParamByName('Proceso').AsString;

  Compania.Clear;
  Departamento.Clear;

  If Self.Visible Then Compania.SetFocus

end;

procedure TFNomina.GenerarExecute(Sender: TObject);
  Var
    N,I       : Integer;
    H,X,EO    : Smallint;
    F         : TDate;
    Nombre    : String;
    Aplicable : Boolean;
    Restante  : Currency;
begin
  Try
    Application.CreateForm(TFTimerMessage,FTimerMessage);
    FTimerMessage.Titulo.Caption := 'Generando Nómina';
    FTimerMessage.Linea1.Caption := _MuchoTiempo;
    FTimerMessage.Linea2.Caption := _Espere;

    DetalleJornal.OnRowChanged := Nil;
    Aplicable := True;
    {Verificar el Orden de la Fecha}
    If Fecha_Inicio.Date > Fecha_Final.Date Then
      Begin
        F := Fecha_Inicio.Date;
        Fecha_Inicio.Date := Fecha_Final.Date;
        Fecha_Final.Date := F
      End;

    Nombre := Format('%s_%s(%s~%s).xml', [Copy(Compania.Text,1,6),
                                          Copy(Departamento.Text,1,6),
                                          FormatDateTime('dd-mm-yyyy',Fecha_Inicio.Date),
                                          FormatDateTime('dd-mm-yyyy',Fecha_Final.Date)]);

    {Calcular la Candidad de Dias que Tiene el Periodo}
    N := Round(Fecha_Final.Date - Fecha_Inicio.Date);

    ModuloNomina.tDias_Laborados.Close;
    ModuloNomina.tDias_Laborados.FileName := Nombre;

    ModuloNomina.tDias_Laborados.FieldDefs.Clear;

    With ModuloNomina.tDias_Laborados.FieldDefs.AddFieldDef Do
      Begin
        Name := 'Empleado';
        DataType := ftString;
        Size := 25;
        Required := False;
      End;

    F := Fecha_Inicio.Date;
    For I  := 0 To N Do
      Begin
        Nombre := Format('%s %s',[DiasSemana[DayOfWeek(F+I)],IntToStr(DayOf(F+I))]);
        With ModuloNomina.tDias_Laborados.FieldDefs.AddFieldDef Do
          Begin
            Name := Nombre;
            DataType := ftSmallint;
            Required := False
          End; // with

        Nombre := Format('Extra %s %s',[IntToStr(DayOf(F+I)),IntToStr(MonthOf(F+I))]);
        With ModuloNomina.tDias_Laborados.FieldDefs.AddFieldDef Do
          Begin
            Name := Nombre;
            DataType := ftSmallint;
            Required := False
          End; // with

        Nombre := Format('Extraordinarias %s %s',[IntToStr(DayOf(F+I)),IntToStr(MonthOf(F+I))]);
        With ModuloNomina.tDias_Laborados.FieldDefs.AddFieldDef Do
          Begin
            Name := Nombre;
            DataType := ftSmallint;
            Required := False
          End // with
      End; // For

    ModuloNomina.tDias_Laborados.CreateDataSet;

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
        H  := 0;
        X  := 0;
        EO := 0;

        If Not ModuloNomina.tDetalle_Nomina.Locate('Empleado',ModuloNomina.tListado_LaboralCedula_Rnc_Pasaporte.Value,[]) Then
          Begin
            ModuloNomina.tDetalle_Nomina.Append;

            ModuloNomina.tDetalle_NominaEmpleado.Value := ModuloNomina.tListado_LaboralCedula_Rnc_Pasaporte.Value;
            ModuloNomina.tDetalle_NominaCargo.Value := ModuloNomina.tListado_LaboralCargo.Value;
            ModuloNomina.tDetalle_NominaFecha_Inicio.Value := ModuloNomina.tNominaFecha_Inicio.Value;
            ModuloNomina.tDetalle_NominaFecha_Final.Value := ModuloNomina.tNominaFecha_Final.Value;
            ModuloNomina.tDetalle_NominaBase_Pago_Hora.Value := ModuloNomina.tListado_LaboralSalario.Value;

            ModuloNomina.tDias_Laborados.Append;
            ModuloNomina.tDias_Laborados.FieldByName('Empleado').AsString := ModuloNomina.tListado_LaboralCedula_Rnc_Pasaporte.Value;

            If Trim(UpperCase(ModuloNomina.tListado_LaboralTipo_Salario.Value)) = 'FIJO' Then
              ModuloNomina.tDetalle_NominaSalario_Bruto.Value := ModuloNomina.tListado_LaboralSalario.Value
            Else
              Begin
                // Filtrar El Jornal Por compañía , departamento Empleado y Rango de Fecha
                ModuloNomina.tJornal_Empleado.Close;
                ModuloNomina.tJornal_Empleado.Params.ParamByName('Compania').AsInteger := ModuloNomina.tCompaniaNumero_Compania.AsInteger;
                ModuloNomina.tJornal_Empleado.Params.ParamByName('Departamento').AsInteger := ModuloNomina.tDepartamentosNumero.AsInteger;
                ModuloNomina.tJornal_Empleado.Params.ParamByName('Empleado').AsString := ModuloNomina.tListado_LaboralCedula_Rnc_Pasaporte.AsString;
                ModuloNomina.tJornal_Empleado.Params.ParamByName('Fecha_Inicio').AsDate := Fecha_Inicio.Date;
                ModuloNomina.tJornal_Empleado.Params.ParamByName('Fecha_Final').AsDate := Fecha_Final.Date;
                ModuloNomina.tJornal_Empleado.Open;

                ModuloNomina.tJornal_Empleado.First;
                While Not(ModuloNomina.tJornal_Empleado.Eof) Do
                  Begin
                    H := H + ModuloNomina.tJornal_EmpleadoHoras.Value;
                    X := X + ModuloNomina.tJornal_EmpleadoHoras_Extra.Value;
                    EO := EO + ModuloNomina.tJornal_EmpleadoHoras_Extraordinarias.Value;

                    ModuloNomina.tDias_Laborados.FieldByName(Format('%s %s',[DiasSemana[DayOfWeek(ModuloNomina.tJornal_EmpleadoFecha.Value)],
                                                                       IntToStr(DayOf(ModuloNomina.tJornal_EmpleadoFecha.Value))])).AsInteger := ModuloNomina.tJornal_EmpleadoHoras.Value;

                    ModuloNomina.tDias_Laborados.FieldByName(Format('Extra %s %s',[IntToStr(DayOf(ModuloNomina.tJornal_EmpleadoFecha.Value)),IntToStr(MonthOf(ModuloNomina.tJornal_EmpleadoFecha.Value))])).AsInteger := ModuloNomina.tJornal_EmpleadoHoras_Extra.Value;

                    ModuloNomina.tDias_Laborados.FieldByName(Format('Extraordinarias %s %s',[IntToStr(DayOf(ModuloNomina.tJornal_EmpleadoFecha.Value)),IntToStr(MonthOf(ModuloNomina.tJornal_EmpleadoFecha.Value))])).AsInteger := ModuloNomina.tJornal_EmpleadoHoras_Extraordinarias.Value;
                    ModuloNomina.tJornal_Empleado.Next;
                  End; // While

                ModuloNomina.tDetalle_NominaTotal_Horas_Trabajadas.Value := H;
                ModuloNomina.tDetalle_NominaTotal_Horas_Extra.Value := X;
                ModuloNomina.tDetalle_NominaTotal_Horas_Extraordinarias.Value := EO;

                // Dividir el Salario base entre las horas del jornal y Calcular el Salario Bruto
                ModuloNomina.tDetalle_NominaPago_Hora.Value := ModuloNomina.tDetalle_NominaBase_Pago_Hora.Value;

                ModuloNomina.tDetalle_NominaSalario_Bruto.Value := H * ModuloNomina.tDetalle_NominaPago_Hora.Value;

                // Calcular el Pago por Horas Extra y Calcular el Salario de Horas Extra
                ModuloNomina.tDetalle_NominaPago_Horas_Extra.Value := ModuloNomina.tDetalle_NominaPago_Hora.Value * 1.30;

                ModuloNomina.tDetalle_NominaSalario_Extra.Value := X * ModuloNomina.tDetalle_NominaPago_Horas_Extra.Value;

                // Calcular el Pago por Horas Extraordinarias y Calcular el Salario de Horas Extraordinarias
                ModuloNomina.tDetalle_NominaPago_Horas_Extraordinaria.Value := ModuloNomina.tDetalle_NominaPago_Hora.Value * 2;

                ModuloNomina.tDetalle_NominaSalario_Extraordinarias.Value := EO * ModuloNomina.tDetalle_NominaPago_Horas_Extraordinaria.Value;
              End; // Else

            ModuloNomina.tEmpleados.Close;
            ModuloNomina.tEmpleados.Params.ParamByName('Cedula_Rnc_Pasaporte').AsString := Trim(ModuloNomina.tListado_LaboralCedula_Rnc_Pasaporte.Value);
            ModuloNomina.tEmpleados.Open;

            {Calcular Otros Pagos} // Se Calculan antes de las deducciones, solo en caso de que alguna deduccion se calcule sobre el total salario, que abarque todos los pagos
            ModuloNomina.tDetalle_Empleado.First;
            While Not ModuloNomina.tDetalle_Empleado.Eof Do
              Begin
                If ModuloNomina.tDetalle_EmpleadoTipo.Value = 'Pago/Incentivo' Then
                  Begin
                    If Not ModuloNomina.tDetalle_Pagos.Locate(ModuloNomina.tDetalle_PagosPago.FieldName,
                                                        ModuloNomina.tDetalle_EmpleadoNumero.Value,
                                                        []) Then ModuloNomina.tDetalle_Pagos.Append
                    Else ModuloNomina.tDetalle_Pagos.Edit;

                    ModuloNomina.tDetalle_PagosPago.Value := ModuloNomina.tDetalle_EmpleadoNumero.Value;
                    ModuloNomina.tDetalle_PagosEmpleado.Value := ModuloNomina.tDetalle_NominaEmpleado.Value;

//                    ModuloNomina.tPagos_Incentivos.Locate(ModuloNomina.tPagos_IncentivosNumero.FieldName,
  //                                                  ModuloNomina.tDetalle_PagosPago.Value,
    //                                                []);

                    ModuloNomina.tDetalle_PagosMonto_Pagar.Value := ModuloNomina.tDetalle_EmpleadoMonto.Value;

                    ModuloNomina.tDetalle_PagosSalario.Value := ModuloNomina.tDetalle_NominaTotal_Salario.Value;

                    If ModuloNomina.tDetalle_EmpleadoAplicable_A.Value = 'Todos' Then Aplicable := True;

                    If ModuloNomina.tDetalle_EmpleadoAplicable_A.Value = 'Rango' Then
                      Aplicable := (ModuloNomina.tDetalle_PagosSalario.Value >= ModuloNomina.tDetalle_EmpleadoRango_Inicial.Value) And
                                   (ModuloNomina.tDetalle_PagosSalario.Value <= ModuloNomina.tDetalle_EmpleadoRango_Final.Value);

                    If ModuloNomina.tDetalle_EmpleadoAplicable_A.Value = 'Mayores de' Then
                      Aplicable := (ModuloNomina.tDetalle_PagosSalario.Value >= ModuloNomina.tDetalle_EmpleadoRango_Inicial.Value);

                    If ModuloNomina.tDetalle_EmpleadoAplicable_A.Value = 'Menores de' Then
                      Aplicable := (ModuloNomina.tDetalle_PagosSalario.Value <= ModuloNomina.tDetalle_EmpleadoRango_Inicial.Value);

                    ModuloNomina.tDetalle_PagosTotal_Pago.Value := ModuloNomina.tDetalle_PagosMonto_Pagar.Value;

                    If ModuloNomina.tDetalle_EmpleadoTipo_Aplicacion.Value = 'Porcentual' Then
                      ModuloNomina.tDetalle_PagosTotal_Pago.Value := ModuloNomina.tDetalle_PagosSalario.Value * (ModuloNomina.tDetalle_PagosMonto_Pagar.Value / 100);

                    If Aplicable Then
                      Begin
                        ModuloNomina.tDetalle_NominaOtros_Pagos.Value := ModuloNomina.tDetalle_NominaOtros_Pagos.Value +
                                                                   ModuloNomina.tDetalle_PagosTotal_Pago.Value;
                        ModuloNomina.tDetalle_Pagos.Post
                      End  // If Aplicable
                    Else ModuloNomina.tDetalle_Pagos.Cancel;
                  End; // If tDetalle_EmpleadoTipo.Value = 'Pago/Incentivo'
                ModuloNomina.tDetalle_Empleado.Next
              End; // While Not ModuloNomina.tDetalle_Empleado.Eof

            {Calcular Deducciones}
            ModuloNomina.tDetalle_Empleado.First;
            ModuloNomina.tDetalle_NominaDeducciones.Value := 0;
            While Not ModuloNomina.tDetalle_Empleado.Eof Do
              Begin
                If ModuloNomina.tDetalle_EmpleadoTipo.Value = 'Deducción' Then
                  Begin
                    If Not ModuloNomina.tDetalle_Deducciones.Locate(ModuloNomina.tDetalle_DeduccionesDeduccion.FieldName,
                                                                    ModuloNomina.tDetalle_EmpleadoNumero.Value,
                                                                    []) Then ModuloNomina.tDetalle_Deducciones.Append
                    Else ModuloNomina.tDetalle_Deducciones.Edit;

                    ModuloNomina.tDetalle_DeduccionesDeduccion.Value := ModuloNomina.tDetalle_EmpleadoNumero.Value;
                    ModuloNomina.tDetalle_DeduccionesEmpleado.Value := ModuloNomina.tDetalle_NominaEmpleado.Value;

//                    ModuloNomina.tDeducciones.Locate(ModuloNomina.tDeduccionesNumero.FieldName,
  //                                             ModuloNomina.tDetalle_DeduccionesDeduccion.Value,
    //                                           []);

                    ModuloNomina.tDetalle_DeduccionesMonto_Deducir.Value := ModuloNomina.tDetalle_EmpleadoMonto.Value;

                    If ModuloNomina.tDetalle_EmpleadoDeducir_De.Value = 'Salario Bruto' Then
                      ModuloNomina.tDetalle_DeduccionesSalario.Value := ModuloNomina.tDetalle_NominaSalario_Bruto.Value;

                    If ModuloNomina.tDetalle_EmpleadoDeducir_De.Value = 'Total Salario' Then
                      ModuloNomina.tDetalle_DeduccionesSalario.Value := ModuloNomina.tDetalle_NominaTotal_Salario.Value;

                    If ModuloNomina.tDetalle_EmpleadoAplicable_A.Value = 'Todos' Then Aplicable := True;

                    If ModuloNomina.tDetalle_EmpleadoAplicable_A.Value = 'Rango' Then
                      Aplicable := (ModuloNomina.tDetalle_DeduccionesSalario.Value >= ModuloNomina.tDetalle_EmpleadoRango_Inicial.Value) And
                                   (ModuloNomina.tDetalle_DeduccionesSalario.Value <= ModuloNomina.tDetalle_EmpleadoRango_Final.Value);

                    If ModuloNomina.tDetalle_EmpleadoAplicable_A.Value = 'Mayores de' Then
                      Aplicable := (ModuloNomina.tDetalle_DeduccionesSalario.Value >= ModuloNomina.tDetalle_EmpleadoRango_Inicial.Value);

                    If ModuloNomina.tDetalle_EmpleadoAplicable_A.Value = 'Menores de' Then
                      Aplicable := (ModuloNomina.tDetalle_DeduccionesSalario.Value <= ModuloNomina.tDetalle_EmpleadoRango_Inicial.Value);

                    ModuloNomina.tDetalle_DeduccionesTotal_Deduccion.Value := ModuloNomina.tDetalle_DeduccionesMonto_Deducir.Value;

                    If ModuloNomina.tDetalle_EmpleadoTipo_Aplicacion.Value = 'Porcentual' Then
                      ModuloNomina.tDetalle_DeduccionesTotal_Deduccion.Value := ModuloNomina.tDetalle_DeduccionesSalario.Value * (ModuloNomina.tDetalle_DeduccionesMonto_Deducir.Value / 100);

                    If Aplicable Then
                      Begin
                        ModuloNomina.tDetalle_NominaDeducciones.Value := ModuloNomina.tDetalle_NominaDeducciones.Value +
                                                                   ModuloNomina.tDetalle_DeduccionesTotal_Deduccion.Value;
                        ModuloNomina.tDetalle_Deducciones.Post
                      End // If Aplicable
                    Else ModuloNomina.tDetalle_Deducciones.Cancel;

                  End; // If ModuloNomina.tDetalle_EmpleadoTipo.Value = 'Deducción'

                ModuloNomina.tDetalle_Empleado.Next
              End; // While Not ModuloNomina.tDetalle_Empleado.Eof

            ModuloNomina.tEmpleados.Close;
            ModuloNomina.tDetalle_Nomina.Post;

            If ModuloNomina.tDias_Laborados.State In DsEditModes Then
              ModuloNomina.tDias_Laborados.Post;

          end; // If Not ModuloNomina.tDetalle_Nomina.Locate('Empleado',ModuloNomina.tListado_LaboralCedula_Rnc_Pasaporte.Value,[])
        ModuloNomina.tListado_Laboral.Next;
        FTimerMessage.Indicador.AddProgress(1);
        FTimerMessage.Refresh
       End; {While}

    ModuloNomina.tNomina.Edit;
    ModuloNomina.CalcularTotalNomina(ModuloNomina.tNomina);
    ModuloNomina.tDias_Laborados.SaveToFile;
    ModuloNomina.tNominaArchivo_Detalle_Dias.Value := ModuloNomina.tDias_Laborados.FileName;
    ModuloNomina.tNominaDetalle_Dias.LoadFromFile(ModuloNomina.tDias_Laborados.FileName);
    ModuloNomina.tNomina.Post;

  Finally
    ModuloNomina.tListado_Laboral.Close;
    ModuloNomina.tDetalle_Nomina.First;
    DetalleJornal.SelectedField := ModuloNomina.tDetalle_NominaEmpleado;
    DetalleJornal.SetFocus;
    FTimerMessage.Free
  End
end;

procedure TFNomina.Generar_Reporte_BancoExecute(Sender: TObject);
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

procedure TFNomina.GuardarExecute(Sender: TObject);
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

procedure TFNomina.ImprimirExecute(Sender: TObject);
begin
  If ModuloNomina.tDetalle_Nomina.RecordCount > 0 Then
    Begin
      ModuloNomina.tResumen_Detalle_Deducciones.Close;
      ModuloNomina.tResumen_Detalle_Deducciones.Params.ParamByName('Proceso').AsString := ModuloNomina.tNominaProceso.Value;
      ModuloNomina.tResumen_Detalle_Deducciones.Open;
      PayRoll_Forms.FormNomina.Print;
      ModuloNomina.tResumen_Detalle_Deducciones.Close
    end;
end;

procedure TFNomina.Mostrar_Ocultar_DetallesExecute(Sender: TObject);
begin
  OpenForm(TFDetalles_Nomina,FDetalles_Nomina)
end;

procedure TFNomina.FormKeyDown(Sender: TObject; var Key: Word;
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
  RegisterClass(TFNomina);

end.
