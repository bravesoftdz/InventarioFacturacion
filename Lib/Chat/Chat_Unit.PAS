unit Chat_Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ShellAPI, IdBaseComponent, IdComponent, IdRawBase, IdRawClient,
  IdIcmpClient, ExtCtrls, IdAntiFreezeBase, IdAntiFreeze, idException, IniFiles, StrUtils,
  Menus, Sockets, ComCtrls, CheckLst, IdGlobal, IdExceptionCore, IdStack,
  editlist, DB, Grids, Wwdbigrd, Wwdbgrid, DBClient, ImgList;
const
  CM_RESTORE = WM_USER + $1000;
type
  PUser = ^TUser;
  TUser = Record
            Nick,
            IP   : String
          End;
  TChatForm = class(TForm)
    IdIcmpClient1: TIdIcmpClient;
    Timer1: TTimer;
    IdAntiFreeze1: TIdAntiFreeze;
    PopupMenu1: TPopupMenu;
    Mostrar1: TMenuItem;
    N1: TMenuItem;
    Salir1: TMenuItem;
    Cliente: TTcpClient;
    Servidor: TTcpServer;
    Ocultar1: TMenuItem;
    MainMenu1: TMainMenu;
    Salir2: TMenuItem;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Texto: TEdit;
    Mensages: TRichEdit;
    Alias: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Timer2: TTimer;
    Barra: TStatusBar;
    Destino: TEdit;
    tContactos: TClientDataSet;
    dContactos: TDataSource;
    Usuarios: TwwDBGrid;
    tContactosImagen: TIntegerField;
    tContactosUsuario: TStringField;
    tContactosIp: TStringField;
    imagenes: TImageList;
    Opciones: TMenuItem;
    SeleccionarContacto1: TMenuItem;
    LimpiarPantalla1: TMenuItem;
    EnviaraTodos1: TMenuItem;
    Todos: TCheckBox;
    Label3: TLabel;
    Label4: TLabel;
    procedure UsuariosKeyPress(Sender: TObject; var Key: Char);
    procedure SeleccionarContacto1Click(Sender: TObject);
    procedure LimpiarPantalla1Click(Sender: TObject);
    procedure EnviaraTodos1Click(Sender: TObject);
    procedure UsuariosClick(Sender: TObject);
    procedure IdIcmpClient1Reply(ASender: TComponent;
      const AReplyStatus: TReplyStatus);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Mostrar1Click(Sender: TObject);
    procedure Ocultar1Click(Sender: TObject);
    procedure Salir2Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure ServidorAccept(Sender: TObject;
      ClientSocket: TCustomIpClient);
    procedure TextoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure WndProc(var Msg : TMessage); override;
    procedure Comenzar;
    function  BuscarIP(IP : TSocketHost) : Pointer;
    procedure ActualizarLista;
    Function  GetID(IP : TSocketHost) : Boolean;
    procedure CreateParams(var Params: TCreateParams); override; { Manejador de parámetros en tiempo de ejecución }
    procedure RestoreRequest(var message: TMessage); message CM_RESTORE; { Manejador del mensaje CM_RESTORE }
  public
    { Public declarations }
    IP          : TSocketHost;
    Cont        : Integer;
    ListaIPs,
    CopiaIPS    : TList;
    INData      : TNotifyIconData;
    Update      : Boolean;
  end;

var
  ChatForm: TChatForm;

implementation

{$R *.dfm}

procedure TChatForm.Comenzar;
Function IPLocal : TSocketHost;
Begin
  Result:=Cliente.LocalHostAddr;
End;
begin
  Cont:=5;
  Update:=True;
  IP:=ReverseString(IPLocal);
  Delete(IP,1,Pos('.',IP)-1);
  IP:=ReverseString(IP);
  Barra.Panels[0].Text:='Actualizando lista de usuarios.';
  Timer1.Enabled:=True;
end;

{ Evento se dispara cuando arriba el pong }
procedure TChatForm.IdIcmpClient1Reply(ASender: TComponent;
  const AReplyStatus: TReplyStatus);
