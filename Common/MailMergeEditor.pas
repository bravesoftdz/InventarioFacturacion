unit MailMergeEditor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Db, DBTables, Grids, DBGrids, ExtCtrls, ComCtrls,
  WPRuler, Wpdbrich, ShellAPI, wpDefActions, WPCTRRich, WPTbar,
  WPRTEDefs, WPCTRMemo, ActnList, PlatformDefaultStyleActnCtrls, ActnMan,
  W7Classes, W7ListViewItems, AdvGlowButton, ToolPanels, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxListBox, cxCheckBox, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Mask, DBClient, WPUtil, Buttons,
  wpManHeadFoot, WpParPrp, WPSymDlgEx, WPOBJ_Image, ExtDlgs, WPTabdlg, WpPagPrp,
  Wpspdlg1, WPTblDlg, WPPrvFrm, WpParBrd2, WP1Style, WPStyles, WPPanel, TaskDialog,
  AdvOfficeStatusBar, WPRTEPaint;

type
  TfrmEditor_Documentos = class(TForm)
    pg_Editor: TPageControl;
    pg_Text_Editor: TTabSheet;
    pnl_Editor: TPanel;
    wp_Barra_Opciones: TWPToolBar;
    wp_Horiz_Ruler: TWPRuler;
    wp_VertRuler: TWPVertRuler;
    adv_OptionPanel: TAdvToolPanel;
    InfoBoard: TW7TaskItem;
    Listado_Campos: TcxListBox;
    Label1: TLabel;
    Tablas: TcxComboBox;
    bt_Insertar_Campos: TAdvGlowButton;
    bt_Quitar_Campos: TAdvGlowButton;
    chk_Mostrar_Campos: TcxCheckBox;
    Modulos: TcxComboBox;
    Opciones_Editor: TActionManager;
    Salir: TAction;
    Insertar_Campo: TAction;
    Quitar_Campos: TAction;
    gbt_Salir: TAdvGlowButton;
    wp_editor: TWPRichText;
    wp_Barra_Opciones_Adicionales: TWPToolBar;
    WPManageHeaderFooterDlg: TWPManageHeaderFooterDlg;
    Dialogo_HF: TAction;
    WPParagraphPropDlg: TWPParagraphPropDlg;
    WPSymbolDlgEx: TWPSymbolDlgEx;
    Insertar_Simbolos: TAction;
    Formato_Parrafos: TAction;
    Campos_Especiales: TcxListBox;
    Label2: TLabel;
    bt_Insertar_Campos_Especiales: TAdvGlowButton;
    Insertar_Campo_Especial: TAction;
    Insertar_Imagen: TAction;
    TheBalloonHint: TBalloonHint;
    WPPagePropDlg: TWPPagePropDlg;
    WPTabDlg: TWPTabDlg;
    WPTableDlg: TWPTableDlg;
    Table_Dialog: TAction;
    Print_: TAction;
    bt_Estilos: TWPToolButton;
    Estilos: TAction;
    Guardar: TAction;
    Nuevo: TAction;
    WPDefaultActions: TWPDefaultActions;
    Guardar_Como: TAction;
    Abrir: TAction;
    Cerrar: TAction;
    Anadir_Documentos: TAction;
    EditorStatusPanel: TAdvOfficeStatusBar;
    advOpciones_Basicas: TAdvToolPanel;
    bt_Nuevo: TWPToolButton;
    bt_Guardar: TWPToolButton;
    bt_Abrir: TWPToolButton;
    bt_Guardar_Como: TWPToolButton;
    WPToolButton1: TWPToolButton;
    bt_Cerrar: TWPToolButton;
    bt_Insertar_Simbolo: TWPToolButton;
    bt_Formato_Parrafos: TWPToolButton;
    bt_Insertar_Imagen: TWPToolButton;
    bt_Table_Dialog: TWPToolButton;
    bt_Encabezado_Pie: TWPToolButton;
    bt_Anadir_Documentos: TWPToolButton;
    wp_zoom_Size: TWPValueEdit;
    Merge_Data: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ShowFieldsClick(Sender: TObject);
    procedure wp_EditorActivatingHotStyle(Sender: TObject;
      par: TParagraph; posinpar: Integer);
    procedure wp_EditorActivateHint(Sender: TObject; txtobj: TWPTextObj;
      par: TParagraph; posinpar: Integer);
    procedure TablasPropertiesCloseUp(Sender: TObject);
    procedure Insertar_CampoExecute(Sender: TObject);
    procedure Quitar_CamposExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure wp_editorMailMergeGetText(Sender: TObject; const inspname: string;
      Contents: TWPMMInsertTextContents);
    procedure wp_editorChangeZooming(Sender: TObject);
    procedure wp_zoom_SizeChange(Sender: TObject);
    procedure Dialogo_HFExecute(Sender: TObject);
    procedure Insertar_SimbolosExecute(Sender: TObject);
    procedure Formato_ParrafosExecute(Sender: TObject);
    procedure Insertar_Campo_EspecialExecute(Sender: TObject);
    procedure Insertar_ImagenExecute(Sender: TObject);
    procedure wp_editorDeactivateHotStyle(Sender: TObject);
    procedure wp_Horiz_RulerDblClick(Sender: TObject);
    procedure wp_VertRulerDblClick(Sender: TObject);
    procedure Table_DialogExecute(Sender: TObject);
    procedure Print_Execute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GuardarExecute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure Guardar_ComoExecute(Sender: TObject);
    procedure AbrirExecute(Sender: TObject);
    procedure Anadir_DocumentosExecute(Sender: TObject);
    procedure CerrarExecute(Sender: TObject);
    procedure wp_editorChange(Sender: TObject);
    procedure Merge_DataExecute(Sender: TObject);
    procedure wp_editorPaint(Sender: TObject);
  private
    { Private-Declarations }
    _Original_Caption : String;
    Function CheckIsSaved: Boolean;
    Function LoadImageFromFile(var FileName : String; imgobj : TWPOImage; RTFBox : TWPRichText; const X,Y : Integer; const LoadDialog : Boolean) : Boolean;
  public
    { Public-Declarations }
  end;

