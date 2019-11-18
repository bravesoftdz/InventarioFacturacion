unit Seriales_Productos_Despachados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, wwdblook, ExtCtrls, SUIButton, Db,
  ActnList, XPStyleActnCtrls, ActnMan, Mask, DBCtrls;

type
  TFSeriales_Productos_Despachados = class(TForm)
    Detalles_Seriales: TwwDBGrid;
    bt_Finalizar: TsuiButton;
    Opciones: TActionManager;
    Finalizar: TAction;
    Eliminar: TAction;
    bt_Eliminar: TsuiButton;
    Cantidad: TLabel;
    Registrados: TLabel;
    Restan: TLabel;
    Detalle_Salida: TwwDBGrid;
    bt_Anterior: TsuiButton;
    Anterior: TAction;
    Imprimir: TAction;
    Serial: TEdit;
    bt_Imprimir: TsuiButton;
    Seriales_Recibidos: TwwDBGrid;
    procedure Seriales_RecibidosDblClick(Sender: TObject);
    procedure Seriales_RecibidosCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure Detalle_SalidaDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImprimirExecute(Sender: TObject);
    procedure SerialExit(Sender: TObject);
    procedure SerialEnter(Sender: TObject);
    procedure SerialKeyPress(Sender: TObject; var Key: Char);
    procedure Detalle_SalidaRowChanged(Sender: TObject);
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
  FSeriales_Productos_Despachados: TFSeriales_Productos_Despachados;

implementation

uses DataModulo, Generales, RegKeys, Utilidades, Reports_Forms, Autorizar,
  DotmatrX;

{$R *.dfm}
{$I FactComm.Cnt}

procedure SaveData;
  Begin
    If Modulo.tSalidas_Inventario.State In DsEditModes Then
      Modulo.tSalidas_Inventario.Post;

    If Modulo.tSalidas_Inventario.ChangeCount > 0 Then
        Begin
          If Modulo.tSeriales_Comprados.ChangeCount > 0 Then
            Modulo.tSeriales_Comprados.ApplyUpdates(0);

          Modulo.tSalidas_Inventario.ApplyUpdates(0);
          Modulo.tReporter.Close;
          Modulo.tReporter.CommandText := 'Update "Salidas_Inventario" Set "Seriales_Registrados" = (Select Count("Serial") From "Seriales_Despachados" Where "Proceso" = :Proceso2) Where "Proceso" = :Proceso1';
          Modulo.tReporter.Params.ParamByName('Proceso1').AsString := Modulo.tSalidas_InventarioProceso.AsString;
          Modulo.tReporter.Params.ParamByName('Proceso2').AsString := Modulo.tSalidas_InventarioProceso.AsString;
          Modulo.tReporter.Execute;
          Modulo.tSalidas_Inventario.Refresh
        end
  end;

procedure TFSeriales_Productos_Despachados.AnteriorExecute(Sender: TObject);
begin
  SaveData;
  ModalResult := MrOk
end;

procedure TFSeriales_Productos_Despachados.Detalles_SerialesRowChanged(Sender: TObject);
begin
  Cantidad.Caption := Format ('Cantidad : %d',[_Cantidad]);
  Registrados.Caption := Format ('Registrados : %d',[Modulo.tSeriales_Salida.RecordCount]);
  Restan.Caption := Format ('Restan : %d',[_Cantidad - Modulo.tSeriales_Salida.RecordCount])
end;

procedure TFSeriales_Productos_Despachados.Detalle_SalidaDblClick(Sender: TObject);
begin
  Serial.SetFocus
end;

procedure TFSeriales_Productos_Despachados.Detalle_SalidaRowChanged(Sender: TObject);
begin
//  SaveData;
  If Modulo.tSeriales_Comprados.ChangeCount > 0 Then Modulo.tSeriales_Comprados.ApplyUpdates(0);

  _Cantidad := Round(Modulo.tDetalles_SalidaCantidad.Value * Modulo.tDetalles_SalidaContenido.Value);
  Modulo.tSeriales_Comprados.Close;
  Modulo.tSeriales_Comprados.Params.ParamByName('Codigo').AsString := Modulo.tDetalles_SalidaCodigo_Real.AsString;
  Modulo.tSeriales_Comprados.Open;
  Detalles_SerialesRowChanged(Sender)
end;

procedure TFSeriales_Productos_Despachados.EliminarExecute(Sender: TObject);
begin
  If Modulo.tSeriales_Salida.RecordCount > 0 Then Modulo.tSeriales_Salida.Delete;
  Detalles_SerialesRowChanged(Sender)
