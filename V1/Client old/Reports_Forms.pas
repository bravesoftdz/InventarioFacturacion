unit Reports_Forms;

interface

uses
  SysUtils, Classes, Graphics, ppCtrls, ppBarCod, ppPrnabl, ppClass,
  ppCache, ppBands, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,
  ppVar, ppModule, raCodMod;

type
  TReportsAndForms = class(TDataModule)
    PipeVencimientos: TppDBPipeline;
    PipeVencimientosppField1: TppField;
    PipeVencimientosppField2: TppField;
    PipeVencimientosppField3: TppField;
    PipeVencimientosppField4: TppField;
    PipeVencimientosppField5: TppField;
    Labels: TppReport;
    ppDetailBand1: TppDetailBand;
    Descripcion_Etiqueta: TppDBText;
    Nombre_Comp: TppLabel;
    Cod_Generado: TppDBBarCode;
    Tel_Comp: TppLabel;
    PipeProductos: TppDBPipeline;
    PipeProductosppField1: TppField;
    PipeProductosppField2: TppField;
    PipeProductosppField3: TppField;
    PipeProductosppField4: TppField;
    PipeProductosppField5: TppField;
    PipeProductosppField6: TppField;
    PipeProductosppField7: TppField;
    PipeProductosppField8: TppField;
    PipeProductosppField9: TppField;
    PipeProductosppField10: TppField;
    PipeProductosppField11: TppField;
    PipeProductosppField12: TppField;
    PipeProductosppField13: TppField;
    PipeProductosppField14: TppField;
    PipeProductosppField15: TppField;
    PipeProductosppField16: TppField;
    PipeProductosppField17: TppField;
    PipeProductosppField18: TppField;
    PipeProductosppField19: TppField;
    PipeProductosppField20: TppField;
    PipeProductosppField21: TppField;
    PipeProductosppField22: TppField;
    PipeProductosppField23: TppField;
    PipeProductosppField24: TppField;
    PipeProductosppField25: TppField;
    PipeProductosppField26: TppField;
    PipeProductosppField27: TppField;
    PipeProductosppField28: TppField;
    PipeProductosppField29: TppField;
    PipeProductosppField30: TppField;
    PipeProductosppField31: TppField;
    PipeProductosppField32: TppField;
    PipeProductosppField33: TppField;
    PipeProductosppField34: TppField;
    PipeProductosppField35: TppField;
    PipeProductosppField36: TppField;
    PipeProductosppField37: TppField;
    PipeProductosppField38: TppField;
    PipeProductosppField39: TppField;
    PipeProductosppField40: TppField;
    PipeProductosppField41: TppField;
    PipeProductosppField42: TppField;
    PipeProductosppField43: TppField;
    PipeProductosppField44: TppField;
    PipeProductosppField45: TppField;
    PipeProductosppField46: TppField;
    PipeProductosppField47: TppField;
    PipeProductosppField48: TppField;
    PipeProductosppField49: TppField;
    Empty: TppReport;
    ppDetailBand2: TppDetailBand;
    ppImage1: TppImage;
    ppLabel1: TppLabel;
    PipeDetalles_Compra: TppDBPipeline;
    ppField1: TppField;
    ppField2: TppField;
    ppField3: TppField;
    ppField4: TppField;
    ppField5: TppField;
    ReporteProductos_Fabricante: TppReport;
    PipeReportes: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppDBText12: TppDBText;
    ppLabel14: TppLabel;
    ppDBText15: TppDBText;
    ppLabel17: TppLabel;
    ppDBText28: TppDBText;
    ppLabel30: TppLabel;
    ppLine2: TppLine;
    Nombre_Siglas_Clientes: TppLabel;
    Direccion_Ciudad_Pais_Clientes: TppLabel;
    Telefono_Fax_Rnc_Clientes: TppLabel;
    Titulo: TppLabel;
    ppGroup1: TppGroup;
    CabezaGrupo: TppGroupHeaderBand;
    PieGrupo: TppGroupFooterBand;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLabel2: TppLabel;
    ppLabel6: TppLabel;
    PipeFabricante: TppDBPipeline;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    CostoPromedio: TppVariable;
    PrecioContado: TppVariable;
    TCostoPromedio: TppVariable;
    TPrecioContado: TppVariable;
    ppLabel12: TppLabel;
    ppLabel16: TppLabel;
    ppLabel20: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    TGCostoPromedio: TppVariable;
    TGPrecioContado: TppVariable;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel28: TppLabel;
    Usuario: TppLabel;
    ppLine1: TppLine;
    ppLine5: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    Depto_Fabricante: TppLabel;
    Elemento_Fabricante: TppLabel;
    Status_Fabricante: TppLabel;
    Tipo_Fabricante: TppLabel;
    ReporteProductos_Proveedores: TppReport;
    ppTitleBand2: TppTitleBand;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppHeaderBand2: TppHeaderBand;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    Depto_Proveedor: TppLabel;
    Elemento_Proveedor: TppLabel;
    Status_Proveedor: TppLabel;
    Tipo_Proveedor: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppVariable1: TppVariable;
    ppVariable2: TppVariable;
    ppFooterBand2: TppFooterBand;
    ppLine6: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel53: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppLine7: TppLine;
    ppDBCalc3: TppDBCalc;
    ppVariable3: TppVariable;
    ppVariable5: TppVariable;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel59: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine8: TppLine;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLine9: TppLine;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc4: TppDBCalc;
    ppVariable9: TppVariable;
    ppVariable11: TppVariable;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel73: TppLabel;
    ppLine10: TppLine;
    ppLabel76: TppLabel;
    ppGroup3: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    PipeProveedor: TppDBPipeline;
    NombreFabricante_Proveedor: TppLabel;
    NombreProveedor: TppLabel;
    NombreFabricante: TppLabel;
    Nombre_Fabricante: TppLabel;
    Num_Fabricante: TppLabel;
    Num_Fabricante_Proveedor: TppLabel;
    Num_Proveedor: TppLabel;
    Nombre_Fabricante_Proveedor: TppLabel;
    Reporte_Vencimientos: TppReport;
    Pipe_Criterio_Vencimiento: TppDBPipeline;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand5: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppTitleBand3: TppTitleBand;
    ppDBText2: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText13: TppDBText;
    ppGroup4: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBCalc5: TppDBCalc;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel27: TppLabel;
    ppLabel29: TppLabel;
    Clasificacion: TppLabel;
    ppLabel57: TppLabel;
    ppLine11: TppLine;
    ppLabel21: TppLabel;
    ppLabel26: TppLabel;
    MES: TppVariable;
    ppLine13: TppLine;
    Criterio: TppLabel;
    ppLine12: TppLine;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel22: TppLabel;
    ppDBText3: TppDBText;
    Reporte_Ventas: TppReport;
    ppTitleBand4: TppTitleBand;
    ppHeaderBand4: TppHeaderBand;
    ppDetailBand6: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppLine14: TppLine;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppDBCalc6: TppDBCalc;
    Pagado: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    TotalNeto: TppDBCalc;
    ppLabel31: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    TotalEfectivo: TppVariable;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    TotaPagadoFact: TppVariable;
    ppLine15: TppLine;
    ppSummaryBand3: TppSummaryBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLine18: TppLine;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppDBText34: TppDBText;
    ppLabel94: TppLabel;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLine19: TppLine;
    ppLabel101: TppLabel;
    ppDBText35: TppDBText;
    Pipe_Facturas: TppDBPipeline;
    ppLabel50: TppLabel;
    ppLabel58: TppLabel;
    ppLabel71: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    procedure ReportHeaderName(Sender: TObject);
    procedure ReportHeaderAddress(Sender: TObject);
    procedure ReportHeaderPhones(Sender: TObject);
    procedure CabezaGrupoBeforePrint(Sender: TObject);
    procedure CostoPromedioCalc(Sender: TObject; var Value: Variant);
    procedure PrecioContadoCalc(Sender: TObject; var Value: Variant);
    procedure PrecioCreditoCalc(Sender: TObject; var Value: Variant);
    procedure PrecioMinimoCalc(Sender: TObject; var Value: Variant);
    procedure CostoUltimoCalc(Sender: TObject; var Value: Variant);
    procedure CostoStandarCalc(Sender: TObject; var Value: Variant);
    procedure PieGrupoAfterPrint(Sender: TObject);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure MESCalc(Sender: TObject; var Value: Variant);
    procedure UserPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReportsAndForms      : TReportsAndForms;

