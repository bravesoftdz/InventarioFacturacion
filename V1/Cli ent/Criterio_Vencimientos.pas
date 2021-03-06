unit Criterio_Vencimientos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Spin;

type
  TFCriterio_Vencimientos = class(TForm)
    Clasificacion: TRadioGroup;
    Criterio: TRadioGroup;
    Dias: TRadioGroup;
    BitBtn2: TBitBtn;
    Cancelar: TBitBtn;
    Rango: TGroupBox;
    MesInicio: TComboBox;
    AnoInicio: TSpinEdit;
    MesFin: TComboBox;
    AnoFin: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure CriterioClick(Sender: TObject);
    procedure DiasClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCriterio_Vencimientos: TFCriterio_Vencimientos;

implementation

uses Utilidades, DateUtils, DataModulo, Reports_Forms, SrchDlg;

{$R *.dfm}

procedure TFCriterio_Vencimientos.FormCreate(Sender: TObject);
begin
  {Configuracion de la Pantalla}
  Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

  {Activar Los Permisos del Usuario}
  ActivateOptions(Sender,_CurrentLevel,Modulo.tAccesos);

  MesInicio.ItemIndex := MonthOfTheYear(Modulo.Enlace.AppServer.ServerDate) - 1;
  AnoInicio.Value := YearOf(Modulo.Enlace.AppServer.ServerDate);

  MesFin.ItemIndex := MesInicio.ItemIndex;
  AnoFin.Value := AnoInicio.Value
end;

procedure TFCriterio_Vencimientos.CriterioClick(Sender: TObject);
begin
  Dias.ItemIndex := 0;
  DiasClick(Sender);
  Dias.Enabled := Criterio.ItemIndex = 2;

  If Criterio.ItemIndex = 1 Then
    Begin
      AnoInicio.Value := YearOf(Modulo.Enlace.AppServer.ServerDate) - 100;

      MesFin.ItemIndex := MonthOfTheYear(Modulo.Enlace.AppServer.ServerDate) - 1;
      AnoFin.Value := YearOf(Modulo.Enlace.AppServer.ServerDate)
    End
end;

procedure TFCriterio_Vencimientos.DiasClick(Sender: TObject);
begin
  Rango.Enabled := Dias.ItemIndex = 3;
  Case Dias.ItemIndex Of
    0 : Begin
          MesInicio.ItemIndex := MonthOfTheYear(Modulo.Enlace.AppServer.ServerDate) - 1;
          AnoInicio.Value := YearOf(Modulo.Enlace.AppServer.ServerDate);

          MesFin.ItemIndex := MesInicio.ItemIndex;
          AnoFin.Value := AnoInicio.Value
        End;

    1 : Begin
          MesInicio.ItemIndex := MonthOfTheYear(Modulo.Enlace.AppServer.ServerDate);
          AnoInicio.Value := YearOf(Modulo.Enlace.AppServer.ServerDate);

          If MonthOfTheYear(Modulo.Enlace.AppServer.ServerDate) > 11 Then
            Begin
              MesInicio.ItemIndex := 0;
              AnoInicio.Value := YearOf(Modulo.Enlace.AppServer.ServerDate) + 1
            End;

          MesFin.ItemIndex := MesInicio.ItemIndex;
          AnoFin.Value := AnoInicio.Value
        End;

    2 : Begin
          MesInicio.ItemIndex := MonthOfTheYear(Modulo.Enlace.AppServer.ServerDate) - 2;
          AnoInicio.Value := YearOf(Modulo.Enlace.AppServer.ServerDate);

          If MesInicio.ItemIndex < 0 Then
            Begin
              MesInicio.ItemIndex := 11;
              AnoInicio.Value := YearOf(Modulo.Enlace.AppServer.ServerDate) - 1
            End;

          MesFin.ItemIndex := MesInicio.ItemIndex;
          AnoFin.Value := AnoInicio.Value
        End;

    3 : Begin
          MesInicio.SetFocus;
          MesInicio.ItemIndex := MonthOfTheYear(Modulo.Enlace.AppServer.ServerDate) - 1;
          AnoInicio.Value := YearOf(Modulo.Enlace.AppServer.ServerDate);

          MesFin.ItemIndex := MesInicio.ItemIndex;
          AnoFin.Value := AnoInicio.Value
        End;

    4 : Begin
          MesInicio.ItemIndex := 0;
          AnoInicio.Value := YearOf(Modulo.Enlace.AppServer.ServerDate);

          MesFin.ItemIndex := 11;
          AnoFin.Value := AnoInicio.Value;
        End
  End; {Case}
