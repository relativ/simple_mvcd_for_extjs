object DMBanka: TDMBanka
  OldCreateOrder = False
  Left = 303
  Top = 120
  Height = 528
  Width = 689
  object BankaIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = BankaIBQAfterDelete
    AfterPost = BankaIBQAfterPost
    OnNewRecord = BankaIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from BANKA')
    UpdateObject = BankaUSQL
    GeneratorField.Field = 'BANKAKOD'
    GeneratorField.Generator = 'BANKA'
    Left = 40
    Top = 8
    object BankaIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'BANKA.BANKAKOD'
      Required = True
    end
    object BankaIBQBANKAADI: TIBStringField
      DisplayLabel = 'Banka'
      FieldName = 'BANKAADI'
      Origin = 'BANKA.BANKAADI'
      OnChange = BankaIBQBANKAADIChange
      Size = 30
    end
    object BankaIBQHESAPADI: TIBStringField
      DisplayLabel = 'Hesap'
      FieldName = 'HESAPADI'
      Origin = 'BANKA.HESAPADI'
      Size = 50
    end
    object BankaIBQHESAPTURU: TIBStringField
      DisplayLabel = 'Hesap T'#252'r'#252
      FieldName = 'HESAPTURU'
      Origin = 'BANKA.HESAPTURU'
      Size = 30
    end
    object BankaIBQHESAPNO: TIBStringField
      DisplayLabel = 'Hesap No'
      FieldName = 'HESAPNO'
      Origin = 'BANKA.HESAPNO'
    end
    object BankaIBQPARABIRKOD: TIntegerField
      DisplayLabel = 'P.B.'
      FieldName = 'PARABIRKOD'
      Origin = 'BANKA.PARABIRKOD'
    end
    object BankaIBQMUDUR: TIBStringField
      FieldName = 'MUDUR'
      Origin = 'BANKA.MUDUR'
      Size = 30
    end
    object BankaIBQYETKILI: TIBStringField
      DisplayLabel = 'Yetkili'
      FieldName = 'YETKILI'
      Origin = 'BANKA.YETKILI'
      Size = 30
    end
    object BankaIBQSUBE: TIBStringField
      DisplayLabel = #350'ube'
      FieldName = 'SUBE'
      Origin = 'BANKA.SUBE'
      Size = 15
    end
    object BankaIBQSUBEKOD: TIBStringField
      FieldName = 'SUBEKOD'
      Origin = 'BANKA.SUBEKOD'
      Size = 15
    end
    object BankaIBQADRES: TIBStringField
      FieldName = 'ADRES'
      Origin = 'BANKA.ADRES'
      Size = 40
    end
    object BankaIBQILKOD: TIntegerField
      FieldName = 'ILKOD'
      Origin = 'BANKA.ILKOD'
    end
    object BankaIBQILCEKOD: TIntegerField
      FieldName = 'ILCEKOD'
      Origin = 'BANKA.ILCEKOD'
    end
    object BankaIBQTELEFON1: TIBStringField
      FieldName = 'TELEFON1'
      Origin = 'BANKA.TELEFON1'
      Size = 17
    end
    object BankaIBQTELEFON2: TIBStringField
      FieldName = 'TELEFON2'
      Origin = 'BANKA.TELEFON2'
      Size = 17
    end
    object BankaIBQMAIL: TIBStringField
      FieldName = 'MAIL'
      Origin = 'BANKA.MAIL'
      Size = 40
    end
    object BankaIBQWEB: TIBStringField
      FieldName = 'WEB'
      Origin = 'BANKA.WEB'
      Size = 40
    end
    object BankaIBQNOTU: TMemoField
      FieldName = 'NOTU'
      Origin = 'BANKA.NOTU'
      BlobType = ftMemo
      Size = 8
    end
    object BankaIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'BANKA.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object BankaIBQC_SEHIRADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_SEHIRADI'
      Origin = 'BANKA.C_SEHIRADI'
      ReadOnly = True
      Size = 25
    end
    object BankaIBQC_ILCEADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_ILCEADI'
      Origin = 'BANKA.C_ILCEADI'
      ReadOnly = True
      Size = 25
    end
    object BankaIBQC_BAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldKind = fkInternalCalc
      FieldName = 'C_BAKIYE'
      Origin = 'BANKA.C_BAKIYE'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object BankaIBQC_DURUM: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Durum'
      FieldKind = fkInternalCalc
      FieldName = 'C_DURUM'
      Origin = 'BANKA.C_DURUM'
      ReadOnly = True
      Size = 5
    end
  end
  object BankaUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  BANKAKOD,'
      '  BANKAADI,'
      '  HESAPADI,'
      '  HESAPTURU,'
      '  HESAPNO,'
      '  PARABIRKOD,'
      '  MUDUR,'
      '  YETKILI,'
      '  SUBE,'
      '  SUBEKOD,'
      '  ADRES,'
      '  ILKOD,'
      '  ILCEKOD,'
      '  TELEFON1,'
      '  TELEFON2,'
      '  MAIL,'
      '  WEB,'
      '  NOTU,'
      '  C_PARABIRIMI,'
      '  C_SEHIRADI,'
      '  C_ILCEADI,'
      '  C_BAKIYE,'
      '  C_DURUM'
      'from BANKA '
      'where'
      '  BANKAKOD = :BANKAKOD')
    ModifySQL.Strings = (
      'update BANKA'
      'set'
      '  BANKAKOD = :BANKAKOD,'
      '  BANKAADI = :BANKAADI,'
      '  HESAPADI = :HESAPADI,'
      '  HESAPTURU = :HESAPTURU,'
      '  HESAPNO = :HESAPNO,'
      '  PARABIRKOD = :PARABIRKOD,'
      '  MUDUR = :MUDUR,'
      '  YETKILI = :YETKILI,'
      '  SUBE = :SUBE,'
      '  SUBEKOD = :SUBEKOD,'
      '  ADRES = :ADRES,'
      '  ILKOD = :ILKOD,'
      '  ILCEKOD = :ILCEKOD,'
      '  TELEFON1 = :TELEFON1,'
      '  TELEFON2 = :TELEFON2,'
      '  MAIL = :MAIL,'
      '  WEB = :WEB,'
      '  NOTU = :NOTU'
      'where'
      '  BANKAKOD = :OLD_BANKAKOD')
    InsertSQL.Strings = (
      'insert into BANKA'
      
        '  (BANKAKOD, BANKAADI, HESAPADI, HESAPTURU, HESAPNO, PARABIRKOD,' +
        ' MUDUR, '
      
        '   YETKILI, SUBE, SUBEKOD, ADRES, ILKOD, ILCEKOD, TELEFON1, TELE' +
        'FON2, MAIL, '
      '   WEB, NOTU)'
      'values'
      
        '  (:BANKAKOD, :BANKAADI, :HESAPADI, :HESAPTURU, :HESAPNO, :PARAB' +
        'IRKOD, '
      
        '   :MUDUR, :YETKILI, :SUBE, :SUBEKOD, :ADRES, :ILKOD, :ILCEKOD, ' +
        ':TELEFON1, '
      '   :TELEFON2, :MAIL, :WEB, :NOTU)')
    DeleteSQL.Strings = (
      'delete from BANKA'
      'where'
      '  BANKAKOD = :OLD_BANKAKOD')
    Left = 136
    Top = 8
  end
  object BankaDS: TDataSource
    DataSet = BankaIBQ
    Left = 224
    Top = 8
  end
  object BankaislemIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = BankaislemIBQAfterDelete
    AfterPost = BankaislemIBQAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = BankaDS
    SQL.Strings = (
      'select * from BANKAISLEM'
      'Where BANKAKOD=:BANKAKOD AND SISTEM<>2'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = BankaislemSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'BANKAISLEM'
    Left = 40
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'BANKAKOD'
        ParamType = ptUnknown
      end>
    object BankaislemIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'BANKAISLEM.ISLEMKOD'
      ReadOnly = True
      Required = True
    end
    object BankaislemIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'BANKAISLEM.CARIKOD'
      ReadOnly = True
    end
    object BankaislemIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'BANKAISLEM.BANKAKOD'
      ReadOnly = True
    end
    object BankaislemIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'BANKAISLEM.ISLEMTUR'
      ReadOnly = True
      Size = 40
    end
    object BankaislemIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'BANKAISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object BankaislemIBQBANKAISLEMNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'BANKAISLEMNO'
      Origin = 'BANKAISLEM.BANKAISLEMNO'
      ReadOnly = True
    end
    object BankaislemIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'BANKAISLEM.TARIH'
      ReadOnly = True
    end
    object BankaislemIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'BANKAISLEM.SAAT'
      ReadOnly = True
    end
    object BankaislemIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'BANKAISLEM.ACIKLAMA'
      ReadOnly = True
      Size = 80
    end
    object BankaislemIBQTEDIYE: TFloatField
      DisplayLabel = 'Tediye'
      FieldName = 'TEDIYE'
      Origin = 'BANKAISLEM.TEDIYE'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object BankaislemIBQTAHSILAT: TFloatField
      DisplayLabel = 'Tahsilat'
      FieldName = 'TAHSILAT'
      Origin = 'BANKAISLEM.TAHSILAT'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object BankaislemIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'BANKAISLEM.BAKIYE'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object BankaislemIBQDURUM: TIntegerField
      DisplayLabel = 'Durum'
      FieldName = 'DURUM'
      Origin = 'BANKAISLEM.DURUM'
      ReadOnly = True
    end
    object BankaislemIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'BANKAISLEM.KASAKOD'
      ReadOnly = True
    end
    object BankaislemIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'BANKAISLEM.CARINO'
      ReadOnly = True
    end
    object BankaislemIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'BANKAISLEM.GELGITKOD'
      ReadOnly = True
      Size = 80
    end
    object BankaislemIBQEVRAKNO: TIntegerField
      DisplayLabel = 'Evrak No'
      FieldName = 'EVRAKNO'
      Origin = 'BANKAISLEM.EVRAKNO'
      ReadOnly = True
    end
    object BankaislemIBQBELGENO: TIntegerField
      DisplayLabel = 'Belge No'
      FieldName = 'BELGENO'
      Origin = 'BANKAISLEM.BELGENO'
      ReadOnly = True
    end
    object BankaislemIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'BANKAISLEM.BAGLANTINO'
      ReadOnly = True
    end
    object BankaislemIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'BANKAISLEM.PARABIRIMKOD'
      ReadOnly = True
    end
    object BankaislemIBQMAKBUZNO: TIntegerField
      DisplayLabel = 'Makbuz No'
      FieldName = 'MAKBUZNO'
      Origin = 'BANKAISLEM.MAKBUZNO'
      ReadOnly = True
    end
    object BankaislemIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'BANKAISLEM.KULLANKOD'
      ReadOnly = True
    end
    object BankaislemIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'BANKAISLEM.PERSONELKOD'
      ReadOnly = True
    end
    object BankaislemIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'BANKAISLEM.SISTEM'
      ReadOnly = True
    end
    object BankaislemIBQD_TEDIYE: TFloatField
      DisplayLabel = 'D. Tediye'
      FieldName = 'D_TEDIYE'
      Origin = 'BANKAISLEM.D_TEDIYE'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object BankaislemIBQD_TAHSILAT: TFloatField
      DisplayLabel = 'D. Tahsilat'
      FieldName = 'D_TAHSILAT'
      Origin = 'BANKAISLEM.D_TAHSILAT'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object BankaislemIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'BANKAISLEM.CARIKURU'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object BankaislemIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'BANKAISLEM.ISLEMKURU'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object BankaislemIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'BANKAISLEM.CARIPARABIRIMKOD'
      ReadOnly = True
    end
    object BankaislemIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'BANKAISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object BankaislemIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'BANKAISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object BankaislemIBQC_KASAADI: TIBStringField
      DisplayLabel = 'Kasa'
      FieldKind = fkInternalCalc
      FieldName = 'C_KASAADI'
      Origin = 'BANKAISLEM.C_KASAADI'
      ReadOnly = True
      Size = 25
    end
    object BankaislemIBQC_HESAPADI: TIBStringField
      DisplayLabel = 'Banka Hesap'
      FieldKind = fkInternalCalc
      FieldName = 'C_HESAPADI'
      Origin = 'BANKAISLEM.C_HESAPADI'
      ReadOnly = True
      Size = 50
    end
    object BankaislemIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'BANKAISLEM.KAPATMA'
      ReadOnly = True
    end
    object BankaislemIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'BANKAISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object BankaislemIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G.G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'BANKAISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object BankaislemIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'BANKAISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object BankaislemIBQC_DURUM: TIBStringField
      DisplayLabel = 'Durum'
      FieldKind = fkInternalCalc
      FieldName = 'C_DURUM'
      Origin = 'BANKAISLEM.C_DURUM'
      ReadOnly = True
      Size = 5
    end
    object BankaislemIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'BANKAISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
  end
  object BankaislemSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  BANKAKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  BANKAISLEMNO,'
      '  TARIH,'
      '  SAAT,'
      '  ACIKLAMA,'
      '  TEDIYE,'
      '  TAHSILAT,'
      '  BAKIYE,'
      '  DURUM,'
      '  KASAKOD,'
      '  CARINO,'
      '  GELGITKOD,'
      '  EVRAKNO,'
      '  BELGENO,'
      '  BAGLANTINO,'
      '  PARABIRIMKOD,'
      '  MAKBUZNO,'
      '  KULLANKOD,'
      '  PERSONELKOD,'
      '  D_TEDIYE,'
      '  D_TAHSILAT,'
      '  CARIKURU,'
      '  ISLEMKURU,'
      '  CARIPARABIRIMKOD,'
      '  C_PARABIRIMI,'
      '  C_CARIPARABIRIM,'
      '  C_KASAADI,'
      '  C_HESAPADI,'
      '  KAPATMA,'
      '  C_CARIADI,'
      '  C_GGMERKEZI,'
      '  SISTEM,'
      '  C_KULLANICIADI,'
      '  C_DURUM'
      'from BANKAISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update BANKAISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  BANKAKOD = :BANKAKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  BANKAISLEMNO = :BANKAISLEMNO,'
      '  TARIH = :TARIH,'
      '  SAAT = :SAAT,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  TEDIYE = :TEDIYE,'
      '  TAHSILAT = :TAHSILAT,'
      '  BAKIYE = :BAKIYE,'
      '  DURUM = :DURUM,'
      '  KASAKOD = :KASAKOD,'
      '  CARINO = :CARINO,'
      '  GELGITKOD = :GELGITKOD,'
      '  EVRAKNO = :EVRAKNO,'
      '  BELGENO = :BELGENO,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  KULLANKOD = :KULLANKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  D_TEDIYE = :D_TEDIYE,'
      '  D_TAHSILAT = :D_TAHSILAT,'
      '  CARIKURU = :CARIKURU,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  KAPATMA = :KAPATMA,'
      '  SISTEM = :SISTEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into BANKAISLEM'
      
        '  (ISLEMKOD, CARIKOD, BANKAKOD, ISLEMTUR, BANKAISLEMNO, TARIH, S' +
        'AAT, ACIKLAMA, '
      
        '   TEDIYE, TAHSILAT, BAKIYE, DURUM, KASAKOD, CARINO, GELGITKOD, ' +
        'EVRAKNO, '
      
        '   BELGENO, BAGLANTINO, PARABIRIMKOD, MAKBUZNO, KULLANKOD, PERSO' +
        'NELKOD, '
      
        '   D_TEDIYE, D_TAHSILAT, CARIKURU, ISLEMKURU, CARIPARABIRIMKOD, ' +
        'KAPATMA, '
      '   SISTEM)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :BANKAKOD, :ISLEMTUR, :BANKAISLEMNO, :TA' +
        'RIH, :SAAT, '
      
        '   :ACIKLAMA, :TEDIYE, :TAHSILAT, :BAKIYE, :DURUM, :KASAKOD, :CA' +
        'RINO, :GELGITKOD, '
      
        '   :EVRAKNO, :BELGENO, :BAGLANTINO, :PARABIRIMKOD, :MAKBUZNO, :K' +
        'ULLANKOD, '
      
        '   :PERSONELKOD, :D_TEDIYE, :D_TAHSILAT, :CARIKURU, :ISLEMKURU, ' +
        ':CARIPARABIRIMKOD, '
      '   :KAPATMA, :SISTEM)')
    DeleteSQL.Strings = (
      'delete from BANKAISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 136
    Top = 56
  end
  object BankaislemDS: TDataSource
    DataSet = BankaislemIBQ
    Left = 224
    Top = 56
  end
  object NakitYatirmaIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = NakitYatirmaIBQAfterDelete
    AfterPost = NakitYatirmaIBQAfterPost
    OnNewRecord = NakitYatirmaIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from BANKAISLEM'
      'Where ISLEMTURKOD=19 AND SISTEM<>2'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = NakitYatirmaUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'BANKAISLEM'
    Left = 40
    Top = 112
    object NakitYatirmaIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'BANKAISLEM.ISLEMKOD'
      Required = True
    end
    object NakitYatirmaIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'BANKAISLEM.CARIKOD'
    end
    object NakitYatirmaIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'BANKAISLEM.BANKAKOD'
    end
    object NakitYatirmaIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'BANKAISLEM.ISLEMTUR'
      Size = 40
    end
    object NakitYatirmaIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'BANKAISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object NakitYatirmaIBQBANKAISLEMNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'BANKAISLEMNO'
      Origin = 'BANKAISLEM.BANKAISLEMNO'
    end
    object NakitYatirmaIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'BANKAISLEM.TARIH'
    end
    object NakitYatirmaIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'BANKAISLEM.SAAT'
    end
    object NakitYatirmaIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'BANKAISLEM.ACIKLAMA'
      Size = 80
    end
    object NakitYatirmaIBQTEDIYE: TFloatField
      DisplayLabel = 'Tediye'
      FieldName = 'TEDIYE'
      Origin = 'BANKAISLEM.TEDIYE'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object NakitYatirmaIBQTAHSILAT: TFloatField
      DisplayLabel = 'Tahsilat'
      FieldName = 'TAHSILAT'
      Origin = 'BANKAISLEM.TAHSILAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object NakitYatirmaIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'BANKAISLEM.BAKIYE'
      DisplayFormat = '###,###'
    end
    object NakitYatirmaIBQDURUM: TIntegerField
      DisplayLabel = 'Durum'
      FieldName = 'DURUM'
      Origin = 'BANKAISLEM.DURUM'
    end
    object NakitYatirmaIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'BANKAISLEM.KASAKOD'
    end
    object NakitYatirmaIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'BANKAISLEM.CARINO'
    end
    object NakitYatirmaIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'BANKAISLEM.GELGITKOD'
      Size = 80
    end
    object NakitYatirmaIBQEVRAKNO: TIntegerField
      DisplayLabel = 'Evrak No'
      FieldName = 'EVRAKNO'
      Origin = 'BANKAISLEM.EVRAKNO'
    end
    object NakitYatirmaIBQBELGENO: TIntegerField
      DisplayLabel = 'Belge No'
      FieldName = 'BELGENO'
      Origin = 'BANKAISLEM.BELGENO'
    end
    object NakitYatirmaIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'BANKAISLEM.BAGLANTINO'
    end
    object NakitYatirmaIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'BANKAISLEM.PARABIRIMKOD'
    end
    object NakitYatirmaIBQMAKBUZNO: TIntegerField
      DisplayLabel = 'Makbuz No'
      FieldName = 'MAKBUZNO'
      Origin = 'BANKAISLEM.MAKBUZNO'
    end
    object NakitYatirmaIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'BANKAISLEM.KULLANKOD'
    end
    object NakitYatirmaIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'BANKAISLEM.PERSONELKOD'
    end
    object NakitYatirmaIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'BANKAISLEM.SISTEM'
    end
    object NakitYatirmaIBQD_TEDIYE: TFloatField
      DisplayLabel = 'D. Tediye'
      FieldName = 'D_TEDIYE'
      Origin = 'BANKAISLEM.D_TEDIYE'
      DisplayFormat = '###,###'
    end
    object NakitYatirmaIBQD_TAHSILAT: TFloatField
      DisplayLabel = 'D. Tahsilat'
      FieldName = 'D_TAHSILAT'
      Origin = 'BANKAISLEM.D_TAHSILAT'
      DisplayFormat = '###,###'
    end
    object NakitYatirmaIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'BANKAISLEM.CARIKURU'
      DisplayFormat = '###,###'
    end
    object NakitYatirmaIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'BANKAISLEM.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object NakitYatirmaIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'BANKAISLEM.CARIPARABIRIMKOD'
    end
    object NakitYatirmaIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'BANKAISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object NakitYatirmaIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'BANKAISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object NakitYatirmaIBQC_KASAADI: TIBStringField
      DisplayLabel = 'Kasa'
      FieldKind = fkInternalCalc
      FieldName = 'C_KASAADI'
      Origin = 'BANKAISLEM.C_KASAADI'
      ReadOnly = True
      Size = 25
    end
    object NakitYatirmaIBQC_HESAPADI: TIBStringField
      DisplayLabel = 'Banka Hesap'
      FieldKind = fkInternalCalc
      FieldName = 'C_HESAPADI'
      Origin = 'BANKAISLEM.C_HESAPADI'
      ReadOnly = True
      Size = 50
    end
    object NakitYatirmaIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'BANKAISLEM.KAPATMA'
    end
    object NakitYatirmaIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'BANKAISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object NakitYatirmaIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G.G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'BANKAISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object NakitYatirmaIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'BANKAISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object NakitYatirmaIBQC_DURUM: TIBStringField
      DisplayLabel = 'Durum'
      FieldKind = fkInternalCalc
      FieldName = 'C_DURUM'
      Origin = 'BANKAISLEM.C_DURUM'
      ReadOnly = True
      Size = 5
    end
    object NakitYatirmaIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'BANKAISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
  end
  object NakitYatirmaUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  BANKAKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  BANKAISLEMNO,'
      '  TARIH,'
      '  SAAT,'
      '  ACIKLAMA,'
      '  TEDIYE,'
      '  TAHSILAT,'
      '  BAKIYE,'
      '  DURUM,'
      '  KASAKOD,'
      '  CARINO,'
      '  GELGITKOD,'
      '  EVRAKNO,'
      '  BELGENO,'
      '  BAGLANTINO,'
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
      '  C_PARABIRIMI,'
      '  C_CARIPARABIRIM,'
      '  C_KASAADI,'
      '  C_HESAPADI'
      'from BANKAISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update BANKAISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  BANKAKOD = :BANKAKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  BANKAISLEMNO = :BANKAISLEMNO,'
      '  TARIH = :TARIH,'
      '  SAAT = :SAAT,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  TEDIYE = :TEDIYE,'
      '  TAHSILAT = :TAHSILAT,'
      '  BAKIYE = :BAKIYE,'
      '  DURUM = :DURUM,'
      '  KASAKOD = :KASAKOD,'
      '  CARINO = :CARINO,'
      '  GELGITKOD = :GELGITKOD,'
      '  EVRAKNO = :EVRAKNO,'
      '  BELGENO = :BELGENO,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  KULLANKOD = :KULLANKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  SISTEM = :SISTEM,'
      '  D_TEDIYE = :D_TEDIYE,'
      '  D_TAHSILAT = :D_TAHSILAT,'
      '  CARIKURU = :CARIKURU,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into BANKAISLEM'
      
        '  (ISLEMKOD, CARIKOD, BANKAKOD, ISLEMTUR, BANKAISLEMNO, TARIH, S' +
        'AAT, ACIKLAMA, '
      
        '   TEDIYE, TAHSILAT, BAKIYE, DURUM, KASAKOD, CARINO, GELGITKOD, ' +
        'EVRAKNO, '
      
        '   BELGENO, BAGLANTINO, PARABIRIMKOD, MAKBUZNO, KULLANKOD, PERSO' +
        'NELKOD, '
      
        '   SISTEM, D_TEDIYE, D_TAHSILAT, CARIKURU, ISLEMKURU, CARIPARABI' +
        'RIMKOD)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :BANKAKOD, :ISLEMTUR, :BANKAISLEMNO, :TA' +
        'RIH, :SAAT, '
      
        '   :ACIKLAMA, :TEDIYE, :TAHSILAT, :BAKIYE, :DURUM, :KASAKOD, :CA' +
        'RINO, :GELGITKOD, '
      
        '   :EVRAKNO, :BELGENO, :BAGLANTINO, :PARABIRIMKOD, :MAKBUZNO, :K' +
        'ULLANKOD, '
      
        '   :PERSONELKOD, :SISTEM, :D_TEDIYE, :D_TAHSILAT, :CARIKURU, :IS' +
        'LEMKURU, '
      '   :CARIPARABIRIMKOD)')
    DeleteSQL.Strings = (
      'delete from BANKAISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 136
    Top = 112
  end
  object NakitYatirmaDS: TDataSource
    DataSet = NakitYatirmaIBQ
    Left = 224
    Top = 112
  end
  object NakitCekmeIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = NakitCekmeIBQAfterDelete
    AfterPost = NakitCekmeIBQAfterPost
    OnNewRecord = NakitCekmeIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from BANKAISLEM'
      'Where ISLEMTURKOD=20 AND SISTEM<>2'
      'ORDER BY TARIH, ISLEMKOD'
      '')
    UpdateObject = NakitCekmeSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'BANKAISLEM'
    Left = 40
    Top = 160
    object NakitCekmeIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'BANKAISLEM.ISLEMKOD'
      Required = True
    end
    object NakitCekmeIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'BANKAISLEM.CARIKOD'
    end
    object NakitCekmeIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'BANKAISLEM.BANKAKOD'
    end
    object NakitCekmeIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'BANKAISLEM.ISLEMTUR'
      Size = 40
    end
    object NakitCekmeIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'BANKAISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object NakitCekmeIBQBANKAISLEMNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'BANKAISLEMNO'
      Origin = 'BANKAISLEM.BANKAISLEMNO'
    end
    object NakitCekmeIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'BANKAISLEM.TARIH'
    end
    object NakitCekmeIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'BANKAISLEM.SAAT'
    end
    object NakitCekmeIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'BANKAISLEM.ACIKLAMA'
      Size = 80
    end
    object NakitCekmeIBQTEDIYE: TFloatField
      DisplayLabel = 'Tediye'
      FieldName = 'TEDIYE'
      Origin = 'BANKAISLEM.TEDIYE'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object NakitCekmeIBQTAHSILAT: TFloatField
      DisplayLabel = 'Tahsilat'
      FieldName = 'TAHSILAT'
      Origin = 'BANKAISLEM.TAHSILAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object NakitCekmeIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'BANKAISLEM.BAKIYE'
      DisplayFormat = '###,###'
    end
    object NakitCekmeIBQDURUM: TIntegerField
      DisplayLabel = 'Durum'
      FieldName = 'DURUM'
      Origin = 'BANKAISLEM.DURUM'
    end
    object NakitCekmeIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'BANKAISLEM.KASAKOD'
    end
    object NakitCekmeIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'BANKAISLEM.CARINO'
    end
    object NakitCekmeIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'BANKAISLEM.GELGITKOD'
      Size = 80
    end
    object NakitCekmeIBQEVRAKNO: TIntegerField
      DisplayLabel = 'Evrak No'
      FieldName = 'EVRAKNO'
      Origin = 'BANKAISLEM.EVRAKNO'
    end
    object NakitCekmeIBQBELGENO: TIntegerField
      DisplayLabel = 'Belge No'
      FieldName = 'BELGENO'
      Origin = 'BANKAISLEM.BELGENO'
    end
    object NakitCekmeIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'BANKAISLEM.BAGLANTINO'
    end
    object NakitCekmeIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'BANKAISLEM.PARABIRIMKOD'
    end
    object NakitCekmeIBQMAKBUZNO: TIntegerField
      DisplayLabel = 'Makbuz No'
      FieldName = 'MAKBUZNO'
      Origin = 'BANKAISLEM.MAKBUZNO'
    end
    object NakitCekmeIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'BANKAISLEM.KULLANKOD'
    end
    object NakitCekmeIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'BANKAISLEM.PERSONELKOD'
    end
    object NakitCekmeIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'BANKAISLEM.SISTEM'
    end
    object NakitCekmeIBQD_TEDIYE: TFloatField
      DisplayLabel = 'D. Tediye'
      FieldName = 'D_TEDIYE'
      Origin = 'BANKAISLEM.D_TEDIYE'
      DisplayFormat = '###,###'
    end
    object NakitCekmeIBQD_TAHSILAT: TFloatField
      DisplayLabel = 'D. Tahsilat'
      FieldName = 'D_TAHSILAT'
      Origin = 'BANKAISLEM.D_TAHSILAT'
      DisplayFormat = '###,###'
    end
    object NakitCekmeIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'BANKAISLEM.CARIKURU'
      DisplayFormat = '###,###'
    end
    object NakitCekmeIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'BANKAISLEM.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object NakitCekmeIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'BANKAISLEM.CARIPARABIRIMKOD'
    end
    object NakitCekmeIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'BANKAISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object NakitCekmeIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'BANKAISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object NakitCekmeIBQC_KASAADI: TIBStringField
      DisplayLabel = 'Kasa'
      FieldKind = fkInternalCalc
      FieldName = 'C_KASAADI'
      Origin = 'BANKAISLEM.C_KASAADI'
      ReadOnly = True
      Size = 25
    end
    object NakitCekmeIBQC_HESAPADI: TIBStringField
      DisplayLabel = 'Banka Hesap'
      FieldKind = fkInternalCalc
      FieldName = 'C_HESAPADI'
      Origin = 'BANKAISLEM.C_HESAPADI'
      ReadOnly = True
      Size = 50
    end
    object NakitCekmeIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'BANKAISLEM.KAPATMA'
    end
    object NakitCekmeIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'BANKAISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object NakitCekmeIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G.G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'BANKAISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object NakitCekmeIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'BANKAISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object NakitCekmeIBQC_DURUM: TIBStringField
      DisplayLabel = 'Durum'
      FieldKind = fkInternalCalc
      FieldName = 'C_DURUM'
      Origin = 'BANKAISLEM.C_DURUM'
      ReadOnly = True
      Size = 5
    end
    object NakitCekmeIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'BANKAISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
  end
  object NakitCekmeSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  BANKAKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  BANKAISLEMNO,'
      '  TARIH,'
      '  SAAT,'
      '  ACIKLAMA,'
      '  TEDIYE,'
      '  TAHSILAT,'
      '  BAKIYE,'
      '  DURUM,'
      '  KASAKOD,'
      '  CARINO,'
      '  GELGITKOD,'
      '  EVRAKNO,'
      '  BELGENO,'
      '  BAGLANTINO,'
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
      '  C_PARABIRIMI,'
      '  C_CARIPARABIRIM,'
      '  C_KASAADI,'
      '  C_HESAPADI'
      'from BANKAISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update BANKAISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  BANKAKOD = :BANKAKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  BANKAISLEMNO = :BANKAISLEMNO,'
      '  TARIH = :TARIH,'
      '  SAAT = :SAAT,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  TEDIYE = :TEDIYE,'
      '  TAHSILAT = :TAHSILAT,'
      '  BAKIYE = :BAKIYE,'
      '  DURUM = :DURUM,'
      '  KASAKOD = :KASAKOD,'
      '  CARINO = :CARINO,'
      '  GELGITKOD = :GELGITKOD,'
      '  EVRAKNO = :EVRAKNO,'
      '  BELGENO = :BELGENO,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  KULLANKOD = :KULLANKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  SISTEM = :SISTEM,'
      '  D_TEDIYE = :D_TEDIYE,'
      '  D_TAHSILAT = :D_TAHSILAT,'
      '  CARIKURU = :CARIKURU,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into BANKAISLEM'
      
        '  (ISLEMKOD, CARIKOD, BANKAKOD, ISLEMTUR, BANKAISLEMNO, TARIH, S' +
        'AAT, ACIKLAMA, '
      
        '   TEDIYE, TAHSILAT, BAKIYE, DURUM, KASAKOD, CARINO, GELGITKOD, ' +
        'EVRAKNO, '
      
        '   BELGENO, BAGLANTINO, PARABIRIMKOD, MAKBUZNO, KULLANKOD, PERSO' +
        'NELKOD, '
      
        '   SISTEM, D_TEDIYE, D_TAHSILAT, CARIKURU, ISLEMKURU, CARIPARABI' +
        'RIMKOD)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :BANKAKOD, :ISLEMTUR, :BANKAISLEMNO, :TA' +
        'RIH, :SAAT, '
      
        '   :ACIKLAMA, :TEDIYE, :TAHSILAT, :BAKIYE, :DURUM, :KASAKOD, :CA' +
        'RINO, :GELGITKOD, '
      
        '   :EVRAKNO, :BELGENO, :BAGLANTINO, :PARABIRIMKOD, :MAKBUZNO, :K' +
        'ULLANKOD, '
      
        '   :PERSONELKOD, :SISTEM, :D_TEDIYE, :D_TAHSILAT, :CARIKURU, :IS' +
        'LEMKURU, '
      '   :CARIPARABIRIMKOD)')
    DeleteSQL.Strings = (
      'delete from BANKAISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 136
    Top = 160
  end
  object NakitCekmeDS: TDataSource
    DataSet = NakitCekmeIBQ
    Left = 224
    Top = 160
  end
  object HavaleAlmaIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = HavaleAlmaIBQAfterDelete
    AfterPost = HavaleAlmaIBQAfterPost
    OnNewRecord = HavaleAlmaIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from BANKAISLEM'
      'Where ISLEMTURKOD=21 AND SISTEM<>2'
      'ORDER BY TARIH, ISLEMKOD'
      '')
    UpdateObject = HavaleAlmaUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'BANKAISLEM'
    Left = 40
    Top = 208
    object HavaleAlmaIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'BANKAISLEM.ISLEMKOD'
      Required = True
    end
    object HavaleAlmaIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'BANKAISLEM.CARIKOD'
    end
    object HavaleAlmaIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'BANKAISLEM.BANKAKOD'
    end
    object HavaleAlmaIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'BANKAISLEM.ISLEMTUR'
      Size = 40
    end
    object HavaleAlmaIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'BANKAISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object HavaleAlmaIBQBANKAISLEMNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'BANKAISLEMNO'
      Origin = 'BANKAISLEM.BANKAISLEMNO'
    end
    object HavaleAlmaIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'BANKAISLEM.TARIH'
    end
    object HavaleAlmaIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'BANKAISLEM.SAAT'
    end
    object HavaleAlmaIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'BANKAISLEM.ACIKLAMA'
      Size = 80
    end
    object HavaleAlmaIBQTEDIYE: TFloatField
      DisplayLabel = 'Tediye'
      FieldName = 'TEDIYE'
      Origin = 'BANKAISLEM.TEDIYE'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object HavaleAlmaIBQTAHSILAT: TFloatField
      DisplayLabel = 'Tahsilat'
      FieldName = 'TAHSILAT'
      Origin = 'BANKAISLEM.TAHSILAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object HavaleAlmaIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'BANKAISLEM.BAKIYE'
      DisplayFormat = '###,###'
    end
    object HavaleAlmaIBQDURUM: TIntegerField
      DisplayLabel = 'Durum'
      FieldName = 'DURUM'
      Origin = 'BANKAISLEM.DURUM'
    end
    object HavaleAlmaIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'BANKAISLEM.KASAKOD'
    end
    object HavaleAlmaIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'BANKAISLEM.CARINO'
    end
    object HavaleAlmaIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'BANKAISLEM.GELGITKOD'
      Size = 80
    end
    object HavaleAlmaIBQEVRAKNO: TIntegerField
      DisplayLabel = 'Evrak No'
      FieldName = 'EVRAKNO'
      Origin = 'BANKAISLEM.EVRAKNO'
    end
    object HavaleAlmaIBQBELGENO: TIntegerField
      DisplayLabel = 'Belge No'
      FieldName = 'BELGENO'
      Origin = 'BANKAISLEM.BELGENO'
    end
    object HavaleAlmaIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'BANKAISLEM.BAGLANTINO'
    end
    object HavaleAlmaIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'BANKAISLEM.PARABIRIMKOD'
    end
    object HavaleAlmaIBQMAKBUZNO: TIntegerField
      DisplayLabel = 'Makbuz No'
      FieldName = 'MAKBUZNO'
      Origin = 'BANKAISLEM.MAKBUZNO'
    end
    object HavaleAlmaIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'BANKAISLEM.KULLANKOD'
    end
    object HavaleAlmaIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'BANKAISLEM.PERSONELKOD'
    end
    object HavaleAlmaIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'BANKAISLEM.SISTEM'
    end
    object HavaleAlmaIBQD_TEDIYE: TFloatField
      DisplayLabel = 'D. Tediye'
      FieldName = 'D_TEDIYE'
      Origin = 'BANKAISLEM.D_TEDIYE'
      DisplayFormat = '###,###'
    end
    object HavaleAlmaIBQD_TAHSILAT: TFloatField
      DisplayLabel = 'D. Tahsilat'
      FieldName = 'D_TAHSILAT'
      Origin = 'BANKAISLEM.D_TAHSILAT'
      DisplayFormat = '###,###'
    end
    object HavaleAlmaIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'BANKAISLEM.CARIKURU'
      DisplayFormat = '###,###'
    end
    object HavaleAlmaIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'BANKAISLEM.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object HavaleAlmaIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'BANKAISLEM.CARIPARABIRIMKOD'
    end
    object HavaleAlmaIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'BANKAISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object HavaleAlmaIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'BANKAISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object HavaleAlmaIBQC_KASAADI: TIBStringField
      DisplayLabel = 'Kasa'
      FieldKind = fkInternalCalc
      FieldName = 'C_KASAADI'
      Origin = 'BANKAISLEM.C_KASAADI'
      ReadOnly = True
      Size = 25
    end
    object HavaleAlmaIBQC_HESAPADI: TIBStringField
      DisplayLabel = 'Banka Hesap'
      FieldKind = fkInternalCalc
      FieldName = 'C_HESAPADI'
      Origin = 'BANKAISLEM.C_HESAPADI'
      ReadOnly = True
      Size = 50
    end
    object HavaleAlmaIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'BANKAISLEM.KAPATMA'
    end
    object HavaleAlmaIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'BANKAISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object HavaleAlmaIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G.G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'BANKAISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object HavaleAlmaIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'BANKAISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object HavaleAlmaIBQC_DURUM: TIBStringField
      DisplayLabel = 'Durum'
      FieldKind = fkInternalCalc
      FieldName = 'C_DURUM'
      Origin = 'BANKAISLEM.C_DURUM'
      ReadOnly = True
      Size = 5
    end
    object HavaleAlmaIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'BANKAISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
  end
  object HavaleAlmaUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  BANKAKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  BANKAISLEMNO,'
      '  TARIH,'
      '  SAAT,'
      '  ACIKLAMA,'
      '  TEDIYE,'
      '  TAHSILAT,'
      '  BAKIYE,'
      '  DURUM,'
      '  KASAKOD,'
      '  CARINO,'
      '  GELGITKOD,'
      '  EVRAKNO,'
      '  BELGENO,'
      '  BAGLANTINO,'
      '  PARABIRIMKOD,'
      '  MAKBUZNO,'
      '  KULLANKOD,'
      '  PERSONELKOD,'
      '  D_TEDIYE,'
      '  D_TAHSILAT,'
      '  CARIKURU,'
      '  ISLEMKURU,'
      '  CARIPARABIRIMKOD,'
      '  C_PARABIRIMI,'
      '  C_CARIPARABIRIM,'
      '  C_KASAADI,'
      '  C_HESAPADI,'
      '  KAPATMA,'
      '  C_CARIADI,'
      '  C_GGMERKEZI,'
      '  SISTEM,'
      '  C_KULLANICIADI,'
      '  C_DURUM'
      'from BANKAISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update BANKAISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  BANKAKOD = :BANKAKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  BANKAISLEMNO = :BANKAISLEMNO,'
      '  TARIH = :TARIH,'
      '  SAAT = :SAAT,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  TEDIYE = :TEDIYE,'
      '  TAHSILAT = :TAHSILAT,'
      '  BAKIYE = :BAKIYE,'
      '  DURUM = :DURUM,'
      '  KASAKOD = :KASAKOD,'
      '  CARINO = :CARINO,'
      '  GELGITKOD = :GELGITKOD,'
      '  EVRAKNO = :EVRAKNO,'
      '  BELGENO = :BELGENO,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  KULLANKOD = :KULLANKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  D_TEDIYE = :D_TEDIYE,'
      '  D_TAHSILAT = :D_TAHSILAT,'
      '  CARIKURU = :CARIKURU,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  KAPATMA = :KAPATMA,'
      '  SISTEM = :SISTEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into BANKAISLEM'
      
        '  (ISLEMKOD, CARIKOD, BANKAKOD, ISLEMTUR, BANKAISLEMNO, TARIH, S' +
        'AAT, ACIKLAMA, '
      
        '   TEDIYE, TAHSILAT, BAKIYE, DURUM, KASAKOD, CARINO, GELGITKOD, ' +
        'EVRAKNO, '
      
        '   BELGENO, BAGLANTINO, PARABIRIMKOD, MAKBUZNO, KULLANKOD, PERSO' +
        'NELKOD, '
      
        '   D_TEDIYE, D_TAHSILAT, CARIKURU, ISLEMKURU, CARIPARABIRIMKOD, ' +
        'KAPATMA, '
      '   SISTEM)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :BANKAKOD, :ISLEMTUR, :BANKAISLEMNO, :TA' +
        'RIH, :SAAT, '
      
        '   :ACIKLAMA, :TEDIYE, :TAHSILAT, :BAKIYE, :DURUM, :KASAKOD, :CA' +
        'RINO, :GELGITKOD, '
      
        '   :EVRAKNO, :BELGENO, :BAGLANTINO, :PARABIRIMKOD, :MAKBUZNO, :K' +
        'ULLANKOD, '
      
        '   :PERSONELKOD, :D_TEDIYE, :D_TAHSILAT, :CARIKURU, :ISLEMKURU, ' +
        ':CARIPARABIRIMKOD, '
      '   :KAPATMA, :SISTEM)')
    DeleteSQL.Strings = (
      'delete from BANKAISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 136
    Top = 208
  end
  object HavaleAlmaDS: TDataSource
    DataSet = HavaleAlmaIBQ
    Left = 224
    Top = 208
  end
  object HavaleGondermeIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = HavaleGondermeIBQAfterDelete
    AfterPost = HavaleGondermeIBQAfterPost
    OnNewRecord = HavaleGondermeIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from BANKAISLEM'
      'Where ISLEMTURKOD=22 AND SISTEM<>2'
      'ORDER BY TARIH, ISLEMKOD'
      '')
    UpdateObject = HavaleGondermeUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'BANKAISLEM'
    Left = 40
    Top = 264
    object HavaleGondermeIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'BANKAISLEM.ISLEMKOD'
      Required = True
    end
    object HavaleGondermeIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'BANKAISLEM.CARIKOD'
    end
    object HavaleGondermeIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'BANKAISLEM.BANKAKOD'
    end
    object HavaleGondermeIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'BANKAISLEM.ISLEMTUR'
      Size = 40
    end
    object HavaleGondermeIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'BANKAISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object HavaleGondermeIBQBANKAISLEMNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'BANKAISLEMNO'
      Origin = 'BANKAISLEM.BANKAISLEMNO'
    end
    object HavaleGondermeIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'BANKAISLEM.TARIH'
    end
    object HavaleGondermeIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'BANKAISLEM.SAAT'
    end
    object HavaleGondermeIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'BANKAISLEM.ACIKLAMA'
      Size = 80
    end
    object HavaleGondermeIBQTEDIYE: TFloatField
      DisplayLabel = 'Tediye'
      FieldName = 'TEDIYE'
      Origin = 'BANKAISLEM.TEDIYE'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object HavaleGondermeIBQTAHSILAT: TFloatField
      DisplayLabel = 'Tahsilat'
      FieldName = 'TAHSILAT'
      Origin = 'BANKAISLEM.TAHSILAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object HavaleGondermeIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'BANKAISLEM.BAKIYE'
      DisplayFormat = '###,###'
    end
    object HavaleGondermeIBQDURUM: TIntegerField
      DisplayLabel = 'Durum'
      FieldName = 'DURUM'
      Origin = 'BANKAISLEM.DURUM'
    end
    object HavaleGondermeIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'BANKAISLEM.KASAKOD'
    end
    object HavaleGondermeIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'BANKAISLEM.CARINO'
    end
    object HavaleGondermeIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'BANKAISLEM.GELGITKOD'
      Size = 80
    end
    object HavaleGondermeIBQEVRAKNO: TIntegerField
      DisplayLabel = 'Evrak No'
      FieldName = 'EVRAKNO'
      Origin = 'BANKAISLEM.EVRAKNO'
    end
    object HavaleGondermeIBQBELGENO: TIntegerField
      DisplayLabel = 'Belge No'
      FieldName = 'BELGENO'
      Origin = 'BANKAISLEM.BELGENO'
    end
    object HavaleGondermeIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'BANKAISLEM.BAGLANTINO'
    end
    object HavaleGondermeIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'BANKAISLEM.PARABIRIMKOD'
    end
    object HavaleGondermeIBQMAKBUZNO: TIntegerField
      DisplayLabel = 'Makbuz No'
      FieldName = 'MAKBUZNO'
      Origin = 'BANKAISLEM.MAKBUZNO'
    end
    object HavaleGondermeIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'BANKAISLEM.KULLANKOD'
    end
    object HavaleGondermeIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'BANKAISLEM.PERSONELKOD'
    end
    object HavaleGondermeIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'BANKAISLEM.SISTEM'
    end
    object HavaleGondermeIBQD_TEDIYE: TFloatField
      DisplayLabel = 'D. Tediye'
      FieldName = 'D_TEDIYE'
      Origin = 'BANKAISLEM.D_TEDIYE'
      DisplayFormat = '###,###'
    end
    object HavaleGondermeIBQD_TAHSILAT: TFloatField
      DisplayLabel = 'D. Tahsilat'
      FieldName = 'D_TAHSILAT'
      Origin = 'BANKAISLEM.D_TAHSILAT'
      DisplayFormat = '###,###'
    end
    object HavaleGondermeIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'BANKAISLEM.CARIKURU'
      DisplayFormat = '###,###'
    end
    object HavaleGondermeIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'BANKAISLEM.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object HavaleGondermeIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'BANKAISLEM.CARIPARABIRIMKOD'
    end
    object HavaleGondermeIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'BANKAISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object HavaleGondermeIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'BANKAISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object HavaleGondermeIBQC_KASAADI: TIBStringField
      DisplayLabel = 'Kasa'
      FieldKind = fkInternalCalc
      FieldName = 'C_KASAADI'
      Origin = 'BANKAISLEM.C_KASAADI'
      ReadOnly = True
      Size = 25
    end
    object HavaleGondermeIBQC_HESAPADI: TIBStringField
      DisplayLabel = 'Banka Hesap'
      FieldKind = fkInternalCalc
      FieldName = 'C_HESAPADI'
      Origin = 'BANKAISLEM.C_HESAPADI'
      ReadOnly = True
      Size = 50
    end
    object HavaleGondermeIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'BANKAISLEM.KAPATMA'
    end
    object HavaleGondermeIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'BANKAISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object HavaleGondermeIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G.G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'BANKAISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object HavaleGondermeIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'BANKAISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object HavaleGondermeIBQC_DURUM: TIBStringField
      DisplayLabel = 'Durum'
      FieldKind = fkInternalCalc
      FieldName = 'C_DURUM'
      Origin = 'BANKAISLEM.C_DURUM'
      ReadOnly = True
      Size = 5
    end
    object HavaleGondermeIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'BANKAISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
  end
  object HavaleGondermeUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  BANKAKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  BANKAISLEMNO,'
      '  TARIH,'
      '  SAAT,'
      '  ACIKLAMA,'
      '  TEDIYE,'
      '  TAHSILAT,'
      '  BAKIYE,'
      '  DURUM,'
      '  KASAKOD,'
      '  CARINO,'
      '  GELGITKOD,'
      '  EVRAKNO,'
      '  BELGENO,'
      '  BAGLANTINO,'
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
      '  C_PARABIRIMI,'
      '  C_CARIPARABIRIM,'
      '  C_KASAADI,'
      '  C_HESAPADI,'
      '  KAPATMA,'
      '  C_CARIADI,'
      '  C_GGMERKEZI,'
      '  C_KULLANICIADI,'
      '  C_DURUM'
      'from BANKAISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update BANKAISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  BANKAKOD = :BANKAKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  BANKAISLEMNO = :BANKAISLEMNO,'
      '  TARIH = :TARIH,'
      '  SAAT = :SAAT,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  TEDIYE = :TEDIYE,'
      '  TAHSILAT = :TAHSILAT,'
      '  BAKIYE = :BAKIYE,'
      '  DURUM = :DURUM,'
      '  KASAKOD = :KASAKOD,'
      '  CARINO = :CARINO,'
      '  GELGITKOD = :GELGITKOD,'
      '  EVRAKNO = :EVRAKNO,'
      '  BELGENO = :BELGENO,'
      '  BAGLANTINO = :BAGLANTINO,'
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
      '  KAPATMA = :KAPATMA'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into BANKAISLEM'
      
        '  (ISLEMKOD, CARIKOD, BANKAKOD, ISLEMTUR, BANKAISLEMNO, TARIH, S' +
        'AAT, ACIKLAMA, '
      
        '   TEDIYE, TAHSILAT, BAKIYE, DURUM, KASAKOD, CARINO, GELGITKOD, ' +
        'EVRAKNO, '
      
        '   BELGENO, BAGLANTINO, PARABIRIMKOD, MAKBUZNO, KULLANKOD, PERSO' +
        'NELKOD, '
      
        '   SISTEM, D_TEDIYE, D_TAHSILAT, CARIKURU, ISLEMKURU, CARIPARABI' +
        'RIMKOD, '
      '   KAPATMA)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :BANKAKOD, :ISLEMTUR, :BANKAISLEMNO, :TA' +
        'RIH, :SAAT, '
      
        '   :ACIKLAMA, :TEDIYE, :TAHSILAT, :BAKIYE, :DURUM, :KASAKOD, :CA' +
        'RINO, :GELGITKOD, '
      
        '   :EVRAKNO, :BELGENO, :BAGLANTINO, :PARABIRIMKOD, :MAKBUZNO, :K' +
        'ULLANKOD, '
      
        '   :PERSONELKOD, :SISTEM, :D_TEDIYE, :D_TAHSILAT, :CARIKURU, :IS' +
        'LEMKURU, '
      '   :CARIPARABIRIMKOD, :KAPATMA)')
    DeleteSQL.Strings = (
      'delete from BANKAISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 136
    Top = 264
  end
  object HavaleGondermeDS: TDataSource
    DataSet = HavaleGondermeIBQ
    Left = 224
    Top = 264
  end
  object VirmanGonderenIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = VirmanGonderenIBQAfterDelete
    AfterPost = VirmanGonderenIBQAfterPost
    OnNewRecord = VirmanGonderenIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from BANKAISLEM'
      'Where ISLEMTURKOD=23 AND SISTEM<>2'
      'ORDER BY TARIH, ISLEMKOD'
      '')
    UpdateObject = VirmanGonderenUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'BANKAISLEM'
    Left = 40
    Top = 376
    object VirmanGonderenIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'BANKAISLEM.ISLEMKOD'
      Required = True
    end
    object VirmanGonderenIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'BANKAISLEM.CARIKOD'
    end
    object VirmanGonderenIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'BANKAISLEM.BANKAKOD'
    end
    object VirmanGonderenIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'BANKAISLEM.ISLEMTUR'
      Size = 40
    end
    object VirmanGonderenIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'BANKAISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object VirmanGonderenIBQBANKAISLEMNO: TIntegerField
      FieldName = 'BANKAISLEMNO'
      Origin = 'BANKAISLEM.BANKAISLEMNO'
    end
    object VirmanGonderenIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'BANKAISLEM.TARIH'
    end
    object VirmanGonderenIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'BANKAISLEM.SAAT'
    end
    object VirmanGonderenIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'BANKAISLEM.ACIKLAMA'
      Size = 80
    end
    object VirmanGonderenIBQTEDIYE: TFloatField
      FieldName = 'TEDIYE'
      Origin = 'BANKAISLEM.TEDIYE'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object VirmanGonderenIBQTAHSILAT: TFloatField
      FieldName = 'TAHSILAT'
      Origin = 'BANKAISLEM.TAHSILAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object VirmanGonderenIBQBAKIYE: TFloatField
      FieldName = 'BAKIYE'
      Origin = 'BANKAISLEM.BAKIYE'
    end
    object VirmanGonderenIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'BANKAISLEM.DURUM'
    end
    object VirmanGonderenIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'BANKAISLEM.KASAKOD'
    end
    object VirmanGonderenIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'BANKAISLEM.CARINO'
    end
    object VirmanGonderenIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'BANKAISLEM.GELGITKOD'
      Size = 80
    end
    object VirmanGonderenIBQEVRAKNO: TIntegerField
      FieldName = 'EVRAKNO'
      Origin = 'BANKAISLEM.EVRAKNO'
    end
    object VirmanGonderenIBQBELGENO: TIntegerField
      FieldName = 'BELGENO'
      Origin = 'BANKAISLEM.BELGENO'
    end
    object VirmanGonderenIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'BANKAISLEM.BAGLANTINO'
    end
    object VirmanGonderenIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'BANKAISLEM.PARABIRIMKOD'
    end
    object VirmanGonderenIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'BANKAISLEM.MAKBUZNO'
    end
    object VirmanGonderenIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'BANKAISLEM.KULLANKOD'
    end
    object VirmanGonderenIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'BANKAISLEM.PERSONELKOD'
    end
    object VirmanGonderenIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'BANKAISLEM.SISTEM'
    end
    object VirmanGonderenIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'BANKAISLEM.D_TEDIYE'
    end
    object VirmanGonderenIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'BANKAISLEM.D_TAHSILAT'
    end
    object VirmanGonderenIBQCARIKURU: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'BANKAISLEM.CARIKURU'
    end
    object VirmanGonderenIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'BANKAISLEM.ISLEMKURU'
    end
    object VirmanGonderenIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'BANKAISLEM.CARIPARABIRIMKOD'
    end
    object VirmanGonderenIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'BANKAISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object VirmanGonderenIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'BANKAISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object VirmanGonderenIBQC_KASAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KASAADI'
      Origin = 'BANKAISLEM.C_KASAADI'
      ReadOnly = True
      Size = 25
    end
    object VirmanGonderenIBQC_HESAPADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_HESAPADI'
      Origin = 'BANKAISLEM.C_HESAPADI'
      ReadOnly = True
      Size = 50
    end
    object VirmanGonderenIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'BANKAISLEM.KAPATMA'
    end
    object VirmanGonderenIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'BANKAISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object VirmanGonderenIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'BANKAISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object VirmanGonderenIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'BANKAISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object VirmanGonderenIBQC_DURUM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_DURUM'
      Origin = 'BANKAISLEM.C_DURUM'
      ReadOnly = True
      Size = 5
    end
    object VirmanGonderenIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'BANKAISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object VirmanGonderenIBQVIRBANKAKOD: TIntegerField
      FieldName = 'VIRBANKAKOD'
      Origin = 'BANKAISLEM.VIRBANKAKOD'
    end
    object VirmanGonderenIBQVIRPARABIRKOD: TIntegerField
      FieldName = 'VIRPARABIRKOD'
      Origin = 'BANKAISLEM.VIRPARABIRKOD'
    end
    object VirmanGonderenIBQVIRKURU: TFloatField
      FieldName = 'VIRKURU'
      Origin = 'BANKAISLEM.VIRKURU'
    end
    object VirmanGonderenIBQC_VIRMAN: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_VIRMAN'
      Origin = 'BANKAISLEM.C_VIRMAN'
      ReadOnly = True
    end
    object VirmanGonderenIBQC_ALANBANKA_PB: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_ALANBANKA_PB'
      Origin = 'BANKAISLEM.C_ALANBANKA_PB'
      ReadOnly = True
      Size = 10
    end
    object VirmanGonderenIBQC_ALANBANKA: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_ALANBANKA'
      Origin = 'BANKAISLEM.C_ALANBANKA'
      ReadOnly = True
      Size = 30
    end
  end
  object VirmanGonderenUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  BANKAKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  BANKAISLEMNO,'
      '  TARIH,'
      '  SAAT,'
      '  ACIKLAMA,'
      '  TEDIYE,'
      '  TAHSILAT,'
      '  BAKIYE,'
      '  DURUM,'
      '  KASAKOD,'
      '  CARINO,'
      '  GELGITKOD,'
      '  EVRAKNO,'
      '  BELGENO,'
      '  BAGLANTINO,'
      '  PARABIRIMKOD,'
      '  MAKBUZNO,'
      '  KULLANKOD,'
      '  PERSONELKOD,'
      '  D_TEDIYE,'
      '  D_TAHSILAT,'
      '  CARIKURU,'
      '  ISLEMKURU,'
      '  CARIPARABIRIMKOD,'
      '  C_PARABIRIMI,'
      '  C_CARIPARABIRIM,'
      '  C_KASAADI,'
      '  C_HESAPADI,'
      '  KAPATMA,'
      '  C_CARIADI,'
      '  C_GGMERKEZI,'
      '  SISTEM,'
      '  C_KULLANICIADI,'
      '  C_DURUM,'
      '  C_PERSONEL,'
      '  VIRBANKAKOD,'
      '  VIRPARABIRKOD,'
      '  VIRKURU,'
      '  C_VIRMAN,'
      '  C_ALANBANKA_PB,'
      '  C_ALANBANKA'
      'from BANKAISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update BANKAISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  BANKAKOD = :BANKAKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  BANKAISLEMNO = :BANKAISLEMNO,'
      '  TARIH = :TARIH,'
      '  SAAT = :SAAT,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  TEDIYE = :TEDIYE,'
      '  TAHSILAT = :TAHSILAT,'
      '  BAKIYE = :BAKIYE,'
      '  DURUM = :DURUM,'
      '  KASAKOD = :KASAKOD,'
      '  CARINO = :CARINO,'
      '  GELGITKOD = :GELGITKOD,'
      '  EVRAKNO = :EVRAKNO,'
      '  BELGENO = :BELGENO,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  KULLANKOD = :KULLANKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  D_TEDIYE = :D_TEDIYE,'
      '  D_TAHSILAT = :D_TAHSILAT,'
      '  CARIKURU = :CARIKURU,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  KAPATMA = :KAPATMA,'
      '  SISTEM = :SISTEM,'
      '  VIRBANKAKOD = :VIRBANKAKOD,'
      '  VIRPARABIRKOD = :VIRPARABIRKOD,'
      '  VIRKURU = :VIRKURU'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into BANKAISLEM'
      
        '  (ISLEMKOD, CARIKOD, BANKAKOD, ISLEMTUR, BANKAISLEMNO, TARIH, S' +
        'AAT, ACIKLAMA, '
      
        '   TEDIYE, TAHSILAT, BAKIYE, DURUM, KASAKOD, CARINO, GELGITKOD, ' +
        'EVRAKNO, '
      
        '   BELGENO, BAGLANTINO, PARABIRIMKOD, MAKBUZNO, KULLANKOD, PERSO' +
        'NELKOD, '
      
        '   D_TEDIYE, D_TAHSILAT, CARIKURU, ISLEMKURU, CARIPARABIRIMKOD, ' +
        'KAPATMA, '
      '   SISTEM, VIRBANKAKOD, VIRPARABIRKOD, VIRKURU)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :BANKAKOD, :ISLEMTUR, :BANKAISLEMNO, :TA' +
        'RIH, :SAAT, '
      
        '   :ACIKLAMA, :TEDIYE, :TAHSILAT, :BAKIYE, :DURUM, :KASAKOD, :CA' +
        'RINO, :GELGITKOD, '
      
        '   :EVRAKNO, :BELGENO, :BAGLANTINO, :PARABIRIMKOD, :MAKBUZNO, :K' +
        'ULLANKOD, '
      
        '   :PERSONELKOD, :D_TEDIYE, :D_TAHSILAT, :CARIKURU, :ISLEMKURU, ' +
        ':CARIPARABIRIMKOD, '
      '   :KAPATMA, :SISTEM, :VIRBANKAKOD, :VIRPARABIRKOD, :VIRKURU)')
    DeleteSQL.Strings = (
      'delete from BANKAISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 136
    Top = 376
  end
  object VirmanGonderenDS: TDataSource
    DataSet = VirmanGonderenIBQ
    Left = 224
    Top = 376
  end
  object BankaDevirIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = BankaDevirIBQAfterPost
    OnNewRecord = BankaDevirIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from BANKAISLEM'
      'Where ISLEMTURKOD=24 AND SISTEM<>2'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = BankaDevirSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'BANKAISLEM'
    Left = 40
    Top = 320
    object BankaDevirIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'BANKAISLEM.ISLEMKOD'
      Required = True
    end
    object BankaDevirIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'BANKAISLEM.CARIKOD'
    end
    object BankaDevirIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'BANKAISLEM.BANKAKOD'
    end
    object BankaDevirIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'BANKAISLEM.ISLEMTUR'
      Size = 40
    end
    object BankaDevirIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'BANKAISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object BankaDevirIBQBANKAISLEMNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'BANKAISLEMNO'
      Origin = 'BANKAISLEM.BANKAISLEMNO'
    end
    object BankaDevirIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'BANKAISLEM.TARIH'
    end
    object BankaDevirIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'BANKAISLEM.SAAT'
    end
    object BankaDevirIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'BANKAISLEM.ACIKLAMA'
      Size = 80
    end
    object BankaDevirIBQTEDIYE: TFloatField
      DisplayLabel = 'Tediye'
      FieldName = 'TEDIYE'
      Origin = 'BANKAISLEM.TEDIYE'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object BankaDevirIBQTAHSILAT: TFloatField
      DisplayLabel = 'Tahsilat'
      FieldName = 'TAHSILAT'
      Origin = 'BANKAISLEM.TAHSILAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object BankaDevirIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'BANKAISLEM.BAKIYE'
      DisplayFormat = '###,###'
    end
    object BankaDevirIBQDURUM: TIntegerField
      DisplayLabel = 'Durum'
      FieldName = 'DURUM'
      Origin = 'BANKAISLEM.DURUM'
    end
    object BankaDevirIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'BANKAISLEM.KASAKOD'
    end
    object BankaDevirIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'BANKAISLEM.CARINO'
    end
    object BankaDevirIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'BANKAISLEM.GELGITKOD'
      Size = 80
    end
    object BankaDevirIBQEVRAKNO: TIntegerField
      DisplayLabel = 'Evrak No'
      FieldName = 'EVRAKNO'
      Origin = 'BANKAISLEM.EVRAKNO'
    end
    object BankaDevirIBQBELGENO: TIntegerField
      DisplayLabel = 'Belge No'
      FieldName = 'BELGENO'
      Origin = 'BANKAISLEM.BELGENO'
    end
    object BankaDevirIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'BANKAISLEM.BAGLANTINO'
    end
    object BankaDevirIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'BANKAISLEM.PARABIRIMKOD'
    end
    object BankaDevirIBQMAKBUZNO: TIntegerField
      DisplayLabel = 'Makbuz No'
      FieldName = 'MAKBUZNO'
      Origin = 'BANKAISLEM.MAKBUZNO'
    end
    object BankaDevirIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'BANKAISLEM.KULLANKOD'
    end
    object BankaDevirIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'BANKAISLEM.PERSONELKOD'
    end
    object BankaDevirIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'BANKAISLEM.SISTEM'
    end
    object BankaDevirIBQD_TEDIYE: TFloatField
      DisplayLabel = 'D. Tediye'
      FieldName = 'D_TEDIYE'
      Origin = 'BANKAISLEM.D_TEDIYE'
      DisplayFormat = '###,###'
    end
    object BankaDevirIBQD_TAHSILAT: TFloatField
      DisplayLabel = 'D. Tahsilat'
      FieldName = 'D_TAHSILAT'
      Origin = 'BANKAISLEM.D_TAHSILAT'
      DisplayFormat = '###,###'
    end
    object BankaDevirIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'BANKAISLEM.CARIKURU'
      DisplayFormat = '###,###'
    end
    object BankaDevirIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'BANKAISLEM.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object BankaDevirIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'BANKAISLEM.CARIPARABIRIMKOD'
    end
    object BankaDevirIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'BANKAISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object BankaDevirIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'BANKAISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object BankaDevirIBQC_KASAADI: TIBStringField
      DisplayLabel = 'Kasa'
      FieldKind = fkInternalCalc
      FieldName = 'C_KASAADI'
      Origin = 'BANKAISLEM.C_KASAADI'
      ReadOnly = True
      Size = 25
    end
    object BankaDevirIBQC_HESAPADI: TIBStringField
      DisplayLabel = 'Banka Hesap'
      FieldKind = fkInternalCalc
      FieldName = 'C_HESAPADI'
      Origin = 'BANKAISLEM.C_HESAPADI'
      ReadOnly = True
      Size = 50
    end
    object BankaDevirIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'BANKAISLEM.KAPATMA'
    end
    object BankaDevirIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'BANKAISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object BankaDevirIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G.G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'BANKAISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object BankaDevirIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'BANKAISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object BankaDevirIBQC_DURUM: TIBStringField
      DisplayLabel = 'Durum'
      FieldKind = fkInternalCalc
      FieldName = 'C_DURUM'
      Origin = 'BANKAISLEM.C_DURUM'
      ReadOnly = True
      Size = 5
    end
    object BankaDevirIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'BANKAISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
  end
  object BankaDevirSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  BANKAKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  BANKAISLEMNO,'
      '  TARIH,'
      '  SAAT,'
      '  ACIKLAMA,'
      '  TEDIYE,'
      '  TAHSILAT,'
      '  BAKIYE,'
      '  DURUM,'
      '  KASAKOD,'
      '  CARINO,'
      '  GELGITKOD,'
      '  EVRAKNO,'
      '  BELGENO,'
      '  BAGLANTINO,'
      '  PARABIRIMKOD,'
      '  MAKBUZNO,'
      '  KULLANKOD,'
      '  PERSONELKOD,'
      '  D_TEDIYE,'
      '  D_TAHSILAT,'
      '  CARIKURU,'
      '  ISLEMKURU,'
      '  CARIPARABIRIMKOD,'
      '  C_PARABIRIMI,'
      '  C_CARIPARABIRIM,'
      '  C_KASAADI,'
      '  C_HESAPADI,'
      '  KAPATMA,'
      '  C_CARIADI,'
      '  C_GGMERKEZI,'
      '  SISTEM,'
      '  C_KULLANICIADI,'
      '  C_DURUM'
      'from BANKAISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update BANKAISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  BANKAKOD = :BANKAKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  BANKAISLEMNO = :BANKAISLEMNO,'
      '  TARIH = :TARIH,'
      '  SAAT = :SAAT,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  TEDIYE = :TEDIYE,'
      '  TAHSILAT = :TAHSILAT,'
      '  BAKIYE = :BAKIYE,'
      '  DURUM = :DURUM,'
      '  KASAKOD = :KASAKOD,'
      '  CARINO = :CARINO,'
      '  GELGITKOD = :GELGITKOD,'
      '  EVRAKNO = :EVRAKNO,'
      '  BELGENO = :BELGENO,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  KULLANKOD = :KULLANKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  D_TEDIYE = :D_TEDIYE,'
      '  D_TAHSILAT = :D_TAHSILAT,'
      '  CARIKURU = :CARIKURU,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  SISTEM = :SISTEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into BANKAISLEM'
      
        '  (ISLEMKOD, CARIKOD, BANKAKOD, ISLEMTUR, BANKAISLEMNO, TARIH, S' +
        'AAT, ACIKLAMA, '
      
        '   TEDIYE, TAHSILAT, BAKIYE, DURUM, KASAKOD, CARINO, GELGITKOD, ' +
        'EVRAKNO, '
      
        '   BELGENO, BAGLANTINO, PARABIRIMKOD, MAKBUZNO, KULLANKOD, PERSO' +
        'NELKOD, '
      
        '   D_TEDIYE, D_TAHSILAT, CARIKURU, ISLEMKURU, CARIPARABIRIMKOD, ' +
        'SISTEM)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :BANKAKOD, :ISLEMTUR, :BANKAISLEMNO, :TA' +
        'RIH, :SAAT, '
      
        '   :ACIKLAMA, :TEDIYE, :TAHSILAT, :BAKIYE, :DURUM, :KASAKOD, :CA' +
        'RINO, :GELGITKOD, '
      
        '   :EVRAKNO, :BELGENO, :BAGLANTINO, :PARABIRIMKOD, :MAKBUZNO, :K' +
        'ULLANKOD, '
      
        '   :PERSONELKOD, :D_TEDIYE, :D_TAHSILAT, :CARIKURU, :ISLEMKURU, ' +
        ':CARIPARABIRIMKOD, '
      '   :SISTEM)')
    DeleteSQL.Strings = (
      'delete from BANKAISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 136
    Top = 320
  end
  object BankaDevirDS: TDataSource
    DataSet = BankaDevirIBQ
    Left = 224
    Top = 320
  end
  object BankaislemlistIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = BankaDS
    SQL.Strings = (
      'select * from BANKAISLEM'
      'Where SISTEM<>2'
      'ORDER BY TARIH, ISLEMKOD')
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'BANKAISLEM'
    Left = 344
    Top = 16
    object BankaislemlistIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'BANKAISLEM.ISLEMKOD'
      Required = True
    end
    object BankaislemlistIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'BANKAISLEM.CARIKOD'
    end
    object BankaislemlistIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'BANKAISLEM.BANKAKOD'
    end
    object BankaislemlistIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'BANKAISLEM.ISLEMTUR'
      Size = 40
    end
    object BankaislemlistIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'BANKAISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object BankaislemlistIBQBANKAISLEMNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'BANKAISLEMNO'
      Origin = 'BANKAISLEM.BANKAISLEMNO'
    end
    object BankaislemlistIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'BANKAISLEM.TARIH'
    end
    object BankaislemlistIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'BANKAISLEM.SAAT'
    end
    object BankaislemlistIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'BANKAISLEM.ACIKLAMA'
      Size = 80
    end
    object BankaislemlistIBQTEDIYE: TFloatField
      DisplayLabel = 'Tediye'
      FieldName = 'TEDIYE'
      Origin = 'BANKAISLEM.TEDIYE'
      DisplayFormat = '###,###'
    end
    object BankaislemlistIBQTAHSILAT: TFloatField
      DisplayLabel = 'Tahsilat'
      FieldName = 'TAHSILAT'
      Origin = 'BANKAISLEM.TAHSILAT'
      DisplayFormat = '###,###'
    end
    object BankaislemlistIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'BANKAISLEM.BAKIYE'
      DisplayFormat = '###,###'
    end
    object BankaislemlistIBQDURUM: TIntegerField
      DisplayLabel = 'Durum'
      FieldName = 'DURUM'
      Origin = 'BANKAISLEM.DURUM'
    end
    object BankaislemlistIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'BANKAISLEM.KASAKOD'
    end
    object BankaislemlistIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'BANKAISLEM.CARINO'
    end
    object BankaislemlistIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'BANKAISLEM.GELGITKOD'
      Size = 80
    end
    object BankaislemlistIBQEVRAKNO: TIntegerField
      DisplayLabel = 'Evrak No'
      FieldName = 'EVRAKNO'
      Origin = 'BANKAISLEM.EVRAKNO'
    end
    object BankaislemlistIBQBELGENO: TIntegerField
      DisplayLabel = 'Belge No'
      FieldName = 'BELGENO'
      Origin = 'BANKAISLEM.BELGENO'
    end
    object BankaislemlistIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'BANKAISLEM.BAGLANTINO'
    end
    object BankaislemlistIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'BANKAISLEM.PARABIRIMKOD'
    end
    object BankaislemlistIBQMAKBUZNO: TIntegerField
      DisplayLabel = 'Makbuz No'
      FieldName = 'MAKBUZNO'
      Origin = 'BANKAISLEM.MAKBUZNO'
    end
    object BankaislemlistIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'BANKAISLEM.KULLANKOD'
    end
    object BankaislemlistIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'BANKAISLEM.PERSONELKOD'
    end
    object BankaislemlistIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'BANKAISLEM.SISTEM'
    end
    object BankaislemlistIBQD_TEDIYE: TFloatField
      DisplayLabel = 'D. Tediye'
      FieldName = 'D_TEDIYE'
      Origin = 'BANKAISLEM.D_TEDIYE'
      DisplayFormat = '###,###'
    end
    object BankaislemlistIBQD_TAHSILAT: TFloatField
      DisplayLabel = 'D. Tahsilat'
      FieldName = 'D_TAHSILAT'
      Origin = 'BANKAISLEM.D_TAHSILAT'
      DisplayFormat = '###,###'
    end
    object BankaislemlistIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'BANKAISLEM.CARIKURU'
      DisplayFormat = '###,###'
    end
    object BankaislemlistIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'BANKAISLEM.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object BankaislemlistIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'BANKAISLEM.CARIPARABIRIMKOD'
    end
    object BankaislemlistIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'BANKAISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object BankaislemlistIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'BANKAISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object BankaislemlistIBQC_KASAADI: TIBStringField
      DisplayLabel = 'Kasa'
      FieldKind = fkInternalCalc
      FieldName = 'C_KASAADI'
      Origin = 'BANKAISLEM.C_KASAADI'
      ReadOnly = True
      Size = 25
    end
    object BankaislemlistIBQC_HESAPADI: TIBStringField
      DisplayLabel = 'Banka Hesap'
      FieldKind = fkInternalCalc
      FieldName = 'C_HESAPADI'
      Origin = 'BANKAISLEM.C_HESAPADI'
      ReadOnly = True
      Size = 50
    end
    object BankaislemlistIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'BANKAISLEM.KAPATMA'
    end
    object BankaislemlistIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'BANKAISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object BankaislemlistIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G.G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'BANKAISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object BankaislemlistIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'BANKAISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object BankaislemlistIBQC_DURUM: TIBStringField
      DisplayLabel = 'Durum'
      FieldKind = fkInternalCalc
      FieldName = 'C_DURUM'
      Origin = 'BANKAISLEM.C_DURUM'
      ReadOnly = True
      Size = 5
    end
  end
  object BankaislemlistDS: TDataSource
    DataSet = BankaislemlistIBQ
    Left = 464
    Top = 16
  end
end
