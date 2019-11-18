unit Establecer_Precios_Ventas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, wwdbedit, Wwdotdot,
  Wwdbcomb, AdvPageControl, ComCtrls, ActnMan, ActnList,
  XPStyleActnCtrls, ToolWin, ActnCtrls, SUIButton;

type
  TFPrecios_Venta = class(TForm)
    Panel_Datos_Venta: TAdvPageControl;
    Pgl_Datos_Venta: TAdvTabSheet;
    Label28: TLabel;
    Label29: TLabel;
    Label39: TLabel;
    Precio_Por_Minimo: TDBEdit;
    Tipo_Beneficio: TwwDBComboBox;
    Precio_Por_Mayor_Contado: TDBEdit;
    Opciones: TActionManager;
    Aceptar: TAction;
    Cancelar: TAction;
    Label1: TLabel;
    Valor_Beneficio_PorMayor_Contado: TDBEdit;
    bt_Aceptar: TsuiButton;
    bt_Cancelar: TsuiButton;
    lPRECIO_UNIDAD: TLabel;
    PRECIO_UNIDAD: TDBEdit;
    Panel_Datos_Adicionales: TAdvPageControl;
    AdvTabSheet1: TAdvTabSheet;
    Label30: TLabel;
    Valor_Beneficio_Contado: TDBEdit;
    Label26: TLabel;
    Label27: TLabel;
    Label40: TLabel;
    Precio_Detalle_Contado: TDBEdit;
    Precio_Detalle_Credito: TDBEdit;
    Precio_Por_Mayor_Credito: TDBEdit;
    bt_Move: TsuiButton;
    Down: TAction;
    Up: TAction;
    procedure CancelarExecute(Sender: TObject);
    procedure AceptarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UpExecute(Sender: TObject);
    procedure DownExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrecios_Venta: TFPrecios_Venta;

implementation

uses DataModulo, Utilidades, RegKeys, Generales;

{$R *.dfm}

procedure TFPrecios_Venta.CancelarExecute(Sender: TObject);
begin
  ModalResult := MrCancel
end;

procedure TFPrecios_Venta.DownExecute(Sender: TObject);
begin
  Panel_Datos_Adicionales.Top := bt_Aceptar.Top;

  bt_Aceptar.Top := 275;
  bt_Cancelar.Top := bt_Aceptar.Top;
  bt_Move.Top := bt_Aceptar.Top;

  Self.Height := 340;

  bt_Move.Action := Up;
end;

procedure TFPrecios_Venta.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);

      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
      Up.Execute;
    End {If _Load_Create}
end;

procedure TFPrecios_Venta.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFPrecios_Venta.UpExecute(Sender: TObject);
begin
  Panel_Datos_Adicionales.Top := 220;

  bt_Aceptar.Top := 150;
  bt_Cancelar.Top := bt_Aceptar.Top;
  bt_Move.Top := bt_Aceptar.Top;

  Self.Height := 215;

  bt_Move.Action := Down;
end;

procedure TFPrecios_Venta.AceptarExecute(Sender: TObject);
begin
  ModalResult := MrOk
end;

Initialization
  RegisterClass(TFPrecios_Venta);

  end.
