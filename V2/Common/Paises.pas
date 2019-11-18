unit Paises;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ActnColorMaps, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Grids, JPeg, Wwdbigrd,
  Wwdbgrid;

type
  TFPaises = class(TForm)
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Eliminar: TAction;
    Barra_Menu: TActionMainMenuBar;
    Anadir_Ciudad: TAction;
    Buscar_Ciudad: TAction;
    Eliminar_Ciudad: TAction;
    Anadir_Sector: TAction;
    Eliminar_Sector: TAction;
    Modificar_Ciudad: TAction;
    Modificar_Sector: TAction;
    Anadir_Zona: TAction;
    Modificar_Zona: TAction;
    Eliminar_Zona: TAction;
    Map: TImage;
    Panel_Datos_Generales: TAdvPageControl;
    Pg_Datos_Generales: TAdvTabSheet;
    Separador_Ciudades: TGroupBox;
    Separador_Sectores: TGroupBox;
    Label2: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label1: TLabel;
    Codigo_Iso_2: TDBEdit;
    Nombre_Pais: TDBEdit;
    Region: TDBEdit;
    Idioma: TDBEdit;
    Ciudades: TwwDBGrid;
    Sectores: TwwDBGrid;
    Zonas: TwwDBGrid;
    Codigo3Char: TEdit;
    Separador_Zonas: TGroupBox;
    Panel_Botones: TAdvPageControl;
    Pg_Botones: TAdvTabSheet;
    Botones: TActionToolBar;
    Botones_Ciudades: TActionToolBar;
    Botones_Sectores: TActionToolBar;
    Botones_Zonas: TActionToolBar;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EliminarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure PrestamosExecute(Sender: TObject);
    procedure Realizar_PagosExecute(Sender: TObject);
    procedure Estado_CuentasExecute(Sender: TObject);
    procedure EstadisticasExecute(Sender: TObject);
    procedure Agregar_Modificar_GarantiaExecute(Sender: TObject);
    procedure Codigo3CharExit(Sender: TObject);
    procedure Anadir_CiudadExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Modificar_CiudadExecute(Sender: TObject);
    procedure Buscar_CiudadExecute(Sender: TObject);
    procedure Eliminar_CiudadExecute(Sender: TObject);
    procedure Anadir_SectorExecute(Sender: TObject);
    procedure Modificar_SectorExecute(Sender: TObject);
    procedure Eliminar_SectorExecute(Sender: TObject);
    procedure Anadir_ZonaExecute(Sender: TObject);
    procedure Modificar_ZonaExecute(Sender: TObject);
    procedure Eliminar_ZonaExecute(Sender: TObject);
  private
    { Private declarations }
    _CanClose : Boolean;
  public
    { Public declarations }
  end;

var
  FPaises : TFPaises;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, SrchDlg, EditCiudades, EditSectores,
  EditZonas, Generales, RegKeys;

{$R *.dfm}

procedure TFPaises.FormCreate(Sender: TObject);
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
      _CanClose := Not (ModuloGenerales.tPaises.Active);
      ModuloGenerales.tCiudades.Open;
      ModuloGenerales.tZonas.Open;
      ModuloGenerales.tSectores.Open;
      ModuloGenerales.tPaises.Open;

      {Insertar Registro en Blanco}
      Nuevo.Execute
    End
end;

procedure TFPaises.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {Cerrar las Tablas Requeridas}
  If _CanClose Then
   Begin
     ModuloGenerales.tPaises.Close;
     ModuloGenerales.tCiudades.Close;
     ModuloGenerales.tZonas.Close;
     ModuloGenerales.tSectores.Close
   End;
end;

procedure TFPaises.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFPaises.NuevoExecute(Sender: TObject);
begin
  If ModuloGenerales.tPaises.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

  ModuloGenerales.tPaises.Cancel;
  ModuloGenerales.tPaises.CancelUpdates;

  ModuloGenerales.tPaises.Params.ParamByName('Iso_3_Char').AsString := '';
  ModuloGenerales.tPaises.Refresh;

  ModuloGenerales.tPaises.Append;


  If Self.Visible And _MoveFocus Then
    Begin
      Codigo3Char.SetFocus;
      Codigo3Char.Text := ''
    End;
