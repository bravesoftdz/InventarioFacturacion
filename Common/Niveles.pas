unit Niveles;

interface

uses
  RegKeys, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, TaskDialog, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, ActnList,
  ActnMan, AdvGlowButton, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, ToolPanels, AdvOfficePager, SUIProgressBar,
  cxContainer, cxLabel, cxDBLabel, DbClient, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, XPStyleActnCtrls;

type
  TfrmNiveles_Acceso = class(TForm)
    Opciones: TActionManager;
    Salir: TAction;
    Activar: TAction;
    Desactivar: TAction;
    Activar_Todas: TAction;
    Desactivar_Todas: TAction;
    Crear_Nivel: TAction;
    Eliminar_Nivel: TAction;
    Modificar_Nivel: TAction;
    Data_Group_Pannel: TAdvOfficePager;
    pg_Niveles_Acceso: TAdvOfficePage;
    Panel_Formularios_Opciones: TAdvToolPanel;
    Panel_Niveles_Opciones: TAdvToolPanel;
    grdNiveles_Acceso: TcxGrid;
    grdNiveles_AccesoDBTV: TcxGridDBTableView;
    grdNiveles_AccesoDBTVDescripcion: TcxGridDBColumn;
    grdNiveles_AccesoLevel: TcxGridLevel;
    gbt_Eliminar_Nivel: TAdvGlowButton;
    gbt_Modificar_Nivel: TAdvGlowButton;
    gbt_Crear_Nivel: TAdvGlowButton;
    gbt_Activar: TAdvGlowButton;
    gbt_Activar_Todas: TAdvGlowButton;
    gbt_Desactivar: TAdvGlowButton;
    gbt_Desactivar_Todas: TAdvGlowButton;
    grdFormularios: TcxGrid;
    grdFormulariosDBTV: TcxGridDBTableView;
    grdFormulariosDBTVDescription: TcxGridDBColumn;
    grdFormulariosLevel: TcxGridLevel;
    grdOpciones_Disponibles: TcxGrid;
    grdOpciones_DisponiblesDBTV: TcxGridDBTableView;
    grdOpciones_DisponiblesLevel: TcxGridLevel;
    grdOpciones_Activadas: TcxGrid;
    grdOpciones_ActivadasDBTV: TcxGridDBTableView;
    grdOpciones_ActivadasLevel: TcxGridLevel;
    grdOpciones_DisponiblesDBTVOption: TcxGridDBColumn;
    grdOpciones_DisponiblesDBTVComponet_Type: TcxGridDBColumn;
    grdOpciones_ActivadasDBTVOption: TcxGridDBColumn;
    grdOpciones_DisponiblesDBTVforeign: TcxGridDBColumn;
    Activar_Todos: TAction;
    Desactivar_Todos: TAction;
    gbt_Activar_Todos: TAdvGlowButton;
    gbt_Desactivar_Todos: TAdvGlowButton;
    Progreso: TsuiProgressBar;
    lbl_Nivel: TcxDBLabel;
    gbt_Salir: TAdvGlowButton;
    grdAutorizaciones: TcxGrid;
    grdAutorizacionesDBTV: TcxGridDBTableView;
    grdAutorizacionesDBTVNombre: TcxGridDBColumn;
    grdAutorizacionesLevel: TcxGridLevel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    Activar_Autorizacion: TAction;
    Desactivar_Autorizacion: TAction;
    Autorizar_Usuario: TAction;
    Desa: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SalirExecute(Sender: TObject);
    procedure ActivarExecute(Sender: TObject);
    procedure Activar_TodasExecute(Sender: TObject);
    procedure DesactivarExecute(Sender: TObject);
    procedure Desactivar_TodasExecute(Sender: TObject);
    procedure Crear_NivelExecute(Sender: TObject);
    procedure Eliminar_NivelExecute(Sender: TObject);
    procedure Modificar_NivelExecute(Sender: TObject);
    procedure grdOpciones_DisponiblesDBTVStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure Activar_TodosExecute(Sender: TObject);
    procedure Desactivar_TodosExecute(Sender: TObject);
    procedure Activar_AutorizacionExecute(Sender: TObject);
    procedure Desactivar_AutorizacionExecute(Sender: TObject);
  private
    { Private declarations }
    procedure Anadir;
    procedure Eliminar;
  public
    { Public declarations }
  end;

