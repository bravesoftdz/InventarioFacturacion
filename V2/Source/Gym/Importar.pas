unit Importar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, AdvPageControl, ComCtrls, ActnList,
  XPStyleActnCtrls, ActnMan, Buttons, DB, DBTables, wwrcdpnl,
  ToolWin, ActnCtrls, StdCtrls, RegKeys;

type
  TFImportar = class(TForm)
    AdvPageControl1: TAdvPageControl;
    Inventario: TAdvTabSheet;
    Facturas: TAdvTabSheet;
    Detalle_Inventario: TwwDBGrid;
    pdoxInventario: TTable;
    dspdoxInventario: TDataSource;
    pdoxInventarioCodigo: TStringField;
    pdoxInventarioNumero: TAutoIncField;
    pdoxInventarioReferencia: TStringField;
    pdoxInventarioDescripcion: TStringField;
    pdoxInventarioTipoProducto: TStringField;
    pdoxInventarioProveedor: TIntegerField;
    pdoxInventarioRenglon: TIntegerField;
    pdoxInventarioReorden: TFloatField;
    pdoxInventarioExistencia: TFloatField;
    pdoxInventarioComentario: TStringField;
    pdoxInventarioMinimo: TSmallintField;
    pdoxInventarioLocalizacion: TStringField;
    pdoxInventarioImpuesto: TBooleanField;
    pdoxInventarioUnidadCompra: TStringField;
    pdoxInventarioMedidaCompra: TSmallintField;
    pdoxInventarioPrecioCompra: TCurrencyField;
    pdoxInventarioUnidadVenta: TStringField;
    pdoxInventarioMedidaVenta: TSmallintField;
    pdoxInventarioPrecioVenta: TCurrencyField;
    pdoxInventarioPrecioVentaPorMayor: TCurrencyField;
    pdoxInventarioPrecioVentaMinimo: TCurrencyField;
    pdoxInventarioPrecioVentaCredito: TCurrencyField;
    pdoxInventarioPrecioVentaPMayorCredito: TCurrencyField;
    pdoxInventarioStatus: TStringField;
    pdoxInventarioTipo: TStringField;
    pdoxInventarioPrecioLista: TCurrencyField;
    pdoxInventarioModelo: TStringField;
    pdoxInventarioAnio: TStringField;
    pdoxInventarioColor: TStringField;
    pdoxInventarioClase: TStringField;
    pdoxInventarioMarca: TStringField;
    pdoxInventarioFecha: TDateField;
    pdoxInventarioCanDelete: TBooleanField;
    pdoxInventarioSerial: TBooleanField;
    pdoxInventarioDepartamento: TIntegerField;
    pdoxInventarioUsuario: TStringField;
    Opciones: TActionManager;
    Salir: TAction;
    Transferir_Inventario: TAction;
    OpenTable: TOpenDialog;
    atv_Acept_Cancel: TActionToolBar;
    pdoxFacturas: TTable;
    dspdoxFacturas: TDataSource;
    pdoxFacturasNumero: TAutoIncField;
    pdoxFacturasProceso: TStringField;
    pdoxFacturasNombreClientes: TStringField;
    pdoxFacturasFecha: TDateField;
    pdoxFacturasHora: TTimeField;
    pdoxFacturasReferencia: TStringField;
    pdoxFacturasCliente: TIntegerField;
    pdoxFacturasPorcentaje: TSmallintField;
    pdoxFacturasSubTotal: TCurrencyField;
    pdoxFacturasTipoVenta: TStringField;
    pdoxFacturasTotalCosto: TCurrencyField;
    pdoxFacturasImpuesto: TSmallintField;
    pdoxFacturasDescuento: TCurrencyField;
    pdoxFacturasTotalNeto: TCurrencyField;
    pdoxFacturasComentario: TStringField;
    pdoxFacturasPagado: TCurrencyField;
    pdoxFacturasPendiente: TCurrencyField;
    pdoxFacturasCondicion: TStringField;
    pdoxFacturasCostoVentas: TCurrencyField;
    pdoxFacturasTotalServicios: TCurrencyField;
    pdoxFacturasTotalCortecia: TCurrencyField;
    pdoxFacturasTotalDanadas: TCurrencyField;
    pdoxFacturasTotalVentas: TCurrencyField;
    pdoxFacturasBloqueada: TBooleanField;
    pdoxFacturasEmpleado: TStringField;
    pdoxFacturasVendedor: TStringField;
    pdoxFacturasNumTarjeta: TStringField;
    pdoxFacturasNumCheque: TStringField;
    pdoxFacturasInicioPeriodo: TDateField;
    pdoxFacturasFinPeriodo: TDateField;
    pdoxFacturasBancoTarjeta: TIntegerField;
    pdoxFacturasBancoCheque: TIntegerField;
    pdoxFacturasValorImpuesto: TCurrencyField;
    pdoxFacturasTotalCantidad: TFloatField;
    pdoxFacturasTotalImpuesto: TCurrencyField;
    pdoxFacturasImpuestosDetalle: TCurrencyField;
    pdoxFacturasValorDescuento: TCurrencyField;
    pdoxFacturasTotalDescuentos: TCurrencyField;
    pdoxFacturasDescuentosDetalles: TCurrencyField;
    pdoxFacturasUsuario: TStringField;
    pdoxFacturasImpresa: TBooleanField;
    pdoxFacturasCanDelete: TBooleanField;
    pdoxFacturasTotalPagado: TCurrencyField;
    pdoxFacturasCuotas: TIntegerField;
    pdoxFacturasInicial: TCurrencyField;
    pdoxFacturasFormaPago: TStringField;
    pdoxFacturasVencimiento: TDateField;
    pdoxFacturasInteres: TFloatField;
    pdoxFacturasValorInteres: TCurrencyField;
    pdoxFacturasValorCapital: TCurrencyField;
    pdoxFacturasValorCuotas: TCurrencyField;
    pdoxFacturasTerminos: TIntegerField;
    pdoxFacturasDesbloqueada: TStringField;
    pdoxFacturasJustificacion: TStringField;
    pdoxFacturasMetodoPago: TIntegerField;
    pdoxFacturasValorPagado: TCurrencyField;
    pdoxFacturasTasa: TCurrencyField;
    pdoxFacturasRecibidoPesos: TCurrencyField;
    pdoxFacturasDevueltaPesos: TCurrencyField;
    pdoxFacturasTotalMoneda: TCurrencyField;
    pdoxFacturasDevolverMoneda: TCurrencyField;
    pdoxFacturasDevuelto: TCurrencyField;
    pdoxFacturasRecibido: TCurrencyField;
    pdoxFacturasMetodo2: TIntegerField;
    pdoxFacturasValor2: TCurrencyField;
    pdoxFacturasTasa2: TCurrencyField;
    pdoxFacturasMetodo3: TIntegerField;
    pdoxFacturasValor3: TCurrencyField;
    pdoxFacturasTasa3: TCurrencyField;
    pdoxFacturasMetodo4: TIntegerField;
    pdoxFacturasValor4: TCurrencyField;
    pdoxFacturasTasa4: TCurrencyField;
    pdoxFacturasDepartamento: TIntegerField;
    pdoxClientes: TTable;
    dspdoxClientes: TDataSource;
    pdoxClientesCodigo: TAutoIncField;
    pdoxClientesNombre: TStringField;
    pdoxClientesApellido: TStringField;
    pdoxClientesDireccion: TStringField;
    pdoxClientesCedula: TStringField;
    pdoxClientesSector: TStringField;
    pdoxClientesLimiteCredito: TCurrencyField;
    pdoxClientesLugarTrabajo: TStringField;
    pdoxClientesTelefono: TStringField;
    pdoxClientesBeeper: TStringField;
    pdoxClientesCelular: TStringField;
    pdoxClientesTelefonoTrabajo: TStringField;
    pdoxClientesStatus: TStringField;
    pdoxClientesCanDelete: TBooleanField;
    pdoxClientesFecha: TDateField;
    pdoxClientesComentarios: TMemoField;
    pdoxClientesUsuario: TStringField;
    Detalle_Facturas: TwwDBGrid;
    ActionToolBar1: TActionToolBar;
    Transferir_Facturas: TAction;
    pdoxInventarioOrientacion: TStringField;
    pdoxInventarioPosicion: TStringField;
    Mensajes: TStatusBar;
    Pendientes: TCheckBox;
    Proveedores: TAdvTabSheet;
    Detalles_Proveedores: TwwDBGrid;
    ActionToolBar2: TActionToolBar;
    pdoxProveedores: TTable;
    dspdoxProveedores: TDataSource;
    pdoxProveedoresCodigo: TAutoIncField;
    pdoxProveedoresNombre: TStringField;
    pdoxProveedoresContacto: TStringField;
    pdoxProveedoresDireccion: TStringField;
    pdoxProveedoresCuidad: TStringField;
    pdoxProveedoresPais: TStringField;
    pdoxProveedoresTelefono1: TStringField;
    pdoxProveedoresTelefono2: TStringField;
    pdoxProveedoresFax: TStringField;
    pdoxProveedoresStatus: TStringField;
    pdoxProveedoresCanDelete: TBooleanField;
    pdoxProveedoresUsuario: TStringField;
    Transferir_Proveedores: TAction;
    Table1: TTable;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    BooleanField1: TBooleanField;
    StringField10: TStringField;
    DataSource1: TDataSource;
    procedure Transferir_ProveedoresExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Transferir_InventarioExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
    procedure Transferir_FacturasExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FImportar: TFImportar;

