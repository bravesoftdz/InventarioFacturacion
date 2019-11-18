unit CommentsLib;

interface
  uses
    SysUtils, Windows, Dialogs, DBClient, Db, TaskDialogEx, TaskDialog, Utilidades, Forms;

  Type
    _Comment_Action = String [25];

  Const
    // Acciones aplicadas
    _CA_ADD        : _Comment_Action = 'Añadido';
    _CA_DELETE     : _Comment_Action = 'Eliminado';
    _CA_EDIT       : _Comment_Action = 'Editado';

    // Tipo de Comentario
    _CT_USER       : _Comment_Action = 'USUARIO';
    _CT_SYSTEM     : _Comment_Action = 'SISTEMA';
    _CT_HISTORY    : _Comment_Action = 'HISTORIAL';

    // Resultados de manejo de comentarios
    _CE_ALL_CLEAR   = 0;
    _CE_NO_PROCESS  = 1;
    _CE_NO_COMMENT  = 2;
    _CE_CANCELLED   = 3;
    _CE_NO_SELECTED = 4;
    _CE_NO_RECORD   = 5;
    _CE_CANT_MODIFY = 6;
    _CE_TABLE_CLOSE = 10;
    _CE_List        : Array [0..10] Of String = ('Comentario %s Correctamente',
                                                 'No se ha especificado la instancia a la que se relaciona el comentario'#13'COMENTERIO NO %s'#13'Por Favor, Verifíque',
                                                 'No se escribió ningún comentario'#13'Por Favor, Verifíque',
                                                 'Proceso Cancelado'#13'No se ha %s ningun comentario',
                                                 'No se seleccionó ningún comentario',
                                                 'No existe ningún comentario para realizar esta operación',
                                                 'Comentario No %s. No está permitido editar ni modificar [COMENTARIO %s]'#13'Por Favor, Verifique',
                                                 '',
                                                 '',
                                                 '',
                                                 'No se pudo abrir el archivo de Comentarios'#13'La Tabla esta CERRADA');


  Function CommentAdd(Var Tabla : TClientDataSet;             // Añade Comentarios a la tabla y los relaciona con un proceso específico
                      Const Proceso, Comentario : String;
                      Const Tipo : _Comment_Action;
                      Const ShowScreen : Boolean) : Byte;

  Function CommentDelete (Var Tabla : TClientDataSet): Byte;  // Elimina el Comentario actual de la tabla
  Function CommentEdit (Var Tabla : TClientDataSet): Byte;    // Edita el Comentario actual de la tabla
  Function CommentTypeFilter(Var Tabla : TClientDataSet;      // Filtrar los Comentarios de la tabla por el tipo de comentario
                             Const ShowUsers,
                                   ShowHistory,
                                   ShowSystem : Boolean) : Byte;
  Function CommentLoad(Var Tabla : TClientDataSet;            // Carga los Comentarios de la tabla relacionados con un proceso específico
                       Const Proceso:String) : Byte;

implementation

  Function CommentAdd(Var Tabla : TClientDataSet;
                      Const Proceso, Comentario : String;
                      Const Tipo : _Comment_Action;
                      Const ShowScreen : Boolean) : Byte;
    Var
      S     : String;
      R     : Integer;
    Begin
      Result := _CE_ALL_CLEAR;
      S := Comentario;

      // Si no hay proceso definido no habrá forma de relacionarlo luego, NO se añade ningun comentario y sale...
      If Trim(Proceso) = '' Then Result := _CE_NO_PROCESS;

      // Si la tabla esta cerrada, Cargar el proceso y abrir
      If (Result = _CE_ALL_CLEAR) And Not(Tabla.Active) Then Result := CommentLoad(Tabla,Proceso);

      // Si no hubo ningún error, entonces mostrar el dialogo de entrada para escribir el comentario
      If Result = _CE_ALL_CLEAR Then
        Begin
          R := ID_OK;

          If ShowScreen Then
            R := AdvMemoInput('Añadir Notas / Comentarios',
                              'Escriba el comentario:',
                              'Digite el comentario que desea añadir y presione la tecla [ENTER] o haga click en el boton ACEPTAR',
                              S,
                              tiInformation,
                              Application.MainForm);

          If R = ID_OK Then
            Begin
              If Trim(S) = '' Then Result := _CE_NO_COMMENT // Si no se escribio ningun comentario, sale...
              Else
                Begin
                  Tabla.Append;
                  Tabla.FieldByName('Proceso').AsString := Proceso;
                  Tabla.FieldByName('Fecha').AsDateTime := Now;
                  Tabla.FieldByName('Hora').AsDateTime:= Now;
                  Tabla.FieldByName('Tipo').AsString := String(Tipo);
                  Tabla.FieldByName('Comentario').AsString := UpperCase(S);
                  Tabla.Post;
                  Tabla.ApplyUpdates(0);
                End {Else}
            End {If R}
          Else Result := _CE_CANCELLED
        End;

      _Last_Error_Message := Format(_CE_List[Result],[_CA_ADD]) // El mensaje resultante del procedimiento
    End;

  Function CommentDelete (Var Tabla : TClientDataSet): Byte;
    Var
      R     : Integer;
    Begin
      Result := _CE_ALL_CLEAR;

      // Si la tabla esta cerrada, Cargar el proceso y abrir
      If Not(Tabla.Active) Then Result := _CE_NO_SELECTED
      Else
        Begin
          If Tabla.RecordCount = 0 Then Result := _CE_NO_RECORD;
          If (Trim(Tabla.FieldByName('Tipo').AsString) = String(_CT_HISTORY)) OR
             (Trim(Tabla.FieldByName('Tipo').AsString) = String(_CT_SYSTEM)) Then Result := _CE_CANT_MODIFY
        End;


      // Si no hubo ningún error, entonces mostrar el dialogo de entrada para escribir el comentario
      If Result = _CE_ALL_CLEAR Then
        Begin
          R := AdvAsk('Eliminar Notas / Comentarios',
                      'Realmente desea eliminar el comentario seleccionado?',
                      'Para confirmar que desea eliminar el comentario presione la tecla [ENTER] o haga click en el boton SI',
                      tiWarning,
                      [cbYes,cbNo],
                      Application.MainForm);

          If R = ID_YES Then
            Begin
              Tabla.Delete;
              Tabla.ApplyUpdates(0);
            End
          Else Result := _CE_CANCELLED
        End;

      _Last_Error_Message := Format(_CE_List[Result],[_CA_DELETE,Tabla.FieldByName('Tipo').AsString]) // El mensaje resultante del procedimiento
    End;

  Function CommentEdit (Var Tabla : TClientDataSet): Byte;
    Var
      S     : String;
      R     : Integer;
    Begin
      Result := _CE_ALL_CLEAR;

      // Si la tabla esta cerrada, Cargar el proceso y abrir
      If Not(Tabla.Active) Then Result := _CE_NO_SELECTED
      Else
        Begin
          If Tabla.RecordCount = 0 Then Result := _CE_NO_RECORD;
          If (Trim(Tabla.FieldByName('Tipo').AsString) = String(_CT_HISTORY)) OR
             (Trim(Tabla.FieldByName('Tipo').AsString) = String(_CT_SYSTEM)) Then Result := _CE_CANT_MODIFY
        End;

      // Si no hubo ningún error, entonces mostrar el dialogo de entrada para escribir el comentario
      If Result = _CE_ALL_CLEAR Then
        Begin
            S := Tabla.FieldByName('Comentario').AsString;
            R := AdvMemoInput('Editar Notas / Comentarios',
                              'Edite el comentario:',
                              'Edite el comentario y presione la tecla [ENTER] o haga click en el boton ACEPTAR',
                              S,
                              tiInformation,
                              Application.MainForm);

          If R = ID_OK Then
            Begin
              If Trim(S) = '' Then Result := _CE_NO_COMMENT // Si no se escribio ningun comentario, sale...
              Else
                Begin
                  Tabla.Edit;
                  Tabla.FieldByName('Comentario').AsString := UpperCase(S);
                  Tabla.Post;
                  Tabla.ApplyUpdates(0);
                End {Else}
            End {If R}
          Else Result := _CE_CANCELLED
        End;

      _Last_Error_Message := Format(_CE_List[Result],[_CA_EDIT,Tabla.FieldByName('Tipo').AsString]) // El mensaje resultante del procedimiento
    End;

  Function CommentTypeFilter(Var Tabla : TClientDataSet;
                             Const ShowUsers,
                                   ShowHistory,
                                   ShowSystem : Boolean) : Byte;
    Var
      A,B,C,F : String;
    Begin
      F := '';
      If ShowUsers Then A := 'Tipo = ' + QuotedStr(String(_CT_USER));
      If ShowHistory Then B := 'Tipo = ' + QuotedStr(String(_CT_HISTORY));
      If ShowSystem Then C := 'Tipo = ' + QuotedStr(String(_CT_SYSTEM));
      F := A;
      If (Trim(F) <> '') And (Trim(B) <> '') Then F := F + ' OR ';
      F := F + B;
      If (Trim(F) <> '') And (Trim(C) <> '') Then F := F + ' OR ';
      F := F + C;
      If (Trim(F) <> '') Then
        Begin
          Tabla.Filter := F;
          Tabla.Filtered := True;
        End
      Else
       Tabla.Filtered := False
    End;

  Function CommentLoad(Var Tabla : TClientDataSet;
                       Const Proceso:String) : Byte;
    Begin
      Try
        Tabla.Close;
        Tabla.Params.ParamByName('Proceso').AsString := Proceso;
        Tabla.Open;
        Result := _CE_ALL_CLEAR;
      Except
        Result := _CE_TABLE_CLOSE
      End;
    End;
end.
