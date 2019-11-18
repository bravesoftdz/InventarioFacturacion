unit PayRollForms;

interface

uses
  SysUtils, Classes, Graphics, ppCtrls, ppBarCod, ppPrnabl, ppClass,
  ppCache, ppBands, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,
  ppVar, ppModule, raCodMod, ppStrtch, ppSubRpt, ppChrt, ppChrtDP,
  ppParameter, myChkBox, ppMemo, RegKeys, ExtCtrls;

type
  TPayRoll_Forms = class(TDataModule)
    PipeEmpleados: TppDBPipeline;
    FormNomina: TppReport;
    ppTitleBand1: TppTitleBand;
    ppDBText64: TppDBText;
    ppLabel161: TppLabel;
    ppDBText65: TppDBText;
    ppLabel162: TppLabel;
    ppDBText66: TppDBText;
    ppLabel163: TppLabel;
    ppDBText67: TppDBText;
    ppLabel164: TppLabel;
    ppDBText68: TppDBText;
    ppLabel165: TppLabel;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppLabel159: TppLabel;
    ppLabel193: TppLabel;
    ppImage5: TppImage;
    ppLabel2: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel19: TppLabel;
    ppDBText1: TppDBText;
    ppLabel21: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppDBText29: TppDBText;
    ppDBText183: TppDBText;
    ppHeaderBand1: TppHeaderBand;
    ppShape5: TppShape;
    ppShape4: TppShape;
    ppShape3: TppShape;
    ppShape1: TppShape;
    ppLine1: TppLine;
    ppLabel5: TppLabel;
    ppLabel8: TppLabel;
    ppLabel16: TppLabel;
    ppLabel20: TppLabel;
    ppLabel11: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel7: TppLabel;
    ppLabel3: TppLabel;
    ppLabel1: TppLabel;
    ppLabel12: TppLabel;
    ppDBText59: TppDBText;
    ppLabel13: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText10: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppLine3: TppLine;
    Deducciones: TppSubReport;
    ppChildReport1: TppChildReport;
    ppColumnHeaderBand7: TppColumnHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText12: TppDBText;
    ppColumnFooterBand7: TppColumnFooterBand;
    PieNomina: TppFooterBand;
    ppLine2: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    Firma_1: TppLabel;
    Firma_2: TppLabel;
    Firma_3: TppLabel;
    Firma_4: TppLabel;
    ppLine10: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine5: TppLine;
    ppLabel29: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppLabel28: TppLabel;
    ppLine4: TppLine;
    ppLine6: TppLine;
    ppSubReport7: TppSubReport;
    ResumenDeducciones: TppChildReport;
    ppTitleBand6: TppTitleBand;
    ppLine43: TppLine;
    ppLabel260: TppLabel;
    ppColumnHeaderBand8: TppColumnHeaderBand;
    ppDetailBand18: TppDetailBand;
    ppDBText181: TppDBText;
    ppDBText182: TppDBText;
    ppColumnFooterBand8: TppColumnFooterBand;
    PipeListadoEmpleados: TppDBPipeline;
    PipeNomina: TppDBPipeline;
    PipeNominappField1: TppField;
    PipeNominappField2: TppField;
    PipeNominappField3: TppField;
    PipeNominappField4: TppField;
    PipeNominappField5: TppField;
    PipeNominappField6: TppField;
    PipeNominappField7: TppField;
    PipeNominappField8: TppField;
    PipeNominappField9: TppField;
    PipeNominappField10: TppField;
    PipeNominappField11: TppField;
    PipeNominappField12: TppField;
    PipeNominappField13: TppField;
    PipeNominappField14: TppField;
    PipeNominappField15: TppField;
    PipeNominappField16: TppField;
    PipeNominappField17: TppField;
    PipeNominappField18: TppField;
    PipeNominappField19: TppField;
    PipeNominappField20: TppField;
    PipeNominappField21: TppField;
    PipeNominappField22: TppField;
    PipeNominappField23: TppField;
    PipeNominappField24: TppField;
    PipeNominappField25: TppField;
    PipeNominappField26: TppField;
    PipeNominappField27: TppField;
    PipeDetalle_Nomina: TppDBPipeline;
    PipeDetalle_Deducciones: TppDBPipeline;
    PipeDetalle_Pagos: TppDBPipeline;
    PipeListadoLaboral: TppDBPipeline;
    PipeDepartamentos: TppDBPipeline;
    PipeDepartamentosppField1: TppField;
    PipeDepartamentosppField2: TppField;
    PipeDepartamentosppField3: TppField;
    PipeDepartamentosppField4: TppField;
    PipeDepartamentosppField5: TppField;
    PipeDepartamentosppField6: TppField;
    PipeDepartamentosppField7: TppField;
    PipeDepartamentosppField8: TppField;
    PipeDepartamentosppField9: TppField;
    PipeDepartamentosppField10: TppField;
    PipeDepartamentosppField11: TppField;
    PipeResumenDeducciones: TppDBPipeline;
    PipeResumenDeduccionesppField1: TppField;
    PipeResumenDeduccionesppField2: TppField;
    PipeResumenDeduccionesppField3: TppField;
    ListadoEmpleados: TppReport;
    FormRegalia: TppReport;
    ppTitleBand7: TppTitleBand;
    ppDBText184: TppDBText;
    ppLabel261: TppLabel;
    ppDBText185: TppDBText;
    ppLabel262: TppLabel;
    ppDBText186: TppDBText;
    ppLabel263: TppLabel;
    ppDBText187: TppDBText;
    ppLabel264: TppLabel;
    ppDBText188: TppDBText;
    ppLabel265: TppLabel;
    ppLabel266: TppLabel;
    ppLabel267: TppLabel;
    ppLabel268: TppLabel;
    ppLabel269: TppLabel;
    ppImage7: TppImage;
    ppLabel270: TppLabel;
    ppLabel271: TppLabel;
    ppLabel272: TppLabel;
    ppLabel273: TppLabel;
    ppLabel274: TppLabel;
    ppLabel275: TppLabel;
    ppDBText189: TppDBText;
    ppLabel276: TppLabel;
    ppLabel277: TppLabel;
    ppLabel278: TppLabel;
    ppDBText190: TppDBText;
    ppDBText191: TppDBText;
    ppHeaderBand5: TppHeaderBand;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppLine44: TppLine;
    ppLabel279: TppLabel;
    ppLabel280: TppLabel;
    ppLabel281: TppLabel;
    ppLabel286: TppLabel;
    ppLabel287: TppLabel;
    ppLabel288: TppLabel;
    ppLabel289: TppLabel;
    ppLabel290: TppLabel;
    ppLabel291: TppLabel;
    ppDBText192: TppDBText;
    ppLabel292: TppLabel;
    ppDetailBand19: TppDetailBand;
    ppDBText193: TppDBText;
    ppDBText195: TppDBText;
    ppDBText197: TppDBText;
    ppDBText198: TppDBText;
    ppDBText200: TppDBText;
    ppDBText201: TppDBText;
    ppDBText202: TppDBText;
    ppLine45: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLine47: TppLine;
    ppLine46: TppLine;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable7: TppSystemVariable;
    ppLabel293: TppLabel;
    ppLabel294: TppLabel;
    ppLabel295: TppLabel;
    ppLabel296: TppLabel;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine51: TppLine;
    ppSummaryBand4: TppSummaryBand;
    ppLine52: TppLine;
    ppLabel297: TppLabel;
    ppDBCalc15: TppDBCalc;
    ppLabel304: TppLabel;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppTitleBand2: TppTitleBand;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppDBText8: TppDBText;
    ppDBText11: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppLine12: TppLine;
    Nombre_Siglas_Clientes: TppLabel;
    Direccion_Ciudad_Pais_Clientes: TppLabel;
    Telefono_Fax_Rnc_Clientes: TppLabel;
    ppLine13: TppLine;
    ppLabel34: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel50: TppLabel;
    Titulo: TppLabel;
    ppLine11: TppLine;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppDBText18: TppDBText;
    ppLabel38: TppLabel;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppLine14: TppLine;
    Foto: TppImage;
    ListadoLaboral: TppReport;
    ppTitleBand3: TppTitleBand;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppHeaderBand3: TppHeaderBand;
    ppLine15: TppLine;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel48: TppLabel;
    ppLine16: TppLine;
    ppDetailBand4: TppDetailBand;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText34: TppDBText;
    ppDBText37: TppDBText;
    ppLabel49: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLine17: TppLine;
    ppFooterBand3: TppFooterBand;
    ppLine18: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppLabel54: TppLabel;
    ppDBText36: TppDBText;
    Compania_Informacion_Laboral: TppLabel;
    Departamento_Informacion_Laboral: TppLabel;
    ppLabel30: TppLabel;
    ppLine19: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppTitleBand4: TppTitleBand;
    ppLine20: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape14: TppShape;
    ppDBText239: TppDBText;
    procedure PieNominaBeforePrint(Sender: TObject);
    procedure FotoPrint(Sender: TObject);
    procedure ReportHeaderName(Sender: TObject);
    procedure ReportHeaderAddress(Sender: TObject);
    procedure ReportHeaderPhones(Sender: TObject);
    procedure UserPrint(Sender: TObject);
    procedure LogoPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    _Seccion  : String;
  end;

