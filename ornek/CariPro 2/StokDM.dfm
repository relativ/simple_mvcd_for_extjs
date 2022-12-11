object DMStok: TDMStok
  OldCreateOrder = False
  Left = 378
  Top = 221
  Height = 555
  Width = 691
  object StokKartUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  STOKKOD,'
      '  STOKNO,'
      '  BARKOD,'
      '  STOKADI,'
      '  STOKTURU,'
      '  BIRIM,'
      '  BIRIMCARPAN,'
      '  KOLIMIKTAR,'
      '  SECIM,'
      '  PARABIRIMIKOD,'
      '  STOKTIPI,'
      '  ACTIVITE,'
      '  KARORANI,'
      '  MINSEVIYE,'
      '  MAXSEVIYE,'
      '  SIPSEVIYE,'
      '  NEGSEVIYE,'
      '  KDVORAN,'
      '  ALISFIYAT,'
      '  SATISFIYAT1,'
      '  SATISFIYAT2,'
      '  SATISFIYAT3,'
      '  KDVLI_SATIS1,'
      '  KDVLI_SATIS2,'
      '  KDVLI_SATIS3,'
      '  BAKIYE,'
      '  DURUM,'
      '  REELALIS,'
      '  REELSATIS,'
      '  ORTALAMALIS,'
      '  ORTALAMSATIS,'
      '  SONALIS,'
      '  SONSATIS,'
      '  ACIKLAMA,'
      '  CARIKOD,'
      '  C_PARABIRIMI,'
      '  C_KAYNAKADI,'
      '  ALINANSIPARIS,'
      '  VERILENSIPARIS,'
      '  AGIRLIK,'
      '  HACIM,'
      '  STOKTIPIKOD,'
      '  C_STOKTIPI'
      'from STOKKART '
      'where'
      '  STOKKOD = :STOKKOD')
    ModifySQL.Strings = (
      'update STOKKART'
      'set'
      '  STOKKOD = :STOKKOD,'
      '  STOKNO = :STOKNO,'
      '  BARKOD = :BARKOD,'
      '  STOKADI = :STOKADI,'
      '  STOKTURU = :STOKTURU,'
      '  BIRIM = :BIRIM,'
      '  BIRIMCARPAN = :BIRIMCARPAN,'
      '  KOLIMIKTAR = :KOLIMIKTAR,'
      '  SECIM = :SECIM,'
      '  PARABIRIMIKOD = :PARABIRIMIKOD,'
      '  STOKTIPI = :STOKTIPI,'
      '  ACTIVITE = :ACTIVITE,'
      '  KARORANI = :KARORANI,'
      '  MINSEVIYE = :MINSEVIYE,'
      '  MAXSEVIYE = :MAXSEVIYE,'
      '  SIPSEVIYE = :SIPSEVIYE,'
      '  NEGSEVIYE = :NEGSEVIYE,'
      '  KDVORAN = :KDVORAN,'
      '  ALISFIYAT = :ALISFIYAT,'
      '  SATISFIYAT1 = :SATISFIYAT1,'
      '  SATISFIYAT2 = :SATISFIYAT2,'
      '  SATISFIYAT3 = :SATISFIYAT3,'
      '  KDVLI_SATIS1 = :KDVLI_SATIS1,'
      '  KDVLI_SATIS2 = :KDVLI_SATIS2,'
      '  KDVLI_SATIS3 = :KDVLI_SATIS3,'
      '  BAKIYE = :BAKIYE,'
      '  DURUM = :DURUM,'
      '  REELALIS = :REELALIS,'
      '  REELSATIS = :REELSATIS,'
      '  ORTALAMALIS = :ORTALAMALIS,'
      '  ORTALAMSATIS = :ORTALAMSATIS,'
      '  SONALIS = :SONALIS,'
      '  SONSATIS = :SONSATIS,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  CARIKOD = :CARIKOD,'
      '  ALINANSIPARIS = :ALINANSIPARIS,'
      '  VERILENSIPARIS = :VERILENSIPARIS,'
      '  AGIRLIK = :AGIRLIK,'
      '  HACIM = :HACIM,'
      '  STOKTIPIKOD = :STOKTIPIKOD'
      'where'
      '  STOKKOD = :OLD_STOKKOD')
    InsertSQL.Strings = (
      'insert into STOKKART'
      
        '  (STOKKOD, STOKNO, BARKOD, STOKADI, STOKTURU, BIRIM, BIRIMCARPA' +
        'N, KOLIMIKTAR, '
      
        '   SECIM, PARABIRIMIKOD, STOKTIPI, ACTIVITE, KARORANI, MINSEVIYE' +
        ', MAXSEVIYE, '
      
        '   SIPSEVIYE, NEGSEVIYE, KDVORAN, ALISFIYAT, SATISFIYAT1, SATISF' +
        'IYAT2, '
      
        '   SATISFIYAT3, KDVLI_SATIS1, KDVLI_SATIS2, KDVLI_SATIS3, BAKIYE' +
        ', DURUM, '
      
        '   REELALIS, REELSATIS, ORTALAMALIS, ORTALAMSATIS, SONALIS, SONS' +
        'ATIS, ACIKLAMA, '
      
        '   CARIKOD, ALINANSIPARIS, VERILENSIPARIS, AGIRLIK, HACIM, STOKT' +
        'IPIKOD)'
      'values'
      
        '  (:STOKKOD, :STOKNO, :BARKOD, :STOKADI, :STOKTURU, :BIRIM, :BIR' +
        'IMCARPAN, '
      
        '   :KOLIMIKTAR, :SECIM, :PARABIRIMIKOD, :STOKTIPI, :ACTIVITE, :K' +
        'ARORANI, '
      
        '   :MINSEVIYE, :MAXSEVIYE, :SIPSEVIYE, :NEGSEVIYE, :KDVORAN, :AL' +
        'ISFIYAT, '
      
        '   :SATISFIYAT1, :SATISFIYAT2, :SATISFIYAT3, :KDVLI_SATIS1, :KDV' +
        'LI_SATIS2, '
      
        '   :KDVLI_SATIS3, :BAKIYE, :DURUM, :REELALIS, :REELSATIS, :ORTAL' +
        'AMALIS, '
      
        '   :ORTALAMSATIS, :SONALIS, :SONSATIS, :ACIKLAMA, :CARIKOD, :ALI' +
        'NANSIPARIS, '
      '   :VERILENSIPARIS, :AGIRLIK, :HACIM, :STOKTIPIKOD)')
    DeleteSQL.Strings = (
      'delete from STOKKART'
      'where'
      '  STOKKOD = :OLD_STOKKOD')
    Left = 136
    Top = 8
  end
  object StokKartDS: TDataSource
    DataSet = StokKartiIBQ
    Left = 224
    Top = 8
  end
  object StokAlterIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = StokAlterIBQAfterDelete
    AfterPost = StokAlterIBQAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = StokKartDS
    SQL.Strings = (
      'select * from STOKALTERNATIF'
      'Where STOKKOD=:STOKKOD')
    UpdateObject = StokAlterUSQL
    GeneratorField.Field = 'ALTERKOD'
    GeneratorField.Generator = 'STOKALTERNATIF'
    Left = 40
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'STOKKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object StokAlterIBQALTERKOD: TIntegerField
      FieldName = 'ALTERKOD'
      Origin = 'STOKALTERNATIF.ALTERKOD'
    end
    object StokAlterIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'STOKALTERNATIF.STOKKOD'
    end
    object StokAlterIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'STOKALTERNATIF.ACIKLAMA'
      Size = 60
    end
    object StokAlterIBQSTOKBAGKOD: TIntegerField
      FieldName = 'STOKBAGKOD'
      Origin = 'STOKALTERNATIF.STOKBAGKOD'
    end
    object StokAlterIBQC_STOKADI: TIBStringField
      DisplayLabel = 'Stok Ad'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKADI'
      Origin = 'STOKALTERNATIF.C_STOKADI'
      ReadOnly = True
      Size = 40
    end
  end
  object StokAlterUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ALTERKOD,'
      '  STOKKOD,'
      '  ACIKLAMA,'
      '  STOKBAGKOD'
      'from STOKALTERNATIF '
      'where'
      '  ALTERKOD = :ALTERKOD')
    ModifySQL.Strings = (
      'update STOKALTERNATIF'
      'set'
      '  ALTERKOD = :ALTERKOD,'
      '  STOKKOD = :STOKKOD,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  STOKBAGKOD = :STOKBAGKOD'
      'where'
      '  ALTERKOD = :OLD_ALTERKOD')
    InsertSQL.Strings = (
      'insert into STOKALTERNATIF'
      '  (ALTERKOD, STOKKOD, ACIKLAMA, STOKBAGKOD)'
      'values'
      '  (:ALTERKOD, :STOKKOD, :ACIKLAMA, :STOKBAGKOD)')
    DeleteSQL.Strings = (
      'delete from STOKALTERNATIF'
      'where'
      '  ALTERKOD = :OLD_ALTERKOD')
    Left = 136
    Top = 224
  end
  object StokAlterDS: TDataSource
    DataSet = StokAlterIBQ
    Left = 224
    Top = 224
  end
  object StokOzellikIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    OnNewRecord = StokOzellikIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = StokKartDS
    SQL.Strings = (
      'select * from STOKOZELLIK'
      'Where STOKKOD=:STOKKOD')
    UpdateObject = StokOzellikSQL5
    GeneratorField.Field = 'STOKEZOLKOD'
    GeneratorField.Generator = 'STOKOZELLIK'
    Left = 40
    Top = 280
    ParamData = <
      item
        DataType = ftInteger
        Name = 'STOKKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object StokOzellikIBQSTOKEZOLKOD: TIntegerField
      FieldName = 'STOKEZOLKOD'
      Origin = 'STOKOZELLIK.STOKEZOLKOD'
      Required = True
    end
    object StokOzellikIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'STOKOZELLIK.STOKKOD'
    end
    object StokOzellikIBQOZELLIKNO: TIntegerField
      DisplayLabel = 'No'
      FieldName = 'OZELLIKNO'
      Origin = 'STOKOZELLIK.OZELLIKNO'
    end
    object StokOzellikIBQOZELLIK: TIBStringField
      DisplayLabel = #214'zellik'
      FieldName = 'OZELLIK'
      Origin = 'STOKOZELLIK.OZELLIK'
      Size = 60
    end
    object StokOzellikIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama,'
      FieldName = 'ACIKLAMA'
      Origin = 'STOKOZELLIK.ACIKLAMA'
      Size = 60
    end
  end
  object StokOzellikSQL5: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  STOKEZOLKOD,'
      '  STOKKOD,'
      '  OZELLIKNO,'
      '  OZELLIK,'
      '  ACIKLAMA'
      'from STOKOZELLIK '
      'where'
      '  STOKEZOLKOD = :STOKEZOLKOD')
    ModifySQL.Strings = (
      'update STOKOZELLIK'
      'set'
      '  STOKEZOLKOD = :STOKEZOLKOD,'
      '  STOKKOD = :STOKKOD,'
      '  OZELLIKNO = :OZELLIKNO,'
      '  OZELLIK = :OZELLIK,'
      '  ACIKLAMA = :ACIKLAMA'
      'where'
      '  STOKEZOLKOD = :OLD_STOKEZOLKOD')
    InsertSQL.Strings = (
      'insert into STOKOZELLIK'
      '  (STOKEZOLKOD, STOKKOD, OZELLIKNO, OZELLIK, ACIKLAMA)'
      'values'
      '  (:STOKEZOLKOD, :STOKKOD, :OZELLIKNO, :OZELLIK, :ACIKLAMA)')
    DeleteSQL.Strings = (
      'delete from STOKOZELLIK'
      'where'
      '  STOKEZOLKOD = :OLD_STOKEZOLKOD')
    Left = 136
    Top = 280
  end
  object StokOzellikDS: TDataSource
    DataSet = StokOzellikIBQ
    Left = 224
    Top = 280
  end
  object StokGirisIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STOKISLEM')
    UpdateObject = StokGirisUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'STOKISLEM'
    Left = 40
    Top = 400
    object StokGirisIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'STOKISLEM.ISLEMKOD'
      Required = True
    end
    object StokGirisIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'STOKISLEM.CARIKOD'
    end
    object StokGirisIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'STOKISLEM.CARINO'
    end
    object StokGirisIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'STOKISLEM.ISLEMTUR'
      Size = 10
    end
    object StokGirisIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'STOKISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object StokGirisIBQSTOKISLEMNO: TIntegerField
      FieldName = 'STOKISLEMNO'
      Origin = 'STOKISLEM.STOKISLEMNO'
    end
    object StokGirisIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'STOKISLEM.TARIH'
    end
    object StokGirisIBQIRSALIYETARIH: TDateField
      FieldName = 'IRSALIYETARIH'
      Origin = 'STOKISLEM.IRSALIYETARIH'
    end
    object StokGirisIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'STOKISLEM.SAAT'
    end
    object StokGirisIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'STOKISLEM.ACIKLAMA'
      Size = 80
    end
    object StokGirisIBQGIRISTUTAR: TFloatField
      FieldName = 'GIRISTUTAR'
      Origin = 'STOKISLEM.GIRISTUTAR'
    end
    object StokGirisIBQCIKISTUTAR: TFloatField
      FieldName = 'CIKISTUTAR'
      Origin = 'STOKISLEM.CIKISTUTAR'
    end
    object StokGirisIBQGIRISMATRAH: TFloatField
      FieldName = 'GIRISMATRAH'
      Origin = 'STOKISLEM.GIRISMATRAH'
    end
    object StokGirisIBQGIRISKDVTUTAR: TFloatField
      FieldName = 'GIRISKDVTUTAR'
      Origin = 'STOKISLEM.GIRISKDVTUTAR'
    end
    object StokGirisIBQCIKISMATRAH: TFloatField
      FieldName = 'CIKISMATRAH'
      Origin = 'STOKISLEM.CIKISMATRAH'
    end
    object StokGirisIBQCIKISKDVTUTAR: TFloatField
      FieldName = 'CIKISKDVTUTAR'
      Origin = 'STOKISLEM.CIKISKDVTUTAR'
    end
    object StokGirisIBQCARIKURU: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'STOKISLEM.CARIKURU'
    end
    object StokGirisIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'STOKISLEM.ISLEMKURU'
    end
    object StokGirisIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'STOKISLEM.KAPATMA'
    end
    object StokGirisIBQVADE: TDateField
      FieldName = 'VADE'
      Origin = 'STOKISLEM.VADE'
    end
    object StokGirisIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'STOKISLEM.GELGITKOD'
      Size = 80
    end
    object StokGirisIBQEVRAKNO: TIntegerField
      FieldName = 'EVRAKNO'
      Origin = 'STOKISLEM.EVRAKNO'
    end
    object StokGirisIBQBELGENO: TIntegerField
      FieldName = 'BELGENO'
      Origin = 'STOKISLEM.BELGENO'
    end
    object StokGirisIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'STOKISLEM.BAGLANTINO'
    end
    object StokGirisIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'STOKISLEM.CARIHESAPILISKI'
    end
    object StokGirisIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'STOKISLEM.PARABIRIMKOD'
    end
    object StokGirisIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'STOKISLEM.STOKYERIKOD'
    end
    object StokGirisIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'STOKISLEM.MAKBUZNO'
    end
    object StokGirisIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'STOKISLEM.BILGIKOD'
    end
    object StokGirisIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'STOKISLEM.KULLANKOD'
    end
    object StokGirisIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'STOKISLEM.PERSONELKOD'
    end
    object StokGirisIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'STOKISLEM.SISTEM'
    end
    object StokGirisIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'STOKISLEM.CARIPARABIRIMKOD'
    end
    object StokGirisIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'STOKISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object StokGirisIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'STOKISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object StokGirisIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'STOKISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object StokGirisIBQC_STOKYERI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'STOKISLEM.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object StokGirisIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'STOKISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object StokGirisIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'STOKISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object StokGirisIBQFATURATARIH: TDateField
      FieldName = 'FATURATARIH'
      Origin = 'STOKISLEM.FATURATARIH'
    end
    object StokGirisIBQKDVSECIM: TIBStringField
      FieldName = 'KDVSECIM'
      Origin = 'STOKISLEM.KDVSECIM'
      Size = 5
    end
    object StokGirisIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'STOKISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object StokGirisIBQIRSALIYENO: TIntegerField
      FieldName = 'IRSALIYENO'
      Origin = 'STOKISLEM.IRSALIYENO'
    end
    object StokGirisIBQEVRAKTARIH: TDateField
      FieldName = 'EVRAKTARIH'
      Origin = 'STOKISLEM.EVRAKTARIH'
    end
    object StokGirisIBQD_GIRISTUTAR: TFloatField
      FieldName = 'D_GIRISTUTAR'
      Origin = 'STOKISLEM.D_GIRISTUTAR'
    end
    object StokGirisIBQD_GIRISKDVTUTAR: TFloatField
      FieldName = 'D_GIRISKDVTUTAR'
      Origin = 'STOKISLEM.D_GIRISKDVTUTAR'
    end
    object StokGirisIBQD_GIRISMATRAH: TFloatField
      FieldName = 'D_GIRISMATRAH'
      Origin = 'STOKISLEM.D_GIRISMATRAH'
    end
    object StokGirisIBQD_CIKISTUTAR: TFloatField
      FieldName = 'D_CIKISTUTAR'
      Origin = 'STOKISLEM.D_CIKISTUTAR'
    end
    object StokGirisIBQD_CIKISKDVTUTAR: TFloatField
      FieldName = 'D_CIKISKDVTUTAR'
      Origin = 'STOKISLEM.D_CIKISKDVTUTAR'
    end
    object StokGirisIBQD_CIKISMATRAH: TFloatField
      FieldName = 'D_CIKISMATRAH'
      Origin = 'STOKISLEM.D_CIKISMATRAH'
    end
  end
  object StokGirisUSQL: TIBUpdateSQL
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
      '  ISLEMTURKOD = :ISLEMTURKOD,'
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
      
        '  (ISLEMKOD, CARIKOD, CARINO, ISLEMTURKOD, STOKISLEMNO, TARIH, I' +
        'RSALIYETARIH, '
      
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
      
        '  (:ISLEMKOD, :CARIKOD, :CARINO, :ISLEMTURKOD, :STOKISLEMNO, :TA' +
        'RIH, :IRSALIYETARIH, '
      
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
    Left = 136
    Top = 400
  end
  object StokGirisDS: TDataSource
    DataSet = StokGirisIBQ
    Left = 224
    Top = 400
  end
  object FiyatListesiIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = FiyatListesiIBQAfterDelete
    AfterPost = FiyatListesiIBQAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = StokGruplariDS
    SQL.Strings = (
      
        'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STO' +
        'KGRUP,STOKKART'
      
        'where (STOKGRUP.KONTROLNO like :KONTROLNO || '#39'%'#39') and (STOKGRUP.' +
        'STOKKOD = STOKKART.STOKKOD) ')
    UpdateObject = FiyatListesiUSQL
    GeneratorField.Field = 'STOKODU'
    GeneratorField.Generator = 'STOKKART'
    Left = 40
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'KONTROLNO'
        ParamType = ptUnknown
        Size = 61
      end>
    object FiyatListesiIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'STOKGRUP.STOKKOD'
    end
    object FiyatListesiIBQGRUPKOD: TIntegerField
      FieldName = 'GRUPKOD'
      Origin = 'STOKGRUP.GRUPKOD'
      Required = True
    end
    object FiyatListesiIBQSTOKKOD1: TIntegerField
      FieldName = 'STOKKOD1'
      Origin = 'STOKGRUP.STOKKOD'
    end
    object FiyatListesiIBQGRUPLARKOD: TIntegerField
      FieldName = 'GRUPLARKOD'
      Origin = 'STOKGRUP.GRUPLARKOD'
    end
    object FiyatListesiIBQKONTROLNO: TIBStringField
      FieldName = 'KONTROLNO'
      Origin = 'STOKGRUP.KONTROLNO'
      Size = 60
    end
    object FiyatListesiIBQACTIVITE: TIBStringField
      FieldName = 'ACTIVITE'
      Origin = 'STOKGRUP.ACTIVITE'
      Size = 5
    end
    object FiyatListesiIBQSTOKKOD2: TIntegerField
      FieldName = 'STOKKOD2'
      Origin = 'STOKKART.STOKKOD'
      Required = True
    end
    object FiyatListesiIBQSTOKNO: TIntegerField
      FieldName = 'STOKNO'
      Origin = 'STOKKART.STOKNO'
    end
    object FiyatListesiIBQBARKOD: TIBStringField
      FieldName = 'BARKOD'
      Origin = 'STOKKART.BARKOD'
      Size = 25
    end
    object FiyatListesiIBQSTOKADI: TIBStringField
      FieldName = 'STOKADI'
      Origin = 'STOKKART.STOKADI'
      Size = 40
    end
    object FiyatListesiIBQSTOKTURU: TIBStringField
      FieldName = 'STOKTURU'
      Origin = 'STOKKART.STOKTURU'
    end
    object FiyatListesiIBQBIRIM: TIBStringField
      FieldName = 'BIRIM'
      Origin = 'STOKKART.BIRIM'
      Size = 10
    end
    object FiyatListesiIBQBIRIMCARPAN: TFloatField
      FieldName = 'BIRIMCARPAN'
      Origin = 'STOKKART.BIRIMCARPAN'
    end
    object FiyatListesiIBQKOLIMIKTAR: TIntegerField
      FieldName = 'KOLIMIKTAR'
      Origin = 'STOKKART.KOLIMIKTAR'
    end
    object FiyatListesiIBQSECIM: TIntegerField
      FieldName = 'SECIM'
      Origin = 'STOKKART.SECIM'
    end
    object FiyatListesiIBQPARABIRIMIKOD: TIntegerField
      FieldName = 'PARABIRIMIKOD'
      Origin = 'STOKKART.PARABIRIMIKOD'
    end
    object FiyatListesiIBQSTOKTIPI: TIBStringField
      FieldName = 'STOKTIPI'
      Origin = 'STOKKART.STOKTIPI'
      Size = 30
    end
    object FiyatListesiIBQACTIVITE1: TIntegerField
      FieldName = 'ACTIVITE1'
      Origin = 'STOKKART.ACTIVITE'
    end
    object FiyatListesiIBQKARORANI: TFloatField
      FieldName = 'KARORANI'
      Origin = 'STOKKART.KARORANI'
    end
    object FiyatListesiIBQMINSEVIYE: TIntegerField
      FieldName = 'MINSEVIYE'
      Origin = 'STOKKART.MINSEVIYE'
    end
    object FiyatListesiIBQMAXSEVIYE: TIntegerField
      FieldName = 'MAXSEVIYE'
      Origin = 'STOKKART.MAXSEVIYE'
    end
    object FiyatListesiIBQSIPSEVIYE: TIntegerField
      FieldName = 'SIPSEVIYE'
      Origin = 'STOKKART.SIPSEVIYE'
    end
    object FiyatListesiIBQNEGSEVIYE: TIntegerField
      FieldName = 'NEGSEVIYE'
      Origin = 'STOKKART.NEGSEVIYE'
    end
    object FiyatListesiIBQKDVORAN: TFloatField
      FieldName = 'KDVORAN'
      Origin = 'STOKKART.KDVORAN'
    end
    object FiyatListesiIBQALISFIYAT: TFloatField
      FieldName = 'ALISFIYAT'
      Origin = 'STOKKART.ALISFIYAT'
    end
    object FiyatListesiIBQSATISFIYAT1: TFloatField
      FieldName = 'SATISFIYAT1'
      Origin = 'STOKKART.SATISFIYAT1'
    end
    object FiyatListesiIBQSATISFIYAT2: TFloatField
      FieldName = 'SATISFIYAT2'
      Origin = 'STOKKART.SATISFIYAT2'
    end
    object FiyatListesiIBQSATISFIYAT3: TFloatField
      FieldName = 'SATISFIYAT3'
      Origin = 'STOKKART.SATISFIYAT3'
    end
    object FiyatListesiIBQKDVLI_SATIS1: TFloatField
      FieldName = 'KDVLI_SATIS1'
      Origin = 'STOKKART.KDVLI_SATIS1'
    end
    object FiyatListesiIBQKDVLI_SATIS2: TFloatField
      FieldName = 'KDVLI_SATIS2'
      Origin = 'STOKKART.KDVLI_SATIS2'
    end
    object FiyatListesiIBQKDVLI_SATIS3: TFloatField
      FieldName = 'KDVLI_SATIS3'
      Origin = 'STOKKART.KDVLI_SATIS3'
    end
    object FiyatListesiIBQBAKIYE: TFloatField
      FieldName = 'BAKIYE'
      Origin = 'STOKKART.BAKIYE'
    end
    object FiyatListesiIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'STOKKART.DURUM'
    end
    object FiyatListesiIBQREELALIS: TFloatField
      FieldName = 'REELALIS'
      Origin = 'STOKKART.REELALIS'
    end
    object FiyatListesiIBQREELSATIS: TFloatField
      FieldName = 'REELSATIS'
      Origin = 'STOKKART.REELSATIS'
    end
    object FiyatListesiIBQORTALAMALIS: TFloatField
      FieldName = 'ORTALAMALIS'
      Origin = 'STOKKART.ORTALAMALIS'
    end
    object FiyatListesiIBQORTALAMSATIS: TFloatField
      FieldName = 'ORTALAMSATIS'
      Origin = 'STOKKART.ORTALAMSATIS'
    end
    object FiyatListesiIBQSONALIS: TFloatField
      FieldName = 'SONALIS'
      Origin = 'STOKKART.SONALIS'
    end
    object FiyatListesiIBQSONSATIS: TFloatField
      FieldName = 'SONSATIS'
      Origin = 'STOKKART.SONSATIS'
    end
    object FiyatListesiIBQACIKLAMA: TMemoField
      FieldName = 'ACIKLAMA'
      Origin = 'STOKKART.ACIKLAMA'
      BlobType = ftMemo
      Size = 8
    end
    object FiyatListesiIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'STOKKART.CARIKOD'
    end
    object FiyatListesiIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'STOKKART.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object FiyatListesiIBQC_KAYNAKADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KAYNAKADI'
      Origin = 'STOKKART.C_KAYNAKADI'
      ReadOnly = True
      Size = 60
    end
    object FiyatListesiIBQALINANSIPARIS: TFloatField
      FieldName = 'ALINANSIPARIS'
      Origin = 'STOKKART.ALINANSIPARIS'
    end
    object FiyatListesiIBQVERILENSIPARIS: TFloatField
      FieldName = 'VERILENSIPARIS'
      Origin = 'STOKKART.VERILENSIPARIS'
    end
    object FiyatListesiIBQAGIRLIK: TFloatField
      FieldName = 'AGIRLIK'
      Origin = 'STOKKART.AGIRLIK'
    end
    object FiyatListesiIBQHACIM: TFloatField
      FieldName = 'HACIM'
      Origin = 'STOKKART.HACIM'
    end
    object FiyatListesiIBQSTOKTIPIKOD: TIntegerField
      FieldName = 'STOKTIPIKOD'
      Origin = 'STOKKART.STOKTIPIKOD'
    end
    object FiyatListesiIBQC_STOKTIPI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKTIPI'
      Origin = 'STOKKART.C_STOKTIPI'
      ReadOnly = True
      Size = 50
    end
    object FiyatListesiIBQC_DURUM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_DURUM'
      Origin = 'STOKKART.C_DURUM'
      ReadOnly = True
      Size = 5
    end
  end
  object FiyatListesiUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  "STOKKART"."STOKKOD",'
      '  "STOKKART"."STOKNO",'
      '  "STOKKART"."BARKOD",'
      '  "STOKKART"."STOKADI",'
      '  "STOKKART"."STOKTURU",'
      '  "STOKKART"."BIRIM",'
      '  "STOKKART"."BIRIMCARPAN",'
      '  "STOKKART"."KOLIMIKTAR",'
      '  "STOKKART"."SECIM",'
      '  "STOKKART"."PARABIRIMIKOD",'
      '  "STOKKART"."STOKTIPI",'
      '  "STOKKART"."ACTIVITE",'
      '  "STOKKART"."KARORANI",'
      '  "STOKKART"."MINSEVIYE",'
      '  "STOKKART"."MAXSEVIYE",'
      '  "STOKKART"."SIPSEVIYE",'
      '  "STOKKART"."NEGSEVIYE",'
      '  "STOKKART"."KDVORAN",'
      '  "STOKKART"."ALISFIYAT",'
      '  "STOKKART"."SATISFIYAT1",'
      '  "STOKKART"."SATISFIYAT2",'
      '  "STOKKART"."SATISFIYAT3",'
      '  "STOKKART"."KDVLI_SATIS1",'
      '  "STOKKART"."KDVLI_SATIS2",'
      '  "STOKKART"."KDVLI_SATIS3",'
      '  "STOKKART"."BAKIYE",'
      '  "STOKKART"."DURUM",'
      '  "STOKKART"."REELALIS",'
      '  "STOKKART"."REELSATIS",'
      '  "STOKKART"."ORTALAMALIS",'
      '  "STOKKART"."ORTALAMSATIS",'
      '  "STOKKART"."SONALIS",'
      '  "STOKKART"."SONSATIS",'
      '  "STOKKART"."ACIKLAMA",'
      '  "STOKKART"."CARIKOD",'
      '  "STOKKART"."C_PARABIRIMI",'
      '  "STOKKART"."C_KAYNAKADI",'
      '  "STOKKART"."ALINANSIPARIS",'
      '  "STOKKART"."VERILENSIPARIS",'
      '  "STOKKART"."AGIRLIK",'
      '  "STOKKART"."HACIM",'
      '  "STOKKART"."STOKTIPIKOD",'
      '  "STOKKART"."C_STOKTIPI",'
      '  "STOKKART"."C_DURUM"'
      'from "STOKKART" '
      'where'
      '  "STOKKART"."STOKKOD" = :"STOKKOD"')
    ModifySQL.Strings = (
      'update "STOKKART"'
      'set'
      '  "STOKKART"."STOKKOD" = :"STOKKOD",'
      '  "STOKKART"."STOKNO" = :"STOKNO",'
      '  "STOKKART"."BARKOD" = :"BARKOD",'
      '  "STOKKART"."STOKADI" = :"STOKADI",'
      '  "STOKKART"."STOKTURU" = :"STOKTURU",'
      '  "STOKKART"."BIRIM" = :"BIRIM",'
      '  "STOKKART"."BIRIMCARPAN" = :"BIRIMCARPAN",'
      '  "STOKKART"."KOLIMIKTAR" = :"KOLIMIKTAR",'
      '  "STOKKART"."SECIM" = :"SECIM",'
      '  "STOKKART"."PARABIRIMIKOD" = :"PARABIRIMIKOD",'
      '  "STOKKART"."STOKTIPI" = :"STOKTIPI",'
      '  "STOKKART"."ACTIVITE" = :"ACTIVITE",'
      '  "STOKKART"."KARORANI" = :"KARORANI",'
      '  "STOKKART"."MINSEVIYE" = :"MINSEVIYE",'
      '  "STOKKART"."MAXSEVIYE" = :"MAXSEVIYE",'
      '  "STOKKART"."SIPSEVIYE" = :"SIPSEVIYE",'
      '  "STOKKART"."NEGSEVIYE" = :"NEGSEVIYE",'
      '  "STOKKART"."KDVORAN" = :"KDVORAN",'
      '  "STOKKART"."ALISFIYAT" = :"ALISFIYAT",'
      '  "STOKKART"."SATISFIYAT1" = :"SATISFIYAT1",'
      '  "STOKKART"."SATISFIYAT2" = :"SATISFIYAT2",'
      '  "STOKKART"."SATISFIYAT3" = :"SATISFIYAT3",'
      '  "STOKKART"."KDVLI_SATIS1" = :"KDVLI_SATIS1",'
      '  "STOKKART"."KDVLI_SATIS2" = :"KDVLI_SATIS2",'
      '  "STOKKART"."KDVLI_SATIS3" = :"KDVLI_SATIS3",'
      '  "STOKKART"."BAKIYE" = :"BAKIYE",'
      '  "STOKKART"."DURUM" = :"DURUM",'
      '  "STOKKART"."REELALIS" = :"REELALIS",'
      '  "STOKKART"."REELSATIS" = :"REELSATIS",'
      '  "STOKKART"."ORTALAMALIS" = :"ORTALAMALIS",'
      '  "STOKKART"."ORTALAMSATIS" = :"ORTALAMSATIS",'
      '  "STOKKART"."SONALIS" = :"SONALIS",'
      '  "STOKKART"."SONSATIS" = :"SONSATIS",'
      '  "STOKKART"."ACIKLAMA" = :"ACIKLAMA",'
      '  "STOKKART"."CARIKOD" = :"CARIKOD",'
      '  "STOKKART"."ALINANSIPARIS" = :"ALINANSIPARIS",'
      '  "STOKKART"."VERILENSIPARIS" = :"VERILENSIPARIS",'
      '  "STOKKART"."AGIRLIK" = :"AGIRLIK",'
      '  "STOKKART"."HACIM" = :"HACIM",'
      '  "STOKKART"."STOKTIPIKOD" = :"STOKTIPIKOD"'
      'where'
      '  "STOKKART"."STOKKOD" = :"OLD_STOKKOD"')
    InsertSQL.Strings = (
      'insert into "STOKKART"'
      
        '  ("STOKKART"."STOKKOD", "STOKKART"."STOKNO", "STOKKART"."BARKOD' +
        '", "STOKKART"."STOKADI", '
      
        '   "STOKKART"."STOKTURU", "STOKKART"."BIRIM", "STOKKART"."BIRIMC' +
        'ARPAN", '
      
        '   "STOKKART"."KOLIMIKTAR", "STOKKART"."SECIM", "STOKKART"."PARA' +
        'BIRIMIKOD", '
      
        '   "STOKKART"."STOKTIPI", "STOKKART"."ACTIVITE", "STOKKART"."KAR' +
        'ORANI", '
      
        '   "STOKKART"."MINSEVIYE", "STOKKART"."MAXSEVIYE", "STOKKART"."S' +
        'IPSEVIYE", '
      
        '   "STOKKART"."NEGSEVIYE", "STOKKART"."KDVORAN", "STOKKART"."ALI' +
        'SFIYAT", '
      
        '   "STOKKART"."SATISFIYAT1", "STOKKART"."SATISFIYAT2", "STOKKART' +
        '"."SATISFIYAT3", '
      
        '   "STOKKART"."KDVLI_SATIS1", "STOKKART"."KDVLI_SATIS2", "STOKKA' +
        'RT"."KDVLI_SATIS3", '
      
        '   "STOKKART"."BAKIYE", "STOKKART"."DURUM", "STOKKART"."REELALIS' +
        '", "STOKKART"."REELSATIS", '
      
        '   "STOKKART"."ORTALAMALIS", "STOKKART"."ORTALAMSATIS", "STOKKAR' +
        'T"."SONALIS", '
      
        '   "STOKKART"."SONSATIS", "STOKKART"."ACIKLAMA", "STOKKART"."CAR' +
        'IKOD", '
      
        '   "STOKKART"."ALINANSIPARIS", "STOKKART"."VERILENSIPARIS", "STO' +
        'KKART"."AGIRLIK", '
      '   "STOKKART"."HACIM", "STOKKART"."STOKTIPIKOD")'
      'values'
      
        '  (:"STOKKOD", :"STOKNO", :"BARKOD", :"STOKADI", :"STOKTURU", :"' +
        'BIRIM", '
      
        '   :"BIRIMCARPAN", :"KOLIMIKTAR", :"SECIM", :"PARABIRIMIKOD", :"' +
        'STOKTIPI", '
      
        '   :"ACTIVITE", :"KARORANI", :"MINSEVIYE", :"MAXSEVIYE", :"SIPSE' +
        'VIYE", '
      
        '   :"NEGSEVIYE", :"KDVORAN", :"ALISFIYAT", :"SATISFIYAT1", :"SAT' +
        'ISFIYAT2", '
      
        '   :"SATISFIYAT3", :"KDVLI_SATIS1", :"KDVLI_SATIS2", :"KDVLI_SAT' +
        'IS3", :"BAKIYE", '
      
        '   :"DURUM", :"REELALIS", :"REELSATIS", :"ORTALAMALIS", :"ORTALA' +
        'MSATIS", '
      
        '   :"SONALIS", :"SONSATIS", :"ACIKLAMA", :"CARIKOD", :"ALINANSIP' +
        'ARIS", '
      '   :"VERILENSIPARIS", :"AGIRLIK", :"HACIM", :"STOKTIPIKOD")')
    DeleteSQL.Strings = (
      'delete from "STOKKART"'
      'where'
      '  "STOKKART"."STOKKOD" = :"OLD_STOKKOD"')
    Left = 136
    Top = 64
  end
  object FiyatListesiDS: TDataSource
    DataSet = FiyatListesiIBQ
    Left = 224
    Top = 64
  end
  object GrupBaglantiIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = GrupBaglantiIBQAfterDelete
    AfterPost = GrupBaglantiIBQAfterPost
    OnNewRecord = GrupBaglantiIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = StokKartDS
    SQL.Strings = (
      'select *  from STOKGRUP'
      'where STOKKOD =:STOKKOD')
    UpdateObject = GrupBaglantiUSQL
    GeneratorField.Field = 'GRUPKOD'
    GeneratorField.Generator = 'STOKGRUP'
    Left = 45
    Top = 168
    ParamData = <
      item
        DataType = ftInteger
        Name = 'STOKKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object GrupBaglantiIBQGurupAdi: TStringField
      DisplayLabel = 'Gurup Ad'#305
      FieldKind = fkLookup
      FieldName = 'GurupAdi'
      LookupDataSet = StokGruplariIBQ
      LookupKeyFields = 'GRUPLARKOD'
      LookupResultField = 'GRUPADI'
      KeyFields = 'GRUPLARKOD'
      Size = 25
      Lookup = True
    end
    object GrupBaglantiIBQGRUPKOD: TIntegerField
      FieldName = 'GRUPKOD'
      Origin = 'STOKGRUP.GRUPKOD'
      Required = True
    end
    object GrupBaglantiIBQGRUPLARKOD: TIntegerField
      FieldName = 'GRUPLARKOD'
      Origin = 'STOKGRUP.GRUPLARKOD'
    end
    object GrupBaglantiIBQKONTROLNO: TIBStringField
      FieldName = 'KONTROLNO'
      Origin = 'STOKGRUP.KONTROLNO'
      Size = 60
    end
    object GrupBaglantiIBQACTIVITE: TIBStringField
      FieldName = 'ACTIVITE'
      Origin = 'STOKGRUP.ACTIVITE'
      Size = 5
    end
    object GrupBaglantiIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'STOKGRUP.STOKKOD'
    end
  end
  object GrupBaglantiDS: TDataSource
    DataSet = GrupBaglantiIBQ
    Left = 133
    Top = 168
  end
  object StokGruplariIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = StokGruplariIBQAfterDelete
    AfterPost = StokGruplariIBQAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *  from STGURUPLAR')
    UpdateObject = StokGruplariUSQL
    GeneratorField.Field = 'GRUPLARKOD'
    GeneratorField.Generator = 'STGURUPLAR'
    Left = 45
    Top = 120
    object StokGruplariIBQGRUPLARKOD: TIntegerField
      FieldName = 'GRUPLARKOD'
      Origin = 'STGURUPLAR.GRUPLARKOD'
    end
    object StokGruplariIBQANANO: TIntegerField
      FieldName = 'ANANO'
      Origin = 'STGURUPLAR.ANANO'
    end
    object StokGruplariIBQGRUPADI: TIBStringField
      FieldName = 'GRUPADI'
      Origin = 'STGURUPLAR.GRUPADI'
      Size = 40
    end
    object StokGruplariIBQKONTROLNO: TIBStringField
      FieldName = 'KONTROLNO'
      Origin = 'STGURUPLAR.KONTROLNO'
      Size = 60
    end
  end
  object StokGruplariDS: TDataSource
    DataSet = StokGruplariIBQ
    Left = 133
    Top = 120
  end
  object StokGruplariUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  GRUPLARKOD,'
      '  ANANO,'
      '  GRUPADI,'
      '  KONTROLNO'
      'from STGURUPLAR '
      'where'
      '  GRUPLARKOD = :GRUPLARKOD')
    ModifySQL.Strings = (
      'update STGURUPLAR'
      'set'
      '  GRUPLARKOD = :GRUPLARKOD,'
      '  ANANO = :ANANO,'
      '  GRUPADI = :GRUPADI,'
      '  KONTROLNO = :KONTROLNO'
      'where'
      '  GRUPLARKOD = :OLD_GRUPLARKOD')
    InsertSQL.Strings = (
      'insert into STGURUPLAR'
      '  (GRUPLARKOD, ANANO, GRUPADI, KONTROLNO)'
      'values'
      '  (:GRUPLARKOD, :ANANO, :GRUPADI, :KONTROLNO)')
    DeleteSQL.Strings = (
      'delete from STGURUPLAR'
      'where'
      '  GRUPLARKOD = :OLD_GRUPLARKOD')
    Left = 224
    Top = 120
  end
  object StokKartLookupIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STOKKART')
    GeneratorField.Field = 'STOKODU'
    GeneratorField.Generator = 'STOKKART'
    Left = 384
    Top = 8
    object StokKartLookupIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'STOKKART.STOKKOD'
      Required = True
    end
    object StokKartLookupIBQSTOKNO: TIntegerField
      FieldName = 'STOKNO'
      Origin = 'STOKKART.STOKNO'
    end
    object StokKartLookupIBQBARKOD: TIBStringField
      FieldName = 'BARKOD'
      Origin = 'STOKKART.BARKOD'
      Size = 25
    end
    object StokKartLookupIBQSTOKADI: TIBStringField
      FieldName = 'STOKADI'
      Origin = 'STOKKART.STOKADI'
      Size = 40
    end
    object StokKartLookupIBQSTOKTURU: TIBStringField
      FieldName = 'STOKTURU'
      Origin = 'STOKKART.STOKTURU'
    end
    object StokKartLookupIBQBIRIM: TIBStringField
      FieldName = 'BIRIM'
      Origin = 'STOKKART.BIRIM'
      Size = 10
    end
    object StokKartLookupIBQBIRIMCARPAN: TFloatField
      FieldName = 'BIRIMCARPAN'
      Origin = 'STOKKART.BIRIMCARPAN'
    end
    object StokKartLookupIBQKOLIMIKTAR: TIntegerField
      FieldName = 'KOLIMIKTAR'
      Origin = 'STOKKART.KOLIMIKTAR'
    end
    object StokKartLookupIBQSECIM: TIntegerField
      FieldName = 'SECIM'
      Origin = 'STOKKART.SECIM'
    end
    object StokKartLookupIBQPARABIRIMIKOD: TIntegerField
      FieldName = 'PARABIRIMIKOD'
      Origin = 'STOKKART.PARABIRIMIKOD'
    end
    object StokKartLookupIBQSTOKTIPI: TIBStringField
      FieldName = 'STOKTIPI'
      Origin = 'STOKKART.STOKTIPI'
      Size = 30
    end
    object StokKartLookupIBQACTIVITE: TIntegerField
      FieldName = 'ACTIVITE'
      Origin = 'STOKKART.ACTIVITE'
    end
    object StokKartLookupIBQKARORANI: TFloatField
      FieldName = 'KARORANI'
      Origin = 'STOKKART.KARORANI'
    end
    object StokKartLookupIBQMINSEVIYE: TIntegerField
      FieldName = 'MINSEVIYE'
      Origin = 'STOKKART.MINSEVIYE'
    end
    object StokKartLookupIBQMAXSEVIYE: TIntegerField
      FieldName = 'MAXSEVIYE'
      Origin = 'STOKKART.MAXSEVIYE'
    end
    object StokKartLookupIBQSIPSEVIYE: TIntegerField
      FieldName = 'SIPSEVIYE'
      Origin = 'STOKKART.SIPSEVIYE'
    end
    object StokKartLookupIBQNEGSEVIYE: TIntegerField
      FieldName = 'NEGSEVIYE'
      Origin = 'STOKKART.NEGSEVIYE'
    end
    object StokKartLookupIBQKDVORAN: TFloatField
      FieldName = 'KDVORAN'
      Origin = 'STOKKART.KDVORAN'
    end
    object StokKartLookupIBQALISFIYAT: TFloatField
      FieldName = 'ALISFIYAT'
      Origin = 'STOKKART.ALISFIYAT'
    end
    object StokKartLookupIBQSATISFIYAT1: TFloatField
      FieldName = 'SATISFIYAT1'
      Origin = 'STOKKART.SATISFIYAT1'
    end
    object StokKartLookupIBQSATISFIYAT2: TFloatField
      FieldName = 'SATISFIYAT2'
      Origin = 'STOKKART.SATISFIYAT2'
    end
    object StokKartLookupIBQSATISFIYAT3: TFloatField
      FieldName = 'SATISFIYAT3'
      Origin = 'STOKKART.SATISFIYAT3'
    end
    object StokKartLookupIBQKDVLI_SATIS1: TFloatField
      FieldName = 'KDVLI_SATIS1'
      Origin = 'STOKKART.KDVLI_SATIS1'
    end
    object StokKartLookupIBQKDVLI_SATIS2: TFloatField
      FieldName = 'KDVLI_SATIS2'
      Origin = 'STOKKART.KDVLI_SATIS2'
    end
    object StokKartLookupIBQKDVLI_SATIS3: TFloatField
      FieldName = 'KDVLI_SATIS3'
      Origin = 'STOKKART.KDVLI_SATIS3'
    end
    object StokKartLookupIBQBAKIYE: TFloatField
      FieldName = 'BAKIYE'
      Origin = 'STOKKART.BAKIYE'
    end
    object StokKartLookupIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'STOKKART.DURUM'
    end
    object StokKartLookupIBQREELALIS: TFloatField
      FieldName = 'REELALIS'
      Origin = 'STOKKART.REELALIS'
    end
    object StokKartLookupIBQREELSATIS: TFloatField
      FieldName = 'REELSATIS'
      Origin = 'STOKKART.REELSATIS'
    end
    object StokKartLookupIBQORTALAMALIS: TFloatField
      FieldName = 'ORTALAMALIS'
      Origin = 'STOKKART.ORTALAMALIS'
    end
    object StokKartLookupIBQORTALAMSATIS: TFloatField
      FieldName = 'ORTALAMSATIS'
      Origin = 'STOKKART.ORTALAMSATIS'
    end
    object StokKartLookupIBQSONALIS: TFloatField
      FieldName = 'SONALIS'
      Origin = 'STOKKART.SONALIS'
    end
    object StokKartLookupIBQSONSATIS: TFloatField
      FieldName = 'SONSATIS'
      Origin = 'STOKKART.SONSATIS'
    end
    object StokKartLookupIBQACIKLAMA: TMemoField
      FieldName = 'ACIKLAMA'
      Origin = 'STOKKART.ACIKLAMA'
      BlobType = ftMemo
      Size = 8
    end
    object StokKartLookupIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'STOKKART.CARIKOD'
    end
    object StokKartLookupIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'STOKKART.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object StokKartLookupIBQC_KAYNAKADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KAYNAKADI'
      Origin = 'STOKKART.C_KAYNAKADI'
      ReadOnly = True
      Size = 60
    end
  end
  object StokKartLookupDS: TDataSource
    DataSet = StokKartLookupIBQ
    Left = 504
    Top = 8
  end
  object StokGrupKartDS: TDataSource
    DataSet = StokGrupKartIBQ
    Left = 504
    Top = 64
  end
  object StokListIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT Stokkart.STOKNO, Stokkart.STOKADI, SUM( AlisSatisBodro.GI' +
        'RISMIKTAR ) SUMGIRISMIKTAR, SUM( AlisSatisBodro.CIKISMIKTAR ) SU' +
        'MCIKISMIKTAR, Stokkart.BAKIYE, Stokkart.DURUM'
      'FROM STOKKART Stokkart'
      '   INNER JOIN AlisSatisBODRO AlisSatisBodro'
      '   ON  (Stokkart.STOKNO = AlisSatisBodro.STOKNO)  '
      'WHERE  AlisSatisBodro.KAPATMA = 1  and Stokkart.BAKIYE>0 '
      
        'GROUP BY Stokkart.STOKNO, Stokkart.STOKADI, Stokkart.BAKIYE, Sto' +
        'kkart.DURUM'
      'ORDER BY Stokkart.STOKADI')
    Left = 384
    Top = 127
    object StokListIBQSTOKNO: TIntegerField
      FieldName = 'STOKNO'
    end
    object StokListIBQSTOKADI: TIBStringField
      FieldName = 'STOKADI'
      Size = 40
    end
    object StokListIBQSUMGIRISMIKTAR: TFloatField
      FieldName = 'SUMGIRISMIKTAR'
    end
    object StokListIBQSUMCIKISMIKTAR: TFloatField
      FieldName = 'SUMCIKISMIKTAR'
    end
    object StokListIBQBAKIYE: TFloatField
      FieldName = 'BAKIYE'
    end
    object StokListIBQDURUM: TIntegerField
      FieldName = 'DURUM'
    end
  end
  object StokListDS: TDataSource
    DataSet = StokListIBQ
    Left = 504
    Top = 127
  end
  object SKontrolBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    OnCalcFields = SKontrolBodroIBQCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = StokGrupKontrolDS
    SQL.Strings = (
      
        'select SUM(CIKISMIKTAR) SUMCIKMIK,SUM(GIRISMIKTAR) SUMGIRMIK, C_' +
        'STOKYERI from ALISSATISBODRO'
      'Where STOKNO=:STOKNO'
      'GROUP BY C_STOKYERI')
    GeneratorField.Field = 'STOKODU'
    GeneratorField.Generator = 'STOKKART'
    Left = 384
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'STOKNO'
        ParamType = ptUnknown
        Size = 4
      end>
    object SKontrolBodroIBQSUMCIKMIK: TFloatField
      DisplayLabel = #199#305'k'#305#351' Miktar'#305
      FieldName = 'SUMCIKMIK'
    end
    object SKontrolBodroIBQSUMGIRMIK: TFloatField
      DisplayLabel = 'Giri'#351' Miktar'#305
      FieldName = 'SUMGIRMIK'
    end
    object SKontrolBodroIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri'
      FieldName = 'C_STOKYERI'
      Size = 25
    end
    object SKontrolBodroIBQMiktar: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Miktar'
      Calculated = True
    end
    object SKontrolBodroIBQDurum: TStringField
      FieldKind = fkCalculated
      FieldName = 'Durum'
      Size = 8
      Calculated = True
    end
  end
  object SKontrolBodroDS: TDataSource
    DataSet = SKontrolBodroIBQ
    Left = 508
    Top = 256
  end
  object GrupBaglantiUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  GRUPKOD,'
      '  STOKKOD,'
      '  GRUPLARKOD,'
      '  KONTROLNO,'
      '  ACTIVITE'
      'from STOKGRUP '
      'where'
      '  GRUPKOD = :GRUPKOD')
    ModifySQL.Strings = (
      'update STOKGRUP'
      'set'
      '  GRUPKOD = :GRUPKOD,'
      '  STOKKOD = :STOKKOD,'
      '  GRUPLARKOD = :GRUPLARKOD,'
      '  KONTROLNO = :KONTROLNO,'
      '  ACTIVITE = :ACTIVITE'
      'where'
      '  GRUPKOD = :OLD_GRUPKOD')
    InsertSQL.Strings = (
      'insert into STOKGRUP'
      '  (GRUPKOD, STOKKOD, GRUPLARKOD, KONTROLNO, ACTIVITE)'
      'values'
      '  (:GRUPKOD, :STOKKOD, :GRUPLARKOD, :KONTROLNO, :ACTIVITE)')
    DeleteSQL.Strings = (
      'delete from STOKGRUP'
      'where'
      '  GRUPKOD = :OLD_GRUPKOD')
    Left = 224
    Top = 168
  end
  object StokGrupKontrolIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = StokGruplariDS
    SQL.Strings = (
      
        'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STO' +
        'KGRUP,STOKKART'
      
        'where (STOKGRUP.KONTROLNO like :KONTROLNO || '#39'%'#39') and (STOKGRUP.' +
        'STOKKOD = STOKKART.STOKKOD) ')
    Left = 384
    Top = 192
    ParamData = <
      item
        DataType = ftString
        Name = 'KONTROLNO'
        ParamType = ptUnknown
        Size = 61
      end>
    object FloatField18: TFloatField
      DisplayLabel = 'Giri'#351' Miktar'
      FieldKind = fkLookup
      FieldName = 'GirisMiktar'
      LookupDataSet = StokListIBQ
      LookupKeyFields = 'STOKNO'
      LookupResultField = 'SUMGIRISMIKTAR'
      KeyFields = 'STOKNO'
      Lookup = True
    end
    object FloatField19: TFloatField
      DisplayLabel = 'Ciki'#351' Miktar'
      FieldKind = fkLookup
      FieldName = 'CikisMiktar'
      LookupDataSet = StokListIBQ
      LookupKeyFields = 'STOKNO'
      LookupResultField = 'SUMCIKISMIKTAR'
      KeyFields = 'STOKNO'
      Lookup = True
    end
    object StokGrupKontrolIBQGRUPKOD: TIntegerField
      FieldName = 'GRUPKOD'
      Origin = 'STOKGRUP.GRUPKOD'
      Required = True
    end
    object StokGrupKontrolIBQGRUPLARKOD: TIntegerField
      FieldName = 'GRUPLARKOD'
      Origin = 'STOKGRUP.GRUPLARKOD'
    end
    object StokGrupKontrolIBQKONTROLNO: TIBStringField
      FieldName = 'KONTROLNO'
      Origin = 'STOKGRUP.KONTROLNO'
      Size = 60
    end
    object StokGrupKontrolIBQACTIVITE: TIBStringField
      FieldName = 'ACTIVITE'
      Origin = 'STOKGRUP.ACTIVITE'
      Size = 5
    end
    object StokGrupKontrolIBQSTOKNO: TIntegerField
      FieldName = 'STOKNO'
      Origin = 'STOKKART.STOKNO'
    end
    object StokGrupKontrolIBQBARKOD: TIBStringField
      FieldName = 'BARKOD'
      Origin = 'STOKKART.BARKOD'
      Size = 25
    end
    object StokGrupKontrolIBQSTOKADI: TIBStringField
      FieldName = 'STOKADI'
      Origin = 'STOKKART.STOKADI'
      Size = 40
    end
    object StokGrupKontrolIBQSTOKTURU: TIBStringField
      FieldName = 'STOKTURU'
      Origin = 'STOKKART.STOKTURU'
    end
    object StokGrupKontrolIBQBIRIM: TIBStringField
      FieldName = 'BIRIM'
      Origin = 'STOKKART.BIRIM'
      Size = 10
    end
    object StokGrupKontrolIBQBIRIMCARPAN: TFloatField
      FieldName = 'BIRIMCARPAN'
      Origin = 'STOKKART.BIRIMCARPAN'
    end
    object StokGrupKontrolIBQKOLIMIKTAR: TIntegerField
      FieldName = 'KOLIMIKTAR'
      Origin = 'STOKKART.KOLIMIKTAR'
    end
    object StokGrupKontrolIBQSECIM: TIntegerField
      FieldName = 'SECIM'
      Origin = 'STOKKART.SECIM'
    end
    object StokGrupKontrolIBQPARABIRIMIKOD: TIntegerField
      FieldName = 'PARABIRIMIKOD'
      Origin = 'STOKKART.PARABIRIMIKOD'
    end
    object StokGrupKontrolIBQSTOKTIPI: TIBStringField
      FieldName = 'STOKTIPI'
      Origin = 'STOKKART.STOKTIPI'
      Size = 30
    end
    object StokGrupKontrolIBQACTIVITE1: TIntegerField
      FieldName = 'ACTIVITE1'
      Origin = 'STOKKART.ACTIVITE'
    end
    object StokGrupKontrolIBQKARORANI: TFloatField
      FieldName = 'KARORANI'
      Origin = 'STOKKART.KARORANI'
    end
    object StokGrupKontrolIBQMINSEVIYE: TIntegerField
      FieldName = 'MINSEVIYE'
      Origin = 'STOKKART.MINSEVIYE'
    end
    object StokGrupKontrolIBQMAXSEVIYE: TIntegerField
      FieldName = 'MAXSEVIYE'
      Origin = 'STOKKART.MAXSEVIYE'
    end
    object StokGrupKontrolIBQSIPSEVIYE: TIntegerField
      FieldName = 'SIPSEVIYE'
      Origin = 'STOKKART.SIPSEVIYE'
    end
    object StokGrupKontrolIBQNEGSEVIYE: TIntegerField
      FieldName = 'NEGSEVIYE'
      Origin = 'STOKKART.NEGSEVIYE'
    end
    object StokGrupKontrolIBQKDVORAN: TFloatField
      FieldName = 'KDVORAN'
      Origin = 'STOKKART.KDVORAN'
    end
    object StokGrupKontrolIBQALISFIYAT: TFloatField
      FieldName = 'ALISFIYAT'
      Origin = 'STOKKART.ALISFIYAT'
    end
    object StokGrupKontrolIBQSATISFIYAT1: TFloatField
      FieldName = 'SATISFIYAT1'
      Origin = 'STOKKART.SATISFIYAT1'
    end
    object StokGrupKontrolIBQSATISFIYAT2: TFloatField
      FieldName = 'SATISFIYAT2'
      Origin = 'STOKKART.SATISFIYAT2'
    end
    object StokGrupKontrolIBQSATISFIYAT3: TFloatField
      FieldName = 'SATISFIYAT3'
      Origin = 'STOKKART.SATISFIYAT3'
    end
    object StokGrupKontrolIBQKDVLI_SATIS1: TFloatField
      FieldName = 'KDVLI_SATIS1'
      Origin = 'STOKKART.KDVLI_SATIS1'
    end
    object StokGrupKontrolIBQKDVLI_SATIS2: TFloatField
      FieldName = 'KDVLI_SATIS2'
      Origin = 'STOKKART.KDVLI_SATIS2'
    end
    object StokGrupKontrolIBQKDVLI_SATIS3: TFloatField
      FieldName = 'KDVLI_SATIS3'
      Origin = 'STOKKART.KDVLI_SATIS3'
    end
    object StokGrupKontrolIBQBAKIYE: TFloatField
      FieldName = 'BAKIYE'
      Origin = 'STOKKART.BAKIYE'
    end
    object StokGrupKontrolIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'STOKKART.DURUM'
    end
    object StokGrupKontrolIBQREELALIS: TFloatField
      FieldName = 'REELALIS'
      Origin = 'STOKKART.REELALIS'
    end
    object StokGrupKontrolIBQREELSATIS: TFloatField
      FieldName = 'REELSATIS'
      Origin = 'STOKKART.REELSATIS'
    end
    object StokGrupKontrolIBQORTALAMALIS: TFloatField
      FieldName = 'ORTALAMALIS'
      Origin = 'STOKKART.ORTALAMALIS'
    end
    object StokGrupKontrolIBQORTALAMSATIS: TFloatField
      FieldName = 'ORTALAMSATIS'
      Origin = 'STOKKART.ORTALAMSATIS'
    end
    object StokGrupKontrolIBQSONALIS: TFloatField
      FieldName = 'SONALIS'
      Origin = 'STOKKART.SONALIS'
    end
    object StokGrupKontrolIBQSONSATIS: TFloatField
      FieldName = 'SONSATIS'
      Origin = 'STOKKART.SONSATIS'
    end
    object StokGrupKontrolIBQACIKLAMA: TMemoField
      FieldName = 'ACIKLAMA'
      Origin = 'STOKKART.ACIKLAMA'
      BlobType = ftMemo
      Size = 8
    end
    object StokGrupKontrolIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'STOKGRUP.STOKKOD'
    end
    object StokGrupKontrolIBQSTOKKOD1: TIntegerField
      FieldName = 'STOKKOD1'
      Origin = 'STOKGRUP.STOKKOD'
    end
    object StokGrupKontrolIBQSTOKKOD2: TIntegerField
      FieldName = 'STOKKOD2'
      Origin = 'STOKKART.STOKKOD'
      Required = True
    end
  end
  object StokGrupKontrolDS: TDataSource
    DataSet = StokGrupKontrolIBQ
    Left = 504
    Top = 192
  end
  object StokKToplamIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    OnCalcFields = StokKToplamIBQCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = StokGrupKontrolDS
    SQL.Strings = (
      
        'select SUM(CIKISMIKTAR) SUMCIKMIK,SUM(GIRISMIKTAR) SUMGIRMIK fro' +
        'm  ALISSATISBODRO'
      'Where STOKNO=:STOKNO')
    GeneratorField.Field = 'STOKODU'
    GeneratorField.Generator = 'STOKKART'
    Left = 384
    Top = 312
    ParamData = <
      item
        DataType = ftInteger
        Name = 'STOKNO'
        ParamType = ptUnknown
        Size = 4
      end>
    object StokKToplamIBQSUMCIKMIK: TFloatField
      FieldName = 'SUMCIKMIK'
    end
    object StokKToplamIBQSUMGIRMIK: TFloatField
      FieldName = 'SUMGIRMIK'
    end
    object StokKToplamIBQMiktar: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Miktar'
      Calculated = True
    end
  end
  object StokKToplamDS: TDataSource
    DataSet = StokKToplamIBQ
    Left = 508
    Top = 312
  end
  object StokGrupKartUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  STOKKOD,'
      '  STOKNO,'
      '  BARKOD,'
      '  STOKADI,'
      '  STOKTURU,'
      '  BIRIM,'
      '  BIRIMCARPAN,'
      '  KOLIMIKTAR,'
      '  SECIM,'
      '  PARABIRIMIKOD,'
      '  STOKTIPI,'
      '  ACTIVITE,'
      '  KARORANI,'
      '  MINSEVIYE,'
      '  MAXSEVIYE,'
      '  SIPSEVIYE,'
      '  NEGSEVIYE,'
      '  KDVORAN,'
      '  ALISFIYAT,'
      '  SATISFIYAT1,'
      '  SATISFIYAT2,'
      '  SATISFIYAT3,'
      '  KDVLI_SATIS1,'
      '  KDVLI_SATIS2,'
      '  KDVLI_SATIS3,'
      '  BAKIYE,'
      '  DURUM,'
      '  REELALIS,'
      '  REELSATIS,'
      '  ORTALAMALIS,'
      '  ORTALAMSATIS,'
      '  SONALIS,'
      '  SONSATIS,'
      '  ACIKLAMA,'
      '  CARIKOD,'
      '  C_PARABIRIMI,'
      '  C_KAYNAKADI,'
      '  ALINANSIPARIS,'
      '  VERILENSIPARIS,'
      '  AGIRLIK,'
      '  HACIM,'
      '  STOKTIPIKOD,'
      '  C_STOKTIPI,'
      '  C_DURUM'
      'from STOKKART '
      'where'
      '  STOKKOD = :STOKKOD')
    ModifySQL.Strings = (
      'update STOKKART'
      'set'
      '  STOKKOD = :STOKKOD,'
      '  ACTIVITE = :ACTIVITE,'
      '  STOKNO = :STOKNO,'
      '  BARKOD = :BARKOD,'
      '  STOKADI = :STOKADI,'
      '  STOKTURU = :STOKTURU,'
      '  BIRIM = :BIRIM,'
      '  BIRIMCARPAN = :BIRIMCARPAN,'
      '  KOLIMIKTAR = :KOLIMIKTAR,'
      '  SECIM = :SECIM,'
      '  PARABIRIMIKOD = :PARABIRIMIKOD,'
      '  STOKTIPI = :STOKTIPI,'
      '  KARORANI = :KARORANI,'
      '  MINSEVIYE = :MINSEVIYE,'
      '  MAXSEVIYE = :MAXSEVIYE,'
      '  SIPSEVIYE = :SIPSEVIYE,'
      '  NEGSEVIYE = :NEGSEVIYE,'
      '  KDVORAN = :KDVORAN,'
      '  ALISFIYAT = :ALISFIYAT,'
      '  SATISFIYAT1 = :SATISFIYAT1,'
      '  SATISFIYAT2 = :SATISFIYAT2,'
      '  SATISFIYAT3 = :SATISFIYAT3,'
      '  KDVLI_SATIS1 = :KDVLI_SATIS1,'
      '  KDVLI_SATIS2 = :KDVLI_SATIS2,'
      '  KDVLI_SATIS3 = :KDVLI_SATIS3,'
      '  BAKIYE = :BAKIYE,'
      '  DURUM = :DURUM,'
      '  REELALIS = :REELALIS,'
      '  REELSATIS = :REELSATIS,'
      '  ORTALAMALIS = :ORTALAMALIS,'
      '  ORTALAMSATIS = :ORTALAMSATIS,'
      '  SONALIS = :SONALIS,'
      '  SONSATIS = :SONSATIS,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  CARIKOD = :CARIKOD,'
      '  ALINANSIPARIS = :ALINANSIPARIS,'
      '  VERILENSIPARIS = :VERILENSIPARIS,'
      '  AGIRLIK = :AGIRLIK,'
      '  HACIM = :HACIM,'
      '  STOKTIPIKOD = :STOKTIPIKOD'
      'where'
      '  STOKKOD = :OLD_STOKKOD')
    InsertSQL.Strings = (
      'insert into STOKKART'
      
        '  (STOKKOD, ACTIVITE, STOKNO, BARKOD, STOKADI, STOKTURU, BIRIM, ' +
        'BIRIMCARPAN, '
      
        '   KOLIMIKTAR, SECIM, PARABIRIMIKOD, STOKTIPI, KARORANI, MINSEVI' +
        'YE, MAXSEVIYE, '
      
        '   SIPSEVIYE, NEGSEVIYE, KDVORAN, ALISFIYAT, SATISFIYAT1, SATISF' +
        'IYAT2, '
      
        '   SATISFIYAT3, KDVLI_SATIS1, KDVLI_SATIS2, KDVLI_SATIS3, BAKIYE' +
        ', DURUM, '
      
        '   REELALIS, REELSATIS, ORTALAMALIS, ORTALAMSATIS, SONALIS, SONS' +
        'ATIS, ACIKLAMA, '
      
        '   CARIKOD, ALINANSIPARIS, VERILENSIPARIS, AGIRLIK, HACIM, STOKT' +
        'IPIKOD)'
      'values'
      
        '  (:STOKKOD, :ACTIVITE, :STOKNO, :BARKOD, :STOKADI, :STOKTURU, :' +
        'BIRIM, '
      
        '   :BIRIMCARPAN, :KOLIMIKTAR, :SECIM, :PARABIRIMIKOD, :STOKTIPI,' +
        ' :KARORANI, '
      
        '   :MINSEVIYE, :MAXSEVIYE, :SIPSEVIYE, :NEGSEVIYE, :KDVORAN, :AL' +
        'ISFIYAT, '
      
        '   :SATISFIYAT1, :SATISFIYAT2, :SATISFIYAT3, :KDVLI_SATIS1, :KDV' +
        'LI_SATIS2, '
      
        '   :KDVLI_SATIS3, :BAKIYE, :DURUM, :REELALIS, :REELSATIS, :ORTAL' +
        'AMALIS, '
      
        '   :ORTALAMSATIS, :SONALIS, :SONSATIS, :ACIKLAMA, :CARIKOD, :ALI' +
        'NANSIPARIS, '
      '   :VERILENSIPARIS, :AGIRLIK, :HACIM, :STOKTIPIKOD)')
    DeleteSQL.Strings = (
      'delete from STOKKART'
      'where'
      '  STOKKOD = :OLD_STOKKOD')
    Left = 600
    Top = 64
  end
  object StokKartiIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = StokKartiIBQAfterDelete
    AfterPost = StokKartiIBQAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STOKKART')
    UpdateObject = StokKartUSQL
    GeneratorField.Field = 'STOKKOD'
    GeneratorField.Generator = 'STOKKART'
    Left = 40
    Top = 8
    object StokKartiIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'STOKKART.STOKKOD'
      Required = True
    end
    object StokKartiIBQSTOKNO: TIntegerField
      DisplayLabel = 'Stok No'
      FieldName = 'STOKNO'
      Origin = 'STOKKART.STOKNO'
    end
    object StokKartiIBQBARKOD: TIBStringField
      DisplayLabel = 'Barkod'
      FieldName = 'BARKOD'
      Origin = 'STOKKART.BARKOD'
      Size = 25
    end
    object StokKartiIBQSTOKADI: TIBStringField
      DisplayLabel = 'Stok Ad'#305
      FieldName = 'STOKADI'
      Origin = 'STOKKART.STOKADI'
      Size = 40
    end
    object StokKartiIBQSTOKTURU: TIBStringField
      FieldName = 'STOKTURU'
      Origin = 'STOKKART.STOKTURU'
    end
    object StokKartiIBQBIRIM: TIBStringField
      FieldName = 'BIRIM'
      Origin = 'STOKKART.BIRIM'
      Size = 10
    end
    object StokKartiIBQBIRIMCARPAN: TFloatField
      FieldName = 'BIRIMCARPAN'
      Origin = 'STOKKART.BIRIMCARPAN'
    end
    object StokKartiIBQKOLIMIKTAR: TIntegerField
      FieldName = 'KOLIMIKTAR'
      Origin = 'STOKKART.KOLIMIKTAR'
    end
    object StokKartiIBQSECIM: TIntegerField
      FieldName = 'SECIM'
      Origin = 'STOKKART.SECIM'
    end
    object StokKartiIBQPARABIRIMIKOD: TIntegerField
      FieldName = 'PARABIRIMIKOD'
      Origin = 'STOKKART.PARABIRIMIKOD'
    end
    object StokKartiIBQSTOKTIPI: TIBStringField
      FieldName = 'STOKTIPI'
      Origin = 'STOKKART.STOKTIPI'
      Size = 30
    end
    object StokKartiIBQACTIVITE: TIntegerField
      FieldName = 'ACTIVITE'
      Origin = 'STOKKART.ACTIVITE'
    end
    object StokKartiIBQKARORANI: TFloatField
      FieldName = 'KARORANI'
      Origin = 'STOKKART.KARORANI'
    end
    object StokKartiIBQMINSEVIYE: TIntegerField
      FieldName = 'MINSEVIYE'
      Origin = 'STOKKART.MINSEVIYE'
    end
    object StokKartiIBQMAXSEVIYE: TIntegerField
      FieldName = 'MAXSEVIYE'
      Origin = 'STOKKART.MAXSEVIYE'
    end
    object StokKartiIBQSIPSEVIYE: TIntegerField
      FieldName = 'SIPSEVIYE'
      Origin = 'STOKKART.SIPSEVIYE'
    end
    object StokKartiIBQNEGSEVIYE: TIntegerField
      FieldName = 'NEGSEVIYE'
      Origin = 'STOKKART.NEGSEVIYE'
    end
    object StokKartiIBQKDVORAN: TFloatField
      FieldName = 'KDVORAN'
      Origin = 'STOKKART.KDVORAN'
    end
    object StokKartiIBQALISFIYAT: TFloatField
      FieldName = 'ALISFIYAT'
      Origin = 'STOKKART.ALISFIYAT'
    end
    object StokKartiIBQSATISFIYAT1: TFloatField
      FieldName = 'SATISFIYAT1'
      Origin = 'STOKKART.SATISFIYAT1'
    end
    object StokKartiIBQSATISFIYAT2: TFloatField
      FieldName = 'SATISFIYAT2'
      Origin = 'STOKKART.SATISFIYAT2'
    end
    object StokKartiIBQSATISFIYAT3: TFloatField
      FieldName = 'SATISFIYAT3'
      Origin = 'STOKKART.SATISFIYAT3'
    end
    object StokKartiIBQKDVLI_SATIS1: TFloatField
      FieldName = 'KDVLI_SATIS1'
      Origin = 'STOKKART.KDVLI_SATIS1'
    end
    object StokKartiIBQKDVLI_SATIS2: TFloatField
      FieldName = 'KDVLI_SATIS2'
      Origin = 'STOKKART.KDVLI_SATIS2'
    end
    object StokKartiIBQKDVLI_SATIS3: TFloatField
      FieldName = 'KDVLI_SATIS3'
      Origin = 'STOKKART.KDVLI_SATIS3'
    end
    object StokKartiIBQBAKIYE: TFloatField
      FieldName = 'BAKIYE'
      Origin = 'STOKKART.BAKIYE'
    end
    object StokKartiIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'STOKKART.DURUM'
    end
    object StokKartiIBQREELALIS: TFloatField
      FieldName = 'REELALIS'
      Origin = 'STOKKART.REELALIS'
    end
    object StokKartiIBQREELSATIS: TFloatField
      FieldName = 'REELSATIS'
      Origin = 'STOKKART.REELSATIS'
    end
    object StokKartiIBQORTALAMALIS: TFloatField
      FieldName = 'ORTALAMALIS'
      Origin = 'STOKKART.ORTALAMALIS'
    end
    object StokKartiIBQORTALAMSATIS: TFloatField
      FieldName = 'ORTALAMSATIS'
      Origin = 'STOKKART.ORTALAMSATIS'
    end
    object StokKartiIBQSONALIS: TFloatField
      FieldName = 'SONALIS'
      Origin = 'STOKKART.SONALIS'
    end
    object StokKartiIBQSONSATIS: TFloatField
      FieldName = 'SONSATIS'
      Origin = 'STOKKART.SONSATIS'
    end
    object StokKartiIBQACIKLAMA: TMemoField
      FieldName = 'ACIKLAMA'
      Origin = 'STOKKART.ACIKLAMA'
      BlobType = ftMemo
      Size = 8
    end
    object StokKartiIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'STOKKART.CARIKOD'
    end
    object StokKartiIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'STOKKART.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object StokKartiIBQC_KAYNAKADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KAYNAKADI'
      Origin = 'STOKKART.C_KAYNAKADI'
      ReadOnly = True
      Size = 60
    end
    object StokKartiIBQALINANSIPARIS: TFloatField
      FieldName = 'ALINANSIPARIS'
      Origin = 'STOKKART.ALINANSIPARIS'
    end
    object StokKartiIBQVERILENSIPARIS: TFloatField
      FieldName = 'VERILENSIPARIS'
      Origin = 'STOKKART.VERILENSIPARIS'
    end
    object StokKartiIBQAGIRLIK: TFloatField
      FieldName = 'AGIRLIK'
      Origin = 'STOKKART.AGIRLIK'
    end
    object StokKartiIBQHACIM: TFloatField
      FieldName = 'HACIM'
      Origin = 'STOKKART.HACIM'
    end
    object StokKartiIBQSTOKTIPIKOD: TIntegerField
      FieldName = 'STOKTIPIKOD'
      Origin = 'STOKKART.STOKTIPIKOD'
    end
    object StokKartiIBQC_STOKTIPI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKTIPI'
      Origin = 'STOKKART.C_STOKTIPI'
      ReadOnly = True
      Size = 50
    end
  end
  object StokResimIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = StokResimIBQAfterDelete
    AfterPost = StokResimIBQAfterPost
    OnNewRecord = StokResimIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = StokKartDS
    SQL.Strings = (
      'select *  from STOKRESIMLER'
      'Where STOKKOD=STOKKOD')
    UpdateObject = StokResimUSQL
    GeneratorField.Field = 'RESIMKOD'
    GeneratorField.Generator = 'STOKRESIMLER'
    Left = 40
    Top = 328
    object StokResimIBQRESIMKOD: TIntegerField
      FieldName = 'RESIMKOD'
      Origin = 'STOKRESIMLER.RESIMKOD'
      Required = True
    end
    object StokResimIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'STOKRESIMLER.STOKKOD'
    end
    object StokResimIBQRESIM: TBlobField
      FieldName = 'RESIM'
      Origin = 'STOKRESIMLER.RESIM'
      Size = 8
    end
  end
  object StokResimUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  RESIMKOD,'
      '  STOKKOD,'
      '  RESIM'
      'from STOKRESIMLER '
      'where'
      '  RESIMKOD = :RESIMKOD')
    ModifySQL.Strings = (
      'update STOKRESIMLER'
      'set'
      '  RESIMKOD = :RESIMKOD,'
      '  STOKKOD = :STOKKOD,'
      '  RESIM = :RESIM'
      'where'
      '  RESIMKOD = :OLD_RESIMKOD')
    InsertSQL.Strings = (
      'insert into STOKRESIMLER'
      '  (RESIMKOD, STOKKOD, RESIM)'
      'values'
      '  (:RESIMKOD, :STOKKOD, :RESIM)')
    DeleteSQL.Strings = (
      'delete from STOKRESIMLER'
      'where'
      '  RESIMKOD = :OLD_RESIMKOD')
    Left = 136
    Top = 328
  end
  object StokResimDS: TDataSource
    DataSet = StokResimIBQ
    Left = 224
    Top = 328
  end
  object StokGrupKartIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = StokGrupKartIBQAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = StokGruplariDS
    SQL.Strings = (
      
        'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STO' +
        'KGRUP,STOKKART'
      
        'where (STOKGRUP.KONTROLNO like :KONTROLNO || '#39'%'#39') and (STOKGRUP.' +
        'STOKKOD = STOKKART.STOKKOD) ')
    UpdateObject = StokGrupKartUSQL
    Left = 384
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'KONTROLNO'
        ParamType = ptUnknown
        Size = 61
      end>
    object StokGrupKartIBQGirisMiktar: TFloatField
      DisplayLabel = 'Giri'#351' Miktar'
      FieldKind = fkLookup
      FieldName = 'GirisMiktar'
      LookupDataSet = StokListIBQ
      LookupKeyFields = 'STOKNO'
      LookupResultField = 'SUMGIRISMIKTAR'
      KeyFields = 'STOKNO'
      Lookup = True
    end
    object StokGrupKartIBQCikisMiktar: TFloatField
      DisplayLabel = 'Ciki'#351' Miktar'
      FieldKind = fkLookup
      FieldName = 'CikisMiktar'
      LookupDataSet = StokListIBQ
      LookupKeyFields = 'STOKNO'
      LookupResultField = 'SUMCIKISMIKTAR'
      KeyFields = 'STOKNO'
      Lookup = True
    end
    object StokGrupKartIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'STOKGRUP.STOKKOD'
    end
    object StokGrupKartIBQGRUPKOD: TIntegerField
      FieldName = 'GRUPKOD'
      Origin = 'STOKGRUP.GRUPKOD'
      Required = True
    end
    object StokGrupKartIBQGRUPLARKOD: TIntegerField
      FieldName = 'GRUPLARKOD'
      Origin = 'STOKGRUP.GRUPLARKOD'
    end
    object StokGrupKartIBQKONTROLNO: TIBStringField
      FieldName = 'KONTROLNO'
      Origin = 'STOKGRUP.KONTROLNO'
      Size = 60
    end
    object StokGrupKartIBQACTIVITE: TIBStringField
      FieldName = 'ACTIVITE'
      Origin = 'STOKGRUP.ACTIVITE'
      Size = 5
    end
    object StokGrupKartIBQSTOKKOD1: TIntegerField
      FieldName = 'STOKKOD1'
      Origin = 'STOKKART.STOKKOD'
      Required = True
    end
    object StokGrupKartIBQSTOKNO: TIntegerField
      DisplayLabel = 'Stok No'
      FieldName = 'STOKNO'
      Origin = 'STOKKART.STOKNO'
    end
    object StokGrupKartIBQBARKOD: TIBStringField
      FieldName = 'BARKOD'
      Origin = 'STOKKART.BARKOD'
      Size = 25
    end
    object StokGrupKartIBQSTOKADI: TIBStringField
      DisplayLabel = 'Stok Ad'#305
      FieldName = 'STOKADI'
      Origin = 'STOKKART.STOKADI'
      Size = 40
    end
    object StokGrupKartIBQSTOKTURU: TIBStringField
      FieldName = 'STOKTURU'
      Origin = 'STOKKART.STOKTURU'
    end
    object StokGrupKartIBQBIRIM: TIBStringField
      FieldName = 'BIRIM'
      Origin = 'STOKKART.BIRIM'
      Size = 10
    end
    object StokGrupKartIBQBIRIMCARPAN: TFloatField
      FieldName = 'BIRIMCARPAN'
      Origin = 'STOKKART.BIRIMCARPAN'
    end
    object StokGrupKartIBQKOLIMIKTAR: TIntegerField
      FieldName = 'KOLIMIKTAR'
      Origin = 'STOKKART.KOLIMIKTAR'
    end
    object StokGrupKartIBQSECIM: TIntegerField
      FieldName = 'SECIM'
      Origin = 'STOKKART.SECIM'
    end
    object StokGrupKartIBQPARABIRIMIKOD: TIntegerField
      FieldName = 'PARABIRIMIKOD'
      Origin = 'STOKKART.PARABIRIMIKOD'
    end
    object StokGrupKartIBQSTOKTIPI: TIBStringField
      FieldName = 'STOKTIPI'
      Origin = 'STOKKART.STOKTIPI'
      Size = 30
    end
    object StokGrupKartIBQACTIVITE1: TIntegerField
      FieldName = 'ACTIVITE1'
      Origin = 'STOKKART.ACTIVITE'
    end
    object StokGrupKartIBQKARORANI: TFloatField
      FieldName = 'KARORANI'
      Origin = 'STOKKART.KARORANI'
    end
    object StokGrupKartIBQMINSEVIYE: TIntegerField
      FieldName = 'MINSEVIYE'
      Origin = 'STOKKART.MINSEVIYE'
    end
    object StokGrupKartIBQMAXSEVIYE: TIntegerField
      FieldName = 'MAXSEVIYE'
      Origin = 'STOKKART.MAXSEVIYE'
    end
    object StokGrupKartIBQSIPSEVIYE: TIntegerField
      FieldName = 'SIPSEVIYE'
      Origin = 'STOKKART.SIPSEVIYE'
    end
    object StokGrupKartIBQNEGSEVIYE: TIntegerField
      FieldName = 'NEGSEVIYE'
      Origin = 'STOKKART.NEGSEVIYE'
    end
    object StokGrupKartIBQKDVORAN: TFloatField
      FieldName = 'KDVORAN'
      Origin = 'STOKKART.KDVORAN'
    end
    object StokGrupKartIBQALISFIYAT: TFloatField
      DisplayLabel = 'Al'#305#351' Fiyat'#305
      FieldName = 'ALISFIYAT'
      Origin = 'STOKKART.ALISFIYAT'
    end
    object StokGrupKartIBQSATISFIYAT1: TFloatField
      DisplayLabel = 'Sat'#305#351' Fiyat'#305' 1'
      FieldName = 'SATISFIYAT1'
      Origin = 'STOKKART.SATISFIYAT1'
    end
    object StokGrupKartIBQSATISFIYAT2: TFloatField
      DisplayLabel = 'Sat'#305#351' Fiyat'#305' 2'
      FieldName = 'SATISFIYAT2'
      Origin = 'STOKKART.SATISFIYAT2'
    end
    object StokGrupKartIBQSATISFIYAT3: TFloatField
      DisplayLabel = 'Sat'#305#351' Fiyat'#305' 3'
      FieldName = 'SATISFIYAT3'
      Origin = 'STOKKART.SATISFIYAT3'
    end
    object StokGrupKartIBQKDVLI_SATIS1: TFloatField
      DisplayLabel = 'Sat'#305#351' Fiyat'#305' 1'
      FieldName = 'KDVLI_SATIS1'
      Origin = 'STOKKART.KDVLI_SATIS1'
    end
    object StokGrupKartIBQKDVLI_SATIS2: TFloatField
      DisplayLabel = 'Sat'#305#351' Fiyat'#305' 2'
      FieldName = 'KDVLI_SATIS2'
      Origin = 'STOKKART.KDVLI_SATIS2'
    end
    object StokGrupKartIBQKDVLI_SATIS3: TFloatField
      DisplayLabel = 'Sat'#305#351' Fiyat'#305' 3'
      FieldName = 'KDVLI_SATIS3'
      Origin = 'STOKKART.KDVLI_SATIS3'
    end
    object StokGrupKartIBQBAKIYE: TFloatField
      DisplayLabel = 'Stok Miktar'#305
      FieldName = 'BAKIYE'
      Origin = 'STOKKART.BAKIYE'
    end
    object StokGrupKartIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'STOKKART.DURUM'
    end
    object StokGrupKartIBQREELALIS: TFloatField
      FieldName = 'REELALIS'
      Origin = 'STOKKART.REELALIS'
    end
    object StokGrupKartIBQREELSATIS: TFloatField
      FieldName = 'REELSATIS'
      Origin = 'STOKKART.REELSATIS'
    end
    object StokGrupKartIBQORTALAMALIS: TFloatField
      FieldName = 'ORTALAMALIS'
      Origin = 'STOKKART.ORTALAMALIS'
    end
    object StokGrupKartIBQORTALAMSATIS: TFloatField
      FieldName = 'ORTALAMSATIS'
      Origin = 'STOKKART.ORTALAMSATIS'
    end
    object StokGrupKartIBQSONALIS: TFloatField
      FieldName = 'SONALIS'
      Origin = 'STOKKART.SONALIS'
    end
    object StokGrupKartIBQSONSATIS: TFloatField
      FieldName = 'SONSATIS'
      Origin = 'STOKKART.SONSATIS'
    end
    object StokGrupKartIBQACIKLAMA: TMemoField
      FieldName = 'ACIKLAMA'
      Origin = 'STOKKART.ACIKLAMA'
      BlobType = ftMemo
      Size = 8
    end
    object StokGrupKartIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'STOKKART.CARIKOD'
    end
    object StokGrupKartIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'STOKKART.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object StokGrupKartIBQC_KAYNAKADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KAYNAKADI'
      Origin = 'STOKKART.C_KAYNAKADI'
      ReadOnly = True
      Size = 60
    end
    object StokGrupKartIBQALINANSIPARIS: TFloatField
      FieldName = 'ALINANSIPARIS'
      Origin = 'STOKKART.ALINANSIPARIS'
    end
    object StokGrupKartIBQVERILENSIPARIS: TFloatField
      FieldName = 'VERILENSIPARIS'
      Origin = 'STOKKART.VERILENSIPARIS'
    end
    object StokGrupKartIBQAGIRLIK: TFloatField
      FieldName = 'AGIRLIK'
      Origin = 'STOKKART.AGIRLIK'
    end
    object StokGrupKartIBQHACIM: TFloatField
      FieldName = 'HACIM'
      Origin = 'STOKKART.HACIM'
    end
    object StokGrupKartIBQC_DURUM: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Durum'
      FieldKind = fkInternalCalc
      FieldName = 'C_DURUM'
      Origin = 'STOKKART.C_DURUM'
      ReadOnly = True
      Size = 5
    end
  end
  object IBQuery1: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STOKISLEM')
    UpdateObject = IBUpdateSQL1
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'STOKISLEM'
    Left = 40
    Top = 456
    object IntegerField1: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'STOKISLEM.ISLEMKOD'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'STOKISLEM.CARIKOD'
    end
    object IntegerField3: TIntegerField
      FieldName = 'CARINO'
      Origin = 'STOKISLEM.CARINO'
    end
    object IBStringField1: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'STOKISLEM.ISLEMTUR'
      Size = 10
    end
    object IntegerField4: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'STOKISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object IntegerField5: TIntegerField
      FieldName = 'STOKISLEMNO'
      Origin = 'STOKISLEM.STOKISLEMNO'
    end
    object DateField1: TDateField
      FieldName = 'TARIH'
      Origin = 'STOKISLEM.TARIH'
    end
    object DateField2: TDateField
      FieldName = 'IRSALIYETARIH'
      Origin = 'STOKISLEM.IRSALIYETARIH'
    end
    object TimeField1: TTimeField
      FieldName = 'SAAT'
      Origin = 'STOKISLEM.SAAT'
    end
    object IBStringField2: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'STOKISLEM.ACIKLAMA'
      Size = 80
    end
    object FloatField1: TFloatField
      FieldName = 'GIRISTUTAR'
      Origin = 'STOKISLEM.GIRISTUTAR'
    end
    object FloatField2: TFloatField
      FieldName = 'CIKISTUTAR'
      Origin = 'STOKISLEM.CIKISTUTAR'
    end
    object FloatField3: TFloatField
      FieldName = 'GIRISMATRAH'
      Origin = 'STOKISLEM.GIRISMATRAH'
    end
    object FloatField4: TFloatField
      FieldName = 'GIRISKDVTUTAR'
      Origin = 'STOKISLEM.GIRISKDVTUTAR'
    end
    object FloatField5: TFloatField
      FieldName = 'CIKISMATRAH'
      Origin = 'STOKISLEM.CIKISMATRAH'
    end
    object FloatField6: TFloatField
      FieldName = 'CIKISKDVTUTAR'
      Origin = 'STOKISLEM.CIKISKDVTUTAR'
    end
    object FloatField7: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'STOKISLEM.CARIKURU'
    end
    object FloatField8: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'STOKISLEM.ISLEMKURU'
    end
    object IntegerField6: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'STOKISLEM.KAPATMA'
    end
    object DateField3: TDateField
      FieldName = 'VADE'
      Origin = 'STOKISLEM.VADE'
    end
    object IBStringField3: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'STOKISLEM.GELGITKOD'
      Size = 80
    end
    object IntegerField7: TIntegerField
      FieldName = 'EVRAKNO'
      Origin = 'STOKISLEM.EVRAKNO'
    end
    object IntegerField8: TIntegerField
      FieldName = 'BELGENO'
      Origin = 'STOKISLEM.BELGENO'
    end
    object IntegerField9: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'STOKISLEM.BAGLANTINO'
    end
    object IntegerField10: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'STOKISLEM.CARIHESAPILISKI'
    end
    object IntegerField11: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'STOKISLEM.PARABIRIMKOD'
    end
    object IntegerField12: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'STOKISLEM.STOKYERIKOD'
    end
    object IntegerField13: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'STOKISLEM.MAKBUZNO'
    end
    object IntegerField14: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'STOKISLEM.BILGIKOD'
    end
    object IntegerField15: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'STOKISLEM.KULLANKOD'
    end
    object IntegerField16: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'STOKISLEM.PERSONELKOD'
    end
    object IntegerField17: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'STOKISLEM.SISTEM'
    end
    object IntegerField18: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'STOKISLEM.CARIPARABIRIMKOD'
    end
    object IBStringField4: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'STOKISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object IBStringField5: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'STOKISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object IBStringField6: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'STOKISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object IBStringField7: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'STOKISLEM.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object IBStringField8: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'STOKISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object IBStringField9: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'STOKISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object DateField4: TDateField
      FieldName = 'FATURATARIH'
      Origin = 'STOKISLEM.FATURATARIH'
    end
    object IBStringField10: TIBStringField
      FieldName = 'KDVSECIM'
      Origin = 'STOKISLEM.KDVSECIM'
      Size = 5
    end
    object IBStringField11: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'STOKISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object IntegerField19: TIntegerField
      FieldName = 'IRSALIYENO'
      Origin = 'STOKISLEM.IRSALIYENO'
    end
    object DateField5: TDateField
      FieldName = 'EVRAKTARIH'
      Origin = 'STOKISLEM.EVRAKTARIH'
    end
    object FloatField9: TFloatField
      FieldName = 'D_GIRISTUTAR'
      Origin = 'STOKISLEM.D_GIRISTUTAR'
    end
    object FloatField10: TFloatField
      FieldName = 'D_GIRISKDVTUTAR'
      Origin = 'STOKISLEM.D_GIRISKDVTUTAR'
    end
    object FloatField11: TFloatField
      FieldName = 'D_GIRISMATRAH'
      Origin = 'STOKISLEM.D_GIRISMATRAH'
    end
    object FloatField12: TFloatField
      FieldName = 'D_CIKISTUTAR'
      Origin = 'STOKISLEM.D_CIKISTUTAR'
    end
    object FloatField13: TFloatField
      FieldName = 'D_CIKISKDVTUTAR'
      Origin = 'STOKISLEM.D_CIKISKDVTUTAR'
    end
    object FloatField14: TFloatField
      FieldName = 'D_CIKISMATRAH'
      Origin = 'STOKISLEM.D_CIKISMATRAH'
    end
  end
  object IBUpdateSQL1: TIBUpdateSQL
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
      '  ISLEMTURKOD = :ISLEMTURKOD,'
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
      
        '  (ISLEMKOD, CARIKOD, CARINO, ISLEMTURKOD, STOKISLEMNO, TARIH, I' +
        'RSALIYETARIH, '
      
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
      
        '  (:ISLEMKOD, :CARIKOD, :CARINO, :ISLEMTURKOD, :STOKISLEMNO, :TA' +
        'RIH, :IRSALIYETARIH, '
      
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
    Left = 136
    Top = 456
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 224
    Top = 456
  end
end
