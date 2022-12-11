object DMKasa: TDMKasa
  OldCreateOrder = False
  Left = 203
  Top = 150
  Height = 510
  Width = 703
  object KasaIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = KasaIBQAfterDelete
    AfterPost = KasaIBQAfterPost
    OnCalcFields = KasaIBQCalcFields
    OnNewRecord = KasaIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from KASA')
    UpdateObject = KasaUSQL
    GeneratorField.Field = 'KASAKOD'
    GeneratorField.Generator = 'KASA'
    Left = 40
    Top = 8
    object KasaIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'KASA.KASAKOD'
      Required = True
    end
    object KasaIBQKASANO: TIntegerField
      DisplayLabel = 'Kasa No'
      FieldName = 'KASANO'
      Origin = 'KASA.KASANO'
    end
    object KasaIBQKASAADI: TIBStringField
      DisplayLabel = 'Kasa Ad'#305
      FieldName = 'KASAADI'
      Origin = 'KASA.KASAADI'
      Size = 25
    end
    object KasaIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'KASA.PARABIRIMKOD'
    end
    object KasaIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'KASA.ACIKLAMA'
      Size = 80
    end
    object KasaIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'Para Birimi'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'KASA.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object KasaIBQC_BAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldKind = fkInternalCalc
      FieldName = 'C_BAKIYE'
      Origin = 'KASA.C_BAKIYE'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object KasaIBQC_DURUM: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Durum'
      FieldKind = fkInternalCalc
      FieldName = 'C_DURUM'
      Origin = 'KASA.C_DURUM'
      ReadOnly = True
      Size = 5
    end
    object KasaIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldKind = fkCalculated
      FieldName = 'BAKIYE'
      DisplayFormat = '###,###.00'
      Calculated = True
    end
  end
  object KasaUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  KASAKOD,'
      '  KASANO,'
      '  KASAADI,'
      '  PARABIRIMKOD,'
      '  ACIKLAMA,'
      '  C_PARABIRIMI,'
      '  BAKIYE,'
      '  DURUM,'
      '  C_BAKIYE,'
      '  C_DURUM'
      'from KASA '
      'where'
      '  KASAKOD = :KASAKOD')
    ModifySQL.Strings = (
      'update KASA'
      'set'
      '  KASAKOD = :KASAKOD,'
      '  KASANO = :KASANO,'
      '  KASAADI = :KASAADI,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  BAKIYE = :BAKIYE,'
      '  DURUM = :DURUM'
      'where'
      '  KASAKOD = :OLD_KASAKOD')
    InsertSQL.Strings = (
      'insert into KASA'
      
        '  (KASAKOD, KASANO, KASAADI, PARABIRIMKOD, ACIKLAMA, BAKIYE, DUR' +
        'UM)'
      'values'
      
        '  (:KASAKOD, :KASANO, :KASAADI, :PARABIRIMKOD, :ACIKLAMA, :BAKIY' +
        'E, :DURUM)')
    DeleteSQL.Strings = (
      'delete from KASA'
      'where'
      '  KASAKOD = :OLD_KASAKOD')
    Left = 136
    Top = 8
  end
  object KasaDS: TDataSource
    DataSet = KasaIBQ
    Left = 224
    Top = 8
  end
  object KasaHareketIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = KasaHareketIBQAfterDelete
    AfterPost = KasaHareketIBQAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = KasaDS
    SQL.Strings = (
      'select * from KASAISLEM'
      'Where KASAKOD=:KASAKOD AND SISTEM<>2'
      'ORDER BY TARIH, ISLEMKOD ')
    UpdateObject = KasaHareketSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'KASAISLEM'
    Left = 40
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'KASAKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object KasaHareketIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'KASAISLEM.ISLEMKOD'
      Required = True
    end
    object KasaHareketIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'KASAISLEM.CARIKOD'
    end
    object KasaHareketIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'KASAISLEM.ISLEMTUR'
      Size = 40
    end
    object KasaHareketIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'KASAISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object KasaHareketIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'KASAISLEM.TARIH'
    end
    object KasaHareketIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'KASAISLEM.SAAT'
    end
    object KasaHareketIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'KASAISLEM.ACIKLAMA'
      Size = 80
    end
    object KasaHareketIBQTEDIYE: TFloatField
      DisplayLabel = 'Tediye'
      FieldName = 'TEDIYE'
      Origin = 'KASAISLEM.TEDIYE'
      DisplayFormat = '###,###'
    end
    object KasaHareketIBQTAHSILAT: TFloatField
      DisplayLabel = 'Tahsilat'
      FieldName = 'TAHSILAT'
      Origin = 'KASAISLEM.TAHSILAT'
      DisplayFormat = '###,###'
    end
    object KasaHareketIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'KASAISLEM.BAKIYE'
      DisplayFormat = '###,###'
    end
    object KasaHareketIBQDURUM: TIntegerField
      DisplayLabel = 'Durum'
      FieldName = 'DURUM'
      Origin = 'KASAISLEM.DURUM'
    end
    object KasaHareketIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'KASAISLEM.BANKAKOD'
    end
    object KasaHareketIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'KASAISLEM.CARINO'
    end
    object KasaHareketIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'KASAISLEM.GELGITKOD'
      Size = 80
    end
    object KasaHareketIBQEVRAKNO: TIntegerField
      DisplayLabel = 'Evrak No'
      FieldName = 'EVRAKNO'
      Origin = 'KASAISLEM.EVRAKNO'
    end
    object KasaHareketIBQBELGENO: TIntegerField
      DisplayLabel = 'Belge No'
      FieldName = 'BELGENO'
      Origin = 'KASAISLEM.BELGENO'
    end
    object KasaHareketIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'KASAISLEM.BAGLANTINO'
    end
    object KasaHareketIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'KASAISLEM.KASAKOD'
    end
    object KasaHareketIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'KASAISLEM.PARABIRIMKOD'
    end
    object KasaHareketIBQMAKBUZNO: TIntegerField
      DisplayLabel = 'Makbuz No'
      FieldName = 'MAKBUZNO'
      Origin = 'KASAISLEM.MAKBUZNO'
    end
    object KasaHareketIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'KASAISLEM.KULLANKOD'
    end
    object KasaHareketIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'KASAISLEM.PERSONELKOD'
    end
    object KasaHareketIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'KASAISLEM.SISTEM'
    end
    object KasaHareketIBQD_TEDIYE: TFloatField
      DisplayLabel = 'D. Tediye'
      FieldName = 'D_TEDIYE'
      Origin = 'KASAISLEM.D_TEDIYE'
      DisplayFormat = '###,###'
    end
    object KasaHareketIBQD_TAHSILAT: TFloatField
      DisplayLabel = 'D. Tahsilat'
      FieldName = 'D_TAHSILAT'
      Origin = 'KASAISLEM.D_TAHSILAT'
      DisplayFormat = '###,###'
    end
    object KasaHareketIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'KASAISLEM.CARIKURU'
      DisplayFormat = '###,###'
    end
    object KasaHareketIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'KASAISLEM.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object KasaHareketIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'KASAISLEM.CARIPARABIRIMKOD'
    end
    object KasaHareketIBQKASAISLEMNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'KASAISLEMNO'
      Origin = 'KASAISLEM.KASAISLEMNO'
    end
    object KasaHareketIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'KASAISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object KasaHareketIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'KASAISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object KasaHareketIBQC_KASAADI: TIBStringField
      DisplayLabel = 'Kasa'
      FieldKind = fkInternalCalc
      FieldName = 'C_KASAADI'
      Origin = 'KASAISLEM.C_KASAADI'
      ReadOnly = True
      Size = 25
    end
    object KasaHareketIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'KASAISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object KasaHareketIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G. G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'KASAISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object KasaHareketIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'KASAISLEM.KAPATMA'
    end
    object KasaHareketIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'KASAISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object KasaHareketIBQC_DURUM: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Durum'
      FieldKind = fkInternalCalc
      FieldName = 'C_DURUM'
      Origin = 'KASAISLEM.C_DURUM'
      ReadOnly = True
      Size = 5
    end
    object KasaHareketIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'KASAISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
  end
  object KasaHareketSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  TARIH,'
      '  SAAT,'
      '  ACIKLAMA,'
      '  TEDIYE,'
      '  TAHSILAT,'
      '  BAKIYE,'
      '  DURUM,'
      '  BANKAKOD,'
      '  CARINO,'
      '  GELGITKOD,'
      '  EVRAKNO,'
      '  BELGENO,'
      '  BAGLANTINO,'
      '  KASAKOD,'
      '  PARABIRIMKOD,'
      '  MAKBUZNO,'
      '  KULLANKOD,'
      '  PERSONELKOD,'
      '  D_TEDIYE,'
      '  D_TAHSILAT,'
      '  CARIKURU,'
      '  ISLEMKURU,'
      '  CARIPARABIRIMKOD,'
      '  KASAISLEMNO,'
      '  C_CARIPARABIRIM,'
      '  C_PARABIRIMI,'
      '  C_KASAADI,'
      '  C_CARIADI,'
      '  C_GGMERKEZI,'
      '  KAPATMA,'
      '  C_KULLANICIADI,'
      '  SISTEM,'
      '  C_DURUM'
      'from KASAISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update KASAISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  TARIH = :TARIH,'
      '  SAAT = :SAAT,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  TEDIYE = :TEDIYE,'
      '  TAHSILAT = :TAHSILAT,'
      '  BAKIYE = :BAKIYE,'
      '  DURUM = :DURUM,'
      '  BANKAKOD = :BANKAKOD,'
      '  CARINO = :CARINO,'
      '  GELGITKOD = :GELGITKOD,'
      '  EVRAKNO = :EVRAKNO,'
      '  BELGENO = :BELGENO,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  KASAKOD = :KASAKOD,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  KULLANKOD = :KULLANKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  D_TEDIYE = :D_TEDIYE,'
      '  D_TAHSILAT = :D_TAHSILAT,'
      '  CARIKURU = :CARIKURU,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  KASAISLEMNO = :KASAISLEMNO,'
      '  KAPATMA = :KAPATMA,'
      '  SISTEM = :SISTEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into KASAISLEM'
      
        '  (ISLEMKOD, CARIKOD, ISLEMTUR, TARIH, SAAT, ACIKLAMA, TEDIYE, T' +
        'AHSILAT, '
      
        '   BAKIYE, DURUM, BANKAKOD, CARINO, GELGITKOD, EVRAKNO, BELGENO,' +
        ' BAGLANTINO, '
      
        '   KASAKOD, PARABIRIMKOD, MAKBUZNO, KULLANKOD, PERSONELKOD, D_TE' +
        'DIYE, D_TAHSILAT, '
      
        '   CARIKURU, ISLEMKURU, CARIPARABIRIMKOD, KASAISLEMNO, KAPATMA, ' +
        'SISTEM)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :ISLEMTUR, :TARIH, :SAAT, :ACIKLAMA, :TE' +
        'DIYE, :TAHSILAT, '
      
        '   :BAKIYE, :DURUM, :BANKAKOD, :CARINO, :GELGITKOD, :EVRAKNO, :B' +
        'ELGENO, '
      
        '   :BAGLANTINO, :KASAKOD, :PARABIRIMKOD, :MAKBUZNO, :KULLANKOD, ' +
        ':PERSONELKOD, '
      
        '   :D_TEDIYE, :D_TAHSILAT, :CARIKURU, :ISLEMKURU, :CARIPARABIRIM' +
        'KOD, :KASAISLEMNO, '
      '   :KAPATMA, :SISTEM)')
    DeleteSQL.Strings = (
      'delete from KASAISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 136
    Top = 64
  end
  object KasaHareketDS: TDataSource
    DataSet = KasaHareketIBQ
    Left = 224
    Top = 64
  end
  object TahsilatIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = TahsilatIBQAfterDelete
    AfterPost = TahsilatIBQAfterPost
    OnNewRecord = TahsilatIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from KASAISLEM'
      'Where ISLEMTURKOD=4 and SISTEM<>2'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = TahsilatUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'KASAISLEM'
    Left = 40
    Top = 128
    object TahsilatIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'KASAISLEM.ISLEMKOD'
      Required = True
    end
    object TahsilatIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'KASAISLEM.CARIKOD'
    end
    object TahsilatIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'KASAISLEM.ISLEMTUR'
      Size = 40
    end
    object TahsilatIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'KASAISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object TahsilatIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'KASAISLEM.TARIH'
    end
    object TahsilatIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'KASAISLEM.SAAT'
    end
    object TahsilatIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'KASAISLEM.ACIKLAMA'
      Size = 80
    end
    object TahsilatIBQTEDIYE: TFloatField
      DisplayLabel = 'Tediye'
      FieldName = 'TEDIYE'
      Origin = 'KASAISLEM.TEDIYE'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TahsilatIBQTAHSILAT: TFloatField
      DisplayLabel = 'Tahsilat'
      FieldName = 'TAHSILAT'
      Origin = 'KASAISLEM.TAHSILAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TahsilatIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'KASAISLEM.BAKIYE'
      DisplayFormat = '###,###'
    end
    object TahsilatIBQDURUM: TIntegerField
      DisplayLabel = 'Durum'
      FieldName = 'DURUM'
      Origin = 'KASAISLEM.DURUM'
    end
    object TahsilatIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'KASAISLEM.BANKAKOD'
    end
    object TahsilatIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'KASAISLEM.CARINO'
    end
    object TahsilatIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'KASAISLEM.GELGITKOD'
      Size = 80
    end
    object TahsilatIBQEVRAKNO: TIntegerField
      DisplayLabel = 'Evrak No'
      FieldName = 'EVRAKNO'
      Origin = 'KASAISLEM.EVRAKNO'
    end
    object TahsilatIBQBELGENO: TIntegerField
      DisplayLabel = 'Belge No'
      FieldName = 'BELGENO'
      Origin = 'KASAISLEM.BELGENO'
    end
    object TahsilatIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'KASAISLEM.BAGLANTINO'
    end
    object TahsilatIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'KASAISLEM.KASAKOD'
    end
    object TahsilatIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'KASAISLEM.PARABIRIMKOD'
    end
    object TahsilatIBQMAKBUZNO: TIntegerField
      DisplayLabel = 'Makbuz No'
      FieldName = 'MAKBUZNO'
      Origin = 'KASAISLEM.MAKBUZNO'
    end
    object TahsilatIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'KASAISLEM.KULLANKOD'
    end
    object TahsilatIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'KASAISLEM.PERSONELKOD'
    end
    object TahsilatIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'KASAISLEM.SISTEM'
    end
    object TahsilatIBQD_TEDIYE: TFloatField
      DisplayLabel = 'D. Tediye'
      FieldName = 'D_TEDIYE'
      Origin = 'KASAISLEM.D_TEDIYE'
      DisplayFormat = '###,###'
    end
    object TahsilatIBQD_TAHSILAT: TFloatField
      DisplayLabel = 'D. Tahsilat'
      FieldName = 'D_TAHSILAT'
      Origin = 'KASAISLEM.D_TAHSILAT'
      DisplayFormat = '###,###'
    end
    object TahsilatIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'KASAISLEM.CARIKURU'
      DisplayFormat = '###,###'
    end
    object TahsilatIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'KASAISLEM.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object TahsilatIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'KASAISLEM.CARIPARABIRIMKOD'
    end
    object TahsilatIBQKASAISLEMNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'KASAISLEMNO'
      Origin = 'KASAISLEM.KASAISLEMNO'
    end
    object TahsilatIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'KASAISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object TahsilatIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'KASAISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object TahsilatIBQC_KASAADI: TIBStringField
      DisplayLabel = 'Kasa'
      FieldKind = fkInternalCalc
      FieldName = 'C_KASAADI'
      Origin = 'KASAISLEM.C_KASAADI'
      ReadOnly = True
      Size = 25
    end
    object TahsilatIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'KASAISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object TahsilatIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G. G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'KASAISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object TahsilatIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'KASAISLEM.KAPATMA'
    end
    object TahsilatIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'KASAISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object TahsilatIBQC_DURUM: TIBStringField
      DisplayLabel = 'Durum'
      FieldKind = fkInternalCalc
      FieldName = 'C_DURUM'
      Origin = 'KASAISLEM.C_DURUM'
      ReadOnly = True
      Size = 5
    end
    object TahsilatIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'KASAISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
  end
  object TahsilatUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  TARIH,'
      '  SAAT,'
      '  ACIKLAMA,'
      '  TEDIYE,'
      '  TAHSILAT,'
      '  BAKIYE,'
      '  DURUM,'
      '  BANKAKOD,'
      '  CARINO,'
      '  GELGITKOD,'
      '  EVRAKNO,'
      '  BELGENO,'
      '  BAGLANTINO,'
      '  KASAKOD,'
      '  PARABIRIMKOD,'
      '  MAKBUZNO,'
      '  KULLANKOD,'
      '  PERSONELKOD,'
      '  D_TEDIYE,'
      '  D_TAHSILAT,'
      '  CARIKURU,'
      '  ISLEMKURU,'
      '  CARIPARABIRIMKOD,'
      '  KASAISLEMNO,'
      '  C_CARIPARABIRIM,'
      '  C_PARABIRIMI,'
      '  C_KASAADI,'
      '  C_CARIADI,'
      '  C_GGMERKEZI,'
      '  KAPATMA,'
      '  C_KULLANICIADI,'
      '  SISTEM'
      'from KASAISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update KASAISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  TARIH = :TARIH,'
      '  SAAT = :SAAT,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  TEDIYE = :TEDIYE,'
      '  TAHSILAT = :TAHSILAT,'
      '  BAKIYE = :BAKIYE,'
      '  DURUM = :DURUM,'
      '  BANKAKOD = :BANKAKOD,'
      '  CARINO = :CARINO,'
      '  GELGITKOD = :GELGITKOD,'
      '  EVRAKNO = :EVRAKNO,'
      '  BELGENO = :BELGENO,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  KASAKOD = :KASAKOD,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  KULLANKOD = :KULLANKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  D_TEDIYE = :D_TEDIYE,'
      '  D_TAHSILAT = :D_TAHSILAT,'
      '  CARIKURU = :CARIKURU,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  KASAISLEMNO = :KASAISLEMNO,'
      '  KAPATMA = :KAPATMA,'
      '  SISTEM = :SISTEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into KASAISLEM'
      
        '  (ISLEMKOD, CARIKOD, ISLEMTUR, TARIH, SAAT, ACIKLAMA, TEDIYE, T' +
        'AHSILAT, '
      
        '   BAKIYE, DURUM, BANKAKOD, CARINO, GELGITKOD, EVRAKNO, BELGENO,' +
        ' BAGLANTINO, '
      
        '   KASAKOD, PARABIRIMKOD, MAKBUZNO, KULLANKOD, PERSONELKOD, D_TE' +
        'DIYE, D_TAHSILAT, '
      
        '   CARIKURU, ISLEMKURU, CARIPARABIRIMKOD, KASAISLEMNO, KAPATMA, ' +
        'SISTEM)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :ISLEMTUR, :TARIH, :SAAT, :ACIKLAMA, :TE' +
        'DIYE, :TAHSILAT, '
      
        '   :BAKIYE, :DURUM, :BANKAKOD, :CARINO, :GELGITKOD, :EVRAKNO, :B' +
        'ELGENO, '
      
        '   :BAGLANTINO, :KASAKOD, :PARABIRIMKOD, :MAKBUZNO, :KULLANKOD, ' +
        ':PERSONELKOD, '
      
        '   :D_TEDIYE, :D_TAHSILAT, :CARIKURU, :ISLEMKURU, :CARIPARABIRIM' +
        'KOD, :KASAISLEMNO, '
      '   :KAPATMA, :SISTEM)')
    DeleteSQL.Strings = (
      'delete from KASAISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 136
    Top = 128
  end
  object TahsilatDS: TDataSource
    DataSet = TahsilatIBQ
    Left = 224
    Top = 128
  end
  object OdemeIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = OdemeIBQAfterDelete
    AfterPost = OdemeIBQAfterPost
    OnNewRecord = OdemeIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from KASAISLEM'
      'Where ISLEMTURKOD=3 and SISTEM<>2'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = OdemeUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'KASAISLEM'
    Left = 40
    Top = 192
    object OdemeIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'KASAISLEM.ISLEMKOD'
      Required = True
    end
    object OdemeIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'KASAISLEM.CARIKOD'
    end
    object OdemeIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'KASAISLEM.ISLEMTUR'
      Size = 40
    end
    object OdemeIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'KASAISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object OdemeIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'KASAISLEM.TARIH'
    end
    object OdemeIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'KASAISLEM.SAAT'
    end
    object OdemeIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'KASAISLEM.ACIKLAMA'
      Size = 80
    end
    object OdemeIBQTEDIYE: TFloatField
      DisplayLabel = 'Tediye'
      FieldName = 'TEDIYE'
      Origin = 'KASAISLEM.TEDIYE'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object OdemeIBQTAHSILAT: TFloatField
      DisplayLabel = 'Tahsilat'
      FieldName = 'TAHSILAT'
      Origin = 'KASAISLEM.TAHSILAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object OdemeIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'KASAISLEM.BAKIYE'
      DisplayFormat = '###,###'
    end
    object OdemeIBQDURUM: TIntegerField
      DisplayLabel = 'Durum'
      FieldName = 'DURUM'
      Origin = 'KASAISLEM.DURUM'
    end
    object OdemeIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'KASAISLEM.BANKAKOD'
    end
    object OdemeIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'KASAISLEM.CARINO'
    end
    object OdemeIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'KASAISLEM.GELGITKOD'
      Size = 80
    end
    object OdemeIBQEVRAKNO: TIntegerField
      DisplayLabel = 'Evrak No'
      FieldName = 'EVRAKNO'
      Origin = 'KASAISLEM.EVRAKNO'
    end
    object OdemeIBQBELGENO: TIntegerField
      DisplayLabel = 'Belge No'
      FieldName = 'BELGENO'
      Origin = 'KASAISLEM.BELGENO'
    end
    object OdemeIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'KASAISLEM.BAGLANTINO'
    end
    object OdemeIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'KASAISLEM.KASAKOD'
    end
    object OdemeIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'KASAISLEM.PARABIRIMKOD'
    end
    object OdemeIBQMAKBUZNO: TIntegerField
      DisplayLabel = 'Makbuz No'
      FieldName = 'MAKBUZNO'
      Origin = 'KASAISLEM.MAKBUZNO'
    end
    object OdemeIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'KASAISLEM.KULLANKOD'
    end
    object OdemeIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'KASAISLEM.PERSONELKOD'
    end
    object OdemeIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'KASAISLEM.SISTEM'
    end
    object OdemeIBQD_TEDIYE: TFloatField
      DisplayLabel = 'D. Tediye'
      FieldName = 'D_TEDIYE'
      Origin = 'KASAISLEM.D_TEDIYE'
      DisplayFormat = '###,###'
    end
    object OdemeIBQD_TAHSILAT: TFloatField
      DisplayLabel = 'D. Tahsilat'
      FieldName = 'D_TAHSILAT'
      Origin = 'KASAISLEM.D_TAHSILAT'
      DisplayFormat = '###,###'
    end
    object OdemeIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'KASAISLEM.CARIKURU'
      DisplayFormat = '###,###'
    end
    object OdemeIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'KASAISLEM.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object OdemeIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'KASAISLEM.CARIPARABIRIMKOD'
    end
    object OdemeIBQKASAISLEMNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'KASAISLEMNO'
      Origin = 'KASAISLEM.KASAISLEMNO'
    end
    object OdemeIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'KASAISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object OdemeIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'KASAISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object OdemeIBQC_KASAADI: TIBStringField
      DisplayLabel = 'Kasa'
      FieldKind = fkInternalCalc
      FieldName = 'C_KASAADI'
      Origin = 'KASAISLEM.C_KASAADI'
      ReadOnly = True
      Size = 25
    end
    object OdemeIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'KASAISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object OdemeIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G. G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'KASAISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object OdemeIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'KASAISLEM.KAPATMA'
    end
    object OdemeIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'KASAISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object OdemeIBQC_DURUM: TIBStringField
      DisplayLabel = 'Durum'
      FieldKind = fkInternalCalc
      FieldName = 'C_DURUM'
      Origin = 'KASAISLEM.C_DURUM'
      ReadOnly = True
      Size = 5
    end
    object OdemeIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'KASAISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
  end
  object OdemeUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  TARIH,'
      '  SAAT,'
      '  ACIKLAMA,'
      '  TEDIYE,'
      '  TAHSILAT,'
      '  BAKIYE,'
      '  DURUM,'
      '  BANKAKOD,'
      '  CARINO,'
      '  GELGITKOD,'
      '  EVRAKNO,'
      '  BELGENO,'
      '  BAGLANTINO,'
      '  KASAKOD,'
      '  PARABIRIMKOD,'
      '  MAKBUZNO,'
      '  KULLANKOD,'
      '  PERSONELKOD,'
      '  D_TEDIYE,'
      '  D_TAHSILAT,'
      '  CARIKURU,'
      '  ISLEMKURU,'
      '  CARIPARABIRIMKOD,'
      '  KASAISLEMNO,'
      '  C_CARIPARABIRIM,'
      '  C_PARABIRIMI,'
      '  C_KASAADI,'
      '  C_CARIADI,'
      '  C_GGMERKEZI,'
      '  KAPATMA,'
      '  C_KULLANICIADI,'
      '  SISTEM'
      'from KASAISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update KASAISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  TARIH = :TARIH,'
      '  SAAT = :SAAT,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  TEDIYE = :TEDIYE,'
      '  TAHSILAT = :TAHSILAT,'
      '  BAKIYE = :BAKIYE,'
      '  DURUM = :DURUM,'
      '  BANKAKOD = :BANKAKOD,'
      '  CARINO = :CARINO,'
      '  GELGITKOD = :GELGITKOD,'
      '  EVRAKNO = :EVRAKNO,'
      '  BELGENO = :BELGENO,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  KASAKOD = :KASAKOD,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  KULLANKOD = :KULLANKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  D_TEDIYE = :D_TEDIYE,'
      '  D_TAHSILAT = :D_TAHSILAT,'
      '  CARIKURU = :CARIKURU,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  KASAISLEMNO = :KASAISLEMNO,'
      '  KAPATMA = :KAPATMA,'
      '  SISTEM = :SISTEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into KASAISLEM'
      
        '  (ISLEMKOD, CARIKOD, ISLEMTUR, TARIH, SAAT, ACIKLAMA, TEDIYE, T' +
        'AHSILAT, '
      
        '   BAKIYE, DURUM, BANKAKOD, CARINO, GELGITKOD, EVRAKNO, BELGENO,' +
        ' BAGLANTINO, '
      
        '   KASAKOD, PARABIRIMKOD, MAKBUZNO, KULLANKOD, PERSONELKOD, D_TE' +
        'DIYE, D_TAHSILAT, '
      
        '   CARIKURU, ISLEMKURU, CARIPARABIRIMKOD, KASAISLEMNO, KAPATMA, ' +
        'SISTEM)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :ISLEMTUR, :TARIH, :SAAT, :ACIKLAMA, :TE' +
        'DIYE, :TAHSILAT, '
      
        '   :BAKIYE, :DURUM, :BANKAKOD, :CARINO, :GELGITKOD, :EVRAKNO, :B' +
        'ELGENO, '
      
        '   :BAGLANTINO, :KASAKOD, :PARABIRIMKOD, :MAKBUZNO, :KULLANKOD, ' +
        ':PERSONELKOD, '
      
        '   :D_TEDIYE, :D_TAHSILAT, :CARIKURU, :ISLEMKURU, :CARIPARABIRIM' +
        'KOD, :KASAISLEMNO, '
      '   :KAPATMA, :SISTEM)')
    DeleteSQL.Strings = (
      'delete from KASAISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 136
    Top = 192
  end
  object OdemeDS: TDataSource
    DataSet = OdemeIBQ
    Left = 224
    Top = 192
  end
  object KasaVirmanGonIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = KasaVirmanGonIBQAfterDelete
    AfterPost = KasaVirmanGonIBQAfterPost
    OnNewRecord = KasaVirmanGonIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from KASAISLEM'
      'Where ISLEMTURKOD=25 and SISTEM<>2 and VIRKASAKOD>0'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = KV_GONUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'KASAISLEM'
    Left = 40
    Top = 256
    object KasaVirmanGonIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'KASAISLEM.ISLEMKOD'
      Required = True
    end
    object KasaVirmanGonIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'KASAISLEM.CARIKOD'
    end
    object KasaVirmanGonIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'KASAISLEM.ISLEMTUR'
      Size = 40
    end
    object KasaVirmanGonIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'KASAISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object KasaVirmanGonIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'KASAISLEM.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object KasaVirmanGonIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'KASAISLEM.SAAT'
    end
    object KasaVirmanGonIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'KASAISLEM.ACIKLAMA'
      Size = 80
    end
    object KasaVirmanGonIBQTEDIYE: TFloatField
      FieldName = 'TEDIYE'
      Origin = 'KASAISLEM.TEDIYE'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object KasaVirmanGonIBQTAHSILAT: TFloatField
      FieldName = 'TAHSILAT'
      Origin = 'KASAISLEM.TAHSILAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object KasaVirmanGonIBQBAKIYE: TFloatField
      FieldName = 'BAKIYE'
      Origin = 'KASAISLEM.BAKIYE'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object KasaVirmanGonIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'KASAISLEM.DURUM'
    end
    object KasaVirmanGonIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'KASAISLEM.BANKAKOD'
    end
    object KasaVirmanGonIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'KASAISLEM.CARINO'
    end
    object KasaVirmanGonIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'KASAISLEM.GELGITKOD'
      Size = 80
    end
    object KasaVirmanGonIBQEVRAKNO: TIntegerField
      FieldName = 'EVRAKNO'
      Origin = 'KASAISLEM.EVRAKNO'
    end
    object KasaVirmanGonIBQBELGENO: TIntegerField
      FieldName = 'BELGENO'
      Origin = 'KASAISLEM.BELGENO'
    end
    object KasaVirmanGonIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'KASAISLEM.BAGLANTINO'
    end
    object KasaVirmanGonIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'KASAISLEM.KASAKOD'
    end
    object KasaVirmanGonIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'KASAISLEM.PARABIRIMKOD'
    end
    object KasaVirmanGonIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'KASAISLEM.MAKBUZNO'
    end
    object KasaVirmanGonIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'KASAISLEM.KULLANKOD'
    end
    object KasaVirmanGonIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'KASAISLEM.PERSONELKOD'
    end
    object KasaVirmanGonIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'KASAISLEM.SISTEM'
    end
    object KasaVirmanGonIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'KASAISLEM.D_TEDIYE'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object KasaVirmanGonIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'KASAISLEM.D_TAHSILAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object KasaVirmanGonIBQCARIKURU: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'KASAISLEM.CARIKURU'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object KasaVirmanGonIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'KASAISLEM.ISLEMKURU'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object KasaVirmanGonIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'KASAISLEM.CARIPARABIRIMKOD'
    end
    object KasaVirmanGonIBQKASAISLEMNO: TIntegerField
      FieldName = 'KASAISLEMNO'
      Origin = 'KASAISLEM.KASAISLEMNO'
    end
    object KasaVirmanGonIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'KASAISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object KasaVirmanGonIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'KASAISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object KasaVirmanGonIBQC_KASAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KASAADI'
      Origin = 'KASAISLEM.C_KASAADI'
      ReadOnly = True
      Size = 25
    end
    object KasaVirmanGonIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'KASAISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object KasaVirmanGonIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'KASAISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object KasaVirmanGonIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'KASAISLEM.KAPATMA'
    end
    object KasaVirmanGonIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'KASAISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object KasaVirmanGonIBQC_DURUM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_DURUM'
      Origin = 'KASAISLEM.C_DURUM'
      ReadOnly = True
      Size = 5
    end
    object KasaVirmanGonIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'KASAISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object KasaVirmanGonIBQVIRKASAKOD: TIntegerField
      FieldName = 'VIRKASAKOD'
      Origin = 'KASAISLEM.VIRKASAKOD'
    end
    object KasaVirmanGonIBQVIRPARABIRKOD: TIntegerField
      FieldName = 'VIRPARABIRKOD'
      Origin = 'KASAISLEM.VIRPARABIRKOD'
    end
    object KasaVirmanGonIBQVIRKURU: TFloatField
      FieldName = 'VIRKURU'
      Origin = 'KASAISLEM.VIRKURU'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object KasaVirmanGonIBQC_VIRMAN: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_VIRMAN'
      Origin = 'KASAISLEM.C_VIRMAN'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object KasaVirmanGonIBQC_ALANKASA: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_ALANKASA'
      Origin = 'KASAISLEM.C_ALANKASA'
      ReadOnly = True
      Size = 25
    end
    object KasaVirmanGonIBQC_ALANKASA_PB: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_ALANKASA_PB'
      Origin = 'KASAISLEM.C_ALANKASA_PB'
      ReadOnly = True
      Size = 10
    end
  end
  object KV_GONUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  TARIH,'
      '  SAAT,'
      '  ACIKLAMA,'
      '  TEDIYE,'
      '  TAHSILAT,'
      '  BAKIYE,'
      '  DURUM,'
      '  BANKAKOD,'
      '  CARINO,'
      '  GELGITKOD,'
      '  EVRAKNO,'
      '  BELGENO,'
      '  BAGLANTINO,'
      '  KASAKOD,'
      '  PARABIRIMKOD,'
      '  MAKBUZNO,'
      '  KULLANKOD,'
      '  PERSONELKOD,'
      '  D_TEDIYE,'
      '  D_TAHSILAT,'
      '  CARIKURU,'
      '  ISLEMKURU,'
      '  CARIPARABIRIMKOD,'
      '  KASAISLEMNO,'
      '  C_CARIPARABIRIM,'
      '  C_PARABIRIMI,'
      '  C_KASAADI,'
      '  C_CARIADI,'
      '  C_GGMERKEZI,'
      '  KAPATMA,'
      '  C_KULLANICIADI,'
      '  SISTEM,'
      '  C_DURUM,'
      '  C_PERSONEL,'
      '  VIRKASAKOD,'
      '  VIRPARABIRKOD,'
      '  VIRKURU,'
      '  C_VIRMAN,'
      '  C_ALANKASA,'
      '  C_ALANKASA_PB'
      'from KASAISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update KASAISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  TARIH = :TARIH,'
      '  SAAT = :SAAT,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  TEDIYE = :TEDIYE,'
      '  TAHSILAT = :TAHSILAT,'
      '  BAKIYE = :BAKIYE,'
      '  DURUM = :DURUM,'
      '  BANKAKOD = :BANKAKOD,'
      '  CARINO = :CARINO,'
      '  GELGITKOD = :GELGITKOD,'
      '  EVRAKNO = :EVRAKNO,'
      '  BELGENO = :BELGENO,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  KASAKOD = :KASAKOD,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  KULLANKOD = :KULLANKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  D_TEDIYE = :D_TEDIYE,'
      '  D_TAHSILAT = :D_TAHSILAT,'
      '  CARIKURU = :CARIKURU,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  KASAISLEMNO = :KASAISLEMNO,'
      '  KAPATMA = :KAPATMA,'
      '  SISTEM = :SISTEM,'
      '  VIRKASAKOD = :VIRKASAKOD,'
      '  VIRPARABIRKOD = :VIRPARABIRKOD,'
      '  VIRKURU = :VIRKURU'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into KASAISLEM'
      
        '  (ISLEMKOD, CARIKOD, ISLEMTUR, TARIH, SAAT, ACIKLAMA, TEDIYE, T' +
        'AHSILAT, '
      
        '   BAKIYE, DURUM, BANKAKOD, CARINO, GELGITKOD, EVRAKNO, BELGENO,' +
        ' BAGLANTINO, '
      
        '   KASAKOD, PARABIRIMKOD, MAKBUZNO, KULLANKOD, PERSONELKOD, D_TE' +
        'DIYE, D_TAHSILAT, '
      
        '   CARIKURU, ISLEMKURU, CARIPARABIRIMKOD, KASAISLEMNO, KAPATMA, ' +
        'SISTEM, '
      '   VIRKASAKOD, VIRPARABIRKOD, VIRKURU)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :ISLEMTUR, :TARIH, :SAAT, :ACIKLAMA, :TE' +
        'DIYE, :TAHSILAT, '
      
        '   :BAKIYE, :DURUM, :BANKAKOD, :CARINO, :GELGITKOD, :EVRAKNO, :B' +
        'ELGENO, '
      
        '   :BAGLANTINO, :KASAKOD, :PARABIRIMKOD, :MAKBUZNO, :KULLANKOD, ' +
        ':PERSONELKOD, '
      
        '   :D_TEDIYE, :D_TAHSILAT, :CARIKURU, :ISLEMKURU, :CARIPARABIRIM' +
        'KOD, :KASAISLEMNO, '
      '   :KAPATMA, :SISTEM, :VIRKASAKOD, :VIRPARABIRKOD, :VIRKURU)')
    DeleteSQL.Strings = (
      'delete from KASAISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 136
    Top = 256
  end
  object KV_GON_DS: TDataSource
    DataSet = KasaVirmanGonIBQ
    Left = 224
    Top = 256
  end
  object KasaDevirIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = KasaDevirIBQAfterDelete
    AfterPost = KasaDevirIBQAfterPost
    OnNewRecord = KasaDevirIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from KASAISLEM'
      'Where ISLEMTURKOD=26 and SISTEM<>2'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = KasaDevirUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'KASAISLEM'
    Left = 40
    Top = 400
    object KasaDevirIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'KASAISLEM.ISLEMKOD'
      Required = True
    end
    object KasaDevirIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'KASAISLEM.CARIKOD'
    end
    object KasaDevirIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'KASAISLEM.ISLEMTUR'
      Size = 40
    end
    object KasaDevirIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'KASAISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object KasaDevirIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'KASAISLEM.TARIH'
    end
    object KasaDevirIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'KASAISLEM.SAAT'
    end
    object KasaDevirIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'KASAISLEM.ACIKLAMA'
      Size = 80
    end
    object KasaDevirIBQTEDIYE: TFloatField
      DisplayLabel = 'Tediye'
      FieldName = 'TEDIYE'
      Origin = 'KASAISLEM.TEDIYE'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object KasaDevirIBQTAHSILAT: TFloatField
      DisplayLabel = 'Tahsilat'
      FieldName = 'TAHSILAT'
      Origin = 'KASAISLEM.TAHSILAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object KasaDevirIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'KASAISLEM.BAKIYE'
      DisplayFormat = '###,###'
    end
    object KasaDevirIBQDURUM: TIntegerField
      DisplayLabel = 'Durum'
      FieldName = 'DURUM'
      Origin = 'KASAISLEM.DURUM'
    end
    object KasaDevirIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'KASAISLEM.BANKAKOD'
    end
    object KasaDevirIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'KASAISLEM.CARINO'
    end
    object KasaDevirIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'KASAISLEM.GELGITKOD'
      Size = 80
    end
    object KasaDevirIBQEVRAKNO: TIntegerField
      DisplayLabel = 'Evrak No'
      FieldName = 'EVRAKNO'
      Origin = 'KASAISLEM.EVRAKNO'
    end
    object KasaDevirIBQBELGENO: TIntegerField
      DisplayLabel = 'Belge No'
      FieldName = 'BELGENO'
      Origin = 'KASAISLEM.BELGENO'
    end
    object KasaDevirIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'KASAISLEM.BAGLANTINO'
    end
    object KasaDevirIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'KASAISLEM.KASAKOD'
    end
    object KasaDevirIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'KASAISLEM.PARABIRIMKOD'
    end
    object KasaDevirIBQMAKBUZNO: TIntegerField
      DisplayLabel = 'Makbuz No'
      FieldName = 'MAKBUZNO'
      Origin = 'KASAISLEM.MAKBUZNO'
    end
    object KasaDevirIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'KASAISLEM.KULLANKOD'
    end
    object KasaDevirIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'KASAISLEM.PERSONELKOD'
    end
    object KasaDevirIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'KASAISLEM.SISTEM'
    end
    object KasaDevirIBQD_TEDIYE: TFloatField
      DisplayLabel = 'D. Tediye'
      FieldName = 'D_TEDIYE'
      Origin = 'KASAISLEM.D_TEDIYE'
      DisplayFormat = '###,###'
    end
    object KasaDevirIBQD_TAHSILAT: TFloatField
      DisplayLabel = 'D. Tahsilat'
      FieldName = 'D_TAHSILAT'
      Origin = 'KASAISLEM.D_TAHSILAT'
      DisplayFormat = '###,###'
    end
    object KasaDevirIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'KASAISLEM.CARIKURU'
      DisplayFormat = '###,###'
    end
    object KasaDevirIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'KASAISLEM.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object KasaDevirIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'KASAISLEM.CARIPARABIRIMKOD'
    end
    object KasaDevirIBQKASAISLEMNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'KASAISLEMNO'
      Origin = 'KASAISLEM.KASAISLEMNO'
    end
    object KasaDevirIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'KASAISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object KasaDevirIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'KASAISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object KasaDevirIBQC_KASAADI: TIBStringField
      DisplayLabel = 'Kasa'
      FieldKind = fkInternalCalc
      FieldName = 'C_KASAADI'
      Origin = 'KASAISLEM.C_KASAADI'
      ReadOnly = True
      Size = 25
    end
    object KasaDevirIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'KASAISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object KasaDevirIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G. G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'KASAISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object KasaDevirIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'KASAISLEM.KAPATMA'
    end
    object KasaDevirIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'KASAISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object KasaDevirIBQC_DURUM: TIBStringField
      DisplayLabel = 'Durum'
      FieldKind = fkInternalCalc
      FieldName = 'C_DURUM'
      Origin = 'KASAISLEM.C_DURUM'
      ReadOnly = True
      Size = 5
    end
    object KasaDevirIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'KASAISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
  end
  object KasaDevirUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  TARIH,'
      '  SAAT,'
      '  ACIKLAMA,'
      '  TEDIYE,'
      '  TAHSILAT,'
      '  BAKIYE,'
      '  DURUM,'
      '  BANKAKOD,'
      '  CARINO,'
      '  GELGITKOD,'
      '  EVRAKNO,'
      '  BELGENO,'
      '  BAGLANTINO,'
      '  KASAKOD,'
      '  PARABIRIMKOD,'
      '  MAKBUZNO,'
      '  KULLANKOD,'
      '  PERSONELKOD,'
      '  SISTEM,'
      '  D_TEDIYE,'
      '  D_TAHSILAT,'
      '  CARIKURU,'
      '  ISLEMKURU,'
      '  CARIPARABIRIMKOD,'
      '  KASAISLEMNO,'
      '  C_CARIPARABIRIM,'
      '  C_PARABIRIMI,'
      '  C_KASAADI,'
      '  C_CARIADI,'
      '  C_GGMERKEZI,'
      '  KAPATMA'
      'from KASAISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update KASAISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  TARIH = :TARIH,'
      '  SAAT = :SAAT,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  TEDIYE = :TEDIYE,'
      '  TAHSILAT = :TAHSILAT,'
      '  BAKIYE = :BAKIYE,'
      '  DURUM = :DURUM,'
      '  BANKAKOD = :BANKAKOD,'
      '  CARINO = :CARINO,'
      '  GELGITKOD = :GELGITKOD,'
      '  EVRAKNO = :EVRAKNO,'
      '  BELGENO = :BELGENO,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  KASAKOD = :KASAKOD,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  KULLANKOD = :KULLANKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  SISTEM = :SISTEM,'
      '  D_TEDIYE = :D_TEDIYE,'
      '  D_TAHSILAT = :D_TAHSILAT,'
      '  CARIKURU = :CARIKURU,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  KASAISLEMNO = :KASAISLEMNO,'
      '  KAPATMA = :KAPATMA'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into KASAISLEM'
      
        '  (ISLEMKOD, CARIKOD, ISLEMTUR, TARIH, SAAT, ACIKLAMA, TEDIYE, T' +
        'AHSILAT, '
      
        '   BAKIYE, DURUM, BANKAKOD, CARINO, GELGITKOD, EVRAKNO, BELGENO,' +
        ' BAGLANTINO, '
      
        '   KASAKOD, PARABIRIMKOD, MAKBUZNO, KULLANKOD, PERSONELKOD, SIST' +
        'EM, D_TEDIYE, '
      
        '   D_TAHSILAT, CARIKURU, ISLEMKURU, CARIPARABIRIMKOD, KASAISLEMN' +
        'O, KAPATMA)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :ISLEMTUR, :TARIH, :SAAT, :ACIKLAMA, :TE' +
        'DIYE, :TAHSILAT, '
      
        '   :BAKIYE, :DURUM, :BANKAKOD, :CARINO, :GELGITKOD, :EVRAKNO, :B' +
        'ELGENO, '
      
        '   :BAGLANTINO, :KASAKOD, :PARABIRIMKOD, :MAKBUZNO, :KULLANKOD, ' +
        ':PERSONELKOD, '
      
        '   :SISTEM, :D_TEDIYE, :D_TAHSILAT, :CARIKURU, :ISLEMKURU, :CARI' +
        'PARABIRIMKOD, '
      '   :KASAISLEMNO, :KAPATMA)')
    DeleteSQL.Strings = (
      'delete from KASAISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 136
    Top = 400
  end
  object KasaDevirDS: TDataSource
    DataSet = KasaDevirIBQ
    Left = 224
    Top = 400
  end
  object AktifKasaIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from KASA')
    GeneratorField.Field = 'KASAKOD'
    GeneratorField.Generator = 'KASA'
    Left = 336
    Top = 8
    object AktifKasaIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'KASA.KASAKOD'
      Required = True
    end
    object AktifKasaIBQKASANO: TIntegerField
      FieldName = 'KASANO'
      Origin = 'KASA.KASANO'
    end
    object AktifKasaIBQKASAADI: TIBStringField
      FieldName = 'KASAADI'
      Origin = 'KASA.KASAADI'
      Size = 25
    end
    object AktifKasaIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'KASA.PARABIRIMKOD'
    end
    object AktifKasaIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'KASA.ACIKLAMA'
      Size = 80
    end
    object AktifKasaIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'KASA.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object AktifKasaIBQC_BAKIYE: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_BAKIYE'
      Origin = 'KASA.C_BAKIYE'
      ReadOnly = True
    end
    object AktifKasaIBQC_DURUM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_DURUM'
      Origin = 'KASA.C_DURUM'
      ReadOnly = True
      Size = 5
    end
  end
  object AktifKasaDS: TDataSource
    DataSet = AktifKasaIBQ
    Left = 408
    Top = 8
  end
  object KasaislemlistIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from KASAISLEM'
      'Where  SISTEM<>2'
      'ORDER BY TARIH, ISLEMKOD ')
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'KASAISLEM'
    Left = 336
    Top = 72
    object KasaislemlistIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'KASAISLEM.ISLEMKOD'
      Required = True
    end
    object KasaislemlistIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'KASAISLEM.CARIKOD'
    end
    object KasaislemlistIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'KASAISLEM.ISLEMTUR'
      Size = 40
    end
    object KasaislemlistIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'KASAISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object KasaislemlistIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'KASAISLEM.TARIH'
    end
    object KasaislemlistIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'KASAISLEM.SAAT'
    end
    object KasaislemlistIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'KASAISLEM.ACIKLAMA'
      Size = 80
    end
    object KasaislemlistIBQTEDIYE: TFloatField
      DisplayLabel = 'Tediye'
      FieldName = 'TEDIYE'
      Origin = 'KASAISLEM.TEDIYE'
      DisplayFormat = '###,###'
    end
    object KasaislemlistIBQTAHSILAT: TFloatField
      DisplayLabel = 'Tahsilat'
      FieldName = 'TAHSILAT'
      Origin = 'KASAISLEM.TAHSILAT'
      DisplayFormat = '###,###'
    end
    object KasaislemlistIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'KASAISLEM.BANKAKOD'
    end
    object KasaislemlistIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'KASAISLEM.CARINO'
    end
    object KasaislemlistIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'KASAISLEM.GELGITKOD'
      Size = 80
    end
    object KasaislemlistIBQEVRAKNO: TIntegerField
      DisplayLabel = 'Evrak No'
      FieldName = 'EVRAKNO'
      Origin = 'KASAISLEM.EVRAKNO'
    end
    object KasaislemlistIBQBELGENO: TIntegerField
      DisplayLabel = 'Belge No'
      FieldName = 'BELGENO'
      Origin = 'KASAISLEM.BELGENO'
    end
    object KasaislemlistIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'KASAISLEM.BAGLANTINO'
    end
    object KasaislemlistIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'KASAISLEM.KASAKOD'
    end
    object KasaislemlistIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'KASAISLEM.PARABIRIMKOD'
    end
    object KasaislemlistIBQMAKBUZNO: TIntegerField
      DisplayLabel = 'Makbuz No'
      FieldName = 'MAKBUZNO'
      Origin = 'KASAISLEM.MAKBUZNO'
    end
    object KasaislemlistIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'KASAISLEM.KULLANKOD'
    end
    object KasaislemlistIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'KASAISLEM.PERSONELKOD'
    end
    object KasaislemlistIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'KASAISLEM.SISTEM'
    end
    object KasaislemlistIBQD_TEDIYE: TFloatField
      DisplayLabel = 'D. Tediye'
      FieldName = 'D_TEDIYE'
      Origin = 'KASAISLEM.D_TEDIYE'
      DisplayFormat = '###,###'
    end
    object KasaislemlistIBQD_TAHSILAT: TFloatField
      DisplayLabel = 'D. Tahsilat'
      FieldName = 'D_TAHSILAT'
      Origin = 'KASAISLEM.D_TAHSILAT'
      DisplayFormat = '###,###'
    end
    object KasaislemlistIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'KASAISLEM.CARIKURU'
      DisplayFormat = '###,###'
    end
    object KasaislemlistIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'KASAISLEM.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object KasaislemlistIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'KASAISLEM.CARIPARABIRIMKOD'
    end
    object KasaislemlistIBQKASAISLEMNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'KASAISLEMNO'
      Origin = 'KASAISLEM.KASAISLEMNO'
    end
    object KasaislemlistIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'KASAISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object KasaislemlistIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'KASAISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object KasaislemlistIBQC_KASAADI: TIBStringField
      DisplayLabel = 'Kasa'
      FieldKind = fkInternalCalc
      FieldName = 'C_KASAADI'
      Origin = 'KASAISLEM.C_KASAADI'
      ReadOnly = True
      Size = 25
    end
    object KasaislemlistIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'KASAISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object KasaislemlistIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G. G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'KASAISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object KasaislemlistIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'KASAISLEM.KAPATMA'
    end
    object KasaislemlistIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'KASAISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object KasaislemlistIBQC_DURUM: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Durum'
      FieldKind = fkInternalCalc
      FieldName = 'C_DURUM'
      Origin = 'KASAISLEM.C_DURUM'
      ReadOnly = True
      Size = 5
    end
    object KasaislemlistIBQBAKIYE: TFloatField
      FieldName = 'BAKIYE'
      Origin = 'KASAISLEM.BAKIYE'
    end
    object KasaislemlistIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'KASAISLEM.DURUM'
    end
    object KasaislemlistIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'KASAISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
  end
  object KasaislemlistDS: TDataSource
    DataSet = KasaislemlistIBQ
    Left = 408
    Top = 72
  end
  object DovizASIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = DovizASIBQAfterPost
    OnNewRecord = DovizASIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from KASAISLEM'
      'Where ISLEMTURKOD=58 and SISTEM<>2 and VIRKASAKOD>0'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = DovizASSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'KASAISLEM'
    Left = 40
    Top = 320
    object DovizASIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'KASAISLEM.ISLEMKOD'
      Required = True
    end
    object DovizASIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'KASAISLEM.CARIKOD'
    end
    object DovizASIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'KASAISLEM.ISLEMTUR'
      Size = 40
    end
    object DovizASIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'KASAISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object DovizASIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'KASAISLEM.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object DovizASIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'KASAISLEM.SAAT'
    end
    object DovizASIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'KASAISLEM.ACIKLAMA'
      Size = 80
    end
    object DovizASIBQTEDIYE: TFloatField
      FieldName = 'TEDIYE'
      Origin = 'KASAISLEM.TEDIYE'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object DovizASIBQTAHSILAT: TFloatField
      FieldName = 'TAHSILAT'
      Origin = 'KASAISLEM.TAHSILAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object DovizASIBQBAKIYE: TFloatField
      FieldName = 'BAKIYE'
      Origin = 'KASAISLEM.BAKIYE'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object DovizASIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'KASAISLEM.DURUM'
    end
    object DovizASIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'KASAISLEM.BANKAKOD'
    end
    object DovizASIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'KASAISLEM.CARINO'
    end
    object DovizASIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'KASAISLEM.GELGITKOD'
      Size = 80
    end
    object DovizASIBQEVRAKNO: TIntegerField
      FieldName = 'EVRAKNO'
      Origin = 'KASAISLEM.EVRAKNO'
    end
    object DovizASIBQBELGENO: TIntegerField
      FieldName = 'BELGENO'
      Origin = 'KASAISLEM.BELGENO'
    end
    object DovizASIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'KASAISLEM.BAGLANTINO'
    end
    object DovizASIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'KASAISLEM.KASAKOD'
    end
    object DovizASIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'KASAISLEM.PARABIRIMKOD'
    end
    object DovizASIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'KASAISLEM.MAKBUZNO'
    end
    object DovizASIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'KASAISLEM.KULLANKOD'
    end
    object DovizASIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'KASAISLEM.PERSONELKOD'
    end
    object DovizASIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'KASAISLEM.SISTEM'
    end
    object DovizASIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'KASAISLEM.D_TEDIYE'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object DovizASIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'KASAISLEM.D_TAHSILAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object DovizASIBQCARIKURU: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'KASAISLEM.CARIKURU'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object DovizASIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'KASAISLEM.ISLEMKURU'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object DovizASIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'KASAISLEM.CARIPARABIRIMKOD'
    end
    object DovizASIBQKASAISLEMNO: TIntegerField
      FieldName = 'KASAISLEMNO'
      Origin = 'KASAISLEM.KASAISLEMNO'
    end
    object DovizASIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'KASAISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object DovizASIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'KASAISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object DovizASIBQC_KASAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KASAADI'
      Origin = 'KASAISLEM.C_KASAADI'
      ReadOnly = True
      Size = 25
    end
    object DovizASIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'KASAISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object DovizASIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'KASAISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object DovizASIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'KASAISLEM.KAPATMA'
    end
    object DovizASIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'KASAISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object DovizASIBQC_DURUM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_DURUM'
      Origin = 'KASAISLEM.C_DURUM'
      ReadOnly = True
      Size = 5
    end
    object DovizASIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'KASAISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object DovizASIBQVIRKASAKOD: TIntegerField
      FieldName = 'VIRKASAKOD'
      Origin = 'KASAISLEM.VIRKASAKOD'
    end
    object DovizASIBQVIRPARABIRKOD: TIntegerField
      FieldName = 'VIRPARABIRKOD'
      Origin = 'KASAISLEM.VIRPARABIRKOD'
    end
    object DovizASIBQVIRKURU: TFloatField
      FieldName = 'VIRKURU'
      Origin = 'KASAISLEM.VIRKURU'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object DovizASIBQC_VIRMAN: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_VIRMAN'
      Origin = 'KASAISLEM.C_VIRMAN'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object DovizASIBQC_ALANKASA: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_ALANKASA'
      Origin = 'KASAISLEM.C_ALANKASA'
      ReadOnly = True
      Size = 25
    end
    object DovizASIBQC_ALANKASA_PB: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_ALANKASA_PB'
      Origin = 'KASAISLEM.C_ALANKASA_PB'
      ReadOnly = True
      Size = 10
    end
  end
  object DovizASSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  TARIH,'
      '  SAAT,'
      '  ACIKLAMA,'
      '  TEDIYE,'
      '  TAHSILAT,'
      '  BAKIYE,'
      '  DURUM,'
      '  BANKAKOD,'
      '  CARINO,'
      '  GELGITKOD,'
      '  EVRAKNO,'
      '  BELGENO,'
      '  BAGLANTINO,'
      '  KASAKOD,'
      '  PARABIRIMKOD,'
      '  MAKBUZNO,'
      '  KULLANKOD,'
      '  PERSONELKOD,'
      '  D_TEDIYE,'
      '  D_TAHSILAT,'
      '  CARIKURU,'
      '  ISLEMKURU,'
      '  CARIPARABIRIMKOD,'
      '  KASAISLEMNO,'
      '  C_CARIPARABIRIM,'
      '  C_PARABIRIMI,'
      '  C_KASAADI,'
      '  C_CARIADI,'
      '  C_GGMERKEZI,'
      '  KAPATMA,'
      '  C_KULLANICIADI,'
      '  SISTEM,'
      '  C_DURUM,'
      '  C_PERSONEL,'
      '  VIRKASAKOD,'
      '  VIRPARABIRKOD,'
      '  VIRKURU,'
      '  C_VIRMAN,'
      '  C_ALANKASA,'
      '  C_ALANKASA_PB'
      'from KASAISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update KASAISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  TARIH = :TARIH,'
      '  SAAT = :SAAT,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  TEDIYE = :TEDIYE,'
      '  TAHSILAT = :TAHSILAT,'
      '  BAKIYE = :BAKIYE,'
      '  DURUM = :DURUM,'
      '  BANKAKOD = :BANKAKOD,'
      '  CARINO = :CARINO,'
      '  GELGITKOD = :GELGITKOD,'
      '  EVRAKNO = :EVRAKNO,'
      '  BELGENO = :BELGENO,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  KASAKOD = :KASAKOD,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  KULLANKOD = :KULLANKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  D_TEDIYE = :D_TEDIYE,'
      '  D_TAHSILAT = :D_TAHSILAT,'
      '  CARIKURU = :CARIKURU,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  KASAISLEMNO = :KASAISLEMNO,'
      '  KAPATMA = :KAPATMA,'
      '  SISTEM = :SISTEM,'
      '  VIRKASAKOD = :VIRKASAKOD,'
      '  VIRPARABIRKOD = :VIRPARABIRKOD,'
      '  VIRKURU = :VIRKURU'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into KASAISLEM'
      
        '  (ISLEMKOD, CARIKOD, ISLEMTUR, TARIH, SAAT, ACIKLAMA, TEDIYE, T' +
        'AHSILAT, '
      
        '   BAKIYE, DURUM, BANKAKOD, CARINO, GELGITKOD, EVRAKNO, BELGENO,' +
        ' BAGLANTINO, '
      
        '   KASAKOD, PARABIRIMKOD, MAKBUZNO, KULLANKOD, PERSONELKOD, D_TE' +
        'DIYE, D_TAHSILAT, '
      
        '   CARIKURU, ISLEMKURU, CARIPARABIRIMKOD, KASAISLEMNO, KAPATMA, ' +
        'SISTEM, '
      '   VIRKASAKOD, VIRPARABIRKOD, VIRKURU)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :ISLEMTUR, :TARIH, :SAAT, :ACIKLAMA, :TE' +
        'DIYE, :TAHSILAT, '
      
        '   :BAKIYE, :DURUM, :BANKAKOD, :CARINO, :GELGITKOD, :EVRAKNO, :B' +
        'ELGENO, '
      
        '   :BAGLANTINO, :KASAKOD, :PARABIRIMKOD, :MAKBUZNO, :KULLANKOD, ' +
        ':PERSONELKOD, '
      
        '   :D_TEDIYE, :D_TAHSILAT, :CARIKURU, :ISLEMKURU, :CARIPARABIRIM' +
        'KOD, :KASAISLEMNO, '
      '   :KAPATMA, :SISTEM, :VIRKASAKOD, :VIRPARABIRKOD, :VIRKURU)')
    DeleteSQL.Strings = (
      'delete from KASAISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 136
    Top = 320
  end
  object DovizASDS: TDataSource
    DataSet = DovizASIBQ
    Left = 224
    Top = 320
  end
end
