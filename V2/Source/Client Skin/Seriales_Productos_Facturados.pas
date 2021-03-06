unit Seriales_Productos_Facturados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, wwdblook, ExtCtrls, SUIButton, Db,
  ActnList, XPStyleActnCtrls, ActnMan, Mask, DBCtrls;

type
  TFSeriales_Productos_Facturados = class(TForm)
    Detalles_Seriales: TwwDBGrid;
    bt_Finalizar: TsuiButton;
    Opciones: TActionManager;
    Finalizar: TAction;
    Eliminar: TAction;
    bt_Eliminar: TsuiButton;
    Cantidad: TLabel;
    Registrados: TLabel;
    Restan: TLabel;
    Detalle_Factura: TwwDBGrid;
    bt_Anterior: TsuiButton;
    Anterior: TAction;
    Imprimir: TAction;
    Serial: TEdit;
    bt_Imprimir: TsuiButton;
    Seriales_Recibidos: TwwDBGrid;
    Desglosar: TCheckBox;
    procedure Seriales_RecibidosDblClick(Sender: TObject);
    procedure Seriales_RecibidosCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure Detalle_FacturaDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImprimirExecute(Sender: TObject);
    procedure SerialExit(Sender: TObject);
    procedure SerialEnter(Sender: TObject);
    procedure SerialKeyPress(Sender: TObject; var Key: Char);
    procedure Detalle_FacturaRowChanged(Sender: TObject);
    procedure AnteriorExecute(Sender: TObject);
    procedure Detalles_SerialesRowChanged(Sender: TObject);
    procedure FinalizarExecute(Sender: TObject);
    procedure EliminarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    _Cantidad : Integer;
    _Completados : Boolean;
  end;

var
  FSeriales_Productos_Facturados: TFSeriales_Productos_Facturados;

implementation

uses DataModulo, Generales, RegKeys, Utilidades, Reports_Forms, Autorizar,
  DotmatrX, ESBDates;

{$R *.dfm}
{$I FactComm.Cnt}

procedure SaveData;
  Begin
    If Modulo.tFacturas.State In DsEditModes Then
      Modulo.tFacturas.Post;

    If Modulo.tFacturas.ChangeCount > 0 Then
        Begin
          If Modulo.tSeriales_Comprados.ChangeCount > 0 Then
            Modulo.tSeriales_Comprados.ApplyUpdates(0);

          Modulo.tFacturas.ApplyUpdates(0);
          Modulo.tReporter.Close;
          Modulo.tReporter.CommandText := 'Update "Facturas" Set "Seriales_Registrados" = (Select Count("Serial") From "Seriales_Despachados" Where "Proceso" = :Proceso2) Where "Proceso" = :Proceso1';
          Modulo.tReporter.Params.ParamByName('Proceso1').AsString := Modulo.tFacturasProceso.AsString;
          Modulo.tReporter.Params.ParamByName('Proceso2').AsString := Modulo.tFacturasProceso.AsString;
          Modulo.tReporter.Execute;
          Modulo.tFacturas.Refresh
        end
  end;

procedure TFSeriales_Productos_Facturados.AnteriorExecute(Sender: TObject);
begin
  SaveData;
  ModalResult := MrOk
end;

procedure TFSeriales_Productos_Facturados.Detalles_SerialesRowChanged(Sender: TObject);
begin
  Cantidad.Caption := Format ('Cantidad : %d',[_Cantidad]);
  Registrados.Caption := Format ('Registrados : %d',[Modulo.tSeriales_Factura.RecordCount]);
  Restan.Caption := Format ('Restan : %d',[_Cantidad - Modulo.tSeriales_Factura.RecordCount])
end;

procedure TFSeriales_Productos_Facturados.Detalle_FacturaDblClick(Sender: TObject);
begin
  Serial.SetFocus
end;

procedure TFSeriales_Productos_Facturados.Detalle_FacturaRowChanged(Sender: TObject);
begin
//  SaveData;
  If Modulo.tSeriales_Comprados.ChangeCount > 0 Then Modulo.tSeriales_Comprados.ApplyUpdates(0);

  _Cantidad := Round(Modulo.tDetalles_FacturaCantidad.Value * Modulo.tDetalles_FacturaContenido.Value);
  Modulo.tSeriales_Comprados.Close;
  Modulo.tSeriales_Comprados.Params.ParamByName('Codigo').AsString := Modulo.tDetalles_FacturaCodigo_Real.AsString;
  Modulo.tSeriales_Comprados.Open;
  Detalles_SerialesRowChanged(Sender)
end;

procedure TFSeriales_Productos_Facturados.EliminarExecute(Sender: TObject);
begin
  If Modulo.tSeriales_Factura.RecordCount > 0 Then Modulo.tSeriales_Factura.Delete;
  Detalles_SerialesRowChanged(Sender)
end;

procedure TFSeriales_Productos_Facturados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Modulo.tDetalles_Factura.Filter := '';
  Modulo.tDetalles_Factura.Filtered := False;
end;

