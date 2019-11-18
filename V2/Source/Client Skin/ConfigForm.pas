unit ConfigForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, wwcheckbox, RegKeys, ExtDlgs;

type
  TFMainConfig = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label14: TLabel;
    Edit13: TEdit;
    Label15: TLabel;
    Edit14: TEdit;
    AbrirLogo: TOpenDialog;
    SpeedButton2: TSpeedButton;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Moneda: TEdit;
    FormFecha: TEdit;
    FormHora: TEdit;
    RadioGroup1: TRadioGroup;
    SpeedButton3: TSpeedButton;
    WindowsColor: TColorDialog;
    Label9: TLabel;
    Edit10: TEdit;
    Label16: TLabel;
    Edit11: TEdit;
    Label17: TLabel;
    Edit12: TEdit;
    Label18: TLabel;
    Edit15: TEdit;
    Label19: TLabel;
    FormFechaLargo: TEdit;
    Label20: TLabel;
    FormHoraLargo: TEdit;
    Label13: TLabel;
    Edit9: TEdit;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    NombreImpuesto: TEdit;
    Label22: TLabel;
    Impuesto: TEdit;
    Label23: TLabel;
    Contrato: TEdit;
    Desembolso: TEdit;
    Label24: TLabel;
    LogoVisible: TCheckBox;
    Label25: TLabel;
    Edit16: TEdit;
    Label26: TLabel;
    Edit17: TEdit;
    Ajustar: TCheckBox;
    SpeedButton1: TSpeedButton;
    Label27: TLabel;
    Edit18: TEdit;
    Tipo_Factura: TwwCheckBox;
    Label28: TLabel;
    Label29: TLabel;
    Condicion_Facturas: TComboBox;
    OpenCash: TwwCheckBox;
    Comentario_Credito: TMemo;
    AutoPago: TwwCheckBox;
    Label30: TLabel;
    Edit19: TEdit;
    Label31: TLabel;
    SpeedButton4: TSpeedButton;
    Mascara: TEdit;
    SkinOpen: TOpenPictureDialog;
    RestrictInventory: TwwCheckBox;
    FileName: TEdit;
    SpeedButton5: TSpeedButton;
    Monitoreo: TEdit;
    bt_Monitoreo: TSpeedButton;
    Label32: TLabel;
    Edit20: TEdit;
    Label33: TLabel;
    Edit21: TEdit;
    main_menu: TwwCheckBox;
    Label34: TLabel;
    pDiarios: TEdit;
    Benficio: TwwCheckBox;
    Mostrario: TwwCheckBox;
    Precios: TRadioGroup;
    Alertas_Existencia: TwwCheckBox;
    gb1: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    edtDN: TEdit;
    edtPwd: TEdit;
    rbUSB: TRadioButton;
    rbComm: TRadioButton;
    rbtCP: TRadioButton;
    cbbComm: TComboBox;
    cbbBaudrate: TComboBox;
    edtIPAddress: TEdit;
    edtPort: TEdit;
    Label35: TLabel;
    edtTimer: TEdit;
    Ejecutar_Sonido: TwwCheckBox;
    Abrir_Puerta: TwwCheckBox;
    Label36: TLabel;
    Puerto_Puerta: TComboBox;
    Label37: TLabel;
    tiempo_Puerta: TEdit;
    abrir_noregistrado: TwwCheckBox;
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure bt_MonitoreoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMainConfig: TFMainConfig;
  LoadItUp : Byte = 0;

implementation

uses Utilidades, Registry, DataModulo, Generales;

{$R *.dfm}

procedure TFMainConfig.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFMainConfig.bt_MonitoreoClick(Sender: TObject);
begin
  SkinOpen.InitialDir:=GetCurrentDir();
  SkinOpen.Filter:= 'DataBase (*.RMS)|*.Rms';
  If SkinOpen.Execute Then
    Monitoreo.Text :=  SkinOpen.FileName;
end;

procedure TFMainConfig.BitBtn1Click(Sender: TObject);
  Var N : Currency;
