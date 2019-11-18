unit Paises_Ciudades_Sectores_ZonasUnit;
{*****************************************************************************}
{*                                                                           *}
{*                   Sistema de Administración Financiera                    *}
{*                                                                           *}
{* Desarrollado por    : Ing. Moises Gumbs Peralta                           *}
{* Derechos Reservados : 2011, Romana MicroSystems                           *}
{*                                                                           *}
{* BancosUnit.pas                                                            *}
{*                                                                           *}
{* Esta pantalla se utiliza para el control de y actualización de los        *}
{* Bancos con los que la compañía tiene relaciones comerciales               *}
{*                                                                           *}
{*****************************************************************************}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, ExtCtrls,
  AdvGlowButton, ActnList,
  ActnMan,
  Grids, ComCtrls, wwriched, DBAdvPicture, Mask, ToolPanels,
  Wwdbigrd, Wwdbgrid, AdvPicture, SUIButton,
  wwidlg, wwDialog, wwfltdlg, Wwkeycb, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  XPStyleActnCtrls;

type
  TfrmPaises_Ciudades_Sectores_Zonas = class(TForm)
    adv_DataPanel: TAdvToolPanel;
    Label28: TLabel;
    Status: TDBEdit;
    Opciones_Pantalla: TActionManager;
    Guardar_Registro: TAction;
    Buscar_Registro: TAction;
    Nuevo_Registro: TAction;
    Eliminar_Registro: TAction;
    Salir: TAction;
    Agregar_Foto: TAction;
    adv_OptionPanel: TAdvToolPanel;
    gbt_Nuevo_Registro: TAdvGlowButton;
    gbt_Guardar_Registro: TAdvGlowButton;
    gbt_Buscar_Registro: TAdvGlowButton;
    gbt_Eliminar_Registro: TAdvGlowButton;
    gbt_Salir: TAdvGlowButton;
    InfoBoard: TMemo;
    Iso_2_Char: TDBEdit;
    Label3: TLabel;
    Nombre: TDBEdit;
    Label4: TLabel;
    Idioma: TDBEdit;
    Label5: TLabel;
    Region: TDBEdit;
    Label6: TLabel;
    Codigo: TEdit;
    imgFrame: TShape;
    Label8: TLabel;
    LOGO: TDBAdvPicture;
    Label7: TLabel;
    Label9: TLabel;
    bt_Eliminar_Sectores: TsuiButton;
    bt_Editar_Sectores: TsuiButton;
    bt_Agregar_Sectores: TsuiButton;
    bt_Editar_Zonas: TsuiButton;
    bt_Agregar_Zonas: TsuiButton;
    bt_Eliminar_Ciudades: TsuiButton;
    bt_Editar_Ciudades: TsuiButton;
    bt_Agregar_Ciudades: TsuiButton;
    Label1: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    Agregar_Ciudades: TAction;
    Editar_Ciudades: TAction;
    Eliminar_Ciudades: TAction;
    Agregar_Sectores: TAction;
    Editar_Sectores: TAction;
    Eliminar_Sectores: TAction;
    Agregar_Zonas: TAction;
    Editar_Zonas: TAction;
    Eliminar_Zonas: TAction;
    bt_Eliminar_Zonas: TsuiButton;
    gridCiudades: TcxGrid;
    gridCiudadesDBTableView1: TcxGridDBTableView;
    gridCiudadesDBTV: TcxGridDBTableView;
    gridCiudadesLevel: TcxGridLevel;
    gridCiudadesDBTVSerie_Codigo: TcxGridDBColumn;
    gridCiudadesDBTVNombre: TcxGridDBColumn;
    gridSectores: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    gridSectoresDBTV: TcxGridDBTableView;
    gridSectoresLevel: TcxGridLevel;
    gridSectoresDBTVNombre: TcxGridDBColumn;
    gridSectoresDBTVAbreviatura: TcxGridDBColumn;
    gridZonas: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    gridZonasDBTV: TcxGridDBTableView;
    gridZonasLevel: TcxGridLevel;
    gridZonasDBTVDescripcion: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure Guardar_RegistroExecute(Sender: TObject);
    procedure Buscar_RegistroExecute(Sender: TObject);
    procedure Nuevo_RegistroExecute(Sender: TObject);
    procedure Eliminar_RegistroExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CodigoExit(Sender: TObject);
    procedure Agregar_CiudadesExecute(Sender: TObject);
    procedure Editar_CiudadesExecute(Sender: TObject);
    procedure Eliminar_CiudadesExecute(Sender: TObject);
    procedure Agregar_SectoresExecute(Sender: TObject);
    procedure Editar_SectoresExecute(Sender: TObject);
    procedure Eliminar_SectoresExecute(Sender: TObject);
    procedure Agregar_ZonasExecute(Sender: TObject);
    procedure Editar_ZonasExecute(Sender: TObject);
    procedure Eliminar_ZonasExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPaises_Ciudades_Sectores_Zonas: TfrmPaises_Ciudades_Sectores_Zonas;