procedure TFSeriales_Productos_Facturados.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      Self.Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);
      Modulo.tDetalles_Factura.Filter := 'Requiere_Serial = True';
      Modulo.tDetalles_Factura.Filtered := True;
      {Carga la Configuracion Inicial de la Pantalla}
      RegInfo.CloseKey;
      RegInfo.OpenKey(_FacturaProductosKey,False);

      Desglosar.Checked := RegInfo.ReadBool(_Desglosar_Formularios);
    End; {If _Load_Create}

end;

procedure TFSeriales_Productos_Facturados.ImprimirExecute(Sender: TObject);
  Var
    DoPreview    : Boolean;
    OutputFormat : ShortInt;
    PrintFormat  : ShortInt;

begin
  SaveData;
  Modulo.tDetalles_Factura.Filtered := False;
  If (Modulo.tFacturasTotal_Seriales.Value - Modulo.tFacturasSeriales_Registrados.Value) >= 1 Then
    Begin
      Mensaje(Format(_Seriales_Incompletos,[Modulo.tFacturasSeriales_Registrados.Text,
                                            Modulo.tFacturasTotal_Seriales.Text,
                                            IntToStr(Round(Modulo.tFacturasTotal_Seriales.Value -
                                                     Modulo.tFacturasSeriales_Registrados.Value))]),self);
      Modulo.tDetalles_Factura.Filtered := True;
      Detalle_FacturaRowChanged(Sender);
      Exit
    end;

  RegInfo.CloseKey;
  RegInfo.OpenKey(_FacturaProductosKey,False);

  DoPreview := True;
  OutputFormat := RegInfo.ReadInteger(_OutputFormat);
  PrintFormat := RegInfo.ReadInteger(_PrinterStyle);

  Case OutputFormat Of
    _Ticket : Begin
                If DoPreview Then
                  Begin
                    Application.CreateForm(TPreviewForm,PreviewForm);
                    ImprimirRecibo(_Screen,False);
                    PreviewForm.Vista.Lines.LoadFromFile(_PreviewFile);
                    PreviewForm.ShowModal;
                    If PreviewForm.ModalResult = MrOk Then DoPreview := False;
                    PreviewForm.Free
                  End; {If DoPreview}

                  If Not (DoPreview) Then ImprimirRecibo(_Port,False);
              End; // _Ticket

    _TextFormat : Begin
                    If DoPreview Then
                      Begin
                        Application.CreateForm(TPreviewForm,PreviewForm);
                        ImprimirFactura(_Screen,False);
                        PreviewForm.Vista.Lines.LoadFromFile(_PreviewFile);
                        PreviewForm.ShowModal;
                        If PreviewForm.ModalResult = MrOk Then DoPreview := False;
                        PreviewForm.Free
                      End; {If DoPreview}

                      If Not (DoPreview) Then ImprimirFactura(_Port,False);
                  End; // _TextFormat

    _GraphicForm : Begin
                     RegInfo.CloseKey;
                     RegInfo.OpenKey(_FacturaProductosKey,False);
                     With ReportsAndForms.FormFactura Do
                       Begin
                         Template.FileName := RegInfo.ReadString(_TemplateFileName);

                         If (Trim(Template.FileName) <> _NoneStr) And (Trim(Template.FileName) <> '') Then
                           Template.LoadFromFile;

                         DeviceType                := DeviceTypes[True];
                         ShowPrintDialog           := RegInfo.ReadBool(_ShowPrintDialog);
                         PrinterSetup.Copies       := RegInfo.ReadInteger(_PrintCopies);
                         PrinterSetup.PaperName    := RegInfo.ReadString(_PaperName);
                         PrinterSetup.PaperHeight  := RegInfo.ReadFloat(_PaperHeight);
                         PrinterSetup.PaperWidth   := RegInfo.ReadFloat(_PaperWidth);
                         PrinterSetup.PrinterName  := RegInfo.ReadString(_PrinterName);
                         PrinterSetup.MarginBottom := RegInfo.ReadFloat(_MarginBottom);
                         PrinterSetup.MarginTop    := RegInfo.ReadFloat(_MarginTop);
                         PrinterSetup.MarginLeft   := RegInfo.ReadFloat(_MarginLeft);
                         PrinterSetup.MarginRight  := RegInfo.ReadFloat(_MarginRight);
//                         ReportsAndForms.Nota_Pie_Factura.Text := RegInfo.ReadString(_NotaAlPie);

                         ReportsAndForms._Seccion  := _FacturaProductosKey;

(*
                           ReportsAndForms.InvoiceTaxLabel.Visible       := Desglosar.Checked;
                           ReportsAndForms.InvoiceTax.Visible            := Desglosar.Checked;
                           ReportsAndForms.InvoiceDiscountLabel.Visible  := Desglosar.Checked;
                           ReportsAndForms.InvoiceDiscount.Visible       := Desglosar.Checked;
                           ReportsAndForms.InvoicePaidLabel.Visible      := Desglosar.Checked;
                           ReportsAndForms.InvoicePaidAmmount.Visible    := Desglosar.Checked;
                           ReportsAndForms.InvoicePendingLabel.Visible   := Desglosar.Checked;
                           ReportsAndForms.InvoicePendingAmmount.Visible := Desglosar.Checked;
    
*)
                         Print
                       End // With
                   End // _GraphicForm
  End; // Case
  Modulo.tDetalles_Factura.Filtered := True;
  Detalle_FacturaRowChanged(Sender)
