unit Productos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ActnColorMaps, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, MSNPopUp, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, OoMisc, AdPort, ppCtrls,
  ppPrnabl, ppClass, ppBarCod, ppDB, ppCache, ppBands, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, IniFiles;

type
  TFProductos = class(TForm)
    Label6: TLabel;
    ColorConfig: TXPColorMap;
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Eliminar: TAction;
    Modificar_Codigo: TAction;
    Productos_Similares: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    Datos_Producto: TAdvPageControl;
    DatosGenerales: TAdvTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Barra: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Datos_Compra: TAdvPageControl;
    AdvTabSheet1: TAdvTabSheet;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit22: TDBEdit;
    Datos_Venta: TAdvPageControl;
    AdvTabSheet2: TAdvTabSheet;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    Resumen_Existencia: TAdvPageControl;
    AdvTabSheet3: TAdvTabSheet;
    Label23: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    DBEdit23: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    Label37: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    AdvPageControl1: TAdvPageControl;
    Botones: TAdvTabSheet;
    ActionToolBar1: TActionToolBar;
    Barra_Igual_Codigo: TAction;
    SpeedButton1: TSpeedButton;
    Codigo: TEdit;
    Descuento: TDBCheckBox;
    Comision: TDBCheckBox;
    Impuesto: TDBCheckBox;
    Serie: TDBCheckBox;
    Vencimiento: TDBCheckBox;
    Label3: TLabel;
    Label38: TLabel;
    Tipo_Inventario: TwwDBComboBox;
    Ubicacion: TwwDBComboBox;
    Presentacion: TwwDBComboBox;
    Metodo_Costo: TwwDBComboBox;
    Medida_Compra: TwwDBComboBox;
    Medida_Venta: TwwDBComboBox;
    Tipo_Beneficio: TwwDBComboBox;
    Descripcion: TwwDBComboBox;
    Departamento: TwwDBLookupCombo;
    Fabricante: TwwDBLookupCombo;
    Proveedor: TwwDBLookupCombo;
    Status: TwwDBLookupCombo;
    Fecha: TwwDBDateTimePicker;
    Categoria: TwwDBLookupCombo;
    TipoProducto: TwwDBLookupCombo;
    Lectura_Codigo: TwwDBComboBox;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Anadir_Categoria: TAction;
    Anadir_Tipo_Producto: TAction;
    Anadir_Departamento: TAction;
    Anadir_Status: TAction;
    Anadir_Fabricante: TAction;
    Anadir_Proveedor: TAction;
    Distribucion_Vencimientos: TAction;
    SpeedButton8: TSpeedButton;
    Imprimir_Etiquetas: TAction;
    Configuracion_Labels: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure Barra_Igual_CodigoExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CodigoExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EliminarExecute(Sender: TObject);
    procedure SerialPortTriggerAvail(CP: TObject; Count: Word);
    procedure BuscarExecute(Sender: TObject);
    procedure Anadir_CategoriaExecute(Sender: TObject);
    procedure Anadir_Tipo_ProductoExecute(Sender: TObject);
    procedure Anadir_DepartamentoExecute(Sender: TObject);
    procedure Anadir_StatusExecute(Sender: TObject);
    procedure Anadir_FabricanteExecute(Sender: TObject);
    procedure Anadir_ProveedorExecute(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Distribucion_VencimientosExecute(Sender: TObject);
    procedure Imprimir_EtiquetasExecute(Sender: TObject);
    procedure Configuracion_LabelsExecute(Sender: TObject);
  private
    {Private declarations }
    _CanClose : Boolean;
  public
    { Public declarations }
  end;

var
  FProductos : TFProductos;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, SrchDlg, Categorias, Departamentos,
  Fabricantes, Proveedores, Tipos_Productos, Status, Distrbuir_Vencimiento,
  CnfgForms, Reports_Forms;

{$R *.dfm}

procedure TFProductos.FormCreate(Sender: TObject);
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

  {Abrir las Tablas Requeridas}
  _CanClose := Not (Modulo.tProductos.Active);

  Modulo.tDepartamentos.Open;
  Modulo.tCategoria.Open;
  Modulo.tTipos_Productos.Open;
  Modulo.tStatus.Open;
  Modulo.tProveedores.Open;
  Modulo.tFabricante.Open;
  Modulo.tProductos.Open;

  {Insertar Registro en Blanco}
  Nuevo.Execute
end;

procedure TFProductos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {Cerrar las Tablas Requeridas}
  If _CanClose Then
    Begin
      Modulo.tProductos.Close;
      Modulo.tDepartamentos.Close;
      Modulo.tCategoria.Close;
      Modulo.tTipos_Productos.Close;
      Modulo.tStatus.Close;
      Modulo.tProveedores.Close;
      Modulo.tFabricante.Close
    End
end;

procedure TFProductos.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFProductos.NuevoExecute(Sender: TObject);
begin
  Modulo.tProductos.Params.ParamByName('Codigo').Value := '';
  If Modulo.tProductos.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
  Modulo.tProductos.Cancel;
  Modulo.tProductos.Append;
  
  Codigo.Text := '';
  If Self.Visible Then Codigo.SetFocus
end;

procedure TFProductos.GuardarExecute(Sender: TObject);
begin
  If Modulo.tProductos.State In DsEditModes Then
    Modulo.tProductos.Post;

  If Modulo.tProductos.ChangeCount > 0 Then
    Modulo.tProductos.ApplyUpdates(0);

  Modulo.tProductos.Refresh;

  Modulo.Mensajes.Text := _DatosGuardados;
  Modulo.Mensajes.ShowPopUp;

  If (Sender Is TAction) Then
    If (Sender As TAction).Name = Guardar.Name Then
     Nuevo.Execute 
end;

procedure TFProductos.Barra_Igual_CodigoExecute(Sender: TObject);
begin
  Descripcion.SetFocus;

  If Not (Modulo.tProductos.State In DsEditModes) Then Modulo.tProductos.Edit;
    Modulo.tProductosBarra.Value := Modulo.tProductosCodigo.Value;
end;

procedure TFProductos.SpeedButton1Click(Sender: TObject);
begin
  Barra_Igual_Codigo.Execute
end;

procedure TFProductos.CodigoExit(Sender: TObject);
begin
  If Trim(Codigo.Text) = '' Then Exit;

  Modulo.tProductos.Cancel;
  Modulo.tProductos.Params.ParamByName('Codigo').AsString := Trim(Codigo.Text);
  Modulo.tProductos.Refresh;

  If Modulo.tProductos.RecordCount <= 0 Then
    Begin
      Modulo.tProductos.Append;
      Modulo.tProductosCodigo.Value := Trim(Codigo.Text)
    End

end;

procedure TFProductos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  Found : TWinControl;
begin
  Case Key Of
    VK_HOME    : Codigo.SetFocus;

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
        If ActiveControl.Name = Departamento.Name Then Anadir_Departamento.Execute;
        If ActiveControl.Name = Proveedor.Name    Then Anadir_Proveedor.Execute;
        If ActiveControl.Name = Categoria.Name    Then Anadir_Categoria.Execute;
        If ActiveControl.Name = TipoProducto.Name Then Anadir_Tipo_Producto.Execute;
        If ActiveControl.Name = Fabricante.Name   Then Anadir_Fabricante.Execute;
        If ActiveControl.Name = Status.Name       Then Anadir_Status.Execute;
        If ActiveControl.Name = DBEdit32.Name     Then Distribucion_Vencimientos.Execute;
      End
  End {Case}
end;

procedure TFProductos.EliminarExecute(Sender: TObject);
begin
  If Modulo.tProductosSecuencia.Value > 0 Then
    Begin
      If Application.MessageBox(PChar(_ConfirmarEliminar),
                                PChar(Eliminar.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
      Modulo.tProductos.Delete
    End;

  If Modulo.tProductos.ChangeCount > 0 Then
    Modulo.tProductos.ApplyUpdates(0);

  Modulo.tProductos.Refresh;
  Nuevo.Execute;

  Modulo.Mensajes.Text := _DatosEliminados;
  Modulo.Mensajes.ShowPopUp
end;

procedure TFProductos.SerialPortTriggerAvail(CP: TObject; Count: Word);
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
      Codigo.Text := Buffer;
      Buffer := ''
    End
end;

procedure TFProductos.BuscarExecute(Sender: TObject);
begin
    Try
      Application.CreateForm(TDlgSearch,DlgSearch);
      DlgSearch.OpenDlg('Productos',Modulo.tProductosDescripcion.FieldName,'A',wsMaximized);
      If DlgSearch.ModalResult = MrOk Then
        Begin
          Modulo.tProductos.Cancel;
          Modulo.tProductos.Params.ParamByName('Codigo').AsString := DlgSearch.SrchCds.FieldByName('Codigo').AsString;
          Modulo.tProductos.Refresh;
          Codigo.Text := Modulo.tProductosCodigo.Value
        End
    Finally
      DlgSearch.CloseDlg
    End {Try}
end;

procedure TFProductos.Anadir_CategoriaExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosCategoria.Value;
  OpenForm(TFCategorias,FCategorias);
  Modulo.tProductosCategoria.Value := _LastCode
end;

procedure TFProductos.Anadir_Tipo_ProductoExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosTipo_Producto.Value;
  OpenForm(TFTipos_Productos,FTipos_Productos);
  Modulo.tProductosTipo_Producto.Value := _LastCode
end;

procedure TFProductos.Anadir_DepartamentoExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosDepartamento.Value;
  OpenForm(TFDepartamentos,FDepartamentos);
  Modulo.tProductosDepartamento.Value := _LastCode
end;

procedure TFProductos.Anadir_StatusExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosStatus.Value;
  OpenForm(TFStatus,FStatus);
  Modulo.tProductosStatus.Value := _LastCode
end;

procedure TFProductos.Anadir_FabricanteExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosFabricante.Value;
  OpenForm(TFFabricantes,FFabricantes);
  Modulo.tProductosFabricante.Value := _LastCode
end;

procedure TFProductos.Anadir_ProveedorExecute(Sender: TObject);
begin
  _LastCode := Modulo.tProductosProveedor_Principal.Value;
  OpenForm(TFProveedores,FProveedores);
  Modulo.tProductosProveedor_Principal.Value := _LastCode
end;

procedure TFProductos.SpeedButton2Click(Sender: TObject);
begin
  Anadir_Departamento.Execute
end;

procedure TFProductos.SpeedButton3Click(Sender: TObject);
begin
  Anadir_Proveedor.Execute
end;

procedure TFProductos.SpeedButton4Click(Sender: TObject);
begin
  Anadir_Categoria.Execute
end;

procedure TFProductos.SpeedButton5Click(Sender: TObject);
begin
  Anadir_Tipo_Producto.Execute
end;

procedure TFProductos.SpeedButton6Click(Sender: TObject);
begin
  Anadir_Fabricante.Execute
end;

procedure TFProductos.SpeedButton7Click(Sender: TObject);
begin
  Anadir_Status.Execute
end;

procedure TFProductos.SpeedButton8Click(Sender: TObject);
begin
  Distribucion_Vencimientos.Execute
end;

procedure TFProductos.Distribucion_VencimientosExecute(Sender: TObject);
begin
  DBEdit33.SetFocus;
  If Not(Modulo.tProductos.State In DsEditModes) And
     (Modulo.tProductosRequiere_Fecha_Vencimiento.Value <> True) Then
    Begin
      Modulo.tProductos.Edit;
      Modulo.tProductosRequiere_Fecha_Vencimiento.Value := True
    End;
  OpenForm(TFVencimientos,FVencimientos);
end;

procedure TFProductos.Imprimir_EtiquetasExecute(Sender: TObject);
begin
  {Guardar antes de IMprimir}
  GuardarExecute(Imprimir_Etiquetas);

  {Informacion  General}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_CompanyInfoKey,False);
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

      PipeVencimientos.DataSource := Modulo.dVencimientos;
      
      If Modulo.tVencimientos.RecordCount > 0 Then
        Begin
          Modulo.tVencimientos.First;
          While Not Modulo.tVencimientos.Eof Do
            Begin
              Labels.DataPipeline := PipeVencimientos;
              ReportsAndForms.Labels.ShowPrintDialog := InitInfo.ReadBool(_LabelProductos,'ShowPrintDialog',True);
              If Modulo.tVencimientosCantidad.AsInteger > InitInfo.ReadInteger(_LabelProductos,'MargenEvaluacion',5) Then
                Begin
                  Mensaje(Format('Por favor, Verifique ésta impresión :'#13+
                                 '%s'#13+
                                 '%s'#13+
                                 'Cantidad : %s',
                                 [Modulo.tProductosDescripcion.Value,
                                  Modulo.tProductosPresentacion.Value,
                                  Modulo.tVencimientosCantidad.AsString]));
                  ReportsAndForms.Labels.ShowPrintDialog := True
                End; {If}
              Labels.PrinterSetup.Copies := Modulo.tVencimientosCantidad.AsInteger;
              Labels.Print;
              Modulo.tVencimientos.Next
            End {While}
        End {If}
      Else
        Begin
          Labels.PrinterSetup.Copies := 1;
          Labels.DataPipeline := PipeProductos;
          Labels.Print;
        End; {Else}
      Empty.DataPipeline := PipeProductos;
      Empty.DeviceType := Labels.DeviceType;
      Empty.PrinterSetup.PrinterName := Labels.PrinterSetup.PrinterName;

      Empty.Print
    End {With}
end;

procedure TFProductos.Configuracion_LabelsExecute(Sender: TObject);
begin
  Application.CreateForm(TFConfigForms,FConfigForms);
  FConfigForms._Seccion := _LabelProductos;
  FConfigForms.LoadValues;
  FConfigForms.Caption := 'Configuracion de Formato de Etiquetas';
  FConfigForms.ShowModal;
  FConfigForms.Free
end;

end.