end;

procedure TFSeriales_Productos_Despachados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Modulo.tDetalles_Salida.Filter := '';
  Modulo.tDetalles_Salida.Filtered := False;
end;

procedure TFSeriales_Productos_Despachados.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      Self.Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);
      Modulo.tDetalles_Salida.Filter := 'Requiere_Serial = True';
      Modulo.tDetalles_Salida.Filtered := True;
    End; {If _Load_Create}

end;

procedure TFSeriales_Productos_Despachados.ImprimirExecute(Sender: TObject);
  Var
    DoPreview    : Boolean;
    OutputFormat : ShortInt;
    PrintFormat  : ShortInt;

begin
  SaveData;
  Modulo.tDetalles_Salida.Filtered := False;
  If (Modulo.tSalidas_InventarioTotal_Seriales.Value - Modulo.tSalidas_InventarioSeriales_Registrados.Value) >= 1 Then
    Begin
      Mensaje(Format(_Seriales_Incompletos,[Modulo.tSalidas_InventarioSeriales_Registrados.Text,
                                            Modulo.tSalidas_InventarioTotal_Seriales.Text,
                                            IntToStr(Round(Modulo.tSalidas_InventarioTotal_Seriales.Value -
                                                     Modulo.tSalidas_InventarioSeriales_Registrados.Value))]));
      Modulo.tDetalles_Salida.Filtered := True;
      Detalle_SalidaRowChanged(Sender);
      Exit
    end;

  RegInfo.CloseKey;
  RegInfo.OpenKey(_SalidaInventarioKey,False);

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
                     RegInfo.OpenKey(_SalidaInventarioKey,False);
                     With ReportsAndForms.FormSalidaInventario Do
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
                         ReportsAndForms.Nota_Pie_Salida.Text := RegInfo.ReadString(_NotaAlPie);

                         ReportsAndForms._Seccion  := _SalidaInventarioKey;

                         Print
                       End // With
                   End // _GraphicForm
  End; // Case
  Modulo.tDetalles_Salida.Filtered := True;
  Detalle_SalidaRowChanged(Sender)
end;

procedure TFSeriales_Productos_Despachados.SerialEnter(Sender: TObject);
begin
  Serial.Clear
end;

procedure TFSeriales_Productos_Despachados.Seriales_RecibidosCalcCellColors(
  Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean;
  AFont: TFont; ABrush: TBrush);
begin
  If Modulo.tSeriales_CompradosStatus.Value = _stVENDIDO Then
    Begin
      ABrush.Color := clWebBlack;
      AFont.Color := clYellow
    end;

end;

procedure TFSeriales_Productos_Despachados.Seriales_RecibidosDblClick(
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

procedure TFSeriales_Productos_Despachados.SerialExit(Sender: TObject);
begin
  Serial.Text := 'Digite aquí el número de serie'
end;

procedure TFSeriales_Productos_Despachados.SerialKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    Begin
      If Not Modulo.tSeriales_Salida.Locate('Serial',Trim(Serial.Text),[]) Then
        Begin
          // Si no Encuentra el serial en el listado de seriales comprados entonces se añade a la lista
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
              Modulo.tSeriales_CompradosCodigo.Value := Modulo.tDetalles_SalidaCodigo_Real.Value;
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
              Modulo.tSeriales_Salida.Append;
              Modulo.tSeriales_SalidaSerial.Value := Modulo.tSeriales_CompradosSerial.Value;
              Modulo.tSeriales_Salida.Post;

              Modulo.tSeriales_Comprados.Edit;
              Modulo.tSeriales_CompradosStatus.Value := _stVENDIDO;
              Modulo.tSeriales_Comprados.Post;

            End {If}
          Else Mensaje (Format(_ErrSerialStatus,[Modulo.tSeriales_CompradosStatus.Value]))
        end;
      Serial.Clear;
      Serial.SetFocus
    end
end;

procedure TFSeriales_Productos_Despachados.FinalizarExecute(Sender: TObject);
begin
(*
        If Application.MessageBox('Se han hecho cambios al registro de los seriales de esta Salida'#13'Desea Guardar esos Datos?',
                                  'Edicion de Seriales Activa',
                                  MB_YESNO + MB_ICONQUESTION) = ID_Yes Then


*)
  _Completados := (_Cantidad - Modulo.tSeriales_Salida.RecordCount) = 0;

  Detalle_Salida.OnRowChanged := Nil;
  SaveData;

  If Not(_Completados)  Then
    PopUpMessage(Modulo.Mensajes,_Seriales_Incompletos);

  Close
end;

end.
