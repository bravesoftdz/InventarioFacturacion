unit Opciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  ActnList, XPStyleActnCtrls, ActnMan, ActnColorMaps, ToolWin, ActnCtrls;

type
  TFOpciones = class(TForm)
    Detalle_Opciones: TwwDBGrid;
    Opciones: TActionManager;
    Salir: TAction;
    Cargar_Opciones: TAction;
    Label1: TLabel;
    Eliminar_Opciones: TAction;
    Atb_Botones: TActionToolBar;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Cargar_OpcionesExecute(Sender: TObject);
    Procedure AnadirForms(InstanceClass: tComponentClass; Var Reference; Create : Boolean);
    procedure SalirExecute(Sender: TObject);
    procedure Eliminar_OpcionesExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOpciones: TFOpciones;

implementation

uses Utilidades, Registry, DataModulo, MainForm, Bancos, Categorias,
  CnfgForms, Componentes, Compra_Productos, ConfigForm, Criterio_Etiquetas,
  Criterio_Vencimientos, Departamentos, DetalledePagos, DialogoDeptos,
  Distrbuir_Vencimiento, DlgFechas, dotmatrx, ErrorHandle, Fabricantes,
  Facturacion, Formas_Pago, frmClientes, frmProveedores, PagosFacturas,
  PrintShow, Productos, Proveedores, Reportar_Productos, Reports_Forms,
  Salidas_Inventario, Seleccionar_Departamento, Seleccionar_Usuario,
  SrchDlg, Status, Terminos, Tipos_Productos, Venta_Caja, Niveles,
  Usuarios;

{$R *.dfm}

procedure TFOpciones.FormCreate(Sender: TObject);
begin
  {Color de la Pantalla}
  Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

  {Activar Los Permisos del Usuario}
//  ActivateOptions(Sender,_CurrentLevel,Modulo.tAccesos);

  Modulo.tOpciones.Open
end;

procedure TFOpciones.FormKeyPress(Sender: TObject; var Key: Char);
 Var
  Found : TWinControl;
begin
  If Key = Chr(VK_RETURN) Then
    Begin
      Found := FindNextControl(ActiveControl,True, True, False);
      Found.SetFocus
    End
end;

Procedure TFOpciones.AnadirForms(InstanceClass: tComponentClass; Var Reference; Create : Boolean);
  Var
    I : Integer;
  Begin
      I := 0;
      If Create Then Application.CreateForm(InstanceClass,Reference);
      Try
        For I := 0 To (Tform(Reference).ComponentCount - 1) Do
          Begin
            If Not(Tform(Reference).Components[I] Is TLabel) And
               Not(Tform(Reference).Components[I] Is TActionManager) And
               Not(Tform(Reference).Components[I] Is TActionManager) And
               Not(Tform(Reference).Components[I] Is TXPColorMap) Then
              Begin
                If Not Modulo.tOpciones.Locate('Form;Opcion',VarArrayOf([Tform(Reference).Name,Tform(Reference).Components[I].Name]),[]) Then
                  Modulo.tOpciones.Append
                Else
                  Modulo.tOpciones.Edit;
                Modulo.tOpcionesForm.Value := Tform(Reference).Name;
                Modulo.tOpcionesOpcion.Value := Tform(Reference).Components[I].Name;
                Modulo.tOpcionesDescripcion.Value := Tform(Reference).Caption;
                Modulo.tOpcionesTipo.Value := Tform(Reference).Components[I].ClassName;
                Modulo.tOpciones.Post;
              End
          End
      Except
        On E:Exception Do Mensaje(Format('Error Agregando %s %s',[Tform(Reference).Components[I].Name,E.Message]));
      End;{Try}
      If Modulo.tOpciones.ChangeCount > 0 Then
        Modulo.tOpciones.ApplyUpdates(0);
      If Create Then Tform(Reference).Free
  End;

procedure TFOpciones.Cargar_OpcionesExecute(Sender: TObject);
begin
  AnadirForms(TFMainMenu,FMainMenu,False);
  AnadirForms(TFBancos,FBancos,True);
  AnadirForms(TFCategorias,FCategorias,True);
  AnadirForms(TFComponentes,FComponentes,True);
  AnadirForms(TFCompra_Productos,FCompra_Productos,True);
  AnadirForms(TFConfigForms,FConfigForms,True);
  AnadirForms(TFCriterioRepProductos,FCriterioRepProductos,True);
  AnadirForms(TFCriterio_Etiquetas,FCriterio_Etiquetas,True);
  AnadirForms(TFCriterio_Vencimientos,FCriterio_Vencimientos,True);
  AnadirForms(TFDepartamentos,FDepartamentos,True);
  AnadirForms(TFDetallePagos,FDetallePagos,True);
  AnadirForms(TFFabricantes,FFabricantes,True);
  AnadirForms(TFFacturacion,FFacturacion,True);
  AnadirForms(TFMainConfig,FMainConfig,True);
  AnadirForms(TFMetodos,FMetodos,True);
  AnadirForms(TFNiveles,FNiveles,True);
  AnadirForms(TFOpciones,FOpciones,False);
  AnadirForms(TFPago_Factura,FPago_Factura,True);
  AnadirForms(TFProductos,FProductos,True);
  AnadirForms(TFProveedores,FProveedores,True);
  AnadirForms(TFSalidas_Inventario,FSalidas_Inventario,True);
  AnadirForms(TFSeleccion_Departamentos,FSeleccion_Departamentos,True);
  AnadirForms(TFSeleccion_Productos,FSeleccion_Productos,True);
  AnadirForms(TFSeleccion_Usuarios,FSeleccion_Usuarios,True);
  AnadirForms(TFStatus,FStatus,True);
  AnadirForms(TFTerminos,FTerminos,True);
  AnadirForms(TFTipos_Productos,FTipos_Productos,True);
  AnadirForms(TFVencimientos,FVencimientos,True);
  AnadirForms(TFUsuarios,FUsuarios,True);
  AnadirForms(TFVentas_Caja,FVentas_Caja,True);
  Modulo.tOpciones.Refresh;
  Modulo.tOpciones.First
end;

procedure TFOpciones.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFOpciones.Eliminar_OpcionesExecute(Sender: TObject);
begin
  Try
    Modulo.tOpciones.First;
    Modulo.tOpciones.DisableControls;
    While Not Modulo.tOpciones.EOF Do Modulo.tOpciones.Delete;
    If Modulo.tOpciones.ChangeCount > 0 Then Modulo.tOpciones.ApplyUpdates(0);
    Modulo.tOpciones.Refresh
  Finally
    Modulo.tOpciones.EnableControls
  End {Try}
end;

procedure TFOpciones.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Modulo.tOpciones.Close
end;

end.
