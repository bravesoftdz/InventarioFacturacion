unit Ajuste_Inventario;

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
  TFAjuste_Inventario = class(TForm)
    Detalles_Compra: TAdvPageControl;
    Page_Detalles: TAdvTabSheet;
    Detalles: TwwDBGrid;
    DetallesIButton: TwwIButton;
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    bt_Aceptar: TsuiButton;
    bt_Cancelar: TsuiButton;
    Imprimir: TAction;
    suiButton1: TsuiButton;
    Imprimir_Plantilla_Conteo: TAction;
    suiButton2: TsuiButton;
    Buscar_Producto: TwwIncrementalSearch;
    Label1: TLabel;
    suiButton3: TsuiButton;
    Imprimir_Plantilla_Verificacion: TAction;
    procedure Imprimir_Plantilla_VerificacionExecute(Sender: TObject);
    procedure Imprimir_Plantilla_ConteoExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
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
  FAjuste_Inventario : TFAjuste_Inventario;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, DateUtils, Generales, Reports_Forms;

{$R *.dfm}

procedure TFAjuste_Inventario.FormCreate(Sender: TObject);
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

      {Abrir las Tablas Requeridas}
      Modulo.tAjuste_Inventario.Close;
      Modulo.tAjuste_Inventario.CreateDataSet;
      Modulo.tAjuste_Inventario.Open;

      Modulo.tListadoProductos.Filter := '';
      Modulo.tListadoProductos.Filtered := False;
      Modulo.tListadoProductos.PacketRecords := -1;
      Modulo.tListadoProductos.Open;
      Modulo.tListadoProductos.IndexFieldNames := 'Descripcion';
      Modulo.tListadoProductos.First;
      Try
        Modulo.tAjuste_Inventario.DisableControls;
        While Not Modulo.tListadoProductos.Eof Do
          Begin
            Modulo.tAjuste_Inventario.Append;
            Modulo.tAjuste_InventarioCodigo.AsString := Modulo.tListadoProductosCodigo.AsString;
            Modulo.tAjuste_InventarioDescripcion.AsString := Modulo.tListadoProductosDescripcion.AsString;
            Modulo.tAjuste_InventarioExistencia_Actual.Value := Modulo.tListadoProductosExistencia.Value;
            Modulo.tAjuste_Inventario.Post;
            Modulo.tListadoProductos.Next
          end;

      finally
        Modulo.tAjuste_Inventario.First;
        Modulo.tListadoProductos.PacketRecords := 20;
        Modulo.tAjuste_Inventario.EnableControls
      end;
    End; {If _Load_Create}
end;

procedure TFAjuste_Inventario.FormClose(Sender: TObject; var Action: TCloseAction);
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
  Modulo.tAjuste_Inventario.Close;
  Modulo.tListadoProductos.Close
end;

procedure TFAjuste_Inventario.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFAjuste_Inventario.GuardarExecute(Sender: TObject);
begin
  Modulo.tExistenciaInicial.Open;
  Modulo.tAjuste_Inventario.First;
  While Not Modulo.tAjuste_Inventario.Eof Do
    Begin
      If Modulo.tAjuste_InventarioDiferencia.Value <> 0 Then
         Begin
           Modulo.tExistenciaInicial.Append;
           Modulo.tExistenciaInicialProceso.Value := Modulo.tAjuste_InventarioCodigo.Value;
           Modulo.tExistenciaInicialCodigo.Value := Modulo.tAjuste_InventarioCodigo.Value;
           Modulo.tExistenciaInicialCodigo_Real.Value := Modulo.tAjuste_InventarioCodigo.Value;
           Modulo.tExistenciaInicialDescripcion.Value := Modulo.tAjuste_InventarioDescripcion.Value + ' - Ajuste de Inventario';
           Modulo.tExistenciaInicialContenido.Value := 1;
           Modulo.tExistenciaInicialCantidad.Value := Modulo.tAjuste_InventarioDiferencia.Value;
           Modulo.tExistenciaInicial.Post;
           Modulo.tExistenciaInicial.ApplyUpdates(0)
         end;

      Modulo.tAjuste_Inventario.Next
    end;

  PopUpMessage(Modulo.Mensajes,_DatosGuardados);

  If (Sender Is TAction) Then
    If (Sender As TAction).Name = Guardar.Name Then
     Salir.Execute
end;

procedure TFAjuste_Inventario.ImprimirExecute(Sender: TObject);
begin
  If Modulo.tAjuste_Inventario.RecordCount > 0 Then
    ReportsAndForms.Form_Ajuste_Inventario.Print
  Else
    Mensaje(_NoPrintData)
end;

procedure TFAjuste_Inventario.Imprimir_Plantilla_ConteoExecute(Sender: TObject);
begin
  ReportsAndForms.Lbl_Existencia_Actual.Visible := True;
  ReportsAndForms.Dt_Existencia_Actual.Visible := True;

  If Modulo.tAjuste_Inventario.RecordCount > 0 Then
    ReportsAndForms.Form_Plantilla_Conteo.Print
  Else
    Mensaje(_NoPrintData)
end;

procedure TFAjuste_Inventario.Imprimir_Plantilla_VerificacionExecute(
  Sender: TObject);
begin
  ReportsAndForms.Lbl_Existencia_Actual.Visible := False;
  ReportsAndForms.Dt_Existencia_Actual.Visible := False;

  If Modulo.tAjuste_Inventario.RecordCount > 0 Then
    ReportsAndForms.Form_Plantilla_Conteo.Print
  Else
    Mensaje(_NoPrintData)
end;

procedure TFAjuste_Inventario.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFAjuste_Inventario.DetallesEnter(Sender: TObject);
begin
  KeyPreview := False;
  Detalles.SelectedField := Modulo.tExistenciaInicialMes
end;

procedure TFAjuste_Inventario.DetallesExit(Sender: TObject);
begin
  KeyPreview := True
end;

procedure TFAjuste_Inventario.DetallesCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  If Field = Modulo.tAjuste_InventarioDiferencia Then
    ABrush.Color := Detalles.TitleColor
end;

procedure TFAjuste_Inventario.DetallesColEnter(Sender: TObject);
begin
  Detalles.RedrawGrid
end;

Initialization
  RegisterClass(TFAjuste_Inventario);

end.