var
  frmNiveles_Acceso: TfrmNiveles_Acceso;

implementation

uses Utilidades, Registry, DataModulo, Generales;

{$R *.dfm}

procedure TfrmNiveles_Acceso.FormCreate(Sender: TObject);
begin
  If _Load_Create Then
    Begin
      {Color de la Pantalla}
      Color := GetRegColor(_GeneralConfigKey,_WindowsColor);
      grdFormularios.LookAndFeel.SkinName := ModuloGenerales.EditStyleController.Style.LookAndFeel.SkinName;
      grdOpciones_Disponibles.LookAndFeel.SkinName := ModuloGenerales.EditStyleController.Style.LookAndFeel.SkinName;
      grdNiveles_Acceso.LookAndFeel.SkinName := ModuloGenerales.EditStyleController.Style.LookAndFeel.SkinName;
      grdOpciones_Activadas.LookAndFeel.SkinName := ModuloGenerales.EditStyleController.Style.LookAndFeel.SkinName;
      grdAutorizaciones.LookAndFeel.SkinName := ModuloGenerales.EditStyleController.Style.LookAndFeel.SkinName;

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

procedure TfrmNiveles_Acceso.FormKeyPress(Sender: TObject; var Key: Char);
 Var
  Found : TWinControl;
begin
  If Key = Chr(VK_RETURN) Then
    Begin
      Found := FindNextControl(ActiveControl,True, True, False);
      Found.SetFocus
    End
end;

procedure TfrmNiveles_Acceso.grdOpciones_DisponiblesDBTVStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if (ARecord is TcxGridDataRow) and not ARecord.Selected and
    (Not(VarIsNull(ARecord.Values[grdOpciones_DisponiblesDBTVforeign.Index]))) then
    AStyle := ModuloGenerales.styChecked;
end;

procedure TfrmNiveles_Acceso.SalirExecute(Sender: TObject);
begin
  Close
end;

procedure TfrmNiveles_Acceso.Anadir;
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

procedure TfrmNiveles_Acceso.Eliminar;
begin
  If Not ModuloGenerales.tAccesos.Eof Then ModuloGenerales.tAccesos.Delete
end;

procedure TfrmNiveles_Acceso.ActivarExecute(Sender: TObject);
begin
  Anadir;
  If ModuloGenerales.tAccesos.ChangeCount > 0 Then ModuloGenerales.tAccesos.ApplyUpdates(0);
  ModuloGenerales.tAccesos.Refresh;
  ModuloGenerales.tOpciones.Refresh;
end;

procedure TfrmNiveles_Acceso.Activar_AutorizacionExecute(Sender: TObject);
begin
  If Not ModuloGenerales.tAutorizaciones.Locate('Nombre',ModuloGenerales.tNivelesCodigo.Value,[]) Then
    Begin
      ModuloGenerales.tAutorizaciones.Append;
      ModuloGenerales.tAutorizacionesForm.Value := ModuloGenerales.tFormsName.Value;
      ModuloGenerales.tAutorizacionesNombre.Value := ModuloGenerales.tNivelesCodigo.Value;
      ModuloGenerales.tAutorizacionesTipo.Value := 'NIVEL';
      ModuloGenerales.tAutorizaciones.Post;
      ModuloGenerales.tAutorizaciones.ApplyUpdates(0);
    End;
end;

procedure TfrmNiveles_Acceso.Activar_TodasExecute(Sender: TObject);
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
    ModuloGenerales.tAccesos.Refresh;
    ModuloGenerales.tOpciones.Refresh;
  Finally
    ModuloGenerales.tAccesos.First;
    ModuloGenerales.tAccesos.EnableControls;
    Screen.Cursor := CurrentCursor
  End {try}
end;

procedure TfrmNiveles_Acceso.Activar_TodosExecute(Sender: TObject);
  var
    R : Integer;
