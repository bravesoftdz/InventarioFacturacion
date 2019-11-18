unit Recargas;

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
  TFRecargas = class(TForm)
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Panel_Datos_Factura: TAdvPageControl;
    Pg_Datos_Factura: TAdvTabSheet;
    Panel_Detalles_Factura: TAdvPageControl;
    Pg_Detalles_Factura: TAdvTabSheet;
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
    FechaFactura: TDBEdit;
    Label4: TLabel;
    HoraFactura: TDBEdit;
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
    Label16: TLabel;
    Monto_Pagado: TDBEdit;
    Label17: TLabel;
    Pendiente: TDBEdit;
    Anadir_Terminos: TAction;
    Label19: TLabel;
    VencimientoFactura: TDBEdit;
    Configuracion_Factura: TAction;
    Procesar_Pago: TAction;
    Desglosar: TCheckBox;
    Definir_Departamento: TAction;
    Codigos: TwwDBLookupCombo;
    VistaPrevia: TCheckBox;
    Registro_Clientes: TFrameClientes;
    Tipos_Precios: TwwDBComboBox;
    Label21: TLabel;
    Label22: TLabel;
    Numero_NCF: TDBEdit;
    TipoNcf: TwwDBLookupCombo;
    Label23: TLabel;
    Vendedor: TwwDBLookupCombo;
    Nuevo_Imprimir: TCheckBox;
    Guardar_Temporal: TAction;
    Cargar_Temporal: TAction;
    Autorizacion_Cobro: TAction;
    Enviar_email: TAction;
    Opciones_Miscelaneas: TsuiPopupMenu;
    Menu_Anadir_Terminos: TMenuItem;
    Menu_Anadir_Cliente: TMenuItem;
    Menu_Configuracion_Facturas: TMenuItem;
    Menu_Definir_Departamento: TMenuItem;
    N1: TMenuItem;
    Menu_Cargar_Tempora: TMenuItem;
    Menu_Guardar_Temporal: TMenuItem;
    N2: TMenuItem;
    Label5: TLabel;
    ConceptoFactura: TwwDBComboBox;
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
    NumeroFactura: TDBEdit;
    Label1: TLabel;
    Tipo_Factura: TwwCheckBox;
    Label24: TLabel;
    Conduce: TDBEdit;
    Registrar_Seriales: TAction;
    Menu_Registrar_Seriales: TMenuItem;
    N4: TMenuItem;
    Filtrar_Categoria: TCheckBox;
    Categorias: TwwDBLookupCombo;
    Anular_Factura: TAction;
    Medidas: TwwDBComboBox;
    Modificar_Precio: TAction;
    Notificaciones: TStatusBar;
    bt_Orden_Compra: TSpeedButton;
    Cargar_Cotizacion: TAction;
    N5: TMenuItem;
    Imprimir_Comprobante_Entrega: TAction;
    Configurar_Comprobante_Entrega: TAction;
    ImprimirComprobanteEntrega1: TMenuItem;
    ConfigurarComprobantedeEntrega1: TMenuItem;
    Moneda: TwwDBLookupCombo;
    Marcar_Entregado: TAction;
    MarcarComoEntregado1: TMenuItem;
    AnularFactura1: TMenuItem;
    N6: TMenuItem;
    Comentario_Credito: TCheckBox;
    procedure CategoriasCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Filtrar_CategoriaClick(Sender: TObject);
    procedure Registrar_SerialesExecute(Sender: TObject);
    procedure DetallesColExit(Sender: TObject);
    procedure Autorizacion_CobroExecute(Sender: TObject);
    procedure Comentario_CreditoClick(Sender: TObject);
    procedure Cargar_TemporalExecute(Sender: TObject);
    procedure Guardar_TemporalExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
    procedure Procesar_PagoExecute(Sender: TObject);
    procedure Condicion_FacturaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Configuracion_FacturaExecute(Sender: TObject);
    procedure ClienteExit(Sender: TObject);
    procedure Registro_Clientesbt_GuardarClick(Sender: TObject);
    procedure Registro_Clientesbt_CancelarClick(Sender: TObject);
    procedure Anular_FacturaExecute(Sender: TObject);
    procedure Modificar_PrecioExecute(Sender: TObject);
    procedure DetallesCellChanged(Sender: TObject);
    procedure MedidasEnter(Sender: TObject);
    procedure Configurar_Comprobante_EntregaExecute(Sender: TObject);
    procedure Imprimir_Comprobante_EntregaExecute(Sender: TObject);
    procedure MonedaExit(Sender: TObject);
    procedure Marcar_EntregadoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function ImprimirRecibo(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;
Function ImprimirFactura(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;
Function ImprimirAutorizacion(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;

var
  FRecargas : TFRecargas;
  Buffer       : String = '';
  LstNCF       : String = '00';
  UseLstNCF    : Boolean = False;

implementation

uses DataModulo, Utilidades, Categorias, Departamentos,
  Fabricantes, Tipos_Productos, Status, Distrbuir_Vencimiento,
  dotmatrx, Terminos, DateUtils, CnfgForms, Reports_Forms, PagosFacturas,
  Registry, ConfigForm, Generales, DlgFinanciamientos, ResumenFacturas,
  Seriales_Productos_Facturados, Modificar_Precio, Autorizar, ESBDates;

{$R *.dfm}
{$I FactComm.Cnt}

procedure TFRecargas.FormCreate(Sender: TObject);
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

      Modulo.tFormas_Pago.Filter := 'Es_Efectivo = True';
      Modulo.tFormas_Pago.Filtered := True;
      Modulo.tFormas_Pago.Open;

      Modulo.tListado_Clientes.Open;
      Modulo.tListadoVendedores.Open;
      Modulo.tTerminos.Open;

      Modulo.tProductos.Open;
      Modulo.tListadoProductos.Filter := 'Paga_Comision = True';
      Modulo.tListadoProductos.Filtered := True;
      Modulo.tListadoProductos.Open;

      {Configuracion General}
      Modulo.tFacturas.Close;
      Modulo.tFacturas.Params.ParamByName('Proceso').Clear;
      Modulo.tFacturasCondicion.DefaultExpression := QuotedStr(Trim(Modulo.tParametrosCondicion_Facturacion.Value));
      Modulo.tFacturas.Open;

      RegInfo.CloseKey;
      RegInfo.OpenKey(_RecargasKey,False);

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

      Modulo.tFacturasImpuesto_Global.DisplayFormat := RegInfo.ReadString(_PcntFormat);
      Modulo.tFacturasDescuento_Global.DisplayFormat := RegInfo.ReadString(_PcntFormat);
      Modulo.tDetalles_FacturaImpuesto.DisplayFormat := RegInfo.ReadString(_PcntFormat);
      Modulo.tDetalles_FacturaDescuento.DisplayFormat := RegInfo.ReadString(_PcntFormat);
      Modulo.tDetalles_FacturaCantidad.DisplayFormat := RegInfo.ReadString(_QtyFormat);

      RegInfo.CloseKey;
      RegInfo.OpenKey(_LabelProductosKey,False);

      {Insertar Registro en Blanco}
      Nuevo.Execute
    End; {If _Load_Create}
end;

procedure TFRecargas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If Modulo.tFacturas.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicionSalida),
                              PChar(Salir.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then
      Begin
        Action := caNone;
        Exit
      End;

  {Cerrar las Tablas}
  Modulo.tFacturas.Cancel;
  Modulo.tFacturas.CancelUpdates;
  Modulo.tFacturas.Params.ParamByName('Proceso').Clear;
//  Modulo.tFacturas.Refresh;
  _ChkExistence := False;

  Modulo.tListado_Clientes.Cancel;
  Modulo.tListado_Clientes.CancelUpdates;
  Try
    Modulo.tProductos.AfterRefresh := Nil;
    Modulo.tProductos.Cancel;
    Modulo.tProductos.CancelUpdates;
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
  RegInfo.OpenKey(_RecargasKey,False);
  RegInfo.WriteString(_LastNCF,LstNCF)
end;

procedure TFRecargas.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFRecargas.NuevoExecute(Sender: TObject);
  Var
    Depto : Integer;
begin
   Try
    Cliente.OnExit := Nil;
    {Verificar el estado de la tabla de facturas}
    If (Modulo.tFacturas.State In DsEditModes) And
       (Modulo.tDetalles_Factura.RecordCount > 0) Then
      If Application.MessageBox(PChar(_DatosEnEdicion),
                                PChar(Nuevo.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

    {Filtrar la Tabla de Productos}
    RegInfo.CloseKey;
    RegInfo.OpenKey(_GeneralConfigKey,False);
    Depto := RegInfo.ReadInteger(_DetalleFacturaDepto);


    {Carga la Configuracion Inicial de la Pantalla}
    RegInfo.CloseKey;
    RegInfo.OpenKey(_RecargasKey,False);

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

    {Preparar la Tabla de Facturas}
    Modulo.tFacturas.Cancel;
    Modulo.tFacturas.CancelUpdates;
    Modulo.tFacturas.Append;

    Modulo.tListadoProductos.Cancel;
    Modulo.tListadoProductos.CancelUpdates;

    Modulo.tFacturasFecha.Value := Modulo.Enlace.AppServer.ServerDate;
    Modulo.tFacturasHora.Value  := Modulo.Enlace.AppServer.ServerTime;
    Modulo.tFacturasTipo_Factura.Value := RegInfo.ReadString(_TipoFacturas);
    Modulo.tFacturasAlmacen.Value := _CurrentStore;

    Modulo.tFacturasProceso.Value := Gen_ProcessNumber(_CurrentUser);
    Modulo.tFacturas.Params.ParamByName('Proceso').Value := Modulo.tFacturasProceso.Value;

    {Fijar Condicion Establecida para Venta}
    RegInfo.CloseKey;
    RegInfo.OpenKey(_RecargasKey,False);
    Modulo.tFacturasCondicion.Value := 'Crédito';

    Modulo.tFacturasTipo_NCF.Value := '00';

    If UseLstNCF Then
      Modulo.tFacturasTipo_NCF.Value := LstNCF;

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

procedure TFRecargas.GuardarExecute(Sender: TObject);
  Var
    Vence : TDate;
begin
  If Detalles.HasFocus Then Comentarios.SetFocus;

  If Modulo.tDetalles_Factura.State In dsEditModes Then Modulo.tDetalles_Factura.Post;

  If Modulo.tDetalles_Factura.RecordCount <= 0 Then
    Raise Exception.Create(_NoDatosGuardar);

  If ((Trim(Modulo.tFacturasCondicion.Value) = _CondicionContado) And
      (Modulo.tFacturasPendiente.Value > _Margen))
     Or
     ((Trim(Modulo.tFacturasCondicion.Value) = _CondicionContado) And
      (Modulo.tFacturasPendiente.Value < 0)) Then
    Procesar_Pago.Execute;

  If Modulo.tFacturas.State In DsEditModes Then
    Begin
      If (Trim(Modulo.tFacturasCondicion.Value) = _CondicionFinanciamiento) And
         (Modulo.tFacturasPendiente.Value > _Margen) Then
        OpenForm(TFormFinanciamientos,FormFinanciamientos);

      If (Trim(Modulo.tFacturasCondicion.Value) = _CondicionCredito) And
         (Modulo.tFacturasPendiente.Value > _Margen) Then
         Begin
           Modulo.tFacturasInteres.Value := 0;
           Modulo.tFacturasModalidad.Value := 'Cuotas Fijas';
           Modulo.tFacturasPlazo_Pago.Value := 1;
           Modulo.tFacturasMonto_Financiado.Value := Modulo.tFacturasPendiente.Value;
           Modulo.tFacturasPeriodo_Pagos.Value := Modulo.tFacturasNombre_Termino.Value;
           Modulo.GenerarCuotas(Vence,Modulo.tTerminosDiasDeGracia.Value,_ConceptoCuotaPrestamo)
         End;

      Modulo.tFacturas.Post
    end;

  LstNCF := Modulo.tFacturasTipo_NCF.Value;

  If Modulo.tFacturas.ChangeCount > 0 Then
    Begin
      Modulo.tFacturas.ApplyUpdates(0);
      Modulo.tReporter.Close;
      Modulo.tReporter.CommandText := 'Update "Facturas" Set "Seriales_Registrados" = (Select Count("Serial") From "Seriales_Despachados" Where "Proceso" = :Proceso2) Where "Proceso" = :Proceso1';
      Modulo.tReporter.Params.ParamByName('Proceso1').AsString := Modulo.tFacturasProceso.AsString;
      Modulo.tReporter.Params.ParamByName('Proceso2').AsString := Modulo.tFacturasProceso.AsString;
      Modulo.tReporter.Execute;
      Modulo.tFacturas.Refresh
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

procedure TFRecargas.Guardar_TemporalExecute(Sender: TObject);
begin
  If Modulo.tDetalles_Factura.RecordCount <= 0 Then
    Raise Exception.Create(_NoDatosGuardar);

  Modulo.tFacturas.SaveToFile(Modulo.tListado_ClientesNombreCompleto.Value +
                              '(' +
                              FormatDateTime('dd-mmm-yyyy hh.mm am/pm',Now()) +
                              ').pedido',dfXML);

  If (Nuevo_Imprimir.Checked) Then Nuevo.Execute;
end;

procedure TFRecargas.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFRecargas.DetallesEnter(Sender: TObject);
begin
  KeyPreview := False;
  If Registro_Clientes.Visible Then Registro_Clientesbt_GuardarClick(Sender);
  Detalles.SelectedField := Modulo.tDetalles_FacturaCodigo
end;

procedure TFRecargas.DetallesExit(Sender: TObject);
begin
  KeyPreview := True
end;

procedure TFRecargas.ImprimirExecute(Sender: TObject);
  Var
    DoPreview    : Boolean;
    OutputFormat : ShortInt;
    PrintFormat  : ShortInt;

begin
  GuardarExecute(Sender);

  {  Comentarios.SetFocus;

  If Modulo.tDetalles_Factura.State In dsEditModes Then Modulo.tDetalles_Factura.Post;


  If (Trim(Modulo.tFacturasCondicion.Value) = 'Contado') And
     (Modulo.tFacturasPendiente.Value > _Margen) Or
     (Modulo.tFacturasPendiente.Value < 0) Then
    Procesar_Pago.Execute;}
  If (Modulo.tFacturasTotal_Seriales.Value - Modulo.tFacturasSeriales_Registrados.Value) >= 1 Then
    Begin
      Mensaje(Format(_Seriales_Incompletos,[Modulo.tFacturasSeriales_Registrados.Text,
                                            Modulo.tFacturasTotal_Seriales.Text,
                                            IntToStr(Round(Modulo.tFacturasTotal_Seriales.Value -
                                                     Modulo.tFacturasSeriales_Registrados.Value))]),self);
      Exit
    end;

  RegInfo.CloseKey;
  RegInfo.OpenKey(_RecargasKey,False);

  DoPreview := VistaPrevia.Checked;
  OutputFormat := RegInfo.ReadInteger(_OutputFormat);
  PrintFormat := RegInfo.ReadInteger(_PrinterStyle);

  Case OutputFormat Of
    _Ticket : Begin
                If DoPreview Then
                  Begin
                    Application.CreateForm(TPreviewForm,PreviewForm);
                    ImprimirRecibo(_Screen,Desglosar.Checked);
                    PreviewForm.Vista.Lines.LoadFromFile(_PreviewFile);
                    PreviewForm.ShowModal;
                    If PreviewForm.ModalResult = MrOk Then DoPreview := False;
                    PreviewForm.Free
                  End; {If DoPreview}

                  If Not (DoPreview) Then ImprimirRecibo(_Port,Desglosar.Checked);
              End; // _Ticket

    _TextFormat : Begin
                    If DoPreview Then
                      Begin
                        Application.CreateForm(TPreviewForm,PreviewForm);
                        ImprimirFactura(_Screen,Desglosar.Checked);
                        PreviewForm.Vista.Lines.LoadFromFile(_PreviewFile);
                        PreviewForm.ShowModal;
                        If PreviewForm.ModalResult = MrOk Then DoPreview := False;
                        PreviewForm.Free
                      End; {If DoPreview}

                      If Not (DoPreview) Then ImprimirFactura(_Port,Desglosar.Checked);
                  End; // _TextFormat

    _GraphicForm : Begin
                     RegInfo.CloseKey;
                     RegInfo.OpenKey(_RecargasKey,False);
                     With ReportsAndForms.FormFactura Do
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
//                         ReportsAndForms.Nota_Pie_Factura.Text := RegInfo.ReadString(_NotaAlPie);

                         ReportsAndForms._Seccion  := _RecargasKey;

(*
                           ReportsAndForms.InvoiceTaxLabel.Visible       := Desglosar.Checked;
                           ReportsAndForms.InvoiceTax.Visible            := Desglosar.Checked;
                           ReportsAndForms.InvoiceDiscountLabel.Visible  := Desglosar.Checked;
                           ReportsAndForms.InvoiceDiscount.Visible       := Desglosar.Checked;
                           ReportsAndForms.InvoicePaidLabel.Visible      := Desglosar.Checked;
                           ReportsAndForms.InvoicePaidAmmount.Visible    := Desglosar.Checked;
                           ReportsAndForms.InvoicePendingLabel.Visible   := Desglosar.Checked;
                           ReportsAndForms.InvoicePendingAmmount.Visible := Desglosar.Checked;
    
*)
                         Print
                       End // With
                   End // _GraphicForm
  End; // Case

  If (Nuevo_Imprimir.Checked) Then Nuevo.Execute
end;

procedure TFRecargas.Imprimir_Comprobante_EntregaExecute(Sender: TObject);
  Var
    DoPreview    : Boolean;
    OutputFormat : ShortInt;
    PrintFormat  : ShortInt;

begin
  GuardarExecute(Sender);

  {  Comentarios.SetFocus;

  If Modulo.tDetalles_Factura.State In dsEditModes Then Modulo.tDetalles_Factura.Post;


  If (Trim(Modulo.tFacturasCondicion.Value) = 'Contado') And
     (Modulo.tFacturasPendiente.Value > _Margen) Or
     (Modulo.tFacturasPendiente.Value < 0) Then
    Procesar_Pago.Execute;}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_ComprobanteEntregaKey,False);

  OutputFormat := RegInfo.ReadInteger(_OutputFormat);
  PrintFormat := RegInfo.ReadInteger(_PrinterStyle);

  Case OutputFormat Of
    _GraphicForm : Begin
                     RegInfo.CloseKey;
                     RegInfo.OpenKey(_ComprobanteEntregaKey,False);
                     With ReportsAndForms.frmComprobante_Entrega Do
                       Begin
                         Template.FileName := RegInfo.ReadString(_TemplateFileName);

                         If (Trim(Template.FileName) <> _NoneStr) And (Trim(Template.FileName) <> '') Then
                           Template.LoadFromFile;

                         DeviceType                := DeviceTypes[RegInfo.ReadBool(_PreviewForm)];
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
//                         ReportsAndForms.Nota_Pie_Factura.Text := RegInfo.ReadString(_NotaAlPie);

                         ReportsAndForms._Seccion  := _ComprobanteEntregaKey;

                         Print
                       End // With
                   End // _GraphicForm
  End; // Case
end;

procedure TFRecargas.Marcar_EntregadoExecute(Sender: TObject);
begin
  If Not (Modulo.tFacturas.State In DsEditModes) Then
    Modulo.tFacturas.Edit;
  Modulo.tFacturasStatus_Trabajo.Value := 'ENTREGADO';
end;

procedure TFRecargas.MedidasEnter(Sender: TObject);
begin
(*
    Modulo.tDetalles_FacturaAfterScroll(Modulo.tDetalles_Factura);
    Medidas.Items.Clear;
    Medidas.Items.Add(Modulo.tProductosMedida_Venta.Text);
    Medidas.Items.Add('Unidad');

*)end;

procedure TFRecargas.Modificar_PrecioExecute(Sender: TObject);
begin
  If Trim(Modulo.tDetalles_FacturaCodigo_Real.Value) = '' Then Exit;
  Granted := False;
  ModuloGenerales.Autorizar_Opcion(Self,self.Name);
  If (Not Granted) Then Raise Exception.Create(_ErrAccesoDenegadoOpcion);

  _WindowsExitMode := mrNone;
  OpenForm(tFModificar_Precio,FModificar_Precio);
  If _WindowsExitMode = MrOk Then
    Begin
      Modulo.tDetalles_Factura.Edit;
      Modulo.tDetalles_FacturaValor_Moneda.Value := _NuevoPrecio;
      Modulo.tDetalles_FacturaUsuario_Autorizacion.Value := _GrantedUser;
    End;
end;

procedure TFRecargas.MonedaExit(Sender: TObject);
begin
  If Modulo.tFacturasMoneda.IsNull Then
    Begin
      Mensaje('Debe Seleccionar el Tipo de Moneda',Self);
      Moneda.SetFocus
    End;
end;

procedure TFRecargas.DetallesCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  If Field = Modulo.tDetalles_FacturaTotal_Precio Then
    Begin
      ABrush.Color := Detalles.TitleColor;
      AFont.Color := clBlack
    End;

  If Field = Modulo.tDetalles_FacturaPrecio_Venta Then
    Begin
      ABrush.Color := Total_Impuesto.Color;
      AFont.Color := clBlack
    End;
end;

procedure TFRecargas.DetallesCellChanged(Sender: TObject);
begin
//  If Detalles.SelectedField = Modulo
end;

procedure TFRecargas.AnadirClienteExecute(Sender: TObject);
begin
  Modulo.tClientes.Open;
  Modulo.tClientes.Append;
  Modulo.tClientesCedula_Rnc_Pasaporte.Value := '-';
  Modulo.tClientesTerminosFacturacion.Value := Modulo.tParametrosTermino_COD.Value;
  Modulo.tClientesProceso.Value := Gen_ProcessNumber(_CurrentUser);

  RegInfo.CloseKey;
  RegInfo.OpenKey(_RecargasKey,False);

  Modulo.tClientesCondicion_Cliente.Value := RegInfo.ReadString(_DefaultSaleCondition);

  Registro_Clientes.Left := Panel_Datos_Factura.Left;
  Registro_Clientes.Top := Panel_Datos_Factura.Top;
  Registro_Clientes.Pg_Clientes.Color := Color;
  Registro_Clientes.Datos_Cliente.TabBackGroundColor := Color;

  Panel_Datos_Factura.Visible := False;

  Registro_Clientes.Visible := True;
  Registro_Clientes.Cedula_Rnc_Pasaporte.SetFocus
end;

procedure TFRecargas.bt_Anadir_ClienteClick(Sender: TObject);
begin
  AnadirCliente.Execute
end;

procedure TFRecargas.DescripcionesCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  If Modified Then
    Modulo.tDetalles_FacturaCodigo.Value := Modulo.tListadoProductosCodigo.Value
end;

procedure TFRecargas.Cargar_TemporalExecute(Sender: TObject);
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

procedure TFRecargas.CategoriasCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  Modulo.tListadoProductos.Filter := 'Categoria = ' + Modulo.TCategoriaNumero.Text;
  Modulo.tListadoProductos.Filtered := True
end;

procedure TFRecargas.ClienteExit(Sender: TObject);
begin
  If Modulo.tFacturas.State In DsEditModes Then
    Begin
      Modulo.tFacturasNombre_Cliente.Value := Modulo.tListado_ClientesNombreCompleto.Value;
//      Modulo.tFacturasCondicion.Value := Modulo.tListado_ClientesCondicion_Cliente.Value;
      Modulo.tFacturasDescuento_Global.Value := Modulo.tListado_ClientesDescuento_Asignado.Value;
      Modulo.tFacturasTerminos.Value := Modulo.tListado_ClientesTerminosFacturacion.Value;
      FOTOLoadAndDisplay(Modulo.tListado_ClientesFoto,FOTO,_DefaultClientImg);
    end;

  Try
    Modulo.tFacturas_Cliente.Close;
    Modulo.tFacturas_Cliente.Params.ParamByName('Cliente').AsString := Trim(Modulo.tFacturasCliente.AsString);
    Modulo.tFacturas_Cliente.Open;
    Modulo.tFacturas_Cliente.Filter := 'Pendiente > 0';
    Modulo.tFacturas_Cliente.Filtered := True;
    If Modulo.tFacturas_Cliente.RecordCount > 0 Then
      Begin
        _Source := 'Cliente';
        OpenForm(TFResumenFacturas,FResumenFacturas)
      End

  finally
    Modulo.tFacturas_Cliente.Params.ParamByName('Cliente').Clear;
    Modulo.tFacturas_Cliente.Refresh;
    Modulo.tFacturas_Cliente.Filter := '';
    Modulo.tFacturas_Cliente.Filtered := False;
    Modulo.tFacturas_Cliente.Close
  end
end;

procedure TFRecargas.bt_Anadir_TerminosClick(Sender: TObject);
begin
  Anadir_Terminos.Execute
end;

procedure TFRecargas.Anadir_TerminosExecute(Sender: TObject);
begin
  OpenForm(TFTerminos,FTerminos)
end;

procedure TFRecargas.Anular_FacturaExecute(Sender: TObject);
begin
  If (Modulo.tFacturasNumero.Value <> 0) And Not(Modulo.tFacturasNumero.IsNull) Then
    Begin
      Try
        Modulo.tFacturas.BeforeEdit := Nil;
        Modulo.tDetalles_Factura.BeforeDelete := Nil;
        Modulo.tDetalles_Factura.AfterDelete := Nil;
        If Application.MessageBox(PChar(Format(_ConfirmarEliminar,[Modulo.tFacturasNumero.Text])),
                          'ELIMINAR FACTURA',
                          MB_YESNO + MB_ICONQUESTION) = ID_No Then Raise Exception.Create(_ErrAccesoDenegadoOpcion);

        Granted := False;
        ModuloGenerales.Autorizar_Opcion(Self,self.Name);
        If (Not Granted) Or (_GrantedLevel <> _SuperUserLevel) Then Raise Exception.Create(_ErrAccesoDenegadoOpcion);

        Modulo.tDetalle_Pago_Factura.First;
        While Not Modulo.tDetalle_Pago_Factura.Eof Do
          Modulo.tDetalle_Pago_Factura.Delete;

        Modulo.tDetalles_Factura.First;
        While Not Modulo.tDetalles_Factura.Eof Do
          Modulo.tDetalles_Factura.Delete;

          Modulo.tSeriales_Factura.First;
                  While Not Modulo.tSeriales_Factura.Eof Do
                    Modulo.tSeriales_Factura.Delete;

        Modulo.tCuotas.First;
        While Not Modulo.tCuotas.Eof Do
          Modulo.tCuotas.Delete;

        Modulo.tFacturas.Delete;
        Modulo.tFacturas.ApplyUpdates(0)
      Finally
        Modulo.tFacturas.BeforeEdit := Modulo.tFacturasBeforeEdit;
        Modulo.tDetalles_Factura.BeforeDelete := Modulo.tDetalles_FacturaBeforeDelete;
        Modulo.tDetalles_Factura.AfterDelete := Modulo.ActualizarDetallesFactura;
      End;
    End
end;

procedure TFRecargas.Autorizacion_CobroExecute(Sender: TObject);
  Var
    DoPreview    : Boolean;
    OutputFormat : ShortInt;
    PrintFormat  : ShortInt;

  Const
    DeviceTypes  : Array [False..True] Of String = ('Printer','Screen');

begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_RecargasKey,False);

  DoPreview := VistaPrevia.Checked;
  OutputFormat := _Ticket;
  PrintFormat := RegInfo.ReadInteger(_PrinterStyle);

  GuardarExecute(Sender);

  Case OutputFormat Of
    _Ticket : Begin
                If DoPreview Then
                  Begin
                    Application.CreateForm(TPreviewForm,PreviewForm);
                    ImprimirAutorizacion(_Screen,Desglosar.Checked);
                    PreviewForm.Vista.Lines.LoadFromFile(_PreviewFile);
                    PreviewForm.ShowModal;
                    If PreviewForm.ModalResult = MrOk Then DoPreview := False;
                    PreviewForm.Free
                  End; {If DoPreview}

                  If Not (DoPreview) Then ImprimirAutorizacion(_Port,Desglosar.Checked);
              End; // _Ticket

    _TextFormat : Begin
                    If DoPreview Then
                      Begin
                        Application.CreateForm(TPreviewForm,PreviewForm);
                        ImprimirFactura(_Screen,Desglosar.Checked);
                        PreviewForm.Vista.Lines.LoadFromFile(_PreviewFile);
                        PreviewForm.ShowModal;
                        If PreviewForm.ModalResult = MrOk Then DoPreview := False;
                        PreviewForm.Free
                      End; {If DoPreview}

                      If Not (DoPreview) Then ImprimirFactura(_Port,Desglosar.Checked);
                  End; // _TextFormat

    _GraphicForm : Begin

                     With ReportsAndForms.FormFactura Do
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

                         ReportsAndForms._Seccion  := _RecargasKey;

(*
                           ReportsAndForms.InvoiceTaxLabel.Visible       := Desglosar.Checked;
                           ReportsAndForms.InvoiceTax.Visible            := Desglosar.Checked;
                           ReportsAndForms.InvoiceDiscountLabel.Visible  := Desglosar.Checked;
                           ReportsAndForms.InvoiceDiscount.Visible       := Desglosar.Checked;
                           ReportsAndForms.InvoicePaidLabel.Visible      := Desglosar.Checked;
                           ReportsAndForms.InvoicePaidAmmount.Visible    := Desglosar.Checked;
                           ReportsAndForms.InvoicePendingLabel.Visible   := Desglosar.Checked;
                           ReportsAndForms.InvoicePendingAmmount.Visible := Desglosar.Checked;
    
*)
                         Print
                       End // With
                   End // _GraphicForm
  End // Case
end;

procedure TFRecargas.DetallesColEnter(Sender: TObject);
begin
  Detalles.RedrawGrid;
  Detalles.ColumnByName('Descuento').ReadOnly  := Not(Modulo.tProductosAplica_Descuento.Value);

  If Detalles.GetActiveField.FieldName = Modulo.tDetalles_FacturaCodigo.FieldName Then
    Modulo.tListadoProductos.IndexFieldNames := 'Codigo';

  If Detalles.GetActiveField.FieldName = Modulo.tDetalles_FacturaDescripcion.FieldName Then
    Modulo.tListadoProductos.IndexFieldNames := 'Descripcion';
end;

procedure TFRecargas.DetallesColExit(Sender: TObject);
begin
(*
    If Detalles.GetActiveField.FieldName = Modulo.tDetalles_FacturaCodigo.FieldName Then
      Begin
        RegInfo.CloseKey;
        RegInfo.OpenKey(_RecargasKey,True);
  
        If RegInfo.ReadBool(_SaltoAutoLinea) Then
            Modulo.tDetalles_Factura.Append;
      end
    
*)end;

procedure TFRecargas.Procesar_PagoExecute(Sender: TObject);
begin
  Try
    Comentarios.SetFocus;
    Modulo.tFormas_Pago.Filtered := False;
    Application.CreateForm(TFPago_Factura,FPago_Factura);
    FPago_Factura.ShowModal;
    If FPago_Factura.ModalResult <> MrOk Then SysUtils.Abort
  Finally
    FPago_Factura.Free;
    Modulo.tFormas_Pago.Filtered := True;
    Modulo.tFormas_Pago.Open 
  End
end;

procedure TFRecargas.Comentario_CreditoClick(Sender: TObject);
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_RecargasKey,False);

  If Not(Modulo.tFacturas.State In DsEditModes) Then Modulo.tFacturas.Edit;

  If Comentario_Credito.Checked Then
    Modulo.tFacturasComentario.Value := RegInfo.ReadString(_Comentario_Credito)
  Else
    Modulo.tFacturasComentario.Clear
end;

procedure TFRecargas.Condicion_FacturaClick(Sender: TObject);
begin
  TerminoFacturacion.Enabled := Condicion_Factura.ItemIndex = 1;
  Procesar_Pago.Enabled := True;

  If (Modulo.tFacturas.State In DsEditModes) Then
    Case Condicion_Factura.ItemIndex Of
      0 : Modulo.tFacturasTerminos.Value :=  Modulo.tParametrosTermino_COD.Value;
      1 : Modulo.tFacturasTerminos.Value :=  Modulo.tListado_ClientesTerminosFacturacion.Value;
      2 : Begin
            Modulo.tFacturasTerminos.Value :=  Modulo.tParametrosTermino_Financiado.Value;
            Procesar_Pago.Enabled := False;
          End;
    End; {Case}

  If TerminoFacturacion.Enabled And Self.Visible Then
    TerminoFacturacion.SetFocus;

  If Condicion_Factura.ItemIndex <> 0 Then
    Comentario_Credito.Checked := True
end;

procedure TFRecargas.Filtrar_CategoriaClick(Sender: TObject);
begin
  Categorias.Visible := Filtrar_Categoria.Checked;
  Modulo.tListadoProductos.Filtered := Filtrar_Categoria.Checked
end;

procedure TFRecargas.FormActivate(Sender: TObject);
begin
  Try
    Cliente.OnExit := Nil;
    RegInfo.CloseKey;
    RegInfo.OpenKey(_RecargasKey,False);
    If RegInfo.ReadBool(_DetalleFacturaFocus) Then Detalles.SetFocus
    Else Moneda.SetFocus
  Finally
    Cliente.OnExit := ClienteExit;
  End;
end;

procedure TFRecargas.Configuracion_FacturaExecute(Sender: TObject);
begin
  Application.CreateForm(TFConfigForms,FConfigForms);
  FConfigForms._Seccion := _RecargasKey;
  FConfigForms.Caption := Configuracion_Factura.Caption;
  If Trim(FConfigForms._Seccion) <> '' Then
    Try
      FConfigForms.LoadValues
    Finally
      FConfigForms.ShowModal;
      FConfigForms.Free
    End; // Try
end;

procedure TFRecargas.Configurar_Comprobante_EntregaExecute(Sender: TObject);
begin
  Application.CreateForm(TFConfigForms,FConfigForms);
  FConfigForms._Seccion := _ComprobanteEntregaKey;
  FConfigForms.Caption := Configurar_Comprobante_Entrega.Caption;
  If Trim(FConfigForms._Seccion) <> '' Then
    Try
      FConfigForms.LoadValues
    Finally
      FConfigForms.ShowModal;
      FConfigForms.Free
    End; // Try
end;

procedure TFRecargas.Registrar_SerialesExecute(Sender: TObject);
begin
  GuardarExecute(Sender);
  Try
    Modulo.tFacturas.BeforeEdit := Nil;
    OpenForm(TFSeriales_Productos_Facturados,FSeriales_Productos_Facturados)
  finally
    Modulo.tFacturas.BeforeEdit := Modulo.tFacturasBeforeEdit
  end;
end;

procedure TFRecargas.Registro_Clientesbt_CancelarClick(Sender: TObject);
begin
  Registro_Clientes.CancelarExecute(Sender);
  Panel_Datos_Factura.Visible := True;
  Registro_Clientes.Visible := False;
  Registro_Clientes.CancelarExecute(Sender);
  Modulo.tClientes.Cancel;
  Modulo.tClientes.CancelUpdates;
  Modulo.tClientes.Close
end;

procedure TFRecargas.Registro_Clientesbt_GuardarClick(Sender: TObject);
  Var
    ActualCode : String;
begin
  Registro_Clientes.GuardarExecute(Sender);
  ActualCode := Modulo.tClientesCedula_Rnc_Pasaporte.Value;
  If ActualCode = ''  Then ActualCode := '000-0000000-0';
  Modulo.tListado_Clientes.Refresh;

  Modulo.tListado_Clientes.Locate('Cedula_Rnc_Pasaporte',Modulo.tClientesCedula_Rnc_Pasaporte.Value,[]);
  ActualCode := Modulo.tListado_ClientesCedula_RNC_Pasaporte.Value;

  If Not (Modulo.tFacturas.State In DsEditModes) Then Modulo.tFacturas.Edit;
  Modulo.tFacturasCliente.Value := ActualCode;
  Modulo.tFacturasNombre_Cliente.Value := Modulo.tClientesNombreCompleto.Value;

  Registro_Clientesbt_CancelarClick(Sender)
end;

Initialization
  RegisterClass(TFRecargas);

end.
