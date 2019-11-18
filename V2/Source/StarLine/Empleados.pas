unit Empleados;

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
  TFEmpleados = class(TForm)
    Barra_Menu: TActionMainMenuBar;
    Panel_Botones: TAdvPageControl;
    Pg_Botones: TAdvTabSheet;
    Botones: TActionToolBar;
    Panel_Datos_Generales: TAdvPageControl;
    Pg_Datos_Generales: TAdvTabSheet;
    Shape1: TShape;
    LID: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label9: TLabel;
    FOTO: TImage;
    Label10: TLabel;
    Label12: TLabel;
    Nombres: TDBEdit;
    Apellidos: TDBEdit;
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
    Cedula_Pasaporte: TEdit;
    Estado_Civil: TwwDBComboBox;
    Sexo: TwwDBComboBox;
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Eliminar: TAction;
    Agregar_Foto: TAction;
    Label11: TLabel;
    Label1: TLabel;
    Status: TwwDBComboBox;
    Fecha_Registro: TwwDBDateTimePicker;
    Pais: TwwDBLookupCombo;
    Sector: TwwDBLookupCombo;
    Ciudad_Estado: TwwDBLookupCombo;
    Zonas: TwwDBLookupCombo;
    procedure Agregar_Terminos_FacturacionExecute(Sender: TObject);
    procedure Agregar_FotoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EliminarExecute(Sender: TObject);
    procedure Cedula_PasaporteExit(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure PaisChange(Sender: TObject);
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

uses DataModulo, Utilidades, Reports_Forms, Generales, Terminos;

{$R *.dfm}

procedure TFEmpleados.FormCreate(Sender: TObject);
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
      _CanClose := Not (Modulo.tEmpleados.Active);
      Modulo.tEmpleados.Open;
      Modulo.tTerminos.Open;
      ModuloGenerales.tListado_Paises.Open;
      ModuloGenerales.tCiudades.Open;
      ModuloGenerales.tSectores.Open;
      ModuloGenerales.tZonas.Open;


      {Insertar Registro en Blanco}
      Nuevo.Execute
    End
    {If _Load_Create}
end;

procedure TFEmpleados.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFEmpleados.NuevoExecute(Sender: TObject);
begin
  If Modulo.tEmpleados.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
  Modulo.tEmpleados.Cancel;
  Modulo.tEmpleados.Append;


  Modulo.tEmpleadosFecha_Registro.Value := Modulo.Enlace.AppServer.ServerDate;

  Foto.Picture.LoadFromFile(_DefaultClientImg);

  If Self.Visible And _MoveFocus Then
    Begin
      Cedula_Pasaporte.SetFocus;
      Cedula_Pasaporte.Clear;
    End;

end;

procedure TFEmpleados.PaisChange(Sender: TObject);
begin
  ModuloGenerales.tListado_PaisesAfterRefresh(ModuloGenerales.tListado_Paises);
  ModuloGenerales.TPaises.Close;
  ModuloGenerales.TPaises.Params.ParamByName('Iso_3_Char').AsString := ModuloGenerales.tListado_PaisesIso_3_Char.AsString;
  ModuloGenerales.TPaises.Open;
end;

procedure TFEmpleados.GuardarExecute(Sender: TObject);
  Var
    ActualCode   : String;
begin
  If Modulo.tEmpleados.State In DsEditModes Then
      Modulo.tEmpleados.Post;

  ActualCode := Modulo.tEmpleadosCedula_RNC_Pasaporte.Value;

  If Modulo.tEmpleados.ChangeCount > 0 Then
    Modulo.tEmpleados.ApplyUpdates(0);

  Modulo.tEmpleados.Refresh;

  Nuevo.Execute;

  PopUpMessage(Modulo.Mensajes,_DatosGuardados)
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

procedure TFEmpleados.EliminarExecute(Sender: TObject);
begin
  If Trim(Modulo.tEmpleadosNombreCompleto.Value) <> '' Then
    Begin
      If Application.MessageBox(PChar(_ConfirmarEliminar),
                                PChar(Eliminar.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
      Modulo.tEmpleados.Delete
    End;

  If Modulo.tEmpleados.ChangeCount > 0 Then
    Modulo.tEmpleados.ApplyUpdates(0);

  Modulo.tEmpleados.Refresh;
  Nuevo.Execute;

  ShowMessage(_DatosEliminados)
end;

procedure TFEmpleados.Agregar_Terminos_FacturacionExecute(Sender: TObject);
begin
  OpenForm(TFTerminos,FTerminos)
end;

procedure TFEmpleados.BuscarExecute(Sender: TObject);
  Var
    R : Integer;
    S : String;
begin
  S := DoSearch(Nil,
                'Empleados',                                   (* TableName *)
                'SrchPr',                                      (* Provider *)
                Modulo.tEmpleadosCedula_RNC_Pasaporte.FieldName, (* CampoClave *)
                Modulo.tEmpleadosNombreCompleto.FieldName,      (* CampoInicial *)
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

procedure TFEmpleados.Agregar_FotoExecute(Sender: TObject);
  Begin
    Modulo.tEmpleados.Edit;
    AgregarFoto(Modulo.tEmpleadosFoto,Foto)
  end;

procedure TFEmpleados.Cedula_PasaporteExit(Sender: TObject);
  Var
    SearchResult : Integer;
begin
  SearchResult := ParamSearchKey(Modulo.tEmpleados,'Cedula_Rnc_Pasaporte',Cedula_Pasaporte.Text);

  If SearchResult = _CodeNotFound Then
    Begin
      _MoveFocus := False;
      NuevoExecute(Sender);
      _MoveFocus := True;

      Modulo.tEmpleadosCedula_RNC_Pasaporte.Value := Trim(Cedula_Pasaporte.Text);
    End;

  FOTOLoadAndDisplay(Modulo.tEmpleadosFoto,FOTO,_DefaultClientImg)
end;

Initialization
  RegisterClass(TFEmpleados);

end.
