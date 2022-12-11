object DMirsaliye: TDMirsaliye
  OldCreateOrder = False
  Left = 383
  Top = 90
  Height = 528
  Width = 471
  object GirisIrsaliyesiIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = GirisIrsaliyesiIBQAfterPost
    OnNewRecord = GirisIrsaliyesiIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from IRSALIYE'
      'Where ISLEMTURKOD=43 and SISTEM<>2'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = GirisIrsaliyesiUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'IRSALIYE'
    Left = 40
    Top = 8
    object GirisIrsaliyesiIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'IRSALIYE.ISLEMKOD'
      Required = True
    end
    object GirisIrsaliyesiIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'IRSALIYE.ISLEMTUR'
      Size = 40
    end
    object GirisIrsaliyesiIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'IRSALIYE.ISLEMTURKOD'
      ReadOnly = True
    end
    object GirisIrsaliyesiIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'IRSALIYE.CARIKOD'
    end
    object GirisIrsaliyesiIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'IRSALIYE.CARINO'
    end
    object GirisIrsaliyesiIBQIRALIYEISLEMNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'IRALIYEISLEMNO'
      Origin = 'IRSALIYE.IRALIYEISLEMNO'
    end
    object GirisIrsaliyesiIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'IRSALIYE.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object GirisIrsaliyesiIBQIRSALIYETARIH: TDateField
      DisplayLabel = #304'rsaliye Tarihi'
      FieldName = 'IRSALIYETARIH'
      Origin = 'IRSALIYE.IRSALIYETARIH'
      EditMask = '!99/99/00;1;_'
    end
    object GirisIrsaliyesiIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'IRSALIYE.SAAT'
    end
    object GirisIrsaliyesiIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'IRSALIYE.ACIKLAMA'
      Size = 80
    end
    object GirisIrsaliyesiIBQGIRISTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' Tutar'#305
      FieldName = 'GIRISTUTAR'
      Origin = 'IRSALIYE.GIRISTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisIrsaliyesiIBQCIKISTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Tutar'#305
      FieldName = 'CIKISTUTAR'
      Origin = 'IRSALIYE.CIKISTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisIrsaliyesiIBQGIRISMATRAH: TFloatField
      DisplayLabel = 'Giri'#351' Matrah'#305
      FieldName = 'GIRISMATRAH'
      Origin = 'IRSALIYE.GIRISMATRAH'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisIrsaliyesiIBQGIRISKDVTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' KDV Tutar'#305
      FieldName = 'GIRISKDVTUTAR'
      Origin = 'IRSALIYE.GIRISKDVTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisIrsaliyesiIBQCIKISMATRAH: TFloatField
      DisplayLabel = #199#305'k'#305#351' Matrah'#305
      FieldName = 'CIKISMATRAH'
      Origin = 'IRSALIYE.CIKISMATRAH'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisIrsaliyesiIBQCIKISKDVTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' KDV Tutar'#305
      FieldName = 'CIKISKDVTUTAR'
      Origin = 'IRSALIYE.CIKISKDVTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisIrsaliyesiIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'IRSALIYE.CARIKURU'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisIrsaliyesiIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'IRSALIYE.ISLEMKURU'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisIrsaliyesiIBQKAPATMA: TIntegerField
      DisplayLabel = 'Kapatma'
      FieldName = 'KAPATMA'
      Origin = 'IRSALIYE.KAPATMA'
    end
    object GirisIrsaliyesiIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'IRSALIYE.VADE'
      EditMask = '!99/99/00;1;_'
    end
    object GirisIrsaliyesiIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'IRSALIYE.GELGITKOD'
      Size = 80
    end
    object GirisIrsaliyesiIBQEVRAKNO: TIntegerField
      DisplayLabel = 'Evrak No'
      FieldName = 'EVRAKNO'
      Origin = 'IRSALIYE.EVRAKNO'
    end
    object GirisIrsaliyesiIBQBELGENO: TIntegerField
      DisplayLabel = 'Belge No'
      FieldName = 'BELGENO'
      Origin = 'IRSALIYE.BELGENO'
    end
    object GirisIrsaliyesiIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'IRSALIYE.BAGLANTINO'
    end
    object GirisIrsaliyesiIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'IRSALIYE.CARIHESAPILISKI'
    end
    object GirisIrsaliyesiIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'IRSALIYE.PARABIRIMKOD'
    end
    object GirisIrsaliyesiIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'IRSALIYE.STOKYERIKOD'
    end
    object GirisIrsaliyesiIBQMAKBUZNO: TIntegerField
      DisplayLabel = 'Makbuz No'
      FieldName = 'MAKBUZNO'
      Origin = 'IRSALIYE.MAKBUZNO'
    end
    object GirisIrsaliyesiIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'IRSALIYE.BILGIKOD'
    end
    object GirisIrsaliyesiIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'IRSALIYE.KULLANKOD'
    end
    object GirisIrsaliyesiIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'IRSALIYE.PERSONELKOD'
    end
    object GirisIrsaliyesiIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'IRSALIYE.CARIPARABIRIMKOD'
    end
    object GirisIrsaliyesiIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'IRSALIYE.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object GirisIrsaliyesiIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'IRSALIYE.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object GirisIrsaliyesiIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'IRSALIYE.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object GirisIrsaliyesiIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'IRSALIYE.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object GirisIrsaliyesiIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'IRSALIYE.C_KULLANICIADI'
      ReadOnly = True
    end
    object GirisIrsaliyesiIBQC_PERSONEL: TIBStringField
      DisplayLabel = 'Personel'
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'IRSALIYE.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object GirisIrsaliyesiIBQFATURATARIH: TDateField
      DisplayLabel = 'Fatura Tarihi'
      FieldName = 'FATURATARIH'
      Origin = 'IRSALIYE.FATURATARIH'
      EditMask = '!99/99/00;1;_'
    end
    object GirisIrsaliyesiIBQKDVSECIM: TIBStringField
      DisplayLabel = 'Kdv Se'#231'im'
      FieldName = 'KDVSECIM'
      Origin = 'IRSALIYE.KDVSECIM'
      Size = 5
    end
    object GirisIrsaliyesiIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G.G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'IRSALIYE.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object GirisIrsaliyesiIBQIRSALIYENO: TIntegerField
      DisplayLabel = #304'rsaliye No'
      FieldName = 'IRSALIYENO'
      Origin = 'IRSALIYE.IRSALIYENO'
    end
    object GirisIrsaliyesiIBQEVRAKTARIH: TDateField
      DisplayLabel = 'Evrak Tarihi'
      FieldName = 'EVRAKTARIH'
      Origin = 'IRSALIYE.EVRAKTARIH'
      EditMask = '!99/99/00;1;_'
    end
    object GirisIrsaliyesiIBQD_GIRISTUTAR: TFloatField
      DisplayLabel = 'D. Giri'#351' Tutar'#305
      FieldName = 'D_GIRISTUTAR'
      Origin = 'IRSALIYE.D_GIRISTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisIrsaliyesiIBQD_GIRISKDVTUTAR: TFloatField
      DisplayLabel = 'D. Giri'#351' KDV Tutar'#305
      FieldName = 'D_GIRISKDVTUTAR'
      Origin = 'IRSALIYE.D_GIRISKDVTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisIrsaliyesiIBQD_GIRISMATRAH: TFloatField
      DisplayLabel = 'D. Giri'#351' Matrah'#305
      FieldName = 'D_GIRISMATRAH'
      Origin = 'IRSALIYE.D_GIRISMATRAH'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisIrsaliyesiIBQD_CIKISTUTAR: TFloatField
      DisplayLabel = 'D. '#199#305'k'#305#351' Tutar'#305
      FieldName = 'D_CIKISTUTAR'
      Origin = 'IRSALIYE.D_CIKISTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisIrsaliyesiIBQD_CIKISKDVTUTAR: TFloatField
      DisplayLabel = 'D. '#199#305'k'#305#351' KDV Tutar'#305
      FieldName = 'D_CIKISKDVTUTAR'
      Origin = 'IRSALIYE.D_CIKISKDVTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisIrsaliyesiIBQD_CIKISMATRAH: TFloatField
      DisplayLabel = 'D. '#199#305'k'#305#351' Matrah'#305
      FieldName = 'D_CIKISMATRAH'
      Origin = 'IRSALIYE.D_CIKISMATRAH'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisIrsaliyesiIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'IRSALIYE.SISTEM'
    end
  end
  object GirisIrsaliyesiUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  CARIKOD,'
      '  CARINO,'
      '  IRALIYEISLEMNO,'
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
      '  D_CIKISMATRAH,'
      '  SISTEM'
      'from IRSALIYE '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update IRSALIYE'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  CARIKOD = :CARIKOD,'
      '  CARINO = :CARINO,'
      '  IRALIYEISLEMNO = :IRALIYEISLEMNO,'
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
      '  D_CIKISMATRAH = :D_CIKISMATRAH,'
      '  SISTEM = :SISTEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into IRSALIYE'
      
        '  (ISLEMKOD, ISLEMTUR, CARIKOD, CARINO, IRALIYEISLEMNO, TARIH, I' +
        'RSALIYETARIH, '
      
        '   SAAT, ACIKLAMA, GIRISTUTAR, CIKISTUTAR, GIRISMATRAH, GIRISKDV' +
        'TUTAR, '
      
        '   CIKISMATRAH, CIKISKDVTUTAR, CARIKURU, ISLEMKURU, KAPATMA, VAD' +
        'E, GELGITKOD, '
      
        '   EVRAKNO, BELGENO, BAGLANTINO, CARIHESAPILISKI, PARABIRIMKOD, ' +
        'STOKYERIKOD, '
      
        '   MAKBUZNO, BILGIKOD, KULLANKOD, PERSONELKOD, CARIPARABIRIMKOD,' +
        ' FATURATARIH, '
      
        '   KDVSECIM, IRSALIYENO, EVRAKTARIH, D_GIRISTUTAR, D_GIRISKDVTUT' +
        'AR, D_GIRISMATRAH, '
      '   D_CIKISTUTAR, D_CIKISKDVTUTAR, D_CIKISMATRAH, SISTEM)'
      'values'
      
        '  (:ISLEMKOD, :ISLEMTUR, :CARIKOD, :CARINO, :IRALIYEISLEMNO, :TA' +
        'RIH, :IRSALIYETARIH, '
      
        '   :SAAT, :ACIKLAMA, :GIRISTUTAR, :CIKISTUTAR, :GIRISMATRAH, :GI' +
        'RISKDVTUTAR, '
      
        '   :CIKISMATRAH, :CIKISKDVTUTAR, :CARIKURU, :ISLEMKURU, :KAPATMA' +
        ', :VADE, '
      
        '   :GELGITKOD, :EVRAKNO, :BELGENO, :BAGLANTINO, :CARIHESAPILISKI' +
        ', :PARABIRIMKOD, '
      
        '   :STOKYERIKOD, :MAKBUZNO, :BILGIKOD, :KULLANKOD, :PERSONELKOD,' +
        ' :CARIPARABIRIMKOD, '
      
        '   :FATURATARIH, :KDVSECIM, :IRSALIYENO, :EVRAKTARIH, :D_GIRISTU' +
        'TAR, :D_GIRISKDVTUTAR, '
      
        '   :D_GIRISMATRAH, :D_CIKISTUTAR, :D_CIKISKDVTUTAR, :D_CIKISMATR' +
        'AH, :SISTEM)')
    DeleteSQL.Strings = (
      'delete from IRSALIYE'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 136
    Top = 8
  end
  object GirisIrsaliyesiDS: TDataSource
    DataSet = GirisIrsaliyesiIBQ
    Left = 224
    Top = 8
  end
  object GirisBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = GirisBodroIBQAfterPost
    OnNewRecord = GirisBodroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = GirisIrsaliyesiDS
    SQL.Strings = (
      'select * from IRSALIYEBODRO'
      'Where ISLEMKOD=:ISLEMKOD '
      'Order By SIRANO')
    UpdateObject = GirisBodroSQL
    GeneratorField.Field = 'BODROKOD'
    GeneratorField.Generator = 'IRSALIYEBODRO'
    Left = 40
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
      end>
    object GirisBodroIBQBODROKOD: TIntegerField
      FieldName = 'BODROKOD'
      Origin = 'IRSALIYEBODRO.BODROKOD'
      Required = True
    end
    object GirisBodroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'IRSALIYEBODRO.ISLEMKOD'
    end
    object GirisBodroIBQSIRANO: TIntegerField
      DisplayLabel = 'S'#305'ra'
      FieldName = 'SIRANO'
      Origin = 'IRSALIYEBODRO.SIRANO'
    end
    object GirisBodroIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'IRSALIYEBODRO.ISLEMTUR'
      Size = 40
    end
    object GirisBodroIBQC_ISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_ISLEMTURKOD'
      Origin = 'IRSALIYEBODRO.C_ISLEMTURKOD'
      ReadOnly = True
    end
    object GirisBodroIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'IRSALIYEBODRO.CARIKOD'
    end
    object GirisBodroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'IRSALIYEBODRO.PARABIRIMKOD'
    end
    object GirisBodroIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'IRSALIYEBODRO.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object GirisBodroIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'IRSALIYEBODRO.STOKKOD'
    end
    object GirisBodroIBQSTOKNO: TIntegerField
      DisplayLabel = 'Stok No'
      FieldName = 'STOKNO'
      Origin = 'IRSALIYEBODRO.STOKNO'
    end
    object GirisBodroIBQBARKOD: TIBStringField
      DisplayLabel = 'Barkod'
      FieldName = 'BARKOD'
      Origin = 'IRSALIYEBODRO.BARKOD'
      Size = 25
    end
    object GirisBodroIBQSTOKADI: TIBStringField
      DisplayLabel = 'Stok Ad'#305
      FieldName = 'STOKADI'
      Origin = 'IRSALIYEBODRO.STOKADI'
      Size = 80
    end
    object GirisBodroIBQMIKTAR: TFloatField
      DisplayLabel = 'Miktar'
      FieldName = 'MIKTAR'
      Origin = 'IRSALIYEBODRO.MIKTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisBodroIBQMIKTARCARPAN: TIntegerField
      DisplayLabel = 'Miktar '#199'arpan'
      FieldName = 'MIKTARCARPAN'
      Origin = 'IRSALIYEBODRO.MIKTARCARPAN'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisBodroIBQGIRISMIKTAR: TFloatField
      DisplayLabel = 'Giri'#351' Miktar'#305
      FieldName = 'GIRISMIKTAR'
      Origin = 'IRSALIYEBODRO.GIRISMIKTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisBodroIBQCIKISMIKTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Miktar'#305
      FieldName = 'CIKISMIKTAR'
      Origin = 'IRSALIYEBODRO.CIKISMIKTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisBodroIBQBIRIM: TIBStringField
      DisplayLabel = 'Birim'
      FieldName = 'BIRIM'
      Origin = 'IRSALIYEBODRO.BIRIM'
      Size = 10
    end
    object GirisBodroIBQBIRIMFIYAT: TFloatField
      DisplayLabel = 'Birim Fiyat'
      FieldName = 'BIRIMFIYAT'
      Origin = 'IRSALIYEBODRO.BIRIMFIYAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisBodroIBQGIRISFIYAT: TFloatField
      DisplayLabel = 'Giri'#351' Fiyat'#305
      FieldName = 'GIRISFIYAT'
      Origin = 'IRSALIYEBODRO.GIRISFIYAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisBodroIBQCIKISFIYAT: TFloatField
      DisplayLabel = #199#305'k'#305#351' Fiyat'#305
      FieldName = 'CIKISFIYAT'
      Origin = 'IRSALIYEBODRO.CIKISFIYAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisBodroIBQCIKISTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Tutar'#305
      FieldName = 'CIKISTUTAR'
      Origin = 'IRSALIYEBODRO.CIKISTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisBodroIBQGIRISTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' Tutar'#305
      FieldName = 'GIRISTUTAR'
      Origin = 'IRSALIYEBODRO.GIRISTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisBodroIBQGIRISMATRAHI: TFloatField
      DisplayLabel = 'Giri'#351' Matrah'#305
      FieldName = 'GIRISMATRAHI'
      Origin = 'IRSALIYEBODRO.GIRISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisBodroIBQCIKISMATRAHI: TFloatField
      DisplayLabel = #199#305'k'#305#351' Matrah'#305
      FieldName = 'CIKISMATRAHI'
      Origin = 'IRSALIYEBODRO.CIKISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisBodroIBQISKONTO1: TFloatField
      DisplayLabel = #304'sk.1'
      FieldName = 'ISKONTO1'
      Origin = 'IRSALIYEBODRO.ISKONTO1'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object GirisBodroIBQISKONTO2: TFloatField
      DisplayLabel = #304'sk.2'
      FieldName = 'ISKONTO2'
      Origin = 'IRSALIYEBODRO.ISKONTO2'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object GirisBodroIBQISKONTO3: TFloatField
      DisplayLabel = #304'sk.3'
      FieldName = 'ISKONTO3'
      Origin = 'IRSALIYEBODRO.ISKONTO3'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object GirisBodroIBQISKONTO4: TFloatField
      DisplayLabel = #304'sk.4'
      FieldName = 'ISKONTO4'
      Origin = 'IRSALIYEBODRO.ISKONTO4'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object GirisBodroIBQKDVORANI: TFloatField
      DisplayLabel = 'Kdv Oran'#305
      FieldName = 'KDVORANI'
      Origin = 'IRSALIYEBODRO.KDVORANI'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object GirisBodroIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'IRSALIYEBODRO.BAKIYE'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisBodroIBQDURUM: TIntegerField
      DisplayLabel = 'Durum'
      FieldName = 'DURUM'
      Origin = 'IRSALIYEBODRO.DURUM'
    end
    object GirisBodroIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'IRSALIYEBODRO.ACIKLAMA'
      Size = 60
    end
    object GirisBodroIBQKAPATMA: TIntegerField
      DisplayLabel = 'Kapatma'
      FieldName = 'KAPATMA'
      Origin = 'IRSALIYEBODRO.KAPATMA'
    end
    object GirisBodroIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'IRSALIYEBODRO.VADE'
      EditMask = '!99/99/00;1;_'
    end
    object GirisBodroIBQFATURANO: TIntegerField
      DisplayLabel = 'Fatura No'
      FieldName = 'FATURANO'
      Origin = 'IRSALIYEBODRO.FATURANO'
    end
    object GirisBodroIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'IRSALIYEBODRO.STOKYERIKOD'
    end
    object GirisBodroIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'IRSALIYEBODRO.ISLEMKURU'
    end
    object GirisBodroIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'IRSALIYEBODRO.GELGITKOD'
      Size = 80
    end
    object GirisBodroIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'IRSALIYEBODRO.PERSONELKOD'
    end
    object GirisBodroIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'IRSALIYEBODRO.KULLANKOD'
    end
    object GirisBodroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'IRSALIYEBODRO.SISTEM'
    end
    object GirisBodroIBQEVRAKDURUMU: TIntegerField
      FieldName = 'EVRAKDURUMU'
      Origin = 'IRSALIYEBODRO.EVRAKDURUMU'
    end
    object GirisBodroIBQSERINO: TIBStringField
      DisplayLabel = 'Seri No'
      FieldName = 'SERINO'
      Origin = 'IRSALIYEBODRO.SERINO'
      Size = 30
    end
    object GirisBodroIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'IRSALIYEBODRO.CARIHESAPILISKI'
      ReadOnly = True
    end
    object GirisBodroIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'IRSALIYEBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object GirisBodroIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'IRSALIYEBODRO.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object GirisBodroIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'IRSALIYEBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object GirisBodroIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'IRSALIYEBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object GirisBodroIBQC_REELGIRIS: TFloatField
      DisplayLabel = 'Reel Giri'#351
      FieldKind = fkInternalCalc
      FieldName = 'C_REELGIRIS'
      Origin = 'IRSALIYEBODRO.C_REELGIRIS'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisBodroIBQC_REELCIKIS: TFloatField
      DisplayLabel = 'Reel '#199#305'k'#305#351
      FieldKind = fkInternalCalc
      FieldName = 'C_REELCIKIS'
      Origin = 'IRSALIYEBODRO.C_REELCIKIS'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisBodroIBQKDVSECIM: TIBStringField
      DisplayLabel = 'Kdv Se'#231'im'
      FieldName = 'KDVSECIM'
      Origin = 'IRSALIYEBODRO.KDVSECIM'
      Size = 5
    end
    object GirisBodroIBQC_TLGIRISTUTARI: TFloatField
      DisplayLabel = 'TL Giri'#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISTUTARI'
      Origin = 'IRSALIYEBODRO.C_TLGIRISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisBodroIBQC_TLGIRISMATRAHI: TFloatField
      DisplayLabel = 'TL Giri'#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISMATRAHI'
      Origin = 'IRSALIYEBODRO.C_TLGIRISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisBodroIBQC_TLCIKISTUTARI: TFloatField
      DisplayLabel = 'TL '#199#305'k'#305#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISTUTARI'
      Origin = 'IRSALIYEBODRO.C_TLCIKISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisBodroIBQC_TLCIKISMATRAHI: TFloatField
      DisplayLabel = 'TL '#199#305'k'#305#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISMATRAHI'
      Origin = 'IRSALIYEBODRO.C_TLCIKISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisBodroIBQC_TLBIRIMFIYAT: TFloatField
      DisplayLabel = 'TL Birim Fiyat'
      FieldKind = fkInternalCalc
      FieldName = 'C_TLBIRIMFIYAT'
      Origin = 'IRSALIYEBODRO.C_TLBIRIMFIYAT'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisBodroIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G.G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'IRSALIYEBODRO.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object GirisBodroIBQC_GIRISKDVTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' Kdv Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_GIRISKDVTUTAR'
      Origin = 'IRSALIYEBODRO.C_GIRISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisBodroIBQC_CIKISKDVTUTAR: TFloatField
      DisplayLabel = 'k'#305#351' Kdv Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CIKISKDVTUTAR'
      Origin = 'IRSALIYEBODRO.C_CIKISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisBodroIBQC_TLGIRISKDVTUTAR: TFloatField
      DisplayLabel = 'TL Giri'#351' Kdv Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISKDVTUTAR'
      Origin = 'IRSALIYEBODRO.C_TLGIRISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object GirisBodroIBQC_TLCIKISKDVTUTARI: TFloatField
      DisplayLabel = 'TL '#199#305'k'#305#351' Kdv Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISKDVTUTARI'
      Origin = 'IRSALIYEBODRO.C_TLCIKISKDVTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
  end
  object GirisBodroSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  BODROKOD,'
      '  ISLEMKOD,'
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
      'from IRSALIYEBODRO '
      'where'
      '  BODROKOD = :BODROKOD')
    ModifySQL.Strings = (
      'update IRSALIYEBODRO'
      'set'
      '  BODROKOD = :BODROKOD,'
      '  ISLEMKOD = :ISLEMKOD,'
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
      '  KDVSECIM = :KDVSECIM'
      'where'
      '  BODROKOD = :OLD_BODROKOD')
    InsertSQL.Strings = (
      'insert into IRSALIYEBODRO'
      
        '  (BODROKOD, ISLEMKOD, SIRANO, ISLEMTUR, CARIKOD, PARABIRIMKOD, ' +
        'TARIH, '
      
        '   STOKKOD, STOKNO, BARKOD, STOKADI, MIKTAR, MIKTARCARPAN, GIRIS' +
        'MIKTAR, '
      
        '   CIKISMIKTAR, BIRIM, BIRIMFIYAT, GIRISFIYAT, CIKISFIYAT, CIKIS' +
        'TUTAR, '
      
        '   GIRISTUTAR, GIRISMATRAHI, CIKISMATRAHI, ISKONTO1, ISKONTO2, I' +
        'SKONTO3, '
      
        '   ISKONTO4, KDVORANI, BAKIYE, DURUM, ACIKLAMA, KAPATMA, VADE, F' +
        'ATURANO, '
      
        '   STOKYERIKOD, ISLEMKURU, GELGITKOD, PERSONELKOD, KULLANKOD, SI' +
        'STEM, EVRAKDURUMU, '
      '   SERINO, CARIHESAPILISKI, KDVSECIM)'
      'values'
      
        '  (:BODROKOD, :ISLEMKOD, :SIRANO, :ISLEMTUR, :CARIKOD, :PARABIRI' +
        'MKOD, :TARIH, '
      
        '   :STOKKOD, :STOKNO, :BARKOD, :STOKADI, :MIKTAR, :MIKTARCARPAN,' +
        ' :GIRISMIKTAR, '
      
        '   :CIKISMIKTAR, :BIRIM, :BIRIMFIYAT, :GIRISFIYAT, :CIKISFIYAT, ' +
        ':CIKISTUTAR, '
      
        '   :GIRISTUTAR, :GIRISMATRAHI, :CIKISMATRAHI, :ISKONTO1, :ISKONT' +
        'O2, :ISKONTO3, '
      
        '   :ISKONTO4, :KDVORANI, :BAKIYE, :DURUM, :ACIKLAMA, :KAPATMA, :' +
        'VADE, :FATURANO, '
      
        '   :STOKYERIKOD, :ISLEMKURU, :GELGITKOD, :PERSONELKOD, :KULLANKO' +
        'D, :SISTEM, '
      '   :EVRAKDURUMU, :SERINO, :CARIHESAPILISKI, :KDVSECIM)')
    DeleteSQL.Strings = (
      'delete from IRSALIYEBODRO'
      'where'
      '  BODROKOD = :OLD_BODROKOD')
    Left = 136
    Top = 64
  end
  object GirisBodroDS: TDataSource
    DataSet = GirisBodroIBQ
    Left = 224
    Top = 64
  end
  object GAltUstBilgiIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = GAltUstBilgiIBQAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = GirisIrsaliyesiDS
    SQL.Strings = (
      'select * from ISLEMBILGI'
      'Where ISLEMKOD=:ISLEMKOD and ISLEMTURKOD=:ISLEMTURKOD')
    UpdateObject = GAltUstBilgiUSQL
    GeneratorField.Field = 'BILGIKOD'
    GeneratorField.Generator = 'ISLEMBILGI'
    Left = 40
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ISLEMTURKOD'
        ParamType = ptUnknown
      end>
    object GAltUstBilgiIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'ISLEMBILGI.BILGIKOD'
      Required = True
    end
    object GAltUstBilgiIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'ISLEMBILGI.ISLEMKOD'
    end
    object GAltUstBilgiIBQALTBILGI: TMemoField
      FieldName = 'ALTBILGI'
      Origin = 'ISLEMBILGI.ALTBILGI'
      BlobType = ftMemo
      Size = 8
    end
    object GAltUstBilgiIBQUSTBILGI: TMemoField
      FieldName = 'USTBILGI'
      Origin = 'ISLEMBILGI.USTBILGI'
      BlobType = ftMemo
      Size = 8
    end
    object GAltUstBilgiIBQALTISKONTO: TFloatField
      FieldName = 'ALTISKONTO'
      Origin = 'ISLEMBILGI.ALTISKONTO'
    end
    object GAltUstBilgiIBQISLEMTURKOD: TIntegerField
      FieldName = 'ISLEMTURKOD'
      Origin = 'ISLEMBILGI.ISLEMTURKOD'
    end
  end
  object GAltUstBilgiUSQL: TIBUpdateSQL
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
    Top = 120
  end
  object GAltUstBilgiDS: TDataSource
    DataSet = GAltUstBilgiIBQ
    Left = 224
    Top = 120
  end
  object CikisirsaliyesiIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = GirisIrsaliyesiIBQAfterPost
    OnNewRecord = GirisIrsaliyesiIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from IRSALIYE'
      'Where ISLEMTURKOD=44 and SISTEM<>2'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = CikisirsaliyesiSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'IRSALIYE'
    Left = 40
    Top = 184
    object CikisirsaliyesiIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'IRSALIYE.ISLEMKOD'
      Required = True
    end
    object CikisirsaliyesiIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'IRSALIYE.ISLEMTUR'
      Size = 40
    end
    object CikisirsaliyesiIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'IRSALIYE.ISLEMTURKOD'
      ReadOnly = True
    end
    object CikisirsaliyesiIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'IRSALIYE.CARIKOD'
    end
    object CikisirsaliyesiIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'IRSALIYE.CARINO'
    end
    object CikisirsaliyesiIBQIRALIYEISLEMNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'IRALIYEISLEMNO'
      Origin = 'IRSALIYE.IRALIYEISLEMNO'
    end
    object CikisirsaliyesiIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'IRSALIYE.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object CikisirsaliyesiIBQIRSALIYETARIH: TDateField
      DisplayLabel = #304'rsaliye Tarihi'
      FieldName = 'IRSALIYETARIH'
      Origin = 'IRSALIYE.IRSALIYETARIH'
      EditMask = '!99/99/00;1;_'
    end
    object CikisirsaliyesiIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'IRSALIYE.SAAT'
    end
    object CikisirsaliyesiIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'IRSALIYE.ACIKLAMA'
      Size = 80
    end
    object CikisirsaliyesiIBQGIRISTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' Tutar'#305
      FieldName = 'GIRISTUTAR'
      Origin = 'IRSALIYE.GIRISTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisirsaliyesiIBQCIKISTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Tutar'#305
      FieldName = 'CIKISTUTAR'
      Origin = 'IRSALIYE.CIKISTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisirsaliyesiIBQGIRISMATRAH: TFloatField
      DisplayLabel = 'Giri'#351' Matrah'#305
      FieldName = 'GIRISMATRAH'
      Origin = 'IRSALIYE.GIRISMATRAH'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisirsaliyesiIBQGIRISKDVTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' KDV Tutar'#305
      FieldName = 'GIRISKDVTUTAR'
      Origin = 'IRSALIYE.GIRISKDVTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisirsaliyesiIBQCIKISMATRAH: TFloatField
      DisplayLabel = #199#305'k'#305#351' Matrah'#305
      FieldName = 'CIKISMATRAH'
      Origin = 'IRSALIYE.CIKISMATRAH'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisirsaliyesiIBQCIKISKDVTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' KDV Tutar'#305
      FieldName = 'CIKISKDVTUTAR'
      Origin = 'IRSALIYE.CIKISKDVTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisirsaliyesiIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'IRSALIYE.CARIKURU'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisirsaliyesiIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'IRSALIYE.ISLEMKURU'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisirsaliyesiIBQKAPATMA: TIntegerField
      DisplayLabel = 'Kapatma'
      FieldName = 'KAPATMA'
      Origin = 'IRSALIYE.KAPATMA'
    end
    object CikisirsaliyesiIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'IRSALIYE.VADE'
      EditMask = '!99/99/00;1;_'
    end
    object CikisirsaliyesiIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'IRSALIYE.GELGITKOD'
      Size = 80
    end
    object CikisirsaliyesiIBQEVRAKNO: TIntegerField
      DisplayLabel = 'Evrak No'
      FieldName = 'EVRAKNO'
      Origin = 'IRSALIYE.EVRAKNO'
    end
    object CikisirsaliyesiIBQBELGENO: TIntegerField
      DisplayLabel = 'Belge No'
      FieldName = 'BELGENO'
      Origin = 'IRSALIYE.BELGENO'
    end
    object CikisirsaliyesiIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'IRSALIYE.BAGLANTINO'
    end
    object CikisirsaliyesiIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'IRSALIYE.CARIHESAPILISKI'
    end
    object CikisirsaliyesiIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'IRSALIYE.PARABIRIMKOD'
    end
    object CikisirsaliyesiIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'IRSALIYE.STOKYERIKOD'
    end
    object CikisirsaliyesiIBQMAKBUZNO: TIntegerField
      DisplayLabel = 'Makbuz No'
      FieldName = 'MAKBUZNO'
      Origin = 'IRSALIYE.MAKBUZNO'
    end
    object CikisirsaliyesiIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'IRSALIYE.BILGIKOD'
    end
    object CikisirsaliyesiIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'IRSALIYE.KULLANKOD'
    end
    object CikisirsaliyesiIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'IRSALIYE.PERSONELKOD'
    end
    object CikisirsaliyesiIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'IRSALIYE.CARIPARABIRIMKOD'
    end
    object CikisirsaliyesiIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'IRSALIYE.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object CikisirsaliyesiIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'IRSALIYE.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object CikisirsaliyesiIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'IRSALIYE.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object CikisirsaliyesiIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'IRSALIYE.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object CikisirsaliyesiIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'IRSALIYE.C_KULLANICIADI'
      ReadOnly = True
    end
    object CikisirsaliyesiIBQC_PERSONEL: TIBStringField
      DisplayLabel = 'Personel'
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'IRSALIYE.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object CikisirsaliyesiIBQFATURATARIH: TDateField
      DisplayLabel = 'Fatura Tarihi'
      FieldName = 'FATURATARIH'
      Origin = 'IRSALIYE.FATURATARIH'
      EditMask = '!99/99/00;1;_'
    end
    object CikisirsaliyesiIBQKDVSECIM: TIBStringField
      DisplayLabel = 'Kdv Se'#231'im'
      FieldName = 'KDVSECIM'
      Origin = 'IRSALIYE.KDVSECIM'
      Size = 5
    end
    object CikisirsaliyesiIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G.G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'IRSALIYE.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object CikisirsaliyesiIBQIRSALIYENO: TIntegerField
      DisplayLabel = #304'rsaliye No'
      FieldName = 'IRSALIYENO'
      Origin = 'IRSALIYE.IRSALIYENO'
    end
    object CikisirsaliyesiIBQEVRAKTARIH: TDateField
      DisplayLabel = 'Evrak Tarihi'
      FieldName = 'EVRAKTARIH'
      Origin = 'IRSALIYE.EVRAKTARIH'
      EditMask = '!99/99/00;1;_'
    end
    object CikisirsaliyesiIBQD_GIRISTUTAR: TFloatField
      DisplayLabel = 'D. Giri'#351' Tutar'#305
      FieldName = 'D_GIRISTUTAR'
      Origin = 'IRSALIYE.D_GIRISTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisirsaliyesiIBQD_GIRISKDVTUTAR: TFloatField
      DisplayLabel = 'D. Giri'#351' KDV Tutar'#305
      FieldName = 'D_GIRISKDVTUTAR'
      Origin = 'IRSALIYE.D_GIRISKDVTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisirsaliyesiIBQD_GIRISMATRAH: TFloatField
      DisplayLabel = 'D. Giri'#351' Matrah'#305
      FieldName = 'D_GIRISMATRAH'
      Origin = 'IRSALIYE.D_GIRISMATRAH'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisirsaliyesiIBQD_CIKISTUTAR: TFloatField
      DisplayLabel = 'D. '#199#305'k'#305#351' Tutar'#305
      FieldName = 'D_CIKISTUTAR'
      Origin = 'IRSALIYE.D_CIKISTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisirsaliyesiIBQD_CIKISKDVTUTAR: TFloatField
      DisplayLabel = 'D. '#199#305'k'#305#351' KDV Tutar'#305
      FieldName = 'D_CIKISKDVTUTAR'
      Origin = 'IRSALIYE.D_CIKISKDVTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisirsaliyesiIBQD_CIKISMATRAH: TFloatField
      DisplayLabel = 'D. '#199#305'k'#305#351' Matrah'#305
      FieldName = 'D_CIKISMATRAH'
      Origin = 'IRSALIYE.D_CIKISMATRAH'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisirsaliyesiIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'IRSALIYE.SISTEM'
    end
  end
  object CikisirsaliyesiSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  CARIKOD,'
      '  CARINO,'
      '  IRALIYEISLEMNO,'
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
      '  D_CIKISMATRAH,'
      '  SISTEM'
      'from IRSALIYE '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update IRSALIYE'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  CARIKOD = :CARIKOD,'
      '  CARINO = :CARINO,'
      '  IRALIYEISLEMNO = :IRALIYEISLEMNO,'
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
      '  D_CIKISMATRAH = :D_CIKISMATRAH,'
      '  SISTEM = :SISTEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into IRSALIYE'
      
        '  (ISLEMKOD, ISLEMTUR, CARIKOD, CARINO, IRALIYEISLEMNO, TARIH, I' +
        'RSALIYETARIH, '
      
        '   SAAT, ACIKLAMA, GIRISTUTAR, CIKISTUTAR, GIRISMATRAH, GIRISKDV' +
        'TUTAR, '
      
        '   CIKISMATRAH, CIKISKDVTUTAR, CARIKURU, ISLEMKURU, KAPATMA, VAD' +
        'E, GELGITKOD, '
      
        '   EVRAKNO, BELGENO, BAGLANTINO, CARIHESAPILISKI, PARABIRIMKOD, ' +
        'STOKYERIKOD, '
      
        '   MAKBUZNO, BILGIKOD, KULLANKOD, PERSONELKOD, CARIPARABIRIMKOD,' +
        ' FATURATARIH, '
      
        '   KDVSECIM, IRSALIYENO, EVRAKTARIH, D_GIRISTUTAR, D_GIRISKDVTUT' +
        'AR, D_GIRISMATRAH, '
      '   D_CIKISTUTAR, D_CIKISKDVTUTAR, D_CIKISMATRAH, SISTEM)'
      'values'
      
        '  (:ISLEMKOD, :ISLEMTUR, :CARIKOD, :CARINO, :IRALIYEISLEMNO, :TA' +
        'RIH, :IRSALIYETARIH, '
      
        '   :SAAT, :ACIKLAMA, :GIRISTUTAR, :CIKISTUTAR, :GIRISMATRAH, :GI' +
        'RISKDVTUTAR, '
      
        '   :CIKISMATRAH, :CIKISKDVTUTAR, :CARIKURU, :ISLEMKURU, :KAPATMA' +
        ', :VADE, '
      
        '   :GELGITKOD, :EVRAKNO, :BELGENO, :BAGLANTINO, :CARIHESAPILISKI' +
        ', :PARABIRIMKOD, '
      
        '   :STOKYERIKOD, :MAKBUZNO, :BILGIKOD, :KULLANKOD, :PERSONELKOD,' +
        ' :CARIPARABIRIMKOD, '
      
        '   :FATURATARIH, :KDVSECIM, :IRSALIYENO, :EVRAKTARIH, :D_GIRISTU' +
        'TAR, :D_GIRISKDVTUTAR, '
      
        '   :D_GIRISMATRAH, :D_CIKISTUTAR, :D_CIKISKDVTUTAR, :D_CIKISMATR' +
        'AH, :SISTEM)')
    DeleteSQL.Strings = (
      'delete from IRSALIYE'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 136
    Top = 184
  end
  object CikisirsaliyesiDS: TDataSource
    DataSet = CikisirsaliyesiIBQ
    Left = 224
    Top = 184
  end
  object CikisBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = GirisBodroIBQAfterPost
    OnNewRecord = GirisBodroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = CikisirsaliyesiDS
    SQL.Strings = (
      'select * from IRSALIYEBODRO'
      'Where ISLEMKOD=:ISLEMKOD '
      'Order By SIRANO')
    UpdateObject = CikisBodroSQL
    GeneratorField.Field = 'BODROKOD'
    GeneratorField.Generator = 'IRSALIYEBODRO'
    Left = 40
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
      end>
    object CikisBodroIBQBODROKOD: TIntegerField
      FieldName = 'BODROKOD'
      Origin = 'IRSALIYEBODRO.BODROKOD'
      Required = True
    end
    object CikisBodroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'IRSALIYEBODRO.ISLEMKOD'
    end
    object CikisBodroIBQSIRANO: TIntegerField
      DisplayLabel = 'S'#305'ra'
      FieldName = 'SIRANO'
      Origin = 'IRSALIYEBODRO.SIRANO'
    end
    object CikisBodroIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'IRSALIYEBODRO.ISLEMTUR'
      Size = 40
    end
    object CikisBodroIBQC_ISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_ISLEMTURKOD'
      Origin = 'IRSALIYEBODRO.C_ISLEMTURKOD'
      ReadOnly = True
    end
    object CikisBodroIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'IRSALIYEBODRO.CARIKOD'
    end
    object CikisBodroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'IRSALIYEBODRO.PARABIRIMKOD'
    end
    object CikisBodroIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'IRSALIYEBODRO.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object CikisBodroIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'IRSALIYEBODRO.STOKKOD'
    end
    object CikisBodroIBQSTOKNO: TIntegerField
      DisplayLabel = 'Stok No'
      FieldName = 'STOKNO'
      Origin = 'IRSALIYEBODRO.STOKNO'
    end
    object CikisBodroIBQBARKOD: TIBStringField
      DisplayLabel = 'Barkod'
      FieldName = 'BARKOD'
      Origin = 'IRSALIYEBODRO.BARKOD'
      Size = 25
    end
    object CikisBodroIBQSTOKADI: TIBStringField
      DisplayLabel = 'Stok Ad'#305
      FieldName = 'STOKADI'
      Origin = 'IRSALIYEBODRO.STOKADI'
      Size = 80
    end
    object CikisBodroIBQMIKTAR: TFloatField
      DisplayLabel = 'Miktar'
      FieldName = 'MIKTAR'
      Origin = 'IRSALIYEBODRO.MIKTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisBodroIBQMIKTARCARPAN: TIntegerField
      DisplayLabel = 'Miktar '#199'arpan'
      FieldName = 'MIKTARCARPAN'
      Origin = 'IRSALIYEBODRO.MIKTARCARPAN'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisBodroIBQGIRISMIKTAR: TFloatField
      DisplayLabel = 'Giri'#351' Miktar'#305
      FieldName = 'GIRISMIKTAR'
      Origin = 'IRSALIYEBODRO.GIRISMIKTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisBodroIBQCIKISMIKTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Miktar'#305
      FieldName = 'CIKISMIKTAR'
      Origin = 'IRSALIYEBODRO.CIKISMIKTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisBodroIBQBIRIM: TIBStringField
      DisplayLabel = 'Birim'
      FieldName = 'BIRIM'
      Origin = 'IRSALIYEBODRO.BIRIM'
      Size = 10
    end
    object CikisBodroIBQBIRIMFIYAT: TFloatField
      DisplayLabel = 'Birim Fiyat'
      FieldName = 'BIRIMFIYAT'
      Origin = 'IRSALIYEBODRO.BIRIMFIYAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisBodroIBQGIRISFIYAT: TFloatField
      DisplayLabel = 'Giri'#351' Fiyat'#305
      FieldName = 'GIRISFIYAT'
      Origin = 'IRSALIYEBODRO.GIRISFIYAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisBodroIBQCIKISFIYAT: TFloatField
      DisplayLabel = #199#305'k'#305#351' Fiyat'#305
      FieldName = 'CIKISFIYAT'
      Origin = 'IRSALIYEBODRO.CIKISFIYAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisBodroIBQCIKISTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Tutar'#305
      FieldName = 'CIKISTUTAR'
      Origin = 'IRSALIYEBODRO.CIKISTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisBodroIBQGIRISTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' Tutar'#305
      FieldName = 'GIRISTUTAR'
      Origin = 'IRSALIYEBODRO.GIRISTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisBodroIBQGIRISMATRAHI: TFloatField
      DisplayLabel = 'Giri'#351' Matrah'#305
      FieldName = 'GIRISMATRAHI'
      Origin = 'IRSALIYEBODRO.GIRISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisBodroIBQCIKISMATRAHI: TFloatField
      DisplayLabel = #199#305'k'#305#351' Matrah'#305
      FieldName = 'CIKISMATRAHI'
      Origin = 'IRSALIYEBODRO.CIKISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisBodroIBQISKONTO1: TFloatField
      DisplayLabel = #304'sk.1'
      FieldName = 'ISKONTO1'
      Origin = 'IRSALIYEBODRO.ISKONTO1'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object CikisBodroIBQISKONTO2: TFloatField
      DisplayLabel = #304'sk.2'
      FieldName = 'ISKONTO2'
      Origin = 'IRSALIYEBODRO.ISKONTO2'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object CikisBodroIBQISKONTO3: TFloatField
      DisplayLabel = #304'sk.3'
      FieldName = 'ISKONTO3'
      Origin = 'IRSALIYEBODRO.ISKONTO3'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object CikisBodroIBQISKONTO4: TFloatField
      DisplayLabel = #304'sk.4'
      FieldName = 'ISKONTO4'
      Origin = 'IRSALIYEBODRO.ISKONTO4'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object CikisBodroIBQKDVORANI: TFloatField
      DisplayLabel = 'Kdv Oran'#305
      FieldName = 'KDVORANI'
      Origin = 'IRSALIYEBODRO.KDVORANI'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object CikisBodroIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'IRSALIYEBODRO.BAKIYE'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisBodroIBQDURUM: TIntegerField
      DisplayLabel = 'Durum'
      FieldName = 'DURUM'
      Origin = 'IRSALIYEBODRO.DURUM'
    end
    object CikisBodroIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'IRSALIYEBODRO.ACIKLAMA'
      Size = 60
    end
    object CikisBodroIBQKAPATMA: TIntegerField
      DisplayLabel = 'Kapatma'
      FieldName = 'KAPATMA'
      Origin = 'IRSALIYEBODRO.KAPATMA'
    end
    object CikisBodroIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'IRSALIYEBODRO.VADE'
      EditMask = '!99/99/00;1;_'
    end
    object CikisBodroIBQFATURANO: TIntegerField
      DisplayLabel = 'Fatura No'
      FieldName = 'FATURANO'
      Origin = 'IRSALIYEBODRO.FATURANO'
    end
    object CikisBodroIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'IRSALIYEBODRO.STOKYERIKOD'
    end
    object CikisBodroIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'IRSALIYEBODRO.ISLEMKURU'
    end
    object CikisBodroIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'IRSALIYEBODRO.GELGITKOD'
      Size = 80
    end
    object CikisBodroIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'IRSALIYEBODRO.PERSONELKOD'
    end
    object CikisBodroIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'IRSALIYEBODRO.KULLANKOD'
    end
    object CikisBodroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'IRSALIYEBODRO.SISTEM'
    end
    object CikisBodroIBQEVRAKDURUMU: TIntegerField
      FieldName = 'EVRAKDURUMU'
      Origin = 'IRSALIYEBODRO.EVRAKDURUMU'
    end
    object CikisBodroIBQSERINO: TIBStringField
      DisplayLabel = 'Seri No'
      FieldName = 'SERINO'
      Origin = 'IRSALIYEBODRO.SERINO'
      Size = 30
    end
    object CikisBodroIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'IRSALIYEBODRO.CARIHESAPILISKI'
      ReadOnly = True
    end
    object CikisBodroIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'IRSALIYEBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object CikisBodroIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'IRSALIYEBODRO.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object CikisBodroIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'IRSALIYEBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object CikisBodroIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'IRSALIYEBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object CikisBodroIBQC_REELGIRIS: TFloatField
      DisplayLabel = 'Reel Giri'#351
      FieldKind = fkInternalCalc
      FieldName = 'C_REELGIRIS'
      Origin = 'IRSALIYEBODRO.C_REELGIRIS'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisBodroIBQC_REELCIKIS: TFloatField
      DisplayLabel = 'Reel '#199#305'k'#305#351
      FieldKind = fkInternalCalc
      FieldName = 'C_REELCIKIS'
      Origin = 'IRSALIYEBODRO.C_REELCIKIS'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisBodroIBQKDVSECIM: TIBStringField
      DisplayLabel = 'Kdv Se'#231'im'
      FieldName = 'KDVSECIM'
      Origin = 'IRSALIYEBODRO.KDVSECIM'
      Size = 5
    end
    object CikisBodroIBQC_TLGIRISTUTARI: TFloatField
      DisplayLabel = 'TL Giri'#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISTUTARI'
      Origin = 'IRSALIYEBODRO.C_TLGIRISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisBodroIBQC_TLGIRISMATRAHI: TFloatField
      DisplayLabel = 'TL Giri'#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISMATRAHI'
      Origin = 'IRSALIYEBODRO.C_TLGIRISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisBodroIBQC_TLCIKISTUTARI: TFloatField
      DisplayLabel = 'TL '#199#305'k'#305#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISTUTARI'
      Origin = 'IRSALIYEBODRO.C_TLCIKISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisBodroIBQC_TLCIKISMATRAHI: TFloatField
      DisplayLabel = 'TL '#199#305'k'#305#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISMATRAHI'
      Origin = 'IRSALIYEBODRO.C_TLCIKISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisBodroIBQC_TLBIRIMFIYAT: TFloatField
      DisplayLabel = 'TL Birim Fiyat'
      FieldKind = fkInternalCalc
      FieldName = 'C_TLBIRIMFIYAT'
      Origin = 'IRSALIYEBODRO.C_TLBIRIMFIYAT'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisBodroIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G.G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'IRSALIYEBODRO.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object CikisBodroIBQC_GIRISKDVTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' Kdv Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_GIRISKDVTUTAR'
      Origin = 'IRSALIYEBODRO.C_GIRISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisBodroIBQC_CIKISKDVTUTAR: TFloatField
      DisplayLabel = 'k'#305#351' Kdv Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CIKISKDVTUTAR'
      Origin = 'IRSALIYEBODRO.C_CIKISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisBodroIBQC_TLGIRISKDVTUTAR: TFloatField
      DisplayLabel = 'TL Giri'#351' Kdv Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISKDVTUTAR'
      Origin = 'IRSALIYEBODRO.C_TLGIRISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CikisBodroIBQC_TLCIKISKDVTUTARI: TFloatField
      DisplayLabel = 'TL '#199#305'k'#305#351' Kdv Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISKDVTUTARI'
      Origin = 'IRSALIYEBODRO.C_TLCIKISKDVTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
  end
  object CikisBodroSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  BODROKOD,'
      '  ISLEMKOD,'
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
      '  C_TLCIKISKDVTUTARI,'
      '  C_ISLEMTUR'
      'from IRSALIYEBODRO '
      'where'
      '  BODROKOD = :BODROKOD')
    ModifySQL.Strings = (
      'update IRSALIYEBODRO'
      'set'
      '  BODROKOD = :BODROKOD,'
      '  ISLEMKOD = :ISLEMKOD,'
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
      '  KDVSECIM = :KDVSECIM'
      'where'
      '  BODROKOD = :OLD_BODROKOD')
    InsertSQL.Strings = (
      'insert into IRSALIYEBODRO'
      
        '  (BODROKOD, ISLEMKOD, SIRANO, ISLEMTUR, CARIKOD, PARABIRIMKOD, ' +
        'TARIH, '
      
        '   STOKKOD, STOKNO, BARKOD, STOKADI, MIKTAR, MIKTARCARPAN, GIRIS' +
        'MIKTAR, '
      
        '   CIKISMIKTAR, BIRIM, BIRIMFIYAT, GIRISFIYAT, CIKISFIYAT, CIKIS' +
        'TUTAR, '
      
        '   GIRISTUTAR, GIRISMATRAHI, CIKISMATRAHI, ISKONTO1, ISKONTO2, I' +
        'SKONTO3, '
      
        '   ISKONTO4, KDVORANI, BAKIYE, DURUM, ACIKLAMA, KAPATMA, VADE, F' +
        'ATURANO, '
      
        '   STOKYERIKOD, ISLEMKURU, GELGITKOD, PERSONELKOD, KULLANKOD, SI' +
        'STEM, EVRAKDURUMU, '
      '   SERINO, CARIHESAPILISKI, KDVSECIM)'
      'values'
      
        '  (:BODROKOD, :ISLEMKOD, :SIRANO, :ISLEMTUR, :CARIKOD, :PARABIRI' +
        'MKOD, :TARIH, '
      
        '   :STOKKOD, :STOKNO, :BARKOD, :STOKADI, :MIKTAR, :MIKTARCARPAN,' +
        ' :GIRISMIKTAR, '
      
        '   :CIKISMIKTAR, :BIRIM, :BIRIMFIYAT, :GIRISFIYAT, :CIKISFIYAT, ' +
        ':CIKISTUTAR, '
      
        '   :GIRISTUTAR, :GIRISMATRAHI, :CIKISMATRAHI, :ISKONTO1, :ISKONT' +
        'O2, :ISKONTO3, '
      
        '   :ISKONTO4, :KDVORANI, :BAKIYE, :DURUM, :ACIKLAMA, :KAPATMA, :' +
        'VADE, :FATURANO, '
      
        '   :STOKYERIKOD, :ISLEMKURU, :GELGITKOD, :PERSONELKOD, :KULLANKO' +
        'D, :SISTEM, '
      '   :EVRAKDURUMU, :SERINO, :CARIHESAPILISKI, :KDVSECIM)')
    DeleteSQL.Strings = (
      'delete from IRSALIYEBODRO'
      'where'
      '  BODROKOD = :OLD_BODROKOD')
    Left = 136
    Top = 240
  end
  object CikisBodroDS: TDataSource
    DataSet = CikisBodroIBQ
    Left = 224
    Top = 240
  end
  object CAltUstBilgiIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = GAltUstBilgiIBQAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = CikisirsaliyesiDS
    SQL.Strings = (
      'select * from ISLEMBILGI'
      'Where ISLEMKOD=:ISLEMKOD and ISLEMTURKOD=:ISLEMTURKOD')
    UpdateObject = CAltUstBilgiSQL
    GeneratorField.Field = 'BILGIKOD'
    GeneratorField.Generator = 'ISLEMBILGI'
    Left = 40
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ISLEMTURKOD'
        ParamType = ptUnknown
      end>
    object CAltUstBilgiIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'ISLEMBILGI.BILGIKOD'
      Required = True
    end
    object CAltUstBilgiIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'ISLEMBILGI.ISLEMKOD'
    end
    object CAltUstBilgiIBQALTBILGI: TMemoField
      FieldName = 'ALTBILGI'
      Origin = 'ISLEMBILGI.ALTBILGI'
      BlobType = ftMemo
      Size = 8
    end
    object CAltUstBilgiIBQUSTBILGI: TMemoField
      FieldName = 'USTBILGI'
      Origin = 'ISLEMBILGI.USTBILGI'
      BlobType = ftMemo
      Size = 8
    end
    object CAltUstBilgiIBQALTISKONTO: TFloatField
      FieldName = 'ALTISKONTO'
      Origin = 'ISLEMBILGI.ALTISKONTO'
    end
    object CAltUstBilgiIBQISLEMTURKOD: TIntegerField
      FieldName = 'ISLEMTURKOD'
      Origin = 'ISLEMBILGI.ISLEMTURKOD'
    end
  end
  object CAltUstBilgiSQL: TIBUpdateSQL
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
    Top = 296
  end
  object CAltUstBilgiDS: TDataSource
    DataSet = CAltUstBilgiIBQ
    Left = 224
    Top = 296
  end
end
