unit RegKeys;
interface
  Var
    // Keys                             HKEY_LOCAL_MACHINE\SOFTWARE\ThreeTier-IB\AYUNTAMIENTO-CLIENT
    // A
    _Acc_DataRootKey        : String;
    _Acc_DataRouteKey       : String = 'SOFTWARE\ThreeTier-IB\ACCS\TerminalSide\ServerConnection';
    _AcuerdosKey            : String = 'SOFTWARE\ThreeTier-IB\GYM\TerminalSide\SystemInformation\GeneralConfig\Acuerdos';
    _AperturaKey            : String = 'SOFTWARE\ThreeTier-IB\GYM\TerminalSide\SystemInformation\GeneralConfig\Apertura';

    // C
    _CompanyInfoKey         : String = 'SOFTWARE\ThreeTier-IB\GYM\TerminalSide\SystemInformation\CompanyInfo';
    _CompraProductosKey     : String = 'SOFTWARE\ThreeTier-IB\GYM\TerminalSide\SystemInformation\GeneralConfig\Compra_Productos';
    _ComprobanteEntregaKey  : String = 'SOFTWARE\ThreeTier-IB\GYM\TerminalSide\SystemInformation\GeneralConfig\Entrega';
    _CotizacionProductosKey : String = 'SOFTWARE\ThreeTier-IB\GYM\TerminalSide\SystemInformation\GeneralConfig\Cotizacion_Productos';
    _Cuadre_CajaKey         : String = 'SOFTWARE\ThreeTier-IB\GYM\TerminalSide\SystemInformation\GeneralConfig\Cuadre_Caja';
    _CurrentVersion         : String = 'SOFTWARE\Microsoft\Windows\CurrentVersion';
    _CreditosKey            : String = 'SOFTWARE\ThreeTier-IB\GYM\TerminalSide\SystemInformation\GeneralConfig\Creditos_Ventas';

    // D
    _DataRootKey            : String;
    _DataRouteKey           : String = 'SOFTWARE\ThreeTier-IB\GYM\TerminalSide\ServerConnection';
    _DevolucionProductosKey : String = 'SOFTWARE\ThreeTier-IB\GYM\TerminalSide\SystemInformation\GeneralConfig\Devolucion_Productos';

    // F
    _FacturaProductosKey    : String = 'SOFTWARE\ThreeTier-IB\GYM\TerminalSide\SystemInformation\GeneralConfig\Factura_Productos';

    // G
    _GeneralConfigKey       : String = 'SOFTWARE\ThreeTier-IB\GYM\TerminalSide\SystemInformation\GeneralConfig';

    // G
    _InscripcionKey    : String = 'SOFTWARE\ThreeTier-IB\GYM\TerminalSide\SystemInformation\GeneralConfig\Inscripcion';

    // L
    _LabelProductosKey      : String = 'SOFTWARE\ThreeTier-IB\GYM\TerminalSide\SystemInformation\GeneralConfig\Label_Productos';
    _LoginInformationKey    : String = 'SOFTWARE\ThreeTier-IB\GYM\TerminalSide\LoginInfo';

    // N
    _NotadeCreditoKey       : String = 'SOFTWARE\ThreeTier-IB\GYM\TerminalSide\SystemInformation\GeneralConfig\Nota_Credito';
    _NotadeDebitoKey        : String = 'SOFTWARE\ThreeTier-IB\GYM\TerminalSide\SystemInformation\GeneralConfig\Nota_Debito';

    // O
    _OrdenCompraKey         : String = 'SOFTWARE\ThreeTier-IB\GYM\TerminalSide\SystemInformation\GeneralConfig\Orden_Compra';
    _OrdenTrabajoKey        : String = 'SOFTWARE\ThreeTier-IB\GYM\TerminalSide\SystemInformation\GeneralConfig\Orden_Trabajo';

    // P
    _PagosClienteKey        : String = 'SOFTWARE\ThreeTier-IB\GYM\TerminalSide\SystemInformation\GeneralConfig\PagosCliente';
    _Prl_DataRootKey        : String;
    _Prl_DataRouteKey       : String = 'SOFTWARE\ThreeTier-IB\PRLS\TerminalSide\ServerConnection';

    // R
    _Reloj_Key             : String = 'SOFTWARE\ThreeTier-IB\GYM\TerminalSide\SystemInformation\GeneralConfig\Reloj'; 
    _Registro_GastosKey    : String = 'SOFTWARE\ThreeTier-IB\GYM\TerminalSide\SystemInformation\GeneralConfig\Registro_Gastos';
    _RecargasKey           : String = 'SOFTWARE\ThreeTier-IB\GYM\TerminalSide\SystemInformation\GeneralConfig\Recargas';

    // S
    _SalidaInventarioKey    : String = 'SOFTWARE\ThreeTier-IB\GYM\TerminalSide\SystemInformation\GeneralConfig\Salidas_Inventario';
    _SystemInformationKey   : String = 'SOFTWARE\ThreeTier-IB\GYM\TerminalSide\SystemInformation';

    // T
    _TransaccionesKey       : String = 'SOFTWARE\ThreeTier-IB\GYM\TerminalSide\SystemInformation\GeneralConfig\Transacciones_Contables';

    // U
    _UsersKey               : String = 'SOFTWARE\ThreeTier-IB\GYM\TerminalSide\LoginInfo\Users';


implementation

end.
