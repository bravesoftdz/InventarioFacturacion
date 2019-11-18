unit Fabricantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, RegKeys;

type
  TFFabricantes = class(TForm)
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Eliminar: TAction;
    Barra_Menu: TActionMainMenuBar;
    Panel_Datos_Generales: TAdvPageControl;
    Pg_Datos_Generales: TAdvTabSheet;
    Label1: TLabel;
    Nombre: TwwDBComboBox;
    Codigo: TDBEdit;
    Panel_Botones: TAdvPageControl;
    Pg_Botones: TAdvTabSheet;
    Botones: TActionToolBar;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Representante: TwwDBComboBox;
    Direccion: TwwDBComboBox;
    Pais: TwwDBComboBox;
    Ciudad: TwwDBComboBox;
    Estado: TwwDBComboBox;
    Sector: TwwDBComboBox;
    Status: TwwDBComboBox;
    Fecha: TwwDBDateTimePicker;
    Shape1: TShape;
    FOTO: TImage;
    Label7: TLabel;
    Agregar_Foto: TAction;
    LID: TLabel;
    Cedula_Pasaporte: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EliminarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure Agregar_FotoExecute(Sender: TObject);
    procedure Cedula_PasaporteExit(Sender: TObject);
  private
    { Private declarations }
    _CanClose : Boolean;
  public
    { Public declarations }
  end;

var
  FFabricantes : TFFabricantes;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, SrchDlg, Generales;

{$R *.dfm}

procedure TFFabricantes.FormCreate(Sender: TObject);
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
      _CanClose := Not (Modulo.tFabricante.Active);
      Modulo.tFabricante.Open;

      {Insertar Registro en Blanco}
      Nuevo.Execute
    End; {If _Load_Create}
end;

procedure TFFabricantes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {Cerrar las Tablas Requeridas}
  If _CanClose Then Modulo.tFabricante.Close
end;

procedure TFFabricantes.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFFabricantes.NuevoExecute(Sender: TObject);
begin
  If Modulo.tFabricante.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
  Modulo.tFabricante.Cancel;
  Modulo.tFabricante.Append;

  If Self.Visible Then Cedula_Pasaporte.SetFocus
end;

procedure TFFabricantes.GuardarExecute(Sender: TObject);
  Var
    ActualCode : Longint;
begin
  ActualCode := Modulo.tFabricanteNumero.Value;

  If Modulo.tFabricante.State In DsEditModes Then
    Modulo.tFabricante.Post;

  If Modulo.tFabricante.ChangeCount > 0 Then
    Modulo.tFabricante.ApplyUpdates(0);

  Modulo.tFabricante.Refresh;

  If ActualCode = 0  Then ActualCode := Modulo.Enlace.AppServer.LastTableCode('Fabricantes');

  _LastCode := ActualCode;

  Nuevo.Execute;

  PopUpMessage(Modulo.Mensajes,_DatosGuardados)
end;

procedure TFFabricantes.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFFabricantes.EliminarExecute(Sender: TObject);
begin
  If Modulo.tFabricanteNumero.Value > 0 Then
    Begin
      If Application.MessageBox(PChar(_ConfirmarEliminar),
                                PChar(Eliminar.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
      Modulo.tFabricante.Delete
    End;

  If Modulo.tFabricante.ChangeCount > 0 Then
    Modulo.tFabricante.ApplyUpdates(0);

  Modulo.tFabricante.Refresh;
  Nuevo.Execute;

  PopUpMessage(Modulo.Mensajes,_DatosEliminados)
end;

procedure TFFabricantes.Agregar_FotoExecute(Sender: TObject);
begin
    Modulo.tFabricante.Edit;
    AgregarFoto(Modulo.tFabricanteFoto,Foto)
end;

procedure TFFabricantes.BuscarExecute(Sender: TObject);
begin
    Try
      Application.CreateForm(TDlgSearch,DlgSearch);
      DlgSearch.OpenDlg('Fabricantes',Modulo.tFabricanteNombre.FieldName,'A',wsMaximized);
      If DlgSearch.ModalResult = MrOk Then
        Begin
           Cedula_Pasaporte.Text := DlgSearch.SrchCds.FieldByName('Cedula_RNC_Pasaporte').AsString;
           Cedula_PasaporteExit(Sender)
        End
    Finally
      DlgSearch.CloseDlg
    End {Try}
end;

procedure TFFabricantes.Cedula_PasaporteExit(Sender: TObject);
  Var
    SearchResult : Integer;
begin
  SearchResult := ListSearchKey(Modulo.tFabricante,'Cedula_Rnc_Pasaporte',Cedula_Pasaporte.Text);

  If SearchResult = _CodeNotFound Then
    Begin
      _MoveFocus := False;
      NuevoExecute(Sender);
      _MoveFocus := True;

      Modulo.tFabricanteCedula_RNC_Pasaporte.Value := Trim(Cedula_Pasaporte.Text);
    End;

  FOTOLoadAndDisplay(Modulo.tFabricanteFoto,FOTO,_DefaultClientImg)
end;

Initialization
  RegisterClass(TFFabricantes);

end.