Var
  T    : String;
  IP   : TSocketHost;
  User : PUser;
begin
  Case AReplyStatus.ReplyStatusType of //Tipo de respuesta
    rsEcho:
      Begin
        IP:=AReplyStatus.FromIpAddress;
        GetID(IP);
      End;
    rsError:
      Begin
      End;
    rsTimeOut:
      Begin
      End;
    rsErrorUnreachable:
      Begin
      End;
    rsErrorTTLExceeded:
      Begin
      End;
  End; { Case }
  StrPCopy(INData.szTip, T); //Necesario para convertir de String a PChar.
  Shell_NotifyIcon(NIM_MODIFY, @INData);  //Actualizar el ToolTipText del Icono en la Systray.
end; procedure TChatForm.LimpiarPantalla1Click(Sender: TObject);
begin
  Mensages.Lines.Clear
end;

{ TChatForm.IdIcmpClient1Reply }


{ Dispara un ping }
procedure TChatForm.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;                   //Cambio el estado del timer.
  IdIcmpClient1.Host:=IP+IntToStr(Cont);
  Try
  IdIcmpClient1.Ping;              //PING!
  Except
   On A:EIdIcmpException do        //El host existe pero no devuelve un ping estandar.
     Begin
       //Memo1.Lines.Add(Timetostr(Time)+' - '+A.Message);
     End; { EIdIcmpException }
   on A:EIdSocketError do          //El host no existe :(
     Begin
       If A.LastError = 11001 Then
         //Memo1.Lines.Add(TimeToStr(Time)+' - '+'Host No Encontrado o Inválido')
       Else
         //Memo1.Lines.Add(TimeToStr(Time)+' - '+A.Message+' - '+IntToStr(A.LastError));
     End; { EIdSocketError }
  End; { Try }
  If Cont<254 Then
    Begin
      Inc(Cont);
      Timer1.Enabled:=True;
    End
    Else
      Begin
        ListaIPs.Assign(CopiaIPS,laCopy);
        Update:=False;
        ActualizarLista;
      End;
end;

{ Pregunto... alguna vez este evento se dispara?. }
procedure TChatForm.FormCreate(Sender: TObject);
begin
  with INData do begin               //TIconNotifyData.
    hIcon:=Application.Icon.Handle;  //Manejador del Icono en la Systray.
    uCallbackMessage:=WM_USER + 1;   //Setea un mensaje de usuario en Windows.
    cbSize:=SizeOf(INData);          //Requerido por la API.
    Wnd:=Handle;                     //Manejador de la aplicación.
    uID:=100;                        //aronou guat de jel is dis.
    uFlags:=NIF_MESSAGE + NIF_ICON + NIF_TIP;  //Banderas. Notificar mensaje, icono y ToolTipText.
  end; { With }
  StrPCopy(INData.szTip, Application.Title);
  Shell_NotifyIcon(NIM_ADD, @INData);           // API de Windows, Agrega el icono a la Systray.
  ListaIPs:=TList.Create;
  CopiaIPS:=TList.Create;
  Update:=False;
  tContactos.CreateDataSet;
  tContactos.Open;
  Alias.Text:=Cliente.LocalHostName;
  Barra.Panels[0].Text:='RMS CHAT MODULE';
end; { TChatForm.FormCreate }

{ Para procesar el mensaje configurado en INData }
procedure TChatForm.WndProc(var Msg : TMessage);
var
  p : TPoint; //Para determinar dónde se hizo click.
begin
  case Msg.Msg of  //Si el mensaje...
    WM_USER + 1:   //es igual al que yo establecí...
    case Msg.lParam of   //y el parametro...
      WM_RBUTTONDOWN: begin //es igual a un click.
                        GetCursorPos(p);   //Tomo la posición del mouse.
                        PopupMenu1.Popup(p.x, p.y); //Levanto el PopUpMenú en la Systray.
                      end;
      WM_LBUTTONDBLCLK: ChatForm.Show; //Si es doble click izquierdo, muestro el Form (onda ICQ).
    end; { Case }
  end; { Case }
  inherited; //Se continua con el proceso normal de mensajes.
