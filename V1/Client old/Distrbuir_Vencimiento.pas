unit Distrbuir_Vencimiento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Mask, Buttons, wwdbedit,
  Wwdotdot, Wwdbcomb, Spin, DBCtrls;

type
  TFVencimientos = class(TForm)
    wwDBGrid1: TwwDBGrid;
    Cantidad: TEdit;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Descripcion: TwwDBComboBox;
    Mes: TSpinEdit;
    Anio: TSpinEdit;
    Label32: TLabel;
    DBEdit32: TDBEdit;
    Label4: TLabel;
    BitBtn2: TBitBtn;
    DBEdit1: TDBEdit;
    Cancelar: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVencimientos: TFVencimientos;

implementation

uses DataModulo, DateUtils, Utilidades;

{$R *.dfm}

procedure TFVencimientos.BitBtn1Click(Sender: TObject);
  Var
    Cantidades : Double;
begin
  Try
    Cantidades := StrToFloat(Cantidad.Text);
  Except
    Raise Exception.Create('La Cantidad introducida es Invalida');
  End; {Try}

  If Modulo.tVencimientos.Locate(Modulo.tVencimientosMes.FieldName + ';' + Modulo.tVencimientosAno.FieldName,
                                 VarArrayOf([Mes.Value,Anio.Value]),
                                 []) Then Modulo.tVencimientos.Edit
  Else Modulo.tVencimientos.Append;

  If (Mes.Value <= MonthOf(Date())) And (Anio.Value <= YearOf(Date())) Then
    Raise Exception.Create(_ErrProductoVencido);

  Modulo.tVencimientosMes.Value := Mes.Value;
  Modulo.tVencimientosAno.Value := Anio.Value;
  Modulo.tVencimientosCantidad.Value := Modulo.tVencimientosCantidad.Value + Cantidades;
  Mes.SetFocus;
  
  Modulo.tVencimientos.Post;
  Modulo.tProductosDistribuido.Value := Modulo.ContarDistribucionVencimiento
end;

procedure TFVencimientos.FormCreate(Sender: TObject);
begin
  {Configuracion de la Pantalla}
  Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

  Anio.MinValue := YearOf(Date());
  Anio.MaxValue := Anio.MinValue + 20;
  Anio.Value := Anio.MinValue
end;

procedure TFVencimientos.BitBtn2Click(Sender: TObject);
begin
  If Modulo.ContarDistribucionVencimiento <> Modulo.tProductosExistencia.Value Then
    Raise Exception.Create('La Distribución no Concuerda con la Existencia del Producto');
    
  Close
end;

procedure TFVencimientos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  Found : TWinControl;
begin
  Case Key Of
    VK_HOME    : Mes.SetFocus;

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

end.