var
  PayRoll_Forms   : TPayRoll_Forms;

implementation

uses  Utilidades, DB, DataNomina;

{$R *.dfm}

procedure TPayRoll_Forms.ReportHeaderName(Sender: TObject);
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,False);
  {Informacion  General}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_CompanyInfoKey,False);
  (Sender as TppLabel).Caption         := Unencrypt(RegInfo.ReadString(_UserCompName));
  (Sender as TppLabel).Alignment := TAlignment(RegInfo.ReadInteger(_UserCompAlignment));

  {Alineación}
  If Trim(_Seccion) <> '' Then
    Begin
      RegInfo.CloseKey;
      RegInfo.OpenKey(_Seccion,False);
      (Sender as TppLabel).Alignment := TAlignment(RegInfo.ReadInteger(_Alignment))
    End
end;


procedure TPayRoll_Forms.ReportHeaderAddress(Sender: TObject);
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,False);
  {Informacion  General}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_CompanyInfoKey,False);
  (Sender As TppLabel).Caption := Format ('%s, %s, %s',[Unencrypt(RegInfo.ReadString(_UserCompAddres)),
                                                         Unencrypt(RegInfo.ReadString(_UserCompCity)),
                                                         Unencrypt(RegInfo.ReadString(_UserCompCountry))]);

  {Alineación}
  (Sender as TppLabel).Alignment := TAlignment(RegInfo.ReadInteger(_UserCompAlignment));

  If Trim(_Seccion) <> '' Then
    Begin
      RegInfo.CloseKey;
      RegInfo.OpenKey(_Seccion,False);
      (Sender as TppLabel).Alignment := TAlignment(RegInfo.ReadInteger(_Alignment))
    End
