unit Cotizaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, wwriched, Grids,
  Wwdbigrd, Wwdbgrid, frmClientes, Wwdbspin, IniFiles, ppBarCod,
  ppCtrls, ppPrnabl, ppClass, ppCache, ppBands, ppProd, ppReport, ppDB,
  ppComm, ppRelatv, ppDBPipe, wwcheckbox, RegKeys, DbClient, SUIPopupMenu;

type
  TFCotizaciones = class(TForm)
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Panel_Datos_Cotizacion: TAdvPageControl;
    Pg_Datos_Cotizacion: TAdvTabSheet;
    Panel_Detalles_Cotizacion: TAdvPageControl;
    Pg_Detalles_Cotizacion: TAdvTabSheet;
    Panel_Botones: TAdvPageControl;
    Pg_Botones: TAdvTabSheet;
    Botones: TActionToolBar;
    Label6: TLabel;
    Referencia: TDBEdit;
    Label7: TLabel;
    SubTotal: TDBEdit;
    Label8: TLabel;
    Total_Neto: TDBEdit;
    Label9: TLabel;
    Label3: TLabel;
    Fecha: TDBEdit;
    Label4: TLabel;
    Hora: TDBEdit;
    Detalles: TwwDBGrid;
    Comentarios: TwwDBRichEdit;
    DetallesIButton: TwwIButton;
    Imprimir: TAction;
    Label2: TLabel;
    Cliente: TwwDBLookupCombo;
    bt_Anadir_Cliente: TSpeedButton;
    CedulaCliente: TDBEdit;
    TelefonoCliente: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    AnadirCliente: TAction;
    Descripciones: TwwDBLookupCombo;
    Label12: TLabel;
    Porciento_Impuesto: TDBEdit;
    Label13: TLabel;
    Porciento_Descuento: TDBEdit;
    Label14: TLabel;
    Total_Impuesto: TDBEdit;
    Label15: TLabel;
    Total_Descuento: TDBEdit;
    Anadir_Terminos: TAction;
    Label19: TLabel;
    Vencimiento: TDBEdit;
    Configuracion_Cotizacion: TAction;
    Desglosar: TCheckBox;
    Definir_Departamento: TAction;
    Codigos: TwwDBLookupCombo;
    VistaPrevia: TCheckBox;
    Registro_Clientes: TFrameClientes;
    Tipos_Precios: TwwDBComboBox;
    Label23: TLabel;
    Vendedor: TwwDBLookupCombo;
    Nuevo_Imprimir: TCheckBox;
    Guardar_Temporal: TAction;
    Cargar_Temporal: TAction;
    Enviar_email: TAction;
    Opciones_Miscelaneas: TsuiPopupMenu;
    Menu_Anadir_Terminos: TMenuItem;
    Menu_Anadir_Cliente: TMenuItem;
    Menu_Configuracion_Cotizaciones: TMenuItem;
    Menu_Definir_Departamento: TMenuItem;
    N1: TMenuItem;
    Menu_Cargar_Tempora: TMenuItem;
    Menu_Guardar_Temporal: TMenuItem;
    N2: TMenuItem;
    Label5: TLabel;
    Concepto: TwwDBComboBox;
    Recuadro_Foto: TShape;
    FOTO: TImage;
    Menu_Autorizacion_Cobros: TMenuItem;
    Menu_Enviar_email: TMenuItem;
    N3: TMenuItem;
    bt_Anadir_Terminos: TSpeedButton;
    TerminoFacturacion: TwwDBLookupCombo;
    Label18: TLabel;
    Condicion_Factura: TwwDBComboBox;
    Label20: TLabel;
    Numero: TDBEdit;
    Label1: TLabel;
    Menu_Registrar_Seriales: TMenuItem;
    N4: TMenuItem;
    Filtrar_Categoria: TCheckBox;
    Categorias: TwwDBLookupCombo;
    Anular_Cotizacion: TAction;
    Medidas: TwwDBComboBox;
    Modificar_Precio: TAction;
    Notificaciones: TStatusBar;
    Moneda: TwwDBLookupCombo;
    AnularCotizacin1: TMenuItem;
    N5: TMenuItem;
    procedure CategoriasCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Filtrar_CategoriaClick(Sender: TObject);
    procedure DetallesColExit(Sender: TObject);
    procedure Cargar_TemporalExecute(Sender: TObject);
    procedure Guardar_TemporalExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SerialPortTriggerAvail(CP: TObject; Count: Word);
    procedure BuscarExecute(Sender: TObject);
    procedure DetallesEnter(Sender: TObject);
    procedure DetallesExit(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure DetallesCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure AnadirClienteExecute(Sender: TObject);
    procedure bt_Anadir_ClienteClick(Sender: TObject);
    procedure DescripcionesCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure bt_Anadir_TerminosClick(Sender: TObject);
    procedure Anadir_TerminosExecute(Sender: TObject);
    procedure DetallesColEnter(Sender: TObject);
    procedure Definir_DepartamentoExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Configuracion_CotizacionExecute(Sender: TObject);
    procedure ClienteExit(Sender: TObject);
    procedure Registro_Clientesbt_GuardarClick(Sender: TObject);
    procedure Registro_Clientesbt_CancelarClick(Sender: TObject);
    procedure Anular_CotizacionExecute(Sender: TObject);
    procedure Modificar_PrecioExecute(Sender: TObject);
    procedure DetallesCellChanged(Sender: TObject);
    procedure MedidasEnter(Sender: TObject);
    procedure MonedaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function ImprimirRecibo(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;
Function ImprimirFactura(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;
Function ImprimirAutorizacion(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;

var
  FCotizaciones : TFCotizaciones;
  Buffer       : String = '';
  LstNCF       : String = '00';
  UseLstNCF    : Boolean = False;

implementation

uses DataModulo, Utilidades, SrchDlg, Categorias, Departamentos,
  Fabricantes, Tipos_Productos, Status, Distrbuir_Vencimiento,
  dotmatrx, Terminos, DateUtils, CnfgForms, Reports_Forms, PagosFacturas,
  Registry, ConfigForm, Generales, DlgFinanciamientos, ResumenFacturas,
  Seriales_Productos_Facturados, Modificar_Precio, Autorizar;

{$R *.dfm}
{$I FactComm.Cnt}

procedure TFCotizaciones.FormCreate(Sender: TObject);
  Var
    I : Integer;
begin
  If _Load_Create Then
    Begin
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
      _ChkExistence := True;

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);

      {Activar Los Hints Disponibles}
      LoadHints(Self);

      Modulo.NotiticationSet(Notificaciones);

      {Asigna Color de fondo de los TAdvPageControl}
      For I := 0 To (Self.ComponentCount - 1) Do
        Begin
          If (Self.Components[I] Is TAdvPageControl) Then
             (Self.Components[I] As TAdvPageControl).TabBackGroundColor := Color;
        End;

      {Abrir las Tablas Requeridas}
      Modulo.tParametros.Params.ParamByName('Terminal').AsString := _CurrentTerminal;
      Modulo.tParametros.Open;

      Modulo.tComprobantes_Fiscales.Params.ParamByName('Aplicable').AsString := 'FT';
      Modulo.tComprobantes_Fiscales.Open;

      Modulo.tListado_Clientes.Open;
      Modulo.tListadoVendedores.Open;
      Modulo.tTerminos.Open;

      Modulo.tFormas_Pago.Filter := 'Es_Efectivo = True';
      Modulo.tFormas_Pago.Filtered := True;
      Modulo.tFormas_Pago.Open;

      Modulo.tProductos.Open;
      Modulo.tListadoProductos.Open;

      {Configuracion General}
      Modulo.tCotizacionesCondicion.DefaultExpression := QuotedStr(Trim(Modulo.tParametrosCondicion_Facturacion.Value));
      Modulo.tCotizaciones.Open;

      RegInfo.CloseKey;
      RegInfo.OpenKey(_CotizacionProductosKey,False);

      Modulo.tCategoria.Open;

      Try
        LstNCF := RegInfo.ReadString(_LastNCF);
        UseLstNCF := RegInfo.ReadBool(_UseLastNCF)
      Except
        LstNCF := '00';
        UseLstNCF := False;
      end;

      Registro_Clientes.bt_Guardar.OnClick := Registro_Clientesbt_GuardarClick;
      Registro_Clientes.bt_Cancelar.OnClick := Registro_Clientesbt_CancelarClick;
      Reginfo.CloseKey;
      RegInfo.OpenKey(_GeneralConfigKey,True);

      Modulo.tCotizacionesImpuesto_Global.DisplayFormat := RegInfo.ReadString(_PcntFormat);
      Modulo.tCotizacionesDescuento_Global.DisplayFormat := RegInfo.ReadString(_PcntFormat);
      Modulo.tDetalles_CotizacionImpuesto.DisplayFormat := RegInfo.ReadString(_PcntFormat);
      Modulo.tDetalles_CotizacionDescuento.DisplayFormat := RegInfo.ReadString(_PcntFormat);
      Modulo.tDetalles_CotizacionCantidad.DisplayFormat := RegInfo.ReadString(_QtyFormat);

      RegInfo.CloseKey;
      RegInfo.OpenKey(_LabelProductosKey,False);

      Tipos_Precios.Items.Clear;
      Try
        {Etiquetas}
        Tipos_Precios.Items.Add(RegInfo.ReadString(_lPrecio1)+#9'P-1');
        Tipos_Precios.Items.Add(RegInfo.ReadString(_lPrecio2)+#9'P-2');
{        Tipos_Precios.Items.Add(RegInfo.ReadString(_lPrecio3)+#9'P-3');
        Tipos_Precios.Items.Add(RegInfo.ReadString(_lPrecio4)+#9'P-4');}
      Except

      End;

      {Insertar Registro en Blanco}
      Nuevo.Execute
    End; {If _Load_Create}
end;

procedure TFCotizaciones.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If Modulo.tCotizaciones.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicionSalida),
                              PChar(Salir.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then
      Begin
        Action := caNone;
        Exit
      End;

  {Cerrar las Tablas}
  Modulo.tCotizaciones.Cancel;
  Modulo.tCotizaciones.CancelUpdates;
  Modulo.tCotizaciones.Params.ParamByName('Proceso').Clear;
//  Modulo.tCotizaciones.Refresh;
  _ChkExistence := False;

  Modulo.tListado_Clientes.Cancel;
  Modulo.tListado_Clientes.CancelUpdates;
  Try
    Modulo.tProductos.AfterRefresh := Nil;
    Modulo.tProductos.Params.ParamByName('Codigo').Clear;
    Modulo.tProductos.Params.ParamByName('Barra').Clear;
    Modulo.tProductos.Params.ParamByName('Secuencia').Clear;
    Modulo.tProductos.Params.ParamByName('Proceso').Clear;
    Modulo.tProductos.Params.ParamByName('Referencia').Clear;
    Modulo.tProductos.Refresh;
  Finally
    Modulo.tProductos.AfterRefresh := Modulo.tProductosAfterRefresh
  End;

  Modulo.tListadoProductos.Filter := '';
  Modulo.tListadoProductos.Filtered := False;
  Modulo.tListadoProductos.Cancel;
  Modulo.tListadoProductos.CancelUpdates;

  Modulo.tFormas_Pago.Filtered := False;

  RegInfo.CloseKey;
  RegInfo.OpenKey(_CotizacionProductosKey,False);
  RegInfo.WriteString(_LastNCF,LstNCF)
end;

procedure TFCotizaciones.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFCotizaciones.NuevoExecute(Sender: TObject);
  Var
    Depto : Integer;
begin
   Try
    Cliente.OnExit := Nil;
    {Verificar el estado de la tabla de Cotizaciones}
    If (Modulo.tCotizaciones.State In DsEditModes) And
       (Modulo.tDetalles_Cotizacion.RecordCount > 0) Then
      If Application.MessageBox(PChar(_DatosEnEdicion),
                                PChar(Nuevo.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

    {Filtrar la Tabla de Productos}
    RegInfo.CloseKey;
    RegInfo.OpenKey(_GeneralConfigKey,False);
    Depto := RegInfo.ReadInteger(_DetalleFacturaDepto);


    {Carga la Configuracion Inicial de la Pantalla}
    RegInfo.CloseKey;
    RegInfo.OpenKey(_CotizacionProductosKey,False);

    Desglosar.Checked := RegInfo.ReadBool(_Desglosar_Formularios);
    VistaPrevia.Checked := RegInfo.ReadBool(_PreviewForm);
    Nuevo_Imprimir.Checked := RegInfo.ReadBool(_New_Print);

    Case RegInfo.ReadBool(_UseCustomControl) Of
      True  : Detalles.SetControlType('Codigo', fctCustom, 'Codigos');
      False : Detalles.SetControlType('Codigo', fctField, '')
    End; {Case}

    Detalles.RedrawGrid;

    Modulo.tListadoProductos.Filter := 'Departamento = ' + IntToStr(Depto);
    Modulo.tListadoProductos.Filtered := (Depto <> 0);

    RegInfo.CloseKey;
    RegInfo.OpenKey(_GeneralConfigKey,False);

    {Preparar la Tabla de Cotizaciones}
    Modulo.tCotizaciones.Cancel;
    Modulo.tCotizaciones.CancelUpdates;
    Modulo.tCotizaciones.Append;

    Modulo.tListadoProductos.Cancel;
    Modulo.tListadoProductos.CancelUpdates;

    Modulo.tCotizacionesFecha.Value := Modulo.Enlace.AppServer.ServerDate;
    Modulo.tCotizacionesHora.Value  := Modulo.Enlace.AppServer.ServerTime;
    Modulo.tCotizacionesCondicion.Value := RegInfo.ReadString(_CondFacturas);
    Modulo.tCotizacionesTipo_Factura.Value := RegInfo.ReadString(_TipoFacturas);
    Modulo.tCotizacionesAlmacen.Value := _CurrentStore;

    Ps:= 0;

    Modulo.tCotizacionesProceso.Value := Gen_ProcessNumber(_CurrentUser);
    Modulo.tCotizaciones.Params.ParamByName('Proceso').Value := Modulo.tCotizacionesProceso.Value;

    {Fijar Condicion Establecida para Venta}
    RegInfo.CloseKey;
    RegInfo.OpenKey(_CotizacionProductosKey,False);
    Modulo.tCotizacionesCondicion.Value := RegInfo.ReadString(_DefaultSaleCondition);

    Modulo.tCotizacionesTipo_NCF.Value := '00';

    If UseLstNCF Then
      Modulo.tCotizacionesTipo_NCF.Value := LstNCF;

    FOTOLoadAndDisplay(Modulo.tListado_ClientesFoto,FOTO,_DefaultClientImg)
   Finally
     {Ubicar el Punto de Edicion}
     If Self.Visible Then
       If RegInfo.ReadBool(_DetalleFacturaFocus) Then Detalles.SetFocus
     Else
       Moneda.SetFocus;

     Cliente.OnExit := ClienteExit;
   End;
end;

procedure TFCotizaciones.GuardarExecute(Sender: TObject);
  Var
    Vence : TDate;
begin
  If Detalles.HasFocus Then Comentarios.SetFocus;

  If Modulo.tDetalles_Cotizacion.State In dsEditModes Then Modulo.tDetalles_Cotizacion.Post;

  If Modulo.tDetalles_Cotizacion.RecordCount <= 0 Then
    Raise Exception.Create(_NoDatosGuardar);

  If Modulo.tCotizaciones.State In DsEditModes Then
    Begin
      If (Trim(Modulo.tCotizacionesCondicion.Value) = _CondicionFinanciamiento) And
         (Modulo.tCotizacionesPendiente.Value > _Margen) Then
        OpenForm(TFormFinanciamientos,FormFinanciamientos);

      If (Trim(Modulo.tCotizacionesCondicion.Value) = _CondicionCredito) And
         (Modulo.tCotizacionesPendiente.Value > _Margen) Then
         Begin
           Modulo.tCotizacionesInteres.Value := 0;
           Modulo.tCotizacionesModalidad.Value := 'Cuotas Fijas';
           Modulo.tCotizacionesPlazo_Pago.Value := 1;
           Modulo.tCotizacionesMonto_Financiado.Value := Modulo.tCotizacionesPendiente.Value;
           Modulo.tCotizacionesPeriodo_Pagos.Value := Modulo.tCotizacionesNombre_Termino.Value;
           Modulo.GenerarCuotas(Vence,Modulo.tTerminosDiasDeGracia.Value)
         End;

      Modulo.tCotizaciones.Post
    end;

  LstNCF := Modulo.tCotizacionesTipo_NCF.Value;

  If Modulo.tCotizaciones.ChangeCount > 0 Then
    Begin
      Modulo.tCotizaciones.ApplyUpdates(0);
      Modulo.tReporter.Close;
      Modulo.tReporter.CommandText := 'Update "Cotizaciones" Set "Seriales_Registrados" = (Select Count("Serial") From "Seriales_Despachados" Where "Proceso" = :Proceso2) Where "Proceso" = :Proceso1';
      Modulo.tReporter.Params.ParamByName('Proceso1').AsString := Modulo.tCotizacionesProceso.AsString;
      Modulo.tReporter.Params.ParamByName('Proceso2').AsString := Modulo.tCotizacionesProceso.AsString;
      Modulo.tReporter.Execute;
      Modulo.tCotizaciones.Refresh
    end;

  If Modulo.tListadoProductos.ChangeCount > 0 Then
    Modulo.tListadoProductos.ApplyUpdates(0);

  Modulo.tListadoProductos.Refresh;

  PopUpMessage(Modulo.Mensajes,_DatosGuardados);

  If (Sender Is TAction) And (Nuevo_Imprimir.Checked) Then
    If (Sender As TAction).Name = Guardar.Name Then
     Nuevo.Execute;

  Modulo.Enlace.AppServer.ReloadLink
end;

procedure TFCotizaciones.Guardar_TemporalExecute(Sender: TObject);
begin
  If Modulo.tDetalles_Cotizacion.RecordCount <= 0 Then
    Raise Exception.Create(_NoDatosGuardar);

  Modulo.tCotizaciones.SaveToFile(Modulo.tListado_ClientesNombreCompleto.Value +
                              '(' +
                              FormatDateTime('dd-mmm-yyyy hh.mm am/pm',Now()) +
                              ').pedido',dfXML);

  If (Nuevo_Imprimir.Checked) Then Nuevo.Execute;
end;

procedure TFCotizaciones.FormKeyDown(Sender: TObject; var Key: Word;
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
  End {Case}
end;

procedure TFCotizaciones.SerialPortTriggerAvail(CP: TObject; Count: Word);
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
      Modulo.tDetalles_CotizacionCodigo.Value := Buffer;
      Buffer := ''
    End
end;

procedure TFCotizaciones.BuscarExecute(Sender: TObject);
begin
    Try
      Application.CreateForm(TDlgSearch,DlgSearch);
      DlgSearch.OpenDlg('Cotizaciones',Modulo.tCotizacionesNumero.FieldName,'D',wsMaximized);
      If DlgSearch.ModalResult = MrOk Then
        Begin
          {Verificar el estado de la tabla de Cotizaciones}
          If Modulo.tCotizaciones.State In DsEditModes Then
            If Application.MessageBox(PChar(_DatosEnEdicion),
                                      PChar(Buscar.Caption),
                                      MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

          Modulo.tCotizaciones.Cancel;
          Modulo.tCotizaciones.CancelUpdates;
          Modulo.tCotizaciones.Params.ParamByName('Proceso').AsString := DlgSearch.SrchCds.FieldByName('Proceso').AsString;
          Modulo.tCotizaciones.Refresh;

          FOTOLoadAndDisplay(Modulo.tListado_ClientesFoto,FOTO,_DefaultClientImg)
        End
    Finally
      DlgSearch.CloseDlg
    End {Try}
end;

procedure TFCotizaciones.DetallesEnter(Sender: TObject);
begin
  KeyPreview := False;
  If Registro_Clientes.Visible Then Registro_Clientesbt_GuardarClick(Sender);
  Detalles.SelectedField := Modulo.tDetalles_CotizacionCodigo
end;

procedure TFCotizaciones.DetallesExit(Sender: TObject);
begin
  KeyPreview := True
end;

procedure TFCotizaciones.ImprimirExecute(Sender: TObject);
  Var
    DoPreview    : Boolean;
    OutputFormat : ShortInt;
    PrintFormat  : ShortInt;

begin
  GuardarExecute(Sender);

  {  Comentarios.SetFocus;

  If Modulo.tDetalles_Cotizacion.State In dsEditModes Then Modulo.tDetalles_Cotizacion.Post;


  If (Trim(Modulo.tCotizacionesCondicion.Value) = 'Contado') And
     (Modulo.tCotizacionesPendiente.Value > _Margen) Or
     (Modulo.tCotizacionesPendiente.Value < 0) Then
    Procesar_Pago.Execute;}

  RegInfo.CloseKey;
  RegInfo.OpenKey(_CotizacionProductosKey,False);

  DoPreview := VistaPrevia.Checked;
  OutputFormat := RegInfo.ReadInteger(_OutputFormat);
  PrintFormat := RegInfo.ReadInteger(_PrinterStyle);

  Case OutputFormat Of
    _GraphicForm : Begin
                     RegInfo.CloseKey;
                     RegInfo.OpenKey(_CotizacionProductosKey,False);
                     With ReportsAndForms.FormCotizacion Do
                       Begin
                         Template.FileName := RegInfo.ReadString(_TemplateFileName);

                         If (Trim(Template.FileName) <> _NoneStr) And (Trim(Template.FileName) <> '') Then
                           Template.LoadFromFile;

                         DeviceType                := DeviceTypes[VistaPrevia.Checked];
                         ShowPrintDialog           := RegInfo.ReadBool(_ShowPrintDialog);
                         PrinterSetup.Copies       := RegInfo.ReadInteger(_PrintCopies);
                         PrinterSetup.PaperName    := RegInfo.ReadString(_PaperName);
                         PrinterSetup.PaperHeight  := RegInfo.ReadFloat(_PaperHeight);
                         PrinterSetup.PaperWidth   := RegInfo.ReadFloat(_PaperWidth);
                         PrinterSetup.PrinterName  := RegInfo.ReadString(_PrinterName);
                         PrinterSetup.MarginBottom := RegInfo.ReadFloat(_MarginBottom);
                         PrinterSetup.MarginTop    := RegInfo.ReadFloat(_MarginTop);
                         PrinterSetup.MarginLeft   := RegInfo.ReadFloat(_MarginLeft);
                         PrinterSetup.MarginRight  := RegInfo.ReadFloat(_MarginRight);
                         ReportsAndForms.Nota_Pie_Cotizacion.Text := RegInfo.ReadString(_NotaAlPie);

                         ReportsAndForms._Seccion  := _CotizacionProductosKey;

                         ReportsAndForms.CotInvoiceTaxLabel.Visible       := Desglosar.Checked;
                         ReportsAndForms.CotInvoiceTax.Visible            := Desglosar.Checked;
                         ReportsAndForms.CotInvoiceDiscountLabel.Visible  := Desglosar.Checked;
                         ReportsAndForms.CotInvoiceDiscount.Visible       := Desglosar.Checked;
                         Print
                       End // With
                   End // _GraphicForm
  End; // Case

  If (Nuevo_Imprimir.Checked) Then Nuevo.Execute
end;

procedure TFCotizaciones.MedidasEnter(Sender: TObject);
begin
//  Modulo.tDetalles_CotizacionAfterScroll(Modulo.tDetalles_Cotizacion);
  Medidas.Items.Clear;
  Medidas.Items.Add(Modulo.tProductosMedida_Venta.Text);
  Medidas.Items.Add('Unidad');
end;

procedure TFCotizaciones.Modificar_PrecioExecute(Sender: TObject);
begin
  If Trim(Modulo.tDetalles_CotizacionCodigo_Real.Value) = '' Then Exit;
  Granted := False;
  OpenForm(TFAutorizar,FAutorizar);
    If (Not Granted) Then Raise Exception.Create(_ErrAccesoDenegadoOpcion);

  _WindowsExitMode := mrNone;
  OpenForm(tFModificar_Precio,FModificar_Precio);
  If _WindowsExitMode = MrOk Then
    Begin
      Modulo.tDetalles_Cotizacion.Edit;
      Modulo.tDetalles_CotizacionPrecio_Venta.Value := _NuevoPrecio;
      Modulo.tDetalles_CotizacionUsuario_Autorizacion.Value := _GrantedUser;
    End;
end;

procedure TFCotizaciones.MonedaExit(Sender: TObject);
begin
  If Modulo.tCotizacionesDias_Vencidos.IsNull Then
    Begin
      Mensaje('Debe Seleccionar el Tipo de Moneda');
      Moneda.SetFocus
    End;
end;

procedure TFCotizaciones.DetallesCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  If Field = Modulo.tDetalles_CotizacionTotal_Precio Then
    Begin
      ABrush.Color := Detalles.TitleColor;
      AFont.Color := clBlack
    End;

  If Field = Modulo.tDetalles_CotizacionPrecio_Venta Then
    Begin
      ABrush.Color := Total_Impuesto.Color;
      AFont.Color := clBlack
    End;
end;

procedure TFCotizaciones.DetallesCellChanged(Sender: TObject);
begin
//  If Detalles.SelectedField = Modulo
end;

procedure TFCotizaciones.AnadirClienteExecute(Sender: TObject);
begin
  Modulo.tClientes.Open;
  Modulo.tClientes.Append;
  Modulo.tClientesCedula_Rnc_Pasaporte.Value := '-';
  Modulo.tClientesTerminosFacturacion.Value := Modulo.tParametrosTermino_COD.Value;
  Modulo.tClientesProceso.Value := Gen_ProcessNumber(_CurrentUser);

  RegInfo.CloseKey;
  RegInfo.OpenKey(_CotizacionProductosKey,False);

  Modulo.tClientesCondicion_Cliente.Value := RegInfo.ReadString(_DefaultSaleCondition);

  Registro_Clientes.Left := Panel_Datos_Cotizacion.Left;
  Registro_Clientes.Top := Panel_Datos_Cotizacion.Top;
  Registro_Clientes.Pg_Clientes.Color := Color;
  Registro_Clientes.Datos_Cliente.TabBackGroundColor := Color;

  Panel_Datos_Cotizacion.Visible := False;

  Registro_Clientes.Visible := True;
  Registro_Clientes.Cedula_Rnc_Pasaporte.SetFocus
end;

procedure TFCotizaciones.bt_Anadir_ClienteClick(Sender: TObject);
begin
  AnadirCliente.Execute
end;

procedure TFCotizaciones.DescripcionesCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  If Modified Then
    Modulo.tDetalles_CotizacionCodigo.Value := Modulo.tListadoProductosCodigo.Value
end;

procedure TFCotizaciones.Cargar_TemporalExecute(Sender: TObject);
  Var
    File_Open : TOpenDialog;
begin
  Try
    File_Open := TOpenDialog.Create(Self);
    File_Open.Filter := 'Pedidos Guardados|*.pedido|Todos los Archivos|*.*';
    If File_OPen.Execute Then
      Begin
        Nuevo.Execute;
        Modulo.CargarFacturaXML(File_Open.FileName)
      end
  Finally
    File_Open.Free
  End
end;

procedure TFCotizaciones.CategoriasCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  Modulo.tListadoProductos.Filter := 'Categoria = ' + Modulo.TCategoriaNumero.Text;
  Modulo.tListadoProductos.Filtered := True
end;

procedure TFCotizaciones.ClienteExit(Sender: TObject);
begin
  If Modulo.tCotizaciones.State In DsEditModes Then
    Begin
      Modulo.tCotizacionesNombre_Cliente.Value := Modulo.tListado_ClientesNombreCompleto.Value;
      Modulo.tCotizacionesCondicion.Value := Modulo.tListado_ClientesCondicion_Cliente.Value;
      Modulo.tCotizacionesDescuento_Global.Value := Modulo.tListado_ClientesDescuento_Asignado.Value;
      Modulo.tCotizacionesTerminos.Value := Modulo.tListado_ClientesTerminosFacturacion.Value;
      FOTOLoadAndDisplay(Modulo.tListado_ClientesFoto,FOTO,_DefaultClientImg)
    end
end;

procedure TFCotizaciones.bt_Anadir_TerminosClick(Sender: TObject);
begin
  Anadir_Terminos.Execute
end;

procedure TFCotizaciones.Anadir_TerminosExecute(Sender: TObject);
begin
  OpenForm(TFTerminos,FTerminos)
end;

procedure TFCotizaciones.Anular_CotizacionExecute(Sender: TObject);
Begin
  If (Modulo.tCotizacionesNumero.Value <> 0) And Not(Modulo.tCotizacionesNumero.IsNull) Then
    Begin
      Try
        Modulo.tCotizaciones.BeforeEdit := Nil;
        Modulo.tDetalles_Cotizacion.BeforeDelete := Nil;
        Modulo.tDetalles_Cotizacion.AfterDelete := Nil;
        If Application.MessageBox(PChar(Format(_ConfirmarEliminar,[Modulo.tCotizacionesNumero.Text])),
                          'ELIMINAR Cotizacion',
                          MB_YESNO + MB_ICONQUESTION) = ID_No Then Raise Exception.Create(_ErrAccesoDenegadoOpcion);

        Granted := False;
        OpenForm(TFAutorizar,FAutorizar);
        If (Not Granted) Or (_GrantedLevel <> _SuperUserLevel) Then Raise Exception.Create(_ErrAccesoDenegadoOpcion);

        Modulo.tDetalles_Cotizacion.First;
        While Not Modulo.tDetalles_Cotizacion.Eof Do
          Modulo.tDetalles_Cotizacion.Delete;

        Modulo.tCotizaciones.Delete;
        Modulo.tCotizaciones.ApplyUpdates(0)
      Finally
        Modulo.tCotizaciones.BeforeEdit := Modulo.tCotizacionesBeforeEdit;
        Modulo.tDetalles_Cotizacion.AfterDelete := Modulo.ActualizarDetallesCotizacion;
      End;
    End
end;

procedure TFCotizaciones.DetallesColEnter(Sender: TObject);
begin
  Detalles.RedrawGrid;
  Detalles.ColumnByName('Descuento').ReadOnly  := Not(Modulo.tProductosAplica_Descuento.Value);

  If Detalles.GetActiveField.FieldName = Modulo.tDetalles_CotizacionCodigo.FieldName Then
    Modulo.tListadoProductos.IndexFieldNames := 'Codigo';

  If Detalles.GetActiveField.FieldName = Modulo.tDetalles_CotizacionDescripcion.FieldName Then
    Modulo.tListadoProductos.IndexFieldNames := 'Descripcion';
end;

procedure TFCotizaciones.DetallesColExit(Sender: TObject);
begin
  If Detalles.GetActiveField.FieldName = Modulo.tDetalles_CotizacionCodigo.FieldName Then
    Begin
      RegInfo.CloseKey;
      RegInfo.OpenKey(_CotizacionProductosKey,True);

      If RegInfo.ReadBool(_SaltoAutoLinea) Then
          Modulo.tDetalles_Cotizacion.Append;
    end
end;

procedure TFCotizaciones.Definir_DepartamentoExecute(Sender: TObject);
begin
    Try
      Application.CreateForm(TDlgSearch,DlgSearch);
      DlgSearch.OpenDlg('Departamentos',Modulo.tDepartamentosDescripcion.FieldName,'A',wsNormal);
      If DlgSearch.ModalResult = MrOk Then
        Begin
          RegInfo.CloseKey;
          RegInfo.OpenKey(_GeneralConfigKey,False);
          RegInfo.WriteInteger(_DetalleFacturaDepto,DlgSearch.SrchCds.FieldByName('Numero').AsInteger)
        End
    Finally
      DlgSearch.CloseDlg
    End {Try}
end;

procedure TFCotizaciones.Filtrar_CategoriaClick(Sender: TObject);
begin
  Categorias.Visible := Filtrar_Categoria.Checked;
  Modulo.tListadoProductos.Filtered := Filtrar_Categoria.Checked
end;

procedure TFCotizaciones.FormActivate(Sender: TObject);
begin
  Try
    Cliente.OnExit := Nil;
    RegInfo.CloseKey;
    RegInfo.OpenKey(_CotizacionProductosKey,False);
    If RegInfo.ReadBool(_DetalleFacturaFocus) Then Detalles.SetFocus
    Else Moneda.SetFocus
  Finally
    Cliente.OnExit := ClienteExit;
  End;
end;

procedure TFCotizaciones.Configuracion_CotizacionExecute(Sender: TObject);
begin
  Application.CreateForm(TFConfigForms,FConfigForms);
  FConfigForms._Seccion := _CotizacionProductosKey;
  FConfigForms.Caption := Configuracion_Cotizacion.Caption;
  If Trim(FConfigForms._Seccion) <> '' Then
    Try
      FConfigForms.LoadValues
    Finally
      FConfigForms.ShowModal;
      FConfigForms.Free
    End; // Try
end;

procedure TFCotizaciones.Registro_Clientesbt_CancelarClick(Sender: TObject);
begin
  Registro_Clientes.CancelarExecute(Sender);
  Panel_Datos_Cotizacion.Visible := True;
  Registro_Clientes.Visible := False;
  Registro_Clientes.CancelarExecute(Sender);
  Modulo.tClientes.Cancel;
  Modulo.tClientes.CancelUpdates;
  Modulo.tClientes.Close
end;

procedure TFCotizaciones.Registro_Clientesbt_GuardarClick(Sender: TObject);
  Var
    ActualCode : String;
begin
  Registro_Clientes.GuardarExecute(Sender);
  ActualCode := Modulo.tClientesCedula_Rnc_Pasaporte.Value;
  If ActualCode = ''  Then ActualCode := '000-0000000-0';
  Modulo.tListado_Clientes.Refresh;

  Modulo.tListado_Clientes.Locate('Cedula_Rnc_Pasaporte',Modulo.tClientesCedula_Rnc_Pasaporte.Value,[]);
  ActualCode := Modulo.tListado_ClientesCedula_RNC_Pasaporte.Value;

  If Not (Modulo.tCotizaciones.State In DsEditModes) Then Modulo.tCotizaciones.Edit;
  Modulo.tCotizacionesCliente.Value := ActualCode;
  Modulo.tCotizacionesNombre_Cliente.Value := Modulo.tClientesNombreCompleto.Value;

  Registro_Clientesbt_CancelarClick(Sender)
end;

Initialization
  RegisterClass(TFCotizaciones);

end.
