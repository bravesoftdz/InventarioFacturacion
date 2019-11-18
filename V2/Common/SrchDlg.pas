unit SrchDlg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Wwkeycb, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, DBClient,
  IniFiles, DB, RegKeys, MidasLib;

type
  TDlgSearch = class(TForm)
    DataGrid: TwwDBGrid;
    FieldsList: TComboBox;
    Aceptar: TBitBtn;
    Cancelar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Valor: TEdit;
    Buscar: TBitBtn;
    SrchDs: TDataSource;
    Orden: TRadioGroup;
    Recordar_Busqueda: TCheckBox;
    SrchCds: TClientDataSet;
    Exportar: TBitBtn;
    FileSave: TSaveDialog;
    procedure ExportarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure DataGridTitleButtonClick(Sender: TObject; AFieldName: string);
    procedure FieldsListChange(Sender: TObject);
    procedure DataGridDblClick(Sender: TObject);
    procedure BuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ValorEnter(Sender: TObject);
  private
    { Private declarations }
    SrchTable  : String;
    StartUpIni : TIniFile;
  public
    Procedure OpenDlg(Const TableName    ,
                            CampoInicial : String;
                      Const OrdenInicial : Char;
                      Const WState : TWindowState);
    Procedure CloseDlg;
    { Public declarations }
  end;

var
  DlgSearch: TDlgSearch;

implementation

uses Utilidades, DataModulo, Generales;