implementation

uses DataModulo, Utilidades, Generales;

{$R *.dfm}

procedure TFImportar.FormCreate(Sender: TObject);
  Var
    I : Integer;
begin
  If _Load_Create Then
    Begin
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
        End;
    End; {If _Load_Create}
end;

procedure TFImportar.Transferir_InventarioExecute(Sender: TObject);
  Var N : Integer;
begin
  N := 0;
  If OpenTable.Execute Then
    Begin
        pdoxInventario.DatabaseName := ExtractFileDir(OpenTable.FileName);
        pdoxInventario.TableName := ExtractFileName(OpenTable.FileName);
        pdoxInventario.Open;
        Modulo.tProductos.Open;
        Modulo.tExistenciaInicial.Open;

        pdoxInventario.First;
        While Not pdoxInventario.Eof Do
          Try
            Inc (N);
            Modulo.tProductos.Append;
            Modulo.tProductosCodigo.AsString := pdoxInventarioCodigo.AsString;
            Modulo.tProductosAplica_Descuento.Value := True;
            Modulo.tProductosBarra.AsString := pdoxInventarioCodigo.AsString;
            Modulo.tProductosCategoria.AsInteger := pdoxInventarioRenglon.AsInteger;
            Modulo.tProductosCosto_Promedio.AsCurrency := pdoxInventarioPrecioCompra.AsCurrency;
            Modulo.tProductosCosto_Standar.AsCurrency := pdoxInventarioPrecioCompra.AsCurrency;
            Modulo.tProductosCuenta_Contable.AsString := '-';
            Modulo.tProductosDepartamento.AsInteger := pdoxInventarioDepartamento.AsInteger;

            Modulo.tProductosPresentacion.AsString := 'Unidad';
            Modulo.tProductosFabricante.AsInteger := 1;

            Modulo.tProductosNombre.AsString := Trim(pdoxInventarioClase.AsString);
            Modulo.tProductosModelo.AsString := Trim(pdoxInventarioModelo.AsString);
            Modulo.tProductosOrientacion.AsString := Trim(pdoxInventarioOrientacion.AsString);
            Modulo.tProductosPosicion.AsString := Trim(pdoxInventarioPosicion.AsString);
            Modulo.tProductosColor.AsString := Trim(pdoxInventarioColor.AsString);
            Modulo.tProductosMarca.AsString := Trim(pdoxInventarioMarca.AsString);
            Modulo.tProductosAno.AsInteger := 0;

            If (Trim(Modulo.tProductosDescripcion.AsString) = '') Or
               (Trim(Modulo.tProductosNombre.AsString) = '') Or
               (Length(Trim(Modulo.tProductosDescripcion.AsString)) < 6)  Then
              Modulo.tProductosDescripcion.AsString := pdoxInventarioDescripcion.AsString;

            Mensajes.SimpleText :=  IntToStr(N) + ': ' + Modulo.tProductosDescripcion.AsString;

            Modulo.tProductosFecha_Registro.AsDateTime := pdoxInventarioFecha.AsDateTime;
            Modulo.tProductosLector_Codigo.AsString := 'Código Principal';
            Modulo.tProductosMedida_Compra.AsString := pdoxInventarioUnidadCompra.AsString;
            Modulo.tProductosMedida_Venta.AsString := pdoxInventarioUnidadVenta.AsString;
            Modulo.tProductosMetodo_Calculo_Costo.AsString := 'Última Compra';
            Modulo.tProductosMinimo.AsFloat := pdoxInventarioMinimo.AsFloat;
            Modulo.tProductosPaga_Comision.AsBoolean := False;
            Modulo.tProductosPaga_Impuesto.AsBoolean := pdoxInventarioImpuesto.AsBoolean;
            Modulo.tProductosPrecio_Venta_Contado.AsCurrency := pdoxInventarioPrecioVenta.AsCurrency;
            Modulo.tProductosPrecio_Venta_Credito.AsCurrency := pdoxInventarioPrecioVentaCredito.AsCurrency;
            Modulo.tProductosPrecio_Venta_Minimo.AsCurrency := pdoxInventarioPrecioVentaMinimo.AsCurrency;
            Modulo.tProductosProveedor_Principal.AsInteger := pdoxInventarioProveedor.AsInteger;
            Modulo.tProductosReferencia.AsString := pdoxInventarioReferencia.AsString;
            Modulo.tProductosReorden.AsFloat := pdoxInventarioReorden.AsFloat;
            Modulo.tProductosRequiere_Fecha_Vencimiento.AsBoolean := False;
            Modulo.tProductosRequiere_Numero_Serie.AsBoolean := pdoxInventarioSerial.AsBoolean;
            Modulo.tProductosSecuencia.AsInteger := 0;
            If Trim(UpperCase(pdoxInventarioStatus.Value)) = 'ACTIVO' Then
              Modulo.tProductosStatus.Value := 1
            Else
              Modulo.tProductosStatus.Value := 2;
            Modulo.tProductosTipo_Beneficio.AsString := 'Libre';
            Modulo.tProductosTipo_Inventario.AsString := 'Regular';
            Modulo.tProductosTipo_Producto.AsInteger := 1;
            Modulo.tProductosUbicacion.AsString := pdoxInventarioLocalizacion.AsString;
            Modulo.tProductosUnidades_Medida_Compra.AsFloat := pdoxInventarioMedidaCompra.AsFloat;
            Modulo.tProductosUnidades_Medida_Venta.AsFloat := pdoxInventarioMedidaVenta.AsFloat;
            Modulo.tProductosUsuario.AsString := _CurrentUser;
            Modulo.tProductosValor_Beneficio_Contado.AsCurrency := 30;
            Modulo.tProductosValor_Beneficio_Credito.AsCurrency := 25;

            Modulo.tProductos.Post;
            Modulo.tProductos.ApplyUpdates(0);

            Modulo.tExistenciaInicial.Append;
            Modulo.tExistenciaInicialProceso.AsString := pdoxInventarioCodigo.AsString;
            Modulo.tExistenciaInicialFecha.AsDateTime := pdoxInventarioFecha.AsDateTime;
            Modulo.tExistenciaInicialCantidad.AsFloat := pdoxInventarioExistencia.AsFloat;
            Modulo.tExistenciaInicialCodigo.AsString := pdoxInventarioCodigo.AsString;
            Modulo.tExistenciaInicialCodigo_Real.AsString := pdoxInventarioCodigo.AsString;
            Modulo.tExistenciaInicialPrecio_Lista.AsCurrency := pdoxInventarioPrecioLista.AsCurrency;
            Modulo.tExistenciaInicialCosto.AsString := pdoxInventarioPrecioCompra.AsString;
            Modulo.tExistenciaInicialProveedor.AsInteger := pdoxInventarioProveedor.AsInteger;
            Modulo.tExistenciaInicialUsuario.AsString := _CurrentUser;
            Modulo.tExistenciaInicialPrecio_Venta_Por_Mayor_Contado.AsCurrency := pdoxInventarioPrecioVentaPorMayor.AsCurrency;
            Modulo.tExistenciaInicialPrecio_Venta_Por_Mayor_Credito.AsCurrency := pdoxInventarioPrecioVentaPMayorCredito.AsCurrency;
            Modulo.tExistenciaInicialPrecio_Venta_Detalle_Contado.AsCurrency := pdoxInventarioPrecioVenta.AsCurrency;
            Modulo.tExistenciaInicialPrecio_Venta_Detalle_Credito.AsCurrency := pdoxInventarioPrecioVentaCredito.AsCurrency;
            Modulo.tExistenciaInicialPrecio_Minimo.AsCurrency := pdoxInventarioPrecioVentaMinimo.AsCurrency;
            Modulo.tExistenciaInicial.Post;
            Modulo.tExistenciaInicial.ApplyUpdates(0);

            Mensajes.Refresh;
            Detalle_Inventario.Refresh;
            pdoxInventario.Next

         Except
            on E : Exception do
              Begin
                Mensaje('ERROR TRANSFIRIENDO DATOS ' + E.Message,self);
                Modulo.tProductos.Cancel;
                Modulo.tProductos.CancelUpdates;
                Self.Update;
                Self.Refresh;
                pdoxInventario.Next
              end;
         End // Try
    End // If

