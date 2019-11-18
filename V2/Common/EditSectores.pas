unit EditSectores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ActnColorMaps, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker;

type
  TFEditSectores = class(TForm)
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Panel_Datos_Generales: TAdvPageControl;
    Pg_Datos_Generales: TAdvTabSheet;
    Label1: TLabel;
    Label7: TLabel;
    Nombre: TwwDBComboBox;
    Codigo: TDBEdit;
    Nombre_Pais: TDBEdit;
    Region: TDBEdit;
    Ciudad: TDBEdit;
    Label2: TLabel;
    Abreviaturas: TwwDBComboBox;
    Panel_Botones: TAdvPageControl;
    Pg_Botones: TAdvTabSheet;
    Botones: TActionToolBar;
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
  FEditSectores : TFEditSectores;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, RegKeys, Generales;

{$R *.dfm}

procedure TFEditSectores.FormCreate(Sender: TObject);
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
    End; {If _Load_Create}
end;

procedure TFEditSectores.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFEditSectores.GuardarExecute(Sender: TObject);
begin
  If ModuloGenerales.tSectores.State In DsEditModes Then
    ModuloGenerales.tSectores.Post;

  If ModuloGenerales.tSectores.ChangeCount > 0 Then
    ModuloGenerales.tSectores.ApplyUpdates(0);

  ModuloGenerales.tSectores.Refresh;

  PopupMessage(ModuloGenerales.Mensajes,_DatosGuardados);
  Salir.Execute
end;

procedure TFEditSectores.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFEditSectores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  If ModuloGenerales.tSectores.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicionSalida),
                              PChar(Salir.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then
      Begin
        Action := caNone;
        Exit
      End;

  ModuloGenerales.tSectores.Cancel;
  ModuloGenerales.tSectores.CancelUpdates
end;

Initialization
  RegisterClass(TFEditSectores);

end.