implementation

uses Utilidades, RegKeys, Generales,
  EditCiudadesUnit, EditSectoresUnit, EditZonasUnit, DataModulo;

{$R *.dfm}

procedure TfrmPaises_Ciudades_Sectores_Zonas.Agregar_CiudadesExecute(
  Sender: TObject);
begin
  ModuloGenerales.tCiudades.Append;
  OpenForm(TfrmEditCiudades,frmEditCiudades);
end;

procedure TfrmPaises_Ciudades_Sectores_Zonas.Agregar_SectoresExecute(
  Sender: TObject);
begin
  ModuloGenerales.tSectores.Append;
  OpenForm(TfrmEditSectores,frmEditSectores);
end;

procedure TfrmPaises_Ciudades_Sectores_Zonas.Agregar_ZonasExecute(
  Sender: TObject);
begin
  ModuloGenerales.tZonas.Append;
  OpenForm(TfrmEditZonas,frmEditZonas);
end;

procedure TfrmPaises_Ciudades_Sectores_Zonas.Buscar_RegistroExecute(Sender: TObject);
  Var
    R : Integer;
    S : String;
begin
  S := DoSearch(Nil,
                'Paises',                                     (* TableName *)
                'SrchPr',                                     (* Provider *)
                ModuloGenerales.tPaisesIso_3_Char.FieldName,  (* CampoClave *)
                ModuloGenerales.tPaisesNombre.FieldName,      (* CampoInicial *)
                '',                                           (* AltQry *)
                Modulo.Enlace,                                (* RemoteServer *)
                'A',                                          (* SortOrder *)
                -1,                                           (* Packet Records *)
                wsMaximized,
                R);
  If R = MrOk Then
    Begin
      Codigo.Text := S;
      CodigoExit(Codigo);
      ValidateEmptyField(Self,Status)
    End
end;

procedure TfrmPaises_Ciudades_Sectores_Zonas.CodigoExit(Sender: TObject);
Var
    SearchResult : Integer;
