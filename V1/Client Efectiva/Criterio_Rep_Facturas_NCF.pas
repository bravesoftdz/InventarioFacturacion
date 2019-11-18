unit Criterio_Rep_Facturas_NCF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Spin, RegKeys, wwdblook;

type
  TFCriterio_Rep_Facturas_NCF = class(TForm)
    Aceptar: TBitBtn;
    Cancelar: TBitBtn;
    Clasificacion: TRadioGroup;
    TipoNcf: TwwDBLookupCombo;
    Label21: TLabel;
    procedure ClasificacionClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCriterio_Rep_Facturas_NCF: TFCriterio_Rep_Facturas_NCF;

implementation

uses Utilidades, DateUtils, DataModulo, Reports_Forms, SrchDlg, Generales;

{$R *.dfm}

procedure TFCriterio_Rep_Facturas_NCF.ClasificacionClick(Sender: TObject);
  Var Colores : Array [False..True] Of TColor;
begin
  Colores[False] := Self.Color;
  Colores[True] := clWindow;
  TipoNcf.Enabled := Clasificacion.ItemIndex = 1;
  TipoNcf.Color := Colores[TipoNcf.Enabled]
end;

procedure TFCriterio_Rep_Facturas_NCF.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Configuracion de la Pantalla}
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);
      ClasificacionClick(Sender)
    End; {If _Load_Create}
end;

procedure TFCriterio_Rep_Facturas_NCF.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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
  RegisterClass(TFCriterio_Rep_Facturas_NCF);

end.
