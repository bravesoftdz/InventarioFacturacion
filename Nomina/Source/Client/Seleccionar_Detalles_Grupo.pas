unit Seleccionar_Detalles_Grupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, ActnList, XPStyleActnCtrls, ActnMan,
  ToolWin, ActnCtrls, ExtCtrls;

type
  TFSelect_Deducciones_Pagos = class(TForm)
    Opciones: TActionManager;
    Cancelar: TAction;
    Aceptar: TAction;
    Panel1: TPanel;
    Detalles: TwwDBGrid;
    Atb_Editar: TActionToolBar;
    ActionToolBar1: TActionToolBar;
    Seleccionar_Todos: TAction;
    Ninguno: TAction;
    procedure NingunoExecute(Sender: TObject);
    procedure Seleccionar_TodosExecute(Sender: TObject);
    procedure AceptarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSelect_Deducciones_Pagos: TFSelect_Deducciones_Pagos;

implementation

uses DataModulo, Utilidades, DataNomina, RegKeys;

{$R *.dfm}

procedure TFSelect_Deducciones_Pagos.AceptarExecute(Sender: TObject);
begin
  ModalResult := mrOk
end;

procedure TFSelect_Deducciones_Pagos.CancelarExecute(Sender: TObject);
begin
  ModalResult := mrCancel
end;

procedure TFSelect_Deducciones_Pagos.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Configuracion de la Pantalla}
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
    End
    {If _Load_Create}
end;

procedure TFSelect_Deducciones_Pagos.NingunoExecute(Sender: TObject);
begin
  Detalles.UnselectAll
end;

procedure TFSelect_Deducciones_Pagos.Seleccionar_TodosExecute(Sender: TObject);
begin
  Detalles.SelectAll
end;

Initialization
  RegisterClass(TFSelect_Deducciones_Pagos);


end.
