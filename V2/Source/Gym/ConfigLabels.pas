unit ConfigLabels;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, Dialogs, Spin, jpeg, Mask, IniFiles, ppPrintr,
  ActnMan, ActnList, XPStyleActnCtrls, ToolWin, ActnCtrls,
  RegKeys, SUIButton;

type
  TFConfigLabels = class(TForm)
    Bevel1: TBevel;
    PrtList: TComboBox;
    Label1: TLabel;
    Paper: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Image1: TImage;
    Ancho: TMaskEdit;
    Alto: TMaskEdit;
    Opciones: TActionManager;
    Aceptar: TAction;
    Cancelar: TAction;
    Label11: TLabel;
    Etiqeta1: TMaskEdit;
    Acho_Codigo: TMaskEdit;
    Label12: TLabel;
    Label13: TLabel;
    Codigo: TMaskEdit;
    Label7: TLabel;
    Izquierdo: TMaskEdit;
    Copias: TSpinEdit;
    Label9: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Etiqeta3: TMaskEdit;
    Etiqeta2: TMaskEdit;
    Legible: TCheckBox;
    Label6: TLabel;
    Etiqeta4: TMaskEdit;
    Label8: TLabel;
    Tipo: TMaskEdit;
    bt_Aceptar: TsuiButton;
    bt_Cancelar: TsuiButton;
    procedure FormCreate(Sender: TObject);
    procedure AceptarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    _Seccion : String;
    Procedure LoadValues;
  end;

var
  FConfigLabels  : TFConfigLabels;

implementation

uses Utilidades, DataModulo, Registry, Generales;

{$R *.DFM}

procedure TFConfigLabels.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);
    End; {If _Load_Create}
end;

Procedure TFConfigLabels.LoadValues;
  Begin
    Try
      RegInfo.CloseKey;
      RegInfo.OpenKey(_Seccion,True);

      Alto.Text             := Trim(Format('%*.*f',[8,2,RegInfo.ReadFloat (_PaperHeight)]));
      Ancho.Text            := Trim(Format('%*.*f',[8,2,RegInfo.ReadFloat (_PaperWidth)]));
      PrtList.Text          := RegInfo.ReadString (_PrinterName);
      Copias.Value          := RegInfo.ReadInteger(_PrintCopies);

      Etiqeta1.Text         := Trim(IntToStr(RegInfo.ReadInteger(_Etiq1)));
      Etiqeta2.Text         := Trim(IntToStr(RegInfo.ReadInteger(_Etiq2)));
      Etiqeta3.Text         := Trim(IntToStr(RegInfo.ReadInteger(_Etiq3)));
      Etiqeta4.Text         := Trim(IntToStr(RegInfo.ReadInteger(_Etiq4)));

      Izquierdo.Text        := Trim(IntToStr(RegInfo.ReadInteger(_MarginLeft)));

      Codigo.Text           := Trim(IntToStr(RegInfo.ReadInteger(_Codigo)));
      Acho_Codigo.Text      := Trim(IntToStr(RegInfo.ReadInteger(_LineasCodigo)));
      Tipo.Text             := Trim(RegInfo.ReadString(_TipoFacturas));

      Legible.Checked       := RegInfo.ReadBool (_ShowPrintDialog)
    Except

    end;
  End;

procedure TFConfigLabels.AceptarExecute(Sender: TObject);
  Var
    F   : TextFile;
    U,S : String;

begin
  Try
    RegInfo.CloseKey;
    RegInfo.OpenKey(_Seccion,True);

    RegInfo.WriteFloat(_PaperHeight,StrToFloat(Trim(Alto.Text)));
    RegInfo.WriteFloat(_PaperWidth,StrToFloat(Trim(Ancho.Text)));
    RegInfo.WriteString(_PrinterName,PrtList.Text);
    RegInfo.WriteInteger(_PrintCopies,Copias.Value);

    RegInfo.WriteInteger(_Etiq1,StrToInt(Trim(Etiqeta1.Text)));
    RegInfo.WriteInteger(_Etiq2,StrToInt(Trim(Etiqeta2.Text)));
    RegInfo.WriteInteger(_Etiq3,StrToInt(Trim(Etiqeta3.Text)));
    RegInfo.WriteInteger(_Etiq4,StrToInt(Trim(Etiqeta4.Text)));

    RegInfo.WriteInteger(_MarginLeft,StrToInt(Trim(Izquierdo.Text)));

    RegInfo.WriteInteger(_Codigo,StrToInt(Trim(Codigo.Text)));
    RegInfo.WriteInteger(_LineasCodigo,StrToInt(Trim(Acho_Codigo.Text)));
    RegInfo.WriteString(_TipoFacturas,Trim(Tipo.Text));

    RegInfo.WriteBool(_ShowPrintDialog,Legible.Checked);

    U := 'N';

    If Legible.Checked Then U := 'B';

    AssignFile(F,PrtList.Text);
    Rewrite(F);

    S := '';
    Writeln(F,S+#10);

    S := 'N';
    Writeln(F,S+#10);

    RegInfo.CloseKey;
    RegInfo.OpenKey(_CompanyInfoKey,False);
    S := Format('A%s,%s,0,1,1,1,N,%s',[Trim(Izquierdo.Text),
                                       Trim(Etiqeta1.Text),
                                       DoubleQuoted(Unencrypt(RegInfo.ReadString(_UserCompName)))]);
    Writeln(F,S+#10);


//                 B140, 31, 0, 1, 1, 10, 33,B,"1234"
    S := Format('B%s,%s,0,%s,1,10,%s,%s,%s',[Trim(Izquierdo.Text),
                                            Trim(Codigo.Text),
                                            Trim(Tipo.Text),
                                            Trim(Acho_Codigo.Text),
                                            U,
                                            DoubleQuoted(Trim(Modulo.tProductosCod_Generado.Value))]);
    Writeln(F,S+#10);

    S := Format('A%s,%s,0,1,1,1,N,%s',[Trim(Izquierdo.Text),
                                       Trim(Etiqeta2.Text),
                                       DoubleQuoted(Trim(Modulo.tProductosDescripcion.Value))]);
    Writeln(F,S+#10);

    S := Format('A%s,%s,0,1,1,1,N,%s',[Trim(Izquierdo.Text),
                                       Trim(Etiqeta3.Text),
                                       DoubleQuoted(Modulo.tProductosPrecio_Venta_Contado.Text)]);
    Writeln(F,S+#10);

    S := Format('A%s,%s,0,1,1,1,N,%s',[Trim(Izquierdo.Text),
                                       Trim(Etiqeta4.Text),
                                       DoubleQuoted(Unencrypt(RegInfo.ReadString(_UserCompPhone1)))]);
    Writeln(F,S+#10);

    S := Format('P%s',[Trim(IntToStr(Copias.Value))]);
    Writeln(F,S);
    CloseFile(F)
  Except

  end
end;

procedure TFConfigLabels.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFConfigLabels.CancelarExecute(Sender: TObject);
begin
  Close
end;

Initialization
  RegisterClass(TFConfigLabels);

end.
