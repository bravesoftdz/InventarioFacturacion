unit Productos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, IniFiles, TeEngine, Series, TeeProcs, Chart,
  DbChart, wwclearbuttongroup, wwradiogroup, RegKeys, Grids, DBGrids;

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
    Datos_Producto: TAdvPageControl;
    pg_Datos_Producto: TAdvTabSheet;
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
    pg_Costos: TAdvTabSheet;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Ultimo_Precio_Compra: TDBEdit;
    Costo_Estandar: TDBEdit;
    Costo_Promedio: TDBEdit;
    Unidad_Medida_Compra: TDBEdit;
    Datos_Venta: TAdvPageControl;
    pg_Precios: TAdvTabSheet;
    Label24: TLabel;
    Label25: TLabel;
    lPrecio_Detalle_Contado: TLabel;
    lPrecio_Detalle_Credito: TLabel;
    lPrecio_Minimo: TLabel;
    Label29: TLabel;
    Unidades_Medida_Venta: TDBEdit;
    Precio_Detalle_Contado: TDBEdit;
    Precio_Detalle_Credito: TDBEdit;
    Precio_Minimo: TDBEdit;
    Label37: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Valor_Beneficio_Contado: TDBEdit;
    Valor_Beneficio_Credito: TDBEdit;
    Panel_Botones: TAdvPageControl;
    Pg_Botones: TAdvTabSheet;
    Botones: TActionToolBar;
    Barra_Igual_Codigo: TAction;
    bt_Codigo_Igual_Barra: TSpeedButton;
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
    bt_Anadir_Departamento: TSpeedButton;
    bt_Anadir_Proveedor: TSpeedButton;
    bt_Anadir_Categoria: TSpeedButton;
    bt_Anadir_Tipo_Producto: TSpeedButton;
    bt_Anadir_Fabricante: TSpeedButton;
    bt_Anadir_Status: TSpeedButton;
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
    Label23: TLabel;
    Nombre_Producto: TwwDBComboBox;
    lColores: TLabel;
    Colores: TwwDBComboBox;
    lMarca: TLabel;
    Marca: TwwDBComboBox;
    Orientacion: TwwRadioGroup;
    Posicion: TwwRadioGroup;
    lOrientacion: TLabel;
    lPosicion: TLabel;
    lAno: TLabel;
    Ano: TwwDBComboBox;
    lPrecio_Por_Mayor_Contado: TLabel;
    Precio_Por_Mayor_Contado: TDBEdit;
    lPrecio_Por_Mayor_Credito: TLabel;
    Precio_Por_Mayor_Credito: TDBEdit;
    lModelos: TLabel;
    Modelos: TwwDBComboBox;
    Barra_Menu: TActionMainMenuBar;
    Shape1: TShape;
    FOTO: TImage;
    Label43: TLabel;
    Agregar_Foto: TAction;
    Panel_Existencia: TPanel;
    Label41: TLabel;
    Existensia: TDBText;
    Label44: TLabel;
    Existencia_Medida: TDBText;
    L_Medida_Venta: TDBText;
    lPRECIO_UNIDAD: TLabel;
    PRECIO_UNIDAD: TDBEdit;
    Opciones_Miscelaneas: TAction;
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
    procedure Configuracion_LabelsExecute(Sender: TObject);
    procedure ComponentesExecute(Sender: TObject);
    procedure Editar_Existencia_InicialExecute(Sender: TObject);
    procedure Movimiento_InventarioExecute(Sender: TObject);
    procedure Agregar_FotoExecute(Sender: TObject);
    procedure Modificar_CodigoExecute(Sender: TObject);
    procedure Productos_SimilaresExecute(Sender: TObject);
    procedure Opciones_MiscelaneasExecute(Sender: TObject);
    procedure ReloadOptions;
    procedure RememberOptions;
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
  CnfgForms, Reports_Forms, Componentes, Existencia_Productos, Generales,
  Productos_Similares, PrintLabels, opMisc_Productos;

{$R *.dfm}

procedure TFProductos.FormCreate(Sender: TObject);
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

      ReloadOptions;
      {Insertar Registro en Blanco}
      Nuevo.Execute
    End
    {If _Load_Create}
end;

