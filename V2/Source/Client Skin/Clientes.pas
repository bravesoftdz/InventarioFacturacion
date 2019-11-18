unit Clientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ActnColorMaps, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, ppTypes,
  wwclearbuttongroup, wwradiogroup, wwriched, Grids, Wwdbigrd, Wwdbgrid, JPeg,
  RegKeys;

type
  TFClientes = class(TForm)
    Barra_Menu: TActionMainMenuBar;
    Panel_Botones: TAdvPageControl;
    Pg_Botones: TAdvTabSheet;
    Botones: TActionToolBar;
    Panel_Datos_Generales: TAdvPageControl;
    Pg_Datos_Generales: TAdvTabSheet;
    Shape1: TShape;
    LID: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label9: TLabel;
    FOTO: TImage;
    Label10: TLabel;
    Label12: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Nombres: TDBEdit;
    Apellidos: TDBEdit;
    Tipo_Cliente: TDBRadioGroup;
    Secuencia: TDBEdit;
    Direccion_Local: TDBEdit;
    Telefono_Principal: TDBEdit;
    Telefono_Secundario: TDBEdit;
    Telefono_Tercero: TDBEdit;
    Telefono_Cuarto: TDBEdit;
    email: TDBEdit;
    Tipo_Telefono_Principal: TwwDBComboBox;
    Tipo_Telefono_Tercero: TwwDBComboBox;
    Tipo_Telefono_Secundario: TwwDBComboBox;
    Tipo_Telefono_Cuarto: TwwDBComboBox;
    Fecha_Nacimiento: TwwDBDateTimePicker;
    Pais: TwwDBLookupCombo;
    Sector: TwwDBLookupCombo;
    Ciudad_Estado: TwwDBLookupCombo;
    Cedula_Pasaporte: TEdit;
    Estado_Civil: TwwDBComboBox;
    Sexo: TwwDBComboBox;
    Zonas: TwwDBLookupCombo;
    Nacionalidad: TwwDBComboBox;
    Lugar_Trabajo: TwwDBComboBox;
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Eliminar: TAction;
    Estado_Cuenta: TAction;
    Agregar_Foto: TAction;
    Label11: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    bt_Anadir_Terminos: TSpeedButton;
    Status: TwwDBComboBox;
    Fecha_Registro: TwwDBDateTimePicker;
    Limite_Credito: TDBEdit;
    Tarjeta_Numero: TDBEdit;
    Descuento_Asignado: TDBEdit;
    Balance: TDBEdit;
    Ultima_Factura: TDBEdit;
    Condicion_Facturas: TwwDBComboBox;
    Separador_Facturacion: TGroupBox;
    Separador_Historico: TGroupBox;
    Cuenta_Numero: TDBEdit;
    Fecha_Ultima_Factura: TwwDBComboBox;
    Terminos_Facturacion: TwwDBLookupCombo;
    Agregar_Terminos_Facturacion: TAction;
    Cuentas_Cobrar: TAction;
    bt_Editar_Paises_Ciudades_Sectores_Zonas: TSpeedButton;
    Nota_Credito: TAction;
    Nota_Debito: TAction;
    procedure Estado_CuentaExecute(Sender: TObject);
    procedure Agregar_Terminos_FacturacionExecute(Sender: TObject);
    procedure Agregar_FotoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EliminarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure Cedula_PasaporteExit(Sender: TObject);
    procedure PaisExit(Sender: TObject);
    procedure Condicion_FacturasChange(Sender: TObject);
    procedure Cuentas_CobrarExecute(Sender: TObject);
    procedure Nota_CreditoExecute(Sender: TObject);
  private
    { Private declarations }
    _CanClose : Boolean;
  public
    { Public declarations }
  end;

var
  FClientes : TFClientes;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, Reports_Forms, Generales, Terminos,
  CtasCobrar, NotasCredito;

{$R *.dfm}

procedure TFClientes.FormCreate(Sender: TObject);
  Var
    I : Integer;
