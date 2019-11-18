unit RegKeys;
interface
  Var
    // Keys                             HKEY_LOCAL_MACHINE\SOFTWARE\ThreeTier-IB\AYUNTAMIENTO-CLIENT
    // A
    _Acc_DataRootKey        : String;
    _Acc_DataRouteKey       : String = 'SOFTWARE\ThreeTier-IB\ACCS\TerminalSide\ServerConnection';

    // C
    _CompanyInfoKey         : String = 'SOFTWARE\ThreeTier-IB\SAIFC\TerminalSide\SystemInformation\CompanyInfo';
    _CompraProductosKey     : String = 'SOFTWARE\ThreeTier-IB\SAIFC\TerminalSide\SystemInformation\GeneralConfig\Compra_Productos';
    _Cuadre_CajaKey         : String = 'SOFTWARE\ThreeTier-IB\SAIFC\TerminalSide\SystemInformation\GeneralConfig\Cuadre_Caja';
    _CurrentVersion         : String = 'SOFTWARE\Microsoft\Windows\CurrentVersion';

    // D
    _DataRootKey            : String;
    _DataRouteKey           : String = 'SOFTWARE\ThreeTier-IB\SAIFC\TerminalSide\ServerConnection';

    // F
    _FacturaProductosKey    : String = 'SOFTWARE\ThreeTier-IB\SAIFC\TerminalSide\SystemInformation\GeneralConfig\Factura_Productos';

    // G
    _GeneralConfigKey       : String = 'SOFTWARE\ThreeTier-IB\SAIFC\TerminalSide\SystemInformation\GeneralConfig';

    // L
    _LabelProductosKey      : String = 'SOFTWARE\ThreeTier-IB\SAIFC\TerminalSide\SystemInformation\GeneralConfig\Label_Productos';
    _LoginInformationKey    : String = 'SOFTWARE\ThreeTier-IB\SAIFC\TerminalSide\LoginInfo';

    // N
    _NotadeCreditoKey       : String = 'SOFTWARE\ThreeTier-IB\SAIFC\TerminalSide\SystemInformation\GeneralConfig\Nota_Credito';

    // O
    _OrdenCompraKey         : String = 'SOFTWARE\ThreeTier-IB\SAIFC\TerminalSide\SystemInformation\GeneralConfig\Orden_Compra';

    // P
    _PagosClienteKey        : String = 'SOFTWARE\ThreeTier-IB\SAIFC\TerminalSide\SystemInformation\GeneralConfig\PagosCliente';
    _Prl_DataRootKey        : String;
    _Prl_DataRouteKey       : String = 'SOFTWARE\ThreeTier-IB\PRLS\TerminalSide\ServerConnection';

    // S
    _SalidaInventarioKey    : String = 'SOFTWARE\ThreeTier-IB\SAIFC\TerminalSide\SystemInformation\GeneralConfig\Salidas_Inventario';
    _SystemInformationKey   : String = 'SOFTWARE\ThreeTier-IB\SAIFC\TerminalSide\SystemInformation';

    // T
    _TransaccionesKey       : String = 'SOFTWARE\ThreeTier-IB\SAIFC\TerminalSide\SystemInformation\GeneralConfig\Transacciones_Contables';

    // U
    _UsersKey               : String = 'SOFTWARE\ThreeTier-IB\SAIFC\TerminalSide\LoginInfo\Users';


implementation

end.
