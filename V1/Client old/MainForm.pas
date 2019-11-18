unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ActnList, XPStyleActnCtrls, ActnMan, ActnColorMaps,
  ToolWin, ActnCtrls, StdStyleActnCtrls, ActnMenus, ExtCtrls, StdCtrls,
  fcStatusBar, Grids, DBGrids;

type
  TFMainMenu = class(TForm)
    ColorConfig: TXPColorMap;
    Opciones: TActionManager;
    Salir: TAction;
    Configuracion: TAction;
    Registro_Productos: TAction;
    Departamentos: TAction;
    Principal: TActionMainMenuBar;
    Categorias: TAction;
    Tipos_Productos: TAction;
    Status: TAction;
    Fabricantes: TAction;
    Proveedores: TAction;
    Clientes: TAction;
    Image1: TImage;
    Direccion: TLabel;
    Telefono: TLabel;
    Compras: TAction;
    Facturacion: TAction;
    Cuentas_Cobrar: TAction;
    Cuentas_Pagar: TAction;
    Devoluciones_Compras: TAction;
    Devoluciones_Ventas: TAction;
    Notas_Debito: TAction;
    Notas_Credito: TAction;
    Salida_Inventario: TAction;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action5: TAction;
    Action6: TAction;
    Action7: TAction;
    Terminos_Facturacion: TAction;
    Formas_Pago: TAction;
    Main_Status_Bar: TfcStatusBar;
    Bancos: TAction;
    Clasificados_Fabricante: TAction;
    Clasificados_Proveedor: TAction;
    General: TAction;
    Clasificados_Categoria: TAction;
    Clasificados_Tipo_Productos: TAction;
    Clasificados_Tipo_Inventario: TAction;
    Action4: TAction;
    Vencimientos: TAction;
    ImpresionEtiquetas: TAction;
    Action8: TAction;
    Label1: TLabel;
    EnMinimo: TAction;
    Agotados: TAction;
    Clasificados_Status: TAction;
    procedure FormCreate(Sender: TObject);
    procedure ConfiguracionExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure Registro_ProductosExecute(Sender: TObject);
    procedure DepartamentosExecute(Sender: TObject);
    procedure CategoriasExecute(Sender: TObject);
    procedure Tipos_ProductosExecute(Sender: TObject);
    procedure StatusExecute(Sender: TObject);
    procedure FabricantesExecute(Sender: TObject);
    procedure ProveedoresExecute(Sender: TObject);
    procedure Terminos_FacturacionExecute(Sender: TObject);
    procedure Salida_InventarioExecute(Sender: TObject);
    procedure ComprasExecute(Sender: TObject);
    procedure Formas_PagoExecute(Sender: TObject);
    procedure FacturacionExecute(Sender: TObject);
    procedure BancosExecute(Sender: TObject);
    procedure Clasificados_FabricanteExecute(Sender: TObject);
    procedure Clasificados_ProveedorExecute(Sender: TObject);
    procedure Action8Execute(Sender: TObject);
    procedure VencimientosExecute(Sender: TObject);
    procedure ImpresionEtiquetasExecute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GeneralExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMainMenu: TFMainMenu;

implementation

uses Utilidades, ConfigForm, Productos, Departamentos, Categorias,
  Tipos_Productos, Status, Fabricantes, Proveedores, Terminos, DataModulo,
  Salidas_Inventario, Compra_Productos, Formas_Pago, Facturacion, Bancos,
  Reports_Forms, DialogoDeptos, Criterio_Vencimientos, Criterio_Etiquetas,
  DlgFechas;

{$R *.dfm}

procedure TFMainMenu.FormCreate(Sender: TObject);
  Var
    I : Integer;
begin

  Caption := Application.Title;

  {Informacion  General}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_CompanyInfoKey,False);

//  Nombre.Caption         := UnEncrypt(RegInfo.ReadString(_UserCompName));
  Direccion.Caption := Format ('%s, %s, %s',[UnEncrypt(RegInfo.ReadString(_UserCompAddres)),
                                             UnEncrypt(RegInfo.ReadString(_UserCompCity)),
                                             UnEncrypt(RegInfo.ReadString(_UserCompCountry))]);

  Telefono.Caption      := Format ('%s, %s, %s',[UnEncrypt(RegInfo.ReadString(_UserCompPhone1)),
                                                 UnEncrypt(RegInfo.ReadString(_UserCompPhone2)),
                                                 UnEncrypt(RegInfo.ReadString(_UserCompRNC))]);

  Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
  ColorConfig.Color := Color - 5;
//  Linea.Width := Screen.Width;
  WindowState := wsMaximized;


  Main_Status_Bar.Panels.PanelByName('Usuarios').Text := _CurrentUser;
  Main_Status_Bar.Panels.PanelByName('Terminales').Text := _CurrentTerminal;

  {Asigna a los Botones Los ShortCuts Del Menu y Action Lists}
  For I := 0 To (Main_Status_Bar.Panels.Count - 1) Do
     Main_Status_Bar.Panels[I].Color := ColorConfig.Color
