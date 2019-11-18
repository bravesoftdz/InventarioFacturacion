unit Empleados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ActnColorMaps, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker,
  wwclearbuttongroup, wwradiogroup, wwriched, Grids, Wwdbigrd, Wwdbgrid, JPeg;

type
  TFEmpleados = class(TForm)
    ColorConfig: TXPColorMap;
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Eliminar: TAction;
    Barra_Menu: TActionMainMenuBar;
    Agregar_Modificar_Garantia: TAction;
    Label1: TLabel;
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
    Label5: TLabel;
    Numero_Tarjeta: TDBEdit;
    Label6: TLabel;
    Numero_Cuenta: TDBEdit;
    Label9: TLabel;
    Sexo: TwwDBComboBox;
    Bt_Opcionales: TActionToolBar;
    Editar_Compania: TAction;
    Detalle_Laboral: TwwDBGrid;
    FOTO: TImage;
    Shape1: TShape;
    Label10: TLabel;
    Agregar_Foto: TAction;
    Label11: TLabel;
    Codigo_Banco: TDBEdit;
    Panel_Botones: TAdvPageControl;
    Pg_Botones: TAdvTabSheet;
    Botones: TActionToolBar;
    procedure Editar_CompaniaExecute(Sender: TObject);
    procedure Agregar_FotoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EliminarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure Agregar_Modificar_GarantiaExecute(Sender: TObject);
    procedure Cedula_PasaporteExit(Sender: TObject);
  private
    { Private declarations }
    _CanClose : Boolean;
  public
    { Public declarations }
  end;

var
  FEmpleados : TFEmpleados;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, Anadir_Compania, DataNomina, RegKeys,
  Generales;

{$R *.dfm}

procedure TFEmpleados.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Configuracion de la Pantalla}
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
      ColorConfig.Color := Color - 5;

      {Activar Los Permisos del Usuario}
    //  ActivateOptions(Sender,_CurrentLevel,ModuloNomina.tAccesos);

      {Abrir los Datasets Requeridos por esta pantalla}
      _CanClose := Not (ModuloNomina.tEmpleados.Active);
      ModuloNomina.tEmpleados.Open;
      ModuloNomina.tCompania.Open;
      ModuloNomina.tDepartamentos.Open;
      ModuloNomina.tListado_Grupo_Nomina.Open;
      ParamSearchKey(ModuloGenerales.tListado_Paises,'Status',_stACTIVO);
    {  ModuloNomina.tListado_Paises.Open;
      ModuloNomina.tCiudades.Open;
      ModuloNomina.tZonas.Open;
      ModuloNomina.tSectores.Open;}


      {Insertar Registro en Blanco}
      Nuevo.Execute
    End; {If _Load_Create}
end;

procedure TFEmpleados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {Cerrar las Tablas Requeridas}
  If _CanClose Then
    Begin
      ModuloNomina.tCompania.Close;
      ModuloNomina.tDepartamentos.Close;
      ModuloNomina.tListado_Grupo_Nomina.Close;
      ModuloNomina.tEmpleados.Close;
      ModuloGenerales.tSectores.Close;
      ModuloGenerales.tCiudades.Close;
      ModuloGenerales.tListado_Paises.Close
    End
end;

procedure TFEmpleados.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFEmpleados.NuevoExecute(Sender: TObject);
begin
  If ModuloNomina.tEmpleados.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
  ModuloNomina.tEmpleados.Cancel;
  ModuloNomina.tEmpleados.Append;


  ModuloNomina.tEmpleadosRegistrado_En_Fecha.Value := Modulo.Enlace.AppServer.ServerDate;

  Foto.Picture.LoadFromFile(_DefaultClientImg);

  If Self.Visible And _MoveFocus Then
    Begin
      Cedula_Pasaporte.SetFocus;
      Cedula_Pasaporte.Clear;
    End;

end;

procedure TFEmpleados.GuardarExecute(Sender: TObject);
begin
  If ModuloNomina.tEmpleados.State In DsEditModes Then
      ModuloNomina.tEmpleados.Post;

  If ModuloNomina.tEmpleados.ChangeCount > 0 Then
    ModuloNomina.tEmpleados.ApplyUpdates(0);

  ModuloNomina.tEmpleados.Refresh;

  Nuevo.Execute;

  PopupMessage(Modulo.Mensajes,_DatosGuardados)
end;

procedure TFEmpleados.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFEmpleados.Editar_CompaniaExecute(Sender: TObject);
begin
  ModuloNomina.tCompania.Locate('Numero_Compania',ModuloNomina.tInformacion_LaboralCompania.Value,[]);
  ModuloNomina.Filtrar_Departamentos(ModuloNomina.tDepartamentosCompania);
  Application.CreateForm(TFAnadirCompania,FAnadirCompania);
  FAnadirCompania.Anadir.Caption := 'Guardar';
  FAnadirCompania.Anadir.ImageIndex := 0;
  FAnadirCompania.ShowModal;
  FAnadirCompania.Free;
  ModuloNomina.tDepartamentos.Filtered := False
end;

procedure TFEmpleados.EliminarExecute(Sender: TObject);
begin
  If Trim(ModuloNomina.tEmpleadosNombreCompleto.Value) <> '' Then
    Begin
      If Application.MessageBox(PChar(_ConfirmarEliminar),
                                PChar(Eliminar.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
      ModuloNomina.tEmpleados.Delete
    End;

  If ModuloNomina.tEmpleados.ChangeCount > 0 Then
    ModuloNomina.tEmpleados.ApplyUpdates(0);

  ModuloNomina.tEmpleados.Refresh;
  Nuevo.Execute;

  ShowMessage(_DatosEliminados)
end;

procedure TFEmpleados.BuscarExecute(Sender: TObject);
  Var
    R : Integer;
    S : String;
begin
  S := DoSearch(Nil,
                'Empleados',                                          (* TableName *)
                'SrchPr',                                         (* Provider *)
                ModuloNomina.tEmpleadosCedula_Rnc_Pasaporte.FieldName, (* CampoClave *)
                ModuloNomina.tEmpleadosNombreCompleto.FieldName,      (* CampoInicial *)
                '',      (* AltQry *)
                ModuloNomina.Enlace,                                   (* RemoteServer *)
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

procedure TFEmpleados.Agregar_FotoExecute(Sender: TObject);
  Begin
    If Not(ModuloNomina.tEmpleados.State In DsEditModes) Then ModuloNomina.tEmpleados.Edit;
     AgregarFoto(ModuloNomina.tEmpleadosFoto,Foto)
end;

procedure TFEmpleados.Agregar_Modificar_GarantiaExecute(Sender: TObject);
begin
  ModuloNomina.tInformacion_Laboral.Append;
  OpenForm(TFAnadirCompania,FAnadirCompania);
end;

procedure TFEmpleados.Cedula_PasaporteExit(Sender: TObject);
  Var
    SearchResult : Integer;
begin
  SearchResult := SearchCustomer(Cedula_Pasaporte.Text);

  If SearchResult = _CodeNotFound Then
    Begin
      _MoveFocus := False;
      NuevoExecute(Sender);
      _MoveFocus := True;

      ModuloNomina.tEmpleadosCedula_RNC_Pasaporte.Value := Trim(Cedula_Pasaporte.Text)
    End;

  FOTOLoadAndDisplay(ModuloNomina.tEmpleadosFoto,FOTO,_DefaultClientImg)
end;

Initialization
  RegisterClass(TFEmpleados);

end.
