object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 653
  Width = 1368
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\juanpu\Documents\GitHub\Gestion-Servicios-Puchades-ver-' +
      '2.0\libmysql.dll'
    Left = 184
    Top = 32
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=puchades'
      'User_Name=juanfcopu'
      'Password=daf5ne55'
      'Server=delldebian'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 32
  end
  object fdClientes: TFDQuery
    Active = True
    Indexes = <
      item
        Active = True
        Name = 'id1'
        Fields = 'nombre'
        Options = [soDescending]
        Distinct = True
        FilterOptions = [ekPartial]
      end>
    IndexesActive = False
    IndexFieldNames = 'idAdministrador,nombre'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evMode, evRecsSkip, evRecsMax, evRowsetSize, evLiveWindowFastFirst]
    FetchOptions.RecsSkip = 0
    FetchOptions.LiveWindowFastFirst = True
    SQL.Strings = (
      
        'Select c.idContactos, c.nombre, a.nombreapellidos,c.idAdministra' +
        'dor from clientes c, administradores a where c.idAdministrador=a' +
        '.idAdministrador'
      'order by c.idAdministrador,c.nombre')
    Left = 288
    Top = 32
    object fdClientesidContactos: TFDAutoIncField
      FieldName = 'idContactos'
      Origin = 'IdContactos'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdClientesnombre: TStringField
      FieldName = 'nombre'
      Origin = 'Nombre'
      Required = True
      Size = 100
    end
    object fdClientesidAdministrador: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idAdministrador'
      Origin = 'idAdministrador'
    end
    object fdClientesnombreapellidos: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nombreapellidos'
      Origin = 'NombreApellidos'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 376
    Top = 32
  end
end
