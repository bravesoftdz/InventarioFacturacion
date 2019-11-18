unit DocumentEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  StdCtrls, DBCtrls, wpDefActions, Wpdbrich, Dialogs, WPRuler, Buttons, WPTbar,
  WPPanel, WPCTRRich, WPRTEDefs, WPCTRMemo, WPOBJ_Image, ExtCtrls, ComCtrls,
  HintFormU, Db, ShellAPI;
type
  TFDocument_Edit = class(TForm)
    OpenDialog1: TOpenDialog;
    Panel2: TPanel;
    Panel3: TPanel;
    Cuerpo_Documento: TWPRichText;
    Barra_Opciones: TWPToolBar;
    Regla_Horizontal: TWPRuler;
    Regla_Vertical: TWPVertRuler;
    providerClientes: TWPMMDataProvider;
    providerPrestamos: TWPMMDataProvider;
    providerReferencia: TWPMMDataProvider;
    provider_otrasReferencias: TWPMMDataProvider;
    providerPadron: TWPMMDataProvider;
    OpenDialog2: TOpenDialog;
    wpBotonInsertar_Imagen: TWPToolButton;
    Acciones: TWPDefaultActions;
    wpBotonGuardar_Como: TWPToolButton;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    InsertField: TButton;
    FieldList: TListBox;
    ShowFields: TCheckBox;
    DeleteFields: TButton;
    Tablas: TComboBox;
    Button1: TButton;
    providerSistemas: TWPMMDataProvider;
    procedure wpBotonGuardar_ComoClick(Sender: TObject);
    procedure wpSaveClick(Sender: TObject);
    procedure Cuerpo_DocumentoMailMergeGetText(Sender: TObject;
      const inspname: string; Contents: TWPMMInsertTextContents);
    procedure suitempTablasChange(Sender: TObject);
    procedure OpenTableClick(Sender: TObject);
    procedure InsertFieldClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  {  procedure AllRTFTextActivateHotStyle(Sender: TObject; pa: PTAttr;
      par: PTParagraph; lin: PTLine; cp: Integer); }
    procedure AllRTFTextDeactivateHotStyle(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure WPRichText1ChangeSelection(Sender: TObject);
    procedure ShowFieldsClick(Sender: TObject);
    procedure WPRichText1MeasureTextPage(Sender: TObject;
      PageInfo: TWPMeasurePageParam);
    procedure Cuerpo_DocumentoActivatingHotStyle(Sender: TObject;
      par: TParagraph; posinpar: Integer);
    procedure Button2Click(Sender: TObject);
    procedure DummyClick(Sender: TObject);
    procedure DeleteFieldsClick(Sender: TObject);
    procedure Cuerpo_DocumentoDeactivateHotStyle(Sender: TObject);
    procedure WPRichText1ActivateHint(Sender: TObject; txtobj: TWPTextObj;
      par: TParagraph; posinpar: Integer);
    procedure Button3Click(Sender: TObject);
    procedure Cuerpo_DocumentoHyperLinkEvent(Sender: TObject; text, url: String;
      IgnoredNumber: Integer);
    procedure Button4Click(Sender: TObject);
    procedure InsertGraphicClick(Sender: TObject);
    procedure Loadimage1Click(Sender: TObject);
    procedure ChangeObjectPositionAndWrapMode(Sender: TObject);
    procedure Text2Graphic (Sender: TObject; GSFile: string);
    procedure GraphicOptionsClick(Sender: TObject);
  private
    FHintForm : THintForm;
  public
    { Public-Deklarationen }
  end;

var
  FDocument_Edit: TFDocument_Edit;

implementation

uses
  DataModulo, Utilidades, Generales;


{$R *.DFM}

procedure TFDocument_Edit.OpenTableClick(Sender: TObject);
begin
  Modulo.tClientes.GetFieldNames(FieldList.Items);
  ProviderClientes.Datasource := Modulo.dClientes;
  ProviderClientes.AutoLoadData := TRUE;
  Modulo.tClientes.Open
end;

procedure TFDocument_Edit.InsertFieldClick(Sender: TObject);
var i : Integer;
begin
  i := FieldList.ItemIndex;
  if i<0 then ShowMessage('Please open a table and select a field') else
  // WPRichText1.InputField('<',FieldList.Items[i]+'>',FieldList.Items[i]);
  Cuerpo_Documento.InputMergeField(FieldList.Items[i]);
end;

procedure TFDocument_Edit.Button1Click(Sender: TObject);
{var i : Integer;
    tim : Cardinal;
    Section : TWPRTFSectionProps;}
begin
  Cuerpo_Documento.MergeText('',true);
{   Table1.DisableControls;
   try
   AllRTFText.BeginUpdate;
   Table1.First;
   i := 0;
   while not Table1.EOF do begin Inc(i); Table1.Next; end;
   ProgressBar1.Max := i;
   Table1.First;
   i := 0;
   AllRTFText.Clear;
   tim := GetTickCount;
   while not Table1.EOF do
   begin
      ProgressBar1.Position := i;
      Cuerpo_Documento.MergeText;

      if i=0 then // FIRST RUN
      begin
         AllRTFText.AsString := Cuerpo_Documento.AsString;
         AllRTFText.CPPosition := MaxInt; // to end
      end
      else if i>0 then // SUBSEQUENT RUNS
      begin
         // Append a new paragragraph IF  the last line is not empty
         if AllRTFText.ActivePosInPar>0 then
             AllRTFText.InputString(#13);
         // Need page break
         AllRTFText.FastSetPageBreak(true, true);
         // and append the text
         Section := AllRTFText.FastAppendText(Cuerpo_Documento,true);
         Section.Select := [wpsec_ResetOutlineNums];
      end;
      Application.ProcessMessages;
      Table1.Next;
      inc(i);
   end;
   Label1.Caption := IntToStr(GetTickCount-tim);
   finally
   AllRTFText.EndUpdate;
   Table1.EnableControls;
  { AllRTFText.SaveToFile('c:\a.rtf',false,'RTF');
   AllRTFText.ReformatAll();
   AllRTFText.SaveToFile('c:\a2.rtf',false,'RTF-nonumberprops,-nomergefields,-nohyperlinks');
   end;}
end;

procedure TFDocument_Edit.DummyClick(Sender: TObject);
{var i : Integer;
    tim : Cardinal;
    Section : TWPRTFSectionProps;}
begin
{   try
   AllRTFText.BeginUpdate;
   i := 0;
   ProgressBar1.Max := 500;
   i := 0;
   AllRTFText.Clear;
   tim := GetTickCount;
   AllRTFText.Header.Assign(Cuerpo_Documento.Header);
   while i<500 do
   begin
      ProgressBar1.Position := i;
      Cuerpo_Documento.MergeText;    //was: Cuerpo_Documento.FastMergeText;
      { Alternative, slower method to append the RTF data:
        AllRTFText.CPPosition := $FFFFFF;
        AllRTFText.SelectionAsString := Cuerpo_Documento.AsString;
      AllRTFText.FastSetPageBreak(true, true);
      Section := AllRTFText.FastAppendText(Cuerpo_Documento, true);
      Section.Select := [wpsec_ResetOutlineNums];
      Application.ProcessMessages;
      inc(i);
   end;
   AllRTFText.Refresh;
   Label1.Caption := IntToStr(GetTickCount-tim);
   finally
   AllRTFText.EndUpdate;
 {  AllRTFText.SaveToFile('c:\a.rtf',false,'RTF');
   AllRTFText.ReformatAll();
   AllRTFText.SaveToFile('c:\a2.rtf',false,'RTF-nonumberprops,-nomergefields');
   end;}
end;

(*
procedure TForm1.AllRTFTextActivateHotStyle(Sender: TObject; pa: PTAttr;
  par: PTParagraph; lin: PTLine; cp: Integer);  *)

procedure TFDocument_Edit.Cuerpo_DocumentoActivatingHotStyle(Sender: TObject;
  par: TParagraph; posinpar: Integer);
var p : TPoint;
    txtobj : TWPTextObj;
begin
  if par <> nil then
  begin
     txtobj := (Sender as TWPCustomRTFEdit).FieldGetInPar(par,posinpar);
     if txtobj<>nil then
     begin
     FHintForm.Caption := txtobj.Name;
     p := TWPCustomRTFEdit(Sender).GetPointFromParLin(par, posinpar);
     if p.x > TWPCustomRTFEdit(Sender).Width then p.x := TWPCustomRTFEdit(Sender).Width;
     p := TWPCustomRTFEdit(Sender).ClientToScreen(p);
     FHintForm.Left := p.x;
     FHintForm.Top := p.y;
     FHintForm.Show;
     end;
  end;
end;

procedure TFDocument_Edit.WPRichText1ActivateHint(Sender: TObject;
  txtobj: TWPTextObj; par: TParagraph; posinpar: Integer);
var p : TPoint;
begin
  if par <> nil then
  begin
     if txtobj<>nil then
        FHintForm.Caption := txtobj.Name;

     p := TWPCustomRTFEdit(Sender).GetPointFromParLin(par, posinpar);
     if p.x > TWPCustomRTFEdit(Sender).Width then p.x := TWPCustomRTFEdit(Sender).Width;
     p := TWPCustomRTFEdit(Sender).ClientToScreen(p);
     FHintForm.Left := p.x;
     FHintForm.Top := p.y;
     FHintForm.Show;
  end;
end;

procedure TFDocument_Edit.Cuerpo_DocumentoDeactivateHotStyle(Sender: TObject);
begin
   FHintForm.Hide;
end;

procedure TFDocument_Edit.AllRTFTextDeactivateHotStyle(Sender: TObject);
begin
   FHintForm.Hide;
end;

procedure TFDocument_Edit.FormCreate(Sender: TObject);
  Var I : Integer;
begin
   FHintForm := THintForm.Create(Self);
   ShowFieldsClick(nil);
   Cuerpo_Documento.InitialDir := _DefaultShrdFolder;
   For I := 0 To Modulo.ComponentCount - 1 Do
     If (UpperCase(Modulo.Components[I].ClassName) = UpperCase('TClientDataSet')) Or
         (UpperCase(Modulo.Components[I].ClassName) = UpperCase('TTable')) Then
       Tablas.Items.Add(Modulo.Components[I].Name);

   For I := 0 To ModuloGenerales.ComponentCount - 1 Do
     If (UpperCase(ModuloGenerales.Components[I].ClassName) = UpperCase('TClientDataSet')) Or
         (UpperCase(ModuloGenerales.Components[I].ClassName) = UpperCase('TTable')) Then
       Tablas.Items.Add(ModuloGenerales.Components[I].Name);

   Modulo.tClientes.Open;
//   Modulo.tClientes_TMP.Open;
   Modulo.tPrestamos.Open;
//   Modulo.tReferencia.Open;
//   Modulo.tPadron_1.Open;
//   Modulo.tReferencias.Open;
end;

procedure TFDocument_Edit.FormDestroy(Sender: TObject);
begin
    FHintForm.Free;
end;

procedure TFDocument_Edit.WPRichText1ChangeSelection(Sender: TObject);
begin
  Caption := Format('%d -> %d',[Cuerpo_Documento.SelStart, Cuerpo_Documento.SelLength]);
end;

procedure TFDocument_Edit.ShowFieldsClick(Sender: TObject);
begin
  if ShowFields.Checked then
  begin
     Cuerpo_Documento.InsertPointAttr.hidden:=false;
     Cuerpo_Documento.automatictextattr.BackgroundColor := clYellow;
     Cuerpo_Documento.automatictextattr.UseBackgroundColor := TRUE;
  end else
  begin
     Cuerpo_Documento.InsertPointAttr.hidden:=true;
     Cuerpo_Documento.automatictextattr.UseBackgroundColor := FALSE;
  end;
  ProviderClientes.ShowFieldNames :=  ShowFields.Checked;
end;

procedure TFDocument_Edit.suitempTablasChange(Sender: TObject);
  Var
    I : Integer;
begin
  For I := 0 To Modulo.ComponentCount - 1 Do
     If Modulo.Components[I].Name = Tablas.Text Then
       Begin
         (Modulo.Components[I] As TDataSet).GetFieldNames(FieldList.Items);
       end;
  For I := 0 To Modulo.ComponentCount - 1 Do
     If Modulo.Components[I].Name = Tablas.Text Then
       Begin
         (Modulo.Components[I] As TDataSet).GetFieldNames(FieldList.Items);
       end;
end;

procedure TFDocument_Edit.Cuerpo_DocumentoMailMergeGetText(Sender: TObject;
  const inspname: string; Contents: TWPMMInsertTextContents);
var
  // i : Integer;
   wpobj : TWPOImage;
   f : String;

begin
if UPPERCASE(inspname)='ARCHIVO' then
  begin
    wpobj := TWPOImage.Create(Cuerpo_Documento);
    wpobj.WidthTW := 1500;
    wpobj.HeightTW:= 1500;
    f := _CurrentTerminal +
         providerPadron.Datasource.DataSet.FieldByName('directorio').AsString +
         '\' +
         providerPadron.Datasource.DataSet.FieldByName('archivo').AsString;

    if FileExists(f) Then wpobj.LoadFromFile(f)
    else wpobj.LoadFromFile(_DefaultImgDir + '\' + _DefaultClientImg);

    Contents.obj := wpobj;
  end
end;

procedure TFDocument_Edit.WPRichText1MeasureTextPage(Sender: TObject;
  PageInfo: TWPMeasurePageParam);
begin
 PageInfo.margintop     := 140;
 PageInfo.marginbottom  := 140;
 if (PageInfo.pagenr and 1)=1 then
 begin
   PageInfo.marginleft   := 140;
   PageInfo.marginright  := 720;
   PageInfo.widthtw := PageInfo.marginleft+PageInfo.marginright+1440;
 end
 else
 begin
    PageInfo.marginleft   := 720;
    PageInfo.marginright  := 140;
    PageInfo.widthtw := PageInfo.marginleft+PageInfo.marginright+2880;
 end;
 PageInfo.heighttw := 2880;
 PageInfo.Changed := TRUE;
end;



procedure TFDocument_Edit.wpSaveClick(Sender: TObject);
begin
  mensaje(Cuerpo_Documento.LastFileName)
end;

procedure TFDocument_Edit.wpBotonGuardar_ComoClick(Sender: TObject);
  Var
    S : String;
begin
  If Cuerpo_Documento.Save() Then
    Begin
      S := InputBox('Introduzca la descripción del archivo','Introduzca la descripción del archivo','Descripción del archivo');

(*
        If Not (FileExists(Modulo.tDocumentos.FileName)) Then Modulo.tDocumentos.CreateDataSet;
        Modulo.tDocumentos.Open;
        If Not(Modulo.tDocumentos.Locate('Direccion;Archivo',
                                         vararrayOf([ExtractFilePath(Cuerpo_Documento.LastFileName),
                                                     ExtractFileName(Cuerpo_Documento.LastFileName)]),
                                         [])) Then Modulo.tDocumentos.Append
        Else Modulo.tDocumentos.Edit;
        Modulo.tDocumentosDireccion.Value := ExtractFilePath(Cuerpo_Documento.LastFileName);
        Modulo.tDocumentosArchivo.Value := ExtractFileName(Cuerpo_Documento.LastFileName);
        Modulo.tDocumentosNombre_Completo.Value := S;
        Modulo.tDocumentos.Post;
        Modulo.tDocumentos.Close

*)    end
end;

procedure TFDocument_Edit.Button2Click(Sender: TObject);
begin
  Cuerpo_Documento.ReplaceTokens('<','>');
end;

procedure TFDocument_Edit.DeleteFieldsClick(Sender: TObject);
begin
  Cuerpo_Documento.DeleteFields;
end;


procedure TFDocument_Edit.Button3Click(Sender: TObject);
var par : TParagraph;
    startobj, endobj : TWPTextObj;
begin
 par := Cuerpo_Documento.ActiveText.AppendNewPar();
 par.Append('This is a link: ');                              // Some Text
 startobj := par.AppendNewObject(wpobjHyperlink,true,false);  // Opening
 par.Append('WPCubed GmbH');                                  // More Text
 endobj   := par.AppendNewObject(wpobjHyperlink,true,true);   // Closing
 endobj.SetTag(startobj.NewTag);                              // Link Opening<->Closing

 startobj.Source := 'http://www.wpcubed.com';

 startobj.MakeStyle(true);
 startobj.Style.ASet(WPAT_CharFontSize, 2200);     // create a large font
 startobj.Style.ASetColor(WPAT_CharColor, clRed);  // as red text
 startobj.Style.ASetColor(WPAT_CharBGColor, clYellow); // on yellow background
 startobj.Style.ASetFontName('Courier New');

 // to display:
 Cuerpo_Documento.Refresh;
end;

procedure TFDocument_Edit.Cuerpo_DocumentoHyperLinkEvent(Sender: TObject; text,
  url: String; IgnoredNumber: Integer);
begin
  if Pos('http:',url)>0 then
    ShellExecute(Handle, 'open', PChar(url), '', '', SW_SHOW	);
end;

procedure TFDocument_Edit.Button4Click(Sender: TObject);
begin
{      Table1.Active := FALSE;
      Table1.DataBaseName := 'DBDEMOS';
      Table1.TableName := 'biolife.db';
      Table1.Open;
      Table1.GetFieldNames(FieldList.Items);
      ProviderClientes.AutoLoadData := TRUE;}
end;

procedure TFDocument_Edit.InsertGraphicClick(Sender: TObject);
var txtobj: TWPTextObj;
  begin
    if OpenDialog2.Execute and (Cuerpo_Documento.ActiveParagraph <> nil) then
      begin
        Cuerpo_Documento.SetFocus;
        txtobj := Cuerpo_Documento.Memo.RTFData. TextObjects.Insert (
        WPLoadObjectFromFile(
        Cuerpo_Documento.Memo.RTFData,
        OpenDialog2.FileName));
        // Code to change the graphic, for example change width and height ot the
       // 'PositionMode'
        if txtobj <> nil then
          begin
          end;
        Cuerpo_Documento.Refresh;
      end;
  end;

procedure TFDocument_Edit.ChangeObjectPositionAndWrapMode(Sender: TObject);
  begin
    if Cuerpo_Documento.TextObjects.SelectedObj <>nil then
      begin
        Cuerpo_Documento.TextObjects.ChangePositionMode (
        Cuerpo_Documento.TextObjects.SelectedObj,
        wpotPar, wpwrBoth);
      end;
  end;

procedure TFDocument_Edit.Loadimage1Click(Sender: TObject);
  begin
    if (Cuerpo_Documento.TextObjects.SelectedObj<> nil) and
       (OpenDialog2.Execute) then
      begin
        Cuerpo_Documento.TextObjects.SelectedObj.LoadObjFromFile (
        OpenDialog2.FileName);
      end;
  end;


procedure TFDocument_Edit.Text2Graphic (Sender: TObject; GSFile: string);
  var
    TextObject: TWPOImage; // from unit WPObj_Image
  begin
    if FileExists(GSFile) then
      with Cuerpo_Documento do
        begin
          Finder.ToStart;
          while Finder.Next('<<Graphic-Signature>>') do
            begin
              TextObject := TWPOImage.Create(Cuerpo_Documento.Memo.RTFData); // !
              TextObject.LoadFromFile(GSFile);
              SetSelPosLen(Finder.FoundPosition, Finder.FoundLength);
              TextObjects.Insert(TextObject);
            end;
        end;
  end;


procedure TFDocument_Edit.GraphicOptionsClick(Sender: TObject);
begin
  if (Cuerpo_Documento<>nil) and (Cuerpo_Documento.SelectedObject <> nil) then
    case (Sender as TComponent).Tag of
      1: Cuerpo_Documento.SelectedObject.PositionMode := wpotChar;
      2: begin
           Cuerpo_Documento.SelectedObject.Wrap := wpwrAutomatic;
           Cuerpo_Documento.SelectedObject.PositionMode := wpotPar;
         end;

      3: begin
           Cuerpo_Documento.SelectedObject.Wrap := wpwrBoth;
           Cuerpo_Documento.SelectedObject.PositionMode := wpotPar;
         end;

      4: begin
           Cuerpo_Documento.SelectedObject.Wrap := wpwrNone;
           Cuerpo_Documento.SelectedObject.PositionMode := wpotPage;
         end;
      5: begin
           Cuerpo_Documento.SelectedObject.Wrap := wpwrBoth;
           Cuerpo_Documento.SelectedObject.PositionMode := wpotPage;
         end;
    end;
  end;

end.


