unit Ver_Detalles_Nomina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, wwDataInspector, ExtCtrls, StdCtrls, Mask, DBCtrls, Wwdbigrd,
  Wwdbgrid, ActnList, XPStyleActnCtrls, ActnMan, ToolWin, ActnCtrls,
  wwSpeedButton, wwDBNavigator, wwclearpanel;

type
  TFDetalles_Nomina = class(TForm)
    Panel1: TPanel;
    Dias: TwwDataInspector;
    Nombres: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Deducciones: TwwDBGrid;
    Pagos: TwwDBGrid;
    Atb_Editar: TActionToolBar;
    Opciones: TActionManager;
    Salir: TAction;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Navegador: TwwDBNavigator;
    Primer_Registro: TwwNavButton;
    Anteriores10: TwwNavButton;
    Anterior: TwwNavButton;
    Proximo: TwwNavButton;
    Proximos10: TwwNavButton;
    Ultimo_Registro: TwwNavButton;
    Marcar: TwwNavButton;
    VolverMarcado: TwwNavButton;
    procedure SalirExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DiasDrawDataCell(Sender: TwwDataInspector;
      ObjItem: TwwInspectorItem; ASelected: Boolean; ACellRect: TRect;
      var DefaultDrawing: Boolean);
    procedure DiasDrawCaptionCell(Sender: TwwDataInspector;
      ObjItem: TwwInspectorItem; ASelected: Boolean; ACellRect: TRect;
      var ACaptionRect: TRect; var DefaultTextDrawing: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDetalles_Nomina: TFDetalles_Nomina;

implementation

uses DataModulo, Utilidades, DataNomina, RegKeys, Generales;

{$R *.dfm}

procedure TFDetalles_Nomina.DiasDrawCaptionCell(Sender: TwwDataInspector;
  ObjItem: TwwInspectorItem; ASelected: Boolean; ACellRect: TRect;
  var ACaptionRect: TRect; var DefaultTextDrawing: Boolean);
begin
  If Pos('Extra',ObjItem.Field.FieldName) > 0 Then
    ObjItem.Caption := 'Horas Extra';

  If Pos('Extraordinarias',ObjItem.Field.FieldName) > 0 Then
    ObjItem.Caption := 'Extraordinarias';

  If Pos('Extra',ObjItem.Field.FieldName) = 0 Then
    Begin
       Dias.Canvas.Brush.Color := clMoneyGreen;
       Dias.Canvas.FillRect(ACellRect)
    end;

  If Pos('Dom',ObjItem.Field.FieldName) > 0  Then
    Begin
       Dias.Canvas.Brush.Color := clWebOrangeRed;
       Dias.Canvas.FillRect(ACellRect)
    end
end;

procedure TFDetalles_Nomina.DiasDrawDataCell(Sender: TwwDataInspector;
  ObjItem: TwwInspectorItem; ASelected: Boolean; ACellRect: TRect;
  var DefaultDrawing: Boolean);
begin
  If Pos('Extra',ObjItem.Field.FieldName) = 0 Then
    Begin
       Dias.Canvas.Brush.Color := clMoneyGreen;
       Dias.Canvas.FillRect(ACellRect)
    end;

  If Pos('Dom',ObjItem.Field.FieldName) > 0  Then
    Begin
       Dias.Canvas.Brush.Color := clWebOrangeRed;
       Dias.Canvas.FillRect(ACellRect)
    end
end;

procedure TFDetalles_Nomina.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Configuracion de la Pantalla}
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);
    End; {If _Load_Create}
end;

procedure TFDetalles_Nomina.SalirExecute(Sender: TObject);
begin
  Close
end;

Initialization
  RegisterClass(TFDetalles_Nomina);

end.
