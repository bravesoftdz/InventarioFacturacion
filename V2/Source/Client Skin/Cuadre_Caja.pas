unit Cuadre_Caja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, Mask, DBCtrls,
  ActnList, XPStyleActnCtrls, ActnMan, Db, Menus, ToolWin, ActnCtrls, RegKeys,
  AdvSmoothTabPager, SUIButton, ExtCtrls, SUIPopupMenu;

type
  TFCuadre_Caja = class(TForm)
    Opciones: TActionManager;
    Configuracion_Cuadre: TAction;
    Label4: TLabel;
    Numero_Cuadre: TDBEdit;
    Label7: TLabel;
    Fecha_Cuadre: TDBEdit;
    Label8: TLabel;
    Hora_Cuadre: TDBEdit;
    Cancelar: TAction;
    tp_Cuadre: TAdvSmoothTabPager;
    tp_Distribucion_Efectivo: TAdvSmoothTabPage;
    Detalles: TwwDBGrid;
    Siguiente: TAction;
    Finalizar: TAction;
    bt_Siguiente: TsuiButton;
    bt_Anterior: TsuiButton;
    Anterior: TAction;
    bt_Finalizar: TsuiButton;
    bt_Cancelar: TsuiButton;
    tp_Resumen_Cuadre: TAdvSmoothTabPage;
    Label85: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Shape1: TShape;
    Total_Vendido: TDBEdit;
    Retiros: TDBEdit;
    Fondo: TDBEdit;
    Diferencia: TDBEdit;
    Total_Vendido_Contado: TDBEdit;
    Total_Vendido_Credito: TDBEdit;
    Label11: TLabel;
    Shape2: TShape;
    Label12: TLabel;
    Total_Cobros: TDBEdit;
    Label13: TLabel;
    Total_Recibido: TDBEdit;
    Label16: TLabel;
    Total_Notas_Credito: TDBEdit;
    Label17: TLabel;
    Total_Notas_Debito: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    Ditribucion_Total_Efectivo: TDBEdit;
    Label20: TLabel;
    Ditribucion_Total_NoEfectivo: TDBEdit;
    Shape3: TShape;
    Shape4: TShape;
    Label21: TLabel;
    Total_Compras: TDBEdit;
    Total_NoEfectivo: TDBEdit;
    Total_Efectivo: TDBEdit;
    Label2: TLabel;
    Label6: TLabel;
    Label22: TLabel;
    Total_Distribucion: TDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    Total_Cuadre: TDBEdit;
    Shape5: TShape;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Tipo_Diferencia: TDBText;
    Opciones_Miscelaneas: TsuiPopupMenu;
    Menu_Configuracion: TMenuItem;
    N6: TMenuItem;
    Menu_Finalizar: TMenuItem;
    Menu_Cancelar: TMenuItem;
    Imprimir: TAction;
    procedure FormCreate(Sender: TObject);
    procedure DetallesCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure DetallesEnter(Sender: TObject);
    procedure DetallesDblClick(Sender: TObject);
    procedure Nombre_UsuarioExit(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DetallesExit(Sender: TObject);
    procedure SiguienteExecute(Sender: TObject);
    procedure AnteriorExecute(Sender: TObject);
    procedure FinalizarExecute(Sender: TObject);
    procedure Configuracion_CuadreExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Function ImprimirRecibo(Const OutDevice : String) : Boolean;
  end;

var
  FCuadre_Caja: TFCuadre_Caja;
  TotalImpuesto : Currency = 0;

implementation

uses DataModulo, Utilidades, dotmatrx, User_Login, Apertura_Caja, 
  Generales, Autorizar, CnfgForms, Reports_Forms;

{$R *.dfm}

procedure TFCuadre_Caja.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Configuracion de la Pantalla}
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
      _CanCancel := True;

      tp_Cuadre.ActivePageIndex := 0;
      tp_Distribucion_Efectivo.TabVisible := True;
      tp_Resumen_Cuadre.TabVisible := False;

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);

      Modulo.tCuadre_Caja.Open;
      Modulo.tCuadre_Caja.Append;
      Modulo.tCuadre_CajaProceso.Value := Gen_ProcessNumber(_GrantedUser);
      Modulo.tCuadre_Caja.Params.ParamByName('Proceso').AsString := Modulo.tCuadre_CajaProceso.Value;
      Modulo.tCuadre_CajaFecha.Value :=  Modulo.Enlace.AppServer.ServerDate;
      Modulo.tCuadre_CajaHora.Value :=  Modulo.Enlace.AppServer.ServerTime;
      Modulo.tCuadre_CajaUsuario.Value :=  _CurrentUser;
      Modulo.tCuadre_CajaSupervisor.Value :=  _GrantedUser;
      Modulo.tCuadre_CajaID.Value :=  _CurrentTerminal;
      Modulo.tCuadre_CajaFecha.Value :=  Modulo.Enlace.AppServer.ServerDate;
      Try
        Modulo.tDetalle_Cuadre.BeforePost := Nil;
        Modulo.tFormas_Pago.Open;
        Modulo.tFormas_Pago.IndexFieldNames := 'Numero';
        Modulo.tFormas_Pago.First;
        While Not Modulo.tFormas_Pago.Eof Do
          Begin
            Case Modulo.tFormas_PagoEs_Efectivo.Value Of
               True : Begin
                        Modulo.tDenominaciones.First;
                        While Not Modulo.tDenominaciones.Eof Do
                          Begin
                            If Not Modulo.tDetalle_Cuadre.Locate(Modulo.tDetalle_CuadreMoneda.FieldName+';'+Modulo.tDetalle_CuadreDenominacion.FieldName,
                                                                 VarArrayOf([Modulo.tDenominacionesDescripcion.Value,Modulo.tDenominacionesDenominacion.Value]),
                                                                 []) Then
                              Modulo.tDetalle_Cuadre.Append
                            Else
                              Modulo.tDetalle_Cuadre.Edit;

                            Modulo.tDetalle_CuadreEfectivo.Value := True;
                            Modulo.tDetalle_CuadreMoneda.Value := Modulo.tDenominacionesDescripcion.Value;
                            Modulo.tDetalle_CuadreDenominacion.Value := Modulo.tDenominacionesDenominacion.Value;
                            Modulo.tDetalle_CuadreTipo.Value := 'D';
                            Modulo.tDetalle_Cuadre.Post;
                            Modulo.tDenominaciones.Next;
                          End; {While}
                      End; {True}

               False : Begin
                         If Not Modulo.tDetalle_Cuadre.Locate(Modulo.tDetalle_CuadreMoneda.FieldName,
                                                              Modulo.tFormas_PagoDescripcion.Value,
                                                              []) Then
                           Modulo.tDetalle_Cuadre.Append
                         Else
                           Modulo.tDetalle_Cuadre.Edit;

                         Modulo.tDetalle_CuadreMoneda.Value := Modulo.tFormas_PagoDescripcion.Value;
                         Modulo.tDetalle_CuadreTipo.Value := 'N';
                         Modulo.tDetalle_CuadreEfectivo.Value := False;
                         Modulo.tDetalle_CuadreDenominacion.Value := 1;
                         Modulo.tDetalle_Cuadre.Post;
                       End; {False}
            End; {Case}
            Modulo.tFormas_Pago.Next;
          End;{While}
      Finally
        Modulo.tDetalle_Cuadre.First;

        Modulo.tFormas_Pago.Close;

        Modulo.SetCashParams(_CurrentUser,_CurrentTerminal,'-*-',True);

        Modulo.tApertura_Caja.Open;

        If Modulo.tApertura_Caja.RecordCount > 0 Then Modulo.tCuadre_CajaFondo_Caja.Value := Modulo.tApertura_CajaMonto.Value;
      End {Try}

    End; {If _Load_Create}
