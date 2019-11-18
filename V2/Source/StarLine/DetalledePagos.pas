unit DetalledePagos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Wwdbspin, wwdblook, wwdbedit, Wwdotdot,
  Wwdbcomb, Mask, DBCtrls, ExtCtrls, DB, RegKeys;

type
  TFDetallePagos = class(TForm)
    Panel1: TPanel;
    LMeses: TLabel;
    LAnios: TLabel;
    LNum_Aprobacion: TLabel;
    LTiposDocumentos: TLabel;
    LNum_Documento: TLabel;
    LBanco: TLabel;
    Num_Aprobacion: TDBEdit;
    Meses: TwwDBComboBox;
    Anios: TwwDBSpinEdit;
    BitBtn1: TBitBtn;
    Num_Documento: TDBEdit;
    Banco: TwwDBLookupCombo;
    Documento: TDBEdit;
    BitBtn2: TBitBtn;
    TiposDocumentos: TwwDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure ChanceDS (DataSource : TDataSource);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TiposDocumentosEnter(Sender: TObject);
    procedure TiposDocumentosExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDetallePagos: TFDetallePagos;

implementation

uses DataModulo, Utilidades, Generales;

{$R *.dfm}

procedure TFDetallePagos.FormCreate(Sender: TObject);
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

procedure TFDetallePagos.ChanceDS (DataSource : TDataSource);
begin
  Documento.DataSource := DataSource;
  Num_Aprobacion.DataSource := DataSource;
  Num_Documento.DataSource := DataSource;
  Banco.DataSource := DataSource;
  TiposDocumentos.DataSource := DataSource;
  Meses.DataSource := DataSource;
  Anios.DataSource := DataSource;

  Num_Aprobacion.Visible := (Num_Aprobacion.DataSource.DataSet.FieldByName('Requiere_Aprobacion').AsBoolean);
  LNum_Aprobacion.Visible := Num_Aprobacion.Visible;

  LNum_Documento.Caption := Format('# %s',[Num_Documento.DataSource.DataSet.FieldByName('Nombre_Forma_Pago').AsString]);
  Num_Documento.Visible := (Num_Documento.DataSource.DataSet.FieldByName('Requiere_Documento').AsBoolean);
  LNum_Documento.Visible := Num_Documento.Visible;

  TiposDocumentos.Visible := Num_Documento.Visible;
  LTiposDocumentos.Visible := Num_Documento.Visible;

  Meses.Visible := (Num_Documento.DataSource.DataSet.FieldByName('Requiere_Vencimiento').AsBoolean);
  LMeses.Visible := Meses.Visible;

  Anios.Visible := (Num_Documento.DataSource.DataSet.FieldByName('Requiere_Vencimiento').AsBoolean);
  LAnios.Visible := Anios.Visible
end;

procedure TFDetallePagos.FormKeyDown(Sender: TObject; var Key: Word;
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
      End
  End {Case}
end;

procedure TFDetallePagos.TiposDocumentosEnter(Sender: TObject);
begin
  KeyPreview := False
end;

procedure TFDetallePagos.TiposDocumentosExit(Sender: TObject);
begin
  KeyPreview := True
end;

Initialization
  RegisterClass(TFDetallePagos);

end.
