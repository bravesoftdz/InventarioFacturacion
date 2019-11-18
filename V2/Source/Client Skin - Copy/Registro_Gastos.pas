unit Registro_Gastos;

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
  TFRegistro_Gastos = class(TForm)
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Panel_Datos_Registro: TAdvPageControl;
    Pg_Datos_Registro: TAdvTabSheet;
    Panel_Botones: TAdvPageControl;
    Pg_Botones: TAdvTabSheet;
    Botones: TActionToolBar;
    Label6: TLabel;
    Referencia: TDBEdit;
    Label7: TLabel;
    SubTotal: TDBEdit;
    Label8: TLabel;
    Total_Neto: TDBEdit;
    Label3: TLabel;
    Fecha: TDBEdit;
    Label4: TLabel;
    Hora: TDBEdit;
    Imprimir: TAction;
    Label14: TLabel;
    Total_Impuesto: TDBEdit;
    Configuracion_Comprobante: TAction;
    VistaPrevia: TCheckBox;
    Label22: TLabel;
    Numero_NCF: TDBEdit;
    Enviar_email: TAction;
    Opciones_Miscelaneas: TsuiPopupMenu;
    Menu_Configuracion_Comprobante: TMenuItem;
    Label5: TLabel;
    A_Nombre_De: TwwDBComboBox;
    Menu_Enviar_email: TMenuItem;
    N3: TMenuItem;
    NumeroRegistroGasto: TDBEdit;
    Label1: TLabel;
    Anular_Registro: TAction;
    Notificaciones: TStatusBar;
    Label2: TLabel;
    Concepto: TwwDBRichEdit;
    Label21: TLabel;
    TipoNcf: TwwDBLookupCombo;
    Label9: TLabel;
    Comentarios: TwwDBRichEdit;
    AnularRegistro1: TMenuItem;
    N1: TMenuItem;
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
    procedure ImprimirExecute(Sender: TObject);
    procedure Configuracion_ComprobanteExecute(Sender: TObject);
    procedure Anular_RegistroExecute(Sender: TObject);
    procedure ConceptoExit(Sender: TObject);
    procedure ConceptoEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRegistro_Gastos : TFRegistro_Gastos;
  Buffer       : String = '';
  LstNCF       : String = '00';
  UseLstNCF    : Boolean = False;

implementation

uses DataModulo, Utilidades, SrchDlg, Categorias, Departamentos,
  Fabricantes, Tipos_Productos, Status, Distrbuir_Vencimiento,
  dotmatrx, Terminos, DateUtils, CnfgForms, Reports_Forms, 
  Registry, ConfigForm, Generales, DlgFinanciamientos,
  Autorizar;

{$R *.dfm}

procedure TFRegistro_Gastos.FormCreate(Sender: TObject);
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

      Modulo.tProductos.Open;
      Modulo.tListadoProductos.Open;

      {Configuracion General}
      Modulo.tRegistro_Gastos.Open;

      RegInfo.CloseKey;
      RegInfo.OpenKey(_Registro_GastosKey,False);

      Modulo.tCategoria.Open;

      Try
        LstNCF := RegInfo.ReadString(_LastNCF);
        UseLstNCF := RegInfo.ReadBool(_UseLastNCF)
      Except
        LstNCF := '00';
        UseLstNCF := False;
      end;

      Reginfo.CloseKey;
      RegInfo.OpenKey(_GeneralConfigKey,True);

      RegInfo.CloseKey;
      RegInfo.OpenKey(_LabelProductosKey,False);

      {Insertar Registro en Blanco}
      Nuevo.Execute
    End; {If _Load_Create}
end;