end;

{ Para liberar el objeto .ini }
procedure TChatForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caNone;    //Detengo el proceso del evento (el form nunca se cierra realmente, sino se terminaría la aplicación.
  ChatForm.Hide;        //en vez de eso lo escondo.
end;

procedure TChatForm.Mostrar1Click(Sender: TObject);
begin
  ChatForm.Show;
end;

{ Procesa parametros en tiempo de ejecución, se dispara cuando Windows envia el mensaje CM_RESTORE }
procedure TChatForm.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.WinClassName := 'Chat';
end;

procedure TChatForm.EnviaraTodos1Click(Sender: TObject);
begin
  Texto.SetFocus;
  Todos.Checked := Not(Todos.Checked)
end;

{ Si el mensaje recibido es CM_RESTORE mostrar el Form }
procedure TChatForm.RestoreRequest(var message: TMessage);
begin
  ChatForm.Show;
end;


{ Este es el verdadero cerrar del form }
procedure TChatForm.Ocultar1Click(Sender: TObject);
begin
  ChatForm.Hide;
end;

procedure TChatForm.Salir2Click(Sender: TObject);
begin
  close
{  Shell_NotifyIcon(NIM_DELETE, @INData);  //Quita el Icono de la Systray.
  Timer1.Enabled:=False;
  Timer2.Enabled:=False;
  Application.ProcessMessages; //dejalo que procese todo lo que haga falta.
//  Application.Terminate;       //THE END.}
end;

procedure TChatForm.Salir1Click(Sender: TObject);
begin
  Close
{  Shell_NotifyIcon(NIM_DELETE, @INData);  //Quita el Icono de la Systray.
  Timer1.Enabled:=False;
  Timer2.Enabled:=False;
  Application.ProcessMessages; //dejalo que procese todo lo que haga falta.
  Application.Terminate;}
end;

procedure TChatForm.Timer2Timer(Sender: TObject);
begin
  CopiaIPS.Clear;
  Comenzar;
  Timer2.Interval:=5*1000*60;
end;

procedure TChatForm.UsuariosClick(Sender: TObject);
begin
  Texto.SetFocus;
  Destino.Text := tContactosIp.AsString
end;

procedure TChatForm.UsuariosKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
    UsuariosClick(Sender)
end;

function TChatForm.BuscarIP(IP: TSocketHost): Pointer;
Var
  T : PUser;
  I : Integer;
  Lista : TList;
begin
  Result:=NIL;
  I:=0;
  If Update Then Lista:=CopiaIPS Else Lista:=ListaIPs;
  If Lista.Count<>0 Then
    Repeat
      T := Lista.Items[I];
      If T.IP = IP Then
        Begin
          Result:=T;
          T:=NIL;
        End;
      Inc(I);
    Until (T=NIL) Or (I=Lista.Count);
end;

procedure TChatForm.ActualizarLista;
Var
  I : Integer;
  User : PUser;
begin
  With ListaIPs Do
    For I:=0 To Count-1 Do
      Begin
        User:=Items[I];
        If Not tContactos.Locate('Ip',User.IP,[]) Then
          Begin
            tContactos.Append;
            tContactosUsuario.Value := User.Nick;
            tContactosIp.AsString := User.IP;
            If (I Mod 2) = 0 Then tContactosImagen.Value := 0
            Else  tContactosImagen.Value := 1;
            tContactos.Post
          end;
      End;
  Barra.Panels[0].Text:='RMS CHAT MODULE';
end;

function TChatForm.GetID(IP: TSocketHost): Boolean;
Var
  Nick : String;
  S    : String;
  User : PUser;
begin
//  Mensages.Lines.Add(IP);
  With Cliente Do
    Begin
      Disconnect;
      RemoteHost:=IP;
      Open;
      If Active Then
        Begin
          Nick:=Alias.Text;
          If Nick='' Then Nick:=Cliente.LocalHostName;
          Sendln('U'+Nick,eol);
          Disconnect;
        End;
    End;
end;

procedure TChatForm.SeleccionarContacto1Click(Sender: TObject);
begin
  Usuarios.SetFocus
end;

procedure TChatForm.ServidorAccept(Sender: TObject;
  ClientSocket: TCustomIpClient);
Var
  S,Nick : String;
  User   : PUser;
  IP     : TSocketHost;
  Temp   : TTcpClient;
begin
  Repeat
    Application.ProcessMessages;
    S:=ClientSocket.Receiveln(EOL);
  Until S<>'';
  Case S[1] Of
    'U' : Begin
            Delete(S,1,1);
            Mensages.Lines.Add(Format('Entrada %s : %s',[TimeToStr(Time()),S]));
            IP:=ClientSocket.LookupHostAddr(ClientSocket.RemoteHost);
            User:=BuscarIP(IP);
            If User=NIL Then
              Begin
                New(User);
                User.Nick:=S;
                User.IP:=IP;
                If Update Then
                  CopiaIPs.Add(User)
                  Else
                    Begin
                      ListaIPs.Add(User);
                      ActualizarLista;
                    End;
              End;
            Temp:=TTcpClient.Create(Self);
            With Temp Do
              Begin
                RemotePort:='1024';
                RemoteHost:=IP;
                BlockMode:=bmBlocking;
                Open;
                  If Active Then
                    Begin
                      Nick:=Alias.Text;
                      If Nick='' Then Nick:=Cliente.LocalHostName;
                      Sendln('u'+Nick,eol);
                    End;
                Free;
              End;
          End;
    'u' : Begin
            Delete(S,1,1);
            IP:=ClientSocket.LookupHostAddr(ClientSocket.RemoteHost);
            User:=BuscarIP(IP);
            If User=NIL Then
              Begin
                New(User);
                User.Nick:=S;
                User.IP:=IP;
                If Update Then
                  CopiaIPs.Add(User)
                  Else
                    Begin
                      ListaIPs.Add(User);
                      ActualizarLista;
                    End;
              End;
          End;
    'T' : Begin
            ChatForm.Show;
            Delete(S,1,1);
            IP:=ClientSocket.LookupHostAddr(ClientSocket.RemoteHost);
            User:=BuscarIP(IP);
            If User<>NIL Then
              Begin
                S:='( '+TimeToStr(Time)+') - '+User.Nick+' : '+S;
              End;
            Mensages.Lines.Add(S);
          End;
  End;
end;

procedure TChatForm.TextoKeyPress(Sender: TObject; var Key: Char);
Var
  I,J  : Integer;
  Temp : TTcpClient;
  User : PUser;
begin
  If Key=#13 Then
    Begin
      Temp:=TTcpClient.Create(Self);
      With Temp Do
        Begin
         If Todos.Checked Then
           Begin
             For I:=0 To ListaIPs.Count-1 Do
               Begin
                 Disconnect;
                 RemotePort := '1024';
                 User       := ListaIPs.Items[I];
                 RemoteHost := User.IP;
                 BlockMode  := bmBlocking;
                 Open;
                 If Active Then
                   Sendln('T' + Texto.Text, eol);
               End;
           End
         Else
           Begin
             J := 0;
             I := 0;
             While J = 0 Do
               Begin
                 User := ListaIPs.Items[I];
                 If User.IP = tContactosIp.Value Then J := 1;
                 Inc (I)
               end;

             Disconnect;
             RemotePort := '1024';
             RemoteHost := User.IP;
             BlockMode  := bmBlocking;
             Open;
             If Active Then
               Sendln('T' + Texto.Text, eol);
           End;
          Free;
        End;
      Key:=#00;
      Mensages.Lines.Add('>>' + Texto.Text);
      Texto.Clear;
    End;
end;

end.
