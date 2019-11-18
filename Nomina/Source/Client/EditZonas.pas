unit EditZonas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ActnColorMaps, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker;

type
  TFEditZonas = class(TForm)
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
    Ciudad: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEditZonas : TFEditZonas;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, RegKeys, Generales;

{$R *.dfm}

procedure TFEditZonas.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Configuracion de la Pantalla}
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
      ColorConfig.Color := Color - 5;

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos)
    End; {If _Load_Create}
end;

procedure TFEditZonas.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFEditZonas.GuardarExecute(Sender: TObject);
begin
  If ModuloGenerales.tZonas.State In DsEditModes Then
    ModuloGenerales.tZonas.Post;

  If ModuloGenerales.tZonas.ChangeCount > 0 Then
    ModuloGenerales.tZonas.ApplyUpdates(0);

  ModuloGenerales.tZonas.Refresh;

  PopupMessage(Modulo.Mensajes,_DatosGuardados);
  Salir.Execute
end;

procedure TFEditZonas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  Found : TWinControl;
begin
  Case Key Of
    VK_HOME    : Nombre.SetFocus;

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

procedure TFEditZonas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  If ModuloGenerales.tZonas.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicionSalida),
                              PChar(Salir.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then
      Begin
        Action := caNone;
        Exit
      End;

  ModuloGenerales.tZonas.Cancel;
  ModuloGenerales.tZonas.CancelUpdates
end;

Initialization
  RegisterClass(TFEditZonas);

end.