end;

procedure TFMainMenu.ConfiguracionExecute(Sender: TObject);
begin
  OpenForm(TFMainConfig,FMainConfig);
end;

procedure TFMainMenu.SalirExecute(Sender: TObject);
begin
  If Application.MessageBox('Realmente Desea Terminar La Ejecución del Programa',
                            'Salida del Sistema',
                            MB_YESNO + MB_ICONQUESTION) = ID_Yes Then Close
end;

procedure TFMainMenu.Registro_ProductosExecute(Sender: TObject);
begin
  OpenForm(TFProductos,FProductos)
end;

procedure TFMainMenu.DepartamentosExecute(Sender: TObject);
begin
  OpenForm(TFDepartamentos,FDepartamentos)
end;

procedure TFMainMenu.CategoriasExecute(Sender: TObject);
begin
  OpenForm(TFCategorias,FCategorias)
end;

procedure TFMainMenu.Tipos_ProductosExecute(Sender: TObject);
begin
  OpenForm(TFTipos_Productos,FTipos_Productos)
end;

procedure TFMainMenu.StatusExecute(Sender: TObject);
begin
  OpenForm(TFStatus,FStatus)
end;

procedure TFMainMenu.FabricantesExecute(Sender: TObject);
begin
  OpenForm(TFFabricantes,FFabricantes)
end;

procedure TFMainMenu.ProveedoresExecute(Sender: TObject);
begin
  OpenForm(TFProveedores,FProveedores)
end;

procedure TFMainMenu.Terminos_FacturacionExecute(Sender: TObject);
begin
  OpenForm(TFTerminos,FTerminos)
end;

procedure TFMainMenu.Salida_InventarioExecute(Sender: TObject);
begin
  OpenForm(TFSalidas_Inventario,FSalidas_Inventario)
end;

procedure TFMainMenu.ComprasExecute(Sender: TObject);
begin
  OpenForm(TFCompra_Productos,FCompra_Productos)
end;

procedure TFMainMenu.Formas_PagoExecute(Sender: TObject);
begin
  OpenForm(TFMetodos,FMetodos)
end;

procedure TFMainMenu.FacturacionExecute(Sender: TObject);
begin
  OpenForm(TFFacturacion,FFacturacion)
end;

procedure TFMainMenu.BancosExecute(Sender: TObject);
begin
  OpenForm(TFBancos,FBancos)
end;

procedure TFMainMenu.Clasificados_FabricanteExecute(Sender: TObject);
begin
  Try
    Application.CreateForm(TFCriterioRepProductos,FCriterioRepProductos);
    FCriterioRepProductos.Elemento.LookupTable := Modulo.tFabricante;
    FCriterioRepProductos.CaptionElemento := 'Fabricantes';
    FCriterioRepProductos.CampoElemento := Modulo.tProductosFabricante.FieldName;
    FCriterioRepProductos.ShowModal;
    If FCriterioRepProductos.ModalResult = MrOk Then
      Begin
         ReportsAndForms.Usuario.Caption := 'Impreso Por ' + _CurrentUser;
         Modulo.tFabricante.Open;

         ReportsAndForms.Depto_Fabricante.Text := FCriterioRepProductos.SeleccionDepartamento;
         ReportsAndForms.Elemento_Fabricante.Text := FCriterioRepProductos.SeleccionElemento;
         ReportsAndForms.Status_Fabricante.Text := FCriterioRepProductos.SeleccionStatus;
         ReportsAndForms.Tipo_Fabricante.Text := FCriterioRepProductos.SeleccionTipoProducto;

         Modulo.tReporter.CommandText := Format(_SelectTodosProductos,[FCriterioRepProductos.CriterioDepartamento,
                                                                       FCriterioRepProductos.CriterioElemento,
                                                                       FCriterioRepProductos.CriterioStatus,
                                                                       FCriterioRepProductos.CriterioTipoProducto,
                                                                       DoubleQuoted(FCriterioRepProductos.CampoElemento),
                                                                       '']);
         Modulo.tReporter.Open;
         If Modulo.tReporter.RecordCount > 0 Then
           ReportsAndForms.ReporteProductos_Fabricante.Print
         Else
           Mensaje(_NoPrintData)
      End {If}
  Finally
    FCriterioRepProductos.Free;
    Modulo.tReporter.Close;
    Modulo.tFabricante.Close
  End {Try}
end;

