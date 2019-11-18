unit Vendedores;

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
  TFVendedores = class(TForm)
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
    Pais: TwwDBLookupCombo;
    Sector: TwwDBLookupCombo;
    Ciudad_Estado: TwwDBLookupCombo;
    Cedula_Pasaporte: TEdit;
    Estado_Civil: TwwDBComboBox;
    Sexo: TwwDBComboBox;
    Zonas: TwwDBLookupCombo;
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
    procedure Agregar_Terminos_FacturacionExecute(Sender: TObject);
    procedure PaisCloseUp(Sender: TObject; LookupTable, FillTable: TDataSet;
      modified: Boolean);
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
    procedure Cedula_PasaporteExit(Sender: TObject);
  private
    { Private declarations }
    _CanClose : Boolean;
  public
    { Public declarations }
  end;

var
  FVendedores : TFVendedores;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, SrchDlg, Reports_Forms, Generales, Terminos;

{$R *.dfm}

procedure TFVendedores.FormCreate(Sender: TObject);
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
      _CanClose := Not (Modulo.tVendedores.Active);
      Modulo.tVendedores.Open;
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

procedure TFVendedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {Cerrar las Tablas Requeridas}
  If _CanClose Then
    Begin
      Modulo.tVendedores.Close;
      Modulo.tTerminos.Close;
      ModuloGenerales.tSectores.Close;
      ModuloGenerales.tZonas.Close;
      ModuloGenerales.tCiudades.Close;
      ModuloGenerales.tListado_Paises.Close
    End
end;

procedure TFVendedores.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFVendedores.NuevoExecute(Sender: TObject);
begin
  If Modulo.tVendedores.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
  Modulo.tVendedores.Cancel;
  Modulo.tVendedores.Append;


  Modulo.tVendedoresFecha_Registro.Value := Modulo.Enlace.AppServer.ServerDate;

  Foto.Picture.LoadFromFile(_DefaultImgDir + _DefaultClientImg);

  If Self.Visible And _MoveFocus Then
    Begin
      Cedula_Pasaporte.SetFocus;
      Cedula_Pasaporte.Clear;
    End;

end;

procedure TFVendedores.PaisCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  If Modified Then
    Begin
      Ciudad_Estado.Clear;
      Sector.Clear;
      Zonas.Clear;
      ModuloGenerales.tCiudades.Params.ParamByName('Pais').AsString := ModuloGenerales.tListado_PaisesIso_3_Char.AsString;
      If ModuloGenerales.tCiudades.Active Then
        Begin
          ModuloGenerales.tCiudades.Cancel;
          ModuloGenerales.tCiudades.CancelUpdates;
          ModuloGenerales.tCiudades.Refresh
        End
    End
end;

procedure TFVendedores.GuardarExecute(Sender: TObject);
  Var
    ActualCode   : String;
begin
  If Modulo.tVendedores.State In DsEditModes Then
      Modulo.tVendedores.Post;

  ActualCode := Modulo.tVendedoresCedula_RNC_Pasaporte.Value;

  If Modulo.tVendedores.ChangeCount > 0 Then
    Modulo.tVendedores.ApplyUpdates(0);

  Modulo.tVendedores.Refresh;

  Nuevo.Execute;

  PopUpMessage(Modulo.Mensajes,_DatosGuardados)
end;

procedure TFVendedores.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  Found : TWinControl;
begin
  Case Key Of
    VK_HOME    : Cedula_Pasaporte.SetFocus;

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

procedure TFVendedores.EliminarExecute(Sender: TObject);
begin
  If Trim(Modulo.tVendedoresNombreCompleto.Value) <> '' Then
    Begin
      If Application.MessageBox(PChar(_ConfirmarEliminar),
                                PChar(Eliminar.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
      Modulo.tVendedores.Delete
    End;

  If Modulo.tVendedores.ChangeCount > 0 Then
    Modulo.tVendedores.ApplyUpdates(0);

  Modulo.tVendedores.Refresh;
  Nuevo.Execute;

  ShowMessage(_DatosEliminados)
end;

procedure TFVendedores.Agregar_Terminos_FacturacionExecute(Sender: TObject);
begin
  OpenForm(TFTerminos,FTerminos)
end;

procedure TFVendedores.BuscarExecute(Sender: TObject);
begin
    Try
      Application.CreateForm(TDlgSearch,DlgSearch);
      DlgSearch.OpenDlg('Vendedores',Modulo.tVendedoresNombreCompleto.FieldName,'A',wsMaximized);
      If DlgSearch.ModalResult = MrOk Then
        Begin
           Cedula_Pasaporte.Text := DlgSearch.SrchCds.FieldByName('Cedula_RNC_Pasaporte').AsString;
           Cedula_PasaporteExit(Sender)
        End
    Finally
      DlgSearch.CloseDlg
    End {Try}
end;

procedure TFVendedores.Agregar_FotoExecute(Sender: TObject);
  Begin
    Modulo.tVendedores.Edit;
    AgregarFoto(Modulo.tVendedoresFoto,Foto)
  end;

procedure TFVendedores.Cedula_PasaporteExit(Sender: TObject);
  Var
    SearchResult : Integer;
begin
  SearchResult := ParamSearchKey(Modulo.tVendedores,'Cedula_Rnc_Pasaporte',Cedula_Pasaporte.Text);

  If SearchResult = _CodeNotFound Then
    Begin
      _MoveFocus := False;
      NuevoExecute(Sender);
      _MoveFocus := True;

      Modulo.tVendedoresCedula_RNC_Pasaporte.Value := Trim(Cedula_Pasaporte.Text);
    End;

  FOTOLoadAndDisplay(Modulo.tVendedoresFoto,FOTO,_DefaultImgDir + _DefaultClientImg)
end;

Initialization
  RegisterClass(TFVendedores);

end.
