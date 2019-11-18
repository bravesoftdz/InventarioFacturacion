unit Opciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  ActnList, XPStyleActnCtrls, ActnMan, ToolWin, ActnCtrls,
  RegKeys, Shader;

type
  TFOpciones = class(TForm)
    Detalle_Opciones: TwwDBGrid;
    Atb_Botones: TActionToolBar;
    Formas: TwwDBGrid;
    Opciones: TActionManager;
    Salir: TAction;
    Cargar_Opciones: TAction;
    Eliminar_Opciones: TAction;
    Shader1: TShader;
    Label2: TLabel;
    Image1: TImage;
    Shader2: TShader;
    Image2: TImage;
    Label3: TLabel;
    Shader3: TShader;
    Label1: TLabel;
    Elimina_Todas: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Cargar_OpcionesExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure Eliminar_OpcionesExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Elimina_TodasExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOpciones: TFOpciones;

implementation

uses Utilidades, Registry, DataModulo, Bancos, Categorias,
  CnfgForms, Componentes, Compra_Productos, ConfigForm, Criterio_Etiquetas,
  Criterio_Vencimientos, Departamentos, DetalledePagos, DialogoDeptos,
  Distrbuir_Vencimiento, DlgFechas, dotmatrx, ErrorHandle, Fabricantes,
  Facturacion, Formas_Pago, frmClientes, frmProveedores, PagosFacturas,
  PrintShow, Productos, Proveedores, Reportar_Productos, Reports_Forms,
  Salidas_Inventario, Seleccionar_Departamento, Seleccionar_Usuario,
  Status, Terminos, Tipos_Productos, Venta_Caja, Niveles,
  Usuarios, Generales;

{$R *.dfm}

procedure TFOpciones.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Color de la Pantalla}
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);

      Formas.LoadFromIniFile;
      Detalle_Opciones.LoadFromIniFile;

      ModuloGenerales.tOpciones.Open;
      ModuloGenerales.tForms.Open
    End
end;

procedure TFOpciones.FormKeyPress(Sender: TObject; var Key: Char);
 Var
  Found : TWinControl;
begin
  If Key = Chr(VK_RETURN) Then
    Begin
      Found := FindNextControl(ActiveControl,True, True, False);
      Found.SetFocus
    End
end;

procedure TFOpciones.Cargar_OpcionesExecute(Sender: TObject);
begin
  If Not EnumResourceNames(0, RT_RCDATA, @enumrestypes, Integer(ModuloGenerales.tForms)) Then
    Mensaje('Error, getlasterror returns'+IntToHex(getlasterror, 8));
  Try
    _Load_Create := False;
    ModuloGenerales.tForms.First;
    While Not ModuloGenerales.tForms.Eof Do
      Begin
{        If Trim(UpperCase(ModuloGenerales.tFormsName.Value)) = 'FMAINMENU' Then
          Mensaje ('Esta');}
        AnadirForms(ModuloGenerales.tOpciones,ModuloGenerales.tFormsName.Value, Self);
        ModuloGenerales.tForms.Next
      End
  Finally
    _Load_Create := True
  End;
end;

procedure TFOpciones.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFOpciones.Eliminar_OpcionesExecute(Sender: TObject);
begin
  Try
    ModuloGenerales.tOpciones.First;
    ModuloGenerales.tOpciones.DisableControls;

    While Not ModuloGenerales.tOpciones.EOF Do
      ModuloGenerales.tOpciones.Delete;

    If ModuloGenerales.tOpciones.ChangeCount > 0 Then
      ModuloGenerales.tOpciones.ApplyUpdates(0);

    ModuloGenerales.tOpciones.Refresh
  Finally
    ModuloGenerales.tOpciones.EnableControls
  End {Try}
end;

procedure TFOpciones.Elimina_TodasExecute(Sender: TObject);
begin
  ModuloGenerales.tOpciones.Filtered := False;
  Modulo.tReporter.CommandText := 'Delete From "Opciones"';
  Modulo.tReporter.Execute;
  ModuloGenerales.tOpciones.CancelUpdates;
  ModuloGenerales.tOpciones.Refresh
end;

procedure TFOpciones.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Formas.SaveToIniFile;
  Detalle_Opciones.SaveToIniFile;
  ModuloGenerales.tForms.Close;
  ModuloGenerales.tOpciones.Close
end;

Initialization
  RegisterClass(TFOpciones);

  end.
