unit Facturacion;

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
  TFFacturacion = class(TForm)
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
    Comentario_Credito: TCheckBox;
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
    AnularFactura1: TMenuItem;
    procedure CategoriasCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Filtrar_CategoriaClick(Sender: TObject);
    procedure Registrar_SerialesExecute(Sender: TObject);
    procedure DetallesRowChanged(Sender: TObject);
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
    procedure Procesar_PagoExecute(Sender: TObject);
    procedure Condicion_FacturaClick(Sender: TObject);
    procedure Definir_DepartamentoExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Configuracion_FacturaExecute(Sender: TObject);
    procedure ClienteExit(Sender: TObject);
    procedure Registro_Clientesbt_GuardarClick(Sender: TObject);
    procedure Registro_Clientesbt_CancelarClick(Sender: TObject);
    procedure Anular_FacturaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function ImprimirRecibo(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;
Function ImprimirFactura(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;
Function ImprimirAutorizacion(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;

var
  FFacturacion : TFFacturacion;
  Buffer       : String = '';
  LstNCF       : String = '00';
  UseLstNCF    : Boolean = False;

implementation

uses DataModulo, Utilidades, SrchDlg, Categorias, Departamentos,
  Fabricantes, Tipos_Productos, Status, Distrbuir_Vencimiento,
  dotmatrx, Terminos, DateUtils, CnfgForms, Reports_Forms, PagosFacturas,
  Registry, ConfigForm, Generales, DlgFinanciamientos, ResumenFacturas,
  Seriales_Productos_Facturados, Autorizar;

{$R *.dfm}
{$I FactComm.Cnt}

procedure TFFacturacion.FormCreate(Sender: TObject);
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

      Modulo.tProductos.Open;
      Modulo.tListadoProductos.Open;

      {Configuracion General}
      Modulo.tFacturasCondicion.DefaultExpression := QuotedStr(Trim(Modulo.tParametrosCondicion_Facturacion.Value));
      Modulo.tFacturas.Open;

      RegInfo.CloseKey;
      RegInfo.OpenKey(_FacturaProductosKey,False);

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
      Modulo.tFacturasDescuento_Global.DisplayFormat := Modulo.tFacturasImpuesto_Global.DisplayFormat;
      Modulo.tDetalles_FacturaImpuesto.DisplayFormat := Modulo.tFacturasImpuesto_Global.DisplayFormat;
      Modulo.tDetalles_FacturaDescuento.DisplayFormat := Modulo.tFacturasImpuesto_Global.DisplayFormat;

      Reginfo.CloseKey;
      RegInfo.OpenKey(_GeneralConfigKey,True);
      Modulo.tDetalles_FacturaCantidad.DisplayFormat := RegInfo.ReadString(_QtyFormat);

      Modulo.tDetalles_FacturaPrecio_Real.currency := False;
      Modulo.tDetalles_FacturaPrecio_Venta.currency := False;
      Modulo.tDetalles_FacturaPrecio_Minimo.currency := False;

      Reginfo.CloseKey;
      RegInfo.OpenKey(_GeneralConfigKey,True);
      Modulo.tDetalles_FacturaPrecio_Real.DisplayFormat := RegInfo.ReadString(_PricesFormat);
      Modulo.tDetalles_FacturaPrecio_Venta.DisplayFormat := Modulo.tDetalles_FacturaPrecio_Real.DisplayFormat;
      Modulo.tDetalles_FacturaPrecio_Minimo.DisplayFormat := Modulo.tDetalles_FacturaPrecio_Real.DisplayFormat;

      {Insertar Registro en Blanco}
      Nuevo.Execute
    End; {If _Load_Create}
end;

procedure TFFacturacion.FormClose(Sender: TObject; var Action: TCloseAction);
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
  If Modulo.tClientes.Active Then
    Begin
      Modulo.tClientes.Cancel;
      Modulo.tClientes.CancelUpdates;
      Modulo.tClientes.Close
    End;

  _ChkExistence := False;

  Modulo.tListado_Clientes.Cancel;
  Modulo.tListado_Clientes.CancelUpdates;
  Modulo.tListado_Clientes.Close;

  Modulo.tListadoVendedores.Close;

  Modulo.tTerminos.Close;

  Modulo.tDepartamentos.Close;

  Try
    Modulo.tProductos.AfterRefresh := Nil;
    Modulo.tProductos.Params.ParamByName('Codigo').Clear;
    Modulo.tProductos.Params.ParamByName('Barra').Clear;
    Modulo.tProductos.Params.ParamByName('Secuencia').Clear;
    Modulo.tProductos.Params.ParamByName('Proceso').Clear;
    Modulo.tProductos.Params.ParamByName('Referencia').Clear;
    Modulo.tProductos.Refresh;
  Finally
    Modulo.tProductos.AfterRefresh := Modulo.tProductosAfterRefresh;
    Modulo.tProductos.Close
  End;

  Modulo.tComprobantes_Fiscales.Close;

  Modulo.tListadoProductos.Filter := '';
  Modulo.tListadoProductos.Filtered := False;
  Modulo.tListadoProductos.Cancel;
  Modulo.tListadoProductos.CancelUpdates;
  Modulo.tListadoProductos.Close;

  Modulo.tCategoria.Close;

  Modulo.tFacturas.Cancel;
  Modulo.tFacturas.CancelUpdates;
  Modulo.tFacturas.Params.ParamByName('Proceso').Clear;
  Modulo.tFacturas.Refresh;
  Modulo.tFacturas.Close;

  RegInfo.CloseKey;
  RegInfo.OpenKey(_FacturaProductosKey,False);
  RegInfo.WriteString(_LastNCF,LstNCF)
end;

procedure TFFacturacion.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFFacturacion.NuevoExecute(Sender: TObject);
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
    RegInfo.OpenKey(_FacturaProductosKey,False);

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

    Modulo.tFacturasAlmacen.Value := _CurrentStore;
    Modulo.tFacturasFecha.Value := Modulo.Enlace.AppServer.ServerDate;
    Modulo.tFacturasHora.Value  := Modulo.Enlace.AppServer.ServerTime;
    Modulo.tFacturasCondicion.Value := RegInfo.ReadString(_CondFacturas);
    Modulo.tFacturasTipo_Factura.Value := RegInfo.ReadString(_TipoFacturas);

    Ps:= 0;

    Modulo.tFacturasProceso.Value := Gen_ProcessNumber(_CurrentUser);
    Modulo.tFacturas.Params.ParamByName('Proceso').Value := Modulo.tFacturasProceso.Value;

    {Fijar Condicion Establecida para Venta}
    RegInfo.CloseKey;
    RegInfo.OpenKey(_FacturaProductosKey,False);
    Modulo.tFacturasCondicion.Value := RegInfo.ReadString(_DefaultSaleCondition);

    Modulo.tFacturasTipo_NCF.Value := '00';

    If UseLstNCF Then
      Modulo.tFacturasTipo_NCF.Value := LstNCF;

    FOTOLoadAndDisplay(Modulo.tListado_ClientesFoto,FOTO,_DefaultClientImg)
   Finally
     {Ubicar el Punto de Edicion}
     If Self.Visible Then
       If RegInfo.ReadBool(_DetalleFacturaFocus) Then Detalles.SetFocus
     Else
       Cliente.SetFocus;

     Cliente.OnExit := ClienteExit;
   End;
end;

procedure TFFacturacion.GuardarExecute(Sender: TObject);
  Var
    Vence : TDate;
begin
  If Detalles.HasFocus Then Comentarios.SetFocus;

  If Modulo.tDetalles_Factura.State In dsEditModes Then Modulo.tDetalles_Factura.Post;

  If (Modulo.tDetalles_Factura.RecordCount <= 0) And (Modulo.tFacturasNumero.Value = 0) Then
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
           Modulo.GenerarCuotas(Vence,Modulo.tTerminosDiasDeGracia.Value)
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

procedure TFFacturacion.Guardar_TemporalExecute(Sender: TObject);
begin
  If Modulo.tDetalles_Factura.RecordCount <= 0 Then
    Raise Exception.Create(_NoDatosGuardar);

  Modulo.tFacturas.SaveToFile(Modulo.tListado_ClientesNombreCompleto.Value +
                              '(' +
                              FormatDateTime('dd-mmm-yyyy hh.mm am/pm',Now()) +
                              ').pedido',dfXML);

  If (Nuevo_Imprimir.Checked) Then Nuevo.Execute;
end;

procedure TFFacturacion.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFFacturacion.SerialPortTriggerAvail(CP: TObject; Count: Word);
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
      Modulo.tDetalles_FacturaCodigo.Value := Buffer;
      Buffer := ''
    End
end;

procedure TFFacturacion.BuscarExecute(Sender: TObject);
begin
    Try
      Application.CreateForm(TDlgSearch,DlgSearch);
      DlgSearch.OpenDlg('Facturas',Modulo.tFacturasNumero.FieldName,'D',wsMaximized);
      If DlgSearch.ModalResult = MrOk Then
        Begin
          {Verificar el estado de la tabla de facturas}
          If Modulo.tFacturas.State In DsEditModes Then
            If Application.MessageBox(PChar(_DatosEnEdicion),
                                      PChar(Buscar.Caption),
                                      MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

          Modulo.tFacturas.Cancel;
          Modulo.tFacturas.CancelUpdates;
          Modulo.tFacturas.Params.ParamByName('Proceso').AsString := DlgSearch.SrchCds.FieldByName('Proceso').AsString;
          Modulo.tFacturas.Refresh;
          Modulo.tFacturasTipo_NCFValidate(Modulo.tFacturasTipo_NCF);

          FOTOLoadAndDisplay(Modulo.tListado_ClientesFoto,FOTO,_DefaultClientImg)
        End
    Finally
      DlgSearch.CloseDlg
    End {Try}
end;

procedure TFFacturacion.DetallesEnter(Sender: TObject);
begin
  KeyPreview := False;
  If Registro_Clientes.Visible Then Registro_Clientesbt_GuardarClick(Sender);
  Detalles.SelectedField := Modulo.tDetalles_FacturaCodigo
end;

procedure TFFacturacion.DetallesExit(Sender: TObject);
begin
  KeyPreview := True
end;

procedure TFFacturacion.DetallesRowChanged(Sender: TObject);
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_FacturaProductosKey,True);

  If RegInfo.ReadBool(_SaltoAutoLinea) Then
    Detalles.SelectedField := Modulo.tDetalles_FacturaCodigo;
end;

procedure TFFacturacion.ImprimirExecute(Sender: TObject);
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
                                                     Modulo.tFacturasSeriales_Registrados.Value))]));
      Exit
    end;

  RegInfo.CloseKey;
  RegInfo.OpenKey(_FacturaProductosKey,False);

  DoPreview := VistaPrevia.Checked;
  OutputFormat := RegInfo.ReadInteger(_OutputFormat);
  PrintFormat := RegInfo.ReadInteger(_PrinterStyle);

  If Ps = 0 Then OutputFormat := PrintFormat;

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
                     RegInfo.OpenKey(_FacturaProductosKey,False);
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
                         ReportsAndForms.Nota_Pie_Factura.Text := RegInfo.ReadString(_NotaAlPie);

                         ReportsAndForms._Seccion  := _FacturaProductosKey;

                         ReportsAndForms.InvoiceTaxLabel.Visible       := Desglosar.Checked;
                         ReportsAndForms.InvoiceTax.Visible            := Desglosar.Checked;
                         ReportsAndForms.InvoiceDiscountLabel.Visible  := Desglosar.Checked;
                         ReportsAndForms.InvoiceDiscount.Visible       := Desglosar.Checked;
                         ReportsAndForms.InvoicePaidLabel.Visible      := Desglosar.Checked;
                         ReportsAndForms.InvoicePaidAmmount.Visible    := Desglosar.Checked;
                         ReportsAndForms.InvoicePendingLabel.Visible   := Desglosar.Checked;
                         ReportsAndForms.InvoicePendingAmmount.Visible := Desglosar.Checked;

                         Print
                       End // With
                   End // _GraphicForm
  End; // Case

  If (Nuevo_Imprimir.Checked) Then Nuevo.Execute
