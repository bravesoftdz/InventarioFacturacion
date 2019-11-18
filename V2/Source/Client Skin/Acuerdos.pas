unit Acuerdos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, wwriched, Grids,
  Wwdbigrd, Wwdbgrid, frmClientes, Wwdbspin, IniFiles, ppBarCod,
  ppCtrls, ppPrnabl, ppClass, ppCache, ppBands, ppProd, ppReport, ppDB,
  ppComm, ppRelatv, ppDBPipe, wwcheckbox, RegKeys, DbClient, SUIPopupMenu,
  SUIButton;

type
  TfAcuerdos = class(TForm)
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Panel_Datos: TAdvPageControl;
    Panel_Botones: TAdvPageControl;
    Pg_Botones: TAdvTabSheet;
    Botones: TActionToolBar;
    Imprimir: TAction;
    Configuracion_Acuerdo: TAction;
    Enviar_email: TAction;
    Opciones_Miscelaneas: TsuiPopupMenu;
    Menu_Configuracion_Acuerdor: TMenuItem;
    Menu_Enviar_email: TMenuItem;
    N3: TMenuItem;
    Notificaciones: TStatusBar;
    Pg_Datos: TAdvTabSheet;
    Label3: TLabel;
    Label2: TLabel;
    Label23: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Fecha_Fact: TDBEdit;
    Facturas: TwwDBLookupCombo;
    Vendedor: TwwDBLookupCombo;
    Concepto: TwwDBComboBox;
    Numero: TDBEdit;
    Label25: TLabel;
    Fecha_Entrega: TwwDBDateTimePicker;
    Panel_Detalles: TAdvPageControl;
    Pg_Detalles: TAdvTabSheet;
    Label6: TLabel;
    Fecha: TDBEdit;
    Detalles: TwwDBGrid;
    DetallesIButton: TwwIButton;
    Det_Acuerdos: TwwDBGrid;
    wwIButton1: TwwIButton;
    Add: TAction;
    Remove: TAction;
    Add_All: TAction;
    Remove_All: TAction;
    bt_Aceptar: TsuiButton;
    suiButton1: TsuiButton;
    suiButton2: TsuiButton;
    suiButton3: TsuiButton;
    Label8: TLabel;
    Total_Neto: TDBEdit;
    grdFacturas: TwwDBGrid;
    Configuracion_Orden_Trabajo: TAction;
    Imprimir_Orden_Trabajo: TAction;
    ConfiguraciondeOrdendeTrabajo1: TMenuItem;
    ImprimirOrdendeTrabajo1: TMenuItem;
    BuscarEn: TRadioGroup;
    Anular_Acuerdo_Trabajo: TAction;
    AnularAcuerdodeTrabajo1: TMenuItem;
    N1: TMenuItem;
    procedure CategoriasCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SerialPortTriggerAvail(CP: TObject; Count: Word);
    procedure BuscarExecute(Sender: TObject);
    procedure DetallesExit(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure Configuracion_AcuerdoExecute(Sender: TObject);
    procedure DetallesCellChanged(Sender: TObject);
    procedure FacturasCloseUp(Sender: TObject; LookupTable, FillTable: TDataSet;
      modified: Boolean);
    procedure AddExecute(Sender: TObject);
    procedure RemoveExecute(Sender: TObject);
    procedure Add_AllExecute(Sender: TObject);
    procedure Remove_AllExecute(Sender: TObject);
    procedure grdFacturasRowChanged(Sender: TObject);
    procedure Configuracion_Orden_TrabajoExecute(Sender: TObject);
    procedure Imprimir_Orden_TrabajoExecute(Sender: TObject);
    procedure Det_AcuerdosEnter(Sender: TObject);
    procedure Det_AcuerdosExit(Sender: TObject);
    procedure BuscarEnClick(Sender: TObject);
    procedure Anular_Acuerdo_TrabajoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAcuerdos : TfAcuerdos;
  Buffer       : String = '';
  LstNCF       : String = '00';
  UseLstNCF    : Boolean = False;

implementation

uses DataModulo, Utilidades, Categorias, Departamentos,
  Fabricantes, Tipos_Productos, Status, Distrbuir_Vencimiento,
  dotmatrx, Terminos, DateUtils, CnfgForms, Reports_Forms,
  Registry, ConfigForm, Generales,
  Autorizar;

{$R *.dfm}

procedure TfAcuerdos.FormCreate(Sender: TObject);
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

      {Configuracion General}
      Modulo.tAcuerdos.Open;
      Modulo.tListado_Facturas.CommandText := 'Select * From "Facturas" Where "Status_Trabajo" <> ' + QuotedStr('ENTREGADO');
      Modulo.tListado_Facturas.Open;
      Modulo.tListadoVendedores.Open;

      Reginfo.CloseKey;
      RegInfo.OpenKey(_GeneralConfigKey,True);

      {Insertar Registro en Blanco}
      Nuevo.Execute
    End; {If _Load_Create}
end;

procedure TfAcuerdos.FacturasCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  If modified Then
    Begin
      Modulo.tFacturas.Close;
      Modulo.tFacturas.Params.ParamByName('Proceso').AsString := Modulo.tListado_FacturasProceso.AsString;
      Modulo.tFacturas.Open;
    End;
end;

procedure TfAcuerdos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If Modulo.tAcuerdos.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicionSalida),
                              PChar(Salir.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then
      Begin
        Action := caNone;
        Exit
      End;

  {Cerrar las Tablas}
  Modulo.tAcuerdos.Cancel;
  Modulo.tAcuerdos.CancelUpdates;
  Modulo.tAcuerdos.Params.ParamByName('Proceso').Clear;
//  Modulo.tAcuerdos.Refresh;

  {Cerrar las Tablas}
  Modulo.tFacturas.Cancel;
  Modulo.tFacturas.CancelUpdates;
  Modulo.tFacturas.Params.ParamByName('Proceso').Clear;
//  Modulo.tFacturas.Refresh;

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

  Modulo.tFormas_Pago.Filtered := False;

  RegInfo.CloseKey;
  RegInfo.OpenKey(_FacturaProductosKey,False);
  RegInfo.WriteString(_LastNCF,LstNCF);

    If Modulo.tClientes.Active Then
    Begin
      Modulo.tClientes.Cancel;
      Modulo.tClientes.CancelUpdates;
    End;

  _ChkExistence := False
end;

procedure TfAcuerdos.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TfAcuerdos.NuevoExecute(Sender: TObject);
begin
   Try
    {Verificar el estado de la tabla de Acuerdos}
    If (Modulo.tAcuerdos.State In DsEditModes) And
       (Modulo.tDetalles_Acuerdos.RecordCount > 0) Then
      If Application.MessageBox(PChar(_DatosEnEdicion),
                                PChar(Nuevo.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

    {Filtrar la Tabla de Productos}
    RegInfo.CloseKey;
    RegInfo.OpenKey(_GeneralConfigKey,False);

    {Carga la Configuracion Inicial de la Pantalla}
    RegInfo.CloseKey;
    RegInfo.OpenKey(_AcuerdosKey,False);


    RegInfo.CloseKey;
    RegInfo.OpenKey(_GeneralConfigKey,False);

    {Preparar la Tabla de Acuerdos}
    Modulo.tAcuerdos.Cancel;
    Modulo.tAcuerdos.CancelUpdates;
    Modulo.tAcuerdos.Append;

    Modulo.tAcuerdosFecha.Value := Modulo.Enlace.AppServer.ServerDate;
    Modulo.tAcuerdosHora.Value  := Modulo.Enlace.AppServer.ServerTime;

    Modulo.tAcuerdosProceso.Value := Gen_ProcessNumber(_CurrentUser);
    Modulo.tAcuerdos.Params.ParamByName('Proceso').Value := Modulo.tAcuerdosProceso.Value;

    {Fijar Condicion Establecida para Venta}
    RegInfo.CloseKey;
    RegInfo.OpenKey(_AcuerdosKey,False);

      Modulo.tFacturas.Close
   Finally
   End;
end;

procedure TfAcuerdos.RemoveExecute(Sender: TObject);
begin
  If Modulo.tDetalles_Acuerdos.RecordCount > 0 Then Modulo.tDetalles_Acuerdos.Delete
end;

procedure TfAcuerdos.Remove_AllExecute(Sender: TObject);
begin
  Modulo.tDetalles_Acuerdos.First;
  While Not Modulo.tDetalles_Acuerdos.EOF Do Remove.Execute;
end;

procedure TfAcuerdos.GuardarExecute(Sender: TObject);
begin
  If Modulo.tDetalles_Acuerdos.State In dsEditModes Then Modulo.tDetalles_Acuerdos.Post;

  If Modulo.tDetalles_Acuerdos.RecordCount <= 0 Then
    Raise Exception.Create(_NoDatosGuardar);

  If Modulo.tAcuerdos.State In DsEditModes Then
     Modulo.tAcuerdos.Post;

  If Modulo.tAcuerdos.ChangeCount > 0 Then
    Begin
      Modulo.tAcuerdos.ApplyUpdates(0);
      Modulo.tAcuerdos.Refresh
    end;

  PopUpMessage(Modulo.Mensajes,_DatosGuardados);

  If (Sender As TAction).Name = Guardar.Name Then Nuevo.Execute;
end;

procedure TfAcuerdos.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfAcuerdos.SerialPortTriggerAvail(CP: TObject; Count: Word);
var
  I : Word;
  C : Char;
  S : String;
begin
end;

procedure TfAcuerdos.grdFacturasRowChanged(Sender: TObject);
begin
  If Modulo.tListado_Facturas.Active Then
    Begin
      Modulo.tFacturas.Close;
      Modulo.tFacturas.Params.ParamByName('Proceso').AsString := Modulo.tListado_FacturasProceso.AsString;
      Modulo.tFacturas.Open;
    End;
end;

procedure TfAcuerdos.AddExecute(Sender: TObject);
begin
  If Not Modulo.tDetalles_Acuerdos.Locate('Numero;Codigo',VarArrayOf([Modulo.tDetalles_FacturaRegistro.Value,
                                                                      Modulo.tDetalles_FacturaCodigo_Real.Value]),[]) Then
    Modulo.tDetalles_Acuerdos.Append
  Else
    Modulo.tDetalles_Acuerdos.Edit;

  Modulo.tDetalles_AcuerdosNumero.Value := Modulo.tDetalles_FacturaRegistro.Value;
  Modulo.tDetalles_AcuerdosCodigo.Value := Modulo.tDetalles_FacturaCodigo_Real.Value;
  Modulo.tDetalles_AcuerdosDescripcion.Value := Modulo.tDetalles_FacturaDescripcion.Value;
  Modulo.tDetalles_AcuerdosCantidad.Value := Modulo.tDetalles_FacturaCantidad.Value;
  Modulo.tDetalles_AcuerdosEmpleado.Value := Modulo.tVendedoresCedula_Rnc_Pasaporte.Value;
  Modulo.tDetalles_AcuerdosFactura.Value := Modulo.tListado_FacturasNumero.Value;
  Modulo.tDetalles_AcuerdosCliente.Value := Modulo.tListado_FacturasNombre_Cliente.Value;
  Modulo.tDetalles_AcuerdosFecha_Entrega.Value := Modulo.tListado_FacturasFecha_Cierre.Value;

  Modulo.tDetalles_Acuerdos.Post;
End;

procedure TfAcuerdos.Add_AllExecute(Sender: TObject);
begin
  Modulo.tDetalles_Factura.First;
  While Not Modulo.tDetalles_Factura.EOF Do
    Begin
      Add.Execute;
      Modulo.tDetalles_Factura.Next
    End;
end;

procedure TfAcuerdos.Anular_Acuerdo_TrabajoExecute(Sender: TObject);
begin
  If (Modulo.tAcuerdosNumero.Value <> 0) And Not(Modulo.tAcuerdosNumero.IsNull) Then
    Begin
      Try
        Modulo.tAcuerdos.BeforeEdit := Nil;
        Modulo.tDetalles_Acuerdos.BeforeDelete := Nil;
        Modulo.tDetalles_Acuerdos.AfterDelete := Nil;
        If Application.MessageBox(PChar(Format(_ConfirmarEliminar,[Modulo.tAcuerdosNumero.Text])),
                          'ELIMINAR Cotizacion',
                          MB_YESNO + MB_ICONQUESTION) = ID_No Then Raise Exception.Create(_ErrAccesoDenegadoOpcion);

        Granted := False;
        ModuloGenerales.Autorizar_Opcion(Self,self.Name);
        If (Not Granted) Or (_GrantedLevel <> _SuperUserLevel) Then Raise Exception.Create(_ErrAccesoDenegadoOpcion);

        Modulo.tDetalles_Acuerdos.First;
        While Not Modulo.tDetalles_Acuerdos.Eof Do
          Modulo.tDetalles_Acuerdos.Delete;

        Modulo.tAcuerdos.Delete;
        Modulo.tAcuerdos.ApplyUpdates(0)
      Finally
        Modulo.tAcuerdos.BeforeEdit := Modulo.tAcuerdosBeforeEdit;
        Modulo.tDetalles_Acuerdos.AfterDelete := Modulo.ActualizarDetallesCotizacion;
      End;
    End
end;

procedure TfAcuerdos.BuscarEnClick(Sender: TObject);
begin
  Case BuscarEn.ItemIndex Of
    0 : Begin
          Modulo.tListado_Facturas.Close;
          Modulo.tListado_Facturas.CommandText := 'Select * From "Facturas" Where "Status_Trabajo" <> ' + QuotedStr('ENTREGADO');
          Modulo.tListado_Facturas.Open;
        End;
    1 : Begin
          Facturas.LookupTable := Modulo.tListado_Facturas
        End;
  End;
end;

procedure TfAcuerdos.BuscarExecute(Sender: TObject);
  Var
    R : Integer;
    S : String;
begin
  S := DoSearch(Nil,
                'Acuerdos_Trabajo',                                      (* TableName *)
                'SrchPr',                                        (* Provider *)
                Modulo.tAcuerdosProceso.FieldName,               (* CampoClave *)
                Modulo.tAcuerdosNumero.FieldName,                (* CampoInicial *)
                '',                                              (* AltQry *)
                Modulo.Enlace,                                   (* RemoteServer *)
                'A',                                             (* SortOrder *)
                -1,                                              (* Packet Records *)
                wsMaximized,
                R);

  If R = MrOk Then
    Begin
      {Verificar el estado de la tabla de Salidas}
      If Modulo.tAcuerdos.State In DsEditModes Then
        If Application.MessageBox(PChar(_DatosEnEdicion),
                                  PChar(Buscar.Caption),
                                  MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

          Modulo.tAcuerdos.Cancel;
          Modulo.tAcuerdos.CancelUpdates;
          Modulo.tAcuerdos.Params.ParamByName('Proceso').AsString := S;
          Modulo.tAcuerdos.Refresh;

          Modulo.tFacturas.Close;
          Modulo.tFacturas.Params.ParamByName('Proceso').AsString := Modulo.tListado_FacturasProceso.AsString;
          Modulo.tFacturas.Open;
    End;
end;

procedure TfAcuerdos.DetallesExit(Sender: TObject);
begin
  KeyPreview := True
end;

procedure TfAcuerdos.Det_AcuerdosEnter(Sender: TObject);
begin
  KeyPreview := False
end;

procedure TfAcuerdos.Det_AcuerdosExit(Sender: TObject);
begin
  KeyPreview := true
end;

procedure TfAcuerdos.ImprimirExecute(Sender: TObject);
  Var
    OutputFormat : ShortInt;
    PrintFormat  : ShortInt;

begin
  GuardarExecute(Sender);

  Concepto.SetFocus;

  RegInfo.CloseKey;
  RegInfo.OpenKey(_AcuerdosKey,False);

  OutputFormat := RegInfo.ReadInteger(_OutputFormat);
  PrintFormat := RegInfo.ReadInteger(_PrinterStyle);

  Case OutputFormat Of
    _GraphicForm : Begin
                     RegInfo.CloseKey;
                     RegInfo.OpenKey(_AcuerdosKey,False);
                     With ReportsAndForms.FormAcuerdos Do
                       Begin
                         Template.FileName := RegInfo.ReadString(_TemplateFileName);

                         If (Trim(Template.FileName) <> _NoneStr) And (Trim(Template.FileName) <> '') Then
                           Template.LoadFromFile;

                         DeviceType                := DeviceTypes[True];
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

                         ReportsAndForms._Seccion  := _AcuerdosKey;

                         Print
                       End // With
                   End // _GraphicForm
  End; // Case

end;

procedure TfAcuerdos.Imprimir_Orden_TrabajoExecute(Sender: TObject);
  Var
    OutputFormat : ShortInt;
    PrintFormat  : ShortInt;

begin
  GuardarExecute(Sender);

  Concepto.SetFocus;

  RegInfo.CloseKey;
  RegInfo.OpenKey(_OrdenTrabajoKey,False);

  OutputFormat := RegInfo.ReadInteger(_OutputFormat);
  PrintFormat := RegInfo.ReadInteger(_PrinterStyle);

  Case OutputFormat Of
    _GraphicForm : Begin
                     RegInfo.CloseKey;
                     RegInfo.OpenKey(_OrdenTrabajoKey,False);
                     With ReportsAndForms.frmOrdenTrabajo Do
                       Begin
                         Template.FileName := RegInfo.ReadString(_TemplateFileName);

                         If (Trim(Template.FileName) <> _NoneStr) And (Trim(Template.FileName) <> '') Then
                           Template.LoadFromFile;

                         DeviceType                := DeviceTypes[True];
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

                         ReportsAndForms._Seccion  := _OrdenTrabajoKey;

                         Print
                       End // With
                   End // _GraphicForm
  End; // Case

end;

procedure TfAcuerdos.DetallesCellChanged(Sender: TObject);
begin
//  If Detalles.SelectedField = Modulo
end;

procedure TfAcuerdos.CategoriasCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  Modulo.tListadoProductos.Filter := 'Categoria = ' + Modulo.TCategoriaNumero.Text;
  Modulo.tListadoProductos.Filtered := True
end;

procedure TfAcuerdos.Configuracion_AcuerdoExecute(Sender: TObject);
begin
  Application.CreateForm(TFConfigForms,FConfigForms);
  FConfigForms._Seccion := _AcuerdosKey;
  FConfigForms.Caption := Configuracion_Acuerdo.Caption;
  If Trim(FConfigForms._Seccion) <> '' Then
    Try
      FConfigForms.LoadValues
    Finally
      FConfigForms.ShowModal;
      FConfigForms.Free
    End; // Try
end;

procedure TfAcuerdos.Configuracion_Orden_TrabajoExecute(Sender: TObject);
begin
  Application.CreateForm(TFConfigForms,FConfigForms);
  FConfigForms._Seccion := _OrdenTrabajoKey;
  FConfigForms.Caption := Configuracion_Orden_Trabajo.Caption;
  If Trim(FConfigForms._Seccion) <> '' Then
    Try
      FConfigForms.LoadValues
    Finally
      FConfigForms.ShowModal;
      FConfigForms.Free
    End; // Try
end;

Initialization
  RegisterClass(TfAcuerdos);

end.
