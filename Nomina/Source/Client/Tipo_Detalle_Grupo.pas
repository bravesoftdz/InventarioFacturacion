unit Tipo_Detalle_Grupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ActnMan, ActnCtrls, ActnList, XPStyleActnCtrls;

type
  TFTipos_Detalles_Grupo = class(TForm)
    Atb_Editar: TActionToolBar;
    Opciones: TActionManager;
    Cancelar: TAction;
    Deducciones: TAction;
    Pagos_Incentivos: TAction;
    procedure Pagos_IncentivosExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure DeduccionesExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTipos_Detalles_Grupo: TFTipos_Detalles_Grupo;

implementation

uses DataModulo, Seleccionar_Detalles_Grupo, Utilidades, Wwdbgrid, DB,
  DataNomina, RegKeys;

{$R *.dfm}

procedure TFTipos_Detalles_Grupo.CancelarExecute(Sender: TObject);
begin
  Close
end;

procedure TFTipos_Detalles_Grupo.DeduccionesExecute(Sender: TObject);
  Var
    I : Integer;
begin
  ModuloNomina.tDeducciones.Open;
  Application.CreateForm(TFSelect_Deducciones_Pagos,FSelect_Deducciones_Pagos);
  FSelect_Deducciones_Pagos.Detalles.DataSource := ModuloNomina.dDeducciones;
  FSelect_Deducciones_Pagos.ShowModal;
  If FSelect_Deducciones_Pagos.ModalResult = MrOk Then
    For I := 0 To FSelect_Deducciones_Pagos.Detalles.SelectedList.Count - 1 Do
      Begin
        ModuloNomina.tDeducciones.GotoBookmark(FSelect_Deducciones_Pagos.Detalles.SelectedList.Items[I]);
        Case _DetailCall Of
          1 : Begin
                If Not ModuloNomina.tDetalle_Grupo_Nomina.Locate('Tipo;Numero_Deducion_Pago',VarArrayOf(['Deducción',ModuloNomina.tDeduccionesNumero.Value]),[]) Then
                  Begin
                    ModuloNomina.tDetalle_Grupo_Nomina.Append;
                    ModuloNomina.tDetalle_Grupo_NominaTipo.Value := 'Deducción';
                    ModuloNomina.tDetalle_Grupo_NominaDescripcion.Value := ModuloNomina.tDeduccionesDescripcion.Value;
                    ModuloNomina.tDetalle_Grupo_NominaNumero_Deducion_Pago.Value := ModuloNomina.tDeduccionesNumero.Value;
                    ModuloNomina.tDetalle_Grupo_Nomina.Post
                  End // If
              End;
          2 : Begin
                If Not ModuloNomina.tDetalle_Empleado.Locate('Tipo;Numero',VarArrayOf(['Deducción',ModuloNomina.tDeduccionesNumero.Value]),[]) Then
                  Begin
                    ModuloNomina.tDetalle_Empleado.Append;
                    ModuloNomina.tDetalle_EmpleadoTipo.Value := 'Deducción';
                    ModuloNomina.tDetalle_EmpleadoDescripcion.Value := ModuloNomina.tDeduccionesDescripcion.Value;
                    ModuloNomina.tDetalle_EmpleadoNumero.Value := ModuloNomina.tDeduccionesNumero.Value;
                    ModuloNomina.tDetalle_EmpleadoTipo_Aplicacion.Value := ModuloNomina.tDeduccionesTipo.Value;
                    ModuloNomina.tDetalle_EmpleadoMonto.Value := ModuloNomina.tDeduccionesMonto.Value;
                    ModuloNomina.tDetalle_EmpleadoDeducir_De.Value := ModuloNomina.tDeduccionesDeducir_De.Value;
                    ModuloNomina.tDetalle_EmpleadoAplicable_A.Value := ModuloNomina.tDeduccionesAplicable_A.Value;
                    ModuloNomina.tDetalle_EmpleadoRango_Inicial.Value := ModuloNomina.tDeduccionesRango_Inicial.Value;
                    ModuloNomina.tDetalle_EmpleadoRango_Final.Value := ModuloNomina.tDeduccionesRango_Final.Value;
                    ModuloNomina.tDetalle_EmpleadoUsuario.Value := _CurrentUser;
                    ModuloNomina.tDetalle_Empleado.Post
                  End // If
              End;
        End {Case}
      End;
  FSelect_Deducciones_Pagos.Free;
  Close
