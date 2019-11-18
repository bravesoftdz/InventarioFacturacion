unit Utilidades;
interface

  Uses
    Registry, Classes, Controls, Windows, NB30;

  ResourceString
    {Direcciones del Registro}
    _CurrentVersion                      = 'SOFTWARE\Microsoft\Windows\CurrentVersion';
    _SystemInforMationKey                = 'SOFTWARE\SAIVC\Server\SystemInformation';
    _DataRouteKey                        = 'SOFTWARE\SAIVC\Server\ServerConnection';
    _CompanyInfoKey                      = 'SOFTWARE\SAIVC\Server\SystemInformation\CompanyInfo';
    _LoginInformationKey                 = 'SOFTWARE\SAIVC\Server\LoginInfo';
    _UsersKey                            = 'SOFTWARE\SAIVC\Server\LoginInfo\Users';
    _GeneralConfigKey                    = 'SOFTWARE\SAIVC\Server\SystemInformation\GeneralConfig';
    {Extensiones de Archivos}
    _IniExtension                        = '.Stl';
    {Consantes del Sistema}
    _BckSlash                            = '\';
    _LogName                             = 'stmlg.hst';
    _HistName                            = 'History.Sn';
    _HistUsersName                       = 'Users.Sn';
    // Configuracion & Formatos
    _LongDateTimeFormat                  = 'ddd-dd-mmmm-yyyy / HH:mm:ss';
    _LongDate                            = 'dddd  dd "de" mmmm "del" yyyy';
    _ShortTime                           = 'h:mmam/pm';
    // Nombres de Claves del Registro
    _WindowsColor                        = 'WindowsColor';
    _ColorEncNumeros                     = 'HeaderColor1';
    _ColorEncPales                       = 'HeaderColor2';
    _ColorFuenteEncNumeros               = 'HeaderFontColor1';
    _ColorFuenteEncPales                 = 'HeaderFontColor2';
    _ColorDetNumeros                     = 'DetailColor1';
    _ColorDetPales                       = 'DetailColor2';
    _ColorFuenteDetNumeros               = 'DetailFontColor1';
    _ColorFuenteDetPales                 = 'DetailFontColor2';
    _ColorPieNumeros                     = 'SumaryColor1';
    _ColorPiePales                       = 'SumaryColor2';
    _ColorPieTripletas                   = 'SumaryColor3';
    _ColorFuentePieNumeros               = 'SumaryFontColor1';
    _ColorFuentePiePales                 = 'SumaryFontColor2';
    _ColorFuentePieTripletas             = 'SumaryFontColor3';
    _AutoConfiguration                   = 'AutoConfig';
    _ClientTitle                         = 'ApplicationTitle';
    _LastUser                            = 'LastUser';
    _LastDbDir                           = 'Last DataBase Dir';
    _DescripcionUsuario                  = 'Description';
    _CanChangeStatus                     = 'CanChangeStatus';
    _ContrasenaUsuario                   = 'LoginWord';
    _NiveldeAcceso                       = 'AccessLevel';
    _CurrencyString                      = 'CurrencyString';
    _ShortDateFormat                     = 'ShortDateFormat';
    _LongDateFormat                      = 'LongDateFormat';
    _ShortTimeFormat                     = 'ShortTimeFormat';
    _LongTimeFormat                      = 'LongTimeFormat';
    _MessageAvi                          = 'MessageAvi';
    _DoCheck                             = 'Chequear';
    _ServicePackID                       = 'ServicePack-ID';
    // Transacciones
    _AllowAutoStart                      = 'AllowAutoStart';
    _DefaultAction                       = 'DefaultAction';
    _DefaultLector                       = 'DefaultLector';
    _AutoStopAction                      = 'AutoStopAction';
    _TransactionParamLine1               = 'TransParLn1';
    _TransactionParamLine2               = 'TransParLn2';
    _TransactionParamLine3               = 'TransParLn3';
    _TransactionParamLine4               = 'TransParLn4';
    // Informacion de la Compañía
    _UserCompName                        = 'Name';
    _UserCompAddres                      = 'Address';
    _UserCompPhone1                      = 'Phone1';
    _UserCompPhone2                      = 'Phone2';
    _UserCompRNC                         = 'RNC';
    _UserCompOwner                       = 'Owner';
    _UserCompCity                        = 'City';
    _UserCompCountry                     = 'Country';
    _UserCompAlignment                   = 'Alignment';
    _UserLogo                            = 'Logo';
    _ImagenFondo                         = 'Image';
    // Datos de la Terminal
    _TerminalName                        = 'TerminalName';
    _GroupName                           = 'GroupName';
    // Valores Por Defecto
    _LstSorteo                           = 'SorteoLst';
    _Status                              = 'Status';
    _Printer                             = 'Printer';
    _Salida                              = 'OutPort';
    _Pr_EPSON                            = 'EPSON';
    _Pr_STAR                             = 'SP200X';
    _Port                                = 'Port';
    _Screen                              = 'Screen';
    _LineWidth                           = 'LineWidth';
    _Enc_Coment                          = 'EncComent';
    _Foot_Coment1                        = 'FootComent1';
    _Foot_Coment2                        = 'FootComent2';
    _Foot_Coment3                        = 'FootComent3';
    _Foot_Coment4                        = 'FootComent4';
    _LineSeparator                       = 'Separator';
    _ISREADY                             = 'READY';
    _DateFormat                          = 'DateFormat';
    _Pos_Sorteo                          = 'Pos_Sorteo';
    _CopiMode                            = 'CopiMode';
    _Cm_Select                           = 'SELECT';
    _Cm_Decide                           = 'DECIDE';
    _Num_Size                            = 'NumSize';
    _LinesAfter                          = 'LinesAfter';
    _NS_NORM                             = 'NORMAL';
    _NS_MED                              = 'MEDIUM';
    _NS_HI                               = 'HIGH';
    _Sorteo_UP                           = 'UP';
    _Sorteo_Down                         = 'DOWN';
    // Sistema de Voz
    _VcCharacter                         = 'Character';
    _VcMaxPitch                          = 'MaxPitch';
    _VcMaxSpeed                          = 'MaxSpeed';
    _VcMaxVolumeLeft                     = 'MaxVolumeLeft';
    _VcMaxVolumeRight                    = 'MaxVolumeRight';
    _VcMinPitch                          = 'MinPitch';
    _VcMinSpeed                          = 'MinSpeed';
    _VcMinVolumeLeft                     = 'MinVolumeLeft';
    _VcMinVolumeRigth                    = 'MinVolumeRigth';
    _VcPitch                             = 'Pitch';
    _VcSpeed                             = 'Speed';
    _VcVolumeLeft                        = 'VolumeLeft';
    _VcVolumeRight                       = 'VolumeRight';
    _VcLipStyle                          = 'LipStyle';
    // Conexion al Servidor
    _ConectionServerPath                 = 'ServerPath';
    _ConectionLocalServerPath            = 'LocalServerPath';
    _ConectionURL                        = 'URL';
    _ConectionLocalURL                   = 'LocalURL';
    // Acceso
    _ServerUserName                      = 'UserName';
    _ServerUserPassword                  = 'PassWord';
    _SuperUserLevel                      = 'ALL';
    _ParamServerUserName                 = 'user_name=';
    _ParamServerUserPassWrd              = 'password=';
    _SuperVisor                          = 'SUPERVISOR';
    {Status de Recibos}
    _stACTIVO                            = 'ACTIVO';
    _stCERRADO                           = 'CERRADO';
    _stIMPRESO                           = 'IMPRESO';
    _stANULADO                           = 'ANULADO';
    _stFUTURO                            = 'FUTURISTA';
    {Tipos de Combinaciones}
    _Tipo_Numero                         = 'Numero';
    _Tipo_Pale                           = 'Pale';
    _Tipo_Tripleta                       = 'Tripleta';
    {Mensajes del Sistema}
    // Errores
    _ErrVentasNoAbiertas                 = 'ERROR: No ha llegado la hora de ventas';
    _ErrVentasCerradas                   = 'ERROR: Ya se cerraron las ventas para la lotería %s';
    _ErrNoNumerosDisponibles             = 'ERROR: No existen puntos disponibles de ese número';
    _ErrNoPalesDisponibles               = 'ERROR: No existen pales disponibles de esa combinación';
    _ErrNoTripletasDisponibles           = 'ERROR: No existen tripletas disponibles de esa combinación';
    _ErrHorarioNoDefinido                = 'ERROR: Su Horario de venta no está definido #13 Consulte el administrador del sistema';
    _ErrSorteoNoDisponible               = 'ERROR: Sorteo de Lotería %s No Disponible';
    _ErrNingunSorteoDisponible           = 'ERROR: No Existe Sorteo de Lotería Disponible';
    _ErrAccesoDenegado                   = 'ERROR: Acceso Denegado al Sistema';
    _ErrUsuarioMenor3                    = 'ERROR: Nombre de Usuario Incorrecto'+ #13 + 'Debe ser Mayor de 3 Caracteres';
    _ErrContrasenaMenor3                 = 'ERROR: Contraseña del Sistema Incorrecta'+ #13 + 'Debe ser Mayor de 3 Caracteres';
    _ErrContrasenaVerificacionDiferente  = 'ERROR: La Contraseña y la Verificación de la Contraseña Deben ser Iguales';
    _ErrFechaSalidaMenorLlegada          = 'ERROR: La Fecha de salida no puede ser menor que la fecha de llegada';
    _ErrGuardarRegistro                  = 'ERROR: Se presentó un problema al momento de guardar el registro';
    _ErrSobreCargaPersonas               = 'ERROR: La Habitación %s sólo puede albergar %d personas y se están alojando %d' + #13 + 'Debe seleccionar otra(s) habitación(es) para las personas restantes';
    _ErrClienteVacio                     = 'ERROR: Debe introducir un número de Cédula/Pasaporte existente';
    _ErrEmpleadoNoExistente              = 'ERROR. Empleado no registrado. Por favor, Intente de nuevo.';
    _ErrEmpleadoNoAutorizado             = 'ERROR. Empleado %s. Por favor, Comuníquese con Administración';
    // Advertencias
    _GENERANDOLISTA                      = 'Generando la Lista';
    _GENERANDORECIBO                     = 'Guardando y Generando el Recibo';
    _GENERANRESUMEN                      = 'Generando Resumen de Ventas';
    _COPIANDORECIBO                      = 'Creando Copia del Recibo';
    _SoloXpuntosDisponibles              = 'Solo Existen %d Puntos Disponibles del %s'#13'Se venderá sólo esta cantidad';
    _SoloXpalesDisponibles               = 'Solo Existen %d Pales Disponibles de %s-%s'#13'Se venderá sólo esta cantidad';
    _SoloXtripletasDisponibles           = 'Solo Existen %d Tripletas Disponibles de %s-%s-%s'#13'Se venderá sólo esta cantidad';
    _MuchoTiempo                         = 'El proceso puede tardar un momento';
    _Espere                              = 'Por favor, Espere';
    _DatosEnEdicion                      = 'Existen Datos en Edición' + #13 + '¿Desea Cancelarlos e Iniciar un Nuevo Registro?';
    _NuevoRegistro                       = 'Crear Nuevo Registro';
    _ConfirmarSalida                     = 'Realmente Desea Terminar La Ejecución del Programa';
    _Preg_Reimprimir                     = '¿Realmente Desea RE-IMPRIMIR El Recibo Seleccionado?';
    _Preg_Anular                         = '¿Realmente Desea ANULAR El Recibo Seleccionado?';
    _Preg_Duplicar                       = '¿Realmente Desea COPIAR El Recibo Seleccionado?';
    _ResultadoGenerado                   = 'El resultado de la lotería %s para la fecha %s YA FUE GENERADO'#13'Se cargarán los valores generados'#13'Por Favor, Verifique';
    // Informaciones
    _MensajeEntrada                      = 'ENTRADA. %s, %s';
    _MensajeSalida                       = 'SALIDA. %s, %s';
    _NoPrintData                         = 'No Existen Datos Para Reportar';
    _HabitacionDesocupada                = 'Esta Habitacion ya fue desocupada';
    _VerificandoUsuario                  = 'Verificando Nombre de Usuario';
    _VerificandoContrasena               = 'Verificando Contraseña de Usuario';
    _AccesoConcedido                     = 'Acceso Concedido al Sistema';
    _UsuarioCreadoModificado             = 'Usuario Registrado/Modificado';
    _NoneString                          = 'NONE';
    _SeleccioneEmpleado                  = 'Seleccione el un empleado';
    {Sentencias SQL}
    //Registro
    _SelectTodosLosRegistros             = 'SELECT * FROM "Registro" WHERE ("Fecha" >= %s) AND ("Fecha" <= %s) ORDER BY "Empleado", "Fecha"';
    _SelectRegistrosByEmpleado           = 'SELECT * FROM "Registro" WHERE ("Empleado" = %s) AND ("Fecha" >= %s) AND ("Fecha" <= %s) ORDER BY "Fecha"';
    //Empleados
    _SelectAllEmpleados                  = 'SELECT * FROM "Empleados" ORDER BY "Nombre","Apellido"';
    _SelectRecibosByDate_Status          = 'SELECT * FROM "Recibos" WHERE ("Fecha" >= :F1) AND ("Fecha" <= :F2) AND ("Status") = %s ORDER BY "Fecha"';
    _SelectEmpleadosByName               = 'SELECT * FROM "Empleados" WHERE "Nombre" LIKE %s ORDER BY "Nombre", "Apellido"';
    _SelectEmpleadosStatus               = 'SELECT * FROM "Empleados" WHERE "Status" = %s ORDER BY "Nombre", "Apellido"';
    _SearchSQL                           = 'SELECT * FROM "%s" WHERE (UPPER("%s") LIKE UPPER(%s)) OR (UPPER("%s") = UPPER(%s)) ORDER BY "%s" %s';

   {Codigos Para las Impresras }
   // Star SP200x y Compatibles
   _Sp_Init         = #0;
   _Sp_Normal       = #0;
   _Sp_BigFont      = #$1B#$57#$31;
   _Sp_WBigFont     = #$1B#$57#$31;
   _Sp_HighFont     = #27#87#1;
   _Sp_NoHighFont   = #27#87#0;
   _Sp_NoBigFont    = #$1B#$57#$30;
   _Sp_NoWBigFont   = #$1B#$57#$30;
   _Sp_NoBig        = #0;//27#54;
   _Sp_Draft        = #0;//27#120#1;
   _Sp_NoDraft      = #0;//27#120#1;
   _Sp_Condensado   = #0;//27#15#1;
   _Sp_NoCondens    = #0;//18;
   _Sp_Bold         = #0;//27#69;
   _Sp_NoBold       = #0;//27#70;
   _Sp_FormFeed     = #0;//12;
   // EPSO TMU y Compatibles
   _Ep_Init         = #27#64;
   _Ep_Normal       = #27#64;
   _Ep_BigFont      = #27#33#33;
   _Ep_WBigFont     = #27#33#49;
   _Ep_NoBigFont    = #27#33#1;
   _Ep_Draft        = #27#120#1;
   _Ep_NoDraft      = #27#120#1;
   _Ep_Condensado   = #27#15#1;
   _Ep_NoCondens    = #18;
   _Ep_Bold         = #27#33#8;
   _Ep_NoBold       = #27#33#0;
   _Ep_FormFeed     = #12;

 Type
   TCPUID           = Array [1..4]  of Longint;
   TVendor          = Array [0..11] of char;

  Var
    RegInfo         : TRegistry;
    PrnF            : TextFile;
    Buf             : String  = '';
    AnchoLinea      : Shortint = 40;
    _AutoConfig     : Boolean= False;
    _CurrentUser    : String = _NoneString;
    _CurrentLevel   : String = _NoneString;
    _CurrentTerminal: String = _NoneString;
    _CurrentGroup   : String = _NoneString;
    _Vk_Return      : Char   = Char(Vk_RETURN);
    _OriginaProduct : String;
    // Codigos Para La Impresora
    _Init           : String = #27#64;
    _Normal         : String = #27#64;
    _BigFont        : String = #27#33#33;
    _WBigFont       : String = #27#33#49;
    _NoBigFont      : String = #27#33#1;
    _Draft          : String = #27#120#1;
    _NoDraft        : String = #27#120#1;
    _Condensado     : String = #27#15#1;
    _NoCondens      : String = #18;
    _Bold           : String = #27#33#8;
    _NoBold         : String = #27#33#0;
    _FormFeed       : String = #12;

  Const
    {Constantes}
    _Margen         : Double  = 0.1;
    _Separator      : Char    = '.';
    _Factor         : Integer = $E;
    _EmptyChar      : Char    = #13;
    _LoginWidth     : Integer = 273;
    _RegisterWidth  : Integer = 546;
    _SalesNotOpen   : Integer = -1;
    _SalesClosed    : Integer = -2;
    _PreviewFile    : String  = 'Preview.txt';
    ID_BIT          = $200000;

    DbStateMessages : Array [0..12] Of String = ('Inactivo','Guardado','Modificando',
                                                 'Añadiendo','Clave Activada','Calculando Campos',
                                                 'Filtada','Nuevo Valor','Valor Anterior',
                                                 'Valor Actual','Lectura de Bloque','Calculo Interno',
                                                 'Abriendo');

    MesesAnio : Array [1..12] Of String = ('Enero','Febrero','Marzo',
                                           'Abril','Mayo','Junio',
                                           'Julio','Agosto','Septiembre',
                                           'Octubre','Noviembre','Diciembre');
{Funciones}
  Function ReadDemoExp(Var D : TDate) : Boolean;
  Function GetVolumeID(DriveChar: Char): String;
  Function ValSerial : Boolean;
  Function IsDemo : Boolean;
  Function InvertStr(S : String): String;
  Function Pad(Kind:Char;Const S:String; N:Byte; Character : Char):String;
  Function Encrypt(S : String): String;
  Function UnEncrypt(Const S : String): String;
  Function NumToAlpha(Number: Int64): String;
  Function RealNumToAlpha(Number: Real): String;
  Function PesosToUS(Pesos, Prima : Currency): Currency;
  Function USToPesos(US, Prima : Currency): Currency;
  Function Question(Const MessageText,Caption : String): Boolean;
  Function DoubleQuoted(Const S : String):String;
  Function GenIniName : String;
  Function GetRegColor(Const ColorKey,ColorSection : String): Integer;
  Function CountChar(Const SubStr : Char; S : String): Integer;
  Function Uncode(Const S : String):String;
  Function LBrush(const S:String; n:byte):String;
  Function RBrush(const S:String; n:byte):String;
  Function CBrush(const S:String; n:byte):String;
  Function Fill(Const c:Char; n:Integer):String;
  Function IsCPUID_Available : Boolean; Register;
  Function GetCPUVendor : TVendor; assembler; register;
  Function GetCPUID : TCPUID; assembler; register;
  Function GetMACAddress: string;
  Function GetAdapterInfo(Lana: Char): String;
  Function GenCPUID : String;

{Procedimientos}
  Procedure Log (Const LogName,LogSection,LogKey,LogValue : String);
  Procedure Mensaje (S : String);
  Procedure MakeDemoExp(Days : Byte);
  Procedure ShowExpMessage;
  Procedure CheckOptions(Sender: TObject; Nivel : String);
  Procedure SortPlay(var P,S,T : String);
  Procedure SetPrinterCodes (Const PrinterType : String);
  Procedure BeginPrn(Device,OutPort : String);
  Procedure PrnLn(S : String);
  Procedure Prn(S : String);
  Procedure EndPrn;

implementation

{Declaración de Unidades}
  Uses
    SysUtils, Forms, IniFiles;

{$I Sys.Cnt}

end.
