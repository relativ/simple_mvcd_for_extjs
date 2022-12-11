object DMSabit: TDMSabit
  OldCreateOrder = False
  Left = 190
  Top = 128
  Height = 567
  Width = 691
  object ilIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = ilIBQAfterDelete
    AfterPost = ilIBQAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SEHIR'
      'order by SEHIRADI')
    UpdateObject = ilUSQL
    GeneratorField.Field = 'SEHIRKOD'
    GeneratorField.Generator = 'SEHIR'
    Left = 40
    Top = 8
    object ilIBQSEHIRKOD: TIntegerField
      FieldName = 'SEHIRKOD'
      Origin = 'SEHIR.SEHIRKOD'
    end
    object ilIBQTRAFIKKOD: TIBStringField
      FieldName = 'TRAFIKKOD'
      Origin = 'SEHIR.TRAFIKKOD'
      Size = 5
    end
    object ilIBQSEHIRADI: TIBStringField
      FieldName = 'SEHIRADI'
      Origin = 'SEHIR.SEHIRADI'
      Size = 25
    end
    object ilIBQTELALANKOD: TIBStringField
      FieldName = 'TELALANKOD'
      Origin = 'SEHIR.TELALANKOD'
      Size = 5
    end
  end
  object ilUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  SEHIRKOD,'
      '  TRAFIKKOD,'
      '  SEHIRADI,'
      '  TELALANKOD'
      'from SEHIR '
      'where'
      '  SEHIRKOD = :SEHIRKOD')
    ModifySQL.Strings = (
      'update SEHIR'
      'set'
      '  SEHIRKOD = :SEHIRKOD,'
      '  TRAFIKKOD = :TRAFIKKOD,'
      '  SEHIRADI = :SEHIRADI,'
      '  TELALANKOD = :TELALANKOD'
      'where'
      '  SEHIRKOD = :OLD_SEHIRKOD')
    InsertSQL.Strings = (
      'insert into SEHIR'
      '  (SEHIRKOD, TRAFIKKOD, SEHIRADI, TELALANKOD)'
      'values'
      '  (:SEHIRKOD, :TRAFIKKOD, :SEHIRADI, :TELALANKOD)')
    DeleteSQL.Strings = (
      'delete from SEHIR'
      'where'
      '  SEHIRKOD = :OLD_SEHIRKOD')
    Left = 136
    Top = 8
  end
  object ilDS: TDataSource
    DataSet = ilIBQ
    Left = 224
    Top = 8
  end
  object ilceIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = ilceIBQAfterDelete
    AfterPost = ilceIBQAfterPost
    OnNewRecord = ilceIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = ilDS
    SQL.Strings = (
      'select * from ILCE'
      'Where SEHIRKOD=:SEHIRKOD'
      'order by ILCEADI')
    UpdateObject = ilceUSQL
    GeneratorField.Field = 'ILCEKOD'
    GeneratorField.Generator = 'ILCE'
    Left = 40
    Top = 55
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SEHIRKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object ilceIBQILCEKOD: TIntegerField
      FieldName = 'ILCEKOD'
      Origin = 'ILCE.ILCEKOD'
    end
    object ilceIBQSEHIRKOD: TIntegerField
      FieldName = 'SEHIRKOD'
      Origin = 'ILCE.SEHIRKOD'
    end
    object ilceIBQILCEADI: TIBStringField
      FieldName = 'ILCEADI'
      Origin = 'ILCE.ILCEADI'
      Size = 25
    end
  end
  object ilceUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ILCEKOD,'
      '  SEHIRKOD,'
      '  ILCEADI'
      'from ILCE '
      'where'
      '  ILCEKOD = :ILCEKOD')
    ModifySQL.Strings = (
      'update ILCE'
      'set'
      '  ILCEKOD = :ILCEKOD,'
      '  SEHIRKOD = :SEHIRKOD,'
      '  ILCEADI = :ILCEADI'
      'where'
      '  ILCEKOD = :OLD_ILCEKOD')
    InsertSQL.Strings = (
      'insert into ILCE'
      '  (ILCEKOD, SEHIRKOD, ILCEADI)'
      'values'
      '  (:ILCEKOD, :SEHIRKOD, :ILCEADI)')
    DeleteSQL.Strings = (
      'delete from ILCE'
      'where'
      '  ILCEKOD = :OLD_ILCEKOD')
    Left = 136
    Top = 55
  end
  object ilceDS: TDataSource
    DataSet = ilceIBQ
    Left = 224
    Top = 55
  end
  object SektorIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = SektorIBQAfterDelete
    AfterPost = SektorIBQAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SEKTOR')
    UpdateObject = SektorUSQL
    GeneratorField.Field = 'SEKKOD'
    GeneratorField.Generator = 'SEKTOR'
    Left = 40
    Top = 111
    object SektorIBQSEKKOD: TIntegerField
      FieldName = 'SEKKOD'
      Origin = 'SEKTOR.SEKKOD'
      Required = True
    end
    object SektorIBQSEKTOR: TIBStringField
      FieldName = 'SEKTOR'
      Origin = 'SEKTOR.SEKTOR'
      Size = 50
    end
  end
  object SektorUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  SEKKOD,'
      '  SEKTOR'
      'from SEKTOR '
      'where'
      '  SEKKOD = :SEKKOD')
    ModifySQL.Strings = (
      'update SEKTOR'
      'set'
      '  SEKKOD = :SEKKOD,'
      '  SEKTOR = :SEKTOR'
      'where'
      '  SEKKOD = :OLD_SEKKOD')
    InsertSQL.Strings = (
      'insert into SEKTOR'
      '  (SEKKOD, SEKTOR)'
      'values'
      '  (:SEKKOD, :SEKTOR)')
    DeleteSQL.Strings = (
      'delete from SEKTOR'
      'where'
      '  SEKKOD = :OLD_SEKKOD')
    Left = 136
    Top = 111
  end
  object SektorDS: TDataSource
    DataSet = SektorIBQ
    Left = 224
    Top = 111
  end
  object CariTipIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = CariTipIBQAfterDelete
    AfterPost = CariTipIBQAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CARITIP')
    UpdateObject = CariTipUSQL
    GeneratorField.Field = 'CARITIPKOD'
    GeneratorField.Generator = 'CARITIP'
    Left = 40
    Top = 168
    object CariTipIBQCARITIPKOD: TIntegerField
      FieldName = 'CARITIPKOD'
      Origin = 'CARITIP.CARITIPKOD'
      Required = True
    end
    object CariTipIBQANANO: TIntegerField
      FieldName = 'ANANO'
      Origin = 'CARITIP.ANANO'
    end
    object CariTipIBQTIPADI: TIBStringField
      FieldName = 'TIPADI'
      Origin = 'CARITIP.TIPADI'
      Size = 50
    end
    object CariTipIBQKONTROLNO: TIBStringField
      FieldName = 'KONTROLNO'
      Origin = 'CARITIP.KONTROLNO'
      Size = 60
    end
  end
  object CariTipUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CARITIPKOD,'
      '  ANANO,'
      '  TIPADI,'
      '  KONTROLNO'
      'from CARITIP '
      'where'
      '  CARITIPKOD = :CARITIPKOD')
    ModifySQL.Strings = (
      'update CARITIP'
      'set'
      '  CARITIPKOD = :CARITIPKOD,'
      '  ANANO = :ANANO,'
      '  TIPADI = :TIPADI,'
      '  KONTROLNO = :KONTROLNO'
      'where'
      '  CARITIPKOD = :OLD_CARITIPKOD')
    InsertSQL.Strings = (
      'insert into CARITIP'
      '  (CARITIPKOD, ANANO, TIPADI, KONTROLNO)'
      'values'
      '  (:CARITIPKOD, :ANANO, :TIPADI, :KONTROLNO)')
    DeleteSQL.Strings = (
      'delete from CARITIP'
      'where'
      '  CARITIPKOD = :OLD_CARITIPKOD')
    Left = 136
    Top = 168
  end
  object CariTipDS: TDataSource
    DataSet = CariTipIBQ
    Left = 224
    Top = 168
  end
  object ParaBirimiIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = ParaBirimiIBQAfterPost
    AfterPost = ParaBirimiIBQAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PARABIRIM')
    UpdateObject = ParaBirimiUSQL
    GeneratorField.Field = 'PARABIRKOD'
    GeneratorField.Generator = 'PARABIRIM'
    Left = 40
    Top = 224
    object ParaBirimiIBQPARABIRKOD: TIntegerField
      FieldName = 'PARABIRKOD'
      Origin = 'PARABIRIM.PARABIRKOD'
      Required = True
    end
    object ParaBirimiIBQPARABIRIMI: TIBStringField
      FieldName = 'PARABIRIMI'
      Origin = 'PARABIRIM.PARABIRIMI'
      Size = 25
    end
    object ParaBirimiIBQKISAADI: TIBStringField
      FieldName = 'KISAADI'
      Origin = 'PARABIRIM.KISAADI'
      Required = True
      Size = 10
    end
    object ParaBirimiIBQFORMAT: TIBStringField
      FieldName = 'FORMAT'
      Origin = 'PARABIRIM.FORMAT'
      Size = 15
    end
    object ParaBirimiIBQKUR: TFloatField
      FieldName = 'KUR'
      Origin = 'PARABIRIM.KUR'
      Required = True
    end
    object ParaBirimiIBQKURTIPI: TIBStringField
      FieldName = 'KURTIPI'
      Origin = 'PARABIRIM.KURTIPI'
      Size = 15
    end
  end
  object ParaBirimiUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  PARABIRKOD,'
      '  PARABIRIMI,'
      '  KISAADI,'
      '  FORMAT,'
      '  KUR,'
      '  KURTIPI'
      'from PARABIRIM '
      'where'
      '  PARABIRKOD = :PARABIRKOD')
    ModifySQL.Strings = (
      'update PARABIRIM'
      'set'
      '  PARABIRKOD = :PARABIRKOD,'
      '  PARABIRIMI = :PARABIRIMI,'
      '  KISAADI = :KISAADI,'
      '  FORMAT = :FORMAT,'
      '  KUR = :KUR,'
      '  KURTIPI = :KURTIPI'
      'where'
      '  PARABIRKOD = :OLD_PARABIRKOD')
    InsertSQL.Strings = (
      'insert into PARABIRIM'
      '  (PARABIRKOD, PARABIRIMI, KISAADI, FORMAT, KUR, KURTIPI)'
      'values'
      '  (:PARABIRKOD, :PARABIRIMI, :KISAADI, :FORMAT, :KUR, :KURTIPI)')
    DeleteSQL.Strings = (
      'delete from PARABIRIM'
      'where'
      '  PARABIRKOD = :OLD_PARABIRKOD')
    Left = 136
    Top = 224
  end
  object ParaBirimiDS: TDataSource
    DataSet = ParaBirimiIBQ
    Left = 224
    Top = 224
  end
  object DovizKurIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = DovizKurIBQAfterPost
    AfterPost = DovizKurIBQAfterPost
    OnNewRecord = DovizKurIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = ParaBirimiDS
    SQL.Strings = (
      'select * from DOVIZKUR'
      'Where PARABIRKOD=PARABIRKOD')
    UpdateObject = DovizKurUSQL
    GeneratorField.Field = 'DOVKURKOD'
    GeneratorField.Generator = 'DOVIZKUR'
    Left = 40
    Top = 288
    object DovizKurIBQDOVKURKOD: TIntegerField
      FieldName = 'DOVKURKOD'
      Origin = 'DOVIZKUR.DOVKURKOD'
      Required = True
    end
    object DovizKurIBQTARIH: TDateTimeField
      FieldName = 'TARIH'
      Origin = 'DOVIZKUR.TARIH'
    end
    object DovizKurIBQPARABIRKOD: TIntegerField
      FieldName = 'PARABIRKOD'
      Origin = 'DOVIZKUR.PARABIRKOD'
    end
    object DovizKurIBQMBALIS: TFloatField
      FieldName = 'MBALIS'
      Origin = 'DOVIZKUR.MBALIS'
    end
    object DovizKurIBQMBSATIS: TFloatField
      FieldName = 'MBSATIS'
      Origin = 'DOVIZKUR.MBSATIS'
    end
    object DovizKurIBQEFEALIS: TFloatField
      FieldName = 'EFEALIS'
      Origin = 'DOVIZKUR.EFEALIS'
    end
    object DovizKurIBQEFESATIS: TFloatField
      FieldName = 'EFESATIS'
      Origin = 'DOVIZKUR.EFESATIS'
    end
    object DovizKurIBQSERALIS: TFloatField
      FieldName = 'SERALIS'
      Origin = 'DOVIZKUR.SERALIS'
    end
    object DovizKurIBQSERSATIS: TFloatField
      FieldName = 'SERSATIS'
      Origin = 'DOVIZKUR.SERSATIS'
    end
    object DovizKurIBQFIRMAKUR: TFloatField
      FieldName = 'FIRMAKUR'
      Origin = 'DOVIZKUR.FIRMAKUR'
    end
    object DovizKurIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'DOVIZKUR.SAAT'
    end
  end
  object DovizKurUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  DOVKURKOD,'
      '  TARIH,'
      '  PARABIRKOD,'
      '  MBALIS,'
      '  MBSATIS,'
      '  EFEALIS,'
      '  EFESATIS,'
      '  SERALIS,'
      '  SERSATIS,'
      '  FIRMAKUR,'
      '  SAAT'
      'from DOVIZKUR '
      'where'
      '  DOVKURKOD = :DOVKURKOD')
    ModifySQL.Strings = (
      'update DOVIZKUR'
      'set'
      '  DOVKURKOD = :DOVKURKOD,'
      '  TARIH = :TARIH,'
      '  PARABIRKOD = :PARABIRKOD,'
      '  MBALIS = :MBALIS,'
      '  MBSATIS = :MBSATIS,'
      '  EFEALIS = :EFEALIS,'
      '  EFESATIS = :EFESATIS,'
      '  SERALIS = :SERALIS,'
      '  SERSATIS = :SERSATIS,'
      '  FIRMAKUR = :FIRMAKUR,'
      '  SAAT = :SAAT'
      'where'
      '  DOVKURKOD = :OLD_DOVKURKOD')
    InsertSQL.Strings = (
      'insert into DOVIZKUR'
      
        '  (DOVKURKOD, TARIH, PARABIRKOD, MBALIS, MBSATIS, EFEALIS, EFESA' +
        'TIS, SERALIS, '
      '   SERSATIS, FIRMAKUR, SAAT)'
      'values'
      
        '  (:DOVKURKOD, :TARIH, :PARABIRKOD, :MBALIS, :MBSATIS, :EFEALIS,' +
        ' :EFESATIS, '
      '   :SERALIS, :SERSATIS, :FIRMAKUR, :SAAT)')
    DeleteSQL.Strings = (
      'delete from DOVIZKUR'
      'where'
      '  DOVKURKOD = :OLD_DOVKURKOD')
    Left = 136
    Top = 288
  end
  object DovizKurDS: TDataSource
    DataSet = DovizKurIBQ
    Left = 224
    Top = 288
  end
  object GelirGiderIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = GelirGiderIBQAfterDelete
    AfterPost = GelirGiderIBQAfterPost
    OnNewRecord = GelirGiderIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from GELGIDER')
    UpdateObject = GelirGiderSQL
    GeneratorField.Field = 'GELGITKOD'
    GeneratorField.Generator = 'GELGIDER'
    Left = 40
    Top = 344
    object GelirGiderIBQGELGITKOD: TIntegerField
      FieldName = 'GELGITKOD'
      Origin = 'GELGIDER.GELGITKOD'
      Required = True
    end
    object GelirGiderIBQANANO: TIntegerField
      FieldName = 'ANANO'
      Origin = 'GELGIDER.ANANO'
    end
    object GelirGiderIBQGELGITADI: TIBStringField
      FieldName = 'GELGITADI'
      Origin = 'GELGIDER.GELGITADI'
      Size = 30
    end
    object GelirGiderIBQGELGITTUR: TIBStringField
      FieldName = 'GELGITTUR'
      Origin = 'GELGIDER.GELGITTUR'
      Required = True
      Size = 5
    end
    object GelirGiderIBQKONTROLNO: TIBStringField
      FieldName = 'KONTROLNO'
      Origin = 'GELGIDER.KONTROLNO'
      Size = 80
    end
  end
  object GelirGiderSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  GELGITKOD,'
      '  ANANO,'
      '  GELGITADI,'
      '  GELGITTUR,'
      '  KONTROLNO'
      'from GELGIDER '
      'where'
      '  GELGITKOD = :GELGITKOD')
    ModifySQL.Strings = (
      'update GELGIDER'
      'set'
      '  GELGITKOD = :GELGITKOD,'
      '  ANANO = :ANANO,'
      '  GELGITADI = :GELGITADI,'
      '  GELGITTUR = :GELGITTUR,'
      '  KONTROLNO = :KONTROLNO'
      'where'
      '  GELGITKOD = :OLD_GELGITKOD')
    InsertSQL.Strings = (
      'insert into GELGIDER'
      '  (GELGITKOD, ANANO, GELGITADI, GELGITTUR, KONTROLNO)'
      'values'
      '  (:GELGITKOD, :ANANO, :GELGITADI, :GELGITTUR, :KONTROLNO)')
    DeleteSQL.Strings = (
      'delete from GELGIDER'
      'where'
      '  GELGITKOD = :OLD_GELGITKOD')
    Left = 136
    Top = 344
  end
  object GelirGiderDS: TDataSource
    DataSet = GelirGiderIBQ
    Left = 224
    Top = 344
  end
  object GGSecimIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = GGSecimIBQAfterDelete
    AfterPost = GGSecimIBQAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from GELGIDER')
    UpdateObject = GGSecimUSQL
    GeneratorField.Field = 'GELGITKOD'
    GeneratorField.Generator = 'GELGIDER'
    Left = 40
    Top = 400
    object GGSecimIBQGELGITKOD: TIntegerField
      FieldName = 'GELGITKOD'
      Origin = 'GELGIDER.GELGITKOD'
      Required = True
    end
    object GGSecimIBQANANO: TIntegerField
      FieldName = 'ANANO'
      Origin = 'GELGIDER.ANANO'
    end
    object GGSecimIBQGELGITADI: TIBStringField
      FieldName = 'GELGITADI'
      Origin = 'GELGIDER.GELGITADI'
      Size = 30
    end
    object GGSecimIBQGELGITTUR: TIBStringField
      FieldName = 'GELGITTUR'
      Origin = 'GELGIDER.GELGITTUR'
      Required = True
      Size = 5
    end
    object GGSecimIBQKONTROLNO: TIBStringField
      FieldName = 'KONTROLNO'
      Origin = 'GELGIDER.KONTROLNO'
      Size = 80
    end
  end
  object GGSecimUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  GELGITKOD,'
      '  ANANO,'
      '  GELGITADI,'
      '  GELGITTUR,'
      '  KONTROLNO'
      'from GELGIDER '
      'where'
      '  GELGITKOD = :GELGITKOD')
    ModifySQL.Strings = (
      'update GELGIDER'
      'set'
      '  GELGITKOD = :GELGITKOD,'
      '  ANANO = :ANANO,'
      '  GELGITADI = :GELGITADI,'
      '  GELGITTUR = :GELGITTUR,'
      '  KONTROLNO = :KONTROLNO'
      'where'
      '  GELGITKOD = :OLD_GELGITKOD')
    InsertSQL.Strings = (
      'insert into GELGIDER'
      '  (GELGITKOD, ANANO, GELGITADI, GELGITTUR, KONTROLNO)'
      'values'
      '  (:GELGITKOD, :ANANO, :GELGITADI, :GELGITTUR, :KONTROLNO)')
    DeleteSQL.Strings = (
      'delete from GELGIDER'
      'where'
      '  GELGITKOD = :OLD_GELGITKOD')
    Left = 136
    Top = 400
  end
  object GGSecimDS: TDataSource
    DataSet = GGSecimIBQ
    Left = 224
    Top = 400
  end
  object KullaniciIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = KullaniciIBQAfterDelete
    AfterPost = KullaniciIBQAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from KULLANICI')
    UpdateObject = KullaniciUSQL
    GeneratorField.Field = 'KULLANKOD'
    GeneratorField.Generator = 'KULLANICI'
    Left = 40
    Top = 448
    object KullaniciIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'KULLANICI.KULLANKOD'
      Required = True
    end
    object KullaniciIBQKULLANICI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldName = 'KULLANICI'
      Origin = 'KULLANICI.KULLANICI'
    end
    object KullaniciIBQPERADI: TIBStringField
      DisplayLabel = 'Ad'#305
      FieldName = 'PERADI'
      Origin = 'KULLANICI.PERADI'
      Size = 15
    end
    object KullaniciIBQPERSOYAD: TIBStringField
      DisplayLabel = 'Soyad'#305
      FieldName = 'PERSOYAD'
      Origin = 'KULLANICI.PERSOYAD'
      Size = 15
    end
    object KullaniciIBQSIFRE: TIBStringField
      FieldName = 'SIFRE'
      Origin = 'KULLANICI.SIFRE'
      Size = 10
    end
    object KullaniciIBQTARIH: TDateTimeField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'KULLANICI.TARIH'
    end
  end
  object KullaniciUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  KULLANKOD,'
      '  KULLANICI,'
      '  PERADI,'
      '  PERSOYAD,'
      '  SIFRE,'
      '  TARIH'
      'from KULLANICI '
      'where'
      '  KULLANKOD = :KULLANKOD')
    ModifySQL.Strings = (
      'update KULLANICI'
      'set'
      '  KULLANKOD = :KULLANKOD,'
      '  KULLANICI = :KULLANICI,'
      '  PERADI = :PERADI,'
      '  PERSOYAD = :PERSOYAD,'
      '  SIFRE = :SIFRE,'
      '  TARIH = :TARIH'
      'where'
      '  KULLANKOD = :OLD_KULLANKOD')
    InsertSQL.Strings = (
      'insert into KULLANICI'
      '  (KULLANKOD, KULLANICI, PERADI, PERSOYAD, SIFRE, TARIH)'
      'values'
      '  (:KULLANKOD, :KULLANICI, :PERADI, :PERSOYAD, :SIFRE, :TARIH)')
    DeleteSQL.Strings = (
      'delete from KULLANICI'
      'where'
      '  KULLANKOD = :OLD_KULLANKOD')
    Left = 136
    Top = 448
  end
  object KullaniciDS: TDataSource
    DataSet = KullaniciIBQ
    Left = 224
    Top = 448
  end
  object StokYeriIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = StokYeriIBQAfterDelete
    AfterPost = StokYeriIBQAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *  from STOKYERI')
    UpdateObject = StokYeriIBQUSQL
    GeneratorField.Field = 'STOKYERIKOD'
    GeneratorField.Generator = 'STOKYERI'
    Left = 320
    Top = 8
    object StokYeriIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'STOKYERI.STOKYERIKOD'
      Required = True
    end
    object StokYeriIBQANANO: TIntegerField
      FieldName = 'ANANO'
      Origin = 'STOKYERI.ANANO'
    end
    object StokYeriIBQALTNO: TIntegerField
      FieldName = 'ALTNO'
      Origin = 'STOKYERI.ALTNO'
    end
    object StokYeriIBQSTOKYERINO: TIntegerField
      FieldName = 'STOKYERINO'
      Origin = 'STOKYERI.STOKYERINO'
    end
    object StokYeriIBQSTOKYERIADI: TIBStringField
      FieldName = 'STOKYERIADI'
      Origin = 'STOKYERI.STOKYERIADI'
      Size = 25
    end
    object StokYeriIBQKULLANIMALANI: TIBStringField
      FieldName = 'KULLANIMALANI'
      Origin = 'STOKYERI.KULLANIMALANI'
      Size = 25
    end
    object StokYeriIBQAKTIVITE: TIntegerField
      FieldName = 'AKTIVITE'
      Origin = 'STOKYERI.AKTIVITE'
    end
    object StokYeriIBQBLOKE: TIntegerField
      FieldName = 'BLOKE'
      Origin = 'STOKYERI.BLOKE'
    end
    object StokYeriIBQADRES: TIBStringField
      FieldName = 'ADRES'
      Origin = 'STOKYERI.ADRES'
      Size = 40
    end
    object StokYeriIBQTELEFON: TIBStringField
      FieldName = 'TELEFON'
      Origin = 'STOKYERI.TELEFON'
      Size = 17
    end
    object StokYeriIBQSORUMLU: TIBStringField
      FieldName = 'SORUMLU'
      Origin = 'STOKYERI.SORUMLU'
      Size = 30
    end
    object StokYeriIBQHACIM: TIntegerField
      FieldName = 'HACIM'
      Origin = 'STOKYERI.HACIM'
    end
    object StokYeriIBQKUTLE: TIntegerField
      FieldName = 'KUTLE'
      Origin = 'STOKYERI.KUTLE'
    end
    object StokYeriIBQNOTU: TMemoField
      FieldName = 'NOTU'
      Origin = 'STOKYERI.NOTU'
      BlobType = ftMemo
      Size = 8
    end
    object StokYeriIBQSIPGUN: TIBStringField
      FieldName = 'SIPGUN'
      Origin = 'STOKYERI.SIPGUN'
      Size = 60
    end
    object StokYeriIBQTESGUN: TIBStringField
      FieldName = 'TESGUN'
      Origin = 'STOKYERI.TESGUN'
      Size = 60
    end
    object StokYeriIBQKONTROLNO: TIBStringField
      FieldName = 'KONTROLNO'
      Origin = 'STOKYERI.KONTROLNO'
      Size = 60
    end
  end
  object StokYeriIBQUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  STOKYERIKOD,'
      '  ANANO,'
      '  ALTNO,'
      '  STOKYERINO,'
      '  STOKYERIADI,'
      '  KULLANIMALANI,'
      '  AKTIVITE,'
      '  BLOKE,'
      '  ADRES,'
      '  TELEFON,'
      '  SORUMLU,'
      '  HACIM,'
      '  KUTLE,'
      '  NOTU,'
      '  SIPGUN,'
      '  TESGUN,'
      '  KONTROLNO'
      'from STOKYERI '
      'where'
      '  STOKYERIKOD = :STOKYERIKOD')
    ModifySQL.Strings = (
      'update STOKYERI'
      'set'
      '  STOKYERIKOD = :STOKYERIKOD,'
      '  ANANO = :ANANO,'
      '  ALTNO = :ALTNO,'
      '  STOKYERINO = :STOKYERINO,'
      '  STOKYERIADI = :STOKYERIADI,'
      '  KULLANIMALANI = :KULLANIMALANI,'
      '  AKTIVITE = :AKTIVITE,'
      '  BLOKE = :BLOKE,'
      '  ADRES = :ADRES,'
      '  TELEFON = :TELEFON,'
      '  SORUMLU = :SORUMLU,'
      '  HACIM = :HACIM,'
      '  KUTLE = :KUTLE,'
      '  NOTU = :NOTU,'
      '  SIPGUN = :SIPGUN,'
      '  TESGUN = :TESGUN,'
      '  KONTROLNO = :KONTROLNO'
      'where'
      '  STOKYERIKOD = :OLD_STOKYERIKOD')
    InsertSQL.Strings = (
      'insert into STOKYERI'
      
        '  (STOKYERIKOD, ANANO, ALTNO, STOKYERINO, STOKYERIADI, KULLANIMA' +
        'LANI, AKTIVITE, '
      
        '   BLOKE, ADRES, TELEFON, SORUMLU, HACIM, KUTLE, NOTU, SIPGUN, T' +
        'ESGUN, '
      '   KONTROLNO)'
      'values'
      
        '  (:STOKYERIKOD, :ANANO, :ALTNO, :STOKYERINO, :STOKYERIADI, :KUL' +
        'LANIMALANI, '
      
        '   :AKTIVITE, :BLOKE, :ADRES, :TELEFON, :SORUMLU, :HACIM, :KUTLE' +
        ', :NOTU, '
      '   :SIPGUN, :TESGUN, :KONTROLNO)')
    DeleteSQL.Strings = (
      'delete from STOKYERI'
      'where'
      '  STOKYERIKOD = :OLD_STOKYERIKOD')
    Left = 424
    Top = 8
  end
  object StokYeriIBQDS: TDataSource
    DataSet = StokYeriIBQ
    Left = 512
    Top = 8
  end
  object PersonelIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = PersonelIBQAfterDelete
    AfterPost = PersonelIBQAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PERSONEL')
    UpdateObject = PersonelUSQL
    GeneratorField.Field = 'PERSONELKOD'
    GeneratorField.Generator = 'PERSONEL'
    Left = 320
    Top = 56
    object PersonelIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'PERSONEL.PERSONELKOD'
      Required = True
    end
    object PersonelIBQPERSONELADI: TIBStringField
      DisplayLabel = 'Personel'
      FieldName = 'PERSONELADI'
      Origin = 'PERSONEL.PERSONELADI'
      Size = 15
    end
    object PersonelIBQACIKLAMA: TMemoField
      FieldName = 'ACIKLAMA'
      Origin = 'PERSONEL.ACIKLAMA'
      BlobType = ftMemo
      Size = 8
    end
    object PersonelIBQTEL1: TIBStringField
      FieldName = 'TEL1'
      Origin = 'PERSONEL.TEL1'
      Size = 17
    end
    object PersonelIBQTEL2: TIBStringField
      FieldName = 'TEL2'
      Origin = 'PERSONEL.TEL2'
      Size = 17
    end
    object PersonelIBQGSM: TIBStringField
      FieldName = 'GSM'
      Origin = 'PERSONEL.GSM'
      Size = 17
    end
    object PersonelIBQMAHALLE: TIBStringField
      FieldName = 'MAHALLE'
      Origin = 'PERSONEL.MAHALLE'
      Size = 40
    end
    object PersonelIBQCADDE: TIBStringField
      FieldName = 'CADDE'
      Origin = 'PERSONEL.CADDE'
      Size = 40
    end
    object PersonelIBQSOKAK: TIBStringField
      FieldName = 'SOKAK'
      Origin = 'PERSONEL.SOKAK'
      Size = 40
    end
    object PersonelIBQAPARTMAN: TIBStringField
      FieldName = 'APARTMAN'
      Origin = 'PERSONEL.APARTMAN'
      Size = 40
    end
    object PersonelIBQNOSU: TIBStringField
      FieldName = 'NOSU'
      Origin = 'PERSONEL.NOSU'
    end
    object PersonelIBQILCEKOD: TIntegerField
      FieldName = 'ILCEKOD'
      Origin = 'PERSONEL.ILCEKOD'
    end
    object PersonelIBQSEHIRKOD: TIntegerField
      FieldName = 'SEHIRKOD'
      Origin = 'PERSONEL.SEHIRKOD'
    end
    object PersonelIBQVERGINO: TIBStringField
      FieldName = 'VERGINO'
      Origin = 'PERSONEL.VERGINO'
      Size = 25
    end
    object PersonelIBQKIMLIKNO: TIBStringField
      FieldName = 'KIMLIKNO'
      Origin = 'PERSONEL.KIMLIKNO'
      Size = 25
    end
    object PersonelIBQMAIL: TIBStringField
      FieldName = 'MAIL'
      Origin = 'PERSONEL.MAIL'
      Size = 50
    end
    object PersonelIBQMAAS: TFloatField
      FieldName = 'MAAS'
      Origin = 'PERSONEL.MAAS'
    end
    object PersonelIBQAKTIVITE: TIntegerField
      FieldName = 'AKTIVITE'
      Origin = 'PERSONEL.AKTIVITE'
    end
    object PersonelIBQPERSONELNO: TIntegerField
      FieldName = 'PERSONELNO'
      Origin = 'PERSONEL.PERSONELNO'
    end
  end
  object PersonelUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  PERSONELKOD,'
      '  PERSONELADI,'
      '  ACIKLAMA,'
      '  TEL1,'
      '  TEL2,'
      '  GSM,'
      '  MAHALLE,'
      '  CADDE,'
      '  SOKAK,'
      '  APARTMAN,'
      '  NOSU,'
      '  ILCEKOD,'
      '  SEHIRKOD,'
      '  VERGINO,'
      '  KIMLIKNO,'
      '  MAIL,'
      '  MAAS,'
      '  AKTIVITE,'
      '  PERSONELNO'
      'from PERSONEL '
      'where'
      '  PERSONELKOD = :PERSONELKOD')
    ModifySQL.Strings = (
      'update PERSONEL'
      'set'
      '  PERSONELKOD = :PERSONELKOD,'
      '  PERSONELADI = :PERSONELADI,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  TEL1 = :TEL1,'
      '  TEL2 = :TEL2,'
      '  GSM = :GSM,'
      '  MAHALLE = :MAHALLE,'
      '  CADDE = :CADDE,'
      '  SOKAK = :SOKAK,'
      '  APARTMAN = :APARTMAN,'
      '  NOSU = :NOSU,'
      '  ILCEKOD = :ILCEKOD,'
      '  SEHIRKOD = :SEHIRKOD,'
      '  VERGINO = :VERGINO,'
      '  KIMLIKNO = :KIMLIKNO,'
      '  MAIL = :MAIL,'
      '  MAAS = :MAAS,'
      '  AKTIVITE = :AKTIVITE,'
      '  PERSONELNO = :PERSONELNO'
      'where'
      '  PERSONELKOD = :OLD_PERSONELKOD')
    InsertSQL.Strings = (
      'insert into PERSONEL'
      
        '  (PERSONELKOD, PERSONELADI, ACIKLAMA, TEL1, TEL2, GSM, MAHALLE,' +
        ' CADDE, '
      
        '   SOKAK, APARTMAN, NOSU, ILCEKOD, SEHIRKOD, VERGINO, KIMLIKNO, ' +
        'MAIL, MAAS, '
      '   AKTIVITE, PERSONELNO)'
      'values'
      
        '  (:PERSONELKOD, :PERSONELADI, :ACIKLAMA, :TEL1, :TEL2, :GSM, :M' +
        'AHALLE, '
      
        '   :CADDE, :SOKAK, :APARTMAN, :NOSU, :ILCEKOD, :SEHIRKOD, :VERGI' +
        'NO, :KIMLIKNO, '
      '   :MAIL, :MAAS, :AKTIVITE, :PERSONELNO)')
    DeleteSQL.Strings = (
      'delete from PERSONEL'
      'where'
      '  PERSONELKOD = :OLD_PERSONELKOD')
    Left = 424
    Top = 56
  end
  object PersonelDS: TDataSource
    DataSet = PersonelIBQ
    Left = 512
    Top = 56
  end
  object PersonelResimIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = PersonelResimIBQAfterDelete
    AfterPost = PersonelResimIBQAfterPost
    OnNewRecord = PersonelResimIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = PersonelDS
    SQL.Strings = (
      'select  *from PERSONELRESIMLER'
      'Where PERSONELKOD= :PERSONELKOD')
    UpdateObject = PersonelResimUSQL
    GeneratorField.Field = 'RESIMKOD'
    GeneratorField.Generator = 'PERSONELRESIMLER'
    Left = 320
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PERSONELKOD'
        ParamType = ptUnknown
      end>
    object PersonelResimIBQRESIMKOD: TIntegerField
      FieldName = 'RESIMKOD'
      Origin = 'PERSONELRESIMLER.RESIMKOD'
      Required = True
    end
    object PersonelResimIBQRESIM: TBlobField
      FieldName = 'RESIM'
      Origin = 'PERSONELRESIMLER.RESIM'
      Size = 8
    end
    object PersonelResimIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'PERSONELRESIMLER.PERSONELKOD'
    end
  end
  object PersonelResimUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  RESIMKOD,'
      '  PERSONELKOD,'
      '  RESIM'
      'from PERSONELRESIMLER '
      'where'
      '  RESIMKOD = :RESIMKOD')
    ModifySQL.Strings = (
      'update PERSONELRESIMLER'
      'set'
      '  RESIMKOD = :RESIMKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  RESIM = :RESIM'
      'where'
      '  RESIMKOD = :OLD_RESIMKOD')
    InsertSQL.Strings = (
      'insert into PERSONELRESIMLER'
      '  (RESIMKOD, PERSONELKOD, RESIM)'
      'values'
      '  (:RESIMKOD, :PERSONELKOD, :RESIM)')
    DeleteSQL.Strings = (
      'delete from PERSONELRESIMLER'
      'where'
      '  RESIMKOD = :OLD_RESIMKOD')
    Left = 424
    Top = 104
  end
  object PersonelResimDS: TDataSource
    DataSet = PersonelResimIBQ
    Left = 512
    Top = 104
  end
  object FirmaIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = FirmaIBQAfterDelete
    AfterPost = FirmaIBQAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = PersonelDS
    SQL.Strings = (
      'select *  from FIRMA')
    UpdateObject = FirmaUSQL
    GeneratorField.Field = 'FIRMAKOD'
    GeneratorField.Generator = 'FIRMA'
    Left = 320
    Top = 152
    object FirmaIBQFIRMAKOD: TIntegerField
      FieldName = 'FIRMAKOD'
      Origin = 'FIRMA.FIRMAKOD'
      Required = True
    end
    object FirmaIBQLOGO: TBlobField
      FieldName = 'LOGO'
      Origin = 'FIRMA.LOGO'
      Size = 8
    end
    object FirmaIBQFIRMAUNVAN: TIBStringField
      FieldName = 'FIRMAUNVAN'
      Origin = 'FIRMA.FIRMAUNVAN'
      Size = 60
    end
    object FirmaIBQYETKILI: TIBStringField
      FieldName = 'YETKILI'
      Origin = 'FIRMA.YETKILI'
      Size = 30
    end
    object FirmaIBQVERGIDAIRE: TIBStringField
      FieldName = 'VERGIDAIRE'
      Origin = 'FIRMA.VERGIDAIRE'
      Size = 25
    end
    object FirmaIBQVERGINO: TIBStringField
      FieldName = 'VERGINO'
      Origin = 'FIRMA.VERGINO'
      Size = 25
    end
    object FirmaIBQADRES: TIBStringField
      FieldName = 'ADRES'
      Origin = 'FIRMA.ADRES'
      Size = 60
    end
    object FirmaIBQTELEFON: TIBStringField
      FieldName = 'TELEFON'
      Origin = 'FIRMA.TELEFON'
      EditMask = '(999) 999 99 99;1;_'
      Size = 17
    end
    object FirmaIBQFAKS: TIBStringField
      FieldName = 'FAKS'
      Origin = 'FIRMA.FAKS'
      EditMask = '(999) 999 99 99;1;_'
      Size = 17
    end
    object FirmaIBQSERINO: TIBStringField
      FieldName = 'SERINO'
      Origin = 'FIRMA.SERINO'
      Size = 25
    end
    object FirmaIBQYEDEKZAMANI: TIntegerField
      FieldName = 'YEDEKZAMANI'
      Origin = 'FIRMA.YEDEKZAMANI'
    end
    object FirmaIBQYEDEKSAAT: TIBStringField
      FieldName = 'YEDEKSAAT'
      Origin = 'FIRMA.YEDEKSAAT'
      Size = 10
    end
    object FirmaIBQYEDEKYER: TIBStringField
      FieldName = 'YEDEKYER'
      Origin = 'FIRMA.YEDEKYER'
      Size = 80
    end
    object FirmaIBQLISANS: TIntegerField
      FieldName = 'LISANS'
      Origin = 'FIRMA.LISANS'
    end
    object FirmaIBQCEKUYAR: TIBStringField
      FieldName = 'CEKUYAR'
      Origin = 'FIRMA.CEKUYAR'
      Size = 1
    end
    object FirmaIBQTEL2: TIBStringField
      FieldName = 'TEL2'
      Origin = 'FIRMA.TEL2'
      Size = 17
    end
    object FirmaIBQTEL3: TIBStringField
      FieldName = 'TEL3'
      Origin = 'FIRMA.TEL3'
      Size = 17
    end
    object FirmaIBQWEB: TIBStringField
      FieldName = 'WEB'
      Origin = 'FIRMA.WEB'
      Size = 50
    end
    object FirmaIBQMAIL: TIBStringField
      FieldName = 'MAIL'
      Origin = 'FIRMA.MAIL'
      Size = 50
    end
    object FirmaIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'FIRMA.KULLANKOD'
    end
    object FirmaIBQILCEKOD: TIntegerField
      FieldName = 'ILCEKOD'
      Origin = 'FIRMA.ILCEKOD'
    end
    object FirmaIBQSEHIRKOD: TIntegerField
      FieldName = 'SEHIRKOD'
      Origin = 'FIRMA.SEHIRKOD'
    end
  end
  object FirmaUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  FIRMAKOD,'
      '  LOGO,'
      '  FIRMAUNVAN,'
      '  YETKILI,'
      '  VERGIDAIRE,'
      '  VERGINO,'
      '  ADRES,'
      '  TELEFON,'
      '  FAKS,'
      '  SERINO,'
      '  YEDEKZAMANI,'
      '  YEDEKSAAT,'
      '  YEDEKYER,'
      '  LISANS,'
      '  CEKUYAR,'
      '  TEL2,'
      '  TEL3,'
      '  WEB,'
      '  MAIL,'
      '  KULLANKOD,'
      '  ILCEKOD,'
      '  SEHIRKOD'
      'from FIRMA '
      'where'
      '  FIRMAKOD = :FIRMAKOD')
    ModifySQL.Strings = (
      'update FIRMA'
      'set'
      '  FIRMAKOD = :FIRMAKOD,'
      '  LOGO = :LOGO,'
      '  FIRMAUNVAN = :FIRMAUNVAN,'
      '  YETKILI = :YETKILI,'
      '  VERGIDAIRE = :VERGIDAIRE,'
      '  VERGINO = :VERGINO,'
      '  ADRES = :ADRES,'
      '  TELEFON = :TELEFON,'
      '  FAKS = :FAKS,'
      '  SERINO = :SERINO,'
      '  YEDEKZAMANI = :YEDEKZAMANI,'
      '  YEDEKSAAT = :YEDEKSAAT,'
      '  YEDEKYER = :YEDEKYER,'
      '  LISANS = :LISANS,'
      '  CEKUYAR = :CEKUYAR,'
      '  TEL2 = :TEL2,'
      '  TEL3 = :TEL3,'
      '  WEB = :WEB,'
      '  MAIL = :MAIL,'
      '  KULLANKOD = :KULLANKOD,'
      '  ILCEKOD = :ILCEKOD,'
      '  SEHIRKOD = :SEHIRKOD'
      'where'
      '  FIRMAKOD = :OLD_FIRMAKOD')
    InsertSQL.Strings = (
      'insert into FIRMA'
      
        '  (FIRMAKOD, LOGO, FIRMAUNVAN, YETKILI, VERGIDAIRE, VERGINO, ADR' +
        'ES, TELEFON, '
      
        '   FAKS, SERINO, YEDEKZAMANI, YEDEKSAAT, YEDEKYER, LISANS, CEKUY' +
        'AR, TEL2, '
      '   TEL3, WEB, MAIL, KULLANKOD, ILCEKOD, SEHIRKOD)'
      'values'
      
        '  (:FIRMAKOD, :LOGO, :FIRMAUNVAN, :YETKILI, :VERGIDAIRE, :VERGIN' +
        'O, :ADRES, '
      
        '   :TELEFON, :FAKS, :SERINO, :YEDEKZAMANI, :YEDEKSAAT, :YEDEKYER' +
        ', :LISANS, '
      
        '   :CEKUYAR, :TEL2, :TEL3, :WEB, :MAIL, :KULLANKOD, :ILCEKOD, :S' +
        'EHIRKOD)')
    DeleteSQL.Strings = (
      'delete from FIRMA'
      'where'
      '  FIRMAKOD = :OLD_FIRMAKOD')
    Left = 424
    Top = 152
  end
  object FirmaDS: TDataSource
    DataSet = FirmaIBQ
    Left = 512
    Top = 152
  end
  object ParaBirSecIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = ParaBirSecIBQAfterDelete
    AfterPost = ParaBirSecIBQAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PARABIRIM')
    GeneratorField.Field = 'PARABIRKOD'
    GeneratorField.Generator = 'PARABIRIM'
    Left = 320
    Top = 216
    object ParaBirSecIBQPARABIRKOD: TIntegerField
      FieldName = 'PARABIRKOD'
      Origin = 'PARABIRIM.PARABIRKOD'
      Required = True
    end
    object ParaBirSecIBQPARABIRIMI: TIBStringField
      FieldName = 'PARABIRIMI'
      Origin = 'PARABIRIM.PARABIRIMI'
      Size = 25
    end
    object ParaBirSecIBQKISAADI: TIBStringField
      FieldName = 'KISAADI'
      Origin = 'PARABIRIM.KISAADI'
      Required = True
      Size = 10
    end
    object ParaBirSecIBQFORMAT: TIBStringField
      FieldName = 'FORMAT'
      Origin = 'PARABIRIM.FORMAT'
      Size = 15
    end
    object ParaBirSecIBQKUR: TFloatField
      FieldName = 'KUR'
      Origin = 'PARABIRIM.KUR'
      Required = True
    end
    object ParaBirSecIBQKURTIPI: TIBStringField
      FieldName = 'KURTIPI'
      Origin = 'PARABIRIM.KURTIPI'
      Size = 15
    end
  end
  object ParaBirSecDS: TDataSource
    DataSet = ParaBirSecIBQ
    Left = 424
    Top = 216
  end
  object DovizKurSecIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = DovizKurSecIBQAfterDelete
    AfterPost = DovizKurSecIBQAfterPost
    OnNewRecord = DovizKurIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = ParaBirSecDS
    SQL.Strings = (
      'select * from DOVIZKUR'
      'Where PARABIRKOD=PARABIRKOD')
    UpdateObject = DovizKurSecUSQL
    GeneratorField.Field = 'DOVKURKOD'
    GeneratorField.Generator = 'DOVIZKUR'
    Left = 321
    Top = 280
    object DovizKurSecIBQDOVKURKOD: TIntegerField
      FieldName = 'DOVKURKOD'
      Origin = 'DOVIZKUR.DOVKURKOD'
      Required = True
    end
    object DovizKurSecIBQTARIH: TDateTimeField
      FieldName = 'TARIH'
      Origin = 'DOVIZKUR.TARIH'
    end
    object DovizKurSecIBQPARABIRKOD: TIntegerField
      FieldName = 'PARABIRKOD'
      Origin = 'DOVIZKUR.PARABIRKOD'
    end
    object DovizKurSecIBQMBALIS: TFloatField
      FieldName = 'MBALIS'
      Origin = 'DOVIZKUR.MBALIS'
    end
    object DovizKurSecIBQMBSATIS: TFloatField
      FieldName = 'MBSATIS'
      Origin = 'DOVIZKUR.MBSATIS'
    end
    object DovizKurSecIBQEFEALIS: TFloatField
      FieldName = 'EFEALIS'
      Origin = 'DOVIZKUR.EFEALIS'
    end
    object DovizKurSecIBQEFESATIS: TFloatField
      FieldName = 'EFESATIS'
      Origin = 'DOVIZKUR.EFESATIS'
    end
    object DovizKurSecIBQSERALIS: TFloatField
      FieldName = 'SERALIS'
      Origin = 'DOVIZKUR.SERALIS'
    end
    object DovizKurSecIBQSERSATIS: TFloatField
      FieldName = 'SERSATIS'
      Origin = 'DOVIZKUR.SERSATIS'
    end
    object DovizKurSecIBQFIRMAKUR: TFloatField
      FieldName = 'FIRMAKUR'
      Origin = 'DOVIZKUR.FIRMAKUR'
    end
    object DovizKurSecIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'DOVIZKUR.SAAT'
    end
  end
  object DovizKurSecUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  DOVKURKOD,'
      '  TARIH,'
      '  PARABIRKOD,'
      '  MBALIS,'
      '  MBSATIS,'
      '  EFEALIS,'
      '  EFESATIS,'
      '  SERALIS,'
      '  SERSATIS,'
      '  FIRMAKUR,'
      '  SAAT'
      'from DOVIZKUR '
      'where'
      '  DOVKURKOD = :DOVKURKOD')
    ModifySQL.Strings = (
      'update DOVIZKUR'
      'set'
      '  DOVKURKOD = :DOVKURKOD,'
      '  TARIH = :TARIH,'
      '  PARABIRKOD = :PARABIRKOD,'
      '  MBALIS = :MBALIS,'
      '  MBSATIS = :MBSATIS,'
      '  EFEALIS = :EFEALIS,'
      '  EFESATIS = :EFESATIS,'
      '  SERALIS = :SERALIS,'
      '  SERSATIS = :SERSATIS,'
      '  FIRMAKUR = :FIRMAKUR,'
      '  SAAT = :SAAT'
      'where'
      '  DOVKURKOD = :OLD_DOVKURKOD')
    InsertSQL.Strings = (
      'insert into DOVIZKUR'
      
        '  (DOVKURKOD, TARIH, PARABIRKOD, MBALIS, MBSATIS, EFEALIS, EFESA' +
        'TIS, SERALIS, '
      '   SERSATIS, FIRMAKUR, SAAT)'
      'values'
      
        '  (:DOVKURKOD, :TARIH, :PARABIRKOD, :MBALIS, :MBSATIS, :EFEALIS,' +
        ' :EFESATIS, '
      '   :SERALIS, :SERSATIS, :FIRMAKUR, :SAAT)')
    DeleteSQL.Strings = (
      'delete from DOVIZKUR'
      'where'
      '  DOVKURKOD = :OLD_DOVKURKOD')
    Left = 417
    Top = 280
  end
  object DovizKurSecDS: TDataSource
    DataSet = DovizKurSecIBQ
    Left = 505
    Top = 280
  end
  object StokTipiIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = DovizKurSecIBQAfterDelete
    AfterPost = DovizKurSecIBQAfterPost
    OnNewRecord = DovizKurIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = ParaBirSecDS
    SQL.Strings = (
      'select *  from STOKTIPI')
    UpdateObject = StokTipiUSQL
    GeneratorField.Field = 'STOKTIPIKOD'
    GeneratorField.Generator = 'STOKTIPI'
    Left = 321
    Top = 336
    object StokTipiIBQSTOKTIPIKOD: TIntegerField
      FieldName = 'STOKTIPIKOD'
      Origin = 'STOKTIPI.STOKTIPIKOD'
      Required = True
    end
    object StokTipiIBQSTOKTIPI: TIBStringField
      FieldName = 'STOKTIPI'
      Origin = 'STOKTIPI.STOKTIPI'
      Size = 50
    end
  end
  object StokTipiUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  DOVKURKOD,'
      '  TARIH,'
      '  PARABIRKOD,'
      '  MBALIS,'
      '  MBSATIS,'
      '  EFEALIS,'
      '  EFESATIS,'
      '  SERALIS,'
      '  SERSATIS,'
      '  FIRMAKUR,'
      '  SAAT'
      'from DOVIZKUR '
      'where'
      '  DOVKURKOD = :DOVKURKOD')
    ModifySQL.Strings = (
      'update DOVIZKUR'
      'set'
      '  DOVKURKOD = :DOVKURKOD,'
      '  TARIH = :TARIH,'
      '  PARABIRKOD = :PARABIRKOD,'
      '  MBALIS = :MBALIS,'
      '  MBSATIS = :MBSATIS,'
      '  EFEALIS = :EFEALIS,'
      '  EFESATIS = :EFESATIS,'
      '  SERALIS = :SERALIS,'
      '  SERSATIS = :SERSATIS,'
      '  FIRMAKUR = :FIRMAKUR,'
      '  SAAT = :SAAT'
      'where'
      '  DOVKURKOD = :OLD_DOVKURKOD')
    InsertSQL.Strings = (
      'insert into DOVIZKUR'
      
        '  (DOVKURKOD, TARIH, PARABIRKOD, MBALIS, MBSATIS, EFEALIS, EFESA' +
        'TIS, SERALIS, '
      '   SERSATIS, FIRMAKUR, SAAT)'
      'values'
      
        '  (:DOVKURKOD, :TARIH, :PARABIRKOD, :MBALIS, :MBSATIS, :EFEALIS,' +
        ' :EFESATIS, '
      '   :SERALIS, :SERSATIS, :FIRMAKUR, :SAAT)')
    DeleteSQL.Strings = (
      'delete from DOVIZKUR'
      'where'
      '  DOVKURKOD = :OLD_DOVKURKOD')
    Left = 417
    Top = 336
  end
  object StokTipiDS: TDataSource
    DataSet = StokTipiIBQ
    Left = 505
    Top = 336
  end
  object BilgiIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = BilgiIBQAfterDelete
    AfterPost = BilgiIBQAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from BILGI')
    UpdateObject = BilgiUSQL
    GeneratorField.Field = 'BILGIKOD'
    GeneratorField.Generator = 'BILGI'
    Left = 320
    Top = 400
    object BilgiIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'BILGI.BILGIKOD'
      Required = True
    end
    object BilgiIBQUSTBILGI: TMemoField
      FieldName = 'USTBILGI'
      Origin = 'BILGI.USTBILGI'
      BlobType = ftMemo
      Size = 8
    end
    object BilgiIBQALTBILGI: TMemoField
      FieldName = 'ALTBILGI'
      Origin = 'BILGI.ALTBILGI'
      BlobType = ftMemo
      Size = 8
    end
    object BilgiIBQBILGINO: TIntegerField
      FieldName = 'BILGINO'
      Origin = 'BILGI.BILGINO'
    end
    object BilgiIBQBILGIADI: TIBStringField
      FieldName = 'BILGIADI'
      Origin = 'BILGI.BILGIADI'
      Size = 30
    end
  end
  object BilgiUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  BILGIKOD,'
      '  USTBILGI,'
      '  ALTBILGI,'
      '  BILGINO,'
      '  BILGIADI'
      'from BILGI '
      'where'
      '  BILGIKOD = :BILGIKOD')
    ModifySQL.Strings = (
      'update BILGI'
      'set'
      '  BILGIKOD = :BILGIKOD,'
      '  USTBILGI = :USTBILGI,'
      '  ALTBILGI = :ALTBILGI,'
      '  BILGINO = :BILGINO,'
      '  BILGIADI = :BILGIADI'
      'where'
      '  BILGIKOD = :OLD_BILGIKOD')
    InsertSQL.Strings = (
      'insert into BILGI'
      '  (BILGIKOD, USTBILGI, ALTBILGI, BILGINO, BILGIADI)'
      'values'
      '  (:BILGIKOD, :USTBILGI, :ALTBILGI, :BILGINO, :BILGIADI)')
    DeleteSQL.Strings = (
      'delete from BILGI'
      'where'
      '  BILGIKOD = :OLD_BILGIKOD')
    Left = 416
    Top = 400
  end
  object BilgiDS: TDataSource
    DataSet = BilgiIBQ
    Left = 504
    Top = 400
  end
end
