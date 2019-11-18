unit Orden_Compra_Productos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, wwriched, Grids,
  Wwdbigrd, Wwdbgrid, frmProveedores, Wwdbspin, IniFiles, ppBarCod,
  ppCtrls, ppPrnabl, ppClass, ppCache, ppBands, ppProd, ppReport, ppDB,
  ppComm, ppRelatv, ppDBPipe, RegKeys, SUIPopupMenu;

type
  TFOrden_Compra_Productos = class(TForm)
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Barra_Menu: TActionMainMenuBar;
    Panel_Orden_Compra: TAdvPageControl;
    Pg_Compras: TAdvTabSheet;
    Panel_Detalles_Compra: TAdvPageControl;
    Pg_Detalles: TAdvTabSheet;
    Panel_Botones: TAdvPageControl;
    Pg_Botones: TAdvTabSheet;
    Botones: TActionToolBar;
    Label5: TLabel;
    Label6: TLabel;
    Referencia: TDBEdit;
    Label9: TLabel;
    Label3: TLabel;
    Fecha: TDBEdit;
    Label4: TLabel;
    Hora: TDBEdit;
    Detalles_Compras: TwwDBGrid;
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
    Anadir_Proveedor: TAction;
    Registro_Proveedores: TFrameProveedores;
    Anadir_Terminos: TAction;
    Label1: TLabel;
    Numero_Orden: TDBEdit;
    Chk_Vista_Previa: TCheckBox;
    Anadir_Producto: TAction;
    Definir_Departamento: TAction;
    Configuracion_Orden_Compra: TAction;
    Codigos: TwwDBLookupCombo;
    Descripciones: TwwDBLookupCombo;
    Opciones_Miscelaneas: TsuiPopupMenu;
    Pop_Anadir_Producto: TMenuItem;
    Pop_Anadir_Terminos: TMenuItem;
    Pop_Anadir_Proveedor: TMenuItem;
    Pop_Configuracion_Orden_Compra: TMenuItem;
    Pop_Definir_Departamento: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SerialPortTriggerAvail(CP: TObject; Count: Word);
    procedure BuscarExecute(Sender: TObject);
    procedure Detalles_ComprasEnter(Sender: TObject);
    procedure Detalles_ComprasExit(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure Detalles_ComprasCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure Anadir_ProveedorExecute(Sender: TObject);
    procedure sbAnadir_ProveedorClick(Sender: TObject);
    procedure DescripcionesCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ProveedorDropDown(Sender: TObject);
    procedure sbAnadir_TerminosClick(Sender: TObject);
    procedure Anadir_TerminosExecute(Sender: TObject);
    procedure Detalles_ComprasColEnter(Sender: TObject);
    procedure Anadir_ProductoExecute(Sender: TObject);
    procedure Definir_DepartamentoExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Configuracion_Orden_CompraExecute(Sender: TObject);
    procedure Registro_ProveedoresBoton_GuardarClick(Sender: TObject);
    procedure Registro_ProveedoresBoton_CancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function ImprimirRecibo(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;

var
  FOrden_Compra_Productos : TFOrden_Compra_Productos;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, SrchDlg, Categorias, Departamentos,
  Fabricantes, Proveedores, Tipos_Productos, Status, Distrbuir_Vencimiento,
  dotmatrx, Terminos, DateUtils, CnfgForms, Reports_Forms, PagosCompras,
  Productos, Generales;

{$R *.dfm}

procedure TFOrden_Compra_Productos.FormCreate(Sender: TObject);
  Var
    I          : Integer;
    HintIni    : tInifile;

begin
  If _Load_Create Then
    Begin

      HintIni := tIniFile.Create(GetCurrentDir + '\Forms\SystemHints.Rtm');
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);

      {Asigna a los Botones Los ShortCuts Del Menu y Action Lists}
      For I := 0 To (Self.ComponentCount - 1) Do
        Begin
          If (Self.Components[I] Is TAdvPageControl) Then
             (Self.Components[I] As TAdvPageControl).TabBackGroundColor := Color;

          If (Trim(HintIni.ReadString('Hints',Self.Components[I].Name,'')) <> '') Then
            If (Self.Components[I] Is tAction) Then
               (Self.Components[I] As TAction).Hint := HintIni.ReadString('Hints',Self.Components[I].Name,'')
            Else
              (Self.Components[I] As TControl).Hint := HintIni.ReadString('Hints',Self.Components[I].Name,'')
        End;

      HintIni.Free;

      {Abrir las Tablas Requeridas}
      Modulo.tParametros.Params.ParamByName('Terminal').AsString := _CurrentTerminal;
      Modulo.tParametros.Open;

      Porcentaje_Global_Impuesto :=  Modulo.tParametrosImpuesto.Value;
      Porcentaje_Global_Descuento :=  Modulo.tParametrosDescuento.Value;

      Modulo.tProveedores.Open;
      Modulo.tTerminos.Open;

      Modulo.tProductos.Open;
      Modulo.tListadoProductos.Open;

      Modulo.tOrdenes_Compra.Open;

      {Insertar Registro en Blanco}
      Nuevo.Execute

    End
end;

procedure TFOrden_Compra_Productos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If Modulo.tFacturas.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicionSalida),
                              PChar(Salir.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then
      Begin
        Action := caNone;
        Exit
      End;

  Modulo.tListadoProductos.Filter := '';
  Modulo.tListadoProductos.Filtered := False
end;

procedure TFOrden_Compra_Productos.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFOrden_Compra_Productos.NuevoExecute(Sender: TObject);
  Var
    Depto : Integer;
begin
  {Verificar el estado de la tabla de facturas}
  If Modulo.tOrdenes_Compra.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

  {Filtrar la Tabla de Productos}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,False);
  Depto := RegInfo.ReadInteger(_DetalleCompraDepto);

  {Carga la Configuracion Inicial de la Pantalla}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_OrdenCompraKey,False);

  Chk_Vista_Previa.Checked := RegInfo.ReadBool(_PreviewForm);

  Case RegInfo.ReadBool(_UseCustomControl) Of
    True  : Detalles_Compras.SetControlType('Codigo', fctCustom, 'Codigos');
    False : Detalles_Compras.SetControlType('Codigo', fctField, '')
  End; {Case}

  Detalles_Compras.RedrawGrid;

  Modulo.tListadoProductos.Filter := 'Departamento = ' + IntToStr(Depto);
  Modulo.tListadoProductos.Filtered := (Depto <> 0);

  {Ubicar el Punto de Edicion}
  If Self.Visible Then
    If RegInfo.ReadBool(_DetalleFacturaFocus) Then Detalles_Compras.SetFocus
  Else
    Referencia.SetFocus;

  {Preparar la Tabla de Compra}
  Modulo.tOrdenes_Compra.Cancel;
  Modulo.tOrdenes_Compra.CancelUpdates;
  Modulo.tOrdenes_Compra.Append;

  Modulo.tListadoProductos.Cancel;
  Modulo.tListadoProductos.CancelUpdates;

  Modulo.tOrdenes_CompraFecha.Value := Modulo.Enlace.AppServer.ServerDate;
  Modulo.tOrdenes_CompraHora.Value  := Modulo.Enlace.AppServer.ServerTime;

  Modulo.tOrdenes_CompraProceso.Value := Gen_ProcessNumber(_CurrentUser);
  Modulo.tOrdenes_Compra.Params.ParamByName('Proceso').Value := Modulo.tOrdenes_CompraProceso.Value