implementation

uses DataModulo, Utilidades, DB;

{$R *.dfm}

procedure TReportsAndForms.ReportHeaderName(Sender: TObject);
begin
  RegInfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,False);
  {Informacion  General}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_CompanyInfoKey,False);
  (Sender as TppLabel).Caption         := Unencrypt(RegInfo.ReadString(_UserCompName));

  {Alineación}
  (Sender as TppLabel).Alignment := TAlignment(RegInfo.ReadInteger(_UserCompAlignment))
end;

procedure TReportsAndForms.ReportHeaderAddress(Sender: TObject);
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
  (Sender As TppLabel).Alignment := TAlignment(RegInfo.ReadInteger(_UserCompAlignment))
end;

procedure TReportsAndForms.ReportHeaderPhones(Sender: TObject);
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
  (Sender As TppLabel).Alignment := TAlignment(RegInfo.ReadInteger(_UserCompAlignment))
end;

procedure TReportsAndForms.CabezaGrupoBeforePrint(Sender: TObject);
begin
  NombreFabricante_Proveedor.Caption := 'No Definido';
  Num_Fabricante.Caption := Pad('L',Modulo.tReporter.FieldByName('Fabricante').AsString,6,'0');
  Num_Fabricante_Proveedor.Caption := Pad('L',Modulo.tReporter.FieldByName('Fabricante').AsString,6,'0');
  If Modulo.tFabricante.Locate(Modulo.tFabricanteNumero.FieldName,
                                    Modulo.tReporter.FieldByName('Fabricante').AsInteger,
                                    []) Then NombreFabricante_Proveedor.Caption := Modulo.tFabricanteNombre.Value;

  NombreFabricante.Caption := NombreFabricante_Proveedor.Caption;
  Nombre_Fabricante_Proveedor.Caption := NombreFabricante_Proveedor.Caption;
  Nombre_Fabricante.Caption := NombreFabricante_Proveedor.Caption