begin
  If _Load_Create Then
    Begin
      {Configuracion de la Pantalla}
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

      {Abrir los Datasets Requeridos por esta pantalla}
      Modulo.tParametros.Params.ParamByName('Terminal').AsString := _CurrentTerminal;
      Modulo.tParametros.Open;

      _CanClose := Not (Modulo.tClientes.Active);
      Modulo.tClientes.Open;
      Modulo.tTerminos.Open;
      ParamSearchKey(ModuloGenerales.tListado_Paises,'Status',_stACTIVO);
      ModuloGenerales.tCiudades.Open;
      ModuloGenerales.tSectores.Open;
      ModuloGenerales.tZonas.Open;

      {Insertar Registro en Blanco}
      Nuevo.Execute
    End; {If _Load_Create}
end;

procedure TFClientes.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFClientes.Nota_CreditoExecute(Sender: TObject);
begin
  Try
    GuardarExecute(Cuentas_Cobrar);
    _Cliente := Modulo.tClientesCedula_Rnc_Pasaporte.AsString;
    OpenForm(TFNotas_Credito,FNotas_Credito)
  Finally
    _Cliente := ''
  End
end;

procedure TFClientes.NuevoExecute(Sender: TObject);
begin
  If Modulo.tClientes.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
  Modulo.tClientes.Cancel;
  Modulo.tClientes.Append;


  Modulo.tClientesFecha_Registro.Value := Modulo.Enlace.AppServer.ServerDate;

  Foto.Picture.LoadFromFile(_DefaultClientImg);

  If Self.Visible And _MoveFocus Then
    Begin
      Cedula_Pasaporte.SetFocus;
      Cedula_Pasaporte.Clear
    End

end;

procedure TFClientes.PaisExit(Sender: TObject);
begin
  ModuloGenerales.tListado_PaisesAfterRefresh(ModuloGenerales.tListado_Paises);
  ModuloGenerales.TPaises.Close;
  ModuloGenerales.TPaises.Params.ParamByName('Iso_3_Char').AsString := ModuloGenerales.tListado_PaisesIso_3_Char.AsString;
  ModuloGenerales.TPaises.Open;
end;

procedure TFClientes.GuardarExecute(Sender: TObject);
  Var
    ActualCode   : String;
begin
  If Modulo.tClientes.State In DsEditModes Then
      Modulo.tClientes.Post;

  ActualCode := Modulo.tClientesCedula_RNC_Pasaporte.Value;

  If Modulo.tClientes.ChangeCount > 0 Then
    Modulo.tClientes.ApplyUpdates(0);

  Modulo.tClientes.Refresh;

  If (Sender as TAction).Name = Guardar.Name Then Nuevo.Execute;
  
  PopUpMessage(Modulo.Mensajes,_DatosGuardados)
end;

