unit Terminales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, Spin, ActnList, Grids, Wwdbigrd,
  Wwdbgrid, Mask, DBCtrls, wwcheckbox, wwdbedit, Wwdotdot, Wwdbcomb, Wwdbspin,
  XPStyleActnCtrls, ActnMan, ActnColorMaps, ToolWin, ActnCtrls, AdvPageControl,
  ComCtrls, Db, wwdblook;

type
  TFTerminales = class(TForm)
    MainPanel: TPanel;
    SpeedButton3: TSpeedButton;
    Compania: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DetailsPanel: TPanel;
    Label8: TLabel;
    Label18: TLabel;
    ComentsPanel: TPanel;
    Label7: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Lineas_Despues: TLabel;
    AbrirLogo: TOpenDialog;
    WindowsColor: TColorDialog;
    FormatPanel: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    wwDBGrid1: TwwDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    wwCheckBox1: TwwCheckBox;
    wwCheckBox2: TwwCheckBox;
    wwCheckBox3: TwwCheckBox;
    wwCheckBox4: TwwCheckBox;
    wwCheckBox5: TwwCheckBox;
    wwCheckBox6: TwwCheckBox;
    wwCheckBox7: TwwCheckBox;
    wwCheckBox8: TwwCheckBox;
    Impresora: TwwDBComboBox;
    Puerto: TwwDBComboBox;
    Terminal: TwwDBComboBox;
    Tamano_Numeros: TwwDBComboBox;
    Page_Botones: TAdvPageControl;
    Botones: TAdvTabSheet;
    atb_Botones: TActionToolBar;
    ColorConfig: TXPColorMap;
    Opciones: TActionManager;
    Salir: TAction;
    Agregar: TAction;
    Eliminar: TAction;
    Guardar: TAction;
    Label1: TLabel;
    Nombre: TwwDBComboBox;
    Label9: TLabel;
    Status: TwwDBComboBox;
    AnchoLinea: TwwDBSpinEdit;
    Lineas_Pie: TwwDBSpinEdit;
    Label13: TLabel;
    DBEdit17: TDBEdit;
    Label15: TLabel;
    DBEdit18: TDBEdit;
    Label21: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Almacen: TwwDBLookupCombo;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    Label29: TLabel;
    DBEdit24: TDBEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AgregarExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure EliminarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTerminales: TFTerminales;

implementation

uses Utilidades, Registry, DataModulo, RegKeys;

{$R *.dfm}

procedure TFTerminales.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFTerminales.EliminarExecute(Sender: TObject);
begin
  If Modulo.tTerminales.State In DsEditModes Then
    Modulo.tTerminales.Cancel;

  If Modulo.tTerminales.RecordCount > 0 Then
    Modulo.tTerminales.Delete;

  If Modulo.tTerminales.ChangeCount > 0 Then
    Modulo.tTerminales.ApplyUpdates(0);

    Modulo.tTerminales.Refresh;
end;

procedure TFTerminales.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFTerminales.SpeedButton3Click(Sender: TObject);
begin
  WindowsColor.Color := Color;
  If WindowsColor.Execute Then Color := WindowsColor.Color
end;

procedure TFTerminales.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Modulo.tAlmacen.Close;
  Modulo.tTerminales.Close;
end;

procedure TFTerminales.FormCreate(Sender: TObject);
  Var
    I : Integer;
begin
  {Inicia el Registro}
  Reginfo := TRegistry.Create;
  RegInfo.RootKey := HKEY_LOCAL_MACHINE;
  {Color de la Pantalla}
  Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
  ColorConfig.Color := Color - 5;
  Modulo.tAlmacen.Open;
  {Asigna a los Botones Los ShortCuts Del Menu y Action Lists}
  For I := 0 To (Self.ComponentCount - 1) Do
    Begin
  {    If (Self.Components[I] Is TAction) Then
         (Self.Components[I] As TAction).Caption := Format('%s (%s)',[Trim((Self.Components[I] As TAction).Caption),
                                                                      ShortCutToText((Self.Components[I] As TAction).ShortCut)]);}
      If (Self.Components[I] Is TAdvPageControl) Then
         (Self.Components[I] As TAdvPageControl).TabBackGroundColor := Color;
    End;

  Modulo.tTerminales.Open;

  {Conexion}
  RegInfo.CloseKey;
  RegInfo.OpenKey(_DataRouteKey,True);
//  NombreServidor.Text := UnEncrypt(RegInfo.ReadString(_ConectionServerPath));
//  Url.Text := UnEncrypt(RegInfo.ReadString(_ConectionURL));

  {Tickets}
//  Sorteo.Text := UnEncrypt(RegInfo.ReadString(_LstSorteo));


  {Configuracion General}
  Reginfo.CloseKey;
  RegInfo.OpenKey(_GeneralConfigKey,True);

  WindowsColor.Color      := GetRegColor(_GeneralConfigKey,_WindowsColor);
//  Animacion.Text          := RegInfo.ReadString(_MessageAvi);

end;

procedure TFTerminales.GuardarExecute(Sender: TObject);
begin
  If Modulo.tTerminales.State In DsEditModes Then
    Modulo.tTerminales.Post;

  If Modulo.tTerminales.ChangeCount > 0 Then
    Modulo.tTerminales.ApplyUpdates(0);

    Modulo.tTerminales.Refresh;
end;

procedure TFTerminales.AgregarExecute(Sender: TObject);
  Var
    Nombre, Descripcion : String;
begin
  Modulo.tTerminales.Cancel;
  Modulo.tTerminales.CancelUpdates;
  Modulo.tTerminales.Append;

  If InputQuery('Esccriba el Nombre de la Terminal','',Nombre) Then
    Modulo.tTerminalesNombre.Value := Trim(UpperCase(Nombre));

  If InputQuery('Esccriba la Descripcion de la Terminal','',Descripcion) Then
    Modulo.tTerminalesDescripcion.Value := Trim(UpperCase(Descripcion));

end;

end.
