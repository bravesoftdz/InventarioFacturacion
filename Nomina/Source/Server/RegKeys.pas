unit RegKeys;
interface
  Var
    // Keys                             HKEY_LOCAL_MACHINE\SOFTWARE\PRLS\Server\
    // A
    _Acc_DataRootKey        : String;
    _Acc_DataRouteKey       : String = 'SOFTWARE\ThreeTier-IB\PRLS\TerminalSide\ServerConnection';

    // C
    {Direcciones del Registro}
    _CurrentVersion         : String = 'SOFTWARE\Microsoft\Windows\CurrentVersion';
    _CompanyInfoKey         : String = 'SOFTWARE\PRLS\Server\SystemInformation\CompanyInfo';

    // D
    _DataRootKey            : String;
    _DataRouteKey           : String = 'SOFTWARE\PRLS\Server\ServerConnection';

    // G
    _GeneralConfigKey       : String = 'SOFTWARE\PRLS\Server\SystemInformation\GeneralConfig';

    // L
    _LoginInformationKey    : String = 'SOFTWARE\PRLS\Server\LoginInfo';

    // P
    _Prl_DataRootKey        : String;

    // S
    _SystemInforMationKey   : String = 'SOFTWARE\PRLS\Server\SystemInformation';

    // U
    _UsersKey               : String = 'SOFTWARE\PRLS\Server\LoginInfo\Users';


implementation

end.