var
  frmEditor_Documentos: TfrmEditor_Documentos;
  _Is_ImageFile : Boolean = False;
  _Is_ID_ImageFile : Boolean = False;

implementation

uses DataModulo, Utilidades, Generales, AddDocumentsToDB;


{$R *.DFM}

procedure TfrmEditor_Documentos.Anadir_DocumentosExecute(Sender: TObject);
  Var
    F : TfrmAnadir_Documentos;
begin
  If Not CheckIsSaved Then Exit;
  F := TfrmAnadir_Documentos.Create(Self,wp_editor.LastFileName);
  F.ShowModal;
  F.Free
end;

procedure TfrmEditor_Documentos.CerrarExecute(Sender: TObject);
begin
  Nuevo.Execute
end;

Function TfrmEditor_Documentos.CheckIsSaved: Boolean;
  Begin
    Result := True;
    If wp_editor.Modified Then
      If AdvAsk('Documento Modificado','Desea guardar los cambios hechos al documento?',
                'existen cambios sin guardar',
                tiWarning,
                [cbYes, cbNo],
                Self) = ID_YES Then
        If Not wp_editor.Save Then Result := False
  End;

procedure TfrmEditor_Documentos.Insertar_CampoExecute(Sender: TObject);
  var
    I : Integer;
begin
  I := Listado_Campos.ItemIndex;
  If I < 0 Then UpdateInfoBoard(InfoBoard,
                                'Seleccione Campo',
                                'Debe seleccionar un campo de la lista para agregarlo al documento',
                                68,
                                clRed,
                                clRed)
  Else
    Begin
      wp_Editor.InputMergeField(Listado_Campos.Items[i]+'@'+Modulos.Properties.Items[Tablas.ItemIndex]+'.'+Tablas.Text,
                                Tablas.Text+'.'+Listado_Campos.Items[i]);
      wp_editor.Refresh;
      wp_editor.SetFocus
    End;
