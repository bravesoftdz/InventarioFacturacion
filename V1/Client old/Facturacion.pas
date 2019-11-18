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
  ppComm, ppRelatv, ppDBPipe;

type
  TFFacturacion = class(TForm)
    ColorConfig: TXPColorMap;
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    Datos_Factura: TAdvPageControl;
    Page_Facturas: TAdvTabSheet;
    Detalles_Factura: TAdvPageControl;
    Page_Detalles: TAdvTabSheet;
    Botones: TAdvPageControl;
    Page_Botones: TAdvTabSheet;
    ActionToolBar1: TActionToolBar;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Detalles: TwwDBGrid;
    Comentarios: TwwDBRichEdit;
    DetallesIButton: TwwIButton;
    Imprimir: TAction;
    Descripcion: TwwDBComboBox;
    Label2: TLabel;
    Cliente: TwwDBLookupCombo;
    SpeedButton3: TSpeedButton;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    AnadirCliente: TAction;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    Label17: TLabel;
    DBEdit14: TDBEdit;
    seAnio: TwwDBSpinEdit;
    seMes: TwwDBSpinEdit;
    Anadir_Terminos: TAction;
    TerminoFacturacion: TwwDBLookupCombo;
    Label18: TLabel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label19: TLabel;
    DBEdit15: TDBEdit;
    Configuracion_Factura: TAction;
    Registro_Clientes: TFrameClientes;
    Procesar_Pago: TAction;
    Condicion_Factura: TDBRadioGroup;
    Desglosar: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SerialPortTriggerAvail(CP: TObject; Count: Word);
    procedure BuscarExecute(Sender: TObject);
    procedure Anadir_CategoriaExecute(Sender: TObject);
    procedure Anadir_Tipo_ProductoExecute(Sender: TObject);
    procedure Anadir_DepartamentoExecute(Sender: TObject);
    procedure Anadir_StatusExecute(Sender: TObject);
    procedure Anadir_FabricanteExecute(Sender: TObject);
    procedure DetallesEnter(Sender: TObject);
    procedure DetallesExit(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure DetallesCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure ClienteCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure AnadirClienteExecute(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ClienteDropDown(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Anadir_TerminosExecute(Sender: TObject);
    procedure DetallesColEnter(Sender: TObject);
    procedure Registro_ClientesSpeedButton1Click(Sender: TObject);
    procedure Registro_ClientesSpeedButton2Click(Sender: TObject);
    procedure Procesar_PagoExecute(Sender: TObject);
    procedure Condicion_FacturaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Function ImprimirRecibo(Const OutDevice : String) : Boolean;
  end;

var
  FFacturacion : TFFacturacion;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, SrchDlg, Categorias, Departamentos,
  Fabricantes, Tipos_Productos, Status, Distrbuir_Vencimiento,
  dotmatrx, Terminos, DateUtils, CnfgForms, Reports_Forms, PagosFacturas;

{$R *.dfm}

procedure TFFacturacion.FormCreate(Sender: TObject);
  Var
    I : Integer;
begin
  Modulo.SerialPort.OutPut := 'ATZ'^M;

  Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
  ColorConfig.Color := Color - 5;

  {Asigna a los Botones Los ShortCuts Del Menu y Action Lists}
  For I := 0 To (Self.ComponentCount - 1) Do
    Begin
      If (Self.Components[I] Is TAdvPageControl) Then
         (Self.Components[I] As TAdvPageControl).TabBackGroundColor := Color;
    End;

  seAnio.MinValue := YearOf(Modulo.Enlace.AppServer.ServerDate);
  seAnio.MaxValue := seAnio.MinValue + 20;

  {Abrir las Tablas Requeridas}
  Modulo.tParametros.Params.ParamByName('Terminal').AsString := _CurrentTerminal;
  Modulo.tParametros.Open;

  Modulo.tListado_Clientes.Open;
  Modulo.tTerminos.Open;
  Modulo.tProductos.Open;
  Modulo.tListadoProductos.Open;

  Modulo.tFacturasCondicion.DefaultExpression := QuotedStr(Trim(Modulo.tParametrosCondicion_Facturacion.Value));
  Modulo.tFacturas.Open;

  {Insertar Registro en Blanco}
  Nuevo.Execute
end;

procedure TFFacturacion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {Cerrar las Tablas Requeridas}
  Modulo.tClientes.Close;
  Modulo.tTerminos.Close;
  Modulo.tProductos.Close;
  Modulo.tListadoProductos.Close;
  Modulo.tFacturas.Close
end;

procedure TFFacturacion.SalirExecute(Sender: TObject);
begin
  If Modulo.tFacturas.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicionSalida),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

  Close
end;

procedure TFFacturacion.NuevoExecute(Sender: TObject);
begin
  If Modulo.tFacturas.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
  Modulo.tFacturas.Cancel;
  Modulo.tFacturas.CancelUpdates;
  Modulo.tFacturas.Append;

  Modulo.tListadoProductos.Cancel;
  Modulo.tListadoProductos.CancelUpdates;

  Modulo.tFacturasFecha.Value := Modulo.Enlace.AppServer.ServerDate;
  Modulo.tFacturasHora.Value  := Modulo.Enlace.AppServer.ServerTime;

  Modulo.tFacturasProceso.Value := Gen_ProcessNumber(_CurrentUser);
  Modulo.tFacturas.Params.ParamByName('Proceso').Value := Modulo.tFacturasProceso.Value;

  Condicion_FacturaClick(Sender);

  RegInfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,False);
  If Self.Visible Then
    If RegInfo.ReadBool(_DetalleFacturaFocus) Then Detalles.SetFocus
  Else
    DBEdit6.SetFocus
end;

procedure TFFacturacion.GuardarExecute(Sender: TObject);
begin
  If Modulo.tDetalles_Factura.RecordCount <= 0 Then
    Raise Exception.Create(_NoDatosGuardar);

  If Modulo.tDetalles_Factura.State = dsEdit Then Modulo.tDetalles_Factura.Post;

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
      Nuevo.Execute;
//      Codigo.Text := Buffer;
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
          Modulo.tFacturas.Cancel;
          Modulo.tFacturas.Params.ParamByName('Proceso').AsString := DlgSearch.SrchCds.FieldByName('Proceso').AsString;
          Modulo.tFacturas.Refresh;
          //Codigo.Text := Modulo.tFacturasCodigo.Value
        End
    Finally
      DlgSearch.CloseDlg
    End {Try}
end;

procedure TFFacturacion.Anadir_CategoriaExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosCategoria.Value;
  OpenForm(TFCategorias,FCategorias);
  Modulo.tProductosCategoria.Value := _LastCode
end;

procedure TFFacturacion.Anadir_Tipo_ProductoExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosTipo_Producto.Value;
  OpenForm(TFTipos_Productos,FTipos_Productos);
  Modulo.tProductosTipo_Producto.Value := _LastCode
end;

procedure TFFacturacion.Anadir_DepartamentoExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosDepartamento.Value;
  OpenForm(TFDepartamentos,FDepartamentos);
  Modulo.tProductosDepartamento.Value := _LastCode
end;

procedure TFFacturacion.Anadir_StatusExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosStatus.Value;
  OpenForm(TFStatus,FStatus);
  Modulo.tProductosStatus.Value := _LastCode
end;

procedure TFFacturacion.Anadir_FabricanteExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosFabricante.Value;
  OpenForm(TFFabricantes,FFabricantes);
  Modulo.tProductosFabricante.Value := _LastCode
end;

procedure TFFacturacion.DetallesEnter(Sender: TObject);
begin
  KeyPreview := False;
  If Registro_Clientes.Visible Then Registro_ClientesSpeedButton1Click(Sender);
  Detalles.SelectedField := Modulo.tDetalles_FacturaCodigo
end;

procedure TFFacturacion.DetallesExit(Sender: TObject);
begin
  KeyPreview := True
end;

procedure TFFacturacion.ImprimirExecute(Sender: TObject);
  Var
    DoPreview : Boolean;
begin
  GuardarExecute(Sender);
  
  RegInfo.CloseKey;
  RegInfo.OpenKey(_FacturaProductosKey,False);

  DoPreview := RegInfo.ReadBool(_PreviewForm);
  If DoPreview Then
    Begin
      Application.CreateForm(TPreviewForm,PreviewForm);
      ImprimirRecibo(_Screen);
      PreviewForm.Vista.Lines.LoadFromFile(_PreviewFile);
      PreviewForm.ShowModal;
      If PreviewForm.ModalResult = MrOk Then DoPreview := False;
      PreviewForm.Free
    End; {If DoPreview}

    If Not (DoPreview) Then ImprimirRecibo(_Port);
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
      ABrush.Color := DBEdit12.Color;
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
  Registro_Clientes.Left := Datos_Factura.Left;
  Registro_Clientes.Top := Datos_Factura.Top;
  Registro_Clientes.Page_Clientes.Color := Color;
  Registro_Clientes.Datos_Cliente.TabBackGroundColor := Color;
  Datos_Factura.Visible := False;
  Registro_Clientes.Visible := True;
  Registro_Clientes.Codigo.SetFocus
end;

procedure TFFacturacion.SpeedButton3Click(Sender: TObject);
begin
  AnadirCliente.Execute
end;

Function TFFacturacion.ImprimirRecibo(Const OutDevice : String) : Boolean;
  Var
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
    Format_Num_Tel_Hora ,
    Format_Fecha        ,
    Separador           ,
    NumSize             : String;
  Begin
    {Leer el Tipo de Impresora a Utilizar}
    RegInfo.CloseKey;
    RegInfo.OpenKey(_FacturaProductosKey,False);

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
    // Nombre
    PrnLn(CBrush(UnEncrypt(RegInfo.ReadString(_UserCompName)),AnchoLinea Div Factor));

    If OutDevice = _Port Then Prn(_NoBigFont);

    // Comentario / Slogan
    If Trim(Coment_Enc) <> '' Then PrnLn(CBrush(Coment_Enc,AnchoLinea));

    // Direccion
    PrnLn(CBrush(UnEncrypt(RegInfo.ReadString(_UserCompAddres)),AnchoLinea));
    // # Recibo , Telefono y Hora de Venta
    PrnLn(LBrush(FormatDateTime('dd/mm/yyyy',Modulo.tFacturasFecha.Value),12) +
          CBrush(UnEncrypt(RegInfo.ReadString(_UserCompPhone1)),14)+
          RBrush(FormatDateTime('hh:mm am/pm',Modulo.tFacturasHora.Value),12));
    PrnLn(LBrush(Format('Condic.: %s',[Modulo.tFacturasCondicion.Value]),AnchoLinea Div 2) +
          RBrush(FormatDateTime('"Vence :" dd/mmm/yyyy',Modulo.tFacturasVencimiento.Value),AnchoLinea Div 2));

    {Tipo de Recibo}
    PrnLn(#32);
    If OutDevice = _Port Then Prn(_BigFont);
    PrnLn(LBrush(UPPERCASE('FACTURA'),7)+
          RBrush(Modulo.tFacturasNumero.Text,(AnchoLinea Div Factor) -7 ));
    If OutDevice = _Port Then Prn(_NoBigFont);

    PrnLn(#32);
    If OutDevice = _Port Then
      Begin
        Prn(_NoBigFont);
        Prn(_Draft)
      End;

    {Cuerpo de la Factura}
    PrnLn(LBrush('Nombre   : '+Trim(Modulo.tFacturasNombre_Cliente.Value),AnchoLinea));
    PrnLn(LBrush('Direccion: '+Modulo.tListado_ClientesDireccion.Value,AnchoLinea));
    PrnLn(LBrush('Telefono : '+Modulo.tListado_ClientesNumero_Telefono_1.Value,AnchoLinea));
    PrnLn(Fill('-',AnchoLinea));
    PrnLn(CBrush('Descripcion' ,16)+'|'+
          CBrush('Can'         ,03)+'|'+
          CBrush('Precio'      ,09)+'|'+
          CBrush('Total'       ,09)
          );
    PrnLn(Fill('-',AnchoLinea));
    Modulo.tDetalles_Factura.First;
    While Not Modulo.tDetalles_Factura.EOF Do
       Begin
         PrnLn(LBrush(Modulo.tDetalles_FacturaDescripcion.Value                   ,40));
         PrnLn(LBrush(' '                                                         ,17)+
               RBrush(Format('%*.*f',[8,0,Modulo.tDetalles_FacturaCantidad.Value]),03)+'|'+
               RBrush(Format('%m',[Modulo.tDetalles_FacturaPrecio_Venta.Value])   ,09)+'|'+
               RBrush(Format('%m',[Modulo.tDetalles_FacturaTotal_Precio.Value])   ,09)
               );
         Modulo.tDetalles_Factura.Next;
       End; {While}

    {Sumario / Totales de la Factura}
    PrnLn(RBrush(Fill('-',AnchoLinea),AnchoLinea));

    If Desglosar.Checked Then
      Begin
        PrnLn(RBrush('SubTotal:',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tFacturasSubTotal.Value]),12));
        PrnLn(RBrush('Total Impuesto:',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tFacturasTotal_Impuesto.Value]),12));
        PrnLn(RBrush('Total Descuento:',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tFacturasTotal_Descuento.Value]),12));
        PrnLn(RBrush(Fill('-',AnchoLinea Div 2),AnchoLinea));
      End;

    PrnLn(RBrush('Total Neto:',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tFacturasTotalNeto.Value]),12));

    If Desglosar.Checked Then
      Begin
        PrnLn(RBrush(Fill('=',AnchoLinea Div 2),AnchoLinea));

        PrnLn(RBrush('Pagado:',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tFacturasPagado.Value]),12));
        PrnLn(RBrush('Pendiente:',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tFacturasPendiente.Value]),12));
      End;

    If OutDevice = _Port Then
      Begin
        Prn(_NoBigFont);
        Prn(_Draft)
      End;
    PrnLn(#32);
    PrnLn(#32);
    PrnLn(CBrush(Fill('_',20)+Fill(' ',2)+Fill('_',20),AnchoLinea));
    PrnLn(CBrush('Entregado Por',20) +
            Fill(' ',2)+
          CBrush('Recibido Por',20));

    PrnLn(#32);
    If Trim(Coment_Pie1) <> '' Then PrnLn(CBrush(Coment_Pie1,AnchoLinea));
    If Trim(Coment_Pie2) <> '' Then PrnLn(CBrush(Coment_Pie2,AnchoLinea));
    If Trim(Coment_Pie3) <> '' Then PrnLn(CBrush(Coment_Pie3,AnchoLinea));
    If Trim(Coment_Pie4) <> '' Then PrnLn(CBrush(Coment_Pie4,AnchoLinea));
    PrnLn(CBrush('Le Atendió : ' + _CurrentUser,AnchoLinea));

    For I := 1 To LineasDespues Do
      PrnLn(#32);
    PrnLn(_PartialCut);
    EndPrn;
    Result := True
  End;

procedure TFFacturacion.wwDBLookupCombo1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  If Modified Then
    Modulo.tDetalles_FacturaCodigo.Value := Modulo.tListadoProductosCodigo.Value
end;

procedure TFFacturacion.ClienteDropDown(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TFFacturacion.SpeedButton1Click(Sender: TObject);
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
  Detalles.ColumnByName('Descuento').ReadOnly  := Not(Modulo.tProductosAplica_Descuento.Value)
end;

procedure TFFacturacion.Registro_ClientesSpeedButton1Click(
  Sender: TObject);
  Var
    ActualCode : String;
begin
  ActualCode := Modulo.tClientesCedula_Rnc_Pasaporte.Value;
  Registro_Clientes.GuardarExecute(Sender);
  If ActualCode = ''  Then ActualCode := '000-0000000-0';
  Modulo.tListado_Clientes.Refresh;

  If Not (Modulo.tFacturas.State In DsEditModes) Then Modulo.tFacturas.Edit;
  Modulo.tFacturasCliente.Value := ActualCode;
  Modulo.tFacturasNombre_Cliente.Value := Modulo.tClientesNombreCompleto.Value;
  Registro_ClientesSpeedButton2Click(Sender)
end;

procedure TFFacturacion.Registro_ClientesSpeedButton2Click(
  Sender: TObject);
begin
  Datos_Factura.Visible := True;
  Registro_Clientes.Visible := False;
  Registro_Clientes.CancelarExecute(Sender);
  Modulo.tClientes.Close
end;

procedure TFFacturacion.Procesar_PagoExecute(Sender: TObject);
begin
  OpenForm(TFPago_Factura,FPago_Factura)
end;

procedure TFFacturacion.Condicion_FacturaClick(Sender: TObject);
begin
  TerminoFacturacion.Enabled := Condicion_Factura.ItemIndex <> 0;
  If Condicion_Factura.ItemIndex = 0 Then
      Modulo.tFacturasTerminos.Value :=  Modulo.tParametrosTermino_COD.Value
  Else TerminoFacturacion.SetFocus
end;

procedure TFFacturacion.FormActivate(Sender: TObject);
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,False);
  If RegInfo.ReadBool(_DetalleFacturaFocus) Then Detalles.SetFocus
  Else DBEdit6.SetFocus
end;

end.
