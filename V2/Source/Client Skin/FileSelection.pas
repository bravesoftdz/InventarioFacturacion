unit FileSelection;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, slstbox, SUIButton, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
  WinSkinData;

type
  TfFileSelection = class(TForm)
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
    bt_Aceptar: TsuiButton;
    Main_Skin: TSkinData;
    procedure bt_AceptarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFileSelection: TfFileSelection;

implementation

uses Utilidades, DataModulo, RegKeys;

{$R *.dfm}

procedure TfFileSelection.bt_AceptarClick(Sender: TObject);
begin
    _ARCHIVO := Modulo.tArchivosDescripcion.Value;
end;

procedure TfFileSelection.FormCreate(Sender: TObject);
begin
      RegInfo.CloseKey;
      RegInfo.OpenKey(_GeneralConfigKey,False);
      Main_Skin.SkinFile:= RegInfo.ReadString(_MainSkin);
end;

end.