end;

procedure TFImportar.Transferir_ProveedoresExecute(Sender: TObject);
begin
  If OpenTable.Execute Then
    Begin
        pdoxProveedores.DatabaseName := ExtractFileDir(OpenTable.FileName);
        pdoxProveedores.TableName := ExtractFileName(OpenTable.FileName);

        pdoxProveedores.Open;
        Modulo.tProveedores.Open;

        pdoxProveedores.First;
        While Not pdoxProveedores.Eof Do
          Try
            Modulo.tProveedores.Append;
            Modulo.tProveedoresNombre.AsString := pdoxProveedoresNombre.AsString;

            Mensajes.SimpleText :=  Modulo.tProveedoresNombre.AsString;

            Modulo.tProveedoresCedula_Rnc_Pasaporte.AsString := 'Codigo : ' + Trim(pdoxProveedoresCodigo.AsString);
            Modulo.tProveedoresNumero.AsInteger := pdoxProveedoresCodigo.AsInteger;

            Modulo.tProveedoresCiudad.AsString := pdoxProveedoresCuidad.AsString;
            Modulo.tProveedoresDescuento_Asignado.AsCurrency := 0;
            Modulo.tProveedoresDireccion.AsString := pdoxProveedoresDireccion.AsString;
            Modulo.tProveedoresEstado.AsString := pdoxProveedoresCuidad.AsString;
            Modulo.tProveedoresFecha_Registro.AsDateTime := Modulo.Enlace.AppServer.ServerDate;
            Modulo.tProveedoresLimite_Credito.AsCurrency := 0;
            Modulo.tProveedoresNumero_Telefono_1.AsString := pdoxProveedoresTelefono1.AsString;
            Modulo.tProveedoresNumero_Telefono_2.AsString := pdoxProveedoresTelefono2.AsString;
            Modulo.tProveedoresNumero_Telefono_3.AsString := pdoxProveedoresFax.AsString;
            Modulo.tProveedoresNumero_Telefono_4.AsString := '-';
            Modulo.tProveedoresPais.AsString := pdoxProveedoresPais.AsString;
            Modulo.tProveedoresStatus.AsString := _stACTIVO;
            Modulo.tProveedoresTerminosFacturacion.AsInteger := 1;
            Modulo.tProveedoresTipo_Suplidor.AsString := 'Compañía';
            Modulo.tProveedoresTipo_Telefono_1.AsString := 'Resindencia';
            Modulo.tProveedoresTipo_Telefono_2.AsString := 'Celular';
            Modulo.tProveedoresTipo_Telefono_3.AsString := 'Fax';
            Modulo.tProveedoresTipo_Telefono_4.AsString := 'Otro';
            Modulo.tProveedoresContacto.AsString := pdoxProveedoresContacto.AsString;
            Modulo.tProveedores.Post;
            Modulo.tProveedores.ApplyUpdates(0);
            pdoxProveedores.Next;

            Mensajes.Refresh;
            Detalles_Proveedores.Refresh
          Except
            on E: Exception do
              Begin
                PopUpMessage(Modulo.Mensajes,'ERROR TRANSFIRIENDO DATOS ' + E.Message);
                Modulo.tProveedores.Cancel;
                Modulo.tProveedores.CancelUpdates;
                pdoxProveedores.Next;
                Self.Update;
                Self.Refresh
              End
          end;
        End;

