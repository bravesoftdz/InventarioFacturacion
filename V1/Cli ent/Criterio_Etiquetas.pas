unit Criterio_Etiquetas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Spin, Inifiles;

type
  TFCriterio_Etiquetas = class(TForm)
    Clasificacion: TRadioGroup;
    BitBtn2: TBitBtn;
    Cancelar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCriterio_Etiquetas: TFCriterio_Etiquetas;

implementation

uses Utilidades, DateUtils, DataModulo, Reports_Forms, SrchDlg, CnfgForms,
  PrintShow;

{$R *.dfm}

procedure TFCriterio_Etiquetas.FormCreate(Sender: TObject);
begin
  {Configuracion de la Pantalla}
  Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

  {Activar Los Permisos del Usuario}
  ActivateOptions(Sender,_CurrentLevel,Modulo.tAccesos)
end;

procedure TFCriterio_Etiquetas.FormKeyDown(Sender: TObject;
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

procedure TFCriterio_Etiquetas.BitBtn2Click(Sender: TObject);
{  Var
    _PrintOut : Boolean;
    _Criteria : String;}
begin
{  Try
    _PrintOut := True;
    _Criteria := '';

    {Configuracion de la Etiqueta}
 {   InitInfo := TIniFile.Create(_IniFormsConfig);

    ReportsAndForms.Labels.Template.FileName := InitInfo.ReadString(_LabelProductos,'TemplateFileName','');

    If (Trim(ReportsAndForms.Labels.Template.FileName) <> 'NONE') And
       (Trim(ReportsAndForms.Labels.Template.FileName) <> '') Then ReportsAndForms.Labels.Template.LoadFromFile;

    ReportsAndForms.Labels.DeviceType                := InitInfo.ReadString(_LabelProductos,'Device','Screen');
    ReportsAndForms.Labels.ShowPrintDialog           := InitInfo.ReadBool(_LabelProductos,'ShowPrintDialog',True);
    ReportsAndForms.Labels.PrinterSetup.Copies       := InitInfo.ReadInteger(_LabelProductos,'Copies',1);
    ReportsAndForms.Labels.PrinterSetup.PaperName    := InitInfo.ReadString(_LabelProductos,'PaperName','Letter');
    ReportsAndForms.Labels.PrinterSetup.PaperHeight  := InitInfo.ReadFloat(_LabelProductos,'PaperHeight',1);
    ReportsAndForms.Labels.PrinterSetup.PaperWidth   := InitInfo.ReadFloat(_LabelProductos,'PaperWidth',1.4);
    ReportsAndForms.Labels.PrinterSetup.PrinterName  := InitInfo.ReadString(_LabelProductos,'PrinterName','Default');
    ReportsAndForms.Labels.PrinterSetup.MarginBottom := InitInfo.ReadFloat(_LabelProductos,'MarginBottom',0.5);
    ReportsAndForms.Labels.PrinterSetup.MarginTop    := InitInfo.ReadFloat(_LabelProductos,'MarginTop',0.5);
    ReportsAndForms.Labels.PrinterSetup.MarginLeft   := InitInfo.ReadFloat(_LabelProductos,'MarginLeft',0.5);
    ReportsAndForms.Labels.PrinterSetup.MarginRight  := InitInfo.ReadFloat(_LabelProductos,'MarginRight',0.5);

    RegInfo.CloseKey;
    RegInfo.OpenKey(_CompanyInfoKey,False);

    ReportsAndForms.Nombre_Comp.Caption := UnEncrypt(RegInfo.ReadString(_UserCompName));
    ReportsAndForms.Tel_Comp.Caption    := Format ('%s',[UnEncrypt(RegInfo.ReadString(_UserCompPhone1))]);

    ReportsAndForms.PipeVencimientos.DataSource := Modulo.dVencimientos;

    {Crea la Pantalla de Busqueda}
  {  Application.CreateForm(TDlgSearch,DlgSearch);

    Case Clasificacion.ItemIndex Of
       0 : {Todos}
   {       Modulo.tListadoProductos.CommandText := Modulo.Enlace.AppServer.OriginalProductSQL;

       1 : Begin
             DlgSearch.Caption := 'Seleccione el Producto';
             DlgSearch.OpenDlg('Productos',Modulo.tProductosDescripcion.FieldName,'A',wsMaximized);
             Modulo.tListadoProductos.CommandText := Format(_SelectProductos,
                                                            [DoubleQuoted('Codigo'),
                                                             DlgSearch.SrchCds.FieldByName('Codigo').AsString])
           End; {1}
    {
       2 : Begin
             DlgSearch.Caption := 'Seleccione el Fabricante';
             DlgSearch.OpenDlg('Fabricantes',Modulo.tFabricanteNombre.FieldName,'A',wsMaximized);
             Modulo.tListadoProductos.CommandText := Format(_SelectProductos,
                                                            [DoubleQuoted('Fabricante'),
                                                             DlgSearch.SrchCds.FieldByName('Numero').AsString])
           End; {2}

     {  3 : Begin
             DlgSearch.Caption := 'Seleccione el Proveedor';
             DlgSearch.OpenDlg('Proveedores',Modulo.tProveedoresNombreCompleto.FieldName,'A',wsMaximized);
             Modulo.tListadoProductos.CommandText := Format(_SelectProductos,
                                                            [DoubleQuoted('Proveedor_Principal'),
                                                             DlgSearch.SrchCds.FieldByName('Numero').AsString])
           End; {3}

      { 4 : Begin
             DlgSearch.Caption := 'Seleccione la Categoría';
             DlgSearch.OpenDlg('Categorias',Modulo.tCategoriaDescripcion.FieldName,'A',wsMaximized);
             Modulo.tListadoProductos.CommandText := Format(_SelectProductos,
                                                            [DoubleQuoted('Categoria'),
                                                             DlgSearch.SrchCds.FieldByName('Numero').AsString])
           End; {4}

       {5 : Begin
             DlgSearch.Caption := 'Seleccione el Departamento';
             DlgSearch.OpenDlg('Departamentos',Modulo.tDepartamentosDescripcion.FieldName,'A',wsMaximized);
             Modulo.tListadoProductos.CommandText := Format(_SelectProductos,
                                                            [DoubleQuoted('Departamento'),
                                                             DlgSearch.SrchCds.FieldByName('Numero').AsString])
           End {5}
{    End; {Case}

 {   If (Clasificacion.ItemIndex > 0) And (DlgSearch.ModalResult <> MrOk) Then _PrintOut := False;

    Modulo.tListadoProductos.PacketRecords := -1;

    If _PrintOut Then
      Begin
        Modulo.tProductos.Open;
        Modulo.tListadoProductos.Open;
        Modulo.tListadoProductos.First;
        While Not Modulo.tListadoProductos.Eof Do
          Begin
            Modulo.tProductos.Params.ParamByName('Codigo').AsString := Trim(Modulo.tListadoProductosCodigo.Value);
            Modulo.tProductos.Refresh;
            If Modulo.tVencimientos.RecordCount > 0 Then
              Begin
                Modulo.tVencimientos.First;
                While Not Modulo.tVencimientos.Eof Do
                  Begin
                    ReportsAndForms.Labels.ShowPrintDialog := InitInfo.ReadBool(_LabelProductos,'ShowPrintDialog',True);
                    If Modulo.tVencimientosCantidad.AsInteger > InitInfo.ReadInteger(_LabelProductos,'MargenEvaluacion',5) Then
                      Begin
                        Mensaje(Format('Por favor, Verifique ésta impresión :'#13+
                                       '%s'#13+
                                       '%s'#13+
                                       'Cantidad : %s',
                                       [Modulo.tProductosDescripcion.Value,
                                        Modulo.tProductosPresentacion.Value,
                                        Modulo.tVencimientosCantidad.AsString]));
                        ReportsAndForms.Labels.ShowPrintDialog := True
                      End; {If}
  {                  ReportsAndForms.Labels.PrinterSetup.Copies := Modulo.tVencimientosCantidad.AsInteger;
                    ReportsAndForms.Labels.Print;
                    Modulo.tVencimientos.Next
                  End {While Vencimientos}
   {           End; {If Vencimientos.RecordCount}
{            Modulo.tListadoProductos.Next
          End {While ListadoProductos}
 {     End {If _PrintOut}
  {Finally
    DlgSearch.CloseDlg;
    Modulo.tListadoProductos.PacketRecords := 50;
    Modulo.tListadoProductos.CommandText := Modulo.Enlace.AppServer.OriginalProductSQL;
    Modulo.tListadoProductos.Close;
    Modulo.tProductos.Close;
    Modulo.tFabricante.Close
  End {Try}
end;

end.
