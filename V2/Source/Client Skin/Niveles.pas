unit Niveles;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  ActnList, XPStyleActnCtrls, ActnMan, ToolWin, ActnCtrls,
  RegKeys, Shader, SUIButton, Db;

type
  TFNiveles = class(TForm)
    Niveles: TwwDBGrid;
    Opciones_Activadas: TwwDBGrid;
    Opciones: TActionManager;
    Salir: TAction;
    Activar: TAction;
    Desactivar: TAction;
    Activar_Todas: TAction;
    Desactivar_Todas: TAction;
    Crear_Nivel: TAction;
    Eliminar_Nivel: TAction;
    Modificar_Nivel: TAction;
    Shade_Forms: TShader;
    Image1: TImage;
    Label2: TLabel;
    Shade_Opciones: TShader;
    Image2: TImage;
    Label4: TLabel;
    Forms: TwwDBGrid;
    Opciones_Forms: TwwDBGrid;
    Shade_Niveles: TShader;
    Image3: TImage;
    Label3: TLabel;
    Shade_Activadas: TShader;
    Image4: TImage;
    Label1: TLabel;
    bt_Activar: TsuiButton;
    bt_Activar_Todas: TsuiButton;
    bt_Desactivar_Todas: TsuiButton;
    bt_Desactivar: TsuiButton;
    bt_Salir: TsuiButton;
    bt_Crear_Nivel: TsuiButton;
    bt_Eliminar_Nivel: TsuiButton;
    bt_Modificar_Nivel: TsuiButton;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SalirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActivarExecute(Sender: TObject);
    procedure Activar_TodasExecute(Sender: TObject);
    procedure DesactivarExecute(Sender: TObject);
    procedure Desactivar_TodasExecute(Sender: TObject);
    procedure Crear_NivelExecute(Sender: TObject);
    procedure Eliminar_NivelExecute(Sender: TObject);
    procedure Modificar_NivelExecute(Sender: TObject);
    procedure Opciones_FormsCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
  private
    { Private declarations }
    procedure Anadir;
    procedure Eliminar;
  public
    { Public declarations }
  end;

var
  FNiveles: TFNiveles;

implementation

uses Utilidades, Registry, DataModulo, Generales;

{$R *.dfm}

procedure TFNiveles.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Color de la Pantalla}
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

      {Activar Los Permisos del Usuario}
      ActivateOptions(Sender,_CurrentLevel,ModuloGenerales.tAccesos);
      {Activar Los Hints Disponibles}
      LoadHints(Self);

      ModuloGenerales.tAccesos.Open;
      ModuloGenerales.tNiveles.Open;
      ModuloGenerales.tOpciones.Open;
      ModuloGenerales.tForms.Open
    End
  end;

procedure TFNiveles.FormKeyPress(Sender: TObject; var Key: Char);
 Var
  Found : TWinControl;
begin
  If Key = Chr(VK_RETURN) Then
    Begin
      Found := FindNextControl(ActiveControl,True, True, False);
      Found.SetFocus
    End
end;

procedure TFNiveles.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TFNiveles.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ModuloGenerales.tForms.Close;
  ModuloGenerales.tNiveles.Close;
  ModuloGenerales.tOpciones.Close;
  ModuloGenerales.tAccesos.Close
end;

procedure TFNiveles.Anadir;
begin
  If Not ModuloGenerales.tAccesos.Locate(ModuloGenerales.tAccesosForm.FieldName+';'+
                                         ModuloGenerales.tAccesosOpcion.FieldName,
                                         VarArrayOf([ModuloGenerales.tOpcionesForm.Value,
                                                     ModuloGenerales.tOpcionesOpcion.Value]),
                                         []) Then
    ModuloGenerales.tAccesos.Append
  Else
    ModuloGenerales.tAccesos.Edit;
  ModuloGenerales.tAccesosForm.Value := ModuloGenerales.tOpcionesForm.Value;
  ModuloGenerales.tAccesosNivel.Value := ModuloGenerales.tNivelesCodigo.Value;
  ModuloGenerales.tAccesosOpcion.Value := ModuloGenerales.tOpcionesOpcion.Value;
  ModuloGenerales.tAccesos.Post
end;

procedure TFNiveles.Eliminar;
begin
  If Not ModuloGenerales.tAccesos.Eof Then ModuloGenerales.tAccesos.Delete
end;

procedure TFNiveles.ActivarExecute(Sender: TObject);
begin
  Anadir;
  If ModuloGenerales.tAccesos.ChangeCount > 0 Then ModuloGenerales.tAccesos.ApplyUpdates(0);
  ModuloGenerales.tAccesos.Refresh
end;

procedure TFNiveles.Activar_TodasExecute(Sender: TObject);
  var
    CurrentCursor : TCursor;