procedure TFProductos.ReloadOptions;
  Begin
    RegInfo.CloseKey;
    RegInfo.OpenKey(_LabelProductosKey,False);

    Try
      {Etiquetas}
      lPrecio_Por_Mayor_Contado.Caption := RegInfo.ReadString(_lPrecio1);
      lPrecio_Por_Mayor_Credito.Caption := RegInfo.ReadString(_lPrecio2);
      lPrecio_Detalle_Contado.Caption := RegInfo.ReadString(_lPrecio3);
      lPrecio_Detalle_Credito.Caption := RegInfo.ReadString(_lPrecio4);

      {Campos}
      Posicion.Visible := RegInfo.ReadBool(_ChkPosicon);
      Orientacion.Visible := RegInfo.ReadBool(_ChkOrientacion);
      Colores.Visible := RegInfo.ReadBool(_ChkColor);
      Marca.Visible := RegInfo.ReadBool(_ChkMarca);
      Modelos.Visible := RegInfo.ReadBool(_ChkModelo);
      Ano.Visible := RegInfo.ReadBool(_ChkAno);

      lPosicion.Visible := RegInfo.ReadBool(_ChkPosicon);
      lOrientacion.Visible := RegInfo.ReadBool(_ChkOrientacion);
      lColores.Visible := RegInfo.ReadBool(_ChkColor);
      lMarca.Visible := RegInfo.ReadBool(_ChkMarca);
      lModelos.Visible := RegInfo.ReadBool(_ChkModelo);
      lAno.Visible := RegInfo.ReadBool(_ChkAno);
    Except

    End

  End;

procedure TFProductos.RememberOptions;
  Begin
    RegInfo.CloseKey;
    RegInfo.OpenKey(_LabelProductosKey,False);

    if RegInfo.ReadBool(_Remember) then
      Try
        RegInfo.CloseKey;
        RegInfo.OpenKey(_LabelProductosKey,False);
        Modulo.tProductosDepartamento.Value:= RegInfo.ReadInteger('Depto');
        Modulo.tProductosProveedor_Principal.Value := RegInfo.ReadInteger('Proveedor');
        Modulo.tProductosTipo_Inventario.Value := RegInfo.ReadString('TInventario');
        Modulo.tProductosFabricante.Value := RegInfo.ReadInteger('Fabricante');
        Modulo.tProductosLector_Codigo.Value := RegInfo.ReadString('LeerCode');
        Modulo.tProductosCategoria.Value := RegInfo.ReadInteger('CAT');
        Modulo.tProductosTipo_Producto.Value := RegInfo.ReadInteger('TProducto')
      Except

      End

  End;

procedure TFProductos.FormClose(Sender: TObject; var Action: TCloseAction);
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
  Modulo.tProductosTipo_Beneficio.Value := 'Libre';

  Foto.Picture.LoadFromFile(_DefaultImgDir + _DefaultItemImg);

  If Self.Visible And _MoveFocus Then
    Begin
      Codigo.Text := '';
      Codigo.SetFocus
    End;

  RememberOptions;
end;

procedure TFProductos.Opciones_MiscelaneasExecute(Sender: TObject);
begin
  OpenForm(TFOpciones_Misc_Productos,FOpciones_Misc_Productos);
  ReloadOptions
end;

procedure TFProductos.Productos_SimilaresExecute(Sender: TObject);
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

procedure TFProductos.GuardarExecute(Sender: TObject);
begin
  If Modulo.tProductos.State In DsEditModes Then
    Modulo.tProductos.Post;

  If Modulo.tProductos.ChangeCount > 0 Then
    Modulo.tProductos.ApplyUpdates(0);

  RegInfo.CloseKey;
  RegInfo.OpenKey(_LabelProductosKey,False);
  RegInfo.WriteInteger('Depto',Modulo.tProductosDepartamento.Value);
  RegInfo.WriteInteger('Proveedor',Modulo.tProductosProveedor_Principal.Value);
  RegInfo.WriteString('TInventario',Modulo.tProductosTipo_Inventario.Value);
  RegInfo.WriteInteger('Fabricante',Modulo.tProductosFabricante.Value);
  RegInfo.WriteString('LeerCode',Modulo.tProductosLector_Codigo.Value);
  RegInfo.WriteInteger('CAT',Modulo.tProductosCategoria.Value);
  RegInfo.WriteInteger('TProducto',Modulo.tProductosTipo_Producto.Value);

  Modulo.tProductos.Refresh;

  PopUpMessage(Modulo.Mensajes,_DatosGuardados);

  Codigo.Text := Modulo.tProductosCodigo.Text;

end;

procedure TFProductos.Barra_Igual_CodigoExecute(Sender: TObject);
begin
  Nombre_Producto.SetFocus;

  If Not (Modulo.tProductos.State In DsEditModes) Then Modulo.tProductos.Edit;
    Modulo.tProductosBarra.Value := Modulo.tProductosCodigo.Value;
end;

procedure TFProductos.bt_Codigo_Igual_BarraClick(Sender: TObject);
begin
  Barra_Igual_Codigo.Execute
end;

procedure TFProductos.CodigoExit(Sender: TObject);
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
      End;

    Editar_Existencia_Inicial.Enabled := Modulo.tProductosEditar_Existencia.Value;

    FOTOLoadAndDisplay(Modulo.tProductosFoto,FOTO,_DefaultImgDir + _DefaultItemImg)
  Finally
    Modulo.tProductos.AfterRefresh := Modulo.tProductosAfterRefresh
  End;
