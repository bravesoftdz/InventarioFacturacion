unit Apertura_Caja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, Mask, DBCtrls,
  ActnList, XPStyleActnCtrls, ActnMan, ppDB, ppCtrls, ppPrnabl, ppClass,
  ppBands, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppModule,
  raCodMod, ppVar, Db, Menus, ToolWin, ActnCtrls, RegKeys;

type
  TFApertura_Caja = class(TForm)
    Opciones: TActionManager;
    Procesar_Apertura: TAction;
    Label4: TLabel;
    Numero_Cuadre: TDBEdit;
    Label7: TLabel;
    Fecha_Cuadre: TDBEdit;
    Label8: TLabel;
    Hora_Cuadre: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    atv_Acept_Cancel: TActionToolBar;
    Cancelar: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Procesar_AperturaExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FApertura_Caja: TFApertura_Caja;
  TotalImpuesto : Currency = 0;

implementation

uses DataModulo, Utilidades, Generales;

{$R *.dfm}

procedure TFApertura_Caja.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Configuracion de la Pantalla}
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
      _CanCancel := True;

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);

      Modulo.tApertura_Caja.Open;
      Modulo.tApertura_Caja.Append;
      Modulo.tApertura_CajaUsuario.Value := _CurrentUser;
      Modulo.tApertura_CajaFecha.Value := Modulo.Enlace.AppServer.ServerDate;
      Modulo.tApertura_CajaHora.Value := Modulo.Enlace.AppServer.ServerTime;
    End; {If _Load_Create}
end;

procedure TFApertura_Caja.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Modulo.tApertura_Caja.Cancel;
  Modulo.tApertura_Caja.CancelUpdates;
  Modulo.tApertura_Caja.Close
end;

procedure TFApertura_Caja.Procesar_AperturaExecute(Sender: TObject);
begin
  If Modulo.tApertura_Caja.State In DsEditModes Then Modulo.tApertura_Caja.Post;
  If Modulo.tApertura_Caja.ChangeCount > 0 Then Modulo.tApertura_Caja.ApplyUpdates(0);
  Modulo.tApertura_Caja.Refresh;
  Close
end;

procedure TFApertura_Caja.FormKeyDown(Sender: TObject; var Key: Word;
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


Initialization
  RegisterClass(TFApertura_Caja);

end.
