unit TerminalesUnit;
{*****************************************************************************}
{*                                                                           *}
{*                   Sistema de Administración Financiera                    *}
{*                                                                           *}
{* Desarrollado por    : Ing. Moises Gumbs Peralta                           *}
{* Derechos Reservados : 2011, Romana MicroSystems                           *}
{*                                                                           *}
{* TerminalesUnit.pas                                                        *}
{*                                                                           *}
{* Esta pantalla se utiliza para el control y actualización de las           *}
{* Terminales que interactuan con el sistema                                 *}
{*                                                                           *}
{*****************************************************************************}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, Mask, wwSpeedButton, wwDBNavigator, ExtCtrls,
  wwclearpanel, AdvGlowButton, ToolPanels, ActnList,
  ActnMan, wwdbedit, Wwdotdot, Wwdbcomb, AdvMemo,
  AdvSmoothEdit, AdvSmoothEditButton, AdvSmoothDatePicker, DBAdvSmoothDatePicker,
  AdvSmoothPanel, wwcheckbox, XPStyleActnCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmTerminales = class(TForm)
    adv_OptionPanel: TAdvToolPanel;
    gbt_Nuevo_Registro: TAdvGlowButton;
    gbt_Guardar_Registro: TAdvGlowButton;
    Opciones_Pantalla: TActionManager;
    Guardar_Registro: TAction;
    Buscar_Registro: TAction;
    Nuevo_Registro: TAction;
    Eliminar_Registro: TAction;
    Salir: TAction;
    gbt_Buscar_Registro: TAdvGlowButton;
    gbt_Eliminar_Registro: TAdvGlowButton;
    gbt_Salir: TAdvGlowButton;
    InfoBoard: TMemo;
    Agregar_Foto: TAction;
    adv_DataPanel: TAdvToolPanel;
    Label1: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Status: TDBEdit;
    ID: TDBEdit;
    Descripcion: TDBEdit;
    Label2: TLabel;
    Caja: TDBEdit;
    Label3: TLabel;
    Almacen: TDBEdit;
    Label4: TLabel;
    Departamento: TDBEdit;
    Label5: TLabel;
    Control_Inventario: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label22: TLabel;
    Color_Pantallas: TDBEdit;
    Label23: TLabel;
    Comentario: TDBEdit;
    Comentario_Linea_2: TDBEdit;
    Comentario_Linea_3: TDBEdit;
    Comentario_Linea_4: TDBEdit;
    Label29: TLabel;
    Label30: TLabel;
    Direccion_Mascara: TDBEdit;
    Direccion_IP: TDBEdit;
    Label32: TLabel;
    Direccion_NETBIOS: TDBEdit;
    pnlFormatos: TAdvSmoothPanel;
    Label9: TLabel;
    Simbolo_Moneda: TDBEdit;
    Label10: TLabel;
    Formato_Numeros: TDBEdit;
    Label11: TLabel;
    Formato_Fecha_Corto: TDBEdit;
    Label15: TLabel;
    Decimales_Cantidades: TDBEdit;
    Label16: TLabel;
    Decimales_Monedas: TDBEdit;
    Label12: TLabel;
    Formato_Fecha_Largo: TDBEdit;
    Label13: TLabel;
    Formato_Hora_Corto: TDBEdit;
    Label14: TLabel;
    Formato_Hora_Largo: TDBEdit;
    pnlImpresion_Texto: TAdvSmoothPanel;
    Label17: TLabel;
    Impresora: TDBEdit;
    Puerto: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    Separador_Linea: TDBEdit;
    Label20: TLabel;
    Ancho_Linea: TDBEdit;
    Label21: TLabel;
    Lineas_Expulsar_Papel: TDBEdit;
    pnlControles: TAdvSmoothPanel;
    Nombre_Mascara: TDBEdit;
    Label31: TLabel;
    Label24: TLabel;
    Alt_F4: TwwCheckBox;
    Ctrl_Alt_Del: TwwCheckBox;
    Barra_Windows: TwwCheckBox;
    Panel_Control: TwwCheckBox;
    Apagar_Salir: TwwCheckBox;
    Run: TwwCheckBox;
    Windows_Key: TwwCheckBox;
    Find: TwwCheckBox;
    Label25: TLabel;
    Carpeta_Fotos_ID: TDBEdit;
    Get_NETBIOS: TAction;
    Get_IP: TAction;
    Label27: TLabel;
    Direccion_MAC: TDBEdit;
    Get_MAC: TAction;
    Label33: TLabel;
    Label34: TLabel;
    Ancho_Fotos_Documentos: TDBEdit;
    Altura_Fotos_Documentos: TDBEdit;
    Restringir_Dias_Semana: TwwCheckBox;
    Termino_COD: TcxDBLookupComboBox;
    Termino_Credito: TcxDBLookupComboBox;
    Termino_Financiado: TcxDBLookupComboBox;
    Label35: TLabel;
    Termino_LayAway: TcxDBLookupComboBox;
    Label36: TLabel;
    Porcentaje_LayAway: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure Guardar_RegistroExecute(Sender: TObject);
    procedure Buscar_RegistroExecute(Sender: TObject);
    procedure Nuevo_RegistroExecute(Sender: TObject);
    procedure Eliminar_RegistroExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure IDExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure HintToInfoBoard(Sender: TObject);
    procedure Get_NETBIOSExecute(Sender: TObject);
    procedure Get_IPExecute(Sender: TObject);
    procedure Get_MACExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTerminales: TfrmTerminales;

