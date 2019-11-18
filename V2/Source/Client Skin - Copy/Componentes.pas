unit Componentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, wwdblook, ExtCtrls, SUIButton, Db,
  ActnList, XPStyleActnCtrls, ActnMan;

type
  TFComponentes = class(TForm)
    Detalles_Componentes: TwwDBGrid;
    Shape1: TShape;
    FOTO: TImage;
    bt_Salir: TsuiButton;
    Picture: TImage;
    Opciones: TActionManager;
    Salir: TAction;
    Eliminar: TAction;
    bt_Eliminar: TsuiButton;
    Listado_Productos: TwwDBLookupCombo;
    procedure Detalles_ComponentesRowChanged(Sender: TObject);
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
  FComponentes: TFComponentes;

implementation

uses DataModulo, Generales, RegKeys, Utilidades;

{$R *.dfm}

procedure TFComponentes.Detalles_ComponentesRowChanged(Sender: TObject);
begin
  FOTO.Picture := Nil;
//  If Trim(Modulo.tComponentesCodigo_Componente.Value) <> '' Then FOTOLoadAndDisplay(Modulo.tListadoProductosFoto,FOTO,_DefaultImgDir + _DefaultItemImg);
end;

procedure TFComponentes.EliminarExecute(Sender: TObject);
begin
  If Modulo.tComponentes.RecordCount > 0 Then Modulo.tComponentes.Delete
end;

procedure TFComponentes.FormCreate(Sender: TObject);
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

procedure TFComponentes.Listado_ProductosCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
//  If Trim(Modulo.tComponentesCodigo_Componente.Value) <> '' Then FOTOLoadAndDisplay(Modulo.tListadoProductosFoto,FOTO,_DefaultImgDir + _DefaultItemImg);
end;

procedure TFComponentes.SalirExecute(Sender: TObject);
begin
  PopUpMessage(Modulo.Mensajes,_Recordatorio_Guardar);
  Close
end;

end.
