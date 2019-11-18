unit SrchDlg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Wwkeycb, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, DBClient,
  IniFiles, DB ;

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
    SrchCds: TClientDataSet;
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
                      Const Orden        : Char;
                      Const WState : TWindowState);
    Procedure CloseDlg;
    { Public declarations }
  end;

var
  DlgSearch: TDlgSearch;

implementation

uses Utilidades, DataModulo;

{$R *.DFM}

  Procedure TDlgSearch.OpenDlg(Const TableName    ,
                                     CampoInicial : String;
                               Const Orden        : Char;
                               Const WState : TWindowState);
     Var
        CurrentCursor : TCursor;
        CampoIni      ,
        ValorIni      ,
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

         DataGrid.IniAttributes.FileName := TableName + '.srch';
         StartUpIni := TIniFile.Create(TableName + '.strt');

         CampoIni := StartUpIni.ReadString('Busqueda','Campo',CampoInicial);
         OrdenIni := Chr(StartUpIni.ReadInteger('Busqueda','Orden',Ord(Orden)));
         ValorIni := StartUpIni.ReadString('Busqueda','Valor','');

         If FileExists(DataGrid.IniAttributes.FileName) Then DataGrid.LoadFromIniFile;

         Case OrdenIni Of
           'A': SrchOrder := 'ASCENDING';
           'D': SrchOrder := 'DESCENDING';
         End; {Case}

         SrchCds.CommandText := 'SELECT * FROM ' + DoubleQuoted(TableName) +
                                ' ORDER BY ' +  DoubleQuoted(CampoIni) + ' ' +
                                SrchOrder;
         SrchCds.Open;
         FieldsList.Items.Clear;
         FieldsList.Items.Assign(SrchCds.FieldDefList);
         FieldsList.ItemIndex := FieldsList.Items.IndexOf(CampoIni);

         Valor.Text := ValorIni;
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
         FieldsListChange(FieldsList);
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
    Modulo.Mensajes.Text := 'No se suede organizar la busqueda utilizando este campo';
    Modulo.Mensajes.ShowPopUp
  end;
  DataGrid.LeftCol := X + 1;
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
         End; {Case}
         StartUpIni.WriteString('Busqueda','Valor',SrchCds.FieldByName(FieldsList.Text).AsString);
         StartUpIni.WriteInteger('Busqueda','X',Width);
         StartUpIni.WriteInteger('Busqueda','Y',Height);
         StartUpIni.WriteInteger('Busqueda','State',Integer(WindowState))
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
