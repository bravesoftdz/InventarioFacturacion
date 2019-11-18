unit Productos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ActnColorMaps, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, MSNPopUp, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, OoMisc, AdPort, ppCtrls,
  ppPrnabl, ppClass, ppBarCod, ppDB, ppCache, ppBands, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, IniFiles, TeEngine, Series, TeeProcs, Chart,
  DbChart, wwclearbuttongroup, wwradiogroup;

type
  TFProductos = class(TForm)
    Label6: TLabel;
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Eliminar: TAction;
    Modificar_Codigo: TAction;
    Productos_Similares: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    Datos_Producto: TAdvPageControl;
    DatosGenerales: TAdvTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Barra: TDBEdit;
    Referencia: TDBEdit;
    Minimo: TDBEdit;
    Reorder: TDBEdit;
    Cuenta_Contable: TDBEdit;
    Datos_Compra: TAdvPageControl;
    AdvTabSheet1: TAdvTabSheet;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit22: TDBEdit;
    Datos_Venta: TAdvPageControl;
    AdvTabSheet2: TAdvTabSheet;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Unidades_Medida_Venta: TDBEdit;
    Precio_Detalle_Contado: TDBEdit;
    Precio_Detalle_Credito: TDBEdit;
    Precio_Por_Minimo: TDBEdit;
    Label37: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Valor_Beneficio_Contado: TDBEdit;
    Valor_Beneficio_Credito: TDBEdit;
    AdvPageControl1: TAdvPageControl;
    Botones: TAdvTabSheet;
    ActionToolBar1: TActionToolBar;
    Barra_Igual_Codigo: TAction;
    SpeedButton1: TSpeedButton;
    Codigo: TEdit;
    Descuento: TDBCheckBox;
    Comision: TDBCheckBox;
    Impuesto: TDBCheckBox;
    Serie: TDBCheckBox;
    Vencimiento: TDBCheckBox;
    Label3: TLabel;
    Label38: TLabel;
    Tipo_Inventario: TwwDBComboBox;
    Ubicacion: TwwDBComboBox;
    Presentacion: TwwDBComboBox;
    Metodo_Costo: TwwDBComboBox;
    Medida_Compra: TwwDBComboBox;
    Medida_Venta: TwwDBComboBox;
    Tipo_Beneficio: TwwDBComboBox;
    Descripcion: TwwDBComboBox;
    Departamento: TwwDBLookupCombo;
    Fabricante: TwwDBLookupCombo;
    Proveedor: TwwDBLookupCombo;
    Status: TwwDBLookupCombo;
    Fecha: TwwDBDateTimePicker;
    Categoria: TwwDBLookupCombo;
    TipoProducto: TwwDBLookupCombo;
    Lectura_Codigo: TwwDBComboBox;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Anadir_Categoria: TAction;
    Anadir_Tipo_Producto: TAction;
    Anadir_Departamento: TAction;
    Anadir_Status: TAction;
    Anadir_Fabricante: TAction;
    Anadir_Proveedor: TAction;
    Distribucion_Vencimientos: TAction;
    Imprimir_Etiquetas: TAction;
    Configuracion_Labels: TAction;
    Componentes: TAction;
    Editar_Existencia_Inicial: TAction;
    Movimiento_Inventario: TAction;
    Label39: TLabel;
    Precio_Por_Mayor_Contado: TDBEdit;
    Label40: TLabel;
    Precio_Por_Mayor_Credito: TDBEdit;
    Existensia: TDBText;
    Label41: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure Barra_Igual_CodigoExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CodigoExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EliminarExecute(Sender: TObject);
    procedure SerialPortTriggerAvail(CP: TObject; Count: Word);
    procedure BuscarExecute(Sender: TObject);
    procedure Anadir_CategoriaExecute(Sender: TObject);
    procedure Anadir_Tipo_ProductoExecute(Sender: TObject);
    procedure Anadir_DepartamentoExecute(Sender: TObject);
    procedure Anadir_StatusExecute(Sender: TObject);
    procedure Anadir_FabricanteExecute(Sender: TObject);
    procedure Anadir_ProveedorExecute(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Distribucion_VencimientosExecute(Sender: TObject);
    procedure Imprimir_EtiquetasExecute(Sender: TObject);
    procedure Configuracion_LabelsExecute(Sender: TObject);
    procedure ComponentesExecute(Sender: TObject);
    procedure Editar_Existencia_InicialExecute(Sender: TObject);
    procedure Movimiento_InventarioExecute(Sender: TObject);
  private
    {Private declarations }
    _CanClose : Boolean;
  public
    { Public declarations }
  end;

var
  FProductos : TFProductos;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, SrchDlg, Categorias, Departamentos,
  Fabricantes, Proveedores, Tipos_Productos, Status, Distrbuir_Vencimiento,
  CnfgForms, Reports_Forms, Componentes, Existencia_Productos;

{$R *.dfm}

procedure TFProductos.FormCreate(Sender: TObject);
  Var
    I : Integer;
begin

  Self.Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

  {Activar Los Permisos del Usuario}
  ActivateOptions(Sender,_CurrentLevel,Modulo.tAccesos);

  {Asigna a los Botones Los ShortCuts Del Menu y Action Lists}
  For I := 0 To (Self.ComponentCount - 1) Do
    Begin
      If (Self.Components[I] Is TAdvPageControl) Then
         (Self.Components[I] As TAdvPageControl).TabBackGroundColor := Color;
    End;

  {Abrir las Tablas Requeridas}
  _CanClose := Not (Modulo.tProductos.Active);

  Modulo.tDepartamentos.Open;
  Modulo.tCategoria.Open;
  Modulo.tTipos_Productos.Open;
  Modulo.tStatus.Open;
  Modulo.tProveedores.Open;
  Modulo.tFabricante.Open;
  Modulo.tProductos.Open;

  {Insertar Registro en Blanco}
  Nuevo.Execute
end;

procedure TFProductos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {Cerrar las Tablas Requeridas}
  If _CanClose Then
    Begin
      Modulo.tProductos.Close;
      Modulo.tDepartamentos.Close;
      Modulo.tCategoria.Close;
      Modulo.tTipos_Productos.Close;
      Modulo.tStatus.Close;
      Modulo.tProveedores.Close;
      Modulo.tFabricante.Close
    End
end;

procedure TFProductos.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFProductos.NuevoExecute(Sender: TObject);
begin
  Modulo.tProductos.Params.ParamByName('Codigo').Value := '';
  If Modulo.tProductos.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
  Modulo.tProductos.Cancel;
  Modulo.tProductos.Append;
  
  Codigo.Text := '';
  If Self.Visible Then Codigo.SetFocus
end;

procedure TFProductos.GuardarExecute(Sender: TObject);
begin
  If Modulo.tProductos.State In DsEditModes Then
    Modulo.tProductos.Post;

  If Modulo.tProductos.ChangeCount > 0 Then
    Modulo.tProductos.ApplyUpdates(0);

  Modulo.tProductos.Refresh;

  Modulo.Mensajes.Text := _DatosGuardados;
  Modulo.Mensajes.ShowPopUp;

  Codigo.Text := Modulo.tProductosCodigo.Text
{  If (Sender Is TAction) Then
    If (Sender As TAction).Name = Guardar.Name Then
     Nuevo.Execute}
end;

procedure TFProductos.Barra_Igual_CodigoExecute(Sender: TObject);
begin
  Descripcion.SetFocus;

  If Not (Modulo.tProductos.State In DsEditModes) Then Modulo.tProductos.Edit;
    Modulo.tProductosBarra.Value := Modulo.tProductosCodigo.Value;
end;

procedure TFProductos.SpeedButton1Click(Sender: TObject);
begin
  Barra_Igual_Codigo.Execute
end;

procedure TFProductos.CodigoExit(Sender: TObject);
begin
  If Trim(Codigo.Text) = '' Then
    Begin
      Modulo.tProductos.Params.ParamByName('Proceso').AsString := Gen_ProcessNumber(_CurrentUser);
      If Modulo.tProductos.State in DsEditModes Then
         Modulo.tProductosProceso.AsString := Modulo.tProductos.Params.ParamByName('Proceso').AsString;
      Exit
    end;

  Modulo.tProductos.Cancel;
  Modulo.tProductos.Params.ParamByName('Codigo').AsString := Trim(Codigo.Text);
  Modulo.tProductos.Refresh;

  If Modulo.tProductos.RecordCount <= 0 Then
    Begin
      Modulo.tProductos.Append;
      Modulo.tProductosCodigo.Value := Trim(Codigo.Text);
      Modulo.tProductosProceso.AsString := Gen_ProcessNumber(_CurrentUser)
    End;
  Editar_Existencia_Inicial.Enabled := Modulo.tProductosEditar_Existencia.Value
end;

procedure TFProductos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  Found : TWinControl;
begin
  Case Key Of
    VK_HOME    : Codigo.SetFocus;

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
      End;

    VK_F3      :
      Begin
        If ActiveControl.Name = Departamento.Name Then Anadir_Departamento.Execute;
        If ActiveControl.Name = Proveedor.Name    Then Anadir_Proveedor.Execute;
        If ActiveControl.Name = Categoria.Name    Then Anadir_Categoria.Execute;
        If ActiveControl.Name = TipoProducto.Name Then Anadir_Tipo_Producto.Execute;
        If ActiveControl.Name = Fabricante.Name   Then Anadir_Fabricante.Execute;
        If ActiveControl.Name = Status.Name       Then Anadir_Status.Execute;
//        If ActiveControl.Name = DBEdit32.Name     Then Distribucion_Vencimientos.Execute;
      End
  End {Case}
end;

procedure TFProductos.EliminarExecute(Sender: TObject);
begin
  If Modulo.tProductosSecuencia.Value > 0 Then
    Begin
      If Application.MessageBox(PChar(_ConfirmarEliminar),
                                PChar(Eliminar.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
      Modulo.tProductos.Delete
    End;

  If Modulo.tProductos.ChangeCount > 0 Then
    Modulo.tProductos.ApplyUpdates(0);

  Modulo.tProductos.Refresh;
  Nuevo.Execute;

  Modulo.Mensajes.Text := _DatosEliminados;
  Modulo.Mensajes.ShowPopUp
end;

procedure TFProductos.SerialPortTriggerAvail(CP: TObject; Count: Word);
var
  I : Word;
  C : Char;
  S : String;
begin
  S := '';

  For I := 1 To Count Do
    Begin
      C := Modulo.SerialPort.GetChar;
    Case C of
      #0..#31 : {Don't display} ;
    Else S := S + C;
    end;   {Case}
  end;
  Buffer := Buffer + S;

  If Count < 8 Then
    Begin
      Nuevo.Execute;
      Codigo.Text := Buffer;
      Buffer := ''
    End
end;

procedure TFProductos.BuscarExecute(Sender: TObject);
begin
    Try
      Application.CreateForm(TDlgSearch,DlgSearch);
      DlgSearch.OpenDlg('Productos',Modulo.tProductosDescripcion.FieldName,'A',wsMaximized);
      If DlgSearch.ModalResult = MrOk Then
        Begin
          Codigo.Text :=  Trim(DlgSearch.SrchCds.FieldByName('Codigo').AsString);
          CodigoExit(Sender)
        End
    Finally
      DlgSearch.CloseDlg
    End {Try}
end;

procedure TFProductos.Anadir_CategoriaExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosCategoria.Value;
  OpenForm(TFCategorias,FCategorias);
  Modulo.tProductosCategoria.Value := _LastCode
end;

procedure TFProductos.Anadir_Tipo_ProductoExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosTipo_Producto.Value;
  OpenForm(TFTipos_Productos,FTipos_Productos);
  Modulo.tProductosTipo_Producto.Value := _LastCode
end;

procedure TFProductos.Anadir_DepartamentoExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosDepartamento.Value;
  OpenForm(TFDepartamentos,FDepartamentos);
  Modulo.tProductosDepartamento.Value := _LastCode
end;

procedure TFProductos.Anadir_StatusExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosStatus.Value;
  OpenForm(TFStatus,FStatus);
  Modulo.tProductosStatus.Value := _LastCode
end;

procedure TFProductos.Anadir_FabricanteExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosFabricante.Value;
  OpenForm(TFFabricantes,FFabricantes);
  Modulo.tProductosFabricante.Value := _LastCode
end;

procedure TFProductos.Anadir_ProveedorExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosProveedor_Principal.Value;
  OpenForm(TFProveedores,FProveedores);
  Modulo.tProductosProveedor_Principal.Value := _LastCode
end;

procedure TFProductos.SpeedButton2Click(Sender: TObject);
begin
  Anadir_Departamento.Execute
end;

procedure TFProductos.SpeedButton3Click(Sender: TObject);
begin
  Anadir_Proveedor.Execute
end;

procedure TFProductos.SpeedButton4Click(Sender: TObject);
begin
  Anadir_Categoria.Execute
end;

procedure TFProductos.SpeedButton5Click(Sender: TObject);
begin
  Anadir_Tipo_Producto.Execute
end;

procedure TFProductos.SpeedButton6Click(Sender: TObject);
begin
  Anadir_Fabricante.Execute
end;

procedure TFProductos.SpeedButton7Click(Sender: TObject);
begin
  Anadir_Status.Execute
end;

procedure TFProductos.SpeedButton8Click(Sender: TObject);
begin
  Distribucion_Vencimientos.Execute
end;

procedure TFProductos.Distribucion_VencimientosExecute(Sender: TObject);
begin
//  DBEdit33.SetFocus;
  If Not(Modulo.tProductos.State In DsEditModes) And
     (Modulo.tProductosRequiere_Fecha_Vencimiento.Value <> True) Then
    Begin
      Modulo.tProductos.Edit;
      Modulo.tProductosRequiere_Fecha_Vencimiento.Value := True
    End;
  OpenForm(TFVencimientos,FVencimientos);
end;

procedure TFProductos.Imprimir_EtiquetasExecute(Sender: TObject);
  Const
    DeviceTypes  : Array [False..True] Of String = ('Printer','Screen');

begin
  {Guardar antes de Imprimir}
  GuardarExecute(Imprimir_Etiquetas);

  // Configuracion de la Etiqueta
  RegInfo.CloseKey;
  RegInfo.OpenKey(_LabelProductosKey,False);

  With ReportsAndForms.Labels Do
    Begin
      Template.FileName := RegInfo.ReadString(_TemplateFileName);

      If (Trim(Template.FileName) <> _NoneStr) And (Trim(Template.FileName) <> '') Then
        Template.LoadFromFile;

      DeviceType                := DeviceTypes[RegInfo.ReadInteger(_PreviewForm) = 1];
      ShowPrintDialog           := True;
      PrinterSetup.Copies       := RegInfo.ReadInteger(_PrintCopies);
      PrinterSetup.PaperName    := RegInfo.ReadString(_PaperName);
      PrinterSetup.PaperHeight  := RegInfo.ReadFloat(_PaperHeight);
      PrinterSetup.PaperWidth   := RegInfo.ReadFloat(_PaperWidth);
      PrinterSetup.PrinterName  := RegInfo.ReadString(_PrinterName);
      PrinterSetup.MarginBottom := RegInfo.ReadFloat(_MarginBottom);
      PrinterSetup.MarginTop    := RegInfo.ReadFloat(_MarginTop);
      PrinterSetup.MarginLeft   := RegInfo.ReadFloat(_MarginLeft);
      PrinterSetup.MarginRight  := RegInfo.ReadFloat(_MarginRight);

      ReportsAndForms._Seccion  := _LabelProductosKey;

      DataPipeline := ReportsAndForms.PipeProductos;
      ReportsAndForms.Cod_Generado.DataPipeline := ReportsAndForms.PipeProductos;
      ReportsAndForms.Descripcion_Etiqueta.DataPipeline := ReportsAndForms.PipeProductos;

      PrinterSetup.Copies := Modulo.tProductosExistencia.AsInteger;
      Modulo.tFabricante.Locate(Modulo.tFabricanteNumero.FieldName,
                                    Modulo.tDetalles_CompraFabricante.Value,
                                    []);
      ReportsAndForms.Labels.PrintDialog.Caption := Format('%s (%n)',[Modulo.tProductosDescripcion.Value,Modulo.tProductosExistencia.Value]);

      Modulo.Mensajes.Text := _PrintCopiesReminder;
      Modulo.Mensajes.ShowPopUp;

      Print;
    End // With
end;

procedure TFProductos.Configuracion_LabelsExecute(Sender: TObject);
begin
  Application.CreateForm(TFConfigForms,FConfigForms);
  FConfigForms._Seccion := _LabelProductosKey;
  FConfigForms.LoadValues;
  FConfigForms.Caption := Configuracion_Labels.Caption;
  FConfigForms.ShowModal;
  FConfigForms.Free
end;

procedure TFProductos.ComponentesExecute(Sender: TObject);
begin
  If Trim(UpperCase(Modulo.tProductosTipo_Inventario.Value)) = 'COMPUESTO' Then
    OpenForm(TFComponentes,FComponentes)
end;

procedure TFProductos.Editar_Existencia_InicialExecute(Sender: TObject);
begin
  {Guardar antes de Editar}
  GuardarExecute(Editar_Existencia_Inicial);
  OpenForm(TFExistencia_Inicial,FExistencia_Inicial);
  Modulo.tProductos.Refresh
end;

procedure TFProductos.Movimiento_InventarioExecute(Sender: TObject);
begin
  ReportsAndForms.Movimientos.Chart.SeriesList[0].Clear;
  ReportsAndForms.Movimientos.Chart.SeriesList[0].Add(Modulo.tProductosCompradas.Value,Modulo.tProductosCompradas.FieldName,ReportsAndForms.Movimientos.Chart.SeriesList[0].Color);

  ReportsAndForms.Movimientos.Chart.SeriesList[1].Clear;
  ReportsAndForms.Movimientos.Chart.SeriesList[1].Add(Modulo.tProductosVendidas.Value,Modulo.tProductosVendidas.FieldName,ReportsAndForms.Movimientos.Chart.SeriesList[1].Color);

  ReportsAndForms.Movimientos.Chart.SeriesList[2].Clear;
  ReportsAndForms.Movimientos.Chart.SeriesList[2].Add(Modulo.tProductosDespachadas.Value,Modulo.tProductosDespachadas.FieldName,ReportsAndForms.Movimientos.Chart.SeriesList[2].Color);

  ReportsAndForms.Movimientos.Chart.SeriesList[3].Clear;
  ReportsAndForms.Movimientos.Chart.SeriesList[3].Add(Modulo.tProductosEnTransito.Value,Modulo.tProductosEnTransito.FieldName,ReportsAndForms.Movimientos.Chart.SeriesList[3].Color);

  ReportsAndForms.Movimientos.Chart.SeriesList[4].Clear;
  ReportsAndForms.Movimientos.Chart.SeriesList[4].Add(Modulo.tProductosEnPedidos.Value,Modulo.tProductosEnPedidos.FieldName,ReportsAndForms.Movimientos.Chart.SeriesList[4].Color);

  ReportsAndForms.FormEstadisticaProducto.Print;
end;

end.
