unit Utilidades;
interface

  Uses
    Registry, Classes, Controls, Graphics, Windows, DBClient, Menus, DbCtrls,
    StdCtrls, ActnMan, ActnMenus, ActnList, ActnCtrls;

  ResourceString
    {Direcciones del Registro}
    _CompanyInfoKey                      = 'SOFTWARE\ThreeTier-IB\SAIFC\TerminalSide\SystemInformation\CompanyInfo';
    _CompraProductosKey                  = 'SOFTWARE\ThreeTier-IB\SAIFC\TerminalSide\SystemInformation\GeneralConfig\Compra_Productos';
    _Cuadre_CajaKey                      = 'SOFTWARE\ThreeTier-IB\SAIFC\TerminalSide\SystemInformation\GeneralConfig\Cuadre_Caja';
    _CurrentVersion                      = 'SOFTWARE\Microsoft\Windows\CurrentVersion';
    _FacturaProductosKey                 = 'SOFTWARE\ThreeTier-IB\SAIFC\TerminalSide\SystemInformation\GeneralConfig\Factura_Productos';
    _GeneralConfigKey                    = 'SOFTWARE\ThreeTier-IB\SAIFC\TerminalSide\SystemInformation\GeneralConfig';
    _LabelProductosKey                   = 'SOFTWARE\ThreeTier-IB\SAIFC\TerminalSide\SystemInformation\GeneralConfig\Label_Productos';
    _LoginInformationKey                 = 'SOFTWARE\ThreeTier-IB\SAIFC\TerminalSide\LoginInfo';
    _SalidaInventarioKey                 = 'SOFTWARE\ThreeTier-IB\SAIFC\TerminalSide\SystemInformation\GeneralConfig\Salidas_Inventario';
    _UsersKey                            = 'SOFTWARE\ThreeTier-IB\SAIFC\TerminalSide\LoginInfo\Users';
    {Extensiones de Archivos}

    {Consantes del Sistema}
    _BckSlash                            = '\';
    _LogName                             = 'stmlg.hst';

    // Configuracion & Formatos
    _LongDateTimeFormat                  = 'ddd-dd-mmmm-yyyy / HH:mm:ss';
    _LongDate                            = 'dddd  dd "de" mmmm "del" yyyy';
    _ShortTime                           = 'h:mmam/pm';
    // Nombres de Claves del Registro
    _AskPassword                         = 'AskPassword';
    _AutoConfiguration                   = 'AutoConfig';
    _CanChangeStatus                     = 'CanChangeStatus';
    _ClientTitle                         = 'ApplicationTitle';
    _ContrasenaUsuario                   = 'LoginWord';
    _CurrencyDistributionTime            = 'CurrencyDistributionTime';
    _CurrencyString                      = 'CurrencyString';
    _DefaultCity                         = 'DefCity';
    _DefaultSaleCondition                = 'DefaultCondition';
    _DefaultSector                       = 'DefSector';
    _DefaultState                        = 'DefState';
    _DescripcionUsuario                  = 'Description';
    _DetalleCompraDepto                  = 'DetalleComprasDepto';
    _DetalleFacturaDepto                 = 'DetalleFacturasDepto';
    _DetalleFacturaFocus                 = 'DetalleFacturasFocus';
    _FisicalInventoryTime                = 'FisicalInventoryTime';
    _LastPhotoDir                        = 'LastPhotoDirectory';
    _LastUser                            = 'LastUser';
    _LongDateFormat                      = 'LongDateFormat';
    _LongTimeFormat                      = 'LongTimeFormat';
    _MessageAvi                          = 'MessageAvi';
    _NiveldeAcceso                       = 'AccessLevel';
    _NombreImpuesto                      = 'Nombre%Impuesto';
    _PrintFactHeader                     = 'PrintFactHeader';
    _ShortDateFormat                     = 'ShortDateFormat';
    _ShortTimeFormat                     = 'ShortTimeFormat';
    _WindowsColor                        = 'WindowsColor';

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
    // Informacion de la Compa��a
    _BackgroundAlign                     = 'BackgroundAlign';
    _BackgroundWidth                     = 'BackgroundWidth';
    _ImagenFondo                         = 'Image';
    _LogoVisible                         = 'LogoVisible';
    _UserBackground                      = 'Background';
    _UserCard                            = 'Card';
    _UserCompAddres                      = 'Address';
    _UserCompAlignment                   = 'Alignment';
    _UserCompCity                        = 'City';
    _UserCompCountry                     = 'Country';
    _UserCompName                        = 'Name';
    _UserCompOwner                       = 'Owner';
    _UserCompPhone1                      = 'Phone1';
    _UserCompPhone2                      = 'Phone2';
    _UserCompRNC                         = 'RNC';
    _UserLogo                            = 'Logo';
    // Datos de la Terminal
    _CondFacturas                        = 'Invoice_Terms';
    _PcntFormat                          = 'PcntFormat';
    _QtyFormat                           = 'QtyFormat';
    _TerminalName                        = 'TerminalName';
    _TerminalNumber                      = 'Terminal';
    _TipoFacturas                        = 'Invoice_Type';
    // Valores Por Defecto
    _Alignment                           = 'Alignment';
    _DateFormat                          = 'DateFormat';
    _Desglosar_Formularios               = 'Show_Form_Details';
    _Duplex                              = 'DuplexPrinting';
    _Enc_Coment                          = 'EncComent';
    _Foot_Coment1                        = 'FootComent1';
    _Foot_Coment2                        = 'FootComent2';
    _Foot_Coment3                        = 'FootComent3';
    _Format_Descriptions                 = 'Format_Description';
    _Format_NPH                          = 'Format_NPH';
    _IniFormsConfig                      = 'FormsCfg.ini';
    _InventarioCompuesto                 = 'Compuesto';
    _InventarioNormal                    = 'Regular';
    _ISREADY                             = 'READY';
    _LeerPrincipal                       = 'C�digo Principal';
    _LeerSecuencia                       = 'Secuencia';
    _LinesAfter                          = 'LinesAfter';
    _LineSeparator                       = 'Separator';
    _LineWidth                           = 'LineWidth';
    _LogoName                            = 'Logo';
    _MarginBottom                        = 'MarginBottom';
    _MarginLeft                          = 'MarginLeft';
    _MarginRight                         = 'MarginRight';
    _MarginTop                           = 'MarginTop';
    _NS_HI                               = 'HIGH';
    _NS_MED                              = 'MEDIUM';
    _NS_NORM                             = 'NORMAL';
    _Num_Size                            = 'NumSize';
    _OutputFormat                        = 'OutputFormat';
    _PaperHeight                         = 'PaperHeight';
    _PaperName                           = 'PaperName';
    _PaperWidth                          = 'PaperWidth';
    _Port                                = 'Port';
    _Pr_EPSON                            = 'EPSON';
    _Pr_STAR                             = 'SP200X';
    _PreviewForm                         = 'Preview';
    _PrintCopies                         = 'Copies';
    _Printer                             = 'Printer';
    _PrinterName                         = 'PrinterName';
    _Salida                              = 'OutPort';
    _Screen                              = 'Screen';
    _ShowPrintDialog                     = 'ShowPrintDialog';
    _Status                              = 'Status';
    _TemplateFileName                    = 'TemplateFileName';
    _UseCustomControl                    = 'UseCustomControl';
    _VC_UseCustomControl                 = 'ChasSalesUseCustomControl';
    // Sistema de Voz
    _VcCharacter                         = 'Character';
    _VcLipStyle                          = 'LipStyle';
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
    // Conexion al Servidor
    _ConectionLocalServerPath            = 'LocalServerPath';
    _ConectionLocalURL                   = 'LocalURL';
    _ConectionServerPath                 = 'ServerPath';
    _ConectionURL                        = 'URL';
    // Acceso
    _ch_GENERAL                          = 'GENERAL';
    _ch_REGULAR                          = 'REGULAR';
    _CondicionContado                    = 'Contado';
    _CondicionCredito                    = 'Cr�dito';
    _CreaVehiculo                        = 'CREADO';
    _ModVehiculo                         = 'MODIFICACION';
    _ParamServerUserName                 = 'user_name=';
    _ParamServerUserPassWrd              = 'password=';
    _ProcVehiculo                        = 'CIERRE PROCESO';
    _Redondear                           = 'Redondear';
    _ServerUserName                      = 'UserName';
    _ServerUserPassword                  = 'PassWord';
    _SuperUserLevel                      = 'ALL';
    _SuperVisor                          = 'SUPERVISOR';
    _SysAdmin                            = 'SYS-ADMIN';
    _Todo_Correcto                       = 'TODO BIEN';
    {Status de Habitaciones}

    _APERTURA                            = 'APERTURANDO';
    _stACTIVO                            = 'ACTIVO';
    _stANULADO                           = 'ANULADO';
    _stCERRADO                           = 'CERRADO';
    _stDISPONIBLE                        = 'DISPONIBLE';
    _StEmpACTIVO                         = 'ACTIVO';
    _StEmpINACTIVO                       = 'INACTIVO';
    _StEmpRETIRADO                       = 'CANCELADO';
    _stTERMINADO                         = 'SALIDA';
    {Mensajes del Sistema}
    // Errores
    _ErrAccesoDenegado                   = 'ERROR: Acceso Denegado al Sistema';
    _ErrCantidadCompradaInsuficiente     = 'S�LO EXISTEN :%*.*f'#13'%s DISPONIBLES'#13'Por Favor Verif�que';
    _ErrCantidadFacturadaInsuficiente    = 'S�LO EXISTEN :%*.*f'#13'%s DISPONIBLES'#13'Por Favor Verif�que';
    _ErrCantidadSalidaInsuficiente       = 'S�LO EXISTEN :%*.*f'#13'%s DISPONIBLES PARA SALIDA'#13'Por Favor Verif�que';
    _ErrClienteNoExistente               = 'ESE CLIENTE NO SE ENCUENTRA REGISTRADO'#13'�Desea Registrarlo Ahora?';
    _ErrClienteVacio                     = 'ERROR: Debe introducir un n�mero de C�dula/Pasaporte existente';
    _ErrClienteVencido                   = 'ERROR: La Licencia/Rnc del Cliente Est� VENCIDA o VENCE HOY'#13'�Va Especificar un Conductor Adicional?';
    _ErrConductorIgualCliente            = 'ERROR: El N�mero de Licencia del Conductor NO PUEDE SER IGUAL'#13'al N�mero de Identificaci�n del Cliente';
    _ErrConductorNoExistente             = 'ESE CONDUCTOR NO SE ENCUENTRA REGISTRADO'#13'�Desea Registrarlo Ahora?';
    _ErrConductorVencido                 = 'ERROR: La Licencia del Conductor Adicional Est� VENCIDA o VENCE HOY'#13'Debe Especificar Otro Conductor';
    _ErrContrasena_Confirma_Diferente    = 'ERROR: La contrase�a y la confirmaci�n de contrase�a son diferentes';
    _ErrContrasenaMenor5                 = 'ERROR: Contrase�a del Sistema Incorrecta'+ #13 + 'Debe ser Mayor de 5 Caracteres';
    _ErrContrasenaVerificacionDiferente  = 'ERROR: La Contrase�a y la Verificaci�n de la Contrase�a Deben ser Iguales';
    _ErrContratoCerrado                  = 'ERROR: El Contrato Seleccionado Est� %s'#13'Por Favor, Seleccione Otro Contrato';
    _ErrContratoNoModific                = 'ERROR: El Contrato Seleccionado Est� CERRADO o ya Fue GUARDADO/IMPRESO'#13'No se Permite Realizar Modificaciones Sobre el Mismo';
    _ErrDebeIntroducirAnioVencimiento    = 'ERROR: Debe Introducir el A�o de Vencimiento del Documento';
    _ErrDebeIntroducirAprobacion         = 'ERROR: Debe Introducir el N�mero de Aprobaci�n';
    _ErrDebeIntroducirDocumento          = 'ERROR: Debe Introducir el N�mero de %S';
    _ErrDebeIntroducirFechaTransaccion   = 'ERROR: Debe Introducir la Fecha de la Transacci�n';
    _ErrDebeIntroducirIDCliente          = 'ERROR: Debe Introducir el Numero de Licencia o RNC del Cliente';
    _ErrDebeIntroducirIDContuctor        = 'ERROR: Debe Introducir el Numero de Licencia del Conductor';
    _ErrDebeIntroducirInfoPersona        = 'ERROR: Debe Introducir el Nombre y Cedula/Rnc/Pasaporte de la Persona/Compa��a Relacionada con la Transacci�n';
    _ErrDebeIntroducirKilometrajeEntrada = 'ERROR: Debe Introducir el Kilometraje de Entrada del Veh�culo';
    _ErrDebeIntroducirKilometrajeSalida  = 'ERROR: Debe Introducir el Kilometraje de Salida del Veh�culo';
    _ErrDebeIntroducirMesVencimiento     = 'ERROR: Debe Introducir el Mes de Vencimiento del Documento';
    _ErrDebeIntroducirMontoTransaccion   = 'ERROR: Debe Introducir el Monto de la Transacci�n';
    _ErrDebeKilometrajeEntradaMenor      = 'ERROR: El Kilometraje de Entrada del Veh�culo no debe ser Menor Que el Kilometraje de Salida';
    _ErrDebeSeleccionarCliente           = 'ERROR: Debe Seleccionar un Cliente';
    _ErrDebeSeleccionarFichaVehiculo     = 'ERROR: Debe Seleccionar un Veh�culo Que Est� Registrado y Disponible'#13'INTENTE SELECCIONANDO UNO DE LA LISTA';
    _ErrDebeSeleccionarTipoSeguro        = 'ERROR: Debe Seleccionar un Tipo de Seguro de los que Estan Disponibles para el Veh�culo Seleccionado'#13'INTENTE SELECCIONANDO UNO DE LA LISTA';
    _ErrDepositoInsuficiente             = 'ERROR: DEPOSITO INSUFICIENTE'#13'Debe A�adir al Deposito por lo Menos %s';
    _ErrDescuentoExcede                  = 'ERROR: El Porcentaje de Descuento Excede el %s Permitido'#13'Por Favor Verifique';
    _ErrDiasMenorCantidadPeriodo         = 'ERROR: La Cantidad de D�as NO PUEDE SER MENOR de %s'#13'POR FAVOR, VERIFIQUE';
    _ErrDiferenciaCuadre                 = 'ERROR: Existe Diferencia en el Cuadre'#13'Por Favor, Verif�que';
    _ErrDistribucion                     = 'ERROR: No se ha realizado el Pago/Devoluci�n de efectivo o est� imcompleta'#13'Por Favor, VERIFIQUE';
    _ErrDistribucionCtaCobrar            = 'ERROR: No se ha completado la distribuci�n de las cuentas por cobrar'#13'Por favor, verifique';
    _ErrDistribucionEfectivo             = 'ERROR: No se ha completado la distribuci�n del Efectivo'#13'Por favor, verifique';
    _ErrDocumentoVencido                 = 'ERROR: El Documento (%s) Est� Vencido'#13'NO PUEDE SER UTILIZADO';
    _ErrEmpleadoNoAutorizado             = 'ERROR. Empleado %s. Por favor, Comun�quese con Administraci�n';
    _ErrEmpleadoNoExistente              = 'ERROR. Empleado no registrado. Por favor, Intente de nuevo.';
    _ErrFacturaNoExistente               = 'NO EXISTE FACTURA RELACIONADA CON ESTE CONTRATO'#13'Por Favor, VERIFIQUE';
    _ErrFechaSalidaMenorLlegada          = 'ERROR: La Fecha de salida no puede ser menor que la fecha de llegada';
    _ErrFichaIgualAnterior               = 'ERROR: La Ficha seleccionada es la misma ficha que actualmente tiene el contrato'#13'Por Favor, Seleccione Otra Ficha';
    _ErrFichaModeloIgual                 = 'ERROR: El per�odo seleccionado en el contrato no aplica para la nueva Ficha '#13'Por Favor, Seleccione otra ficha';
    _ErrFichaNoDisponible                = 'ERROR: El Veh�culo Seleccionado Est� %s'#13'Por Favor, Seleccione Un Veh�culo que Est� Disponible';
    _ErrFichaNoExiste                    = 'ERROR: La Ficha Introducida No Existe'#13'Por Favor, Intente de Nuevo';
    _ErrFichaTarifaIgual                 = 'ERROR: LA TARIFA de la Ficha seleccionada y la Ficha actual debe ser igual'#13'Por Favor, Seleccione otra ficha';
    _ErrFichaVacia                       = 'ERROR: La Debe Introducir el Numero de Ficha';
    _ErrFichaVehiculoNoExiste            = 'ERROR: La Ficha Introducida No Existe'#13'Por Favor Intente Otra Vez';
    _ErrFondoInsuficiente                = 'S�LO TIENE :%m DISPONIBLES'#13'Por Favor Verif�que';
    _ErrGuardarRegistro                  = 'ERROR: Se present� un problema al momento de guardar el registro';
    _ErrKilometrajeEntradaMenor          = 'ERROR: El Kilometraje de Entrada no Puede Ser Menor al Kilometraje de Salida'#13'POR FAVOR, VERIFIQUE';
    _ErrKilometrajeMenor                 = 'ERROR: El Kilometraje de Salida no Puede Ser Menor al Kilometraje Anterior'#13'POR FAVOR, VERIFIQUE';
    _ErrMontoInvalido                    = 'ERROR: La Cifra Introducida es Inv�lida'#13'Por Favor Verifique';
    _ErrMontoMayorEfectivo               = 'ERROR: El monto introducido excede la cantiad a distribuir';
    _ErrMontoMayorReal                   = 'ERROR: El Monto Introducido Debe ser Menor o Igual de %m';
    _ErrMontoMenorCero                   = 'ERROR: El Monto Introducido Debe ser Mayor de Cero (0)';
    _ErrNoContratoSeleccionado           = 'ERROR: Debe Seleccionar Un Contrato de la Lista'#13'Imposible Guardar y/o Imprimir';
    _ErrNoFacturaSeleccionada            = 'ERROR: No se ha Seleccionado Ninguna Factura'#13'Debe Crear una Nueva O Seleccionar Alguna Disponible para A�adir el Contrato Actual';
    _ErrNoOrdenCredito                   = 'ERROR: DEPOSITO INSUFICIENTE'#13'Debe Especificar una ORDEN DE CR�DITO';
    _ErrNoTieneFondoRegistrado           = 'Usted No Tiene Fondo Asignado para Retiro'#13'Por Favor Verif�que';
    _ErrNumContratoInvalido              = 'ERROR: El N�mero de contrato introducido es Invalido'#13'Por Favor, Intente Otra Vez';
    _ErrNumContratoNoExiste              = 'ERROR: El N�mero de contrato introducido NO EXISTE'#13'Por Favor, Intente Otra Vez';
    _ErrNumContratoVacio                 = 'ERROR: Debe Introducir el N�mero de Contrato a Cerrar';
    _ErrNumOChk_Vacio                    = 'ERROR: Debe Introducir el N�mero de Orden de Chequeo';
    _ErrNumOChkCerrada                   = 'ERROR: El N�mero de Orden de Chequeo introducido ESTA %s'#13'Por Favor, intente con OTRA ORDEN DE CHEQUEO';
    _ErrNumOChkInvalido                  = 'ERROR: El N�mero de Orden de Chequeo introducido es Invalido'#13'Por Favor, Intente Otra Vez';
    _ErrNumOChkNoExiste                  = 'ERROR: El N�mero de Orden de Chequeo introducido NO EXISTE'#13'Por Favor, Intente Otra Vez';
    _ErrPendienteMayorCero               = 'ERROR: Esta es Una Factura de %s'#13'El Monto Pendiente debe Ser Igual a Cero (0)';
    _ErrPendienteMenorCero               = 'ERROR: La Distribuci�n de Pago NO ES CORRECTA'#13'Por Favor, Verif�que';
    _ErrPrecio_Menor_Precio_Minimo       = 'El Precio de Venta no bebe ser menor al Precio M�nimo'#13'Por Favor, Verifique el Precio de Venta y el Porcentaje de Descuento)';
    _ErrProductoVencido                  = 'Ese Producto Est� Vencido o Vence Muy Pr�ximamente'#13'Por Favor Verifique';
    _ErrTerminalIgual                    = 'ERROR: La Terminal Destino y la Terminal Origen No Pueden Ser La Misma'#13'Por Favor Intente Otra Vez';
    _ErrUsuarioMenor3                    = 'ERROR: Nombre de Usuario Incorrecto'+ #13 + 'Debe ser Mayor de 3 Caracteres';
    _ExplicarSeguros1                    = 'RECUERDE: Explicar al Cliente';
    _ExplicarSeguros2                    = 'los Diferentes Tipos de Deducibles';
    // Advertencias
    _ConfirmarCierreContrato             = 'Al realizar �sta operaci�n se proceder� al CIERRE del Contrato Actual' + #13 + '�Desea Continuar?';
    _ConfirmarEliminar                   = '�Realmente desea ELIMINAR el Registro Actual?';
    _ConfirmarSalida                     = '�Realmente Desea Terminar La Ejecuci�n del Programa?';
    _ContratoGuardado                    = 'Contrato Guardado'#13'N�mero de Contrato: %s';
    _DatosEliminados                     = 'Registro Eliminado';
    _DatosEnEdicion                      = 'Existen Datos en Edici�n' + #13 + '�Desea CANCELAR los cambios y continuar con la Operaci�n?';
    _DatosEnEdicionSalida                = 'Existen Datos en Edici�n' + #13 + '�Desea CANCELAR los cambios SALIR de la pantalla actual?';
    _DatosGuardados                      = 'Datos Guardados';
    _DetallesSeguros                     = 'Detalles de Seguros y Deducibles';
    _Espere                              = 'Por favor, Espere';
    _FacturasAcreditadas                 = 'Se ha aplicado una Nota de Cr�dito por un monto de %m';
    _FacturasPagadas                     = 'Se ha aplicado un pago de facturas por un monto de %m';
    _GENERANDOCONTRATO                   = 'Guardando y Generando el Contrato';
    _GENERANDOLISTA                      = 'Generando la Listado';
    _MuchoTiempo                         = 'El proceso puede tardar un momento';
    _NoDatosGuardar                      = 'No se han a�adido detalles a esta compra' + #13 + 'Por favor, Verif�que';
    _NoFacturasPendientes                = 'Este Cliente No Tiene Facturas Pendientes' + #13 + 'Se ha Cancelado el Proceso de Pago';
    _NuevoRegistro                       = 'Crear Nuevo Registro';
    _Preg_Anular                         = '�Realmente Desea ANULAR El Contrato Seleccionado?';
    _Preg_Reimprimir                     = '�Realmente Desea RE-IMPRIMIR El Contrato Seleccionado?';
    _PrintCopiesReminder                 = 'RECUERDE VERIFICAR LA CANTIDAD DE COPIAS A IMPRIMIR';
    _ProductoNoExiste                    = 'EL C�DIGO INTRODUCIDO NO EST� REGISTRADO'#13'Por Favor Verifique';
    _ProductoNoRegistrado                = 'EL C�DIGO INTRODUCIDO NO EST� REGISTRADO'#13'�Desea REGISTRARLO AHORA?';
    // Informaciones
    _AccesoConcedido                     = 'Acceso Concedido al Sistema';
    _ConceptoCargoEmpleado               = 'Cargo a : %s por cierre de contrato # %s';
    _ConceptoNotaCredito                 = 'Nota de Credito de Fecha %s (%s)';
    _ConceptoNotaDebito                  = 'Nota-Debito # %s';
    _ConceptoPagosFacturas               = 'Pago / Abono de Fecha %s';
    _MensajeEntrada                      = 'ENTRADA. %s, %s';
    _MensajeSalida                       = 'SALIDA. %s, %s';
    _NoneString                          = 'NONE';
    _NoPrintData                         = 'No Existen Datos Para Reportar';
    _NotaRecibo1                         = 'Mediante el presente me comprometo a devolver la suma de %m';
    _NotaRecibo2                         = '%s';
    _SeleccioneEmpleado                  = 'Seleccione el un empleado';
    _UsuarioCreadoModificado             = 'Usuario Registrado/Modificado';
    _VerificandoContrasena               = 'Verificando Contrase�a de Usuario';
    _VerificandoUsuario                  = 'Verificando Nombre de Usuario';
    {Sentencias SQL}
    //Registro


    //Empleados
    _SearchSQL                           = 'SELECT * FROM "%s" WHERE (UPPER("%s") LIKE UPPER(%s)) OR (UPPER("%s") = UPPER(%s)) ORDER BY "%s" %s';
    _SelectAllEmpleados                  = 'SELECT * FROM "Empleados" ORDER BY "Nombre","Apellidos"';
    _SelectContratosByDate_Status        = 'SELECT * FROM "Contratos" WHERE ("Fecha" >= :F1) AND ("Fecha" <= :F2) AND ("Status") = %s ORDER BY "Fecha"';
    _SelectDetCompras                    = 'Select * From "Detalles_Compra" Where ("Fecha" Between :F1 And :F2) %s %s %s %s'+
    _SelectDetFacturas                   = 'Select Distinct "Codigo", "Costo", "Descripcion", "Precio_Venta", '+
    _SelectEmpleadosByName               = 'SELECT * FROM "Empleados" WHERE "Nombre" LIKE %s ORDER BY "Nombre", "Apellido"';
    _SelectEmpleadosStatus               = 'SELECT * FROM "Empleados" WHERE "Status" = %s ORDER BY "Nombre", "Apellido"';
    _SelectInvoicesByDate                = 'SELECT * FROM "Facturas"  WHERE "Fecha" Between :F1 And :F2  ORDER BY "Condicion","Numero"';
    _SelectNoRegistrados                 = 'SELECT * FROM "Empleados" WHERE ("Empleados"."Cedula" Not In (Select "Empleado" From "Det_Registro" Where ("Det_Registro"."Fecha" >= %s) AND ("Det_Registro"."Fecha" <= %s))) ORDER BY "Cedula"';
    _SelectProductos                     = 'SELECT * FROM "Productos" WHERE %s = %s ORDER BY "Descripcion", "Fabricante", "Codigo"';
    _SelectRegistrosByEmpleado           = 'SELECT * FROM "Empleados", "Det_Registro" WHERE ("Det_Registro"."Empleado" = %s) AND ("Det_Registro"."Fecha" >= %s) AND ("Det_Registro"."Fecha" <= %s) AND ("Empleados"."Cedula" = "Det_Registro"."Empleado") ORDER BY "Det_Registro"."Fecha"';
    _SelectRegistrosByEmpleadoSTATUS     = 'SELECT * FROM "Det_Registro" WHERE ("Empleado" = %s) AND ("Fecha" >= %s) AND ("Fecha" <= %s) AND ("Estado" = %s) ORDER BY "Fecha"';
    _SelectRetitos_Usuario_Fecha         = 'SELECT Sum("Monto")Total_Retirado FROM "Retiros_Caja" WHERE (UPPER("Usuario") = UPPER(%s)) And ("Fecha" = Cast(%s As Date))';
    _SelectTodosLosRegistros             = 'SELECT * FROM "Empleados", "Det_Registro" WHERE ("Det_Registro"."Fecha" >= %s) AND ("Det_Registro"."Fecha" <= %s) AND ("Empleados"."Cedula" = "Det_Registro"."Empleado") %s %s %s %s ORDER BY "Det_Registro"."Empleado", "Det_Registro"."Fecha"';
    _SelectTodosLosRegistrosSTATUS       = 'SELECT * FROM "Det_Registro" WHERE ("Fecha" >= %s) AND ("Fecha" <= %s) AND ("Estado" = %s) ORDER BY "Empleado", "Fecha"';
    _SelectTodosProductos                = 'SELECT * FROM "Productos" WHERE "Secuencia" >= 0 %s %s %s %s  ORDER BY %s, %s "Descripcion", "Codigo"';
    _SelectVenta_Usuario_Fecha           = 'SELECT Sum("TotalNeto")Total_Vendido FROM "Facturas" WHERE (UPPER("Usuario") = UPPER(%s)) And ("Fecha" = Cast(%s As Date)) And ("Status" = %s)';
    _UpdateStatusVenta_Usuario_Fecha     = 'UPDATE "Facturas" SET "Status" = %s WHERE (UPPER("Usuario") = UPPER(%s)) And ("Fecha" = Cast(%s As Date)) And ("Status" = %s)';
                                           'From "Detalles_Factura" Where ("Fecha" Between :F1 And :F2) %s %s %s %s'+
                                           'Group By "Codigo", "Costo", "Descripcion", "Precio_Venta" '+
                                           'Order By "Codigo"';
                                           'Order By "Fecha", "Codigo"';
                                           'Sum("Cantidad") Cantidad, Sum("Total_Costo") Total_Costo, Sum("Total_Precio") Total_Precio,'+
                                           'Sum("Total_Precio") - Sum("Total_Costo") Diferencia '+

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

  Var
    _AutoConfig        : Boolean  = False;
    _Breakout          : Boolean  = False;
    _CanCancel         : Boolean  = True;
    _CriterioReporte   : Integer;
    _CurrentGroup      : String   = _NoneString;
    _CurrentLevel      : String   = _NoneString;
    _CurrentTerminal   : String   = _NoneString;
    _CurrentUser       : String   = _NoneString;
    _DataRootKey       : String;
    _DataRouteKey      : String;
    _FechaOperacion    : TDate;
    _FechaServidor     : TDate;
    _LastCode          : Longint  = 0;
    _Rep_Imprime_Costo : Boolean  = True;
    _SystemInformationKey  : String;
    _Vk_Return         : Char     = Char(Vk_RETURN);
    AnchoLinea         : Shortint = 40;
    Buf                : String   = '';
    Granted            : Boolean  = False;
    PrnF               : TextFile;
    RegInfo            : TRegistry;
    // Codigos Para La Impresora
    _BigFont           : String   = #27#33#33;
    _Bold              : String   = #27#33#8;
    _Condensado        : String   = #27#15#1;
    _Draft             : String   = #27#120#1;
    _FormFeed          : String   = #12;
    _Init              : String   = #27#64;
    _NoBigFont         : String   = #27#33#1;
    _NoBold            : String   = #27#33#0;
    _NoCondens         : String   = #18;
    _NoDraft           : String   = #27#120#1;
    _Normal            : String   = #27#64;
    _Pag11             : String;
    _PartialCut        : String   = #27#109;
    _WBigFont          : String   = #27#33#49;

  Const
    {Constantes}
    _EmptyChar         : Char     = #13;
    _Factor            : Integer  = $E;
    _LoginWidth        : Integer  = 273;
    _Margen            : Double   = 0.1;
    _NoneStr           : String   = '-';
    _PreviewFile       : String   = 'preview.txt';
    _RegisterWidth     : Integer  = 546;
    _SalesClosed       : Integer  = -2;
    _SalesNotOpen      : Integer  = -1;
    _Separator         : Char     = '.';
    _tq_1_2            : Double   = 0.5;
    _tq_1_4            : Double   = 0.25;
    _tq_3_4            : Double   = 0.75;
    _tq_3_8            : Double   = 0.38;
    _tq_5_8            : Double   = 0.62;
    _tq_7_8            : Double   = 0.88;
    _tq_Empty          : Double   = 0;
    _tq_Full           : Double   = 1;

    // Formatos de Salida de Formularios
    _GraphicForm       = 2;
    _GraphicRecipe     = 3;
    _TextFormat        = 1;
    _Ticket            = 0;

    DbStateMessages    : Array [0..12] Of String = ('Inactivo','Guardado','Modificando',
                                                    'A�adiendo','Clave Activada','Calculando Campos',
                                                    'Filtada','Nuevo Valor','Valor Anterior',
                                                    'Valor Actual','Lectura de Bloque','Calculo Interno',
                                                    'Abriendo');

    MesesAnio          : Array [1..12] Of String = ('Enero','Febrero','Marzo',
                                                    'Abril','Mayo','Junio',
                                                    'Julio','Agosto','Septiembre',
                                                    'Octubre','Noviembre','Diciembre');
{Funciones}
  // C
  Function CountChar(Const SubStr : Char; S : String): Integer;
  Function CBrush(const S:String; n:byte):String;
  // D
  Function DoubleQuoted(Const S : String):String;
  // E
  Function Encrypt(S : String): String;
  // F
  Function Fill(Const c:Char; n:Integer):String;
  // G
  Function Gen_ProcessNumber(Const User : String): String;
  Function GenIniName : String;
  Function GetRegColor(Const ColorKey,ColorSection : String): Integer;
  Function GetVolumeID(DriveChar: Char): String;
  // I
  Function InvertStr(S : String): String;
  Function IsDemo : Boolean;
  // L
  Function LBrush(const S:String; n:byte):String;
  // N
  Function NumToAlpha(Number: Int64): String;
  // O
  Function OpenPhotoFile(Name : String) : TPicture;
  // P
  Function Pad(Kind:Char;Const S:String; N:Byte; Character : Char):String;
  Function PesosToUS(Pesos, Prima : Currency): Currency;
  // Q
  Function Question(Const MessageText,Caption : String): Boolean;
  // R
  Function ReadDemoExp(Var D : TDate) : Boolean;
  Function RealNumToAlpha(Number: Real): String;
  Function RBrush(const S:String; n:byte):String;
  Function ReplaceStr(Replaced_Str, Source_Str, New_Str : String) : String;
  // S
  Function SearchListIndex(const List: TStrings; const S: string) : Integer;
  // T
  Function TrimChar(Const SubStr : Char; S : String): String;
  // U
  Function Uncode(Const S : String):String;
  Function UnEncrypt(Const S : String): String;
  Function USToPesos(US, Prima : Currency): Currency;
  // V
  Function ValSerial : Boolean;

