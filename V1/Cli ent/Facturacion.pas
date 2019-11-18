unit Facturacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ActnColorMaps, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, MSNPopUp, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, OoMisc, AdPort, wwriched, Grids,
  Wwdbigrd, Wwdbgrid, frmClientes, Wwdbspin, IniFiles, ppBarCod,
  ppCtrls, ppPrnabl, ppClass, ppCache, ppBands, ppProd, ppReport, ppDB,
  ppComm, ppRelatv, ppDBPipe, wwcheckbox;

type
  TFFacturacion = class(TForm)
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Barra_Opciones: TActionMainMenuBar;
    pcDatos_Factura: TAdvPageControl;
    DatosFactura: TAdvTabSheet;
    pcDetalles_Factura: TAdvPageControl;
    DetallesFactura: TAdvTabSheet;
    Botones: TAdvPageControl;
    Page_Botones: TAdvTabSheet;
    ActionToolBar1: TActionToolBar;
    Label5: TLabel;
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
    ConceptoFactura: TwwDBComboBox;
    Label2: TLabel;
    Cliente: TwwDBLookupCombo;
    sbAnadir_Cliente: TSpeedButton;
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
    TerminoFacturacion: TwwDBLookupCombo;
    Label18: TLabel;
    sbAnadir_Terminos: TSpeedButton;
    Label1: TLabel;
    NumeroFactura: TDBEdit;
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
    Tipo_Factura: TwwCheckBox;
    Label20: TLabel;
    Condicion_Factura: TwwDBComboBox;
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
    procedure ClienteCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure AnadirClienteExecute(Sender: TObject);
    procedure sbAnadir_ClienteClick(Sender: TObject);
    procedure DescripcionesCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ClienteDropDown(Sender: TObject);
    procedure sbAnadir_TerminosClick(Sender: TObject);
    procedure Anadir_TerminosExecute(Sender: TObject);
    procedure DetallesColEnter(Sender: TObject);
    procedure Procesar_PagoExecute(Sender: TObject);
    procedure Condicion_FacturaClick(Sender: TObject);
    procedure Definir_DepartamentoExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Configuracion_FacturaExecute(Sender: TObject);
    procedure Registro_ClientessbGuardarClick(Sender: TObject);
    procedure Registro_ClientessbCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function ImprimirRecibo(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;

var
  FFacturacion : TFFacturacion;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, SrchDlg, Categorias, Departamentos,
  Fabricantes, Tipos_Productos, Status, Distrbuir_Vencimiento,
  dotmatrx, Terminos, DateUtils, CnfgForms, Reports_Forms, PagosFacturas,
  Registry, ConfigForm;

{$R *.dfm}
{$I FactComm.Cnt}

procedure TFFacturacion.FormCreate(Sender: TObject);
  Var
    I : Integer;
begin

  Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

  {Activar Los Permisos del Usuario}
  ActivateOptions(Sender,_CurrentLevel,Modulo.tAccesos);

  {Asigna a los Botones Los ShortCuts Del Menu y Action Lists}
  For I := 0 To (Self.ComponentCount - 1) Do
    Begin
      If (Self.Components[I] Is TAdvPageControl) Then
         (Self.Components[I] As TAdvPageControl).TabBackGroundColor := Color;
    End;

  {Limite de entrada para el año de vencimiento del producto}
{  seAnio.MinValue := YearOf(Modulo.Enlace.AppServer.ServerDate);
  seAnio.MaxValue := seAnio.MinValue + 30;}

  {Abrir las Tablas Requeridas}
  Modulo.tParametros.Params.ParamByName('Terminal').AsString := _CurrentTerminal;
  Modulo.tParametros.Open;

  Modulo.tListado_Clientes.Open;
  Modulo.tTerminos.Open;

  Modulo.tProductos.Open;
  Modulo.tListadoProductos.Open;

  {Configuracion General}

  Modulo.tFacturasCondicion.DefaultExpression := QuotedStr(Trim(Modulo.tParametrosCondicion_Facturacion.Value));
  Modulo.tFacturas.Open;

  Reginfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,True);

  Modulo.tFacturasImpuesto_Global.DisplayFormat := RegInfo.ReadString(_PcntFormat);
  Modulo.tFacturasDescuento_Global.DisplayFormat := RegInfo.ReadString(_PcntFormat);
  Modulo.tDetalles_FacturaImpuesto.DisplayFormat := RegInfo.ReadString(_PcntFormat);
  Modulo.tDetalles_FacturaDescuento.DisplayFormat := RegInfo.ReadString(_PcntFormat);
  Modulo.tDetalles_FacturaCantidad.DisplayFormat := RegInfo.ReadString(_QtyFormat);

  {Insertar Registro en Blanco}
  Nuevo.Execute
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

  {Cerrar las Tablas Requeridas}
  Modulo.tClientes.Close;
  Modulo.tListado_Clientes.Close;
  Modulo.tTerminos.Close;
  Modulo.tDepartamentos.Close;
  Modulo.tProductos.Close;

  Modulo.tListadoProductos.Filter := '';
  Modulo.tListadoProductos.Filtered := False;

  Modulo.tListadoProductos.Close;
  Modulo.tFacturas.Close
