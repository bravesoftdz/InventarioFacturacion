unit CnfgForms;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, Dialogs, Spin, jpeg, Mask, IniFiles, ppPrintr,
  ActnMan, ActnColorMaps, ActnList, XPStyleActnCtrls, ToolWin, ActnCtrls;

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
    Paper: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Image1: TImage;
    Margins: TGroupBox;
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
    atv_Acept_Cancel: TActionToolBar;
    Opciones: TActionManager;
    Aceptar: TAction;
    Cancelar: TAction;
    Formato: TRadioGroup;
    Desgloce: TCheckBox;
    Listado: TCheckBox;
    Detalles: TCheckBox;
    Duplex: TCheckBox;
    procedure LoadTemplateClick(Sender: TObject);
    procedure LoadLogoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AceptarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CancelarExecute(Sender: TObject);
    procedure FormatoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    _Seccion : String;
    Procedure LoadValues;
  end;

var
  FConfigForms  : TFConfigForms;

implementation

uses Utilidades, DataModulo, Registry;

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

procedure TFConfigForms.LoadLogoClick(Sender: TObject);
begin
  If LogoName.Text <> '' Then
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

  Prts                  := TppPrinter.Create;
  PrtList.Items         := Prts.PrinterSetup.PrinterNames;
  Prts.Free
end;

Procedure TFConfigForms.LoadValues;
  Const
    DeviceTypes : Array [False..True] Of Byte = (1,0);

  Begin
    RegInfo.CloseKey;
    RegInfo.OpenKey(_Seccion,True);

    Template.Text         := RegInfo.ReadString (_TemplateFileName);
    Device.ItemIndex      := DeviceTypes[RegInfo.ReadBool(_PreviewForm)];
    Alineacion.ItemIndex  := RegInfo.ReadInteger(_Alignment);
    Alto.Text             := Trim(Format('%*.*f',[8,2,RegInfo.ReadFloat (_PaperHeight)]));
    Ancho.Text            := Trim(Format('%*.*f',[8,2,RegInfo.ReadFloat (_PaperWidth)]));
    PrtList.Text          := RegInfo.ReadString (_PrinterName);
    Copias.Value          := RegInfo.ReadInteger(_PrintCopies);
    Inferior.Text         := Trim(Format('%*.*f',[8,2,RegInfo.ReadFloat (_MarginBottom)]));
    Izquierdo.Text        := Trim(Format('%*.*f',[8,2,RegInfo.ReadFloat (_MarginLeft)]));
    Derecho.Text          := Trim(Format('%*.*f',[8,2,RegInfo.ReadFloat (_MarginRight)]));
    Superior.Text         := Trim(Format('%*.*f',[8,2,RegInfo.ReadFloat (_MarginTop)]));
    Dialogo.Checked       := RegInfo.ReadBool (_ShowPrintDialog);
    Desgloce.Checked      := RegInfo.ReadBool (_Desglosar_Formularios);
    Listado.Checked       := RegInfo.ReadBool (_UseCustomControl);
    Detalles.Checked      := RegInfo.ReadBool (_DetalleFacturaFocus);
    Formato.ItemIndex     := RegInfo.ReadInteger (_OutputFormat);
    Duplex.Checked        := RegInfo.ReadBool (_Duplex);

    RegInfo.CloseKey;
    RegInfo.OpenKey(_CompanyInfoKey,True);
    LogoName.Text         := UnEncrypt(RegInfo.ReadString(_LogoName));
  End;

procedure TFConfigForms.AceptarExecute(Sender: TObject);
begin
  Try
    RegInfo.CloseKey;
    RegInfo.OpenKey(_Seccion,True);

    RegInfo.WriteString(_TemplateFileName,Template.Text);
    RegInfo.WriteFloat(_PaperHeight,StrToFloat(Trim(Alto.Text)));
    RegInfo.WriteFloat(_PaperWidth,StrToFloat(Trim(Ancho.Text)));
    RegInfo.WriteString(_PrinterName,PrtList.Text);
    RegInfo.WriteInteger(_PrintCopies,Copias.Value);
    RegInfo.WriteFloat(_MarginBottom,StrToFloat(Trim(Inferior.Text)));
    RegInfo.WriteFloat(_MarginLeft,StrToFloat(Trim(Izquierdo.Text)));
    RegInfo.WriteFloat(_MarginRight,StrToFloat(Trim(Derecho.Text)));
    RegInfo.WriteFloat(_MarginTop,StrToFloat(Trim(Superior.Text)));
    RegInfo.WriteBool(_ShowPrintDialog,Dialogo.Checked);
    RegInfo.WriteBool(_PreviewForm,Device.ItemIndex = 0);
    RegInfo.WriteBool(_Desglosar_Formularios,Desgloce.Checked);
    RegInfo.WriteBool(_UseCustomControl,Listado.Checked);
    RegInfo.WriteBool(_DetalleFacturaFocus,Detalles.Checked);
    RegInfo.WriteBool(_Duplex,Duplex.Checked);
    RegInfo.WriteInteger(_OutputFormat,Formato.ItemIndex);
    RegInfo.WriteInteger(_Alignment,Alineacion.ItemIndex);

    RegInfo.CloseKey;
    RegInfo.OpenKey(_CompanyInfoKey,True);
    RegInfo.WriteString(_LogoName,Encrypt(LogoName.Text));

    Close
  Except
     ShowMessage ('Valor Incorrecto');
  End; {Try}
end;

procedure TFConfigForms.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFConfigForms.CancelarExecute(Sender: TObject);
begin
  Close
end;

procedure TFConfigForms.FormatoClick(Sender: TObject);
begin
  Duplex.Enabled := Formato.ItemIndex = 0;
  If Not Duplex.Enabled Then Duplex.Checked := False
end;

end.
