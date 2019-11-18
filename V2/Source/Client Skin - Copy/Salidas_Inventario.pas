unit Salidas_Inventario;

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
  TFSalidas_Inventario = class(TForm)
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Panel_Datos_Salida: TAdvPageControl;
    Pg_Datos_Salida: TAdvTabSheet;
    Panel_Detalles_Salida: TAdvPageControl;
    Pg_Detalles_Salida: TAdvTabSheet;
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
    FechaSalida: TDBEdit;
    Label4: TLabel;
    HoraSalida: TDBEdit;
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
    Label15: TLabel;
    Total_Costo: TDBEdit;
    Configuracion_Salidas: TAction;
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
    Menu_Anadir_Cliente: TMenuItem;
    Menu_Configuracion_Salidas: TMenuItem;
    Menu_Definir_Departamento: TMenuItem;
    N1: TMenuItem;
    Menu_Cargar_Tempora: TMenuItem;
    Menu_Guardar_Temporal: TMenuItem;
    N2: TMenuItem;
    Label5: TLabel;
    ConceptoSalida: TwwDBComboBox;
    Recuadro_Foto: TShape;
    FOTO: TImage;
    Menu_Enviar_email: TMenuItem;
    N3: TMenuItem;
    NumeroSalida: TDBEdit;
    Label1: TLabel;
    Label24: TLabel;
    Conduce: TDBEdit;
    Registrar_Seriales: TAction;
    Menu_Registrar_Seriales: TMenuItem;
    N4: TMenuItem;
    Filtrar_Categoria: TCheckBox;
    Categorias: TwwDBLookupCombo;
    procedure CategoriasCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Filtrar_CategoriaClick(Sender: TObject);
    procedure Registrar_SerialesExecute(Sender: TObject);
    procedure DetallesRowChanged(Sender: TObject);
    procedure DetallesColExit(Sender: TObject);
    procedure Autorizacion_CobroExecute(Sender: TObject);
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
    procedure DetallesColEnter(Sender: TObject);
    procedure Definir_DepartamentoExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Configuracion_SalidasExecute(Sender: TObject);
    procedure ClienteExit(Sender: TObject);
    procedure Registro_Clientesbt_GuardarClick(Sender: TObject);
    procedure Registro_Clientesbt_CancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function ImprimirRecibo(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;
Function ImprimirFactura(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;
Function ImprimirAutorizacion(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;

var
  FSalidas_Inventario : TFSalidas_Inventario;
  Buffer       : String = '';

implementation

uses DataModulo, Utilidades, SrchDlg, Categorias, Departamentos,
  Distrbuir_Vencimiento, dotmatrx, DateUtils, CnfgForms, Reports_Forms,
  Registry, ConfigForm, Generales, Seriales_Productos_Despachados;

{$R *.dfm}
{$I FactComm.Cnt}

procedure TFSalidas_Inventario.FormCreate(Sender: TObject);
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

      Modulo.tListado_Clientes.Open;
      Modulo.tListadoVendedores.Open;

      Modulo.tProductos.Open;
      Modulo.tListadoProductos.Open;

      {Configuracion General}
      Modulo.tSalidas_InventarioCondicion.DefaultExpression := QuotedStr(Trim(Modulo.tParametrosCondicion_Facturacion.Value));
      Modulo.tSalidas_Inventario.Open;

      RegInfo.CloseKey;
      RegInfo.OpenKey(_SalidaInventarioKey,False);

      Modulo.tCategoria.Open;

      Registro_Clientes.bt_Guardar.OnClick := Registro_Clientesbt_GuardarClick;
      Registro_Clientes.bt_Cancelar.OnClick := Registro_Clientesbt_CancelarClick;

      Reginfo.CloseKey;
      RegInfo.OpenKey(_GeneralConfigKey,True);

      Modulo.tSalidas_InventarioImpuesto_Global.DisplayFormat := RegInfo.ReadString(_PcntFormat);
      Modulo.tSalidas_InventarioDescuento_Global.DisplayFormat := RegInfo.ReadString(_PcntFormat);
      Modulo.tDetalles_SalidaImpuesto.DisplayFormat := RegInfo.ReadString(_PcntFormat);
      Modulo.tDetalles_SalidaDescuento.DisplayFormat := RegInfo.ReadString(_PcntFormat);
      Modulo.tDetalles_SalidaCantidad.DisplayFormat := RegInfo.ReadString(_QtyFormat);

      {Insertar Registro en Blanco}
      Nuevo.Execute
    End; {If _Load_Create}
end;

procedure TFSalidas_Inventario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If Modulo.tSalidas_Inventario.State In DsEditModes Then
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

  Modulo.tInventario_Terminal.Close;
  Modulo.tListado_Clientes.Cancel;
  Modulo.tListado_Clientes.CancelUpdates;
  Modulo.tListado_Clientes.Close;

  Modulo.tListadoVendedores.Close;

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

  Modulo.tListadoProductos.Filter := '';
  Modulo.tListadoProductos.Filtered := False;
  Modulo.tListadoProductos.Cancel;
  Modulo.tListadoProductos.CancelUpdates;
  Modulo.tListadoProductos.Close;

  Modulo.tCategoria.Close;

  Modulo.tSalidas_Inventario.Cancel;
  Modulo.tSalidas_Inventario.CancelUpdates;
  Modulo.tSalidas_Inventario.Close
end;

procedure TFSalidas_Inventario.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFSalidas_Inventario.NuevoExecute(Sender: TObject);
  Var
    Depto : Integer;
begin
   Try
    Cliente.OnExit := Nil;
    {Verificar el estado de la tabla de Salidas}
    If (Modulo.tSalidas_Inventario.State In DsEditModes) And
       (Modulo.tDetalles_Salida.RecordCount > 0) Then
      If Application.MessageBox(PChar(_DatosEnEdicion),
                                PChar(Nuevo.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

    {Filtrar la Tabla de Productos}
    RegInfo.CloseKey;
    RegInfo.OpenKey(_GeneralConfigKey,False);
    Depto := RegInfo.ReadInteger(_DetalleFacturaDepto);

    {Carga la Configuracion Inicial de la Pantalla}
    RegInfo.CloseKey;
    RegInfo.OpenKey(_SalidaInventarioKey,False);

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

    {Preparar la Tabla de Salidas}
    Modulo.tSalidas_Inventario.Cancel;
    Modulo.tSalidas_Inventario.CancelUpdates;
    Modulo.tSalidas_Inventario.Append;

    Modulo.tListadoProductos.Cancel;
    Modulo.tListadoProductos.CancelUpdates;

    Modulo.tSalidas_InventarioFecha.Value := Modulo.Enlace.AppServer.ServerDate;
    Modulo.tSalidas_InventarioHora.Value  := Modulo.Enlace.AppServer.ServerTime;
    Modulo.tSalidas_InventarioCondicion.Value := RegInfo.ReadString(_CondFacturas);
    Modulo.tSalidas_InventarioTipo_Salida.Value := RegInfo.ReadString(_TipoFacturas);

    Modulo.tSalidas_InventarioProceso.Value := Gen_ProcessNumber(_CurrentUser);
    Modulo.tSalidas_Inventario.Params.ParamByName('Proceso').Value := Modulo.tSalidas_InventarioProceso.Value;

    {Fijar Condicion Establecida para Venta}
    RegInfo.CloseKey;
    RegInfo.OpenKey(_SalidaInventarioKey,False);
    Modulo.tSalidas_InventarioCondicion.Value := RegInfo.ReadString(_DefaultSaleCondition);

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

procedure TFSalidas_Inventario.GuardarExecute(Sender: TObject);
  Var
    Vence : TDate;
begin
  If Detalles.HasFocus Then Comentarios.SetFocus;

  If Modulo.tDetalles_Salida.State In dsEditModes Then Modulo.tDetalles_Salida.Post;

  If Modulo.tDetalles_Salida.RecordCount <= 0 Then
    Raise Exception.Create(_NoDatosGuardar);

  If Modulo.tSalidas_Inventario.State In DsEditModes Then
    Modulo.tSalidas_Inventario.Post;

  If Modulo.tSalidas_Inventario.ChangeCount > 0 Then
    Begin
      Modulo.tSalidas_Inventario.ApplyUpdates(0);
      Modulo.tReporter.Close;
      Modulo.tReporter.CommandText := 'Update "Salidas_Inventario" Set "Seriales_Registrados" = (Select Count("Serial") From "Seriales_Despachados" Where "Proceso" = :Proceso2) Where "Proceso" = :Proceso1';
      Modulo.tReporter.Params.ParamByName('Proceso1').AsString := Modulo.tSalidas_InventarioProceso.AsString;
      Modulo.tReporter.Params.ParamByName('Proceso2').AsString := Modulo.tSalidas_InventarioProceso.AsString;
      Modulo.tReporter.Execute;
      Modulo.tSalidas_Inventario.Refresh
    end;

  If Modulo.tListadoProductos.ChangeCount > 0 Then
    Modulo.tListadoProductos.ApplyUpdates(0);

  Modulo.tListadoProductos.Refresh;

  PopUpMessage(Modulo.Mensajes,_DatosGuardados);

  If (Sender Is TAction) And (Nuevo_Imprimir.Checked) Then
    If (Sender As TAction).Name = Guardar.Name Then
     Nuevo.Execute;

//  Modulo.Enlace.AppServer.ReloadLink
end;

procedure TFSalidas_Inventario.Guardar_TemporalExecute(Sender: TObject);
begin
  If Modulo.tDetalles_Salida.RecordCount <= 0 Then
    Raise Exception.Create(_NoDatosGuardar);

  Modulo.tSalidas_Inventario.SaveToFile(Modulo.tListado_ClientesNombreCompleto.Value +
                              '(' +
                              FormatDateTime('dd-mmm-yyyy hh.mm am/pm',Now()) +
                              ').pedido',dfXML);

  If (Nuevo_Imprimir.Checked) Then Nuevo.Execute;
end;

procedure TFSalidas_Inventario.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFSalidas_Inventario.SerialPortTriggerAvail(CP: TObject; Count: Word);
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
      Modulo.tDetalles_SalidaCodigo.Value := Buffer;
      Buffer := ''
    End
end;

procedure TFSalidas_Inventario.BuscarExecute(Sender: TObject);
begin
    Try
      Application.CreateForm(TDlgSearch,DlgSearch);
      DlgSearch.OpenDlg('Salidas_Inventario',Modulo.tSalidas_InventarioNumero.FieldName,'D',wsMaximized);
      If DlgSearch.ModalResult = MrOk Then
        Begin
          {Verificar el estado de la tabla de Salidas}
          If Modulo.tSalidas_Inventario.State In DsEditModes Then
            If Application.MessageBox(PChar(_DatosEnEdicion),
                                      PChar(Buscar.Caption),
                                      MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

          Modulo.tSalidas_Inventario.Cancel;
          Modulo.tSalidas_Inventario.CancelUpdates;
          Modulo.tSalidas_Inventario.Params.ParamByName('Proceso').AsString := DlgSearch.SrchCds.FieldByName('Proceso').AsString;
          Modulo.tSalidas_Inventario.Refresh;

          FOTOLoadAndDisplay(Modulo.tListado_ClientesFoto,FOTO,_DefaultClientImg)
        End
    Finally
      DlgSearch.CloseDlg
    End {Try}
end;

procedure TFSalidas_Inventario.DetallesEnter(Sender: TObject);
begin
  KeyPreview := False;
  If Registro_Clientes.Visible Then Registro_Clientesbt_GuardarClick(Sender);
  Detalles.SelectedField := Modulo.tDetalles_SalidaCodigo
end;

procedure TFSalidas_Inventario.DetallesExit(Sender: TObject);
begin
  KeyPreview := True
end;

procedure TFSalidas_Inventario.DetallesRowChanged(Sender: TObject);
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_SalidaInventarioKey,True);

  If RegInfo.ReadBool(_SaltoAutoLinea) Then
    Detalles.SelectedField := Modulo.tDetalles_SalidaCodigo;
end;

procedure TFSalidas_Inventario.ImprimirExecute(Sender: TObject);
  Var
    DoPreview    : Boolean;
    OutputFormat : ShortInt;
    PrintFormat  : ShortInt;

begin
  GuardarExecute(Sender);

  If (Modulo.tSalidas_InventarioTotal_Seriales.Value - Modulo.tSalidas_InventarioSeriales_Registrados.Value) >= 1 Then
    Begin
      Mensaje(Format(_Seriales_Incompletos,[Modulo.tSalidas_InventarioSeriales_Registrados.Text,
                                            Modulo.tSalidas_InventarioTotal_Seriales.Text,
                                            IntToStr(Round(Modulo.tSalidas_InventarioTotal_Seriales.Value -
                                                     Modulo.tSalidas_InventarioSeriales_Registrados.Value))]));
      Exit
    end;

  RegInfo.CloseKey;
  RegInfo.OpenKey(_SalidaInventarioKey,False);

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
                     RegInfo.OpenKey(_SalidaInventarioKey,False);
                     With ReportsAndForms.FormSalidaInventario Do
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
                         ReportsAndForms.Nota_Pie_Salida.Text := RegInfo.ReadString(_NotaAlPie);

                         ReportsAndForms._Seccion  := _SalidaInventarioKey;

                         Print
                       End // With
                   End // _GraphicForm
  End; // Case

  If (Nuevo_Imprimir.Checked) Then Nuevo.Execute
end;

procedure TFSalidas_Inventario.DetallesCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  If Field = Modulo.tDetalles_SalidaTotal_Precio Then
    Begin
      ABrush.Color := Detalles.TitleColor;
      AFont.Color := clBlack
    End;
end;

procedure TFSalidas_Inventario.AnadirClienteExecute(Sender: TObject);
begin
  Modulo.tClientes.Open;
  Modulo.tClientes.Append;
  Modulo.tClientesCedula_Rnc_Pasaporte.Value := '-';
  Modulo.tClientesTerminosFacturacion.Value := Modulo.tParametrosTermino_COD.Value;
  Modulo.tClientesProceso.Value := Gen_ProcessNumber(_CurrentUser);

  RegInfo.CloseKey;
  RegInfo.OpenKey(_SalidaInventarioKey,False);

  Modulo.tClientesCondicion_Cliente.Value := RegInfo.ReadString(_DefaultSaleCondition);

  Registro_Clientes.Left := Panel_Datos_Salida.Left;
  Registro_Clientes.Top := Panel_Datos_Salida.Top;
  Registro_Clientes.Pg_Clientes.Color := Color;
  Registro_Clientes.Datos_Cliente.TabBackGroundColor := Color;

  Panel_Datos_Salida.Visible := False;

  Registro_Clientes.Visible := True;
  Registro_Clientes.Cedula_Rnc_Pasaporte.SetFocus
end;

procedure TFSalidas_Inventario.bt_Anadir_ClienteClick(Sender: TObject);
begin
  AnadirCliente.Execute
end;

procedure TFSalidas_Inventario.DescripcionesCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  If Modified Then
    Modulo.tDetalles_SalidaCodigo.Value := Modulo.tListadoProductosCodigo.Value
end;

procedure TFSalidas_Inventario.Cargar_TemporalExecute(Sender: TObject);
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

procedure TFSalidas_Inventario.CategoriasCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  Modulo.tListadoProductos.Filter := 'Categoria = ' + Modulo.TCategoriaNumero.Text;
  Modulo.tListadoProductos.Filtered := True
end;

procedure TFSalidas_Inventario.ClienteExit(Sender: TObject);
begin
  If Modulo.tSalidas_Inventario.State In DsEditModes Then
    Begin
      Modulo.tSalidas_InventarioNombre_Cliente.Value := Modulo.tListado_ClientesNombreCompleto.Value;
      Modulo.tSalidas_InventarioCondicion.Value := Modulo.tListado_ClientesCondicion_Cliente.Value;
      Modulo.tSalidas_InventarioDescuento_Global.Value := Modulo.tListado_ClientesDescuento_Asignado.Value;
      Modulo.tSalidas_InventarioTerminos.Value := Modulo.tListado_ClientesTerminosFacturacion.Value;
      FOTOLoadAndDisplay(Modulo.tListado_ClientesFoto,FOTO,_DefaultClientImg)
    end
end;

procedure TFSalidas_Inventario.Autorizacion_CobroExecute(Sender: TObject);
  Var
    DoPreview    : Boolean;
    OutputFormat : ShortInt;
    PrintFormat  : ShortInt;

  Const
    DeviceTypes  : Array [False..True] Of String = ('Printer','Screen');

begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_SalidaInventarioKey,False);

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

                         ReportsAndForms._Seccion  := _SalidaInventarioKey;

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

procedure TFSalidas_Inventario.DetallesColEnter(Sender: TObject);
begin
  Detalles.RedrawGrid;
  Detalles.ColumnByName('Descuento').ReadOnly  := Not(Modulo.tProductosAplica_Descuento.Value);

  If Detalles.GetActiveField.FieldName = Modulo.tDetalles_SalidaCodigo.FieldName Then
    Modulo.tListadoProductos.IndexFieldNames := 'Codigo';

  If Detalles.GetActiveField.FieldName = Modulo.tDetalles_SalidaDescripcion.FieldName Then
    Modulo.tListadoProductos.IndexFieldNames := 'Descripcion';
end;

procedure TFSalidas_Inventario.DetallesColExit(Sender: TObject);
begin
  If Detalles.GetActiveField.FieldName = Modulo.tDetalles_SalidaCodigo.FieldName Then
    Begin
      RegInfo.CloseKey;
      RegInfo.OpenKey(_SalidaInventarioKey,True);

      If RegInfo.ReadBool(_SaltoAutoLinea) Then
          Modulo.tDetalles_Salida.Append;
    end
end;

procedure TFSalidas_Inventario.Definir_DepartamentoExecute(Sender: TObject);
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

procedure TFSalidas_Inventario.Filtrar_CategoriaClick(Sender: TObject);
begin
  Categorias.Visible := Filtrar_Categoria.Checked;
  Modulo.tListadoProductos.Filtered := Filtrar_Categoria.Checked
end;

procedure TFSalidas_Inventario.FormActivate(Sender: TObject);
begin
  Try
    Cliente.OnExit := Nil;
    RegInfo.CloseKey;
    RegInfo.OpenKey(_SalidaInventarioKey,False);
    If RegInfo.ReadBool(_DetalleFacturaFocus) Then Detalles.SetFocus
    Else Cliente.SetFocus
  Finally
    Cliente.OnExit := ClienteExit;
  End;
end;

procedure TFSalidas_Inventario.Configuracion_SalidasExecute(Sender: TObject);
begin
  Application.CreateForm(TFConfigForms,FConfigForms);
  FConfigForms._Seccion := _SalidaInventarioKey;
  FConfigForms.Caption := Configuracion_Salidas.Caption;
  If Trim(FConfigForms._Seccion) <> '' Then
    Try
      FConfigForms.LoadValues
    Finally
      FConfigForms.ShowModal;
      FConfigForms.Free
    End; // Try
end;

procedure TFSalidas_Inventario.Registrar_SerialesExecute(Sender: TObject);
begin
  Try
    Modulo.tSalidas_Inventario.BeforeEdit := Nil;
    OpenForm(TFSeriales_Productos_Despachados,FSeriales_Productos_Despachados)
  finally
    Modulo.tSalidas_Inventario.BeforeEdit := Modulo.tSalidas_InventarioBeforeEdit
  end;
end;

procedure TFSalidas_Inventario.Registro_Clientesbt_CancelarClick(Sender: TObject);
begin
  Registro_Clientes.CancelarExecute(Sender);
  Panel_Datos_Salida.Visible := True;
  Registro_Clientes.Visible := False;
  Registro_Clientes.CancelarExecute(Sender);
  Modulo.tClientes.Cancel;
  Modulo.tClientes.CancelUpdates;
  Modulo.tClientes.Close
end;

procedure TFSalidas_Inventario.Registro_Clientesbt_GuardarClick(Sender: TObject);
  Var
    ActualCode : String;
begin
  Registro_Clientes.GuardarExecute(Sender);
  ActualCode := Modulo.tClientesCedula_Rnc_Pasaporte.Value;
  If ActualCode = ''  Then ActualCode := '000-0000000-0';
  Modulo.tListado_Clientes.Refresh;

  Modulo.tListado_Clientes.Locate('Cedula_Rnc_Pasaporte',Modulo.tClientesCedula_Rnc_Pasaporte.Value,[]);
  ActualCode := Modulo.tListado_ClientesCedula_RNC_Pasaporte.Value;

  If Not (Modulo.tSalidas_Inventario.State In DsEditModes) Then Modulo.tSalidas_Inventario.Edit;
  Modulo.tSalidas_InventarioCliente.Value := ActualCode;
  Modulo.tSalidas_InventarioNombre_Cliente.Value := Modulo.tClientesNombreCompleto.Value;

  Registro_Clientesbt_CancelarClick(Sender)
end;

Initialization
  RegisterClass(TFSalidas_Inventario);

end.