begin
  R := AdvAsk('Activar Todos los Permisos : ' + ModuloGenerales.tNivelesDescripcion.Value,
              'Realmente desea ACTIVAR todos los permisos para este nivel?',
              'Para confirmar que desea Activar todos los permisos presione la tecla [ENTER] o haga click en el boton SI',
              tiWarning,
              [cbYes,cbNo],
              Self);

  If R = ID_YES Then
    Try
      Progreso.Position := 0;
      Progreso.Max := ModuloGenerales.tForms.RecordCount;
      Progreso.Visible := True;
      ModuloGenerales.tForms.First;
      While Not ModuloGenerales.tForms.Eof Do
        Begin
          Activar_Todas.Execute;
          ModuloGenerales.tForms.Next;
          Progreso.Position := Progreso.Position + 1;
          Progreso.Update;
        End
    Finally
      Progreso.Visible := False;
    End;
end;

procedure TfrmNiveles_Acceso.DesactivarExecute(Sender: TObject);
begin
  Eliminar;
  If ModuloGenerales.tAccesos.ChangeCount > 0 Then ModuloGenerales.tAccesos.ApplyUpdates(0);
  ModuloGenerales.tAccesos.Refresh;
  ModuloGenerales.tOpciones.Refresh;
end;

procedure TfrmNiveles_Acceso.Desactivar_AutorizacionExecute(Sender: TObject);
Var
    R : Integer;
begin
    R := AdvAsk('Desactivar Quitar la Autorizacion para : ' + ModuloGenerales.tAutorizacionesNombre.Value,
                'Realmente desea ELIMINAR LA AUTORIZACION este nivel?',
                'Para confirmar que desea Eliminar la tecla [ENTER] o haga click en el boton SI',
                tiWarning,
                [cbYes,cbNo],
                Self);

    If R = ID_YES Then
      If ModuloGenerales.tAutorizaciones.RecordCount > 0 Then
        Begin
          ModuloGenerales.tAutorizaciones.Delete;
          ModuloGenerales.tAutorizaciones.ApplyUpdates(0);
        End;
end;

procedure TfrmNiveles_Acceso.Desactivar_TodasExecute(Sender: TObject);
  var
    CurrentCursor : TCursor;
    Q             : TClientDataset;
begin
  CurrentCursor := Screen.Cursor;
  Try
    Q := TClientDataset.Create(Self);
    Q.RemoteServer := Modulo.Enlace;
    Q.ProviderName := 'SrchPr';
    Screen.Cursor := crHourGlass;
    {Eliminar Listado de Opciones}
    Q.Close;
    Q.CommandText := 'Delete From "Accesos" Where "Form" = ' +
                                                  QuotedStr(Trim(ModuloGenerales.tFormsName.Value)) +
                                                  ' And "Nivel" = ' + QuotedStr(Trim(ModuloGenerales.tNivelesCodigo.Value));
    Q.Execute;

    ModuloGenerales.tAccesos.Refresh;
    ModuloGenerales.tOpciones.Refresh;
  Finally
    Q.Close;
    Q.Free;
    Screen.Cursor := CurrentCursor
  End {try}
end;

procedure TfrmNiveles_Acceso.Desactivar_TodosExecute(Sender: TObject);
  var
    CurrentCursor : TCursor;
    R : Integer;
    Q : TClientDataset;
begin
  CurrentCursor := Screen.Cursor;
  Try
    Q := TClientDataset.Create(Self);
    Q.RemoteServer := Modulo.Enlace;
    Q.ProviderName := 'SrchPr';
    R := AdvAsk('Desactivar Todos los Permisos : ' + ModuloGenerales.tNivelesDescripcion.Value,
                'Realmente desea DESACTIVAR todos los permisos para este nivel?',
                'Para confirmar que desea desactivar todos los permisos presione la tecla [ENTER] o haga click en el boton SI',
                tiWarning,
                [cbYes,cbNo],
                Self);

    If R = ID_YES Then
      Try
        CurrentCursor := Screen.Cursor;
        Screen.Cursor := crHourGlass;
        {Eliminar Listado de Opciones}
        Q.Close;
        Q.CommandText := 'Delete From "Accesos" Where "Nivel" = ' +
                         QuotedStr(Trim(ModuloGenerales.tNivelesCodigo.Value));
        Q.Execute;

        ModuloGenerales.tAccesos.Refresh;
        ModuloGenerales.tOpciones.Refresh;
      Finally
      End {try}
  Finally
    Q.Close;
    Q.Free;
    Screen.Cursor := CurrentCursor
  End;