end;

procedure TFImportar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Modulo.tTerminos.Close;
  pdoxInventario.Close;
  Modulo.tProductos.Close;
  Modulo.tExistenciaInicial.Close;
  pdoxClientes.Close;
  pdoxFacturas.Close;
  Modulo.tClientes.Close;
  Modulo.tFacturas.Close;
  pdoxProveedores.Close;
  Modulo.tProveedores.Close
end;

procedure TFImportar.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFImportar.Transferir_FacturasExecute(Sender: TObject);
  Var
    I : Integer;
begin
  I := 0;
  If OpenTable.Execute Then
    Begin
        pdoxFacturas.DatabaseName := ExtractFileDir(OpenTable.FileName);
        pdoxClientes.DatabaseName := ExtractFileDir(OpenTable.FileName);

        pdoxFacturas.TableName := ExtractFileName(OpenTable.FileName);

        pdoxFacturas.Open;
        pdoxClientes.Open;

        Modulo.tTerminos.Open;
        Modulo.tFacturas.Open;
        Modulo.tClientes.Open;
        Modulo.tFacturasCliente.OnValidate := Nil;
        pdoxFacturas.First;
        While Not pdoxFacturas.Eof Do
          Try
            If Not pdoxClientes.Locate('Codigo',pdoxFacturasCliente.Value,[]) Then
              Begin
                pdoxClientes.Locate('Codigo','1',[])
              end;

            Modulo.tClientes.Params.ParamByName('Cedula_Rnc_Pasaporte').AsString := pdoxClientesCedula.Value;

            If Trim(pdoxClientesCedula.Value) = '' Then
              Modulo.tClientes.Params.ParamByName('Cedula_Rnc_Pasaporte').AsString := Trim(pdoxClientesCodigo.AsString);

            Modulo.tClientes.Refresh;

            // Si no encuentra el cliente registrarlo
            If Modulo.tClientes.RecordCount <= 0 Then
              Begin
                Modulo.tClientes.Append;
                Modulo.tClientesApellido.AsString := pdoxClientesApellido.AsString;

                If Trim(pdoxClientesCedula.Value) = '' Then
                  Modulo.tClientesCedula_Rnc_Pasaporte.AsString := Trim(pdoxClientesCodigo.AsString)
                Else
                  Modulo.tClientesCedula_Rnc_Pasaporte.AsString := pdoxClientesCedula.AsString;

                Modulo.tClientesCiudad.AsString := 'La Romana';
                Modulo.tClientesCondicion_Cliente.AsString := 'Contado';
                Modulo.tClientesDescuento_Asignado.AsCurrency := 0;
                Modulo.tClientesDireccion.AsString := pdoxClientesDireccion.AsString;
                Modulo.tClientesEstado.AsString := 'La Romana';
                Modulo.tClientesFecha_Registro.AsDateTime := pdoxClientesFecha.AsDateTime;
                Modulo.tClientesLimite_Credito.AsCurrency := pdoxClientesLimiteCredito.AsCurrency;
                Modulo.tClientesNombre.AsString := pdoxClientesNombre.AsString;
                Modulo.tClientesNumero_Telefono_1.AsString := pdoxClientesTelefono.AsString;
                Modulo.tClientesNumero_Telefono_2.AsString := pdoxClientesCelular.AsString;
                Modulo.tClientesNumero_Telefono_3.AsString := pdoxClientesTelefonoTrabajo.AsString;
                Modulo.tClientesNumero_Telefono_4.AsString := pdoxClientesBeeper.AsString;
                Modulo.tClientesPais.AsString := 'Rep. Dom.';
                Modulo.tClientesStatus.AsString := _stACTIVO;
                Modulo.tClientesTerminosFacturacion.AsInteger := 1;
                Modulo.tClientesTipo_Cliente.AsString := 'Persona';
                Modulo.tClientesTipo_Telefono_1.AsString := 'Resindencia';
                Modulo.tClientesTipo_Telefono_2.AsString := 'Celular';
                Modulo.tClientesTipo_Telefono_3.AsString := 'Trabajo';
                Modulo.tClientesTipo_Telefono_4.AsString := 'Otro';
                Modulo.tClientes.Post;
                Modulo.tClientes.ApplyUpdates(0)
              End;


            If (pdoxFacturasPendiente.AsCurrency <> 0) Or (Not Pendientes.Checked) Then
              Begin
                Dec(I);
                Modulo.tFacturas.Append;
                Modulo.tFacturasCliente.AsString := Modulo.tClientesCedula_Rnc_Pasaporte.Value;
                Modulo.tFacturasComentario.AsString := pdoxFacturasComentario.AsString;
                Modulo.tFacturasConcepto_Factura.AsString := 'Factura # ' +
                                                             pdoxFacturasNumero.AsString + ' de ' +
                                                             pdoxFacturasNombreClientes.AsString;
                Modulo.tFacturasCondicion.AsString := pdoxFacturasCondicion.AsString;
                Modulo.tFacturasDescuento_Global.AsCurrency := pdoxFacturasDescuento.AsCurrency;
                Modulo.tFacturasFecha.AsDateTime := pdoxFacturasFecha.AsDateTime;
                Modulo.tFacturasHora.AsDateTime := pdoxFacturasHora.AsDateTime;
                Modulo.tFacturasImpuesto_Global.AsCurrency := pdoxFacturasImpuesto.AsCurrency;
                Modulo.tFacturasNombre_Cliente.AsString := pdoxClientesNombre.AsString + ' ' + pdoxClientesApellido.AsString;
                Modulo.tFacturasNumero.AsInteger := I;
                Modulo.tFacturasPendiente.AsCurrency := pdoxFacturasPendiente.AsCurrency;
                Modulo.tFacturasProceso.AsString := pdoxFacturasNumero.AsString;
                Modulo.tFacturasSubTotal.AsCurrency := pdoxFacturasSubTotal.AsCurrency;
                Modulo.tFacturasTerminos.AsInteger := pdoxFacturasTerminos.AsInteger;
                Modulo.tFacturasTotalNeto.AsCurrency := pdoxFacturasTotalNeto.AsCurrency;
                Modulo.tFacturasTotal_Costo.AsCurrency := pdoxFacturasTotalCosto.AsCurrency;
                Modulo.tFacturasTotal_Descuento.AsCurrency := pdoxFacturasTotalDescuentos.AsCurrency;
                Modulo.tFacturasTotal_Impuesto.AsCurrency := pdoxFacturasTotalImpuesto.AsCurrency;
                Modulo.tFacturasUsuario.AsString := _CurrentUser;
                Modulo.tFacturasTotal_Restante.AsCurrency := pdoxFacturasPendiente.AsCurrency;
                Modulo.tFacturasPagado.AsCurrency := pdoxFacturasPagado.AsCurrency;
                Modulo.tFacturasPendiente.AsCurrency := pdoxFacturasPendiente.AsCurrency;

                Mensajes.SimpleText :=  Modulo.tFacturasConcepto_Factura.AsString;

                Modulo.tFacturas.Post;
                Modulo.tFacturas.ApplyUpdates(0)
              End;

            Mensajes.Refresh;
            Detalle_Facturas.Refresh;

            pdoxFacturas.Next
         Except
            on E: Exception do
              Begin
                PopUpMessage(Modulo.Mensajes,'ERROR TRANSFIRIENDO DATOS ' + E.Message);
                Modulo.tClientes.Cancel;
                Modulo.tClientes.CancelUpdates;
                Modulo.tFacturas.Cancel;
                Modulo.tFacturas.CancelUpdates;
                pdoxFacturas.Next;
                Self.Update;
                Self.Refresh
              End
         End // Try
    End; // If

end;

Initialization
  RegisterClass(TFImportar);

end.