end;


procedure TfrmEditor_Documentos.Insertar_Campo_EspecialExecute(Sender: TObject);
begin
  If Campos_Especiales.ItemIndex < 0 Then UpdateInfoBoard(InfoBoard,
                                'Seleccione Campo',
                                'Debe seleccionar un campo de la lista para agregarlo al documento',
                                68,
                                clRed,
                                clRed)
  Else
    Case Campos_Especiales.ItemIndex of
      0 : wp_Editor.InputMergeField(_ed_ImgFile);
      1 : wp_Editor.InputMergeField(_ed_ID_ImgFile);
      2 : wp_Editor.InputMergeField(_ed_SysDate);
      3 : wp_Editor.InputMergeField(_ed_SysTime);
      4 : wp_Editor.InputMergeField(_ed_CurrTerminal);
      5 : wp_Editor.InputMergeField(_ed_CurrUser);
    End;
  wp_editor.Refresh;
  wp_editor.SetFocus
end;

procedure TfrmEditor_Documentos.Insertar_ImagenExecute(Sender: TObject);
  Var
    ImgPath : String;
    imgobj : TWPOImage;
begin
  LoadImageFromFile(ImgPath,imgobj,wp_editor,-1,-1,True)
end;

procedure TfrmEditor_Documentos.Insertar_SimbolosExecute(Sender: TObject);
begin
  WPSymbolDlgEx.Execute
end;

procedure TfrmEditor_Documentos.Formato_ParrafosExecute(Sender: TObject);
begin
  WPParagraphPropDlg.Execute
end;

procedure TfrmEditor_Documentos.Quitar_CamposExecute(Sender: TObject);
begin
  wp_Editor.DeleteFields
end;

procedure TfrmEditor_Documentos.wp_EditorActivatingHotStyle(Sender: TObject;
  par: TParagraph; posinpar: Integer);
var p : TPoint;
    txtobj : TWPTextObj;
begin
  if par <> nil then
  begin
     txtobj := (Sender as TWPCustomRTFEdit).FieldGetInPar(par,posinpar);
     if txtobj<>nil then
     begin
     TheBalloonHint.Title := 'Campo :';
     TheBalloonHint.Description := txtobj.Name;
     TheBalloonHint.ImageIndex := 1338;
     p := TWPCustomRTFEdit(Sender).GetPointFromParLin(par, posinpar);
     if p.x > TWPCustomRTFEdit(Sender).Width then p.x := TWPCustomRTFEdit(Sender).Width;
     p := TWPCustomRTFEdit(Sender).ClientToScreen(p);
     TheBalloonHint.ShowHint(p)
     end;
  end;
end;

procedure TfrmEditor_Documentos.wp_editorChange(Sender: TObject);
begin
  EditorStatusPanel.Panels[1].Text := 'Modificado';
  EditorStatusPanel.Panels[4].Text := IntToStr(wp_editor.PageNumber+1) + '/' + IntToStr(wp_editor.PageCount);
end;

procedure TfrmEditor_Documentos.wp_editorChangeZooming(Sender: TObject);
begin
  wp_zoom_Size.IntValue := wp_editor.Zooming
end;

procedure TfrmEditor_Documentos.wp_editorDeactivateHotStyle(Sender: TObject);
begin
  TheBalloonHint.HideHint
end;

procedure TfrmEditor_Documentos.wp_EditorActivateHint(Sender: TObject;
  txtobj: TWPTextObj; par: TParagraph; posinpar: Integer);

var
  p : TPoint;

