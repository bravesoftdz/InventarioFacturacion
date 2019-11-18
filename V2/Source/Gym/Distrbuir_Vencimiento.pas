unit Distrbuir_Vencimiento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Mask, Buttons, wwdbedit,
  Wwdotdot, Wwdbcomb, Spin, DBCtrls, RegKeys;

type
  TFVencimientos = class(TForm)
    Detalles_Vencimiento: TwwDBGrid;
    Cantidad: TEdit;
    btn_Anadir: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Descripcion: TwwDBComboBox;
    Mes: TSpinEdit;
    Anio: TSpinEdit;
    Label32: TLabel;
    Existencia: TDBEdit;
    Label4: TLabel;
    btn_Aceptar: TBitBtn;
    Distribuido: TDBEdit;
    btn_Cancelar: TBitBtn;
    procedure btn_AnadirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_AceptarClick(Sender: TObject);
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

uses DataModulo, DateUtils, Utilidades, Generales;

{$R *.dfm}

procedure TFVencimientos.btn_AnadirClick(Sender: TObject);
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
  If _Load_Create Then
    Begin
      {Configuracion de la Pantalla}
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);

      Anio.MinValue := YearOf(Date());
      Anio.MaxValue := Anio.MinValue + 20;
      Anio.Value := Anio.MinValue
    End
    {If _Load_Create}
end;

procedure TFVencimientos.btn_AceptarClick(Sender: TObject);
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
  RegisterClass(TFVencimientos);

end.
