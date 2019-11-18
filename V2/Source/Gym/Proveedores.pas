unit Proveedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, RegKeys;

type
  TFProveedores = class(TForm)
    Barra_Menu: TActionMainMenuBar;
    Panel_Botones: TAdvPageControl;
    Pg_Botones: TAdvTabSheet;
    Botones: TActionToolBar;
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Eliminar: TAction;
    Anadir_Terminos: TAction;
    Panel_Datos_Generales: TAdvPageControl;
    Pgl_Datos_Generales: TAdvTabSheet;
    LID: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label35: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    bt_Anadir_Terminos: TSpeedButton;
    Nombres: TDBEdit;
    Contacto: TDBEdit;
    Secuencia: TDBEdit;
    Direccion: TDBEdit;
    Telefono_Principal: TDBEdit;
    Telefono_Secundario: TDBEdit;
    Telefono_Tercero: TDBEdit;
    Telefono_Cuarto: TDBEdit;
    email: TDBEdit;
    Tipo_Telefono_Principal: TwwDBComboBox;
    Tipo_Telefono_Tercero: TwwDBComboBox;
    Tipo_Telefono_Secundario: TwwDBComboBox;
    Tipo_Telefono_Cuarto: TwwDBComboBox;
    Pais: TwwDBLookupCombo;
    Sector: TwwDBLookupCombo;
    Ciudad_Estado: TwwDBLookupCombo;
    Cedula_Pasaporte: TEdit;
    Zonas: TwwDBLookupCombo;
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
    Shape1: TShape;
    FOTO: TImage;
    Label22: TLabel;
    Label34: TLabel;
    Label23: TLabel;
    Label7: TLabel;
    Tipo_Proveedor: TwwDBComboBox;
    Agregar_Foto: TAction;
    Estado_Cuentas: TAction;
    Cuentas_Pagar: TAction;
    bt_Editar_Paises_Ciudades_Sectores_Zonas: TSpeedButton;
    Editar_Paises_Ciudades_Sectores_Zonas: TAction;
    procedure FormCreate(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EliminarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure Anadir_TerminosExecute(Sender: TObject);
    procedure Cedula_PasaporteExit(Sender: TObject);
    procedure Agregar_FotoExecute(Sender: TObject);
    procedure bt_Anadir_TerminosClick(Sender: TObject);
    procedure Condicion_FacturasChange(Sender: TObject);
    procedure Editar_Paises_Ciudades_Sectores_ZonasExecute(Sender: TObject);
    procedure PaisExit(Sender: TObject);
    procedure Ciudad_EstadoExit(Sender: TObject);
  private
    { Private declarations }
    _CanClose         : Boolean;
    _CanCloseTerminos : Boolean;
  public
    { Public declarations }
  end;

var
  FProveedores : TFProveedores;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, Terminos, Generales,
  Paises_Ciudades_Sectores_ZonasUnit;

{$R *.dfm}

procedure TFProveedores.FormCreate(Sender: TObject);
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

      _CanClose := Not (Modulo.tProveedores.Active);
      _CanCloseTerminos := Not (Modulo.tTerminos.Active);
      ModuloGenerales.tListado_Paises.Open;
      ModuloGenerales.tCiudades.Open;
      ModuloGenerales.tSectores.Open;
      ModuloGenerales.tZonas.Open;
      Modulo.tTerminos.Open;
      Modulo.tProveedores.Open;

      {Insertar Registro en Blanco}
      Nuevo.Execute
    End
    {If _Load_Create}
end;

procedure TFProveedores.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFProveedores.NuevoExecute(Sender: TObject);
begin
  If Modulo.tProveedores.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
  Modulo.tProveedores.Cancel;
  Modulo.tProveedores.Append;


  Modulo.tProveedoresFecha_Registro.Value := Modulo.Enlace.AppServer.ServerDate;

  Foto.Picture.LoadFromFile(_DefaultClientImg);

  If Self.Visible And _MoveFocus Then
    Begin
      Cedula_Pasaporte.SetFocus;
      Cedula_Pasaporte.Clear
    End
end;

procedure TFProveedores.PaisExit(Sender: TObject);
begin
  ModuloGenerales.tListado_PaisesAfterRefresh(ModuloGenerales.tListado_Paises);
//  ModuloGenerales.LoadSector_Zones(ModuloGenerales.tCiudades)
end;

procedure TFProveedores.GuardarExecute(Sender: TObject);
  Var
    ActualCode : Longint;
begin
  ActualCode := Modulo.tProveedoresNumero.Value;

  If Modulo.tProveedores.State In DsEditModes Then
    Modulo.tProveedores.Post;

  If Modulo.tProveedores.ChangeCount > 0 Then
    Modulo.tProveedores.ApplyUpdates(0);

  If ActualCode = 0  Then ActualCode := Modulo.Enlace.AppServer.LastTableCode('Proveedores');

  _LastCode := ActualCode;

  Modulo.tProveedores.Refresh;

  Nuevo.Execute;

  PopUpMessage(Modulo.Mensajes,_DatosGuardados)
end;

procedure TFProveedores.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFProveedores.Editar_Paises_Ciudades_Sectores_ZonasExecute(
  Sender: TObject);
begin
  OpenForm(TfrmPaises_Ciudades_Sectores_Zonas,frmPaises_Ciudades_Sectores_Zonas);
  ModuloGenerales.tListado_Paises.Refresh
end;

procedure TFProveedores.EliminarExecute(Sender: TObject);
begin
  If Modulo.tProveedoresNumero.Value > 0 Then
    Begin
      If Application.MessageBox(PChar(_ConfirmarEliminar),
                                PChar(Eliminar.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
      Modulo.tProveedores.Delete
    End;

  If Modulo.tProveedores.ChangeCount > 0 Then
    Modulo.tProveedores.ApplyUpdates(0);

  Modulo.tProveedores.Refresh;
  Nuevo.Execute;

  PopUpMessage(Modulo.Mensajes,_DatosEliminados)
end;

procedure TFProveedores.BuscarExecute(Sender: TObject);
  Var
    R : Integer;
    S : String;
begin
  S := DoSearch(Nil,
                'Proveedores',                                          (* TableName *)
                'SrchPr',                                         (* Provider *)
                Modulo.tProveedoresCedula_RNC_Pasaporte.FieldName, (* CampoClave *)
                Modulo.tProveedoresNombreCompleto.FieldName,      (* CampoInicial *)
                '',      (* AltQry *)
                Modulo.Enlace,                                   (* RemoteServer *)
                'A',                                                              (* SortOrder *)
                -1,                                                               (* Packet Records *)
                wsMaximized,
                R);
  If R = MrOk Then
    Begin
       ModuloGenerales.tCiudades.Locate(ModuloGenerales.tCiudadesSerie_Codigo.FieldName,
                                        S,
                                        [])

{      Cedula_Rnc_Pasaporte.Text := S;
      Cedula_Rnc_PasaporteExit(Cedula_Rnc_Pasaporte);
      CommentTypeFilter(GenericDataModule.tComentarios,True,chk_MostrarHistorial.Checked,chk_MostrarSistema.Checked);
      ValidateEmptyField(Self,Apellido);
      UpdateInfoBoard(InfoBoard,
                      'Buscar',
                      'Cargados los datos de ' + LowerCase(_Tipo_Relacion),
                      Buscar_Registro.ImageIndex,
                      clGreen,
                      clWindowText)}
    End

end;

procedure TFProveedores.Agregar_FotoExecute(Sender: TObject);
  Begin
    Modulo.tProveedores.Edit;
    AgregarFoto(Modulo.tProveedoresFoto,Foto)
  end;

procedure TFProveedores.Cedula_PasaporteExit(Sender: TObject);
  Var
    SearchResult : Integer;
begin
  SearchResult := ListSearchKey(Modulo.tProveedores,'Cedula_Rnc_Pasaporte',Cedula_Pasaporte.Text);

  If SearchResult = _CodeNotFound Then
    Begin
      _MoveFocus := False;
      NuevoExecute(Sender);
      _MoveFocus := True;

      Modulo.tProveedoresCedula_RNC_Pasaporte.Value := Trim(Cedula_Pasaporte.Text);
    End;

  FOTOLoadAndDisplay(Modulo.tProveedoresFoto,FOTO,_DefaultClientImg)
end;

procedure TFProveedores.Ciudad_EstadoExit(Sender: TObject);
begin
//  ModuloGenerales.LoadSector_Zones(ModuloGenerales.tCiudades)
end;

procedure TFProveedores.Condicion_FacturasChange(Sender: TObject);
  Var
    T : Integer;
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,False);

  Terminos_Facturacion.Enabled := Condicion_Facturas.ItemIndex = 1;
  T := RegInfo.ReadInteger(_TerminosCredito);
  If (Modulo.tProveedores.State In DsEditModes) Then
    Case Condicion_Facturas.ItemIndex Of
      0 : Modulo.tProveedoresTerminosFacturacion.Value :=  Modulo.tParametrosTermino_COD.Value;
      1 : Modulo.tProveedoresTerminosFacturacion.Value :=  T;
      2 : Modulo.tProveedoresTerminosFacturacion.Value :=  Modulo.tParametrosTermino_Financiado.Value;
    End; {Case}

  If Terminos_Facturacion.Enabled And Self.Visible Then
    Terminos_Facturacion.SetFocus
end;

procedure TFProveedores.Anadir_TerminosExecute(Sender: TObject);
begin
  OpenForm(TFTerminos,FTerminos)
end;

procedure TFProveedores.bt_Anadir_TerminosClick(Sender: TObject);
begin
  Anadir_Terminos.Execute
end;

Initialization
  RegisterClass(TFProveedores);

  end.