end;

procedure TFFacturacion.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFFacturacion.NuevoExecute(Sender: TObject);
  Var
    Depto : Integer;
begin
  {Verificar el estado de la tabla de facturas}
  If Modulo.tFacturas.State In DsEditModes Then
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

  Case RegInfo.ReadBool(_UseCustomControl) Of
    True  : Detalles.SetControlType('Codigo', fctCustom, 'Codigos');
    False : Detalles.SetControlType('Codigo', fctField, '')
  End; {Case}

  Detalles.RedrawGrid;

  Modulo.tListadoProductos.Filter := 'Departamento = ' + IntToStr(Depto);
  Modulo.tListadoProductos.Filtered := (Depto <> 0);

  {Ubicar el Punto de Edicion}
  If Self.Visible Then
    If RegInfo.ReadBool(_DetalleFacturaFocus) Then Detalles.SetFocus
  Else
    Referencia.SetFocus;

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
  Modulo.tFacturasCondicion.Value := RegInfo.ReadString(_CondFacturas);
  Modulo.tFacturasTipo_Factura.Value := RegInfo.ReadString(_TipoFacturas);

  Modulo.tFacturasProceso.Value := Gen_ProcessNumber(_CurrentUser);
  Modulo.tFacturas.Params.ParamByName('Proceso').Value := Modulo.tFacturasProceso.Value;

  {Fijar Condicion Establecida para Venta}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_FacturaProductosKey,False);
  Modulo.tFacturasCondicion.Value := RegInfo.ReadString(_DefaultSaleCondition)
end;

procedure TFFacturacion.GuardarExecute(Sender: TObject);
begin
  Comentarios.SetFocus;

  If Modulo.tDetalles_Factura.State In dsEditModes Then Modulo.tDetalles_Factura.Post;

  If Modulo.tDetalles_Factura.RecordCount <= 0 Then
    Raise Exception.Create(_NoDatosGuardar);

  If (Trim(Modulo.tFacturasCondicion.Value) = 'Contado') And
     (Modulo.tFacturasPendiente.Value > _Margen) Or
     (Modulo.tFacturasPendiente.Value < 0) Then
    Procesar_Pago.Execute;

  If Modulo.tFacturas.State In DsEditModes Then
    Modulo.tFacturas.Post;

  If Modulo.tFacturas.ChangeCount > 0 Then
    Modulo.tFacturas.ApplyUpdates(0);

  If Modulo.tListadoProductos.ChangeCount > 0 Then
    Modulo.tListadoProductos.ApplyUpdates(0);

  Modulo.tFacturas.Refresh;


  Modulo.Mensajes.Text := _DatosGuardados;
  Modulo.Mensajes.ShowPopUp;

  If (Sender Is TAction) Then
    If (Sender As TAction).Name = Guardar.Name Then
     Nuevo.Execute
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

    VK_F3      :
      Begin
      End
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
          Modulo.tFacturas.Refresh
        End
    Finally
      DlgSearch.CloseDlg
    End {Try}
end;

procedure TFFacturacion.DetallesEnter(Sender: TObject);
begin
  KeyPreview := False;
  If Registro_Clientes.Visible Then Registro_ClientessbGuardarClick(Sender);
  Detalles.SelectedField := Modulo.tDetalles_FacturaCodigo
end;

procedure TFFacturacion.DetallesExit(Sender: TObject);
begin
  KeyPreview := True
end;

procedure TFFacturacion.ImprimirExecute(Sender: TObject);
  Var
    DoPreview    : Boolean;
    OutputFormat : ShortInt;

  Const
    DeviceTypes  : Array [False..True] Of String = ('Printer','Screen');