{Procedimientos}
  // A
  Procedure ActivateOptions(Sender: TObject; Nivel : String; Var Table : TClientDataset);
  Procedure AddForm2Levels(InstanceClass: tComponentClass; Var Reference; Create : Boolean);
  Procedure AssignRootKey (RootKey : String);
  // B
  Procedure BeginPrn(Device,OutPort : String);
  // C
  Procedure CheckOptions(Sender: TObject; Nivel : String);
  // E
  Procedure EndPrn;
  // L
  Procedure Log (Const LogName,LogSection,LogKey,LogValue : String);
  // M
  Procedure MakeDemoExp(Days : Byte);
  Procedure Mensaje (S : String);
  // O
  Procedure OpenForm(InstanceClass: tComponentClass; var Reference);
  // P
  Procedure Prn(S : String);
  Procedure PrnLn(S : String);
  // S
  Procedure SetPrinterCodes (Const PrinterType : String);
  Procedure ShowExpMessage;
  Procedure SortPlay(var P,S,T : String);

implementation

{Declaraci�n de Unidades}
  Uses
    SysUtils, Forms, IniFiles;

{$I Sys.Cnt}
Procedure ActivateOptions(Sender: TObject; Nivel : String; Var Table : TClientDataSet);
  Var
    I : Integer;
  Begin
    If Trim(Nivel) = _SysAdmin Then Exit;

    Table.Params.ParamByName('Nivel').AsString := Trim(Nivel);
    Table.Open;
    Table.Filter := 'Form = ' + QuotedStr((Sender As TForm).Name);
    Table.Filtered := True;
    For I := 0 To (Sender As TForm).ComponentCount - 1 Do
      Begin
        Try
          If ((Sender As TForm).Components[I] Is TAction) Then
            Begin
              ((Sender As TForm).Components[I] As TAction).Enabled := Table.Locate('Opcion',(Sender As TForm).Components[I].Name,[]);
              Continue
            End;

          If ((Sender As TForm).Components[I] Is TLabel) Then Continue;

          If ((Sender As TForm).Components[I] Is TWinControl) Or
             ((Sender As TForm).Components[I] Is TControlClass) Or
             ((Sender As TForm).Components[I] Is TAction) Or
             ((Sender As TForm).Components[I] Is TMenuButtonControlClass) Then
            ((Sender As TForm).Components[I] As TControl).Enabled := Table.Locate('Opcion',(Sender As TForm).Components[I].Name,[]);

        Except
        End {Try}
      End;
    Table.Close;
    Table.Filter := '';
    Table.Filtered := False
  End;


Function ReplaceStr(Replaced_Str, Source_Str, New_Str : String) : String;
   var
      Out_Str : String;
      I : Integer;
   begin
      Out_Str := Source_Str;
      i := 1;
      While I <> 0 Do
        Begin
          I := Pos(Replaced_Str, Out_Str);
          If I > 0 Then
            Begin
              Delete(Out_Str, I, Length(Replaced_Str));
              Insert(New_Str, Out_Str, I);
            End // If
        End; // While
      Result := Out_Str
   end;

end.

