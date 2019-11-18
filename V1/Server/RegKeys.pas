unit RegKeys;
interface

  Var
    // Keys                             HKEY_LOCAL_MACHINE\SOFTWARE\SAIVC\Server\
    // A
    _Acc_DataRootKey        : String;
    _Acc_DataRouteKey       : String = 'SOFTWARE\ThreeTier-IB\ACCS\TerminalSide\ServerConnection';

    // C
    {Direcciones del Registro}
    _CurrentVersion         : String = 'SOFTWARE\Microsoft\Windows\CurrentVersion';
    _CompanyInfoKey         : String = 'SOFTWARE\SAIVC\Server\SystemInformation\CompanyInfo';

    // D
    _DataRootKey            : String;
    _DataRouteKey           : String = 'SOFTWARE\SAIVC\Server\ServerConnection';

    // G
    _GeneralConfigKey       : String = 'SOFTWARE\SAIVC\Server\SystemInformation\GeneralConfig';

    // L
    _LoginInformationKey    : String = 'SOFTWARE\SAIVC\Server\LoginInfo';

    // P
    _Prl_DataRootKey        : String;

    // S
    _SystemInforMationKey   : String = 'SOFTWARE\SAIVC\Server\SystemInformation';

    // U
    _UsersKey               : String = 'SOFTWARE\SAIVC\Server\LoginInfo\Users';


implementation

end.
