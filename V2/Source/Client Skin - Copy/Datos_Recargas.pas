unit Datos_Recargas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, ppCtrls,
  ppPrnabl, ppClass, ppBarCod, ppDB, ppCache, ppBands, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, IniFiles, TeEngine, Series, TeeProcs, Chart,
  DbChart, wwclearbuttongroup, wwradiogroup, RegKeys, Grids, DBGrids;

type
  TFDatos_Recargas = class(TForm)
    Label6: TLabel;
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Eliminar: TAction;
    Modificar_Codigo: TAction;
    Productos_Similares: TAction;
    Datos_Producto: TAdvPageControl;
    pg_Datos_Producto: TAdvTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Barra: TDBEdit;
    Referencia: TDBEdit;
    Datos_Compra: TAdvPageControl;
    pg_Costos: TAdvTabSheet;
    Label19: TLabel;
    Label20: TLabel;
    Monto_Beneficio: TDBEdit;
    Porciento_Beneficio: TDBEdit;
    Label37: TLabel;
    Panel_Botones: TAdvPageControl;
    Pg_Botones: TAdvTabSheet;
    Botones: TActionToolBar;
    Barra_Igual_Codigo: TAction;
    bt_Codigo_Igual_Barra: TSpeedButton;
    Codigo: TEdit;
    Descripcion: TwwDBComboBox;
    Status: TwwDBLookupCombo;
    Fecha: TwwDBDateTimePicker;
    Categoria: TwwDBLookupCombo;
    bt_Anadir_Categoria: TSpeedButton;
    bt_Anadir_Status: TSpeedButton;
    Anadir_Categoria: TAction;
    Anadir_Tipo_Producto: TAction;
    Anadir_Departamento: TAction;
    Anadir_Status: TAction;
    Anadir_Fabricante: TAction;
    Anadir_Proveedor: TAction;
    Distribucion_Vencimientos: TAction;
    Imprimir_Etiquetas: TAction;
    Configuracion: TAction;
    Componentes: TAction;
    Editar_Existencia_Inicial: TAction;
    Movimiento_Inventario: TAction;
    Barra_Menu: TActionMainMenuBar;
    Agregar_Foto: TAction;
    Opciones_Miscelaneas: TAction;
    Precio: TDBEdit;
    lPrecio_Detalle_Contado: TLabel;
    lPrecio_Minimo: TLabel;
    Comision_Vendedor: TDBEdit;
    Label3: TLabel;
    Porciento_Vendedor: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure Barra_Igual_CodigoExecute(Sender: TObject);
    procedure bt_Codigo_Igual_BarraClick(Sender: TObject);
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
    procedure bt_Anadir_DepartamentoClick(Sender: TObject);
    procedure bt_Anadir_ProveedorClick(Sender: TObject);
    procedure bt_Anadir_CategoriaClick(Sender: TObject);
    procedure bt_Anadir_Tipo_ProductoClick(Sender: TObject);
    procedure bt_Anadir_FabricanteClick(Sender: TObject);
    procedure bt_Anadir_StatusClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Distribucion_VencimientosExecute(Sender: TObject);
    procedure Imprimir_EtiquetasExecute(Sender: TObject);
    procedure ConfiguracionExecute(Sender: TObject);
    procedure ComponentesExecute(Sender: TObject);
    procedure Editar_Existencia_InicialExecute(Sender: TObject);
    procedure Movimiento_InventarioExecute(Sender: TObject);
    procedure Modificar_CodigoExecute(Sender: TObject);
    procedure Productos_SimilaresExecute(Sender: TObject);
    procedure Porciento_BeneficioChange(Sender: TObject);
    procedure Porciento_BeneficioExit(Sender: TObject);
  private
    {Private declarations }
    _CanClose : Boolean;
  public
    { Public declarations }
  end;

var
  FDatos_Recargas : TFDatos_Recargas;
  Buffer     : String = '';
  _Rec_Cat   : Integer;
  _Changed   : Boolean = False;

implementation

uses DataModulo, Utilidades, SrchDlg, Categorias, Departamentos,
  Fabricantes, Proveedores, Tipos_Productos, Status, Distrbuir_Vencimiento,
  CnfgForms, Reports_Forms, Componentes, Existencia_Productos, Generales,
  Productos_Similares, PrintLabels, opMisc_Productos;

