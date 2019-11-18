unit PagosFacturas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, Mask, DBCtrls,
  ActnList, XPStyleActnCtrls, ActnMan, Db, Menus, ToolWin, ActnCtrls, RegKeys,
  AdvGlowButton, TaskDialog;

type
  TFPago_Factura = class(TForm)
    Detalles: TwwDBGrid;
    Label85: TLabel;
    Total_Neto: TDBEdit;
    Label84: TLabel;
    Total_Pagado: TDBEdit;
    Pendiente_Cobrar: TDBEdit;
    Label86: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Tasa: TDBEdit;
    Monto_Moneda_Local: TDBEdit;
    Opciones: TActionManager;
    Procesar_Pago: TAction;
    Label3: TLabel;
    Cancelar: TAction;
    gbt_Aceptar: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    Aplicar_Nota_Credito: TAction;
    AdvGlowButton2: TAdvGlowButton;
    Label_Inicial: TLabel;
    Inicial: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetallesExit(Sender: TObject);
    procedure DetallesFieldChanged(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure DetallesCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure DetallesEnter(Sender: TObject);
    procedure Procesar_PagoExecute(Sender: TObject);
    procedure DetallesDblClick(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure Aplicar_Nota_CreditoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPago_Factura: TFPago_Factura;
  TotalImpuesto : Currency = 0;

implementation

uses DataModulo, Utilidades, Generales;

{$R *.dfm}


procedure TFPago_Factura.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Detalles.OnFieldChanged := Nil
end;

procedure TFPago_Factura.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Configuracion de la Pantalla}
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
      _CanCancel := True;
      Inicial.ReadOnly := False;
      Inicial.Visible := (Trim(Modulo.tFacturasCondicion.Value) <> _CondicionContado);
      Label_Inicial.Visible := Inicial.Visible;

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);

      Try
        Modulo.tDetalle_Pago_Factura.Open;
        Modulo.tFormas_Pago.Filter := 'Numero >= 0';
        Modulo.tFormas_Pago.Filtered := True;
        Modulo.tFormas_Pago.Open;
        Modulo.tFormas_Pago.First;
        Modulo.tDetalle_Pago_Factura.BeforePost := Nil;
        While Not Modulo.tFormas_Pago.Eof Do
          Begin

            If Not Modulo.tDetalle_Pago_Factura.Locate(Modulo.tDetalle_Pago_FacturaForma_Pago.FieldName,
                                                       Modulo.tFormas_PagoNumero.Value,[]) Then
              Modulo.tDetalle_Pago_Factura.Append
            Else
              Modulo.tDetalle_Pago_Factura.Edit;

            Modulo.tDetalle_Pago_FacturaForma_Pago.Value := Modulo.tFormas_PagoNumero.Value;
            Modulo.tDetalle_Pago_FacturaTasa.Value := Modulo.tFormas_PagoTasa.Value;
            Modulo.tDetalle_Pago_FacturaEs_Efectivo.Value := Modulo.tFormas_PagoEs_Efectivo.Value;
            Modulo.tDetalle_Pago_FacturaRequiere_Documento.Value := Modulo.tFormas_PagoRequiere_Documento.Value;
            Modulo.tDetalle_Pago_FacturaRequiere_Vencimiento.Value := Modulo.tFormas_PagoRequiere_Vencimiento.Value;
            Modulo.tDetalle_Pago_FacturaRequiere_Aprobacion.Value := Modulo.tFormas_PagoRequiere_Aprobacion.Value;
            Modulo.tDetalle_Pago_FacturaFecha.Value := Modulo.tFacturasFecha.Value;
            Modulo.tDetalle_Pago_FacturaHora.Value := Modulo.tFacturasHora.Value;

            If ((Trim(Modulo.tFacturasCondicion.Value) = 'Cr�dito') And
               (Modulo.tDetalle_Pago_FacturaForma_Pago.Value = Modulo.tParametrosTermino_COD.Value) And
               Modulo.tFacturasLayAway.Value) Then
              Modulo.tDetalle_Pago_FacturaValor_Recibido.Value := Modulo.tFacturasMonto_Minimo_Recibido.Value;

            If (((Trim(Modulo.tFacturasCondicion.Value) = 'Contado') Or
                (Modulo.tFacturasTerminos.Value = Modulo.tParametrosTermino_COD.Value)) And
                ((Modulo.tDetalle_Pago_FacturaForma_Pago.Value = Modulo.tParametrosTermino_COD.Value)) And
                (Modulo.tFacturasPendiente.Value > _Margen)) Then
               Modulo.tDetalle_Pago_FacturaValor_Recibido.Value := Modulo.tDetalle_Pago_FacturaValor_Recibido.Value + Modulo.tFacturasPendiente.Value;
            Modulo.tDetalle_Pago_Factura.Post;
            Modulo.tFormas_Pago.Next
          End
      Finally
        Modulo.tFormas_Pago.Filtered := False;
        Modulo.tDetalle_Pago_Factura.BeforePost := Modulo.tDetalle_Pago_FacturaBeforePost;
        If Not (Modulo.tDetalle_Pago_Factura.Locate(Modulo.tDetalle_Pago_FacturaForma_Pago.FieldName,Modulo.tParametrosTermino_COD.Value,[])) Then
          Modulo.tDetalle_Pago_Factura.First
      End {Try}

    End
    {If _Load_Create}