begin
  if par <> nil then
  begin
     if txtobj <> nil then
        TheBalloonHint.Description := txtobj.Name;
     p := TWPCustomRTFEdit(Sender).GetPointFromParLin(par, posinpar);
     if p.x > TWPCustomRTFEdit(Sender).Width then p.x := TWPCustomRTFEdit(Sender).Width;
     p := TWPCustomRTFEdit(Sender).ClientToScreen(p);
     TheBalloonHint.ShowHint(p);
  end;
end;

Function TfrmEditor_Documentos.LoadImageFromFile(var FileName : String; imgobj : TWPOImage; RTFBox : TWPRichText; const X,Y : Integer; const LoadDialog : Boolean) : Boolean;
  Var
    FileN, Folder : String;
    dlg : TOpenPictureDialog;
    doLoad : Boolean;
    txtobj: TWPTextObj;
  Begin
    Result := False;
    doLoad := True;

    FileN := ExtractFileName(FileName);
    Folder := ExtractFilePath(FileName);

    If Not(LoadDialog) And (Trim(FileN) = '') Then doLoad := False;

    If LoadDialog Then
      Begin
        dlg := TOpenPictureDialog.Create(nil);
        dlg.InitialDir := Folder;
        dlg.FileName := FileN;
        dlg := TOpenPictureDialog.Create(Application);
        If dlg.Execute Then
          FileName := dlg.FileName
        Else doLoad := False;
        dlg.Free
      End;

   If Not FileExists(FileName) Then doLoad := False;

   If doLoad Then
    Try
      If (RTFBox.ActiveParagraph <> nil)  Then
        Begin
          txtobj := RTFBox.Memo.RTFData.TextObjects.Insert(WPLoadObjectFromFile(RTFBox.Memo.RTFData,FileName));
          If (txtobj <> nil) And (X > 0) And (Y > 0) Then
            Begin
              txtobj.Width := X;
              txtobj.Height := Y;
            End;
          RTFBox.Refresh;
          Result := True
        End;
    except
    End
  End;

procedure TfrmEditor_Documentos.Merge_DataExecute(Sender: TObject);
begin
  wp_editor.MergeText('',True)
end;

procedure TfrmEditor_Documentos.NuevoExecute(Sender: TObject);
begin
  If Not CheckIsSaved Then Exit;
  wp_editor.Clear;
  wp_editor.CheckHasBody;
  wp_editor.LastFileName := '';
  Caption := _Original_Caption + ' : Nuevo Documento';
  EditorStatusPanel.Panels[0].Text := '';
  EditorStatusPanel.Panels[1].Text := 'Nuevo'
end;

procedure TfrmEditor_Documentos.Print_Execute(Sender: TObject);
begin
  If wp_editor.PrintDialog Then
    EditorStatusPanel.Panels[1].Text := 'Impreso';
end;

procedure TfrmEditor_Documentos.wp_editorMailMergeGetText(Sender: TObject;
  const inspname: string; Contents: TWPMMInsertTextContents);
var
  ImgPath    ,
  ModuleName ,
  TableName  ,
  FieldName  : String;
  f,t        : Integer;
  imgobj     : TWPOImage;
  blobstream : TMemoryStream;
