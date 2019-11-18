unit CnfgForms;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, Dialogs, Spin, jpeg, Mask, IniFiles, ppPrintr;

type
  TFConfigForms = class(TForm)
    Bevel1: TBevel;
    OpenTemplates: TOpenDialog;
    Template: TEdit;
    Label2: TLabel;
    PrtList: TComboBox;
    Label1: TLabel;
    LoadTemplate: TButton;
    Device: TRadioGroup;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Image1: TImage;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Dialogo: TCheckBox;
    Copias: TSpinEdit;
    Label9: TLabel;
    Ancho: TMaskEdit;
    Alto: TMaskEdit;
    Inferior: TMaskEdit;
    Superior: TMaskEdit;
    Derecho: TMaskEdit;
    Izquierdo: TMaskEdit;
    Label10: TLabel;
    LogoName: TEdit;
    LoadLogo: TButton;
    Alineacion: TRadioGroup;
    OpenLogo: TOpenDialog;
    OKBtn: TBitBtn;
    CancelBtn: TBitBtn;
    procedure LoadTemplateClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure LoadLogoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    _Seccion : String;
    Procedure LoadValues;
  end;

var
  FConfigForms  : TFConfigForms;
  InitInfo      : TIniFile;

implementation

uses Utilidades;

{$R *.DFM}

procedure TFConfigForms.LoadTemplateClick(Sender: TObject);
begin
  If Template.Text <> '' Then
    OpenTemplates.InitialDir := ExtractFileDir(Template.Text)
  Else
    OpenTemplates.InitialDir := GetCurrentDir();
  If OpenTemplates.Execute Then
    Template.Text := OpenTemplates.FileName;
end;

procedure TFConfigForms.OKBtnClick(Sender: TObject);
Const
   Devices   : Array [0..1] Of String = ('Screen', 'Printer');
   TrueFalse : Array [0..1] Of Boolean = (False, True);
Var
   CurrUpdate : String;
begin
  Try
    CurrUpdate := Template.Name;
    InitInfo.WriteString(_Seccion,'TemplateFileName',Template.Text);
    InitInfo.WriteString(_Seccion,'Device',Devices[Device.ItemIndex]);
    CurrUpdate := Alto.Name;
    InitInfo.WriteFloat(_Seccion,'PaperHeight',StrToFloat(Trim(Alto.Text)));
    CurrUpdate := Ancho.Name;
    InitInfo.WriteFloat(_Seccion,'PaperWidth',StrToFloat(Trim(Ancho.Text)));
    InitInfo.WriteString(_Seccion,'PrinterName',PrtList.Text);
    CurrUpdate := Copias.Name;
    InitInfo.WriteInteger(_Seccion,'Copies',Copias.Value);
    CurrUpdate := Inferior.Name;
    InitInfo.WriteFloat(_Seccion,'MarginBottom',StrToFloat(Trim(Inferior.Text)));
    CurrUpdate := Izquierdo.Name;
    InitInfo.WriteFloat(_Seccion,'MarginLeft',StrToFloat(Trim(Izquierdo.Text)));
    CurrUpdate := Derecho.Name;
    InitInfo.WriteFloat(_Seccion,'MarginRight',StrToFloat(Trim(Derecho.Text)));
    CurrUpdate := Superior.Name;
    InitInfo.WriteFloat(_Seccion,'MarginTop',StrToFloat(Trim(Superior.Text)));
    InitInfo.WriteBool(_Seccion,'ShowPrintDialog',Dialogo.Checked);
    CurrUpdate := LogoName.Name;
    InitInfo.WriteString(_Seccion,'LogoName',LogoName.Text);
    InitInfo.WriteInteger(_Seccion,'Alignment',Alineacion.ItemIndex);
    Close
  Except
     ShowMessage ('Valor Incorrecto Para El Campo "'+Trim(CurrUpdate)+'"');
  End; {Try}
end;

procedure TFConfigForms.FormKeyPress(Sender: TObject; var Key: Char);
 Var
  Found : TWinControl;
begin
  If Key = #13 Then
    Begin
      Found := FindNextControl(ActiveControl,True, True, False);
      Found.SetFocus;
    End;
end;

procedure TFConfigForms.LoadLogoClick(Sender: TObject);
begin
  If Template.Text <> '' Then
    OpenLogo.InitialDir := ExtractFileDir(LogoName.Text)
  Else
    OpenLogo.InitialDir := GetCurrentDir();
  If OpenLogo.Execute Then
    LogoName.Text := OpenLogo.FileName;
end;

procedure TFConfigForms.FormCreate(Sender: TObject);
  Var
    Prts     : TppPrinter;
begin
  Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

  InitInfo              := TIniFile.Create(_IniFormsConfig);
  Prts                  := TppPrinter.Create;
  PrtList.Items         := Prts.PrinterSetup.PrinterNames;
  Prts.Free;
end;

procedure TFConfigForms.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  InitInfo.Free
end;

Procedure TFConfigForms.LoadValues;
  Begin
    Template.Text         := InitInfo.ReadString(_Seccion,'TemplateFileName','');
    LogoName.Text         := InitInfo.ReadString(_Seccion,'LogoName','');
    If InitInfo.ReadString(_Seccion,'Device','') = 'Screen' Then Device.ItemIndex := 0
    Else Device.ItemIndex := 1;
    Alineacion.ItemIndex  := InitInfo.ReadInteger(_Seccion,'Alignment',0);
    Alto.Text             := InitInfo.ReadString (_Seccion,'PaperHeight','');
    Ancho.Text            := InitInfo.ReadString (_Seccion,'PaperWidth','');
    PrtList.Text          := InitInfo.ReadString(_Seccion,'PrinterName','');
    Copias.Value          := InitInfo.ReadInteger(_Seccion,'Copies',0);
    Inferior.Text         := InitInfo.ReadString (_Seccion,'MarginBottom','');
    Izquierdo.Text        := InitInfo.ReadString (_Seccion,'MarginLeft','');
    Derecho.Text          := InitInfo.ReadString (_Seccion,'MarginRight','');
    Superior.Text         := InitInfo.ReadString (_Seccion,'MarginTop','');
    Dialogo.Checked       := InitInfo.ReadBool (_Seccion,'ShowPrintDialog',False)
  End;

end.