end;

procedure TFCuadre_Caja.DetallesCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  If (Field = Modulo.tDetalle_Pago_FacturaValor_Devolver) Then
    Begin
      AFont.Style := [fsBold];
      ABrush.Color := Self.Color;
    End
end;

procedure TFCuadre_Caja.DetallesEnter(Sender: TObject);
begin
  KeyPreview := False;
  Detalles.SelectedField := Modulo.tDetalle_CuadreCantidad
end;

procedure TFCuadre_Caja.SiguienteExecute(Sender: TObject);
  Var
    Recibido,
    Devuelto,
    Pagado,
    Cobros,
    Notas_Debito,
    Notas_Credito,
    Compras,
    Gastos,
    DeCredito ,
    DeContado : Currency;
begin
  Try
    tp_Cuadre.ActivePageIndex := 1;
    tp_Distribucion_Efectivo.TabVisible := False;
    tp_Resumen_Cuadre.TabVisible := True;

    bt_Finalizar.Visible := True;
    bt_Siguiente.Visible := False;
    bt_Anterior.Visible := True;

    {Cargar Monto Vendido Contado}
    Modulo.tReporter.Close;

    Modulo.tReporter.CommandText := 'Select Sum("TotalNeto")Total_Vendido,Sum("Total_Efectivo_Recibido")Recibido, Sum("Inicial")Total_Pagado, Sum("Total_Efectivo_Devuelto")Devuelto '+
                                    'FROM "Facturas" WHERE ("Apertura" = :Apertura) And '+
                                    '("Condicion" = :Condicion) And ' +
                                    '("Status" <> :Status)';
    Modulo.tReporter.Params.ParamByName('Apertura').AsString := _CurrentApertura;
    Modulo.tReporter.Params.ParamByName('Condicion').AsString := 'Contado';
    Modulo.tReporter.Params.ParamByName('Status').AsString := _stANULADO;

    Modulo.tReporter.Open;
    DeContado := Modulo.tReporter.FieldByName('Total_Vendido').AsCurrency;
    Recibido := Modulo.tReporter.FieldByName('Recibido').AsCurrency;
    Devuelto := Modulo.tReporter.FieldByName('Devuelto').AsCurrency;
    Pagado :=  Modulo.tReporter.FieldByName('Total_Pagado').AsCurrency;

    {Cargar Monto Vendido Credito}
    Modulo.tReporter.Close;
    Modulo.tReporter.CommandText := 'Select Sum("TotalNeto")Total_Vendido,Sum("Total_Efectivo_Recibido")Recibido, Sum("Inicial")Total_Pagado, Sum("Total_Efectivo_Devuelto")Devuelto FROM "Facturas" WHERE ("Apertura" = :Apertura) And ("Condicion" <> :Condicion)';
    Modulo.tReporter.Params.ParamByName('Apertura').AsString := _CurrentApertura;
    Modulo.tReporter.Params.ParamByName('Condicion').AsString := 'Contado';
    Modulo.tReporter.Open;
    DeCredito := Modulo.tReporter.FieldByName('Total_Vendido').AsCurrency;
    Recibido := Recibido + Modulo.tReporter.FieldByName('Recibido').AsCurrency;
    Devuelto := Devuelto + Modulo.tReporter.FieldByName('Devuelto').AsCurrency;
    Pagado :=  Pagado + Modulo.tReporter.FieldByName('Total_Pagado').AsCurrency;

    {Cargar Monto Cobros}
    Modulo.tReporter.Close;
    Modulo.tReporter.CommandText := 'Select Sum("Total_Pagado")Total_Cobrado FROM "Pagos_Clientes" WHERE ("Apertura" = :Apertura)';
    Modulo.tReporter.Params.ParamByName('Apertura').AsString := _CurrentApertura;
    Modulo.tReporter.Open;
    Cobros := Modulo.tReporter.FieldByName('Total_Cobrado').AsCurrency;

    {Cargar Monto Registro de Gastos}
    Modulo.tReporter.Close;
    Modulo.tReporter.CommandText := 'Select Sum("TotalNeto")Total_Gastado FROM "Registro_Gastos" WHERE ("Apertura" = :Apertura)';
    Modulo.tReporter.Params.ParamByName('Apertura').AsString := _CurrentApertura;
    Modulo.tReporter.Open;
    Gastos := Modulo.tReporter.FieldByName('Total_Gastado').AsCurrency;

    {Cargar Monto Notas Debito}
    Modulo.tReporter.Close;
    Modulo.tReporter.CommandText := 'Select Sum("Total")Total_Nota FROM "Notas_Credito" WHERE ("Apertura" = :Apertura)';
    Modulo.tReporter.Params.ParamByName('Apertura').AsString := _CurrentApertura;
    Modulo.tReporter.Open;
    Notas_Credito := Modulo.tReporter.FieldByName('Total_Nota').AsCurrency;

    {Cargar Monto Notas Debito}
    Modulo.tReporter.Close;
    Modulo.tReporter.CommandText := 'Select Sum("TotalNeto")Total_Nota FROM "Notas_Debito" WHERE ("Apertura" = :Apertura)';
    Modulo.tReporter.Params.ParamByName('Apertura').AsString := _CurrentApertura;
    Modulo.tReporter.Open;
    Notas_Debito := Modulo.tReporter.FieldByName('Total_Nota').AsCurrency;

    {Cargar Monto Compras}
    Modulo.tReporter.Close;
    Modulo.tReporter.CommandText := 'Select Sum("TotalNeto")Total_Compras FROM "Compra_Productos" WHERE ("Apertura" = :Apertura)';
    Modulo.tReporter.Params.ParamByName('Apertura').AsString := _CurrentApertura;
    Modulo.tReporter.Open;
    Compras := Modulo.tReporter.FieldByName('Total_Compras').AsCurrency;

    If Not(Modulo.tCuadre_Caja.State In DsEditModes) Then Modulo.tCuadre_Caja.Edit;

    Modulo.tCuadre_CajaTotal_Vendido_Contado.Value := DeContado;
    Modulo.tCuadre_CajaTotal_Vendido_Credito.Value := DeCredito;
    Modulo.tCuadre_CajaTotal_Vendido.Value := DeCredito + DeContado;
    Modulo.tCuadre_CajaRecibido_Efectivo.Value := Recibido;
    Modulo.tCuadre_CajaRecibido_No_Efectivo.Value := Pagado - Recibido;
    Modulo.tCuadre_CajaTotal_Recibido.Value := Pagado;
    Modulo.tCuadre_CajaTotal_Cobros.Value := Cobros;
    Modulo.tCuadre_CajaTotal_Retiros.Value := Gastos;
    Modulo.tCuadre_CajaTotal_Compras.Value := Compras;
    Modulo.tCuadre_CajaTotal_Notas_Debito.Value := Notas_Debito;
    Modulo.tCuadre_CajaTotal_Notas_Credito.Value := Notas_Credito;
  Finally
    Modulo.tReporter.Close;
  End;
