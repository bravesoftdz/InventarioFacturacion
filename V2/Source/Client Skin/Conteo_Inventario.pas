unit Conteo_Inventario;

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
  TfrmConteo_Inventario = class(TForm)
    Detalles_Compra: TAdvPageControl;
    Page_Detalles: TAdvTabSheet;
    Detalles: TwwDBGrid;
    DetallesIButton: TwwIButton;
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Evaluar: TAction;
    bt_Aceptar: TsuiButton;
    bt_Cancelar: TsuiButton;
    Imprimir: TAction;
    suiButton1: TsuiButton;
    Iniciar: TAction;
    Codigos: TwwDBLookupCombo;
    Buscar_Producto: TwwIncrementalSearch;
    Fecha_Inventario: TDateTimePicker;
    suiButton2: TsuiButton;
    Label1: TLabel;
    suiButton3: TsuiButton;
    Label2: TLabel;
    procedure IniciarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure DetallesEnter(Sender: TObject);
    procedure DetallesExit(Sender: TObject);
    procedure DetallesCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure DetallesColEnter(Sender: TObject);
    procedure EvaluarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Proceso : String;
  end;

var
  frmConteo_Inventario : TfrmConteo_Inventario;
  Buffer     : String = '';

implementation

uses DataModulo, Utilidades, DateUtils, Generales, Reports_Forms,
  Show_Evaluacion_Inventario;

{$R *.dfm}

procedure TfrmConteo_Inventario.FormCreate(Sender: TObject);
  Var
    I : Integer;
begin
  If _Load_Create Then
    Begin
      _Validar_Conteo  := True;
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
      Fecha_Inventario.Date := Date();

      Modulo.SenderForm := Self;
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

      Proceso := _NoneString;

      {Abrir las Tablas Requeridas}
      Modulo.tListadoProductos.Filter := '';
      Modulo.tListadoProductos.Filtered := False;
      Modulo.tListadoProductos.PacketRecords := -1;
      Modulo.tListadoProductos.Open;
      Modulo.tListadoProductos.IndexFieldNames := 'Codigo';
      Modulo.tListadoProductos.First;

      Detalles.Enabled := False;
      Guardar.Enabled := False;
      Evaluar.Enabled := False;
    End; {If _Load_Create}
end;

procedure TfrmConteo_Inventario.FormClose(Sender: TObject; var Action: TCloseAction);
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
  Modulo.tValidacion_Inventario.Close;
  Modulo.tListadoProductos.Close
end;

procedure TfrmConteo_Inventario.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TfrmConteo_Inventario.GuardarExecute(Sender: TObject);
begin
  If Not Modulo.tAjuste_Inventario.Active Then Exit;

  ParamSearchKey(Modulo.tExistenciaInicial,'Proceso',Proceso);
  Modulo.tAjuste_Inventario.First;
  While Not Modulo.tAjuste_Inventario.Eof Do
    Begin
      If Modulo.tAjuste_InventarioDiferencia.Value <> 0 Then
         Begin

           If Modulo.tExistenciaInicial.Locate('Codigo_Real',Modulo.tAjuste_InventarioCodigo.Value,[]) Then
             Modulo.tExistenciaInicial.Edit
           Else
             Modulo.tExistenciaInicial.Append;

           Modulo.tExistenciaInicialProceso.Value := Proceso;
           Modulo.tExistenciaInicialCodigo.Value := Modulo.tAjuste_InventarioCodigo.Value;
           Modulo.tExistenciaInicialCodigo_Real.Value := Modulo.tAjuste_InventarioCodigo.Value;
           Modulo.tExistenciaInicialDescripcion.Value := Modulo.tAjuste_InventarioDescripcion.Value + ' - Ajuste de Inventario';
           Modulo.tExistenciaInicialContenido.Value := 1;
           Modulo.tExistenciaInicialCantidad.Value := Modulo.tAjuste_InventarioDiferencia.Value;
           Modulo.tExistenciaInicialTipo_Beneficio.Value := 'NO';
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

procedure TfrmConteo_Inventario.ImprimirExecute(Sender: TObject);
begin
  If Modulo.tAjuste_Inventario.RecordCount > 0 Then
    ReportsAndForms.Form_Conteo_Inventario.Print
  Else
    Mensaje(_NoPrintData,self)
end;

procedure TfrmConteo_Inventario.IniciarExecute(Sender: TObject);
  Var
    P : String;
    D,M,Y : Word;
begin
  DecodeDate(Fecha_Inventario.Date,Y,M,D);
  P := Format('CONTEO_%s_%s_%s.xml',[IntToStr(Y),IntToStr(M),IntToStr(D)]);
  Proceso := P;
  P := GetCurrentDir + '\'+P;
//  Mensaje (P,Self);

  Modulo.tAjuste_Inventario.Close;
  Modulo.tAjuste_InventarioProceso.DefaultExpression := QuotedStr(Proceso);

  Modulo.tAjuste_Inventario.FileName := P;
  Modulo.tValidacion_InventarioProceso.DefaultExpression := QuotedStr(Proceso);
  If Not FileExists(P) Then
    Modulo.tAjuste_Inventario.CreateDataSet;

  Modulo.tAjuste_Inventario.Open;
  Modulo.tAjuste_Inventario.SaveToFile('validar.xml');
  Modulo.tValidacion_Inventario.FileName := 'validar.xml';
  Modulo.tValidacion_Inventario.Open;

  Detalles.Enabled := True;
  Guardar.Enabled := True;
  Evaluar.Enabled := True;
end;

procedure TfrmConteo_Inventario.DetallesEnter(Sender: TObject);
begin
  KeyPreview := False;
  Detalles.SelectedField := Modulo.tExistenciaInicialMes
end;

procedure TfrmConteo_Inventario.DetallesExit(Sender: TObject);
begin
  KeyPreview := True
end;

procedure TfrmConteo_Inventario.EvaluarExecute(Sender: TObject);
begin
  
  Modulo.tEvaluacionInventario.FileName := 'Eval.'+Proceso;
  Modulo.tEvaluacionInventario.CreateDataSet;
  Modulo.tListadoProductos.Open;
  Modulo.tListadoProductos.First;
  While Not Modulo.tListadoProductos.EOF Do
    Begin
      If Modulo.tListadoProductosExistencia.Value <> 0 Then
        If Not Modulo.tAjuste_Inventario.Locate('Codigo',Modulo.tListadoProductosCodigo.Value,[]) Then
          Begin
            Modulo.tEvaluacionInventario.Append;

             Modulo.tEvaluacionInventarioProceso.Value := Proceso;
             Modulo.tEvaluacionInventarioCodigo.Value := Modulo.tListadoProductosCodigo.Value;
  //           Modulo.tEvaluacionInventarioDescripcion.Value := Modulo.tListadoProductosDescripcion.Value + ' - Ajuste de Inventario';
             Modulo.tEvaluacionInventario.Post;
          End;
      Modulo.tListadoProductos.Next;
    End;
  OpenForm(TfrmEvaluacion_Inventario,frmEvaluacion_Inventario);
end;

procedure TfrmConteo_Inventario.DetallesCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  If Field = Modulo.tAjuste_InventarioDiferencia Then
    ABrush.Color := Detalles.TitleColor
end;

procedure TfrmConteo_Inventario.DetallesColEnter(Sender: TObject);
begin
  Detalles.RedrawGrid
end;

Initialization
  RegisterClass(TfrmConteo_Inventario);

end.
