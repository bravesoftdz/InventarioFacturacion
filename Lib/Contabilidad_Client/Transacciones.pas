unit Transacciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, Menus, ToolWin, ActnCtrls, ActnMenus,
  ComCtrls, AdvPageControl, Db, Buttons, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook, wwdbdatetimepicker, wwriched, Grids,
  Wwdbigrd, Wwdbgrid, frmClientes, Wwdbspin, IniFiles, ppBarCod,
  ppCtrls, ppPrnabl, ppClass, ppCache, ppBands, ppProd, ppReport, ppDB,
  ppComm, ppRelatv, ppDBPipe, wwcheckbox, RegKeys, DBGrids;

type
  TFTransacciones = class(TForm)
    Opciones: TActionManager;
    Salir: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    Buscar: TAction;
    Barra_Opciones: TActionMainMenuBar;
    pcDatos_Factura: TAdvPageControl;
    DatosFactura: TAdvTabSheet;
    pcDetalles_Factura: TAdvPageControl;
    DetallesFactura: TAdvTabSheet;
    Botones: TAdvPageControl;
    Page_Botones: TAdvTabSheet;
    ActionToolBar1: TActionToolBar;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Diferencia: TDBEdit;
    Label9: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    HoraFactura: TDBEdit;
    Detalles: TwwDBGrid;
    Comentarios: TwwDBRichEdit;
    DetallesIButton: TwwIButton;
    Imprimir: TAction;
    ConceptoFactura: TwwDBComboBox;
    Label12: TLabel;
    Total_Debitos: TDBEdit;
    Total_Creditos: TDBEdit;
    Label1: TLabel;
    NumeroTransaccion: TDBEdit;
    Configuracion_Transacciones: TAction;
    VistaPrevia: TCheckBox;
    Label2: TLabel;
    Referencia: TwwDBComboBox;
    Fecha: TwwDBDateTimePicker;
    Numeros_Cuentas: TwwDBLookupCombo;
    Nombres_Cuentas: TwwDBLookupCombo;
    procedure DetallesColEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SerialPortTriggerAvail(CP: TObject; Count: Word);
    procedure BuscarExecute(Sender: TObject);
    procedure DetallesEnter(Sender: TObject);
    procedure DetallesExit(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure DetallesCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure DescripcionesCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ClienteDropDown(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Configuracion_TransaccionesExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

{Function ImprimirRecibo(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;
Function ImprimirFactura(Const OutDevice : String;Const Desglozar : Boolean) : Boolean;}

var
  FTransacciones : TFTransacciones;
  Buffer     : String = '';

implementation

uses Utilidades, dotmatrx, DateUtils, CnfgForms, Reports_Forms,
  Registry, Generales, DataModuloContabilidad, DataModulo, Acc_Forms, SrchDlg;

{$R *.dfm}

procedure TFTransacciones.FormCreate(Sender: TObject);
  Var
    I : Integer;
begin
  If _Load_Create Then
    Begin
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);

      {Asigna a los Botones Los ShortCuts Del Menu y Action Lists}
      For I := 0 To (Self.ComponentCount - 1) Do
        Begin
          If (Self.Components[I] Is TAdvPageControl) Then
             (Self.Components[I] As TAdvPageControl).TabBackGroundColor := Color;
        End;

      {Configuracion General}

      ModuloContabilidad.tTransacciones.Open;
      ModuloContabilidad.tCuentas.Open;
      ModuloContabilidad.tAuxiliares.Open;

      Reginfo.CloseKey;
      RegInfo.OpenKey(_GeneralConfigKey,True);

      {Insertar Registro en Blanco}
      Nuevo.Execute
    End
    {If _Load_Create}
end;

procedure TFTransacciones.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If ModuloContabilidad.tTransacciones.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicionSalida),
                              PChar(Salir.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then
      Begin
        Action := caNone;
        Exit
      End;

  {Cerrar las Tablas Requeridas}
  ModuloContabilidad.tCuentas.Close;
  ModuloContabilidad.tAuxiliares.Close;
  ModuloContabilidad.tTransacciones.Close
end;

procedure TFTransacciones.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFTransacciones.NuevoExecute(Sender: TObject);
begin
  {Verificar el estado de la tabla de Transacciones}
  If ModuloContabilidad.tTransacciones.State In DsEditModes Then
    If Application.MessageBox(PChar(_DatosEnEdicion),
                              PChar(Nuevo.Caption),
                              MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

  {Filtrar la Tabla de Productos}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,False);


  {Carga la Configuracion Inicial de la Pantalla}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_TransaccionesKey,False);

  VistaPrevia.Checked := RegInfo.ReadBool(_PreviewForm);

  Case RegInfo.ReadBool(_UseCustomControl) Of
    True  : Detalles.SetControlType('Codigo', fctCustom, 'Codigos');
    False : Detalles.SetControlType('Codigo', fctField, '')
  End; {Case}

  Detalles.RedrawGrid;

  {Ubicar el Punto de Edicion}
  If Self.Visible Then
    If RegInfo.ReadBool(_DetalleFacturaFocus) Then Detalles.SetFocus
  Else;
//    Referencia.SetFocus;

  RegInfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,False);

  {Preparar la Tabla de Transacciones}
  ModuloContabilidad.tTransacciones.Cancel;
  ModuloContabilidad.tTransacciones.CancelUpdates;
  ModuloContabilidad.tTransacciones.Append;

  ModuloContabilidad.tTransaccionesFecha.Value := ModuloContabilidad.Enlace.AppServer.ServerDate;
  ModuloContabilidad.tTransaccionesHora.Value  := ModuloContabilidad.Enlace.AppServer.ServerTime;
  ModuloContabilidad.tTransaccionesReferencia.Value := '-';
  ModuloContabilidad.tTransaccionesStatus.Value := _stACTIVO;
  ModuloContabilidad.tTransaccionesUsuario.Value := _CurrentUser;

  ModuloContabilidad.tTransaccionesProceso.Value := Gen_ProcessNumber(_CurrentUser);
  ModuloContabilidad.tTransacciones.Params.ParamByName('Proceso').Value := ModuloContabilidad.tTransaccionesProceso.Value;