end;

procedure TFCuadre_Caja.DetallesDblClick(Sender: TObject);
begin
  Modulo.tDetalle_Pago_FacturaBeforePost(Modulo.tDetalle_Pago_Factura)
end;

procedure TFCuadre_Caja.Nombre_UsuarioExit(Sender: TObject);
begin
  ModuloGenerales.tUsuarios.Params.ParamByName('UserName').AsString := _CurrentUser;
  ModuloGenerales.tUsuarios.Open;
  ModuloGenerales.tUsuarios.Refresh
end;


procedure TFCuadre_Caja.ImprimirExecute(Sender: TObject);
 Var
    DoPreview    : Boolean;
    OutputFormat : ShortInt;
    PrintFormat  : ShortInt;

begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_Cuadre_CajaKey,False);

  DoPreview := True;
  OutputFormat := RegInfo.ReadInteger(_OutputFormat);
  PrintFormat := RegInfo.ReadInteger(_PrinterStyle);

  Case OutputFormat Of
    _Ticket : Begin
                If DoPreview Then
                  Begin
                    Application.CreateForm(TPreviewForm,PreviewForm);
                    ImprimirRecibo(_Screen);
                    PreviewForm.Vista.Lines.LoadFromFile(_PreviewFile);
                    PreviewForm.ShowModal;
                    If PreviewForm.ModalResult = MrOk Then DoPreview := False;
                    PreviewForm.Free
                  End; {If DoPreview}

                  If Not (DoPreview) Then ImprimirRecibo(_Port);
              End; // _Ticket

    _GraphicForm : Begin
                     RegInfo.CloseKey;
                     RegInfo.OpenKey(_Cuadre_CajaKey,False);
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

                         ReportsAndForms._Seccion  := _Cuadre_CajaKey;

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
//                         Print
                       End // With
                   End // _GraphicForm
  End; // Case