end;

procedure TReportsAndForms.CostoPromedioCalc(Sender: TObject;
  var Value: Variant);
begin
  Value := Modulo.tReporter.FieldByName('Existencia').AsFloat *
           Modulo.tReporter.FieldByName('Costo_Promedio').AsFloat;

  TCostoPromedio.AsCurrency := TCostoPromedio.AsCurrency + Value;
  TGCostoPromedio.AsCurrency := TGCostoPromedio.AsCurrency + Value
end;

procedure TReportsAndForms.PrecioContadoCalc(Sender: TObject;
  var Value: Variant);
begin
  Value := Modulo.tReporter.FieldByName('Existencia').AsFloat *
           Modulo.tReporter.FieldByName('Precio_Venta_Contado').AsFloat;

  TPrecioContado.AsCurrency := TPrecioContado.AsCurrency + Value;
  TGPrecioContado.AsCurrency := TGPrecioContado.AsCurrency + Value
end;

procedure TReportsAndForms.PrecioCreditoCalc(Sender: TObject;
  var Value: Variant);
begin
  Value := Modulo.tReporter.FieldByName('Existencia').AsFloat *
           Modulo.tReporter.FieldByName('Precio_Venta_Credito').AsFloat;

//  TPrecioCredito.AsCurrency := TPrecioCredito.AsCurrency + Value;
//  TGPrecioCredito.AsCurrency := TGPrecioCredito.AsCurrency + Value
end;

procedure TReportsAndForms.PrecioMinimoCalc(Sender: TObject;
  var Value: Variant);
begin
  Value := Modulo.tReporter.FieldByName('Existencia').AsFloat *
           Modulo.tReporter.FieldByName('Precio_Venta_Minimo').AsFloat;

//  TPrecioMinimo.AsCurrency := TPrecioMinimo.AsCurrency + Value;
//  TGPrecioMinimo.AsCurrency := TGPrecioMinimo.AsCurrency + Value
end;

procedure TReportsAndForms.CostoUltimoCalc(Sender: TObject;
  var Value: Variant);
begin
  Value := Modulo.tReporter.FieldByName('Existencia').AsFloat *
           Modulo.tReporter.FieldByName('Ultimo_Precio_Compra').AsFloat;

//  TCostoUltimo.AsCurrency := TCostoUltimo.AsCurrency + Value;
//  TGCostoUltimo.AsCurrency := TGCostoUltimo.AsCurrency + Value
end;

procedure TReportsAndForms.CostoStandarCalc(Sender: TObject;
  var Value: Variant);
begin
  Value := Modulo.tReporter.FieldByName('Existencia').AsFloat *
           Modulo.tReporter.FieldByName('Costo_Standar').AsFloat;

//  TCostoStandar.AsCurrency := TCostoStandar.AsCurrency + Value;
//  TGCostoStandar.AsCurrency := TGCostoStandar.AsCurrency + Value
end;

procedure TReportsAndForms.PieGrupoAfterPrint(Sender: TObject);
begin
  TCostoPromedio.AsCurrency := 0;
//  TCostoStandar.AsCurrency := 0;
//  TCostoUltimo.AsCurrency := 0;
  TPrecioContado.AsCurrency := 0;
//  TPrecioCredito.AsCurrency := 0;
//  TPrecioMinimo.AsCurrency := 0;
end;

procedure TReportsAndForms.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
  NombreProveedor.Caption := 'No Definido';
  If Modulo.tProveedores.Locate(Modulo.tProveedoresNumero.FieldName,
                                Modulo.tReporter.FieldByName('Proveedor_Principal').AsInteger,
                                []) Then NombreProveedor.Caption := Modulo.tProveedoresNombreCompleto.Value;

 Num_Proveedor.Caption := Pad('L',Modulo.tReporter.FieldByName('Proveedor_Principal').AsString,6,'0')
end;

procedure TReportsAndForms.MESCalc(Sender: TObject; var Value: Variant);
begin
  Value := Copy(MesesAnio[Pipe_Criterio_Vencimiento.DataSource.DataSet.FieldByName('MES').AsInteger],1,3)
end;

procedure TReportsAndForms.UserPrint(Sender: TObject);
begin
  (Sender as TppLabel).Caption := Format('Impreso Por %s - %s',[_CurrentUser,_CurrentTerminal]) 
end;

end.
