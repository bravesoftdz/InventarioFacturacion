unit Impresion_Documentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, SUIForm, SUITabControl, Grids, Wwdbigrd, Wwdbgrid, StdCtrls,
  DBCtrls, wwdbedit, Wwdotdot, Wwdbcomb, Mask, wwdblook, db, SUIButton, Wwkeycb;

type
  TFImpresion_Documentos = class(TForm)
    suiForm1: TsuiForm;
    lListadoClientes: TLabel;
    btCancelar: TsuiButton;
    suiButton1: TsuiButton;
    tbFamiliares: TsuiTabControl;
    grdFamiliares: TwwDBGrid;
    Label1: TLabel;
    buscar: TwwIncrementalSearch;
    Label2: TLabel;
    buscarNombre: TwwIncrementalSearch;
    lPrinting: TLabel;
    btTodos: TsuiButton;
    btNinguno: TsuiButton;
    Direccion: TCheckBox;
    btRango: TsuiButton;
    procedure btRangoClick(Sender: TObject);
    procedure grdFamiliaresCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure btNingunoClick(Sender: TObject);
    procedure btTodosClick(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure buscarNombreEnter(Sender: TObject);
    procedure buscarEnter(Sender: TObject);
    procedure grdFamiliaresKeyPress(Sender: TObject; var Key: Char);
    procedure grdFamiliaresTitleButtonClick(Sender: TObject;
      AFieldName: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FImpresion_Documentos: TFImpresion_Documentos;

implementation

uses DataModulo, Utilidades, Reports_Forms, Busqueda_Cedula, DMBde, selectrango,
  SeleccionDocumento, MailMUn1, SeleccionSistema, SeleccionDepto,
  SeleccionClientes, DBTables;

{$R *.dfm}

procedure TFImpresion_Documentos.btNingunoClick(Sender: TObject);
begin
  grdFamiliares.UnselectAll
end;

procedure TFImpresion_Documentos.btRangoClick(Sender: TObject);
  Var
    A,B,I : Integer;
    T     : String;
begin
  A := 0;
  B := 0;
  Application.CreateForm(TFselect_rango,Fselect_rango);
  Fselect_rango.ShowModal;
  Try
    A := StrToInt(Trim(Fselect_rango.Inicio.Text));
    B := StrToInt(Trim(Fselect_rango.Fin.Text));
    If B < A Then
      Begin
        I := A; A := B; B := I
      end;
  Except
     Mensaje ('Uno de los Valores Introducidos es Incorrecto'#13'Por Favor, Verifique');
     Fselect_rango.Free;
     SysUtils.Abort
  end;
  If Fselect_rango.ModalResult = MrOk Then
    Begin
      For I := A To B Do
        Begin
          T := Pad('L',IntToStr(I),7,'0');
          If ModuloBDE.tPrestamos.Locate('NUMPRESTAM',T,[]) Then
             grdFamiliares.SelectedList.Add(ModuloBDE.tPrestamos.GetBookmark)
        end;
    end;
  Fselect_rango.Free
end;

procedure TFImpresion_Documentos.btTodosClick(Sender: TObject);
begin
  grdFamiliares.SelectAll
end;

procedure TFImpresion_Documentos.buscarEnter(Sender: TObject);
begin
  buscarNombre.Clear
end;

procedure TFImpresion_Documentos.buscarNombreEnter(Sender: TObject);
begin
  buscar.Clear
end;

procedure TFImpresion_Documentos.grdFamiliaresCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  lPrinting.Visible := True;
  lPrinting.Caption := Modulobde.tPrestamosNombres.Value + ' ' + Modulobde.tPrestamosApellido.Value;
  If  ModuloBde.tPrestamosBALANCEACT.Value <= 0 Then
    Begin
      ABrush.Color := clWebOrange;
      AFont.Style := [fsBold]
    end
end;

procedure TFImpresion_Documentos.grdFamiliaresKeyPress(Sender: TObject;
  var Key: Char);
  Var
    A        : String;
    C,M,S,V  : String;
    F,D      : Integer;
begin
  If Key In['0'..'9'] Then
    Begin
      buscar.Text := Key;
      buscar.setfocus
    End;

  If Key In['A','C','E'..'Z','a','c','e'..'z'] Then
    Begin
      buscarNombre.Text := Key;
      buscarNombre.setfocus
    End;

  If Key In['B','b'] Then
    Begin
      C := InputBox('Busqueda por Cédula','Intruduzca el Numero de Cedula','');
      C := Trim(TrimChar('-',C));

      If Length(Trim(C)) < 11 Then
        Begin
          Mensaje ('La Cedula Introducida es Incorrecta'#13'Por Favor Verifique');
          SysUtils.Abort
        End;

      M := Copy(C,1,3);
      S := Copy(C,4,7);
      V := Copy(C,11,1);

      A := Format('%s-%s',[S,V]);

      If ModuloBDE.tClientes.Locate('CEDSERIE;CEDNUMERO',VarArrayOf([M,A]),[]) Then
        Begin
          If ModuloBDE.tPrestamos.Locate('CLIENTE',Trim(ModuloBDE.tClientesCODIGO.Value),[])Then
            grdFamiliares.SelectedList.Add(ModuloBDE.tPrestamos.GetBookmark)
        End
      Else
        Mensaje('La cédula introducida no está registrada, no existe o fue digitada incorrectamente')
    End;

  If Key In['D','d'] Then
    Begin
      Application.CreateForm(TFSeleccionDepto,FSeleccionDepto);
      FSeleccionDepto.ShowModal;
      If FSeleccionDepto.ModalResult = MrOk Then
        Begin
          Try
            ModuloBDE.tClientes.Filter := 'LUGARTRAB = ' + QuotedStr(Trim(ModuloBDE.qr_DepartamentosLUGARTRAB.Value));
            ModuloBDE.tClientes.Filtered := True;
            ModuloBDE.tClientes.First;
            D := 0;
            Application.CreateForm(TFSeleccionClientes,FSeleccionClientes);
            FSeleccionClientes.ShowModal;
            If FSeleccionClientes.ModalResult = MrOk Then
              Begin
                F := FSeleccionClientes.wwDBGrid1.SelectedList.Count-1;
                For D := 0 To F Do
                  Begin
                    ModuloBDE.tClientes.GotoBookmark(FSeleccionClientes.wwDBGrid1.SelectedList.Items[D]);
//                    lPrinting.Caption := Format('%s de %s',[IntToStr(D),IntToStr(F+1)]);
                    lPrinting.Caption := ModuloBDE.tPrestamos.DatabaseName+'\'+ModuloBDE.tPrestamos.TableName;
                    lPrinting.Update;
                    ModuloBDE.tPrestamos.IndexName := 'CLIPRE';
//                    If ModuloBDE.tPrestamos.FindKey([ModuloBDE.tClientesCODIGO.Value]) Then
                    ModuloBDE.tPrestamos.Filter := 'CLIENTE = ' + QuotedStr(ModuloBDE.tClientesCODIGO.Value);
                    ModuloBDE.tPrestamos.Filtered := True;
                    If ModuloBDE.tPrestamos.RecordCount > 0 Then
                      grdFamiliares.SelectedList.Add(ModuloBDE.tPrestamos.GetBookmark);
                    ModuloBDE.tClientes.Next;
                  end;
              end;
          Finally
            ModuloBDE.tClientes.Filter := '';
            ModuloBDE.tClientes.Filtered := False;
            ModuloBDE.tPrestamos.Filter := '';
            ModuloBDE.tPrestamos.Filtered := False;
          end;
        End
    end;
end;

procedure TFImpresion_Documentos.grdFamiliaresTitleButtonClick(Sender: TObject;
  AFieldName: string);
begin
  Try
    ModuloBDE.tPrestamos.IndexFieldNames := AFieldName
  Except
{    ModuloBDE.tClientes.AddIndex('idx'+ AFieldName,
                                 AFieldName,
                                 [ixExpression],
                                 '');
    ModuloBDE.tClientes.IndexFieldNames := AFieldName}
  end;
end;

procedure TFImpresion_Documentos.suiButton1Click(Sender: TObject);
  Var I   : Integer;
      A,B : String;
      Setup : Boolean;
begin
  Setup := True;
  Application.CreateForm(TFSeleccionDocumento,FSeleccionDocumento);
  FSeleccionDocumento.ShowModal;
  If FSeleccionDocumento.ModalResult = MrOK Then
    Begin
      Pr_Direccion:= Direccion.Checked;
//      ReportsAndForms.CartaRecaudadora.SavePrinterSetup := True;
//      ReportsAndForms.CartaRecaudadora.ShowPrintDialog := True;
      For I:= 0 To grdFamiliares.SelectedList.Count-1 Do
        Begin
          lPrinting.Caption := Format('Imprimiendo : %s %s',[ModuloBDE.tClientesNOMBRES.Value,ModuloBDE.tClientesAPELLIDOS.Value]);
          lPrinting.Visible := True;
          lPrinting.Update;
          ModuloBDE.tPrestamos.GotoBookmark(grdFamiliares.SelectedList.Items[I]);
          ModuloBde.tClientes.Locate('CODIGO',Trim(ModuloBde.tPrestamosCLIENTE.Value),[]);

          B := 'P' + Trim(ModuloBDE.tClientesMunicipio.Value);

          A := Format('SELECT * FROM %s USE INDEX (Cedula_Nueva) WHERE mun_ced=:municipio AND seq_ced=:secuencia AND ver_ced=:verificador',[B]);

          Modulo.tPadron_1.Close;
          Modulo.tPadron_1.CommandText := A;
          Modulo.tPadron_1.Params.ParamByName('Municipio').AsString := Trim(ModuloBDE.tClientesMunicipio.Value);
          Modulo.tPadron_1.Params.ParamByName('Secuencia').AsString := Trim(ModuloBDE.tClientesSecuencia.Value);
          Modulo.tPadron_1.Params.ParamByName('Verificador').AsString := Trim(ModuloBDE.tClientesVerificador.Value);
          Try
            Modulo.tPadron_1.Open;
            ReportsAndForms.FotoCarta.Visible := True;
            ReportsAndForms.Frame_Carta.Visible := True;
            ReportsAndForms.NOMBRE_CARTA.DataPipeline := ReportsAndForms.PipePadron;


            If Modulo.tPadron_1.RecordCount <= 0 Then
              Begin
                ReportsAndForms.NOMBRE_CARTA.DataPipeline := ReportsAndForms.PipeClientes;
                ReportsAndForms.FotoCarta.Visible := False;
                ReportsAndForms.Frame_Carta.Visible := False;
              End
          Except
            ReportsAndForms.NOMBRE_CARTA.DataPipeline := ReportsAndForms.PipeClientes;
            ReportsAndForms.FotoCarta.Visible := False;
            ReportsAndForms.Frame_Carta.Visible := False;
          End;

          ReportsAndForms.SYSTEMA.Caption := ModuloBDE.tSistemasCLAVE.Value + '-' + ModuloBDE.tPrestamosNUMPRESTAM.Value + '-' + ModuloBDE.tPrestamosCLIENTE.Value;
          ReportsAndForms.CartaRecaudadora.PrinterSetup.DocumentName := ReportsAndForms.NOMBRE_CARTA.Text;
          Application.CreateForm(TfRichEdit,fRichEdit);
          fRichEdit.WPRichText1.LoadFromFile(Modulo.tDocumentosDireccion.Value + Modulo.tDocumentosArchivo.Value);
          fRichEdit.providerClientes.Datasource := ModuloBDE.dClientes;
          fRichEdit.Button1Click(Sender);
          fRichEdit.ShowFields.Checked := False;
          If Setup Then
            Begin
              fRichEdit.WPRichText1.PrintDialog();
              SetUp := False
            end
          Else fRichEdit.WPRichText1.Print;
//          ReportsAndForms.CartaRecaudadora.Print;
          ReportsAndForms.CartaRecaudadora.ShowPrintDialog := False;
          fRichEdit.free;


  //      El GARANTE
          If ModuloBde.tPrestamosGARANTE.AsInteger > 0 Then
            Begin

              ModuloBde.tClientes.Locate('CODIGO',Trim(ModuloBde.tPrestamosGARANTE.Value),[]);

              B := 'P' + Trim(ModuloBDE.tClientesMunicipio.Value);

              A := Format('SELECT * FROM %s USE INDEX (Cedula_Nueva) WHERE mun_ced=:municipio AND seq_ced=:secuencia AND ver_ced=:verificador',[B]);

              Modulo.tPadron_1.Close;
              Modulo.tPadron_1.CommandText := A;
              Modulo.tPadron_1.Params.ParamByName('Municipio').AsString := Trim(ModuloBDE.tClientesMunicipio.Value);
              Modulo.tPadron_1.Params.ParamByName('Secuencia').AsString := Trim(ModuloBDE.tClientesSecuencia.Value);
              Modulo.tPadron_1.Params.ParamByName('Verificador').AsString := Trim(ModuloBDE.tClientesVerificador.Value);
              Try
                Modulo.tPadron_1.Open;
                ReportsAndForms.FotoCarta.Visible := True;
                ReportsAndForms.Frame_Carta.Visible := True;
                ReportsAndForms.NOMBRE_CARTA.DataPipeline := ReportsAndForms.PipePadron;


                If Modulo.tPadron_1.RecordCount <= 0 Then
                  Begin
                    ReportsAndForms.NOMBRE_CARTA.DataPipeline := ReportsAndForms.PipeClientes;
                    ReportsAndForms.FotoCarta.Visible := False;
                    ReportsAndForms.Frame_Carta.Visible := False;
                  End
              Except
                ReportsAndForms.NOMBRE_CARTA.DataPipeline := ReportsAndForms.PipeClientes;
                ReportsAndForms.FotoCarta.Visible := False;
                ReportsAndForms.Frame_Carta.Visible := False;
              End;
              ReportsAndForms.SYSTEMA.Caption := 'GARANTE-' + ModuloBDE.tSistemasCLAVE.Value + '-' + ModuloBDE.tPrestamosNUMPRESTAM.Value + '-' + ModuloBDE.tPrestamosCLIENTE.Value;
              ReportsAndForms.CartaRecaudadora.PrinterSetup.DocumentName := ReportsAndForms.NOMBRE_CARTA.Text;
//              ReportsAndForms.CartaRecaudadora.Print;
//              fRichEdit.WPRichText1.LoadFromFile(Modulo.tDocumentosDireccion.Value + Modulo.tDocumentosArchivo.Value);
              //fRichEdit.providerClientes.Datasource := ModuloBDE.dClientes;
              ModuloBde.tSistemas.Edit;
              ModuloBde.tSistemasCLAVE.Value := 'GARANTE-' + ModuloBde.tSistemasCLAVE.Value;
              Application.CreateForm(TfRichEdit,fRichEdit);
              fRichEdit.WPRichText1.LoadFromFile(Modulo.tDocumentosDireccion.Value + Modulo.tDocumentosArchivo.Value);
              fRichEdit.providerClientes.Datasource := ModuloBDE.dClientes;
              fRichEdit.Button1Click(Sender);
              fRichEdit.ShowFields.Checked := False;

              fRichEdit.WPRichText1.Print;
              ModuloBde.tSistemas.Cancel;
              fRichEdit.free;
            end;
      end;

    lPrinting.Visible := False;
    ModuloBDE.tPrestamos.Close;
    ModuloBDE.tClientes.Close;
    Modulo.tPadron_1.Close;
    Close
    end;
  FSeleccionDocumento.Free

end;

end.