begin
  f := Pos('^',inspname);

  If (f > 0) Then
    Begin
      If Contents.FieldnamePart = _ed_ImgFile Then
        Begin
          Contents.StringValue := '';
          _Is_ImageFile := True;
          _Is_ID_ImageFile := False
        End;

      If Contents.FieldnamePart = _ed_ID_ImgFile Then
        Begin
          Contents.StringValue := '';
          _Is_ID_ImageFile := True;
          _Is_ImageFile := False
        End;

      If Contents.FieldnamePart = _ed_SysDate Then
        Contents.StringValue := DateToStr(Date);

      If Contents.FieldnamePart = _ed_SysTime Then
        Contents.StringValue := TimeToStr(Time);

      If Contents.FieldnamePart = _ed_CurrTerminal Then
        Contents.StringValue := _CurrentTerminal;

      If Contents.FieldnamePart = _ed_CurrUser Then
        Contents.StringValue := _CurrentUser;

      Exit;
    End; // If (f > 0)

  f := Pos ('@',inspname);
  t := Pos ('.',inspname);
  If (f > 0) And (t > 0) Then
    Begin
      FieldName := Copy(inspname,0,f-1);
      ModuleName := Copy(inspname,f+1,t-f-1);
      TableName := Copy(inspname,t+1,Length(inspname));
      If Not (Application.FindComponent(ModuleName).FindComponent(TableName) As TClientDataSet).Active Then
        Begin
          Contents.StringValue := '-*-';
          Exit
        End;

      If (Application.FindComponent(ModuleName).FindComponent(TableName) As TClientDataSet).FieldByName(FieldName) Is TBlobField Then
        Begin
          Try
            If imgobj = nil Then imgobj := TWPOImage.Create(wp_editor);
            blobstream := TMemoryStream.Create;
            TBlobField((Application.FindComponent(ModuleName).FindComponent(TableName) As TClientDataSet).FieldByName(FieldName)).SaveToStream(blobstream);
            blobstream.Position := 0;
            imgobj.LoadFromStream(blobstream);
            If (_ed_FotoX <= 0) And (_ed_FotoY <= 0) Then
              Begin
                imgobj.WidthTW := imgobj.ContentsWidth;
                imgobj.HeightTW:= imgobj.ContentsHeight;
              End
            Else
              Begin
                imgobj.WidthTW := _ed_FotoX;
                imgobj.HeightTW:= _ed_FotoY;
              End;
            If Contents.CurrentObject = nil Then Contents.obj := TWPTextObj.Create;
            Contents.Obj := imgobj;
            blobstream.Free;
            wp_editor.Refresh;
          except
            On E:Exception Do Contents.StringValue := '['+ E.Message +']';
          End;
          Exit
        End;

      If _Is_ImageFile Then
        Begin
          _Is_ImageFile := False;
          ImgPath := (Application.FindComponent(ModuleName).FindComponent(TableName) As TClientDataSet).FieldByName(FieldName).Text;
          If Not LoadImageFromFile(ImgPath,imgobj,wp_editor,_ed_FotoX,_ed_FotoY,false) Then
            Contents.StringValue := '[*]';
          Exit
        End;

      If _Is_ID_ImageFile Then
        Begin
          _Is_ID_ImageFile := False;
          ImgPath := _FotosPadron + '\' +
                     (Application.FindComponent(ModuleName).FindComponent(TableName) As TClientDataSet).FieldByName('directorio').Text + '\' +
                     (Application.FindComponent(ModuleName).FindComponent(TableName) As TClientDataSet).FieldByName(FieldName).Text;
          If Not LoadImageFromFile(ImgPath,imgobj,wp_editor,_ed_FotoX,_ed_FotoY,false) Then
            Contents.StringValue := '[*]';
          Exit
        End;

      Contents.StringValue := (Application.FindComponent(ModuleName).FindComponent(TableName) As TClientDataSet).FieldByName(FieldName).Text;
    End; // If (f > 0) And (t > 0)
end;

procedure TfrmEditor_Documentos.wp_editorPaint(Sender: TObject);
begin
  EditorStatusPanel.Panels[4].Text := IntToStr(wp_editor.PageNumber+1) + '/' + IntToStr(wp_editor.PageCount);
end;

procedure TfrmEditor_Documentos.wp_Horiz_RulerDblClick(Sender: TObject);
begin
  WPTabDlg.Execute
end;

procedure TfrmEditor_Documentos.wp_VertRulerDblClick(Sender: TObject);
begin
  WPPagePropDlg.Execute
end;

procedure TfrmEditor_Documentos.wp_zoom_SizeChange(Sender: TObject);
begin
  wp_editor.Zooming := wp_zoom_Size.Value
end;

