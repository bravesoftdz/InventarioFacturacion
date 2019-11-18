unit SrchDlg;

interface

uses
  Messages, SysUtils, Variants, Graphics, Forms,
  Windows, IniFiles, Grids, DBGrids, DB, DBClient, Classes, ActnList,
  XPStyleActnCtrls, ActnMan, Dialogs, AdvGlowButton, AdvSmoothListBox,
  AdvSmoothComboBox, StdCtrls, AdvGroupBox, AdvOfficeButtons, Controls,
  ExtCtrls, ToolPanels, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxGDIPlusClasses{, cxGridExportLink, cxExport};

type
  TDlgSearch = class(TForm)
    Titulo: TLabel;
    FileSave: TSaveDialog;
    adv_OptionPanel: TAdvToolPanel;
    Label1: TLabel;
    Label3: TLabel;
    Valor: TEdit;
    Recordar_Busqueda: TCheckBox;
    Orden: TAdvOfficeRadioGroup;
    FieldsList: TAdvSmoothComboBox;
    gbt_Buscar: TAdvGlowButton;
    Opciones_Pantalla: TActionManager;
    Buscar: TAction;
    Exportar: TAction;
    Aceptar: TAction;
    Cancelar: TAction;
    gbt_Exportar: TAdvGlowButton;
    gbt_Aceptar: TAdvGlowButton;
    gbt_Cancelar: TAdvGlowButton;
    SrchCds: TClientDataSet;
    SrchDS: TDataSource;
    Detalles: TcxGrid;
    DetallesDBTableView: TcxGridDBTableView;
    DetallesLevel: TcxGridLevel;
    grdModes: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FieldsListChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ValorEnter(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ExportarExecute(Sender: TObject);
    procedure AceptarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure DetallesEnter(Sender: TObject);
    procedure DetallesDBTableViewDblClick(Sender: TObject);
    procedure DetallesDBTableViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure SrchCdsBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure TituloDblClick(Sender: TObject);
  private
    { Private declarations }
    _InitialQry,
    _SrchOrder ,
    _SrchField ,
    _SrchTable : String;
    _WindowStt : TWindowState;
    StartUpIni : TIniFile;
  public
    Constructor Create(Aowner : TComponent;
                       Const TableName    ,
                             Provider     ,
                             InitialField ,
                             AltQry       : String;
                       Const RemServer    : tCustomRemoteServer;
                       Const InitialOrder : Char;
                       Const PcktRecords  : SmallInt;
                       Const WState       : TWindowState;
                       Const GrdMode      : Boolean); overload;
    { Public declarations }
  end;

var
  DlgSearch: TDlgSearch;

implementation

uses Utilidades;

{$R *.DFM}

procedure TDlgSearch.FieldsListChange(Sender: TObject);
begin
  Try
     _SrchField := FieldsList.Items[FieldsList.SelectedItemIndex].Caption;
     SrchCds.IndexFieldNames := _SrchField
  Except
    On E:Exception Do
    Mensaje('No se suede organizar la busqueda utilizando este campo'#13 + E.Message, Self)
  end
end;

(*
  procedure TfrmSearch.DataGridCalcCellColors(Sender: TObject; Field: TField;
    State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
  begin
    If Not (Highlight) And (Field.FieldName = FieldsList.Items[FieldsList.SelectedItemIndex].Caption) Then
      ABrush.Color := clMoneyGreen
  end;
*)

procedure TDlgSearch.DetallesDBTableViewColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  FieldsList.SelectedItemIndex := AColumn.Index;
  FieldsListChange(Sender)
end;

procedure TDlgSearch.DetallesDBTableViewDblClick(Sender: TObject);
begin
  ModalResult := MrOk;
end;

procedure TDlgSearch.DetallesEnter(Sender: TObject);
begin
 gbt_Buscar.Default := False;
 gbt_Aceptar.Default := True
end;

procedure TDlgSearch.ExportarExecute(Sender: TObject);
begin
  If FileSave.Execute Then
    Begin
{      Case FileSave.FilterIndex Of

       1 : ExportGridToHTML(FileSave.FileName,Detalles,True,True,'xls');
       2 : ExportGridToHTML(FileSave.FileName,Detalles,True,True,'html');
       3 : ExportGridToText(FileSave.FileName,Detalles,True,True,#9,'','','txt');
       4 : ExportGridToXML (FileSave.FileName,Detalles,True,True,'xml')
      end}
    end
end;

procedure TDlgSearch.AceptarExecute(Sender: TObject);
begin
  ModalResult := MrOk
end;

procedure TDlgSearch.BuscarExecute(Sender: TObject);
begin
 If (Trim(Valor.Text) = '') And (SrchCds.RecordCount > 0) Then
   Begin
     ModalResult := MrOk;
     Exit
   End;

 If (Trim(Valor.Text) = '') And (SrchCds.RecordCount <= 0) Then
   Exit;

 SrchCds.Close;

 {Sort First By ....}
 Case Orden.ItemIndex Of
   0 : _SrchOrder := 'ASCENDING';
   1 : _SrchOrder := 'DESCENDING';
   2 : _SrchOrder := ''
 End; {Case}

 SrchCds.CommandText := Format(_SearchSQL,[_SrchTable,
                                           _SrchField,
                                           QuotedStr('%'+Trim(Valor.Text)+'%'),
                                           _SrchField,
                                           QuotedStr(Trim(Valor.Text)),
                                           _SrchField,
                                           _SrchOrder]);
 SrchCds.Open;
// DataGrid.SetFocus;
 gbt_Buscar.Default := Not(gbt_Buscar.Default);
 gbt_Aceptar.Default := Not(gbt_Aceptar.Default)
end;

procedure TDlgSearch.CancelarExecute(Sender: TObject);
begin
  ModalResult := mrCancel
end;

constructor TDlgSearch.Create(Aowner: TComponent; const TableName, Provider,
  InitialField, AltQry: String; const RemServer: tCustomRemoteServer;
  const InitialOrder: Char; const PcktRecords: SmallInt;
  const WState: TWindowState; Const GrdMode : Boolean);
     Var
        CurrentCursor : TCursor;
        ValorIni      ,
        OrderField    ,
        FPath         : String;
        OrdenIni      : Char;
        IniState      : Byte;
        I             : Integer;
     Begin
       inherited Create(AOwner); // Llamada al inherited constructor

       DetallesDBTableView.DataController.DataModeController.GridMode := GrdMode;
       grdModes.Visible := DetallesDBTableView.DataController.DataModeController.GridMode;

       SrchCds.RemoteServer := RemServer;
       SrchCds.ProviderName := Provider;
       SrchCds.PacketRecords := PcktRecords;
       CurrentCursor := Screen.Cursor;

       Try
         Screen.Cursor := crAppStart;
         SrchCds.Close;
         _SrchTable := TableName;

         FPath := GetCurrentDir;

         StartUpIni := TIniFile.Create(FPath + '\' + SrchCds.RemoteServer.Owner.Name + '_' + TableName + '.strt');

         _SrchField := StartUpIni.ReadString('Busqueda','Campo',InitialField);
         OrdenIni := Chr(StartUpIni.ReadInteger('Busqueda','Orden',Ord(InitialOrder)));
         ValorIni := StartUpIni.ReadString('Busqueda','Valor','');

         OrderField := ' ORDER BY ' +  DoubleQuoted(_SrchField) + ' ';

         Orden.OnClick := Nil;

         Case OrdenIni Of
           'A': Begin
                  Orden.ItemIndex := 0;
                  _SrchOrder := 'ASCENDING';
                end;
           'D': Begin
                  _SrchOrder := 'DESCENDING';
                  Orden.ItemIndex := 1;
                end;
           'N': Begin
                  _SrchOrder := '';
                  Orden.ItemIndex := 2;
                  OrderField := ''
                end
         End; {Case}

         Orden.OnClick := BuscarExecute;

         If  Trim (AltQry) = '' Then
           SrchCds.CommandText := 'SELECT * FROM ' + DoubleQuoted(TableName) +
                                  OrderField +
                                  _SrchOrder
         Else
           SrchCds.CommandText := AltQry +
                                  OrderField +
                                  _SrchOrder;

         SrchCds.Open;
         DetallesDBTableView.DataController.CreateAllItems(false);

         FieldsList.Items.Clear;
         FieldsList.Header.Caption := 'Campos de Busqueda';

         For  I := 0 To SrchCds.FieldDefList.Count - 1 Do
            With FieldsList.Items.Add Do Caption := SrchCds.FieldDefList[I].Name;

         FieldsList.SelectedItemIndex := FieldsList.Items.IndexOfCaption(_SrchField);

         Valor.Text := ValorIni;

         Recordar_Busqueda.Checked := StartUpIni.ReadBool('Busqueda','Remember',False);

         If Recordar_Busqueda.Checked And (Trim(ValorIni) <> '') Then
           SrchCds.Locate(_SrchField,Variant(ValorIni),[]);

         Width := StartUpIni.ReadInteger('Busqueda','X',Width);
         Height := StartUpIni.ReadInteger('Busqueda','Y',Height);

         _WindowStt := WState;
         IniState := Integer (_WindowStt);
         IniState := StartUpIni.ReadInteger('Busqueda','State',IniState);
         WindowState := TWindowstate (IniState);
       Finally
         Screen.Cursor := CurrentCursor;
//         DetallesTableView.EndUpdate;
       End {Try}
end;

procedure TDlgSearch.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If ModalResult = MrOk Then
    Begin
         StartUpIni.WriteString('Busqueda','Campo',FieldsList.Items[FieldsList.SelectedItemIndex].Caption);
         Case Orden.ItemIndex Of
            0 : StartUpIni.WriteInteger('Busqueda','Orden',Ord('A'));
            1 : StartUpIni.WriteInteger('Busqueda','Orden',Ord('D'));
            2 : StartUpIni.WriteInteger('Busqueda','Orden',Ord('N'));
         End; {Case}
         StartUpIni.WriteString('Busqueda','Valor',SrchCds.FieldByName(FieldsList.Items[FieldsList.SelectedItemIndex].Caption).AsString);
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
//  Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

end;

procedure TDlgSearch.SrchCdsBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
  var A : Integer;
begin
end;

procedure TDlgSearch.TituloDblClick(Sender: TObject);
begin
  DetallesDBTableView.DataController.DataModeController.GridMode := Not(DetallesDBTableView.DataController.DataModeController.GridMode);
  grdModes.Visible := DetallesDBTableView.DataController.DataModeController.GridMode;
end;

procedure TDlgSearch.FormActivate(Sender: TObject);
begin
  Valor.SetFocus;
end;

procedure TDlgSearch.ValorEnter(Sender: TObject);
begin
 gbt_Buscar.Default := True;
 gbt_Aceptar.Default := False
end;

Initialization
  RegisterClass(TDlgSearch);

end.