end;

procedure TfrmNiveles_Acceso.Crear_NivelExecute(Sender: TObject);
  Var
    tmpString : String;
    R         : Integer;
begin
  R := AdvMemoInput('Crear Nivel de Acceso',
                    'Introduzca un Código:',
                    'Digite un Código de Identificacion para el Nivel de Acceso y presione la tecla [ENTER] o haga click en el boton ACEPTAR',
                    tmpString,
                    tiInformation,
                    Application.MainForm);

  If (R = ID_OK) And (Trim(tmpString) <> '') Then
    Begin
      ModuloGenerales.tNiveles.Append;
      ModuloGenerales.tNivelesCodigo.Value := Trim(UpperCase(tmpString));
      R := AdvMemoInput('Crear Nivel de Acceso',
                        'Introduzca la Descripción:',
                        'Digite la Descripción para el Nivel de Acceso y presione la tecla [ENTER] o haga click en el boton ACEPTAR',
                        tmpString,
                        tiInformation,
                        Application.MainForm);

      If (R = ID_OK) Then
        Begin
          If Trim(tmpString) = '' Then tmpString := ModuloGenerales.tNivelesCodigo.Value;
          ModuloGenerales.tNivelesDescripcion.Value := tmpString;
          ModuloGenerales.tNivelesFecha.Value := Modulo.Enlace.AppServer.ServerDate;
          ModuloGenerales.tNiveles.Post;
          ModuloGenerales.tNiveles.ApplyUpdates(0)
        End
    End;
  ModuloGenerales.tNiveles.CancelUpdates;
  ModuloGenerales.tNiveles.Refresh
end;

procedure TfrmNiveles_Acceso.Eliminar_NivelExecute(Sender: TObject);
  Var
    R : Integer;
begin
  R := AdvAsk('Eliminar Nivel de Acceso : ' + ModuloGenerales.tNivelesDescripcion.Value,
              'Realmente desea ELIMINAR este nivel?',
              'Para confirmar que desea eliminar este nivel presione la tecla [ENTER] o haga click en el boton SI',
              tiWarning,
              [cbYes,cbNo],
              Self);

  If R = ID_YES Then
    Begin
      Desactivar_Todos.Execute;
      If ModuloGenerales.tNiveles.RecordCount > 0 Then ModuloGenerales.tNiveles.Delete;
      If ModuloGenerales.tNiveles.ChangeCount > 0 Then ModuloGenerales.tNiveles.ApplyUpdates(0);
      ModuloGenerales.tNiveles.Refresh
    End
end;

procedure TfrmNiveles_Acceso.Modificar_NivelExecute(Sender: TObject);
  Var
    tmpString : String;
    R         : Integer;
begin
  If ModuloGenerales.tNiveles.RecordCount = 0 Then Exit;
  tmpString := ModuloGenerales.tNivelesDescripcion.Value;
  R := AdvMemoInput('Modificar Nivel de Acceso',
                    'Descripción del Nivel:',
                    'Digite/Modifique la Descripción para el Nivel de Acceso y presione la tecla [ENTER] o haga click en el boton ACEPTAR',
                    tmpString,
                    tiInformation,
                    Application.MainForm);

  If (R = ID_OK) And (Trim(tmpString) <> '') Then
    Begin
      ModuloGenerales.tNiveles.Edit;
      ModuloGenerales.tNivelesDescripcion.Value := tmpString;
      ModuloGenerales.tNiveles.Post;
      ModuloGenerales.tNiveles.ApplyUpdates(0)
    End;
  ModuloGenerales.tNiveles.CancelUpdates;
  ModuloGenerales.tNiveles.Refresh
end;

Initialization
  RegisterClass(TfrmNiveles_Acceso);

end.