end;

procedure TPayRoll_Forms.ReportHeaderPhones(Sender: TObject);
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,False);
  {Informacion  General}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_CompanyInfoKey,False);
  (Sender As TppLabel).Caption      := Format ('%s, %s, %s',[Unencrypt(RegInfo.ReadString(_UserCompPhone1)),
                                                         Unencrypt(RegInfo.ReadString(_UserCompPhone2)),
                                                         Unencrypt(RegInfo.ReadString(_UserCompRNC))]);
  {Alineación}
  (Sender as TppLabel).Alignment := TAlignment(RegInfo.ReadInteger(_UserCompAlignment));

  If Trim(_Seccion) <> '' Then
    Begin
      RegInfo.CloseKey;
      RegInfo.OpenKey(_Seccion,False);
      (Sender as TppLabel).Alignment := TAlignment(RegInfo.ReadInteger(_Alignment))
    End
end;

procedure TPayRoll_Forms.UserPrint(Sender: TObject);
begin
  (Sender as TppLabel).Caption := Format('Impreso Por %s - %s',[_CurrentUser,_CurrentTerminal])
end;

procedure TPayRoll_Forms.FotoPrint(Sender: TObject);
  Var
    Img : TImage;
begin
  Img := TImage.Create(Self);
  FOTOLoadAndDisplay(ModuloNomina.tListado_EmpleadosFoto,Img,_DefaultClientImg);
  Foto.Picture := Img.Picture;
  Img.Free
end;

procedure TPayRoll_Forms.LogoPrint(Sender: TObject);
  Var
    LogoName : String;
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_CompanyInfoKey,False);
  LogoName := UnEncrypt(RegInfo.ReadString(_LogoName));
  Try
    (Sender As TppImage).Picture.LoadFromFile(LogoName);
  Except
    (Sender As TppImage).Visible := False
  End {Try}
end;

procedure TPayRoll_Forms.PieNominaBeforePrint(Sender: TObject);
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_Prl_DataRouteKey,False);

  Firma_1.Caption := RegInfo.ReadString(_Caption_Firma_1);
  Firma_2.Caption := RegInfo.ReadString(_Caption_Firma_2);
  Firma_3.Caption := RegInfo.ReadString(_Caption_Firma_3);
  Firma_4.Caption := RegInfo.ReadString(_Caption_Firma_4)
end;

Initialization
  RegisterClass(TPayRoll_Forms);

end.
