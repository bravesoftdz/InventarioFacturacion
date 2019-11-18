unit EditCiudades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ActnColorMaps, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker;

type
  TFEditCiudades = class(TForm)
    ColorConfig: TXPColorMap;
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Datos_Generales: TAdvPageControl;
    DatosGenerales: TAdvTabSheet;
    Label1: TLabel;
    Label7: TLabel;
    Nombre: TwwDBComboBox;
    Codigo: TDBEdit;
    Atb_Botones: TActionToolBar;
    Nombre_Pais: TDBEdit;
    Region: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CodigoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEditCiudades : TFEditCiudades;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, RegKeys, Generales;

{$R *.dfm}

procedure TFEditCiudades.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Configuracion de la Pantalla}
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
      ColorConfig.Color := Color - 5;

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
    End; {If _Load_Create}
end;

procedure TFEditCiudades.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFEditCiudades.GuardarExecute(Sender: TObject);
begin
  If ModuloGenerales.tCiudades.State In DsEditModes Then
    ModuloGenerales.tCiudades.Post;

  If ModuloGenerales.tCiudades.ChangeCount > 0 Then
    ModuloGenerales.tCiudades.ApplyUpdates(0);

  ModuloGenerales.tCiudades.Refresh;

  PopupMessage(Modulo.Mensajes,_DatosGuardados);

  Salir.Execute
end;

procedure TFEditCiudades.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  Found : TWinControl;
begin
  Case Key Of
    VK_HOME    : Codigo.SetFocus;

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

procedure TFEditCiudades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  If ModuloGenerales.tCiudades.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicionSalida),
                              PChar(Salir.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then
      Begin
        Action := caNone;
        Exit
      End;

  ModuloGenerales.tCiudades.Cancel;
  ModuloGenerales.tCiudades.CancelUpdates
end;

procedure TFEditCiudades.CodigoExit(Sender: TObject);
  Var
    TmpCode : String;
begin
  TmpCode := ModuloGenerales.tCiudadesSerie_Codigo.Value;
  If Trim(TmpCode) = '' Then Exit;

  ModuloGenerales.tCiudades.Cancel;
  If Not ModuloGenerales.tCiudades.Locate(ModuloGenerales.tCiudadesSerie_Codigo.FieldName,TmpCode,[]) Then
    Begin
      ModuloGenerales.tCiudades.Append;
      ModuloGenerales.tCiudadesSerie_Codigo.Value := TmpCode
    End
end;

Initialization
  RegisterClass(TFEditCiudades);

end.
