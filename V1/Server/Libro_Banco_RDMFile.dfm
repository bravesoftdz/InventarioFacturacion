object Libro_Banco_RDM: TLibro_Banco_RDM
  OldCreateOrder = False
  Height = 420
  Width = 569
  object qrBancos: TIBQuery
    SQL.Strings = (
      'Select  * From  "Bancos"'
      'Order By "Nombre"')
    UniDirectional = True
    Left = 72
    Top = 54
    object qrBancosNumero: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'Numero'
      Origin = '"Bancos"."Numero"'
      DisplayFormat = '000000'
    end
    object qrBancosNombre: TIBStringField
      AutoGenerateValue = arDefault
      CustomConstraint = 'Value <> '#39#39
      ConstraintErrorMessage = 'Debe introducir el nombre del Banco'
      FieldName = 'Nombre'
      Origin = '"Bancos"."Nombre"'
      Size = 100
    end
    object qrBancosDireccion: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion'
      Origin = '"Bancos"."Direccion"'
      Size = 255
    end
    object qrBancosTelefono: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefono'
      Origin = '"Bancos"."Telefono"'
      EditMask = '!\(999\)000-0000;1; '
      Size = 25
    end
    object qrBancosmail: TIBStringField
      AutoGenerateValue = arDefault
      FieldName = 'mail'
      Origin = '"Bancos"."mail"'
      Size = 100
    end
  end
  object prBancos: TDataSetProvider
    DataSet = qrBancos
    Options = [poIncFieldProps, poPropogateChanges, poUseQuoteChar]
    Left = 176
    Top = 54
  end
end
