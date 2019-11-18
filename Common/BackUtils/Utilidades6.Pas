unit Utilidades;
interface

  Uses
    Registry, Classes, Controls, Graphics, Windows, DBClient, Menus, DbCtrls,
    StdCtrls, ActnMan, ActnMenus, ActnList, ActnCtrls;

  ResourceString
    {Direcciones del Registro}
    _CurrentVersion                      = 'SOFTWARE\Microsoft\Windows\CurrentVersion';
    _Policies                            = 'SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer';
    _KeyboardLayout                      = 'SYSTEM\CurrentControlSet\Control\Keyboard Layout';
    _SystemInforMationKey                = 'SOFTWARE\3TDevelopment\Apuestas\Client\SystemInformation';
    _DataRouteKey                        = 'SOFTWARE\3TDevelopment\Apuestas\Client\ServerConnection';
    _CompanyInfoKey                      = 'SOFTWARE\3TDevelopment\Apuestas\Client\SystemInformation\CompanyInfo';
    _LoginInformationKey                 = 'SOFTWARE\3TDevelopment\Apuestas\Client\LoginInfo';
    _UsersKey                            = 'SOFTWARE\3TDevelopment\Apuestas\Client\LoginInfo\Users';
    _GeneralConfigKey                    = 'SOFTWARE\3TDevelopment\Apuestas\Client\SystemInformation\GeneralConfig';
    _TicketKey                           = 'SOFTWARE\3TDevelopment\Apuestas\Client\SystemInformation\GeneralConfig\Tickets';
    _SummaryKey                          = 'SOFTWARE\3TDevelopment\Apuestas\Client\SystemInformation\GeneralConfig\Summary';
    _WinnersKey                          = 'SOFTWARE\3TDevelopment\Apuestas\Client\SystemInformation\GeneralConfig\Winners';
    _Mix                                 = 'SOFTWARE\3TDevelopment\Apuestas\Client\SystemInformation\GeneralConfig\Mixes';
    _MixSummaryKey                       = 'SOFTWARE\3TDevelopment\Apuestas\Client\SystemInformation\GeneralConfig\Mixes\Summary';
    {Extensiones de Archivos}

    {Consantes del Sistema}
    _BckSlash                            = '\';
    _LogName                             = 'stmlg.hst';

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
    _FisicalInventoryTime                = 'FisicalInventoryTime';
    _CurrencyDistributionTime            = 'CurrencyDistributionTime';
    _LastUser                            = 'LastUser';
    _LstSorteo                           = 'SorteoLst';
    _DescripcionUsuario                  = 'Description';
    _CanChangeStatus                     = 'CanChangeStatus';
    _PrintFactHeader                     = 'PrintFactHeader';
    _ContrasenaUsuario                   = 'LoginWord';
    _NiveldeAcceso                       = 'AccessLevel';
    _DoCheck                             = 'Chequear';
    _CurrencyString                      = 'CurrencyString';
    _ShortDateFormat                     = 'ShortDateFormat';
    _LongDateFormat                      = 'LongDateFormat';
    _ShortTimeFormat                     = 'ShortTimeFormat';
    _LongTimeFormat                      = 'LongTimeFormat';
    _MessageAvi                          = 'MessageAvi';
    _ShutPc                              = 'ShutDownPc';
    _CtrlAltDel                          = 'Ctrl_Alt_Del';
    _ALT_F4                              = 'Alt_F4';
    _Hide_TaskBar                        = 'Hide_TaskBar';
    _ControlPanel                        = 'NoControlPanel';
    _Run                                 = 'NoRun';
    _Find                                = 'NoFind';
    _WindowsKey                          = 'Scancode Map';
    _NullTicketMode                      = 'NullTicketMode';
    _NullTicketTime                      = 'NullTicketTime';
    _DefaultCity                         = 'DefCity';
    _AskPassword                         = 'AskPassword';
    _DefaultSector                       = 'DefSector';
    _DefaultState                        = 'DefState';
    _NombreImpuesto                      = 'Nombre%Impuesto';
    _LastPhotoDir                        = 'LastPhotoDirectory';
    _DetalleFacturaFocus                 = 'DetalleFacturasFocus';

    {Tipos de Combinaciones}
    _Tipo_Numero                         = 'Numero';
    _Tipo_Pale                           = 'Pale';
    _Tipo_Tripleta                       = 'Tripleta';
    _Tipo_Linea                          = 'L';
    _Tipo_Combo                          = 'C';
    _Sorteo_Pega3                        = 'Gana-3';
    // Valores Por Defecto
    _DefEstadoCivil                      = 'DefEstadoCivil';
    _DefSexo                             = 'DefSexo';
    _DefTipoTel1                         = 'DefTipoTel1';
    _DefTipoTel2                         = 'DefTipoTel2';
    _DefTipoTel3                         = 'DefTipoTel3';
    _DefTipoTel4                         = 'DefTipoTel4';
    _DefStatus                           = 'DefStatus';

    // Transacciones
    _AllowAutoStart                      = 'AllowAutoStart';
    _DefaultAction                       = 'DefaultAction';
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
    _TerminalNumber                      = 'Terminal';
    // Valores Por Defecto
    _Status                              = 'Status';
    _Printer                             = 'Printer';
    _Salida                              = 'OutPort';
    _Pr_STAR                             = 'SP200X';
    _Pr_EPSON                            = 'EPSON';
    _Pr_ITHACA                           = 'ITHACA';
    _PrintPercentage                     = 'PrintPercentage';
    _NumPercent                          = 'NumPercent';
    _BinPercent                          = 'BinPercent';
    _TriPercent                          = 'TriPercent';
    _TRIPLEX                             = 'TRIPLEX';
    _TRIPLEXMODE                         = 'TRIPLEXMODE';
    _ISREADY                             = 'READY';
    _trpALWAYSON                         = 'ALWAYSON';
    _trpSELECT                           = 'SELECT';
    _Format_NPH                          = 'Format_NPH';
    _Port                                = 'Port';
    _Screen                              = 'Screen';
    _LineWidth                           = 'LineWidth';
    _Enc_Coment                          = 'EncComent';
    _Enc_Numeros                         = 'EncNum';
    _Enc_Pales                           = 'EncPal';
    _Enc_Tripletas                       = 'EncTripl';
    _Foot_Coment1                        = 'FootComent1';
    _Foot_Coment2                        = 'FootComent2';
    _Foot_Coment3                        = 'FootComent3';
    _Foot_Coment4                        = 'FootComent4';
    _LineSeparator                       = 'Separator';
    _Label_GrandTotal                    = 'Label_GrandTotal';
    _Label_NETTotal                      = 'Label_NETTotal';
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
    _IniFormsConfig                      = 'FormsCfg.ini';
    _LabelProductos                      = 'BARCODE-LABELS';
    _LeerSecuencia                       = 'Secuencia';
    _LeerPrincipal                       = 'Código Principal';
    _InventarioNormal                    = 'Regular';
    _InventarioCompuesto                 = 'Compuesto';
    _PreviewForm                         = 'Preview';
    _Alignment                           = 'Alignment';
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
    _SysAdmin                            = 'SYS-ADMIN';
    _ServerUserName                      = 'UserName';
    _ServerUserPassword                  = 'PassWord';
    _SuperUserLevel                      = 'ALL';
    _ParamServerUserName                 = 'user_name=';
    _ParamServerUserPassWrd              = 'password=';
    _SuperVisor                          = 'SUPERVISOR';
    _ModVehiculo                         = 'MODIFICACION';
    _ProcVehiculo                        = 'CIERRE PROCESO';
    _CreaVehiculo                        = 'CREADO';
    _Todo_Correcto                       = 'TODO BIEN';
    _CondicionCredito                    = 'Crédito';
    _CondicionContado                    = 'Contado';
    _ch_REGULAR                          = 'REGULAR';
    _ch_GENERAL                          = 'GENERAL';
    {Status de Habitaciones}
    {Status de Recibos}
    _stLOGIN                             = 'REGISTRADO';
    _stLOGOUT                            = 'FUERA';
    _stSUSPEND                           = 'SUSPENDIDO';
    _stACTIVO                            = 'ACTIVO';
    _stCERRADO                           = 'CERRADO';
    _stIMPRESO                           = 'IMPRESO';
    _stANULADO                           = 'ANULADO';
    _stFUTURO                            = 'FUTURISTA';

    {Mensajes del Sistema}
    // Errores
    _ErrVentasNoAbiertas                 = 'ERROR: No ha llegado la hora de ventas';
    _ErrVentasCerradas                   = 'ERROR: Ya se cerraron las ventas para la lotería %s';
    _ErrNoNumerosDisponibles             = 'ERROR: No existen puntos disponibles de ese número';
    _ErrNoPalesDisponibles               = 'ERROR: No existen pales disponibles de esa combinación';
    _ErrNoTripletasDisponibles           = 'ERROR: No existen tripletas disponibles de esa combinación';
    _ErrNoPegaDisponibles                = 'ERROR: No existen Pega 3 disponibles de esa combinación';
    _ErrHorarioNoDefinido                = 'ERROR: Su Horario de venta no está definido #13 Consulte el administrador del sistema';
    _ErrSorteoNoDisponible               = 'ERROR: Sorteo de Lotería %s No Disponible';
    _ErrNingunSorteoDisponible           = 'ERROR: No Existe Sorteo de Lotería Disponible';
    _ErrNoNumerosLoteria                 = 'ERROR: La Lotería %s no vende Números sueltos' + #13 + 'Imprima el Recibo actual y haga otro en blanco para esta lotería';
    _ErrNoPalesLoteria                   = 'ERROR: La Lotería %s no vende Pales' + #13 + 'Imprima el Recibo actual y haga otro en blanco para esta lotería';
    _ErrNoTripletasLoteria               = 'ERROR: La Lotería %s no vende Tripletas' + #13 + 'Imprima el Recibo actual y haga otro en blanco para esta lotería';
    _ErrAccesoDenegado                   = 'ERROR: Acceso Denegado al Sistema';
    _ErrReciboOtraTerminal               = 'ERROR: Ese número de Ticket no pertenece a ésta Terminal';
    _ErrAccesoDenegadoOpcion             = 'ERROR: Acceso Denegado al la Opción Seleccionada';
    _ErrContrasena_Confirma_Diferente    = 'ERROR: La contraseña y la confirmación de contraseña son diferentes';
    _ErrProductoVencido                  = 'Ese Producto Está Vencido o Vence Muy Próximamente'#13'Por Favor Verifique';
    _ErrUsuarioMenor3                    = 'ERROR: Nombre de Usuario Incorrecto'+ #13 + 'Debe ser Mayor de 3 Caracteres';
    _ErrContrasenaMenor5                 = 'ERROR: Contraseña del Sistema Incorrecta'+ #13 + 'Debe ser Mayor de 5 Caracteres';
    _ErrContrasenaVerificacionDiferente  = 'ERROR: La Contraseña y la Verificación de la Contraseña Deben ser Iguales';
    _ErrFechaSalidaMenorLlegada          = 'ERROR: La Fecha de salida no puede ser menor que la fecha de llegada';
    _ErrGuardarRegistro                  = 'ERROR: Se presentó un problema al momento de guardar el registro';
    _ErrClienteVacio                     = 'ERROR: Debe introducir un número de Cédula/Pasaporte existente';
    _ErrEmpleadoNoExistente              = 'ERROR. Empleado no registrado. Por favor, Intente de nuevo.';
    _ErrClienteNoExistente               = 'ESE CLIENTE NO SE ENCUENTRA REGISTRADO'#13'¿Desea Registrarlo Ahora?';
    _ErrFacturaNoExistente               = 'NO EXISTE FACTURA RELACIONADA CON ESTE CONTRATO'#13'Por Favor, VERIFIQUE';
    _ErrClienteVencido                   = 'ERROR: La Licencia/Rnc del Cliente Está VENCIDA o VENCE HOY'#13'¿Va Especificar un Conductor Adicional?';
    _ErrCantidadSalidaInsuficiente       = 'SÓLO EXISTEN :%*.*f'#13'%s DISPONIBLES PARA SALIDA'#13'Por Favor Verifíque';
    _ErrCantidadCompradaInsuficiente     = 'SÓLO EXISTEN :%*.*f'#13'%s DISPONIBLES'#13'Por Favor Verifíque';
    _ErrCantidadFacturadaInsuficiente    = 'SÓLO EXISTEN :%*.*f'#13'%s DISPONIBLES'#13'Por Favor Verifíque';
    _ErrConductorVencido                 = 'ERROR: La Licencia del Conductor Adicional Está VENCIDA o VENCE HOY'#13'Debe Especificar Otro Conductor';
    _ErrConductorNoExistente             = 'ESE CONDUCTOR NO SE ENCUENTRA REGISTRADO'#13'¿Desea Registrarlo Ahora?';
    _ErrConductorIgualCliente            = 'ERROR: El Número de Licencia del Conductor NO PUEDE SER IGUAL'#13'al Número de Identificación del Cliente';
    _ErrEmpleadoNoAutorizado             = 'ERROR. Empleado %s. Por favor, Comuníquese con Administración';
    _ErrDebeIntroducirIDCliente          = 'ERROR: Debe Introducir el Numero de Licencia o RNC del Cliente';
    _ErrDebeSeleccionarCliente           = 'ERROR: Debe Seleccionar un Cliente';
    _ErrDebeIntroducirIDContuctor        = 'ERROR: Debe Introducir el Numero de Licencia del Conductor';
    _ErrDebeSeleccionarFichaVehiculo     = 'ERROR: Debe Seleccionar un Vehículo Que Esté Registrado y Disponible'#13'INTENTE SELECCIONANDO UNO DE LA LISTA';
    _ErrFichaNoDisponible                = 'ERROR: El Vehículo Seleccionado Está %s'#13'Por Favor, Seleccione Un Vehículo que Esté Disponible';
    _ErrFichaNoExiste                    = 'ERROR: La Ficha Introducida No Existe'#13'Por Favor, Intente de Nuevo';
    _ErrDebeSeleccionarTipoSeguro        = 'ERROR: Debe Seleccionar un Tipo de Seguro de los que Estan Disponibles para el Vehículo Seleccionado'#13'INTENTE SELECCIONANDO UNO DE LA LISTA';
    _ErrDebeIntroducirKilometrajeSalida  = 'ERROR: Debe Introducir el Kilometraje de Salida del Vehículo';
    _ErrDebeIntroducirKilometrajeEntrada = 'ERROR: Debe Introducir el Kilometraje de Entrada del Vehículo';
    _ErrDebeKilometrajeEntradaMenor      = 'ERROR: El Kilometraje de Entrada del Vehículo no debe ser Menor Que el Kilometraje de Salida';
    _ErrFichaVehiculoNoExiste            = 'ERROR: La Ficha Introducida No Existe'#13'Por Favor Intente Otra Vez';
    _ErrTerminalIgual                    = 'ERROR: La Terminal Destino y la Terminal Origen No Pueden Ser La Misma'#13'Por Favor Intente Otra Vez';
    _ErrKilometrajeMenor                 = 'ERROR: El Kilometraje de Salida no Puede Ser Menor al Kilometraje Anterior'#13'POR FAVOR, VERIFIQUE';
    _ErrKilometrajeEntradaMenor          = 'ERROR: El Kilometraje de Entrada no Puede Ser Menor al Kilometraje de Salida'#13'POR FAVOR, VERIFIQUE';
    _ErrDiasMenorCantidadPeriodo         = 'ERROR: La Cantidad de Días NO PUEDE SER MENOR de %s'#13'POR FAVOR, VERIFIQUE';
    _ErrDebeIntroducirGanadores          = 'ERROR: Debe Introducir los Numeros Ganadores del Sorteo: %S';
    _ErrDebeIntroducirDocumento          = 'ERROR: Debe Introducir el Número de %S';
    _ErrDebeIntroducirMontoTransaccion   = 'ERROR: Debe Introducir el Monto de la Transacción';
    _ErrDebeIntroducirAprobacion         = 'ERROR: Debe Introducir el Número de Aprobación';
    _ErrDebeIntroducirInfoPersona        = 'ERROR: Debe Introducir el Nombre y Cedula/Rnc/Pasaporte de la Persona/Compañía Relacionada con la Transacción';
    _ErrDebeIntroducirFechaTransaccion   = 'ERROR: Debe Introducir la Fecha de la Transacción';
    _ErrDebeIntroducirMesVencimiento     = 'ERROR: Debe Introducir el Mes de Vencimiento del Documento';
    _ErrDebeIntroducirAnioVencimiento    = 'ERROR: Debe Introducir el Año de Vencimiento del Documento';
    _ErrDocumentoVencido                 = 'ERROR: El Documento (%s) Está Vencido'#13'NO PUEDE SER UTILIZADO';
    _ErrDepositoInsuficiente             = 'ERROR: DEPOSITO INSUFICIENTE'#13'Debe Añadir al Deposito por lo Menos %s';
    _ErrNoOrdenCredito                   = 'ERROR: DEPOSITO INSUFICIENTE'#13'Debe Especificar una ORDEN DE CRÉDITO';
    _ErrDescuentoExcede                  = 'ERROR: El Porcentaje de Descuento Excede el %s Permitido'#13'Por Favor Verifique';
    _ErrNoFacturaSeleccionada            = 'ERROR: No se ha Seleccionado Ninguna Factura'#13'Debe Crear una Nueva O Seleccionar Alguna Disponible para Añadir el Contrato Actual';
    _ErrContratoCerrado                  = 'ERROR: El Contrato Seleccionado Está %s'#13'Por Favor, Seleccione Otro Contrato';
    _ErrContratoNoModific                = 'ERROR: El Contrato Seleccionado Está CERRADO o ya Fue GUARDADO/IMPRESO'#13'No se Permite Realizar Modificaciones Sobre el Mismo';
    _ErrNoContratoSeleccionado           = 'ERROR: Debe Seleccionar Un Contrato de la Lista'#13'Imposible Guardar y/o Imprimir';
    _ErrNumContratoVacio                 = 'ERROR: Debe Introducir el Número de Contrato a Cerrar';
    _ErrNumOChk_Vacio                    = 'ERROR: Debe Introducir el Número de Orden de Chequeo';
    _ErrNumContratoInvalido              = 'ERROR: El Número de contrato introducido es Invalido'#13'Por Favor, Intente Otra Vez';
    _ErrNumOChkInvalido                  = 'ERROR: El Número de Orden de Chequeo introducido es Invalido'#13'Por Favor, Intente Otra Vez';
    _ErrNumContratoNoExiste              = 'ERROR: El Número de contrato introducido NO EXISTE'#13'Por Favor, Intente Otra Vez';
    _ErrNumOChkNoExiste                  = 'ERROR: El Número de Orden de Chequeo introducido NO EXISTE'#13'Por Favor, Intente Otra Vez';
    _ErrNumOChkCerrada                   = 'ERROR: El Número de Orden de Chequeo introducido ESTA %s'#13'Por Favor, intente con OTRA ORDEN DE CHEQUEO';
    _ErrFichaVacia                       = 'ERROR: La Debe Introducir el Numero de Ficha';
    _ErrFichaModeloIgual                 = 'ERROR: El período seleccionado en el contrato no aplica para la nueva Ficha '#13'Por Favor, Seleccione otra ficha';
    _ErrFichaTarifaIgual                 = 'ERROR: LA TARIFA de la Ficha seleccionada y la Ficha actual debe ser igual'#13'Por Favor, Seleccione otra ficha';
    _ErrFichaIgualAnterior               = 'ERROR: La Ficha seleccionada es la misma ficha que actualmente tiene el contrato'#13'Por Favor, Seleccione Otra Ficha';
    _ErrPendienteMayorCero               = 'ERROR: Esta es Una Factura de Contado'#13'El Monto Pendiente debe Ser Igual a Cero (0)';
    _ErrPendienteMenorCero               = 'ERROR: La Distribución de Pago NO ES CORRECTA'#13'Por Favor, Verifíque';
    _ErrDiferenciaCuadre                 = 'ERROR: Existe Diferencia en el Cuadre'#13'Por Favor, Verifíque';
    _ErrDistribucion                     = 'ERROR: No se ha realizado el Pago/Devolución de efectivo o está imcompleta'#13'Por Favor, VERIFIQUE';
    _ErrMontoMenorCero                   = 'ERROR: El Monto Introducido Debe ser Mayor de Cero (0)';
    _ErrMontoMayorReal                   = 'ERROR: El Monto Introducido Debe ser Menor de %s';
    _ErrMontoMayorEfectivo               = 'ERROR: El monto introducido excede la cantiad a distribuir';
    _ErrDistribucionEfectivo             = 'ERROR: No se ha completado la distribución del Efectivo'#13'Por favor, verifique';
    _ErrDistribucionCtaCobrar            = 'ERROR: No se ha completado la distribución de las cuentas por cobrar'#13'Por favor, verifique';
    _ExplicarSeguros1                    = 'RECUERDE: Explicar al Cliente';
    _ExplicarSeguros2                    = 'los Diferentes Tipos de Deducibles';
    _DetallesSeguros                     = 'Detalles de Seguros y Deducibles';

    // Advertencias
    _GENERANDOLISTA                      = 'Generando la Lista';
    _GENERANDORECIBO                     = 'Guardando y Generando el Recibo';
    _GENERANRESUMEN                      = 'Generando Resumen de Ventas';
    _COPIANDORECIBO                      = 'Creando Copia del Recibo';
    _SoloXpuntosDisponibles              = 'Solo Existen %d Puntos Disponibles del %s'#13'Se venderá sólo esta cantidad';
    _SoloXpalesDisponibles               = 'Solo Existen %d Pales Disponibles de %s-%s'#13'Se venderá sólo esta cantidad';
    _SoloXtripletasDisponibles           = 'Solo Existen %d Tripletas Disponibles de %s-%s-%s'#13'Se venderá sólo esta cantidad';
    _SoloXPega3Disponibles               = 'Solo Existen %d Pega 3 Disponibles de %s-%s-%s'#13'Se venderá sólo esta cantidad';
    _MuchoTiempo                         = 'El proceso puede tardar un momento';
    _Espere                              = 'Por favor, Espere';

    // MENSAJES x STATUS
    _StatusINACTIVO                      = 'ESTA TERMINAL ESTÁ DESACTIVADA'#13'COMUNIQUESE CON EL ADMINISTRADOR';
    _StatusAPAGAR                        = 'EXISTE UNA INSTRUCCIÓN PARA APAGAR ESTE EQUIPO'#13'COMUNIQUESE CON EL ADMINISTRADOR';
    _StatusREINICIAR                     = 'EXISTE UNA INSTRUCCIÓN PARA REINICIAR ESTE EQUIPO'#13'A CONTINUACION SE CERRARÁ EL PROGRAMA Y SUBIRA DE NUEVO'#13'POR FAVOR ESPERE';
    _StatusCERRADO                       = 'LAS VENTAS POR EL DIA DE HOY PARA ESTA TERMINAL ESTAN CERRADAS';

    _GENERANDOCONTRATO                   = 'Guardando y Generando el Contrato';
    _DatosEnEdicion                      = 'Existen Datos en Edición' + #13 + '¿Desea CANCELAR los cambios e iniciar un nuevo registro?';
    _DatosEnEdicionSalida                = 'Existen Datos en Edición' + #13 + '¿Desea CANCELAR los cambios SALIR de la pantalla actual?';
    _NoDatosGuardar                      = 'No se han añadido detalles a esta compra' + #13 + 'Por favor, Verifíque';
    _DatosGuardados                      = 'Datos Guardados';
    _DatosEliminados                     = 'Registro Eliminado';
    _NuevoRegistro                       = 'Crear Nuevo Registro';
    _ConfirmarSalida                     = 'Realmente Desea Terminar La Ejecución del Programa';
    _Preg_Reimprimir                     = '¿Realmente Desea RE-IMPRIMIR El Recibo Seleccionado?';
    _Preg_Anular                         = '¿Realmente Desea ANULAR El Recibo Seleccionado?';
    _Preg_Duplicar                       = '¿Realmente Desea COPIAR El Recibo Seleccionado?';
    _ResultadoGenerado                   = 'El resultado de la lotería %s para la fecha %s YA FUE GENERADO'#13'Se cargarán los valores generados'#13'Por Favor, Verifique';
    _ProductoNoRegistrado                = 'EL CÓDIGO INTRODUCIDO NO ESTÁ REGISTRADO'#13'¿Desea REGISTRARLO AHORA?';
    _ProductoNoExiste                    = 'EL CÓDIGO INTRODUCIDO NO ESTÁ REGISTRADO'#13'Por Favor Verifique';
    _ContratoGuardado                    = 'Contrato Guardado'#13'Número de Contrato: %s';
    _ConfirmarEliminar                   = '¿Realmente desea ELIMINAR el Registro Actual?';
    _ConfirmarCierreContrato             = 'Al realizar ésta operación se procederá al CIERRE del Contrato Actual' + #13 + '¿Desea Continuar?';
    // Informaciones
    _MensajeEntrada                      = 'ENTRADA. %s, %s';
    _MensajeSalida                       = 'SALIDA. %s, %s';
    _NoPrintData                         = 'No Existen Datos Para Reportar';
    _VerificandoUsuario                  = 'Verificando Nombre de Usuario';
    _ConceptoCargoEmpleado               = 'Cargo a : %s por cierre de contrato # %s';
    _ConceptoNotaDebito                  = 'Nota-Debito # %s';
    _VerificandoContrasena               = 'Verificando Contraseña de Usuario';
    _AccesoConcedido                     = 'Acceso Concedido al Sistema';
    _UsuarioCreadoModificado             = 'Usuario Registrado/Modificado';
    _NoneString                          = 'NONE';
    _SeleccioneEmpleado                  = 'Seleccione el un empleado';
    _NotaRecibo1                         = 'Mediante el presente me comprometo a devolver la suma de %m';
    _NotaRecibo2                         = '%s';
    {Sentencias SQL}
    //Registro
    _SelectTodosLosRegistros             = 'SELECT * FROM "Empleados", "Det_Registro" WHERE ("Det_Registro"."Fecha" >= %s) AND ("Det_Registro"."Fecha" <= %s) AND ("Empleados"."Cedula" = "Det_Registro"."Empleado") %s %s %s %s ORDER BY "Det_Registro"."Empleado", "Det_Registro"."Fecha"';
    _SelectTodosProductos                = 'SELECT * FROM "Productos" WHERE "Secuencia" >= 0 %s %s %s %s  ORDER BY %s, %s "Descripcion", "Codigo"';
    _SelectRegistrosByEmpleado           = 'SELECT * FROM "Empleados", "Det_Registro" WHERE ("Det_Registro"."Empleado" = %s) AND ("Det_Registro"."Fecha" >= %s) AND ("Det_Registro"."Fecha" <= %s) AND ("Empleados"."Cedula" = "Det_Registro"."Empleado") ORDER BY "Det_Registro"."Fecha"';

    _SelectNoRegistrados                 = 'SELECT * FROM "Empleados" WHERE ("Empleados"."Cedula" Not In (Select "Empleado" From "Det_Registro" Where ("Det_Registro"."Fecha" >= %s) AND ("Det_Registro"."Fecha" <= %s))) ORDER BY "Cedula"';

    _SelectTodosLosRegistrosSTATUS       = 'SELECT * FROM "Det_Registro" WHERE ("Fecha" >= %s) AND ("Fecha" <= %s) AND ("Estado" = %s) ORDER BY "Empleado", "Fecha"';
    _SelectRegistrosByEmpleadoSTATUS     = 'SELECT * FROM "Det_Registro" WHERE ("Empleado" = %s) AND ("Fecha" >= %s) AND ("Fecha" <= %s) AND ("Estado" = %s) ORDER BY "Fecha"';
    //Empleados
    _SelectRecibosByDate_Status          = 'SELECT * FROM "Recibos" WHERE ("Fecha" >= :F1) AND ("Fecha" <= :F2) AND ("Status") = %s ORDER BY "Terminal","Fecha"';
    _SelectPagadosByDate_Status          = 'SELECT * FROM "Recibos" WHERE ("Fecha_Pagado" >= :F1) AND ("Fecha_Pagado" <= :F2) AND ("Pagado" = 1) ORDER BY "Terminal","Fecha_Pagado"';
    _SelectCreditosByDate_Status         = 'SELECT * FROM "Recibos" WHERE ("Fecha" >= :F1) AND ("Fecha" <= :F2) AND ("Status_Temporal" = :Status) ORDER BY "Terminal","Fecha"';
    _SelectAllEmpleados                  = 'SELECT * FROM "Empleados" ORDER BY "Nombre","Apellidos"';
    _SelectContratosByDate_Status        = 'SELECT * FROM "Contratos" WHERE ("Fecha" >= :F1) AND ("Fecha" <= :F2) AND ("Status") = %s ORDER BY "Fecha"';
    _SelectEmpleadosByName               = 'SELECT * FROM "Empleados" WHERE "Nombre" LIKE %s ORDER BY "Nombre", "Apellido"';
    _SelectEmpleadosStatus               = 'SELECT * FROM "Empleados" WHERE "Status" = %s ORDER BY "Nombre", "Apellido"';
    _SelectProductos                     = 'SELECT * FROM "Productos" WHERE %s = %s ORDER BY "Descripcion", "Fabricante", "Codigo"';
    _SelectInvoicesByDate                = 'SELECT * FROM "Facturas"  WHERE "Fecha" Between :F1 And :F2  ORDER BY "Condicion","Numero"';
    _SelectDetFacturas                   = 'Select Distinct "Codigo", "Costo", "Descripcion", "Precio_Venta", '+
                                           'Sum("Cantidad") Cantidad, Sum("Total_Costo") Total_Costo, Sum("Total_Precio") Total_Precio,'+
                                           'Sum("Total_Precio") - Sum("Total_Costo") Diferencia '+
                                           'From "Detalles_Factura" Where ("Fecha" Between :F1 And :F2) %s %s %s'+
                                           'Group By "Codigo", "Costo", "Descripcion", "Precio_Venta" '+
                                           'Order By "Codigo"';
    _SearchSQL                           = 'SELECT * FROM "%s" WHERE (UPPER("%s") LIKE UPPER(%s)) OR (UPPER("%s") = UPPER(%s)) ORDER BY "%s" %s';
    _SelectVenta_Usuario_Fecha           = 'SELECT Sum("TotalNeto")Total_Vendido FROM "Facturas" WHERE (UPPER("Usuario") = UPPER(%s)) And ("Fecha" = Cast(%s As Date))';
    _SelectRetitos_Usuario_Fecha         = 'SELECT Sum("Monto")Total_Retirado FROM "Retiros_Caja" WHERE (UPPER("Usuario") = UPPER(%s)) And ("Fecha" = Cast(%s As Date))';

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
   {ITHACA}
   _IT_Init         = #27#64;
   _IT_Normal       = #27#64;
   _IT_BigFont      = #14;
   _IT_WBigFont     = #14;
   _IT_NoBigFont    = #20;
   _IT_Draft        = #27#35#0;
   _IT_NoDraft      = #27#120#1;
   _IT_Condensado   = #27#15#1;
   _IT_NoCondens    = #18;
   _IT_Bold         = #27#33#8;
   _IT_NoBold       = #27#33#0;
   _IT_FormFeed     = #12;

  Var
    RegInfo         : TRegistry;
    PrnF            : TextFile;
    Buf             : String   = '';
    AnchoLinea      : Shortint = 40;
    Granted         : Boolean  = False;
    _CanCancel      : Boolean  = True;
    _AutoConfig     : Boolean  = False;
    _FechaOperacion : TDate;
    _FechaServidor  : TDate;
    _CriterioReporte: Integer;
    _Breakout       : Boolean  = False;
    _CurrentUser    : String   = _NoneString;
    _CurrentUserName: String   = _NoneString;
    _CurrentLevel   : String   = _NoneString;
    _CurrentTerminal: String   = _NoneString;
    _CurrentGroup   : String   = _NoneString;
    _CurrentMode    : String   = _NoneString;
    _LastCode       : Longint  = 0;
    _Vk_Return      : Char     = Char(Vk_RETURN);
    _WindowsDir     : String   = 'C:\Windows\';
    _SystemDir      : String   = 'C:\Windows\System';
    _System32Dir    : String   = 'C:\Windows\System32';
    _ProgramsDir    : String   = 'C:\Program Files\';
    _ProgramasDir   : String   = 'C:\Archivos de Programa\';
    // Codigos Para La Impresora
    _Init           : String   = #27#64;
    _Pag11          : String;
    _Normal         : String   = #27#64;
    _BigFont        : String   = #27#33#33;
    _WBigFont       : String   = #27#33#49;
    _NoBigFont      : String   = #27#33#1;
    _Draft          : String   = #27#120#1;
    _PartialCut     : String   = #27#109;
    _NoDraft        : String   = #27#120#1;
    _Condensado     : String   = #27#15#1;
    _NoCondens      : String   = #18;
    _Bold           : String   = #27#33#8;
    _NoBold         : String   = #27#33#0;
    _FormFeed       : String   = #12;

  Const
    {Constantes}
    _tq_Full        : Double   = 1;
    _tq_7_8         : Double   = 0.88;
    _tq_3_4         : Double   = 0.75;
    _tq_5_8         : Double   = 0.62;
    _tq_1_2         : Double   = 0.5;
    _tq_3_8         : Double   = 0.38;
    _tq_1_4         : Double   = 0.25;
    _tq_Empty       : Double   = 0;
    _Margen         : Double   = 0.1;
    _Separator      : Char     = '.';
    _Factor         : Integer  = $E;
    _EmptyChar      : Char     = #13;
    _LoginWidth     : Integer  = 273;
    _RegisterWidth  : Integer  = 546;
    _SalesNotOpen   : Integer  = -1;
    _SalesClosed    : Integer  = -2;
    _PreviewFile    : String   = 'preview.txt';

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
  Function GetEnvVarValue(const VarName: string): string;
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
  Function Gen_ProcessNumber(Const User : String): String;
  Function Do_ExitWindows(RebootParam: Longword): Boolean;
  Function SetPCSystemTime(Const newDate: TDate; Const newTime : TTime): Boolean;
  Function OpenPhotoFile(Name : String) : TPicture;

