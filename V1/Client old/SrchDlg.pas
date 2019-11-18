unit SrchDlg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Wwkeycb, Grids, Wwdbigrd, Wwdbgrid, Db, Wwtable,
  ExtCtrls, DBTables, DBClient, Provider, IBCustomDataSet, IBQuery,
  wwclient, IbDatabase;

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
    procedure FieldsListChange(Sender: TObject);
    procedure DataGridDblClick(Sender: TObject);
    procedure BuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ValorEnter(Sender: TObject);
  private
    { Private declarations }
    SrchTable: String;
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
        SrchOrder     : String;
     Begin
       CurrentCursor := Screen.Cursor;
       Try
         Screen.Cursor := crSQLWait;
         SrchCds.Close;
         SrchTable := TableName;

         Case Orden Of
           'A': SrchOrder := 'ASCENDING';
           'D': SrchOrder := 'DESCENDING';
         End; {Case}

         SrchCds.CommandText := 'SELECT * FROM ' + DoubleQuoted(TableName) +
                                ' ORDER BY ' +  DoubleQuoted(CampoInicial) + ' ' +
                                SrchOrder;
         SrchCds.Open;
         FieldsList.Items.Clear;
         SrchCds.GetFieldNames(FieldsList.Items);
         FieldsList.ItemIndex := FieldsList.Items.IndexOf(CampoInicial);
         WindowState := WState;
         {Mostrar Ventana}
         ShowModal;
       Finally
         Screen.Cursor := CurrentCursor;
       End {Try}
     End;

procedure TDlgSearch.FieldsListChange(Sender: TObject);
begin
  SrchCds.Close
end;

procedure TDlgSearch.DataGridDblClick(Sender: TObject);
begin
  ModalResult := MrOk
end;

Procedure TDlgSearch.CloseDlg;
  Begin
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
