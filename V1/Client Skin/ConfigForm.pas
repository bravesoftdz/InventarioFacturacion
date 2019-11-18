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
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMainConfig: TFMainConfig;

implementation

uses Utilidades, Registry, DataModulo, Generales;

{$R *.dfm}

procedure TFMainConfig.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFMainConfig.BitBtn1Click(Sender: TObject);
begin
  {Conexion}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_DataRouteKey,True);
  RegInfo.WriteString(_ConectionServerPath,Encrypt(Edit1.Text));
  RegInfo.WriteString(_ConectionURL,Encrypt(Edit10.Text));
  RegInfo.WriteString(_ConectionLocalServerPath,Encrypt(Edit11.Text));
  RegInfo.WriteString(_ConectionLocalURL,Encrypt(Edit12.Text));
  RegInfo.WriteString(_ConectionFile,Encrypt(FileName.Text));
  {Compañía}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_CompanyInfoKey,True);
  RegInfo.WriteString(_UserCard,Encrypt(Edit14.Text));
  RegInfo.WriteString(_UserBackground,Encrypt(Edit16.Text));
  RegInfo.WriteInteger(_BackgroundWidth,StrToInt(Edit17.Text));
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

    RegInfo.WriteString(_CondFacturas,Condicion_Facturas.Text);

    If Tipo_Factura.Checked Then
      RegInfo.WriteString(_TipoFacturas,Tipo_Factura.ValueChecked)
    Else
      RegInfo.WriteString(_TipoFacturas,Tipo_Factura.ValueUnChecked);

    RegInfo.WriteString(_NombreImpuesto,Trim(NombreImpuesto.Text));
    RegInfo.WriteInteger(_TerminosCredito,StrToInt(Trim(Edit19.Text)));
    RegInfo.WriteString(_MainSkin, Mascara.Text);
    RegInfo.WriteBool(_InventoryManagement,RestrictInventory.Checked);
    _RestrictInventory := RestrictInventory.Checked
  Except
    RegInfo.CloseKey
  end;

  RegInfo.CloseKey;
  RegInfo.OpenKey(_FacturaProductosKey,False);

  RegInfo.WriteString(_Comentario_Credito,Comentario_Credito.Text);
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
      RegInfo.RootKey := HKEY_LOCAL_MACHINE;

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
      Except
        RegInfo.CloseKey
      end;

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

        Condicion_Facturas.Text   := RegInfo.ReadString(_CondFacturas);
        Tipo_Factura.Checked:= (RegInfo.ReadString(_TipoFacturas) = 'Detalle');

        NombreImpuesto.Text := RegInfo.ReadString(_NombreImpuesto);
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
      end
    End; {If _Load_Create}
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
