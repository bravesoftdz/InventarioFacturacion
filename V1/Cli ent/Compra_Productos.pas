unit Compra_Productos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ActnColorMaps, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, MSNPopUp, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, OoMisc, AdPort, wwriched, Grids,
  Wwdbigrd, Wwdbgrid, frmProveedores, Wwdbspin, IniFiles, ppBarCod,
  ppCtrls, ppPrnabl, ppClass, ppCache, ppBands, ppProd, ppReport, ppDB,
  ppComm, ppRelatv, ppDBPipe;

type
  TFCompra_Productos = class(TForm)
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    Datos_Compra: TAdvPageControl;
    Page_Compras: TAdvTabSheet;
    Detalles_Compra: TAdvPageControl;
    Page_Detalles: TAdvTabSheet;
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
    Fecha: TDBEdit;
    Label4: TLabel;
    Hora: TDBEdit;
    Detalles: TwwDBGrid;
    Comentarios: TwwDBRichEdit;
    DetallesIButton: TwwIButton;
    Imprimir: TAction;
    Concepto_Compra: TwwDBComboBox;
    Label2: TLabel;
    Proveedor: TwwDBLookupCombo;
    sbAnadir_Proveedor: TSpeedButton;
    Cedula_RNC_Proveedor: TDBEdit;
    Telefono_Proveedor: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    AnadirProveedor: TAction;
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
    Pendiente_Pago: TDBEdit;
    Registro_Proveedores: TFrameProveedores;
    Anadir_Terminos: TAction;
    TerminoFacturacion: TwwDBLookupCombo;
    Label18: TLabel;
    sbAnadir_Terminos: TSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label19: TLabel;
    Vence: TDBEdit;
    Imprimir_Etiquetas: TAction;
    Configuracion_Etiquetas: TAction;
    VistaPrevia: TCheckBox;
    Desglosar: TCheckBox;
    Anadir_Producto: TAction;
    Definir_Departamento: TAction;
    Configuracion_Compras: TAction;
    Estadisticas_Producto: TAction;
    Codigos: TwwDBLookupCombo;
    Descripciones: TwwDBLookupCombo;
    Porciento_G_Impuesto: TEdit;
    Porciento_G_Descuento: TEdit;
    Label20: TLabel;
    Label21: TLabel;
    procedure Porciento_G_DescuentoExit(Sender: TObject);
    procedure Porciento_G_ImpuestoExit(Sender: TObject);
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
    procedure ProveedorCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure AnadirProveedorExecute(Sender: TObject);
    procedure sbAnadir_ProveedorClick(Sender: TObject);
    procedure DescripcionesCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ProveedorDropDown(Sender: TObject);
    procedure sbAnadir_TerminosClick(Sender: TObject);
    procedure Anadir_TerminosExecute(Sender: TObject);
    procedure DetallesColEnter(Sender: TObject);
    procedure Imprimir_EtiquetasExecute(Sender: TObject);
    procedure Configuracion_EtiquetasExecute(Sender: TObject);
    procedure Anadir_ProductoExecute(Sender: TObject);
    procedure Definir_DepartamentoExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Configuracion_ComprasExecute(Sender: TObject);
    procedure Registro_ProveedoresBoton_GuardarClick(Sender: TObject);
    procedure Registro_ProveedoresBoton_CancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function ImprimirRecibo(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;

var
  FCompra_Productos : TFCompra_Productos;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, SrchDlg, Categorias, Departamentos,
  Fabricantes, Proveedores, Tipos_Productos, Status, Distrbuir_Vencimiento,
  dotmatrx, Terminos, DateUtils, CnfgForms, Reports_Forms, PagosCompras,
  Productos;

{$R *.dfm}

procedure TFCompra_Productos.FormCreate(Sender: TObject);
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
//  seAnio.MinValue := YearOf(Modulo.Enlace.AppServer.ServerDate);
//  seAnio.MaxValue := seAnio.MinValue + 30;

  {Abrir las Tablas Requeridas}
  Modulo.tParametros.Params.ParamByName('Terminal').AsString := _CurrentTerminal;
  Modulo.tParametros.Open;

  Porcentaje_Global_Impuesto :=  Modulo.tParametrosImpuesto.Value;
  Porcentaje_Global_Descuento :=  Modulo.tParametrosDescuento.Value;

  Porciento_G_Impuesto.Text := FloatToStr(Porcentaje_Global_Impuesto);
  Porciento_G_Descuento.Text := FloatToStr(Porcentaje_Global_Descuento);

  Modulo.tProveedores.Open;
  Modulo.tTerminos.Open;

  Modulo.tProductos.Open;
  Modulo.tListadoProductos.Open;

  Modulo.tCompra_Productos.Open;

  {Insertar Registro en Blanco}
  Nuevo.Execute
end;

procedure TFCompra_Productos.FormClose(Sender: TObject; var Action: TCloseAction);
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
  Modulo.tProveedores.Close;
  Modulo.tTerminos.Close;
  Modulo.tDepartamentos.Close;
  Modulo.tProductos.Close;

  Modulo.tListadoProductos.Filter := '';
  Modulo.tListadoProductos.Filtered := False;

  Modulo.tListadoProductos.Close;
  Modulo.tCompra_Productos.Close
end;

procedure TFCompra_Productos.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFCompra_Productos.NuevoExecute(Sender: TObject);
  Var
    Depto : Integer;
begin
  {Verificar el estado de la tabla de facturas}
  If Modulo.tCompra_Productos.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

  {Filtrar la Tabla de Productos}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,False);
  Depto := RegInfo.ReadInteger(_DetalleCompraDepto);

  {Carga la Configuracion Inicial de la Pantalla}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_CompraProductosKey,False);

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

  {Preparar la Tabla de Compra}
  Modulo.tCompra_Productos.Cancel;
  Modulo.tCompra_Productos.CancelUpdates;
  Modulo.tCompra_Productos.Append;

  Modulo.tListadoProductos.Cancel;
  Modulo.tListadoProductos.CancelUpdates;

  Modulo.tCompra_ProductosFecha.Value := Modulo.Enlace.AppServer.ServerDate;
  Modulo.tCompra_ProductosHora.Value  := Modulo.Enlace.AppServer.ServerTime;

  Modulo.tCompra_ProductosProceso.Value := Gen_ProcessNumber(_CurrentUser);
  Modulo.tCompra_Productos.Params.ParamByName('Proceso').Value := Modulo.tCompra_ProductosProceso.Value
