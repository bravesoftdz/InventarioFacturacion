unit Seriales_Productos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, wwdblook, ExtCtrls, SUIButton, Db,
  ActnList, XPStyleActnCtrls, ActnMan, Mask, DBCtrls;

type
  TFSeriales_Productos = class(TForm)
    Detalles_Seriales: TwwDBGrid;
    bt_Finalizar: TsuiButton;
    Opciones: TActionManager;
    Finalizar: TAction;
    Eliminar: TAction;
    bt_Eliminar: TsuiButton;
    Cantidad: TLabel;
    Registrados: TLabel;
    Restan: TLabel;
    Detalle_Compra: TwwDBGrid;
    bt_Anterior: TsuiButton;
    Anterior: TAction;
    Imprimir: TAction;
    Serial: TEdit;
    bt_Imprimir: TsuiButton;
    procedure Detalle_CompraDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImprimirExecute(Sender: TObject);
    procedure SerialExit(Sender: TObject);
    procedure SerialEnter(Sender: TObject);
    procedure SerialKeyPress(Sender: TObject; var Key: Char);
    procedure Detalle_CompraRowChanged(Sender: TObject);
    procedure AnteriorExecute(Sender: TObject);
    procedure Detalles_SerialesRowChanged(Sender: TObject);
    procedure FinalizarExecute(Sender: TObject);
    procedure EliminarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    _Cantidad : Integer;
    _Completados : Boolean;
  end;

var
  FSeriales_Productos: TFSeriales_Productos;

implementation

uses DataModulo, Generales, RegKeys, Utilidades, Reports_Forms;

{$R *.dfm}


procedure SaveData;
  Begin
    If Modulo.tCompra_Productos.State In DsEditModes Then
      Modulo.tCompra_Productos.Post;

    If Modulo.tCompra_Productos.ChangeCount > 0 Then
      If Application.MessageBox('Se han hecho cambios al registro de los seriales de esta compra'#13'Desea Guardar esos Datos?',
                                'Edicion de Seriales Activa',
                                MB_YESNO + MB_ICONQUESTION) = ID_Yes Then
        Begin
          Modulo.tCompra_Productos.ApplyUpdates(0);
          Modulo.tReporter.Close;
          Modulo.tReporter.CommandText := 'Update "Compra_Productos" Set "Seriales_Registrados" = (Select Count("Serial") From "Seriales_Recibidos" Where "Proceso" = :Proceso2) Where "Proceso" = :Proceso1';
          Modulo.tReporter.Params.ParamByName('Proceso1').AsString := Modulo.tCompra_ProductosProceso.AsString;
          Modulo.tReporter.Params.ParamByName('Proceso2').AsString := Modulo.tCompra_ProductosProceso.AsString;
          Modulo.tReporter.Execute;
          Modulo.tCompra_Productos.Refresh
        end
  end;

procedure TFSeriales_Productos.AnteriorExecute(Sender: TObject);
begin
  SaveData;
  ModalResult := MrOk
end;

procedure TFSeriales_Productos.Detalles_SerialesRowChanged(Sender: TObject);
begin
  Cantidad.Caption := Format ('Cantidad : %d',[_Cantidad]);
  Registrados.Caption := Format ('Registrados : %d',[Modulo.tSeriales_Compra.RecordCount]);
  Restan.Caption := Format ('Restan : %d',[_Cantidad - Modulo.tSeriales_Compra.RecordCount])
end;

procedure TFSeriales_Productos.Detalle_CompraDblClick(Sender: TObject);
begin
  Serial.SetFocus
end;

procedure TFSeriales_Productos.Detalle_CompraRowChanged(Sender: TObject);
begin
  _Cantidad := Round(Modulo.tDetalles_CompraCantidad.Value * Modulo.tDetalles_CompraContenido.Value);
  Detalles_SerialesRowChanged(Sender)
end;

procedure TFSeriales_Productos.EliminarExecute(Sender: TObject);
begin
  If Modulo.tSeriales_Compra.RecordCount > 0 Then Modulo.tSeriales_Compra.Delete;
  Detalles_SerialesRowChanged(Sender)
end;

procedure TFSeriales_Productos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Modulo.tDetalles_Compra.Filter := '';
  Modulo.tDetalles_Compra.Filtered := False;
end;

procedure TFSeriales_Productos.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      Self.Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);
      Modulo.tDetalles_Compra.Filter := 'Requiere_Serial = True';
      Modulo.tDetalles_Compra.Filtered := True;
    End; {If _Load_Create}

end;

procedure TFSeriales_Productos.ImprimirExecute(Sender: TObject);
begin
  SaveData;
  ReportsAndForms.Form_Seriales_Compra.Print
  
end;

procedure TFSeriales_Productos.SerialEnter(Sender: TObject);
begin
  Serial.Clear
end;

procedure TFSeriales_Productos.SerialExit(Sender: TObject);
begin
  Serial.Text := 'Digite aquí el número de serie'
end;

procedure TFSeriales_Productos.SerialKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    If Not Modulo.tSeriales_Compra.Locate('Serial',Trim(Serial.Text),[]) Then
      Begin
        Modulo.tSeriales_Compra.Append;
        Modulo.tSeriales_CompraSerial.Value := Serial.Text;
        Modulo.tSeriales_Compra.Post;
        Serial.Clear;
        Serial.SetFocus
      End {If}
end;

procedure TFSeriales_Productos.FinalizarExecute(Sender: TObject);
begin
  _Completados := (_Cantidad - Modulo.tSeriales_Compra.RecordCount) = 0;

  SaveData;

  If Not(_Completados)  Then
    PopUpMessage(Modulo.Mensajes,_Seriales_Incompletos);

  Close
end;

end.