implementation

uses Utilidades, RegKeys, DataModulo, Generales;

{$R *.dfm}

procedure TfrmTerminales.Buscar_RegistroExecute(Sender: TObject);
  Var
    R : Integer;
    S : String;
begin
  S := DoSearch(Nil,
                'Terminales',                                        (* TableName *)
                'SrchPr',                                            (* Provider *)
                ModuloGenerales.tTerminalesID.FieldName,             (* CampoClave *)
                ModuloGenerales.tTerminalesDescripcion.FieldName,    (* CampoInicial *)
                '',                                                  (* AltQry *)
                Modulo.Enlace,                                       (* RemoteServer *)
                'A',                                                 (* SortOrder *)
                -1,                                                  (* Packet Records *)
                wsMaximized,
                R);
  If R = MrOk Then
    Begin
      ID.Text := S;
      IDExit(ID);
      ValidateEmptyField(Self,Direccion_IP)
    End
end;

procedure TfrmTerminales.Eliminar_RegistroExecute(Sender: TObject);
begin
  If Trim(ModuloGenerales.tTerminalesDescripcion.Value) <> '' Then
    Begin
      If Application.MessageBox(PChar(_ConfirmarEliminar),
                                PChar(Eliminar_Registro.Caption),
                                MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
      ModuloGenerales.tTerminales.Delete
    End;

  If ModuloGenerales.tTerminales.ChangeCount > 0 Then
    ModuloGenerales.tTerminales.ApplyUpdates(0);

  ModuloGenerales.tTerminales.Refresh;
  Nuevo_Registro.Execute;

  PopUpMessage(ModuloGenerales.Mensajes,_DatosEliminados)
end;

procedure TfrmTerminales.FormCreate(Sender: TObject);
  Var
    I : Integer;
begin
  If _Load_Create Then
    Begin
      {Configuracion de la Pantalla}
//      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);

      {Activar Los Hints Disponibles}
      LoadHints(Self);

      {Abrir los Datasets Requeridos por esta pantalla}
      ModuloGenerales.tTerminales.Open;
      Modulo.tTerminos.Open;
      ModuloGenerales.tTerminales.Open;

      {Insertar Registro en Blanco}
      Nuevo_Registro.Execute
    End {If _Load_Create}
end;

procedure TfrmTerminales.FormKeyDown(Sender: TObject; var Key: Word;
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
//        RNC.SetFocus
      End
  End {Case}
end;

procedure TfrmTerminales.Get_IPExecute(Sender: TObject);
begin
  If Not (ModuloGenerales.tTerminales.State In DsEditModes) Then
    ModuloGenerales.tTerminales.Edit;

  ModuloGenerales.tTerminalesDireccion_IP.Value := GetIPAddress(ModuloGenerales.tTerminalesDireccion_NETBIOS.Value)
end;

procedure TfrmTerminales.Get_MACExecute(Sender: TObject);
begin
  If Not (ModuloGenerales.tTerminales.State In DsEditModes) Then
    ModuloGenerales.tTerminales.Edit;

  ModuloGenerales.tTerminalesMAC_Address.Value := GetMACAddress();
end;

procedure TfrmTerminales.Get_NETBIOSExecute(Sender: TObject);
begin
  If Not (ModuloGenerales.tTerminales.State In DsEditModes) Then
    ModuloGenerales.tTerminales.Edit;

  ModuloGenerales.tTerminalesDireccion_NETBIOS.Value := GetEnvVarValue('COMPUTERNAME');
end;

procedure TfrmTerminales.Guardar_RegistroExecute(Sender: TObject);
  Var
    CamposVacios : Integer;
begin
  CamposVacios := ValidateEmptyField(Self,Direccion_IP);

  adv_OptionPanel.Sections[1].SectionItems[0].Caption := 'Actualización de Terminales';
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

  If ModuloGenerales.tTerminales.State In DsEditModes Then ModuloGenerales.tTerminales.Post;

  If ModuloGenerales.tTerminales.ChangeCount > 0 Then ModuloGenerales.tTerminales.ApplyUpdates(0);

  ModuloGenerales.tTerminales.Refresh;

  If (Sender as TAction).Name = Guardar_Registro.Name Then Nuevo_Registro.Execute;

  PopUpMessage(ModuloGenerales.Mensajes,_DatosGuardados)
end;

procedure TfrmTerminales.HintToInfoBoard(Sender: TObject);
begin
  InfoBoard.Lines.Clear;
  InfoBoard.Lines.Add((Sender As TCustomEdit).Hint);
  InfoBoard.Font.Color := clWindowText;
  InfoBoard.Color := clWebLightYellow
end;

procedure TfrmTerminales.Nuevo_RegistroExecute(Sender: TObject);
var
  Uid: TGuid;
  Result: HResult;

begin
  adv_OptionPanel.Sections[1].SectionItems[0].Caption := 'Actualización de Terminales';
  InfoBoard.Lines.Clear;
  InfoBoard.Lines.Add('Registro, modificación y actualización');
  InfoBoard.Lines.Add('de datos de Terminales');
  InfoBoard.Font.Color := clWindowText;

  If ModuloGenerales.tTerminales.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo_Registro.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;
  ModuloGenerales.tTerminales.Cancel;
  ModuloGenerales.tTerminales.Append;


  Result := CreateGuid(Uid);
  If Result = S_OK Then ModuloGenerales.tTerminalesID.AsString := GuidToString(Uid);

  ModuloGenerales.tTerminalesFecha_Instalacion.Value := Modulo.Enlace.AppServer.ServerDate;
end;

procedure TfrmTerminales.IDExit(Sender: TObject);
Var
    SearchResult : Integer;
begin
  SearchResult := ParamSearchKey(ModuloGenerales.tTerminales,'ID',ID.Text);

  If SearchResult = _CodeNotFound Then
    Begin
      _MoveFocus := False;
      Nuevo_RegistroExecute(Sender);
      _MoveFocus := True;
    End
end;

procedure TfrmTerminales.SalirExecute(Sender: TObject);
begin
  Close
end;

Initialization
  RegisterClass(TfrmTerminales);

end.
