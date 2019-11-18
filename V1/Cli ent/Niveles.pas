unit Niveles;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  ActnList, XPStyleActnCtrls, ActnMan, ActnColorMaps, ToolWin, ActnCtrls;

type
  TFNiveles = class(TForm)
    Detalle_Niveles: TwwDBGrid;
    Label1: TLabel;
    Detalle_Opciones: TwwDBGrid;
    Label2: TLabel;
    Detalle_Permisos: TwwDBGrid;
    Label3: TLabel;
    Opciones: TActionManager;
    Salir: TAction;
    Activar: TAction;
    Desactivar: TAction;
    Activar_Todas: TAction;
    Desactivar_Todas: TAction;
    Atb_Control_Opciones: TActionToolBar;
    Crear_Nivel: TAction;
    Atb_Control_Niveles: TActionToolBar;
    Eliminar_Nivel: TAction;
    Modificar_Nivel: TAction;
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

uses Utilidades, Registry, DataModulo;

{$R *.dfm}

procedure TFNiveles.FormCreate(Sender: TObject);
begin
  {Color de la Pantalla}
  Color := GetRegColor(_GeneralConfigKey,_WindowsColor);

  {Activar Los Permisos del Usuario}
//  ActivateOptions(Sender,_CurrentLevel,Modulo.tAccesos);

  Modulo.tAccesos.Open;
  Modulo.tNiveles.Open;
  Modulo.tOpciones.Open
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
  Modulo.tNiveles.Close;
  Modulo.tOpciones.Close;
  Modulo.tAccesos.Close
end;

procedure TFNiveles.Anadir;
begin
  If Not Modulo.tAccesos.Locate(Modulo.tAccesosForm.FieldName+';'+Modulo.tAccesosOpcion.FieldName,VarArrayOf([Modulo.tOpcionesForm.Value,Modulo.tOpcionesOpcion.Value]),[]) Then
    Modulo.tAccesos.Append
  Else
    Modulo.tAccesos.Edit;
  Modulo.tAccesosForm.Value := Modulo.tOpcionesForm.Value;
  Modulo.tAccesosNivel.Value := Modulo.tNivelesCodigo.Value;
  Modulo.tAccesosOpcion.Value := Modulo.tOpcionesOpcion.Value;
  Modulo.tAccesos.Post
end;

procedure TFNiveles.Eliminar;
begin
  If Not Modulo.tAccesos.Eof Then Modulo.tAccesos.Delete
end;

procedure TFNiveles.ActivarExecute(Sender: TObject);
begin
  Anadir;
  If Modulo.tAccesos.ChangeCount > 0 Then Modulo.tAccesos.ApplyUpdates(0);
  Modulo.tAccesos.Refresh
end;

procedure TFNiveles.Activar_TodasExecute(Sender: TObject);
  var
    CurrentCursor : TCursor;
begin
  CurrentCursor := Screen.Cursor;
  Try
    Modulo.tAccesos.DisableControls;
    Screen.Cursor := crHourGlass;
    Modulo.tOpciones.First;
    While Not Modulo.tOpciones.Eof Do
      Begin
        Anadir;
        Modulo.tOpciones.Next
      End;
    Modulo.tOpciones.First;
    If Modulo.tAccesos.ChangeCount > 0 Then Modulo.tAccesos.ApplyUpdates(0);
    Modulo.tAccesos.Refresh
  Finally
    Modulo.tAccesos.First;
    Modulo.tAccesos.EnableControls;
    Screen.Cursor := CurrentCursor
  End {try}
end;

procedure TFNiveles.DesactivarExecute(Sender: TObject);
begin
  Eliminar;
  If Modulo.tAccesos.ChangeCount > 0 Then Modulo.tAccesos.ApplyUpdates(0);
  Modulo.tAccesos.Refresh
end;

procedure TFNiveles.Desactivar_TodasExecute(Sender: TObject);
  var
    CurrentCursor : TCursor;
begin
  CurrentCursor := Screen.Cursor;
  Try
    Modulo.tAccesos.DisableControls;
    Screen.Cursor := crHourGlass;
    Modulo.tAccesos.First;
    While Not Modulo.tAccesos.Eof Do Eliminar;
    If Modulo.tAccesos.ChangeCount > 0 Then Modulo.tAccesos.ApplyUpdates(0);
    Modulo.tAccesos.Refresh
  Finally
    Modulo.tAccesos.First;
    Modulo.tAccesos.EnableControls;
    Screen.Cursor := CurrentCursor
  End {try}
end;

procedure TFNiveles.Crear_NivelExecute(Sender: TObject);
  Var
    tmpString : String;
begin
  If InputQuery('Introduzca el Código','Introduzca el Código',tmpString) Then
    Begin
      Modulo.tNiveles.Append;
      Randomize;
      If Trim(tmpString) = '' Then tmpString := 'L'+IntToStr(Trunc(Random(9999)));
      Modulo.tNivelesCodigo.Value := Trim(UpperCase(tmpString));
      If InputQuery('Introduzca la Descripción','Introduzca la Descripción',tmpString) Then
        Begin
          If Trim(tmpString) = '' Then tmpString := 'Nivel ' + IntToStr(Trunc(Random(9999)));
          Modulo.tNivelesDescripcion.Value := tmpString;
          Modulo.tNivelesFecha.Value := Modulo.Enlace.AppServer.ServerDate;
          Modulo.tNiveles.Post;
          Modulo.tNiveles.ApplyUpdates(0)
        End
    End;
  Modulo.tNiveles.CancelUpdates;
  Modulo.tNiveles.Refresh
end;

procedure TFNiveles.Eliminar_NivelExecute(Sender: TObject);
begin
  If Application.MessageBox('Realmente Desea Eliminar el Nivel Seleccionado',
                            'Eliminar Nivel',
                            MB_YESNO + MB_ICONQUESTION) = ID_Yes Then
    Begin
      Desactivar_Todas.Execute;
      If Modulo.tAccesos.ChangeCount > 0 Then Modulo.tAccesos.ApplyUpdates(0);
      Modulo.tAccesos.Refresh;

      If Modulo.tNiveles.RecordCount > 0 Then Modulo.tNiveles.Delete;
      If Modulo.tNiveles.ChangeCount > 0 Then Modulo.tNiveles.ApplyUpdates(0);
      Modulo.tNiveles.Refresh
    End
end;

procedure TFNiveles.Modificar_NivelExecute(Sender: TObject);
  Var
    tmpString : String;
begin
  tmpString := Modulo.tNivelesDescripcion.Value;
  If Modulo.tNiveles.RecordCount > 0 Then
  If InputQuery('Introduzca la Descripción','Introduzca la Descripción',tmpString) Then
    Begin
      If Trim(tmpString) = '' Then tmpString := 'Nivel ' + IntToStr(Trunc(Random(9999)));
        Modulo.tNiveles.Edit;
        Modulo.tNivelesDescripcion.Value := tmpString;
        Modulo.tNiveles.Post;
        Modulo.tNiveles.ApplyUpdates(0)
    End;
  Modulo.tNiveles.CancelUpdates;
  Modulo.tNiveles.Refresh
end;

end.