end;

Function TFCuadre_Caja.ImprimirRecibo(Const OutDevice : String) : Boolean;
  Var
    Duplex              : Boolean;
    Factor              : Byte;
    LineasDespues       ,
    CntSerial           ,
    I                   : Integer;
    Salida              ,
    Impresora           ,
    Coment_Enc          ,
    Coment_Pie1         ,
    Coment_Pie2         ,
    Coment_Pie3         ,
    Coment_Pie4         ,
    RNC                 ,
    Format_Num_Tel_Hora ,
    Format_Fecha        ,
    Separador           ,
    Gap                 ,
    A,C                 ,
    NumSize             : String;
  Begin
    {Leer el Tipo de Impresora a Utilizar}
    RegInfo.CloseKey;
    RegInfo.OpenKey(_Cuadre_CajaKey,False);

    Impresora           := RegInfo.ReadString(_Printer);
    AnchoLinea          := RegInfo.ReadInteger(_LineWidth);
    Coment_Enc          := RegInfo.ReadString(_Enc_Coment);
    Coment_Pie1         := RegInfo.ReadString(_Foot_Coment1);
    Coment_Pie2         := RegInfo.ReadString(_Foot_Coment2);
    Coment_Pie3         := RegInfo.ReadString(_Foot_Coment3);
    Separador           := RegInfo.ReadString(_LineSeparator);
    Format_Num_Tel_Hora := RegInfo.ReadString(_Format_NPH);
    Format_Fecha        := RegInfo.ReadString(_DateFormat);
    NumSize             := RegInfo.ReadString(_Num_Size);
    LineasDespues       := RegInfo.ReadInteger(_LinesAfter);
    Salida              := RegInfo.ReadString(_Salida);
    Duplex              := RegInfo.ReadBool(_Duplex);

    RegInfo.CloseKey;
    RegInfo.OpenKey(_GeneralConfigKey,False);
    Format_Fecha := RegInfo.ReadString(Trim(Format_Fecha));

    SetPrinterCodes(Impresora);

    Factor := 1;
    If OutDevice = _Port Then Factor := 2;

    BeginPrn(OutDevice,Salida);

    {Encabezado}
        If OutDevice = _Port Then
          Begin
            Prn(_Init);
            Prn(_BigFont);
            Prn(_WBigFont);
          End;

        RegInfo.CloseKey;
        RegInfo.OpenKey(_CompanyInfoKey,False);
        RNC := UnEncrypt(RegInfo.ReadString(_UserCompRNC));

        // Nombre
        If Duplex Then
          Prn(CBrush(UnEncrypt(RegInfo.ReadString(_UserCompName)),AnchoLinea Div Factor));

        PrnLn(CBrush(UnEncrypt(RegInfo.ReadString(_UserCompName)),AnchoLinea Div Factor));

        If OutDevice = _Port Then Prn(_NoBigFont);

        // Nombre 2
        If Trim(UnEncrypt(RegInfo.ReadString(_UserCompName2))) <> '' Then
          Begin
            If Duplex Then
              Prn(CBrush(UnEncrypt(RegInfo.ReadString(_UserCompName2)),AnchoLinea Div Factor));

            PrnLn(CBrush(UnEncrypt(RegInfo.ReadString(_UserCompName2)),AnchoLinea Div Factor));
          End;

        // Comentario / Slogan
        If Trim(Coment_Enc) <> '' Then
          Begin
            If Duplex Then
              Prn(CBrush(Coment_Enc,AnchoLinea));
              PrnLn(CBrush(Coment_Enc,AnchoLinea))
            End;

        // Direccion
        If Duplex Then
          Prn(CBrush(UnEncrypt(RegInfo.ReadString(_UserCompAddres)),AnchoLinea));
        PrnLn(CBrush(UnEncrypt(RegInfo.ReadString(_UserCompAddres)),AnchoLinea));

        // RNC
        If Trim(RNC) <> '' Then
          Begin
            If Duplex Then
              Prn(CBrush(RNC,AnchoLinea));
            PrnLn(CBrush(RNC,AnchoLinea))
          End;

      If Duplex Then
        Prn(LBrush(LBrush(UnEncrypt(RegInfo.ReadString(_UserCompPhone1)),19) +
                   RBrush(UnEncrypt(RegInfo.ReadString(_UserCompPhone2)),19),AnchoLinea));

      PrnLn(LBrush(LBrush(UnEncrypt(RegInfo.ReadString(_UserCompPhone1)),19) +
                   RBrush(UnEncrypt(RegInfo.ReadString(_UserCompPhone2)),19),AnchoLinea));
        // NCF
        If Trim(Modulo.tCuadre_CajaTipo_Diferencia.Value) <> '' Then
          Begin
            If Duplex Then
              Prn(CBrush(Modulo.tCuadre_CajaTipo_Diferencia.Value,AnchoLinea));
            PrnLn(CBrush(Modulo.tCuadre_CajaTipo_Diferencia.Value,AnchoLinea));
          End;

      // # Recibo , Telefono y Hora de Venta
      If Duplex Then
        Prn(LBrush(LBrush(FormatDateTime('dd/mm/yyyy',Modulo.tCuadre_CajaFecha.Value),19) +
                   RBrush(FormatDateTime('hh:mm am/pm',Modulo.tCuadre_CajaHora.Value),19),AnchoLinea));

      PrnLn(LBrush(FormatDateTime('dd/mm/yyyy',Modulo.tCuadre_CajaFecha.Value),19) +
            RBrush(FormatDateTime('hh:mm am/pm',Modulo.tCuadre_CajaHora.Value),19));

      {Tipo de Recibo}
      If OutDevice = _Port Then Prn(_BigFont);

      If Duplex Then
        Prn(CBrush(UPPERCASE(Format('CUADRE %s',[Modulo.tCuadre_CajaNumero_Cuadre.Text])),(AnchoLinea Div Factor)));

      PrnLn(CBrush(UPPERCASE(Format('CUADRE %s',[Modulo.tCuadre_CajaNumero_Cuadre.Text])),(AnchoLinea Div Factor)));

    If OutDevice = _Port Then Prn(_NoBigFont);

    PrnLn(#32);

    If OutDevice = _Port Then
      Begin
        Prn(_NoBigFont);
        Prn(_Draft)
      End;

    {Cuerpo Cuadre_Caja}
    PrnLn(LBrush('Usuario    : '+Trim(Modulo.tCuadre_CajaUsuario.Value),AnchoLinea));
    PrnLn(LBrush('Supervisor : '+Trim(Modulo.tCuadre_CajaSupervisor.Value),AnchoLinea));
    PrnLn(Fill('-',AnchoLinea));
    PrnLn(CBrush('Moneda' ,16)+'|'+
          CBrush('Den.'   ,07)+'|'+
          CBrush('Cant.'  ,05)+'|'+
          CBrush('Total'  ,09)
          );
    PrnLn(Fill('-',AnchoLinea));
    PrnLn(#32);

    Modulo.tDetalle_Cuadre.First;
    While Not Modulo.tDetalle_Cuadre.EOF Do
       Begin
         PrnLn(LBrush(Modulo.tDetalle_CuadreMoneda.Value,16) +'|'+
               RBrush(Format('%*.*f',[8,0,Modulo.tDetalle_CuadreDenominacion.Value]), 07)+'|'+
               RBrush(Format('%u',[Modulo.tDetalle_CuadreCantidad.Value])           , 05)+'|'+
               RBrush(Format('%m',[Modulo.tDetalle_CuadreTotal.Value])              , 09)
               );
         Modulo.tDetalle_Cuadre.Next;
       End; {While}

    {Sumario / Totales de la Cuadre_Caja}
    PrnLn(RBrush(Fill('-',AnchoLinea),AnchoLinea));
    PrnLn(#32);

    PrnLn(RBrush('Fondo C/Chica :',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCuadre_CajaFondo_Caja.Value]),12));
    PrnLn(CBrush('V E N T A S',AnchoLinea));
    PrnLn(RBrush('Ventas Contado:',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCuadre_CajaTotal_Vendido_Contado.Value]),12));
    PrnLn(RBrush('Ventas Credito:',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCuadre_CajaTotal_Vendido_Credito.Value]),12));
    PrnLn(CBrush(Fill('-',AnchoLinea-4),AnchoLinea));
    PrnLn(RBrush('Total Ventas  :',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCuadre_CajaTotal_Vendido.Value]),12));
    PrnLn(RBrush('Ef. Recibido  :',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCuadre_CajaTotal_Recibido.Value]),12));
    PrnLn(RBrush('Total Cobros  :',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCuadre_CajaTotal_Cobros.Value]),12));
    PrnLn(RBrush('Total Gastos  :',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCuadre_CajaTotal_Retiros.Value]),12));
    PrnLn(#32);

    PrnLn(CBrush('R E S U M E N',AnchoLinea));
    PrnLn(RBrush('C U A D R E   :',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCuadre_CajaTotal_Cuadre.Value]),12));
    PrnLn(CBrush(Fill('-',AnchoLinea-4),AnchoLinea));
    PrnLn(RBrush('Dt Efectivo   :',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCuadre_CajaTotal_Efectivo.Value]),12));
    PrnLn(RBrush('Dt No Efectivo:',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCuadre_CajaTotal_NoEfectivo.Value]),12));
    PrnLn(CBrush(Fill('-',AnchoLinea-4),AnchoLinea));
    PrnLn(RBrush('T.Distribucion:',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCuadre_CajaTotal_Distribucion.Value]),12));
    PrnLn(RBrush('DIFERENCIA    :',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCuadre_CajaDiferencia.Value]),12));
        If OutDevice = _Port Then
          Begin
            Prn(_Init);
            Prn(_BigFont);
            Prn(_WBigFont);
          End;
    PrnLn(CBrush(Modulo.tCuadre_CajaTipo_Diferencia.Value,AnchoLinea));
    PrnLn(#32);
    If OutDevice = _Port Then
      Begin
        Prn(_NoBigFont);
        Prn(_Draft)
      End;

    PrnLn(CBrush('OTRAS OPERACIONES',AnchoLinea));
    PrnLn(RBrush('Notas Credito :',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCuadre_CajaTotal_Notas_Credito.Value]),12));
    PrnLn(RBrush('Notas Debito  :',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCuadre_CajaTotal_Notas_Debito.Value]),12));
    PrnLn(RBrush('Compras       :',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCuadre_CajaTotal_Compras.Value]),12));
    PrnLn(Fill('-',AnchoLinea));

    If OutDevice = _Port Then
      Begin
        Prn(_NoBigFont);
        Prn(_Draft)
      End;
    PrnLn(#32);
    PrnLn(#32);
    PrnLn(CBrush(Fill('_',20)+Fill(' ',2)+Fill('_',20),AnchoLinea));
    PrnLn(CBrush('Entregado Por',20) +
            Fill(' ',2)+
          CBrush('Recibido Por',20));

    PrnLn(#32);
    PrnLn(#32);
    PrnLn(CBrush(Fill('_',20),AnchoLinea));
    PrnLn(CBrush('Revisado Por',AnchoLinea));

    PrnLn(#32);
    If Trim(Coment_Pie1) <> '' Then PrnLn(CBrush(Coment_Pie1,AnchoLinea));
    If Trim(Coment_Pie2) <> '' Then PrnLn(CBrush(Coment_Pie2,AnchoLinea));
    If Trim(Coment_Pie3) <> '' Then PrnLn(CBrush(Coment_Pie3,AnchoLinea));
    If Trim(Coment_Pie4) <> '' Then PrnLn(CBrush(Coment_Pie4,AnchoLinea));
    PrnLn(CBrush('Preparado Por : ' + Modulo.tCuadre_CajaSupervisor.Value,AnchoLinea));

    For I := 1 To LineasDespues Do
      PrnLn(#32);
    PrnLn(_PartialCut);
    EndPrn;
    Result := True
  End;

procedure TFCuadre_Caja.AnteriorExecute(Sender: TObject);
begin
  tp_Cuadre.ActivePageIndex := 0;
  tp_Distribucion_Efectivo.TabVisible := True;
  tp_Resumen_Cuadre.TabVisible := False;

  bt_Finalizar.Visible := False;
  bt_Siguiente.Visible := True;
  bt_Anterior.Visible := False;
end;

procedure TFCuadre_Caja.CancelarExecute(Sender: TObject);
begin
  Modulo.tCuadre_Caja.Cancel;
  Modulo.tCuadre_Caja.CancelUpdates;
  Close
end;

procedure TFCuadre_Caja.Configuracion_CuadreExecute(Sender: TObject);
begin
  Application.CreateForm(TFConfigForms,FConfigForms);
  FConfigForms._Seccion := _Cuadre_CajaKey;
  FConfigForms.Caption := Configuracion_Cuadre.Caption;
  If Trim(FConfigForms._Seccion) <> '' Then
    Try
      FConfigForms.LoadValues
    Finally
      FConfigForms.ShowModal;
      FConfigForms.Free
    End; // Try
end;

procedure TFCuadre_Caja.FinalizarExecute(Sender: TObject);
  Var
    DoPreview    : Boolean;
    OutputFormat : ShortInt;
    PrintFormat  : ShortInt;
begin
  If (Modulo.tCuadre_CajaDiferencia.Value > _Margen) Or
     (Modulo.tCuadre_CajaDiferencia.Value < -_Margen) Then
  If Ask('Existe una diferencia en este Cuadre'#13'Está Seguro que desea Continuar?','Proceso de Cuadre') = mrNo Then Exit;

  If Modulo.tCuadre_Caja.State In DsEditModes Then Modulo.tCuadre_Caja.Post;
  If Modulo.tCuadre_Caja.ChangeCount > 0 Then Modulo.tCuadre_Caja.ApplyUpdates(0);
  Modulo.tCuadre_Caja.Refresh;

  If Not (Modulo.tApertura_Caja.State In DsEditModes) Then Modulo.tApertura_Caja.Edit;
  Modulo.tApertura_CajaAbierto.Value := False;
  Modulo.tApertura_CajaUsuario_Cuadre.Value := _GrantedUser;
  Modulo.tApertura_CajaProceso_Cierre.Value := Modulo.tCuadre_CajaProceso.Value;
  Modulo.tApertura_Caja.Post;
  Modulo.tApertura_Caja.ApplyUpdates(0);
  Modulo.tApertura_Caja.Refresh;


    {Status Ventas}
    Modulo.tReporter.Close;
    Modulo.tReporter.CommandText := 'UPDATE "Facturas" SET "Status" = :Status WHERE ("Apertura" = :Apertura) AND "Status" <> :StAnulado';
    Modulo.tReporter.Params.ParamByName('Apertura').AsString := _CurrentApertura;
    Modulo.tReporter.Params.ParamByName('Status').AsString := _stCERRADO;
    Modulo.tReporter.Params.ParamByName('StAnulado').AsString := _stANULADO;
    Modulo.tReporter.Execute;

    {Status Cobros}
    Modulo.tReporter.Close;
    Modulo.tReporter.CommandText := 'UPDATE "Pagos_Clientes" SET "Status" = :Status WHERE ("Apertura" = :Apertura) AND "Status" <> :StAnulado';
    Modulo.tReporter.Params.ParamByName('Apertura').AsString := _CurrentApertura;
    Modulo.tReporter.Params.ParamByName('Status').AsString := _stCERRADO;
    Modulo.tReporter.Params.ParamByName('StAnulado').AsString := _stANULADO;
    Modulo.tReporter.Execute;

    {Status Registro de Gastos}
    Modulo.tReporter.Close;
    Modulo.tReporter.CommandText := 'UPDATE "Registro_Gastos" SET "Status" = :Status WHERE ("Apertura" = :Apertura) AND "Status" <> :StAnulado';
    Modulo.tReporter.Params.ParamByName('Apertura').AsString := _CurrentApertura;
    Modulo.tReporter.Params.ParamByName('Status').AsString := _stCERRADO;
    Modulo.tReporter.Params.ParamByName('StAnulado').AsString := _stANULADO;
    Modulo.tReporter.Execute;

    {Status Notas Credito}
    Modulo.tReporter.Close;
    Modulo.tReporter.CommandText := 'UPDATE "Notas_Credito" SET "Status" = :Status WHERE ("Apertura" = :Apertura) AND "Status" <> :StAnulado';
    Modulo.tReporter.Params.ParamByName('Apertura').AsString := _CurrentApertura;
    Modulo.tReporter.Params.ParamByName('Status').AsString := _stCERRADO;
    Modulo.tReporter.Params.ParamByName('StAnulado').AsString := _stANULADO;
    Modulo.tReporter.Execute;

    {Cargar Monto Notas Debito}
    Modulo.tReporter.Close;
    Modulo.tReporter.CommandText := 'UPDATE "Notas_Debito" SET "Status" = :Status WHERE ("Apertura" = :Apertura) AND "Status" <> :StAnulado';
    Modulo.tReporter.Params.ParamByName('Apertura').AsString := _CurrentApertura;
    Modulo.tReporter.Params.ParamByName('Status').AsString := _stCERRADO;
    Modulo.tReporter.Params.ParamByName('StAnulado').AsString := _stANULADO;
    Modulo.tReporter.Execute;

    {Cargar Monto Compras}
    Modulo.tReporter.Close;
    Modulo.tReporter.CommandText := 'UPDATE "Compra_Productos" SET "Status" = :Status WHERE ("Apertura" = :Apertura) AND "Status" <> :StAnulado';
    Modulo.tReporter.Params.ParamByName('Apertura').AsString := _CurrentApertura;
    Modulo.tReporter.Params.ParamByName('Status').AsString := _stCERRADO;
    Modulo.tReporter.Params.ParamByName('StAnulado').AsString := _stANULADO;
    Modulo.tReporter.Execute;


  _CurrentApertura := '_NO_';
  Modulo.tReporter.Close;

  RegInfo.CloseKey;
  RegInfo.OpenKey(_Cuadre_CajaKey,False);

  DoPreview := RegInfo.ReadBool(_PreviewForm);
  OutputFormat := RegInfo.ReadInteger(_OutputFormat);
  PrintFormat := RegInfo.ReadInteger(_PrinterStyle);

  Case OutputFormat Of
    _Ticket : Begin
                If DoPreview Then
                  Begin
                    Application.CreateForm(TPreviewForm,PreviewForm);
                    ImprimirRecibo(_Screen);
                    PreviewForm.Vista.Lines.LoadFromFile(_PreviewFile);
                    PreviewForm.ShowModal;
                    If PreviewForm.ModalResult = MrOk Then DoPreview := False;
                    PreviewForm.Free
                  End; {If DoPreview}

                  If Not (DoPreview) Then ImprimirRecibo(_Port);
              End; // _Ticket

    _GraphicForm : Begin
                     RegInfo.CloseKey;
                     RegInfo.OpenKey(_Cuadre_CajaKey,False);
                     With ReportsAndForms.FormCuadre_Caja Do
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

                         ReportsAndForms._Seccion  := _Cuadre_CajaKey;

                         Print
                       End // With
                   End // _GraphicForm
  End; // Case

  Modulo.tApertura_Caja.Close;
  Modulo.tCuadre_Caja.Close;

  Close;
end;

procedure TFCuadre_Caja.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Modulo.tApertura_Caja.Close;
  Modulo.tFormas_Pago.Close;
  Modulo.tCuadre_Caja.Close;
  ModuloGenerales.tUsuarios.Close
end;

procedure TFCuadre_Caja.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  Found : TWinControl;
begin
  Case Key Of

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

procedure TFCuadre_Caja.DetallesExit(Sender: TObject);
begin
  KeyPreview := True;
end;

Initialization
  RegisterClass(TFCuadre_Caja);

end.
