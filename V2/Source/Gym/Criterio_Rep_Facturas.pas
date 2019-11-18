unit Criterio_Rep_Facturas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Spin, RegKeys;

type
  TFCriterio_Rep_Facturas = class(TForm)
    Clasificacion: TRadioGroup;
    Aceptar: TBitBtn;
    Cancelar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCriterio_Rep_Facturas: TFCriterio_Rep_Facturas;

implementation

uses Utilidades, DateUtils, DataModulo, Reports_Forms, Generales;

{$R *.dfm}

procedure TFCriterio_Rep_Facturas.FormCreate(Sender: TObject);
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

procedure TFCriterio_Rep_Facturas.FormKeyDown(Sender: TObject;
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
  RegisterClass(TFCriterio_Rep_Facturas);

end.