end;

procedure TFCompra_Productos.GuardarExecute(Sender: TObject);
begin
  If Modulo.tDetalles_Compra.RecordCount <= 0 Then
    Raise Exception.Create(_NoDatosGuardar);

  If Modulo.tDetalles_Compra.State = dsEdit Then Modulo.tDetalles_Compra.Post;

{  If (Modulo.tCompra_ProductosTerminos.Value  = 1) And
     (Modulo.tCompra_ProductosPendiente.Value > _Margen) Or
     (Modulo.tCompra_ProductosPendiente.Value < 0) Then
    Procesar_Pago.Execute;}

  If Modulo.tCompra_Productos.State In DsEditModes Then
    Modulo.tCompra_Productos.Post;

  If Modulo.tCompra_Productos.ChangeCount > 0 Then
    Modulo.tCompra_Productos.ApplyUpdates(0);

  If Modulo.tListadoProductos.ChangeCount > 0 Then
    Modulo.tListadoProductos.ApplyUpdates(0);

  Modulo.tCompra_Productos.Refresh;

  Modulo.Mensajes.Text := _DatosGuardados;
  Modulo.Mensajes.ShowPopUp;

  If (Sender Is TAction) Then
    If (Sender As TAction).Name = Guardar.Name Then
     Nuevo.Execute
end;

procedure TFCompra_Productos.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFCompra_Productos.SerialPortTriggerAvail(CP: TObject; Count: Word);
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

  If count < 8 Then
    Begin
      Modulo.tDetalles_CompraCodigo.Value := Buffer;
      Buffer := ''
    End
end;

