unit DialogoDeptos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, wwdblook, Grids, Wwdbigrd, Wwdbgrid,
  Mask, wwdbedit, Wwdotdot, Wwdbcomb;

type
  TFCriterioRepProductos = class(TForm)
    Deptos: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    LDepto: TLabel;
    LStatus: TLabel;
    Status: TRadioGroup;
    Elementos: TRadioGroup;
    Tipo: TwwDBComboBox;
    Departamento: TwwDBLookupCombo;
    Elemento: TwwDBLookupCombo;
    Estatus: TwwDBLookupCombo;
    Tipos: TRadioGroup;
    LElemento: TLabel;
    LTipo: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure DeptosClick(Sender: TObject);
    procedure ElementosClick(Sender: TObject);
    procedure StatusClick(Sender: TObject);
    procedure TiposClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CaptionElemento       : String;
    CampoElemento         : String;

    SeleccionDepartamento : String;
    SeleccionElemento     : String;
    SeleccionStatus       : String;
    SeleccionTipoProducto : String;

    CriterioDepartamento  : String;
    CriterioElemento      : String;
    CriterioStatus        : String;
    CriterioTipoProducto  : String;
  end;

var
  FCriterioRepProductos: TFCriterioRepProductos;

implementation

uses Utilidades, DataModulo;

{$R *.dfm}

procedure TFCriterioRepProductos.FormCreate(Sender: TObject);
begin
  Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

  Modulo.tDepartamentos.Open;
  Elemento.LookupTable.Open;
  Modulo.tStatus.Open

end;

procedure TFCriterioRepProductos.DeptosClick(Sender: TObject);
begin
  LDepto.Enabled := Deptos.ItemIndex > 0;
  Departamento.Enabled := Deptos.ItemIndex > 0
end;

procedure TFCriterioRepProductos.ElementosClick(Sender: TObject);
begin
  LElemento.Enabled := Elementos.ItemIndex > 0;
  Elemento.Enabled := Elementos.ItemIndex > 0
end;

procedure TFCriterioRepProductos.StatusClick(Sender: TObject);
begin
  LStatus.Enabled := Status.ItemIndex > 0;
  Estatus.Enabled := Status.ItemIndex > 0
end;

procedure TFCriterioRepProductos.TiposClick(Sender: TObject);
begin
  LTipo.Enabled := Tipos.ItemIndex > 0;
  Tipo.Enabled := Tipos.ItemIndex > 0
end;

procedure TFCriterioRepProductos.BitBtn1Click(Sender: TObject);
begin
  Case Deptos.ItemIndex Of
    0 : Begin
          CriterioDepartamento := '';
          SeleccionDepartamento := 'Todos'
        End;

    1 : Begin
          CriterioDepartamento := 'AND "Departamento" = ' + Trim(Modulo.tDepartamentosNumero.AsString);
          SeleccionDepartamento := Modulo.tDepartamentosDescripcion.Value;
        End;
  End; {Case Deptos}

  Case Elementos.ItemIndex Of
    0 : Begin
          CriterioElemento := '';
          SeleccionElemento := 'Todos'
        End;

    1 : Begin
          CriterioElemento := 'AND ' + DoubleQuoted(Trim(CampoElemento)) + ' = '  +
                                       Trim(Elemento.LookupTable.FieldByName('Numero').AsString);
          Try
            SeleccionElemento := Elemento.LookupTable.FieldByName('Descripcion').AsString
          Except
            SeleccionElemento := Elemento.LookupTable.FieldByName('Nombre').AsString
          End; {Try}
        End;
  End; {Case Elementos}

  Case Status.ItemIndex Of
    0 : Begin
          CriterioStatus := '';
          SeleccionStatus := 'Todos'
        End;

    1 : Begin
          CriterioStatus := 'AND "Status" = ' + Trim(Modulo.tStatusNumero.AsString);
          SeleccionStatus := Modulo.tStatusStatus.AsString;
        End;
  End; {Case Status}

  Case Tipos.ItemIndex Of
    0 : Begin
          CriterioTipoProducto := '';
          SeleccionTipoProducto := 'Todos'
        End;

    1 : Begin
          CriterioTipoProducto := 'AND "Tipo_Inventario" = ' + QuotedStr(Trim(Tipo.Items[Tipo.ItemIndex]));
          SeleccionTipoProducto := Tipo.Items[Tipo.ItemIndex];
        End;
  End; {Case Tipos}

end;

procedure TFCriterioRepProductos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Modulo.tDepartamentos.Close;
  Modulo.tStatus.Close
end;

procedure TFCriterioRepProductos.FormActivate(Sender: TObject);
begin
  Elementos.Caption := CaptionElemento
end;

end.
