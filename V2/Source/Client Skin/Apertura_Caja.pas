unit Apertura_Caja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, Mask, DBCtrls,
  ActnList, XPStyleActnCtrls, ActnMan, Db, Menus, ToolWin, ActnCtrls, RegKeys,
  SUIPopupMenu;

type
  TFApertura_Caja = class(TForm)
    Opciones: TActionManager;
    Procesar_Apertura: TAction;
    Label4: TLabel;
    Numero_Cuadre: TDBEdit;
    Label7: TLabel;
    Fecha_Cuadre: TDBEdit;
    Label8: TLabel;
    Hora_Cuadre: TDBEdit;
    Label5: TLabel;
    Total_Fondo: TDBEdit;
    Usuario: TDBEdit;
    atv_Acept_Cancel: TActionToolBar;
    Imprimir: TAction;
    Detalles: TwwDBGrid;
    Opciones_Miscelaneas: TsuiPopupMenu;
    ImprimirComprobanteEntrega1: TMenuItem;
    Configurar_Apertura: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Procesar_AperturaExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DetallesEnter(Sender: TObject);
    procedure DetallesExit(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure Configurar_AperturaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Function ImprimirRecibo(Const OutDevice : String) : Boolean;
  end;

var
  FApertura_Caja: TFApertura_Caja;
  TotalImpuesto : Currency = 0;

implementation

uses DataModulo, Utilidades, Generales, DotmatrX, Reports_Forms, CnfgForms;

{$R *.dfm}

procedure TFApertura_Caja.FormCreate(Sender: TObject);
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

    End; {If _Load_Create}
end;

procedure TFApertura_Caja.ImprimirExecute(Sender: TObject);
 Var
    DoPreview    : Boolean;
    OutputFormat : ShortInt;
    PrintFormat  : ShortInt;

begin
  Procesar_AperturaExecute(Imprimir);

  RegInfo.CloseKey;
  RegInfo.OpenKey(_AperturaKey,False);

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
                     RegInfo.OpenKey(_AperturaKey,False);
                     With ReportsAndForms.FormApertura_Caja Do
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

                         ReportsAndForms._Seccion  := _AperturaKey;

                         Print
                       End // With
                   End // _GraphicForm
  End; // Case

end;

procedure TFApertura_Caja.Configurar_AperturaExecute(Sender: TObject);
begin
  Application.CreateForm(TFConfigForms,FConfigForms);
  FConfigForms._Seccion := _AperturaKey;
  FConfigForms.Caption := Configurar_Apertura.Caption;
  If Trim(FConfigForms._Seccion) <> '' Then
    Try
      FConfigForms.LoadValues
    Finally
      FConfigForms.ShowModal;
      FConfigForms.Free
    End; // Try
end;

procedure TFApertura_Caja.DetallesEnter(Sender: TObject);
begin
  KeyPreview := False;
  Detalles.SelectedField := Modulo.tDetalle_AperturaCantidad
end;

procedure TFApertura_Caja.DetallesExit(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TFApertura_Caja.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Modulo.tApertura_Caja.Cancel;
  Modulo.tApertura_Caja.CancelUpdates;
  Modulo.tApertura_Caja.Close
end;

procedure TFApertura_Caja.Procesar_AperturaExecute(Sender: TObject);
begin
  If Modulo.tApertura_Caja.State In DsEditModes Then Modulo.tApertura_Caja.Post;
  If Modulo.tApertura_Caja.ChangeCount > 0 Then Modulo.tApertura_Caja.ApplyUpdates(0);
  _CurrentApertura := Modulo.tApertura_CajaProceso.Value;
  Modulo.tApertura_Caja.Refresh;
  Close
end;

procedure TFApertura_Caja.FormKeyDown(Sender: TObject; var Key: Word;
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


Function TFApertura_Caja.ImprimirRecibo(Const OutDevice : String) : Boolean;
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

      // # Recibo , Telefono y Hora de Venta
      If Duplex Then
        Prn(LBrush(LBrush(FormatDateTime('dd/mm/yyyy',Modulo.tApertura_CajaFecha.Value),19) +
                   RBrush(FormatDateTime('hh:mm am/pm',Modulo.tApertura_CajaHora.Value),19),AnchoLinea));

      PrnLn(LBrush(FormatDateTime('dd/mm/yyyy',Modulo.tApertura_CajaFecha.Value),19) +
            RBrush(FormatDateTime('hh:mm am/pm',Modulo.tApertura_CajaHora.Value),19));

      {Tipo de Recibo}
      If OutDevice = _Port Then Prn(_BigFont);

      If Duplex Then
        Prn(CBrush(UPPERCASE(Format('APERTURA %s',[Modulo.tApertura_CajaNumero.Text])),(AnchoLinea Div Factor)));

      PrnLn(CBrush(UPPERCASE(Format('APERTURA %s',[Modulo.tApertura_CajaNumero.Text])),(AnchoLinea Div Factor)));

    If OutDevice = _Port Then Prn(_NoBigFont);

    PrnLn(#32);

    If OutDevice = _Port Then
      Begin
        Prn(_NoBigFont);
        Prn(_Draft)
      End;

    {Cuerpo Cuadre_Caja}
    PrnLn(LBrush('Usuario    : '+Trim(Modulo.tApertura_CajaUsuario.Value),AnchoLinea));
    PrnLn(Fill('-',AnchoLinea));
    PrnLn(CBrush('Moneda' ,16)+'|'+
          CBrush('Den.'   ,07)+'|'+
          CBrush('Cant.'  ,05)+'|'+
          CBrush('Total'  ,09)
          );
    PrnLn(Fill('-',AnchoLinea));
    PrnLn(#32);

    Modulo.tDetalle_Apertura.First;
    While Not Modulo.tDetalle_Apertura.EOF Do
       Begin
         PrnLn(LBrush(Modulo.tDetalle_AperturaMoneda.Value,16) +'|'+
               RBrush(Format('%*.*f',[8,0,Modulo.tDetalle_AperturaDenominacion.Value]), 07)+'|'+
               RBrush(Format('%u',[Modulo.tDetalle_AperturaCantidad.Value])           , 05)+'|'+
               RBrush(Format('%m',[Modulo.tDetalle_AperturaTotal.Value])              , 09)
               );
         Modulo.tDetalle_Apertura.Next;
       End; {While}

    {Sumario / Totales de la Cuadre_Caja}
    PrnLn(RBrush(Fill('-',AnchoLinea),AnchoLinea));
    PrnLn(#32);

    PrnLn(RBrush('Fondo C/Chica :',AnchoLinea - 12) + RBrush(Format('%m',[Modulo.tApertura_CajaMonto.Value]),12));

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

    For I := 1 To LineasDespues Do
      PrnLn(#32);
    PrnLn(_PartialCut);
    EndPrn;
    Result := True
  End;


Initialization
  RegisterClass(TFApertura_Caja);

end.
