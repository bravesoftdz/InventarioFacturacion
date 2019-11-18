unit Venta_Caja;

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
  TFVentas_Caja = class(TForm)
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Barra_Menu: TActionMainMenuBar;
    Detalles_Factura: TAdvPageControl;
    Page_Detalles: TAdvTabSheet;
    Botones: TAdvPageControl;
    Page_Botones: TAdvTabSheet;
    atb_Botones: TActionToolBar;
    Label7: TLabel;
    SubTotal: TDBEdit;
    Label8: TLabel;
    Total_Neto: TDBEdit;
    Label9: TLabel;
    Detalles: TwwDBGrid;
    Comentarios: TwwDBRichEdit;
    DetallesIButton: TwwIButton;
    Imprimir: TAction;
    AnadirCliente: TAction;
    Descripciones: TwwDBLookupCombo;
    Label12: TLabel;
    Impuesto_Gral: TDBEdit;
    Label14: TLabel;
    Total_Impuesto: TDBEdit;
    Label16: TLabel;
    MontoPagado: TDBEdit;
    Label17: TLabel;
    Pendiente_Pago: TDBEdit;
    Anadir_Terminos: TAction;
    Label1: TLabel;
    Numero_Factura: TDBEdit;
    Configuracion_Factura: TAction;
    Registro_Clientes: TFrameClientes;
    Procesar_Pago: TAction;
    ckB_Desglosar: TCheckBox;
    Datos_Cliente: TAdvPageControl;
    Page_Cliente: TAdvTabSheet;
    Label6: TLabel;
    Label2: TLabel;
    sb_Anadir_Cliente: TSpeedButton;
    Label10: TLabel;
    Label11: TLabel;
    Referencia: TDBEdit;
    LookUp_Cliente: TwwDBLookupCombo;
    Cedula_Cliente: TDBEdit;
    Telefono_Cliente: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Hora: TDBEdit;
    Fecha: TDBEdit;
    Codigos: TwwDBLookupCombo;
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
    procedure LookUp_ClienteCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure AnadirClienteExecute(Sender: TObject);
    procedure sb_Anadir_ClienteClick(Sender: TObject);
    procedure DescripcionesCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookUp_ClienteDropDown(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Anadir_TerminosExecute(Sender: TObject);
    procedure DetallesColEnter(Sender: TObject);
    procedure Registro_ClientesSpeedButton1Click(Sender: TObject);
    procedure Registro_ClientesSpeedButton2Click(Sender: TObject);
    procedure Procesar_PagoExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function ImprimirRecibo(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;

var
  FVentas_Caja : TFVentas_Caja;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, SrchDlg, Categorias, Departamentos,
  Fabricantes, Tipos_Productos, Status, Distrbuir_Vencimiento,
  dotmatrx, Terminos, DateUtils, CnfgForms, Reports_Forms, PagosFacturas,
  Registry;

{$R *.dfm}
{$I FactComm.Cnt}

procedure TFVentas_Caja.FormCreate(Sender: TObject);
  Var
    I : Integer;
    Depto : Integer;
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
  Modulo.tParametros.Params.ParamByName('Terminal').AsString := _CurrentTerminal;
  Modulo.tParametros.Open;

  Modulo.tListado_Clientes.Open;
  Modulo.tTerminos.Open;

  RegInfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,False);
  Depto := RegInfo.ReadInteger(_DetalleFacturaDepto);
  If Depto <> 0 Then
    Begin
      Modulo.tListadoProductos.Filter := 'Departamento = ' + IntToStr(Depto);
      Modulo.tListadoProductos.Filtered := True;
    End;

  Modulo.tProductos.Open;
  Modulo.tListadoProductos.Open;

  Modulo.tFacturasCondicion.DefaultExpression := QuotedStr(Trim(Modulo.tParametrosCondicion_Facturacion.Value));
  Modulo.tFacturas.Open;

  {Insertar Registro en Blanco}
  Nuevo.Execute
end;

procedure TFVentas_Caja.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {Cerrar las Tablas Requeridas}
  Modulo.tFacturas.Cancel;
  Modulo.tClientes.Close;
  Modulo.tTerminos.Close;
  Modulo.tProductos.Close;
  Modulo.tListadoProductos.Close;
  Modulo.tFacturas.Close
end;

procedure TFVentas_Caja.SalirExecute(Sender: TObject);
begin
  If Modulo.tFacturas.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicionSalida),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

  Close
end;

procedure TFVentas_Caja.NuevoExecute(Sender: TObject);
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
  Modulo.tFacturasVencimiento.Value := Modulo.tFacturasFecha.Value;
  Modulo.tFacturasHora.Value  := Modulo.Enlace.AppServer.ServerTime;

  Modulo.tFacturasProceso.Value := Gen_ProcessNumber(_CurrentUser);
  Modulo.tFacturas.Params.ParamByName('Proceso').Value := Modulo.tFacturasProceso.Value;

  RegInfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,False);
  If Self.Visible Then
    If RegInfo.ReadBool(_DetalleFacturaFocus) Then Detalles.SetFocus
  Else
    Referencia.SetFocus
end;

procedure TFVentas_Caja.GuardarExecute(Sender: TObject);
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

procedure TFVentas_Caja.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFVentas_Caja.SerialPortTriggerAvail(CP: TObject; Count: Word);
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

procedure TFVentas_Caja.BuscarExecute(Sender: TObject);
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