procedure TFCompra_Productos.BuscarExecute(Sender: TObject);
begin
    Try
      Application.CreateForm(TDlgSearch,DlgSearch);
      DlgSearch.OpenDlg('Compra_Productos',Modulo.tCompra_ProductosNumero.FieldName,'D',wsMaximized);
      If DlgSearch.ModalResult = MrOk Then
        Begin
          {Verificar el estado de la tabla de facturas}
          If Modulo.tCompra_Productos.State In DsEditModes Then
            If Application.MessageBox(PChar(_DatosEnEdicion),
                                      PChar(Buscar.Caption),
                                      MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

          Modulo.tCompra_Productos.Cancel;
          Modulo.tCompra_Productos.CancelUpdates;
          Modulo.tCompra_Productos.Params.ParamByName('Proceso').AsString := DlgSearch.SrchCds.FieldByName('Proceso').AsString;
          Modulo.tCompra_Productos.Refresh
        End
    Finally
      DlgSearch.CloseDlg
    End {Try}
end;

procedure TFCompra_Productos.DetallesEnter(Sender: TObject);
begin
  KeyPreview := False;
  If Registro_Proveedores.Visible Then Registro_ProveedoresBoton_CancelarClick(Sender);
  Detalles.SelectedField := Modulo.tDetalles_CompraCodigo
end;

procedure TFCompra_Productos.DetallesExit(Sender: TObject);
begin
  KeyPreview := True
end;

procedure TFCompra_Productos.ImprimirExecute(Sender: TObject);
  Var
    DoPreview    : Boolean;
    OutputFormat : ShortInt;

  Const
    DeviceTypes  : Array [False..True] Of String = ('Printer','Screen');

begin
  GuardarExecute(Sender);

  RegInfo.CloseKey;
  RegInfo.OpenKey(_CompraProductosKey,False);

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

                     With ReportsAndForms.FormCompra Do
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

                         ReportsAndForms._Seccion  := _CompraProductosKey;

                         ReportsAndForms.Product_InvoiceTaxLabel.Visible       := Desglosar.Checked;
                         ReportsAndForms.Product_InvoiceTax.Visible            := Desglosar.Checked;
                         ReportsAndForms.Product_InvoiceDiscountLabel.Visible  := Desglosar.Checked;
                         ReportsAndForms.Product_InvoiceDiscount.Visible       := Desglosar.Checked;
                         ReportsAndForms.Product_InvoicePaidLabel.Visible      := Desglosar.Checked;
                         ReportsAndForms.Product_InvoicePaidAmmount.Visible    := Desglosar.Checked;
                         ReportsAndForms.Product_InvoicePendingLabel.Visible   := Desglosar.Checked;
                         ReportsAndForms.Product_InvoicePendingAmmount.Visible := Desglosar.Checked;

                         Print
                       End // With
                   End // _GraphicForm
  End // Case
end;

procedure TFCompra_Productos.DetallesCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  If Field = Modulo.tDetalles_CompraTotal_Costo Then
    Begin
      ABrush.Color := Detalles.TitleColor;
      AFont.Color := clBlack
    End;

  If Field = Modulo.tDetalles_CompraPrecio_Lista Then
    Begin
      ABrush.Color := Total_Impuesto.Color;
      AFont.Color := clBlack
    End;

  If Field = Modulo.tDetalles_CompraCosto Then
    Begin
      ABrush.Color := Total_Descuento.Color;
      AFont.Color := clBlack
    End;
end;

procedure TFCompra_Productos.Porciento_G_DescuentoExit(Sender: TObject);
begin
  If Trim(Porciento_G_Descuento.Text) = '' Then Porciento_G_Descuento.Text := '0.00';

  Try
    Porcentaje_Global_Descuento := StrToFloat(Trim(Porciento_G_Descuento.Text))
  Except
    Porciento_G_Descuento.Text := '0.00';
    Porcentaje_Global_Descuento := 0;
  end
end;

procedure TFCompra_Productos.Porciento_G_ImpuestoExit(Sender: TObject);
begin
  If Trim(Porciento_G_Impuesto.Text) = '' Then Porciento_G_Impuesto.Text := '0.00';

  Try
    Porcentaje_Global_Impuesto := StrToFloat(Trim(Porciento_G_Impuesto.Text))
  Except
    Porciento_G_Impuesto.Text := '0.00';
    Porcentaje_Global_Impuesto := 0;
  end
end;

procedure TFCompra_Productos.ProveedorCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  KeyPreview := True;
  If Modified Then
    Begin
      Modulo.tCompra_ProductosNombre_Proveedor.Value := Modulo.tProveedoresNombre.Value;
      Modulo.tCompra_ProductosTerminos.Value := Modulo.tProveedoresTerminosFacturacion.Value
    End
end;

procedure TFCompra_Productos.AnadirProveedorExecute(Sender: TObject);
begin
  Modulo.tProveedores.Append;
  Modulo.tProveedoresCedula_Rnc_Pasaporte.Value := '-';
  Registro_Proveedores.Left := Datos_Compra.Left;
  Registro_Proveedores.Top := Datos_Compra.Top;
  Registro_Proveedores.Page_Proveedores.Color := Color;
  Registro_Proveedores.Datos_Proveedor.TabBackGroundColor := Color;
  Datos_Compra.Visible := False;
  Registro_Proveedores.Visible := True;
  Registro_Proveedores.Nombre_Proveedor.SetFocus
end;

procedure TFCompra_Productos.sbAnadir_ProveedorClick(Sender: TObject);
begin
  AnadirProveedor.Execute
end;

Function ImprimirRecibo(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;
  Var
    Duplex              : Boolean;
    Factor              : Byte;
    LineasDespues       ,
    I                   : Integer;
    Salida              ,
    Impresora           ,
    Coment_Enc          ,
    Coment_Pie1         ,
    Coment_Pie2         ,
    Coment_Pie3         ,
    Coment_Pie4         ,
    RNC                 ,
    Format_Num_Tel_Hora ,
    Format_Fecha        ,
    Separador           ,
    NumSize             : String;
  Begin
    {Leer el Tipo de Impresora a Utilizar}
    RegInfo.CloseKey;
    RegInfo.OpenKey(_CompraProductosKey,False);

    Impresora           := RegInfo.ReadString(_Printer);
    AnchoLinea          := RegInfo.ReadInteger(_LineWidth);
    Coment_Enc          := RegInfo.ReadString(_Enc_Coment);
    Coment_Pie1         := RegInfo.ReadString(_Foot_Coment1);
    Coment_Pie2         := RegInfo.ReadString(_Foot_Coment2);
    Coment_Pie3         := RegInfo.ReadString(_Foot_Coment3);
    Separador           := RegInfo.ReadString(_LineSeparator);
    Format_Num_Tel_Hora := RegInfo.ReadString(_Format_NPH);
    Format_Fecha        := RegInfo.ReadString(_DateFormat);
    NumSize             := RegInfo.ReadString(_Num_Size);
    LineasDespues       := RegInfo.ReadInteger(_LinesAfter);
    Salida              := RegInfo.ReadString(_Salida);
    Duplex              := RegInfo.ReadBool(_Duplex);

    RegInfo.CloseKey;
    RegInfo.OpenKey(_GeneralConfigKey,False);
    Format_Fecha := RegInfo.ReadString(Trim(Format_Fecha));

    SetPrinterCodes(Impresora);

    Factor := 1;
    If OutDevice = _Port Then Factor := 2;

    BeginPrn(OutDevice,Salida);

    {Encabezado}
    If OutDevice = _Port Then
      Begin
        Prn(_Init);
        Prn(_BigFont);
        Prn(_WBigFont);
      End;

    RegInfo.CloseKey;
    RegInfo.OpenKey(_CompanyInfoKey,False);
    RNC := UnEncrypt(RegInfo.ReadString(_UserCompRNC));

    // Nombre
    If Duplex Then
      Prn(CBrush(UnEncrypt(RegInfo.ReadString(_UserCompName)),AnchoLinea Div Factor));

    PrnLn(CBrush(UnEncrypt(RegInfo.ReadString(_UserCompName)),AnchoLinea Div Factor));

    If OutDevice = _Port Then Prn(_NoBigFont);

    // Comentario / Slogan
    If Trim(Coment_Enc) <> '' Then
      Begin
        If Duplex Then
          Prn(CBrush(Coment_Enc,AnchoLinea));
        PrnLn(CBrush(Coment_Enc,AnchoLinea))
      End;

    // Direccion
    If Duplex Then
      Prn(CBrush(UnEncrypt(RegInfo.ReadString(_UserCompAddres)),AnchoLinea));
    PrnLn(CBrush(UnEncrypt(RegInfo.ReadString(_UserCompAddres)),AnchoLinea));

    // # Recibo , Telefono y Hora de Venta
    If Duplex Then
      Prn(LBrush(LBrush(FormatDateTime('dd/mm/yyyy',Modulo.tCompra_ProductosFecha.Value),12) +
                 CBrush(UnEncrypt(RegInfo.ReadString(_UserCompPhone1)),14)+
                 RBrush(FormatDateTime('hh:mm am/pm',Modulo.tCompra_ProductosHora.Value),12),AnchoLinea));

    PrnLn(LBrush(FormatDateTime('dd/mm/yyyy',Modulo.tCompra_ProductosFecha.Value),12) +
          CBrush(UnEncrypt(RegInfo.ReadString(_UserCompPhone1)),14)+
          RBrush(FormatDateTime('hh:mm am/pm',Modulo.tCompra_ProductosHora.Value),12));

    If Duplex Then
      Prn(LBrush(LBrush(Modulo.tTerminosDescripcion.Value,AnchoLinea Div 2) +
                 LBrush(FormatDateTime('"Vence :" dd/mmm/yyyy',Modulo.tCompra_ProductosVencimiento.Value),AnchoLinea Div 2),AnchoLinea));

    PrnLn(LBrush(LBrush(Modulo.tTerminosDescripcion.Value,AnchoLinea Div 2) +
                 LBrush(FormatDateTime('"Vence :" dd/mmm/yyyy',Modulo.tCompra_ProductosVencimiento.Value),AnchoLinea Div 2),AnchoLinea));

    // RNC
    If Trim(RNC) <> '' Then
      Begin
        If Duplex Then
          Prn(CBrush(RNC,AnchoLinea));
        PrnLn(CBrush(RNC,AnchoLinea))
      End;

    {Tipo de Recibo}
    If OutDevice = _Port Then Prn(_BigFont);

    If Duplex Then
      Prn(CBrush(UPPERCASE(Format('FACTURA %s',[Modulo.tCompra_ProductosNumero.Text])),(AnchoLinea Div Factor)));

    Prn(CBrush(UPPERCASE(Format('FACTURA %s',[Modulo.tCompra_ProductosNumero.Text])),(AnchoLinea Div Factor)));
    {PrnLn(CBrush(UPPERCASE('FACTURA'),(AnchoLinea Div (Factor * 2)))+
          CBrush(Modulo.tCompra_ProductosNumero.Text,(AnchoLinea Div (Factor * 2))));}

    If OutDevice = _Port Then Prn(_NoBigFont);

    PrnLn(#32);

    If OutDevice = _Port Then
      Begin
        Prn(_NoBigFont);
        Prn(_Draft)
      End;

    {Cuerpo de la Factura}
    If Duplex Then
      Prn(LBrush('Nombre   : '+Trim(Modulo.tCompra_ProductosNombre_Proveedor.Value),AnchoLinea));

    PrnLn(LBrush('Nombre   : '+Trim(Modulo.tCompra_ProductosNombre_Proveedor.Value),AnchoLinea));

    If Duplex Then
      Prn(LBrush('Direccion: '+Modulo.tProveedoresDireccion.Value,AnchoLinea));

    PrnLn(LBrush('Direccion: '+Modulo.tProveedoresDireccion.Value,AnchoLinea));

    If Duplex Then
      Prn(LBrush('Telefono : '+Modulo.tProveedoresNumero_Telefono_1.Value,AnchoLinea));

    PrnLn(LBrush('Telefono : '+Modulo.tProveedoresNumero_Telefono_1.Value,AnchoLinea));

    If Duplex Then
      Prn(Fill('-',AnchoLinea));

    PrnLn(Fill('-',AnchoLinea));

    If Duplex Then
      Prn(LBrush(CBrush('Cant'        ,04)+
                 CBrush('Descripcion' ,18)+
                 CBrush('Precio'      ,08)+
                 CBrush('Total'       ,10),AnchoLinea));

    Prnln(LBrush(CBrush('Cant'        ,04)+
                 CBrush('Descripcion' ,18)+
                 CBrush('Precio'      ,08)+
                 CBrush('Total'       ,10),AnchoLinea));

    If Duplex Then
      Prn(Fill('-',AnchoLinea));

    PrnLn(Fill('-',AnchoLinea));

    Modulo.tDetalles_Compra.First;
    While Not Modulo.tDetalles_Compra.EOF Do
       Begin
         If Duplex Then
           Prn(LBrush(LBrush(Format('%*.*f',[8,0,Modulo.tDetalles_CompraCantidad.Value])     ,04)+
                      LBrush(Modulo.tDetalles_CompraDescripcion.Value                        ,18)+
                      RBrush(Format('%*.*f',[8,1,Modulo.tDetalles_CompraCosto.Value]) ,08)+
                      RBrush(Format('%*.*f',[8,1,Modulo.tDetalles_CompraTotal_Costo.Value]) ,09)+' ',AnchoLinea));

         Prnln(LBrush(LBrush(Format('%*.*f',[8,0,Modulo.tDetalles_CompraCantidad.Value])     ,04)+
                      LBrush(Modulo.tDetalles_CompraDescripcion.Value                        ,18)+
                      RBrush(Format('%*.*f',[8,1,Modulo.tDetalles_CompraCosto.Value]) ,08)+
                      RBrush(Format('%*.*f',[8,1,Modulo.tDetalles_CompraTotal_Costo.Value]) ,09)+' ',AnchoLinea));

         Modulo.tDetalles_Compra.Next;
       End; {While}

    {Sumario / Totales de la Compra}
    If Duplex Then
      Prn(Fill('-',AnchoLinea));

    PrnLn(Fill('-',AnchoLinea));

    If Desglozar Then
      Begin
        If Duplex Then
          Prn(RBrush(RBrush('SubTotal:',AnchoLinea - 12) +
                     RBrush(Format('%m',[Modulo.tCompra_ProductosSubTotal.Value]),12),AnchoLinea-1));

        PrnLn(RBrush('SubTotal:',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCompra_ProductosSubTotal.Value]),12));

        If Duplex Then
          Prn(RBrush(RBrush('Total Impuesto:',AnchoLinea - 12) +
                     RBrush(Format('%m',[Modulo.tCompra_ProductosTotal_Impuesto.Value]),12),AnchoLinea-1));

        PrnLn(RBrush('Total Impuesto:',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCompra_ProductosTotal_Impuesto.Value]),12));

        If Duplex Then
          Prn(RBrush(RBrush('Total Descuento:',AnchoLinea - 12) +
                     RBrush(Format('%m',[Modulo.tCompra_ProductosTotal_Descuento.Value]),12),AnchoLinea-1));

        PrnLn(RBrush('Total Descuento:',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCompra_ProductosTotal_Descuento.Value]),12));

        If Duplex Then
          Prn(RBrush(Fill('-',AnchoLinea Div 2),AnchoLinea));

        PrnLn(RBrush(Fill('-',AnchoLinea Div 2),AnchoLinea));
      End;

    // Total Compra
    If Duplex Then
      Prn(RBrush(RBrush('Total Neto:',AnchoLinea - 12) +
                 RBrush(Format('%m',[Modulo.tCompra_ProductosTotalNeto.Value]),12),AnchoLinea-1));

    PrnLn(RBrush('Total Neto:',AnchoLinea - 12) +
          RBrush(Format('%m',[Modulo.tCompra_ProductosTotalNeto.Value]),12));

    If Duplex Then
      Prn(RBrush(Fill('=',AnchoLinea Div 2),AnchoLinea));

    PrnLn(RBrush(Fill('=',AnchoLinea Div 2),AnchoLinea));

    PrnLn(#32);

    If Desglozar Then
      Begin
        If Duplex Then
          Prn(RBrush(RBrush('Pagado:',AnchoLinea - 12) +
                     RBrush(Format('%m',[Modulo.tCompra_ProductosPagado.Value]),12),AnchoLinea-1));

        PrnLn(RBrush('Pagado:',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCompra_ProductosPagado.Value]),12));

        If Duplex Then
          Prn(RBrush(RBrush('Pendiente:',AnchoLinea - 12) +
                     RBrush(Format('%m',[Modulo.tCompra_ProductosPendiente.Value]),12),AnchoLinea-1));

        PrnLn(RBrush('Pendiente:',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCompra_ProductosPendiente.Value]),12));
      End;

    If OutDevice = _Port Then
      Begin
        Prn(_NoBigFont);
        Prn(_Draft)
      End;
    PrnLn(#32);
    PrnLn(#32);
    If Duplex Then
      Prn(CBrush(Fill('_',20)+Fill(' ',2)+Fill('_',20),AnchoLinea));

    PrnLn(CBrush(Fill('_',20)+Fill(' ',2)+Fill('_',20),AnchoLinea));

    If Duplex Then
      Prn(CBrush('Entregado Por',20) +
            Fill(' ',2)+
          CBrush('Recibido Por',20));

    PrnLn(CBrush('Entregado Por',20) +
            Fill(' ',2)+
          CBrush('Recibido Por',20));

    If Trim(Coment_Pie1) <> '' Then
      Begin
        If Duplex Then
          Prn(CBrush(Coment_Pie1,AnchoLinea));

        PrnLn(CBrush(Coment_Pie1,AnchoLinea))
      End;

    If Trim(Coment_Pie2) <> '' Then
      Begin
        If Duplex Then
          Prn(CBrush(Coment_Pie2,AnchoLinea));

        PrnLn(CBrush(Coment_Pie2,AnchoLinea))
      End;

    If Trim(Coment_Pie3) <> '' Then
      Begin
        If Duplex Then
          Prn(CBrush(Coment_Pie3,AnchoLinea));

        PrnLn(CBrush(Coment_Pie3,AnchoLinea))
      End;

    If Trim(Coment_Pie4) <> '' Then
      Begin
        If Duplex Then
          Prn(CBrush(Coment_Pie4,AnchoLinea));

        PrnLn(CBrush(Coment_Pie4,AnchoLinea))
      End;

    If Duplex Then
      Prn(CBrush('Le Atendió : ' + Modulo.tCompra_ProductosUsuario.Value,AnchoLinea));

    PrnLn(CBrush('Le Atendió : ' + Modulo.tCompra_ProductosUsuario.Value,AnchoLinea));

    For I := 1 To LineasDespues Do
      PrnLn(#32);

    If OutDevice = _Port Then
      PrnLn(_PartialCut);

    EndPrn;
    Result := True
  End;

procedure TFCompra_Productos.DescripcionesCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  If Modified Then
    Modulo.tDetalles_CompraCodigo.Value := Modulo.tListadoProductosCodigo.Value
end;

procedure TFCompra_Productos.ProveedorDropDown(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TFCompra_Productos.sbAnadir_TerminosClick(Sender: TObject);
begin
  Anadir_Terminos.Execute
end;

procedure TFCompra_Productos.Anadir_TerminosExecute(Sender: TObject);
begin
  OpenForm(TFTerminos,FTerminos)
end;

procedure TFCompra_Productos.DetallesColEnter(Sender: TObject);
begin
  Detalles.RedrawGrid;
  If Detalles.GetActiveField.FieldName = Modulo.tDetalles_CompraCodigo.FieldName Then
    Modulo.tListadoProductos.IndexFieldNames := 'Codigo';

  If Detalles.GetActiveField.FieldName = Modulo.tDetalles_CompraDescripcion.FieldName Then
    Modulo.tListadoProductos.IndexFieldNames := 'Descripcion';
end;

procedure TFCompra_Productos.Imprimir_EtiquetasExecute(Sender: TObject);
  Const
    DeviceTypes  : Array [False..True] Of String = ('Printer','Screen');

begin
  {Guardar antes de Imprimir}
  GuardarExecute(Imprimir_Etiquetas);

  If Modulo.tDetalles_Compra.RecordCount > 0 Then
    Begin
     // Configuracion de la Etiqueta
     RegInfo.CloseKey;
     RegInfo.OpenKey(_LabelProductosKey,False);

     With ReportsAndForms.Labels Do
       Begin
         Template.FileName := RegInfo.ReadString(_TemplateFileName);

         If (Trim(Template.FileName) <> _NoneStr) And (Trim(Template.FileName) <> '') Then
           Template.LoadFromFile;

         DeviceType                := DeviceTypes[VistaPrevia.Checked];
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

         DataPipeline := ReportsAndForms.PipeDetalles_Compra;
         ReportsAndForms.Cod_Generado.DataPipeline := ReportsAndForms.PipeDetalles_Compra;
         ReportsAndForms.Descripcion_Etiqueta.DataPipeline := ReportsAndForms.PipeDetalles_Compra;

         Modulo.tFabricante.Open;
         Modulo.tDetalles_Compra.First;

         Modulo.Mensajes.Text := _PrintCopiesReminder;
         Modulo.Mensajes.ShowPopUp;

         While Not Modulo.tDetalles_Compra.Eof Do
           Begin
             PrinterSetup.Copies := Modulo.tDetalles_CompraCantidad.AsInteger;
             Modulo.tFabricante.Locate(Modulo.tFabricanteNumero.FieldName,
                                        Modulo.tDetalles_CompraFabricante.Value,
                                        []);
             ReportsAndForms.Labels.PrintDialog.Caption := Format('%s (%n)',[Modulo.tDetalles_CompraDescripcion.Value,Modulo.tDetalles_CompraCantidad.Value]);
             Print;
             Modulo.tDetalles_Compra.Next
           End; // While
         Modulo.tFabricante.Close
       End // With
   End // _GraphicForm
end;

procedure TFCompra_Productos.Configuracion_EtiquetasExecute(
  Sender: TObject);
begin
  Application.CreateForm(TFConfigForms,FConfigForms);
  FConfigForms.Caption := Configuracion_Etiquetas.Caption;
  FConfigForms._Seccion := _LabelProductosKey;
  If Trim(FConfigForms._Seccion) <> '' Then
    Try
      FConfigForms.LoadValues
    Finally
      FConfigForms.ShowModal;
      FConfigForms.Free
    End // Try
end;

procedure TFCompra_Productos.Anadir_ProductoExecute(Sender: TObject);
begin
  OpenForm(TFProductos,FProductos)
end;

procedure TFCompra_Productos.Definir_DepartamentoExecute(Sender: TObject);
begin
    Try
      Application.CreateForm(TDlgSearch,DlgSearch);
      DlgSearch.OpenDlg('Departamentos',Modulo.tDepartamentosDescripcion.FieldName,'A',wsNormal);
      If DlgSearch.ModalResult = MrOk Then
        Begin
          RegInfo.CloseKey;
          RegInfo.OpenKey(_GeneralConfigKey,False);
          RegInfo.WriteInteger(_DetalleCompraDepto,DlgSearch.SrchCds.FieldByName('Numero').AsInteger)
        End
    Finally
      DlgSearch.CloseDlg
    End {Try}
end;

procedure TFCompra_Productos.FormActivate(Sender: TObject);
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_CompraProductosKey,False);
  If RegInfo.ReadBool(_DetalleFacturaFocus) Then Detalles.SetFocus
  Else Referencia.SetFocus
end;

procedure TFCompra_Productos.Configuracion_ComprasExecute(Sender: TObject);
begin
  Application.CreateForm(TFConfigForms,FConfigForms);
  FConfigForms._Seccion := _CompraProductosKey;
  FConfigForms.Caption := Configuracion_Compras.Caption;
  If Trim(FConfigForms._Seccion) <> '' Then
    Try
      FConfigForms.LoadValues
    Finally
      FConfigForms.ShowModal;
      FConfigForms.Free
    End; // Try
end;

procedure TFCompra_Productos.Registro_ProveedoresBoton_GuardarClick(
  Sender: TObject);
Var
  ActualCode : Integer;
begin
  ActualCode := Modulo.tProveedoresNumero.Value;
  Registro_Proveedores.GuardarExecute(Sender);
  If ActualCode = 0  Then ActualCode := Modulo.Enlace.AppServer.LastTableCode('Proveedores');
  Modulo.tProveedores.Refresh;

  If Not (Modulo.tCompra_Productos.State In DsEditModes) Then Modulo.tCompra_Productos.Edit;
  Modulo.tCompra_ProductosProveedor.Value := ActualCode;
  Modulo.tCompra_ProductosNombre_Proveedor.Value := Modulo.tProveedoresNombre.Value;
  Registro_ProveedoresBoton_CancelarClick(Sender)
end;

procedure TFCompra_Productos.Registro_ProveedoresBoton_CancelarClick(
  Sender: TObject);
begin
  Registro_Proveedores.CancelarExecute(Sender);
  Datos_Compra.Visible := True;
  Registro_Proveedores.Visible := False;
  Registro_Proveedores.CancelarExecute(Sender)
end;

end.
