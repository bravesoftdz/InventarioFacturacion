program Chat;

uses
  Forms,
  Chat_Unit in 'Chat_Unit.PAS' {ChatForm},
  Windows,
  Messages;

{$R *.res}
const
  CM_RESTORE = WM_USER + $1000; // Mensaje para enviar como parametro en tiempo de ejecución
var
  EstiloExtendido : Integer;  //Retorno de la API.
  RvHandle : hWnd;            //Manejador de la ventana.
begin
{ Para saber si ya se está ejecutando }
  RvHandle := FindWindow('Chat', NIL); //Busca una ventana cuyo titulo sea 'Chat'
  if RvHandle > 0 then // Si el manejador es distinto de 0
  begin
    PostMessage(RvHandle, CM_RESTORE, 0, 0); // Envia el mensaje CM_RESTORE a esa ventana.
    Exit; //Sale.
  end;

  Application.Initialize; //Hasta aquí como siempre.

  { Obtengo el estilo extendido de la ventana de la aplicación. }
  EstiloExtendido := GetWindowLong(Application.Handle, GWL_EXSTYLE);

  { Hay que enmascarar a nivel de bits un par de cosas. Para hacerla corta, esto pone
  a la ventana principal de la aplicación como una Tool de Windows }
  SetWindowLong(Application.Handle, GWL_EXSTYLE, EstiloExtendido OR WS_EX_TOOLWINDOW
                                                 AND NOT WS_EX_APPWINDOW);

  Application.Title := 'ChatModule';
  Application.CreateForm(TChatForm, ChatForm);
  Application.Run;
end.
