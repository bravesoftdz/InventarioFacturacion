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
    ColorConfig: TXPColorMap;
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
    Proveedor: TwwDBLookupCombo;
    SpeedButton3: TSpeedButton;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    AnadirProveedor: TAction;
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
    Registro_Proveedores: TFrameProveedores;
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
    Imprimir_Etiquetas: TAction;
    Configuracion_Etiquetas: TAction;
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
    procedure Anadir_ProveedorExecute(Sender: TObject);
    procedure DetallesEnter(Sender: TObject);
    procedure DetallesExit(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure DetallesCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure ProveedorCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure AnadirProveedorExecute(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ProveedorDropDown(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Anadir_TerminosExecute(Sender: TObject);
    procedure DetallesColEnter(Sender: TObject);
    procedure Imprimir_EtiquetasExecute(Sender: TObject);
    procedure Configuracion_EtiquetasExecute(Sender: TObject);
    procedure Registro_ProveedoresSpeedButton2Click(Sender: TObject);
    procedure Registro_ProveedoresSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Function ImprimirRecibo(Const OutDevice : String) : Boolean;
  end;

var
  FCompra_Productos : TFCompra_Productos;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, SrchDlg, Categorias, Departamentos,
  Fabricantes, Proveedores, Tipos_Productos, Status, Distrbuir_Vencimiento,
  dotmatrx, Terminos, DateUtils, CnfgForms, Reports_Forms;

{$R *.dfm}

procedure TFCompra_Productos.FormCreate(Sender: TObject);
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
  {Cerrar las Tablas Requeridas}
  Modulo.tProveedores.Close;
  Modulo.tTerminos.Close;
  Modulo.tProductos.Close;
  Modulo.tListadoProductos.Close;
  Modulo.tCompra_Productos.Close
end;

procedure TFCompra_Productos.SalirExecute(Sender: TObject);
begin
  If Modulo.tCompra_Productos.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicionSalida),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

  Close
end;

procedure TFCompra_Productos.NuevoExecute(Sender: TObject);
begin
  If Modulo.tCompra_Productos.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
  Modulo.tCompra_Productos.Cancel;
  Modulo.tCompra_Productos.Append;

  Modulo.tCompra_ProductosFecha.Value := Modulo.Enlace.AppServer.ServerDate;
  Modulo.tCompra_ProductosHora.Value  := Modulo.Enlace.AppServer.ServerTime;

  Modulo.tCompra_ProductosProceso.Value := Gen_ProcessNumber(_CurrentUser);
  Modulo.tCompra_Productos.Params.ParamByName('Proceso').Value := Modulo.tCompra_ProductosProceso.Value

//  Codigo.Text := '';
//  If Self.Visible Then Codigo.SetFocus
end;

procedure TFCompra_Productos.GuardarExecute(Sender: TObject);
begin
  If Modulo.tDetalles_Compra.RecordCount <= 0 Then
    Raise Exception.Create(_NoDatosGuardar); 
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
      Nuevo.Execute;
//      Codigo.Text := Buffer;
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
          Modulo.tCompra_Productos.Cancel;
          Modulo.tCompra_Productos.Params.ParamByName('Proceso').AsString := DlgSearch.SrchCds.FieldByName('Proceso').AsString;
          Modulo.tCompra_Productos.Refresh;
          //Codigo.Text := Modulo.tCompra_ProductosCodigo.Value
        End
    Finally
      DlgSearch.CloseDlg
    End {Try}
end;

procedure TFCompra_Productos.Anadir_CategoriaExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosCategoria.Value;
  OpenForm(TFCategorias,FCategorias);
  Modulo.tProductosCategoria.Value := _LastCode
end;

procedure TFCompra_Productos.Anadir_Tipo_ProductoExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosTipo_Producto.Value;
  OpenForm(TFTipos_Productos,FTipos_Productos);
  Modulo.tProductosTipo_Producto.Value := _LastCode
end;

procedure TFCompra_Productos.Anadir_DepartamentoExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosDepartamento.Value;
  OpenForm(TFDepartamentos,FDepartamentos);
  Modulo.tProductosDepartamento.Value := _LastCode
end;

procedure TFCompra_Productos.Anadir_StatusExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosStatus.Value;
  OpenForm(TFStatus,FStatus);
  Modulo.tProductosStatus.Value := _LastCode
end;

procedure TFCompra_Productos.Anadir_FabricanteExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosFabricante.Value;
  OpenForm(TFFabricantes,FFabricantes);
  Modulo.tProductosFabricante.Value := _LastCode
end;

procedure TFCompra_Productos.Anadir_ProveedorExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosProveedor_Principal.Value;
  OpenForm(TFProveedores,FProveedores);
  Modulo.tProductosProveedor_Principal.Value := _LastCode
end;

procedure TFCompra_Productos.DetallesEnter(Sender: TObject);
begin
  KeyPreview := False;
  If Registro_Proveedores.Visible Then Registro_ProveedoresSpeedButton1Click(Sender);
  Detalles.SelectedField := Modulo.tDetalles_CompraCodigo
end;

procedure TFCompra_Productos.DetallesExit(Sender: TObject);
begin
  KeyPreview := True
end;

procedure TFCompra_Productos.ImprimirExecute(Sender: TObject);
  Var
    DoPreview : Boolean;
begin
  GuardarExecute(Sender);
  
  RegInfo.CloseKey;
  RegInfo.OpenKey(_CompraProductosKey,False);

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

procedure TFCompra_Productos.DetallesCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  If Field = Modulo.tDetalles_CompraTotal_Costo Then
    ABrush.Color := Detalles.TitleColor;

  If Field = Modulo.tDetalles_CompraCosto Then
    ABrush.Color := DBEdit12.Color;
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
  Registro_Proveedores.DBEdit1.SetFocus
end;

procedure TFCompra_Productos.SpeedButton3Click(Sender: TObject);
begin
  AnadirProveedor.Execute
end;

Function TFCompra_Productos.ImprimirRecibo(Const OutDevice : String) : Boolean;
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
    // Nombre de la Banca
    PrnLn(CBrush(UnEncrypt(RegInfo.ReadString(_UserCompName)),AnchoLinea Div Factor));

    If OutDevice = _Port Then Prn(_NoBigFont);

    // Comentario / Slogan
    If Trim(Coment_Enc) <> '' Then PrnLn(CBrush(Coment_Enc,AnchoLinea));

    // Direccion
    PrnLn(CBrush(UnEncrypt(RegInfo.ReadString(_UserCompAddres)),AnchoLinea));
    // # Recibo , Telefono y Hora de Venta
    PrnLn(LBrush(FormatDateTime('dd/mm/yyyy',Modulo.Enlace.AppServer.ServerDate),14) +
          CBrush(UnEncrypt(RegInfo.ReadString(_UserCompPhone1)),14)+
          RBrush(FormatDateTime('hh:mm am/pm',Modulo.tCompra_ProductosHora.Value),14));

    // Fecha de Compra
    PrnLn(CBrush(FormatDateTime(Format_Fecha,Modulo.tCompra_ProductosFecha.Value),AnchoLinea));

    {Tipo de Recibo}
    PrnLn(#32);
    If OutDevice = _Port Then Prn(_BigFont);
    PrnLn(CBrush(UPPERCASE('COMPRA DE PRODUCTOS'),AnchoLinea Div Factor));
    PrnLn(RBrush(Trim(Modulo.tCompra_ProductosNumero.Text),AnchoLinea Div Factor));
    PrnLn(#32);
    If OutDevice = _Port Then Prn(_NoBigFont);

    If OutDevice = _Port Then Prn(_Condensado);
    PrnLn(CBrush(Modulo.tCompra_ProductosConcepto_Compra.Value,AnchoLinea));

    If OutDevice = _Port Then Prn(_NoCondens);

    PrnLn(#32);

    If OutDevice = _Port Then
      Begin
        Prn(_NoBigFont);
        Prn(_Draft)
      End;

    {Cuerpo de la Compra}
    PrnLn(LBrush('Nombre   : '+Trim(Modulo.tCompra_ProductosNombre_Proveedor.Value),AnchoLinea));
    PrnLn(LBrush('Direccion: '+Modulo.tProveedoresDireccion.Value,AnchoLinea));
    PrnLn(LBrush('Telefono : '+Modulo.tProveedoresNumero_Telefono_1.Value,AnchoLinea));
    PrnLn(Fill('-',AnchoLinea));
    PrnLn(CBrush('Descripcion' ,18)+'|'+
          CBrush('Cant.'       ,04)+'|'+
          CBrush('Precio'      ,08)+'|'+
          CBrush('Total'       ,09)
          );
    PrnLn(Fill('-',AnchoLinea));
    Modulo.tDetalles_Compra.First;
    While Not Modulo.tDetalles_Compra.EOF Do
       Begin
         PrnLn(LBrush(Modulo.tDetalles_CompraDescripcion.Value                   ,18)+'|'+
               RBrush(Format('%*.*f',[8,0,Modulo.tDetalles_CompraCantidad.Value]),04)+'|'+
               RBrush(Format('%m',[Modulo.tDetalles_CompraCosto.Value])          ,08)+'|'+
               RBrush(Format('%m',[Modulo.tDetalles_CompraTotal_Costo.Value])    ,09)
               );
         Modulo.tDetalles_Compra.Next;
       End; {While}

    {Sumario / Totales de la Compra}
    If OutDevice = _Port Then Prn(_Bold);
    PrnLn(RBrush(Fill('-',AnchoLinea),AnchoLinea));

    PrnLn(RBrush('SubTotal:',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCompra_ProductosSubTotal.Value]),12));
    PrnLn(RBrush('Total Impuesto:',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCompra_ProductosTotal_Impuesto.Value]),12));
    PrnLn(RBrush('Total Descuento:',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCompra_ProductosTotal_Descuento.Value]),12));
    PrnLn(RBrush(Fill('-',AnchoLinea Div 2),AnchoLinea));
    PrnLn(RBrush('Total Neto:',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCompra_ProductosTotalNeto.Value]),12));
    PrnLn(RBrush(Fill('=',AnchoLinea Div 2),AnchoLinea));
    PrnLn(RBrush('Pagado:',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCompra_ProductosPagado.Value]),12));
    PrnLn(RBrush('Pendiente:',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCompra_ProductosPendiente.Value]),12));
    If OutDevice = _Port Then
      Begin
        Prn(_NoBold);
        Prn(_Draft)
      End;
    PrnLn(#32);
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

    For I := 1 To LineasDespues Do
      PrnLn(#32);
    EndPrn;
    Result := True
  End;

procedure TFCompra_Productos.wwDBLookupCombo1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  If Modified Then
    Modulo.tDetalles_CompraCodigo.Value := Modulo.tListadoProductosCodigo.Value
end;

procedure TFCompra_Productos.ProveedorDropDown(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TFCompra_Productos.SpeedButton1Click(Sender: TObject);
begin
  Anadir_Terminos.Execute
end;

procedure TFCompra_Productos.Anadir_TerminosExecute(Sender: TObject);
begin
  OpenForm(TFTerminos,FTerminos)
end;

procedure TFCompra_Productos.DetallesColEnter(Sender: TObject);
begin
  Detalles.RedrawGrid
end;

procedure TFCompra_Productos.Imprimir_EtiquetasExecute(Sender: TObject);
begin
  {Guardar antes de IMprimir}
  GuardarExecute(Imprimir_Etiquetas);

  {Informacion  General}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_CompanyInfoKey,False);
  If Modulo.tDetalles_Compra.RecordCount > 0 Then
    Begin
      With ReportsAndForms Do
        Begin
          {Configuracion de la Etiqueta}
          InitInfo := TIniFile.Create(_IniFormsConfig);

          Labels.Template.FileName := InitInfo.ReadString(_LabelProductos,'TemplateFileName','');
          If (Trim(Labels.Template.FileName) <> 'NONE') And (Trim(Labels.Template.FileName) <> '') Then
            Labels.Template.LoadFromFile;

          Nombre_Comp.Caption := UnEncrypt(RegInfo.ReadString(_UserCompName));
          Tel_Comp.Caption    := Format ('%s',[UnEncrypt(RegInfo.ReadString(_UserCompPhone1))]);

          Labels.DeviceType := InitInfo.ReadString(_LabelProductos,'Device','Screen');
          Labels.ShowPrintDialog := InitInfo.ReadBool(_LabelProductos,'ShowPrintDialog',True);
          Labels.PrinterSetup.Copies := InitInfo.ReadInteger(_LabelProductos,'Copies',1);
          Labels.PrinterSetup.PaperName := InitInfo.ReadString(_LabelProductos,'PaperName','Letter');
          Labels.PrinterSetup.PaperHeight:= InitInfo.ReadFloat(_LabelProductos,'PaperHeight',1);
          Labels.PrinterSetup.PaperWidth := InitInfo.ReadFloat(_LabelProductos,'PaperWidth',1.4);
          Labels.PrinterSetup.PrinterName := InitInfo.ReadString(_LabelProductos,'PrinterName','Default');
          Labels.PrinterSetup.MarginBottom := InitInfo.ReadFloat(_LabelProductos,'MarginBottom',0.5);
          Labels.PrinterSetup.MarginTop := InitInfo.ReadFloat(_LabelProductos,'MarginTop',0.5);
          Labels.PrinterSetup.MarginLeft := InitInfo.ReadFloat(_LabelProductos,'MarginLeft',0.5);
          Labels.PrinterSetup.MarginRight := InitInfo.ReadFloat(_LabelProductos,'MarginRight',0.5);

          Labels.DataPipeline := PipeDetalles_Compra;
          Cod_Generado.DataPipeline := PipeDetalles_Compra;
          Descripcion_Etiqueta.DataPipeline := PipeDetalles_Compra;

          Modulo.tDetalles_Compra.First;
          While Not Modulo.tDetalles_Compra.Eof Do
            Begin
              Labels.PrinterSetup.Copies := Modulo.tDetalles_CompraCantidad.AsInteger;
              Modulo.tFabricante.Locate(Modulo.tFabricanteNumero.FieldName,
                                        Modulo.tDetalles_CompraFabricante.Value,
                                        []);
              Labels.Print;
              Modulo.tDetalles_Compra.Next
            End; {While}
          Empty.DataPipeline := PipeDetalles_Compra;
          Empty.DeviceType := Labels.DeviceType;
          Empty.PrinterSetup.PrinterName := Labels.PrinterSetup.PrinterName;
          Empty.Print;
          InitInfo.Free
        End {With}
    End {If}
end;

procedure TFCompra_Productos.Configuracion_EtiquetasExecute(
  Sender: TObject);
begin
  Application.CreateForm(TFConfigForms,FConfigForms);
  FConfigForms._Seccion := _LabelProductos;
  FConfigForms.LoadValues;
  FConfigForms.Caption := 'Configuracion de Formato de Etiquetas';
  FConfigForms.ShowModal;
  FConfigForms.Free
end;

procedure TFCompra_Productos.Registro_ProveedoresSpeedButton2Click(
  Sender: TObject);
begin
  Datos_Compra.Visible := True;
  Registro_Proveedores.Visible := False;
  Registro_Proveedores.CancelarExecute(Sender)
end;

procedure TFCompra_Productos.Registro_ProveedoresSpeedButton1Click(
  Sender: TObject);
Var
  ActualCode : Integer;
begin
  ActualCode := Modulo.tProveedoresNumero.Value;
  Registro_Proveedores.GuardarExecute(Sender);
  If ActualCode = 0  Then ActualCode := Modulo.Enlace.AppServer.LastTableCode('Proveedores');
  Modulo.tProveedores.Refresh;

  Modulo.tCompra_ProductosProveedor.Value := ActualCode;
  Registro_ProveedoresSpeedButton2Click(Sender)
end;

end.
