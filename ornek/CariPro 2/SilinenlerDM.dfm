object DMSilinenler: TDMSilinenler
  OldCreateOrder = False
  Left = 221
  Top = 71
  Height = 644
  Width = 570
  object KasaHareketIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from KASAISLEM'
      'Where SISTEM=2'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = KasaHareketSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'KASAISLEM'
    Left = 48
    Top = 184
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
      FieldName = 'TARIH'
      Origin = 'KASAISLEM.TARIH'
    end
    object KasaHareketIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'KASAISLEM.SAAT'
    end
    object KasaHareketIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'KASAISLEM.ACIKLAMA'
      Size = 80
    end
    object KasaHareketIBQTEDIYE: TFloatField
      FieldName = 'TEDIYE'
      Origin = 'KASAISLEM.TEDIYE'
    end
    object KasaHareketIBQTAHSILAT: TFloatField
      FieldName = 'TAHSILAT'
      Origin = 'KASAISLEM.TAHSILAT'
    end
    object KasaHareketIBQBAKIYE: TFloatField
      FieldName = 'BAKIYE'
      Origin = 'KASAISLEM.BAKIYE'
    end
    object KasaHareketIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'KASAISLEM.DURUM'
    end
    object KasaHareketIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'KASAISLEM.BANKAKOD'
    end
    object KasaHareketIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'KASAISLEM.CARINO'
    end
    object KasaHareketIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'KASAISLEM.GELGITKOD'
      Size = 80
    end
    object KasaHareketIBQEVRAKNO: TIntegerField
      FieldName = 'EVRAKNO'
      Origin = 'KASAISLEM.EVRAKNO'
    end
    object KasaHareketIBQBELGENO: TIntegerField
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
      FieldName = 'D_TEDIYE'
      Origin = 'KASAISLEM.D_TEDIYE'
    end
    object KasaHareketIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'KASAISLEM.D_TAHSILAT'
    end
    object KasaHareketIBQCARIKURU: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'KASAISLEM.CARIKURU'
    end
    object KasaHareketIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'KASAISLEM.ISLEMKURU'
    end
    object KasaHareketIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'KASAISLEM.CARIPARABIRIMKOD'
    end
    object KasaHareketIBQKASAISLEMNO: TIntegerField
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
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'KASAISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object KasaHareketIBQC_KASAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KASAADI'
      Origin = 'KASAISLEM.C_KASAADI'
      ReadOnly = True
      Size = 25
    end
    object KasaHareketIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'KASAISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object KasaHareketIBQC_GGMERKEZI: TIBStringField
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
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'KASAISLEM.C_KULLANICIADI'
      ReadOnly = True
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
    Left = 144
    Top = 184
  end
  object KasaHareketDS: TDataSource
    DataSet = KasaHareketIBQ
    Left = 232
    Top = 184
  end
  object AlisSatisIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from  ALISSATIS'
      'Where (ISLEMTURKOD=1 OR ISLEMTURKOD=2) AND SISTEM=2'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = AlisSatisUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'ALISSATIS'
    Left = 48
    Top = 72
    object AlisSatisIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'ALISSATIS.ISLEMKOD'
      Required = True
    end
    object AlisSatisIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'ALISSATIS.CARIKOD'
    end
    object AlisSatisIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'ALISSATIS.ISLEMTUR'
      Size = 10
    end
    object AlisSatisIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'ALISSATIS.ISLEMTURKOD'
      ReadOnly = True
    end
    object AlisSatisIBQALISSATISNO: TIntegerField
      FieldName = 'ALISSATISNO'
      Origin = 'ALISSATIS.ALISSATISNO'
    end
    object AlisSatisIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'ALISSATIS.TARIH'
    end
    object AlisSatisIBQIRSALIYETARIH: TDateField
      FieldName = 'IRSALIYETARIH'
      Origin = 'ALISSATIS.IRSALIYETARIH'
    end
    object AlisSatisIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'ALISSATIS.SAAT'
    end
    object AlisSatisIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'ALISSATIS.ACIKLAMA'
      Size = 80
    end
    object AlisSatisIBQALISTUTAR: TFloatField
      FieldName = 'ALISTUTAR'
      Origin = 'ALISSATIS.ALISTUTAR'
    end
    object AlisSatisIBQSATISTUTAR: TFloatField
      FieldName = 'SATISTUTAR'
      Origin = 'ALISSATIS.SATISTUTAR'
    end
    object AlisSatisIBQALISMATRAH: TFloatField
      FieldName = 'ALISMATRAH'
      Origin = 'ALISSATIS.ALISMATRAH'
    end
    object AlisSatisIBQALISKDVTUTAR: TFloatField
      FieldName = 'ALISKDVTUTAR'
      Origin = 'ALISSATIS.ALISKDVTUTAR'
    end
    object AlisSatisIBQSATISMATRAH: TFloatField
      FieldName = 'SATISMATRAH'
      Origin = 'ALISSATIS.SATISMATRAH'
    end
    object AlisSatisIBQSATISKDVTUTAR: TFloatField
      FieldName = 'SATISKDVTUTAR'
      Origin = 'ALISSATIS.SATISKDVTUTAR'
    end
    object AlisSatisIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'ALISSATIS.D_TEDIYE'
    end
    object AlisSatisIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'ALISSATIS.D_TAHSILAT'
    end
    object AlisSatisIBQCARIKURU: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'ALISSATIS.CARIKURU'
    end
    object AlisSatisIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'ALISSATIS.ISLEMKURU'
    end
    object AlisSatisIBQTAHSILATMATRAH: TFloatField
      FieldName = 'TAHSILATMATRAH'
      Origin = 'ALISSATIS.TAHSILATMATRAH'
    end
    object AlisSatisIBQTEDIYEMATRAH: TFloatField
      FieldName = 'TEDIYEMATRAH'
      Origin = 'ALISSATIS.TEDIYEMATRAH'
    end
    object AlisSatisIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'ALISSATIS.KAPATMA'
    end
    object AlisSatisIBQVADE: TDateField
      FieldName = 'VADE'
      Origin = 'ALISSATIS.VADE'
    end
    object AlisSatisIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'ALISSATIS.CARINO'
    end
    object AlisSatisIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'ALISSATIS.GELGITKOD'
      Size = 80
    end
    object AlisSatisIBQEVRAKNO: TIntegerField
      FieldName = 'EVRAKNO'
      Origin = 'ALISSATIS.EVRAKNO'
    end
    object AlisSatisIBQBELGENO: TIntegerField
      FieldName = 'BELGENO'
      Origin = 'ALISSATIS.BELGENO'
    end
    object AlisSatisIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'ALISSATIS.BAGLANTINO'
    end
    object AlisSatisIBQTAHSILKOD: TIntegerField
      FieldName = 'TAHSILKOD'
      Origin = 'ALISSATIS.TAHSILKOD'
    end
    object AlisSatisIBQBODROKOD: TIntegerField
      FieldName = 'BODROKOD'
      Origin = 'ALISSATIS.BODROKOD'
    end
    object AlisSatisIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'ALISSATIS.CARIHESAPILISKI'
    end
    object AlisSatisIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'ALISSATIS.PARABIRIMKOD'
    end
    object AlisSatisIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'ALISSATIS.STOKYERIKOD'
    end
    object AlisSatisIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'ALISSATIS.MAKBUZNO'
    end
    object AlisSatisIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'ALISSATIS.BILGIKOD'
    end
    object AlisSatisIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'ALISSATIS.KULLANKOD'
    end
    object AlisSatisIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'ALISSATIS.PERSONELKOD'
    end
    object AlisSatisIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'ALISSATIS.SISTEM'
    end
    object AlisSatisIBQTAHSILEDILEN: TFloatField
      FieldName = 'TAHSILEDILEN'
      Origin = 'ALISSATIS.TAHSILEDILEN'
    end
    object AlisSatisIBQODENEN: TFloatField
      FieldName = 'ODENEN'
      Origin = 'ALISSATIS.ODENEN'
    end
    object AlisSatisIBQKALAN: TFloatField
      FieldName = 'KALAN'
      Origin = 'ALISSATIS.KALAN'
    end
    object AlisSatisIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'ALISSATIS.CARIPARABIRIMKOD'
    end
    object AlisSatisIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'ALISSATIS.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object AlisSatisIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'ALISSATIS.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object AlisSatisIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'ALISSATIS.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object AlisSatisIBQC_STOKYERI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'ALISSATIS.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object AlisSatisIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'ALISSATIS.C_KULLANICIADI'
      ReadOnly = True
    end
    object AlisSatisIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'ALISSATIS.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object AlisSatisIBQFATURATARIH: TDateField
      FieldName = 'FATURATARIH'
      Origin = 'ALISSATIS.FATURATARIH'
    end
    object AlisSatisIBQKDVSECIM: TIBStringField
      FieldName = 'KDVSECIM'
      Origin = 'ALISSATIS.KDVSECIM'
      Size = 5
    end
    object AlisSatisIBQD_ALISTUTAR: TFloatField
      FieldName = 'D_ALISTUTAR'
      Origin = 'ALISSATIS.D_ALISTUTAR'
    end
    object AlisSatisIBQD_ALISKDVTUTAR: TFloatField
      FieldName = 'D_ALISKDVTUTAR'
      Origin = 'ALISSATIS.D_ALISKDVTUTAR'
    end
    object AlisSatisIBQD_ALISMATRAH: TFloatField
      FieldName = 'D_ALISMATRAH'
      Origin = 'ALISSATIS.D_ALISMATRAH'
    end
    object AlisSatisIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'ALISSATIS.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object AlisSatisIBQALTISKONTO: TFloatField
      FieldName = 'ALTISKONTO'
      Origin = 'ALISSATIS.ALTISKONTO'
    end
    object AlisSatisIBQD_SATISTUTAR: TFloatField
      FieldName = 'D_SATISTUTAR'
      Origin = 'ALISSATIS.D_SATISTUTAR'
    end
    object AlisSatisIBQD_SATISKDVTUTAR: TFloatField
      FieldName = 'D_SATISKDVTUTAR'
      Origin = 'ALISSATIS.D_SATISKDVTUTAR'
    end
    object AlisSatisIBQD_SATISMATRAH: TFloatField
      FieldName = 'D_SATISMATRAH'
      Origin = 'ALISSATIS.D_SATISMATRAH'
    end
    object AlisSatisIBQIRSALIYENO: TIntegerField
      FieldName = 'IRSALIYENO'
      Origin = 'ALISSATIS.IRSALIYENO'
    end
    object AlisSatisIBQEVRAKTARIH: TDateField
      FieldName = 'EVRAKTARIH'
      Origin = 'ALISSATIS.EVRAKTARIH'
    end
  end
  object AlisSatisUSQL: TIBUpdateSQL
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
    Left = 144
    Top = 72
  end
  object AlisSatisDS: TDataSource
    DataSet = AlisSatisIBQ
    Left = 232
    Top = 72
  end
  object AlisBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = AlisSatisDS
    SQL.Strings = (
      'select * from ALISSATISBODRO'
      'where ISLEMKOD=:ISLEMKOD'
      'ORDER BY BODROKOD')
    UpdateObject = AlisBodroUSQL
    GeneratorField.Field = 'BODROKOD'
    GeneratorField.Generator = 'ALISSATISBODRO'
    Left = 48
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object AlisBodroIBQBODROKOD: TIntegerField
      FieldName = 'BODROKOD'
      Origin = 'ALISSATISBODRO.BODROKOD'
      Required = True
    end
    object AlisBodroIBQSIRANO: TIntegerField
      DisplayLabel = 'S'#305'ra'
      FieldName = 'SIRANO'
      Origin = 'ALISSATISBODRO.SIRANO'
    end
    object AlisBodroIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'ALISSATISBODRO.ISLEMTUR'
      Size = 40
    end
    object AlisBodroIBQC_ISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_ISLEMTURKOD'
      Origin = 'ALISSATISBODRO.C_ISLEMTURKOD'
      ReadOnly = True
    end
    object AlisBodroIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'ALISSATISBODRO.CARIKOD'
    end
    object AlisBodroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'ALISSATISBODRO.PARABIRIMKOD'
    end
    object AlisBodroIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'ALISSATISBODRO.TARIH'
    end
    object AlisBodroIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'ALISSATISBODRO.STOKKOD'
    end
    object AlisBodroIBQSTOKNO: TIntegerField
      DisplayLabel = 'Stok No'
      FieldName = 'STOKNO'
      Origin = 'ALISSATISBODRO.STOKNO'
    end
    object AlisBodroIBQBARKOD: TIBStringField
      DisplayLabel = 'Barkod'
      FieldName = 'BARKOD'
      Origin = 'ALISSATISBODRO.BARKOD'
      Size = 25
    end
    object AlisBodroIBQSTOKADI: TIBStringField
      DisplayLabel = 'Stok Ad'#305
      FieldName = 'STOKADI'
      Origin = 'ALISSATISBODRO.STOKADI'
      Size = 80
    end
    object AlisBodroIBQMIKTAR: TFloatField
      DisplayLabel = 'Miktar'
      FieldName = 'MIKTAR'
      Origin = 'ALISSATISBODRO.MIKTAR'
      DisplayFormat = '###,###'
    end
    object AlisBodroIBQMIKTARCARPAN: TIntegerField
      DisplayLabel = 'Birim '#199'arpan'
      FieldName = 'MIKTARCARPAN'
      Origin = 'ALISSATISBODRO.MIKTARCARPAN'
      DisplayFormat = '###,###'
    end
    object AlisBodroIBQGIRISMIKTAR: TFloatField
      DisplayLabel = 'Giri'#351' Miktar'#305
      FieldName = 'GIRISMIKTAR'
      Origin = 'ALISSATISBODRO.GIRISMIKTAR'
      DisplayFormat = '###,###'
    end
    object AlisBodroIBQCIKISMIKTAR: TFloatField
      FieldName = 'CIKISMIKTAR'
      Origin = 'ALISSATISBODRO.CIKISMIKTAR'
      DisplayFormat = '###,###'
    end
    object AlisBodroIBQBIRIM: TIBStringField
      DisplayLabel = 'Birim'
      FieldName = 'BIRIM'
      Origin = 'ALISSATISBODRO.BIRIM'
      Size = 10
    end
    object AlisBodroIBQBIRIMFIYAT: TFloatField
      DisplayLabel = 'Birim Fiyat'
      FieldName = 'BIRIMFIYAT'
      Origin = 'ALISSATISBODRO.BIRIMFIYAT'
      DisplayFormat = '###,###'
    end
    object AlisBodroIBQALISFIYAT: TFloatField
      DisplayLabel = 'Al'#305#351' Fiyat'#305
      FieldName = 'ALISFIYAT'
      Origin = 'ALISSATISBODRO.ALISFIYAT'
      DisplayFormat = '###,###'
    end
    object AlisBodroIBQSATISTUTAR: TFloatField
      FieldName = 'SATISTUTAR'
      Origin = 'ALISSATISBODRO.SATISTUTAR'
      DisplayFormat = '###,###'
    end
    object AlisBodroIBQSATISFIYAT: TFloatField
      FieldName = 'SATISFIYAT'
      Origin = 'ALISSATISBODRO.SATISFIYAT'
      DisplayFormat = '###,###'
    end
    object AlisBodroIBQALISTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' Tutar'#305
      FieldName = 'ALISTUTAR'
      Origin = 'ALISSATISBODRO.ALISTUTAR'
      DisplayFormat = '###,###'
    end
    object AlisBodroIBQALISMATRAHI: TFloatField
      DisplayLabel = 'Al'#305#351' Matrah'#305
      FieldName = 'ALISMATRAHI'
      Origin = 'ALISSATISBODRO.ALISMATRAHI'
      DisplayFormat = '###,###'
    end
    object AlisBodroIBQSATISMATRAHI: TFloatField
      FieldName = 'SATISMATRAHI'
      Origin = 'ALISSATISBODRO.SATISMATRAHI'
      DisplayFormat = '###,###'
    end
    object AlisBodroIBQISKONTO1: TFloatField
      DisplayLabel = #304'sk.1'
      FieldName = 'ISKONTO1'
      Origin = 'ALISSATISBODRO.ISKONTO1'
      DisplayFormat = '###,###'
    end
    object AlisBodroIBQISKONTO2: TFloatField
      DisplayLabel = #304'sk.2'
      FieldName = 'ISKONTO2'
      Origin = 'ALISSATISBODRO.ISKONTO2'
      DisplayFormat = '###,###'
    end
    object AlisBodroIBQISKONTO3: TFloatField
      DisplayLabel = #304'sk.3'
      FieldName = 'ISKONTO3'
      Origin = 'ALISSATISBODRO.ISKONTO3'
      DisplayFormat = '###,###'
    end
    object AlisBodroIBQISKONTO4: TFloatField
      DisplayLabel = #304'sk.4'
      FieldName = 'ISKONTO4'
      Origin = 'ALISSATISBODRO.ISKONTO4'
      DisplayFormat = '###,###'
    end
    object AlisBodroIBQKDVORANI: TFloatField
      DisplayLabel = 'Kdv Oran'#305
      FieldName = 'KDVORANI'
      Origin = 'ALISSATISBODRO.KDVORANI'
      DisplayFormat = '###,###'
    end
    object AlisBodroIBQBAKIYE: TFloatField
      FieldName = 'BAKIYE'
      Origin = 'ALISSATISBODRO.BAKIYE'
      DisplayFormat = '###,###'
    end
    object AlisBodroIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'ALISSATISBODRO.DURUM'
    end
    object AlisBodroIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'ALISSATISBODRO.ACIKLAMA'
      Size = 60
    end
    object AlisBodroIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'ALISSATISBODRO.KAPATMA'
    end
    object AlisBodroIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'ALISSATISBODRO.VADE'
    end
    object AlisBodroIBQFATURANO: TIntegerField
      FieldName = 'FATURANO'
      Origin = 'ALISSATISBODRO.FATURANO'
    end
    object AlisBodroIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'ALISSATISBODRO.STOKYERIKOD'
    end
    object AlisBodroIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'ALISSATISBODRO.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object AlisBodroIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'ALISSATISBODRO.GELGITKOD'
      Size = 80
    end
    object AlisBodroIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'ALISSATISBODRO.PERSONELKOD'
    end
    object AlisBodroIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'ALISSATISBODRO.KULLANKOD'
    end
    object AlisBodroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'ALISSATISBODRO.SISTEM'
    end
    object AlisBodroIBQEVRAKDURUMU: TIntegerField
      FieldName = 'EVRAKDURUMU'
      Origin = 'ALISSATISBODRO.EVRAKDURUMU'
    end
    object AlisBodroIBQSERINO: TIBStringField
      DisplayLabel = 'Seri No'
      FieldName = 'SERINO'
      Origin = 'ALISSATISBODRO.SERINO'
      Size = 30
    end
    object AlisBodroIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'ALISSATISBODRO.CARIHESAPILISKI'
    end
    object AlisBodroIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'ALISSATISBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object AlisBodroIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri_C'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'ALISSATISBODRO.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object AlisBodroIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'ALISSATISBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object AlisBodroIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'ALISSATISBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object AlisBodroIBQC_REELALIS: TFloatField
      DisplayLabel = 'Reeal Al'#305#351'_C'
      FieldKind = fkInternalCalc
      FieldName = 'C_REELALIS'
      Origin = 'ALISSATISBODRO.C_REELALIS'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object AlisBodroIBQC_REELSATIS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_REELSATIS'
      Origin = 'ALISSATISBODRO.C_REELSATIS'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object AlisBodroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'ALISSATISBODRO.ISLEMKOD'
    end
    object AlisBodroIBQKDVSECIM: TIBStringField
      DisplayLabel = 'K.S.'
      FieldName = 'KDVSECIM'
      Origin = 'ALISSATISBODRO.KDVSECIM'
      Size = 5
    end
    object AlisBodroIBQC_TLALISTUTARI: TFloatField
      DisplayLabel = 'TL Al'#305#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISTUTARI'
      Origin = 'ALISSATISBODRO.C_TLALISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object AlisBodroIBQC_TLALISMATRAHI: TFloatField
      DisplayLabel = 'TL Al'#305#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISMATRAHI'
      Origin = 'ALISSATISBODRO.C_TLALISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object AlisBodroIBQC_TLALISKDVTUTAR: TFloatField
      DisplayLabel = 'TL Al'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISKDVTUTAR'
      Origin = 'ALISSATISBODRO.C_TLALISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object AlisBodroIBQC_TLSATISTUTARI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISTUTARI'
      Origin = 'ALISSATISBODRO.C_TLSATISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object AlisBodroIBQC_TLSATISKDVTUTARI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISKDVTUTARI'
      Origin = 'ALISSATISBODRO.C_TLSATISKDVTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object AlisBodroIBQC_TLSATISMATRAHI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISMATRAHI'
      Origin = 'ALISSATISBODRO.C_TLSATISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object AlisBodroIBQC_TLBIRIMFIYAT: TFloatField
      DisplayLabel = 'TL Birim Fiyat'
      FieldKind = fkInternalCalc
      FieldName = 'C_TLBIRIMFIYAT'
      Origin = 'ALISSATISBODRO.C_TLBIRIMFIYAT'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object AlisBodroIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'ALISSATISBODRO.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object AlisBodroIBQC_ALISKDVTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' Kdv Tutar'#305'_C'
      FieldKind = fkInternalCalc
      FieldName = 'C_ALISKDVTUTAR'
      Origin = 'ALISSATISBODRO.C_ALISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object AlisBodroIBQC_SATISKDVTUTAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_SATISKDVTUTAR'
      Origin = 'ALISSATISBODRO.C_SATISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
  end
  object AlisBodroUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  BODROKOD,'
      '  SIRANO,'
      '  ISLEMTUR,'
      '  C_ISLEMTURKOD,'
      '  CARIKOD,'
      '  PARABIRIMKOD,'
      '  TARIH,'
      '  STOKKOD,'
      '  STOKNO,'
      '  BARKOD,'
      '  STOKADI,'
      '  MIKTAR,'
      '  MIKTARCARPAN,'
      '  GIRISMIKTAR,'
      '  CIKISMIKTAR,'
      '  BIRIM,'
      '  BIRIMFIYAT,'
      '  ALISFIYAT,'
      '  SATISTUTAR,'
      '  SATISFIYAT,'
      '  ALISTUTAR,'
      '  ALISMATRAHI,'
      '  SATISMATRAHI,'
      '  ISKONTO1,'
      '  ISKONTO2,'
      '  ISKONTO3,'
      '  ISKONTO4,'
      '  KDVORANI,'
      '  BAKIYE,'
      '  DURUM,'
      '  ACIKLAMA,'
      '  KAPATMA,'
      '  VADE,'
      '  FATURANO,'
      '  STOKYERIKOD,'
      '  ISLEMKURU,'
      '  GELGITKOD,'
      '  PERSONELKOD,'
      '  KULLANKOD,'
      '  EVRAKDURUMU,'
      '  SERINO,'
      '  CARIHESAPILISKI,'
      '  C_CARIADI,'
      '  C_STOKYERI,'
      '  C_KULLANICIADI,'
      '  C_PARABIRIMI,'
      '  C_REELALIS,'
      '  C_REELSATIS,'
      '  ISLEMKOD,'
      '  KDVSECIM,'
      '  C_TLALISTUTARI,'
      '  C_TLALISMATRAHI,'
      '  C_TLSATISTUTARI,'
      '  C_TLSATISMATRAHI,'
      '  C_TLBIRIMFIYAT,'
      '  C_GGMERKEZI,'
      '  C_ALISKDVTUTAR,'
      '  C_SATISKDVTUTAR,'
      '  C_TLALISKDVTUTAR,'
      '  C_TLSATISKDVTUTARI,'
      '  SISTEM'
      'from ALISSATISBODRO '
      'where'
      '  BODROKOD = :BODROKOD')
    ModifySQL.Strings = (
      'update ALISSATISBODRO'
      'set'
      '  BODROKOD = :BODROKOD,'
      '  SIRANO = :SIRANO,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  CARIKOD = :CARIKOD,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  TARIH = :TARIH,'
      '  STOKKOD = :STOKKOD,'
      '  STOKNO = :STOKNO,'
      '  BARKOD = :BARKOD,'
      '  STOKADI = :STOKADI,'
      '  MIKTAR = :MIKTAR,'
      '  MIKTARCARPAN = :MIKTARCARPAN,'
      '  GIRISMIKTAR = :GIRISMIKTAR,'
      '  CIKISMIKTAR = :CIKISMIKTAR,'
      '  BIRIM = :BIRIM,'
      '  BIRIMFIYAT = :BIRIMFIYAT,'
      '  ALISFIYAT = :ALISFIYAT,'
      '  SATISTUTAR = :SATISTUTAR,'
      '  SATISFIYAT = :SATISFIYAT,'
      '  ALISTUTAR = :ALISTUTAR,'
      '  ALISMATRAHI = :ALISMATRAHI,'
      '  SATISMATRAHI = :SATISMATRAHI,'
      '  ISKONTO1 = :ISKONTO1,'
      '  ISKONTO2 = :ISKONTO2,'
      '  ISKONTO3 = :ISKONTO3,'
      '  ISKONTO4 = :ISKONTO4,'
      '  KDVORANI = :KDVORANI,'
      '  BAKIYE = :BAKIYE,'
      '  DURUM = :DURUM,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  KAPATMA = :KAPATMA,'
      '  VADE = :VADE,'
      '  FATURANO = :FATURANO,'
      '  STOKYERIKOD = :STOKYERIKOD,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  GELGITKOD = :GELGITKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  KULLANKOD = :KULLANKOD,'
      '  SISTEM = :SISTEM,'
      '  EVRAKDURUMU = :EVRAKDURUMU,'
      '  SERINO = :SERINO,'
      '  CARIHESAPILISKI = :CARIHESAPILISKI,'
      '  ISLEMKOD = :ISLEMKOD,'
      '  KDVSECIM = :KDVSECIM'
      'where'
      '  BODROKOD = :OLD_BODROKOD')
    InsertSQL.Strings = (
      'insert into ALISSATISBODRO'
      
        '  (BODROKOD, SIRANO, ISLEMTUR, CARIKOD, PARABIRIMKOD, TARIH, STO' +
        'KKOD, STOKNO, '
      
        '   BARKOD, STOKADI, MIKTAR, MIKTARCARPAN, GIRISMIKTAR, CIKISMIKT' +
        'AR, BIRIM, '
      
        '   BIRIMFIYAT, ALISFIYAT, SATISTUTAR, SATISFIYAT, ALISTUTAR, ALI' +
        'SMATRAHI, '
      
        '   SATISMATRAHI, ISKONTO1, ISKONTO2, ISKONTO3, ISKONTO4, KDVORAN' +
        'I, BAKIYE, '
      
        '   DURUM, ACIKLAMA, KAPATMA, VADE, FATURANO, STOKYERIKOD, ISLEMK' +
        'URU, GELGITKOD, '
      
        '   PERSONELKOD, KULLANKOD, SISTEM, EVRAKDURUMU, SERINO, CARIHESA' +
        'PILISKI, '
      '   ISLEMKOD, KDVSECIM)'
      'values'
      
        '  (:BODROKOD, :SIRANO, :ISLEMTUR, :CARIKOD, :PARABIRIMKOD, :TARI' +
        'H, :STOKKOD, '
      
        '   :STOKNO, :BARKOD, :STOKADI, :MIKTAR, :MIKTARCARPAN, :GIRISMIK' +
        'TAR, :CIKISMIKTAR, '
      
        '   :BIRIM, :BIRIMFIYAT, :ALISFIYAT, :SATISTUTAR, :SATISFIYAT, :A' +
        'LISTUTAR, '
      
        '   :ALISMATRAHI, :SATISMATRAHI, :ISKONTO1, :ISKONTO2, :ISKONTO3,' +
        ' :ISKONTO4, '
      
        '   :KDVORANI, :BAKIYE, :DURUM, :ACIKLAMA, :KAPATMA, :VADE, :FATU' +
        'RANO, :STOKYERIKOD, '
      
        '   :ISLEMKURU, :GELGITKOD, :PERSONELKOD, :KULLANKOD, :SISTEM, :E' +
        'VRAKDURUMU, '
      '   :SERINO, :CARIHESAPILISKI, :ISLEMKOD, :KDVSECIM)')
    DeleteSQL.Strings = (
      'delete from ALISSATISBODRO'
      'where'
      '  BODROKOD = :OLD_BODROKOD')
    Left = 144
    Top = 128
  end
  object AlisBodroDS: TDataSource
    DataSet = AlisBodroIBQ
    Left = 232
    Top = 128
  end
  object CariIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *  from CARIISLEM'
      'Where SISTEM=2'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = CariUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'CARIISLEM'
    Left = 48
    Top = 16
    object CariIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'CARIISLEM.ISLEMKOD'
      Required = True
    end
    object CariIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'CARIISLEM.CARIKOD'
    end
    object CariIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'CARIISLEM.ISLEMTUR'
      Size = 40
    end
    object CariIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'CARIISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object CariIBQCAISLEMNO: TIntegerField
      FieldName = 'CAISLEMNO'
      Origin = 'CARIISLEM.CAISLEMNO'
    end
    object CariIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'CARIISLEM.TARIH'
    end
    object CariIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'CARIISLEM.SAAT'
    end
    object CariIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'CARIISLEM.ACIKLAMA'
      Size = 80
    end
    object CariIBQTEDIYE: TFloatField
      FieldName = 'TEDIYE'
      Origin = 'CARIISLEM.TEDIYE'
    end
    object CariIBQTAHSILAT: TFloatField
      FieldName = 'TAHSILAT'
      Origin = 'CARIISLEM.TAHSILAT'
    end
    object CariIBQBAKIYE: TFloatField
      FieldName = 'BAKIYE'
      Origin = 'CARIISLEM.BAKIYE'
    end
    object CariIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'CARIISLEM.DURUM'
    end
    object CariIBQC_DURUM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_DURUM'
      Origin = 'CARIISLEM.C_DURUM'
      ReadOnly = True
      Size = 5
    end
    object CariIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'CARIISLEM.D_TEDIYE'
    end
    object CariIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'CARIISLEM.D_TAHSILAT'
    end
    object CariIBQCARIKURU: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'CARIISLEM.CARIKURU'
    end
    object CariIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'CARIISLEM.ISLEMKURU'
    end
    object CariIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'CARIISLEM.KAPATMA'
    end
    object CariIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'CARIISLEM.CARINO'
    end
    object CariIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'CARIISLEM.BAGLANTINO'
    end
    object CariIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'CARIISLEM.CARIHESAPILISKI'
    end
    object CariIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'CARIISLEM.PARABIRIMKOD'
    end
    object CariIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'CARIISLEM.MAKBUZNO'
    end
    object CariIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'CARIISLEM.KULLANKOD'
    end
    object CariIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'CARIISLEM.PERSONELKOD'
    end
    object CariIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'CARIISLEM.SISTEM'
    end
    object CariIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'CARIISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object CariIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'CARIISLEM.CARIPARABIRIMKOD'
    end
    object CariIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'CARIISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object CariIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'CARIISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
  end
  object CariUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  CAISLEMNO,'
      '  TARIH,'
      '  SAAT,'
      '  ACIKLAMA,'
      '  TEDIYE,'
      '  TAHSILAT,'
      '  BAKIYE,'
      '  DURUM,'
      '  C_DURUM,'
      '  D_TEDIYE,'
      '  D_TAHSILAT,'
      '  CARIKURU,'
      '  ISLEMKURU,'
      '  KAPATMA,'
      '  CARINO,'
      '  BAGLANTINO,'
      '  CARIHESAPILISKI,'
      '  PARABIRIMKOD,'
      '  MAKBUZNO,'
      '  KULLANKOD,'
      '  PERSONELKOD,'
      '  SISTEM,'
      '  C_PARABIRIMI,'
      '  CARIPARABIRIMKOD,'
      '  C_CARIPARABIRIM,'
      '  C_CARIADI'
      'from CARIISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update CARIISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  CAISLEMNO = :CAISLEMNO,'
      '  TARIH = :TARIH,'
      '  SAAT = :SAAT,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  TEDIYE = :TEDIYE,'
      '  TAHSILAT = :TAHSILAT,'
      '  BAKIYE = :BAKIYE,'
      '  DURUM = :DURUM,'
      '  D_TEDIYE = :D_TEDIYE,'
      '  D_TAHSILAT = :D_TAHSILAT,'
      '  CARIKURU = :CARIKURU,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  KAPATMA = :KAPATMA,'
      '  CARINO = :CARINO,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  CARIHESAPILISKI = :CARIHESAPILISKI,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  KULLANKOD = :KULLANKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  SISTEM = :SISTEM,'
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into CARIISLEM'
      
        '  (ISLEMKOD, CARIKOD, ISLEMTUR, CAISLEMNO, TARIH, SAAT, ACIKLAMA' +
        ', TEDIYE, '
      
        '   TAHSILAT, BAKIYE, DURUM, D_TEDIYE, D_TAHSILAT, CARIKURU, ISLE' +
        'MKURU, '
      
        '   KAPATMA, CARINO, BAGLANTINO, CARIHESAPILISKI, PARABIRIMKOD, M' +
        'AKBUZNO, '
      '   KULLANKOD, PERSONELKOD, SISTEM, CARIPARABIRIMKOD)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :ISLEMTUR, :CAISLEMNO, :TARIH, :SAAT, :A' +
        'CIKLAMA, '
      
        '   :TEDIYE, :TAHSILAT, :BAKIYE, :DURUM, :D_TEDIYE, :D_TAHSILAT, ' +
        ':CARIKURU, '
      
        '   :ISLEMKURU, :KAPATMA, :CARINO, :BAGLANTINO, :CARIHESAPILISKI,' +
        ' :PARABIRIMKOD, '
      
        '   :MAKBUZNO, :KULLANKOD, :PERSONELKOD, :SISTEM, :CARIPARABIRIMK' +
        'OD)')
    DeleteSQL.Strings = (
      'delete from CARIISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 144
    Top = 16
  end
  object CariDS: TDataSource
    DataSet = CariIBQ
    Left = 232
    Top = 16
  end
  object BankaIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from BANKAISLEM'
      'Where SISTEM=2'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = BankaUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'BANKAISLEM'
    Left = 48
    Top = 240
    object BankaIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'BANKAISLEM.ISLEMKOD'
      Required = True
    end
    object BankaIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'BANKAISLEM.CARIKOD'
    end
    object BankaIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'BANKAISLEM.BANKAKOD'
    end
    object BankaIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'BANKAISLEM.ISLEMTUR'
      Size = 40
    end
    object BankaIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'BANKAISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object BankaIBQBANKAISLEMNO: TIntegerField
      FieldName = 'BANKAISLEMNO'
      Origin = 'BANKAISLEM.BANKAISLEMNO'
    end
    object BankaIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'BANKAISLEM.TARIH'
    end
    object BankaIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'BANKAISLEM.SAAT'
    end
    object BankaIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'BANKAISLEM.ACIKLAMA'
      Size = 80
    end
    object BankaIBQTEDIYE: TFloatField
      FieldName = 'TEDIYE'
      Origin = 'BANKAISLEM.TEDIYE'
    end
    object BankaIBQTAHSILAT: TFloatField
      FieldName = 'TAHSILAT'
      Origin = 'BANKAISLEM.TAHSILAT'
    end
    object BankaIBQBAKIYE: TFloatField
      FieldName = 'BAKIYE'
      Origin = 'BANKAISLEM.BAKIYE'
    end
    object BankaIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'BANKAISLEM.DURUM'
    end
    object BankaIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'BANKAISLEM.KASAKOD'
    end
    object BankaIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'BANKAISLEM.CARINO'
    end
    object BankaIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'BANKAISLEM.GELGITKOD'
      Size = 80
    end
    object BankaIBQEVRAKNO: TIntegerField
      FieldName = 'EVRAKNO'
      Origin = 'BANKAISLEM.EVRAKNO'
    end
    object BankaIBQBELGENO: TIntegerField
      FieldName = 'BELGENO'
      Origin = 'BANKAISLEM.BELGENO'
    end
    object BankaIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'BANKAISLEM.BAGLANTINO'
    end
    object BankaIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'BANKAISLEM.PARABIRIMKOD'
    end
    object BankaIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'BANKAISLEM.MAKBUZNO'
    end
    object BankaIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'BANKAISLEM.KULLANKOD'
    end
    object BankaIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'BANKAISLEM.PERSONELKOD'
    end
    object BankaIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'BANKAISLEM.SISTEM'
    end
    object BankaIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'BANKAISLEM.D_TEDIYE'
    end
    object BankaIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'BANKAISLEM.D_TAHSILAT'
    end
    object BankaIBQCARIKURU: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'BANKAISLEM.CARIKURU'
    end
    object BankaIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'BANKAISLEM.ISLEMKURU'
    end
    object BankaIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'BANKAISLEM.CARIPARABIRIMKOD'
    end
    object BankaIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'BANKAISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object BankaIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'BANKAISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object BankaIBQC_KASAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KASAADI'
      Origin = 'BANKAISLEM.C_KASAADI'
      ReadOnly = True
      Size = 25
    end
    object BankaIBQC_HESAPADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_HESAPADI'
      Origin = 'BANKAISLEM.C_HESAPADI'
      ReadOnly = True
      Size = 50
    end
    object BankaIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'BANKAISLEM.KAPATMA'
    end
    object BankaIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'BANKAISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object BankaIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'BANKAISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object BankaIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'BANKAISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
  end
  object BankaUSQL: TIBUpdateSQL
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
      '  C_KULLANICIADI'
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
    Left = 144
    Top = 240
  end
  object BankaDS: TDataSource
    DataSet = BankaIBQ
    Left = 232
    Top = 240
  end
  object StokIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *  from STOKISLEM'
      'Where SISTEM=2'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = StokUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'STOKISLEM'
    Left = 48
    Top = 400
    object StokIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'STOKISLEM.ISLEMKOD'
      Required = True
    end
    object StokIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'STOKISLEM.CARIKOD'
    end
    object StokIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'STOKISLEM.CARINO'
    end
    object StokIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'STOKISLEM.ISLEMTUR'
      Size = 10
    end
    object StokIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'STOKISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object StokIBQSTOKISLEMNO: TIntegerField
      FieldName = 'STOKISLEMNO'
      Origin = 'STOKISLEM.STOKISLEMNO'
    end
    object StokIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'STOKISLEM.TARIH'
    end
    object StokIBQIRSALIYETARIH: TDateField
      FieldName = 'IRSALIYETARIH'
      Origin = 'STOKISLEM.IRSALIYETARIH'
    end
    object StokIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'STOKISLEM.SAAT'
    end
    object StokIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'STOKISLEM.ACIKLAMA'
      Size = 80
    end
    object StokIBQGIRISTUTAR: TFloatField
      FieldName = 'GIRISTUTAR'
      Origin = 'STOKISLEM.GIRISTUTAR'
    end
    object StokIBQCIKISTUTAR: TFloatField
      FieldName = 'CIKISTUTAR'
      Origin = 'STOKISLEM.CIKISTUTAR'
    end
    object StokIBQGIRISMATRAH: TFloatField
      FieldName = 'GIRISMATRAH'
      Origin = 'STOKISLEM.GIRISMATRAH'
    end
    object StokIBQGIRISKDVTUTAR: TFloatField
      FieldName = 'GIRISKDVTUTAR'
      Origin = 'STOKISLEM.GIRISKDVTUTAR'
    end
    object StokIBQCIKISMATRAH: TFloatField
      FieldName = 'CIKISMATRAH'
      Origin = 'STOKISLEM.CIKISMATRAH'
    end
    object StokIBQCIKISKDVTUTAR: TFloatField
      FieldName = 'CIKISKDVTUTAR'
      Origin = 'STOKISLEM.CIKISKDVTUTAR'
    end
    object StokIBQCARIKURU: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'STOKISLEM.CARIKURU'
    end
    object StokIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'STOKISLEM.ISLEMKURU'
    end
    object StokIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'STOKISLEM.KAPATMA'
    end
    object StokIBQVADE: TDateField
      FieldName = 'VADE'
      Origin = 'STOKISLEM.VADE'
    end
    object StokIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'STOKISLEM.GELGITKOD'
      Size = 80
    end
    object StokIBQEVRAKNO: TIntegerField
      FieldName = 'EVRAKNO'
      Origin = 'STOKISLEM.EVRAKNO'
    end
    object StokIBQBELGENO: TIntegerField
      FieldName = 'BELGENO'
      Origin = 'STOKISLEM.BELGENO'
    end
    object StokIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'STOKISLEM.BAGLANTINO'
    end
    object StokIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'STOKISLEM.CARIHESAPILISKI'
    end
    object StokIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'STOKISLEM.PARABIRIMKOD'
    end
    object StokIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'STOKISLEM.STOKYERIKOD'
    end
    object StokIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'STOKISLEM.MAKBUZNO'
    end
    object StokIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'STOKISLEM.BILGIKOD'
    end
    object StokIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'STOKISLEM.KULLANKOD'
    end
    object StokIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'STOKISLEM.PERSONELKOD'
    end
    object StokIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'STOKISLEM.SISTEM'
    end
    object StokIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'STOKISLEM.CARIPARABIRIMKOD'
    end
    object StokIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'STOKISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object StokIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'STOKISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object StokIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'STOKISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object StokIBQC_STOKYERI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'STOKISLEM.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object StokIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'STOKISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object StokIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'STOKISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object StokIBQFATURATARIH: TDateField
      FieldName = 'FATURATARIH'
      Origin = 'STOKISLEM.FATURATARIH'
    end
    object StokIBQKDVSECIM: TIBStringField
      FieldName = 'KDVSECIM'
      Origin = 'STOKISLEM.KDVSECIM'
      Size = 5
    end
    object StokIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'STOKISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object StokIBQIRSALIYENO: TIntegerField
      FieldName = 'IRSALIYENO'
      Origin = 'STOKISLEM.IRSALIYENO'
    end
    object StokIBQEVRAKTARIH: TDateField
      FieldName = 'EVRAKTARIH'
      Origin = 'STOKISLEM.EVRAKTARIH'
    end
    object StokIBQD_GIRISTUTAR: TFloatField
      FieldName = 'D_GIRISTUTAR'
      Origin = 'STOKISLEM.D_GIRISTUTAR'
    end
    object StokIBQD_GIRISKDVTUTAR: TFloatField
      FieldName = 'D_GIRISKDVTUTAR'
      Origin = 'STOKISLEM.D_GIRISKDVTUTAR'
    end
    object StokIBQD_GIRISMATRAH: TFloatField
      FieldName = 'D_GIRISMATRAH'
      Origin = 'STOKISLEM.D_GIRISMATRAH'
    end
    object StokIBQD_CIKISTUTAR: TFloatField
      FieldName = 'D_CIKISTUTAR'
      Origin = 'STOKISLEM.D_CIKISTUTAR'
    end
    object StokIBQD_CIKISKDVTUTAR: TFloatField
      FieldName = 'D_CIKISKDVTUTAR'
      Origin = 'STOKISLEM.D_CIKISKDVTUTAR'
    end
    object StokIBQD_CIKISMATRAH: TFloatField
      FieldName = 'D_CIKISMATRAH'
      Origin = 'STOKISLEM.D_CIKISMATRAH'
    end
  end
  object StokUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  CARINO,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  STOKISLEMNO,'
      '  TARIH,'
      '  IRSALIYETARIH,'
      '  SAAT,'
      '  ACIKLAMA,'
      '  GIRISTUTAR,'
      '  CIKISTUTAR,'
      '  GIRISMATRAH,'
      '  GIRISKDVTUTAR,'
      '  CIKISMATRAH,'
      '  CIKISKDVTUTAR,'
      '  CARIKURU,'
      '  ISLEMKURU,'
      '  KAPATMA,'
      '  VADE,'
      '  GELGITKOD,'
      '  EVRAKNO,'
      '  BELGENO,'
      '  BAGLANTINO,'
      '  CARIHESAPILISKI,'
      '  PARABIRIMKOD,'
      '  STOKYERIKOD,'
      '  MAKBUZNO,'
      '  BILGIKOD,'
      '  KULLANKOD,'
      '  PERSONELKOD,'
      '  SISTEM,'
      '  CARIPARABIRIMKOD,'
      '  C_CARIPARABIRIM,'
      '  C_PARABIRIMI,'
      '  C_CARIADI,'
      '  C_STOKYERI,'
      '  C_KULLANICIADI,'
      '  C_PERSONEL,'
      '  FATURATARIH,'
      '  KDVSECIM,'
      '  C_GGMERKEZI,'
      '  IRSALIYENO,'
      '  EVRAKTARIH,'
      '  D_GIRISTUTAR,'
      '  D_GIRISKDVTUTAR,'
      '  D_GIRISMATRAH,'
      '  D_CIKISTUTAR,'
      '  D_CIKISKDVTUTAR,'
      '  D_CIKISMATRAH'
      'from STOKISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update STOKISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  CARINO = :CARINO,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  STOKISLEMNO = :STOKISLEMNO,'
      '  TARIH = :TARIH,'
      '  IRSALIYETARIH = :IRSALIYETARIH,'
      '  SAAT = :SAAT,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  GIRISTUTAR = :GIRISTUTAR,'
      '  CIKISTUTAR = :CIKISTUTAR,'
      '  GIRISMATRAH = :GIRISMATRAH,'
      '  GIRISKDVTUTAR = :GIRISKDVTUTAR,'
      '  CIKISMATRAH = :CIKISMATRAH,'
      '  CIKISKDVTUTAR = :CIKISKDVTUTAR,'
      '  CARIKURU = :CARIKURU,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  KAPATMA = :KAPATMA,'
      '  VADE = :VADE,'
      '  GELGITKOD = :GELGITKOD,'
      '  EVRAKNO = :EVRAKNO,'
      '  BELGENO = :BELGENO,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  CARIHESAPILISKI = :CARIHESAPILISKI,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  STOKYERIKOD = :STOKYERIKOD,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  BILGIKOD = :BILGIKOD,'
      '  KULLANKOD = :KULLANKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  SISTEM = :SISTEM,'
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  FATURATARIH = :FATURATARIH,'
      '  KDVSECIM = :KDVSECIM,'
      '  IRSALIYENO = :IRSALIYENO,'
      '  EVRAKTARIH = :EVRAKTARIH,'
      '  D_GIRISTUTAR = :D_GIRISTUTAR,'
      '  D_GIRISKDVTUTAR = :D_GIRISKDVTUTAR,'
      '  D_GIRISMATRAH = :D_GIRISMATRAH,'
      '  D_CIKISTUTAR = :D_CIKISTUTAR,'
      '  D_CIKISKDVTUTAR = :D_CIKISKDVTUTAR,'
      '  D_CIKISMATRAH = :D_CIKISMATRAH'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into STOKISLEM'
      
        '  (ISLEMKOD, CARIKOD, CARINO, ISLEMTUR, STOKISLEMNO, TARIH, IRSA' +
        'LIYETARIH, '
      
        '   SAAT, ACIKLAMA, GIRISTUTAR, CIKISTUTAR, GIRISMATRAH, GIRISKDV' +
        'TUTAR, '
      
        '   CIKISMATRAH, CIKISKDVTUTAR, CARIKURU, ISLEMKURU, KAPATMA, VAD' +
        'E, GELGITKOD, '
      
        '   EVRAKNO, BELGENO, BAGLANTINO, CARIHESAPILISKI, PARABIRIMKOD, ' +
        'STOKYERIKOD, '
      
        '   MAKBUZNO, BILGIKOD, KULLANKOD, PERSONELKOD, SISTEM, CARIPARAB' +
        'IRIMKOD, '
      
        '   FATURATARIH, KDVSECIM, IRSALIYENO, EVRAKTARIH, D_GIRISTUTAR, ' +
        'D_GIRISKDVTUTAR, '
      '   D_GIRISMATRAH, D_CIKISTUTAR, D_CIKISKDVTUTAR, D_CIKISMATRAH)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :CARINO, :ISLEMTUR, :STOKISLEMNO, :TARIH' +
        ', :IRSALIYETARIH, '
      
        '   :SAAT, :ACIKLAMA, :GIRISTUTAR, :CIKISTUTAR, :GIRISMATRAH, :GI' +
        'RISKDVTUTAR, '
      
        '   :CIKISMATRAH, :CIKISKDVTUTAR, :CARIKURU, :ISLEMKURU, :KAPATMA' +
        ', :VADE, '
      
        '   :GELGITKOD, :EVRAKNO, :BELGENO, :BAGLANTINO, :CARIHESAPILISKI' +
        ', :PARABIRIMKOD, '
      
        '   :STOKYERIKOD, :MAKBUZNO, :BILGIKOD, :KULLANKOD, :PERSONELKOD,' +
        ' :SISTEM, '
      
        '   :CARIPARABIRIMKOD, :FATURATARIH, :KDVSECIM, :IRSALIYENO, :EVR' +
        'AKTARIH, '
      
        '   :D_GIRISTUTAR, :D_GIRISKDVTUTAR, :D_GIRISMATRAH, :D_CIKISTUTA' +
        'R, :D_CIKISKDVTUTAR, '
      '   :D_CIKISMATRAH)')
    DeleteSQL.Strings = (
      'delete from STOKISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 144
    Top = 400
  end
  object StokDS: TDataSource
    DataSet = StokIBQ
    Left = 232
    Top = 400
  end
  object StokBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = StokDS
    SQL.Strings = (
      'select *  from STOKBODRO'
      'where ISLEMKOD=:ISLEMKOD'
      'ORDER BY BODROKOD')
    UpdateObject = StokBodroUSQL
    GeneratorField.Field = 'BODROKOD'
    GeneratorField.Generator = 'STOKBODRO'
    Left = 48
    Top = 456
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object StokBodroIBQBODROKOD: TIntegerField
      FieldName = 'BODROKOD'
      Origin = 'STOKBODRO.BODROKOD'
      Required = True
    end
    object StokBodroIBQSIRANO: TIntegerField
      FieldName = 'SIRANO'
      Origin = 'STOKBODRO.SIRANO'
    end
    object StokBodroIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'STOKBODRO.ISLEMTUR'
      Size = 40
    end
    object StokBodroIBQC_ISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_ISLEMTURKOD'
      Origin = 'STOKBODRO.C_ISLEMTURKOD'
      ReadOnly = True
    end
    object StokBodroIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'STOKBODRO.CARIKOD'
    end
    object StokBodroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'STOKBODRO.PARABIRIMKOD'
    end
    object StokBodroIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'STOKBODRO.TARIH'
    end
    object StokBodroIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'STOKBODRO.STOKKOD'
    end
    object StokBodroIBQSTOKNO: TIntegerField
      FieldName = 'STOKNO'
      Origin = 'STOKBODRO.STOKNO'
    end
    object StokBodroIBQBARKOD: TIBStringField
      FieldName = 'BARKOD'
      Origin = 'STOKBODRO.BARKOD'
      Size = 25
    end
    object StokBodroIBQSTOKADI: TIBStringField
      FieldName = 'STOKADI'
      Origin = 'STOKBODRO.STOKADI'
      Size = 80
    end
    object StokBodroIBQMIKTAR: TFloatField
      FieldName = 'MIKTAR'
      Origin = 'STOKBODRO.MIKTAR'
    end
    object StokBodroIBQMIKTARCARPAN: TIntegerField
      FieldName = 'MIKTARCARPAN'
      Origin = 'STOKBODRO.MIKTARCARPAN'
    end
    object StokBodroIBQGIRISMIKTAR: TFloatField
      FieldName = 'GIRISMIKTAR'
      Origin = 'STOKBODRO.GIRISMIKTAR'
    end
    object StokBodroIBQCIKISMIKTAR: TFloatField
      FieldName = 'CIKISMIKTAR'
      Origin = 'STOKBODRO.CIKISMIKTAR'
    end
    object StokBodroIBQBIRIM: TIBStringField
      FieldName = 'BIRIM'
      Origin = 'STOKBODRO.BIRIM'
      Size = 10
    end
    object StokBodroIBQBIRIMFIYAT: TFloatField
      FieldName = 'BIRIMFIYAT'
      Origin = 'STOKBODRO.BIRIMFIYAT'
    end
    object StokBodroIBQGIRISFIYAT: TFloatField
      FieldName = 'GIRISFIYAT'
      Origin = 'STOKBODRO.GIRISFIYAT'
    end
    object StokBodroIBQCIKISFIYAT: TFloatField
      FieldName = 'CIKISFIYAT'
      Origin = 'STOKBODRO.CIKISFIYAT'
    end
    object StokBodroIBQCIKISTUTAR: TFloatField
      FieldName = 'CIKISTUTAR'
      Origin = 'STOKBODRO.CIKISTUTAR'
    end
    object StokBodroIBQGIRISTUTAR: TFloatField
      FieldName = 'GIRISTUTAR'
      Origin = 'STOKBODRO.GIRISTUTAR'
    end
    object StokBodroIBQGIRISMATRAHI: TFloatField
      FieldName = 'GIRISMATRAHI'
      Origin = 'STOKBODRO.GIRISMATRAHI'
    end
    object StokBodroIBQCIKISMATRAHI: TFloatField
      FieldName = 'CIKISMATRAHI'
      Origin = 'STOKBODRO.CIKISMATRAHI'
    end
    object StokBodroIBQISKONTO1: TFloatField
      FieldName = 'ISKONTO1'
      Origin = 'STOKBODRO.ISKONTO1'
    end
    object StokBodroIBQISKONTO2: TFloatField
      FieldName = 'ISKONTO2'
      Origin = 'STOKBODRO.ISKONTO2'
    end
    object StokBodroIBQISKONTO3: TFloatField
      FieldName = 'ISKONTO3'
      Origin = 'STOKBODRO.ISKONTO3'
    end
    object StokBodroIBQISKONTO4: TFloatField
      FieldName = 'ISKONTO4'
      Origin = 'STOKBODRO.ISKONTO4'
    end
    object StokBodroIBQKDVORANI: TFloatField
      FieldName = 'KDVORANI'
      Origin = 'STOKBODRO.KDVORANI'
    end
    object StokBodroIBQBAKIYE: TFloatField
      FieldName = 'BAKIYE'
      Origin = 'STOKBODRO.BAKIYE'
    end
    object StokBodroIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'STOKBODRO.DURUM'
    end
    object StokBodroIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'STOKBODRO.ACIKLAMA'
      Size = 60
    end
    object StokBodroIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'STOKBODRO.KAPATMA'
    end
    object StokBodroIBQVADE: TDateField
      FieldName = 'VADE'
      Origin = 'STOKBODRO.VADE'
    end
    object StokBodroIBQFATURANO: TIntegerField
      FieldName = 'FATURANO'
      Origin = 'STOKBODRO.FATURANO'
    end
    object StokBodroIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'STOKBODRO.STOKYERIKOD'
    end
    object StokBodroIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'STOKBODRO.ISLEMKURU'
    end
    object StokBodroIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'STOKBODRO.GELGITKOD'
      Size = 80
    end
    object StokBodroIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'STOKBODRO.PERSONELKOD'
    end
    object StokBodroIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'STOKBODRO.KULLANKOD'
    end
    object StokBodroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'STOKBODRO.SISTEM'
    end
    object StokBodroIBQEVRAKDURUMU: TIntegerField
      FieldName = 'EVRAKDURUMU'
      Origin = 'STOKBODRO.EVRAKDURUMU'
    end
    object StokBodroIBQSERINO: TIBStringField
      FieldName = 'SERINO'
      Origin = 'STOKBODRO.SERINO'
      Size = 30
    end
    object StokBodroIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'STOKBODRO.CARIHESAPILISKI'
    end
    object StokBodroIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'STOKBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object StokBodroIBQC_STOKYERI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'STOKBODRO.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object StokBodroIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'STOKBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object StokBodroIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'STOKBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object StokBodroIBQC_REELGIRIS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_REELGIRIS'
      Origin = 'STOKBODRO.C_REELGIRIS'
      ReadOnly = True
    end
    object StokBodroIBQC_REELCIKIS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_REELCIKIS'
      Origin = 'STOKBODRO.C_REELCIKIS'
      ReadOnly = True
    end
    object StokBodroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'STOKBODRO.ISLEMKOD'
    end
    object StokBodroIBQKDVSECIM: TIBStringField
      FieldName = 'KDVSECIM'
      Origin = 'STOKBODRO.KDVSECIM'
      Size = 5
    end
    object StokBodroIBQC_TLGIRISTUTARI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISTUTARI'
      Origin = 'STOKBODRO.C_TLGIRISTUTARI'
      ReadOnly = True
    end
    object StokBodroIBQC_TLGIRISMATRAHI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISMATRAHI'
      Origin = 'STOKBODRO.C_TLGIRISMATRAHI'
      ReadOnly = True
    end
    object StokBodroIBQC_TLCIKISTUTARI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISTUTARI'
      Origin = 'STOKBODRO.C_TLCIKISTUTARI'
      ReadOnly = True
    end
    object StokBodroIBQC_TLCIKISMATRAHI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISMATRAHI'
      Origin = 'STOKBODRO.C_TLCIKISMATRAHI'
      ReadOnly = True
    end
    object StokBodroIBQC_TLBIRIMFIYAT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLBIRIMFIYAT'
      Origin = 'STOKBODRO.C_TLBIRIMFIYAT'
      ReadOnly = True
    end
    object StokBodroIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'STOKBODRO.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object StokBodroIBQC_GIRISKDVTUTAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_GIRISKDVTUTAR'
      Origin = 'STOKBODRO.C_GIRISKDVTUTAR'
      ReadOnly = True
    end
    object StokBodroIBQC_CIKISKDVTUTAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_CIKISKDVTUTAR'
      Origin = 'STOKBODRO.C_CIKISKDVTUTAR'
      ReadOnly = True
    end
    object StokBodroIBQC_TLGIRISKDVTUTAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISKDVTUTAR'
      Origin = 'STOKBODRO.C_TLGIRISKDVTUTAR'
      ReadOnly = True
    end
    object StokBodroIBQC_TLCIKISKDVTUTARI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISKDVTUTARI'
      Origin = 'STOKBODRO.C_TLCIKISKDVTUTARI'
      ReadOnly = True
    end
  end
  object StokBodroUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  BODROKOD,'
      '  SIRANO,'
      '  ISLEMTUR,'
      '  C_ISLEMTURKOD,'
      '  CARIKOD,'
      '  PARABIRIMKOD,'
      '  TARIH,'
      '  STOKKOD,'
      '  STOKNO,'
      '  BARKOD,'
      '  STOKADI,'
      '  MIKTAR,'
      '  MIKTARCARPAN,'
      '  GIRISMIKTAR,'
      '  CIKISMIKTAR,'
      '  BIRIM,'
      '  BIRIMFIYAT,'
      '  GIRISFIYAT,'
      '  CIKISFIYAT,'
      '  CIKISTUTAR,'
      '  GIRISTUTAR,'
      '  GIRISMATRAHI,'
      '  CIKISMATRAHI,'
      '  ISKONTO1,'
      '  ISKONTO2,'
      '  ISKONTO3,'
      '  ISKONTO4,'
      '  KDVORANI,'
      '  BAKIYE,'
      '  DURUM,'
      '  ACIKLAMA,'
      '  KAPATMA,'
      '  VADE,'
      '  FATURANO,'
      '  STOKYERIKOD,'
      '  ISLEMKURU,'
      '  GELGITKOD,'
      '  PERSONELKOD,'
      '  KULLANKOD,'
      '  SISTEM,'
      '  EVRAKDURUMU,'
      '  SERINO,'
      '  CARIHESAPILISKI,'
      '  C_CARIADI,'
      '  C_STOKYERI,'
      '  C_KULLANICIADI,'
      '  C_PARABIRIMI,'
      '  C_REELGIRIS,'
      '  C_REELCIKIS,'
      '  ISLEMKOD,'
      '  KDVSECIM,'
      '  C_TLGIRISTUTARI,'
      '  C_TLGIRISMATRAHI,'
      '  C_TLCIKISTUTARI,'
      '  C_TLCIKISMATRAHI,'
      '  C_TLBIRIMFIYAT,'
      '  C_GGMERKEZI,'
      '  C_GIRISKDVTUTAR,'
      '  C_CIKISKDVTUTAR,'
      '  C_TLGIRISKDVTUTAR,'
      '  C_TLCIKISKDVTUTARI'
      'from STOKBODRO '
      'where'
      '  BODROKOD = :BODROKOD')
    ModifySQL.Strings = (
      'update STOKBODRO'
      'set'
      '  BODROKOD = :BODROKOD,'
      '  SIRANO = :SIRANO,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  CARIKOD = :CARIKOD,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  TARIH = :TARIH,'
      '  STOKKOD = :STOKKOD,'
      '  STOKNO = :STOKNO,'
      '  BARKOD = :BARKOD,'
      '  STOKADI = :STOKADI,'
      '  MIKTAR = :MIKTAR,'
      '  MIKTARCARPAN = :MIKTARCARPAN,'
      '  GIRISMIKTAR = :GIRISMIKTAR,'
      '  CIKISMIKTAR = :CIKISMIKTAR,'
      '  BIRIM = :BIRIM,'
      '  BIRIMFIYAT = :BIRIMFIYAT,'
      '  GIRISFIYAT = :GIRISFIYAT,'
      '  CIKISFIYAT = :CIKISFIYAT,'
      '  CIKISTUTAR = :CIKISTUTAR,'
      '  GIRISTUTAR = :GIRISTUTAR,'
      '  GIRISMATRAHI = :GIRISMATRAHI,'
      '  CIKISMATRAHI = :CIKISMATRAHI,'
      '  ISKONTO1 = :ISKONTO1,'
      '  ISKONTO2 = :ISKONTO2,'
      '  ISKONTO3 = :ISKONTO3,'
      '  ISKONTO4 = :ISKONTO4,'
      '  KDVORANI = :KDVORANI,'
      '  BAKIYE = :BAKIYE,'
      '  DURUM = :DURUM,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  KAPATMA = :KAPATMA,'
      '  VADE = :VADE,'
      '  FATURANO = :FATURANO,'
      '  STOKYERIKOD = :STOKYERIKOD,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  GELGITKOD = :GELGITKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  KULLANKOD = :KULLANKOD,'
      '  SISTEM = :SISTEM,'
      '  EVRAKDURUMU = :EVRAKDURUMU,'
      '  SERINO = :SERINO,'
      '  CARIHESAPILISKI = :CARIHESAPILISKI,'
      '  ISLEMKOD = :ISLEMKOD,'
      '  KDVSECIM = :KDVSECIM'
      'where'
      '  BODROKOD = :OLD_BODROKOD')
    InsertSQL.Strings = (
      'insert into STOKBODRO'
      
        '  (BODROKOD, SIRANO, ISLEMTUR, CARIKOD, PARABIRIMKOD, TARIH, STO' +
        'KKOD, STOKNO, '
      
        '   BARKOD, STOKADI, MIKTAR, MIKTARCARPAN, GIRISMIKTAR, CIKISMIKT' +
        'AR, BIRIM, '
      
        '   BIRIMFIYAT, GIRISFIYAT, CIKISFIYAT, CIKISTUTAR, GIRISTUTAR, G' +
        'IRISMATRAHI, '
      
        '   CIKISMATRAHI, ISKONTO1, ISKONTO2, ISKONTO3, ISKONTO4, KDVORAN' +
        'I, BAKIYE, '
      
        '   DURUM, ACIKLAMA, KAPATMA, VADE, FATURANO, STOKYERIKOD, ISLEMK' +
        'URU, GELGITKOD, '
      
        '   PERSONELKOD, KULLANKOD, SISTEM, EVRAKDURUMU, SERINO, CARIHESA' +
        'PILISKI, '
      '   ISLEMKOD, KDVSECIM)'
      'values'
      
        '  (:BODROKOD, :SIRANO, :ISLEMTUR, :CARIKOD, :PARABIRIMKOD, :TARI' +
        'H, :STOKKOD, '
      
        '   :STOKNO, :BARKOD, :STOKADI, :MIKTAR, :MIKTARCARPAN, :GIRISMIK' +
        'TAR, :CIKISMIKTAR, '
      
        '   :BIRIM, :BIRIMFIYAT, :GIRISFIYAT, :CIKISFIYAT, :CIKISTUTAR, :' +
        'GIRISTUTAR, '
      
        '   :GIRISMATRAHI, :CIKISMATRAHI, :ISKONTO1, :ISKONTO2, :ISKONTO3' +
        ', :ISKONTO4, '
      
        '   :KDVORANI, :BAKIYE, :DURUM, :ACIKLAMA, :KAPATMA, :VADE, :FATU' +
        'RANO, :STOKYERIKOD, '
      
        '   :ISLEMKURU, :GELGITKOD, :PERSONELKOD, :KULLANKOD, :SISTEM, :E' +
        'VRAKDURUMU, '
      '   :SERINO, :CARIHESAPILISKI, :ISLEMKOD, :KDVSECIM)')
    DeleteSQL.Strings = (
      'delete from STOKBODRO'
      'where'
      '  BODROKOD = :OLD_BODROKOD')
    Left = 144
    Top = 456
  end
  object StokBodroDS: TDataSource
    DataSet = StokBodroIBQ
    Left = 232
    Top = 456
  end
  object CekIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *  from CEKISLEM'
      'Where SISTEM=2'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = CekUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'STOKISLEM'
    Left = 48
    Top = 296
    object CekIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'CEKISLEM.ISLEMKOD'
      Required = True
    end
    object CekIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'CEKISLEM.CARIKOD'
    end
    object CekIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'CEKISLEM.CARINO'
    end
    object CekIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'CEKISLEM.ISLEMTUR'
      Size = 40
    end
    object CekIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'CEKISLEM.TARIH'
    end
    object CekIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'CEKISLEM.ACIKLAMA'
      Size = 80
    end
    object CekIBQTEDIYE: TFloatField
      FieldName = 'TEDIYE'
      Origin = 'CEKISLEM.TEDIYE'
    end
    object CekIBQTAHSILAT: TFloatField
      FieldName = 'TAHSILAT'
      Origin = 'CEKISLEM.TAHSILAT'
    end
    object CekIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'CEKISLEM.D_TEDIYE'
    end
    object CekIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'CEKISLEM.D_TAHSILAT'
    end
    object CekIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'CEKISLEM.BANKAKOD'
    end
    object CekIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'CEKISLEM.KASAKOD'
    end
    object CekIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'CEKISLEM.MAKBUZNO'
    end
    object CekIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'CEKISLEM.KULLANKOD'
    end
    object CekIBQCARIKURU: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'CEKISLEM.CARIKURU'
    end
    object CekIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'CEKISLEM.ISLEMKURU'
    end
    object CekIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'CEKISLEM.PARABIRIMKOD'
    end
    object CekIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'CEKISLEM.PERSONELKOD'
    end
    object CekIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'CEKISLEM.BAGLANTINO'
    end
    object CekIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'CEKISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object CekIBQCEKISLEMNO: TIntegerField
      FieldName = 'CEKISLEMNO'
      Origin = 'CEKISLEM.CEKISLEMNO'
    end
    object CekIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'CEKISLEM.SAAT'
    end
    object CekIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'CEKISLEM.GELGITKOD'
      Size = 80
    end
    object CekIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'CEKISLEM.CARIPARABIRIMKOD'
    end
    object CekIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'CEKISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object CekIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'CEKISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object CekIBQC_KASAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KASAADI'
      Origin = 'CEKISLEM.C_KASAADI'
      ReadOnly = True
      Size = 25
    end
    object CekIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'CEKISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object CekIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'CEKISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object CekIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'CEKISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object CekIBQC_BANKAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_BANKAADI'
      Origin = 'CEKISLEM.C_BANKAADI'
      ReadOnly = True
      Size = 30
    end
    object CekIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'CEKISLEM.KAPATMA'
    end
    object CekIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'CEKISLEM.SISTEM'
    end
    object CekIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'CEKISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object CekIBQC_CARITEDIYE: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARITEDIYE'
      Origin = 'CEKISLEM.C_CARITEDIYE'
      ReadOnly = True
    end
    object CekIBQC_CARITAHSILAT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARITAHSILAT'
      Origin = 'CEKISLEM.C_CARITAHSILAT'
      ReadOnly = True
    end
  end
  object CekUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  CARINO,'
      '  ISLEMTUR,'
      '  TARIH,'
      '  ACIKLAMA,'
      '  TEDIYE,'
      '  TAHSILAT,'
      '  D_TEDIYE,'
      '  D_TAHSILAT,'
      '  BANKAKOD,'
      '  KASAKOD,'
      '  MAKBUZNO,'
      '  KULLANKOD,'
      '  CARIKURU,'
      '  ISLEMKURU,'
      '  PARABIRIMKOD,'
      '  PERSONELKOD,'
      '  BAGLANTINO,'
      '  ISLEMTURKOD,'
      '  CEKISLEMNO,'
      '  SAAT,'
      '  GELGITKOD,'
      '  CARIPARABIRIMKOD,'
      '  C_CARIPARABIRIM,'
      '  C_PARABIRIMI,'
      '  C_KASAADI,'
      '  C_CARIADI,'
      '  C_GGMERKEZI,'
      '  C_KULLANICIADI,'
      '  C_BANKAADI,'
      '  KAPATMA,'
      '  SISTEM,'
      '  C_PERSONEL,'
      '  C_CARITEDIYE,'
      '  C_CARITAHSILAT'
      'from CEKISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update CEKISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  CARINO = :CARINO,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  TARIH = :TARIH,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  TEDIYE = :TEDIYE,'
      '  TAHSILAT = :TAHSILAT,'
      '  D_TEDIYE = :D_TEDIYE,'
      '  D_TAHSILAT = :D_TAHSILAT,'
      '  BANKAKOD = :BANKAKOD,'
      '  KASAKOD = :KASAKOD,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  KULLANKOD = :KULLANKOD,'
      '  CARIKURU = :CARIKURU,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  CEKISLEMNO = :CEKISLEMNO,'
      '  SAAT = :SAAT,'
      '  GELGITKOD = :GELGITKOD,'
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  KAPATMA = :KAPATMA,'
      '  SISTEM = :SISTEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into CEKISLEM'
      
        '  (ISLEMKOD, CARIKOD, CARINO, ISLEMTUR, TARIH, ACIKLAMA, TEDIYE,' +
        ' TAHSILAT, '
      
        '   D_TEDIYE, D_TAHSILAT, BANKAKOD, KASAKOD, MAKBUZNO, KULLANKOD,' +
        ' CARIKURU, '
      
        '   ISLEMKURU, PARABIRIMKOD, PERSONELKOD, BAGLANTINO, CEKISLEMNO,' +
        ' SAAT, '
      '   GELGITKOD, CARIPARABIRIMKOD, KAPATMA, SISTEM)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :CARINO, :ISLEMTUR, :TARIH, :ACIKLAMA, :' +
        'TEDIYE, '
      
        '   :TAHSILAT, :D_TEDIYE, :D_TAHSILAT, :BANKAKOD, :KASAKOD, :MAKB' +
        'UZNO, :KULLANKOD, '
      
        '   :CARIKURU, :ISLEMKURU, :PARABIRIMKOD, :PERSONELKOD, :BAGLANTI' +
        'NO, :CEKISLEMNO, '
      '   :SAAT, :GELGITKOD, :CARIPARABIRIMKOD, :KAPATMA, :SISTEM)')
    DeleteSQL.Strings = (
      'delete from CEKISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 144
    Top = 296
  end
  object CekDS: TDataSource
    DataSet = CekIBQ
    Left = 232
    Top = 296
  end
  object SenetIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SENETISLEM'
      'Where SISTEM=2'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = SenetUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'STOKISLEM'
    Left = 48
    Top = 344
    object SenetIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'SENETISLEM.ISLEMKOD'
      Required = True
    end
    object SenetIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'SENETISLEM.CARIKOD'
    end
    object SenetIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'SENETISLEM.ISLEMTUR'
      Size = 40
    end
    object SenetIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'SENETISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object SenetIBQSENETISLEMNO: TIntegerField
      FieldName = 'SENETISLEMNO'
      Origin = 'SENETISLEM.SENETISLEMNO'
    end
    object SenetIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'SENETISLEM.TARIH'
    end
    object SenetIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'SENETISLEM.SAAT'
    end
    object SenetIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'SENETISLEM.ACIKLAMA'
      Size = 80
    end
    object SenetIBQTEDIYE: TFloatField
      FieldName = 'TEDIYE'
      Origin = 'SENETISLEM.TEDIYE'
    end
    object SenetIBQTAHSILAT: TFloatField
      FieldName = 'TAHSILAT'
      Origin = 'SENETISLEM.TAHSILAT'
    end
    object SenetIBQBAKIYE: TFloatField
      FieldName = 'BAKIYE'
      Origin = 'SENETISLEM.BAKIYE'
    end
    object SenetIBQDURUM: TIBStringField
      FieldName = 'DURUM'
      Origin = 'SENETISLEM.DURUM'
      Size = 10
    end
    object SenetIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'SENETISLEM.D_TEDIYE'
    end
    object SenetIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'SENETISLEM.D_TAHSILAT'
    end
    object SenetIBQCARIKURU: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'SENETISLEM.CARIKURU'
    end
    object SenetIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'SENETISLEM.ISLEMKURU'
    end
    object SenetIBQVADE: TDateField
      FieldName = 'VADE'
      Origin = 'SENETISLEM.VADE'
    end
    object SenetIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'SENETISLEM.CARINO'
    end
    object SenetIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'SENETISLEM.GELGITKOD'
      Size = 80
    end
    object SenetIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'SENETISLEM.KASAKOD'
    end
    object SenetIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'SENETISLEM.BAGLANTINO'
    end
    object SenetIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'SENETISLEM.BANKAKOD'
    end
    object SenetIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'SENETISLEM.PARABIRIMKOD'
    end
    object SenetIBQBANKA: TIBStringField
      FieldName = 'BANKA'
      Origin = 'SENETISLEM.BANKA'
      Size = 30
    end
    object SenetIBQKESIDEYERI: TIBStringField
      FieldName = 'KESIDEYERI'
      Origin = 'SENETISLEM.KESIDEYERI'
      Size = 30
    end
    object SenetIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'SENETISLEM.MAKBUZNO'
    end
    object SenetIBQILKCIRO: TIBStringField
      FieldName = 'ILKCIRO'
      Origin = 'SENETISLEM.ILKCIRO'
      Size = 30
    end
    object SenetIBQSENETSERINO: TIBStringField
      FieldName = 'SENETSERINO'
      Origin = 'SENETISLEM.SENETSERINO'
    end
    object SenetIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'SENETISLEM.KULLANKOD'
    end
    object SenetIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'SENETISLEM.SISTEM'
    end
    object SenetIBQEVRAKDURUMU: TIntegerField
      FieldName = 'EVRAKDURUMU'
      Origin = 'SENETISLEM.EVRAKDURUMU'
    end
    object SenetIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'SENETISLEM.CARIPARABIRIMKOD'
    end
    object SenetIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'SENETISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
  end
  object SenetUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  SENETISLEMNO,'
      '  TARIH,'
      '  SAAT,'
      '  ACIKLAMA,'
      '  TEDIYE,'
      '  TAHSILAT,'
      '  BAKIYE,'
      '  DURUM,'
      '  D_TEDIYE,'
      '  D_TAHSILAT,'
      '  CARIKURU,'
      '  ISLEMKURU,'
      '  VADE,'
      '  CARINO,'
      '  GELGITKOD,'
      '  KASAKOD,'
      '  BAGLANTINO,'
      '  BANKAKOD,'
      '  PARABIRIMKOD,'
      '  BANKA,'
      '  KESIDEYERI,'
      '  MAKBUZNO,'
      '  ILKCIRO,'
      '  SENETSERINO,'
      '  KULLANKOD,'
      '  SISTEM,'
      '  EVRAKDURUMU,'
      '  CARIPARABIRIMKOD,'
      '  C_CARIPARABIRIM'
      'from SENETISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update SENETISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  SENETISLEMNO = :SENETISLEMNO,'
      '  TARIH = :TARIH,'
      '  SAAT = :SAAT,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  TEDIYE = :TEDIYE,'
      '  TAHSILAT = :TAHSILAT,'
      '  BAKIYE = :BAKIYE,'
      '  DURUM = :DURUM,'
      '  D_TEDIYE = :D_TEDIYE,'
      '  D_TAHSILAT = :D_TAHSILAT,'
      '  CARIKURU = :CARIKURU,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  VADE = :VADE,'
      '  CARINO = :CARINO,'
      '  GELGITKOD = :GELGITKOD,'
      '  KASAKOD = :KASAKOD,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  BANKAKOD = :BANKAKOD,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  BANKA = :BANKA,'
      '  KESIDEYERI = :KESIDEYERI,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  ILKCIRO = :ILKCIRO,'
      '  SENETSERINO = :SENETSERINO,'
      '  KULLANKOD = :KULLANKOD,'
      '  SISTEM = :SISTEM,'
      '  EVRAKDURUMU = :EVRAKDURUMU'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into SENETISLEM'
      
        '  (ISLEMKOD, CARIKOD, ISLEMTUR, SENETISLEMNO, TARIH, SAAT, ACIKL' +
        'AMA, TEDIYE, '
      
        '   TAHSILAT, BAKIYE, DURUM, D_TEDIYE, D_TAHSILAT, CARIKURU, ISLE' +
        'MKURU, '
      
        '   VADE, CARINO, GELGITKOD, KASAKOD, BAGLANTINO, BANKAKOD, PARAB' +
        'IRIMKOD, '
      
        '   BANKA, KESIDEYERI, MAKBUZNO, ILKCIRO, SENETSERINO, KULLANKOD,' +
        ' SISTEM, '
      '   EVRAKDURUMU)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :ISLEMTUR, :SENETISLEMNO, :TARIH, :SAAT,' +
        ' :ACIKLAMA, '
      
        '   :TEDIYE, :TAHSILAT, :BAKIYE, :DURUM, :D_TEDIYE, :D_TAHSILAT, ' +
        ':CARIKURU, '
      
        '   :ISLEMKURU, :VADE, :CARINO, :GELGITKOD, :KASAKOD, :BAGLANTINO' +
        ', :BANKAKOD, '
      
        '   :PARABIRIMKOD, :BANKA, :KESIDEYERI, :MAKBUZNO, :ILKCIRO, :SEN' +
        'ETSERINO, '
      '   :KULLANKOD, :SISTEM, :EVRAKDURUMU)')
    DeleteSQL.Strings = (
      'delete from SENETISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 144
    Top = 344
  end
  object SenetDS: TDataSource
    DataSet = SenetIBQ
    Left = 232
    Top = 344
  end
  object IrsaliyeIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from IRSALIYEISLEM'
      'Where SISTEM=2'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = IrsaliyeUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'STOKISLEM'
    Left = 312
    Top = 24
    object IrsaliyeIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'IRSALIYEISLEM.ISLEMKOD'
      Required = True
    end
    object IrsaliyeIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'IRSALIYEISLEM.CARIKOD'
    end
    object IrsaliyeIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'IRSALIYEISLEM.ISLEMTUR'
      Size = 40
    end
    object IrsaliyeIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'IRSALIYEISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object IrsaliyeIBQIRSALIYEISLEMNO: TIntegerField
      FieldName = 'IRSALIYEISLEMNO'
      Origin = 'IRSALIYEISLEM.IRSALIYEISLEMNO'
    end
    object IrsaliyeIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'IRSALIYEISLEM.TARIH'
    end
    object IrsaliyeIBQSEVKTARIH: TDateField
      FieldName = 'SEVKTARIH'
      Origin = 'IRSALIYEISLEM.SEVKTARIH'
    end
    object IrsaliyeIBQIRSALIYETARIH: TDateField
      FieldName = 'IRSALIYETARIH'
      Origin = 'IRSALIYEISLEM.IRSALIYETARIH'
    end
    object IrsaliyeIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'IRSALIYEISLEM.SAAT'
    end
    object IrsaliyeIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'IRSALIYEISLEM.ACIKLAMA'
      Size = 80
    end
    object IrsaliyeIBQTEDIYE: TFloatField
      FieldName = 'TEDIYE'
      Origin = 'IRSALIYEISLEM.TEDIYE'
    end
    object IrsaliyeIBQTAHSILAT: TFloatField
      FieldName = 'TAHSILAT'
      Origin = 'IRSALIYEISLEM.TAHSILAT'
    end
    object IrsaliyeIBQTAHTUTAR: TFloatField
      FieldName = 'TAHTUTAR'
      Origin = 'IRSALIYEISLEM.TAHTUTAR'
    end
    object IrsaliyeIBQTAHKDVTUTAR: TFloatField
      FieldName = 'TAHKDVTUTAR'
      Origin = 'IRSALIYEISLEM.TAHKDVTUTAR'
    end
    object IrsaliyeIBQTEDTUTAR: TFloatField
      FieldName = 'TEDTUTAR'
      Origin = 'IRSALIYEISLEM.TEDTUTAR'
    end
    object IrsaliyeIBQTEDKDVTUTAR: TFloatField
      FieldName = 'TEDKDVTUTAR'
      Origin = 'IRSALIYEISLEM.TEDKDVTUTAR'
    end
    object IrsaliyeIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'IRSALIYEISLEM.D_TEDIYE'
    end
    object IrsaliyeIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'IRSALIYEISLEM.D_TAHSILAT'
    end
    object IrsaliyeIBQCARIKURU: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'IRSALIYEISLEM.CARIKURU'
    end
    object IrsaliyeIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'IRSALIYEISLEM.ISLEMKURU'
    end
    object IrsaliyeIBQTAHSILATMATRAH: TFloatField
      FieldName = 'TAHSILATMATRAH'
      Origin = 'IRSALIYEISLEM.TAHSILATMATRAH'
    end
    object IrsaliyeIBQTEDIYEMATRAH: TFloatField
      FieldName = 'TEDIYEMATRAH'
      Origin = 'IRSALIYEISLEM.TEDIYEMATRAH'
    end
    object IrsaliyeIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'IRSALIYEISLEM.KAPATMA'
    end
    object IrsaliyeIBQVADE: TDateField
      FieldName = 'VADE'
      Origin = 'IRSALIYEISLEM.VADE'
    end
    object IrsaliyeIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'IRSALIYEISLEM.CARINO'
    end
    object IrsaliyeIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'IRSALIYEISLEM.GELGITKOD'
      Size = 80
    end
    object IrsaliyeIBQEVRAKNO: TIntegerField
      FieldName = 'EVRAKNO'
      Origin = 'IRSALIYEISLEM.EVRAKNO'
    end
    object IrsaliyeIBQBELGENO: TIntegerField
      FieldName = 'BELGENO'
      Origin = 'IRSALIYEISLEM.BELGENO'
    end
    object IrsaliyeIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'IRSALIYEISLEM.BAGLANTINO'
    end
    object IrsaliyeIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'IRSALIYEISLEM.CARIHESAPILISKI'
    end
    object IrsaliyeIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'IRSALIYEISLEM.PARABIRIMKOD'
    end
    object IrsaliyeIBQIRSALIYEYERIKOD: TIntegerField
      FieldName = 'IRSALIYEYERIKOD'
      Origin = 'IRSALIYEISLEM.IRSALIYEYERIKOD'
    end
    object IrsaliyeIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'IRSALIYEISLEM.MAKBUZNO'
    end
    object IrsaliyeIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'IRSALIYEISLEM.BILGIKOD'
    end
    object IrsaliyeIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'IRSALIYEISLEM.KULLANKOD'
    end
    object IrsaliyeIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'IRSALIYEISLEM.PERSONELKOD'
    end
    object IrsaliyeIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'IRSALIYEISLEM.SISTEM'
    end
    object IrsaliyeIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'IRSALIYEISLEM.CARIPARABIRIMKOD'
    end
    object IrsaliyeIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'IRSALIYEISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
  end
  object IrsaliyeUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  IRSALIYEISLEMNO,'
      '  TARIH,'
      '  SEVKTARIH,'
      '  IRSALIYETARIH,'
      '  SAAT,'
      '  ACIKLAMA,'
      '  TEDIYE,'
      '  TAHSILAT,'
      '  TAHTUTAR,'
      '  TAHKDVTUTAR,'
      '  TEDTUTAR,'
      '  TEDKDVTUTAR,'
      '  D_TEDIYE,'
      '  D_TAHSILAT,'
      '  CARIKURU,'
      '  ISLEMKURU,'
      '  TAHSILATMATRAH,'
      '  TEDIYEMATRAH,'
      '  KAPATMA,'
      '  VADE,'
      '  CARINO,'
      '  GELGITKOD,'
      '  EVRAKNO,'
      '  BELGENO,'
      '  BAGLANTINO,'
      '  CARIHESAPILISKI,'
      '  PARABIRIMKOD,'
      '  IRSALIYEYERIKOD,'
      '  MAKBUZNO,'
      '  BILGIKOD,'
      '  KULLANKOD,'
      '  PERSONELKOD,'
      '  SISTEM,'
      '  CARIPARABIRIMKOD,'
      '  C_CARIPARABIRIM'
      'from IRSALIYEISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update IRSALIYEISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  IRSALIYEISLEMNO = :IRSALIYEISLEMNO,'
      '  TARIH = :TARIH,'
      '  SEVKTARIH = :SEVKTARIH,'
      '  IRSALIYETARIH = :IRSALIYETARIH,'
      '  SAAT = :SAAT,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  TEDIYE = :TEDIYE,'
      '  TAHSILAT = :TAHSILAT,'
      '  TAHTUTAR = :TAHTUTAR,'
      '  TAHKDVTUTAR = :TAHKDVTUTAR,'
      '  TEDTUTAR = :TEDTUTAR,'
      '  TEDKDVTUTAR = :TEDKDVTUTAR,'
      '  D_TEDIYE = :D_TEDIYE,'
      '  D_TAHSILAT = :D_TAHSILAT,'
      '  CARIKURU = :CARIKURU,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  TAHSILATMATRAH = :TAHSILATMATRAH,'
      '  TEDIYEMATRAH = :TEDIYEMATRAH,'
      '  KAPATMA = :KAPATMA,'
      '  VADE = :VADE,'
      '  CARINO = :CARINO,'
      '  GELGITKOD = :GELGITKOD,'
      '  EVRAKNO = :EVRAKNO,'
      '  BELGENO = :BELGENO,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  CARIHESAPILISKI = :CARIHESAPILISKI,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  IRSALIYEYERIKOD = :IRSALIYEYERIKOD,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  BILGIKOD = :BILGIKOD,'
      '  KULLANKOD = :KULLANKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  SISTEM = :SISTEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into IRSALIYEISLEM'
      
        '  (ISLEMKOD, CARIKOD, ISLEMTUR, IRSALIYEISLEMNO, TARIH, SEVKTARI' +
        'H, IRSALIYETARIH, '
      
        '   SAAT, ACIKLAMA, TEDIYE, TAHSILAT, TAHTUTAR, TAHKDVTUTAR, TEDT' +
        'UTAR, TEDKDVTUTAR, '
      
        '   D_TEDIYE, D_TAHSILAT, CARIKURU, ISLEMKURU, TAHSILATMATRAH, TE' +
        'DIYEMATRAH, '
      
        '   KAPATMA, VADE, CARINO, GELGITKOD, EVRAKNO, BELGENO, BAGLANTIN' +
        'O, CARIHESAPILISKI, '
      
        '   PARABIRIMKOD, IRSALIYEYERIKOD, MAKBUZNO, BILGIKOD, KULLANKOD,' +
        ' PERSONELKOD, '
      '   SISTEM)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :ISLEMTUR, :IRSALIYEISLEMNO, :TARIH, :SE' +
        'VKTARIH, '
      
        '   :IRSALIYETARIH, :SAAT, :ACIKLAMA, :TEDIYE, :TAHSILAT, :TAHTUT' +
        'AR, :TAHKDVTUTAR, '
      
        '   :TEDTUTAR, :TEDKDVTUTAR, :D_TEDIYE, :D_TAHSILAT, :CARIKURU, :' +
        'ISLEMKURU, '
      
        '   :TAHSILATMATRAH, :TEDIYEMATRAH, :KAPATMA, :VADE, :CARINO, :GE' +
        'LGITKOD, '
      
        '   :EVRAKNO, :BELGENO, :BAGLANTINO, :CARIHESAPILISKI, :PARABIRIM' +
        'KOD, :IRSALIYEYERIKOD, '
      '   :MAKBUZNO, :BILGIKOD, :KULLANKOD, :PERSONELKOD, :SISTEM)')
    DeleteSQL.Strings = (
      'delete from IRSALIYEISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 408
    Top = 24
  end
  object IrsaliyeDS: TDataSource
    DataSet = IrsaliyeIBQ
    Left = 496
    Top = 24
  end
  object TeklifIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *  from TEKLIFISLEM'
      'Where SISTEM=2'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = TeklifUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'STOKISLEM'
    Left = 312
    Top = 80
    object TeklifIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'TEKLIFISLEM.ISLEMKOD'
      Required = True
    end
    object TeklifIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'TEKLIFISLEM.CARIKOD'
    end
    object TeklifIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'TEKLIFISLEM.ISLEMTUR'
      Size = 40
    end
    object TeklifIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'TEKLIFISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object TeklifIBQTEKLIFISLEMNO: TIntegerField
      FieldName = 'TEKLIFISLEMNO'
      Origin = 'TEKLIFISLEM.TEKLIFISLEMNO'
    end
    object TeklifIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'TEKLIFISLEM.TARIH'
    end
    object TeklifIBQSEVKTARIH: TDateField
      FieldName = 'SEVKTARIH'
      Origin = 'TEKLIFISLEM.SEVKTARIH'
    end
    object TeklifIBQIRSALIYETARIH: TDateField
      FieldName = 'IRSALIYETARIH'
      Origin = 'TEKLIFISLEM.IRSALIYETARIH'
    end
    object TeklifIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'TEKLIFISLEM.SAAT'
    end
    object TeklifIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'TEKLIFISLEM.ACIKLAMA'
      Size = 80
    end
    object TeklifIBQTEDIYE: TFloatField
      FieldName = 'TEDIYE'
      Origin = 'TEKLIFISLEM.TEDIYE'
    end
    object TeklifIBQTAHSILAT: TFloatField
      FieldName = 'TAHSILAT'
      Origin = 'TEKLIFISLEM.TAHSILAT'
    end
    object TeklifIBQTAHTUTAR: TFloatField
      FieldName = 'TAHTUTAR'
      Origin = 'TEKLIFISLEM.TAHTUTAR'
    end
    object TeklifIBQTAHKDVTUTAR: TFloatField
      FieldName = 'TAHKDVTUTAR'
      Origin = 'TEKLIFISLEM.TAHKDVTUTAR'
    end
    object TeklifIBQTEDTUTAR: TFloatField
      FieldName = 'TEDTUTAR'
      Origin = 'TEKLIFISLEM.TEDTUTAR'
    end
    object TeklifIBQTEDKDVTUTAR: TFloatField
      FieldName = 'TEDKDVTUTAR'
      Origin = 'TEKLIFISLEM.TEDKDVTUTAR'
    end
    object TeklifIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'TEKLIFISLEM.D_TEDIYE'
    end
    object TeklifIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'TEKLIFISLEM.D_TAHSILAT'
    end
    object TeklifIBQCARIKURU: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'TEKLIFISLEM.CARIKURU'
    end
    object TeklifIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'TEKLIFISLEM.ISLEMKURU'
    end
    object TeklifIBQTAHSILATMATRAH: TFloatField
      FieldName = 'TAHSILATMATRAH'
      Origin = 'TEKLIFISLEM.TAHSILATMATRAH'
    end
    object TeklifIBQTEDIYEMATRAH: TFloatField
      FieldName = 'TEDIYEMATRAH'
      Origin = 'TEKLIFISLEM.TEDIYEMATRAH'
    end
    object TeklifIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'TEKLIFISLEM.KAPATMA'
    end
    object TeklifIBQVADE: TDateField
      FieldName = 'VADE'
      Origin = 'TEKLIFISLEM.VADE'
    end
    object TeklifIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'TEKLIFISLEM.CARINO'
    end
    object TeklifIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'TEKLIFISLEM.GELGITKOD'
      Size = 80
    end
    object TeklifIBQEVRAKNO: TIntegerField
      FieldName = 'EVRAKNO'
      Origin = 'TEKLIFISLEM.EVRAKNO'
    end
    object TeklifIBQBELGENO: TIntegerField
      FieldName = 'BELGENO'
      Origin = 'TEKLIFISLEM.BELGENO'
    end
    object TeklifIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'TEKLIFISLEM.BAGLANTINO'
    end
    object TeklifIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'TEKLIFISLEM.CARIHESAPILISKI'
    end
    object TeklifIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'TEKLIFISLEM.PARABIRIMKOD'
    end
    object TeklifIBQTEKLIFYERIKOD: TIntegerField
      FieldName = 'TEKLIFYERIKOD'
      Origin = 'TEKLIFISLEM.TEKLIFYERIKOD'
    end
    object TeklifIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'TEKLIFISLEM.MAKBUZNO'
    end
    object TeklifIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'TEKLIFISLEM.BILGIKOD'
    end
    object TeklifIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'TEKLIFISLEM.KULLANKOD'
    end
    object TeklifIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'TEKLIFISLEM.PERSONELKOD'
    end
    object TeklifIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'TEKLIFISLEM.SISTEM'
    end
    object TeklifIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'TEKLIFISLEM.CARIPARABIRIMKOD'
    end
    object TeklifIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'TEKLIFISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
  end
  object TeklifUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  TEKLIFISLEMNO,'
      '  TARIH,'
      '  SEVKTARIH,'
      '  IRSALIYETARIH,'
      '  SAAT,'
      '  ACIKLAMA,'
      '  TEDIYE,'
      '  TAHSILAT,'
      '  TAHTUTAR,'
      '  TAHKDVTUTAR,'
      '  TEDTUTAR,'
      '  TEDKDVTUTAR,'
      '  D_TEDIYE,'
      '  D_TAHSILAT,'
      '  CARIKURU,'
      '  ISLEMKURU,'
      '  TAHSILATMATRAH,'
      '  TEDIYEMATRAH,'
      '  KAPATMA,'
      '  VADE,'
      '  CARINO,'
      '  GELGITKOD,'
      '  EVRAKNO,'
      '  BELGENO,'
      '  BAGLANTINO,'
      '  CARIHESAPILISKI,'
      '  PARABIRIMKOD,'
      '  TEKLIFYERIKOD,'
      '  MAKBUZNO,'
      '  BILGIKOD,'
      '  KULLANKOD,'
      '  PERSONELKOD,'
      '  SISTEM,'
      '  CARIPARABIRIMKOD,'
      '  C_CARIPARABIRIM'
      'from TEKLIFISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update TEKLIFISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  TEKLIFISLEMNO = :TEKLIFISLEMNO,'
      '  TARIH = :TARIH,'
      '  SEVKTARIH = :SEVKTARIH,'
      '  IRSALIYETARIH = :IRSALIYETARIH,'
      '  SAAT = :SAAT,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  TEDIYE = :TEDIYE,'
      '  TAHSILAT = :TAHSILAT,'
      '  TAHTUTAR = :TAHTUTAR,'
      '  TAHKDVTUTAR = :TAHKDVTUTAR,'
      '  TEDTUTAR = :TEDTUTAR,'
      '  TEDKDVTUTAR = :TEDKDVTUTAR,'
      '  D_TEDIYE = :D_TEDIYE,'
      '  D_TAHSILAT = :D_TAHSILAT,'
      '  CARIKURU = :CARIKURU,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  TAHSILATMATRAH = :TAHSILATMATRAH,'
      '  TEDIYEMATRAH = :TEDIYEMATRAH,'
      '  KAPATMA = :KAPATMA,'
      '  VADE = :VADE,'
      '  CARINO = :CARINO,'
      '  GELGITKOD = :GELGITKOD,'
      '  EVRAKNO = :EVRAKNO,'
      '  BELGENO = :BELGENO,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  CARIHESAPILISKI = :CARIHESAPILISKI,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  TEKLIFYERIKOD = :TEKLIFYERIKOD,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  BILGIKOD = :BILGIKOD,'
      '  KULLANKOD = :KULLANKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  SISTEM = :SISTEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into TEKLIFISLEM'
      
        '  (ISLEMKOD, CARIKOD, ISLEMTUR, TEKLIFISLEMNO, TARIH, SEVKTARIH,' +
        ' IRSALIYETARIH, '
      
        '   SAAT, ACIKLAMA, TEDIYE, TAHSILAT, TAHTUTAR, TAHKDVTUTAR, TEDT' +
        'UTAR, TEDKDVTUTAR, '
      
        '   D_TEDIYE, D_TAHSILAT, CARIKURU, ISLEMKURU, TAHSILATMATRAH, TE' +
        'DIYEMATRAH, '
      
        '   KAPATMA, VADE, CARINO, GELGITKOD, EVRAKNO, BELGENO, BAGLANTIN' +
        'O, CARIHESAPILISKI, '
      
        '   PARABIRIMKOD, TEKLIFYERIKOD, MAKBUZNO, BILGIKOD, KULLANKOD, P' +
        'ERSONELKOD, '
      '   SISTEM)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :ISLEMTUR, :TEKLIFISLEMNO, :TARIH, :SEVK' +
        'TARIH, '
      
        '   :IRSALIYETARIH, :SAAT, :ACIKLAMA, :TEDIYE, :TAHSILAT, :TAHTUT' +
        'AR, :TAHKDVTUTAR, '
      
        '   :TEDTUTAR, :TEDKDVTUTAR, :D_TEDIYE, :D_TAHSILAT, :CARIKURU, :' +
        'ISLEMKURU, '
      
        '   :TAHSILATMATRAH, :TEDIYEMATRAH, :KAPATMA, :VADE, :CARINO, :GE' +
        'LGITKOD, '
      
        '   :EVRAKNO, :BELGENO, :BAGLANTINO, :CARIHESAPILISKI, :PARABIRIM' +
        'KOD, :TEKLIFYERIKOD, '
      '   :MAKBUZNO, :BILGIKOD, :KULLANKOD, :PERSONELKOD, :SISTEM)')
    DeleteSQL.Strings = (
      'delete from TEKLIFISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 408
    Top = 80
  end
  object TeklifDS: TDataSource
    DataSet = TeklifIBQ
    Left = 496
    Top = 80
  end
  object SiparisIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *  from SIPARISISLEM'
      'Where SISTEM=2'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = SiparisUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'STOKISLEM'
    Left = 312
    Top = 128
    object SiparisIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'SIPARISISLEM.ISLEMKOD'
      Required = True
    end
    object SiparisIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'SIPARISISLEM.CARIKOD'
    end
    object SiparisIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'SIPARISISLEM.ISLEMTUR'
      Size = 40
    end
    object SiparisIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'SIPARISISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object SiparisIBQSIPARISISLEMNO: TIntegerField
      FieldName = 'SIPARISISLEMNO'
      Origin = 'SIPARISISLEM.SIPARISISLEMNO'
    end
    object SiparisIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'SIPARISISLEM.TARIH'
    end
    object SiparisIBQSEVKTARIH: TDateField
      FieldName = 'SEVKTARIH'
      Origin = 'SIPARISISLEM.SEVKTARIH'
    end
    object SiparisIBQSIPARISTARIH: TDateField
      FieldName = 'SIPARISTARIH'
      Origin = 'SIPARISISLEM.SIPARISTARIH'
    end
    object SiparisIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'SIPARISISLEM.SAAT'
    end
    object SiparisIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'SIPARISISLEM.ACIKLAMA'
      Size = 80
    end
    object SiparisIBQTEDIYE: TFloatField
      FieldName = 'TEDIYE'
      Origin = 'SIPARISISLEM.TEDIYE'
    end
    object SiparisIBQTAHSILAT: TFloatField
      FieldName = 'TAHSILAT'
      Origin = 'SIPARISISLEM.TAHSILAT'
    end
    object SiparisIBQTAHTUTAR: TFloatField
      FieldName = 'TAHTUTAR'
      Origin = 'SIPARISISLEM.TAHTUTAR'
    end
    object SiparisIBQTAHKDVTUTAR: TFloatField
      FieldName = 'TAHKDVTUTAR'
      Origin = 'SIPARISISLEM.TAHKDVTUTAR'
    end
    object SiparisIBQTEDTUTAR: TFloatField
      FieldName = 'TEDTUTAR'
      Origin = 'SIPARISISLEM.TEDTUTAR'
    end
    object SiparisIBQTEDKDVTUTAR: TFloatField
      FieldName = 'TEDKDVTUTAR'
      Origin = 'SIPARISISLEM.TEDKDVTUTAR'
    end
    object SiparisIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'SIPARISISLEM.D_TEDIYE'
    end
    object SiparisIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'SIPARISISLEM.D_TAHSILAT'
    end
    object SiparisIBQCARIKURU: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'SIPARISISLEM.CARIKURU'
    end
    object SiparisIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'SIPARISISLEM.ISLEMKURU'
    end
    object SiparisIBQTAHSILATMATRAH: TFloatField
      FieldName = 'TAHSILATMATRAH'
      Origin = 'SIPARISISLEM.TAHSILATMATRAH'
    end
    object SiparisIBQTEDIYEMATRAH: TFloatField
      FieldName = 'TEDIYEMATRAH'
      Origin = 'SIPARISISLEM.TEDIYEMATRAH'
    end
    object SiparisIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'SIPARISISLEM.KAPATMA'
    end
    object SiparisIBQVADE: TDateField
      FieldName = 'VADE'
      Origin = 'SIPARISISLEM.VADE'
    end
    object SiparisIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'SIPARISISLEM.CARINO'
    end
    object SiparisIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'SIPARISISLEM.GELGITKOD'
      Size = 80
    end
    object SiparisIBQEVRAKNO: TIntegerField
      FieldName = 'EVRAKNO'
      Origin = 'SIPARISISLEM.EVRAKNO'
    end
    object SiparisIBQBELGENO: TIntegerField
      FieldName = 'BELGENO'
      Origin = 'SIPARISISLEM.BELGENO'
    end
    object SiparisIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'SIPARISISLEM.BAGLANTINO'
    end
    object SiparisIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'SIPARISISLEM.CARIHESAPILISKI'
    end
    object SiparisIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'SIPARISISLEM.PARABIRIMKOD'
    end
    object SiparisIBQSIPARISYERIKOD: TIntegerField
      FieldName = 'SIPARISYERIKOD'
      Origin = 'SIPARISISLEM.SIPARISYERIKOD'
    end
    object SiparisIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'SIPARISISLEM.MAKBUZNO'
    end
    object SiparisIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'SIPARISISLEM.BILGIKOD'
    end
    object SiparisIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'SIPARISISLEM.KULLANKOD'
    end
    object SiparisIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'SIPARISISLEM.PERSONELKOD'
    end
    object SiparisIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'SIPARISISLEM.SISTEM'
    end
    object SiparisIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'SIPARISISLEM.CARIPARABIRIMKOD'
    end
    object SiparisIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'SIPARISISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
  end
  object SiparisUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  SIPARISISLEMNO,'
      '  TARIH,'
      '  SEVKTARIH,'
      '  SIPARISTARIH,'
      '  SAAT,'
      '  ACIKLAMA,'
      '  TEDIYE,'
      '  TAHSILAT,'
      '  TAHTUTAR,'
      '  TAHKDVTUTAR,'
      '  TEDTUTAR,'
      '  TEDKDVTUTAR,'
      '  D_TEDIYE,'
      '  D_TAHSILAT,'
      '  CARIKURU,'
      '  ISLEMKURU,'
      '  TAHSILATMATRAH,'
      '  TEDIYEMATRAH,'
      '  KAPATMA,'
      '  VADE,'
      '  CARINO,'
      '  GELGITKOD,'
      '  EVRAKNO,'
      '  BELGENO,'
      '  BAGLANTINO,'
      '  CARIHESAPILISKI,'
      '  PARABIRIMKOD,'
      '  SIPARISYERIKOD,'
      '  MAKBUZNO,'
      '  BILGIKOD,'
      '  KULLANKOD,'
      '  PERSONELKOD,'
      '  SISTEM,'
      '  CARIPARABIRIMKOD,'
      '  C_CARIPARABIRIM'
      'from SIPARISISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update SIPARISISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  SIPARISISLEMNO = :SIPARISISLEMNO,'
      '  TARIH = :TARIH,'
      '  SEVKTARIH = :SEVKTARIH,'
      '  SIPARISTARIH = :SIPARISTARIH,'
      '  SAAT = :SAAT,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  TEDIYE = :TEDIYE,'
      '  TAHSILAT = :TAHSILAT,'
      '  TAHTUTAR = :TAHTUTAR,'
      '  TAHKDVTUTAR = :TAHKDVTUTAR,'
      '  TEDTUTAR = :TEDTUTAR,'
      '  TEDKDVTUTAR = :TEDKDVTUTAR,'
      '  D_TEDIYE = :D_TEDIYE,'
      '  D_TAHSILAT = :D_TAHSILAT,'
      '  CARIKURU = :CARIKURU,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  TAHSILATMATRAH = :TAHSILATMATRAH,'
      '  TEDIYEMATRAH = :TEDIYEMATRAH,'
      '  KAPATMA = :KAPATMA,'
      '  VADE = :VADE,'
      '  CARINO = :CARINO,'
      '  GELGITKOD = :GELGITKOD,'
      '  EVRAKNO = :EVRAKNO,'
      '  BELGENO = :BELGENO,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  CARIHESAPILISKI = :CARIHESAPILISKI,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  SIPARISYERIKOD = :SIPARISYERIKOD,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  BILGIKOD = :BILGIKOD,'
      '  KULLANKOD = :KULLANKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  SISTEM = :SISTEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into SIPARISISLEM'
      
        '  (ISLEMKOD, CARIKOD, ISLEMTUR, SIPARISISLEMNO, TARIH, SEVKTARIH' +
        ', SIPARISTARIH, '
      
        '   SAAT, ACIKLAMA, TEDIYE, TAHSILAT, TAHTUTAR, TAHKDVTUTAR, TEDT' +
        'UTAR, TEDKDVTUTAR, '
      
        '   D_TEDIYE, D_TAHSILAT, CARIKURU, ISLEMKURU, TAHSILATMATRAH, TE' +
        'DIYEMATRAH, '
      
        '   KAPATMA, VADE, CARINO, GELGITKOD, EVRAKNO, BELGENO, BAGLANTIN' +
        'O, CARIHESAPILISKI, '
      
        '   PARABIRIMKOD, SIPARISYERIKOD, MAKBUZNO, BILGIKOD, KULLANKOD, ' +
        'PERSONELKOD, '
      '   SISTEM)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :ISLEMTUR, :SIPARISISLEMNO, :TARIH, :SEV' +
        'KTARIH, '
      
        '   :SIPARISTARIH, :SAAT, :ACIKLAMA, :TEDIYE, :TAHSILAT, :TAHTUTA' +
        'R, :TAHKDVTUTAR, '
      
        '   :TEDTUTAR, :TEDKDVTUTAR, :D_TEDIYE, :D_TAHSILAT, :CARIKURU, :' +
        'ISLEMKURU, '
      
        '   :TAHSILATMATRAH, :TEDIYEMATRAH, :KAPATMA, :VADE, :CARINO, :GE' +
        'LGITKOD, '
      
        '   :EVRAKNO, :BELGENO, :BAGLANTINO, :CARIHESAPILISKI, :PARABIRIM' +
        'KOD, :SIPARISYERIKOD, '
      '   :MAKBUZNO, :BILGIKOD, :KULLANKOD, :PERSONELKOD, :SISTEM)')
    DeleteSQL.Strings = (
      'delete from SIPARISISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 408
    Top = 128
  end
  object SiparisDS: TDataSource
    DataSet = SiparisIBQ
    Left = 496
    Top = 128
  end
end
