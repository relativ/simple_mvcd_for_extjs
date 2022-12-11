object DMProje: TDMProje
  OldCreateOrder = False
  Left = 300
  Top = 118
  Height = 335
  Width = 476
  object ProjeIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = ProjeIBQAfterDelete
    AfterPost = ProjeIBQAfterPost
    OnNewRecord = ProjeIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PROJE'
      'Order By Tarih')
    UpdateObject = ProjeSQL
    GeneratorField.Field = 'PROJEKOD'
    GeneratorField.Generator = 'PROJE'
    Left = 48
    Top = 32
    object ProjeIBQPROJEKOD: TIntegerField
      FieldName = 'PROJEKOD'
      Origin = 'PROJE.PROJEKOD'
      Required = True
    end
    object ProjeIBQPROJENO: TIntegerField
      DisplayLabel = 'Proje No'
      FieldName = 'PROJENO'
      Origin = 'PROJE.PROJENO'
    end
    object ProjeIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'PROJE.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object ProjeIBQPROJEADI: TIBStringField
      DisplayLabel = 'Proje Ad'#305
      FieldName = 'PROJEADI'
      Origin = 'PROJE.PROJEADI'
      Size = 80
    end
    object ProjeIBQBATARIH: TDateField
      DisplayLabel = 'Ba'#351'lama T.'
      FieldName = 'BATARIH'
      Origin = 'PROJE.BATARIH'
      EditMask = '!99/99/00;1;_'
    end
    object ProjeIBQBITTARIH: TDateField
      DisplayLabel = 'Biti'#351' T.'
      FieldName = 'BITTARIH'
      Origin = 'PROJE.BITTARIH'
      EditMask = '!99/99/00;1;_'
    end
    object ProjeIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'PROJE.KULLANKOD'
    end
    object ProjeIBQUYARI: TIntegerField
      DisplayLabel = 'Uyar'#305
      FieldName = 'UYARI'
      Origin = 'PROJE.UYARI'
    end
    object ProjeIBQDURUM: TIBStringField
      DisplayLabel = 'Durum'
      FieldName = 'DURUM'
      Origin = 'PROJE.DURUM'
      Size = 15
    end
    object ProjeIBQISLEMSURESI: TIntegerField
      DisplayLabel = #304#351'lem S'#252'resi'
      FieldName = 'ISLEMSURESI'
      Origin = 'PROJE.ISLEMSURESI'
    end
    object ProjeIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'PROJE.PERSONELKOD'
    end
    object ProjeIBQC_PERSONEL: TIBStringField
      DisplayLabel = 'Personel'
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'PROJE.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
  end
  object ProjeSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  PROJEKOD,'
      '  PROJENO,'
      '  TARIH,'
      '  PROJEADI,'
      '  BATARIH,'
      '  BITTARIH,'
      '  KULLANKOD,'
      '  UYARI,'
      '  DURUM,'
      '  ISLEMSURESI,'
      '  PERSONELKOD,'
      '  C_PERSONEL'
      'from PROJE '
      'where'
      '  PROJEKOD = :PROJEKOD')
    ModifySQL.Strings = (
      'update PROJE'
      'set'
      '  PROJEKOD = :PROJEKOD,'
      '  PROJENO = :PROJENO,'
      '  TARIH = :TARIH,'
      '  PROJEADI = :PROJEADI,'
      '  BATARIH = :BATARIH,'
      '  BITTARIH = :BITTARIH,'
      '  KULLANKOD = :KULLANKOD,'
      '  UYARI = :UYARI,'
      '  DURUM = :DURUM,'
      '  ISLEMSURESI = :ISLEMSURESI,'
      '  PERSONELKOD = :PERSONELKOD'
      'where'
      '  PROJEKOD = :OLD_PROJEKOD')
    InsertSQL.Strings = (
      'insert into PROJE'
      
        '  (PROJEKOD, PROJENO, TARIH, PROJEADI, BATARIH, BITTARIH, KULLAN' +
        'KOD, UYARI, '
      '   DURUM, ISLEMSURESI, PERSONELKOD)'
      'values'
      
        '  (:PROJEKOD, :PROJENO, :TARIH, :PROJEADI, :BATARIH, :BITTARIH, ' +
        ':KULLANKOD, '
      '   :UYARI, :DURUM, :ISLEMSURESI, :PERSONELKOD)')
    DeleteSQL.Strings = (
      'delete from PROJE'
      'where'
      '  PROJEKOD = :OLD_PROJEKOD')
    Left = 136
    Top = 32
  end
  object ProjeDS: TDataSource
    DataSet = ProjeIBQ
    Left = 216
    Top = 32
  end
  object islemIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = islemIBQAfterDelete
    AfterPost = islemIBQAfterPost
    OnNewRecord = islemIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = ProjeDS
    SQL.Strings = (
      'select *  from PROJEISLEM'
      'Where PROJEKOD=:PROJEKOD'
      'Order By Tarih')
    UpdateObject = islemSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'PROJEISLEM'
    Left = 48
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PROJEKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object islemIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'PROJEISLEM.ISLEMKOD'
      Required = True
    end
    object islemIBQPROJEKOD: TIntegerField
      FieldName = 'PROJEKOD'
      Origin = 'PROJEISLEM.PROJEKOD'
    end
    object islemIBQACILAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACILAMA'
      Origin = 'PROJEISLEM.ACILAMA'
      Size = 80
    end
    object islemIBQTARIH: TDateTimeField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'PROJEISLEM.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object islemIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'PROJEISLEM.KULLANKOD'
    end
    object islemIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'PROJEISLEM.PERSONELKOD'
    end
    object islemIBQDURUM: TIBStringField
      DisplayLabel = 'Durum'
      FieldName = 'DURUM'
      Origin = 'PROJEISLEM.DURUM'
      Size = 30
    end
    object islemIBQC_PERSONEL: TIBStringField
      DisplayLabel = 'Personel'
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'PROJEISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
  end
  object islemSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  PROJEKOD,'
      '  ACILAMA,'
      '  TARIH,'
      '  KULLANKOD,'
      '  PERSONELKOD,'
      '  DURUM,'
      '  C_PERSONEL'
      'from PROJEISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update PROJEISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  PROJEKOD = :PROJEKOD,'
      '  ACILAMA = :ACILAMA,'
      '  TARIH = :TARIH,'
      '  KULLANKOD = :KULLANKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  DURUM = :DURUM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into PROJEISLEM'
      
        '  (ISLEMKOD, PROJEKOD, ACILAMA, TARIH, KULLANKOD, PERSONELKOD, D' +
        'URUM)'
      'values'
      
        '  (:ISLEMKOD, :PROJEKOD, :ACILAMA, :TARIH, :KULLANKOD, :PERSONEL' +
        'KOD, :DURUM)')
    DeleteSQL.Strings = (
      'delete from PROJEISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 136
    Top = 104
  end
  object islemDS: TDataSource
    DataSet = islemIBQ
    Left = 216
    Top = 104
  end
end