procedure TFMainMenu.Clasificados_ProveedorExecute(Sender: TObject);
begin
  Try
    Application.CreateForm(TFCriterioRepProductos,FCriterioRepProductos);
    FCriterioRepProductos.Elemento.LookupTable := Modulo.tProveedores;
    Modulo.tProveedores.Open;
    FCriterioRepProductos.CaptionElemento := 'Proveedores';
    FCriterioRepProductos.CampoElemento := Modulo.tProductosProveedor_Principal.FieldName;
    FCriterioRepProductos.ShowModal;
    If FCriterioRepProductos.ModalResult = MrOk Then
      Begin
         ReportsAndForms.Usuario.Caption := 'Impreso Por ' + _CurrentUser;
         Modulo.tFabricante.Open;

         ReportsAndForms.Depto_Proveedor.Text := FCriterioRepProductos.SeleccionDepartamento;
         ReportsAndForms.Elemento_Proveedor.Text := FCriterioRepProductos.SeleccionElemento;
         ReportsAndForms.Status_Proveedor.Text := FCriterioRepProductos.SeleccionStatus;
         ReportsAndForms.Tipo_Proveedor.Text := FCriterioRepProductos.SeleccionTipoProducto;

         Modulo.tReporter.CommandText := Format(_SelectTodosProductos,[FCriterioRepProductos.CriterioDepartamento,
                                                                       FCriterioRepProductos.CriterioElemento,
                                                                       FCriterioRepProductos.CriterioStatus,
                                                                       FCriterioRepProductos.CriterioTipoProducto,
                                                                       DoubleQuoted(FCriterioRepProductos.CampoElemento),
                                                                       DoubleQuoted('Fabricante')+',']);
         Modulo.tReporter.Open;
         If Modulo.tReporter.RecordCount > 0 Then
           ReportsAndForms.ReporteProductos_Proveedores.Print
         Else
           Mensaje(_NoPrintData)
      End {If}
  Finally
    FCriterioRepProductos.Free;
    Modulo.tReporter.Close;
    Modulo.tProveedores.Close;
    Modulo.tFabricante.Close
  End {Try}
end;

procedure TFMainMenu.Action8Execute(Sender: TObject);
  Var I : Integer;
begin
  Modulo.tListadoProductos.Open;
  Modulo.tListadoProductos.First;
  I := 0;
  Label1.Visible := True;
  While Not Modulo.tListadoProductos.Eof Do
    Begin
      Inc(I);
      Modulo.tListadoProductos.Edit;
      Modulo.tListadoProductosSecuencia.Value := I;
      Modulo.tListadoProductos.Post;
      Label1.Caption := Format('Secuencia %d',[I]);
      Modulo.tListadoProductos.ApplyUpdates(0);
      Modulo.tListadoProductos.Next;
      Update
    End;
  Modulo.tListadoProductos.Close;
  Label1.Visible := False;
  Mensaje ('Terminado ' + Label1.Caption)
end;

procedure TFMainMenu.VencimientosExecute(Sender: TObject);
begin
  OpenForm(TFCriterio_Vencimientos,FCriterio_Vencimientos);
end;

procedure TFMainMenu.ImpresionEtiquetasExecute(Sender: TObject);
begin
  OpenForm(TFCriterio_Etiquetas,FCriterio_Etiquetas);
end;

procedure TFMainMenu.Action5Execute(Sender: TObject);
begin
  Application.CreateForm(TDlgFecha,DlgFecha);
  DlgFecha.ShowModal;
  If DlgFecha.ModalResult = MrOk Then
    Begin
      Modulo.tReporter.CommandText := _SelectInvoicesByDate;
      Modulo.tReporter.Params.ParamByName('F1').AsDate := DlgFecha.Inicio.Date;
      Modulo.tReporter.Params.ParamByName('F2').AsDate := DlgFecha.Fin.Date;
      Modulo.tReporter.Open;
      ReportsAndForms.Pipe_Facturas.DataSource := Modulo.dReporter;
      If Modulo.tReporter.RecordCount > 0 Then
        ReportsAndForms.Reporte_Ventas.Print
      Else Mensaje (_NoPrintData);
      Modulo.tReporter.Close
    End
end;

procedure TFMainMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Modulo.Concentrador.Close
end;

procedure TFMainMenu.GeneralExecute(Sender: TObject);
begin
  Try
    ReportsAndForms.Usuario.Caption := 'Impreso Por ' + _CurrentUser;

    ReportsAndForms.Depto_Fabricante.Text    := 'Todos';
    ReportsAndForms.Elemento_Fabricante.Text := 'Todos';
    ReportsAndForms.Status_Fabricante.Text   := 'Todos';
    ReportsAndForms.Tipo_Fabricante.Text     := 'Todos';

    ReportsAndForms.Titulo.Text              := 'Reporte General de Productos Clasificado por Fabricantes';


    Modulo.tFabricante.Open;

    Modulo.tReporter.CommandText := Format(_SelectTodosProductos,['',
                                                                  '',
                                                                  '',
                                                                  '',
                                                                  DoubleQuoted('Fabricante'),
                                                                  '']);
    Modulo.tReporter.Open;
    If Modulo.tReporter.RecordCount > 0 Then
      ReportsAndForms.ReporteProductos_Fabricante.Print
    Else
      Mensaje(_NoPrintData)
  Finally
    Modulo.tReporter.Close;
    Modulo.tFabricante.Close
  End {Try}
end;

end.