end;

procedure TFFacturacion.DetallesCalcCellColors(Sender: TObject;
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

procedure TFFacturacion.AnadirClienteExecute(Sender: TObject);
begin
  Modulo.tClientes.Open;
  Modulo.tClientes.Append;
  Modulo.tClientesCedula_Rnc_Pasaporte.Value := '-';
  Modulo.tClientesTerminosFacturacion.Value := Modulo.tParametrosTermino_COD.Value;
  Modulo.tClientesProceso.Value := Gen_ProcessNumber(_CurrentUser);

  RegInfo.CloseKey;
  RegInfo.OpenKey(_FacturaProductosKey,False);

  Modulo.tClientesCondicion_Cliente.Value := RegInfo.ReadString(_DefaultSaleCondition);

  Registro_Clientes.Left := Panel_Datos_Factura.Left;
  Registro_Clientes.Top := Panel_Datos_Factura.Top;
  Registro_Clientes.Pg_Clientes.Color := Color;
  Registro_Clientes.Datos_Cliente.TabBackGroundColor := Color;

  Panel_Datos_Factura.Visible := False;

  Registro_Clientes.Visible := True;
  Registro_Clientes.Cedula_Rnc_Pasaporte.SetFocus
end;

procedure TFFacturacion.bt_Anadir_ClienteClick(Sender: TObject);
begin
  AnadirCliente.Execute
end;

procedure TFFacturacion.DescripcionesCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  If Modified Then
    Modulo.tDetalles_FacturaCodigo.Value := Modulo.tListadoProductosCodigo.Value
end;

procedure TFFacturacion.Cargar_TemporalExecute(Sender: TObject);
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

procedure TFFacturacion.CategoriasCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  Modulo.tListadoProductos.Filter := 'Categoria = ' + Modulo.TCategoriaNumero.Text;
  Modulo.tListadoProductos.Filtered := True
end;

procedure TFFacturacion.ClienteExit(Sender: TObject);
begin
  If Modulo.tFacturas.State In DsEditModes Then
    Begin
      Modulo.tFacturasNombre_Cliente.Value := Modulo.tListado_ClientesNombreCompleto.Value;
      Modulo.tFacturasCondicion.Value := Modulo.tListado_ClientesCondicion_Cliente.Value;
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

procedure TFFacturacion.bt_Anadir_TerminosClick(Sender: TObject);
begin
  Anadir_Terminos.Execute
end;

procedure TFFacturacion.Anadir_TerminosExecute(Sender: TObject);
begin
  OpenForm(TFTerminos,FTerminos)
end;

procedure TFFacturacion.Anular_FacturaExecute(Sender: TObject);
begin
  Try
    Modulo.tDetalles_Factura.DisableControls;
    Modulo.tDetalles_Factura.First;
    While Not Modulo.tDetalles_Factura.Eof Do
      Modulo.tDetalles_Factura.Delete;
    Modulo.tFacturasComentario.AsString := 'ANULADA POR : ' + _GrantedUser + Modulo.tFacturasComentario.AsString;
    Guardar.Execute;
  Finally
    Modulo.tDetalles_Factura.EnableControls
  End;
end;

procedure TFFacturacion.Autorizacion_CobroExecute(Sender: TObject);
  Var
    DoPreview    : Boolean;
    OutputFormat : ShortInt;
    PrintFormat  : ShortInt;

  Const
    DeviceTypes  : Array [False..True] Of String = ('Printer','Screen');

begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_FacturaProductosKey,False);

  DoPreview := VistaPrevia.Checked;
  OutputFormat := _Ticket;
  PrintFormat := RegInfo.ReadInteger(_PrinterStyle);

  GuardarExecute(Sender);

  If Ps = 0 Then OutputFormat := PrintFormat;

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

                         ReportsAndForms._Seccion  := _FacturaProductosKey;

                         ReportsAndForms.InvoiceTaxLabel.Visible       := Desglosar.Checked;
                         ReportsAndForms.InvoiceTax.Visible            := Desglosar.Checked;
                         ReportsAndForms.InvoiceDiscountLabel.Visible  := Desglosar.Checked;
                         ReportsAndForms.InvoiceDiscount.Visible       := Desglosar.Checked;
                         ReportsAndForms.InvoicePaidLabel.Visible      := Desglosar.Checked;
                         ReportsAndForms.InvoicePaidAmmount.Visible    := Desglosar.Checked;
                         ReportsAndForms.InvoicePendingLabel.Visible   := Desglosar.Checked;
                         ReportsAndForms.InvoicePendingAmmount.Visible := Desglosar.Checked;

                         Print
                       End // With
                   End // _GraphicForm
  End // Case
