unit Salidas_Inventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ActnColorMaps, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, MSNPopUp, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, OoMisc, AdPort, wwriched, Grids,
  Wwdbigrd, Wwdbgrid, frmClientes;

type
  TFSalidas_Inventario = class(TForm)
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    Datos_Producto: TAdvPageControl;
    DatosGenerales: TAdvTabSheet;
    Datos_Compra: TAdvPageControl;
    AdvTabSheet1: TAdvTabSheet;
    AdvPageControl1: TAdvPageControl;
    Botones: TAdvTabSheet;
    ActionToolBar1: TActionToolBar;
    Label1: TLabel;
    DBEdit1: TDBEdit;
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
    wwDBRichEdit1: TwwDBRichEdit;
    Codigos: TwwDBLookupCombo;
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
    AnadirCliente: TAction;
    FrameClientes1: TFrameClientes;
    wwDBLookupCombo1: TwwDBLookupCombo;
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
    procedure AnadirClienteExecute(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FrameClientes1SpeedButton2Click(Sender: TObject);
    procedure FrameClientes1SpeedButton1Click(Sender: TObject);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Function ImprimirRecibo(Const OutDevice : String) : Boolean;
  end;

var
  FSalidas_Inventario : TFSalidas_Inventario;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, SrchDlg, Categorias, Departamentos,
  Fabricantes, Proveedores, Tipos_Productos, Status, Distrbuir_Vencimiento,
  dotmatrx, Reports_Forms;

{$R *.dfm}

procedure TFSalidas_Inventario.FormCreate(Sender: TObject);
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

  {Abrir las Tablas Requeridas}
  Modulo.tListado_Clientes.Open;
  Modulo.tProductos.Open;
  Modulo.tListadoProductos.Open;
  Modulo.tSalidas_Inventario.Open;

  {Insertar Registro en Blanco}
  Nuevo.Execute
end;

procedure TFSalidas_Inventario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {Cerrar las Tablas Requeridas}
  Modulo.tListado_Clientes.Close;
  Modulo.tProductos.Close;
  Modulo.tListadoProductos.Close;
  Modulo.tSalidas_Inventario.Close
end;

procedure TFSalidas_Inventario.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFSalidas_Inventario.NuevoExecute(Sender: TObject);
begin
  If Modulo.tSalidas_Inventario.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
  Modulo.tSalidas_Inventario.Cancel;
  Modulo.tSalidas_Inventario.Append;

  Modulo.tSalidas_InventarioFecha.Value := Modulo.Enlace.AppServer.ServerDate;
  Modulo.tSalidas_InventarioHora.Value  := Modulo.Enlace.AppServer.ServerTime;

  Modulo.tSalidas_InventarioProceso.Value := Gen_ProcessNumber(_CurrentUser);
  Modulo.tSalidas_Inventario.Params.ParamByName('Proceso').Value := Modulo.tSalidas_InventarioProceso.Value

//  Codigo.Text := '';
//  If Self.Visible Then Codigo.SetFocus
end;

procedure TFSalidas_Inventario.GuardarExecute(Sender: TObject);
begin
  If Modulo.tSalidas_Inventario.State In DsEditModes Then
    Modulo.tSalidas_Inventario.Post;

  If Modulo.tSalidas_Inventario.ChangeCount > 0 Then
    Modulo.tSalidas_Inventario.ApplyUpdates(0);

  If Modulo.tListadoProductos.ChangeCount > 0 Then
    Modulo.tListadoProductos.ApplyUpdates(0);

  Modulo.tSalidas_Inventario.Refresh;

  Modulo.Mensajes.Text := _DatosGuardados;
  Modulo.Mensajes.ShowPopUp;

  If (Sender Is TAction) Then
    If (Sender As TAction).Name = Guardar.Name Then
     Nuevo.Execute
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

    VK_F3      :
      Begin
      End
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
      Nuevo.Execute;
//      Codigo.Text := Buffer;
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
          Modulo.tSalidas_Inventario.Cancel;
          Modulo.tSalidas_Inventario.Params.ParamByName('Proceso').AsString := DlgSearch.SrchCds.FieldByName('Proceso').AsString;
          Modulo.tSalidas_Inventario.Refresh;
          //Codigo.Text := Modulo.tSalidas_InventarioCodigo.Value
        End
    Finally
      DlgSearch.CloseDlg
    End {Try}
end;

procedure TFSalidas_Inventario.Anadir_CategoriaExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosCategoria.Value;
  OpenForm(TFCategorias,FCategorias);
  Modulo.tProductosCategoria.Value := _LastCode
end;

procedure TFSalidas_Inventario.Anadir_Tipo_ProductoExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosTipo_Producto.Value;
  OpenForm(TFTipos_Productos,FTipos_Productos);
  Modulo.tProductosTipo_Producto.Value := _LastCode
end;

procedure TFSalidas_Inventario.Anadir_DepartamentoExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosDepartamento.Value;
  OpenForm(TFDepartamentos,FDepartamentos);
  Modulo.tProductosDepartamento.Value := _LastCode
end;

procedure TFSalidas_Inventario.Anadir_StatusExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosStatus.Value;
  OpenForm(TFStatus,FStatus);
  Modulo.tProductosStatus.Value := _LastCode
end;

procedure TFSalidas_Inventario.Anadir_FabricanteExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosFabricante.Value;
  OpenForm(TFFabricantes,FFabricantes);
  Modulo.tProductosFabricante.Value := _LastCode
end;

procedure TFSalidas_Inventario.Anadir_ProveedorExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosProveedor_Principal.Value;
  OpenForm(TFProveedores,FProveedores);
  Modulo.tProductosProveedor_Principal.Value := _LastCode
end;

procedure TFSalidas_Inventario.DetallesEnter(Sender: TObject);
begin
  KeyPreview := False;
  If FrameClientes1.Visible Then FrameClientes1SpeedButton1Click(Sender);
  Detalles.SelectedField := Modulo.tDetalles_SalidaCodigo
end;

procedure TFSalidas_Inventario.DetallesExit(Sender: TObject);
begin
  KeyPreview := True
end;

procedure TFSalidas_Inventario.ImprimirExecute(Sender: TObject);
  Var
    DoPreview : Boolean;
begin
  GuardarExecute(Sender);
  
  RegInfo.CloseKey;
  RegInfo.OpenKey(_SalidaInventarioKey,False);

  DoPreview := RegInfo.ReadBool(_PreviewForm);
  
  ReportsAndForms.FormSalidaInventario.Print;

{  If DoPreview Then
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

procedure TFSalidas_Inventario.DetallesCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  If Field = Modulo.tDetalles_SalidaTotal_Precio Then
    ABrush.Color := Detalles.TitleColor;
end;

procedure TFSalidas_Inventario.ProveedorCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  If Modified Then
    Modulo.tSalidas_InventarioNombre_Cliente.Value := Modulo.tListado_ClientesNombreCompleto.Value
end;

procedure TFSalidas_Inventario.AnadirClienteExecute(Sender: TObject);
begin
  Modulo.tClientes.Open;
  Modulo.tClientes.Append;
  FrameClientes1.Left := Datos_Producto.Left;
  FrameClientes1.Top := Datos_Producto.Top;
  FrameClientes1.Page_Clientes.Color := Color;
  FrameClientes1.Datos_Cliente.TabBackGroundColor := Color;
  Datos_Producto.Visible := False;
  FrameClientes1.Visible := True;
  FrameClientes1.Cedula_Rnc_Pasaporte.SetFocus
end;

procedure TFSalidas_Inventario.SpeedButton3Click(Sender: TObject);
begin
  AnadirCliente.Execute
end;

procedure TFSalidas_Inventario.FrameClientes1SpeedButton2Click(Sender: TObject);
begin
  FrameClientes1.Cancelar.Execute;
  Modulo.tClientes.Close;
  Datos_Producto.Visible := True;
  FrameClientes1.Visible := False;
end;

procedure TFSalidas_Inventario.FrameClientes1SpeedButton1Click(
  Sender: TObject);
begin
  FrameClientes1.GuardarExecute(Sender);
  Modulo.tListado_Clientes.Refresh;
  Modulo.tSalidas_InventarioCliente.Value := Trim(FrameClientes1.Cedula_Rnc_Pasaporte.Text);
  FrameClientes1SpeedButton2Click(Sender)
end;

Function TFSalidas_Inventario.ImprimirRecibo(Const OutDevice : String) : Boolean;
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
    RegInfo.OpenKey(_SalidaInventarioKey,False);

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
    PrnLn(CBrush(Format (Format_Num_Tel_Hora,[Pad('L',Modulo.tSalidas_InventarioNumero.AsString,10,'0'),
                                              Pad('C',UnEncrypt(RegInfo.ReadString(_UserCompPhone1)),(AnchoLinea Div 3) - 2,#32),
                                              Pad('L',FormatDateTime('hh:mm am/pm',Modulo.tSalidas_InventarioHora.Value),(AnchoLinea Div 3 - 2),#32)]),
                 AnchoLinea));

    // Fecha de Salida
    PrnLn(CBrush(FormatDateTime(Format_Fecha,Modulo.tSalidas_InventarioFecha.Value),AnchoLinea));

    {Tipo de Recibo}
    If OutDevice = _Port Then Prn(_BigFont);
    PrnLn(CBrush(UPPERCASE('SALIDA DE INVENTARIO'),AnchoLinea Div Factor));
    If OutDevice = _Port Then Prn(_NoBigFont);

    If OutDevice = _Port Then Prn(_Condensado);
    PrnLn(CBrush(Modulo.tSalidas_InventarioConcepto_Salida.Value,AnchoLinea));

    If OutDevice = _Port Then Prn(_NoCondens);

    PrnLn(#32);

    If OutDevice = _Port Then
      Begin
        Prn(_NoBigFont);
        Prn(_Draft)
      End;

    {Cuerpo de la Salida}
    PrnLn(LBrush('Nombre   : '+Trim(Modulo.tSalidas_InventarioNombre_Cliente.Value),AnchoLinea));
    PrnLn(LBrush('Direccion: '+Modulo.tListado_ClientesDireccion.Value,AnchoLinea));
    PrnLn(LBrush('Telefono : '+Modulo.tSalidas_InventarioTelefono_Cliente.Value,AnchoLinea));
    PrnLn(Fill('-',AnchoLinea));
    PrnLn(CBrush('Descripcion' ,18)+'|'+
          CBrush('Cant.'       ,04)+'|'+
          CBrush('Precio'      ,08)+'|'+
          CBrush('Total'       ,09)
          );
    PrnLn(Fill('-',AnchoLinea));
    Modulo.tDetalles_Salida.First;
    While Not Modulo.tDetalles_Salida.EOF Do
       Begin
         PrnLn(LBrush(Modulo.tDetalles_SalidaDescripcion.Value                   ,18)+'|'+
               RBrush(Format('%*.*f',[8,0,Modulo.tDetalles_SalidaCantidad.Value]),04)+'|'+
               RBrush(Format('%m',[Modulo.tDetalles_SalidaPrecio.Value])         ,08)+'|'+
               RBrush(Format('%m',[Modulo.tDetalles_SalidaTotal_Precio.Value])   ,09)
               );
         Modulo.tDetalles_Salida.Next;
       End; {While}
    {Sumario / Totales de la Salida}
    If OutDevice = _Port Then Prn(_Bold);
    PrnLn(Fill('-',AnchoLinea));
    PrnLn(RBrush('Total Salida:' + Format('%m',[Modulo.tSalidas_InventarioTotal_Salida.Value]),AnchoLinea));
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

procedure TFSalidas_Inventario.wwDBLookupCombo1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  If Modified Then
    Modulo.tDetalles_SalidaCodigo.Value := Modulo.tListadoProductosCodigo.Value
end;

end.