end;

procedure TFPago_Factura.DetallesCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  If (Field = Modulo.tDetalle_Pago_FacturaValor_Devolver) Then
    Begin
      AFont.Style := [fsBold];
      ABrush.Color := Self.Color;
    End
end;

procedure TFPago_Factura.DetallesEnter(Sender: TObject);
begin
  Detalles.SelectedField := Modulo.tDetalle_Pago_FacturaValor_Recibido;
  Detalles.OnFieldChanged := DetallesFieldChanged
end;

procedure TFPago_Factura.DetallesExit(Sender: TObject);
begin
  Detalles.OnFieldChanged := Nil
end;

procedure TFPago_Factura.DetallesFieldChanged(Sender: TObject; Field: TField);
begin

  If Field.FieldName = Modulo.tDetalle_Pago_FacturaValor_Recibido.FieldName Then
    Begin
      Detalles.OnFieldChanged := Nil;
      Modulo.tDetalle_Pago_Factura.Post;
      Detalles.OnFieldChanged := DetallesFieldChanged
    end
end;

procedure TFPago_Factura.Procesar_PagoExecute(Sender: TObject);
  Var
    Current_Record : TBookMark;
begin
  Try
    Modulo.tDetalle_Pago_Factura.BeforePost := Nil;

    If Modulo.tDetalle_Pago_Factura.State In DsEditModes Then
      Modulo.tDetalle_Pago_Factura.Post;

    If Modulo.tFacturasPendiente.Value < 0 Then
      Raise Exception.Create(_ErrPendienteMenorCero);

    // Limpiar Devoluciones Anteriores
    Current_Record := Modulo.tDetalle_Pago_Factura.GetBookmark;
    Modulo.tDetalle_Pago_Factura.DisableControls;
    Modulo.tDetalle_Pago_Factura.First;
      While Not Modulo.tDetalle_Pago_Factura.Eof Do
        Begin
          Modulo.tDetalle_Pago_Factura.Edit;
          Modulo.tDetalle_Pago_FacturaValor_Devolver.Value := 0;
          Modulo.tDetalle_Pago_Factura.Next
        End; // While
    Modulo.tDetalle_Pago_Factura.GotoBookmark(Current_Record);
    Modulo.tDetalle_Pago_Factura.FreeBookmark(Current_Record);

    // Aplicar el Pago

    If (Trim(Modulo.tFacturasCondicion.Value) = _CondicionContado) And
      (Modulo.tFacturasPendiente.Value > _Margen) Then
      Raise Exception.Create(Format(_ErrPendienteMayorCero,[Modulo.tFacturasCondicion.Value]));

    If (Trim(Modulo.tFacturasCondicion.Value) = _CondicionCredito) Then
      Begin
        If Modulo.tFacturasLayAway.Value And (Modulo.tFacturasPagado.Value < Modulo.tFacturasMonto_Minimo_Recibido.Value) Then
          Raise Exception.Create(Format('El monto de pago minimo para una esta factura LAY-AWAY es de %m',[Modulo.tFacturasMonto_Minimo_Recibido.Value]));

        If (Modulo.tFacturasPagado.Value < Modulo.tFacturasInicial.Value) Then
          Raise Exception.Create(Format('El monto recibido no puede ser menor de %m',[Modulo.tFacturasInicial.Value]));
      End;

    If Not (Modulo.tDetalle_Pago_Factura.State In DsEditModes) Then Modulo.tDetalle_Pago_Factura.Edit;
    Modulo.tDetalle_Pago_FacturaValor_Devolver_Local.Value := Modulo.tFacturasTotal_Efectivo_Devuelto.Value;
    Modulo.tDetalle_Pago_FacturaValor_Devolver.Value := Modulo.tFacturasTotal_Efectivo_Devuelto.Value / Modulo.tDetalle_Pago_FacturaTasa.Value;
    Modulo.tDetalle_Pago_Factura.Post;

    ModalResult := MrOk
  Finally
    Modulo.tDetalle_Pago_Factura.BeforePost := Modulo.tDetalle_Pago_FacturaBeforePost;
    Modulo.tDetalle_Pago_Factura.EnableControls
  end // Try