begin
  Codigo.Text := TrimChar('-',Codigo.Text);
  Codigo.Text := TrimChar(#32,Codigo.Text);
  Codigo.Text := TrimChar('/',Codigo.Text);
  SearchResult := ParamSearchKey (ModuloGenerales.tPaises,'Iso_3_Char',Codigo.Text);

  If SearchResult = _CodeNotFound Then
    Begin
      _MoveFocus := False;
      Nuevo_RegistroExecute(Sender);
      _MoveFocus := True;

      ModuloGenerales.tPaisesIso_3_Char.Value := Trim(Codigo.Text)
    End;
end;

procedure TfrmPaises_Ciudades_Sectores_Zonas.Editar_CiudadesExecute(
  Sender: TObject);
begin
  OpenForm(TfrmEditCiudades,frmEditCiudades)
end;

procedure TfrmPaises_Ciudades_Sectores_Zonas.Editar_SectoresExecute(
  Sender: TObject);
begin
  OpenForm(TfrmEditSectores,frmEditSectores);
end;

procedure TfrmPaises_Ciudades_Sectores_Zonas.Editar_ZonasExecute(
  Sender: TObject);
begin
  OpenForm(TfrmEditZonas,frmEditZonas);
end;

procedure TfrmPaises_Ciudades_Sectores_Zonas.Eliminar_CiudadesExecute(
  Sender: TObject);
begin
  If ModuloGenerales.tCiudades.RecordCount > 0 Then
    ModuloGenerales.tCiudades.Delete
end;

procedure TfrmPaises_Ciudades_Sectores_Zonas.Eliminar_RegistroExecute(Sender: TObject);
begin
  If Trim(ModuloGenerales.tPaisesIso_3_Char.Value) <> '' Then
    Begin
      If Application.MessageBox(PChar(_ConfirmarEliminar),
                                PChar(Eliminar_Registro.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
      ModuloGenerales.tPaises.Delete
    End;

  If ModuloGenerales.tPaises.ChangeCount > 0 Then
    ModuloGenerales.tPaises.ApplyUpdates(0);

  ModuloGenerales.tPaises.Refresh;
  Nuevo_Registro.Execute;

  PopUpMessage(ModuloGenerales.Mensajes,_DatosEliminados,Eliminar_Registro.ImageIndex)
end;

procedure TfrmPaises_Ciudades_Sectores_Zonas.Eliminar_SectoresExecute(
  Sender: TObject);
begin
  If ModuloGenerales.tSectores.RecordCount > 0 Then
    ModuloGenerales.tSectores.Delete
end;

procedure TfrmPaises_Ciudades_Sectores_Zonas.Eliminar_ZonasExecute(
  Sender: TObject);
begin
  If ModuloGenerales.tZonas.RecordCount > 0 Then
    ModuloGenerales.tZonas.Delete
end;

procedure TfrmPaises_Ciudades_Sectores_Zonas.FormCreate(Sender: TObject);
  Var
    I : Integer;
begin
  If _Load_Create Then
    Begin

      {Activar Los Hints Disponibles}
      LoadHints(Self);

      {Abrir los Datasets Requeridos por esta pantalla}
      ModuloGenerales.tPaises.Open;

      {Insertar Registro en Blanco}
      Nuevo_Registro.Execute;

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
    End {If _Load_Create}
end;

procedure TfrmPaises_Ciudades_Sectores_Zonas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  Found : TWinControl;
begin
  Case Key Of
    VK_RETURN,
    VK_DOWN    :
      Begin
        Found := FindNextControl(ActiveControl,True, True, False);
        Found.SetFocus
      End;

    VK_UP   :
      Begin
        Found := FindNextControl(ActiveControl,False, True, False);
        Found.SetFocus
      End;

    VK_HOME   :
      Begin
        if (ssCtrl in Shift) then
//        NUMERO_CUENTA.SetFocus
      End
  End {Case}
end;

procedure TfrmPaises_Ciudades_Sectores_Zonas.Guardar_RegistroExecute(Sender: TObject);
  Var
    CamposVacios : Integer;
begin
  CamposVacios := ValidateEmptyField(Self,Status);

  adv_OptionPanel.Sections[1].SectionItems[0].Caption := 'Actualización de Cuentas Bancarias';
  InfoBoard.Lines.Clear;
  InfoBoard.Font.Color := clWindowText;
  InfoBoard.Color := $00EDD9C8;

  If CamposVacios > 0 Then
    Begin
      adv_OptionPanel.Sections[1].SectionItems[0].Caption := 'Campos Requeridos';
      InfoBoard.Lines.Clear;
      InfoBoard.Lines.Add('Existe(n) ' + IntToStr(CamposVacios) + ' campo(s) vacio(s).');
      InfoBoard.Lines.Add('');
      InfoBoard.Lines.Add('Estos son campos requeridos');
      InfoBoard.Lines.Add('(Marcados en color Rojo)');
      InfoBoard.Lines.Add('por favor, VERIFIQUE');
      InfoBoard.Color := clRed;
      InfoBoard.Font.Color := clYellow;
      Exit
    End;

  If ModuloGenerales.tPaises.State In DsEditModes Then ModuloGenerales.tPaises.Post;

  If ModuloGenerales.tPaises.ChangeCount > 0 Then ModuloGenerales.tPaises.ApplyUpdates(0);

  ModuloGenerales.tPaises.Refresh;

  If (Sender as TAction).Name = Guardar_Registro.Name Then Nuevo_Registro.Execute;

  PopUpMessage(ModuloGenerales.Mensajes,_DatosGuardados,Guardar_Registro.ImageIndex)
end;

procedure TfrmPaises_Ciudades_Sectores_Zonas.Nuevo_RegistroExecute(Sender: TObject);
begin
  If ModuloGenerales.tPaises.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo_Registro.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
  ModuloGenerales.tPaises.Cancel;
  ModuloGenerales.tPaises.Append;

  Logo.Picture.LoadFromFile(_DefaultClientImg);


  If Self.Visible And _MoveFocus Then
    Begin
      Codigo.SetFocus;
      Codigo.Clear
    End;

end;

procedure TfrmPaises_Ciudades_Sectores_Zonas.SalirExecute(Sender: TObject);
begin
  Close
end;

Initialization
  RegisterClass(TfrmPaises_Ciudades_Sectores_Zonas);

end.
