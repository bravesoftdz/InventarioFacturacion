unit DlgFechas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls, ExtCtrls, Spin, RegKeys, ActnList,
  ActnMan, AdvGlowButton, ToolPanels,
  AdvGroupBox, AdvOfficeButtons, AdvSmoothPanel, AdvSmoothEdit,
  AdvSmoothEditButton, AdvSmoothDatePicker, AdvEdit, AdvEdBtn, PlannerDatePicker,
  AdvDateTimePicker, XPStyleActnCtrls;

type
  TDlgFecha = class(TForm)
    adv_OptionPanel: TAdvToolPanel;
    gbt_Aceptar: TAdvGlowButton;
    gbt_Cancelar: TAdvGlowButton;
    Opciones_Pantalla: TActionManager;
    act_Aceptar: TAction;
    act_Cancelar: TAction;
    adv_DataPanel: TAdvToolPanel;
    Label26: TLabel;
    Seleccion: TAdvOfficeRadioGroup;
    pnlPeriodo: TAdvSmoothPanel;
    Label21: TLabel;
    Label5: TLabel;
    MesAnio: TAdvSmoothPanel;
    Label1: TLabel;
    Label2: TLabel;
    Meses: TComboBox;
    Anio: TSpinEdit;
    Inicio: TAdvDateTimePicker;
    Fin: TAdvDateTimePicker;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure act_AceptarExecute(Sender: TObject);
    procedure act_CancelarExecute(Sender: TObject);
    procedure SeleccionClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgFecha: TDlgFecha;

implementation

uses Utilidades, Generales;

{$R *.DFM}

procedure TDlgFecha.SeleccionClick(Sender: TObject);
begin
  Case Seleccion.ItemIndex Of
    0:
      Begin
        Inicio.Enabled := True;
        Fin.Enabled := True;
        Meses.Enabled := False;
        Anio.Enabled := False;
        Inicio.SetFocus
      End;
    1:
      Begin
        Inicio.Enabled := False;
        Fin.Enabled := False;
        Meses.Enabled := True;
        Anio.Enabled := True;
        Meses.SetFocus
      End;
    2:
      Begin
        Inicio.Enabled := False;
        Fin.Enabled := False;
        Meses.Enabled := False;
        Anio.Enabled := True;
        Anio.SetFocus
      End;
    3:
      Begin
        Inicio.Enabled := False;
        Fin.Enabled := False;
        Meses.Enabled := False;
        Anio.Enabled := False;
        Inicio.Date := Date();
        Fin.Date := Date();
      End;
    4:
      Begin
        Inicio.Enabled := False;
        Fin.Enabled := False;
        Meses.Enabled := False;
        Anio.Enabled := False;
        Inicio.Date := Date()-1;
        Fin.Date := Date()-1;
      End;
    5:
      Begin
        Inicio.Enabled := False;
        Fin.Enabled := False;
        Meses.Enabled := False;
        Anio.Enabled := False;
      End
  End {Case}
end;

procedure TDlgFecha.act_AceptarExecute(Sender: TObject);
  Var
    TmpFecha : TDateTime;
begin
  If Inicio.Date > Fin.Date Then
    Begin
      TmpFecha := Inicio.Date;
      Inicio.Date := Fin.Date;
      Fin.Date := TmpFecha
    End;
    Case Seleccion.ItemIndex Of
      1 : Begin
            Inicio.Date := EncodeDate(Anio.Value,Meses.ItemIndex+1,1);
            If Meses.ItemIndex < 11 Then
              Fin.Date := EncodeDate(Anio.Value,Meses.ItemIndex+2,1)-1
            Else
              Fin.Date := EncodeDate(Anio.Value+1,1,1)-1
          End;
      2 : Begin
            Inicio.Date := EncodeDate(Anio.Value,1,1);
            Fin.Date := EncodeDate(Anio.Value,12,31);
          End;
      3 : Begin
            Inicio.Date := Date();
            Fin.Date := Date();
          End;
      4 : Begin
            Inicio.Date := Date()-1;
            Fin.Date := Date()-1;
          End;
      5 : Begin
            Inicio.Date := StrToDate('01/01/1900');
            Fin.Date := Date();
          End;
    End; {Case}
  ModalResult := mrOK
end;

procedure TDlgFecha.act_CancelarExecute(Sender: TObject);
begin
  ModalResult := MrCancel
end;

procedure TDlgFecha.FormActivate(Sender: TObject);
  Var
    D,M,Y : Word;
begin
  Inicio.Date := Date();
  Fin.Date := Date();
  DecodeDate(Date(),Y,M,D);
  Meses.ItemIndex := M - 1;
  Anio.Value := Y;
  SeleccionClick(Sender);
end;

procedure TDlgFecha.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
//      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);

      {Activar Los Hints Disponibles}
      LoadHints(Self);
    End; {If _Load_Create}
end;

Initialization
  RegisterClass(TDlgFecha);

end.