end;

procedure TFPago_Factura.DetallesDblClick(Sender: TObject);
begin
  Modulo.tDetalle_Pago_FacturaBeforePost(Modulo.tDetalle_Pago_Factura)
end;

procedure TFPago_Factura.Aplicar_Nota_CreditoExecute(Sender: TObject);
  Var
    S : String;
    R : Integer;
    V : Currency;
begin
  S := DoSearch(Nil,
                'Creditos',                                      (* TableName *)
                'SrchPr',                                        (* Provider *)
                Modulo.tCreditosProceso.FieldName,               (* CampoClave *)
                Modulo.tCreditosNumero.FieldName,                (* CampoInicial *)
                'SELECT * FROM "Creditos" WHERE "Status" = ' +
                QuotedStr(_stACTIVO),                         (* AltQry *)
                Modulo.Enlace,                                   (* RemoteServer *)
                'A',                                             (* SortOrder *)
                -1,                                              (* Packet Records *)
                wsMaximized,
                R);

  If R = MrOk Then
    Begin
      ParamSearchKey(Modulo.tCreditos,'Proceso',S);
      If Trim(Modulo.tCreditosID.Value) <> Trim(Modulo.tFacturasCliente.Value) Then
        Begin
          Mensaje('ESTA NOTA DE CREDITO NO CORRESPONDE A ESTE CLIENTE'#13'Por Favor, Verifique',Self);
          Exit;
        End;

      If Modulo.tCreditosStatus.Value = _stANULADO Then
        Begin
          Mensaje('ESTA NOTA DE CREDITO FUE ANULADA'#13'Por Favor, Verifique',Self);
          Exit;
        End;

      If Modulo.tCreditosStatus.Value = _stPROCESADO Then
        Begin
          Mensaje('ESTA NOTA DE CREDITO YA FUE PROCESADA'#13'Por Favor, Verifique',Self);
          Exit;
        End;

      V := Modulo.tCreditosMonto.Value;
      If Modulo.tCreditosMonto.Value > Modulo.tFacturasTotalNeto.Value Then
        Begin
          If AdvAsk('Monto Mayor', 'EL MONTO DE LA NOTA DE CREDITO ES MAYOR AL MONTO FACTURADO'#13'DESEA CONTINUAR?','',tiQuestion,
                    [cbYes, cbNo],Self) = IDNO Then Exit;
          V := Modulo.tFacturasTotalNeto.Value;
        End;

      Try
        Modulo.tDetalle_Pago_Factura.DisableControls;
        Modulo.tDetalle_Pago_Factura.First;

        While Not Modulo.tDetalle_Pago_Factura.Eof  Do
          Begin
            If Modulo.tDetalle_Pago_FacturaValor_Recibido.Value > 0 Then
              Begin
                Modulo.tDetalle_Pago_Factura.Edit;
                Modulo.tDetalle_Pago_FacturaValor_Recibido.Value := 0;
              End;
              Modulo.tDetalle_Pago_Factura.Next;
          End;

        modulo.tdetalle_pago_factura.append;
        modulo.tdetalle_pago_facturanombre_forma_pago.value := 'nota/credito # ' + modulo.tcreditosnumero.text;
        modulo.tdetalle_pago_facturaforma_pago.value := -1;
        modulo.tdetalle_pago_facturatasa.value := 1;
        modulo.tdetalle_pago_facturaes_efectivo.value := false;
        modulo.tdetalle_pago_facturarequiere_documento.value := false;
        modulo.tdetalle_pago_facturarequiere_vencimiento.value := false;
        modulo.tdetalle_pago_facturarequiere_aprobacion.value := false;
        modulo.tdetalle_pago_facturafecha.value := modulo.tfacturasfecha.value;
        modulo.tdetalle_pago_facturahora.value := modulo.tfacturashora.value;
        modulo.tdetalle_pago_facturavalor_recibido.value := v;
        modulo.tdetalle_pago_factura.post;

        modulo.tcreditos.edit;
        modulo.tcreditosstatus.value := _stprocesado;
        modulo.tcreditosfecha_aplicacion.value := modulo.enlace.appserver.serverdate;
        modulo.tcreditosmonto_aplicado.value := v;
        modulo.tcreditos.post;
      Finally
        Modulo.tDetalle_Pago_Factura.EnableControls;
      End;
    End;
end;

procedure TFPago_Factura.CancelarExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
  Close
end;

Initialization
  RegisterClass(TFPago_Factura);

  end.