begin
  {Conexion}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_DataRouteKey,True);
  RegInfo.WriteString(_ConectionServerPath,Encrypt(Edit1.Text));
  RegInfo.WriteString(_ConectionURL,Encrypt(Edit10.Text));
  RegInfo.WriteString(_ConectionLocalServerPath,Encrypt(Edit11.Text));
  RegInfo.WriteString(_ConectionLocalURL,Encrypt(Edit12.Text));
  RegInfo.WriteString(_ConectionFile,Encrypt(FileName.Text));
  RegInfo.WriteString('MONITOREO',Encrypt(Monitoreo.Text));

  {Compañía}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_CompanyInfoKey,True);
  RegInfo.WriteString(_UserCard,Encrypt(Edit14.Text));
  RegInfo.WriteString(_UserBackground,Encrypt(Edit16.Text));
  RegInfo.WriteInteger(_BackgroundWidth,StrToInt(Edit17.Text));
  RegInfo.WriteInteger(_BackgroundHeight,StrToInt(Edit20.Text));
  RegInfo.WriteInteger(_BackgroundPosY,StrToInt(Edit21.Text));
  RegInfo.WriteBool(_BackgroundAlign,Ajustar.Checked);
  RegInfo.WriteBool(_LogoVisible,LogoVisible.Checked);
  RegInfo.WriteString(_UserCompName,Encrypt(Edit2.Text));
  RegInfo.WriteString(_UserCompAddres,Encrypt(Edit3.Text));
  RegInfo.WriteString(_UserCompCity,Encrypt(Edit4.Text));
  RegInfo.WriteString(_UserCompCountry,Encrypt(Edit5.Text));
  RegInfo.WriteString(_UserCompPhone1,Encrypt(Edit6.Text));
  RegInfo.WriteString(_UserCompPhone2,Encrypt(Edit7.Text));
  RegInfo.WriteString(_UserCompRNC,Encrypt(Edit8.Text));
  RegInfo.WriteString(_Status,Encrypt(Edit13.Text));
  RegInfo.WriteInteger(_UserCompAlignment,RadioGroup1.ItemIndex);
  RegInfo.WriteBool(_OpenCash,OpenCash.Checked);
  RegInfo.WriteBool(_ShowMainMenu,main_menu.Checked);
  RegInfo.WriteBool('Alerta_Existencia',Alertas_Existencia.Checked);

  RegInfo.CloseKey;
  RegInfo.OpenKey(_FacturaProductosKey,True);

  RegInfo.WriteInteger('DefPrice',Precios.ItemIndex);

  {Configuracion General}
  Reginfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,True);
  Try
    RegInfo.WriteInteger(_WindowsColor,WindowsColor.Color);
    RegInfo.WriteString(_CurrencyString,Moneda.Text);
    RegInfo.WriteString(_ShortDateFormat,FormFecha.Text);
    RegInfo.WriteString(_ShortTimeFormat,FormHora.Text);
    RegInfo.WriteString(_LongDateFormat,FormFechaLargo.Text);
    RegInfo.WriteString(_LongTimeFormat,FormHoraLargo.Text);
    RegInfo.WriteString(_TerminalName,Encrypt(Edit15.Text));

    RegInfo.WriteString(_QtyFormat,Edit9.Text);
    RegInfo.WriteString(_PcntFormat,Edit18.Text);
    RegInfo.WriteBool(_AutoPago,AutoPago.Checked);
    RegInfo.WriteBool(_Mostrario,Mostrario.Checked);
    RegInfo.WriteBool(_AutoBeneficio,Benficio.Checked);


    RegInfo.WriteString(_CondFacturas,Condicion_Facturas.Text);

    If Tipo_Factura.Checked Then
      RegInfo.WriteString(_TipoFacturas,Tipo_Factura.ValueChecked)
    Else
      RegInfo.WriteString(_TipoFacturas,Tipo_Factura.ValueUnChecked);

    RegInfo.WriteString(_NombreImpuesto,Trim(NombreImpuesto.Text));

    Try
      N := StrToCurr(Trim(pDiarios.Text));
    Except
      Mensaje ('Monto Cobro Diario : '#13'El valor ' + Trim(pDiarios.Text) + ' es invalido, POR FAVOR VERIFIQUE',self);
    End;

    RegInfo.WriteString(_PagoDiario,Trim(pDiarios.Text));
    RegInfo.WriteInteger(_TerminosCredito,StrToInt(Trim(Edit19.Text)));
    RegInfo.WriteString(_MainSkin, Mascara.Text);
    RegInfo.WriteBool(_InventoryManagement,RestrictInventory.Checked);
    _RestrictInventory := RestrictInventory.Checked
  Except
    RegInfo.CloseKey
  end;

  RegInfo.CloseKey;
  RegInfo.OpenKey(_FacturaProductosKey,True);

  RegInfo.WriteString(_Comentario_Credito,Comentario_Credito.Text);


  RegInfo.CloseKey;
  RegInfo.OpenKey(_Reloj_Key,True);

  If rbUSB.Checked Then
    RegInfo.WriteInteger(_rlj_Conexion,0);
  If rbComm.Checked Then
    RegInfo.WriteInteger(_rlj_Conexion,1);
  If rbtCP.Checked Then
    RegInfo.WriteInteger(_rlj_Conexion,2);

  RegInfo.WriteInteger(_rlj_ID,StrToINt(edtDN.Text));
  RegInfo.WriteString(_rlj_Key,edtPwd.Text);
  RegInfo.WriteInteger(_rlj_SerialPort,cbbComm.ItemIndex + 1);
  RegInfo.WriteString(_rlj_bRate,cbbBaudrate.Text);
  RegInfo.WriteString(_rlj_IP,edtIPAddress.Text);
  RegInfo.WriteString(_rlj_IPPort,edtPort.Text);
  RegInfo.WriteInteger(_rlj_Timer,StrToInt(edtTimer.Text));

  RegInfo.WriteInteger(_rlj_DoorTimer,StrToInt(tiempo_Puerta.Text));
  RegInfo.WriteInteger(_rlj_DoorPortIdx,Puerto_Puerta.ItemIndex);
  RegInfo.WriteString(_rlj_DoorPort,Puerto_Puerta.Text);
  RegInfo.WriteBool(_rlj_DoorOpen,Abrir_Puerta.Checked);
  RegInfo.WriteBool(_rlj_PlaySound,Ejecutar_Sonido.Checked);
  RegInfo.WriteBool(_rlj_DoorOpen_NR,abrir_noregistrado.Checked);

  Close
end;

procedure TFMainConfig.SpeedButton1Click(Sender: TObject);
begin
  If AbrirLogo.Execute Then
    Edit16.Text := AbrirLogo.FileName
end;

procedure TFMainConfig.SpeedButton2Click(Sender: TObject);
begin
  If AbrirLogo.Execute Then
    Edit14.Text := AbrirLogo.FileName
end;

procedure TFMainConfig.SpeedButton3Click(Sender: TObject);
begin
  WindowsColor.Color := Color;
  If WindowsColor.Execute Then
    Color := WindowsColor.Color
end;

procedure TFMainConfig.SpeedButton4Click(Sender: TObject);
begin
  SkinOpen.InitialDir:=GetCurrentDir();
  SkinOpen.Filter:= 'Skin files (*.skn)|*.skn';
  If SkinOpen.Execute Then
    Mascara.Text :=  SkinOpen.FileName;
end;

procedure TFMainConfig.SpeedButton5Click(Sender: TObject);
begin
  SkinOpen.InitialDir:=GetCurrentDir();
  SkinOpen.Filter:= 'DataBase (*.RMS)|*.Rms';
  If SkinOpen.Execute Then
    FileName.Text :=  SkinOpen.FileName;
end;

procedure TFMainConfig.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Inicia el Registro}
      Reginfo := TRegistry.Create;
      RegInfo.RootKey := HKEY_CURRENT_USER;

      {Color de la Pantalla}
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
      {Conexion}
      RegInfo.CloseKey;
      RegInfo.OpenKey(_DataRouteKey,True);

      {Activar Los Permisos del Usuario}