end;

procedure TFOrden_Compra_Productos.GuardarExecute(Sender: TObject);
begin
  If Modulo.tDetalles_Orden_Compra.RecordCount <= 0 Then
    Raise Exception.Create(_NoDatosGuardar);

  If Modulo.tDetalles_Orden_Compra.State = dsEdit Then Modulo.tDetalles_Orden_Compra.Post;

  If Modulo.tOrdenes_Compra.State In DsEditModes Then
    Modulo.tOrdenes_Compra.Post;

  If Modulo.tOrdenes_Compra.ChangeCount > 0 Then
    Modulo.tOrdenes_Compra.ApplyUpdates(0);

  If Modulo.tListadoProductos.ChangeCount > 0 Then
    Modulo.tListadoProductos.ApplyUpdates(0);

  Modulo.tOrdenes_Compra.Refresh;

  PopUpMessage(Modulo.Mensajes,_DatosGuardados);

  If (Sender Is TAction) Then
    If (Sender As TAction).Name = Guardar.Name Then
     Nuevo.Execute
end;

procedure TFOrden_Compra_Productos.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFOrden_Compra_Productos.SerialPortTriggerAvail(CP: TObject; Count: Word);
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

procedure TFOrden_Compra_Productos.BuscarExecute(Sender: TObject);
begin
    Try
      Application.CreateForm(TDlgSearch,DlgSearch);
      DlgSearch.OpenDlg('Ordenes_Compra',Modulo.tOrdenes_CompraNumero.FieldName,'D',wsMaximized);
      If DlgSearch.ModalResult = MrOk Then
        Begin
          {Verificar el estado de la tabla de facturas}
          If Modulo.tOrdenes_Compra.State In DsEditModes Then
            If Application.MessageBox(PChar(_DatosEnEdicion),
                                      PChar(Buscar.Caption),
                                      MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

          Modulo.tOrdenes_Compra.Cancel;
          Modulo.tOrdenes_Compra.CancelUpdates;
          Modulo.tOrdenes_Compra.Params.ParamByName('Proceso').AsString := DlgSearch.SrchCds.FieldByName('Proceso').AsString;
          Modulo.tOrdenes_Compra.Refresh
        End
    Finally
      DlgSearch.CloseDlg
    End {Try}
end;

procedure TFOrden_Compra_Productos.Detalles_ComprasEnter(Sender: TObject);
begin
  KeyPreview := False;
  If Registro_Proveedores.Visible Then Registro_ProveedoresBoton_CancelarClick(Sender);
  Detalles_Compras.SelectedField := Modulo.tDetalles_Orden_CompraCodigo
end;

procedure TFOrden_Compra_Productos.Detalles_ComprasExit(Sender: TObject);
begin
  KeyPreview := True
end;

procedure TFOrden_Compra_Productos.ImprimirExecute(Sender: TObject);
  Var
    DoPreview    : Boolean;
    OutputFormat : ShortInt;

begin
  GuardarExecute(Sender);

  RegInfo.CloseKey;
  RegInfo.OpenKey(_OrdenCompraKey,False);

  DoPreview := RegInfo.ReadBool(_PreviewForm);
  OutputFormat := RegInfo.ReadInteger(_OutputFormat);

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

    _GraphicForm : Begin

                     With ReportsAndForms.FormOrdenCompra Do
                       Begin
                         Template.FileName := RegInfo.ReadString(_TemplateFileName);

                         If (Trim(Template.FileName) <> _NoneStr) And (Trim(Template.FileName) <> '') Then
                           Template.LoadFromFile;

                         DeviceType                := DeviceTypes[Chk_Vista_Previa.Checked];
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

                         ReportsAndForms._Seccion  := _OrdenCompraKey;

                         Print
                       End // With
                   End // _GraphicForm
  End // Case
end;

procedure TFOrden_Compra_Productos.Detalles_ComprasCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  If Field = Modulo.tDetalles_Orden_CompraTotal_Costo Then
    Begin
      ABrush.Color := Detalles_Compras.TitleColor;
      AFont.Color := clBlack
    End
end;

procedure TFOrden_Compra_Productos.Anadir_ProveedorExecute(Sender: TObject);
begin
  Modulo.tProveedores.Append;
  Modulo.tProveedoresCedula_Rnc_Pasaporte.Value := '-';
  Registro_Proveedores.Left := Panel_Orden_Compra.Left;
  Registro_Proveedores.Top := Panel_Orden_Compra.Top;
  Registro_Proveedores.Pg_Proveedores.Color := Color;
  Registro_Proveedores.Panel_Datos_Proveedor.TabBackGroundColor := Color;
  Panel_Orden_Compra.Visible := False;
  Registro_Proveedores.Visible := True;
  Registro_Proveedores.Nombre_Proveedor.SetFocus
end;

procedure TFOrden_Compra_Productos.sbAnadir_ProveedorClick(Sender: TObject);
begin
  Anadir_Proveedor.Execute
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
    RegInfo.OpenKey(_OrdenCompraKey,False);

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
      Prn(LBrush(LBrush(FormatDateTime('dd/mm/yyyy',Modulo.tOrdenes_CompraFecha.Value),12) +
                 CBrush(UnEncrypt(RegInfo.ReadString(_UserCompPhone1)),14)+
                 RBrush(FormatDateTime('hh:mm am/pm',Modulo.tOrdenes_CompraHora.Value),12),AnchoLinea));

    PrnLn(LBrush(FormatDateTime('dd/mm/yyyy',Modulo.tOrdenes_CompraFecha.Value),12) +
          CBrush(UnEncrypt(RegInfo.ReadString(_UserCompPhone1)),14)+
          RBrush(FormatDateTime('hh:mm am/pm',Modulo.tOrdenes_CompraHora.Value),12));

    If Duplex Then
      Prn(LBrush(LBrush(Modulo.tTerminosDescripcion.Value,AnchoLinea Div 2) +
                 LBrush(FormatDateTime('"Vence :" dd/mmm/yyyy',Modulo.tOrdenes_CompraVencimiento.Value),AnchoLinea Div 2),AnchoLinea));

    PrnLn(LBrush(LBrush(Modulo.tTerminosDescripcion.Value,AnchoLinea Div 2) +
                 LBrush(FormatDateTime('"Vence :" dd/mmm/yyyy',Modulo.tOrdenes_CompraVencimiento.Value),AnchoLinea Div 2),AnchoLinea));

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
      Prn(CBrush(UPPERCASE(Format('O/C %s',[Modulo.tOrdenes_CompraNumero.Text])),(AnchoLinea Div Factor)));

    Prn(CBrush(UPPERCASE(Format('O/C %s',[Modulo.tOrdenes_CompraNumero.Text])),(AnchoLinea Div Factor)));

    If OutDevice = _Port Then Prn(_NoBigFont);

    PrnLn(#32);

    If OutDevice = _Port Then
      Begin
        Prn(_NoBigFont);
        Prn(_Draft)
      End;

    {Cuerpo de la Factura}
    If Duplex Then
      Prn(LBrush('Nombre   : '+Trim(Modulo.tOrdenes_CompraNombre_Proveedor.Value),AnchoLinea));

    PrnLn(LBrush('Nombre   : '+Trim(Modulo.tOrdenes_CompraNombre_Proveedor.Value),AnchoLinea));

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

    Modulo.tDetalles_Orden_Compra.First;
    While Not Modulo.tDetalles_Orden_Compra.EOF Do
       Begin
         If Duplex Then
           Prn(LBrush(LBrush(Format('%*.*f',[8,0,Modulo.tDetalles_Orden_CompraCantidad.Value])     ,04)+
                      LBrush(Modulo.tDetalles_Orden_CompraDescripcion.Value                        ,18)+
                      RBrush(Format('%*.*f',[8,1,Modulo.tDetalles_Orden_CompraCosto.Value]) ,08)+
                      RBrush(Format('%*.*f',[8,1,Modulo.tDetalles_Orden_CompraTotal_Costo.Value]) ,09)+' ',AnchoLinea));

         Prnln(LBrush(LBrush(Format('%*.*f',[8,0,Modulo.tDetalles_Orden_CompraCantidad.Value])     ,04)+
                      LBrush(Modulo.tDetalles_Orden_CompraDescripcion.Value                        ,18)+
                      RBrush(Format('%*.*f',[8,1,Modulo.tDetalles_Orden_CompraCosto.Value]) ,08)+
                      RBrush(Format('%*.*f',[8,1,Modulo.tDetalles_Orden_CompraTotal_Costo.Value]) ,09)+' ',AnchoLinea));

         Modulo.tDetalles_Orden_Compra.Next;
       End; {While}

    {Sumario / Totales de la Compra}
    If Duplex Then
      Prn(Fill('-',AnchoLinea));

    PrnLn(Fill('-',AnchoLinea));

    If Desglozar Then
      Begin
        If Duplex Then
          Prn(RBrush(RBrush('SubTotal:',AnchoLinea - 12) +
                     RBrush(Format('%m',[Modulo.tOrdenes_CompraSubTotal.Value]),12),AnchoLinea-1));

        PrnLn(RBrush('SubTotal:',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tOrdenes_CompraSubTotal.Value]),12));

        If Duplex Then
          Prn(RBrush(RBrush('Total Impuesto:',AnchoLinea - 12) +
                     RBrush(Format('%m',[Modulo.tOrdenes_CompraTotal_Impuesto.Value]),12),AnchoLinea-1));

        PrnLn(RBrush('Total Impuesto:',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tOrdenes_CompraTotal_Impuesto.Value]),12));

        If Duplex Then
          Prn(RBrush(RBrush('Total Descuento:',AnchoLinea - 12) +
                     RBrush(Format('%m',[Modulo.tOrdenes_CompraTotal_Descuento.Value]),12),AnchoLinea-1));

        PrnLn(RBrush('Total Descuento:',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tOrdenes_CompraTotal_Descuento.Value]),12));

        If Duplex Then
          Prn(RBrush(Fill('-',AnchoLinea Div 2),AnchoLinea));

        PrnLn(RBrush(Fill('-',AnchoLinea Div 2),AnchoLinea));
      End;

    // Total Compra
    If Duplex Then
      Prn(RBrush(RBrush('Total Neto:',AnchoLinea - 12) +
                 RBrush(Format('%m',[Modulo.tOrdenes_CompraTotalNeto.Value]),12),AnchoLinea-1));

    PrnLn(RBrush('Total Neto:',AnchoLinea - 12) +
          RBrush(Format('%m',[Modulo.tOrdenes_CompraTotalNeto.Value]),12));

    If Duplex Then
      Prn(RBrush(Fill('=',AnchoLinea Div 2),AnchoLinea));

    PrnLn(RBrush(Fill('=',AnchoLinea Div 2),AnchoLinea));

    PrnLn(#32);

    If Desglozar Then
      Begin
        If Duplex Then
          Prn(RBrush(RBrush('Pagado:',AnchoLinea - 12) +
                     RBrush(Format('%m',[Modulo.tOrdenes_CompraPagado.Value]),12),AnchoLinea-1));

        PrnLn(RBrush('Pagado:',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tOrdenes_CompraPagado.Value]),12));

        If Duplex Then
          Prn(RBrush(RBrush('Pendiente:',AnchoLinea - 12) +
                     RBrush(Format('%m',[Modulo.tOrdenes_CompraPendiente.Value]),12),AnchoLinea-1));

        PrnLn(RBrush('Pendiente:',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tOrdenes_CompraPendiente.Value]),12));
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
      Prn(CBrush('Le Atendió : ' + Modulo.tOrdenes_CompraUsuario.Value,AnchoLinea));

    PrnLn(CBrush('Le Atendió : ' + Modulo.tOrdenes_CompraUsuario.Value,AnchoLinea));

    For I := 1 To LineasDespues Do
      PrnLn(#32);

    If OutDevice = _Port Then
      PrnLn(_PartialCut);

    EndPrn;
    Result := True
  End;

procedure TFOrden_Compra_Productos.DescripcionesCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  If Modified Then
    Modulo.tDetalles_Orden_CompraCodigo.Value := Modulo.tListadoProductosCodigo.Value
end;

procedure TFOrden_Compra_Productos.ProveedorDropDown(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TFOrden_Compra_Productos.sbAnadir_TerminosClick(Sender: TObject);
begin
  Anadir_Terminos.Execute
end;

procedure TFOrden_Compra_Productos.Anadir_TerminosExecute(Sender: TObject);
begin
  OpenForm(TFTerminos,FTerminos)
end;

procedure TFOrden_Compra_Productos.Detalles_ComprasColEnter(Sender: TObject);
begin
  Detalles_Compras.RedrawGrid;
  If Detalles_Compras.GetActiveField.FieldName = Modulo.tDetalles_Orden_CompraCodigo.FieldName Then
    Modulo.tListadoProductos.IndexFieldNames := 'Codigo';

  If Detalles_Compras.GetActiveField.FieldName = Modulo.tDetalles_Orden_CompraDescripcion.FieldName Then
    Modulo.tListadoProductos.IndexFieldNames := 'Descripcion';
end;

procedure TFOrden_Compra_Productos.Anadir_ProductoExecute(Sender: TObject);
begin
  OpenForm(TFProductos,FProductos)
end;

procedure TFOrden_Compra_Productos.Definir_DepartamentoExecute(Sender: TObject);
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

procedure TFOrden_Compra_Productos.FormActivate(Sender: TObject);
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_OrdenCompraKey,False);
  If RegInfo.ReadBool(_DetalleFacturaFocus) Then Detalles_Compras.SetFocus
  Else Referencia.SetFocus
end;

procedure TFOrden_Compra_Productos.Configuracion_Orden_CompraExecute(Sender: TObject);
begin
  Application.CreateForm(TFConfigForms,FConfigForms);
  FConfigForms._Seccion := _OrdenCompraKey;
  FConfigForms.Caption := Configuracion_Orden_Compra.Caption;
  If Trim(FConfigForms._Seccion) <> '' Then
    Try
      FConfigForms.LoadValues
    Finally
      FConfigForms.ShowModal;
      FConfigForms.Free
    End; // Try
end;

procedure TFOrden_Compra_Productos.Registro_ProveedoresBoton_GuardarClick(
  Sender: TObject);
Var
  ActualCode : Integer;
begin
  ActualCode := Modulo.tProveedoresNumero.Value;
  Registro_Proveedores.GuardarExecute(Sender);
  If ActualCode = 0  Then ActualCode := Modulo.Enlace.AppServer.LastTableCode('Proveedores');
  Modulo.tProveedores.Refresh;

  If Not (Modulo.tOrdenes_Compra.State In DsEditModes) Then Modulo.tOrdenes_Compra.Edit;
  Modulo.tOrdenes_CompraProveedor.Value := ActualCode;
  Modulo.tOrdenes_CompraNombre_Proveedor.Value := Modulo.tProveedoresNombre.Value;
  Registro_ProveedoresBoton_CancelarClick(Sender)
end;

procedure TFOrden_Compra_Productos.Registro_ProveedoresBoton_CancelarClick(
  Sender: TObject);
begin
  Registro_Proveedores.CancelarExecute(Sender);
  Panel_Orden_Compra.Visible := True;
  Registro_Proveedores.Visible := False;
end;

Initialization
  RegisterClass(TFOrden_Compra_Productos);

  end.
