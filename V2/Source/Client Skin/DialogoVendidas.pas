unit DialogoVendidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, wwdblook, Grids, Wwdbigrd, Wwdbgrid,
  Mask, wwdbedit, Wwdotdot, db, Wwdbcomb, RegKeys;

type
  TFCriterioRepVendida = class(TForm)
    Deptos: TRadioGroup;
    btAceptar: TBitBtn;
    btCancelar: TBitBtn;
    LDepto: TLabel;
    LStatus: TLabel;
    Usuarios: TRadioGroup;
    Elementos: TRadioGroup;
    Departamento: TwwDBLookupCombo;
    Producto: TwwDBLookupCombo;
    Usuario: TwwDBLookupCombo;
    Tipos: TRadioGroup;
    LElemento: TLabel;
    LTipo: TLabel;
    Tipo: TwwDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure DeptosClick(Sender: TObject);
    procedure ElementosClick(Sender: TObject);
    procedure UsuariosClick(Sender: TObject);
    procedure TiposClick(Sender: TObject);
    procedure btAceptarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DepartamentoCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }

    SeleccionDepartamento : String;
    SeleccionProducto     : String;
    SeleccionUsuario      : String;
    SeleccionTipoProducto : String;

    CriterioDepartamento  : String;
    CriterioProducto      : String;
    CriterioUsuario       : String;
    CriterioTipoProducto  : String;
  end;

var
  FCriterioRepVendida: TFCriterioRepVendida;

implementation

uses Utilidades, DataModulo, Generales;

{$R *.dfm}

procedure TFCriterioRepVendida.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);

      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

      Modulo.tDepartamentos.Open;
      Modulo.tListadoProductos.Open;
      Modulo.tTipos_Productos.Open;
      ModuloGenerales.tListadoUsuarios.Open
    End; {If _Load_Create}
end;

procedure TFCriterioRepVendida.DeptosClick(Sender: TObject);
begin
  LDepto.Enabled := Deptos.ItemIndex > 0;
  Departamento.Enabled := Deptos.ItemIndex > 0
end;

procedure TFCriterioRepVendida.ElementosClick(Sender: TObject);
begin
  LElemento.Enabled := Elementos.ItemIndex > 0;
  Producto.Enabled := Elementos.ItemIndex > 0
end;

procedure TFCriterioRepVendida.UsuariosClick(Sender: TObject);
begin
  LStatus.Enabled := Usuarios.ItemIndex > 0;
  Usuario.Enabled := Usuarios.ItemIndex > 0
end;

procedure TFCriterioRepVendida.TiposClick(Sender: TObject);
begin
  LTipo.Enabled := Tipos.ItemIndex > 0;
  Tipo.Enabled := Tipos.ItemIndex > 0
end;

procedure TFCriterioRepVendida.btAceptarClick(Sender: TObject);
begin
  Case Deptos.ItemIndex Of
    0 : Begin
          CriterioDepartamento := '';
          SeleccionDepartamento := 'Todos'
        End;

    1 : Begin
          CriterioDepartamento := 'AND "Departamento" = ' + Trim(Modulo.tDepartamentosNumero.AsString);
          SeleccionDepartamento := Modulo.tDepartamentosDescripcion.Value;
        End;
  End; {Case Deptos}

  Case Elementos.ItemIndex Of
    0 : Begin
          CriterioProducto := '';
          SeleccionProducto := 'Todos'
        End;

    1 : Begin
          CriterioProducto := 'AND "Codigo_Real" = '  +
                              QuotedStr(Trim(Modulo.tListadoProductosCodigo.AsString));
          SeleccionProducto := Modulo.tListadoProductosDescripcion.AsString
        End;
  End; {Case Elementos}

  Case Usuarios.ItemIndex Of
    0 : Begin
          CriterioUsuario := '';
          SeleccionUsuario := 'Todos'
        End;

    1 : Begin
          CriterioUsuario := 'AND "Usuario" = ' + QuotedStr(Trim(ModuloGenerales.tListadoUsuariosUserName.AsString));
          SeleccionUsuario := ModuloGenerales.tListadoUsuariosNombreCompleto.AsString;
        End;
  End; {Case Status}

  Case Tipos.ItemIndex Of
    0 : Begin
          CriterioTipoProducto := '';
          SeleccionTipoProducto := 'Todos'
        End;

    1 : Begin
          CriterioTipoProducto := 'AND "Tipo_Producto" = ' + Trim(Modulo.tTipos_ProductosNumero.AsString);
          SeleccionTipoProducto := Modulo.tTipos_ProductosDescripcion.AsString;
        End;
  End; {Case Tipos}

end;

procedure TFCriterioRepVendida.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Modulo.tDepartamentos.Close;
  Modulo.tTipos_Productos.Close;
  ModuloGenerales.tListadoUsuarios.Close
end;

procedure TFCriterioRepVendida.DepartamentoCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  Modulo.tListadoProductos.Filter := '';
  Modulo.tListadoProductos.Filtered := False;
  If Modulo.tDepartamentosNumero.Value <> 0 Then
    Begin
      Modulo.tListadoProductos.Filter := 'Departamento = ' + Modulo.tDepartamentosNumero.AsString;
      Modulo.tListadoProductos.Filtered := True
    End
end;

Initialization
  RegisterClass(TFCriterioRepVendida);

end.
