unit Cuadre_Caja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, Mask, DBCtrls,
  ActnList, XPStyleActnCtrls, ActnMan, Db, Menus, ToolWin, ActnCtrls, RegKeys;

type
  TFCuadre_Caja = class(TForm)
    Detalles: TwwDBGrid;
    Label85: TLabel;
    Total_Neto: TDBEdit;
    Opciones: TActionManager;
    Procesar_Cuadre: TAction;
    Label4: TLabel;
    Numero_Cuadre: TDBEdit;
    Label7: TLabel;
    Fecha_Cuadre: TDBEdit;
    Label8: TLabel;
    Hora_Cuadre: TDBEdit;
    Cuadrar: TAction;
    Label1: TLabel;
    Retiros: TDBEdit;
    Label2: TLabel;
    Efectivo: TDBEdit;
    Label3: TLabel;
    Diferencia: TDBEdit;
    Label5: TLabel;
    Fondo: TDBEdit;
    Cancelar: TAction;
    atv_Acept_Cancel: TActionToolBar;
    procedure FormCreate(Sender: TObject);
    procedure DetallesCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure DetallesEnter(Sender: TObject);
    procedure Procesar_CuadreExecute(Sender: TObject);
    procedure DetallesDblClick(Sender: TObject);
    procedure CuadrarExecute(Sender: TObject);
    procedure Nombre_UsuarioExit(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DetallesExit(Sender: TObject);
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
  Generales;

{$R *.dfm}

procedure TFCuadre_Caja.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Configuracion de la Pantalla}
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
      _CanCancel := True;

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);

      Modulo.tCuadre_Caja.Open;
      Modulo.tCuadre_Caja.Append
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

procedure TFCuadre_Caja.Procesar_CuadreExecute(Sender: TObject);
  Var
    DoPreview : Boolean;
begin
  If (Modulo.tCuadre_CajaDiferencia.Value > _Margen) Or
     (Modulo.tCuadre_CajaDiferencia.Value < -_Margen) Then
    Raise Exception.Create(_ErrDiferenciaCuadre);

  If Modulo.tCuadre_Caja.State In DsEditModes Then Modulo.tCuadre_Caja.Post;
  If Modulo.tCuadre_Caja.ChangeCount > 0 Then Modulo.tCuadre_Caja.ApplyUpdates(0);
  Modulo.tCuadre_Caja.Refresh;

  If Not (Modulo.tApertura_Caja.State In DsEditModes) Then Modulo.tApertura_Caja.Edit;
  Modulo.tApertura_CajaAbierto.Value := False;
  Modulo.tApertura_Caja.Post;
  Modulo.tApertura_Caja.ApplyUpdates(0);
  Modulo.tApertura_Caja.Refresh;

  Modulo.tReporter.CommandText := Format(_UpdateStatusVenta_Usuario_Fecha,
                                        [QuotedStr(_stCERRADO),
                                         QuotedStr(_CurrentApertura)]);

  _CurrentApertura := '_NO_';
  Modulo.tReporter.Execute;
  Modulo.tReporter.Close;

  RegInfo.CloseKey;
  RegInfo.OpenKey(_Cuadre_CajaKey,False);

  DoPreview := RegInfo.ReadBool(_PreviewForm);
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

  Modulo.tApertura_Caja.Close;
  Modulo.tCuadre_Caja.Close;

  Close;
end;

procedure TFCuadre_Caja.DetallesDblClick(Sender: TObject);
begin
  Modulo.tDetalle_Pago_FacturaBeforePost(Modulo.tDetalle_Pago_Factura)
end;

procedure TFCuadre_Caja.CuadrarExecute(Sender: TObject);
begin
  Try
    ModuloGenerales.tDenominaciones_Moneda.Open;
    ModuloGenerales.tDenominaciones_Moneda.First;
    Modulo.tDetalle_Cuadre.BeforePost := Nil;
    While Not ModuloGenerales.tDenominaciones_Moneda.Eof Do
      Begin
        If Not Modulo.tDetalle_Cuadre.Locate(Modulo.tDetalle_CuadreMoneda.FieldName+';'+Modulo.tDetalle_CuadreDenominacion.FieldName,
                                             VarArrayOf([ModuloGenerales.tDenominaciones_MonedaMoneda.Value,ModuloGenerales.tDenominaciones_MonedaDenominacion.Value]),
                                             []) Then
          Modulo.tDetalle_Cuadre.Append
        Else
          Modulo.tDetalle_Cuadre.Edit;

        Modulo.tDetalle_CuadreMoneda.Value := ModuloGenerales.tDenominaciones_MonedaMoneda.Value;
        Modulo.tDetalle_CuadreDenominacion.Value := ModuloGenerales.tDenominaciones_MonedaDenominacion.Value;
        Modulo.tDetalle_Cuadre.Post;
        ModuloGenerales.tDenominaciones_Moneda.Next
      End
  Finally
