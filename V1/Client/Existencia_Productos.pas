unit Existencia_Productos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, wwriched, Grids,
  Wwdbigrd, Wwdbgrid, frmProveedores, Wwdbspin, IniFiles, RegKeys, SUIButton;

type
  TFExistencia_Inicial = class(TForm)
    ActionMainMenuBar1: TActionMainMenuBar;
    Detalles_Compra: TAdvPageControl;
    Page_Detalles: TAdvTabSheet;
    Detalles: TwwDBGrid;
    DetallesIButton: TwwIButton;
    wwDBLookupCombo1: TwwDBLookupCombo;
    seAnio: TwwDBSpinEdit;
    seMes: TwwDBSpinEdit;
    Label1: TLabel;
    Label7: TLabel;
    Descripcion: TwwDBComboBox;
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Codigo: TwwDBComboBox;
    bt_Aceptar: TsuiButton;
    bt_Cancelar: TsuiButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DetallesEnter(Sender: TObject);
    procedure DetallesExit(Sender: TObject);
    procedure DetallesCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure DetallesColEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FExistencia_Inicial : TFExistencia_Inicial;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, DateUtils, Generales;

{$R *.dfm}

procedure TFExistencia_Inicial.FormCreate(Sender: TObject);
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

      {Limite de entrada para el año de vencimiento del producto}
      seAnio.MinValue := YearOf(Modulo.Enlace.AppServer.ServerDate);
      seAnio.MaxValue := seAnio.MinValue + 30;

      {Abrir las Tablas Requeridas}
      Modulo.tParametros.Params.ParamByName('Terminal').AsString := _CurrentTerminal;
      Modulo.tParametros.Open;

      Modulo.tExistenciaInicial.Close;
      Modulo.tExistenciaInicial.Params.ParamByName('Proceso').Value := Modulo.tProductosCodigo.Value;
      Modulo.tExistenciaInicial.Open;

      {Insertar Registro en Blanco}
      Nuevo.Execute
    End; {If _Load_Create}
end;

procedure TFExistencia_Inicial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If Modulo.tExistenciaInicial.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicionSalida),
                              PChar(Salir.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then
      Begin
        Action := caNone;
        Exit
      End;
  {Cerrar las Tablas Requeridas}
  Modulo.tExistenciaInicial.Cancel;
  Modulo.tExistenciaInicial.CancelUpdates;
  Modulo.tExistenciaInicial.Close
end;

procedure TFExistencia_Inicial.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFExistencia_Inicial.NuevoExecute(Sender: TObject);
begin
  Modulo.tExistenciaInicial.Cancel;
  Modulo.tExistenciaInicial.Append;

  Modulo.tExistenciaInicialUsuario.Value := _CurrentUser;
  Modulo.tExistenciaInicialFecha.Value := Modulo.Enlace.AppServer.ServerDate;
  Modulo.tExistenciaInicialHora.Value  := Modulo.Enlace.AppServer.ServerTime;

  Modulo.tExistenciaInicialProceso.Value := Modulo.tProductosCodigo.Value;
  Modulo.tExistenciaInicialCodigo.Value := Modulo.tProductosCodigo.Value;
  Modulo.tExistenciaInicial.Params.ParamByName('Proceso').Value := Modulo.tProductosCodigo.Value
end;

procedure TFExistencia_Inicial.GuardarExecute(Sender: TObject);
begin
  If Modulo.tExistenciaInicial.RecordCount <= 0 Then
    Raise Exception.Create(_NoDatosGuardar);

  If Modulo.tExistenciaInicial.State In DsEditModes Then
    Modulo.tExistenciaInicial.Post;

  If Modulo.tExistenciaInicial.ChangeCount > 0 Then
    Modulo.tExistenciaInicial.ApplyUpdates(0);

  Modulo.tExistenciaInicial.Refresh;

  PopUpMessage(Modulo.Mensajes,_DatosGuardados);

  If (Sender Is TAction) Then
    If (Sender As TAction).Name = Guardar.Name Then
     Salir.Execute
end;

procedure TFExistencia_Inicial.FormKeyDown(Sender: TObject; var Key: Word;
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
      End;

    VK_F3      :
      Begin
      End
  End {Case}
end;

procedure TFExistencia_Inicial.DetallesEnter(Sender: TObject);
begin
  KeyPreview := False;
  Detalles.SelectedField := Modulo.tExistenciaInicialMes
end;

procedure TFExistencia_Inicial.DetallesExit(Sender: TObject);
begin
  KeyPreview := True
end;

procedure TFExistencia_Inicial.DetallesCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  If Field = Modulo.tDetalles_CompraTotal_Costo Then
    ABrush.Color := Detalles.TitleColor;

  If Field = Modulo.tDetalles_CompraCosto Then
    ABrush.Color := Detalles.TitleColor
end;

procedure TFExistencia_Inicial.DetallesColEnter(Sender: TObject);
begin
  Detalles.RedrawGrid
end;

Initialization
  RegisterClass(TFExistencia_Inicial);

end.
