object DMSiparis: TDMSiparis
  OldCreateOrder = False
  Left = 238
  Top = 130
  Height = 528
  Width = 664
  object SiparislerIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = SiparislerIBQAfterDelete
    AfterPost = SiparislerIBQAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SIPARIS'
      'Where SISTEm<>2'
      'Order BY Tarih,islemkod')
    UpdateObject = SiparislerUSQL
    Left = 40
    Top = 8
    object SiparislerIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'SIPARIS.ISLEMKOD'
      Required = True
    end
    object SiparislerIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'SIPARIS.ISLEMTURKOD'
      ReadOnly = True
    end
    object SiparislerIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'SIPARIS.CARIKOD'
    end
    object SiparislerIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'SIPARIS.CARINO'
    end
    object SiparislerIBQSIPARISNO: TIntegerField
      DisplayLabel = 'Sipari'#351' No'
      FieldName = 'SIPARISNO'
      Origin = 'SIPARIS.SIPARISNO'
    end
    object SiparislerIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'SIPARIS.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object SiparislerIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'SIPARIS.SAAT'
    end
    object SiparislerIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'SIPARIS.ACIKLAMA'
      Size = 80
    end
    object SiparislerIBQALISTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' Tutar'#305
      FieldName = 'ALISTUTAR'
      Origin = 'SIPARIS.ALISTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SiparislerIBQSATISTUTAR: TFloatField
      DisplayLabel = 'Sat'#305#351' Tutar'#305
      FieldName = 'SATISTUTAR'
      Origin = 'SIPARIS.SATISTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SiparislerIBQALISMATRAH: TFloatField
      DisplayLabel = 'Al'#305#351' Matrah'
      FieldName = 'ALISMATRAH'
      Origin = 'SIPARIS.ALISMATRAH'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SiparislerIBQALISKDVTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' KDV Tutar'#305
      FieldName = 'ALISKDVTUTAR'
      Origin = 'SIPARIS.ALISKDVTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SiparislerIBQSATISMATRAH: TFloatField
      DisplayLabel = 'Sat'#305#351' Matrah'
      FieldName = 'SATISMATRAH'
      Origin = 'SIPARIS.SATISMATRAH'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SiparislerIBQSATISKDVTUTAR: TFloatField
      DisplayLabel = 'Sat'#305#351' KDV Tutar'#305
      FieldName = 'SATISKDVTUTAR'
      Origin = 'SIPARIS.SATISKDVTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SiparislerIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'SIPARIS.D_TEDIYE'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SiparislerIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'SIPARIS.D_TAHSILAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SiparislerIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'SIPARIS.CARIKURU'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SiparislerIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'SIPARIS.ISLEMKURU'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SiparislerIBQTAHSILATMATRAH: TFloatField
      FieldName = 'TAHSILATMATRAH'
      Origin = 'SIPARIS.TAHSILATMATRAH'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SiparislerIBQTEDIYEMATRAH: TFloatField
      FieldName = 'TEDIYEMATRAH'
      Origin = 'SIPARIS.TEDIYEMATRAH'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SiparislerIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'SIPARIS.KAPATMA'
    end
    object SiparislerIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'SIPARIS.VADE'
      EditMask = '!99/99/00;1;_'
    end
    object SiparislerIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'SIPARIS.GELGITKOD'
      Size = 80
    end
    object SiparislerIBQEVRAKNO: TIntegerField
      DisplayLabel = 'Evrak No'
      FieldName = 'EVRAKNO'
      Origin = 'SIPARIS.EVRAKNO'
    end
    object SiparislerIBQBELGENO: TIntegerField
      DisplayLabel = 'Belge No'
      FieldName = 'BELGENO'
      Origin = 'SIPARIS.BELGENO'
    end
    object SiparislerIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'SIPARIS.BAGLANTINO'
    end
    object SiparislerIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'SIPARIS.PARABIRIMKOD'
    end
    object SiparislerIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'SIPARIS.STOKYERIKOD'
    end
    object SiparislerIBQMAKBUZNO: TIntegerField
      DisplayLabel = 'Makbuz No'
      FieldName = 'MAKBUZNO'
      Origin = 'SIPARIS.MAKBUZNO'
    end
    object SiparislerIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'SIPARIS.BILGIKOD'
    end
    object SiparislerIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'SIPARIS.KULLANKOD'
    end
    object SiparislerIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'SIPARIS.PERSONELKOD'
    end
    object SiparislerIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'SIPARIS.CARIPARABIRIMKOD'
    end
    object SiparislerIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'SIPARIS.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object SiparislerIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'SIPARIS.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object SiparislerIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Uvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'SIPARIS.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object SiparislerIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'SIPARIS.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object SiparislerIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'SIPARIS.C_KULLANICIADI'
      ReadOnly = True
    end
    object SiparislerIBQC_PERSONEL: TIBStringField
      DisplayLabel = 'Personel'
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'SIPARIS.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object SiparislerIBQEVRAKTARIH: TDateField
      DisplayLabel = 'Evrak Tarih'
      FieldName = 'EVRAKTARIH'
      Origin = 'SIPARIS.EVRAKTARIH'
      EditMask = '!99/99/00;1;_'
    end
    object SiparislerIBQKDVSECIM: TIBStringField
      FieldName = 'KDVSECIM'
      Origin = 'SIPARIS.KDVSECIM'
      Size = 5
    end
    object SiparislerIBQD_ALISTUTAR: TFloatField
      DisplayLabel = 'D. Al'#305#351' Tutar'#305
      FieldName = 'D_ALISTUTAR'
      Origin = 'SIPARIS.D_ALISTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SiparislerIBQD_ALISKDVTUTAR: TFloatField
      DisplayLabel = 'D. Al'#305#351' Kdv Tutar'#305
      FieldName = 'D_ALISKDVTUTAR'
      Origin = 'SIPARIS.D_ALISKDVTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SiparislerIBQD_ALISMATRAH: TFloatField
      DisplayLabel = 'D. Al'#305#351' Matrah'#305
      FieldName = 'D_ALISMATRAH'
      Origin = 'SIPARIS.D_ALISMATRAH'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SiparislerIBQD_SATISTUTAR: TFloatField
      DisplayLabel = 'D. Sat'#305#351' Matrah'#305
      FieldName = 'D_SATISTUTAR'
      Origin = 'SIPARIS.D_SATISTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SiparislerIBQD_SATISKDVTUTAR: TFloatField
      DisplayLabel = 'D. Sat'#305#351' KDV Tutar'#305
      FieldName = 'D_SATISKDVTUTAR'
      Origin = 'SIPARIS.D_SATISKDVTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SiparislerIBQD_SATISMATRAH: TFloatField
      DisplayLabel = 'D. Sat'#305#351' Matrah'#305
      FieldName = 'D_SATISMATRAH'
      Origin = 'SIPARIS.D_SATISMATRAH'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SiparislerIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G.G: Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'SIPARIS.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object SiparislerIBQC_FIYATSEC: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_FIYATSEC'
      Origin = 'SIPARIS.C_FIYATSEC'
      ReadOnly = True
    end
    object SiparislerIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'SIPARIS.SISTEM'
    end
    object SiparislerIBQEVRAKDURUM: TIntegerField
      DisplayLabel = 'Durum'
      FieldName = 'EVRAKDURUM'
      Origin = 'SIPARIS.EVRAKDURUM'
    end
    object SiparislerIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'SIPARIS.ISLEMTUR'
      Size = 50
    end
  end
  object SiparislerUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  ISLEMTUR,'
      '  CARIKOD,'
      '  CARINO,'
      '  SIPARISNO,'
      '  TARIH,'
      '  SAAT,'
      '  ACIKLAMA,'
      '  ALISTUTAR,'
      '  SATISTUTAR,'
      '  ALISMATRAH,'
      '  ALISKDVTUTAR,'
      '  SATISMATRAH,'
      '  SATISKDVTUTAR,'
      '  D_TEDIYE,'
      '  D_TAHSILAT,'
      '  CARIKURU,'
      '  ISLEMKURU,'
      '  TAHSILATMATRAH,'
      '  TEDIYEMATRAH,'
      '  KAPATMA,'
      '  VADE,'
      '  GELGITKOD,'
      '  EVRAKNO,'
      '  BELGENO,'
      '  BAGLANTINO,'
      '  PARABIRIMKOD,'
      '  STOKYERIKOD,'
      '  MAKBUZNO,'
      '  BILGIKOD,'
      '  KULLANKOD,'
      '  PERSONELKOD,'
      '  CARIPARABIRIMKOD,'
      '  C_CARIPARABIRIM,'
      '  C_PARABIRIMI,'
      '  C_CARIADI,'
      '  C_STOKYERI,'
      '  C_KULLANICIADI,'
      '  C_PERSONEL,'
      '  EVRAKTARIH,'
      '  KDVSECIM,'
      '  D_ALISTUTAR,'
      '  D_ALISKDVTUTAR,'
      '  D_ALISMATRAH,'
      '  D_SATISTUTAR,'
      '  D_SATISKDVTUTAR,'
      '  D_SATISMATRAH,'
      '  C_GGMERKEZI,'
      '  C_FIYATSEC,'
      '  SISTEM,'
      '  ISLEMTURKOD,'
      '  EVRAKDURUM'
      'from SIPARIS '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update SIPARIS'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  CARIKOD = :CARIKOD,'
      '  CARINO = :CARINO,'
      '  SIPARISNO = :SIPARISNO,'
      '  TARIH = :TARIH,'
      '  SAAT = :SAAT,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  ALISTUTAR = :ALISTUTAR,'
      '  SATISTUTAR = :SATISTUTAR,'
      '  ALISMATRAH = :ALISMATRAH,'
      '  ALISKDVTUTAR = :ALISKDVTUTAR,'
      '  SATISMATRAH = :SATISMATRAH,'
      '  SATISKDVTUTAR = :SATISKDVTUTAR,'
      '  D_TEDIYE = :D_TEDIYE,'
      '  D_TAHSILAT = :D_TAHSILAT,'
      '  CARIKURU = :CARIKURU,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  TAHSILATMATRAH = :TAHSILATMATRAH,'
      '  TEDIYEMATRAH = :TEDIYEMATRAH,'
      '  KAPATMA = :KAPATMA,'
      '  VADE = :VADE,'
      '  GELGITKOD = :GELGITKOD,'
      '  EVRAKNO = :EVRAKNO,'
      '  BELGENO = :BELGENO,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  STOKYERIKOD = :STOKYERIKOD,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  BILGIKOD = :BILGIKOD,'
      '  KULLANKOD = :KULLANKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  EVRAKTARIH = :EVRAKTARIH,'
      '  KDVSECIM = :KDVSECIM,'
      '  D_ALISTUTAR = :D_ALISTUTAR,'
      '  D_ALISKDVTUTAR = :D_ALISKDVTUTAR,'
      '  D_ALISMATRAH = :D_ALISMATRAH,'
      '  D_SATISTUTAR = :D_SATISTUTAR,'
      '  D_SATISKDVTUTAR = :D_SATISKDVTUTAR,'
      '  D_SATISMATRAH = :D_SATISMATRAH,'
      '  SISTEM = :SISTEM,'
      '  EVRAKDURUM = :EVRAKDURUM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into SIPARIS'
      
        '  (ISLEMKOD, ISLEMTUR, CARIKOD, CARINO, SIPARISNO, TARIH, SAAT, ' +
        'ACIKLAMA, '
      
        '   ALISTUTAR, SATISTUTAR, ALISMATRAH, ALISKDVTUTAR, SATISMATRAH,' +
        ' SATISKDVTUTAR, '
      
        '   D_TEDIYE, D_TAHSILAT, CARIKURU, ISLEMKURU, TAHSILATMATRAH, TE' +
        'DIYEMATRAH, '
      
        '   KAPATMA, VADE, GELGITKOD, EVRAKNO, BELGENO, BAGLANTINO, PARAB' +
        'IRIMKOD, '
      
        '   STOKYERIKOD, MAKBUZNO, BILGIKOD, KULLANKOD, PERSONELKOD, CARI' +
        'PARABIRIMKOD, '
      
        '   EVRAKTARIH, KDVSECIM, D_ALISTUTAR, D_ALISKDVTUTAR, D_ALISMATR' +
        'AH, D_SATISTUTAR, '
      '   D_SATISKDVTUTAR, D_SATISMATRAH, SISTEM, EVRAKDURUM)'
      'values'
      
        '  (:ISLEMKOD, :ISLEMTUR, :CARIKOD, :CARINO, :SIPARISNO, :TARIH, ' +
        ':SAAT, '
      
        '   :ACIKLAMA, :ALISTUTAR, :SATISTUTAR, :ALISMATRAH, :ALISKDVTUTA' +
        'R, :SATISMATRAH, '
      
        '   :SATISKDVTUTAR, :D_TEDIYE, :D_TAHSILAT, :CARIKURU, :ISLEMKURU' +
        ', :TAHSILATMATRAH, '
      
        '   :TEDIYEMATRAH, :KAPATMA, :VADE, :GELGITKOD, :EVRAKNO, :BELGEN' +
        'O, :BAGLANTINO, '
      
        '   :PARABIRIMKOD, :STOKYERIKOD, :MAKBUZNO, :BILGIKOD, :KULLANKOD' +
        ', :PERSONELKOD, '
      
        '   :CARIPARABIRIMKOD, :EVRAKTARIH, :KDVSECIM, :D_ALISTUTAR, :D_A' +
        'LISKDVTUTAR, '
      
        '   :D_ALISMATRAH, :D_SATISTUTAR, :D_SATISKDVTUTAR, :D_SATISMATRA' +
        'H, :SISTEM, '
      '   :EVRAKDURUM)')
    DeleteSQL.Strings = (
      'delete from SIPARIS'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 136
    Top = 8
  end
  object SiparislerDS: TDataSource
    DataSet = SiparislerIBQ
    Left = 224
    Top = 8
  end
  object SVermeIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = SVermeIBQAfterDelete
    AfterEdit = SVermeIBQAfterEdit
    AfterPost = SVermeIBQAfterPost
    OnNewRecord = SVermeIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SIPARIS'
      'Where ISLEMKOD=45 and SISTEM<>2'
      'Order By Tarih,islemkod')
    UpdateObject = SVermeSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'SIPARIS'
    Left = 40
    Top = 64
    object SVermeIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'SIPARIS.ISLEMKOD'
      Required = True
    end
    object SVermeIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'SIPARIS.ISLEMTUR'
      Size = 10
    end
    object SVermeIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'SIPARIS.ISLEMTURKOD'
      ReadOnly = True
    end
    object SVermeIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'SIPARIS.CARIKOD'
    end
    object SVermeIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'SIPARIS.CARINO'
    end
    object SVermeIBQSIPARISNO: TIntegerField
      DisplayLabel = 'Sipari'#351' No'
      FieldName = 'SIPARISNO'
      Origin = 'SIPARIS.SIPARISNO'
    end
    object SVermeIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'SIPARIS.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object SVermeIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'SIPARIS.SAAT'
    end
    object SVermeIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'SIPARIS.ACIKLAMA'
      Size = 80
    end
    object SVermeIBQALISTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' Tutar'#305
      FieldName = 'ALISTUTAR'
      Origin = 'SIPARIS.ALISTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeIBQSATISTUTAR: TFloatField
      DisplayLabel = 'Sat'#305#351' Tutar'#305
      FieldName = 'SATISTUTAR'
      Origin = 'SIPARIS.SATISTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeIBQALISMATRAH: TFloatField
      DisplayLabel = 'Al'#305#351' Matrah'
      FieldName = 'ALISMATRAH'
      Origin = 'SIPARIS.ALISMATRAH'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeIBQALISKDVTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' KDV Tutar'#305
      FieldName = 'ALISKDVTUTAR'
      Origin = 'SIPARIS.ALISKDVTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeIBQSATISMATRAH: TFloatField
      DisplayLabel = 'Sat'#305#351' Matrah'
      FieldName = 'SATISMATRAH'
      Origin = 'SIPARIS.SATISMATRAH'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeIBQSATISKDVTUTAR: TFloatField
      DisplayLabel = 'Sat'#305#351' KDV Tutar'#305
      FieldName = 'SATISKDVTUTAR'
      Origin = 'SIPARIS.SATISKDVTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'SIPARIS.D_TEDIYE'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'SIPARIS.D_TAHSILAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'SIPARIS.CARIKURU'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'SIPARIS.ISLEMKURU'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeIBQTAHSILATMATRAH: TFloatField
      FieldName = 'TAHSILATMATRAH'
      Origin = 'SIPARIS.TAHSILATMATRAH'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeIBQTEDIYEMATRAH: TFloatField
      FieldName = 'TEDIYEMATRAH'
      Origin = 'SIPARIS.TEDIYEMATRAH'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'SIPARIS.KAPATMA'
    end
    object SVermeIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'SIPARIS.VADE'
      EditMask = '!99/99/00;1;_'
    end
    object SVermeIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'SIPARIS.GELGITKOD'
      Size = 80
    end
    object SVermeIBQEVRAKNO: TIntegerField
      DisplayLabel = 'Evrak No'
      FieldName = 'EVRAKNO'
      Origin = 'SIPARIS.EVRAKNO'
    end
    object SVermeIBQBELGENO: TIntegerField
      DisplayLabel = 'Belge No'
      FieldName = 'BELGENO'
      Origin = 'SIPARIS.BELGENO'
    end
    object SVermeIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'SIPARIS.BAGLANTINO'
    end
    object SVermeIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'SIPARIS.PARABIRIMKOD'
    end
    object SVermeIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'SIPARIS.STOKYERIKOD'
    end
    object SVermeIBQMAKBUZNO: TIntegerField
      DisplayLabel = 'Makbuz No'
      FieldName = 'MAKBUZNO'
      Origin = 'SIPARIS.MAKBUZNO'
    end
    object SVermeIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'SIPARIS.BILGIKOD'
    end
    object SVermeIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'SIPARIS.KULLANKOD'
    end
    object SVermeIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'SIPARIS.PERSONELKOD'
    end
    object SVermeIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'SIPARIS.CARIPARABIRIMKOD'
    end
    object SVermeIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'SIPARIS.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object SVermeIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'SIPARIS.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object SVermeIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Uvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'SIPARIS.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object SVermeIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'SIPARIS.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object SVermeIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'SIPARIS.C_KULLANICIADI'
      ReadOnly = True
    end
    object SVermeIBQC_PERSONEL: TIBStringField
      DisplayLabel = 'Personel'
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'SIPARIS.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object SVermeIBQEVRAKTARIH: TDateField
      DisplayLabel = 'Evrak Tarih'
      FieldName = 'EVRAKTARIH'
      Origin = 'SIPARIS.EVRAKTARIH'
      EditMask = '!99/99/00;1;_'
    end
    object SVermeIBQKDVSECIM: TIBStringField
      FieldName = 'KDVSECIM'
      Origin = 'SIPARIS.KDVSECIM'
      Size = 5
    end
    object SVermeIBQD_ALISTUTAR: TFloatField
      DisplayLabel = 'D. Al'#305#351' Tutar'#305
      FieldName = 'D_ALISTUTAR'
      Origin = 'SIPARIS.D_ALISTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeIBQD_ALISKDVTUTAR: TFloatField
      DisplayLabel = 'D. Al'#305#351' Kdv Tutar'#305
      FieldName = 'D_ALISKDVTUTAR'
      Origin = 'SIPARIS.D_ALISKDVTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeIBQD_ALISMATRAH: TFloatField
      DisplayLabel = 'D. Al'#305#351' Matrah'#305
      FieldName = 'D_ALISMATRAH'
      Origin = 'SIPARIS.D_ALISMATRAH'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeIBQD_SATISTUTAR: TFloatField
      DisplayLabel = 'D. Sat'#305#351' Matrah'#305
      FieldName = 'D_SATISTUTAR'
      Origin = 'SIPARIS.D_SATISTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeIBQD_SATISKDVTUTAR: TFloatField
      DisplayLabel = 'D. Sat'#305#351' KDV Tutar'#305
      FieldName = 'D_SATISKDVTUTAR'
      Origin = 'SIPARIS.D_SATISKDVTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeIBQD_SATISMATRAH: TFloatField
      DisplayLabel = 'D. Sat'#305#351' Matrah'#305
      FieldName = 'D_SATISMATRAH'
      Origin = 'SIPARIS.D_SATISMATRAH'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G.G: Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'SIPARIS.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object SVermeIBQC_FIYATSEC: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_FIYATSEC'
      Origin = 'SIPARIS.C_FIYATSEC'
      ReadOnly = True
    end
    object SVermeIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'SIPARIS.SISTEM'
    end
    object SVermeIBQEVRAKDURUM: TIntegerField
      DisplayLabel = 'Durum'
      FieldName = 'EVRAKDURUM'
      Origin = 'SIPARIS.EVRAKDURUM'
    end
  end
  object SVermeSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  ISLEMTUR,'
      '  CARIKOD,'
      '  CARINO,'
      '  SIPARISNO,'
      '  TARIH,'
      '  SAAT,'
      '  ACIKLAMA,'
      '  ALISTUTAR,'
      '  SATISTUTAR,'
      '  ALISMATRAH,'
      '  ALISKDVTUTAR,'
      '  SATISMATRAH,'
      '  SATISKDVTUTAR,'
      '  D_TEDIYE,'
      '  D_TAHSILAT,'
      '  CARIKURU,'
      '  ISLEMKURU,'
      '  TAHSILATMATRAH,'
      '  TEDIYEMATRAH,'
      '  KAPATMA,'
      '  VADE,'
      '  GELGITKOD,'
      '  EVRAKNO,'
      '  BELGENO,'
      '  BAGLANTINO,'
      '  PARABIRIMKOD,'
      '  STOKYERIKOD,'
      '  MAKBUZNO,'
      '  BILGIKOD,'
      '  KULLANKOD,'
      '  PERSONELKOD,'
      '  CARIPARABIRIMKOD,'
      '  C_CARIPARABIRIM,'
      '  C_PARABIRIMI,'
      '  C_CARIADI,'
      '  C_STOKYERI,'
      '  C_KULLANICIADI,'
      '  C_PERSONEL,'
      '  EVRAKTARIH,'
      '  KDVSECIM,'
      '  D_ALISTUTAR,'
      '  D_ALISKDVTUTAR,'
      '  D_ALISMATRAH,'
      '  D_SATISTUTAR,'
      '  D_SATISKDVTUTAR,'
      '  D_SATISMATRAH,'
      '  C_GGMERKEZI,'
      '  C_FIYATSEC,'
      '  SISTEM,'
      '  ISLEMTURKOD,'
      '  EVRAKDURUM'
      'from SIPARIS '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update SIPARIS'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  CARIKOD = :CARIKOD,'
      '  CARINO = :CARINO,'
      '  SIPARISNO = :SIPARISNO,'
      '  TARIH = :TARIH,'
      '  SAAT = :SAAT,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  ALISTUTAR = :ALISTUTAR,'
      '  SATISTUTAR = :SATISTUTAR,'
      '  ALISMATRAH = :ALISMATRAH,'
      '  ALISKDVTUTAR = :ALISKDVTUTAR,'
      '  SATISMATRAH = :SATISMATRAH,'
      '  SATISKDVTUTAR = :SATISKDVTUTAR,'
      '  D_TEDIYE = :D_TEDIYE,'
      '  D_TAHSILAT = :D_TAHSILAT,'
      '  CARIKURU = :CARIKURU,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  TAHSILATMATRAH = :TAHSILATMATRAH,'
      '  TEDIYEMATRAH = :TEDIYEMATRAH,'
      '  KAPATMA = :KAPATMA,'
      '  VADE = :VADE,'
      '  GELGITKOD = :GELGITKOD,'
      '  EVRAKNO = :EVRAKNO,'
      '  BELGENO = :BELGENO,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  STOKYERIKOD = :STOKYERIKOD,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  BILGIKOD = :BILGIKOD,'
      '  KULLANKOD = :KULLANKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  EVRAKTARIH = :EVRAKTARIH,'
      '  KDVSECIM = :KDVSECIM,'
      '  D_ALISTUTAR = :D_ALISTUTAR,'
      '  D_ALISKDVTUTAR = :D_ALISKDVTUTAR,'
      '  D_ALISMATRAH = :D_ALISMATRAH,'
      '  D_SATISTUTAR = :D_SATISTUTAR,'
      '  D_SATISKDVTUTAR = :D_SATISKDVTUTAR,'
      '  D_SATISMATRAH = :D_SATISMATRAH,'
      '  SISTEM = :SISTEM,'
      '  EVRAKDURUM = :EVRAKDURUM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into SIPARIS'
      
        '  (ISLEMKOD, ISLEMTUR, CARIKOD, CARINO, SIPARISNO, TARIH, SAAT, ' +
        'ACIKLAMA, '
      
        '   ALISTUTAR, SATISTUTAR, ALISMATRAH, ALISKDVTUTAR, SATISMATRAH,' +
        ' SATISKDVTUTAR, '
      
        '   D_TEDIYE, D_TAHSILAT, CARIKURU, ISLEMKURU, TAHSILATMATRAH, TE' +
        'DIYEMATRAH, '
      
        '   KAPATMA, VADE, GELGITKOD, EVRAKNO, BELGENO, BAGLANTINO, PARAB' +
        'IRIMKOD, '
      
        '   STOKYERIKOD, MAKBUZNO, BILGIKOD, KULLANKOD, PERSONELKOD, CARI' +
        'PARABIRIMKOD, '
      
        '   EVRAKTARIH, KDVSECIM, D_ALISTUTAR, D_ALISKDVTUTAR, D_ALISMATR' +
        'AH, D_SATISTUTAR, '
      '   D_SATISKDVTUTAR, D_SATISMATRAH, SISTEM, EVRAKDURUM)'
      'values'
      
        '  (:ISLEMKOD, :ISLEMTUR, :CARIKOD, :CARINO, :SIPARISNO, :TARIH, ' +
        ':SAAT, '
      
        '   :ACIKLAMA, :ALISTUTAR, :SATISTUTAR, :ALISMATRAH, :ALISKDVTUTA' +
        'R, :SATISMATRAH, '
      
        '   :SATISKDVTUTAR, :D_TEDIYE, :D_TAHSILAT, :CARIKURU, :ISLEMKURU' +
        ', :TAHSILATMATRAH, '
      
        '   :TEDIYEMATRAH, :KAPATMA, :VADE, :GELGITKOD, :EVRAKNO, :BELGEN' +
        'O, :BAGLANTINO, '
      
        '   :PARABIRIMKOD, :STOKYERIKOD, :MAKBUZNO, :BILGIKOD, :KULLANKOD' +
        ', :PERSONELKOD, '
      
        '   :CARIPARABIRIMKOD, :EVRAKTARIH, :KDVSECIM, :D_ALISTUTAR, :D_A' +
        'LISKDVTUTAR, '
      
        '   :D_ALISMATRAH, :D_SATISTUTAR, :D_SATISKDVTUTAR, :D_SATISMATRA' +
        'H, :SISTEM, '
      '   :EVRAKDURUM)')
    DeleteSQL.Strings = (
      'delete from SIPARIS'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 136
    Top = 64
  end
  object SVermeDS: TDataSource
    DataSet = SVermeIBQ
    Left = 224
    Top = 64
  end
  object SVermeBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = SVermeBodroIBQAfterDelete
    AfterEdit = SVermeBodroIBQAfterEdit
    AfterPost = SVermeBodroIBQAfterPost
    OnNewRecord = SVermeBodroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = SVermeDS
    SQL.Strings = (
      'select * from SIPARISBODRO'
      'Where ISLEMKOD=:ISLEMKOD'
      'Order By SIRANO')
    UpdateObject = SVermeBodroSQL
    GeneratorField.Field = 'BODROKOD'
    GeneratorField.Generator = 'SIPARISBODRO'
    Left = 40
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SVermeBodroIBQBODROKOD: TIntegerField
      FieldName = 'BODROKOD'
      Origin = 'SIPARISBODRO.BODROKOD'
      Required = True
    end
    object SVermeBodroIBQSIRANO: TIntegerField
      FieldName = 'SIRANO'
      Origin = 'SIPARISBODRO.SIRANO'
    end
    object SVermeBodroIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'SIPARISBODRO.ISLEMTUR'
      Size = 40
    end
    object SVermeBodroIBQC_ISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_ISLEMTURKOD'
      Origin = 'SIPARISBODRO.C_ISLEMTURKOD'
      ReadOnly = True
    end
    object SVermeBodroIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'SIPARISBODRO.CARIKOD'
    end
    object SVermeBodroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'SIPARISBODRO.PARABIRIMKOD'
    end
    object SVermeBodroIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'SIPARISBODRO.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object SVermeBodroIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'SIPARISBODRO.STOKKOD'
    end
    object SVermeBodroIBQSTOKNO: TIntegerField
      DisplayLabel = 'Stok No'
      FieldName = 'STOKNO'
      Origin = 'SIPARISBODRO.STOKNO'
    end
    object SVermeBodroIBQBARKOD: TIBStringField
      DisplayLabel = 'Barkod'
      FieldName = 'BARKOD'
      Origin = 'SIPARISBODRO.BARKOD'
      Size = 25
    end
    object SVermeBodroIBQSTOKADI: TIBStringField
      DisplayLabel = 'Stok Ad'#305
      FieldName = 'STOKADI'
      Origin = 'SIPARISBODRO.STOKADI'
      Size = 80
    end
    object SVermeBodroIBQMIKTAR: TFloatField
      DisplayLabel = 'Miktar'
      FieldName = 'MIKTAR'
      Origin = 'SIPARISBODRO.MIKTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeBodroIBQMIKTARCARPAN: TIntegerField
      DisplayLabel = 'Miktar '#199'arpan'
      FieldName = 'MIKTARCARPAN'
      Origin = 'SIPARISBODRO.MIKTARCARPAN'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeBodroIBQGIRISMIKTAR: TFloatField
      DisplayLabel = 'Giri'#351' Miktar'#305
      FieldName = 'GIRISMIKTAR'
      Origin = 'SIPARISBODRO.GIRISMIKTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeBodroIBQCIKISMIKTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Miktar'#305
      FieldName = 'CIKISMIKTAR'
      Origin = 'SIPARISBODRO.CIKISMIKTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeBodroIBQBIRIM: TIBStringField
      DisplayLabel = 'Birim'
      FieldName = 'BIRIM'
      Origin = 'SIPARISBODRO.BIRIM'
      Size = 10
    end
    object SVermeBodroIBQBIRIMFIYAT: TFloatField
      DisplayLabel = 'Birim Fiyat'
      FieldName = 'BIRIMFIYAT'
      Origin = 'SIPARISBODRO.BIRIMFIYAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeBodroIBQALISFIYAT: TFloatField
      DisplayLabel = 'Al'#305#351' Fiyat'#305
      FieldName = 'ALISFIYAT'
      Origin = 'SIPARISBODRO.ALISFIYAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeBodroIBQSATISTUTAR: TFloatField
      DisplayLabel = 'Sat'#305#351' Tutar'#305
      FieldName = 'SATISTUTAR'
      Origin = 'SIPARISBODRO.SATISTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeBodroIBQSATISFIYAT: TFloatField
      DisplayLabel = 'Sat'#305#351' Fiyat'#305
      FieldName = 'SATISFIYAT'
      Origin = 'SIPARISBODRO.SATISFIYAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeBodroIBQALISTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' Tutar'#305
      FieldName = 'ALISTUTAR'
      Origin = 'SIPARISBODRO.ALISTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeBodroIBQALISMATRAHI: TFloatField
      DisplayLabel = 'Al'#305#351' Matrah'#305
      FieldName = 'ALISMATRAHI'
      Origin = 'SIPARISBODRO.ALISMATRAHI'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeBodroIBQSATISMATRAHI: TFloatField
      DisplayLabel = 'Sat'#305#351' Matrah'#305
      FieldName = 'SATISMATRAHI'
      Origin = 'SIPARISBODRO.SATISMATRAHI'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeBodroIBQISKONTO1: TFloatField
      DisplayLabel = #304'sk.1'
      FieldName = 'ISKONTO1'
      Origin = 'SIPARISBODRO.ISKONTO1'
    end
    object SVermeBodroIBQISKONTO2: TFloatField
      DisplayLabel = #304'sk.2'
      FieldName = 'ISKONTO2'
      Origin = 'SIPARISBODRO.ISKONTO2'
    end
    object SVermeBodroIBQISKONTO3: TFloatField
      DisplayLabel = #304'sk.3'
      FieldName = 'ISKONTO3'
      Origin = 'SIPARISBODRO.ISKONTO3'
    end
    object SVermeBodroIBQISKONTO4: TFloatField
      DisplayLabel = #304'sk.4'
      FieldName = 'ISKONTO4'
      Origin = 'SIPARISBODRO.ISKONTO4'
    end
    object SVermeBodroIBQKDVORANI: TFloatField
      DisplayLabel = 'Kdv'
      FieldName = 'KDVORANI'
      Origin = 'SIPARISBODRO.KDVORANI'
    end
    object SVermeBodroIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'SIPARISBODRO.ACIKLAMA'
      Size = 60
    end
    object SVermeBodroIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'SIPARISBODRO.KAPATMA'
    end
    object SVermeBodroIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'SIPARISBODRO.VADE'
      EditMask = '!99/99/00;1;_'
    end
    object SVermeBodroIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'SIPARISBODRO.STOKYERIKOD'
    end
    object SVermeBodroIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'SIPARISBODRO.ISLEMKURU'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeBodroIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'SIPARISBODRO.GELGITKOD'
      Size = 80
    end
    object SVermeBodroIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'SIPARISBODRO.PERSONELKOD'
    end
    object SVermeBodroIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'SIPARISBODRO.KULLANKOD'
    end
    object SVermeBodroIBQEVRAKDURUMU: TIntegerField
      FieldName = 'EVRAKDURUMU'
      Origin = 'SIPARISBODRO.EVRAKDURUMU'
    end
    object SVermeBodroIBQSERINO: TIBStringField
      DisplayLabel = 'Seri No'
      FieldName = 'SERINO'
      Origin = 'SIPARISBODRO.SERINO'
      Size = 30
    end
    object SVermeBodroIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'SIPARISBODRO.CARIHESAPILISKI'
    end
    object SVermeBodroIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'SIPARISBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object SVermeBodroIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'SIPARISBODRO.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object SVermeBodroIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'SIPARISBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object SVermeBodroIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'SIPARISBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object SVermeBodroIBQC_REELALIS: TFloatField
      DisplayLabel = 'Reel Al'#305#351
      FieldKind = fkInternalCalc
      FieldName = 'C_REELALIS'
      Origin = 'SIPARISBODRO.C_REELALIS'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeBodroIBQC_REELSATIS: TFloatField
      DisplayLabel = 'Reel Sat'#305#351
      FieldKind = fkInternalCalc
      FieldName = 'C_REELSATIS'
      Origin = 'SIPARISBODRO.C_REELSATIS'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeBodroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'SIPARISBODRO.ISLEMKOD'
    end
    object SVermeBodroIBQKDVSECIM: TIBStringField
      DisplayLabel = 'KDV Se'#231'im'
      FieldName = 'KDVSECIM'
      Origin = 'SIPARISBODRO.KDVSECIM'
      Size = 5
    end
    object SVermeBodroIBQC_TLALISTUTARI: TFloatField
      DisplayLabel = 'TL Al'#305#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISTUTARI'
      Origin = 'SIPARISBODRO.C_TLALISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeBodroIBQC_TLALISMATRAHI: TFloatField
      DisplayLabel = 'TL Al'#305#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISMATRAHI'
      Origin = 'SIPARISBODRO.C_TLALISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeBodroIBQC_TLSATISTUTARI: TFloatField
      DisplayLabel = 'TL Sat'#305#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISTUTARI'
      Origin = 'SIPARISBODRO.C_TLSATISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeBodroIBQC_TLSATISMATRAHI: TFloatField
      DisplayLabel = 'TL Sat'#305#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISMATRAHI'
      Origin = 'SIPARISBODRO.C_TLSATISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeBodroIBQC_TLBIRIMFIYAT: TFloatField
      DisplayLabel = 'TL Birim Fiyat'
      FieldKind = fkInternalCalc
      FieldName = 'C_TLBIRIMFIYAT'
      Origin = 'SIPARISBODRO.C_TLBIRIMFIYAT'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeBodroIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G.G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'SIPARISBODRO.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object SVermeBodroIBQC_ALISKDVTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_ALISKDVTUTAR'
      Origin = 'SIPARISBODRO.C_ALISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeBodroIBQC_SATISKDVTUTAR: TFloatField
      DisplayLabel = 'Sat'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_SATISKDVTUTAR'
      Origin = 'SIPARISBODRO.C_SATISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeBodroIBQC_TLALISKDVTUTAR: TFloatField
      DisplayLabel = 'TL Al'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISKDVTUTAR'
      Origin = 'SIPARISBODRO.C_TLALISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeBodroIBQC_TLSATISKDVTUTARI: TFloatField
      DisplayLabel = 'TL Sat'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISKDVTUTARI'
      Origin = 'SIPARISBODRO.C_TLSATISKDVTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeBodroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'SIPARISBODRO.SISTEM'
    end
    object SVermeBodroIBQMALIYETFIYATI: TFloatField
      DisplayLabel = 'Maliyet Fiyat'#305
      FieldName = 'MALIYETFIYATI'
      Origin = 'SIPARISBODRO.MALIYETFIYATI'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeBodroIBQC_MALIYETTUTARI: TFloatField
      DisplayLabel = 'Maliyet Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_MALIYETTUTARI'
      Origin = 'SIPARISBODRO.C_MALIYETTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SVermeBodroIBQC_KARZARAR: TFloatField
      DisplayLabel = 'Kar Zarar'
      FieldKind = fkInternalCalc
      FieldName = 'C_KARZARAR'
      Origin = 'SIPARISBODRO.C_KARZARAR'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
  end
  object SVermeBodroSQL: TIBUpdateSQL
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
      '  ACIKLAMA,'
      '  KAPATMA,'
      '  VADE,'
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
      '  SISTEM,'
      '  MALIYETFIYATI,'
      '  C_MALIYETTUTARI,'
      '  C_KARZARAR'
      'from SIPARISBODRO '
      'where'
      '  BODROKOD = :BODROKOD')
    ModifySQL.Strings = (
      'update SIPARISBODRO'
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
      '  ACIKLAMA = :ACIKLAMA,'
      '  KAPATMA = :KAPATMA,'
      '  VADE = :VADE,'
      '  STOKYERIKOD = :STOKYERIKOD,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  GELGITKOD = :GELGITKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  KULLANKOD = :KULLANKOD,'
      '  EVRAKDURUMU = :EVRAKDURUMU,'
      '  SERINO = :SERINO,'
      '  CARIHESAPILISKI = :CARIHESAPILISKI,'
      '  ISLEMKOD = :ISLEMKOD,'
      '  KDVSECIM = :KDVSECIM,'
      '  SISTEM = :SISTEM,'
      '  MALIYETFIYATI = :MALIYETFIYATI'
      'where'
      '  BODROKOD = :OLD_BODROKOD')
    InsertSQL.Strings = (
      'insert into SIPARISBODRO'
      
        '  (BODROKOD, SIRANO, ISLEMTUR, CARIKOD, PARABIRIMKOD, TARIH, STO' +
        'KKOD, STOKNO, '
      
        '   BARKOD, STOKADI, MIKTAR, MIKTARCARPAN, GIRISMIKTAR, CIKISMIKT' +
        'AR, BIRIM, '
      
        '   BIRIMFIYAT, ALISFIYAT, SATISTUTAR, SATISFIYAT, ALISTUTAR, ALI' +
        'SMATRAHI, '
      
        '   SATISMATRAHI, ISKONTO1, ISKONTO2, ISKONTO3, ISKONTO4, KDVORAN' +
        'I, ACIKLAMA, '
      
        '   KAPATMA, VADE, STOKYERIKOD, ISLEMKURU, GELGITKOD, PERSONELKOD' +
        ', KULLANKOD, '
      
        '   EVRAKDURUMU, SERINO, CARIHESAPILISKI, ISLEMKOD, KDVSECIM, SIS' +
        'TEM, MALIYETFIYATI)'
      'values'
      
        '  (:BODROKOD, :SIRANO, :ISLEMTUR, :CARIKOD, :PARABIRIMKOD, :TARI' +
        'H, :STOKKOD, '
      
        '   :STOKNO, :BARKOD, :STOKADI, :MIKTAR, :MIKTARCARPAN, :GIRISMIK' +
        'TAR, :CIKISMIKTAR, '
      
        '   :BIRIM, :BIRIMFIYAT, :ALISFIYAT, :SATISTUTAR, :SATISFIYAT, :A' +
        'LISTUTAR, '
      
        '   :ALISMATRAHI, :SATISMATRAHI, :ISKONTO1, :ISKONTO2, :ISKONTO3,' +
        ' :ISKONTO4, '
      
        '   :KDVORANI, :ACIKLAMA, :KAPATMA, :VADE, :STOKYERIKOD, :ISLEMKU' +
        'RU, :GELGITKOD, '
      
        '   :PERSONELKOD, :KULLANKOD, :EVRAKDURUMU, :SERINO, :CARIHESAPIL' +
        'ISKI, :ISLEMKOD, '
      '   :KDVSECIM, :SISTEM, :MALIYETFIYATI)')
    DeleteSQL.Strings = (
      'delete from SIPARISBODRO'
      'where'
      '  BODROKOD = :OLD_BODROKOD')
    Left = 136
    Top = 128
  end
  object SVermeBodroDS: TDataSource
    DataSet = SVermeBodroIBQ
    Left = 224
    Top = 128
  end
  object SVermeBilgiIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = SVermeBilgiIBQAfterDelete
    AfterPost = SVermeBilgiIBQAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ISLEMBILGI'
      'Where ISLEMKOD=:ISLEMKOD and ISLEMTURKOD=:ISLEMTURKOD')
    UpdateObject = SVermeBilgiSQL
    GeneratorField.Field = 'BILGIKOD'
    GeneratorField.Generator = 'ISLEMBILGI'
    Left = 40
    Top = 189
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'ISLEMTURKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SVermeBilgiIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'ISLEMBILGI.BILGIKOD'
      Required = True
    end
    object SVermeBilgiIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'ISLEMBILGI.ISLEMKOD'
    end
    object SVermeBilgiIBQALTBILGI: TMemoField
      FieldName = 'ALTBILGI'
      Origin = 'ISLEMBILGI.ALTBILGI'
      BlobType = ftMemo
      Size = 8
    end
    object SVermeBilgiIBQUSTBILGI: TMemoField
      FieldName = 'USTBILGI'
      Origin = 'ISLEMBILGI.USTBILGI'
      BlobType = ftMemo
      Size = 8
    end
    object SVermeBilgiIBQALTISKONTO: TFloatField
      FieldName = 'ALTISKONTO'
      Origin = 'ISLEMBILGI.ALTISKONTO'
    end
    object SVermeBilgiIBQISLEMTURKOD: TIntegerField
      FieldName = 'ISLEMTURKOD'
      Origin = 'ISLEMBILGI.ISLEMTURKOD'
    end
  end
  object SVermeBilgiSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  BILGIKOD,'
      '  ISLEMKOD,'
      '  ALTBILGI,'
      '  USTBILGI,'
      '  ALTISKONTO,'
      '  ISLEMTURKOD'
      'from ISLEMBILGI '
      'where'
      '  BILGIKOD = :BILGIKOD')
    ModifySQL.Strings = (
      'update ISLEMBILGI'
      'set'
      '  BILGIKOD = :BILGIKOD,'
      '  ISLEMKOD = :ISLEMKOD,'
      '  ALTBILGI = :ALTBILGI,'
      '  USTBILGI = :USTBILGI,'
      '  ALTISKONTO = :ALTISKONTO,'
      '  ISLEMTURKOD = :ISLEMTURKOD'
      'where'
      '  BILGIKOD = :OLD_BILGIKOD')
    InsertSQL.Strings = (
      'insert into ISLEMBILGI'
      
        '  (BILGIKOD, ISLEMKOD, ALTBILGI, USTBILGI, ALTISKONTO, ISLEMTURK' +
        'OD)'
      'values'
      
        '  (:BILGIKOD, :ISLEMKOD, :ALTBILGI, :USTBILGI, :ALTISKONTO, :ISL' +
        'EMTURKOD)')
    DeleteSQL.Strings = (
      'delete from ISLEMBILGI'
      'where'
      '  BILGIKOD = :OLD_BILGIKOD')
    Left = 144
    Top = 189
  end
  object SVermeBilgiDS: TDataSource
    DataSet = SVermeBilgiIBQ
    Left = 232
    Top = 189
  end
  object SAlmaIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterEdit = SAlmaIBQAfterEdit
    AfterPost = SAlmaIBQAfterPost
    OnNewRecord = SAlmaIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SIPARIS'
      'Where ISLEMKOD=45 and SISTEM<>2'
      'Order By Tarih,islemkod')
    UpdateObject = SAlmaSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'SIPARIS'
    Left = 40
    Top = 248
    object SAlmaIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'SIPARIS.ISLEMKOD'
      Required = True
    end
    object SAlmaIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'SIPARIS.ISLEMTUR'
      Size = 10
    end
    object SAlmaIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'SIPARIS.ISLEMTURKOD'
      ReadOnly = True
    end
    object SAlmaIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'SIPARIS.CARIKOD'
    end
    object SAlmaIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'SIPARIS.CARINO'
    end
    object SAlmaIBQSIPARISNO: TIntegerField
      DisplayLabel = 'Sipari'#351' No'
      FieldName = 'SIPARISNO'
      Origin = 'SIPARIS.SIPARISNO'
    end
    object SAlmaIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'SIPARIS.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object SAlmaIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'SIPARIS.SAAT'
    end
    object SAlmaIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'SIPARIS.ACIKLAMA'
      Size = 80
    end
    object SAlmaIBQALISTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' Tutar'#305
      FieldName = 'ALISTUTAR'
      Origin = 'SIPARIS.ALISTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaIBQSATISTUTAR: TFloatField
      DisplayLabel = 'Sat'#305#351' Tutar'#305
      FieldName = 'SATISTUTAR'
      Origin = 'SIPARIS.SATISTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaIBQALISMATRAH: TFloatField
      DisplayLabel = 'Al'#305#351' Matrah'
      FieldName = 'ALISMATRAH'
      Origin = 'SIPARIS.ALISMATRAH'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaIBQALISKDVTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' KDV Tutar'#305
      FieldName = 'ALISKDVTUTAR'
      Origin = 'SIPARIS.ALISKDVTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaIBQSATISMATRAH: TFloatField
      DisplayLabel = 'Sat'#305#351' Matrah'
      FieldName = 'SATISMATRAH'
      Origin = 'SIPARIS.SATISMATRAH'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaIBQSATISKDVTUTAR: TFloatField
      DisplayLabel = 'Sat'#305#351' KDV Tutar'#305
      FieldName = 'SATISKDVTUTAR'
      Origin = 'SIPARIS.SATISKDVTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'SIPARIS.D_TEDIYE'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'SIPARIS.D_TAHSILAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'SIPARIS.CARIKURU'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'SIPARIS.ISLEMKURU'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaIBQTAHSILATMATRAH: TFloatField
      FieldName = 'TAHSILATMATRAH'
      Origin = 'SIPARIS.TAHSILATMATRAH'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaIBQTEDIYEMATRAH: TFloatField
      FieldName = 'TEDIYEMATRAH'
      Origin = 'SIPARIS.TEDIYEMATRAH'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'SIPARIS.KAPATMA'
    end
    object SAlmaIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'SIPARIS.VADE'
      EditMask = '!99/99/00;1;_'
    end
    object SAlmaIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'SIPARIS.GELGITKOD'
      Size = 80
    end
    object SAlmaIBQEVRAKNO: TIntegerField
      DisplayLabel = 'Evrak No'
      FieldName = 'EVRAKNO'
      Origin = 'SIPARIS.EVRAKNO'
    end
    object SAlmaIBQBELGENO: TIntegerField
      DisplayLabel = 'Belge No'
      FieldName = 'BELGENO'
      Origin = 'SIPARIS.BELGENO'
    end
    object SAlmaIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'SIPARIS.BAGLANTINO'
    end
    object SAlmaIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'SIPARIS.PARABIRIMKOD'
    end
    object SAlmaIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'SIPARIS.STOKYERIKOD'
    end
    object SAlmaIBQMAKBUZNO: TIntegerField
      DisplayLabel = 'Makbuz No'
      FieldName = 'MAKBUZNO'
      Origin = 'SIPARIS.MAKBUZNO'
    end
    object SAlmaIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'SIPARIS.BILGIKOD'
    end
    object SAlmaIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'SIPARIS.KULLANKOD'
    end
    object SAlmaIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'SIPARIS.PERSONELKOD'
    end
    object SAlmaIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'SIPARIS.CARIPARABIRIMKOD'
    end
    object SAlmaIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'SIPARIS.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object SAlmaIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'SIPARIS.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object SAlmaIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Uvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'SIPARIS.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object SAlmaIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'SIPARIS.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object SAlmaIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'SIPARIS.C_KULLANICIADI'
      ReadOnly = True
    end
    object SAlmaIBQC_PERSONEL: TIBStringField
      DisplayLabel = 'Personel'
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'SIPARIS.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object SAlmaIBQEVRAKTARIH: TDateField
      DisplayLabel = 'Evrak Tarih'
      FieldName = 'EVRAKTARIH'
      Origin = 'SIPARIS.EVRAKTARIH'
      EditMask = '!99/99/00;1;_'
    end
    object SAlmaIBQKDVSECIM: TIBStringField
      FieldName = 'KDVSECIM'
      Origin = 'SIPARIS.KDVSECIM'
      Size = 5
    end
    object SAlmaIBQD_ALISTUTAR: TFloatField
      DisplayLabel = 'D. Al'#305#351' Tutar'#305
      FieldName = 'D_ALISTUTAR'
      Origin = 'SIPARIS.D_ALISTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaIBQD_ALISKDVTUTAR: TFloatField
      DisplayLabel = 'D. Al'#305#351' Kdv Tutar'#305
      FieldName = 'D_ALISKDVTUTAR'
      Origin = 'SIPARIS.D_ALISKDVTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaIBQD_ALISMATRAH: TFloatField
      DisplayLabel = 'D. Al'#305#351' Matrah'#305
      FieldName = 'D_ALISMATRAH'
      Origin = 'SIPARIS.D_ALISMATRAH'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaIBQD_SATISTUTAR: TFloatField
      DisplayLabel = 'D. Sat'#305#351' Matrah'#305
      FieldName = 'D_SATISTUTAR'
      Origin = 'SIPARIS.D_SATISTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaIBQD_SATISKDVTUTAR: TFloatField
      DisplayLabel = 'D. Sat'#305#351' KDV Tutar'#305
      FieldName = 'D_SATISKDVTUTAR'
      Origin = 'SIPARIS.D_SATISKDVTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaIBQD_SATISMATRAH: TFloatField
      DisplayLabel = 'D. Sat'#305#351' Matrah'#305
      FieldName = 'D_SATISMATRAH'
      Origin = 'SIPARIS.D_SATISMATRAH'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G.G: Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'SIPARIS.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object SAlmaIBQC_FIYATSEC: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_FIYATSEC'
      Origin = 'SIPARIS.C_FIYATSEC'
      ReadOnly = True
    end
    object SAlmaIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'SIPARIS.SISTEM'
    end
    object SAlmaIBQEVRAKDURUM: TIntegerField
      DisplayLabel = 'Durum'
      FieldName = 'EVRAKDURUM'
      Origin = 'SIPARIS.EVRAKDURUM'
    end
  end
  object SAlmaSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  ISLEMTUR,'
      '  CARIKOD,'
      '  CARINO,'
      '  SIPARISNO,'
      '  TARIH,'
      '  SAAT,'
      '  ACIKLAMA,'
      '  ALISTUTAR,'
      '  SATISTUTAR,'
      '  ALISMATRAH,'
      '  ALISKDVTUTAR,'
      '  SATISMATRAH,'
      '  SATISKDVTUTAR,'
      '  D_TEDIYE,'
      '  D_TAHSILAT,'
      '  CARIKURU,'
      '  ISLEMKURU,'
      '  TAHSILATMATRAH,'
      '  TEDIYEMATRAH,'
      '  KAPATMA,'
      '  VADE,'
      '  GELGITKOD,'
      '  EVRAKNO,'
      '  BELGENO,'
      '  BAGLANTINO,'
      '  PARABIRIMKOD,'
      '  STOKYERIKOD,'
      '  MAKBUZNO,'
      '  BILGIKOD,'
      '  KULLANKOD,'
      '  PERSONELKOD,'
      '  CARIPARABIRIMKOD,'
      '  C_CARIPARABIRIM,'
      '  C_PARABIRIMI,'
      '  C_CARIADI,'
      '  C_STOKYERI,'
      '  C_KULLANICIADI,'
      '  C_PERSONEL,'
      '  EVRAKTARIH,'
      '  KDVSECIM,'
      '  D_ALISTUTAR,'
      '  D_ALISKDVTUTAR,'
      '  D_ALISMATRAH,'
      '  D_SATISTUTAR,'
      '  D_SATISKDVTUTAR,'
      '  D_SATISMATRAH,'
      '  C_GGMERKEZI,'
      '  C_FIYATSEC,'
      '  SISTEM,'
      '  ISLEMTURKOD,'
      '  EVRAKDURUM'
      'from SIPARIS '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update SIPARIS'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  CARIKOD = :CARIKOD,'
      '  CARINO = :CARINO,'
      '  SIPARISNO = :SIPARISNO,'
      '  TARIH = :TARIH,'
      '  SAAT = :SAAT,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  ALISTUTAR = :ALISTUTAR,'
      '  SATISTUTAR = :SATISTUTAR,'
      '  ALISMATRAH = :ALISMATRAH,'
      '  ALISKDVTUTAR = :ALISKDVTUTAR,'
      '  SATISMATRAH = :SATISMATRAH,'
      '  SATISKDVTUTAR = :SATISKDVTUTAR,'
      '  D_TEDIYE = :D_TEDIYE,'
      '  D_TAHSILAT = :D_TAHSILAT,'
      '  CARIKURU = :CARIKURU,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  TAHSILATMATRAH = :TAHSILATMATRAH,'
      '  TEDIYEMATRAH = :TEDIYEMATRAH,'
      '  KAPATMA = :KAPATMA,'
      '  VADE = :VADE,'
      '  GELGITKOD = :GELGITKOD,'
      '  EVRAKNO = :EVRAKNO,'
      '  BELGENO = :BELGENO,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  STOKYERIKOD = :STOKYERIKOD,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  BILGIKOD = :BILGIKOD,'
      '  KULLANKOD = :KULLANKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  EVRAKTARIH = :EVRAKTARIH,'
      '  KDVSECIM = :KDVSECIM,'
      '  D_ALISTUTAR = :D_ALISTUTAR,'
      '  D_ALISKDVTUTAR = :D_ALISKDVTUTAR,'
      '  D_ALISMATRAH = :D_ALISMATRAH,'
      '  D_SATISTUTAR = :D_SATISTUTAR,'
      '  D_SATISKDVTUTAR = :D_SATISKDVTUTAR,'
      '  D_SATISMATRAH = :D_SATISMATRAH,'
      '  SISTEM = :SISTEM,'
      '  EVRAKDURUM = :EVRAKDURUM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into SIPARIS'
      
        '  (ISLEMKOD, ISLEMTUR, CARIKOD, CARINO, SIPARISNO, TARIH, SAAT, ' +
        'ACIKLAMA, '
      
        '   ALISTUTAR, SATISTUTAR, ALISMATRAH, ALISKDVTUTAR, SATISMATRAH,' +
        ' SATISKDVTUTAR, '
      
        '   D_TEDIYE, D_TAHSILAT, CARIKURU, ISLEMKURU, TAHSILATMATRAH, TE' +
        'DIYEMATRAH, '
      
        '   KAPATMA, VADE, GELGITKOD, EVRAKNO, BELGENO, BAGLANTINO, PARAB' +
        'IRIMKOD, '
      
        '   STOKYERIKOD, MAKBUZNO, BILGIKOD, KULLANKOD, PERSONELKOD, CARI' +
        'PARABIRIMKOD, '
      
        '   EVRAKTARIH, KDVSECIM, D_ALISTUTAR, D_ALISKDVTUTAR, D_ALISMATR' +
        'AH, D_SATISTUTAR, '
      '   D_SATISKDVTUTAR, D_SATISMATRAH, SISTEM, EVRAKDURUM)'
      'values'
      
        '  (:ISLEMKOD, :ISLEMTUR, :CARIKOD, :CARINO, :SIPARISNO, :TARIH, ' +
        ':SAAT, '
      
        '   :ACIKLAMA, :ALISTUTAR, :SATISTUTAR, :ALISMATRAH, :ALISKDVTUTA' +
        'R, :SATISMATRAH, '
      
        '   :SATISKDVTUTAR, :D_TEDIYE, :D_TAHSILAT, :CARIKURU, :ISLEMKURU' +
        ', :TAHSILATMATRAH, '
      
        '   :TEDIYEMATRAH, :KAPATMA, :VADE, :GELGITKOD, :EVRAKNO, :BELGEN' +
        'O, :BAGLANTINO, '
      
        '   :PARABIRIMKOD, :STOKYERIKOD, :MAKBUZNO, :BILGIKOD, :KULLANKOD' +
        ', :PERSONELKOD, '
      
        '   :CARIPARABIRIMKOD, :EVRAKTARIH, :KDVSECIM, :D_ALISTUTAR, :D_A' +
        'LISKDVTUTAR, '
      
        '   :D_ALISMATRAH, :D_SATISTUTAR, :D_SATISKDVTUTAR, :D_SATISMATRA' +
        'H, :SISTEM, '
      '   :EVRAKDURUM)')
    DeleteSQL.Strings = (
      'delete from SIPARIS'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 136
    Top = 248
  end
  object SAlmaDS: TDataSource
    DataSet = SAlmaIBQ
    Left = 224
    Top = 248
  end
  object SAlmaBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterEdit = SAlmaBodroIBQAfterEdit
    AfterPost = SAlmaBodroIBQAfterPost
    OnNewRecord = SAlmaBodroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = SAlmaDS
    SQL.Strings = (
      'select * from SIPARISBODRO'
      'Where ISLEMKOD=:ISLEMKOD'
      'Order By SIRANO')
    UpdateObject = SAlmaBodroSQL
    GeneratorField.Field = 'BODROKOD'
    GeneratorField.Generator = 'SIPARISBODRO'
    Left = 40
    Top = 312
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SAlmaBodroIBQBODROKOD: TIntegerField
      FieldName = 'BODROKOD'
      Origin = 'SIPARISBODRO.BODROKOD'
      Required = True
    end
    object SAlmaBodroIBQSIRANO: TIntegerField
      FieldName = 'SIRANO'
      Origin = 'SIPARISBODRO.SIRANO'
    end
    object SAlmaBodroIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'SIPARISBODRO.ISLEMTUR'
      Size = 40
    end
    object SAlmaBodroIBQC_ISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_ISLEMTURKOD'
      Origin = 'SIPARISBODRO.C_ISLEMTURKOD'
      ReadOnly = True
    end
    object SAlmaBodroIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'SIPARISBODRO.CARIKOD'
    end
    object SAlmaBodroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'SIPARISBODRO.PARABIRIMKOD'
    end
    object SAlmaBodroIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'SIPARISBODRO.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object SAlmaBodroIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'SIPARISBODRO.STOKKOD'
    end
    object SAlmaBodroIBQSTOKNO: TIntegerField
      DisplayLabel = 'Stok No'
      FieldName = 'STOKNO'
      Origin = 'SIPARISBODRO.STOKNO'
    end
    object SAlmaBodroIBQBARKOD: TIBStringField
      DisplayLabel = 'Barkod'
      FieldName = 'BARKOD'
      Origin = 'SIPARISBODRO.BARKOD'
      Size = 25
    end
    object SAlmaBodroIBQSTOKADI: TIBStringField
      DisplayLabel = 'Stok Ad'#305
      FieldName = 'STOKADI'
      Origin = 'SIPARISBODRO.STOKADI'
      Size = 80
    end
    object SAlmaBodroIBQMIKTAR: TFloatField
      DisplayLabel = 'Miktar'
      FieldName = 'MIKTAR'
      Origin = 'SIPARISBODRO.MIKTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaBodroIBQMIKTARCARPAN: TIntegerField
      DisplayLabel = 'Miktar '#199'arpan'
      FieldName = 'MIKTARCARPAN'
      Origin = 'SIPARISBODRO.MIKTARCARPAN'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaBodroIBQGIRISMIKTAR: TFloatField
      DisplayLabel = 'Giri'#351' Miktar'#305
      FieldName = 'GIRISMIKTAR'
      Origin = 'SIPARISBODRO.GIRISMIKTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaBodroIBQCIKISMIKTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Miktar'#305
      FieldName = 'CIKISMIKTAR'
      Origin = 'SIPARISBODRO.CIKISMIKTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaBodroIBQBIRIM: TIBStringField
      DisplayLabel = 'Birim'
      FieldName = 'BIRIM'
      Origin = 'SIPARISBODRO.BIRIM'
      Size = 10
    end
    object SAlmaBodroIBQBIRIMFIYAT: TFloatField
      DisplayLabel = 'Birim Fiyat'
      FieldName = 'BIRIMFIYAT'
      Origin = 'SIPARISBODRO.BIRIMFIYAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaBodroIBQALISFIYAT: TFloatField
      DisplayLabel = 'Al'#305#351' Fiyat'#305
      FieldName = 'ALISFIYAT'
      Origin = 'SIPARISBODRO.ALISFIYAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaBodroIBQSATISTUTAR: TFloatField
      DisplayLabel = 'Sat'#305#351' Tutar'#305
      FieldName = 'SATISTUTAR'
      Origin = 'SIPARISBODRO.SATISTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaBodroIBQSATISFIYAT: TFloatField
      DisplayLabel = 'Sat'#305#351' Fiyat'#305
      FieldName = 'SATISFIYAT'
      Origin = 'SIPARISBODRO.SATISFIYAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaBodroIBQALISTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' Tutar'#305
      FieldName = 'ALISTUTAR'
      Origin = 'SIPARISBODRO.ALISTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaBodroIBQALISMATRAHI: TFloatField
      DisplayLabel = 'Al'#305#351' Matrah'#305
      FieldName = 'ALISMATRAHI'
      Origin = 'SIPARISBODRO.ALISMATRAHI'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaBodroIBQSATISMATRAHI: TFloatField
      DisplayLabel = 'Sat'#305#351' Matrah'#305
      FieldName = 'SATISMATRAHI'
      Origin = 'SIPARISBODRO.SATISMATRAHI'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaBodroIBQISKONTO1: TFloatField
      DisplayLabel = #304'sk.1'
      FieldName = 'ISKONTO1'
      Origin = 'SIPARISBODRO.ISKONTO1'
    end
    object SAlmaBodroIBQISKONTO2: TFloatField
      DisplayLabel = #304'sk.2'
      FieldName = 'ISKONTO2'
      Origin = 'SIPARISBODRO.ISKONTO2'
    end
    object SAlmaBodroIBQISKONTO3: TFloatField
      DisplayLabel = #304'sk.3'
      FieldName = 'ISKONTO3'
      Origin = 'SIPARISBODRO.ISKONTO3'
    end
    object SAlmaBodroIBQISKONTO4: TFloatField
      DisplayLabel = #304'sk.4'
      FieldName = 'ISKONTO4'
      Origin = 'SIPARISBODRO.ISKONTO4'
    end
    object SAlmaBodroIBQKDVORANI: TFloatField
      DisplayLabel = 'Kdv'
      FieldName = 'KDVORANI'
      Origin = 'SIPARISBODRO.KDVORANI'
    end
    object SAlmaBodroIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'SIPARISBODRO.ACIKLAMA'
      Size = 60
    end
    object SAlmaBodroIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'SIPARISBODRO.KAPATMA'
    end
    object SAlmaBodroIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'SIPARISBODRO.VADE'
      EditMask = '!99/99/00;1;_'
    end
    object SAlmaBodroIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'SIPARISBODRO.STOKYERIKOD'
    end
    object SAlmaBodroIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'SIPARISBODRO.ISLEMKURU'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaBodroIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'SIPARISBODRO.GELGITKOD'
      Size = 80
    end
    object SAlmaBodroIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'SIPARISBODRO.PERSONELKOD'
    end
    object SAlmaBodroIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'SIPARISBODRO.KULLANKOD'
    end
    object SAlmaBodroIBQEVRAKDURUMU: TIntegerField
      FieldName = 'EVRAKDURUMU'
      Origin = 'SIPARISBODRO.EVRAKDURUMU'
    end
    object SAlmaBodroIBQSERINO: TIBStringField
      DisplayLabel = 'Seri No'
      FieldName = 'SERINO'
      Origin = 'SIPARISBODRO.SERINO'
      Size = 30
    end
    object SAlmaBodroIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'SIPARISBODRO.CARIHESAPILISKI'
    end
    object SAlmaBodroIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'SIPARISBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object SAlmaBodroIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'SIPARISBODRO.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object SAlmaBodroIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'SIPARISBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object SAlmaBodroIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'SIPARISBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object SAlmaBodroIBQC_REELALIS: TFloatField
      DisplayLabel = 'Reel Al'#305#351
      FieldKind = fkInternalCalc
      FieldName = 'C_REELALIS'
      Origin = 'SIPARISBODRO.C_REELALIS'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaBodroIBQC_REELSATIS: TFloatField
      DisplayLabel = 'Reel Sat'#305#351
      FieldKind = fkInternalCalc
      FieldName = 'C_REELSATIS'
      Origin = 'SIPARISBODRO.C_REELSATIS'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaBodroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'SIPARISBODRO.ISLEMKOD'
    end
    object SAlmaBodroIBQKDVSECIM: TIBStringField
      DisplayLabel = 'KDV Se'#231'im'
      FieldName = 'KDVSECIM'
      Origin = 'SIPARISBODRO.KDVSECIM'
      Size = 5
    end
    object SAlmaBodroIBQC_TLALISTUTARI: TFloatField
      DisplayLabel = 'TL Al'#305#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISTUTARI'
      Origin = 'SIPARISBODRO.C_TLALISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaBodroIBQC_TLALISMATRAHI: TFloatField
      DisplayLabel = 'TL Al'#305#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISMATRAHI'
      Origin = 'SIPARISBODRO.C_TLALISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaBodroIBQC_TLSATISTUTARI: TFloatField
      DisplayLabel = 'TL Sat'#305#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISTUTARI'
      Origin = 'SIPARISBODRO.C_TLSATISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaBodroIBQC_TLSATISMATRAHI: TFloatField
      DisplayLabel = 'TL Sat'#305#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISMATRAHI'
      Origin = 'SIPARISBODRO.C_TLSATISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaBodroIBQC_TLBIRIMFIYAT: TFloatField
      DisplayLabel = 'TL Birim Fiyat'
      FieldKind = fkInternalCalc
      FieldName = 'C_TLBIRIMFIYAT'
      Origin = 'SIPARISBODRO.C_TLBIRIMFIYAT'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaBodroIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G.G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'SIPARISBODRO.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object SAlmaBodroIBQC_ALISKDVTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_ALISKDVTUTAR'
      Origin = 'SIPARISBODRO.C_ALISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaBodroIBQC_SATISKDVTUTAR: TFloatField
      DisplayLabel = 'Sat'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_SATISKDVTUTAR'
      Origin = 'SIPARISBODRO.C_SATISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaBodroIBQC_TLALISKDVTUTAR: TFloatField
      DisplayLabel = 'TL Al'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISKDVTUTAR'
      Origin = 'SIPARISBODRO.C_TLALISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaBodroIBQC_TLSATISKDVTUTARI: TFloatField
      DisplayLabel = 'TL Sat'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISKDVTUTARI'
      Origin = 'SIPARISBODRO.C_TLSATISKDVTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaBodroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'SIPARISBODRO.SISTEM'
    end
    object SAlmaBodroIBQMALIYETFIYATI: TFloatField
      DisplayLabel = 'Maliyet Fiyat'#305
      FieldName = 'MALIYETFIYATI'
      Origin = 'SIPARISBODRO.MALIYETFIYATI'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaBodroIBQC_MALIYETTUTARI: TFloatField
      DisplayLabel = 'Maliyet Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_MALIYETTUTARI'
      Origin = 'SIPARISBODRO.C_MALIYETTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object SAlmaBodroIBQC_KARZARAR: TFloatField
      DisplayLabel = 'Kar Zarar'
      FieldKind = fkInternalCalc
      FieldName = 'C_KARZARAR'
      Origin = 'SIPARISBODRO.C_KARZARAR'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
  end
  object SAlmaBodroSQL: TIBUpdateSQL
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
      '  ACIKLAMA,'
      '  KAPATMA,'
      '  VADE,'
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
      '  SISTEM,'
      '  MALIYETFIYATI,'
      '  C_MALIYETTUTARI,'
      '  C_KARZARAR'
      'from SIPARISBODRO '
      'where'
      '  BODROKOD = :BODROKOD')
    ModifySQL.Strings = (
      'update SIPARISBODRO'
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
      '  ACIKLAMA = :ACIKLAMA,'
      '  KAPATMA = :KAPATMA,'
      '  VADE = :VADE,'
      '  STOKYERIKOD = :STOKYERIKOD,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  GELGITKOD = :GELGITKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  KULLANKOD = :KULLANKOD,'
      '  EVRAKDURUMU = :EVRAKDURUMU,'
      '  SERINO = :SERINO,'
      '  CARIHESAPILISKI = :CARIHESAPILISKI,'
      '  ISLEMKOD = :ISLEMKOD,'
      '  KDVSECIM = :KDVSECIM,'
      '  SISTEM = :SISTEM,'
      '  MALIYETFIYATI = :MALIYETFIYATI'
      'where'
      '  BODROKOD = :OLD_BODROKOD')
    InsertSQL.Strings = (
      'insert into SIPARISBODRO'
      
        '  (BODROKOD, SIRANO, ISLEMTUR, CARIKOD, PARABIRIMKOD, TARIH, STO' +
        'KKOD, STOKNO, '
      
        '   BARKOD, STOKADI, MIKTAR, MIKTARCARPAN, GIRISMIKTAR, CIKISMIKT' +
        'AR, BIRIM, '
      
        '   BIRIMFIYAT, ALISFIYAT, SATISTUTAR, SATISFIYAT, ALISTUTAR, ALI' +
        'SMATRAHI, '
      
        '   SATISMATRAHI, ISKONTO1, ISKONTO2, ISKONTO3, ISKONTO4, KDVORAN' +
        'I, ACIKLAMA, '
      
        '   KAPATMA, VADE, STOKYERIKOD, ISLEMKURU, GELGITKOD, PERSONELKOD' +
        ', KULLANKOD, '
      
        '   EVRAKDURUMU, SERINO, CARIHESAPILISKI, ISLEMKOD, KDVSECIM, SIS' +
        'TEM, MALIYETFIYATI)'
      'values'
      
        '  (:BODROKOD, :SIRANO, :ISLEMTUR, :CARIKOD, :PARABIRIMKOD, :TARI' +
        'H, :STOKKOD, '
      
        '   :STOKNO, :BARKOD, :STOKADI, :MIKTAR, :MIKTARCARPAN, :GIRISMIK' +
        'TAR, :CIKISMIKTAR, '
      
        '   :BIRIM, :BIRIMFIYAT, :ALISFIYAT, :SATISTUTAR, :SATISFIYAT, :A' +
        'LISTUTAR, '
      
        '   :ALISMATRAHI, :SATISMATRAHI, :ISKONTO1, :ISKONTO2, :ISKONTO3,' +
        ' :ISKONTO4, '
      
        '   :KDVORANI, :ACIKLAMA, :KAPATMA, :VADE, :STOKYERIKOD, :ISLEMKU' +
        'RU, :GELGITKOD, '
      
        '   :PERSONELKOD, :KULLANKOD, :EVRAKDURUMU, :SERINO, :CARIHESAPIL' +
        'ISKI, :ISLEMKOD, '
      '   :KDVSECIM, :SISTEM, :MALIYETFIYATI)')
    DeleteSQL.Strings = (
      'delete from SIPARISBODRO'
      'where'
      '  BODROKOD = :OLD_BODROKOD')
    Left = 136
    Top = 312
  end
  object SAlmaBodroDS: TDataSource
    DataSet = SAlmaBodroIBQ
    Left = 224
    Top = 312
  end
  object SAlmaBilgiIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = SVermeBilgiIBQAfterDelete
    AfterPost = SVermeBilgiIBQAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ISLEMBILGI'
      'Where ISLEMKOD=:ISLEMKOD and ISLEMTURKOD=:ISLEMTURKOD')
    UpdateObject = SAlmaBilgiSQL
    GeneratorField.Field = 'BILGIKOD'
    GeneratorField.Generator = 'ISLEMBILGI'
    Left = 40
    Top = 365
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'ISLEMTURKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SAlmaBilgiIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'ISLEMBILGI.BILGIKOD'
      Required = True
    end
    object SAlmaBilgiIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'ISLEMBILGI.ISLEMKOD'
    end
    object SAlmaBilgiIBQALTBILGI: TMemoField
      FieldName = 'ALTBILGI'
      Origin = 'ISLEMBILGI.ALTBILGI'
      BlobType = ftMemo
      Size = 8
    end
    object SAlmaBilgiIBQUSTBILGI: TMemoField
      FieldName = 'USTBILGI'
      Origin = 'ISLEMBILGI.USTBILGI'
      BlobType = ftMemo
      Size = 8
    end
    object SAlmaBilgiIBQALTISKONTO: TFloatField
      FieldName = 'ALTISKONTO'
      Origin = 'ISLEMBILGI.ALTISKONTO'
    end
    object SAlmaBilgiIBQISLEMTURKOD: TIntegerField
      FieldName = 'ISLEMTURKOD'
      Origin = 'ISLEMBILGI.ISLEMTURKOD'
    end
  end
  object SAlmaBilgiSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  BILGIKOD,'
      '  ISLEMKOD,'
      '  ALTBILGI,'
      '  USTBILGI,'
      '  ALTISKONTO,'
      '  ISLEMTURKOD'
      'from ISLEMBILGI '
      'where'
      '  BILGIKOD = :BILGIKOD')
    ModifySQL.Strings = (
      'update ISLEMBILGI'
      'set'
      '  BILGIKOD = :BILGIKOD,'
      '  ISLEMKOD = :ISLEMKOD,'
      '  ALTBILGI = :ALTBILGI,'
      '  USTBILGI = :USTBILGI,'
      '  ALTISKONTO = :ALTISKONTO,'
      '  ISLEMTURKOD = :ISLEMTURKOD'
      'where'
      '  BILGIKOD = :OLD_BILGIKOD')
    InsertSQL.Strings = (
      'insert into ISLEMBILGI'
      
        '  (BILGIKOD, ISLEMKOD, ALTBILGI, USTBILGI, ALTISKONTO, ISLEMTURK' +
        'OD)'
      'values'
      
        '  (:BILGIKOD, :ISLEMKOD, :ALTBILGI, :USTBILGI, :ALTISKONTO, :ISL' +
        'EMTURKOD)')
    DeleteSQL.Strings = (
      'delete from ISLEMBILGI'
      'where'
      '  BILGIKOD = :OLD_BILGIKOD')
    Left = 136
    Top = 365
  end
  object SAlmaBilgiDS: TDataSource
    DataSet = SAlmaBilgiIBQ
    Left = 224
    Top = 365
  end
end