end;

procedure TFTransacciones.GuardarExecute(Sender: TObject);
begin
  Comentarios.SetFocus;

  If ModuloContabilidad.tDetalle_Transacciones.State In dsEditModes Then ModuloContabilidad.tDetalle_Transacciones.Post;

  If ModuloContabilidad.tDetalle_Transacciones.RecordCount <= 0 Then
    Raise Exception.Create(_NoDatosGuardar);

  If ModuloContabilidad.tTransacciones.State In DsEditModes Then
    ModuloContabilidad.tTransacciones.Post;

  If ModuloContabilidad.tTransacciones.ChangeCount > 0 Then
    Begin
      ModuloContabilidad.tTransacciones.ApplyUpdates(0);
      ModuloContabilidad.tTransacciones.Refresh
    end;


  PopUpMessage(Modulo.Mensajes,_DatosGuardados);

  If (Sender Is TAction) Then
    If (Sender As TAction).Name = Guardar.Name Then
     Nuevo.Execute
end;

procedure TFTransacciones.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFTransacciones.SerialPortTriggerAvail(CP: TObject; Count: Word);
var
  I : Word;
  C : Char;
  S : String;
begin
{  S := '';
  For I := 1 To Count Do
    Begin
      C := ModuloContabilidad.SerialPort.GetChar;
    Case C of
      #0..#31 : {Don't display} ;
{    Else S := S + C;
    end;   {Case}
{  end;
  Buffer := Buffer + S;

  If Count < 8 Then
    Begin
      ModuloContabilidad.tDetalles_FacturaCodigo.Value := Buffer;
      Buffer := ''
    End}
end;

procedure TFTransacciones.BuscarExecute(Sender: TObject);
  Var
    R : Integer;
    S : String;
begin
  S := DoSearch(Nil,
                'Transacciones',                                      (* TableName *)
                'SrchPr',                                        (* Provider *)
                ModuloContabilidad.tTransaccionesProceso.FieldName,               (* CampoClave *)
                ModuloContabilidad.tTransaccionesNumero.FieldName,                (* CampoInicial *)
                '',                  (* AltQry *)
                ModuloContabilidad.Enlace,                                   (* RemoteServer *)
                'A',                                             (* SortOrder *)
                -1,                                              (* Packet Records *)
                wsMaximized,
                R);

  If R = MrOk Then
    Begin
      {Verificar el estado de la tabla de Salidas}
      If ModuloContabilidad.tTransacciones.State In DsEditModes Then
        If Application.MessageBox(PChar(_DatosEnEdicion),
                                  PChar(Buscar.Caption),
                                  MB_YESNO + MB_ICONQUESTION) = ID_No Then Exit;

      ModuloContabilidad.tTransacciones.Cancel;
      ModuloContabilidad.tTransacciones.CancelUpdates;
      ModuloContabilidad.tTransacciones.Params.ParamByName('Proceso').AsString := S;
      ModuloContabilidad.tTransacciones.Refresh;
    End
end;

procedure TFTransacciones.DetallesEnter(Sender: TObject);
begin
  KeyPreview := False;
  Detalles.SelectedField := ModuloContabilidad.tDetalle_TransaccionesCuenta
end;

procedure TFTransacciones.DetallesExit(Sender: TObject);
begin
  KeyPreview := True
end;

procedure TFTransacciones.ImprimirExecute(Sender: TObject);
  Var
    DoPreview    : Boolean;
    OutputFormat : ShortInt;

  Const
    DeviceTypes  : Array [False..True] Of String = ('Printer','Screen');

begin
  Comentarios.SetFocus;

  RegInfo.CloseKey;
  RegInfo.OpenKey(_TransaccionesKey,False);

  DoPreview := RegInfo.ReadBool(_PreviewForm);
  OutputFormat := RegInfo.ReadInteger(_OutputFormat);

  GuardarExecute(Sender);

  Case OutputFormat Of
    _Ticket : Begin
                If DoPreview Then
                  Begin
                    Application.CreateForm(TPreviewForm,PreviewForm);
//                    ImprimirRecibo(_Screen,Desglosar.Checked);
                    PreviewForm.Vista.Lines.LoadFromFile(_PreviewFile);
                    PreviewForm.ShowModal;
                    If PreviewForm.ModalResult = MrOk Then DoPreview := False;
                    PreviewForm.Free
                  End; {If DoPreview}

  //                If Not (DoPreview) Then ImprimirRecibo(_Port,Desglosar.Checked);
              End; // _Ticket

    _TextFormat : Begin
                    If DoPreview Then
                      Begin
                        Application.CreateForm(TPreviewForm,PreviewForm);
//                        ImprimirFactura(_Screen,Desglosar.Checked);
                        PreviewForm.Vista.Lines.LoadFromFile(_PreviewFile);
                        PreviewForm.ShowModal;
                        If PreviewForm.ModalResult = MrOk Then DoPreview := False;
                        PreviewForm.Free
                      End; {If DoPreview}

  //                    If Not (DoPreview) Then ImprimirFactura(_Port,Desglosar.Checked);
                  End; // _TextFormat

    _GraphicForm : Begin
                     With AccountingForms.FormEntrada_Diario Do
                       Begin
                         Template.FileName := RegInfo.ReadString(_TemplateFileName);

                         If (Trim(Template.FileName) <> _NoneStr) And (Trim(Template.FileName) <> '') Then
                           Template.LoadFromFile;

                         DeviceType                := DeviceTypes[VistaPrevia.Checked];
                         ShowPrintDialog           := RegInfo.ReadBool(_ShowPrintDialog);
                         PrinterSetup.Copies       := RegInfo.ReadInteger(_PrintCopies);
                         PrinterSetup.PaperName    := RegInfo.ReadString(_PaperName);
                         PrinterSetup.PaperHeight  := RegInfo.ReadFloat(_PaperHeight);
                         PrinterSetup.PaperWidth   := RegInfo.ReadFloat(_PaperWidth);
                         PrinterSetup.PrinterName  := RegInfo.ReadString(_PrinterName);
                         PrinterSetup.MarginBottom := RegInfo.ReadFloat(_MarginBottom);
                         PrinterSetup.MarginTop    := RegInfo.ReadFloat(_MarginTop);
                         PrinterSetup.MarginLeft   := RegInfo.ReadFloat(_MarginLeft);
                         PrinterSetup.MarginRight  := RegInfo.ReadFloat(_MarginRight);

                         AccountingForms._Seccion  := _TransaccionesKey;
                         Print
                       End // With
                   End // _GraphicForm
  End; // Case

  Nuevo.Execute;
end;

procedure TFTransacciones.DetallesCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  If Field = ModuloContabilidad.tDetalle_TransaccionesDebito Then
    Begin
      ABrush.Color := Total_Debitos.Color;
      AFont.Color := clBlack
    End;

  If Field = ModuloContabilidad.tDetalle_TransaccionesCredito Then
    Begin
      ABrush.Color := Total_Creditos.Color;
      AFont.Color := clBlack
    End;
end;

procedure TFTransacciones.DetallesColEnter(Sender: TObject);
begin
  Detalles.RedrawGrid;

  If Detalles.GetActiveField.FieldName = ModuloContabilidad.tDetalle_TransaccionesCuenta.FieldName Then
    ModuloContabilidad.tAuxiliares.IndexFieldNames := 'Numero';

  If Detalles.GetActiveField.FieldName = ModuloContabilidad.tDetalle_TransaccionesNombre_Cuenta.FieldName Then
    ModuloContabilidad.tAuxiliares.IndexFieldNames := 'Descripcion';
end;

procedure TFTransacciones.DescripcionesCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  If Modified Then
    ModuloContabilidad.tDetalle_TransaccionesCuenta.Value := ModuloContabilidad.tAuxiliaresNumero.Value
end;

procedure TFTransacciones.ClienteDropDown(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TFTransacciones.FormActivate(Sender: TObject);
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_TransaccionesKey,False);
  If RegInfo.ReadBool(_DetalleFacturaFocus) Then Detalles.SetFocus
  Else ConceptoFactura.SetFocus
end;

procedure TFTransacciones.Configuracion_TransaccionesExecute(Sender: TObject);
begin
  Application.CreateForm(TFConfigForms,FConfigForms);
  FConfigForms._Seccion := _TransaccionesKey;
  FConfigForms.Caption := Configuracion_Transacciones.Caption;
  If Trim(FConfigForms._Seccion) <> '' Then
    Try
      FConfigForms.LoadValues
    Finally
      FConfigForms.ShowModal;
      FConfigForms.Free
    End; // Try
end;

Initialization
  RegisterClass(TFTransacciones);

end.