procedure TFVentas_Caja.Anadir_CategoriaExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosCategoria.Value;
  OpenForm(TFCategorias,FCategorias);
  Modulo.tProductosCategoria.Value := _LastCode
end;

procedure TFVentas_Caja.Anadir_Tipo_ProductoExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosTipo_Producto.Value;
  OpenForm(TFTipos_Productos,FTipos_Productos);
  Modulo.tProductosTipo_Producto.Value := _LastCode
end;

procedure TFVentas_Caja.Anadir_DepartamentoExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosDepartamento.Value;
  OpenForm(TFDepartamentos,FDepartamentos);
  Modulo.tProductosDepartamento.Value := _LastCode
end;

procedure TFVentas_Caja.Anadir_StatusExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosStatus.Value;
  OpenForm(TFStatus,FStatus);
  Modulo.tProductosStatus.Value := _LastCode
end;

procedure TFVentas_Caja.Anadir_FabricanteExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosFabricante.Value;
  OpenForm(TFFabricantes,FFabricantes);
  Modulo.tProductosFabricante.Value := _LastCode
end;

procedure TFVentas_Caja.DetallesEnter(Sender: TObject);
begin
  KeyPreview := False;
  If Registro_Clientes.Visible Then Registro_ClientesSpeedButton1Click(Sender);
  Detalles.SelectedField := Modulo.tDetalles_FacturaCodigo
end;

procedure TFVentas_Caja.DetallesExit(Sender: TObject);
begin
  KeyPreview := True
end;

procedure TFVentas_Caja.ImprimirExecute(Sender: TObject);
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
      ImprimirRecibo(_Screen,ckB_Desglosar.Checked);
      PreviewForm.Vista.Lines.LoadFromFile(_PreviewFile);
      PreviewForm.ShowModal;
      If PreviewForm.ModalResult = MrOk Then DoPreview := False;
      PreviewForm.Free
    End; {If DoPreview}

    If Not (DoPreview) Then ImprimirRecibo(_Port,ckB_Desglosar.Checked);
end;

procedure TFVentas_Caja.DetallesCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  If Field = Modulo.tDetalles_FacturaTotal_Precio Then
    Begin
      ABrush.Color := Detalles.TitleColor;
      AFont.Color := clBlack
    End
end;

procedure TFVentas_Caja.LookUp_ClienteCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  KeyPreview := True;
  If Modified Then
    Begin
      Modulo.tFacturasNombre_Cliente.Value := Modulo.tListado_ClientesNombreCompleto.Value;
      Modulo.tFacturasTerminos.Value := Modulo.tListado_ClientesTerminosFacturacion.Value
    End
end;

procedure TFVentas_Caja.AnadirClienteExecute(Sender: TObject);
begin
  Modulo.tClientes.Open;
  Modulo.tClientes.Append;
  Modulo.tClientesCedula_Rnc_Pasaporte.Value := '-';
  Registro_Clientes.Left := Datos_Cliente.Left;
  Registro_Clientes.Top := Datos_Cliente.Top;
  Registro_Clientes.Page_Clientes.Color := Color;
  Registro_Clientes.Datos_Cliente.TabBackGroundColor := Color;
  Datos_Cliente.Visible := False;
  Registro_Clientes.Visible := True;
  Registro_Clientes.Cedula_Rnc_Pasaporte.SetFocus
end;

procedure TFVentas_Caja.sb_Anadir_ClienteClick(Sender: TObject);
begin
  AnadirCliente.Execute
end;

procedure TFVentas_Caja.DescripcionesCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  If Modified Then
    Modulo.tDetalles_FacturaCodigo.Value := Modulo.tListadoProductosCodigo.Value
end;

procedure TFVentas_Caja.LookUp_ClienteDropDown(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TFVentas_Caja.SpeedButton1Click(Sender: TObject);
begin
  Anadir_Terminos.Execute
end;

procedure TFVentas_Caja.Anadir_TerminosExecute(Sender: TObject);
begin
  OpenForm(TFTerminos,FTerminos)
end;

procedure TFVentas_Caja.DetallesColEnter(Sender: TObject);
  Var
    CustomEditControl : Boolean;
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_FacturaProductosKey,False);
  RegInfo.WriteBool(_VC_UseCustomControl,True);
  CustomEditControl := RegInfo.ReadBool(_VC_UseCustomControl);

  Detalles.RedrawGrid;
  Detalles.ColumnByName('Descuento').ReadOnly  := Not(Modulo.tProductosAplica_Descuento.Value);

  If (Detalles.SelectedField = Modulo.tDetalles_FacturaCodigo) And Not(CustomEditControl) Then
    Detalles.EditControlOptions := [ecoSearchOwnerForm,ecoDisableCustomControls]
  Else
    Detalles.EditControlOptions := [ecoSearchOwnerForm]
end;

procedure TFVentas_Caja.Registro_ClientesSpeedButton1Click(
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

procedure TFVentas_Caja.Registro_ClientesSpeedButton2Click(
  Sender: TObject);
begin
  Datos_Cliente.Visible := True;
  Registro_Clientes.Visible := False;
  Registro_Clientes.CancelarExecute(Sender);
  Modulo.tClientes.Close
end;

procedure TFVentas_Caja.Procesar_PagoExecute(Sender: TObject);
begin
  OpenForm(TFPago_Factura,FPago_Factura)
end;

procedure TFVentas_Caja.FormActivate(Sender: TObject);
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,False);
  If RegInfo.ReadBool(_DetalleFacturaFocus) Then Detalles.SetFocus
  Else Referencia.SetFocus
end;

end.