begin
  CurrentCursor := Screen.Cursor;
  Try
    ModuloGenerales.tAccesos.DisableControls;
    Screen.Cursor := crHourGlass;
    ModuloGenerales.tOpciones.First;
    While Not ModuloGenerales.tOpciones.Eof Do
      Begin
        Anadir;
        ModuloGenerales.tOpciones.Next
      End;
    ModuloGenerales.tOpciones.First;
    If ModuloGenerales.tAccesos.ChangeCount > 0 Then ModuloGenerales.tAccesos.ApplyUpdates(0);
    ModuloGenerales.tAccesos.Refresh
  Finally
    ModuloGenerales.tAccesos.First;
    ModuloGenerales.tAccesos.EnableControls;
    Screen.Cursor := CurrentCursor
  End {try}
end;

procedure TFNiveles.DesactivarExecute(Sender: TObject);
begin
  Eliminar;
  If ModuloGenerales.tAccesos.ChangeCount > 0 Then ModuloGenerales.tAccesos.ApplyUpdates(0);
  ModuloGenerales.tAccesos.Refresh
end;

procedure TFNiveles.Desactivar_TodasExecute(Sender: TObject);
  var
    CurrentCursor : TCursor;
begin
  CurrentCursor := Screen.Cursor;
  Try
    ModuloGenerales.tAccesos.DisableControls;
    Screen.Cursor := crHourGlass;
    ModuloGenerales.tAccesos.First;
    While Not ModuloGenerales.tAccesos.Eof Do Eliminar;
    If ModuloGenerales.tAccesos.ChangeCount > 0 Then ModuloGenerales.tAccesos.ApplyUpdates(0);
    ModuloGenerales.tAccesos.Refresh
  Finally
    ModuloGenerales.tAccesos.First;
    ModuloGenerales.tAccesos.EnableControls;
    Screen.Cursor := CurrentCursor
  End {try}
end;

procedure TFNiveles.Opciones_FormsCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
//  If Trim(ModuloGenerales.tOpcionesVerificar.Value) =  Trim(ModuloGenerales.tOpcionesOpcion.Value) Then
//    AFont.Color := clRed
end;

procedure TFNiveles.Crear_NivelExecute(Sender: TObject);
  Var
    tmpString : String;
begin
  If InputQuery('Introduzca el Código','Introduzca el Código',tmpString) Then
    Begin
      ModuloGenerales.tNiveles.Append;
      Randomize;
      If Trim(tmpString) = '' Then tmpString := 'L'+IntToStr(Trunc(Random(9999)));
      ModuloGenerales.tNivelesCodigo.Value := Trim(UpperCase(tmpString));
      If InputQuery('Introduzca la Descripción','Introduzca la Descripción',tmpString) Then
        Begin
          If Trim(tmpString) = '' Then tmpString := 'Nivel ' + IntToStr(Trunc(Random(9999)));
          ModuloGenerales.tNivelesDescripcion.Value := tmpString;
          ModuloGenerales.tNivelesFecha.Value := Modulo.Enlace.AppServer.ServerDate;
          ModuloGenerales.tNiveles.Post;
          ModuloGenerales.tNiveles.ApplyUpdates(0)
        End
    End;
  ModuloGenerales.tNiveles.CancelUpdates;
  ModuloGenerales.tNiveles.Refresh
end;

procedure TFNiveles.Eliminar_NivelExecute(Sender: TObject);
begin
  If Application.MessageBox('Realmente Desea Eliminar el Nivel Seleccionado',
                            'Eliminar Nivel',
                            MB_YESNO + MB_ICONQUESTION) = ID_Yes Then
    Begin
      Desactivar_Todas.Execute;
      If ModuloGenerales.tAccesos.ChangeCount > 0 Then ModuloGenerales.tAccesos.ApplyUpdates(0);
      ModuloGenerales.tAccesos.Refresh;

      If ModuloGenerales.tNiveles.RecordCount > 0 Then ModuloGenerales.tNiveles.Delete;
      If ModuloGenerales.tNiveles.ChangeCount > 0 Then ModuloGenerales.tNiveles.ApplyUpdates(0);
      ModuloGenerales.tNiveles.Refresh
    End
end;

procedure TFNiveles.Modificar_NivelExecute(Sender: TObject);
  Var
    tmpString : String;
begin
  tmpString := ModuloGenerales.tNivelesDescripcion.Value;
  If ModuloGenerales.tNiveles.RecordCount > 0 Then
  If InputQuery('Introduzca la Descripción','Introduzca la Descripción',tmpString) Then
    Begin
      If Trim(tmpString) = '' Then tmpString := 'Nivel ' + IntToStr(Trunc(Random(9999)));
        ModuloGenerales.tNiveles.Edit;
        ModuloGenerales.tNivelesDescripcion.Value := tmpString;
        ModuloGenerales.tNiveles.Post;
        ModuloGenerales.tNiveles.ApplyUpdates(0)
    End;
  ModuloGenerales.tNiveles.CancelUpdates;
  ModuloGenerales.tNiveles.Refresh
end;

Initialization
  RegisterClass(TFNiveles);

end.