end;

procedure TFTipos_Detalles_Grupo.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Configuracion de la Pantalla}
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
    End
    {If _Load_Create}
end;

procedure TFTipos_Detalles_Grupo.Pagos_IncentivosExecute(Sender: TObject);
  Var
    I : Integer;
begin
  ModuloNomina.tPagos_Incentivos.Open;
  Application.CreateForm(TFSelect_Deducciones_Pagos,FSelect_Deducciones_Pagos);
  FSelect_Deducciones_Pagos.Detalles.DataSource := ModuloNomina.dPagos_Incentivos;
  FSelect_Deducciones_Pagos.ShowModal;
  If FSelect_Deducciones_Pagos.ModalResult = MrOk Then
    For I := 0 To FSelect_Deducciones_Pagos.Detalles.SelectedList.Count - 1 Do
      Begin
        ModuloNomina.tPagos_Incentivos.GotoBookmark(FSelect_Deducciones_Pagos.Detalles.SelectedList.Items[I]);
            Case _DetailCall Of
              1 : Begin
                    If Not ModuloNomina.tDetalle_Grupo_Nomina.Locate('Tipo;Numero_Deducion_Pago',VarArrayOf(['Pago/Incentivo',ModuloNomina.tPagos_IncentivosNumero.Value]),[]) Then
                      Begin
                        ModuloNomina.tDetalle_Grupo_Nomina.Append;
                        ModuloNomina.tDetalle_Grupo_NominaTipo.Value := 'Pago/Incentivo';
                        ModuloNomina.tDetalle_Grupo_NominaDescripcion.Value := ModuloNomina.tPagos_IncentivosDescripcion.Value;
                        ModuloNomina.tDetalle_Grupo_NominaNumero_Deducion_Pago.Value := ModuloNomina.tPagos_IncentivosNumero.Value;
                        ModuloNomina.tDetalle_Grupo_Nomina.Post
                      End
                  End;
              2 : Begin
                    If Not ModuloNomina.tDetalle_Empleado.Locate('Tipo;Numero',VarArrayOf(['Pago/Incentivo',ModuloNomina.tPagos_IncentivosNumero.Value]),[]) Then
                      Begin
                        ModuloNomina.tDetalle_Empleado.Append;
                        ModuloNomina.tDetalle_EmpleadoTipo.Value := 'Pago/Incentivo';
                        ModuloNomina.tDetalle_EmpleadoDescripcion.Value := ModuloNomina.tPagos_IncentivosDescripcion.Value;
                        ModuloNomina.tDetalle_EmpleadoNumero.Value := ModuloNomina.tPagos_IncentivosNumero.Value;
                        ModuloNomina.tDetalle_EmpleadoTipo_Aplicacion.Value := ModuloNomina.tPagos_IncentivosTipo.Value;
                        ModuloNomina.tDetalle_EmpleadoMonto.Value := ModuloNomina.tPagos_IncentivosMonto.Value;
                        ModuloNomina.tDetalle_EmpleadoDeducir_De.Value := '-';
                        ModuloNomina.tDetalle_EmpleadoAplicable_A.Value := ModuloNomina.tPagos_IncentivosAplicar_A.Value;
                        ModuloNomina.tDetalle_EmpleadoRango_Inicial.Value := ModuloNomina.tPagos_IncentivosRango_Inicial.Value;
                        ModuloNomina.tDetalle_EmpleadoRango_Final.Value := ModuloNomina.tPagos_IncentivosRango_Final.Value;
                        ModuloNomina.tDetalle_EmpleadoUsuario.Value := _CurrentUser;
                        ModuloNomina.tDetalle_Empleado.Post
                      End
                  End
            End {Case}
      End;
  FSelect_Deducciones_Pagos.Free;
  Close
end;

Initialization
  RegisterClass(TFTipos_Detalles_Grupo);

end.
