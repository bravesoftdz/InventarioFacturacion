unit Devoluciones_Ventas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, wwriched, Grids,
  Wwdbigrd, Wwdbgrid, frmClientes, Wwdbspin, IniFiles, ppBarCod,
  ppCtrls, ppPrnabl, ppClass, ppCache, ppBands, ppProd, ppReport, ppDB,
  ppComm, TaskDialog, ppRelatv, ppDBPipe, wwcheckbox, RegKeys, DbClient, SUIPopupMenu;

type
  TfrmDevolucion_Ventas = class(TForm)
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Panel_Botones: TAdvPageControl;
    Pg_Botones: TAdvTabSheet;
    Botones: TActionToolBar;
    Label8: TLabel;
    Total_Original: TDBEdit;
    Label9: TLabel;
    Comentarios: TwwDBRichEdit;
    Imprimir: TAction;
    Configuracion_Devolucion: TAction;
    Procesar_Devolucion: TAction;
    Desglosar: TCheckBox;
    VistaPrevia: TCheckBox;
    Imprimir_Nota_Credito: TAction;
    Enviar_email: TAction;
    Opciones_Miscelaneas: TsuiPopupMenu;
    Menu_Configuracion_Facturas: TMenuItem;
    Menu_Autorizacion_Cobros: TMenuItem;
    N3: TMenuItem;
    Anular_Devolucion: TAction;
    Notificaciones: TStatusBar;
    N5: TMenuItem;
    ConfigurarComprobantedeEntrega1: TMenuItem;
    Moneda: TwwDBLookupCombo;
    AnularFactura1: TMenuItem;
    Mostrar_Foto: TAction;
    Panel_Datos_Factura: TAdvPageControl;
    Pg_Datos_Factura: TAdvTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label19: TLabel;
    Label22: TLabel;
    Recuadro_Foto: TShape;
    FOTO: TImage;
    Label1: TLabel;
    FechaFactura: TDBEdit;
    HoraFactura: TDBEdit;
    Cliente: TwwDBLookupCombo;
    CedulaCliente: TDBEdit;
    TelefonoCliente: TDBEdit;
    VencimientoFactura: TDBEdit;
    Numero_NCF: TDBEdit;
    NumeroFactura: TDBEdit;
    Label5: TLabel;
    Numero: TDBEdit;
    Label6: TLabel;
    Fecha: TDBEdit;
    Detalles: TwwDBGrid;
    DetallesIButton: TwwIButton;
    Devueltos: TwwDBGrid;
    wwIButton1: TwwIButton;
    Devolver_Actual: TAction;
    Buscar_Factura: TAction;
    Revertir: TAction;
    Label7: TLabel;
    Total_Final: TDBEdit;
    Label12: TLabel;
    wwDBRichEdit1: TwwDBRichEdit;
    Imprimir_Factura: TAction;
    Configuracion_Credito: TAction;
    procedure Imprimir_Nota_CreditoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SerialPortTriggerAvail(CP: TObject; Count: Word);
    procedure BuscarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure DetallesCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure Procesar_DevolucionExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Configuracion_DevolucionExecute(Sender: TObject);
    procedure Anular_DevolucionExecute(Sender: TObject);
    procedure Mostrar_FotoExecute(Sender: TObject);
    procedure Buscar_FacturaExecute(Sender: TObject);
    procedure Devolver_ActualExecute(Sender: TObject);
    procedure RevertirExecute(Sender: TObject);
    procedure Imprimir_FacturaExecute(Sender: TObject);
    procedure Configuracion_CreditoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function ImprimirRecibo(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;
Function ImprimirFactura(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;
Function ImprimirAutorizacion(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;

var
  frmDevolucion_Ventas : TfrmDevolucion_Ventas;
  Buffer       : String = '';
  LstNCF       : String = '00';
  UseLstNCF    : Boolean = False;

implementation

uses DataModulo, Utilidades, Categorias, Departamentos,
  Fabricantes, Tipos_Productos, Status, Distrbuir_Vencimiento,
  dotmatrx, Terminos, DateUtils, CnfgForms, Reports_Forms, PagosFacturas,
  Registry, ConfigForm, Generales, DlgFinanciamientos, ResumenFacturas,
  Seriales_Productos_Facturados, Modificar_Precio, Autorizar, ESBDates,
  ShowFoto, Modificar_Medida, Aplicar_Descuento;

{$R *.dfm}
{$I FactComm.Cnt}

procedure TfrmDevolucion_Ventas.FormCreate(Sender: TObject);
  Var
    I : Integer;
begin
  If _Load_Create Then
    Try
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
      Modulo.tListadoProductos.Open;

      {Configuracion General}
      Modulo.TDevoluciones.Close;
      Modulo.tDevoluciones.Params.ParamByName('Proceso').Clear;
      Modulo.tDevoluciones.Open;

      RegInfo.CloseKey;
      RegInfo.OpenKey(_DevolucionProductosKey,False);

      Modulo.tCategoria.Open;

      Try
        LstNCF := RegInfo.ReadString(_LastNCF);
        UseLstNCF := RegInfo.ReadBool(_UseLastNCF)
      Except
        LstNCF := '00';
        UseLstNCF := False;
      end;

      {Insertar Registro en Blanco}
      Nuevo.Execute
    Except
      On E:Exception Do Mensaje(E.Message,Self);
    End; {If _Load_Create}
end;

procedure TfrmDevolucion_Ventas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If Modulo.tDevoluciones.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicionSalida),
                              PChar(Salir.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then
      Begin
        Action := caNone;
        Exit
      End;

  {Cerrar las Tablas}
  Modulo.tDevoluciones.Cancel;
  Modulo.tDevoluciones.CancelUpdates;
  Modulo.tDevoluciones.Params.ParamByName('Proceso').Clear;
  Modulo.tDevoluciones.Refresh;
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
    If Modulo.tProductos.Active Then
      Begin
        Modulo.tProductos.Cancel;
        Modulo.tProductos.CancelUpdates;
        Modulo.tProductos.Refresh;
      End;
  Finally
    Modulo.tProductos.AfterRefresh := Modulo.tProductosAfterRefresh
  End;

  Modulo.tListadoProductos.Filter := '';
  Modulo.tListadoProductos.Filtered := False;
  Modulo.tListadoProductos.Cancel;
  Modulo.tListadoProductos.CancelUpdates;

  Modulo.tFormas_Pago.Filtered := False;

  RegInfo.CloseKey;
  RegInfo.OpenKey(_DevolucionProductosKey,False);
  RegInfo.WriteString(_LastNCF,LstNCF)
end;

procedure TfrmDevolucion_Ventas.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TfrmDevolucion_Ventas.NuevoExecute(Sender: TObject);
  Var
    Depto : Integer;
begin
   Try
    Desglosar.Enabled := True;

    Devolver_Actual.Enabled := False;
    Procesar_Devolucion.Enabled := False;
    Buscar_Factura.Enabled := True;
    Revertir.Enabled := False;
    Imprimir.Enabled := False;
    Imprimir_Nota_Credito.Enabled := False;
    Imprimir_Factura.Enabled := False;
    Anular_Devolucion.Enabled := False;

    Cliente.OnExit := Nil;
    {Verificar el estado de la tabla de facturas}
    If (Modulo.tDevoluciones.State In DsEditModes) And
       (Modulo.tDetalles_Factura.RecordCount > 0) Then
      If Application.MessageBox(PChar(_DatosEnEdicion),
                                PChar(Nuevo.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

    {Filtrar la Tabla de Productos}
    RegInfo.CloseKey;
    RegInfo.OpenKey(_GeneralConfigKey,False);
    Depto := RegInfo.ReadInteger(_DetalleFacturaDepto);
    ParamSearchKey(Modulo.tFacturas,'Proceso','//**');

    {Carga la Configuracion Inicial de la Pantalla}
    RegInfo.CloseKey;
    RegInfo.OpenKey(_DevolucionProductosKey,False);

    Desglosar.Checked := RegInfo.ReadBool(_Desglosar_Formularios);
    VistaPrevia.Checked := RegInfo.ReadBool(_PreviewForm);

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
    Modulo.tDevoluciones.Cancel;
    Modulo.tDevoluciones.CancelUpdates;
    Modulo.tDevoluciones.Append;

    Modulo.tListadoProductos.Cancel;
    Modulo.tListadoProductos.CancelUpdates;

    Modulo.tDevolucionesFecha.Value := Modulo.Enlace.AppServer.ServerDate;
    Modulo.tDevolucionesHora.Value  := Modulo.Enlace.AppServer.ServerTime;
    Modulo.tDevolucionesApertura.Value  := _CurrentApertura;

    Modulo.tDevolucionesProceso.Value := Gen_ProcessNumber(_CurrentUser);
    Modulo.tDevoluciones.Params.ParamByName('Proceso').Value := Modulo.tDevolucionesProceso.Value;

    FOTOLoadAndDisplay(Modulo.tListado_ClientesFoto,FOTO,_DefaultClientImg)
   Finally
     {Ubicar el Punto de Edicion}
     If Self.Visible Then
       If RegInfo.ReadBool(_DetalleFacturaFocus) Then Detalles.SetFocus
     Else
       Moneda.SetFocus;
   End;
end;

procedure TfrmDevolucion_Ventas.GuardarExecute(Sender: TObject);
  Var
    Vence : TDate;
begin
  If Modulo.tDetalles_Factura.State In dsEditModes Then Modulo.tDetalles_Factura.Post;
  If Modulo.tDetalles_Devoluciones.State In dsEditModes Then Modulo.tDetalles_Devoluciones.Post;

  If Modulo.tDetalles_Devoluciones.RecordCount = 0 Then
    Raise Exception.Create(_NoDatosGuardar);

  If Modulo.tDevoluciones.State In DsEditModes Then Modulo.tDevoluciones.Post;

  If Modulo.tDevoluciones.ChangeCount > 0 Then
    Begin
      Modulo.tDevoluciones.ApplyUpdates(0);
      Modulo.tDevoluciones.Refresh
    end;

  If Modulo.tFacturas.State In DsEditModes Then Modulo.tFacturas.Post;

  If Modulo.tFacturas.ChangeCount > 0 Then
    Begin
      Modulo.tFacturas.ApplyUpdates(0);
      Modulo.tFacturas.Refresh
    end;

  PopUpMessage(Modulo.Mensajes,_DatosGuardados);

  If (Sender Is TAction) Then
    If (Sender As TAction).Name = Guardar.Name Then
     Nuevo.Execute;

  Modulo.Enlace.AppServer.ReloadLink
end;

procedure TfrmDevolucion_Ventas.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmDevolucion_Ventas.SerialPortTriggerAvail(CP: TObject; Count: Word);
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
      #0..#31 : {Don't display ;
    Else S := S + C;
    end;   {Case
  end;
  Buffer := Buffer + S;

  If Count < 8 Then
    Begin
      Modulo.tDetalles_FacturaCodigo.Value := Buffer;
      Buffer := ''
    End         }
end;

procedure TfrmDevolucion_Ventas.BuscarExecute(Sender: TObject);
  Var
    R : Integer;
    S : String;
begin
  S := DoSearch(Nil,
                'Devoluciones',                                      (* TableName *)
                'SrchPr',                                        (* Provider *)
                Modulo.tDevolucionesProceso.FieldName,               (* CampoClave *)
                Modulo.tDevolucionesNumero.FieldName,                (* CampoInicial *)
                '',                  (* AltQry *)
                Modulo.Enlace,                                   (* RemoteServer *)
                'A',                                             (* SortOrder *)
                -1,                                              (* Packet Records *)
                wsMaximized,
                R);

  If R = MrOk Then
    Begin
      {Verificar el estado de la tabla de Salidas}
      If Modulo.tDevoluciones.State In DsEditModes Then
        If Application.MessageBox(PChar(_DatosEnEdicion),
                                  PChar(Buscar.Caption),
                                  MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

      ParamSearchKey(Modulo.tDevoluciones,'Proceso',S);

      ParamSearchKey(Modulo.tFacturas,'Proceso',Modulo.tDevolucionesProceso_Operacion.Value);

      FOTOLoadAndDisplay(Modulo.tListado_ClientesFoto,FOTO,_DefaultClientImg);

      Devolver_Actual.Enabled := False;
      Procesar_Devolucion.Enabled := False;
      Buscar_Factura.Enabled := False;
      Revertir.Enabled := False;
      Imprimir_Nota_Credito.Enabled := True;
      Imprimir.Enabled := True;
      Imprimir_Factura.Enabled := True;
      Anular_Devolucion.Enabled := True;
    End

end;

procedure TfrmDevolucion_Ventas.Buscar_FacturaExecute(Sender: TObject);
  Var
    R : Integer;
    S : String;
begin
  S := DoSearch(Nil,
                'Facturas',                                      (* TableName *)
                'SrchPr',                                        (* Provider *)
                Modulo.tFacturasProceso.FieldName,               (* CampoClave *)
                Modulo.tFacturasNumero.FieldName,                (* CampoInicial *)
                'SELECT * FROM "Facturas" WHERE "Condicion" <> ' +
                      QuotedStr('Inscripcion'),                  (* AltQry *)
                Modulo.Enlace,                                   (* RemoteServer *)
                'A',                                             (* SortOrder *)
                -1,                                              (* Packet Records *)
                wsMaximized,
                R);

  If R = MrOk Then
    Begin
      {Verificar el estado de la tabla de Salidas}
      ParamSearchKey(Modulo.tFacturas,'Proceso',S);

      FOTOLoadAndDisplay(Modulo.tListado_ClientesFoto,FOTO,_DefaultClientImg);
      Modulo.tDevoluciones.Edit;
      Modulo.tDevolucionesProceso_Operacion.Value := S;
      Modulo.tDevolucionesMonto_Actual.Value := Modulo.tFacturasTotalNeto.Value;
      Modulo.tDevolucionesA_Nombre_De.Value := Modulo.tFacturasNombre_Cliente.Value;
      Modulo.tDevolucionesConcepto.Value := 'DEVOLUCION EN FACTURA NUMERO : ' + Modulo.tFacturasNumero.Text;
      If Modulo.tFacturasLayAway.Value Then
        Modulo.tDevolucionesConcepto.Value := Modulo.tDevolucionesConcepto.Value + ' >> LAYAWAY';


    Devolver_Actual.Enabled := True;
    Buscar_Factura.Enabled := True;
    Imprimir_Factura.Enabled := True;

    End
end;

procedure TfrmDevolucion_Ventas.ImprimirExecute(Sender: TObject);
  Var
    DoPreview    : Boolean;
    OutputFormat : ShortInt;
    PrintFormat  : ShortInt;

begin
  If Modulo.tDevolucionesNumero.Value = 0 Then Procesar_DevolucionExecute(Imprimir);

  RegInfo.CloseKey;
  RegInfo.OpenKey(_DevolucionProductosKey,False);

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
                     RegInfo.OpenKey(_DevolucionProductosKey,False);
                     With ReportsAndForms.formDevolucion Do
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

                         ReportsAndForms._Seccion  := _DevolucionProductosKey;

                         ReportsAndForms.dev_LayAway.Visible :=  Modulo.tFacturasLayAway.Value;

                         Print
                       End // With
                   End // _GraphicForm
  End; // Case
end;

procedure TfrmDevolucion_Ventas.Mostrar_FotoExecute(Sender: TObject);
begin
  If Modulo.tDetalles_Factura.RecordCount = 0 Then Exit;
  Try
    ParamSearchKey(Modulo.tProductos,'Codigo',Modulo.tDetalles_FacturaCodigo_Real.Value);
    Application.CreateForm(TFshowFoto,FShowFoto);
    FOTOLoadAndDisplay(Modulo.tProductosFoto,FShowFoto.FOTO,_DefaultImgDir + _DefaultItemImg);
    FShowFoto.ShowModal;
  Finally
    FShowFoto.Free;
  End;
end;

procedure TfrmDevolucion_Ventas.DetallesCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  If Field = Modulo.tDetalles_FacturaTotal_Precio Then
    Begin
      ABrush.Color := Detalles.TitleColor;
      AFont.Color := clBlack
    End;


  If Trim(Modulo.tDetalles_FacturaTipo_Precio.Value) = 'Compuesto' Then
    Begin
      ABrush.Color := clLtGray;
      AFont.Color := clNavy;
    End;

  If Trim(Modulo.tDetalles_FacturaTipo_Precio.Value) = 'COMPONENTE' Then
    Begin
      ABrush.Color := clLime;
      AFont.Color := clNavy;
    End;

end;

procedure TfrmDevolucion_Ventas.Devolver_ActualExecute(Sender: TObject);
  Var
    C,
    CD,
    Cnt : Extended;
    S : String;
    DoAppendNew : Boolean;
begin
  CD := 0;

  If (Modulo.tDetalles_Factura.RecordCount = 0) Or (Modulo.tDetalles_FacturaCantidad.Value <= 0) Then Exit;

  Cnt := Modulo.tDetalles_FacturaCantidad.Value;

  If Modulo.tDetalles_Devoluciones.Locate(Modulo.tDetalles_DevolucionesCodigo.FieldName,Modulo.tDetalles_FacturaCodigo_Real.Value,[]) Then
    Begin
      DoAppendNew := False;
      CD := Modulo.tDetalles_DevolucionesCantidad.Value;
    End
  Else
    DoAppendNew := True;

  S := FloatToStr(Cnt);
  S := InputBox(Modulo.tDetalles_FacturaDescripcion.Value,'Cantidad a Devolver?',S);

  Try
    C := StrToFloat(S);
  Except
    Mensaje ('La cantidad introducida es invalida',self);
  End;

  If (C > Cnt) Then
    Begin
      Mensaje('La cantidad no debe ser mayor de : ' + FloatToStr(Cnt),self);
      Exit;
    End;

  If (C <= 0) Then
    Begin
      Mensaje('La cantidad debe ser mayor que Cero(0)',self);
      Exit;
    End;

  DuplicateRecord(Modulo.tDetalles_Factura,Modulo.tDetalles_Devoluciones,DoAppendNew);
  Try
    Modulo.tFacturas.BeforeEdit := Nil;
    Modulo.tDetalles_Factura.BeforeEdit := Nil;
    Modulo.tDetalles_Factura.Edit;
    Modulo.tDetalles_FacturaCantidad.Value := Modulo.tDetalles_FacturaCantidad.Value - C;
    Modulo.tDetalles_Factura.Post;
  Finally
    Modulo.tFacturas.BeforeEdit := Modulo.tFacturasBeforeEdit;
    Modulo.tDetalles_Factura.BeforeEdit := Modulo.tDetalles_FacturaBeforeEdit;
  End;
  Modulo.tDetalles_DevolucionesProceso.Value := Modulo.tDevolucionesProceso.Value;
  Modulo.tDetalles_DevolucionesSecuencia.Value := 0;
  Modulo.tDetalles_DevolucionesCodigo_Real.Value := '';
  Modulo.tDetalles_DevolucionesCantidad.Value := CD + C;
  Modulo.tDetalles_Devoluciones.Post;
  Revertir.Enabled := True;
  Imprimir.Enabled := True;
  Procesar_Devolucion.Enabled := True;
  Modulo.tDevoluciones.Edit;
  S := '';
  Modulo.tDevolucionesMonto_Final.Value := Modulo.tDevolucionesMonto_Actual.Value - Modulo.tFacturasTotalNeto.Value;
  If AdvMemoInput('Justificacion','Especifique la razon para la devolución','',S,tiInformation,self) = MrOK Then
    Begin
      If Trim(Modulo.tDevolucionesJustificacion.Value) <> '' Then
        Modulo.tDevolucionesJustificacion.Value := Modulo.tDevolucionesJustificacion.Value + ' / ' + UpperCase(S)
      Else
        Modulo.tDevolucionesJustificacion.Value := UpperCase(S)
    End;
end;

procedure TfrmDevolucion_Ventas.Anular_DevolucionExecute(Sender: TObject);
begin
  If (Modulo.tDevolucionesStatus.Value = _stANULADO) Then
    Begin
      Nuevo.Execute;
      Exit;
    End;

  If (Modulo.tDevolucionesNumero.Value <> 0) And Not(Modulo.tDevolucionesNumero.IsNull) Then
    Begin
      Try
        ParamSearchKey(Modulo.tCreditos,'Proceso',Modulo.tDevolucionesProceso_Nota_Credito.Value);
        If (Trim(Modulo.tCreditosStatus.Value) = _stPROCESADO) Then
          Begin
            Mensaje ('La nota de credito relacionada a esta devolución YA FUE APLICADA'#13'IMPOSIBLE ANULAR',Self);
            Exit;
          End;

        Modulo.tDevoluciones.BeforeEdit := Nil;
        Modulo.tDetalles_Devoluciones.BeforeDelete := Nil;
        Modulo.tDetalles_Devoluciones.AfterDelete := Nil;
        If Application.MessageBox(PChar(Format(_ConfirmarEliminar,[Modulo.tDevolucionesNumero.Text])),
                          'ANULAR DEVOLUCION',
                          MB_YESNO + MB_ICONQUESTION) = ID_No Then Raise Exception.Create(_ErrAccesoDenegadoOpcion);

        Granted := False;
        ModuloGenerales.Autorizar_Opcion(Self,self.Name);
        If (Not Granted) Or (_GrantedLevel <> _SuperUserLevel) Then Raise Exception.Create(_ErrAccesoDenegadoOpcion);

        Modulo.tDetalles_Devoluciones.First;
        While Not Modulo.tDetalles_Devoluciones.Eof Do
          RevertirExecute(Self);

        Modulo.tDevoluciones.Edit;
        Modulo.tDevolucionesStatus.Value := _stANULADO;
        Modulo.tDevolucionesJustificacion.Value := DateToStr(Modulo.Enlace.AppServer.ServerDate) + '>> ' +
                                            'ANULADO POR : ' + _GrantedUser + ' *** TN: ' +
                                            Modulo.tDevolucionesMonto_Final.Text + ' ' +
                                            Modulo.tDevolucionesJustificacion.Value;
        Modulo.tDevolucionesMonto_Final.Value := 0;
        Modulo.tDevolucionesMonto_Actual.Value := 0;

        If Modulo.tDetalles_Factura.State In dsEditModes Then Modulo.tDetalles_Factura.Post;
        If Modulo.tDetalles_Devoluciones.State In dsEditModes Then Modulo.tDetalles_Devoluciones.Post;

        If Modulo.tDevoluciones.State In DsEditModes Then Modulo.tDevoluciones.Post;

        Modulo.tCreditos.Edit;
        Modulo.tCreditosStatus.Value := _stANULADO;
        Modulo.tCreditos.Post;

        If Modulo.tDevoluciones.ChangeCount > 0 Then
          Modulo.tDevoluciones.ApplyUpdates(0);

        If Modulo.tCreditos.ChangeCount > 0 Then
          Modulo.tCreditos.ApplyUpdates(0);

        If Modulo.tFacturas.State In DsEditModes Then Modulo.tFacturas.Post;

        If Modulo.tFacturas.ChangeCount > 0 Then
          Begin
            Modulo.tFacturas.ApplyUpdates(0);
            Modulo.tFacturas.Refresh
          end;
      Finally
        Nuevo.Execute;
      End;
    End
end;

procedure TfrmDevolucion_Ventas.Imprimir_FacturaExecute(Sender: TObject);
  Var
    DoPreview    : Boolean;
    OutputFormat : ShortInt;
    PrintFormat  : ShortInt;

begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_FacturaProductosKey,False);

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
                     RegInfo.OpenKey(_DevolucionProductosKey,False);
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

                         ReportsAndForms._Seccion  := _DevolucionProductosKey;


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
end;

procedure TfrmDevolucion_Ventas.Imprimir_Nota_CreditoExecute(Sender: TObject);
  Var
    DoPreview    : Boolean;
    OutputFormat : ShortInt;
    PrintFormat  : ShortInt;

  Const
    DeviceTypes  : Array [False..True] Of String = ('Printer','Screen');

begin
  If (Trim(Modulo.tDevolucionesProceso_Nota_Credito.Value) = '') Or
     (Trim(Modulo.tDevolucionesProceso_Nota_Credito.Value) = '-') Then Exit;

  ParamSearchKey(Modulo.tCreditos,'Proceso',Modulo.tDevolucionesProceso_Nota_Credito.Value);

  RegInfo.CloseKey;
  RegInfo.OpenKey(_CreditosKey,False);

  DoPreview := VistaPrevia.Checked;
  OutputFormat := RegInfo.ReadInteger(_OutputFormat);
  PrintFormat := RegInfo.ReadInteger(_PrinterStyle);

  Case OutputFormat Of
    _Ticket : Begin
                {If DoPreview Then
                  Begin
                    Application.CreateForm(TPreviewForm,PreviewForm);
                    ImprimirAutorizacion(_Screen,Desglosar.Checked);
                    PreviewForm.Vista.Lines.LoadFromFile(_PreviewFile);
                    PreviewForm.ShowModal;
                    If PreviewForm.ModalResult = MrOk Then DoPreview := False;
                    PreviewForm.Free
                  End; {If DoPreview}

                 { If Not (DoPreview) Then ImprimirAutorizacion(_Port,Desglosar.Checked);}
              End; // _Ticket

    _TextFormat : Begin
                    {If DoPreview Then
                      Begin
                        Application.CreateForm(TPreviewForm,PreviewForm);
                        ImprimirFactura(_Screen,Desglosar.Checked);
                        PreviewForm.Vista.Lines.LoadFromFile(_PreviewFile);
                        PreviewForm.ShowModal;
                        If PreviewForm.ModalResult = MrOk Then DoPreview := False;
                        PreviewForm.Free
                      End; {If DoPreview}

                     // If Not (DoPreview) Then ImprimirFactura(_Port,Desglosar.Checked);
                  End; // _TextFormat

    _GraphicForm : Begin

                     With ReportsAndForms.FormCreditos Do
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

                         ReportsAndForms._Seccion  := _DevolucionProductosKey;

                         Print
                       End // With
                   End // _GraphicForm
  End // Case
end;

procedure TfrmDevolucion_Ventas.Procesar_DevolucionExecute(Sender: TObject);
begin
  If (Trim(Modulo.tDevolucionesProceso_Nota_Credito.Value) <> '') And
     (Trim(Modulo.tDevolucionesProceso_Nota_Credito.Value) <> '-') Then Exit;

  Modulo.tCreditos.Open;
  Modulo.tCreditos.Append;

  Modulo.tCreditosProceso.Value := Gen_ProcessNumber(_CurrentUser);
  Modulo.tCreditos.Params.ParamByName('Proceso').Value := Modulo.tCreditosProceso.Value;

  Modulo.tCreditosProceso_Operacion.Value := Modulo.tDevolucionesProceso_Operacion.Value;
  Modulo.tCreditosProceso_Origina.Value := Modulo.tDevolucionesProceso.Value;

  Modulo.tCreditosFecha.Value := Modulo.Enlace.AppServer.ServerDate;
  Modulo.tCreditosHora.Value  := Modulo.Enlace.AppServer.ServerTime;

  Modulo.tCreditosConcepto.Value := Modulo.tDevolucionesConcepto.Value;
  Modulo.tCreditosA_Nombre_De.Value := Modulo.tFacturasNombre_Cliente.Value;
  Modulo.tCreditosTipo.Value := 'VENTAS';
  Modulo.tCreditosID.Value := Modulo.tFacturasCliente.Value;
  Modulo.tCreditosMonto.Value := Modulo.tDevolucionesMonto_Final.Value;
  Modulo.tCreditosTerminal.Value := _CurrentTerminal;
  Modulo.tCreditosApertura.Value := _CurrentApertura;
  Modulo.tCreditosStatus.Value := _stACTIVO;
  Modulo.tCreditosVence.Value := False;


  Modulo.tDevoluciones.Edit;
  Modulo.tDevolucionesProceso_Nota_Credito.Value := Modulo.tCreditosProceso.Value;
  GuardarExecute(Procesar_Devolucion);


  Modulo.tCreditos.Post;
  Modulo.tCreditos.ApplyUpdates(0);

  Devolver_Actual.Enabled := False;
  Procesar_Devolucion.Enabled := False;
  Buscar_Factura.Enabled := False;
  Revertir.Enabled := False;
  Imprimir_Nota_Credito.Enabled := True;
  Imprimir_Factura.Enabled := True;
  Anular_Devolucion.Enabled := True;

  Imprimir_Nota_Credito.Execute;
end;

procedure TfrmDevolucion_Ventas.RevertirExecute(Sender: TObject);
begin
  If Modulo.tDetalles_Devoluciones.RecordCount > 0 Then
    Try
      Modulo.tFacturas.BeforeEdit := Nil;
      Modulo.tDetalles_Factura.BeforeEdit := Nil;
      Modulo.tDetalles_Factura.Locate('Codigo_Real',Modulo.tDetalles_DevolucionesCodigo.Value,[]);
      Modulo.tDetalles_Factura.Edit;
      Modulo.tDetalles_FacturaCantidad.Value := Modulo.tDetalles_FacturaCantidad.Value + Modulo.tDetalles_DevolucionesCantidad.Value;
      Modulo.tDetalles_Factura.Post;
      Modulo.tDetalles_Devoluciones.Delete;
    Finally
      Modulo.tFacturas.BeforeEdit := Modulo.tFacturasBeforeEdit;
      Modulo.tDetalles_Factura.BeforeEdit := Modulo.tDetalles_FacturaBeforeEdit;
    End;

end;

procedure TfrmDevolucion_Ventas.FormActivate(Sender: TObject);
begin
  Try
    Cliente.OnExit := Nil;
    RegInfo.CloseKey;
    RegInfo.OpenKey(_DevolucionProductosKey,False);
    If RegInfo.ReadBool(_DetalleFacturaFocus) Then Detalles.SetFocus
    Else Moneda.SetFocus
  Finally
  End;
end;

procedure TfrmDevolucion_Ventas.Configuracion_CreditoExecute(Sender: TObject);
begin
  Application.CreateForm(TFConfigForms,FConfigForms);
  FConfigForms._Seccion := _CreditosKey;
  FConfigForms.Caption := Configuracion_Devolucion.Caption;
  If Trim(FConfigForms._Seccion) <> '' Then
    Try
      FConfigForms.LoadValues
    Finally
      FConfigForms.ShowModal;
      FConfigForms.Free
    End; // Try
end;

procedure TfrmDevolucion_Ventas.Configuracion_DevolucionExecute(Sender: TObject);
begin
  Application.CreateForm(TFConfigForms,FConfigForms);
  FConfigForms._Seccion := _DevolucionProductosKey;
  FConfigForms.Caption := Configuracion_Devolucion.Caption;
  If Trim(FConfigForms._Seccion) <> '' Then
    Try
      FConfigForms.LoadValues
    Finally
      FConfigForms.ShowModal;
      FConfigForms.Free
    End; // Try
end;

Initialization
  RegisterClass(TfrmDevolucion_Ventas);

end.