{$R *.DFM}

  Procedure TDlgSearch.OpenDlg(Const TableName    ,
                                     CampoInicial : String;
                               Const OrdenInicial : Char;
                               Const WState : TWindowState);
     Var
        CurrentCursor : TCursor;
        CampoIni      ,
        ValorIni      ,
        OrderField    ,
        FPath         ,
        SrchOrder     : String;
        OrdenIni      : Char;
        IniState      : Byte;
     Begin
       CurrentCursor := Screen.Cursor;
       Try
         Screen.Cursor := crSQLWait;
         SrchCds.Close;
         SrchTable := TableName;

         // IniConfig

         FPath := GetCurrentDir;

         DataGrid.IniAttributes.FileName := FPath + '\' + SrchCds.RemoteServer.Owner.Name + '_' + TableName + '.srch';
         StartUpIni := TIniFile.Create(FPath + '\' + SrchCds.RemoteServer.Owner.Name + '_' + TableName + '.strt');

         CampoIni := StartUpIni.ReadString('Busqueda','Campo',CampoInicial);
         OrdenIni := Chr(StartUpIni.ReadInteger('Busqueda','Orden',Ord(OrdenInicial)));
         ValorIni := StartUpIni.ReadString('Busqueda','Valor','');

         If FileExists(FPath + '\' + DataGrid.IniAttributes.FileName) Then DataGrid.LoadFromIniFile;

         OrderField := ' ORDER BY ' +  DoubleQuoted(CampoIni) + ' ';

         Orden.OnClick := Nil;
         Case OrdenIni Of
           'A': Begin
                  Orden.ItemIndex := 0;
                  SrchOrder := 'ASCENDING';
                end;
           'D': Begin
                  SrchOrder := 'DESCENDING';
                  Orden.ItemIndex := 1;
                end;
           'N': Begin
                  SrchOrder := '';
                  Orden.ItemIndex := 2;
                  OrderField := ''
                end
         End; {Case}

         Orden.OnClick := BuscarClick;

         SrchCds.CommandText := 'SELECT * FROM ' + DoubleQuoted(TableName) +
                                OrderField +
                                SrchOrder;
         SrchCds.Open;
         FieldsList.Items.Clear;
         FieldsList.Items.Assign(SrchCds.FieldDefList);
         FieldsList.ItemIndex := FieldsList.Items.IndexOf(CampoIni);

         Valor.Text := ValorIni;
         Recordar_Busqueda.Checked := StartUpIni.ReadBool('Busqueda','Remember',False);
         If Recordar_Busqueda.Checked Then
           If Trim(ValorIni) <> '' Then
             Begin
               SrchCds.Locate(CampoIni,Variant(ValorIni),[]);
               DataGrid.SetActiveRow(DataGrid.GetActiveRow);
             end;

         Width := StartUpIni.ReadInteger('Busqueda','X',Width);
         Height := StartUpIni.ReadInteger('Busqueda','Y',Height);

         IniState := Integer (WState);
         IniState := StartUpIni.ReadInteger('Busqueda','State',IniState);
         WindowState := TWindowstate (IniState);
//         FieldsListChange(FieldsList);
         {Mostrar Ventana}
         ShowModal;
       Finally
         Screen.Cursor := CurrentCursor;
       End {Try}
     End;

procedure TDlgSearch.FieldsListChange(Sender: TObject);
  Var
    X : Integer;
begin
  X := SearchListIndex(DataGrid.Selected,FieldsList.Text);
  Try
    SrchCds.IndexFieldNames := FieldsList.Text;
  Except
    PopupMessage(ModuloGenerales.Mensajes,'No se suede organizar la busqueda utilizando este campo')
  end;
  If X > 0 Then DataGrid.LeftCol := X + 1;
  If Self.Visible Then DataGrid.SetFocus
end;

procedure TDlgSearch.DataGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  If Not (Highlight) And (Field.FieldName = FieldsList.Text) Then
    ABrush.Color := clMoneyGreen
end;

procedure TDlgSearch.DataGridDblClick(Sender: TObject);
begin
  ModalResult := MrOk
end;

procedure TDlgSearch.DataGridTitleButtonClick(Sender: TObject;
  AFieldName: string);
begin
  FieldsList.ItemIndex := FieldsList.Items.IndexOf(AFieldName);
  FieldsListChange(Sender)
end;

Procedure TDlgSearch.CloseDlg;
  Begin
    DataGrid.SaveToIniFile;
    SrchCds.Close;
    Self.Free
  End;

procedure TDlgSearch.ExportarClick(Sender: TObject);
begin
  If FileSave.Execute Then
    Begin
      DataGrid.ExportOptions.FileName := FileSave.FileName;
      DataGrid.ExportOptions.Save
    end;

end;

procedure TDlgSearch.BuscarClick(Sender: TObject);
  Var
    FieldName : String;
    SrchOrder : String;
begin
 If (Trim(Valor.Text) = '') And (SrchCds.RecordCount > 0) Then
   Begin
     ModalResult := MrOk;
     Exit
   End;

 If (Trim(Valor.Text) = '') And (SrchCds.RecordCount <= 0) Then
   Exit;

 SrchCds.Close;
 {Nombre del Campo}
 FieldName := FieldsList.Items[FieldsList.ItemIndex];
 {Sort First By ....}
 Case Orden.ItemIndex Of
   0 : SrchOrder := 'ASCENDING';
   1 : SrchOrder := 'DESCENDING';
   2 : SrchOrder := ''
 End; {Case}
 SrchCds.CommandText := Format(_SearchSQL,[SrchTable,
                                           FieldName,
                                           QuotedStr('%'+Trim(Valor.Text)+'%'),
                                           FieldName,
                                           QuotedStr(Trim(Valor.Text)),
                                           FieldName,
                                           SrchOrder]);
 SrchCds.Open;
 DataGrid.SetFocus;
 Buscar.Default := Not(Buscar.Default);
 Aceptar.Default := Not(Aceptar.Default)
end;

procedure TDlgSearch.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If ModalResult = MrOk Then
    Begin
         StartUpIni.WriteString('Busqueda','Campo',FieldsList.Text);
         Case Orden.ItemIndex Of
            0 : StartUpIni.WriteInteger('Busqueda','Orden',Ord('A'));
            1 : StartUpIni.WriteInteger('Busqueda','Orden',Ord('D'));
            2 : StartUpIni.WriteInteger('Busqueda','Orden',Ord('N'));
         End; {Case}
         StartUpIni.WriteString('Busqueda','Valor',SrchCds.FieldByName(FieldsList.Text).AsString);
         StartUpIni.WriteInteger('Busqueda','X',Width);
         StartUpIni.WriteInteger('Busqueda','Y',Height);
         StartUpIni.WriteInteger('Busqueda','State',Integer(WindowState));
         StartUpIni.WriteBool('Busqueda','Remember',Recordar_Busqueda.Checked);
    end; // If
  StartUpIni.Free
end;

procedure TDlgSearch.FormCreate(Sender: TObject);
begin
  {Configurar la Pantalla}
  Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

end;

procedure TDlgSearch.FormActivate(Sender: TObject);
begin
  Valor.SetFocus
end;

procedure TDlgSearch.ValorEnter(Sender: TObject);
begin
 Buscar.Default := True;
 Aceptar.Default := False
end;

end.