//    Modulo.tDetalle_Cuadre.BeforePost := Modulo.tDetalle_CuadreBeforePost;
    Modulo.tDetalle_Cuadre.First;

    ModuloGenerales.tDenominaciones_Moneda.Close;

    Modulo.SetCashParams;

    Modulo.tApertura_Caja.Open;

    If Modulo.tApertura_Caja.RecordCount > 0 Then
      Modulo.tCuadre_CajaFondo_Caja.Value := Modulo.tApertura_CajaMonto.Value;

    {Cargar Monto Vendido}
    Modulo.tReporter.CommandText := Format(_SelectVenta_Usuario_Caja,
                                           [QuotedStr(Trim(_CurrentApertura))]);
    Modulo.tReporter.Open;
    Modulo.tCuadre_CajaTotal_Vendido.Value := Modulo.tReporter.FieldByName('Total_Vendido').AsCurrency;
    Modulo.tReporter.Close;

    {Cargar Monto Retirado}
    Modulo.tReporter.CommandText := Format(_SelectRetitos_Usuario_Fecha,[QuotedStr(Trim(_CurrentUser)),QuotedStr(DateToStr(Date()))]);
    Modulo.tReporter.Open;
    Modulo.tCuadre_CajaTotal_Retiros.Value := Modulo.tReporter.FieldByName('Total_Retirado').AsCurrency;
    Modulo.tReporter.Close;

  End {Try}
end;

procedure TFCuadre_Caja.Nombre_UsuarioExit(Sender: TObject);
begin
  ModuloGenerales.tUsuarios.Params.ParamByName('NickName').AsString := _CurrentUser;
  ModuloGenerales.tUsuarios.Open;
  ModuloGenerales.tUsuarios.Refresh
end;


Function TFCuadre_Caja.ImprimirRecibo(Const OutDevice : String) : Boolean;
  Var
    Factor              : Byte;
    LineasDespues       ,
    I                   : Integer;
    Salida              ,
    Impresora           ,
    Coment_Enc          ,
    Coment_Pie1         ,
    Coment_Pie2         ,
    Coment_Pie3         ,
    Coment_Pie4         ,
    Format_Num_Tel_Hora ,
    Format_Fecha        ,
    Separador           ,
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

    // Nombre
    PrnLn(CBrush(UnEncrypt(RegInfo.ReadString(_UserCompName)),AnchoLinea Div Factor));

    If OutDevice = _Port Then Prn(_NoBigFont);

    // Comentario / Slogan
    If Trim(Coment_Enc) <> '' Then PrnLn(CBrush(Coment_Enc,AnchoLinea));

    // Direccion
    PrnLn(CBrush(UnEncrypt(RegInfo.ReadString(_UserCompAddres)),AnchoLinea));

    // # Recibo , Telefono y Hora de Venta
    PrnLn(LBrush(FormatDateTime('dd/mm/yyyy',Modulo.tCuadre_CajaFecha.Value),12) +
          CBrush(UnEncrypt(RegInfo.ReadString(_UserCompPhone1)),14)+
          RBrush(FormatDateTime('hh:mm am/pm',Modulo.tCuadre_CajaHora.Value),12));

    {Tipo de Recibo}
    PrnLn(#32);
    If OutDevice = _Port Then Prn(_BigFont);
    PrnLn(LBrush(UPPERCASE('Cuadre de Caja'),7)+
          RBrush(Modulo.tCuadre_CajaNumero_Cuadre.Text,(AnchoLinea Div Factor) -7 ));
    If OutDevice = _Port Then Prn(_NoBigFont);

    PrnLn(#32);
    If OutDevice = _Port Then
      Begin
        Prn(_NoBigFont);
        Prn(_Draft)
      End;

    {Cuerpo de la Cuadre_Caja}
    PrnLn(LBrush('Usuario    : '+Trim(Modulo.tCuadre_CajaUsuario.Value),AnchoLinea));
    PrnLn(LBrush('Supervisor : '+Trim(Modulo.tCuadre_CajaSupervisor.Value),AnchoLinea));
    PrnLn(Fill('-',AnchoLinea));
    PrnLn(CBrush('Moneda' ,16)+'|'+
          CBrush('Den.'   ,07)+'|'+
          CBrush('Cant.'  ,05)+'|'+
          CBrush('Total'  ,09)
          );
    PrnLn(Fill('-',AnchoLinea));
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

    PrnLn(RBrush('Fondo :',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCuadre_CajaFondo_Caja.Value]),12));
    PrnLn(RBrush('Total Vendido :',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCuadre_CajaTotal_Vendido.Value]),12));
    PrnLn(RBrush('Total Retirado:',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCuadre_CajaTotal_Retiros.Value]),12));
    PrnLn(RBrush('Total Efectivo:',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCuadre_CajaTotal_Efectivo.Value]),12));
    PrnLn(RBrush('Diferencia :',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tCuadre_CajaDiferencia.Value]),12));

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

procedure TFCuadre_Caja.CancelarExecute(Sender: TObject);
begin
  Modulo.tCuadre_Caja.Cancel;
  Modulo.tCuadre_Caja.CancelUpdates;
  Close
end;

procedure TFCuadre_Caja.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Modulo.tApertura_Caja.Close;
  ModuloGenerales.tDenominaciones_Moneda.Close;
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