end;

procedure TFSeriales_Productos_Facturados.SerialEnter(Sender: TObject);
begin
  Serial.Clear
end;

procedure TFSeriales_Productos_Facturados.Seriales_RecibidosCalcCellColors(
  Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean;
  AFont: TFont; ABrush: TBrush);
begin
  If Modulo.tSeriales_CompradosStatus.Value = _stVENDIDO Then
    Begin
      ABrush.Color := clWebBlack;
      AFont.Color := clYellow
    end;

end;

procedure TFSeriales_Productos_Facturados.Seriales_RecibidosDblClick(
  Sender: TObject);
 Var
   K : Char;
begin
  K := #13;
  If Modulo.tSeriales_Comprados.RecordCount > 0 Then
    Begin
      Serial.Text := Trim(Modulo.tSeriales_CompradosSerial.Text);
      SerialKeyPress(Sender,K)
    end;

end;

procedure TFSeriales_Productos_Facturados.SerialExit(Sender: TObject);
begin
  Serial.Text := 'Digite aqu? el n?mero de serie'
end;

procedure TFSeriales_Productos_Facturados.SerialKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    Begin
      If Not Modulo.tSeriales_Factura.Locate('Serial',Trim(Serial.Text),[]) Then
        Begin
          // Si no Encuentra el serial en el listado de seriales comprados entonces se a?ade a la lista
          Granted := False;
          If Not Modulo.tSeriales_Comprados.Locate('Serial',Trim(Serial.Text),[]) Then
            Begin
              Granted := True;
              // Esta seccion esta temporalmente desabilitada para facilitar la comodidad inicial del proceso hasta que se acostubren al proceso general
             {Granted := False;
               If Application.MessageBox(PChar(Format(_ErrSerialNoRegistrado,[Trim(Serial.Text)])),
                                        'Serial NO Registrado',
                                        MB_YESNO + MB_ICONQUESTION) = ID_YES Then
                Begin
                  OpenForm(TFAutorizar,FAutorizar);
                  If (Not Granted) Then
                    Begin
                      Mensaje(_ErrAccesoDenegadoOpcion);
                      Exit
                    End;}

              Modulo.tSeriales_Comprados.Append;
              Modulo.tSeriales_CompradosSerial.Value := Serial.Text;
              Modulo.tSeriales_CompradosCodigo.Value := Modulo.tDetalles_FacturaCodigo_Real.Value;
              Modulo.tSeriales_CompradosFecha_Comprado.Value := Modulo.Enlace.AppServer.ServerDate;
              Modulo.tSeriales_CompradosHora_Comprado.Value := Modulo.Enlace.AppServer.ServerTime;
              Modulo.tSeriales_CompradosProveedor.Value := _stANADIDO;
              Modulo.tSeriales_CompradosUsuario.Value := Format('%s -> %s',[_GrantedUser, _CurrentUser]);
              Modulo.tSeriales_CompradosProceso.Value := _stANADIDO;
              Modulo.tSeriales_CompradosStatus.Value := _stRECIBIDO;
              Modulo.tSeriales_Comprados.Post;
              Serial.Clear;
              Serial.SetFocus;
  //          end;
              If (Not Granted) Then Exit
            end;

          If (Modulo.tSeriales_CompradosStatus.Value <> _stVENDIDO) Then
            Begin
              Modulo.tSeriales_Factura.Append;
              Modulo.tSeriales_FacturaSerial.Value := Modulo.tSeriales_CompradosSerial.Value;
              Modulo.tSeriales_Factura.Post;

              Modulo.tSeriales_Comprados.Edit;
              Modulo.tSeriales_CompradosStatus.Value := _stVENDIDO;
              Modulo.tSeriales_Comprados.Post;

            End {If}
          Else Mensaje (Format(_ErrSerialStatus,[Modulo.tSeriales_CompradosStatus.Value]),self)
        end;
      Serial.Clear;
      Serial.SetFocus
    end
end;

procedure TFSeriales_Productos_Facturados.FinalizarExecute(Sender: TObject);
begin
(*
        If Application.MessageBox('Se han hecho cambios al registro de los seriales de esta Factura'#13'Desea Guardar esos Datos?',
                                  'Edicion de Seriales Activa',
                                  MB_YESNO + MB_ICONQUESTION) = ID_Yes Then


*)
  _Completados := (_Cantidad - Modulo.tSeriales_Factura.RecordCount) = 0;

  Detalle_Factura.OnRowChanged := Nil;
  SaveData;

  If Not(_Completados)  Then
    PopUpMessage(Modulo.Mensajes,_Seriales_Incompletos);

  Close
end;

end.
