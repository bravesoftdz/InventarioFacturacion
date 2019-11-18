unit RegKeys;
interface
  Var
    // Keys                             HKEY_LOCAL_MACHINE\SOFTWARE\SoftRegistry\Server\
    // A
    _Acc_DataRootKey        : String;
    _Acc_DataRouteKey       : String = 'SOFTWARE\SoftRegistry\Server\ServerConnection';

    // C
    {Direcciones del Registro}
    _CurrentVersion         : String = 'SOFTWARE\Microsoft\Windows\CurrentVersion';
    _CompanyInfoKey         : String = 'SOFTWARE\SAIVC\Server\SystemInformation\CompanyInfo';

    // D
    _DataRootKey            : String;
    _DataRouteKey           : String = 'SOFTWARE\SoftRegistry\Server\ServerConnection';

    // G
    _GeneralConfigKey       : String = 'SOFTWARE\SoftRegistry\Server\SystemInformation\GeneralConfig';

    // L
    _LoginInformationKey    : String = 'SOFTWARE\SoftRegistry\Server\LoginInfo';

    // P
    _Prl_DataRootKey        : String;

    // S
    _SystemInforMationKey   : String = 'SOFTWARE\SoftRegistry\Server\SystemInformation';

    // U
    _UsersKey               : String = 'SOFTWARE\SoftRegistry\Server\LoginInfo\Users';


implementation

end.