end;

procedure TFCriterio_Vencimientos.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
Var
  Found : TWinControl;
begin
  Case Key Of
    VK_HOME    : Clasificacion.SetFocus;

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

procedure TFCriterio_Vencimientos.BitBtn2Click(Sender: TObject);
  Var
    M,Y      : Integer;
    PrintOut : Boolean;
begin

  PrintOut := True;

  If (AnoFin.Value + MesFin.ItemIndex) < (AnoInicio.Value + MesInicio.ItemIndex) Then
    Begin
      Y := AnoFin.Value;
      M := MesFin.ItemIndex;

      AnoFin.Value := AnoInicio.Value;
      MesFin.ItemIndex := MesInicio.ItemIndex;

      AnoInicio.Value := Y;
      MesInicio.ItemIndex := M
    End;

  If Criterio.ItemIndex = 0 Then
    Begin
      MesInicio.ItemIndex := 0;
      AnoInicio.Value := YearOf(Modulo.Enlace.AppServer.ServerDate) - 1000;

      MesFin.ItemIndex := 11;
      AnoFin.Value := YearOf(Modulo.Enlace.AppServer.ServerDate) + 1000;
    End;

    ReportsAndForms.Criterio.Caption := Format ('Criterio : %s',
                                                [Criterio.Items[Criterio.ItemIndex]]);

    ReportsAndForms.Clasificacion.Caption := Format ('Clasificaci?n : %s',
                                                     [Clasificacion.Items[Clasificacion.ItemIndex]]);

    If Criterio.ItemIndex = 1 Then
      ReportsAndForms.Criterio.Caption := Format ('%s (a %s/%s)',
                                                  [ReportsAndForms.Criterio.Caption,
                                                   MesesAnio[MesFin.ItemIndex + 1],IntToStr(AnoFin.Value)]);
    If Criterio.ItemIndex = 2 Then
      ReportsAndForms.Criterio.Caption := Format ('%s (%s/%s - %s/%s)',
                                                  [ReportsAndForms.Criterio.Caption,
                                                   MesesAnio[MesInicio.ItemIndex + 1],IntToStr(AnoInicio.Value),
                                                   MesesAnio[MesFin.ItemIndex + 1],IntToStr(AnoFin.Value)]);
    Case Clasificacion.ItemIndex Of
      0 : Begin
            Case Criterio.ItemIndex Of
              0 : ReportsAndForms.Pipe_Criterio_Vencimiento.DataSource := Modulo.dVencimientos_Todos;
              Else
                  Begin
                    ReportsAndForms.Pipe_Criterio_Vencimiento.DataSource := Modulo.dVencimientos_Fecha;
                    Modulo.tVencimientos_Fecha.Params.ParamByName('Mes1').AsInteger := MesInicio.ItemIndex + 1;
                    Modulo.tVencimientos_Fecha.Params.ParamByName('Mes2').AsInteger := MesFin.ItemIndex + 1;
                    Modulo.tVencimientos_Fecha.Params.ParamByName('Ano1').AsInteger := AnoInicio.Value;
                    Modulo.tVencimientos_Fecha.Params.ParamByName('Ano2').AsInteger := AnoFin.Value;
                  End
            End {Case}
          End; {0}

      1 : Begin {Por Producto}
            Try
              ReportsAndForms.Pipe_Criterio_Vencimiento.DataSource := Modulo.dVencimientos_Codigo;
              Application.CreateForm(TDlgSearch,DlgSearch);
              DlgSearch.OpenDlg('Productos',Modulo.tProductosDescripcion.FieldName,'A',wsMaximized);
              If DlgSearch.ModalResult = MrOk Then
                Begin
                  ReportsAndForms.Clasificacion.Caption := Format ('%s - %s',
                                                                   [ReportsAndForms.Clasificacion.Caption,
                                                                    Trim(DlgSearch.SrchCds.FieldByName('Descripcion').AsString) + ' ' +
                                                                    Trim(DlgSearch.SrchCds.FieldByName('Presentacion').AsString)]);

                  Modulo.tVencimientos_Codigo.Params.ParamByName('Codigo').AsString := Trim(DlgSearch.SrchCds.FieldByName('Codigo').AsString);
                  Modulo.tVencimientos_Codigo.Params.ParamByName('Mes1').AsInteger := MesInicio.ItemIndex + 1;
                  Modulo.tVencimientos_Codigo.Params.ParamByName('Mes2').AsInteger := MesFin.ItemIndex + 1;
                  Modulo.tVencimientos_Codigo.Params.ParamByName('Ano1').AsInteger := AnoInicio.Value;
                  Modulo.tVencimientos_Codigo.Params.ParamByName('Ano2').AsInteger := AnoFin.Value
                End
              Else PrintOut := False
            Finally
              DlgSearch.CloseDlg
            End {Try}
          End; {1}

      2 : Begin {Por Fabricante}
            Try
              ReportsAndForms.Pipe_Criterio_Vencimiento.DataSource := Modulo.dVencimientos_Fabricante;
              Application.CreateForm(TDlgSearch,DlgSearch);
              DlgSearch.OpenDlg('Fabricantes',Modulo.tFabricanteNombre.FieldName,'A',wsMaximized);
              If DlgSearch.ModalResult = MrOk Then
                Begin
                  ReportsAndForms.Clasificacion.Caption := Format ('%s - %s',
                                                                   [ReportsAndForms.Clasificacion.Caption,
                                                                    Trim(DlgSearch.SrchCds.FieldByName('Nombre').AsString)]);

                  Modulo.tVencimientos_Fabricante.Params.ParamByName('Fabricante').AsInteger := DlgSearch.SrchCds.FieldByName('Numero').AsInteger;
                  Modulo.tVencimientos_Fabricante.Params.ParamByName('Mes1').AsInteger := MesInicio.ItemIndex + 1;
                  Modulo.tVencimientos_Fabricante.Params.ParamByName('Mes2').AsInteger := MesFin.ItemIndex + 1;
                  Modulo.tVencimientos_Fabricante.Params.ParamByName('Ano1').AsInteger := AnoInicio.Value;
                  Modulo.tVencimientos_Fabricante.Params.ParamByName('Ano2').AsInteger := AnoFin.Value
                End
              Else PrintOut := False
            Finally
              DlgSearch.CloseDlg
            End {Try}
          End; {2}

      3 : Begin {Por Suplidor}
            Try
              ReportsAndForms.Pipe_Criterio_Vencimiento.DataSource := Modulo.dVencimientos_Proveedor;
              Application.CreateForm(TDlgSearch,DlgSearch);
              DlgSearch.OpenDlg('Proveedores',Modulo.tProveedoresNombre.FieldName,'A',wsMaximized);
              If DlgSearch.ModalResult = MrOk Then
                Begin
                  ReportsAndForms.Clasificacion.Caption := Format ('%s - %s',
                                                                   [ReportsAndForms.Clasificacion.Caption,
                                                                    Trim(DlgSearch.SrchCds.FieldByName('Nombre').AsString)]);

                  Modulo.tVencimientos_Proveedor.Params.ParamByName('Proveedor').AsInteger := DlgSearch.SrchCds.FieldByName('Numero').AsInteger;
                  Modulo.tVencimientos_Proveedor.Params.ParamByName('Mes1').AsInteger := MesInicio.ItemIndex + 1;
                  Modulo.tVencimientos_Proveedor.Params.ParamByName('Mes2').AsInteger := MesFin.ItemIndex + 1;
                  Modulo.tVencimientos_Proveedor.Params.ParamByName('Ano1').AsInteger := AnoInicio.Value;
                  Modulo.tVencimientos_Proveedor.Params.ParamByName('Ano2').AsInteger := AnoFin.Value
                End
              Else PrintOut := False
            Finally
              DlgSearch.CloseDlg
            End {Try}
          End; {3}

      4 : Begin {Por Categoria}
            Try
              ReportsAndForms.Pipe_Criterio_Vencimiento.DataSource := Modulo.dVencimientos_Categoria;
              Application.CreateForm(TDlgSearch,DlgSearch);
              DlgSearch.OpenDlg('Categorias',Modulo.tCategoriaDescripcion.FieldName,'A',wsMaximized);
              If DlgSearch.ModalResult = MrOk Then
                Begin
                  ReportsAndForms.Clasificacion.Caption := Format ('%s - %s',
                                                                   [ReportsAndForms.Clasificacion.Caption,
                                                                    Trim(DlgSearch.SrchCds.FieldByName('Descripcion').AsString)]);

                  Modulo.tVencimientos_Categoria.Params.ParamByName('Categoria').AsInteger := DlgSearch.SrchCds.FieldByName('Numero').AsInteger;
                  Modulo.tVencimientos_Categoria.Params.ParamByName('Mes1').AsInteger := MesInicio.ItemIndex + 1;
                  Modulo.tVencimientos_Categoria.Params.ParamByName('Mes2').AsInteger := MesFin.ItemIndex + 1;
                  Modulo.tVencimientos_Categoria.Params.ParamByName('Ano1').AsInteger := AnoInicio.Value;
                  Modulo.tVencimientos_Categoria.Params.ParamByName('Ano2').AsInteger := AnoFin.Value
                End
              Else PrintOut := False
            Finally
              DlgSearch.CloseDlg
            End {Try}
          End; {4}

      5 : Begin {Por Departamento}
            Try
              ReportsAndForms.Pipe_Criterio_Vencimiento.DataSource := Modulo.dVencimientos_Departamento;
              Application.CreateForm(TDlgSearch,DlgSearch);
              DlgSearch.OpenDlg('Departamentos',Modulo.tDepartamentosDescripcion.FieldName,'A',wsMaximized);
              If DlgSearch.ModalResult = MrOk Then
                Begin
                  ReportsAndForms.Clasificacion.Caption := Format ('%s - %s',
                                                                   [ReportsAndForms.Clasificacion.Caption,
                                                                    Trim(DlgSearch.SrchCds.FieldByName('Descripcion').AsString)]);

                  Modulo.tVencimientos_Departamento.Params.ParamByName('Departamento').AsInteger := DlgSearch.SrchCds.FieldByName('Numero').AsInteger;
                  Modulo.tVencimientos_Departamento.Params.ParamByName('Mes1').AsInteger := MesInicio.ItemIndex + 1;
                  Modulo.tVencimientos_Departamento.Params.ParamByName('Mes2').AsInteger := MesFin.ItemIndex + 1;
                  Modulo.tVencimientos_Departamento.Params.ParamByName('Ano1').AsInteger := AnoInicio.Value;
                  Modulo.tVencimientos_Departamento.Params.ParamByName('Ano2').AsInteger := AnoFin.Value
                End
              Else PrintOut := False
            Finally
              DlgSearch.CloseDlg
            End {Try}
          End; {4}
    End;{Case}

  If PrintOut Then
    Begin
      ReportsAndForms.Pipe_Criterio_Vencimiento.DataSource.DataSet.Open;
      If ReportsAndForms.Pipe_Criterio_Vencimiento.DataSource.DataSet.RecordCount > 0 Then
        ReportsAndForms.Reporte_Vencimientos.Print
      Else Mensaje(_NoPrintData);
      ReportsAndForms.Pipe_Criterio_Vencimiento.DataSource.DataSet.Close
    End
end;

end.