end;

procedure TFPaises.GuardarExecute(Sender: TObject);
  Var
    ActualCode   : String;
begin
  If ModuloGenerales.tPaises.State In DsEditModes Then
      ModuloGenerales.tPaises.Post;

  ActualCode := ModuloGenerales.tPaisesIso_3_Char.Value;

  If ModuloGenerales.tPaises.ChangeCount > 0 Then
    ModuloGenerales.tPaises.ApplyUpdates(0);

  ModuloGenerales.tPaises.Refresh;

  If (Sender Is TAction) And ((Sender As TAction).Name = Guardar.Name) Then
    Nuevo.Execute;

  PopupMessage(ModuloGenerales.Mensajes,_DatosGuardados);
end;

procedure TFPaises.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFPaises.EliminarExecute(Sender: TObject);
begin
  If Trim(ModuloGenerales.tPaisesNombre.Value) <> '' Then
    Begin
      If Application.MessageBox(PChar(_ConfirmarEliminar),
                                PChar(Eliminar.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
      ModuloGenerales.tPaises.Delete
    End;

  If ModuloGenerales.tPaises.ChangeCount > 0 Then
    ModuloGenerales.tPaises.ApplyUpdates(0);

  ModuloGenerales.tPaises.Refresh;
  Nuevo.Execute;

  ShowMessage(_DatosEliminados)
end;

procedure TFPaises.BuscarExecute(Sender: TObject);
begin
    Try
      Application.CreateForm(TDlgSearch,DlgSearch);
      DlgSearch.OpenDlg('Paises',ModuloGenerales.tPaisesNombre.FieldName,'A',wsNormal);
      If DlgSearch.ModalResult = MrOk Then
        Begin
          Codigo3Char.Text := DlgSearch.SrchCds.FieldByName('Iso_3_Char').AsString;
          Codigo3CharExit(Sender)
        End;
    Finally
      DlgSearch.CloseDlg
    End {Try}
end;

procedure TFPaises.PrestamosExecute(Sender: TObject);
begin
  ShowMessage ('Opción No Disponible')
end;

procedure TFPaises.Realizar_PagosExecute(Sender: TObject);
begin
  ShowMessage ('Opción No Disponible')
end;

procedure TFPaises.Estado_CuentasExecute(Sender: TObject);
begin
  ShowMessage ('Opción No Disponible')
end;

procedure TFPaises.EstadisticasExecute(Sender: TObject);
begin
  ShowMessage ('Opción No Disponible')
end;

procedure TFPaises.Agregar_Modificar_GarantiaExecute(Sender: TObject);
begin
  ShowMessage ('Opción No Disponible')
end;

procedure TFPaises.Codigo3CharExit(Sender: TObject);
  Var
    SearchResult : Integer;
begin
  SearchResult := ParamSearchKey(ModuloGenerales.tPaises,'Iso_3_Char',Codigo3Char.Text);

  If SearchResult = _CodeNotFound Then
    Begin
      _MoveFocus := False;
      NuevoExecute(Sender);
      _MoveFocus := True;

      ModuloGenerales.tPaisesIso_3_Char.Value := Trim(Codigo3Char.Text)
    End
end;

procedure TFPaises.Anadir_CiudadExecute(Sender: TObject);
begin
  GuardarExecute(Anadir_Ciudad);

  ModuloGenerales.tCiudades.Append;
  ModuloGenerales.tCiudadesPais.Value := Trim(ModuloGenerales.tPaisesIso_3_Char.Value);
  OpenForm(TFEditCiudades,FEditCiudades)
end;

procedure TFPaises.FormActivate(Sender: TObject);
begin
  Codigo3Char.SetFocus
end;

procedure TFPaises.Modificar_CiudadExecute(Sender: TObject);
begin
  GuardarExecute(Modificar_Ciudad);

  If ModuloGenerales.tCiudades.RecordCount > 0 Then
    OpenForm(TFEditCiudades,FEditCiudades)
end;

procedure TFPaises.Buscar_CiudadExecute(Sender: TObject);
begin
    Try
      Application.CreateForm(TDlgSearch,DlgSearch);
      DlgSearch.OpenDlg('Ciudades_Estados',ModuloGenerales.tCiudadesNombre.FieldName,'A',wsNormal);
      If DlgSearch.ModalResult = MrOk Then
        Begin
          // Cargar el Pais al que pertenece la ciudad Buscada
          If ModuloGenerales.tPaises.State In DsEditModes Then
            Begin
              ModuloGenerales.tPaises.Cancel;
              ModuloGenerales.tPaises.CancelUpdates;
            End;

          Codigo3Char.Text := Trim(DlgSearch.SrchCds.FieldByName('Pais').AsString);
          Codigo3CharExit(Sender);

          // Cargar la ciudad Buscada
          ModuloGenerales.tCiudades.Locate(ModuloGenerales.tCiudadesSerie_Codigo.FieldName,
                                  Trim(DlgSearch.SrchCds.FieldByName('Serie_Codigo').AsString),
                                  [])
        End;
    Finally
      DlgSearch.CloseDlg
    End {Try}
end;

procedure TFPaises.Eliminar_CiudadExecute(Sender: TObject);
begin
  If ModuloGenerales.tCiudades.RecordCount = 0 Then Exit;

  If Application.MessageBox(PChar(_ConfirmarEliminar),
                            PChar(Eliminar.Caption),
                            MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

  ModuloGenerales.tCiudades.Delete;

  If ModuloGenerales.tCiudades.ChangeCount > 0 Then
    ModuloGenerales.tCiudades.ApplyUpdates(0);

  ModuloGenerales.tCiudades.Refresh
end;

procedure TFPaises.Anadir_SectorExecute(Sender: TObject);
begin
  If ModuloGenerales.tCiudades.RecordCount = 0 Then
    Begin
      PopupMessage(ModuloGenerales.Mensajes,_ErrNoCiudadParaSector_Zona);
      Exit
    End;

  ModuloGenerales.tSectores.Append;
  ModuloGenerales.tSectoresCiudad.Value := Trim(ModuloGenerales.tCiudadesSerie_Codigo.Value);
  OpenForm(TFEditSectores,FEditSectores)
end;

procedure TFPaises.Modificar_SectorExecute(Sender: TObject);
begin
  If ModuloGenerales.tCiudades.RecordCount > 0 Then
    OpenForm(TFEditSectores,FEditSectores)
end;

procedure TFPaises.Eliminar_SectorExecute(Sender: TObject);
begin
  If ModuloGenerales.tSectores.RecordCount = 0 Then Exit;

  If Application.MessageBox(PChar(_ConfirmarEliminar),
                            PChar(Eliminar.Caption),
                            MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

  ModuloGenerales.tSectores.Delete;

  If ModuloGenerales.tSectores.ChangeCount > 0 Then
    ModuloGenerales.tSectores.ApplyUpdates(0);

  ModuloGenerales.tSectores.Refresh
end;

procedure TFPaises.Anadir_ZonaExecute(Sender: TObject);
begin
  If ModuloGenerales.tCiudades.RecordCount = 0 Then
    Begin
      PopupMessage(ModuloGenerales.Mensajes,_ErrNoCiudadParaSector_Zona);
      Exit
    End;

  ModuloGenerales.tZonas.Append;
  ModuloGenerales.tZonasCiudad.Value := Trim(ModuloGenerales.tCiudadesSerie_Codigo.Value);
  OpenForm(TFEditZonas,FEditZonas)
end;

procedure TFPaises.Modificar_ZonaExecute(Sender: TObject);
begin
  If ModuloGenerales.tZonas.RecordCount > 0 Then
    OpenForm(TFEditZonas,FEditZonas)
end;

procedure TFPaises.Eliminar_ZonaExecute(Sender: TObject);
begin
  If ModuloGenerales.tZonas.RecordCount = 0 Then Exit;

  If Application.MessageBox(PChar(_ConfirmarEliminar),
                            PChar(Eliminar.Caption),
                            MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

  ModuloGenerales.tZonas.Delete;

  If ModuloGenerales.tZonas.ChangeCount > 0 Then
    ModuloGenerales.tZonas.ApplyUpdates(0);

  ModuloGenerales.tZonas.Refresh
end;

end.