{$R *.dfm}

procedure TFDatos_Recargas.FormCreate(Sender: TObject);
  Var
    I : Integer;
begin
  If _Load_Create Then
    Begin
      Self.Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

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

      {Abrir las Tablas Requeridas}
      _CanClose := Not (Modulo.tProductos.Active);

      Modulo.tListadoProductos.Open;
      Modulo.tDepartamentos.Open;
      Modulo.tCategoria.Open;
      Modulo.tTipos_Productos.Open;
      Modulo.tStatus.Open;
      Modulo.tProveedores.Open;
      Modulo.tFabricante.Open;
      Modulo.tProductos.Open;
      Modulo.tProductos.Cancel;
      Modulo.tProductos.CancelUpdates;

      RegInfo.CloseKey;
      RegInfo.OpenKey(_RecargasKey,true);
      _Rec_Cat := 1;
      Try
       _Rec_Cat := RegInfo.ReadInteger('Rec_Cat');
      Except End; // Try

      {Insertar Registro en Blanco}
      Nuevo.Execute
    End
    {If _Load_Create}
end;

procedure TFDatos_Recargas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {Cerrar las Tablas Requeridas}

  Modulo.tListadoProductos.CancelUpdates;
  Modulo.tProductos.CancelUpdates;
  Modulo.tDepartamentos.CancelUpdates;
  Modulo.tCategoria.CancelUpdates;
  Modulo.tTipos_Productos.CancelUpdates;
  Modulo.tStatus.CancelUpdates;
  Modulo.tProveedores.CancelUpdates;
  Modulo.tFabricante.CancelUpdates
end;

procedure TFDatos_Recargas.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFDatos_Recargas.NuevoExecute(Sender: TObject);
begin
  Modulo.tProductos.Params.ParamByName('Codigo').Value := '';
  If Modulo.tProductos.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
  Modulo.tProductos.Cancel;
  Modulo.tProductos.Append;
  Modulo.tProductosTipo_Beneficio.Value := 'Libre';
  Modulo.tProductosCategoria.Value := _Rec_Cat;
  Modulo.tProductosPaga_Comision.Value := True;
  Modulo.tProductosPaga_Impuesto.Value := False;
  Modulo.tProductosAplica_Descuento.Value := False;
  Modulo.tProductosRequiere_Fecha_Vencimiento.Value := False;
  Modulo.tProductosRequiere_Numero_Serie.Value := False;
  Modulo.tProductosMetodo_Calculo_Costo.Value := 'Estandar';
  Modulo.tProductosTipo_Inventario.Value := 'Servicio';

  If Self.Visible And _MoveFocus Then
    Begin
      Codigo.Text := '';
      Codigo.SetFocus
    End
end;

procedure TFDatos_Recargas.Porciento_BeneficioChange(Sender: TObject);
begin
  _Changed := True;
end;

procedure TFDatos_Recargas.Porciento_BeneficioExit(Sender: TObject);
begin
  If _Changed Then
    Begin
      _Changed := False;
      Modulo.tProductosCosto_Standar.Value := (Modulo.tProductosValor_Beneficio_Contado.Value / 100) * Modulo.tProductosPrecio_Venta_Contado.Value;
      Modulo.tProductosPrecio_Venta_Minimo.Value := (Modulo.tProductosValor_Beneficio_Credito.Value / 100) * Modulo.tProductosPrecio_Venta_Contado.Value
    End;
end;

procedure TFDatos_Recargas.Productos_SimilaresExecute(Sender: TObject);
begin
  Try
    Modulo.tListadoProductos.Filter := 'Codigo <> ' + QuotedStr(Trim(Modulo.tProductosCodigo.Value));
    Modulo.tListadoProductos.Filtered := True;
    OpenForm(TFProductos_Similares, FProductos_Similares)
  Finally
    Modulo.tListadoProductos.Filter := '';
    Modulo.tListadoProductos.Filtered := False;
  End;
end;

procedure TFDatos_Recargas.GuardarExecute(Sender: TObject);
begin
  If Modulo.tProductos.State In DsEditModes Then
    Modulo.tProductos.Post;

  If Modulo.tProductos.ChangeCount > 0 Then
    Modulo.tProductos.ApplyUpdates(0);

  Modulo.tProductos.Refresh;

  PopUpMessage(Modulo.Mensajes,_DatosGuardados);

  Codigo.Text := Modulo.tProductosCodigo.Text