end;

procedure TFFacturacion.DetallesColEnter(Sender: TObject);
begin
  Detalles.RedrawGrid;
  Detalles.ColumnByName('Descuento').ReadOnly  := Not(Modulo.tProductosAplica_Descuento.Value);

  If Detalles.GetActiveField.FieldName = Modulo.tDetalles_FacturaCodigo.FieldName Then
    Modulo.tListadoProductos.IndexFieldNames := 'Codigo';

  If Detalles.GetActiveField.FieldName = Modulo.tDetalles_FacturaDescripcion.FieldName Then
    Modulo.tListadoProductos.IndexFieldNames := 'Descripcion';
end;

procedure TFFacturacion.DetallesColExit(Sender: TObject);
begin
  If Detalles.GetActiveField.FieldName = Modulo.tDetalles_FacturaCodigo.FieldName Then
    Begin
      RegInfo.CloseKey;
      RegInfo.OpenKey(_FacturaProductosKey,True);

      If RegInfo.ReadBool(_SaltoAutoLinea) Then
          Modulo.tDetalles_Factura.Append;
    end
end;

procedure TFFacturacion.Procesar_PagoExecute(Sender: TObject);
begin
  Comentarios.SetFocus;
  Application.CreateForm(TFPago_Factura,FPago_Factura);
  FPago_Factura.ShowModal;
  If FPago_Factura.ModalResult <> MrOk Then SysUtils.Abort
