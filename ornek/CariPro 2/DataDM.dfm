object DMData: TDMData
  OnCreate = DataModuleCreate
  Height = 471
  Width = 411
  PixelsPerInch = 120
  object IBDBCariPro: TIBDatabase
    DatabaseName = 'C:\Programc'#305'l'#305'k\Online Net\CariPro 2\CariPro.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1254')
    LoginPrompt = False
    DefaultTransaction = IBTCariPro
    ServerType = 'IBServer'
    Left = 70
    Top = 30
  end
  object IBTCariPro: TIBTransaction
    DefaultDatabase = IBDBCariPro
    Left = 180
    Top = 30
  end
  object islemturleriIBQ: TIBQuery
    Database = IBDBCariPro
    Transaction = IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from ISLEMTURLERI')
    PrecommittedReads = False
    Left = 70
    Top = 110
    object islemturleriIBQOTONO: TIntegerField
      FieldName = 'OTONO'
      Origin = 'ISLEMTURLERI.OTONO'
      Required = True
    end
    object islemturleriIBQTURADI: TIBStringField
      FieldName = 'TURADI'
      Origin = 'ISLEMTURLERI.TURADI'
      Size = 50
    end
    object islemturleriIBQTURKOD: TIntegerField
      FieldName = 'TURKOD'
      Origin = 'ISLEMTURLERI.TURKOD'
    end
  end
end
