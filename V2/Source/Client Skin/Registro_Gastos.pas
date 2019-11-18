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

Function ImprimirRecibo(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;

var
  FRegistro_Gastos : TFRegistro_Gastos;
  Buffer       : String = '';
  LstNCF       : String = '00';
  UseLstNCF    : Boolean = False;

implementation

uses DataModulo, Utilidades, Categorias, Departamentos,
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
    End  }
end;

procedure TFRegistro_Gastos.BuscarExecute(Sender: TObject);
  Var
    R : Integer;
    S : String;
begin
  S := DoSearch(Nil,
                'Registro_Gastos',                                      (* TableName *)
                'SrchPr',                                        (* Provider *)
                Modulo.tRegistro_GastosProceso.FieldName,               (* CampoClave *)
                Modulo.tRegistro_GastosNumero.FieldName,                (* CampoInicial *)
                '',                  (* AltQry *)
                Modulo.Enlace,                                   (* RemoteServer *)
                'A',                                             (* SortOrder *)
                -1,                                              (* Packet Records *)
                wsMaximized,
                R);

  If R = MrOk Then
    Begin
      {Verificar el estado de la tabla de Salidas}
      If Modulo.tRegistro_Gastos.State In DsEditModes Then
        If Application.MessageBox(PChar(_DatosEnEdicion),
                                  PChar(Buscar.Caption),
                                  MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

      Modulo.tRegistro_Gastos.Cancel;
      Modulo.tRegistro_Gastos.CancelUpdates;
      Modulo.tRegistro_Gastos.Params.ParamByName('Proceso').AsString := S;
      Modulo.tRegistro_Gastos.Refresh;
    End
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
  DoPreview := VistaPrevia.Checked;

  Case OutputFormat Of
    _Ticket : Begin
                If DoPreview Then
                  Begin
                    Application.CreateForm(TPreviewForm,PreviewForm);
                    ImprimirRecibo(_Screen,False);
                    PreviewForm.Vista.Lines.LoadFromFile(_PreviewFile);
                    PreviewForm.ShowModal;
                    If PreviewForm.ModalResult = MrOk Then DoPreview := False;
                    PreviewForm.Free
                  End; {If DoPreview}

                  If Not (DoPreview) Then ImprimirRecibo(_Port,False);
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
        ModuloGenerales.Autorizar_Opcion(Self,self.Name);
        If (Not Granted) Or (_GrantedLevel <> _SuperUserLevel) Then Raise Exception.Create(_ErrAccesoDenegadoOpcion);

        Modulo.tRegistro_Gastos.Edit;
        Modulo.tRegistro_GastosStatus.Value := _stANULADO;

        Modulo.tRegistro_GastosComentario.Value := DateToStr(Modulo.Enlace.AppServer.ServerDate) + '>> ' +
                                            'ANULADO POR : ' + _GrantedUser + ' *** ST: ' +
                                            Modulo.tRegistro_GastosSubTotal.Text + ' TN: ' +
                                            Modulo.tRegistro_GastosTotalNeto.Text + ' TI: ' +
                                            Modulo.tRegistro_GastosTotal_Impuesto.Text + ' TD: ' +
                                            Modulo.tRegistro_GastosTotal_Descuento.Text;
                                            Modulo.tRegistro_GastosComentario.Value;

        Modulo.tRegistro_GastosSubTotal.Value := 0;
        Modulo.tRegistro_GastosTotalNeto.Value := 0;
        Modulo.tRegistro_GastosTotal_Impuesto.Value := 0;
        Modulo.tRegistro_GastosTotal_Descuento.Value := 0;
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

Function ImprimirRecibo(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;
  Var
    Duplex              : Boolean;
    Factor              : Byte;
    LineasDespues       ,
    Idx                 ,
    I,N                 : Integer;
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
    A,C                 ,
    F                   ,
    NumSize             : String;
    T_Capital           ,
    T_Interes           ,
    T_Mora              ,
    T_Otros             : Currency;
  Begin
    {Leer el Tipo de Impresora a Utilizar}
    RegInfo.CloseKey;
    RegInfo.OpenKey(_Registro_GastosKey,False);

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

    // RNC
    If Trim(RNC) <> '' Then
      Begin
        If Duplex Then
          Prn(CBrush(RNC,AnchoLinea));
        PrnLn(CBrush(RNC,AnchoLinea))
      End;


      // # Recibo , Telefono y Hora de Venta
    If Duplex Then
      Prn(LBrush(UnEncrypt(RegInfo.ReadString(_UserCompPhone1)),AnchoLinea Div 2)+
          RBrush(FormatDateTime('hh:mm am/pm',Modulo.tRegistro_GastosHora.Value),AnchoLinea Div 2));

    PrnLn(LBrush(UnEncrypt(RegInfo.ReadString(_UserCompPhone1)),AnchoLinea Div 2)+
          RBrush(FormatDateTime('hh:mm am/pm',Modulo.tRegistro_GastosHora.Value),AnchoLinea Div 2));

    PrnLn(#32);

    // Tipo de Recibo
    If OutDevice = _Port Then Prn(_BigFont);

    If Duplex Then
      Prn(CBrush('COMPROBANTE DE GASTO',(AnchoLinea Div Factor)));

    PrnLn(CBrush('COMPROBANTE DE GASTO',(AnchoLinea Div Factor)));

    If Duplex Then
      Prn(CBrush(UPPERCASE(Modulo.tRegistro_GastosNumero.Text),(AnchoLinea Div Factor)));

    PrnLn(CBrush(UPPERCASE(Modulo.tRegistro_GastosNumero.Text),(AnchoLinea Div Factor)));

    If OutDevice = _Port Then Prn(_NoBigFont);

    PrnLn(#32);

    If OutDevice = _Port Then
      Begin
        Prn(_NoBigFont);
        Prn(_Draft)
      End;

    // Fecha de Pago
    If Duplex Then
      Prn(LBrush(FormatDateTime('dddd dd "de" mmmm "del" yyyy',Modulo.tRegistro_GastosFecha.Value),AnchoLinea));

    PrnLn(LBrush(FormatDateTime('dddd dd "de" mmmm "del" yyyy',Modulo.tRegistro_GastosFecha.Value),AnchoLinea));

    PrnLn(#32);

{Cuerpo del Recibo}

    Split2Lines('A Nombre de : '+Trim(Modulo.tRegistro_GastosA_Nombre_De.Value),AnchoLinea,Duplex);

    PrnLn('Referencia  : ' + Modulo.tRegistro_GastosReferencia.Value);

    If Trim(Modulo.tRegistro_GastosNCF.Value) <> '' Then
      PrnLn('Ncf         : ' + Modulo.tRegistro_GastosNCF.Value);

    PrnLn(#32);
    Split2Lines('La Suma de  : ' + RealNumToAlpha(Modulo.tRegistro_GastosTotalNeto.Value),AnchoLinea,Duplex);

    PrnLn(#32);
    Split2Lines('Por Concepto de ' + Modulo.tRegistro_GastosConcepto.Value,AnchoLinea,Duplex);
    PrnLn(#32);


{Sumario / Totales del Recibo}
    If Duplex Then
      Prn(Fill('-',AnchoLinea));

    PrnLn(Fill('-',AnchoLinea));

    If Duplex Then
      Prn(RBrush(RBrush('Subtotal :',AnchoLinea - 15) +
                 RBrush(Format('%m',[Modulo.tRegistro_GastosSubTotal.Value]),15),AnchoLinea-1));

    PrnLn(RBrush(RBrush('Subtotal :',AnchoLinea - 15) +
                 RBrush(Format('%m',[Modulo.tRegistro_GastosSubTotal.Value]),15),AnchoLinea-1));

    If Duplex Then
      Prn(RBrush(RBrush('Total Impuesto :',AnchoLinea - 15) +
                 RBrush(Format('%m',[Modulo.tRegistro_GastosTotal_Impuesto.Value]),15),AnchoLinea-1));

    PrnLn(RBrush(RBrush('Total Impuesto :',AnchoLinea - 15) +
                 RBrush(Format('%m',[Modulo.tRegistro_GastosTotal_Impuesto.Value]),15),AnchoLinea-1));

    If Duplex Then
      Prn(RBrush(RBrush('Total Neto :',AnchoLinea - 15) +
                 RBrush(Format('%m',[Modulo.tRegistro_GastosTotalNeto.Value]),15),AnchoLinea-1));

    PrnLn(RBrush(RBrush('Total Neto :',AnchoLinea - 15) +
                 RBrush(Format('%m',[Modulo.tRegistro_GastosTotalNeto.Value]),15),AnchoLinea-1));

    If Duplex Then
      Prn(RBrush(Fill('=',AnchoLinea Div 2),AnchoLinea));

    PrnLn(RBrush(Fill('=',AnchoLinea Div 2),AnchoLinea));

    PrnLn(#32);

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
       Prn(CBrush('Le Atendió : ' + _CurrentUser,AnchoLinea));

    PrnLn(CBrush('Le Atendió : ' + _CurrentUser,AnchoLinea));

    For I := 1 To LineasDespues Do
      PrnLn(#32);

    If OutDevice = _Port Then
      PrnLn(_PartialCut);

    EndPrn;
    Result := True
  End;

Initialization
  RegisterClass(TFRegistro_Gastos);

end.