{Procedimientos}
  Procedure ActivateOptions(Sender: TObject; Nivel : String; Var Table : TClientDataset);
  Procedure Log (Const LogName,LogSection,LogKey,LogValue : String);
  Procedure CreateForm(InstanceClass: tComponentClass; Var Reference);
  Procedure OpenForm(InstanceClass: tComponentClass; var Reference);
  Procedure Mensaje (S : String);
  Procedure MakeDemoExp(Days : Byte);
  Procedure ShowExpMessage;
  Procedure AddForm2Levels(InstanceClass: tComponentClass; Var Reference; Create : Boolean);
  Procedure CheckOptions(Sender: TObject; Nivel : String);
  Procedure SortPlay(var P,S,T : String);
  procedure ShowStartButton(bvisible: Boolean);
  Procedure ShowTaskBar(Const Activate : Boolean);
  Procedure ShowDesktopIcons(Const Activate : Boolean);
  Procedure EnableTaskBar(Const Activate : Boolean);
  Procedure SetPrinterCodes (Const PrinterType : String);
  Procedure BeginPrn(Device,OutPort : String);
  Procedure PrnLn(S : String);
  Procedure Prn(S : String);
  procedure EnableCTRLALTDEL(YesNo : boolean);
  Procedure EndPrn;

implementation

{Declaración de Unidades}
  Uses
    SysUtils, Forms, IniFiles;

{$I Sys.Cnt}
Begin

end.