begin
  GuardarExecute(Sender);

  RegInfo.CloseKey;
  RegInfo.OpenKey(_FacturaProductosKey,False);

  DoPreview := RegInfo.ReadBool(_PreviewForm);
  OutputFormat := RegInfo.ReadInteger(_OutputFormat);

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

procedure TFFacturacion.ClienteCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  KeyPreview := True;
  If Modified Then
    Begin
      Modulo.tFacturasNombre_Cliente.Value := Modulo.tListado_ClientesNombreCompleto.Value;
      Modulo.tFacturasTerminos.Value := Modulo.tListado_ClientesTerminosFacturacion.Value
    End
end;

procedure TFFacturacion.AnadirClienteExecute(Sender: TObject);
begin
  Modulo.tClientes.Open;
  Modulo.tClientes.Append;
  Modulo.tClientesCedula_Rnc_Pasaporte.Value := '-';
  Modulo.tClientesProceso.Value := Gen_ProcessNumber(_CurrentUser);
  Registro_Clientes.Left := pcDatos_Factura.Left;
  Registro_Clientes.Top := pcDatos_Factura.Top;
  Registro_Clientes.Page_Clientes.Color := Color;
  Registro_Clientes.Datos_Cliente.TabBackGroundColor := Color;
  pcDatos_Factura.Visible := False;
  Registro_Clientes.Visible := True;
  Registro_Clientes.Cedula_Rnc_Pasaporte.SetFocus
end;

procedure TFFacturacion.sbAnadir_ClienteClick(Sender: TObject);
begin
  AnadirCliente.Execute
end;

procedure TFFacturacion.DescripcionesCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  If Modified Then
    Modulo.tDetalles_FacturaCodigo.Value := Modulo.tListadoProductosCodigo.Value
end;

procedure TFFacturacion.ClienteDropDown(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TFFacturacion.sbAnadir_TerminosClick(Sender: TObject);
begin
  Anadir_Terminos.Execute
end;

procedure TFFacturacion.Anadir_TerminosExecute(Sender: TObject);
begin
  OpenForm(TFTerminos,FTerminos)
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

procedure TFFacturacion.Procesar_PagoExecute(Sender: TObject);
begin
  Comentarios.SetFocus;
  Application.CreateForm(TFPago_Factura,FPago_Factura);
  FPago_Factura.ShowModal;
  If FPago_Factura.ModalResult <> MrOk Then SysUtils.Abort
end;

procedure TFFacturacion.Condicion_FacturaClick(Sender: TObject);
begin
  TerminoFacturacion.Enabled := Condicion_Factura.ItemIndex <> 0;
  If ((Modulo.tFacturas.State In DsEditModes) And (Condicion_Factura.ItemIndex = 0)) Then
    Modulo.tFacturasTerminos.Value :=  Modulo.tParametrosTermino_COD.Value
  Else If TerminoFacturacion.Enabled And Self.Visible Then TerminoFacturacion.SetFocus
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

procedure TFFacturacion.FormActivate(Sender: TObject);
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_FacturaProductosKey,False);
  If RegInfo.ReadBool(_DetalleFacturaFocus) Then Detalles.SetFocus
  Else Referencia.SetFocus
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

procedure TFFacturacion.Registro_ClientessbGuardarClick(Sender: TObject);
  Var
    ActualCode : String;
begin
  Registro_Clientes.GuardarExecute(Sender);
  ActualCode := Modulo.tClientesProceso.Value;
  If ActualCode = ''  Then ActualCode := '000-0000000-0';
  Modulo.tListado_Clientes.Refresh;

  Modulo.tListado_Clientes.Locate('Proceso',Modulo.tClientesProceso.Value,[]);
  ActualCode := Modulo.tListado_ClientesCedula_RNC_Pasaporte.Value;

  If Not (Modulo.tFacturas.State In DsEditModes) Then Modulo.tFacturas.Edit;
  Modulo.tFacturasCliente.Value := ActualCode;
  Modulo.tFacturasNombre_Cliente.Value := Modulo.tClientesNombreCompleto.Value;

  Registro_ClientessbCancelarClick(Sender)
end;

procedure TFFacturacion.Registro_ClientessbCancelarClick(Sender: TObject);
begin
  Registro_Clientes.CancelarExecute(Sender);
  pcDatos_Factura.Visible := True;
  Registro_Clientes.Visible := False;
  Registro_Clientes.CancelarExecute(Sender);
  Modulo.tClientes.Close
end;

end.
