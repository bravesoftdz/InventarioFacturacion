unit Utilidades;
interface

  Uses
    Registry, Classes, Controls, Graphics, Windows, DBClient, Menus, DbCtrls,
    StdCtrls, ActnMan, ActnMenus, ActnList, ActnCtrls, Db, ExtCtrls, ExtDlgs,
    JPeg, RegKeys;

  ResourceString
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
    _Comentario_Credito                  = 'CreditComment';
    _ContrasenaUsuario                   = 'LoginWord';
    _CurrencyDistributionTime            = 'CurrencyDistributionTime';
    _CurrencyString                      = 'CurrencyString';
    _DefaultSaleCondition                = 'DefaultCondition';
    _DefaultSector                       = 'DefSector';
    _DefaultState                        = 'DefState';
    _DESCRIPCIONUSUARIO                  = 'Description';
    _DetalleCompraDepto                  = 'DetalleComprasDepto';
    _DetalleFacturaDepto                 = 'DetalleFacturasDepto';
    _DetalleFacturaFocus                 = 'DetalleFacturasFocus';
    _FisicalInventoryTime                = 'FisicalInventoryTime';
    _LastPhotoDir                        = 'LastPhotoDirectory';
    _LastUser                            = 'LastUser';
    _LongDateFormat                      = 'LongDateFormat';
    _LongTimeFormat                      = 'LongTimeFormat';
    _Margen_Beneficio                    = 'Margen';
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
    _DefStatus                           = 'DefStatus';
    _DefTipoTel1                         = 'DefTipoTel1';
    _DefTipoTel2                         = 'DefTipoTel2';
    _DefTipoTel3                         = 'DefTipoTel3';
    _DefTipoTel4                         = 'DefTipoTel4';

    // Transacciones
    _AllowAutoStart                      = 'AllowAutoStart';
    _AutoStopAction                      = 'AutoStopAction';
    _DefaultAction                       = 'DefaultAction';
    _TransactionParamLine1               = 'TransParLn1';
    _TransactionParamLine2               = 'TransParLn2';
    _TransactionParamLine3               = 'TransParLn3';
    _TransactionParamLine4               = 'TransParLn4';

    // Informacion de la Compañía
    _BackgroundAlign                     = 'BackgroundAlign';
    _BackgroundWidth                     = 'BackgroundWidth';
    _ImagenFondo                         = 'Image';
    _LogoVisible                         = 'LogoVisible';
    _OpenCash                            = 'OpenCash';
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

    // Nombres de Claves y/o Valores
    _2ndPrinting                         = 'NewAfterPrint';
    _Alignment                           = 'Alignment';
    _AutoPago                            = 'AutoPay';
    _Caption_Firma_1                     = 'Sign_1';
    _Caption_Firma_2                     = 'Sign_2';
    _Caption_Firma_3                     = 'Sign_3';
    _Caption_Firma_4                     = 'Sign_4';
    _Codigo                              = 'Code';
    _DateFormat                          = 'DateFormat';
    _Desglosar_Formularios               = 'Show_Form_Details';
    _Duplex                              = 'DuplexPrinting';
    _Enc_Coment                          = 'EncComent';
    _Etiq1                               = 'Label1';
    _Etiq2                               = 'Label2';
    _Etiq3                               = 'Label3';
    _Etiq4                               = 'Label4';
    _Foot_Coment1                        = 'FootComent1';
    _Foot_Coment2                        = 'FootComent2';
    _Foot_Coment3                        = 'FootComent3';
    _FormLines                           = 'FormLines';
    _Format_Descriptions                 = 'Format_Description';
    _Format_NPH                          = 'Format_NPH';
    _IniFormsConfig                      = 'FormsCfg.ini';
    _InventarioCompuesto                 = 'Compuesto';
    _InventarioNormal                    = 'Regular';
    _ISREADY                             = 'READY';
    _LabelProductos                      = 'BARCODE-LABELS';
    _LastNCF                             = 'LastNCF';
    _UseLastNCF                          = 'UseLastNCF';
    _LeerPrincipal                       = 'Código Principal';
    _LeerSecuencia                       = 'Secuencia';
    _LinesAfter                          = 'LinesAfter';
    _LineSeparator                       = 'Separator';
    _LineWidth                           = 'LineWidth';
    _LogoName                            = 'Logo';
    _LineasCodigo                        = 'CodeDots';
    _MarginBottom                        = 'MarginBottom';
    _MarginLeft                          = 'MarginLeft';
    _MarginRight                         = 'MarginRight';
    _MarginTop                           = 'MarginTop';
    _New_Print                           = 'NewAfterPrint';
    _NoneString                          = 'NONE';
    _NoneStr                             = 'NONE';
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
    _Pr_LX300                            = 'LX300';
    _PreviewForm                         = 'Preview';
    _PrintCopies                         = 'Copies';
    _Printer                             = 'Printer';
    _PrinterName                         = 'PrinterName';
    _PrinterStyle                        = 'PrintStyle';
    _Salida                              = 'OutPort';
    _Screen                              = 'Screen';
    _ShowPrintDialog                     = 'ShowPrintDialog';
    _Status                              = 'Status';
    _TemplateFileName                    = 'TemplateFileName';
    _UseCustomControl                    = 'UseCustomControl';
    _VC_UseCustomControl                 = 'CashSalesUseCustomControl';


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
    _ParamServerUserName                 = 'user_name=';
    _ParamServerUserPassWrd              = 'password=';
    _ServerUserName                      = 'UserName';
    _ServerUserPassword                  = 'PassWord';
    _SuperUserLevel                      = 'ALL';
    _SuperVisor                          = 'SUPERVISOR';
    _SysAdmin                            = 'SYS-ADMIN';

    // Status
    _APERTURA                            = 'APERTURANDO';
    _ch_GENERAL                          = 'GENERAL';
    _ch_REGULAR                          = 'REGULAR';
    _CreaVehiculo                        = 'CREADO';
    _ModVehiculo                         = 'MODIFICACION';
    _ProcVehiculo                        = 'CIERRE PROCESO';
    _stACTIVO                            = 'ACTIVO';
    _stANULADO                           = 'ANULADO';
    _stASIGNADA                          = 'ASIGNADA';
    _stCERRADO                           = 'POSTEADO';
    _stCONCILIADO                        = 'CONCILADO';
    _stDISPONIBLE                        = 'DISPONIBLE';
    _StEmpACTIVO                         = 'ACTIVO';
    _StEmpINACTIVO                       = 'INACTIVO';
    _StEmpRETIRADO                       = 'CANCELADO';
    _stREIMPRESO                         = 'REIMPRESO';
    _stSTOP                              = 'STOPED';
    _stTERMINADO                         = 'SALIDA';
    _stTRANSITO                          = 'TRANSITO';
    _Todo_Correcto                       = 'TODO BIEN';

    // Facturación
    _CondicionContado                    = 'Contado';
    _CondicionCredito                    = 'Crédito';

    // Miscelaneos
    _Redondear                           = 'Redondear';
    _Autoridad_Cheques                   = 'Síndico Municipal';

    {Mensajes del Sistema}
    // Errores

    // A
    _ErrAccesoDenegado                   = 'ERROR: Acceso Denegado al Sistema';
    _ErrAccesoDenegadoOpcion             = 'ERROR: NO TIENE PERMISOS PARA EJECUTAR LA OPERACION SOLICITADA';
    _ErrAuspiciadorNoExistente           = 'ESE AUSPICIADOR NO SE ENCUENTRA REGISTRADO'#13'Por Favor, VERIFIQUE';
    _ErrAuspiciadorIgualCliente          = 'EL AUSPICIADOR NO SE PUEDE SER EL MISMO CLIENTE'#13'Por Favor, VERIFIQUE';
    // C
    _ErrCantidadCompradaInsuficiente     = 'ERROR: SÓLO EXISTEN :%*.*f'#13'%s DISPONIBLES'#13'Por Favor Verifíque';
    _ErrCantidadFacturadaInsuficiente    = 'ERROR: SÓLO EXISTEN :%*.*f'#13'%s DISPONIBLES'#13'Por Favor Verifíque';
    _ErrCantidadSalidaInsuficiente       = 'ERROR: SÓLO EXISTEN :%*.*f'#13'%s DISPONIBLES PARA SALIDA'#13'Por Favor Verifíque';
    _ErrClienteNoExistente               = 'ERROR: ESE CLIENTE NO SE ENCUENTRA REGISTRADO'#13'¿Desea Registrarlo Ahora?';
    _ErrClienteVacio                     = 'ERROR: Debe introducir un número de Cédula/Pasaporte existente';
    _ErrClienteVencido                   = 'ERROR: La Licencia/Rnc del Cliente Está VENCIDA o VENCE HOY'#13'¿Va Especificar un Conductor Adicional?';
    _ErrConductorIgualCliente            = 'ERROR: El Número de Licencia del Conductor NO PUEDE SER IGUAL'#13'al Número de Identificación del Cliente';
    _ErrConductorNoExistente             = 'ERROR: ESE CONDUCTOR NO SE ENCUENTRA REGISTRADO'#13'¿Desea Registrarlo Ahora?';
    _ErrConductorVencido                 = 'ERROR: La Licencia del Conductor Adicional Está VENCIDA o VENCE HOY'#13'Debe Especificar Otro Conductor';
    _ErrConfiguracionInicial             = 'ERROR: El sistema no ha sido correctamente configurado'#13'Por Favor, contacte al Soporte Técnico para mayor información';
    _ErrContrasena_Confirma_Diferente    = 'ERROR: La contraseña y la confirmación de contraseña son diferentes';
    _ErrContrasenaMenor5                 = 'ERROR: Contraseña del Sistema Incorrecta'+ #13 + 'Debe ser Mayor de 5 Caracteres';
    _ErrContrasenaVerificacionDiferente  = 'ERROR: La Contraseña y la Verificación de la Contraseña Deben ser Iguales';
    _ErrContratoCerrado                  = 'ERROR: El Contrato Seleccionado Está %s'#13'Por Favor, Seleccione Otro Contrato';
    _ErrContratoNoModific                = 'ERROR: El Contrato Seleccionado Está CERRADO o ya Fue GUARDADO/IMPRESO'#13'No se Permite Realizar Modificaciones Sobre el Mismo';
    // D
    _ErrDebeIntroducirAnioVencimiento    = 'ERROR: Debe Introducir el Año de Vencimiento del Documento';
    _ErrDebeIntroducirAprobacion         = 'ERROR: Debe Introducir el Número de Aprobación';
    _ErrDebeIntroducirDocumento          = 'ERROR: Debe Introducir el Número de %S';
    _ErrDebeIntroducirFechaTransaccion   = 'ERROR: Debe Introducir la Fecha de la Transacción';
    _ErrDebeIntroducirIDCliente          = 'ERROR: Debe Introducir el Numero de Licencia o RNC del Cliente';
    _ErrDebeIntroducirIDContuctor        = 'ERROR: Debe Introducir el Numero de Licencia del Conductor';
    _ErrDebeIntroducirInfoPersona        = 'ERROR: Debe Introducir el Nombre y Cedula/Rnc/Pasaporte de la Persona/Compañía Relacionada con la Transacción';
    _ErrDebeIntroducirKilometrajeEntrada = 'ERROR: Debe Introducir el Kilometraje de Entrada del Vehículo';
    _ErrDebeIntroducirKilometrajeSalida  = 'ERROR: Debe Introducir el Kilometraje de Salida del Vehículo';
    _ErrDebeIntroducirMesVencimiento     = 'ERROR: Debe Introducir el Mes de Vencimiento del Documento';
    _ErrDebeIntroducirMontoTransaccion   = 'ERROR: Debe Introducir el Monto de la Transacción';
    _ErrDebeKilometrajeEntradaMenor      = 'ERROR: El Kilometraje de Entrada del Vehículo no debe ser Menor Que el Kilometraje de Salida';
    _ErrDebeSeleccionarCliente           = 'ERROR: Debe Seleccionar un Cliente';
    _ErrDebeSeleccionarFichaVehiculo     = 'ERROR: Debe Seleccionar un Vehículo Que Esté Registrado y Disponible'#13'INTENTE SELECCIONANDO UNO DE LA LISTA';
    _ErrDebeSeleccionarTipoSeguro        = 'ERROR: Debe Seleccionar un Tipo de Seguro de los que Estan Disponibles para el Vehículo Seleccionado'#13'INTENTE SELECCIONANDO UNO DE LA LISTA';
    _ErrDepositoInsuficiente             = 'ERROR: DEPOSITO INSUFICIENTE'#13'Debe Añadir al Deposito por lo Menos %s';
    _ErrDescuentoExcede                  = 'ERROR: El Porcentaje de Descuento Excede el %s Permitido'#13'Por Favor Verifique';
    _ErrDiasMenorCantidadPeriodo         = 'ERROR: La Cantidad de Días NO PUEDE SER MENOR de %s'#13'POR FAVOR, VERIFIQUE';
    _ErrDiferenciaCuadre                 = 'ERROR: Existe Diferencia en el Cuadre'#13'Por Favor, Verifíque';
    _ErrDistribucion                     = 'ERROR: No se ha realizado el Pago/Devolución de efectivo o está imcompleta'#13'Por Favor, VERIFIQUE';
    _ErrDistribucionCtaCobrar            = 'ERROR: No se ha completado la distribución de las cuentas por cobrar'#13'Por favor, verifique';
    _ErrDistribucionEfectivo             = 'ERROR: No se ha completado la distribución del Efectivo'#13'Por favor, verifique';
    _ErrDocumentoVencido                 = 'ERROR: El Documento (%s) Está Vencido'#13'NO PUEDE SER UTILIZADO';
    // E
    _ErrEmpleadoNoAutorizado             = 'ERROR. Empleado %s. Por favor, Comuníquese con Administración';
    _ErrEmpleadoNoExistente              = 'ERROR: Empleado no registrado. Por favor, Intente de nuevo.';
    // F
    _ErrFacturaNoExistente               = 'ERROR: NO EXISTE FACTURA RELACIONADA CON ESTE CONTRATO'#13'Por Favor, VERIFIQUE';
    _ErrFechaSalidaMenorLlegada          = 'ERROR: La Fecha de salida no puede ser menor que la fecha de llegada';
    _ErrFichaIgualAnterior               = 'ERROR: La Ficha seleccionada es la misma ficha que actualmente tiene el contrato'#13'Por Favor, Seleccione Otra Ficha';
    _ErrFichaModeloIgual                 = 'ERROR: El período seleccionado en el contrato no aplica para la nueva Ficha '#13'Por Favor, Seleccione otra ficha';
    _ErrFichaNoDisponible                = 'ERROR: El Vehículo Seleccionado Está %s'#13'Por Favor, Seleccione Un Vehículo que Esté Disponible';
    _ErrFichaNoExiste                    = 'ERROR: La Ficha Introducida No Existe'#13'Por Favor, Intente de Nuevo';
    _ErrFichaTarifaIgual                 = 'ERROR: LA TARIFA de la Ficha seleccionada y la Ficha actual debe ser igual'#13'Por Favor, Seleccione otra ficha';
    _ErrFichaVacia                       = 'ERROR: La Debe Introducir el Numero de Ficha';
    _ErrFichaVehiculoNoExiste            = 'ERROR: La Ficha Introducida No Existe'#13'Por Favor Intente Otra Vez';
    _ErrFondoInsuficiente                = 'ERROR: SÓLO TIENE :%m DISPONIBLES'#13'Por Favor Verifíque';
    // G
    _ErrGarantiaNoDisponible             = 'ERROR: La garantía seleccionada no está disponible'#13'Por favor seleccione otra garantía e intente de nuevo';
    _ErrGuardarRegistro                  = 'ERROR: Se presentó un problema al momento de guardar el registro';
    // K
    _ErrKilometrajeEntradaMenor          = 'ERROR: El Kilometraje de Entrada no Puede Ser Menor al Kilometraje de Salida'#13'POR FAVOR, VERIFIQUE';
    _ErrKilometrajeMenor                 = 'ERROR: El Kilometraje de Salida no Puede Ser Menor al Kilometraje Anterior'#13'POR FAVOR, VERIFIQUE';
    // M
    _ErrMontoInvalido                    = 'ERROR: La Cifra Introducida es Inválida'#13'Por Favor Verifique';
    _ErrMontoMayorEfectivo               = 'ERROR: El monto introducido excede la cantiad a distribuir';
    _ErrMontoMayorReal                   = 'ERROR: El Monto Introducido Debe ser Menor o Igual de %m';
    _ErrMontoMenorCero                   = 'ERROR: El Monto Introducido Debe ser Mayor de Cero (0)';
    _ErrNoAbono                          = 'ERROR: El Monto Introducido Debe ser Igual al valor de una (1) o varias cuotas completas (%s)'#13'EL ABONO A CUOTAS NO ESTÁ PERMITIDO'#13'POR FAVOR VERIFIQUE';
    // N
    _ErrNoCiudadParaSector_Zona          = 'ERROR: No existe ciudad disponible para añadir este sector ó zona'#13'Por favor, verifique';
    _ErrNoContratoSeleccionado           = 'ERROR: Debe Seleccionar Un Contrato de la Lista'#13'Imposible Guardar y/o Imprimir';
    _ErrNoEditarRegistro                 = 'ERROR: Éste registro ya no puede ser modificado'#13'Seleccione Otro Registro';
    _ErrNoFacturaSeleccionada            = 'ERROR: No se ha Seleccionado Ninguna Factura'#13'Debe Crear una Nueva O Seleccionar Alguna Disponible para Añadir el Contrato Actual';
    _ErrNoGarantiaDesdePrestamo          = 'ERROR: No existe garantía registrada para Remover de este préstamo.'#13'Por favor, verifique e intente de nuevo.';
    _ErrNoGarantiaParaPrestamo           = 'ERROR: No existe garantía registrada para añadir a este préstamo.'#13'Añada al menos una en la opción "Agregar  / Modificar Garantía"'#13'e intente de nuevo.';
    _ErrNoOrdenCredito                   = 'ERROR: DEPOSITO INSUFICIENTE'#13'Debe Especificar una ORDEN DE CRÉDITO';
    _ErrNoTieneFondoRegistrado           = 'ERROR: Usted No Tiene Fondo Asignado para Retiro'#13'Por Favor Verifíque';
    _ErrNumContratoInvalido              = 'ERROR: El Número de contrato introducido es Invalido'#13'Por Favor, Intente Otra Vez';
    _ErrNumContratoNoExiste              = 'ERROR: El Número de contrato introducido NO EXISTE'#13'Por Favor, Intente Otra Vez';
    _ErrNumContratoVacio                 = 'ERROR: Debe Introducir el Número de Contrato a Cerrar';
    _ErrNumOChk_Vacio                    = 'ERROR: Debe Introducir el Número de Orden de Chequeo';
    _ErrNumOChkCerrada                   = 'ERROR: El Número de Orden de Chequeo introducido ESTA %s'#13'Por Favor, intente con OTRA ORDEN DE CHEQUEO';
    _ErrNumOChkInvalido                  = 'ERROR: El Número de Orden de Chequeo introducido es Invalido'#13'Por Favor, Intente Otra Vez';
    _ErrNumOChkNoExiste                  = 'ERROR: El Número de Orden de Chequeo introducido NO EXISTE'#13'Por Favor, Intente Otra Vez';
    // O
    _ErrOrdenDeCompraProcesada           = 'ERROR: Esta Orden de Compra ya fue Procesada en la Compra # %s'#13'Imposible Modificar, POR FAVOR intente con otra Orden de Compra';
    // P
    _ErrPendienteMayorCero               = 'ERROR: Esta es Una Factura de Contado'#13'El Monto Pendiente debe Ser Igual a Cero (0)';
    _ErrPendienteMenorCero               = 'ERROR: La Distribución de Pago NO ES CORRECTA'#13'Por Favor, Verifíque';
    _ErrPrecio_Menor_Precio_Minimo       = 'ERROR: El Precio de Venta no bebe ser menor al Precio Mínimo'#13'Por Favor, Verifique el Precio de Venta y el Porcentaje de Descuento)';
    _ErrProductoVencido                  = 'ERROR: Ese Producto Está Vencido o Vence Muy Próximamente'#13'Por Favor Verifique';
    // T
    _ErrTerminalIgual                    = 'ERROR: La Terminal Destino y la Terminal Origen No Pueden Ser La Misma'#13'Por Favor Intente Otra Vez';
    _ErrTransaccionNoBalanceada          = 'ERROR: La Transaccón tiene una diferencia de %m'#13'Por Favor Corrija el Problema e Intente Otra Vez';
    // U
    _ErrUsuarioMenor3                    = 'ERROR: Nombre de Usuario Incorrecto'+ #13 + 'Debe ser Mayor de 3 Caracteres';

    // Advertencias
    _ConfirmarCierreContrato             = 'ADVERTENCIA: Al realizar ésta operación se procederá al CIERRE del Contrato Actual' + #13 + '¿Desea Continuar?';
    _ConfirmarEliminar                   = 'ADVERTENCIA: ¿Realmente desea ELIMINAR el Registro Actual?';
    _ConfirmarEliminarDetalles           = 'ADVERTENCIA: El Empleado ya tiene registrados datos de Deducciones y/o Pagos'#13'¿Desea ELIMINARLOS y Añadir solamente los detalles del grupo seleccionado?';
    _ConfirmarGenerarCuotasExistentes    = 'ADVERTENCIA: Este préstamo ya tiene cuotas generadas'#13'¿Desea continuar y generar nuevamente las cuotas?';
    _ConfirmarReimprimirCheque           = 'ADVERTENCIA: la solicitud número %s ya fue procesada con el cheque número %s'#13+
                                           '¿Realmente desea IMPRIMIR OTRO CHEQUE?'#13#13+
                                           'NOTA: SI SE IMPRIME UN NUEVO CHEQUE PARA ESTA SOLICITUD SE ANULARÁ AUTOMATICAMENTE EL CHEQUE ANTERIOR';
    _ConfirmarReimprimirChequeNomina     = 'ADVERTENCIA: El Empleado %s ya fue procesado con el cheque número %s'#13+
                                           '¿Realmente desea IMPRIMIR OTRO CHEQUE?'#13#13+
                                           'NOTA: SI SE IMPRIME UN NUEVO CHEQUE PARA ESTE EMPLEADO SE ANULARÁ AUTOMATICAMENTE EL CHEQUE ANTERIOR';
    _ConfirmarSalida                     = 'ADVERTENCIA: ¿Realmente Desea Terminar La Ejecución del Programa?';
    _DatosEnEdicion                      = 'ADVERTENCIA: Existen Datos en Edición' + #13 + '¿Desea CANCELAR los cambios e iniciar un nuevo registro?';
    _DatosEnEdicionSalida                = 'ADVERTENCIA: Existen Datos en Edición' + #13 + '¿Desea CANCELAR los cambios SALIR de la pantalla actual?';
    _ExplicarSeguros1                    = 'ADVERTENCIA: RECUERDE: Explicar al Cliente';
    _ExplicarSeguros2                    = 'los Diferentes Tipos de Deducibles';
    _NoDatosGuardar                      = 'ADVERTENCIA: No se han añadido detalles a esta compra' + #13 + 'Por favor, Verifíque';
    _OpcionGuarda                        = 'ADVERTENCIA: Realizar esta operación requiere guardar el registro actual'#13'¿Desea Continuar?';
    _Preg_Anular                         = 'ADVERTENCIA: ¿Realmente Desea ANULAR El Contrato Seleccionado?';
    _Preg_Reimprimir                     = 'ADVERTENCIA: ¿Realmente Desea RE-IMPRIMIR El Contrato Seleccionado?';

    // Informaciones
    // A
    _AccesoConcedido                     = 'Acceso Concedido al Sistema';
    // C
    _Capital_Interes                     = 'Capital-Interes';
    _Concepto_Cheques_Nomina             = 'Pago de nómina del %s al %s';
    _ConceptoCapitalCuotaPrestamo        = 'Cuota de Capital del Préstamo';
    _ConceptoCargoEmpleado               = 'Cargo a : %s por cierre de contrato # %s';
    _ConceptoCuotaPrestamo               = 'Cuota Regular # %s del Financiamiento';
    _ConceptoInteresCuotaPrestamo        = 'Cuota de Interes Regular # %s del Préstamo';
    _ConceptoNotaCredito                 = 'Nota de Credito de Fecha %s (%s)';
    _ConceptoNotaDebito                  = 'Nota-Debito # %s';
    _ConceptoPagosFacturas               = 'Pago de Cuota(s) del San %s de Fecha %s';
    _ConceptoPagosComisiones             = 'Pago de Comision del Mes %s de Fecha %s';
    _ContratoGuardado                    = 'Contrato Guardado'#13'Número de Contrato: %s';
    _CuentaContableNoRegistrada          = 'EL NUMERO DE CUENTA INTRODUCIDO NO ESTÁ REGISTRADO'#13'Por favor, VERIFIQUE';
    // D
    _DatosEliminados                     = 'Registro Eliminado';
    _DatosGuardados                      = 'Datos Guardados';
    _DetallesSeguros                     = 'Detalles de Seguros y Deducibles';
    // E
    _Espere                              = 'Por favor, Espere';
    // F
    _FacturasAcreditadas                 = 'Se ha aplicado una Nota de Crédito por un monto de %m';
    _FacturasPagadas                     = 'Se ha aplicado un pago de facturas por un monto de %m';
    // G
    _GENERANDOCONTRATO                   = 'Guardando y Generando el Contrato';
    _GENERANDOLISTA                      = 'Generando la Listado';
    // M
    _MensajeEntrada                      = 'ENTRADA. %s, %s';
    _MensajeSalida                       = 'SALIDA. %s, %s';
    _MuchoTiempo                         = 'El proceso puede tardar un momento';
    // N
    _NoFacturasPendientes                = 'Este Cliente No Tiene Facturas Pendientes' + #13 + 'Se ha Cancelado el Proceso de Pago';
    _NoPrintData                         = 'No Existen Datos Para Reportar';
    _NotaRecibo1                         = 'Mediante el presente me comprometo a devolver la suma de %m';
    _NotaRecibo2                         = '%s';
    _NuevoRegistro                       = 'Crear Nuevo Registro';
    // P
    _PrintCopiesReminder                 = 'RECUERDE VERIFICAR LA CANTIDAD DE COPIAS A IMPRIMIR';
    _ProductoNoExiste                    = 'EL CÓDIGO INTRODUCIDO NO ESTÁ REGISTRADO'#13'Por Favor Verifique';
    _ProductoNoRegistrado                = 'EL CÓDIGO INTRODUCIDO NO ESTÁ REGISTRADO'#13'¿Desea REGISTRARLO AHORA?';
    // S
    _SaveReminder                        = 'Recuerde Presionar el boton GUARDAR para conservar sus cambios';
    _SeleccioneEmpleado                  = 'Seleccione el un empleado';
    _Solo_Capital                        = 'Solo-Capital';
    _Solo_Interes                        = 'Solo-Interes';
    // U
    _UsuarioCreadoModificado             = 'Usuario Registrado/Modificado';
    // V
    _VerificandoContrasena               = 'Verificando Contraseña de Usuario';
    _VerificandoUsuario                  = 'Verificando Nombre de Usuario';

    {Sentencias SQL}
    _SearchSQL                           = 'SELECT * FROM "%s" WHERE (UPPER("%s") LIKE UPPER(%s)) OR (UPPER("%s") = UPPER(%s)) ORDER BY "%s" %s';
    _SelectAllEmpleados                  = 'SELECT * FROM "Empleados" ORDER BY "Nombre","Apellidos"';
    _SelectContratosByDate_Status        = 'SELECT * FROM "Contratos" WHERE ("Fecha" >= :F1) AND ("Fecha" <= :F2) AND ("Status") = %s ORDER BY "Fecha"';
    _SelectDetCompras                    = 'Select * From "Detalles_Compra" Where ("Fecha" Between :F1 And :F2) %s %s %s %s'+
                                           'Order By "Fecha", "Codigo"';
    _SelectDetFacturas                   = 'Select Distinct "Codigo", "Costo", "Descripcion", "Precio_Venta", '+
                                           'Sum("Cantidad") Cantidad, Sum("Total_Costo") Total_Costo, Sum("Total_Precio") Total_Precio,'+
                                           'Sum("Total_Precio") - Sum("Total_Costo") Diferencia '+
                                           'From "Detalles_Factura" Where ("Fecha" Between :F1 And :F2) %s %s %s %s'+
                                           'Group By "Codigo", "Costo", "Descripcion", "Precio_Venta" '+
                                           'Order By "Codigo"';
    _SelectEmpleadosByName               = 'SELECT * FROM "Empleados" WHERE "Nombre" LIKE %s ORDER BY "Nombre", "Apellido"';
    _SelectEmpleadosStatus               = 'SELECT * FROM "Empleados" WHERE "Status" = %s ORDER BY "Nombre", "Apellido"';
    _SelectInvoicesByDate                = 'SELECT * FROM "Facturas"  WHERE "Fecha" Between :F1 And :F2  ORDER BY "Condicion","Numero"';
    _SelectInvoicesByNCFDate             = 'SELECT * FROM "Facturas"  WHERE "Fecha" Between :F1 And :F2  ORDER BY "Tipo_NCF","Numero"';
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

   {Codigos Para las Impresras }
   // Star SP200x y Compatibles
   _Sp_BigFont      = #$1B#$57#$31;
   _Sp_Bold         = #0;//27#69;
   _Sp_Condensado   = #0;//27#15#1;
   _Sp_Draft        = #0;//27#120#1;
   _Sp_FormFeed     = #0;//12;
   _Sp_HighFont     = #27#87#1;
   _Sp_Init         = #0;
   _Sp_NoBig        = #0;//27#54;
   _Sp_NoBigFont    = #$1B#$57#$30;
   _Sp_NoBold       = #0;//27#70;
   _Sp_NoCondens    = #0;//18;
   _Sp_NoDraft      = #0;//27#120#1;
   _Sp_NoHighFont   = #27#87#0;
   _Sp_Normal       = #0;
   _Sp_NoWBigFont   = #$1B#$57#$30;
   _Sp_WBigFont     = #$1B#$57#$31;

   // EPSON TMU y Compatibles
   _Ep_BigFont      = #27#33#33;
   _Ep_Bold         = #27#33#8;
   _Ep_Condensado   = #27#15#1;
   _Ep_Draft        = #27#120#1;
   _Ep_FormFeed     = #12;
   _Ep_Init         = #27#64;
   _Ep_NoBigFont    = #27#33#1;
   _Ep_NoBold       = #27#33#0;
   _Ep_NoCondens    = #18;
   _Ep_NoDraft      = #27#120#1;
   _Ep_Normal       = #27#64;
   _Ep_WBigFont     = #27#33#49;

   // EPSON LX-300 y Compatibles
   _LX_BigFont      = #27#87#1;
   _LX_Bold         = #27#69;
   _LX_Condensado   = #27#15#1;
   _LX_Draft        = #27#120#1;
   _LX_FormFeed     = #12;
   _LX_Init         = #27#64;
   _LX_NoBigFont    = #27#87#0;
   _LX_NoBold       = #27#70;
   _LX_NoCondens    = #18;
   _LX_NoDraft      = #27#120#1;
   _LX_Normal       = #27#64;
   _LX_WBigFont     = #27#87#1;

  Const
    {Constantes}
    // Searching
    _CodeNotFound      : Integer = 2;
    _NoCodeToSearch    : Integer = 0;
    _SearchCodeFound   : Integer = 1;

    // GasMeter
    _tq_1_2            : Double   = 0.5;
    _tq_1_4            : Double   = 0.25;
    _tq_3_4            : Double   = 0.75;
    _tq_3_8            : Double   = 0.38;
    _tq_5_8            : Double   = 0.62;
    _tq_7_8            : Double   = 0.88;
    _tq_Empty          : Double   = 0;
    _tq_Full           : Double   = 1;

    // System
    _EmptyChar         : Char     = #13;
    _Factor            : Integer  = $E;
    _LoginWidth        : Integer  = 273;
    _Margen            : Double   = 0.1;
    _PreviewFile       : String   = 'preview.txt';
    _RegisterWidth     : Integer  = 546;
    _Separator         : Char     = '.';

    // Loans
    _CuotedCapital     = 1;
    _FullCapital       = 0;
    _GC_Abosoluto_Exc  : String  = 'Monto Absoluto Excluido';
    _GC_Abosoluto_Inc  : String  = 'Monto Absoluto Incluido';
    _GC_Porcentual_Exc : String  = 'Porcentual Excluido';
    _GC_Porcentual_Inc : String  = 'Porcentual Incluido';
    _LogicalRounding   : Integer = 1;
    _NextIntRounding   : Integer = 2;
    _NoRounding        : Integer = 0;

    // Formatos de Salida de Formularios
    _GraphicForm       = 2;
    _GraphicRecipe     = 3;
    _TextFormat        = 1;
    _Ticket            = 0;

    //Misc
    _SalesClosed       : Integer  = -2;
    _SalesNotOpen      : Integer  = -1;

    DbStateMessages : Array [0..12] Of String = ('Inactivo','Guardado','Modificando',
                                                 'Añadiendo','Clave Activada','Calculando Campos',
                                                 'Filtada','Nuevo Valor','Valor Anterior',
                                                 'Valor Actual','Lectura de Bloque','Calculo Interno',
                                                 'Abriendo');

    DiasSemana : Array [1..7] Of String = ('Domingo','Lunes','Martes',
                                           'Miercoles','Jueves','Viernes',
                                           'Sabado');

    MesesAnio : Array [1..12] Of String = ('Enero','Febrero','Marzo',
                                           'Abril','Mayo','Junio',
                                           'Julio','Agosto','Septiembre',
                                           'Octubre','Noviembre','Diciembre');

  Var
    _AutoConfig        : Boolean  = False;
    _Breakout          : Boolean  = False;
    _CanCancel         : Boolean  = True;
    _CriterioReporte   : Integer;
    _DefaultClientImg  : String   = 'face.jpg';
    _DefaultItemImg    : String   = 'item.jpg';
    _DefaultImgDir     : String   = 'Images\';
    _DefaultShrdFolder : String   = 'C:\';
    _FechaOperacion    : TDate;
    _FechaServidor     : TDate;
    _Num_Cuota         : Integer  = 1;
    _Rep_Imprime_Costo : Boolean  = True;
    _Validar_Fecha     : Boolean;

    AnchoLinea         : Shortint = 40;
    Buf                : String   = '';
    Granted            : Boolean  = False;
    PrnF               : TextFile;
    RegInfo            : TRegistry;

    {Informacion Inicial de la Terminal}
    _CurrentGroup        : String   = _NoneString;
    _CurrentLevel        : String   = _NoneString;
    _CurrentTerminal     : String   = _NoneString;
    _Current_Capital_Acc : String   = _NoneString;
    _Current_Gains_Acc   : String   = _NoneString;
    _CurrentUser         : String   = _NoneString;
    _DetailCall          : Integer  = 0;
    _Jornal              : Double   = 8.0;

    {Parametros}
    _CalcCharges       : Boolean  = False;
    _CalcRatesMode     : Integer  = 0;
    _DefaultCharge     : String   = _NoneString;
    _DefaultCity       : String   = _NoneString;
    _DefaultClosingRate: String   = _NoneString;
    _DefaultCountry    : String   = _NoneString;
    _DefaultGovTax     : Double = 0.00;
    _DefaultRate       : String   = _NoneString;
    _LastCode          : Longint  = 0;
    _MoveFocus         : Boolean  = True;
    _RoundingMode      : Integer  = 0;
    _RoundRates        : Boolean  = False;
    _Vk_Return         : Char     = Char(Vk_RETURN);

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

  {Funciones}
  // C
  Function CBrush(const S:String; n:byte):String;
  Function CountChar(Const SubStr : Char; S : String): Integer;
  // D
  Function DoubleQuoted(Const S : String):String;
  // E
  Function Encrypt(S : String): String;
  Function EnumResTypes(hMod: THandle; restype, resname: PChar; FTable : TClientDataSet): BOOL; StdCall;

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
  Function ParamSearchKey(Var Table: TClientDataset; Const Param_Field_Name,SrchCode : String): Integer;
  Function PesosToUS(Pesos, Prima : Currency): Currency;
  // Q
  Function Question(Const MessageText,Caption : String): Boolean;
  // R
  Function RBrush(const S:String; n:byte):String;
  Function ReadDemoExp(Var D : TDate) : Boolean;
  Function RealNumToAlpha(Number: Real): String;
  Function ReplaceStr(Replaced_Str, Source_Str, New_Str : String) : String;
  // S
  Function SearchCountry(SrchCode : String): Integer;
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
  Procedure AddForms(Var FTable_Var : TClientDataSet; Const Name,NClass,Caption : String);
  Procedure AgregarFoto(Var CampoFoto : TBlobField; Var ComponentFoto : TImage);
  Procedure AssignRootKey (RootKey : String);
  // B
  Procedure BeginPrn(Device,OutPort : String);
  // C
  Procedure CheckOptions(Sender: TObject; Nivel : String);
  // E
  Procedure EndPrn;
  // F
  Procedure FOTOLoadAndDisplay(Const CampoFoto : TBlobField; Var ComponetFoto : TImage; Const ImageName : WideString);
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

{Declaración de Unidades}
  Uses
    SysUtils, Forms, IniFiles,  DataModulo;

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

end.