end;

procedure TFFacturacion.Comentario_CreditoClick(Sender: TObject);
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_FacturaProductosKey,False);

  If Not(Modulo.tFacturas.State In DsEditModes) Then Modulo.tFacturas.Edit;

  If Comentario_Credito.Checked Then
    Modulo.tFacturasComentario.Value := RegInfo.ReadString(_Comentario_Credito)
  Else
    Modulo.tFacturasComentario.Clear
end;

procedure TFFacturacion.Condicion_FacturaClick(Sender: TObject);
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

procedure TFFacturacion.Definir_DepartamentoExecute(Sender: TObject);
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

procedure TFFacturacion.Filtrar_CategoriaClick(Sender: TObject);
begin
  Categorias.Visible := Filtrar_Categoria.Checked;
  Modulo.tListadoProductos.Filtered := Filtrar_Categoria.Checked
end;

procedure TFFacturacion.FormActivate(Sender: TObject);
begin
  Try
    Cliente.OnExit := Nil;
    RegInfo.CloseKey;
    RegInfo.OpenKey(_FacturaProductosKey,False);
    If RegInfo.ReadBool(_DetalleFacturaFocus) Then Detalles.SetFocus
    Else Cliente.SetFocus
  Finally
    Cliente.OnExit := ClienteExit;
  End;