end;

procedure TFProductos.FormKeyDown(Sender: TObject; var Key: Word;
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

  PopUpMessage(Modulo.Mensajes,_DatosEliminados);
  Nuevo.Execute;

end;

procedure TFProductos.SerialPortTriggerAvail(CP: TObject; Count: Word);
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

procedure TFProductos.BuscarExecute(Sender: TObject);
  Var
    R : Integer;
    S : String;
begin
  S := DoSearch(Nil,
                'Productos',                                          (* TableName *)
                'SrchPr',                                         (* Provider *)
                Modulo.tProductosCodigo.FieldName, (* CampoClave *)
                Modulo.tProductosDescripcion.FieldName,      (* CampoInicial *)
                '',      (* AltQry *)
                Modulo.Enlace,                                   (* RemoteServer *)
                'A',                                                              (* SortOrder *)
                -1,                                                               (* Packet Records *)
                wsMaximized,
                R);
  If R = MrOk Then
    Begin
          Codigo.Text :=  S;
          CodigoExit(Sender)

{      Cedula_Rnc_Pasaporte.Text := S;
      Cedula_Rnc_PasaporteExit(Cedula_Rnc_Pasaporte);
      CommentTypeFilter(GenericDataModule.tComentarios,True,chk_MostrarHistorial.Checked,chk_MostrarSistema.Checked);
      ValidateEmptyField(Self,Apellido);
      UpdateInfoBoard(InfoBoard,
                      'Buscar',
                      'Cargados los datos de ' + LowerCase(_Tipo_Relacion),
                      Buscar_Registro.ImageIndex,
                      clGreen,
                      clWindowText)}
    End
end;

procedure TFProductos.Agregar_FotoExecute(Sender: TObject);
begin
  Modulo.tProductos.Edit;
  AgregarFoto(Modulo.tProductosFoto,Foto)
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

procedure TFProductos.bt_Anadir_DepartamentoClick(Sender: TObject);
begin
  Anadir_Departamento.Execute
end;

procedure TFProductos.bt_Anadir_ProveedorClick(Sender: TObject);
begin
  Anadir_Proveedor.Execute
end;

procedure TFProductos.bt_Anadir_CategoriaClick(Sender: TObject);
begin
  Anadir_Categoria.Execute
end;

procedure TFProductos.bt_Anadir_Tipo_ProductoClick(Sender: TObject);
begin
  Anadir_Tipo_Producto.Execute
end;

procedure TFProductos.bt_Anadir_FabricanteClick(Sender: TObject);
begin
  Anadir_Fabricante.Execute
end;

procedure TFProductos.bt_Anadir_StatusClick(Sender: TObject);
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
  RegInfo.CloseKey;
  RegInfo.OpenKey(_LabelProductosKey,False);
  If Not RegInfo.ReadBool(_Desglosar_Formularios) Then
    Begin
      {Guardar antes de Imprimir}
      GuardarExecute(Imprimir_Etiquetas);
      Application.CreateForm(TFPrintLabels,FPrintLabels);
      FPrintLabels._Seccion := _LabelProductosKey;
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

      ReportsAndForms._Seccion  := _LabelProductosKey;

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

procedure TFProductos.Configuracion_LabelsExecute(Sender: TObject);
begin
  Application.CreateForm(TFConfigForms,FConfigForms);
  FConfigForms._Seccion := _LabelProductosKey;
  FConfigForms.Caption := Configuracion_Labels.Caption;
  If Trim(FConfigForms._Seccion) <> '' Then
    Try
      FConfigForms.LoadValues;
      FConfigForms.Desgloce.Caption := 'Impresión Por Plantilla';
      FConfigForms.Listado.Enabled := False;
      FConfigForms.Formato.Enabled := False;
      FConfigForms.AnchoLinea.Enabled := False;
      FConfigForms.LineasPie.Enabled := False;
      FConfigForms.Filas.Enabled := False;
      FConfigForms.Doble_Impresion.Enabled := False;
      FConfigForms.Recordar_NCF.Enabled := False;
      FConfigForms.Nuevo_Imprimir.Enabled := False;
      FConfigForms.Saltar_al_Detalle.Enabled := False;
      FConfigForms.Nota_Pie.Enabled := False;
    Finally
      FConfigForms.ShowModal;
      FConfigForms.Free
    End; // Try
end;

procedure TFProductos.ComponentesExecute(Sender: TObject);
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

procedure TFProductos.Editar_Existencia_InicialExecute(Sender: TObject);
begin
  {Guardar antes de Editar}
  GuardarExecute(Editar_Existencia_Inicial);
  OpenForm(TFExistencia_Inicial,FExistencia_Inicial);
  Modulo.tProductos.Refresh
end;

procedure TFProductos.Modificar_CodigoExecute(Sender: TObject);
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

Initialization
  RegisterClass(TFProductos);

end.