//      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);

      {Edit1.ReadOnly := Not(_CurrentLevel = _SuperUserLevel);
      Edit10.ReadOnly := Not(_CurrentLevel = _SuperUserLevel);
      Edit11.ReadOnly := Not(_CurrentLevel = _SuperUserLevel);
      Edit12.ReadOnly := Not(_CurrentLevel = _SuperUserLevel);

      Edit1.ParentColor := Not(_CurrentLevel = _SuperUserLevel);
      Edit10.ParentColor := Not(_CurrentLevel = _SuperUserLevel);
      Edit11.ParentColor := Not(_CurrentLevel = _SuperUserLevel);
      Edit12.ParentColor := Not(_CurrentLevel = _SuperUserLevel);   }
      Try
        Edit1.Text  := UnEncrypt(RegInfo.ReadString(_ConectionServerPath));
        Edit10.Text := UnEncrypt(RegInfo.ReadString(_ConectionURL));
        Edit11.Text := UnEncrypt(RegInfo.ReadString(_ConectionLocalServerPath));
        Edit12.Text := UnEncrypt(RegInfo.ReadString(_ConectionLocalURL));
        FileName.Text := UnEncrypt(RegInfo.ReadString(_ConectionFile));
        Monitoreo.Text := UnEncrypt(RegInfo.ReadString('MONITOREO'));
      Except
        RegInfo.CloseKey
      end;

      Try
        RegInfo.CloseKey;
        RegInfo.OpenKey(_LabelProductosKey,False);

        {Etiquetas}
        Precios.Items.Clear;
        Precios.Items.Add('Precio Unidad');
        Precios.Items.Add(RegInfo.ReadString(_lPrecio1));
        Precios.Items.Add(RegInfo.ReadString(_lPrecio2));
        Precios.Items.Add(RegInfo.ReadString(_lPrecio3));
        Precios.Items.Add(RegInfo.ReadString(_lPrecio4));
        Precios.Items.Add('Precio Mínimo');

        RegInfo.CloseKey;
        RegInfo.OpenKey(_FacturaProductosKey,True);

        Precios.ItemIndex := RegInfo.ReadInteger('DefPrice');

      Except

      End;

      {Compañía}
      RegInfo.CloseKey;
      RegInfo.OpenKey(_CompanyInfoKey,True);
      Try
        Edit14.Text           := UnEncrypt(RegInfo.ReadString(_UserCard));
        Edit16.Text           := UnEncrypt(RegInfo.ReadString(_UserBackground));
        Edit17.Text           := IntToStr(RegInfo.ReadInteger(_BackgroundWidth));

        Ajustar.Checked       := RegInfo.ReadBool(_BackgroundAlign);
        LogoVisible.Checked   := RegInfo.ReadBool(_LogoVisible);
        Edit2.Text            := UnEncrypt(RegInfo.ReadString(_UserCompName));
        Edit3.Text            := UnEncrypt(RegInfo.ReadString(_UserCompAddres));
        Edit4.Text            := UnEncrypt(RegInfo.ReadString(_UserCompCity));
        Edit5.Text            := UnEncrypt(RegInfo.ReadString(_UserCompCountry));
        Edit6.Text            := UnEncrypt(RegInfo.ReadString(_UserCompPhone1));
        Edit7.Text            := UnEncrypt(RegInfo.ReadString(_UserCompPhone2));
        Edit8.Text            := UnEncrypt(RegInfo.ReadString(_UserCompRNC));
        Edit13.Text           := UnEncrypt(RegInfo.ReadString(_Status));
        RadioGroup1.ItemIndex := RegInfo.ReadInteger(_UserCompAlignment);
        OpenCash.Checked      := RegInfo.ReadBool(_OpenCash);

        Edit20.Text           := IntToStr(RegInfo.ReadInteger(_BackgroundHeight));
        Edit21.Text           := IntToStr(RegInfo.ReadInteger(_BackgroundPosY));
        main_menu.Checked     := RegInfo.ReadBool(_ShowMainMenu);
        Alertas_Existencia.Checked := RegInfo.ReadBool('Alerta_Existencia');
      Except
        RegInfo.CloseKey
      end;

      WindowsColor.Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

      {Configuracion General}
      Reginfo.CloseKey;
      RegInfo.OpenKey(_GeneralConfigKey,True);
      Try
        Moneda.Text         := RegInfo.ReadString(_CurrencyString);
        FormFecha.Text      := RegInfo.ReadString(_ShortDateFormat);
        FormHora.Text       := RegInfo.ReadString(_ShortTimeFormat);
        FormFechaLargo.Text := RegInfo.ReadString(_LongDateFormat);
        FormHoraLargo.Text  := RegInfo.ReadString(_LongTimeFormat);
        Edit15.Text         := UnEncrypt(RegInfo.ReadString(_TerminalName));
        Edit9.Text          := RegInfo.ReadString(_QtyFormat);
        Edit18.Text         := RegInfo.ReadString(_PcntFormat);
        AutoPago.Checked    := RegInfo.ReadBool(_AutoPago);
        Mostrario.Checked   := RegInfo.ReadBool(_Mostrario);
        Benficio.Checked    := RegInfo.ReadBool(_AutoBeneficio);

        Condicion_Facturas.Text   := RegInfo.ReadString(_CondFacturas);
        Tipo_Factura.Checked:= (RegInfo.ReadString(_TipoFacturas) = 'Detalle');

        NombreImpuesto.Text := RegInfo.ReadString(_NombreImpuesto);
        Try
          pDiarios.Text := RegInfo.ReadString(_PagoDiario);
        Except
        End;


        Edit19.Text         := IntToStr(RegInfo.ReadInteger(_TerminosCredito));
        Mascara.Text := RegInfo.ReadString(_MainSkin);
        RestrictInventory.Checked  := RegInfo.ReadBool(_InventoryManagement);
      Except
        RegInfo.CloseKey
      end;

      RegInfo.CloseKey;
      RegInfo.OpenKey(_FacturaProductosKey,False);
      Try
        Comentario_Credito.Lines.Clear;
        Comentario_Credito.Text := RegInfo.ReadString(_Comentario_Credito);
      Except
        RegInfo.CloseKey
      end;

      RegInfo.CloseKey;
      RegInfo.OpenKey(_Reloj_Key,False);

      Try
        Case RegInfo.ReadInteger(_rlj_Conexion) of
          0 : rbUSB.Checked := True;
          1 : rbComm.Checked := True;
          2 : rbtCP.Checked := True;
        End;

        edtDN.Text := IntToStr(RegInfo.ReadInteger(_rlj_ID));
        edtPwd.Text := RegInfo.ReadString(_rlj_Key);
        cbbComm.ItemIndex := RegInfo.ReadInteger(_rlj_SerialPort) - 1;
        cbbBaudrate.Text := RegInfo.ReadString(_rlj_bRate);
        edtIPAddress.Text := RegInfo.ReadString(_rlj_IP);
        edtPort.Text := RegInfo.ReadString(_rlj_IPPort);
        edtTimer.Text := IntToStr(RegInfo.ReadInteger(_rlj_Timer));
        tiempo_Puerta.Text := IntToStr(RegInfo.ReadInteger(_rlj_DoorTimer));
        Puerto_Puerta.ItemIndex := RegInfo.ReadInteger(_rlj_DoorPortIdx);
        Abrir_Puerta.Checked := RegInfo.ReadBool(_rlj_DoorOpen);
        Ejecutar_Sonido.Checked := RegInfo.ReadBool(_rlj_PlaySound);
        abrir_noregistrado.Checked := RegInfo.ReadBool(_rlj_DoorOpen_NR);
      Except

      End;

    End; {If _Load_Create}
end;

procedure TFMainConfig.FormDblClick(Sender: TObject);
begin
  Inc (LoadItUp);
  If LoadItUp = 3 Then
   Begin
     Monitoreo.Visible := Not Monitoreo.Visible;
     bt_Monitoreo.Visible := Monitoreo.Visible;
     LoadItUp := 0
   End;
end;

procedure TFMainConfig.FormKeyPress(Sender: TObject; var Key: Char);
 Var
  Found : TWinControl;
begin
  If Key = Chr(VK_RETURN) Then
    Begin
      Found := FindNextControl(ActiveControl,True, True, False);
      Found.SetFocus
    End
end;

Initialization
  RegisterClass(TFMainConfig);

end.