procedure TFRegistro_Gastos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If Modulo.tRegistro_Gastos.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicionSalida),
                              PChar(Salir.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then
      Begin
        Action := caNone;
        Exit
      End;

  {Cerrar las Tablas}
  Modulo.tRegistro_Gastos.Cancel;
  Modulo.tRegistro_Gastos.CancelUpdates;
  Modulo.tRegistro_Gastos.Params.ParamByName('Proceso').Clear;
//  Modulo.tRegistro_Gastos.Refresh;

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

  RegInfo.CloseKey;
  RegInfo.OpenKey(_Registro_GastosKey,False);
  RegInfo.WriteString(_LastNCF,LstNCF)
end;

procedure TFRegistro_Gastos.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFRegistro_Gastos.NuevoExecute(Sender: TObject);
  Var
    Depto : Integer;
begin
   Try
    {Verificar el estado de la tabla de Registro_Gastos}
    If (Modulo.tRegistro_Gastos.State In DsEditModes) Then
      If Application.MessageBox(PChar(_DatosEnEdicion),
                                PChar(Nuevo.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

    {Filtrar la Tabla de Productos}
    RegInfo.CloseKey;
    RegInfo.OpenKey(_GeneralConfigKey,False);

    {Carga la Configuracion Inicial de la Pantalla}
    RegInfo.CloseKey;
    RegInfo.OpenKey(_Registro_GastosKey,False);

    VistaPrevia.Checked := RegInfo.ReadBool(_PreviewForm);

    Modulo.tListadoProductos.Filter := 'Departamento = ' + IntToStr(Depto);
    Modulo.tListadoProductos.Filtered := (Depto <> 0);

    RegInfo.CloseKey;
    RegInfo.OpenKey(_GeneralConfigKey,False);

    {Preparar la Tabla de Registro_Gastos}
    Modulo.tRegistro_Gastos.Cancel;
    Modulo.tRegistro_Gastos.CancelUpdates;
    Modulo.tRegistro_Gastos.Append;

    Modulo.tListadoProductos.Cancel;
    Modulo.tListadoProductos.CancelUpdates;

    Modulo.tRegistro_GastosFecha.Value := Modulo.Enlace.AppServer.ServerDate;
    Modulo.tRegistro_GastosHora.Value  := Modulo.Enlace.AppServer.ServerTime;

    Modulo.tRegistro_GastosProceso.Value := Gen_ProcessNumber(_CurrentUser);
    Modulo.tRegistro_Gastos.Params.ParamByName('Proceso').Value := Modulo.tRegistro_GastosProceso.Value;

    {Fijar Condicion Establecida para Venta}
    RegInfo.CloseKey;
    RegInfo.OpenKey(_Registro_GastosKey,False);

    Modulo.tRegistro_GastosTipo_NCF.Value := '00';

    If UseLstNCF Then
      Modulo.tRegistro_GastosTipo_NCF.Value := LstNCF;

   Finally
     {Ubicar el Punto de Edicion}
   End;
end;

procedure TFRegistro_Gastos.GuardarExecute(Sender: TObject);
  Var
    Vence : TDate;
begin
  If Modulo.tRegistro_Gastos.State In DsEditModes Then Modulo.tRegistro_Gastos.Post;

  LstNCF := Modulo.tRegistro_GastosTipo_NCF.Value;

  If Modulo.tRegistro_Gastos.ChangeCount > 0 Then Modulo.tRegistro_Gastos.ApplyUpdates(0);

  PopUpMessage(Modulo.Mensajes,_DatosGuardados);

  If (Sender As TAction).Name = Guardar.Name Then Nuevo.Execute;

  Modulo.Enlace.AppServer.ReloadLink
end;

procedure TFRegistro_Gastos.Guardar_TemporalExecute(Sender: TObject);
begin
  Modulo.tRegistro_Gastos.SaveToFile(Modulo.tListado_ClientesNombreCompleto.Value +
                              '(' +
                              FormatDateTime('dd-mmm-yyyy hh.mm am/pm',Now()) +
                              ').pedido',dfXML);

end;

procedure TFRegistro_Gastos.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFRegistro_Gastos.SerialPortTriggerAvail(CP: TObject; Count: Word);
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
    End
end;

procedure TFRegistro_Gastos.BuscarExecute(Sender: TObject);
begin
    Try
      Application.CreateForm(TDlgSearch,DlgSearch);
      DlgSearch.OpenDlg('Registro_Gastos',Modulo.tRegistro_GastosNumero.FieldName,'D',wsMaximized);
      If DlgSearch.ModalResult = MrOk Then
        Begin
          {Verificar el estado de la tabla de Registro_Gastos}
          If Modulo.tRegistro_Gastos.State In DsEditModes Then
            If Application.MessageBox(PChar(_DatosEnEdicion),
                                      PChar(Buscar.Caption),
                                      MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

          Modulo.tRegistro_Gastos.Cancel;
          Modulo.tRegistro_Gastos.CancelUpdates;
          Modulo.tRegistro_Gastos.Params.ParamByName('Proceso').AsString := DlgSearch.SrchCds.FieldByName('Proceso').AsString;
          Modulo.tRegistro_Gastos.Refresh;
        End
    Finally
      DlgSearch.CloseDlg
    End {Try}
end;

procedure TFRegistro_Gastos.ImprimirExecute(Sender: TObject);
  Var
    DoPreview    : Boolean;
    OutputFormat : ShortInt;
    PrintFormat  : ShortInt;

begin
  GuardarExecute(Sender);

  RegInfo.CloseKey;
  RegInfo.OpenKey(_Registro_GastosKey,False);

  OutputFormat := RegInfo.ReadInteger(_OutputFormat);
  PrintFormat := RegInfo.ReadInteger(_PrinterStyle);

  Case OutputFormat Of
    _Ticket : Begin
                If DoPreview Then
                  Begin
                    Application.CreateForm(TPreviewForm,PreviewForm);
//                    ImprimirRecibo(_Screen,Desglosar.Checked);
                    PreviewForm.Vista.Lines.LoadFromFile(_PreviewFile);
                    PreviewForm.ShowModal;
                    If PreviewForm.ModalResult = MrOk Then DoPreview := False;
                    PreviewForm.Free
                  End; {If DoPreview}

//                  If Not (DoPreview) Then ImprimirRecibo(_Port,Desglosar.Checked);
              End; // _Ticket

    _TextFormat : Begin
                    If DoPreview Then
                      Begin
                        Application.CreateForm(TPreviewForm,PreviewForm);
//                        ImprimirRegistro_Gastos(_Screen,Desglosar.Checked);
                        PreviewForm.Vista.Lines.LoadFromFile(_PreviewFile);
                        PreviewForm.ShowModal;
                        If PreviewForm.ModalResult = MrOk Then DoPreview := False;
                        PreviewForm.Free
                      End; {If DoPreview}

//                      If Not (DoPreview) Then ImprimirRegistro_Gastos(_Port,Desglosar.Checked);
                  End; // _TextFormat

    _GraphicForm : Begin
                     RegInfo.CloseKey;
                     RegInfo.OpenKey(_Registro_GastosKey,False);
                     With ReportsAndForms.FormRegistro_Gastos Do
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
//                         ReportsAndForms.Nota_Pie_Registro_Gastos.Text := RegInfo.ReadString(_NotaAlPie);

                         ReportsAndForms._Seccion  := _Registro_GastosKey;

                         Print
                       End // With
                   End // _GraphicForm
  End; // Case
end;

procedure TFRegistro_Gastos.Anular_RegistroExecute(Sender: TObject);
begin
  If (Modulo.tRegistro_GastosNumero.Value <> 0) And Not(Modulo.tRegistro_GastosNumero.IsNull) Then
    Begin
      Try
        Modulo.tRegistro_Gastos.BeforeEdit := Nil;
        If Application.MessageBox(PChar(Format(_ConfirmarEliminar,[Modulo.tRegistro_GastosNumero.Text])),
                          'ELIMINAR REGISTRO DE GASTOS',
                          MB_YESNO + MB_ICONQUESTION) = ID_No Then Raise Exception.Create(_ErrAccesoDenegadoOpcion);

        Granted := False;
        OpenForm(TFAutorizar,FAutorizar);
        If (Not Granted) Or (_GrantedLevel <> _SuperUserLevel) Then Raise Exception.Create(_ErrAccesoDenegadoOpcion);

        Modulo.tRegistro_Gastos.Delete;
        Modulo.tRegistro_Gastos.ApplyUpdates(0)
      Finally
        Modulo.tRegistro_Gastos.BeforeEdit := Modulo.tRegistro_GastosBeforeEdit;
        Modulo.tDetalles_Cotizacion.AfterDelete := Modulo.ActualizarDetallesCotizacion;
      End;
    End
end;

procedure TFRegistro_Gastos.ConceptoEnter(Sender: TObject);
begin
  KeyPreview := False
end;

procedure TFRegistro_Gastos.ConceptoExit(Sender: TObject);
begin
  KeyPreview := True
end;

procedure TFRegistro_Gastos.Configuracion_ComprobanteExecute(Sender: TObject);
begin
  Application.CreateForm(TFConfigForms,FConfigForms);
  FConfigForms._Seccion := _Registro_GastosKey;
  FConfigForms.Caption := Configuracion_Comprobante.Caption;
  If Trim(FConfigForms._Seccion) <> '' Then
    Try
      FConfigForms.LoadValues
    Finally
      FConfigForms.ShowModal;
      FConfigForms.Free
    End; // Try
end;

Initialization
  RegisterClass(TFRegistro_Gastos);

end.
