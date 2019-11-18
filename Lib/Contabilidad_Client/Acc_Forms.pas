unit Acc_Forms;

interface

uses
  SysUtils, Classes, Graphics, ppCtrls, ppBarCod, ppPrnabl, ppClass,
  ppCache, ppBands, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,
  ppVar, ppModule, raCodMod, ppStrtch, ppSubRpt, ppChrt, ppChrtDP,
  ppParameter, myChkBox, ppMemo, RegKeys;

type
  TAccountingForms = class(TDataModule)
    PipeListado_Cuentas: TppDBPipeline;
    PipeAuxiliares: TppDBPipeline;
    PipeControles: TppDBPipeline;
    ppField1: TppField;
    ppField2: TppField;
    ppField3: TppField;
    ppField4: TppField;
    ppField5: TppField;
    ReporteCatalogo_Cuentas: TppReport;
    PipeReportes: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    Numero_Cuenta_Catalogo: TppDBText;
    ppLabel3: TppLabel;
    Descripcion_Cuenta_Catalogo: TppDBText;
    ppLabel7: TppLabel;
    ppDBText12: TppDBText;
    ppLabel14: TppLabel;
    ppLine2: TppLine;
    Titulo: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    PipePrincipales: TppDBPipeline;
    LCostoPromedio: TppLabel;
    Usuario: TppLabel;
    PipeTransacciones: TppDBPipeline;
    PipeDetalle_Transacciones: TppDBPipeline;
    FormEntrada_Diario: TppReport;
    InvoiceTitleBand: TppTitleBand;
    ppDBText63: TppDBText;
    ppLabel161: TppLabel;
    ppDBText65: TppDBText;
    ppLabel162: TppLabel;
    ppDBText66: TppDBText;
    ppLabel163: TppLabel;
    ppDBText67: TppDBText;
    ppLabel164: TppLabel;
    ppDBText68: TppDBText;
    ppLabel165: TppLabel;
    Logo: TppImage;
    InvoiceHeaderBand: TppHeaderBand;
    ppLabel166: TppLabel;
    ppLabel167: TppLabel;
    ppLabel173: TppLabel;
    ppDetailBand11: TppDetailBand;
    Codigo: TppDBText;
    ppDBText70: TppDBText;
    ppDBText75: TppDBText;
    InvoiceFooterBand: TppFooterBand;
    FooterLine: TppLine;
    ppSystemVariable16: TppSystemVariable;
    ppSystemVariable17: TppSystemVariable;
    LSubTotal: TppLabel;
    Sub_Total: TppDBText;
    InvoicePaidLabel: TppLabel;
    InvoicePaidAmmount: TppDBText;
    ppDBText94: TppDBText;
    InvoiceCompanyAddress: TppLabel;
    InvoiceCompanyPhone: TppLabel;
    InvoiceCompanyName: TppLabel;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppLabel159: TppLabel;
    ppLabel193: TppLabel;
    Squared: TppShape;
    ppSummaryBand12: TppSummaryBand;
    ppLine54: TppLine;
    ppLabel333: TppLabel;
    ppLabel334: TppLabel;
    ppDBMemo2: TppDBMemo;
    ppImage1: TppImage;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel10: TppLabel;
    ppDBText2: TppDBText;
    Linea_Catalogo: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText1: TppDBText;
    Estado_Situacion: TppReport;
    ppTitleBand2: TppTitleBand;
    ppImage2: TppImage;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppHeaderBand2: TppHeaderBand;
    ppLabel12: TppLabel;
    ppDetailBand1: TppDetailBand;
    Descripcion_Situacion: TppDBText;
    Balance_Estado_Situacion: TppDBText;
    Linea_Situacion: TppLine;
    ppFooterBand2: TppFooterBand;
    ppLine7: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel18: TppLabel;
    PipeEstado_Situacion: TppDBPipeline;
    PipeEstado_Ingresos_Gastos: TppDBPipeline;
    PipeBalanza_Comprobacion: TppDBPipeline;
    Estado_Ingresos_Gastos: TppReport;
    ppTitleBand3: TppTitleBand;
    ppImage3: TppImage;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppLine10: TppLine;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel23: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    Resultado: TppLabel;
    Utilidad_Ingresos_Gastos: TppVariable;
    Balanza_Comprobacion: TppReport;
    PipeMayor: TppDBPipeline;
    Form_Mayor: TppReport;
    ppTitleBand5: TppTitleBand;
    ppImage5: TppImage;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppHeaderBand5: TppHeaderBand;
    ppLabel31: TppLabel;
    ppLine12: TppLine;
    ppLabel32: TppLabel;
    ppLine14: TppLine;
    ppDetailBand5: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppFooterBand5: TppFooterBand;
    ppLine16: TppLine;
    ppSystemVariable9: TppSystemVariable;
    ppSystemVariable10: TppSystemVariable;
    ppLabel33: TppLabel;
    ppSummaryBand3: TppSummaryBand;
    ppLabel34: TppLabel;
    Cuenta_Mayor: TppLabel;
    Fecha_Mayor: TppLabel;
    ppDBText6: TppDBText;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    Debitos: TppDBCalc;
    Creditos: TppDBCalc;
    Balance_Mayor: TppVariable;
    ppLine15: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    Form_Listado_Transacciones: TppReport;
    ppTitleBand6: TppTitleBand;
    ppImage6: TppImage;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel40: TppLabel;
    ppHeaderBand6: TppHeaderBand;
    ppLabel41: TppLabel;
    ppLine19: TppLine;
    ppLabel42: TppLabel;
    ppLine20: TppLine;
    Fecha_Listado_Transacciones: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppDetailBand6: TppDetailBand;
    Creditos_Listado_Transacciones: TppDBText;
    Debitos_Listado_Transacciones: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppFooterBand6: TppFooterBand;
    ppLine21: TppLine;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLabel48: TppLabel;
    ppSummaryBand4: TppSummaryBand;
    ppLabel49: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    PipeListado_Transacciones: TppDBPipeline;
    ppDBText11: TppDBText;
    ppLabel50: TppLabel;
    Origen_Mayor: TppVariable;
    Grupo_Estado_Situacion: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    Nombre_Cuenta_Principal_Situacion: TppLabel;
    Total_Balance_Estado_Situacion: TppDBCalc;
    Punto_Creditos: TppLine;
    Punto_Debitos: TppLine;
    Nombre_Total_Principal_Situacion: TppLabel;
    Fecha_Situacion: TppLabel;
    Grupo_Ingresos_Gastos: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    Nombre_Cuenta_Principal_Ingresos_Gastos: TppLabel;
    ppLine1: TppLine;
    Punto_Creditos_Ingresos: TppLine;
    Punto_Debitos_Ingresos: TppLine;
    Total_Balance_Estado_Ingresos_Gastos: TppDBCalc;
    Nombre_Total_Principal_Ingresos_Gastos: TppLabel;
    ppDBText7: TppDBText;
    Balance_Estado_Ingresos_Gastos: TppDBText;
    Titulo_Ingresos: TppLabel;
    Fecha_Ingresos: TppLabel;
    ppSummaryBand5: TppSummaryBand;
    ppLabel15: TppLabel;
    Total_Pasivo_Capital_Situacion: TppVariable;
    ppParameterList1: TppParameterList;
    ppTitleBand4: TppTitleBand;
    ppImage4: TppImage;
    ppLabel13: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppHeaderBand4: TppHeaderBand;
    Titulo_Balanza: TppLabel;
    Fecha_Balanza: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText8: TppDBText;
    Balance_Balanza: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppLine5: TppLine;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppLabel25: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppLabel26: TppLabel;
    Balance_Creditos_Balanza: TppVariable;
    ppLine8: TppLine;
    ppLine9: TppLine;
    Balance_Debitos_Balanza: TppVariable;
    ppDBText13: TppDBText;
    ppLine6: TppLine;
    ppLabel22: TppLabel;
    ppLine11: TppLine;
    ppLabel24: TppLabel;
    ppLabel27: TppLabel;
    ppLabel43: TppLabel;
    ppLine13: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    Total_Activos_Situacion: TppVariable;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    procedure Balanza_ComprobacionEndFirstPass(Sender: TObject);
    procedure Estado_SituacionEndFirstPass(Sender: TObject);
    procedure ppSummaryBand5BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand2BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand2BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand3BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure ppDetailBand4BeforePrint(Sender: TObject);
    procedure Estado_Ingresos_GastosEndFirstPass(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
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
  AccountingForms : TAccountingForms;
  Activos         : Currency = 0;
  Pasivos_Capital : Currency = 0;
  Ingresado       : Currency = 0;
  Gastado         : Currency = 0;

implementation

uses  Utilidades, DB, DataModuloContabilidad;

{$R *.dfm}

procedure TAccountingForms.ReportHeaderName(Sender: TObject);
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

procedure TAccountingForms.ppDetailBand1BeforePrint(Sender: TObject);
begin
  If (Trim(ModuloContabilidad.tEstado_SituacionOrigen.Value) = 'Activos') Then
    Begin
      Balance_Estado_Situacion.Left := Punto_Debitos.Left;
      Activos := Activos + ModuloContabilidad.tEstado_SituacionBalance.Value
    end
  Else
    Begin
      Balance_Estado_Situacion.Left := Punto_Creditos.Left;
      Pasivos_Capital := Pasivos_Capital + ModuloContabilidad.tEstado_SituacionBalance.Value
    end;
end;

procedure TAccountingForms.ppDetailBand2BeforePrint(Sender: TObject);
begin
  If (Trim(ModuloContabilidad.tEstado_Ingresos_GastosOrigen.Value) = 'Gastos') Then
    Begin
      Balance_Estado_Ingresos_Gastos.Left := Punto_Debitos.Left;
      Gastado := Gastado + ModuloContabilidad.tEstado_Ingresos_GastosBalance.Value
    end
  Else
    Begin
      Balance_Estado_Ingresos_Gastos.Left := Punto_Creditos.Left;
      Ingresado := Ingresado + ModuloContabilidad.tEstado_Ingresos_GastosBalance.Value
    end
end;

procedure TAccountingForms.ppDetailBand3BeforePrint(Sender: TObject);
begin
  If Trim(ModuloContabilidad.tListado_CuentasTipo.Value) = 'Principal' Then
    Begin
      Numero_Cuenta_Catalogo.Font.Size := 12;
      Numero_Cuenta_Catalogo.Font.Style := [fsBold];
      Descripcion_Cuenta_Catalogo.Font := Numero_Cuenta_Catalogo.Font;
      Linea_Catalogo.Visible := True
    end;

  If Trim(ModuloContabilidad.tListado_CuentasTipo.Value) = 'Control' Then
    Begin
      Numero_Cuenta_Catalogo.Font.Size := 10;
      Numero_Cuenta_Catalogo.Font.Style := [fsBold];
      Descripcion_Cuenta_Catalogo.Font := Numero_Cuenta_Catalogo.Font;
      Linea_Catalogo.Visible := False
    end;

  If Trim(ModuloContabilidad.tListado_CuentasTipo.Value) = 'Auxiliar' Then
    Begin
      Numero_Cuenta_Catalogo.Font.Size := 9;
      Numero_Cuenta_Catalogo.Font.Style := [];
      Descripcion_Cuenta_Catalogo.Font := Numero_Cuenta_Catalogo.Font;
      Linea_Catalogo.Visible := False
    end;
end;

procedure TAccountingForms.ppDetailBand4BeforePrint(Sender: TObject);
begin
  If (Trim(ModuloContabilidad.tBalanza_ComprobacionOrigen.Value) = 'Activos') Or
     (Trim(ModuloContabilidad.tBalanza_ComprobacionOrigen.Value) = 'Gastos') Then
    Begin
      Balance_Balanza.Left := Punto_Debitos.Left;
      Activos := Activos + ModuloContabilidad.tBalanza_ComprobacionBalance.Value
    end
  Else
    Begin
      Balance_Balanza.Left := Punto_Creditos.Left;
      Pasivos_Capital := Pasivos_Capital + ModuloContabilidad.tBalanza_ComprobacionBalance.Value
    end
end;

procedure TAccountingForms.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
  If (Trim(ModuloContabilidad.tEstado_SituacionOrigen.Value) = 'Activos') Then
    Total_Balance_Estado_Situacion.Left := Punto_Debitos.Left
  Else
    Total_Balance_Estado_Situacion.Left := Punto_Creditos.Left
end;

procedure TAccountingForms.ppGroupFooterBand2BeforePrint(Sender: TObject);
begin
  If (Trim(ModuloContabilidad.tEstado_Ingresos_GastosOrigen.Value) = 'Gastos') Then
    Total_Balance_Estado_Ingresos_Gastos.Left := Punto_Debitos.Left
  Else
    Total_Balance_Estado_Ingresos_Gastos.Left := Punto_Creditos.Left
end;

procedure TAccountingForms.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
  ModuloContabilidad.tListado_Cuentas.Locate(ModuloContabilidad.tListado_CuentasNumero.FieldName,
                                             ModuloContabilidad.tEstado_SituacionPrincipal.Value,
                                             []);
  Nombre_Cuenta_Principal_Situacion.Caption := ModuloContabilidad.tListado_CuentasDescripcion.Value;
  Nombre_Total_Principal_Situacion.Caption := 'Total ' + ModuloContabilidad.tListado_CuentasDescripcion.Value
end;

procedure TAccountingForms.ppGroupHeaderBand2BeforePrint(Sender: TObject);
begin
  ModuloContabilidad.tListado_Cuentas.Locate(ModuloContabilidad.tListado_CuentasNumero.FieldName,
                                             ModuloContabilidad.tEstado_Ingresos_GastosPrincipal.Value,
                                             []);
  Nombre_Cuenta_Principal_Ingresos_Gastos.Caption := ModuloContabilidad.tListado_CuentasDescripcion.Value;
  Nombre_Total_Principal_Ingresos_Gastos.Caption := 'Total ' + ModuloContabilidad.tListado_CuentasDescripcion.Value
end;

procedure TAccountingForms.ppSummaryBand1BeforePrint(Sender: TObject);
  Const
     Utilidad : Array [False..True] Of String = ('Pérdida del Período', 'Utilidad del Período');
begin
  Utilidad_Ingresos_Gastos.Value := Ingresado - Gastado;
  If Ingresado > Gastado Then
    Utilidad_Ingresos_Gastos.Left := Punto_Creditos_Ingresos.Left
  Else
    Utilidad_Ingresos_Gastos.Left := Punto_Debitos_Ingresos.Left;

  Resultado.Caption := Utilidad [Ingresado > Gastado]
end;

procedure TAccountingForms.ppSummaryBand2BeforePrint(Sender: TObject);
begin
  Balance_Debitos_Balanza.Value := Activos;
  Balance_Creditos_Balanza.Value := Pasivos_Capital
end;

procedure TAccountingForms.ppSummaryBand3BeforePrint(Sender: TObject);
begin
{Activos
Pasivos
Capital
Ingresos
Gastos
}
  If (Trim(ModuloContabilidad.tMayorOrigen.AsString) = 'Activos') Or
     (Trim(ModuloContabilidad.tMayorOrigen.AsString) = 'Gastos') Then
    Balance_Mayor.AsCurrency := Debitos.Value - Creditos.Value
  Else
    Balance_Mayor.AsCurrency := Creditos.Value - Debitos.Value
end;

procedure TAccountingForms.ppSummaryBand5BeforePrint(Sender: TObject);
begin
  Total_Pasivo_Capital_Situacion.AsCurrency := Pasivos_Capital;
  Total_Activos_Situacion.AsCurrency := Activos
end;

procedure TAccountingForms.ReportHeaderAddress(Sender: TObject);
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

procedure TAccountingForms.ReportHeaderPhones(Sender: TObject);
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

procedure TAccountingForms.UserPrint(Sender: TObject);
begin
  (Sender as TppLabel).Caption := Format('Impreso Por %s - %s',[_CurrentUser,_CurrentTerminal])
end;

procedure TAccountingForms.Balanza_ComprobacionEndFirstPass(Sender: TObject);
begin
  Activos := 0;
  Pasivos_Capital := 0
end;

procedure TAccountingForms.Estado_Ingresos_GastosEndFirstPass(Sender: TObject);
begin
  Ingresado := 0;
  Gastado := 0
end;

procedure TAccountingForms.Estado_SituacionEndFirstPass(Sender: TObject);
begin
  Activos := 0;
  Pasivos_Capital := 0
end;

procedure TAccountingForms.LogoPrint(Sender: TObject);
  Var
    LogoName : String;
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_CompanyInfoKey,False);
  LogoName := UnEncrypt(RegInfo.ReadString(_LogoName));
  Try
    (Sender As TppImage).Picture.LoadFromFile(LogoName);
  Except
    Logo.Visible := False
  End {Try}
end;

Initialization
  RegisterClass(TAccountingForms);


end.
