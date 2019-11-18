unit Aplicar_Horas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ActnList, XPStyleActnCtrls, ActnMan, 
  ToolWin, ActnCtrls, Mask, DBCtrls, ExtCtrls, wwdbedit;

type
  TFAplicar_Horas = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    atv_Acept_Cancel: TActionToolBar;
    Opciones: TActionManager;
    Login: TAction;
    Salir: TAction;
    Solo_Vacias: TCheckBox;
    Regulares: TEdit;
    Extra: TEdit;
    Extraordinarias: TEdit;
    procedure ValSoloNumeros(Sender: TObject; var Key: Char);
    procedure SalirExecute(Sender: TObject);
    procedure LoginExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAplicar_Horas: TFAplicar_Horas;

implementation

uses Utilidades, RegKeys;

{$R *.dfm}

procedure TFAplicar_Horas.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Configuracion de la Pantalla}
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
    End; {If _Load_Create}
end;

procedure TFAplicar_Horas.FormKeyDown(Sender: TObject; var Key: Word;
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
  End {Case}end;

procedure TFAplicar_Horas.LoginExecute(Sender: TObject);
begin
  ModalResult := MrOk
end;

procedure TFAplicar_Horas.ValSoloNumeros(Sender: TObject; var Key: Char);
begin
  If Not (Key In ['0'..'9',
                  Chr(VK_Return),
                  Chr(VK_TAB),
                  Chr(VK_Left),
                  Chr(VK_Right),
                  Chr(VK_Back),
                  Chr(VK_Home),
                  Chr(VK_End)]) Then SysUtils.Abort
  
end;

procedure TFAplicar_Horas.SalirExecute(Sender: TObject);
begin
  ModalResult := MrCancel
end;

Initialization
  RegisterClass(TFAplicar_Horas);

end.
