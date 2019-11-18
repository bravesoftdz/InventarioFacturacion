unit Show_Evaluacion_Inventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, wwriched, Grids,
  Wwdbigrd, Wwdbgrid, frmProveedores, Wwdbspin, IniFiles, RegKeys, SUIButton,
  Wwkeycb;

type
  TfrmEvaluacion_Inventario = class(TForm)
    Detalles_Compra: TAdvPageControl;
    Page_Detalles: TAdvTabSheet;
    Detalles: TwwDBGrid;
    DetallesIButton: TwwIButton;
    Opciones: TActionManager;
    Aceptar: TAction;
    Cancelar: TAction;
    bt_Cancelar: TsuiButton;
    suiButton1: TsuiButton;
    procedure FormCreate(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure AceptarExecute(Sender: TObject);
    procedure DetallesCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure CancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEvaluacion_Inventario : TfrmEvaluacion_Inventario;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, DateUtils, Generales, Reports_Forms;

{$R *.dfm}

procedure TfrmEvaluacion_Inventario.FormCreate(Sender: TObject);
  Var
    I : Integer;
begin
  If _Load_Create Then
    Begin
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

procedure TfrmEvaluacion_Inventario.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TfrmEvaluacion_Inventario.AceptarExecute(Sender: TObject);
begin
  ModalResult := MrOk;
end;

procedure TfrmEvaluacion_Inventario.CancelarExecute(Sender: TObject);
begin
  ModalResult := MrCancel;
end;

procedure TfrmEvaluacion_Inventario.DetallesCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  If Field = Modulo.tAjuste_InventarioDiferencia Then
    ABrush.Color := Detalles.TitleColor
end;

Initialization
  RegisterClass(TfrmEvaluacion_Inventario);

end.