end;

procedure TFFacturacion.Configuracion_FacturaExecute(Sender: TObject);
begin
  Application.CreateForm(TFConfigForms,FConfigForms);
  FConfigForms._Seccion := _FacturaProductosKey;
  FConfigForms.Caption := Configuracion_Factura.Caption;
  If Trim(FConfigForms._Seccion) <> '' Then
    Try
      FConfigForms.LoadValues
    Finally
      FConfigForms.ShowModal;
      FConfigForms.Free
    End; // Try
end;

procedure TFFacturacion.Registrar_SerialesExecute(Sender: TObject);
begin
  GuardarExecute(Sender);
  Try
    Modulo.tFacturas.BeforeEdit := Nil;
    OpenForm(TFSeriales_Productos_Facturados,FSeriales_Productos_Facturados)
  finally
    Modulo.tFacturas.BeforeEdit := Modulo.tFacturasBeforeEdit
  end;
end;

procedure TFFacturacion.Registro_Clientesbt_CancelarClick(Sender: TObject);
begin
  Registro_Clientes.CancelarExecute(Sender);
  Panel_Datos_Factura.Visible := True;
  Registro_Clientes.Visible := False;
  Registro_Clientes.CancelarExecute(Sender);
  Modulo.tClientes.Cancel;
  Modulo.tClientes.CancelUpdates;
  Modulo.tClientes.Close
end;

procedure TFFacturacion.Registro_Clientesbt_GuardarClick(Sender: TObject);
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
  RegisterClass(TFFacturacion);

end.