end;

procedure TFDatos_Recargas.Barra_Igual_CodigoExecute(Sender: TObject);
begin
  Descripcion.SetFocus;

  If Not (Modulo.tProductos.State In DsEditModes) Then Modulo.tProductos.Edit;
    Modulo.tProductosBarra.Value := Modulo.tProductosCodigo.Value;
end;

procedure TFDatos_Recargas.bt_Codigo_Igual_BarraClick(Sender: TObject);
begin
  Barra_Igual_Codigo.Execute
end;

procedure TFDatos_Recargas.CodigoExit(Sender: TObject);
  Var
    SearchResult : Integer;
begin
  Try
    Modulo.tProductos.AfterRefresh := nil;
    Modulo.tProductos.Cancel;
    Modulo.tProductos.CancelUpdates;

    Modulo.tProductos.Params.ParamByName('Codigo').Clear;
    Modulo.tProductos.Params.ParamByName('Barra').Clear;
    Modulo.tProductos.Params.ParamByName('Secuencia').Clear;
    Modulo.tProductos.Params.ParamByName('Proceso').Clear;
    Modulo.tProductos.Params.ParamByName('Referencia').Clear;
    Modulo.tProductos.Refresh;

    SearchResult := ParamSearchKey(Modulo.tProductos,'Codigo',Codigo.Text);

    If SearchResult = _CodeNotFound Then
      Begin
        _MoveFocus := False;
        NuevoExecute(Sender);
        _MoveFocus := True;

        Modulo.tProductosCodigo.Value := Trim(Codigo.Text);
        Modulo.tProductos.Params.ParamByName('Proceso').AsString := Gen_ProcessNumber(_CurrentUser);
        Modulo.tProductosProceso.AsString := Modulo.tProductos.Params.ParamByName('Proceso').AsString;
        Barra_Igual_Codigo.Execute;

        Application.CreateForm(TFConfigForms,FConfigForms);
      End;
  Finally
    Modulo.tProductos.AfterRefresh := Modulo.tProductosAfterRefresh
  End;
end;

