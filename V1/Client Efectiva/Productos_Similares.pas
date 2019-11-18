unit Productos_Similares;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, wwdblook, ExtCtrls, SUIButton, Db,
  ActnList, XPStyleActnCtrls, ActnMan;

type
  TFProductos_Similares = class(TForm)
    Detalles_Similares: TwwDBGrid;
    Listado_Productos: TwwDBLookupCombo;
    Shape1: TShape;
    FOTO: TImage;
    bt_Salir: TsuiButton;
    Picture: TImage;
    Opciones: TActionManager;
    Salir: TAction;
    Eliminar: TAction;
    bt_Eliminar: TsuiButton;
    procedure Detalles_SimilaresRowChanged(Sender: TObject);
    procedure Listado_ProductosCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure SalirExecute(Sender: TObject);
    procedure EliminarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProductos_Similares: TFProductos_Similares;

implementation

uses DataModulo, Generales, RegKeys, Utilidades;

{$R *.dfm}

procedure TFProductos_Similares.Detalles_SimilaresRowChanged(Sender: TObject);
begin
  FOTO.Picture := Nil;
  If Trim(Modulo.tSimilaresSimilar.Value) <> '' Then FOTOLoadAndDisplay(Modulo.tListadoProductosFoto,FOTO,_DefaultImgDir + _DefaultItemImg);
end;

procedure TFProductos_Similares.EliminarExecute(Sender: TObject);
begin
  If Modulo.tSimilares.RecordCount > 0 Then Modulo.tSimilares.Delete
end;

procedure TFProductos_Similares.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      Self.Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);
    End; {If _Load_Create}

end;

procedure TFProductos_Similares.Listado_ProductosCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  If Trim(Modulo.tSimilaresSimilar.Value) <> '' Then FOTOLoadAndDisplay(Modulo.tListadoProductosFoto,FOTO,_DefaultImgDir + _DefaultItemImg);
end;

procedure TFProductos_Similares.SalirExecute(Sender: TObject);
begin
  PopUpMessage(Modulo.Mensajes,_Recordatorio_Guardar);
  Close
end;

end.
