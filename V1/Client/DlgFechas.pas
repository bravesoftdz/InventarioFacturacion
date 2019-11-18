unit DlgFechas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls, ExtCtrls, Spin, RegKeys;

type
  TDlgFecha = class(TForm)
    Seleccion: TRadioGroup;
    Periodo: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Inicio: TDateTimePicker;
    Fin: TDateTimePicker;
    MesAnio: TGroupBox;
    Meses: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Anio: TSpinEdit;
    procedure SeleccionClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgFecha: TDlgFecha;

implementation

uses Utilidades, DataModulo;

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

procedure TDlgFecha.BitBtn1Click(Sender: TObject);
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
End {Case}
end;

procedure TDlgFecha.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor)
    End; {If _Load_Create}
end;

Initialization
  RegisterClass(TDlgFecha);

end.
