unit Inscripciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, wwriched, Grids,
  Wwdbigrd, Wwdbgrid, Wwdbspin, IniFiles, ppBarCod,
  ppCtrls, ppPrnabl, ppClass, ppCache, ppBands, ppProd, ppReport, ppDB,
  ppComm, ppRelatv, ppDBPipe, wwcheckbox, RegKeys, DbClient, SUIPopupMenu;

type
  TFInscripciones = class(TForm)
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Panel_Datos_Inscripcion: TAdvPageControl;
    Pg_Datos_Inscripcion: TAdvTabSheet;
    Panel_Botones: TAdvPageControl;
    Pg_Botones: TAdvTabSheet;
    Botones: TActionToolBar;
    Label9: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Hora: TDBEdit;
    Comentarios: TwwDBRichEdit;
    Imprimir: TAction;
    Label2: TLabel;
    Cliente: TwwDBLookupCombo;
    bt_Anadir_Cliente: TSpeedButton;
    AnadirCliente: TAction;
    Label19: TLabel;
    Vencimiento: TDBEdit;
    Configuracion_Formulario: TAction;
    Procesar: TAction;
    VistaPrevia: TCheckBox;
    Nuevo_Imprimir: TCheckBox;
    Guardar_Temporal: TAction;
    Cargar_Temporal: TAction;
    Enviar_email: TAction;
    Opciones_Miscelaneas: TsuiPopupMenu;
    Menu_Anadir_Cliente: TMenuItem;
    Menu_Configuracion_Impresion: TMenuItem;
    N1: TMenuItem;
    Menu_Cargar_Tempora: TMenuItem;
    Menu_Guardar_Temporal: TMenuItem;
    Recuadro_Foto: TShape;
    FOTO: TImage;
    Menu_Enviar_email: TMenuItem;
    N3: TMenuItem;
    Numero: TDBEdit;
    Label1: TLabel;
    N4: TMenuItem;
    Anular: TAction;
    Notificaciones: TStatusBar;
    Label20: TLabel;
    Label21: TLabel;
    Label35: TLabel;
    Label26: TLabel;
    Cuotas: TDBEdit;
    Monto: TDBEdit;
    Periodo: TwwDBComboBox;
    Valor: TDBEdit;
    grdCuotas: TwwDBGrid;
    wwIButton1: TwwIButton;
    Label23: TLabel;
    Nombre_Cliente: TDBEdit;
    Label24: TLabel;
    Apellido_Cliente: TDBEdit;
    Label27: TLabel;
    Direccion_Cliente: TDBEdit;
    Telefono_Principal: TDBEdit;
    DBText1: TDBText;
    Label5: TLabel;
    Fecha: TwwDBDateTimePicker;
    Menu_Anular: TMenuItem;
    N2: TMenuItem;
    Tabla_Pagos: TAction;
    procedure Cargar_TemporalExecute(Sender: TObject);
    procedure Guardar_TemporalExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure AnadirClienteExecute(Sender: TObject);
    procedure bt_Anadir_ClienteClick(Sender: TObject);
    procedure ProcesarExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Configuracion_FormularioExecute(Sender: TObject);
    procedure ClienteExit(Sender: TObject);
    procedure AnularExecute(Sender: TObject);
    procedure grdCuotasCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure Tabla_PagosExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function ImprimirRecibo(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;
Function ImprimirFactura(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;
Function ImprimirAutorizacion(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;

var
  FInscripciones : TFInscripciones;
  Buffer       : String = '';
  LstNCF       : String = '00';
  UseLstNCF    : Boolean = False;

implementation

uses DataModulo, Utilidades, Categorias, Departamentos,
  Fabricantes, Tipos_Productos, Status, Distrbuir_Vencimiento,
  dotmatrx, Terminos, DateUtils, CnfgForms, Reports_Forms,
  Registry, ConfigForm, Generales, DlgFinanciamientos, ResumenFacturas,
  Autorizar, Clientes, ESBDates;

{$R *.dfm}
{$I FactComm.Cnt}

procedure TFInscripciones.FormCreate(Sender: TObject);
  Var
    I : Integer;
begin
  If _Load_Create Then
    Begin
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
      _ChkExistence := False;

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
      Modulo.tListadoProductos.Open;

      {Configuracion General}
      Modulo.tFacturas.Close;
      Modulo.tFacturas.Params.ParamByName('Proceso').Clear;
      Modulo.tFacturasCondicion.DefaultExpression := QuotedStr('Inscripcion');
      Modulo.tFacturas.Open;

      RegInfo.CloseKey;
      RegInfo.OpenKey(_InscripcionKey,False);

      Modulo.tCategoria.Open;

      LstNCF := '00';
      UseLstNCF := False;

      Reginfo.CloseKey;
      RegInfo.OpenKey(_GeneralConfigKey,True);

      Modulo.tFacturasImpuesto_Global.DisplayFormat := RegInfo.ReadString(_PcntFormat);
      Modulo.tFacturasDescuento_Global.DisplayFormat := RegInfo.ReadString(_PcntFormat);
      Modulo.tDetalles_FacturaImpuesto.DisplayFormat := RegInfo.ReadString(_PcntFormat);
      Modulo.tDetalles_FacturaDescuento.DisplayFormat := RegInfo.ReadString(_PcntFormat);
      Modulo.tDetalles_FacturaCantidad.DisplayFormat := RegInfo.ReadString(_QtyFormat);

      Modulo.tFacturasInicial.OnValidate := Nil;
      Modulo.tFacturasPeriodo_Pagos.OnValidate := Nil;
      Modulo.tFacturasPlazo_Pago.OnValidate := Nil;
      Modulo.tFacturasModalidad.OnValidate := Nil;

      {Insertar Registro en Blanco}
      Nuevo.Execute
    End; {If _Load_Create}
end;

procedure TFInscripciones.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If Modulo.tFacturas.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicionSalida),
                              PChar(Salir.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then
      Begin
        Action := caNone;
        Exit
      End;

  Modulo.tFacturasInicial.OnValidate := Modulo.tFacturasInicialValidate;
  Modulo.tFacturasPeriodo_Pagos.OnValidate := Modulo.CalcularFinanciamiento;
  Modulo.tFacturasPlazo_Pago.OnValidate := Modulo.CalcularFinanciamiento;
  Modulo.tFacturasModalidad.OnValidate := Modulo.CalcularFinanciamiento;

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
  RegInfo.OpenKey(_InscripcionKey,False);
  RegInfo.WriteString(_LastNCF,LstNCF)
end;

procedure TFInscripciones.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFInscripciones.Tabla_PagosExecute(Sender: TObject);
  Var
    DoPreview    : Boolean;
    OutputFormat : ShortInt;
    PrintFormat  : ShortInt;

begin
  GuardarExecute(Sender);

  RegInfo.CloseKey;
  RegInfo.OpenKey(_InscripcionKey,False);

  DoPreview := VistaPrevia.Checked;
  OutputFormat := RegInfo.ReadInteger(_OutputFormat);
  PrintFormat := RegInfo.ReadInteger(_PrinterStyle);

  Case OutputFormat Of
    _Ticket : Begin
                If DoPreview Then
                  Begin
                    Application.CreateForm(TPreviewForm,PreviewForm);
                    ImprimirTablaPagos(_Screen,True);
                    PreviewForm.Vista.Lines.LoadFromFile(_PreviewFile);
                    PreviewForm.ShowModal;
                    If PreviewForm.ModalResult = MrOk Then DoPreview := False;
                    PreviewForm.Free
                  End; {If DoPreview}

                  If Not (DoPreview) Then ImprimirTablaPagos(_Port,True);
              End; // _Ticket

  End; // Case
end;

procedure TFInscripciones.NuevoExecute(Sender: TObject);
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

    {Carga la Configuracion Inicial de la Pantalla}
    RegInfo.CloseKey;
    RegInfo.OpenKey(_InscripcionKey,False);

    VistaPrevia.Checked := RegInfo.ReadBool(_PreviewForm);
    Nuevo_Imprimir.Checked := RegInfo.ReadBool(_New_Print);

    Depto := 0;
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
    Modulo.tFacturasCondicion.Value := 'Inscripcion';
    Modulo.tFacturasTipo_Factura.Value := 'Inscripcion';
    Modulo.tFacturasConcepto_Factura.Value := 'Inscripcion';
    Modulo.tFacturasInteres.Value := 0;
    Modulo.tFacturasModalidad.Value := 'Cuotas Fijas';
    Modulo.tFacturasAlmacen.Value := _CurrentStore;

    Modulo.tFacturasProceso.Value := Gen_ProcessNumber(_CurrentUser);
    Modulo.tFacturas.Params.ParamByName('Proceso').Value := Modulo.tFacturasProceso.Value;

    {Fijar Condicion Establecida para Venta}
    RegInfo.CloseKey;
    RegInfo.OpenKey(_InscripcionKey,False);
    Modulo.tFacturasTipo_NCF.Value := '00';
    FOTOLoadAndDisplay(Modulo.tListado_ClientesFoto,FOTO,_DefaultClientImg)
   Finally
     {Ubicar el Punto de Edicion}
     Cliente.OnExit := ClienteExit;
   End;
end;

procedure TFInscripciones.GuardarExecute(Sender: TObject);
  Var
    Vence : TDate;
begin
  Comentarios.SetFocus;

  If Modulo.tFacturas.State In DsEditModes Then
    Begin
      ProcesarExecute(Sender);
      Modulo.tFacturas.Post;
    End;

  If Modulo.tFacturas.ChangeCount > 0 Then
    Begin
      Modulo.tFacturas.ApplyUpdates(0);
      Modulo.tFacturas.Refresh
    end;

  PopUpMessage(Modulo.Mensajes,_DatosGuardados);

  If (Sender Is TAction) And (Nuevo_Imprimir.Checked) Then
    If (Sender As TAction).Name = Guardar.Name Then
     Nuevo.Execute;

  Modulo.Enlace.AppServer.ReloadLink
end;

procedure TFInscripciones.Guardar_TemporalExecute(Sender: TObject);
begin
  If Modulo.tDetalles_Factura.RecordCount <= 0 Then
    Raise Exception.Create(_NoDatosGuardar);

  Modulo.tFacturas.SaveToFile(Modulo.tListado_ClientesNombreCompleto.Value +
                              '(' +
                              FormatDateTime('dd-mmm-yyyy hh.mm am/pm',Now()) +
                              ').pedido',dfXML);

  If (Nuevo_Imprimir.Checked) Then Nuevo.Execute;
end;

procedure TFInscripciones.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFInscripciones.grdCuotasCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  If (Modulo.tCuotasTipo.Value = _Otros_Cargos) Then
    Begin
      If (not Highlight) Then ABrush.Color := clWebYellow;
      AFont.Color := clBlue
    End;

  If (Modulo.tCuotasTipo.Value = _Mora) Then
    Begin
      If (not Highlight) Then ABrush.Color := clWebOrangeRed;
      AFont.Color := clBlack
    End;

  If (Modulo.tCuotasTipo.Value = _Solo_Capital) Or
     ((Field = Modulo.tCuotasCapital_Pendiente) And
      (Modulo.tCuotasCapital_Pendiente.Value > _Margen)) Then
    Begin
      If (not Highlight) Then ABrush.Color := clWebSkyBlue;
      AFont.Color := clBlack
    End;

  If (Modulo.tCuotasVence.Value = Modulo.Enlace.AppServer.ServerDate) And
     (Modulo.tCuotasTotal_Pendiente.Value > _Margen) Then
    Begin
      If (not Highlight) Then ABrush.Color := clWebOrange;
      AFont.Color := clBlack;
    End;

  If (Modulo.tCuotasVence.Value < Modulo.Enlace.AppServer.ServerDate) And
     (Modulo.tCuotasTotal_Pendiente.Value > _Margen) Then
    Begin
      If (not Highlight) Then ABrush.Color := clRed;
      AFont.Color := clYellow;
    End;

  If Highlight Then
    AFont.Color := clYellow;

  If (Modulo.tCuotasTotal_Pendiente.Value <= _Margen) Then
    Begin
      If (not Highlight) Then ABrush.Color := $00A5F1C1;
      AFont.Color := clBlack
    End;
end;

procedure TFInscripciones.BuscarExecute(Sender: TObject);
  Var
    R : Integer;
    S : String;
begin
  S := DoSearch(Nil,
                'Facturas',                                      (* TableName *)
                'SrchPr',                                        (* Provider *)
                Modulo.tFacturasProceso.FieldName,               (* CampoClave *)
                Modulo.tFacturasNumero.FieldName,                (* CampoInicial *)
                'SELECT * FROM "Facturas" WHERE "Condicion" = ' +
                      QuotedStr('Inscripcion'),                  (* AltQry *)
                Modulo.Enlace,                                   (* RemoteServer *)
                'A',                                             (* SortOrder *)
                -1,                                              (* Packet Records *)
                wsMaximized,
                R);
  If R = MrOk Then
    Begin
          {Verificar el estado de la tabla de Salidas}
          If Modulo.tFacturas.State In DsEditModes Then
            If Application.MessageBox(PChar(_DatosEnEdicion),
                                      PChar(Buscar.Caption),
                                      MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

          Modulo.tFacturas.Cancel;
          Modulo.tFacturas.CancelUpdates;
          Modulo.tFacturas.Params.ParamByName('Proceso').AsString := S;
          Modulo.tFacturas.Refresh;

          FOTOLoadAndDisplay(Modulo.tListado_ClientesFoto,FOTO,_DefaultClientImg);
    End;
end;

procedure TFInscripciones.ImprimirExecute(Sender: TObject);
  Var
    DoPreview    : Boolean;
    OutputFormat : ShortInt;
    PrintFormat  : ShortInt;

begin
  GuardarExecute(Sender);

  RegInfo.CloseKey;
  RegInfo.OpenKey(_InscripcionKey,False);

  DoPreview := VistaPrevia.Checked;
  OutputFormat := RegInfo.ReadInteger(_OutputFormat);
  PrintFormat := RegInfo.ReadInteger(_PrinterStyle);

//  If Ps = 0 Then OutputFormat := PrintFormat;

  Case OutputFormat Of
    _Ticket : Begin
                If DoPreview Then
                  Begin
                    Application.CreateForm(TPreviewForm,PreviewForm);
                    ImprimirInscripcion(_Screen,True);
                    PreviewForm.Vista.Lines.LoadFromFile(_PreviewFile);
                    PreviewForm.ShowModal;
                    If PreviewForm.ModalResult = MrOk Then DoPreview := False;
                    PreviewForm.Free;
                  End; {If DoPreview}

                  If Not (DoPreview) Then ImprimirInscripcion(_Port,True);
              End; // _Ticket

    _TextFormat : Begin
                    If DoPreview Then
                      Begin
                        Application.CreateForm(TPreviewForm,PreviewForm);
                        ImprimirFactura(_Screen,True);
                        PreviewForm.Vista.Lines.LoadFromFile(_PreviewFile);
                        PreviewForm.ShowModal;
                        If PreviewForm.ModalResult = MrOk Then DoPreview := False;
                        PreviewForm.Free
                      End; {If DoPreview}

                      If Not (DoPreview) Then ImprimirFactura(_Port,True);
                  End; // _TextFormat

    _GraphicForm : Begin
                     RegInfo.CloseKey;
                     RegInfo.OpenKey(_InscripcionKey,False);
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

                         ReportsAndForms._Seccion  := _InscripcionKey;

                         Print
                       End // With
                   End // _GraphicForm
  End; // Case

  If (Nuevo_Imprimir.Checked) Then Nuevo.Execute
end;

procedure TFInscripciones.AnadirClienteExecute(Sender: TObject);
  Var
    ActualCode : String;
begin
  OpenForm(TFClientes,FClientes);
  ActualCode := Modulo.tClientesCedula_Rnc_Pasaporte.Value;
  If ActualCode = ''  Then ActualCode := '000-0000000-0';
  Modulo.tListado_Clientes.Refresh;

  Modulo.tListado_Clientes.Locate('Cedula_Rnc_Pasaporte',ActualCode,[]);
//  ActualCode := Modulo.tListado_ClientesCedula_RNC_Pasaporte.Value;

  If Not (Modulo.tFacturas.State In DsEditModes) Then Modulo.tFacturas.Edit;
  Modulo.tFacturasCliente.Value := ActualCode;
  Modulo.tFacturasNombre_Cliente.Value := Modulo.tListado_ClientesNombreCompleto.Value
end;

procedure TFInscripciones.bt_Anadir_ClienteClick(Sender: TObject);
begin
  AnadirCliente.Execute
end;

procedure TFInscripciones.Cargar_TemporalExecute(Sender: TObject);
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

procedure TFInscripciones.ClienteExit(Sender: TObject);
begin
  If Modulo.tFacturas.State In DsEditModes Then
    Begin
      Modulo.tFacturasNombre_Cliente.Value := Modulo.tListado_ClientesNombreCompleto.Value;
      FOTOLoadAndDisplay(Modulo.tListado_ClientesFoto,FOTO,_DefaultClientImg);
    end
end;

procedure TFInscripciones.AnularExecute(Sender: TObject);
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
        OpenForm(TfrmUser_Grant,frmUser_Grant);
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

procedure TFInscripciones.ProcesarExecute(Sender: TObject);
  Var
    Dump  : Boolean;
    Vence : TDate;
    P,
    I     : Integer;
    Periodo:String;
begin
  Dump := _RestrictInventory;
  Try
    _RestrictInventory := false;
    Modulo.tDetalles_FacturaCodigo.OnValidate := Nil;
    Modulo.tDetalles_Factura.BeforeDelete := Nil;

    I := 0;
    Periodo := Modulo.tFacturasPeriodo_Pagos.Value;

    If Periodo = 'Diario' Then P := 365;

    If Periodo = 'Semanal' Then P := 52;

    If Periodo = 'Quincenal' Then P := 26;

    If Periodo = 'Mensual' Then P := 12;

    If Periodo = 'Trimestral' Then P := 4;

    If Periodo = 'Cuatrimestral' Then P := 3;

    If Periodo = 'Semestral' Then P := 2;

    If Periodo = 'Anual' Then P := 1;

    If Not (Modulo.tFacturas.State In DsEditModes) Then Modulo.tFacturas.Edit;
    Modulo.tFacturasPlazo_Pago.Value := P;

    If Modulo.tDetalles_Factura.RecordCount > 0 Then
      While Not Modulo.tDetalles_Factura.Eof Do Modulo.tDetalles_Factura. Delete;

    Modulo.tDetalles_FacturaCodigo.OnValidate := Nil;
    Modulo.tDetalles_Factura.Append;
    Modulo.tDetalles_FacturaCodigo.Value := 'CUOTAS';
    Modulo.tDetalles_FacturaDescripcion.Value := 'VALOR DE CUOTAS DE CLIENTE';
    Modulo.tDetalles_FacturaContenido.Value := 1;
    Modulo.tDetalles_FacturaPrecio_Venta.Value := Modulo.tFacturasInicial.Value;
    Modulo.tDetalles_FacturaCantidad.Value := Modulo.tFacturasPlazo_Pago.Value;
    Modulo.tDetalles_Factura.Post;

    If Not (Modulo.tFacturas.State In DsEditModes) Then Modulo.tFacturas.Edit;
    Modulo.tFacturasMonto_Financiado.Value := Modulo.tFacturasPendiente.Value;

    Modulo.GenerarCuotas(Vence,Modulo.tTerminosDiasDeGracia.Value,'Cuota '+
                                                                  Periodo +
                                                                  ' # %s -> %s');
    Modulo.tFacturasVencimiento.Value := Vence;
    If Modulo.tFacturasGasto_Cierre.Value > 0 Then
      Begin
          Modulo.tDetalles_FacturaCodigo.OnValidate := Nil;
          Modulo.tDetalles_Factura.Append;
          Modulo.tDetalles_FacturaCodigo.Value := 'INSCRIPCION';
          Modulo.tDetalles_FacturaDescripcion.Value := 'MONTO DE INSCRIPCION DE CLIENTE';
          Modulo.tDetalles_FacturaContenido.Value := 1;
          Modulo.tDetalles_FacturaPrecio_Venta.Value := Modulo.tFacturasGasto_Cierre.Value;
          Modulo.tDetalles_FacturaCantidad.Value := 1;
          Modulo.tDetalles_Factura.Post;

                Modulo.AnadirCuota (Modulo.tFacturasProceso.Value,
                             I,                                                  // Numero de Cuota
                             Modulo.tFacturasGasto_Cierre.Value,                       // Monto de Capital de la Cuota
                             0,                       // Monto de Interes de la Cuota
                             0,                                                  // Monto de Mora de la Cuota
                             0,                                                  // Monto Pagado
                             Modulo.tFacturasFecha.Value,                              // Fecha en que se genera la cuota
                             Modulo.tFacturasFecha.Value,                                              // Fecha en que se Vence la cuota
                             'A',                                                // Prioridad de pago
                             _Capital_Interes,                                   // Tipo de Cuota
                             'MONTO DE INSCRIPCION DE CLIENTE');      // Concepto
      End;

  Finally
    _RestrictInventory := Dump;
    Modulo.tDetalles_FacturaCodigo.OnValidate := Modulo.tDetalles_FacturaCodigoValidate;
    Modulo.tDetalles_Factura.BeforeDelete := Modulo.tDetalles_FacturaBeforeDelete;
    Modulo.tCuotas.First;
  End
end;

procedure TFInscripciones.FormActivate(Sender: TObject);
begin
  Try
    Cliente.OnExit := Nil;
    RegInfo.CloseKey;
    RegInfo.OpenKey(_InscripcionKey,False);
  Finally
    Cliente.OnExit := ClienteExit;
  End;
end;

procedure TFInscripciones.Configuracion_FormularioExecute(Sender: TObject);
begin
  Application.CreateForm(TFConfigForms,FConfigForms);
  FConfigForms._Seccion := _InscripcionKey;
  FConfigForms.Caption := Configuracion_Formulario.Caption;
  If Trim(FConfigForms._Seccion) <> '' Then
    Try
      FConfigForms.LoadValues
    Finally
      FConfigForms.ShowModal;
      FConfigForms.Free
    End; // Try
end;

Initialization
  RegisterClass(TFInscripciones);

end.
