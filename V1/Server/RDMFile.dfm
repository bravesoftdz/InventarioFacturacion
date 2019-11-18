object RemoteModule: TRemoteModule
  OldCreateOrder = False
  OnCreate = RemoteDataModuleCreate
  Height = 1262
  Width = 1218
  object InfoTransaction: TIBTransaction
    DefaultDatabase = InfoDataBase
    IdleTimer = 300
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saCommit
    Left = 144
    Top = 8
  end
  object SrchQ2: TIBQuery
    Database = InfoDataBase
    Transaction = InfoTransaction
    Left = 1136
    Top = 64
  end
  object SrchPr2: TDataSetProvider
    DataSet = SrchQ2
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 1176
    Top = 64
  end
  object InfoDataBase: TIBDatabase
    DatabaseName = 'C:\Development\Database\Inverario_Facturacion\IYS.RMS'
    Params.Strings = (
      'user_name=MGUMBS'
      'password=Ice49635'
      'sql_role_name=Admin')
    LoginPrompt = False
    DefaultTransaction = InfoTransaction
    Left = 40
    Top = 8
  end
  object Mensajes: TsuiMSNPopForm
    AnimateTime = 400
    StayTime = 2000
    PositionX = 0
    PositionY = 0
    AutoPosition = True
    ClickHide = True
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    MessageFont.Charset = DEFAULT_CHARSET
    MessageFont.Color = clNavy
    MessageFont.Height = -11
    MessageFont.Name = 'Tahoma'
    MessageFont.Style = []
    Left = 664
    Top = 8
  end
  object Validation: TIBTable
    TableName = 'Validation'
    Left = 44
    Top = 80
    object ValidationIntervalStart: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'IntervalStart'
      Size = 100
    end
    object ValidationIntervalEnd: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'IntervalEnd'
      Size = 100
    end
    object ValidationRegistration: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Registration'
      Size = 500
    end
    object ValidationExecution: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Execution'
    end
  end
  object qrReporter: TIBQuery
    UniDirectional = True
    Left = 44
    Top = 192
  end
  object prReporter: TDataSetProvider
    DataSet = qrReporter
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 144
    Top = 192
  end
  object SrchQ: TIBQuery
    UniDirectional = True
    Left = 44
    Top = 136
  end
  object SrchPr: TDataSetProvider
    DataSet = SrchQ
    Options = [poFetchBlobsOnDemand, poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 144
    Top = 136
  end
end