procedure TfrmEditor_Documentos.AbrirExecute(Sender: TObject);
begin
  If Not CheckIsSaved Then Exit;
  If wp_editor.Load Then
    Begin
      Caption := _Original_Caption + ' : ' + ExtractFileName(wp_editor.LastFileName);
      EditorStatusPanel.Panels[0].Text := ExtractFileDir(wp_editor.LastFileName);;
      EditorStatusPanel.Panels[1].Text := 'Cargado';
    End;
end;

procedure TfrmEditor_Documentos.Dialogo_HFExecute(Sender: TObject);
begin
  WPManageHeaderFooterDlg.Execute
end;

procedure TfrmEditor_Documentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  If Not CheckIsSaved Then SysUtils.Abort
end;

procedure TfrmEditor_Documentos.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Activar Los Permisos del Usuario}
       ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);

       _Original_Caption := Caption;
       Caption := _Original_Caption + ' : Nuevo Documento';
       EditorStatusPanel.Panels[0].Text := '';
       EditorStatusPanel.Panels[1].Text := 'Nuevo';
       wp_zoom_Size.IntValue := wp_editor.Zooming;
       ShowFieldsClick(nil);
       wp_Editor.InitialDir := _DefaultDocFolder;
       Tablas.Properties.Items.Clear;
       AddTablesToList(Tablas.Properties.Items,Modulos.Properties.Items);
       WindowState := wsMaximized;
       ShowFieldsClick(nil);
    End;
end;

procedure TfrmEditor_Documentos.FormDestroy(Sender: TObject);
begin
  wp_editor.Free
end;

procedure TfrmEditor_Documentos.GuardarExecute(Sender: TObject);
begin
  If wp_editor.Save Then
    Begin
      Caption := _Original_Caption + ' : ' + ExtractFileName(wp_editor.LastFileName);
      EditorStatusPanel.Panels[0].Text := ExtractFileDir(wp_editor.LastFileName);;
      EditorStatusPanel.Panels[1].Text := 'Guardado';
    End;
end;

procedure TfrmEditor_Documentos.Guardar_ComoExecute(Sender: TObject);
begin
  If wp_editor.SaveAs Then
    Begin
      Caption := _Original_Caption + ' : ' + ExtractFileName(wp_editor.LastFileName);
      EditorStatusPanel.Panels[0].Text := ExtractFileDir(wp_editor.LastFileName);;
      EditorStatusPanel.Panels[1].Text := 'Guardado';
    End;
end;

procedure TfrmEditor_Documentos.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TfrmEditor_Documentos.ShowFieldsClick(Sender: TObject);
begin
  Try
    wp_editor.OnMailMergeGetText := nil;

    if  chk_Mostrar_Campos.Checked then
    begin
       wp_Editor.InsertPointAttr.hidden:=false;
       wp_Editor.automatictextattr.BackgroundColor := clYellow;
       wp_Editor.automatictextattr.UseBackgroundColor := TRUE;
    end else
    begin
       wp_Editor.InsertPointAttr.hidden:=TRUE;
       wp_Editor.automatictextattr.UseBackgroundColor := FALSE;
    end;
    wp_editor.ShowMergeFieldNames := chk_Mostrar_Campos.Checked
  Finally
    wp_editor.OnMailMergeGetText := wp_editorMailMergeGetText
  End;
  wp_editor.Refresh
end;

procedure TfrmEditor_Documentos.TablasPropertiesCloseUp(Sender: TObject);
begin
  If Pos('*',Tablas.Text) > 0 Then Tablas.ItemIndex := Tablas.ItemIndex + 1;
  Listado_Campos.Items.Clear;
  (Application.FindComponent(Modulos.Properties.Items[Tablas.ItemIndex]).FindComponent(Tablas.Text) As TClientDataSet).GetFieldNames(Listado_Campos.Items);
end;

procedure TfrmEditor_Documentos.Table_DialogExecute(Sender: TObject);
begin
  WPTableDlg.Execute;
end;

Initialization
  RegisterClass(TfrmEditor_Documentos);

end.
