unit CancelarCtasCobrar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, wwDataInspector, AdvPageControl, ComCtrls, Wwdbigrd,
  Wwdbgrid, ActnMan, Buttons, ActnList, XPStyleActnCtrls,
  ToolWin, ActnCtrls, Db, StdCtrls, wwdbdatetimepicker, Mask, DBCtrls, ExtCtrls,
  RegKeys, SUIButton, Menus, wwdblook, SUIPopupMenu, Wwkeycb;

type
  TFCancel_Ctas_Cobrar = class(TForm)
    Panel_Facturas: TAdvPageControl;
    Pg_Facturas: TAdvTabSheet;
    Facturas_Cliente: TwwDBGrid;
    Opciones: TActionManager;
    Salir: TAction;
    Buscar_Factura: TAction;
    Panel_Botones: TAdvPageControl;
    Pg_Botones: TAdvTabSheet;
    Botones: TActionToolBar;
    Cancelar: TAction;
    Facturas_ClienteIButton: TwwIButton;
    Opciones_Miscelaneas: TsuiPopupMenu;
    Pop_Imprimir_Factura: TMenuItem;
    Pop_Configuracion_Nota_Credito: TMenuItem;
    Pop_Configuracion_Facturas: TMenuItem;
    N1: TMenuItem;
    Opciones_Recibos: TsuiPopupMenu;
    AnularPago1: TMenuItem;
    Busca_Factura: TwwIncrementalSearch;
    Seleccionar_Todas: TAction;
    Ninguna_Seleccionada: TAction;
    LValorPago: TLabel;
    LFechaPago: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Filtrar: TCheckBox;
    procedure FiltrarClick(Sender: TObject);
    procedure Ninguna_SeleccionadaExecute(Sender: TObject);
    procedure Seleccionar_TodasExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PagarExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Facturas_ClienteCalcCellColors(Sender: TObject;
      Field: TField; State: TGridDrawState; Highlight: Boolean;
      AFont: TFont; ABrush: TBrush);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCancel_Ctas_Cobrar : TFCancel_Ctas_Cobrar;

implementation

uses DataModulo, Utilidades, Reports_Forms, Generales, CnfgForms,
  Autorizar, DlgFechas;

{$R *.dfm}

procedure TFCancel_Ctas_Cobrar.FormCreate(Sender: TObject);
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
             (Self.Components[I] As TAdvPageControl).TabBackGroundColor := Color
        End;

      RegInfo.CloseKey;
      RegInfo.OpenKey(_PagosClienteKey,False);

      {Abrir las Tablas Requeridas}
      Modulo.tParametros.Params.ParamByName('Terminal').AsString := _CurrentTerminal;
      Modulo.tParametros.Open;

      Modulo.tListado_Facturas.Close;
      Modulo.tListado_Facturas.CommandText := 'Select * From "Facturas" Where "Pendiente" > 0';
      Modulo.tListado_Facturas.Open;
    End; {If _Load_Create}

  end;

procedure TFCancel_Ctas_Cobrar.Ninguna_SeleccionadaExecute(Sender: TObject);
begin
  Facturas_Cliente.UnselectAll
end;

procedure TFCancel_Ctas_Cobrar.PagarExecute(Sender: TObject);
  Var
    I : Integer;
begin
  For I := 0 To Facturas_Cliente.SelectedList.Count - 1 Do
    Begin
      Modulo.tListado_Facturas.GotoBookmark(Facturas_Cliente.SelectedList.Items[I]);
      Modulo.tListado_Facturas.Edit;
      Modulo.tListado_FacturasPagado.Value := Modulo.tFacturasTotalNeto.Value;
      Modulo.tListado_FacturasPendiente.Value := 0;
      Modulo.tListado_Facturas.Post;
      Modulo.tListado_Facturas.ApplyUpdates(0);
    end; {For}
    Ninguna_SeleccionadaExecute(Sender);
    Modulo.tListado_Facturas.Refresh
end;

procedure TFCancel_Ctas_Cobrar.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFCancel_Ctas_Cobrar.Seleccionar_TodasExecute(Sender: TObject);
begin
  Facturas_Cliente.SelectAll
end;

procedure TFCancel_Ctas_Cobrar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Modulo.tListado_Facturas.Filtered := False;
  Modulo.tListado_Facturas.Close
end;

procedure TFCancel_Ctas_Cobrar.Facturas_ClienteCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  If (Modulo.tListado_FacturasPendiente.Value <= _Margen) Then
    Begin
      If (not Highlight) Then ABrush.Color := $00A5F1C1;
      AFont.Color := clBlue
    End;

  If Highlight Then AFont.Color := clYellow
end;

procedure TFCancel_Ctas_Cobrar.FiltrarClick(Sender: TObject);
begin

  If Filtrar.Checked Then
    Begin
      Application.CreateForm(TDlgFecha,DlgFecha);
      DlgFecha.ShowModal;
      If DlgFecha.ModalResult = MrOk Then
        Modulo.tListado_Facturas.Filter := Format ('Fecha >= %s And Fecha <= %s',[QuotedStr(DateToStr(DlgFecha.Inicio.Date)), QuotedStr(DateToStr(DlgFecha.Fin.Date))]);
      DlgFecha.Free
    end;
  Modulo.tListado_Facturas.Filtered := Filtrar.Checked
end;

Initialization
  RegisterClass(TFCancel_Ctas_Cobrar);

  end.