procedure TFClientes.FormKeyDown(Sender: TObject; var Key: Word;
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
      End
  End {Case}
end;

procedure TFClientes.EliminarExecute(Sender: TObject);
begin
  If Trim(Modulo.tClientesNombreCompleto.Value) <> '' Then
    Begin
      If Application.MessageBox(PChar(_ConfirmarEliminar),
                                PChar(Eliminar.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
      Modulo.tClientes.Delete
    End;

  If Modulo.tClientes.ChangeCount > 0 Then
    Modulo.tClientes.ApplyUpdates(0);

  Modulo.tClientes.Refresh;
  Nuevo.Execute;

  ShowMessage(_DatosEliminados)
end;

procedure TFClientes.Estado_CuentaExecute(Sender: TObject);
begin
  If Modulo.tClientes.RecordCount > 0 Then
    Try
      Modulo.tFacturas_Cliente.Cancel;
      Modulo.tFacturas_Cliente.Close;
      Modulo.tFacturas_Cliente.Params.ParamByName('Cliente').AsString := Trim(Modulo.tClientesCedula_Rnc_Pasaporte.AsString);
      Modulo.tFacturas_Cliente.Open;

      Modulo.tPagos_Clientes.Cancel;
      Modulo.tPagos_Clientes.Close;
      Modulo.tPagos_Clientes.Params.ParamByName('Cliente').AsString := Trim(Modulo.tClientesCedula_Rnc_Pasaporte.AsString);
      Modulo.tPagos_Clientes.Open;
      Modulo.tPagos_Clientes.Filter := 'Status <> ' + QuotedStr(_stANULADO);
      Modulo.tPagos_Clientes.Filtered := True;

      Modulo.tNotas_Credito.Cancel;
      Modulo.tNotas_Credito.Close;
      Modulo.tNotas_Credito.Params.ParamByName('Cliente').AsString := Trim(Modulo.tClientesCedula_Rnc_Pasaporte.AsString);
      Modulo.tNotas_Credito.Open;
      Modulo.tNotas_Credito.Filter := 'Status <> ' + QuotedStr(_stANULADO);
      Modulo.tNotas_Credito.Filtered := True;

      ReportsAndForms.Estado_Cuenta_Clientes.Print;
    Finally
      Modulo.tNotas_Credito.Filter := '';
      Modulo.tNotas_Credito.Filtered := False;

      Modulo.tPagos_Clientes.Filter := '';
      Modulo.tPagos_Clientes.Filtered := False;

      Modulo.tFacturas_Cliente.Params.ParamByName('Cliente').Clear;

      Modulo.tPagos_Clientes.Params.ParamByName('Cliente').Clear;

      Modulo.tNotas_Credito.Params.ParamByName('Cliente').Clear
    End
end;

procedure TFClientes.Agregar_Terminos_FacturacionExecute(Sender: TObject);
begin
  OpenForm(TFTerminos,FTerminos)
end;

procedure TFClientes.BuscarExecute(Sender: TObject);
  Var
    R : Integer;
    S : String;
begin
  S := DoSearch(Nil,
                'Clientes',                                          (* TableName *)
                'SrchPr',                                         (* Provider *)
                Modulo.tClientesCedula_Rnc_Pasaporte.FieldName, (* CampoClave *)
                Modulo.tClientesNombreCompleto.FieldName,      (* CampoInicial *)
                '',      (* AltQry *)
                Modulo.Enlace,                                   (* RemoteServer *)
                'A',                                                              (* SortOrder *)
                -1,                                                               (* Packet Records *)
                wsMaximized,
                R);
  If R = MrOk Then
    Begin
           Cedula_Pasaporte.Text := S;
           Cedula_PasaporteExit(Sender)
    End
end;

procedure TFClientes.Agregar_FotoExecute(Sender: TObject);
  Begin
    Modulo.tClientes.Edit;
    AgregarFoto(Modulo.tClientesFoto,Foto)
  end;

procedure TFClientes.Cedula_PasaporteExit(Sender: TObject);
  Var
    SearchResult : Integer;
    Tipo_ID      : String;
begin
  Tipo_ID := Modulo.tClientesTipo_Cliente.Value;
  SearchResult := ParamSearchKey(Modulo.tClientes,'Cedula_Rnc_Pasaporte',Cedula_Pasaporte.Text);

  If SearchResult = _CodeNotFound Then
    Begin
      _MoveFocus := False;
      NuevoExecute(Sender);
      _MoveFocus := True;

      Modulo.tClientesCedula_RNC_Pasaporte.Value := Trim(Cedula_Pasaporte.Text);
      Modulo.tClientesTipo_Cliente.Value := Trim(Tipo_ID)
    End;

  PaisExit(sender);
  FOTOLoadAndDisplay(Modulo.tClientesFoto,FOTO,_DefaultClientImg)
end;

procedure TFClientes.Condicion_FacturasChange(Sender: TObject);
  Var
    T : Integer;
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,False);

  Terminos_Facturacion.Enabled := Condicion_Facturas.ItemIndex = 1;
  T := RegInfo.ReadInteger(_TerminosCredito);
  If (Modulo.tClientes.State In DsEditModes) Then
    Case Condicion_Facturas.ItemIndex Of
      0 : Modulo.tClientesTerminosFacturacion.Value :=  Modulo.tParametrosTermino_COD.Value;
      1 : Modulo.tClientesTerminosFacturacion.Value :=  T;
      2 : Modulo.tClientesTerminosFacturacion.Value :=  Modulo.tParametrosTermino_Financiado.Value;
    End; {Case}

  If Terminos_Facturacion.Enabled And Self.Visible Then
    Terminos_Facturacion.SetFocus
end;

procedure TFClientes.Cuentas_CobrarExecute(Sender: TObject);
begin
  Try
    GuardarExecute(Cuentas_Cobrar);
    _Cliente := Modulo.tClientesCedula_Rnc_Pasaporte.AsString;
    OpenForm(TFCtas_Cobrar,FCtas_Cobrar)
  Finally
    _Cliente := ''
  End
end;

Initialization
  RegisterClass(TFClientes);

end.