procedure TFDatos_Recargas.FormKeyDown(Sender: TObject; var Key: Word;
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
      End;

    VK_F3      :
      Begin
        If ActiveControl.Name = Categoria.Name    Then Anadir_Categoria.Execute;
        If ActiveControl.Name = Status.Name       Then Anadir_Status.Execute;
//        If ActiveControl.Name = DBEdit32.Name     Then Distribucion_Vencimientos.Execute;
      End
  End {Case}
end;

procedure TFDatos_Recargas.EliminarExecute(Sender: TObject);
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

  PopUpMessage(Modulo.Mensajes,_DatosEliminados);
  Nuevo.Execute;

end;

procedure TFDatos_Recargas.SerialPortTriggerAvail(CP: TObject; Count: Word);
var
  I : Word;
  C : Char;
  S : String;
begin
{  S := '';

  For I := 1 To Count Do
    Begin
      C := Modulo.SerialPort.GetChar;
    Case C of
      #0..#31 : {Don't display} ;
 {   Else S := S + C;
    end;   {Case}
{  end;
  Buffer := Buffer + S;

  If Count < 8 Then
    Begin
      Nuevo.Execute;
      Codigo.Text := Buffer;
      Buffer := ''
    End}
end;

procedure TFDatos_Recargas.BuscarExecute(Sender: TObject);
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

procedure TFDatos_Recargas.Anadir_CategoriaExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosCategoria.Value;
  OpenForm(TFCategorias,FCategorias);
  Modulo.tProductosCategoria.Value := _LastCode
end;

procedure TFDatos_Recargas.Anadir_Tipo_ProductoExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosTipo_Producto.Value;
  OpenForm(TFTipos_Productos,FTipos_Productos);
  Modulo.tProductosTipo_Producto.Value := _LastCode
end;

procedure TFDatos_Recargas.Anadir_DepartamentoExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosDepartamento.Value;
  OpenForm(TFDepartamentos,FDepartamentos);
  Modulo.tProductosDepartamento.Value := _LastCode
end;

procedure TFDatos_Recargas.Anadir_StatusExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosStatus.Value;
  OpenForm(TFStatus,FStatus);
  Modulo.tProductosStatus.Value := _LastCode
end;

procedure TFDatos_Recargas.Anadir_FabricanteExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosFabricante.Value;
  OpenForm(TFFabricantes,FFabricantes);
  Modulo.tProductosFabricante.Value := _LastCode
end;

procedure TFDatos_Recargas.Anadir_ProveedorExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosProveedor_Principal.Value;
  OpenForm(TFProveedores,FProveedores);
  Modulo.tProductosProveedor_Principal.Value := _LastCode
end;

procedure TFDatos_Recargas.bt_Anadir_DepartamentoClick(Sender: TObject);
begin
  Anadir_Departamento.Execute
end;

procedure TFDatos_Recargas.bt_Anadir_ProveedorClick(Sender: TObject);
begin
  Anadir_Proveedor.Execute
end;

procedure TFDatos_Recargas.bt_Anadir_CategoriaClick(Sender: TObject);
begin
  Anadir_Categoria.Execute
end;

procedure TFDatos_Recargas.bt_Anadir_Tipo_ProductoClick(Sender: TObject);
begin
  Anadir_Tipo_Producto.Execute
end;

procedure TFDatos_Recargas.bt_Anadir_FabricanteClick(Sender: TObject);
begin
  Anadir_Fabricante.Execute
end;

procedure TFDatos_Recargas.bt_Anadir_StatusClick(Sender: TObject);
begin
  Anadir_Status.Execute
end;

procedure TFDatos_Recargas.SpeedButton8Click(Sender: TObject);
begin
  Distribucion_Vencimientos.Execute
end;

procedure TFDatos_Recargas.Distribucion_VencimientosExecute(Sender: TObject);
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

procedure TFDatos_Recargas.Imprimir_EtiquetasExecute(Sender: TObject);
  Const
    DeviceTypes  : Array [False..True] Of String = ('Printer','Screen');

begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_RecargasKey,False);
  If Not RegInfo.ReadBool(_Desglosar_Formularios) Then
    Begin
      {Guardar antes de Imprimir}
      GuardarExecute(Imprimir_Etiquetas);
      Application.CreateForm(TFPrintLabels,FPrintLabels);
      FPrintLabels._Seccion := _RecargasKey;
      FPrintLabels.LoadValues;
      FPrintLabels.ShowModal;
      FPrintLabels.Free;
      Exit
    End;

  // Configuracion de la Etiqueta
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

      ReportsAndForms._Seccion  := _RecargasKey;

      DataPipeline := ReportsAndForms.PipeProductos;
{      ReportsAndForms.Codigo_Etiqueta.Caption := GZCode128(ReportsAndForms.PipeProductos.DataSource.DataSet.FieldByName('Cod_Generado').AsString);
      ReportsAndForms.Codificado.Caption := GZCode128(ReportsAndForms.PipeProductos.DataSource.DataSet.FieldByName('Cod_Generado').AsString);
      ReportsAndForms.Normal.Caption := ReportsAndForms.PipeProductos.DataSource.DataSet.FieldByName('Cod_Generado').AsString;}

      ReportsAndForms.Cod_Generado.DataPipeline := ReportsAndForms.PipeProductos;
      ReportsAndForms.Codigo_Etiqueta.Data := ReportsAndForms.Cod_Generado.Text;
      ReportsAndForms.Descripcion_Etiqueta.DataPipeline := ReportsAndForms.PipeProductos;

      PrinterSetup.Copies := Modulo.tProductosExistencia.AsInteger;
      Modulo.tFabricante.Locate(Modulo.tFabricanteNumero.FieldName,
                                    Modulo.tDetalles_CompraFabricante.Value,
                                    []);
      ReportsAndForms.Labels.PrintDialog.Caption := Format('%s (%n)',[Modulo.tProductosDescripcion.Value,Modulo.tProductosExistencia.Value]);

      PopupMessage(Modulo.Mensajes,_PrintCopiesReminder);

      Print;
    End // With}
end;

procedure TFDatos_Recargas.ConfiguracionExecute(Sender: TObject);
  Var
    N : Integer;
    S : String;
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_RecargasKey,true);
  N := 1;
  Try
   S := InputBox('Categoria','Codigo de Categoria','1');
   N := StrToInt(S);
  Except End; // Try

  RegInfo.WriteInteger('Rec_Cat',N)
end;

procedure TFDatos_Recargas.ComponentesExecute(Sender: TObject);
begin
  If Trim(UpperCase(Modulo.tProductosTipo_Inventario.Value)) = 'COMPUESTO' Then
    Try
      Modulo.tListadoProductos.Filter := 'Codigo <> ' + QuotedStr(Trim(Modulo.tProductosCodigo.Value));
      Modulo.tListadoProductos.Filtered := True;
      OpenForm(TFComponentes,FComponentes)
    Finally
      Modulo.tListadoProductos.Filter := '';
      Modulo.tListadoProductos.Filtered := False;
    End
  Else
    PopupMessage(Modulo.Mensajes,'Este no es un producto COMPUESTO'#13'Verifique el Tipo de Inventario e intente otra vez')
end;

procedure TFDatos_Recargas.Editar_Existencia_InicialExecute(Sender: TObject);
begin
  {Guardar antes de Editar}
  GuardarExecute(Editar_Existencia_Inicial);
  OpenForm(TFExistencia_Inicial,FExistencia_Inicial);
  Modulo.tProductos.Refresh
end;

procedure TFDatos_Recargas.Modificar_CodigoExecute(Sender: TObject);
  Var
    Nuevo  : String;
    Edited : Boolean;
begin
   If Modulo.tProductos.State In [DsEdit,dsBrowse] Then
     Begin
       Nuevo := Modulo.tProductosCodigo.Value;
       Edited := InputQuery('Modificación de Código','Digite el Nuevo Código para el Producto',Nuevo);
       Nuevo := UpperCase(Nuevo);
       If (Trim(Nuevo) <> '') And (Trim(Nuevo) <> Trim(Modulo.tProductosCodigo.Value)) And Edited Then
         Begin
           //Actualizar el Producto
           Modulo.tReporter.CommandText := 'Update "Productos" Set "Codigo" = ' +
                                           QuotedStr(Nuevo) +
                                           ' Where "Codigo" = ' +
                                           QuotedStr(Modulo.tProductosCodigo.Value);
           Modulo.tReporter.Execute;
           //Actualizar el Compras
           Modulo.tReporter.CommandText := 'Update "Detalles_Compra" Set "Codigo_Real" = ' +
                                           QuotedStr(Nuevo) +
                                           ', "Codigo" = ' +
                                           QuotedStr(Nuevo) +
                                           ' Where "Codigo_Real" = ' +
                                           QuotedStr(Modulo.tProductosCodigo.Value);
           Modulo.tReporter.Execute;

           //Actualizar Ordenes de Compra
           Modulo.tReporter.CommandText := 'Update "Detalles_Orden_Compra" Set "Codigo_Real" = ' +
                                           QuotedStr(Nuevo) +
                                           ', "Codigo" = ' +
                                           QuotedStr(Nuevo) +
                                           ' Where "Codigo_Real" = ' +
                                           QuotedStr(Modulo.tProductosCodigo.Value);
           Modulo.tReporter.Execute;

           //Actualizar Facturas
           Modulo.tReporter.CommandText := 'Update "Detalles_Factura" Set "Codigo_Real" = ' +
                                           QuotedStr(Nuevo) +
                                           ', "Codigo" = ' +
                                           QuotedStr(Nuevo) +
                                           ' Where "Codigo_Real" = ' +
                                           QuotedStr(Modulo.tProductosCodigo.Value);
           Modulo.tReporter.Execute;

           //Actualizar Salidas de Inventario
           Modulo.tReporter.CommandText := 'Update "Detalles_Salida" Set "Codigo_Real" = ' +
                                           QuotedStr(Nuevo) +
                                           ', "Codigo" = ' +
                                           QuotedStr(Nuevo) +
                                           ' Where "Codigo_Real" = ' +
                                           QuotedStr(Modulo.tProductosCodigo.Value);
           Modulo.tReporter.Execute;

           Modulo.tProductos.Cancel;
           Modulo.tProductos.CancelUpdates;
           Codigo.Text := Nuevo;
           CodigoExit(Sender)
         End;
     End;
end;

procedure TFDatos_Recargas.Movimiento_InventarioExecute(Sender: TObject);
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

Initialization
  RegisterClass(TFDatos_Recargas);

end.
