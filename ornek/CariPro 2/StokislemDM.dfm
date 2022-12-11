object DMStokislem: TDMStokislem
  OldCreateOrder = False
  Left = 210
  Top = 42
  Height = 617
  Width = 707
  object StokGirisIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = StokGirisIBQAfterPost
    OnNewRecord = StokGirisIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STOKISLEM'
      'where ISLEMTURKOD =32 and SISTEM<>2')
    UpdateObject = StokGirisUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'STOKISLEM'
    Left = 40
    Top = 24
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
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'STOKISLEM.CARINO'
    end
    object StokGirisIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'STOKISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object StokGirisIBQSTOKISLEMNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'STOKISLEMNO'
      Origin = 'STOKISLEM.STOKISLEMNO'
    end
    object StokGirisIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'STOKISLEM.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object StokGirisIBQIRSALIYETARIH: TDateField
      DisplayLabel = #304'rsaliye Tarihi'
      FieldName = 'IRSALIYETARIH'
      Origin = 'STOKISLEM.IRSALIYETARIH'
      EditMask = '!99/99/00;1;_'
    end
    object StokGirisIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'STOKISLEM.SAAT'
      EditMask = '!90:00;1;_'
    end
    object StokGirisIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'STOKISLEM.ACIKLAMA'
      Size = 80
    end
    object StokGirisIBQGIRISTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' Tutar'#305
      FieldName = 'GIRISTUTAR'
      Origin = 'STOKISLEM.GIRISTUTAR'
      DisplayFormat = '###,###'
    end
    object StokGirisIBQCIKISTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Tutar'#305
      FieldName = 'CIKISTUTAR'
      Origin = 'STOKISLEM.CIKISTUTAR'
      DisplayFormat = '###,###'
    end
    object StokGirisIBQGIRISMATRAH: TFloatField
      DisplayLabel = 'Giri'#351' Matrah'#305
      FieldName = 'GIRISMATRAH'
      Origin = 'STOKISLEM.GIRISMATRAH'
      DisplayFormat = '###,###'
    end
    object StokGirisIBQGIRISKDVTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' KDV Tutar'#305
      FieldName = 'GIRISKDVTUTAR'
      Origin = 'STOKISLEM.GIRISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object StokGirisIBQCIKISMATRAH: TFloatField
      DisplayLabel = #199#305'k'#305#351' Matrah'#305
      FieldName = 'CIKISMATRAH'
      Origin = 'STOKISLEM.CIKISMATRAH'
      DisplayFormat = '###,###'
    end
    object StokGirisIBQCIKISKDVTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' KDV Tutar'#305
      FieldName = 'CIKISKDVTUTAR'
      Origin = 'STOKISLEM.CIKISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object StokGirisIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'STOKISLEM.CARIKURU'
      DisplayFormat = '###,###'
    end
    object StokGirisIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'STOKISLEM.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object StokGirisIBQKAPATMA: TIntegerField
      DisplayLabel = 'Kapatma'
      FieldName = 'KAPATMA'
      Origin = 'STOKISLEM.KAPATMA'
    end
    object StokGirisIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'STOKISLEM.VADE'
    end
    object StokGirisIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'STOKISLEM.GELGITKOD'
      Size = 80
    end
    object StokGirisIBQEVRAKNO: TIntegerField
      DisplayLabel = 'Evrak No'
      FieldName = 'EVRAKNO'
      Origin = 'STOKISLEM.EVRAKNO'
    end
    object StokGirisIBQBELGENO: TIntegerField
      DisplayLabel = 'Belge No'
      FieldName = 'BELGENO'
      Origin = 'STOKISLEM.BELGENO'
    end
    object StokGirisIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'STOKISLEM.BAGLANTINO'
    end
    object StokGirisIBQCARIHESAPILISKI: TIntegerField
      DisplayLabel = 'Cari '#304'li'#351'ki'
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
      DisplayLabel = 'Makbuz No'
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
      DisplayLabel = 'Cari P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'STOKISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object StokGirisIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'STOKISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object StokGirisIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'STOKISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object StokGirisIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'STOKISLEM.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object StokGirisIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'STOKISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object StokGirisIBQC_PERSONEL: TIBStringField
      DisplayLabel = 'Personel'
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'STOKISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object StokGirisIBQFATURATARIH: TDateField
      DisplayLabel = 'Fatura Tarihi'
      FieldName = 'FATURATARIH'
      Origin = 'STOKISLEM.FATURATARIH'
    end
    object StokGirisIBQKDVSECIM: TIBStringField
      FieldName = 'KDVSECIM'
      Origin = 'STOKISLEM.KDVSECIM'
      Size = 5
    end
    object StokGirisIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'Gelir Gider Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'STOKISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object StokGirisIBQIRSALIYENO: TIntegerField
      DisplayLabel = #304'resaliye No'
      FieldName = 'IRSALIYENO'
      Origin = 'STOKISLEM.IRSALIYENO'
    end
    object StokGirisIBQEVRAKTARIH: TDateField
      DisplayLabel = 'Evrak Tarihi'
      FieldName = 'EVRAKTARIH'
      Origin = 'STOKISLEM.EVRAKTARIH'
      EditMask = '!99/99/00;1;_'
    end
    object StokGirisIBQD_GIRISTUTAR: TFloatField
      DisplayLabel = 'D. Giri'#351' Tutar'#305
      FieldName = 'D_GIRISTUTAR'
      Origin = 'STOKISLEM.D_GIRISTUTAR'
      DisplayFormat = '###,###'
    end
    object StokGirisIBQD_GIRISKDVTUTAR: TFloatField
      DisplayLabel = 'D. Giri'#351' KDV Tutar'#305
      FieldName = 'D_GIRISKDVTUTAR'
      Origin = 'STOKISLEM.D_GIRISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object StokGirisIBQD_GIRISMATRAH: TFloatField
      DisplayLabel = 'D. Giri'#351' Matrah'#305
      FieldName = 'D_GIRISMATRAH'
      Origin = 'STOKISLEM.D_GIRISMATRAH'
      DisplayFormat = '###,###'
    end
    object StokGirisIBQD_CIKISTUTAR: TFloatField
      DisplayLabel = 'D. '#199#305'k'#305#351' Tutar'#305
      FieldName = 'D_CIKISTUTAR'
      Origin = 'STOKISLEM.D_CIKISTUTAR'
      DisplayFormat = '###,###'
    end
    object StokGirisIBQD_CIKISKDVTUTAR: TFloatField
      DisplayLabel = 'D. '#199#305'k'#305#351' KDV Tutar'#305
      FieldName = 'D_CIKISKDVTUTAR'
      Origin = 'STOKISLEM.D_CIKISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object StokGirisIBQD_CIKISMATRAH: TFloatField
      DisplayLabel = 'D. '#199#305'k'#305#351' Matrah'#305
      FieldName = 'D_CIKISMATRAH'
      Origin = 'STOKISLEM.D_CIKISMATRAH'
      DisplayFormat = '###,###'
    end
    object StokGirisIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'STOKISLEM.ISLEMTUR'
      Size = 40
    end
  end
  object StokGirisUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  CARIKOD,'
      '  CARINO,'
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
    Left = 136
    Top = 24
  end
  object StokGirisDS: TDataSource
    DataSet = StokGirisIBQ
    Left = 224
    Top = 24
  end
  object GirisBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = GirisBodroIBQAfterPost
    OnNewRecord = GirisBodroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = StokGirisDS
    SQL.Strings = (
      'select * from STOKBODRO'
      'Where ISLEMKOD=:ISLEMKOD')
    UpdateObject = GirisBodroUSQL
    GeneratorField.Field = 'BODROKOD'
    GeneratorField.Generator = 'STOKBODRO'
    Left = 40
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object GirisBodroIBQBODROKOD: TIntegerField
      FieldName = 'BODROKOD'
      Origin = 'STOKBODRO.BODROKOD'
      Required = True
    end
    object GirisBodroIBQSIRANO: TIntegerField
      DisplayLabel = 'S'#305'ra No'
      FieldName = 'SIRANO'
      Origin = 'STOKBODRO.SIRANO'
    end
    object GirisBodroIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'STOKBODRO.ISLEMTUR'
      Size = 40
    end
    object GirisBodroIBQC_ISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_ISLEMTURKOD'
      Origin = 'STOKBODRO.C_ISLEMTURKOD'
      ReadOnly = True
    end
    object GirisBodroIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'STOKBODRO.CARIKOD'
    end
    object GirisBodroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'STOKBODRO.PARABIRIMKOD'
    end
    object GirisBodroIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'STOKBODRO.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object GirisBodroIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'STOKBODRO.STOKKOD'
    end
    object GirisBodroIBQSTOKNO: TIntegerField
      DisplayLabel = 'Stok No'
      FieldName = 'STOKNO'
      Origin = 'STOKBODRO.STOKNO'
    end
    object GirisBodroIBQBARKOD: TIBStringField
      DisplayLabel = 'Barkod'
      FieldName = 'BARKOD'
      Origin = 'STOKBODRO.BARKOD'
      OnChange = GirisBodroIBQBARKODChange
      Size = 25
    end
    object GirisBodroIBQSTOKADI: TIBStringField
      DisplayLabel = 'Stok Ad'#305
      FieldName = 'STOKADI'
      Origin = 'STOKBODRO.STOKADI'
      Size = 80
    end
    object GirisBodroIBQMIKTAR: TFloatField
      DisplayLabel = 'Miktar'
      FieldName = 'MIKTAR'
      Origin = 'STOKBODRO.MIKTAR'
      DisplayFormat = '###,###'
    end
    object GirisBodroIBQMIKTARCARPAN: TIntegerField
      DisplayLabel = 'M. '#199'arpan'#305
      FieldName = 'MIKTARCARPAN'
      Origin = 'STOKBODRO.MIKTARCARPAN'
      DisplayFormat = '###,###'
    end
    object GirisBodroIBQGIRISMIKTAR: TFloatField
      DisplayLabel = 'Giri'#351' Miktar'#305
      FieldName = 'GIRISMIKTAR'
      Origin = 'STOKBODRO.GIRISMIKTAR'
      DisplayFormat = '###,###'
    end
    object GirisBodroIBQCIKISMIKTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Miktar'#305
      FieldName = 'CIKISMIKTAR'
      Origin = 'STOKBODRO.CIKISMIKTAR'
      DisplayFormat = '###,###'
    end
    object GirisBodroIBQBIRIM: TIBStringField
      DisplayLabel = 'Birim'
      FieldName = 'BIRIM'
      Origin = 'STOKBODRO.BIRIM'
      Size = 10
    end
    object GirisBodroIBQBIRIMFIYAT: TFloatField
      DisplayLabel = 'Birim Fiyat'
      FieldName = 'BIRIMFIYAT'
      Origin = 'STOKBODRO.BIRIMFIYAT'
      DisplayFormat = '###,###'
    end
    object GirisBodroIBQGIRISFIYAT: TFloatField
      DisplayLabel = 'Giri'#351' Fiyat'#305
      FieldName = 'GIRISFIYAT'
      Origin = 'STOKBODRO.GIRISFIYAT'
      DisplayFormat = '###,###'
    end
    object GirisBodroIBQCIKISFIYAT: TFloatField
      DisplayLabel = #199#305'k'#305#351' Fiyat'#305
      FieldName = 'CIKISFIYAT'
      Origin = 'STOKBODRO.CIKISFIYAT'
      DisplayFormat = '###,###'
    end
    object GirisBodroIBQCIKISTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Tutar'#305
      FieldName = 'CIKISTUTAR'
      Origin = 'STOKBODRO.CIKISTUTAR'
      DisplayFormat = '###,###'
    end
    object GirisBodroIBQGIRISTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' Tutar'#305
      FieldName = 'GIRISTUTAR'
      Origin = 'STOKBODRO.GIRISTUTAR'
      DisplayFormat = '###,###'
    end
    object GirisBodroIBQGIRISMATRAHI: TFloatField
      DisplayLabel = 'Giri'#351' Matrah'#305
      FieldName = 'GIRISMATRAHI'
      Origin = 'STOKBODRO.GIRISMATRAHI'
      DisplayFormat = '###,###'
    end
    object GirisBodroIBQCIKISMATRAHI: TFloatField
      DisplayLabel = #199#305'k'#305#351' Matrah'#305
      FieldName = 'CIKISMATRAHI'
      Origin = 'STOKBODRO.CIKISMATRAHI'
      DisplayFormat = '###,###'
    end
    object GirisBodroIBQISKONTO1: TFloatField
      DisplayLabel = #304'sk.1'
      FieldName = 'ISKONTO1'
      Origin = 'STOKBODRO.ISKONTO1'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object GirisBodroIBQISKONTO2: TFloatField
      DisplayLabel = #304'sk.2'
      FieldName = 'ISKONTO2'
      Origin = 'STOKBODRO.ISKONTO2'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object GirisBodroIBQISKONTO3: TFloatField
      DisplayLabel = #304'sk.3'
      FieldName = 'ISKONTO3'
      Origin = 'STOKBODRO.ISKONTO3'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object GirisBodroIBQISKONTO4: TFloatField
      DisplayLabel = #304'sk.4'
      FieldName = 'ISKONTO4'
      Origin = 'STOKBODRO.ISKONTO4'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object GirisBodroIBQKDVORANI: TFloatField
      DisplayLabel = 'Kdv Oran'#305
      FieldName = 'KDVORANI'
      Origin = 'STOKBODRO.KDVORANI'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object GirisBodroIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'STOKBODRO.BAKIYE'
      DisplayFormat = '###,###'
    end
    object GirisBodroIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'STOKBODRO.DURUM'
    end
    object GirisBodroIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'STOKBODRO.ACIKLAMA'
      Size = 60
    end
    object GirisBodroIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'STOKBODRO.KAPATMA'
    end
    object GirisBodroIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'STOKBODRO.VADE'
    end
    object GirisBodroIBQFATURANO: TIntegerField
      DisplayLabel = 'Fatura No'
      FieldName = 'FATURANO'
      Origin = 'STOKBODRO.FATURANO'
    end
    object GirisBodroIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'STOKBODRO.STOKYERIKOD'
    end
    object GirisBodroIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'STOKBODRO.ISLEMKURU'
    end
    object GirisBodroIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'STOKBODRO.GELGITKOD'
      Size = 80
    end
    object GirisBodroIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'STOKBODRO.PERSONELKOD'
    end
    object GirisBodroIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'STOKBODRO.KULLANKOD'
    end
    object GirisBodroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'STOKBODRO.SISTEM'
    end
    object GirisBodroIBQEVRAKDURUMU: TIntegerField
      FieldName = 'EVRAKDURUMU'
      Origin = 'STOKBODRO.EVRAKDURUMU'
    end
    object GirisBodroIBQSERINO: TIBStringField
      DisplayLabel = 'Seri No'
      FieldName = 'SERINO'
      Origin = 'STOKBODRO.SERINO'
      Size = 30
    end
    object GirisBodroIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'STOKBODRO.CARIHESAPILISKI'
    end
    object GirisBodroIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'STOKBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object GirisBodroIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'STOKBODRO.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object GirisBodroIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'STOKBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object GirisBodroIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'STOKBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object GirisBodroIBQC_REELGIRIS: TFloatField
      DisplayLabel = 'Reel Giri'#351
      FieldKind = fkInternalCalc
      FieldName = 'C_REELGIRIS'
      Origin = 'STOKBODRO.C_REELGIRIS'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object GirisBodroIBQC_REELCIKIS: TFloatField
      DisplayLabel = 'Reel '#199#305'k'#305#351
      FieldKind = fkInternalCalc
      FieldName = 'C_REELCIKIS'
      Origin = 'STOKBODRO.C_REELCIKIS'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object GirisBodroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'STOKBODRO.ISLEMKOD'
    end
    object GirisBodroIBQKDVSECIM: TIBStringField
      DisplayLabel = 'KDV S.'
      FieldName = 'KDVSECIM'
      Origin = 'STOKBODRO.KDVSECIM'
      Size = 5
    end
    object GirisBodroIBQC_TLGIRISTUTARI: TFloatField
      DisplayLabel = 'TL Giri'#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISTUTARI'
      Origin = 'STOKBODRO.C_TLGIRISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object GirisBodroIBQC_TLGIRISMATRAHI: TFloatField
      DisplayLabel = 'TL Giri'#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISMATRAHI'
      Origin = 'STOKBODRO.C_TLGIRISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object GirisBodroIBQC_TLCIKISTUTARI: TFloatField
      DisplayLabel = 'TL '#199#305'k'#305#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISTUTARI'
      Origin = 'STOKBODRO.C_TLCIKISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object GirisBodroIBQC_TLCIKISMATRAHI: TFloatField
      DisplayLabel = 'TL '#199#305'k'#305#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISMATRAHI'
      Origin = 'STOKBODRO.C_TLCIKISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object GirisBodroIBQC_TLBIRIMFIYAT: TFloatField
      DisplayLabel = 'TL Birim Fiyat'
      FieldKind = fkInternalCalc
      FieldName = 'C_TLBIRIMFIYAT'
      Origin = 'STOKBODRO.C_TLBIRIMFIYAT'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object GirisBodroIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G.G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'STOKBODRO.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object GirisBodroIBQC_GIRISKDVTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_GIRISKDVTUTAR'
      Origin = 'STOKBODRO.C_GIRISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object GirisBodroIBQC_CIKISKDVTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CIKISKDVTUTAR'
      Origin = 'STOKBODRO.C_CIKISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object GirisBodroIBQC_TLGIRISKDVTUTAR: TFloatField
      DisplayLabel = 'TL Giri'#351' KDV Tuatr'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISKDVTUTAR'
      Origin = 'STOKBODRO.C_TLGIRISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object GirisBodroIBQC_TLCIKISKDVTUTARI: TFloatField
      DisplayLabel = 'TL '#199#305'k'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISKDVTUTARI'
      Origin = 'STOKBODRO.C_TLCIKISKDVTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
  end
  object GirisBodroUSQL: TIBUpdateSQL
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
    Left = 136
    Top = 80
  end
  object GirisBodroDS: TDataSource
    DataSet = GirisBodroIBQ
    Left = 224
    Top = 80
  end
  object AltUstBilgiIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = AltUstBilgiIBQAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = StokGirisDS
    SQL.Strings = (
      'select * from ISLEMBILGI'
      'Where ISLEMKOD=:ISLEMKOD and ISLEMTURKOD=:ISLEMTURKOD')
    UpdateObject = IAltUstBilgiUSQL
    GeneratorField.Field = 'BILGIKOD'
    GeneratorField.Generator = 'ISLEMBILGI'
    Left = 40
    Top = 136
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
    object AltUstBilgiIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'ISLEMBILGI.BILGIKOD'
      Required = True
    end
    object AltUstBilgiIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'ISLEMBILGI.ISLEMKOD'
    end
    object AltUstBilgiIBQALTBILGI: TMemoField
      FieldName = 'ALTBILGI'
      Origin = 'ISLEMBILGI.ALTBILGI'
      BlobType = ftMemo
      Size = 8
    end
    object AltUstBilgiIBQUSTBILGI: TMemoField
      FieldName = 'USTBILGI'
      Origin = 'ISLEMBILGI.USTBILGI'
      BlobType = ftMemo
      Size = 8
    end
    object AltUstBilgiIBQALTISKONTO: TFloatField
      FieldName = 'ALTISKONTO'
      Origin = 'ISLEMBILGI.ALTISKONTO'
    end
    object AltUstBilgiIBQISLEMTURKOD: TIntegerField
      FieldName = 'ISLEMTURKOD'
      Origin = 'ISLEMBILGI.ISLEMTURKOD'
    end
  end
  object IAltUstBilgiUSQL: TIBUpdateSQL
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
    Top = 136
  end
  object AltUstBilgiDS: TDataSource
    DataSet = AltUstBilgiIBQ
    Left = 224
    Top = 136
  end
  object StokCikisIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = StokCikisIBQAfterPost
    OnNewRecord = StokCikisIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STOKISLEM'
      'where ISLEMTURKOD=33 AND SISTEM<>2')
    UpdateObject = StokCikisUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'STOKISLEM'
    Left = 40
    Top = 192
    object StokCikisIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'STOKISLEM.ISLEMKOD'
      Required = True
    end
    object StokCikisIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'STOKISLEM.CARIKOD'
    end
    object StokCikisIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'STOKISLEM.CARINO'
    end
    object StokCikisIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'STOKISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object StokCikisIBQSTOKISLEMNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'STOKISLEMNO'
      Origin = 'STOKISLEM.STOKISLEMNO'
    end
    object StokCikisIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'STOKISLEM.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object StokCikisIBQIRSALIYETARIH: TDateField
      DisplayLabel = #304'rsaliye Tarihi'
      FieldName = 'IRSALIYETARIH'
      Origin = 'STOKISLEM.IRSALIYETARIH'
      EditMask = '!99/99/00;1;_'
    end
    object StokCikisIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'STOKISLEM.SAAT'
      EditMask = '!90:00;1;_'
    end
    object StokCikisIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'STOKISLEM.ACIKLAMA'
      Size = 80
    end
    object StokCikisIBQGIRISTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' Tutar'#305
      FieldName = 'GIRISTUTAR'
      Origin = 'STOKISLEM.GIRISTUTAR'
      DisplayFormat = '###,###'
    end
    object StokCikisIBQCIKISTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Tutar'#305
      FieldName = 'CIKISTUTAR'
      Origin = 'STOKISLEM.CIKISTUTAR'
      DisplayFormat = '###,###'
    end
    object StokCikisIBQGIRISMATRAH: TFloatField
      DisplayLabel = 'Giri'#351' Matrah'#305
      FieldName = 'GIRISMATRAH'
      Origin = 'STOKISLEM.GIRISMATRAH'
      DisplayFormat = '###,###'
    end
    object StokCikisIBQGIRISKDVTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' KDV Tutar'#305
      FieldName = 'GIRISKDVTUTAR'
      Origin = 'STOKISLEM.GIRISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object StokCikisIBQCIKISMATRAH: TFloatField
      DisplayLabel = #199#305'k'#305#351' Matrah'#305
      FieldName = 'CIKISMATRAH'
      Origin = 'STOKISLEM.CIKISMATRAH'
      DisplayFormat = '###,###'
    end
    object StokCikisIBQCIKISKDVTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' KDV Tutar'#305
      FieldName = 'CIKISKDVTUTAR'
      Origin = 'STOKISLEM.CIKISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object StokCikisIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'STOKISLEM.CARIKURU'
      DisplayFormat = '###,###'
    end
    object StokCikisIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'STOKISLEM.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object StokCikisIBQKAPATMA: TIntegerField
      DisplayLabel = 'Kapatma'
      FieldName = 'KAPATMA'
      Origin = 'STOKISLEM.KAPATMA'
    end
    object StokCikisIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'STOKISLEM.VADE'
    end
    object StokCikisIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'STOKISLEM.GELGITKOD'
      Size = 80
    end
    object StokCikisIBQEVRAKNO: TIntegerField
      DisplayLabel = 'Evrak No'
      FieldName = 'EVRAKNO'
      Origin = 'STOKISLEM.EVRAKNO'
    end
    object StokCikisIBQBELGENO: TIntegerField
      DisplayLabel = 'Belge No'
      FieldName = 'BELGENO'
      Origin = 'STOKISLEM.BELGENO'
    end
    object StokCikisIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'STOKISLEM.BAGLANTINO'
    end
    object StokCikisIBQCARIHESAPILISKI: TIntegerField
      DisplayLabel = 'Cari '#304'li'#351'ki'
      FieldName = 'CARIHESAPILISKI'
      Origin = 'STOKISLEM.CARIHESAPILISKI'
    end
    object StokCikisIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'STOKISLEM.PARABIRIMKOD'
    end
    object StokCikisIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'STOKISLEM.STOKYERIKOD'
    end
    object StokCikisIBQMAKBUZNO: TIntegerField
      DisplayLabel = 'Makbuz No'
      FieldName = 'MAKBUZNO'
      Origin = 'STOKISLEM.MAKBUZNO'
    end
    object StokCikisIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'STOKISLEM.BILGIKOD'
    end
    object StokCikisIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'STOKISLEM.KULLANKOD'
    end
    object StokCikisIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'STOKISLEM.PERSONELKOD'
    end
    object StokCikisIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'STOKISLEM.SISTEM'
    end
    object StokCikisIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'STOKISLEM.CARIPARABIRIMKOD'
    end
    object StokCikisIBQC_CARIPARABIRIM: TIBStringField
      DisplayLabel = 'Cari P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'STOKISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object StokCikisIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'STOKISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object StokCikisIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'STOKISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object StokCikisIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'STOKISLEM.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object StokCikisIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'STOKISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object StokCikisIBQC_PERSONEL: TIBStringField
      DisplayLabel = 'Personel'
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'STOKISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object StokCikisIBQFATURATARIH: TDateField
      DisplayLabel = 'Fatura Tarihi'
      FieldName = 'FATURATARIH'
      Origin = 'STOKISLEM.FATURATARIH'
    end
    object StokCikisIBQKDVSECIM: TIBStringField
      FieldName = 'KDVSECIM'
      Origin = 'STOKISLEM.KDVSECIM'
      Size = 5
    end
    object StokCikisIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'Gelir Gider Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'STOKISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object StokCikisIBQIRSALIYENO: TIntegerField
      DisplayLabel = #304'resaliye No'
      FieldName = 'IRSALIYENO'
      Origin = 'STOKISLEM.IRSALIYENO'
    end
    object StokCikisIBQEVRAKTARIH: TDateField
      DisplayLabel = 'Evrak Tarihi'
      FieldName = 'EVRAKTARIH'
      Origin = 'STOKISLEM.EVRAKTARIH'
      EditMask = '!99/99/00;1;_'
    end
    object StokCikisIBQD_GIRISTUTAR: TFloatField
      DisplayLabel = 'D. Giri'#351' Tutar'#305
      FieldName = 'D_GIRISTUTAR'
      Origin = 'STOKISLEM.D_GIRISTUTAR'
      DisplayFormat = '###,###'
    end
    object StokCikisIBQD_GIRISKDVTUTAR: TFloatField
      DisplayLabel = 'D. Giri'#351' KDV Tutar'#305
      FieldName = 'D_GIRISKDVTUTAR'
      Origin = 'STOKISLEM.D_GIRISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object StokCikisIBQD_GIRISMATRAH: TFloatField
      DisplayLabel = 'D. Giri'#351' Matrah'#305
      FieldName = 'D_GIRISMATRAH'
      Origin = 'STOKISLEM.D_GIRISMATRAH'
      DisplayFormat = '###,###'
    end
    object StokCikisIBQD_CIKISTUTAR: TFloatField
      DisplayLabel = 'D. '#199#305'k'#305#351' Tutar'#305
      FieldName = 'D_CIKISTUTAR'
      Origin = 'STOKISLEM.D_CIKISTUTAR'
      DisplayFormat = '###,###'
    end
    object StokCikisIBQD_CIKISKDVTUTAR: TFloatField
      DisplayLabel = 'D. '#199#305'k'#305#351' KDV Tutar'#305
      FieldName = 'D_CIKISKDVTUTAR'
      Origin = 'STOKISLEM.D_CIKISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object StokCikisIBQD_CIKISMATRAH: TFloatField
      DisplayLabel = 'D. '#199#305'k'#305#351' Matrah'#305
      FieldName = 'D_CIKISMATRAH'
      Origin = 'STOKISLEM.D_CIKISMATRAH'
      DisplayFormat = '###,###'
    end
    object StokCikisIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'STOKISLEM.ISLEMTUR'
      Size = 40
    end
  end
  object StokCikisUSQL: TIBUpdateSQL
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
    Left = 136
    Top = 192
  end
  object StokCikisDS: TDataSource
    DataSet = StokCikisIBQ
    Left = 224
    Top = 192
  end
  object CikisBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = CikisBodroIBQAfterPost
    OnNewRecord = CikisBodroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = StokCikisDS
    SQL.Strings = (
      'select * from STOKBODRO'
      'Where ISLEMKOD=:ISLEMKOD')
    UpdateObject = CikisBodroUSQL
    GeneratorField.Field = 'BODROKOD'
    GeneratorField.Generator = 'STOKBODRO'
    Left = 40
    Top = 248
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object CikisBodroIBQBODROKOD: TIntegerField
      FieldName = 'BODROKOD'
      Origin = 'STOKBODRO.BODROKOD'
      Required = True
    end
    object CikisBodroIBQSIRANO: TIntegerField
      DisplayLabel = 'S'#305'ra No'
      FieldName = 'SIRANO'
      Origin = 'STOKBODRO.SIRANO'
    end
    object CikisBodroIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'STOKBODRO.ISLEMTUR'
      Size = 40
    end
    object CikisBodroIBQC_ISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_ISLEMTURKOD'
      Origin = 'STOKBODRO.C_ISLEMTURKOD'
      ReadOnly = True
    end
    object CikisBodroIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'STOKBODRO.CARIKOD'
    end
    object CikisBodroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'STOKBODRO.PARABIRIMKOD'
    end
    object CikisBodroIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'STOKBODRO.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object CikisBodroIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'STOKBODRO.STOKKOD'
    end
    object CikisBodroIBQSTOKNO: TIntegerField
      DisplayLabel = 'Stok No'
      FieldName = 'STOKNO'
      Origin = 'STOKBODRO.STOKNO'
    end
    object CikisBodroIBQBARKOD: TIBStringField
      DisplayLabel = 'Barkod'
      FieldName = 'BARKOD'
      Origin = 'STOKBODRO.BARKOD'
      OnChange = CikisBodroIBQBARKODChange
      Size = 25
    end
    object CikisBodroIBQSTOKADI: TIBStringField
      DisplayLabel = 'Stok Ad'#305
      FieldName = 'STOKADI'
      Origin = 'STOKBODRO.STOKADI'
      Size = 80
    end
    object CikisBodroIBQMIKTAR: TFloatField
      DisplayLabel = 'Miktar'
      FieldName = 'MIKTAR'
      Origin = 'STOKBODRO.MIKTAR'
      DisplayFormat = '###,###'
    end
    object CikisBodroIBQMIKTARCARPAN: TIntegerField
      DisplayLabel = 'M. '#199'arpan'#305
      FieldName = 'MIKTARCARPAN'
      Origin = 'STOKBODRO.MIKTARCARPAN'
      DisplayFormat = '###,###'
    end
    object CikisBodroIBQGIRISMIKTAR: TFloatField
      DisplayLabel = 'Giri'#351' Miktar'#305
      FieldName = 'GIRISMIKTAR'
      Origin = 'STOKBODRO.GIRISMIKTAR'
      DisplayFormat = '###,###'
    end
    object CikisBodroIBQCIKISMIKTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Miktar'#305
      FieldName = 'CIKISMIKTAR'
      Origin = 'STOKBODRO.CIKISMIKTAR'
      DisplayFormat = '###,###'
    end
    object CikisBodroIBQBIRIM: TIBStringField
      DisplayLabel = 'Birim'
      FieldName = 'BIRIM'
      Origin = 'STOKBODRO.BIRIM'
      Size = 10
    end
    object CikisBodroIBQBIRIMFIYAT: TFloatField
      DisplayLabel = 'Birim Fiyat'
      FieldName = 'BIRIMFIYAT'
      Origin = 'STOKBODRO.BIRIMFIYAT'
      DisplayFormat = '###,###'
    end
    object CikisBodroIBQGIRISFIYAT: TFloatField
      DisplayLabel = 'Giri'#351' Fiyat'#305
      FieldName = 'GIRISFIYAT'
      Origin = 'STOKBODRO.GIRISFIYAT'
      DisplayFormat = '###,###'
    end
    object CikisBodroIBQCIKISFIYAT: TFloatField
      DisplayLabel = #199#305'k'#305#351' Fiyat'#305
      FieldName = 'CIKISFIYAT'
      Origin = 'STOKBODRO.CIKISFIYAT'
      DisplayFormat = '###,###'
    end
    object CikisBodroIBQCIKISTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Tutar'#305
      FieldName = 'CIKISTUTAR'
      Origin = 'STOKBODRO.CIKISTUTAR'
      DisplayFormat = '###,###'
    end
    object CikisBodroIBQGIRISTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' Tutar'#305
      FieldName = 'GIRISTUTAR'
      Origin = 'STOKBODRO.GIRISTUTAR'
      DisplayFormat = '###,###'
    end
    object CikisBodroIBQGIRISMATRAHI: TFloatField
      DisplayLabel = 'Giri'#351' Matrah'#305
      FieldName = 'GIRISMATRAHI'
      Origin = 'STOKBODRO.GIRISMATRAHI'
      DisplayFormat = '###,###'
    end
    object CikisBodroIBQCIKISMATRAHI: TFloatField
      DisplayLabel = #199#305'k'#305#351' Matrah'#305
      FieldName = 'CIKISMATRAHI'
      Origin = 'STOKBODRO.CIKISMATRAHI'
      DisplayFormat = '###,###'
    end
    object CikisBodroIBQISKONTO1: TFloatField
      DisplayLabel = #304'sk.1'
      FieldName = 'ISKONTO1'
      Origin = 'STOKBODRO.ISKONTO1'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object CikisBodroIBQISKONTO2: TFloatField
      DisplayLabel = #304'sk.2'
      FieldName = 'ISKONTO2'
      Origin = 'STOKBODRO.ISKONTO2'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object CikisBodroIBQISKONTO3: TFloatField
      DisplayLabel = #304'sk.3'
      FieldName = 'ISKONTO3'
      Origin = 'STOKBODRO.ISKONTO3'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object CikisBodroIBQISKONTO4: TFloatField
      DisplayLabel = #304'sk.4'
      FieldName = 'ISKONTO4'
      Origin = 'STOKBODRO.ISKONTO4'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object CikisBodroIBQKDVORANI: TFloatField
      DisplayLabel = 'Kdv Oran'#305
      FieldName = 'KDVORANI'
      Origin = 'STOKBODRO.KDVORANI'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object CikisBodroIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'STOKBODRO.BAKIYE'
      DisplayFormat = '###,###'
    end
    object CikisBodroIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'STOKBODRO.DURUM'
    end
    object CikisBodroIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'STOKBODRO.ACIKLAMA'
      Size = 60
    end
    object CikisBodroIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'STOKBODRO.KAPATMA'
    end
    object CikisBodroIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'STOKBODRO.VADE'
    end
    object CikisBodroIBQFATURANO: TIntegerField
      DisplayLabel = 'Fatura No'
      FieldName = 'FATURANO'
      Origin = 'STOKBODRO.FATURANO'
    end
    object CikisBodroIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'STOKBODRO.STOKYERIKOD'
    end
    object CikisBodroIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'STOKBODRO.ISLEMKURU'
    end
    object CikisBodroIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'STOKBODRO.GELGITKOD'
      Size = 80
    end
    object CikisBodroIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'STOKBODRO.PERSONELKOD'
    end
    object CikisBodroIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'STOKBODRO.KULLANKOD'
    end
    object CikisBodroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'STOKBODRO.SISTEM'
    end
    object CikisBodroIBQEVRAKDURUMU: TIntegerField
      FieldName = 'EVRAKDURUMU'
      Origin = 'STOKBODRO.EVRAKDURUMU'
    end
    object CikisBodroIBQSERINO: TIBStringField
      DisplayLabel = 'Seri No'
      FieldName = 'SERINO'
      Origin = 'STOKBODRO.SERINO'
      Size = 30
    end
    object CikisBodroIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'STOKBODRO.CARIHESAPILISKI'
    end
    object CikisBodroIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'STOKBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object CikisBodroIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'STOKBODRO.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object CikisBodroIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'STOKBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object CikisBodroIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'STOKBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object CikisBodroIBQC_REELGIRIS: TFloatField
      DisplayLabel = 'Reel Giri'#351
      FieldKind = fkInternalCalc
      FieldName = 'C_REELGIRIS'
      Origin = 'STOKBODRO.C_REELGIRIS'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object CikisBodroIBQC_REELCIKIS: TFloatField
      DisplayLabel = 'Reel '#199#305'k'#305#351
      FieldKind = fkInternalCalc
      FieldName = 'C_REELCIKIS'
      Origin = 'STOKBODRO.C_REELCIKIS'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object CikisBodroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'STOKBODRO.ISLEMKOD'
    end
    object CikisBodroIBQKDVSECIM: TIBStringField
      DisplayLabel = 'KDV S.'
      FieldName = 'KDVSECIM'
      Origin = 'STOKBODRO.KDVSECIM'
      Size = 5
    end
    object CikisBodroIBQC_TLGIRISTUTARI: TFloatField
      DisplayLabel = 'TL Giri'#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISTUTARI'
      Origin = 'STOKBODRO.C_TLGIRISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object CikisBodroIBQC_TLGIRISMATRAHI: TFloatField
      DisplayLabel = 'TL Giri'#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISMATRAHI'
      Origin = 'STOKBODRO.C_TLGIRISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object CikisBodroIBQC_TLCIKISTUTARI: TFloatField
      DisplayLabel = 'TL '#199#305'k'#305#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISTUTARI'
      Origin = 'STOKBODRO.C_TLCIKISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object CikisBodroIBQC_TLCIKISMATRAHI: TFloatField
      DisplayLabel = 'TL '#199#305'k'#305#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISMATRAHI'
      Origin = 'STOKBODRO.C_TLCIKISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object CikisBodroIBQC_TLBIRIMFIYAT: TFloatField
      DisplayLabel = 'TL Birim Fiyat'
      FieldKind = fkInternalCalc
      FieldName = 'C_TLBIRIMFIYAT'
      Origin = 'STOKBODRO.C_TLBIRIMFIYAT'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object CikisBodroIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G.G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'STOKBODRO.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object CikisBodroIBQC_GIRISKDVTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_GIRISKDVTUTAR'
      Origin = 'STOKBODRO.C_GIRISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object CikisBodroIBQC_CIKISKDVTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CIKISKDVTUTAR'
      Origin = 'STOKBODRO.C_CIKISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object CikisBodroIBQC_TLGIRISKDVTUTAR: TFloatField
      DisplayLabel = 'TL Giri'#351' KDV Tuatr'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISKDVTUTAR'
      Origin = 'STOKBODRO.C_TLGIRISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object CikisBodroIBQC_TLCIKISKDVTUTARI: TFloatField
      DisplayLabel = 'TL '#199#305'k'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISKDVTUTARI'
      Origin = 'STOKBODRO.C_TLCIKISKDVTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
  end
  object CikisBodroUSQL: TIBUpdateSQL
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
    Left = 136
    Top = 248
  end
  object CikisBodroDS: TDataSource
    DataSet = CikisBodroIBQ
    Left = 224
    Top = 248
  end
  object StokTransferIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = StokTransferIBQAfterDelete
    AfterPost = StokTransferIBQAfterPost
    OnNewRecord = StokTransferIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STOKISLEM'
      'where ISLEMTURKOD=46 AND SISTEM<>2')
    UpdateObject = StokTransferUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'STOKISLEM'
    Left = 40
    Top = 304
    object StokTransferIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'STOKISLEM.ISLEMKOD'
      Required = True
    end
    object StokTransferIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'STOKISLEM.ISLEMTUR'
      Size = 40
    end
    object StokTransferIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'STOKISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object StokTransferIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'STOKISLEM.CARIKOD'
    end
    object StokTransferIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'STOKISLEM.CARINO'
    end
    object StokTransferIBQSTOKISLEMNO: TIntegerField
      FieldName = 'STOKISLEMNO'
      Origin = 'STOKISLEM.STOKISLEMNO'
    end
    object StokTransferIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'STOKISLEM.TARIH'
    end
    object StokTransferIBQIRSALIYETARIH: TDateField
      FieldName = 'IRSALIYETARIH'
      Origin = 'STOKISLEM.IRSALIYETARIH'
    end
    object StokTransferIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'STOKISLEM.SAAT'
    end
    object StokTransferIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'STOKISLEM.ACIKLAMA'
      Size = 80
    end
    object StokTransferIBQGIRISTUTAR: TFloatField
      FieldName = 'GIRISTUTAR'
      Origin = 'STOKISLEM.GIRISTUTAR'
    end
    object StokTransferIBQCIKISTUTAR: TFloatField
      FieldName = 'CIKISTUTAR'
      Origin = 'STOKISLEM.CIKISTUTAR'
    end
    object StokTransferIBQGIRISMATRAH: TFloatField
      FieldName = 'GIRISMATRAH'
      Origin = 'STOKISLEM.GIRISMATRAH'
    end
    object StokTransferIBQGIRISKDVTUTAR: TFloatField
      FieldName = 'GIRISKDVTUTAR'
      Origin = 'STOKISLEM.GIRISKDVTUTAR'
    end
    object StokTransferIBQCIKISMATRAH: TFloatField
      FieldName = 'CIKISMATRAH'
      Origin = 'STOKISLEM.CIKISMATRAH'
    end
    object StokTransferIBQCIKISKDVTUTAR: TFloatField
      FieldName = 'CIKISKDVTUTAR'
      Origin = 'STOKISLEM.CIKISKDVTUTAR'
    end
    object StokTransferIBQCARIKURU: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'STOKISLEM.CARIKURU'
    end
    object StokTransferIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'STOKISLEM.ISLEMKURU'
    end
    object StokTransferIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'STOKISLEM.KAPATMA'
    end
    object StokTransferIBQVADE: TDateField
      FieldName = 'VADE'
      Origin = 'STOKISLEM.VADE'
    end
    object StokTransferIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'STOKISLEM.GELGITKOD'
      Size = 80
    end
    object StokTransferIBQEVRAKNO: TIntegerField
      FieldName = 'EVRAKNO'
      Origin = 'STOKISLEM.EVRAKNO'
    end
    object StokTransferIBQBELGENO: TIntegerField
      FieldName = 'BELGENO'
      Origin = 'STOKISLEM.BELGENO'
    end
    object StokTransferIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'STOKISLEM.BAGLANTINO'
    end
    object StokTransferIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'STOKISLEM.CARIHESAPILISKI'
    end
    object StokTransferIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'STOKISLEM.PARABIRIMKOD'
    end
    object StokTransferIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'STOKISLEM.STOKYERIKOD'
    end
    object StokTransferIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'STOKISLEM.MAKBUZNO'
    end
    object StokTransferIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'STOKISLEM.BILGIKOD'
    end
    object StokTransferIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'STOKISLEM.KULLANKOD'
    end
    object StokTransferIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'STOKISLEM.PERSONELKOD'
    end
    object StokTransferIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'STOKISLEM.CARIPARABIRIMKOD'
    end
    object StokTransferIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'STOKISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object StokTransferIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'STOKISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object StokTransferIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'STOKISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object StokTransferIBQC_STOKYERI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'STOKISLEM.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object StokTransferIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'STOKISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object StokTransferIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'STOKISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object StokTransferIBQFATURATARIH: TDateField
      FieldName = 'FATURATARIH'
      Origin = 'STOKISLEM.FATURATARIH'
    end
    object StokTransferIBQKDVSECIM: TIBStringField
      FieldName = 'KDVSECIM'
      Origin = 'STOKISLEM.KDVSECIM'
      Size = 5
    end
    object StokTransferIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'STOKISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object StokTransferIBQIRSALIYENO: TIntegerField
      FieldName = 'IRSALIYENO'
      Origin = 'STOKISLEM.IRSALIYENO'
    end
    object StokTransferIBQEVRAKTARIH: TDateField
      FieldName = 'EVRAKTARIH'
      Origin = 'STOKISLEM.EVRAKTARIH'
    end
    object StokTransferIBQD_GIRISTUTAR: TFloatField
      FieldName = 'D_GIRISTUTAR'
      Origin = 'STOKISLEM.D_GIRISTUTAR'
    end
    object StokTransferIBQD_GIRISKDVTUTAR: TFloatField
      FieldName = 'D_GIRISKDVTUTAR'
      Origin = 'STOKISLEM.D_GIRISKDVTUTAR'
    end
    object StokTransferIBQD_GIRISMATRAH: TFloatField
      FieldName = 'D_GIRISMATRAH'
      Origin = 'STOKISLEM.D_GIRISMATRAH'
    end
    object StokTransferIBQD_CIKISTUTAR: TFloatField
      FieldName = 'D_CIKISTUTAR'
      Origin = 'STOKISLEM.D_CIKISTUTAR'
    end
    object StokTransferIBQD_CIKISKDVTUTAR: TFloatField
      FieldName = 'D_CIKISKDVTUTAR'
      Origin = 'STOKISLEM.D_CIKISKDVTUTAR'
    end
    object StokTransferIBQD_CIKISMATRAH: TFloatField
      FieldName = 'D_CIKISMATRAH'
      Origin = 'STOKISLEM.D_CIKISMATRAH'
    end
    object StokTransferIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'STOKISLEM.SISTEM'
    end
  end
  object StokTransferUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  CARIKOD,'
      '  CARINO,'
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
      'from STOKISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update STOKISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  CARIKOD = :CARIKOD,'
      '  CARINO = :CARINO,'
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
      'insert into STOKISLEM'
      
        '  (ISLEMKOD, ISLEMTUR, CARIKOD, CARINO, STOKISLEMNO, TARIH, IRSA' +
        'LIYETARIH, '
      
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
      
        '  (:ISLEMKOD, :ISLEMTUR, :CARIKOD, :CARINO, :STOKISLEMNO, :TARIH' +
        ', :IRSALIYETARIH, '
      
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
      'delete from STOKISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 136
    Top = 304
  end
  object StokTransferDS: TDataSource
    DataSet = StokTransferIBQ
    Left = 224
    Top = 304
  end
  object StokTransferBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = StokTransferBodroIBQAfterPost
    OnNewRecord = StokTransferBodroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = StokTransferDS
    SQL.Strings = (
      'select * from STOKBODRO'
      'Where ISLEMKOD=:ISLEMKOD')
    UpdateObject = StokTransferBodroUSQL
    GeneratorField.Field = 'BODROKOD'
    GeneratorField.Generator = 'STOKBODRO'
    Left = 40
    Top = 360
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object StokTransferBodroIBQBODROKOD: TIntegerField
      FieldName = 'BODROKOD'
      Origin = 'STOKBODRO.BODROKOD'
      Required = True
    end
    object StokTransferBodroIBQSIRANO: TIntegerField
      FieldName = 'SIRANO'
      Origin = 'STOKBODRO.SIRANO'
    end
    object StokTransferBodroIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'STOKBODRO.ISLEMTUR'
      Size = 40
    end
    object StokTransferBodroIBQC_ISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_ISLEMTURKOD'
      Origin = 'STOKBODRO.C_ISLEMTURKOD'
      ReadOnly = True
    end
    object StokTransferBodroIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'STOKBODRO.CARIKOD'
    end
    object StokTransferBodroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'STOKBODRO.PARABIRIMKOD'
    end
    object StokTransferBodroIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'STOKBODRO.TARIH'
    end
    object StokTransferBodroIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'STOKBODRO.STOKKOD'
    end
    object StokTransferBodroIBQSTOKNO: TIntegerField
      FieldName = 'STOKNO'
      Origin = 'STOKBODRO.STOKNO'
    end
    object StokTransferBodroIBQBARKOD: TIBStringField
      FieldName = 'BARKOD'
      Origin = 'STOKBODRO.BARKOD'
      Size = 25
    end
    object StokTransferBodroIBQSTOKADI: TIBStringField
      FieldName = 'STOKADI'
      Origin = 'STOKBODRO.STOKADI'
      Size = 80
    end
    object StokTransferBodroIBQMIKTAR: TFloatField
      FieldName = 'MIKTAR'
      Origin = 'STOKBODRO.MIKTAR'
    end
    object StokTransferBodroIBQMIKTARCARPAN: TIntegerField
      FieldName = 'MIKTARCARPAN'
      Origin = 'STOKBODRO.MIKTARCARPAN'
    end
    object StokTransferBodroIBQGIRISMIKTAR: TFloatField
      FieldName = 'GIRISMIKTAR'
      Origin = 'STOKBODRO.GIRISMIKTAR'
    end
    object StokTransferBodroIBQCIKISMIKTAR: TFloatField
      FieldName = 'CIKISMIKTAR'
      Origin = 'STOKBODRO.CIKISMIKTAR'
    end
    object StokTransferBodroIBQBIRIM: TIBStringField
      FieldName = 'BIRIM'
      Origin = 'STOKBODRO.BIRIM'
      Size = 10
    end
    object StokTransferBodroIBQBIRIMFIYAT: TFloatField
      FieldName = 'BIRIMFIYAT'
      Origin = 'STOKBODRO.BIRIMFIYAT'
    end
    object StokTransferBodroIBQGIRISFIYAT: TFloatField
      FieldName = 'GIRISFIYAT'
      Origin = 'STOKBODRO.GIRISFIYAT'
    end
    object StokTransferBodroIBQCIKISFIYAT: TFloatField
      FieldName = 'CIKISFIYAT'
      Origin = 'STOKBODRO.CIKISFIYAT'
    end
    object StokTransferBodroIBQCIKISTUTAR: TFloatField
      FieldName = 'CIKISTUTAR'
      Origin = 'STOKBODRO.CIKISTUTAR'
    end
    object StokTransferBodroIBQGIRISTUTAR: TFloatField
      FieldName = 'GIRISTUTAR'
      Origin = 'STOKBODRO.GIRISTUTAR'
    end
    object StokTransferBodroIBQGIRISMATRAHI: TFloatField
      FieldName = 'GIRISMATRAHI'
      Origin = 'STOKBODRO.GIRISMATRAHI'
    end
    object StokTransferBodroIBQCIKISMATRAHI: TFloatField
      FieldName = 'CIKISMATRAHI'
      Origin = 'STOKBODRO.CIKISMATRAHI'
    end
    object StokTransferBodroIBQISKONTO1: TFloatField
      FieldName = 'ISKONTO1'
      Origin = 'STOKBODRO.ISKONTO1'
    end
    object StokTransferBodroIBQISKONTO2: TFloatField
      FieldName = 'ISKONTO2'
      Origin = 'STOKBODRO.ISKONTO2'
    end
    object StokTransferBodroIBQISKONTO3: TFloatField
      FieldName = 'ISKONTO3'
      Origin = 'STOKBODRO.ISKONTO3'
    end
    object StokTransferBodroIBQISKONTO4: TFloatField
      FieldName = 'ISKONTO4'
      Origin = 'STOKBODRO.ISKONTO4'
    end
    object StokTransferBodroIBQKDVORANI: TFloatField
      FieldName = 'KDVORANI'
      Origin = 'STOKBODRO.KDVORANI'
    end
    object StokTransferBodroIBQBAKIYE: TFloatField
      FieldName = 'BAKIYE'
      Origin = 'STOKBODRO.BAKIYE'
    end
    object StokTransferBodroIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'STOKBODRO.DURUM'
    end
    object StokTransferBodroIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'STOKBODRO.ACIKLAMA'
      Size = 60
    end
    object StokTransferBodroIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'STOKBODRO.KAPATMA'
    end
    object StokTransferBodroIBQVADE: TDateField
      FieldName = 'VADE'
      Origin = 'STOKBODRO.VADE'
    end
    object StokTransferBodroIBQFATURANO: TIntegerField
      FieldName = 'FATURANO'
      Origin = 'STOKBODRO.FATURANO'
    end
    object StokTransferBodroIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'STOKBODRO.STOKYERIKOD'
    end
    object StokTransferBodroIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'STOKBODRO.ISLEMKURU'
    end
    object StokTransferBodroIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'STOKBODRO.GELGITKOD'
      Size = 80
    end
    object StokTransferBodroIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'STOKBODRO.PERSONELKOD'
    end
    object StokTransferBodroIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'STOKBODRO.KULLANKOD'
    end
    object StokTransferBodroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'STOKBODRO.SISTEM'
    end
    object StokTransferBodroIBQEVRAKDURUMU: TIntegerField
      FieldName = 'EVRAKDURUMU'
      Origin = 'STOKBODRO.EVRAKDURUMU'
    end
    object StokTransferBodroIBQSERINO: TIBStringField
      FieldName = 'SERINO'
      Origin = 'STOKBODRO.SERINO'
      Size = 30
    end
    object StokTransferBodroIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'STOKBODRO.CARIHESAPILISKI'
    end
    object StokTransferBodroIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'STOKBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object StokTransferBodroIBQC_STOKYERI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'STOKBODRO.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object StokTransferBodroIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'STOKBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object StokTransferBodroIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'STOKBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object StokTransferBodroIBQC_REELGIRIS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_REELGIRIS'
      Origin = 'STOKBODRO.C_REELGIRIS'
      ReadOnly = True
    end
    object StokTransferBodroIBQC_REELCIKIS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_REELCIKIS'
      Origin = 'STOKBODRO.C_REELCIKIS'
      ReadOnly = True
    end
    object StokTransferBodroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'STOKBODRO.ISLEMKOD'
    end
    object StokTransferBodroIBQKDVSECIM: TIBStringField
      FieldName = 'KDVSECIM'
      Origin = 'STOKBODRO.KDVSECIM'
      Size = 5
    end
    object StokTransferBodroIBQC_TLGIRISTUTARI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISTUTARI'
      Origin = 'STOKBODRO.C_TLGIRISTUTARI'
      ReadOnly = True
    end
    object StokTransferBodroIBQC_TLGIRISMATRAHI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISMATRAHI'
      Origin = 'STOKBODRO.C_TLGIRISMATRAHI'
      ReadOnly = True
    end
    object StokTransferBodroIBQC_TLCIKISTUTARI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISTUTARI'
      Origin = 'STOKBODRO.C_TLCIKISTUTARI'
      ReadOnly = True
    end
    object StokTransferBodroIBQC_TLCIKISMATRAHI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISMATRAHI'
      Origin = 'STOKBODRO.C_TLCIKISMATRAHI'
      ReadOnly = True
    end
    object StokTransferBodroIBQC_TLBIRIMFIYAT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLBIRIMFIYAT'
      Origin = 'STOKBODRO.C_TLBIRIMFIYAT'
      ReadOnly = True
    end
    object StokTransferBodroIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'STOKBODRO.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object StokTransferBodroIBQC_GIRISKDVTUTAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_GIRISKDVTUTAR'
      Origin = 'STOKBODRO.C_GIRISKDVTUTAR'
      ReadOnly = True
    end
    object StokTransferBodroIBQC_CIKISKDVTUTAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_CIKISKDVTUTAR'
      Origin = 'STOKBODRO.C_CIKISKDVTUTAR'
      ReadOnly = True
    end
    object StokTransferBodroIBQC_TLGIRISKDVTUTAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISKDVTUTAR'
      Origin = 'STOKBODRO.C_TLGIRISKDVTUTAR'
      ReadOnly = True
    end
    object StokTransferBodroIBQC_TLCIKISKDVTUTARI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISKDVTUTARI'
      Origin = 'STOKBODRO.C_TLCIKISKDVTUTARI'
      ReadOnly = True
    end
  end
  object StokTransferBodroUSQL: TIBUpdateSQL
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
    Left = 136
    Top = 360
  end
  object StokTransferBodroDS: TDataSource
    DataSet = StokTransferBodroIBQ
    Left = 224
    Top = 360
  end
  object SayimFazlasiIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = SayimFazlasiIBQAfterPost
    OnNewRecord = SayimFazlasiIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STOKISLEM'
      'where ISLEMTURKOD =39 and SISTEM<>2')
    UpdateObject = SayimFazlasiUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'STOKISLEM'
    Left = 320
    Top = 24
    object SayimFazlasiIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'STOKISLEM.ISLEMKOD'
      Required = True
    end
    object SayimFazlasiIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'STOKISLEM.ISLEMTUR'
      Size = 40
    end
    object SayimFazlasiIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'STOKISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object SayimFazlasiIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'STOKISLEM.CARIKOD'
    end
    object SayimFazlasiIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'STOKISLEM.CARINO'
    end
    object SayimFazlasiIBQSTOKISLEMNO: TIntegerField
      FieldName = 'STOKISLEMNO'
      Origin = 'STOKISLEM.STOKISLEMNO'
    end
    object SayimFazlasiIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'STOKISLEM.TARIH'
    end
    object SayimFazlasiIBQIRSALIYETARIH: TDateField
      FieldName = 'IRSALIYETARIH'
      Origin = 'STOKISLEM.IRSALIYETARIH'
    end
    object SayimFazlasiIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'STOKISLEM.SAAT'
    end
    object SayimFazlasiIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'STOKISLEM.ACIKLAMA'
      Size = 80
    end
    object SayimFazlasiIBQGIRISTUTAR: TFloatField
      FieldName = 'GIRISTUTAR'
      Origin = 'STOKISLEM.GIRISTUTAR'
    end
    object SayimFazlasiIBQCIKISTUTAR: TFloatField
      FieldName = 'CIKISTUTAR'
      Origin = 'STOKISLEM.CIKISTUTAR'
    end
    object SayimFazlasiIBQGIRISMATRAH: TFloatField
      FieldName = 'GIRISMATRAH'
      Origin = 'STOKISLEM.GIRISMATRAH'
    end
    object SayimFazlasiIBQGIRISKDVTUTAR: TFloatField
      FieldName = 'GIRISKDVTUTAR'
      Origin = 'STOKISLEM.GIRISKDVTUTAR'
    end
    object SayimFazlasiIBQCIKISMATRAH: TFloatField
      FieldName = 'CIKISMATRAH'
      Origin = 'STOKISLEM.CIKISMATRAH'
    end
    object SayimFazlasiIBQCIKISKDVTUTAR: TFloatField
      FieldName = 'CIKISKDVTUTAR'
      Origin = 'STOKISLEM.CIKISKDVTUTAR'
    end
    object SayimFazlasiIBQCARIKURU: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'STOKISLEM.CARIKURU'
    end
    object SayimFazlasiIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'STOKISLEM.ISLEMKURU'
    end
    object SayimFazlasiIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'STOKISLEM.KAPATMA'
    end
    object SayimFazlasiIBQVADE: TDateField
      FieldName = 'VADE'
      Origin = 'STOKISLEM.VADE'
    end
    object SayimFazlasiIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'STOKISLEM.GELGITKOD'
      Size = 80
    end
    object SayimFazlasiIBQEVRAKNO: TIntegerField
      FieldName = 'EVRAKNO'
      Origin = 'STOKISLEM.EVRAKNO'
    end
    object SayimFazlasiIBQBELGENO: TIntegerField
      FieldName = 'BELGENO'
      Origin = 'STOKISLEM.BELGENO'
    end
    object SayimFazlasiIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'STOKISLEM.BAGLANTINO'
    end
    object SayimFazlasiIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'STOKISLEM.CARIHESAPILISKI'
    end
    object SayimFazlasiIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'STOKISLEM.PARABIRIMKOD'
    end
    object SayimFazlasiIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'STOKISLEM.STOKYERIKOD'
    end
    object SayimFazlasiIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'STOKISLEM.MAKBUZNO'
    end
    object SayimFazlasiIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'STOKISLEM.BILGIKOD'
    end
    object SayimFazlasiIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'STOKISLEM.KULLANKOD'
    end
    object SayimFazlasiIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'STOKISLEM.PERSONELKOD'
    end
    object SayimFazlasiIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'STOKISLEM.CARIPARABIRIMKOD'
    end
    object SayimFazlasiIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'STOKISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object SayimFazlasiIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'STOKISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object SayimFazlasiIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'STOKISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object SayimFazlasiIBQC_STOKYERI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'STOKISLEM.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object SayimFazlasiIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'STOKISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object SayimFazlasiIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'STOKISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object SayimFazlasiIBQFATURATARIH: TDateField
      FieldName = 'FATURATARIH'
      Origin = 'STOKISLEM.FATURATARIH'
    end
    object SayimFazlasiIBQKDVSECIM: TIBStringField
      FieldName = 'KDVSECIM'
      Origin = 'STOKISLEM.KDVSECIM'
      Size = 5
    end
    object SayimFazlasiIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'STOKISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object SayimFazlasiIBQIRSALIYENO: TIntegerField
      FieldName = 'IRSALIYENO'
      Origin = 'STOKISLEM.IRSALIYENO'
    end
    object SayimFazlasiIBQEVRAKTARIH: TDateField
      FieldName = 'EVRAKTARIH'
      Origin = 'STOKISLEM.EVRAKTARIH'
    end
    object SayimFazlasiIBQD_GIRISTUTAR: TFloatField
      FieldName = 'D_GIRISTUTAR'
      Origin = 'STOKISLEM.D_GIRISTUTAR'
    end
    object SayimFazlasiIBQD_GIRISKDVTUTAR: TFloatField
      FieldName = 'D_GIRISKDVTUTAR'
      Origin = 'STOKISLEM.D_GIRISKDVTUTAR'
    end
    object SayimFazlasiIBQD_GIRISMATRAH: TFloatField
      FieldName = 'D_GIRISMATRAH'
      Origin = 'STOKISLEM.D_GIRISMATRAH'
    end
    object SayimFazlasiIBQD_CIKISTUTAR: TFloatField
      FieldName = 'D_CIKISTUTAR'
      Origin = 'STOKISLEM.D_CIKISTUTAR'
    end
    object SayimFazlasiIBQD_CIKISKDVTUTAR: TFloatField
      FieldName = 'D_CIKISKDVTUTAR'
      Origin = 'STOKISLEM.D_CIKISKDVTUTAR'
    end
    object SayimFazlasiIBQD_CIKISMATRAH: TFloatField
      FieldName = 'D_CIKISMATRAH'
      Origin = 'STOKISLEM.D_CIKISMATRAH'
    end
    object SayimFazlasiIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'STOKISLEM.SISTEM'
    end
  end
  object SayimFazlasiUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  CARIKOD,'
      '  CARINO,'
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
      'from STOKISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update STOKISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  CARIKOD = :CARIKOD,'
      '  CARINO = :CARINO,'
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
      'insert into STOKISLEM'
      
        '  (ISLEMKOD, ISLEMTUR, CARIKOD, CARINO, STOKISLEMNO, TARIH, IRSA' +
        'LIYETARIH, '
      
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
      
        '  (:ISLEMKOD, :ISLEMTUR, :CARIKOD, :CARINO, :STOKISLEMNO, :TARIH' +
        ', :IRSALIYETARIH, '
      
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
      'delete from STOKISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 440
    Top = 24
  end
  object SayimFazlasiDS: TDataSource
    DataSet = SayimFazlasiIBQ
    Left = 552
    Top = 24
  end
  object SayimFazlasiBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = SayimFazlasiBodroIBQAfterPost
    OnNewRecord = SayimFazlasiBodroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = SayimFazlasiDS
    SQL.Strings = (
      'select * from STOKBODRO'
      'Where ISLEMKOD=:ISLEMKOD')
    UpdateObject = SayimFazlasiBodroUSQL
    GeneratorField.Field = 'BODROKOD'
    GeneratorField.Generator = 'STOKBODRO'
    Left = 320
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SayimFazlasiBodroIBQBODROKOD: TIntegerField
      FieldName = 'BODROKOD'
      Origin = 'STOKBODRO.BODROKOD'
      Required = True
    end
    object SayimFazlasiBodroIBQSIRANO: TIntegerField
      DisplayLabel = 'S'#305'ra No'
      FieldName = 'SIRANO'
      Origin = 'STOKBODRO.SIRANO'
    end
    object SayimFazlasiBodroIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'STOKBODRO.ISLEMTUR'
      Size = 40
    end
    object SayimFazlasiBodroIBQC_ISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_ISLEMTURKOD'
      Origin = 'STOKBODRO.C_ISLEMTURKOD'
      ReadOnly = True
    end
    object SayimFazlasiBodroIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'STOKBODRO.CARIKOD'
    end
    object SayimFazlasiBodroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'STOKBODRO.PARABIRIMKOD'
    end
    object SayimFazlasiBodroIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'STOKBODRO.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object SayimFazlasiBodroIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'STOKBODRO.STOKKOD'
    end
    object SayimFazlasiBodroIBQSTOKNO: TIntegerField
      DisplayLabel = 'Stok No'
      FieldName = 'STOKNO'
      Origin = 'STOKBODRO.STOKNO'
    end
    object SayimFazlasiBodroIBQBARKOD: TIBStringField
      DisplayLabel = 'Barkod'
      FieldName = 'BARKOD'
      Origin = 'STOKBODRO.BARKOD'
      OnChange = SayimFazlasiBodroIBQBARKODChange
      Size = 25
    end
    object SayimFazlasiBodroIBQSTOKADI: TIBStringField
      DisplayLabel = 'Stok Ad'#305
      FieldName = 'STOKADI'
      Origin = 'STOKBODRO.STOKADI'
      Size = 80
    end
    object SayimFazlasiBodroIBQMIKTAR: TFloatField
      DisplayLabel = 'Miktar'
      FieldName = 'MIKTAR'
      Origin = 'STOKBODRO.MIKTAR'
      DisplayFormat = '###,###'
    end
    object SayimFazlasiBodroIBQMIKTARCARPAN: TIntegerField
      DisplayLabel = 'M. '#199'arpan'#305
      FieldName = 'MIKTARCARPAN'
      Origin = 'STOKBODRO.MIKTARCARPAN'
      DisplayFormat = '###,###'
    end
    object SayimFazlasiBodroIBQGIRISMIKTAR: TFloatField
      DisplayLabel = 'Giri'#351' Miktar'#305
      FieldName = 'GIRISMIKTAR'
      Origin = 'STOKBODRO.GIRISMIKTAR'
      DisplayFormat = '###,###'
    end
    object SayimFazlasiBodroIBQCIKISMIKTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Miktar'#305
      FieldName = 'CIKISMIKTAR'
      Origin = 'STOKBODRO.CIKISMIKTAR'
      DisplayFormat = '###,###'
    end
    object SayimFazlasiBodroIBQBIRIM: TIBStringField
      DisplayLabel = 'Birim'
      FieldName = 'BIRIM'
      Origin = 'STOKBODRO.BIRIM'
      Size = 10
    end
    object SayimFazlasiBodroIBQBIRIMFIYAT: TFloatField
      DisplayLabel = 'Birim Fiyat'
      FieldName = 'BIRIMFIYAT'
      Origin = 'STOKBODRO.BIRIMFIYAT'
      DisplayFormat = '###,###'
    end
    object SayimFazlasiBodroIBQGIRISFIYAT: TFloatField
      DisplayLabel = 'Giri'#351' Fiyat'#305
      FieldName = 'GIRISFIYAT'
      Origin = 'STOKBODRO.GIRISFIYAT'
      DisplayFormat = '###,###'
    end
    object SayimFazlasiBodroIBQCIKISFIYAT: TFloatField
      DisplayLabel = #199#305'k'#305#351' Fiyat'#305
      FieldName = 'CIKISFIYAT'
      Origin = 'STOKBODRO.CIKISFIYAT'
      DisplayFormat = '###,###'
    end
    object SayimFazlasiBodroIBQCIKISTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Tutar'#305
      FieldName = 'CIKISTUTAR'
      Origin = 'STOKBODRO.CIKISTUTAR'
      DisplayFormat = '###,###'
    end
    object SayimFazlasiBodroIBQGIRISTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' Tutar'#305
      FieldName = 'GIRISTUTAR'
      Origin = 'STOKBODRO.GIRISTUTAR'
      DisplayFormat = '###,###'
    end
    object SayimFazlasiBodroIBQGIRISMATRAHI: TFloatField
      DisplayLabel = 'Giri'#351' Matrah'#305
      FieldName = 'GIRISMATRAHI'
      Origin = 'STOKBODRO.GIRISMATRAHI'
      DisplayFormat = '###,###'
    end
    object SayimFazlasiBodroIBQCIKISMATRAHI: TFloatField
      DisplayLabel = #199#305'k'#305#351' Matrah'#305
      FieldName = 'CIKISMATRAHI'
      Origin = 'STOKBODRO.CIKISMATRAHI'
      DisplayFormat = '###,###'
    end
    object SayimFazlasiBodroIBQISKONTO1: TFloatField
      DisplayLabel = #304'sk.1'
      FieldName = 'ISKONTO1'
      Origin = 'STOKBODRO.ISKONTO1'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object SayimFazlasiBodroIBQISKONTO2: TFloatField
      DisplayLabel = #304'sk.2'
      FieldName = 'ISKONTO2'
      Origin = 'STOKBODRO.ISKONTO2'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object SayimFazlasiBodroIBQISKONTO3: TFloatField
      DisplayLabel = #304'sk.3'
      FieldName = 'ISKONTO3'
      Origin = 'STOKBODRO.ISKONTO3'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object SayimFazlasiBodroIBQISKONTO4: TFloatField
      DisplayLabel = #304'sk.4'
      FieldName = 'ISKONTO4'
      Origin = 'STOKBODRO.ISKONTO4'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object SayimFazlasiBodroIBQKDVORANI: TFloatField
      DisplayLabel = 'Kdv Oran'#305
      FieldName = 'KDVORANI'
      Origin = 'STOKBODRO.KDVORANI'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object SayimFazlasiBodroIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'STOKBODRO.BAKIYE'
      DisplayFormat = '###,###'
    end
    object SayimFazlasiBodroIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'STOKBODRO.DURUM'
    end
    object SayimFazlasiBodroIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'STOKBODRO.ACIKLAMA'
      Size = 60
    end
    object SayimFazlasiBodroIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'STOKBODRO.KAPATMA'
    end
    object SayimFazlasiBodroIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'STOKBODRO.VADE'
    end
    object SayimFazlasiBodroIBQFATURANO: TIntegerField
      DisplayLabel = 'Fatura No'
      FieldName = 'FATURANO'
      Origin = 'STOKBODRO.FATURANO'
    end
    object SayimFazlasiBodroIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'STOKBODRO.STOKYERIKOD'
    end
    object SayimFazlasiBodroIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'STOKBODRO.ISLEMKURU'
    end
    object SayimFazlasiBodroIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'STOKBODRO.GELGITKOD'
      Size = 80
    end
    object SayimFazlasiBodroIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'STOKBODRO.PERSONELKOD'
    end
    object SayimFazlasiBodroIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'STOKBODRO.KULLANKOD'
    end
    object SayimFazlasiBodroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'STOKBODRO.SISTEM'
    end
    object SayimFazlasiBodroIBQEVRAKDURUMU: TIntegerField
      FieldName = 'EVRAKDURUMU'
      Origin = 'STOKBODRO.EVRAKDURUMU'
    end
    object SayimFazlasiBodroIBQSERINO: TIBStringField
      DisplayLabel = 'Seri No'
      FieldName = 'SERINO'
      Origin = 'STOKBODRO.SERINO'
      Size = 30
    end
    object SayimFazlasiBodroIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'STOKBODRO.CARIHESAPILISKI'
    end
    object SayimFazlasiBodroIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'STOKBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object SayimFazlasiBodroIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'STOKBODRO.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object SayimFazlasiBodroIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'STOKBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object SayimFazlasiBodroIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'STOKBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object SayimFazlasiBodroIBQC_REELGIRIS: TFloatField
      DisplayLabel = 'Reel Giri'#351
      FieldKind = fkInternalCalc
      FieldName = 'C_REELGIRIS'
      Origin = 'STOKBODRO.C_REELGIRIS'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SayimFazlasiBodroIBQC_REELCIKIS: TFloatField
      DisplayLabel = 'Reel '#199#305'k'#305#351
      FieldKind = fkInternalCalc
      FieldName = 'C_REELCIKIS'
      Origin = 'STOKBODRO.C_REELCIKIS'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SayimFazlasiBodroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'STOKBODRO.ISLEMKOD'
    end
    object SayimFazlasiBodroIBQKDVSECIM: TIBStringField
      DisplayLabel = 'KDV S.'
      FieldName = 'KDVSECIM'
      Origin = 'STOKBODRO.KDVSECIM'
      Size = 5
    end
    object SayimFazlasiBodroIBQC_TLGIRISTUTARI: TFloatField
      DisplayLabel = 'TL Giri'#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISTUTARI'
      Origin = 'STOKBODRO.C_TLGIRISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SayimFazlasiBodroIBQC_TLGIRISMATRAHI: TFloatField
      DisplayLabel = 'TL Giri'#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISMATRAHI'
      Origin = 'STOKBODRO.C_TLGIRISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SayimFazlasiBodroIBQC_TLCIKISTUTARI: TFloatField
      DisplayLabel = 'TL '#199#305'k'#305#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISTUTARI'
      Origin = 'STOKBODRO.C_TLCIKISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SayimFazlasiBodroIBQC_TLCIKISMATRAHI: TFloatField
      DisplayLabel = 'TL '#199#305'k'#305#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISMATRAHI'
      Origin = 'STOKBODRO.C_TLCIKISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SayimFazlasiBodroIBQC_TLBIRIMFIYAT: TFloatField
      DisplayLabel = 'TL Birim Fiyat'
      FieldKind = fkInternalCalc
      FieldName = 'C_TLBIRIMFIYAT'
      Origin = 'STOKBODRO.C_TLBIRIMFIYAT'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SayimFazlasiBodroIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G.G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'STOKBODRO.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object SayimFazlasiBodroIBQC_GIRISKDVTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_GIRISKDVTUTAR'
      Origin = 'STOKBODRO.C_GIRISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SayimFazlasiBodroIBQC_CIKISKDVTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CIKISKDVTUTAR'
      Origin = 'STOKBODRO.C_CIKISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SayimFazlasiBodroIBQC_TLGIRISKDVTUTAR: TFloatField
      DisplayLabel = 'TL Giri'#351' KDV Tuatr'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISKDVTUTAR'
      Origin = 'STOKBODRO.C_TLGIRISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SayimFazlasiBodroIBQC_TLCIKISKDVTUTARI: TFloatField
      DisplayLabel = 'TL '#199#305'k'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISKDVTUTARI'
      Origin = 'STOKBODRO.C_TLCIKISKDVTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
  end
  object SayimFazlasiBodroUSQL: TIBUpdateSQL
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
    Left = 440
    Top = 80
  end
  object SayimFazlasiBodroDS: TDataSource
    DataSet = SayimFazlasiBodroIBQ
    Left = 552
    Top = 80
  end
  object UretimGirisIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = UretimGirisIBQAfterPost
    OnNewRecord = UretimGirisIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STOKISLEM'
      'where ISLEMTURKOD =37 and SISTEM<>2')
    UpdateObject = UretimGirisUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'STOKISLEM'
    Left = 320
    Top = 136
    object UretimGirisIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'STOKISLEM.ISLEMKOD'
      Required = True
    end
    object UretimGirisIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'STOKISLEM.ISLEMTUR'
      Size = 40
    end
    object UretimGirisIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'STOKISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object UretimGirisIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'STOKISLEM.CARIKOD'
    end
    object UretimGirisIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'STOKISLEM.CARINO'
    end
    object UretimGirisIBQSTOKISLEMNO: TIntegerField
      FieldName = 'STOKISLEMNO'
      Origin = 'STOKISLEM.STOKISLEMNO'
    end
    object UretimGirisIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'STOKISLEM.TARIH'
    end
    object UretimGirisIBQIRSALIYETARIH: TDateField
      FieldName = 'IRSALIYETARIH'
      Origin = 'STOKISLEM.IRSALIYETARIH'
    end
    object UretimGirisIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'STOKISLEM.SAAT'
    end
    object UretimGirisIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'STOKISLEM.ACIKLAMA'
      Size = 80
    end
    object UretimGirisIBQGIRISTUTAR: TFloatField
      FieldName = 'GIRISTUTAR'
      Origin = 'STOKISLEM.GIRISTUTAR'
    end
    object UretimGirisIBQCIKISTUTAR: TFloatField
      FieldName = 'CIKISTUTAR'
      Origin = 'STOKISLEM.CIKISTUTAR'
    end
    object UretimGirisIBQGIRISMATRAH: TFloatField
      FieldName = 'GIRISMATRAH'
      Origin = 'STOKISLEM.GIRISMATRAH'
    end
    object UretimGirisIBQGIRISKDVTUTAR: TFloatField
      FieldName = 'GIRISKDVTUTAR'
      Origin = 'STOKISLEM.GIRISKDVTUTAR'
    end
    object UretimGirisIBQCIKISMATRAH: TFloatField
      FieldName = 'CIKISMATRAH'
      Origin = 'STOKISLEM.CIKISMATRAH'
    end
    object UretimGirisIBQCIKISKDVTUTAR: TFloatField
      FieldName = 'CIKISKDVTUTAR'
      Origin = 'STOKISLEM.CIKISKDVTUTAR'
    end
    object UretimGirisIBQCARIKURU: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'STOKISLEM.CARIKURU'
    end
    object UretimGirisIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'STOKISLEM.ISLEMKURU'
    end
    object UretimGirisIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'STOKISLEM.KAPATMA'
    end
    object UretimGirisIBQVADE: TDateField
      FieldName = 'VADE'
      Origin = 'STOKISLEM.VADE'
    end
    object UretimGirisIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'STOKISLEM.GELGITKOD'
      Size = 80
    end
    object UretimGirisIBQEVRAKNO: TIntegerField
      FieldName = 'EVRAKNO'
      Origin = 'STOKISLEM.EVRAKNO'
    end
    object UretimGirisIBQBELGENO: TIntegerField
      FieldName = 'BELGENO'
      Origin = 'STOKISLEM.BELGENO'
    end
    object UretimGirisIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'STOKISLEM.BAGLANTINO'
    end
    object UretimGirisIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'STOKISLEM.CARIHESAPILISKI'
    end
    object UretimGirisIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'STOKISLEM.PARABIRIMKOD'
    end
    object UretimGirisIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'STOKISLEM.STOKYERIKOD'
    end
    object UretimGirisIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'STOKISLEM.MAKBUZNO'
    end
    object UretimGirisIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'STOKISLEM.BILGIKOD'
    end
    object UretimGirisIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'STOKISLEM.KULLANKOD'
    end
    object UretimGirisIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'STOKISLEM.PERSONELKOD'
    end
    object UretimGirisIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'STOKISLEM.CARIPARABIRIMKOD'
    end
    object UretimGirisIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'STOKISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object UretimGirisIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'STOKISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object UretimGirisIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'STOKISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object UretimGirisIBQC_STOKYERI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'STOKISLEM.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object UretimGirisIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'STOKISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object UretimGirisIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'STOKISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object UretimGirisIBQFATURATARIH: TDateField
      FieldName = 'FATURATARIH'
      Origin = 'STOKISLEM.FATURATARIH'
    end
    object UretimGirisIBQKDVSECIM: TIBStringField
      FieldName = 'KDVSECIM'
      Origin = 'STOKISLEM.KDVSECIM'
      Size = 5
    end
    object UretimGirisIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'STOKISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object UretimGirisIBQIRSALIYENO: TIntegerField
      FieldName = 'IRSALIYENO'
      Origin = 'STOKISLEM.IRSALIYENO'
    end
    object UretimGirisIBQEVRAKTARIH: TDateField
      FieldName = 'EVRAKTARIH'
      Origin = 'STOKISLEM.EVRAKTARIH'
    end
    object UretimGirisIBQD_GIRISTUTAR: TFloatField
      FieldName = 'D_GIRISTUTAR'
      Origin = 'STOKISLEM.D_GIRISTUTAR'
    end
    object UretimGirisIBQD_GIRISKDVTUTAR: TFloatField
      FieldName = 'D_GIRISKDVTUTAR'
      Origin = 'STOKISLEM.D_GIRISKDVTUTAR'
    end
    object UretimGirisIBQD_GIRISMATRAH: TFloatField
      FieldName = 'D_GIRISMATRAH'
      Origin = 'STOKISLEM.D_GIRISMATRAH'
    end
    object UretimGirisIBQD_CIKISTUTAR: TFloatField
      FieldName = 'D_CIKISTUTAR'
      Origin = 'STOKISLEM.D_CIKISTUTAR'
    end
    object UretimGirisIBQD_CIKISKDVTUTAR: TFloatField
      FieldName = 'D_CIKISKDVTUTAR'
      Origin = 'STOKISLEM.D_CIKISKDVTUTAR'
    end
    object UretimGirisIBQD_CIKISMATRAH: TFloatField
      FieldName = 'D_CIKISMATRAH'
      Origin = 'STOKISLEM.D_CIKISMATRAH'
    end
    object UretimGirisIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'STOKISLEM.SISTEM'
    end
  end
  object UretimGirisUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  CARIKOD,'
      '  CARINO,'
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
      'from STOKISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update STOKISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  CARIKOD = :CARIKOD,'
      '  CARINO = :CARINO,'
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
      'insert into STOKISLEM'
      
        '  (ISLEMKOD, ISLEMTUR, CARIKOD, CARINO, STOKISLEMNO, TARIH, IRSA' +
        'LIYETARIH, '
      
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
      
        '  (:ISLEMKOD, :ISLEMTUR, :CARIKOD, :CARINO, :STOKISLEMNO, :TARIH' +
        ', :IRSALIYETARIH, '
      
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
      'delete from STOKISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 440
    Top = 136
  end
  object UretimGirisDS: TDataSource
    DataSet = UretimGirisIBQ
    Left = 552
    Top = 136
  end
  object UGBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = UGBodroIBQAfterPost
    OnNewRecord = UGBodroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = UretimGirisDS
    SQL.Strings = (
      'select * from STOKBODRO'
      'Where ISLEMKOD=:ISLEMKOD')
    UpdateObject = UGBodroUSQL
    GeneratorField.Field = 'BODROKOD'
    GeneratorField.Generator = 'STOKBODRO'
    Left = 320
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object UGBodroIBQBODROKOD: TIntegerField
      FieldName = 'BODROKOD'
      Origin = 'STOKBODRO.BODROKOD'
      Required = True
    end
    object UGBodroIBQSIRANO: TIntegerField
      DisplayLabel = 'S'#305'ra No'
      FieldName = 'SIRANO'
      Origin = 'STOKBODRO.SIRANO'
    end
    object UGBodroIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'STOKBODRO.ISLEMTUR'
      Size = 40
    end
    object UGBodroIBQC_ISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_ISLEMTURKOD'
      Origin = 'STOKBODRO.C_ISLEMTURKOD'
      ReadOnly = True
    end
    object UGBodroIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'STOKBODRO.CARIKOD'
    end
    object UGBodroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'STOKBODRO.PARABIRIMKOD'
    end
    object UGBodroIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'STOKBODRO.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object UGBodroIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'STOKBODRO.STOKKOD'
    end
    object UGBodroIBQSTOKNO: TIntegerField
      DisplayLabel = 'Stok No'
      FieldName = 'STOKNO'
      Origin = 'STOKBODRO.STOKNO'
    end
    object UGBodroIBQBARKOD: TIBStringField
      DisplayLabel = 'Barkod'
      FieldName = 'BARKOD'
      Origin = 'STOKBODRO.BARKOD'
      OnChange = UGBodroIBQBARKODChange
      Size = 25
    end
    object UGBodroIBQSTOKADI: TIBStringField
      DisplayLabel = 'Stok Ad'#305
      FieldName = 'STOKADI'
      Origin = 'STOKBODRO.STOKADI'
      Size = 80
    end
    object UGBodroIBQMIKTAR: TFloatField
      DisplayLabel = 'Miktar'
      FieldName = 'MIKTAR'
      Origin = 'STOKBODRO.MIKTAR'
      DisplayFormat = '###,###'
    end
    object UGBodroIBQMIKTARCARPAN: TIntegerField
      DisplayLabel = 'M. '#199'arpan'#305
      FieldName = 'MIKTARCARPAN'
      Origin = 'STOKBODRO.MIKTARCARPAN'
      DisplayFormat = '###,###'
    end
    object UGBodroIBQGIRISMIKTAR: TFloatField
      DisplayLabel = 'Giri'#351' Miktar'#305
      FieldName = 'GIRISMIKTAR'
      Origin = 'STOKBODRO.GIRISMIKTAR'
      DisplayFormat = '###,###'
    end
    object UGBodroIBQCIKISMIKTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Miktar'#305
      FieldName = 'CIKISMIKTAR'
      Origin = 'STOKBODRO.CIKISMIKTAR'
      DisplayFormat = '###,###'
    end
    object UGBodroIBQBIRIM: TIBStringField
      DisplayLabel = 'Birim'
      FieldName = 'BIRIM'
      Origin = 'STOKBODRO.BIRIM'
      Size = 10
    end
    object UGBodroIBQBIRIMFIYAT: TFloatField
      DisplayLabel = 'Birim Fiyat'
      FieldName = 'BIRIMFIYAT'
      Origin = 'STOKBODRO.BIRIMFIYAT'
      DisplayFormat = '###,###'
    end
    object UGBodroIBQGIRISFIYAT: TFloatField
      DisplayLabel = 'Giri'#351' Fiyat'#305
      FieldName = 'GIRISFIYAT'
      Origin = 'STOKBODRO.GIRISFIYAT'
      DisplayFormat = '###,###'
    end
    object UGBodroIBQCIKISFIYAT: TFloatField
      DisplayLabel = #199#305'k'#305#351' Fiyat'#305
      FieldName = 'CIKISFIYAT'
      Origin = 'STOKBODRO.CIKISFIYAT'
      DisplayFormat = '###,###'
    end
    object UGBodroIBQCIKISTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Tutar'#305
      FieldName = 'CIKISTUTAR'
      Origin = 'STOKBODRO.CIKISTUTAR'
      DisplayFormat = '###,###'
    end
    object UGBodroIBQGIRISTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' Tutar'#305
      FieldName = 'GIRISTUTAR'
      Origin = 'STOKBODRO.GIRISTUTAR'
      DisplayFormat = '###,###'
    end
    object UGBodroIBQGIRISMATRAHI: TFloatField
      DisplayLabel = 'Giri'#351' Matrah'#305
      FieldName = 'GIRISMATRAHI'
      Origin = 'STOKBODRO.GIRISMATRAHI'
      DisplayFormat = '###,###'
    end
    object UGBodroIBQCIKISMATRAHI: TFloatField
      DisplayLabel = #199#305'k'#305#351' Matrah'#305
      FieldName = 'CIKISMATRAHI'
      Origin = 'STOKBODRO.CIKISMATRAHI'
      DisplayFormat = '###,###'
    end
    object UGBodroIBQISKONTO1: TFloatField
      DisplayLabel = #304'sk.1'
      FieldName = 'ISKONTO1'
      Origin = 'STOKBODRO.ISKONTO1'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object UGBodroIBQISKONTO2: TFloatField
      DisplayLabel = #304'sk.2'
      FieldName = 'ISKONTO2'
      Origin = 'STOKBODRO.ISKONTO2'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object UGBodroIBQISKONTO3: TFloatField
      DisplayLabel = #304'sk.3'
      FieldName = 'ISKONTO3'
      Origin = 'STOKBODRO.ISKONTO3'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object UGBodroIBQISKONTO4: TFloatField
      DisplayLabel = #304'sk.4'
      FieldName = 'ISKONTO4'
      Origin = 'STOKBODRO.ISKONTO4'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object UGBodroIBQKDVORANI: TFloatField
      DisplayLabel = 'Kdv Oran'#305
      FieldName = 'KDVORANI'
      Origin = 'STOKBODRO.KDVORANI'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object UGBodroIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'STOKBODRO.BAKIYE'
      DisplayFormat = '###,###'
    end
    object UGBodroIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'STOKBODRO.DURUM'
    end
    object UGBodroIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'STOKBODRO.ACIKLAMA'
      Size = 60
    end
    object UGBodroIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'STOKBODRO.KAPATMA'
    end
    object UGBodroIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'STOKBODRO.VADE'
    end
    object UGBodroIBQFATURANO: TIntegerField
      DisplayLabel = 'Fatura No'
      FieldName = 'FATURANO'
      Origin = 'STOKBODRO.FATURANO'
    end
    object UGBodroIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'STOKBODRO.STOKYERIKOD'
    end
    object UGBodroIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'STOKBODRO.ISLEMKURU'
    end
    object UGBodroIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'STOKBODRO.GELGITKOD'
      Size = 80
    end
    object UGBodroIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'STOKBODRO.PERSONELKOD'
    end
    object UGBodroIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'STOKBODRO.KULLANKOD'
    end
    object UGBodroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'STOKBODRO.SISTEM'
    end
    object UGBodroIBQEVRAKDURUMU: TIntegerField
      FieldName = 'EVRAKDURUMU'
      Origin = 'STOKBODRO.EVRAKDURUMU'
    end
    object UGBodroIBQSERINO: TIBStringField
      DisplayLabel = 'Seri No'
      FieldName = 'SERINO'
      Origin = 'STOKBODRO.SERINO'
      Size = 30
    end
    object UGBodroIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'STOKBODRO.CARIHESAPILISKI'
    end
    object UGBodroIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'STOKBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object UGBodroIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'STOKBODRO.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object UGBodroIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'STOKBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object UGBodroIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'STOKBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object UGBodroIBQC_REELGIRIS: TFloatField
      DisplayLabel = 'Reel Giri'#351
      FieldKind = fkInternalCalc
      FieldName = 'C_REELGIRIS'
      Origin = 'STOKBODRO.C_REELGIRIS'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object UGBodroIBQC_REELCIKIS: TFloatField
      DisplayLabel = 'Reel '#199#305'k'#305#351
      FieldKind = fkInternalCalc
      FieldName = 'C_REELCIKIS'
      Origin = 'STOKBODRO.C_REELCIKIS'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object UGBodroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'STOKBODRO.ISLEMKOD'
    end
    object UGBodroIBQKDVSECIM: TIBStringField
      DisplayLabel = 'KDV S.'
      FieldName = 'KDVSECIM'
      Origin = 'STOKBODRO.KDVSECIM'
      Size = 5
    end
    object UGBodroIBQC_TLGIRISTUTARI: TFloatField
      DisplayLabel = 'TL Giri'#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISTUTARI'
      Origin = 'STOKBODRO.C_TLGIRISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object UGBodroIBQC_TLGIRISMATRAHI: TFloatField
      DisplayLabel = 'TL Giri'#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISMATRAHI'
      Origin = 'STOKBODRO.C_TLGIRISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object UGBodroIBQC_TLCIKISTUTARI: TFloatField
      DisplayLabel = 'TL '#199#305'k'#305#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISTUTARI'
      Origin = 'STOKBODRO.C_TLCIKISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object UGBodroIBQC_TLCIKISMATRAHI: TFloatField
      DisplayLabel = 'TL '#199#305'k'#305#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISMATRAHI'
      Origin = 'STOKBODRO.C_TLCIKISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object UGBodroIBQC_TLBIRIMFIYAT: TFloatField
      DisplayLabel = 'TL Birim Fiyat'
      FieldKind = fkInternalCalc
      FieldName = 'C_TLBIRIMFIYAT'
      Origin = 'STOKBODRO.C_TLBIRIMFIYAT'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object UGBodroIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G.G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'STOKBODRO.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object UGBodroIBQC_GIRISKDVTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_GIRISKDVTUTAR'
      Origin = 'STOKBODRO.C_GIRISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object UGBodroIBQC_CIKISKDVTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CIKISKDVTUTAR'
      Origin = 'STOKBODRO.C_CIKISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object UGBodroIBQC_TLGIRISKDVTUTAR: TFloatField
      DisplayLabel = 'TL Giri'#351' KDV Tuatr'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISKDVTUTAR'
      Origin = 'STOKBODRO.C_TLGIRISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object UGBodroIBQC_TLCIKISKDVTUTARI: TFloatField
      DisplayLabel = 'TL '#199#305'k'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISKDVTUTARI'
      Origin = 'STOKBODRO.C_TLCIKISKDVTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
  end
  object UGBodroUSQL: TIBUpdateSQL
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
    Left = 440
    Top = 192
  end
  object UGBodroDS: TDataSource
    DataSet = UGBodroIBQ
    Left = 552
    Top = 192
  end
  object SayimEksigiIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = SayimEksigiIBQAfterPost
    OnNewRecord = SayimEksigiIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STOKISLEM'
      'where ISLEMTURKOD=40 AND SISTEM<>2')
    UpdateObject = SayimEksigiUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'STOKISLEM'
    Left = 320
    Top = 248
    object SayimEksigiIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'STOKISLEM.ISLEMKOD'
      Required = True
    end
    object SayimEksigiIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'STOKISLEM.CARIKOD'
    end
    object SayimEksigiIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'STOKISLEM.CARINO'
    end
    object SayimEksigiIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'STOKISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object SayimEksigiIBQSTOKISLEMNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'STOKISLEMNO'
      Origin = 'STOKISLEM.STOKISLEMNO'
    end
    object SayimEksigiIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'STOKISLEM.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object SayimEksigiIBQIRSALIYETARIH: TDateField
      DisplayLabel = #304'rsaliye Tarihi'
      FieldName = 'IRSALIYETARIH'
      Origin = 'STOKISLEM.IRSALIYETARIH'
      EditMask = '!99/99/00;1;_'
    end
    object SayimEksigiIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'STOKISLEM.SAAT'
      EditMask = '!90:00;1;_'
    end
    object SayimEksigiIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'STOKISLEM.ACIKLAMA'
      Size = 80
    end
    object SayimEksigiIBQGIRISTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' Tutar'#305
      FieldName = 'GIRISTUTAR'
      Origin = 'STOKISLEM.GIRISTUTAR'
      DisplayFormat = '###,###'
    end
    object SayimEksigiIBQCIKISTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Tutar'#305
      FieldName = 'CIKISTUTAR'
      Origin = 'STOKISLEM.CIKISTUTAR'
      DisplayFormat = '###,###'
    end
    object SayimEksigiIBQGIRISMATRAH: TFloatField
      DisplayLabel = 'Giri'#351' Matrah'#305
      FieldName = 'GIRISMATRAH'
      Origin = 'STOKISLEM.GIRISMATRAH'
      DisplayFormat = '###,###'
    end
    object SayimEksigiIBQGIRISKDVTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' KDV Tutar'#305
      FieldName = 'GIRISKDVTUTAR'
      Origin = 'STOKISLEM.GIRISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object SayimEksigiIBQCIKISMATRAH: TFloatField
      DisplayLabel = #199#305'k'#305#351' Matrah'#305
      FieldName = 'CIKISMATRAH'
      Origin = 'STOKISLEM.CIKISMATRAH'
      DisplayFormat = '###,###'
    end
    object SayimEksigiIBQCIKISKDVTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' KDV Tutar'#305
      FieldName = 'CIKISKDVTUTAR'
      Origin = 'STOKISLEM.CIKISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object SayimEksigiIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'STOKISLEM.CARIKURU'
      DisplayFormat = '###,###'
    end
    object SayimEksigiIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'STOKISLEM.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object SayimEksigiIBQKAPATMA: TIntegerField
      DisplayLabel = 'Kapatma'
      FieldName = 'KAPATMA'
      Origin = 'STOKISLEM.KAPATMA'
    end
    object SayimEksigiIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'STOKISLEM.VADE'
    end
    object SayimEksigiIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'STOKISLEM.GELGITKOD'
      Size = 80
    end
    object SayimEksigiIBQEVRAKNO: TIntegerField
      DisplayLabel = 'Evrak No'
      FieldName = 'EVRAKNO'
      Origin = 'STOKISLEM.EVRAKNO'
    end
    object SayimEksigiIBQBELGENO: TIntegerField
      DisplayLabel = 'Belge No'
      FieldName = 'BELGENO'
      Origin = 'STOKISLEM.BELGENO'
    end
    object SayimEksigiIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'STOKISLEM.BAGLANTINO'
    end
    object SayimEksigiIBQCARIHESAPILISKI: TIntegerField
      DisplayLabel = 'Cari '#304'li'#351'ki'
      FieldName = 'CARIHESAPILISKI'
      Origin = 'STOKISLEM.CARIHESAPILISKI'
    end
    object SayimEksigiIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'STOKISLEM.PARABIRIMKOD'
    end
    object SayimEksigiIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'STOKISLEM.STOKYERIKOD'
    end
    object SayimEksigiIBQMAKBUZNO: TIntegerField
      DisplayLabel = 'Makbuz No'
      FieldName = 'MAKBUZNO'
      Origin = 'STOKISLEM.MAKBUZNO'
    end
    object SayimEksigiIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'STOKISLEM.BILGIKOD'
    end
    object SayimEksigiIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'STOKISLEM.KULLANKOD'
    end
    object SayimEksigiIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'STOKISLEM.PERSONELKOD'
    end
    object SayimEksigiIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'STOKISLEM.SISTEM'
    end
    object SayimEksigiIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'STOKISLEM.CARIPARABIRIMKOD'
    end
    object SayimEksigiIBQC_CARIPARABIRIM: TIBStringField
      DisplayLabel = 'Cari P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'STOKISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object SayimEksigiIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'STOKISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object SayimEksigiIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'STOKISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object SayimEksigiIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'STOKISLEM.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object SayimEksigiIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'STOKISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object SayimEksigiIBQC_PERSONEL: TIBStringField
      DisplayLabel = 'Personel'
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'STOKISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object SayimEksigiIBQFATURATARIH: TDateField
      DisplayLabel = 'Fatura Tarihi'
      FieldName = 'FATURATARIH'
      Origin = 'STOKISLEM.FATURATARIH'
    end
    object SayimEksigiIBQKDVSECIM: TIBStringField
      FieldName = 'KDVSECIM'
      Origin = 'STOKISLEM.KDVSECIM'
      Size = 5
    end
    object SayimEksigiIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'Gelir Gider Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'STOKISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object SayimEksigiIBQIRSALIYENO: TIntegerField
      DisplayLabel = #304'resaliye No'
      FieldName = 'IRSALIYENO'
      Origin = 'STOKISLEM.IRSALIYENO'
    end
    object SayimEksigiIBQEVRAKTARIH: TDateField
      DisplayLabel = 'Evrak Tarihi'
      FieldName = 'EVRAKTARIH'
      Origin = 'STOKISLEM.EVRAKTARIH'
      EditMask = '!99/99/00;1;_'
    end
    object SayimEksigiIBQD_GIRISTUTAR: TFloatField
      DisplayLabel = 'D. Giri'#351' Tutar'#305
      FieldName = 'D_GIRISTUTAR'
      Origin = 'STOKISLEM.D_GIRISTUTAR'
      DisplayFormat = '###,###'
    end
    object SayimEksigiIBQD_GIRISKDVTUTAR: TFloatField
      DisplayLabel = 'D. Giri'#351' KDV Tutar'#305
      FieldName = 'D_GIRISKDVTUTAR'
      Origin = 'STOKISLEM.D_GIRISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object SayimEksigiIBQD_GIRISMATRAH: TFloatField
      DisplayLabel = 'D. Giri'#351' Matrah'#305
      FieldName = 'D_GIRISMATRAH'
      Origin = 'STOKISLEM.D_GIRISMATRAH'
      DisplayFormat = '###,###'
    end
    object SayimEksigiIBQD_CIKISTUTAR: TFloatField
      DisplayLabel = 'D. '#199#305'k'#305#351' Tutar'#305
      FieldName = 'D_CIKISTUTAR'
      Origin = 'STOKISLEM.D_CIKISTUTAR'
      DisplayFormat = '###,###'
    end
    object SayimEksigiIBQD_CIKISKDVTUTAR: TFloatField
      DisplayLabel = 'D. '#199#305'k'#305#351' KDV Tutar'#305
      FieldName = 'D_CIKISKDVTUTAR'
      Origin = 'STOKISLEM.D_CIKISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object SayimEksigiIBQD_CIKISMATRAH: TFloatField
      DisplayLabel = 'D. '#199#305'k'#305#351' Matrah'#305
      FieldName = 'D_CIKISMATRAH'
      Origin = 'STOKISLEM.D_CIKISMATRAH'
      DisplayFormat = '###,###'
    end
    object SayimEksigiIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'STOKISLEM.ISLEMTUR'
      Size = 40
    end
  end
  object SayimEksigiUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  CARIKOD,'
      '  CARINO,'
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
      'from STOKISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update STOKISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  CARIKOD = :CARIKOD,'
      '  CARINO = :CARINO,'
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
      'insert into STOKISLEM'
      
        '  (ISLEMKOD, ISLEMTUR, CARIKOD, CARINO, STOKISLEMNO, TARIH, IRSA' +
        'LIYETARIH, '
      
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
      
        '  (:ISLEMKOD, :ISLEMTUR, :CARIKOD, :CARINO, :STOKISLEMNO, :TARIH' +
        ', :IRSALIYETARIH, '
      
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
      'delete from STOKISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 440
    Top = 248
  end
  object SayimEksigiDS: TDataSource
    DataSet = SayimEksigiIBQ
    Left = 552
    Top = 248
  end
  object SEBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = SEBodroIBQAfterPost
    OnNewRecord = SEBodroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = SayimEksigiDS
    SQL.Strings = (
      'select * from STOKBODRO'
      'Where ISLEMKOD=:ISLEMKOD')
    UpdateObject = SEBodroUSQL
    GeneratorField.Field = 'BODROKOD'
    GeneratorField.Generator = 'STOKBODRO'
    Left = 320
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SEBodroIBQBODROKOD: TIntegerField
      FieldName = 'BODROKOD'
      Origin = 'STOKBODRO.BODROKOD'
      Required = True
    end
    object SEBodroIBQSIRANO: TIntegerField
      DisplayLabel = 'S'#305'ra No'
      FieldName = 'SIRANO'
      Origin = 'STOKBODRO.SIRANO'
    end
    object SEBodroIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'STOKBODRO.ISLEMTUR'
      Size = 40
    end
    object SEBodroIBQC_ISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_ISLEMTURKOD'
      Origin = 'STOKBODRO.C_ISLEMTURKOD'
      ReadOnly = True
    end
    object SEBodroIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'STOKBODRO.CARIKOD'
    end
    object SEBodroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'STOKBODRO.PARABIRIMKOD'
    end
    object SEBodroIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'STOKBODRO.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object SEBodroIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'STOKBODRO.STOKKOD'
    end
    object SEBodroIBQSTOKNO: TIntegerField
      DisplayLabel = 'Stok No'
      FieldName = 'STOKNO'
      Origin = 'STOKBODRO.STOKNO'
    end
    object SEBodroIBQBARKOD: TIBStringField
      DisplayLabel = 'Barkod'
      FieldName = 'BARKOD'
      Origin = 'STOKBODRO.BARKOD'
      OnChange = SEBodroIBQBARKODChange
      Size = 25
    end
    object SEBodroIBQSTOKADI: TIBStringField
      DisplayLabel = 'Stok Ad'#305
      FieldName = 'STOKADI'
      Origin = 'STOKBODRO.STOKADI'
      Size = 80
    end
    object SEBodroIBQMIKTAR: TFloatField
      DisplayLabel = 'Miktar'
      FieldName = 'MIKTAR'
      Origin = 'STOKBODRO.MIKTAR'
      DisplayFormat = '###,###'
    end
    object SEBodroIBQMIKTARCARPAN: TIntegerField
      DisplayLabel = 'M. '#199'arpan'#305
      FieldName = 'MIKTARCARPAN'
      Origin = 'STOKBODRO.MIKTARCARPAN'
      DisplayFormat = '###,###'
    end
    object SEBodroIBQGIRISMIKTAR: TFloatField
      DisplayLabel = 'Giri'#351' Miktar'#305
      FieldName = 'GIRISMIKTAR'
      Origin = 'STOKBODRO.GIRISMIKTAR'
      DisplayFormat = '###,###'
    end
    object SEBodroIBQCIKISMIKTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Miktar'#305
      FieldName = 'CIKISMIKTAR'
      Origin = 'STOKBODRO.CIKISMIKTAR'
      DisplayFormat = '###,###'
    end
    object SEBodroIBQBIRIM: TIBStringField
      DisplayLabel = 'Birim'
      FieldName = 'BIRIM'
      Origin = 'STOKBODRO.BIRIM'
      Size = 10
    end
    object SEBodroIBQBIRIMFIYAT: TFloatField
      DisplayLabel = 'Birim Fiyat'
      FieldName = 'BIRIMFIYAT'
      Origin = 'STOKBODRO.BIRIMFIYAT'
      DisplayFormat = '###,###'
    end
    object SEBodroIBQGIRISFIYAT: TFloatField
      DisplayLabel = 'Giri'#351' Fiyat'#305
      FieldName = 'GIRISFIYAT'
      Origin = 'STOKBODRO.GIRISFIYAT'
      DisplayFormat = '###,###'
    end
    object SEBodroIBQCIKISFIYAT: TFloatField
      DisplayLabel = #199#305'k'#305#351' Fiyat'#305
      FieldName = 'CIKISFIYAT'
      Origin = 'STOKBODRO.CIKISFIYAT'
      DisplayFormat = '###,###'
    end
    object SEBodroIBQCIKISTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Tutar'#305
      FieldName = 'CIKISTUTAR'
      Origin = 'STOKBODRO.CIKISTUTAR'
      DisplayFormat = '###,###'
    end
    object SEBodroIBQGIRISTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' Tutar'#305
      FieldName = 'GIRISTUTAR'
      Origin = 'STOKBODRO.GIRISTUTAR'
      DisplayFormat = '###,###'
    end
    object SEBodroIBQGIRISMATRAHI: TFloatField
      DisplayLabel = 'Giri'#351' Matrah'#305
      FieldName = 'GIRISMATRAHI'
      Origin = 'STOKBODRO.GIRISMATRAHI'
      DisplayFormat = '###,###'
    end
    object SEBodroIBQCIKISMATRAHI: TFloatField
      DisplayLabel = #199#305'k'#305#351' Matrah'#305
      FieldName = 'CIKISMATRAHI'
      Origin = 'STOKBODRO.CIKISMATRAHI'
      DisplayFormat = '###,###'
    end
    object SEBodroIBQISKONTO1: TFloatField
      DisplayLabel = #304'sk.1'
      FieldName = 'ISKONTO1'
      Origin = 'STOKBODRO.ISKONTO1'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object SEBodroIBQISKONTO2: TFloatField
      DisplayLabel = #304'sk.2'
      FieldName = 'ISKONTO2'
      Origin = 'STOKBODRO.ISKONTO2'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object SEBodroIBQISKONTO3: TFloatField
      DisplayLabel = #304'sk.3'
      FieldName = 'ISKONTO3'
      Origin = 'STOKBODRO.ISKONTO3'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object SEBodroIBQISKONTO4: TFloatField
      DisplayLabel = #304'sk.4'
      FieldName = 'ISKONTO4'
      Origin = 'STOKBODRO.ISKONTO4'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object SEBodroIBQKDVORANI: TFloatField
      DisplayLabel = 'Kdv Oran'#305
      FieldName = 'KDVORANI'
      Origin = 'STOKBODRO.KDVORANI'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object SEBodroIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'STOKBODRO.BAKIYE'
      DisplayFormat = '###,###'
    end
    object SEBodroIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'STOKBODRO.DURUM'
    end
    object SEBodroIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'STOKBODRO.ACIKLAMA'
      Size = 60
    end
    object SEBodroIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'STOKBODRO.KAPATMA'
    end
    object SEBodroIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'STOKBODRO.VADE'
    end
    object SEBodroIBQFATURANO: TIntegerField
      DisplayLabel = 'Fatura No'
      FieldName = 'FATURANO'
      Origin = 'STOKBODRO.FATURANO'
    end
    object SEBodroIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'STOKBODRO.STOKYERIKOD'
    end
    object SEBodroIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'STOKBODRO.ISLEMKURU'
    end
    object SEBodroIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'STOKBODRO.GELGITKOD'
      Size = 80
    end
    object SEBodroIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'STOKBODRO.PERSONELKOD'
    end
    object SEBodroIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'STOKBODRO.KULLANKOD'
    end
    object SEBodroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'STOKBODRO.SISTEM'
    end
    object SEBodroIBQEVRAKDURUMU: TIntegerField
      FieldName = 'EVRAKDURUMU'
      Origin = 'STOKBODRO.EVRAKDURUMU'
    end
    object SEBodroIBQSERINO: TIBStringField
      DisplayLabel = 'Seri No'
      FieldName = 'SERINO'
      Origin = 'STOKBODRO.SERINO'
      Size = 30
    end
    object SEBodroIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'STOKBODRO.CARIHESAPILISKI'
    end
    object SEBodroIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'STOKBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object SEBodroIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'STOKBODRO.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object SEBodroIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'STOKBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object SEBodroIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'STOKBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object SEBodroIBQC_REELGIRIS: TFloatField
      DisplayLabel = 'Reel Giri'#351
      FieldKind = fkInternalCalc
      FieldName = 'C_REELGIRIS'
      Origin = 'STOKBODRO.C_REELGIRIS'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SEBodroIBQC_REELCIKIS: TFloatField
      DisplayLabel = 'Reel '#199#305'k'#305#351
      FieldKind = fkInternalCalc
      FieldName = 'C_REELCIKIS'
      Origin = 'STOKBODRO.C_REELCIKIS'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SEBodroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'STOKBODRO.ISLEMKOD'
    end
    object SEBodroIBQKDVSECIM: TIBStringField
      DisplayLabel = 'KDV S.'
      FieldName = 'KDVSECIM'
      Origin = 'STOKBODRO.KDVSECIM'
      Size = 5
    end
    object SEBodroIBQC_TLGIRISTUTARI: TFloatField
      DisplayLabel = 'TL Giri'#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISTUTARI'
      Origin = 'STOKBODRO.C_TLGIRISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SEBodroIBQC_TLGIRISMATRAHI: TFloatField
      DisplayLabel = 'TL Giri'#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISMATRAHI'
      Origin = 'STOKBODRO.C_TLGIRISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SEBodroIBQC_TLCIKISTUTARI: TFloatField
      DisplayLabel = 'TL '#199#305'k'#305#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISTUTARI'
      Origin = 'STOKBODRO.C_TLCIKISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SEBodroIBQC_TLCIKISMATRAHI: TFloatField
      DisplayLabel = 'TL '#199#305'k'#305#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISMATRAHI'
      Origin = 'STOKBODRO.C_TLCIKISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SEBodroIBQC_TLBIRIMFIYAT: TFloatField
      DisplayLabel = 'TL Birim Fiyat'
      FieldKind = fkInternalCalc
      FieldName = 'C_TLBIRIMFIYAT'
      Origin = 'STOKBODRO.C_TLBIRIMFIYAT'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SEBodroIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G.G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'STOKBODRO.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object SEBodroIBQC_GIRISKDVTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_GIRISKDVTUTAR'
      Origin = 'STOKBODRO.C_GIRISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SEBodroIBQC_CIKISKDVTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CIKISKDVTUTAR'
      Origin = 'STOKBODRO.C_CIKISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SEBodroIBQC_TLGIRISKDVTUTAR: TFloatField
      DisplayLabel = 'TL Giri'#351' KDV Tuatr'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISKDVTUTAR'
      Origin = 'STOKBODRO.C_TLGIRISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SEBodroIBQC_TLCIKISKDVTUTARI: TFloatField
      DisplayLabel = 'TL '#199#305'k'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISKDVTUTARI'
      Origin = 'STOKBODRO.C_TLCIKISKDVTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
  end
  object SEBodroUSQL: TIBUpdateSQL
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
    Left = 440
    Top = 304
  end
  object SEBodroDS: TDataSource
    DataSet = SEBodroIBQ
    Left = 552
    Top = 304
  end
  object SarfIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = SarfIBQAfterPost
    OnNewRecord = SarfIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STOKISLEM'
      'where ISLEMTURKOD=36 AND SISTEM<>2')
    UpdateObject = SarfUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'STOKISLEM'
    Left = 320
    Top = 360
    object SarfIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'STOKISLEM.ISLEMKOD'
      Required = True
    end
    object SarfIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'STOKISLEM.CARIKOD'
    end
    object SarfIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'STOKISLEM.CARINO'
    end
    object SarfIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'STOKISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object SarfIBQSTOKISLEMNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'STOKISLEMNO'
      Origin = 'STOKISLEM.STOKISLEMNO'
    end
    object SarfIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'STOKISLEM.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object SarfIBQIRSALIYETARIH: TDateField
      DisplayLabel = #304'rsaliye Tarihi'
      FieldName = 'IRSALIYETARIH'
      Origin = 'STOKISLEM.IRSALIYETARIH'
      EditMask = '!99/99/00;1;_'
    end
    object SarfIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'STOKISLEM.SAAT'
      EditMask = '!90:00;1;_'
    end
    object SarfIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'STOKISLEM.ACIKLAMA'
      Size = 80
    end
    object SarfIBQGIRISTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' Tutar'#305
      FieldName = 'GIRISTUTAR'
      Origin = 'STOKISLEM.GIRISTUTAR'
      DisplayFormat = '###,###'
    end
    object SarfIBQCIKISTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Tutar'#305
      FieldName = 'CIKISTUTAR'
      Origin = 'STOKISLEM.CIKISTUTAR'
      DisplayFormat = '###,###'
    end
    object SarfIBQGIRISMATRAH: TFloatField
      DisplayLabel = 'Giri'#351' Matrah'#305
      FieldName = 'GIRISMATRAH'
      Origin = 'STOKISLEM.GIRISMATRAH'
      DisplayFormat = '###,###'
    end
    object SarfIBQGIRISKDVTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' KDV Tutar'#305
      FieldName = 'GIRISKDVTUTAR'
      Origin = 'STOKISLEM.GIRISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object SarfIBQCIKISMATRAH: TFloatField
      DisplayLabel = #199#305'k'#305#351' Matrah'#305
      FieldName = 'CIKISMATRAH'
      Origin = 'STOKISLEM.CIKISMATRAH'
      DisplayFormat = '###,###'
    end
    object SarfIBQCIKISKDVTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' KDV Tutar'#305
      FieldName = 'CIKISKDVTUTAR'
      Origin = 'STOKISLEM.CIKISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object SarfIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'STOKISLEM.CARIKURU'
      DisplayFormat = '###,###'
    end
    object SarfIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'STOKISLEM.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object SarfIBQKAPATMA: TIntegerField
      DisplayLabel = 'Kapatma'
      FieldName = 'KAPATMA'
      Origin = 'STOKISLEM.KAPATMA'
    end
    object SarfIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'STOKISLEM.VADE'
    end
    object SarfIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'STOKISLEM.GELGITKOD'
      Size = 80
    end
    object SarfIBQEVRAKNO: TIntegerField
      DisplayLabel = 'Evrak No'
      FieldName = 'EVRAKNO'
      Origin = 'STOKISLEM.EVRAKNO'
    end
    object SarfIBQBELGENO: TIntegerField
      DisplayLabel = 'Belge No'
      FieldName = 'BELGENO'
      Origin = 'STOKISLEM.BELGENO'
    end
    object SarfIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'STOKISLEM.BAGLANTINO'
    end
    object SarfIBQCARIHESAPILISKI: TIntegerField
      DisplayLabel = 'Cari '#304'li'#351'ki'
      FieldName = 'CARIHESAPILISKI'
      Origin = 'STOKISLEM.CARIHESAPILISKI'
    end
    object SarfIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'STOKISLEM.PARABIRIMKOD'
    end
    object SarfIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'STOKISLEM.STOKYERIKOD'
    end
    object SarfIBQMAKBUZNO: TIntegerField
      DisplayLabel = 'Makbuz No'
      FieldName = 'MAKBUZNO'
      Origin = 'STOKISLEM.MAKBUZNO'
    end
    object SarfIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'STOKISLEM.BILGIKOD'
    end
    object SarfIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'STOKISLEM.KULLANKOD'
    end
    object SarfIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'STOKISLEM.PERSONELKOD'
    end
    object SarfIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'STOKISLEM.SISTEM'
    end
    object SarfIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'STOKISLEM.CARIPARABIRIMKOD'
    end
    object SarfIBQC_CARIPARABIRIM: TIBStringField
      DisplayLabel = 'Cari P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'STOKISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object SarfIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'STOKISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object SarfIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'STOKISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object SarfIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'STOKISLEM.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object SarfIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'STOKISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object SarfIBQC_PERSONEL: TIBStringField
      DisplayLabel = 'Personel'
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'STOKISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object SarfIBQFATURATARIH: TDateField
      DisplayLabel = 'Fatura Tarihi'
      FieldName = 'FATURATARIH'
      Origin = 'STOKISLEM.FATURATARIH'
    end
    object SarfIBQKDVSECIM: TIBStringField
      FieldName = 'KDVSECIM'
      Origin = 'STOKISLEM.KDVSECIM'
      Size = 5
    end
    object SarfIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'Gelir Gider Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'STOKISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object SarfIBQIRSALIYENO: TIntegerField
      DisplayLabel = #304'resaliye No'
      FieldName = 'IRSALIYENO'
      Origin = 'STOKISLEM.IRSALIYENO'
    end
    object SarfIBQEVRAKTARIH: TDateField
      DisplayLabel = 'Evrak Tarihi'
      FieldName = 'EVRAKTARIH'
      Origin = 'STOKISLEM.EVRAKTARIH'
      EditMask = '!99/99/00;1;_'
    end
    object SarfIBQD_GIRISTUTAR: TFloatField
      DisplayLabel = 'D. Giri'#351' Tutar'#305
      FieldName = 'D_GIRISTUTAR'
      Origin = 'STOKISLEM.D_GIRISTUTAR'
      DisplayFormat = '###,###'
    end
    object SarfIBQD_GIRISKDVTUTAR: TFloatField
      DisplayLabel = 'D. Giri'#351' KDV Tutar'#305
      FieldName = 'D_GIRISKDVTUTAR'
      Origin = 'STOKISLEM.D_GIRISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object SarfIBQD_GIRISMATRAH: TFloatField
      DisplayLabel = 'D. Giri'#351' Matrah'#305
      FieldName = 'D_GIRISMATRAH'
      Origin = 'STOKISLEM.D_GIRISMATRAH'
      DisplayFormat = '###,###'
    end
    object SarfIBQD_CIKISTUTAR: TFloatField
      DisplayLabel = 'D. '#199#305'k'#305#351' Tutar'#305
      FieldName = 'D_CIKISTUTAR'
      Origin = 'STOKISLEM.D_CIKISTUTAR'
      DisplayFormat = '###,###'
    end
    object SarfIBQD_CIKISKDVTUTAR: TFloatField
      DisplayLabel = 'D. '#199#305'k'#305#351' KDV Tutar'#305
      FieldName = 'D_CIKISKDVTUTAR'
      Origin = 'STOKISLEM.D_CIKISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object SarfIBQD_CIKISMATRAH: TFloatField
      DisplayLabel = 'D. '#199#305'k'#305#351' Matrah'#305
      FieldName = 'D_CIKISMATRAH'
      Origin = 'STOKISLEM.D_CIKISMATRAH'
      DisplayFormat = '###,###'
    end
    object SarfIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'STOKISLEM.ISLEMTUR'
      Size = 40
    end
  end
  object SarfUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  CARIKOD,'
      '  CARINO,'
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
      'from STOKISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update STOKISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  CARIKOD = :CARIKOD,'
      '  CARINO = :CARINO,'
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
      'insert into STOKISLEM'
      
        '  (ISLEMKOD, ISLEMTUR, CARIKOD, CARINO, STOKISLEMNO, TARIH, IRSA' +
        'LIYETARIH, '
      
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
      
        '  (:ISLEMKOD, :ISLEMTUR, :CARIKOD, :CARINO, :STOKISLEMNO, :TARIH' +
        ', :IRSALIYETARIH, '
      
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
      'delete from STOKISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 440
    Top = 360
  end
  object SarfDS: TDataSource
    DataSet = SarfIBQ
    Left = 552
    Top = 360
  end
  object SarfBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = SarfBodroIBQAfterPost
    OnNewRecord = SarfBodroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = SarfDS
    SQL.Strings = (
      'select * from STOKBODRO'
      'Where ISLEMKOD=:ISLEMKOD')
    UpdateObject = SarfBodroUSQL
    GeneratorField.Field = 'BODROKOD'
    GeneratorField.Generator = 'STOKBODRO'
    Left = 320
    Top = 416
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SarfBodroIBQBODROKOD: TIntegerField
      FieldName = 'BODROKOD'
      Origin = 'STOKBODRO.BODROKOD'
      Required = True
    end
    object SarfBodroIBQSIRANO: TIntegerField
      DisplayLabel = 'S'#305'ra No'
      FieldName = 'SIRANO'
      Origin = 'STOKBODRO.SIRANO'
    end
    object SarfBodroIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'STOKBODRO.ISLEMTUR'
      Size = 40
    end
    object SarfBodroIBQC_ISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_ISLEMTURKOD'
      Origin = 'STOKBODRO.C_ISLEMTURKOD'
      ReadOnly = True
    end
    object SarfBodroIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'STOKBODRO.CARIKOD'
    end
    object SarfBodroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'STOKBODRO.PARABIRIMKOD'
    end
    object SarfBodroIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'STOKBODRO.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object SarfBodroIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'STOKBODRO.STOKKOD'
    end
    object SarfBodroIBQSTOKNO: TIntegerField
      DisplayLabel = 'Stok No'
      FieldName = 'STOKNO'
      Origin = 'STOKBODRO.STOKNO'
    end
    object SarfBodroIBQBARKOD: TIBStringField
      DisplayLabel = 'Barkod'
      FieldName = 'BARKOD'
      Origin = 'STOKBODRO.BARKOD'
      OnChange = SarfBodroIBQBARKODChange
      Size = 25
    end
    object SarfBodroIBQSTOKADI: TIBStringField
      DisplayLabel = 'Stok Ad'#305
      FieldName = 'STOKADI'
      Origin = 'STOKBODRO.STOKADI'
      Size = 80
    end
    object SarfBodroIBQMIKTAR: TFloatField
      DisplayLabel = 'Miktar'
      FieldName = 'MIKTAR'
      Origin = 'STOKBODRO.MIKTAR'
      DisplayFormat = '###,###'
    end
    object SarfBodroIBQMIKTARCARPAN: TIntegerField
      DisplayLabel = 'M. '#199'arpan'#305
      FieldName = 'MIKTARCARPAN'
      Origin = 'STOKBODRO.MIKTARCARPAN'
      DisplayFormat = '###,###'
    end
    object SarfBodroIBQGIRISMIKTAR: TFloatField
      DisplayLabel = 'Giri'#351' Miktar'#305
      FieldName = 'GIRISMIKTAR'
      Origin = 'STOKBODRO.GIRISMIKTAR'
      DisplayFormat = '###,###'
    end
    object SarfBodroIBQCIKISMIKTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Miktar'#305
      FieldName = 'CIKISMIKTAR'
      Origin = 'STOKBODRO.CIKISMIKTAR'
      DisplayFormat = '###,###'
    end
    object SarfBodroIBQBIRIM: TIBStringField
      DisplayLabel = 'Birim'
      FieldName = 'BIRIM'
      Origin = 'STOKBODRO.BIRIM'
      Size = 10
    end
    object SarfBodroIBQBIRIMFIYAT: TFloatField
      DisplayLabel = 'Birim Fiyat'
      FieldName = 'BIRIMFIYAT'
      Origin = 'STOKBODRO.BIRIMFIYAT'
      DisplayFormat = '###,###'
    end
    object SarfBodroIBQGIRISFIYAT: TFloatField
      DisplayLabel = 'Giri'#351' Fiyat'#305
      FieldName = 'GIRISFIYAT'
      Origin = 'STOKBODRO.GIRISFIYAT'
      DisplayFormat = '###,###'
    end
    object SarfBodroIBQCIKISFIYAT: TFloatField
      DisplayLabel = #199#305'k'#305#351' Fiyat'#305
      FieldName = 'CIKISFIYAT'
      Origin = 'STOKBODRO.CIKISFIYAT'
      DisplayFormat = '###,###'
    end
    object SarfBodroIBQCIKISTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Tutar'#305
      FieldName = 'CIKISTUTAR'
      Origin = 'STOKBODRO.CIKISTUTAR'
      DisplayFormat = '###,###'
    end
    object SarfBodroIBQGIRISTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' Tutar'#305
      FieldName = 'GIRISTUTAR'
      Origin = 'STOKBODRO.GIRISTUTAR'
      DisplayFormat = '###,###'
    end
    object SarfBodroIBQGIRISMATRAHI: TFloatField
      DisplayLabel = 'Giri'#351' Matrah'#305
      FieldName = 'GIRISMATRAHI'
      Origin = 'STOKBODRO.GIRISMATRAHI'
      DisplayFormat = '###,###'
    end
    object SarfBodroIBQCIKISMATRAHI: TFloatField
      DisplayLabel = #199#305'k'#305#351' Matrah'#305
      FieldName = 'CIKISMATRAHI'
      Origin = 'STOKBODRO.CIKISMATRAHI'
      DisplayFormat = '###,###'
    end
    object SarfBodroIBQISKONTO1: TFloatField
      DisplayLabel = #304'sk.1'
      FieldName = 'ISKONTO1'
      Origin = 'STOKBODRO.ISKONTO1'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object SarfBodroIBQISKONTO2: TFloatField
      DisplayLabel = #304'sk.2'
      FieldName = 'ISKONTO2'
      Origin = 'STOKBODRO.ISKONTO2'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object SarfBodroIBQISKONTO3: TFloatField
      DisplayLabel = #304'sk.3'
      FieldName = 'ISKONTO3'
      Origin = 'STOKBODRO.ISKONTO3'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object SarfBodroIBQISKONTO4: TFloatField
      DisplayLabel = #304'sk.4'
      FieldName = 'ISKONTO4'
      Origin = 'STOKBODRO.ISKONTO4'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object SarfBodroIBQKDVORANI: TFloatField
      DisplayLabel = 'Kdv Oran'#305
      FieldName = 'KDVORANI'
      Origin = 'STOKBODRO.KDVORANI'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object SarfBodroIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'STOKBODRO.BAKIYE'
      DisplayFormat = '###,###'
    end
    object SarfBodroIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'STOKBODRO.DURUM'
    end
    object SarfBodroIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'STOKBODRO.ACIKLAMA'
      Size = 60
    end
    object SarfBodroIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'STOKBODRO.KAPATMA'
    end
    object SarfBodroIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'STOKBODRO.VADE'
    end
    object SarfBodroIBQFATURANO: TIntegerField
      DisplayLabel = 'Fatura No'
      FieldName = 'FATURANO'
      Origin = 'STOKBODRO.FATURANO'
    end
    object SarfBodroIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'STOKBODRO.STOKYERIKOD'
    end
    object SarfBodroIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'STOKBODRO.ISLEMKURU'
    end
    object SarfBodroIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'STOKBODRO.GELGITKOD'
      Size = 80
    end
    object SarfBodroIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'STOKBODRO.PERSONELKOD'
    end
    object SarfBodroIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'STOKBODRO.KULLANKOD'
    end
    object SarfBodroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'STOKBODRO.SISTEM'
    end
    object SarfBodroIBQEVRAKDURUMU: TIntegerField
      FieldName = 'EVRAKDURUMU'
      Origin = 'STOKBODRO.EVRAKDURUMU'
    end
    object SarfBodroIBQSERINO: TIBStringField
      DisplayLabel = 'Seri No'
      FieldName = 'SERINO'
      Origin = 'STOKBODRO.SERINO'
      Size = 30
    end
    object SarfBodroIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'STOKBODRO.CARIHESAPILISKI'
    end
    object SarfBodroIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'STOKBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object SarfBodroIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'STOKBODRO.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object SarfBodroIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'STOKBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object SarfBodroIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'STOKBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object SarfBodroIBQC_REELGIRIS: TFloatField
      DisplayLabel = 'Reel Giri'#351
      FieldKind = fkInternalCalc
      FieldName = 'C_REELGIRIS'
      Origin = 'STOKBODRO.C_REELGIRIS'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SarfBodroIBQC_REELCIKIS: TFloatField
      DisplayLabel = 'Reel '#199#305'k'#305#351
      FieldKind = fkInternalCalc
      FieldName = 'C_REELCIKIS'
      Origin = 'STOKBODRO.C_REELCIKIS'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SarfBodroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'STOKBODRO.ISLEMKOD'
    end
    object SarfBodroIBQKDVSECIM: TIBStringField
      DisplayLabel = 'KDV S.'
      FieldName = 'KDVSECIM'
      Origin = 'STOKBODRO.KDVSECIM'
      Size = 5
    end
    object SarfBodroIBQC_TLGIRISTUTARI: TFloatField
      DisplayLabel = 'TL Giri'#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISTUTARI'
      Origin = 'STOKBODRO.C_TLGIRISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SarfBodroIBQC_TLGIRISMATRAHI: TFloatField
      DisplayLabel = 'TL Giri'#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISMATRAHI'
      Origin = 'STOKBODRO.C_TLGIRISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SarfBodroIBQC_TLCIKISTUTARI: TFloatField
      DisplayLabel = 'TL '#199#305'k'#305#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISTUTARI'
      Origin = 'STOKBODRO.C_TLCIKISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SarfBodroIBQC_TLCIKISMATRAHI: TFloatField
      DisplayLabel = 'TL '#199#305'k'#305#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISMATRAHI'
      Origin = 'STOKBODRO.C_TLCIKISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SarfBodroIBQC_TLBIRIMFIYAT: TFloatField
      DisplayLabel = 'TL Birim Fiyat'
      FieldKind = fkInternalCalc
      FieldName = 'C_TLBIRIMFIYAT'
      Origin = 'STOKBODRO.C_TLBIRIMFIYAT'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SarfBodroIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G.G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'STOKBODRO.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object SarfBodroIBQC_GIRISKDVTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_GIRISKDVTUTAR'
      Origin = 'STOKBODRO.C_GIRISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SarfBodroIBQC_CIKISKDVTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CIKISKDVTUTAR'
      Origin = 'STOKBODRO.C_CIKISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SarfBodroIBQC_TLGIRISKDVTUTAR: TFloatField
      DisplayLabel = 'TL Giri'#351' KDV Tuatr'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISKDVTUTAR'
      Origin = 'STOKBODRO.C_TLGIRISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SarfBodroIBQC_TLCIKISKDVTUTARI: TFloatField
      DisplayLabel = 'TL '#199#305'k'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISKDVTUTARI'
      Origin = 'STOKBODRO.C_TLCIKISKDVTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
  end
  object SarfBodroUSQL: TIBUpdateSQL
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
    Left = 440
    Top = 416
  end
  object SarfBodroDS: TDataSource
    DataSet = SarfBodroIBQ
    Left = 552
    Top = 416
  end
  object FireIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = FireIBQAfterPost
    OnNewRecord = FireIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STOKISLEM'
      'where ISLEMTURKOD=54 AND SISTEM<>2')
    UpdateObject = FireUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'STOKISLEM'
    Left = 32
    Top = 408
    object FireIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'STOKISLEM.ISLEMKOD'
      Required = True
    end
    object FireIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'STOKISLEM.CARIKOD'
    end
    object FireIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'STOKISLEM.CARINO'
    end
    object FireIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'STOKISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object FireIBQSTOKISLEMNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'STOKISLEMNO'
      Origin = 'STOKISLEM.STOKISLEMNO'
    end
    object FireIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'STOKISLEM.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object FireIBQIRSALIYETARIH: TDateField
      DisplayLabel = #304'rsaliye Tarihi'
      FieldName = 'IRSALIYETARIH'
      Origin = 'STOKISLEM.IRSALIYETARIH'
      EditMask = '!99/99/00;1;_'
    end
    object FireIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'STOKISLEM.SAAT'
      EditMask = '!90:00;1;_'
    end
    object FireIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'STOKISLEM.ACIKLAMA'
      Size = 80
    end
    object FireIBQGIRISTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' Tutar'#305
      FieldName = 'GIRISTUTAR'
      Origin = 'STOKISLEM.GIRISTUTAR'
      DisplayFormat = '###,###'
    end
    object FireIBQCIKISTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Tutar'#305
      FieldName = 'CIKISTUTAR'
      Origin = 'STOKISLEM.CIKISTUTAR'
      DisplayFormat = '###,###'
    end
    object FireIBQGIRISMATRAH: TFloatField
      DisplayLabel = 'Giri'#351' Matrah'#305
      FieldName = 'GIRISMATRAH'
      Origin = 'STOKISLEM.GIRISMATRAH'
      DisplayFormat = '###,###'
    end
    object FireIBQGIRISKDVTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' KDV Tutar'#305
      FieldName = 'GIRISKDVTUTAR'
      Origin = 'STOKISLEM.GIRISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object FireIBQCIKISMATRAH: TFloatField
      DisplayLabel = #199#305'k'#305#351' Matrah'#305
      FieldName = 'CIKISMATRAH'
      Origin = 'STOKISLEM.CIKISMATRAH'
      DisplayFormat = '###,###'
    end
    object FireIBQCIKISKDVTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' KDV Tutar'#305
      FieldName = 'CIKISKDVTUTAR'
      Origin = 'STOKISLEM.CIKISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object FireIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'STOKISLEM.CARIKURU'
      DisplayFormat = '###,###'
    end
    object FireIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'STOKISLEM.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object FireIBQKAPATMA: TIntegerField
      DisplayLabel = 'Kapatma'
      FieldName = 'KAPATMA'
      Origin = 'STOKISLEM.KAPATMA'
    end
    object FireIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'STOKISLEM.VADE'
    end
    object FireIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'STOKISLEM.GELGITKOD'
      Size = 80
    end
    object FireIBQEVRAKNO: TIntegerField
      DisplayLabel = 'Evrak No'
      FieldName = 'EVRAKNO'
      Origin = 'STOKISLEM.EVRAKNO'
    end
    object FireIBQBELGENO: TIntegerField
      DisplayLabel = 'Belge No'
      FieldName = 'BELGENO'
      Origin = 'STOKISLEM.BELGENO'
    end
    object FireIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'STOKISLEM.BAGLANTINO'
    end
    object FireIBQCARIHESAPILISKI: TIntegerField
      DisplayLabel = 'Cari '#304'li'#351'ki'
      FieldName = 'CARIHESAPILISKI'
      Origin = 'STOKISLEM.CARIHESAPILISKI'
    end
    object FireIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'STOKISLEM.PARABIRIMKOD'
    end
    object FireIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'STOKISLEM.STOKYERIKOD'
    end
    object FireIBQMAKBUZNO: TIntegerField
      DisplayLabel = 'Makbuz No'
      FieldName = 'MAKBUZNO'
      Origin = 'STOKISLEM.MAKBUZNO'
    end
    object FireIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'STOKISLEM.BILGIKOD'
    end
    object FireIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'STOKISLEM.KULLANKOD'
    end
    object FireIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'STOKISLEM.PERSONELKOD'
    end
    object FireIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'STOKISLEM.SISTEM'
    end
    object FireIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'STOKISLEM.CARIPARABIRIMKOD'
    end
    object FireIBQC_CARIPARABIRIM: TIBStringField
      DisplayLabel = 'Cari P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'STOKISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object FireIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'STOKISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object FireIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'STOKISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object FireIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'STOKISLEM.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object FireIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'STOKISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object FireIBQC_PERSONEL: TIBStringField
      DisplayLabel = 'Personel'
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'STOKISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object FireIBQFATURATARIH: TDateField
      DisplayLabel = 'Fatura Tarihi'
      FieldName = 'FATURATARIH'
      Origin = 'STOKISLEM.FATURATARIH'
    end
    object FireIBQKDVSECIM: TIBStringField
      FieldName = 'KDVSECIM'
      Origin = 'STOKISLEM.KDVSECIM'
      Size = 5
    end
    object FireIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'Gelir Gider Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'STOKISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object FireIBQIRSALIYENO: TIntegerField
      DisplayLabel = #304'resaliye No'
      FieldName = 'IRSALIYENO'
      Origin = 'STOKISLEM.IRSALIYENO'
    end
    object FireIBQEVRAKTARIH: TDateField
      DisplayLabel = 'Evrak Tarihi'
      FieldName = 'EVRAKTARIH'
      Origin = 'STOKISLEM.EVRAKTARIH'
      EditMask = '!99/99/00;1;_'
    end
    object FireIBQD_GIRISTUTAR: TFloatField
      DisplayLabel = 'D. Giri'#351' Tutar'#305
      FieldName = 'D_GIRISTUTAR'
      Origin = 'STOKISLEM.D_GIRISTUTAR'
      DisplayFormat = '###,###'
    end
    object FireIBQD_GIRISKDVTUTAR: TFloatField
      DisplayLabel = 'D. Giri'#351' KDV Tutar'#305
      FieldName = 'D_GIRISKDVTUTAR'
      Origin = 'STOKISLEM.D_GIRISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object FireIBQD_GIRISMATRAH: TFloatField
      DisplayLabel = 'D. Giri'#351' Matrah'#305
      FieldName = 'D_GIRISMATRAH'
      Origin = 'STOKISLEM.D_GIRISMATRAH'
      DisplayFormat = '###,###'
    end
    object FireIBQD_CIKISTUTAR: TFloatField
      DisplayLabel = 'D. '#199#305'k'#305#351' Tutar'#305
      FieldName = 'D_CIKISTUTAR'
      Origin = 'STOKISLEM.D_CIKISTUTAR'
      DisplayFormat = '###,###'
    end
    object FireIBQD_CIKISKDVTUTAR: TFloatField
      DisplayLabel = 'D. '#199#305'k'#305#351' KDV Tutar'#305
      FieldName = 'D_CIKISKDVTUTAR'
      Origin = 'STOKISLEM.D_CIKISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object FireIBQD_CIKISMATRAH: TFloatField
      DisplayLabel = 'D. '#199#305'k'#305#351' Matrah'#305
      FieldName = 'D_CIKISMATRAH'
      Origin = 'STOKISLEM.D_CIKISMATRAH'
      DisplayFormat = '###,###'
    end
    object FireIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'STOKISLEM.ISLEMTUR'
      Size = 40
    end
  end
  object FireUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  CARIKOD,'
      '  CARINO,'
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
      'from STOKISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update STOKISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  CARIKOD = :CARIKOD,'
      '  CARINO = :CARINO,'
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
      'insert into STOKISLEM'
      
        '  (ISLEMKOD, ISLEMTUR, CARIKOD, CARINO, STOKISLEMNO, TARIH, IRSA' +
        'LIYETARIH, '
      
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
      
        '  (:ISLEMKOD, :ISLEMTUR, :CARIKOD, :CARINO, :STOKISLEMNO, :TARIH' +
        ', :IRSALIYETARIH, '
      
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
      'delete from STOKISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 136
    Top = 408
  end
  object FireDS: TDataSource
    DataSet = FireIBQ
    Left = 224
    Top = 408
  end
  object FireBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = FireBodroIBQAfterPost
    OnNewRecord = FireBodroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = FireDS
    SQL.Strings = (
      'select * from STOKBODRO'
      'Where ISLEMKOD=:ISLEMKOD')
    UpdateObject = FireBodroUSQL
    GeneratorField.Field = 'BODROKOD'
    GeneratorField.Generator = 'STOKBODRO'
    Left = 32
    Top = 464
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object FireBodroIBQBODROKOD: TIntegerField
      FieldName = 'BODROKOD'
      Origin = 'STOKBODRO.BODROKOD'
      Required = True
    end
    object FireBodroIBQSIRANO: TIntegerField
      DisplayLabel = 'S'#305'ra No'
      FieldName = 'SIRANO'
      Origin = 'STOKBODRO.SIRANO'
    end
    object FireBodroIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'STOKBODRO.ISLEMTUR'
      Size = 40
    end
    object FireBodroIBQC_ISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_ISLEMTURKOD'
      Origin = 'STOKBODRO.C_ISLEMTURKOD'
      ReadOnly = True
    end
    object FireBodroIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'STOKBODRO.CARIKOD'
    end
    object FireBodroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'STOKBODRO.PARABIRIMKOD'
    end
    object FireBodroIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'STOKBODRO.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object FireBodroIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'STOKBODRO.STOKKOD'
    end
    object FireBodroIBQSTOKNO: TIntegerField
      DisplayLabel = 'Stok No'
      FieldName = 'STOKNO'
      Origin = 'STOKBODRO.STOKNO'
    end
    object FireBodroIBQBARKOD: TIBStringField
      DisplayLabel = 'Barkod'
      FieldName = 'BARKOD'
      Origin = 'STOKBODRO.BARKOD'
      OnChange = FireBodroIBQBARKODChange
      Size = 25
    end
    object FireBodroIBQSTOKADI: TIBStringField
      DisplayLabel = 'Stok Ad'#305
      FieldName = 'STOKADI'
      Origin = 'STOKBODRO.STOKADI'
      Size = 80
    end
    object FireBodroIBQMIKTAR: TFloatField
      DisplayLabel = 'Miktar'
      FieldName = 'MIKTAR'
      Origin = 'STOKBODRO.MIKTAR'
      DisplayFormat = '###,###'
    end
    object FireBodroIBQMIKTARCARPAN: TIntegerField
      DisplayLabel = 'M. '#199'arpan'#305
      FieldName = 'MIKTARCARPAN'
      Origin = 'STOKBODRO.MIKTARCARPAN'
      DisplayFormat = '###,###'
    end
    object FireBodroIBQGIRISMIKTAR: TFloatField
      DisplayLabel = 'Giri'#351' Miktar'#305
      FieldName = 'GIRISMIKTAR'
      Origin = 'STOKBODRO.GIRISMIKTAR'
      DisplayFormat = '###,###'
    end
    object FireBodroIBQCIKISMIKTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Miktar'#305
      FieldName = 'CIKISMIKTAR'
      Origin = 'STOKBODRO.CIKISMIKTAR'
      DisplayFormat = '###,###'
    end
    object FireBodroIBQBIRIM: TIBStringField
      DisplayLabel = 'Birim'
      FieldName = 'BIRIM'
      Origin = 'STOKBODRO.BIRIM'
      Size = 10
    end
    object FireBodroIBQBIRIMFIYAT: TFloatField
      DisplayLabel = 'Birim Fiyat'
      FieldName = 'BIRIMFIYAT'
      Origin = 'STOKBODRO.BIRIMFIYAT'
      DisplayFormat = '###,###'
    end
    object FireBodroIBQGIRISFIYAT: TFloatField
      DisplayLabel = 'Giri'#351' Fiyat'#305
      FieldName = 'GIRISFIYAT'
      Origin = 'STOKBODRO.GIRISFIYAT'
      DisplayFormat = '###,###'
    end
    object FireBodroIBQCIKISFIYAT: TFloatField
      DisplayLabel = #199#305'k'#305#351' Fiyat'#305
      FieldName = 'CIKISFIYAT'
      Origin = 'STOKBODRO.CIKISFIYAT'
      DisplayFormat = '###,###'
    end
    object FireBodroIBQCIKISTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Tutar'#305
      FieldName = 'CIKISTUTAR'
      Origin = 'STOKBODRO.CIKISTUTAR'
      DisplayFormat = '###,###'
    end
    object FireBodroIBQGIRISTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' Tutar'#305
      FieldName = 'GIRISTUTAR'
      Origin = 'STOKBODRO.GIRISTUTAR'
      DisplayFormat = '###,###'
    end
    object FireBodroIBQGIRISMATRAHI: TFloatField
      DisplayLabel = 'Giri'#351' Matrah'#305
      FieldName = 'GIRISMATRAHI'
      Origin = 'STOKBODRO.GIRISMATRAHI'
      DisplayFormat = '###,###'
    end
    object FireBodroIBQCIKISMATRAHI: TFloatField
      DisplayLabel = #199#305'k'#305#351' Matrah'#305
      FieldName = 'CIKISMATRAHI'
      Origin = 'STOKBODRO.CIKISMATRAHI'
      DisplayFormat = '###,###'
    end
    object FireBodroIBQISKONTO1: TFloatField
      DisplayLabel = #304'sk.1'
      FieldName = 'ISKONTO1'
      Origin = 'STOKBODRO.ISKONTO1'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object FireBodroIBQISKONTO2: TFloatField
      DisplayLabel = #304'sk.2'
      FieldName = 'ISKONTO2'
      Origin = 'STOKBODRO.ISKONTO2'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object FireBodroIBQISKONTO3: TFloatField
      DisplayLabel = #304'sk.3'
      FieldName = 'ISKONTO3'
      Origin = 'STOKBODRO.ISKONTO3'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object FireBodroIBQISKONTO4: TFloatField
      DisplayLabel = #304'sk.4'
      FieldName = 'ISKONTO4'
      Origin = 'STOKBODRO.ISKONTO4'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object FireBodroIBQKDVORANI: TFloatField
      DisplayLabel = 'Kdv Oran'#305
      FieldName = 'KDVORANI'
      Origin = 'STOKBODRO.KDVORANI'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object FireBodroIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'STOKBODRO.BAKIYE'
      DisplayFormat = '###,###'
    end
    object FireBodroIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'STOKBODRO.DURUM'
    end
    object FireBodroIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'STOKBODRO.ACIKLAMA'
      Size = 60
    end
    object FireBodroIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'STOKBODRO.KAPATMA'
    end
    object FireBodroIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'STOKBODRO.VADE'
    end
    object FireBodroIBQFATURANO: TIntegerField
      DisplayLabel = 'Fatura No'
      FieldName = 'FATURANO'
      Origin = 'STOKBODRO.FATURANO'
    end
    object FireBodroIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'STOKBODRO.STOKYERIKOD'
    end
    object FireBodroIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'STOKBODRO.ISLEMKURU'
    end
    object FireBodroIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'STOKBODRO.GELGITKOD'
      Size = 80
    end
    object FireBodroIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'STOKBODRO.PERSONELKOD'
    end
    object FireBodroIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'STOKBODRO.KULLANKOD'
    end
    object FireBodroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'STOKBODRO.SISTEM'
    end
    object FireBodroIBQEVRAKDURUMU: TIntegerField
      FieldName = 'EVRAKDURUMU'
      Origin = 'STOKBODRO.EVRAKDURUMU'
    end
    object FireBodroIBQSERINO: TIBStringField
      DisplayLabel = 'Seri No'
      FieldName = 'SERINO'
      Origin = 'STOKBODRO.SERINO'
      Size = 30
    end
    object FireBodroIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'STOKBODRO.CARIHESAPILISKI'
    end
    object FireBodroIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'STOKBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object FireBodroIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'STOKBODRO.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object FireBodroIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'STOKBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object FireBodroIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'STOKBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object FireBodroIBQC_REELGIRIS: TFloatField
      DisplayLabel = 'Reel Giri'#351
      FieldKind = fkInternalCalc
      FieldName = 'C_REELGIRIS'
      Origin = 'STOKBODRO.C_REELGIRIS'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object FireBodroIBQC_REELCIKIS: TFloatField
      DisplayLabel = 'Reel '#199#305'k'#305#351
      FieldKind = fkInternalCalc
      FieldName = 'C_REELCIKIS'
      Origin = 'STOKBODRO.C_REELCIKIS'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object FireBodroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'STOKBODRO.ISLEMKOD'
    end
    object FireBodroIBQKDVSECIM: TIBStringField
      DisplayLabel = 'KDV S.'
      FieldName = 'KDVSECIM'
      Origin = 'STOKBODRO.KDVSECIM'
      Size = 5
    end
    object FireBodroIBQC_TLGIRISTUTARI: TFloatField
      DisplayLabel = 'TL Giri'#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISTUTARI'
      Origin = 'STOKBODRO.C_TLGIRISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object FireBodroIBQC_TLGIRISMATRAHI: TFloatField
      DisplayLabel = 'TL Giri'#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISMATRAHI'
      Origin = 'STOKBODRO.C_TLGIRISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object FireBodroIBQC_TLCIKISTUTARI: TFloatField
      DisplayLabel = 'TL '#199#305'k'#305#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISTUTARI'
      Origin = 'STOKBODRO.C_TLCIKISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object FireBodroIBQC_TLCIKISMATRAHI: TFloatField
      DisplayLabel = 'TL '#199#305'k'#305#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISMATRAHI'
      Origin = 'STOKBODRO.C_TLCIKISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object FireBodroIBQC_TLBIRIMFIYAT: TFloatField
      DisplayLabel = 'TL Birim Fiyat'
      FieldKind = fkInternalCalc
      FieldName = 'C_TLBIRIMFIYAT'
      Origin = 'STOKBODRO.C_TLBIRIMFIYAT'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object FireBodroIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G.G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'STOKBODRO.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object FireBodroIBQC_GIRISKDVTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_GIRISKDVTUTAR'
      Origin = 'STOKBODRO.C_GIRISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object FireBodroIBQC_CIKISKDVTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CIKISKDVTUTAR'
      Origin = 'STOKBODRO.C_CIKISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object FireBodroIBQC_TLGIRISKDVTUTAR: TFloatField
      DisplayLabel = 'TL Giri'#351' KDV Tuatr'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISKDVTUTAR'
      Origin = 'STOKBODRO.C_TLGIRISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object FireBodroIBQC_TLCIKISKDVTUTARI: TFloatField
      DisplayLabel = 'TL '#199#305'k'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISKDVTUTARI'
      Origin = 'STOKBODRO.C_TLCIKISKDVTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
  end
  object FireBodroUSQL: TIBUpdateSQL
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
    Left = 136
    Top = 464
  end
  object FireBodroDS: TDataSource
    DataSet = FireBodroIBQ
    Left = 224
    Top = 464
  end
  object UretimeCikisIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = UretimeCikisIBQAfterPost
    OnNewRecord = UretimeCikisIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STOKISLEM'
      'where ISLEMTURKOD=38 AND SISTEM<>2')
    UpdateObject = UretimeCikisUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'STOKISLEM'
    Left = 320
    Top = 478
    object UretimeCikisIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'STOKISLEM.ISLEMKOD'
      Required = True
    end
    object UretimeCikisIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'STOKISLEM.CARIKOD'
    end
    object UretimeCikisIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'STOKISLEM.CARINO'
    end
    object UretimeCikisIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'STOKISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object UretimeCikisIBQSTOKISLEMNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'STOKISLEMNO'
      Origin = 'STOKISLEM.STOKISLEMNO'
    end
    object UretimeCikisIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'STOKISLEM.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object UretimeCikisIBQIRSALIYETARIH: TDateField
      DisplayLabel = #304'rsaliye Tarihi'
      FieldName = 'IRSALIYETARIH'
      Origin = 'STOKISLEM.IRSALIYETARIH'
      EditMask = '!99/99/00;1;_'
    end
    object UretimeCikisIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'STOKISLEM.SAAT'
      EditMask = '!90:00;1;_'
    end
    object UretimeCikisIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'STOKISLEM.ACIKLAMA'
      Size = 80
    end
    object UretimeCikisIBQGIRISTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' Tutar'#305
      FieldName = 'GIRISTUTAR'
      Origin = 'STOKISLEM.GIRISTUTAR'
      DisplayFormat = '###,###'
    end
    object UretimeCikisIBQCIKISTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Tutar'#305
      FieldName = 'CIKISTUTAR'
      Origin = 'STOKISLEM.CIKISTUTAR'
      DisplayFormat = '###,###'
    end
    object UretimeCikisIBQGIRISMATRAH: TFloatField
      DisplayLabel = 'Giri'#351' Matrah'#305
      FieldName = 'GIRISMATRAH'
      Origin = 'STOKISLEM.GIRISMATRAH'
      DisplayFormat = '###,###'
    end
    object UretimeCikisIBQGIRISKDVTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' KDV Tutar'#305
      FieldName = 'GIRISKDVTUTAR'
      Origin = 'STOKISLEM.GIRISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object UretimeCikisIBQCIKISMATRAH: TFloatField
      DisplayLabel = #199#305'k'#305#351' Matrah'#305
      FieldName = 'CIKISMATRAH'
      Origin = 'STOKISLEM.CIKISMATRAH'
      DisplayFormat = '###,###'
    end
    object UretimeCikisIBQCIKISKDVTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' KDV Tutar'#305
      FieldName = 'CIKISKDVTUTAR'
      Origin = 'STOKISLEM.CIKISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object UretimeCikisIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'STOKISLEM.CARIKURU'
      DisplayFormat = '###,###'
    end
    object UretimeCikisIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'STOKISLEM.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object UretimeCikisIBQKAPATMA: TIntegerField
      DisplayLabel = 'Kapatma'
      FieldName = 'KAPATMA'
      Origin = 'STOKISLEM.KAPATMA'
    end
    object UretimeCikisIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'STOKISLEM.VADE'
    end
    object UretimeCikisIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'STOKISLEM.GELGITKOD'
      Size = 80
    end
    object UretimeCikisIBQEVRAKNO: TIntegerField
      DisplayLabel = 'Evrak No'
      FieldName = 'EVRAKNO'
      Origin = 'STOKISLEM.EVRAKNO'
    end
    object UretimeCikisIBQBELGENO: TIntegerField
      DisplayLabel = 'Belge No'
      FieldName = 'BELGENO'
      Origin = 'STOKISLEM.BELGENO'
    end
    object UretimeCikisIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'STOKISLEM.BAGLANTINO'
    end
    object UretimeCikisIBQCARIHESAPILISKI: TIntegerField
      DisplayLabel = 'Cari '#304'li'#351'ki'
      FieldName = 'CARIHESAPILISKI'
      Origin = 'STOKISLEM.CARIHESAPILISKI'
    end
    object UretimeCikisIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'STOKISLEM.PARABIRIMKOD'
    end
    object UretimeCikisIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'STOKISLEM.STOKYERIKOD'
    end
    object UretimeCikisIBQMAKBUZNO: TIntegerField
      DisplayLabel = 'Makbuz No'
      FieldName = 'MAKBUZNO'
      Origin = 'STOKISLEM.MAKBUZNO'
    end
    object UretimeCikisIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'STOKISLEM.BILGIKOD'
    end
    object UretimeCikisIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'STOKISLEM.KULLANKOD'
    end
    object UretimeCikisIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'STOKISLEM.PERSONELKOD'
    end
    object UretimeCikisIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'STOKISLEM.SISTEM'
    end
    object UretimeCikisIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'STOKISLEM.CARIPARABIRIMKOD'
    end
    object UretimeCikisIBQC_CARIPARABIRIM: TIBStringField
      DisplayLabel = 'Cari P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'STOKISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object UretimeCikisIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'STOKISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object UretimeCikisIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'STOKISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object UretimeCikisIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'STOKISLEM.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object UretimeCikisIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'STOKISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object UretimeCikisIBQC_PERSONEL: TIBStringField
      DisplayLabel = 'Personel'
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'STOKISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object UretimeCikisIBQFATURATARIH: TDateField
      DisplayLabel = 'Fatura Tarihi'
      FieldName = 'FATURATARIH'
      Origin = 'STOKISLEM.FATURATARIH'
    end
    object UretimeCikisIBQKDVSECIM: TIBStringField
      FieldName = 'KDVSECIM'
      Origin = 'STOKISLEM.KDVSECIM'
      Size = 5
    end
    object UretimeCikisIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'Gelir Gider Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'STOKISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object UretimeCikisIBQIRSALIYENO: TIntegerField
      DisplayLabel = #304'resaliye No'
      FieldName = 'IRSALIYENO'
      Origin = 'STOKISLEM.IRSALIYENO'
    end
    object UretimeCikisIBQEVRAKTARIH: TDateField
      DisplayLabel = 'Evrak Tarihi'
      FieldName = 'EVRAKTARIH'
      Origin = 'STOKISLEM.EVRAKTARIH'
      EditMask = '!99/99/00;1;_'
    end
    object UretimeCikisIBQD_GIRISTUTAR: TFloatField
      DisplayLabel = 'D. Giri'#351' Tutar'#305
      FieldName = 'D_GIRISTUTAR'
      Origin = 'STOKISLEM.D_GIRISTUTAR'
      DisplayFormat = '###,###'
    end
    object UretimeCikisIBQD_GIRISKDVTUTAR: TFloatField
      DisplayLabel = 'D. Giri'#351' KDV Tutar'#305
      FieldName = 'D_GIRISKDVTUTAR'
      Origin = 'STOKISLEM.D_GIRISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object UretimeCikisIBQD_GIRISMATRAH: TFloatField
      DisplayLabel = 'D. Giri'#351' Matrah'#305
      FieldName = 'D_GIRISMATRAH'
      Origin = 'STOKISLEM.D_GIRISMATRAH'
      DisplayFormat = '###,###'
    end
    object UretimeCikisIBQD_CIKISTUTAR: TFloatField
      DisplayLabel = 'D. '#199#305'k'#305#351' Tutar'#305
      FieldName = 'D_CIKISTUTAR'
      Origin = 'STOKISLEM.D_CIKISTUTAR'
      DisplayFormat = '###,###'
    end
    object UretimeCikisIBQD_CIKISKDVTUTAR: TFloatField
      DisplayLabel = 'D. '#199#305'k'#305#351' KDV Tutar'#305
      FieldName = 'D_CIKISKDVTUTAR'
      Origin = 'STOKISLEM.D_CIKISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object UretimeCikisIBQD_CIKISMATRAH: TFloatField
      DisplayLabel = 'D. '#199#305'k'#305#351' Matrah'#305
      FieldName = 'D_CIKISMATRAH'
      Origin = 'STOKISLEM.D_CIKISMATRAH'
      DisplayFormat = '###,###'
    end
    object UretimeCikisIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'STOKISLEM.ISLEMTUR'
      Size = 40
    end
  end
  object UretimeCikisUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  CARIKOD,'
      '  CARINO,'
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
      'from STOKISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update STOKISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  CARIKOD = :CARIKOD,'
      '  CARINO = :CARINO,'
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
      'insert into STOKISLEM'
      
        '  (ISLEMKOD, ISLEMTUR, CARIKOD, CARINO, STOKISLEMNO, TARIH, IRSA' +
        'LIYETARIH, '
      
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
      
        '  (:ISLEMKOD, :ISLEMTUR, :CARIKOD, :CARINO, :STOKISLEMNO, :TARIH' +
        ', :IRSALIYETARIH, '
      
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
      'delete from STOKISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 448
    Top = 472
  end
  object UretimeCikisDS: TDataSource
    DataSet = UretimeCikisIBQ
    Left = 560
    Top = 472
  end
  object UretimeCikisBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = UretimeCikisBodroIBQAfterPost
    OnNewRecord = UretimeCikisBodroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = UretimeCikisDS
    SQL.Strings = (
      'select * from STOKBODRO'
      'Where ISLEMKOD=:ISLEMKOD')
    UpdateObject = UretimeCikisBodroUSQL
    GeneratorField.Field = 'BODROKOD'
    GeneratorField.Generator = 'STOKBODRO'
    Left = 320
    Top = 534
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object UretimeCikisBodroIBQBODROKOD: TIntegerField
      FieldName = 'BODROKOD'
      Origin = 'STOKBODRO.BODROKOD'
      Required = True
    end
    object UretimeCikisBodroIBQSIRANO: TIntegerField
      DisplayLabel = 'S'#305'ra No'
      FieldName = 'SIRANO'
      Origin = 'STOKBODRO.SIRANO'
    end
    object UretimeCikisBodroIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'STOKBODRO.ISLEMTUR'
      Size = 40
    end
    object UretimeCikisBodroIBQC_ISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_ISLEMTURKOD'
      Origin = 'STOKBODRO.C_ISLEMTURKOD'
      ReadOnly = True
    end
    object UretimeCikisBodroIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'STOKBODRO.CARIKOD'
    end
    object UretimeCikisBodroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'STOKBODRO.PARABIRIMKOD'
    end
    object UretimeCikisBodroIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'STOKBODRO.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object UretimeCikisBodroIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'STOKBODRO.STOKKOD'
    end
    object UretimeCikisBodroIBQSTOKNO: TIntegerField
      DisplayLabel = 'Stok No'
      FieldName = 'STOKNO'
      Origin = 'STOKBODRO.STOKNO'
    end
    object UretimeCikisBodroIBQBARKOD: TIBStringField
      DisplayLabel = 'Barkod'
      FieldName = 'BARKOD'
      Origin = 'STOKBODRO.BARKOD'
      OnChange = FireBodroIBQBARKODChange
      Size = 25
    end
    object UretimeCikisBodroIBQSTOKADI: TIBStringField
      DisplayLabel = 'Stok Ad'#305
      FieldName = 'STOKADI'
      Origin = 'STOKBODRO.STOKADI'
      Size = 80
    end
    object UretimeCikisBodroIBQMIKTAR: TFloatField
      DisplayLabel = 'Miktar'
      FieldName = 'MIKTAR'
      Origin = 'STOKBODRO.MIKTAR'
      DisplayFormat = '###,###'
    end
    object UretimeCikisBodroIBQMIKTARCARPAN: TIntegerField
      DisplayLabel = 'M. '#199'arpan'#305
      FieldName = 'MIKTARCARPAN'
      Origin = 'STOKBODRO.MIKTARCARPAN'
      DisplayFormat = '###,###'
    end
    object UretimeCikisBodroIBQGIRISMIKTAR: TFloatField
      DisplayLabel = 'Giri'#351' Miktar'#305
      FieldName = 'GIRISMIKTAR'
      Origin = 'STOKBODRO.GIRISMIKTAR'
      DisplayFormat = '###,###'
    end
    object UretimeCikisBodroIBQCIKISMIKTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Miktar'#305
      FieldName = 'CIKISMIKTAR'
      Origin = 'STOKBODRO.CIKISMIKTAR'
      DisplayFormat = '###,###'
    end
    object UretimeCikisBodroIBQBIRIM: TIBStringField
      DisplayLabel = 'Birim'
      FieldName = 'BIRIM'
      Origin = 'STOKBODRO.BIRIM'
      Size = 10
    end
    object UretimeCikisBodroIBQBIRIMFIYAT: TFloatField
      DisplayLabel = 'Birim Fiyat'
      FieldName = 'BIRIMFIYAT'
      Origin = 'STOKBODRO.BIRIMFIYAT'
      DisplayFormat = '###,###'
    end
    object UretimeCikisBodroIBQGIRISFIYAT: TFloatField
      DisplayLabel = 'Giri'#351' Fiyat'#305
      FieldName = 'GIRISFIYAT'
      Origin = 'STOKBODRO.GIRISFIYAT'
      DisplayFormat = '###,###'
    end
    object UretimeCikisBodroIBQCIKISFIYAT: TFloatField
      DisplayLabel = #199#305'k'#305#351' Fiyat'#305
      FieldName = 'CIKISFIYAT'
      Origin = 'STOKBODRO.CIKISFIYAT'
      DisplayFormat = '###,###'
    end
    object UretimeCikisBodroIBQCIKISTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Tutar'#305
      FieldName = 'CIKISTUTAR'
      Origin = 'STOKBODRO.CIKISTUTAR'
      DisplayFormat = '###,###'
    end
    object UretimeCikisBodroIBQGIRISTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' Tutar'#305
      FieldName = 'GIRISTUTAR'
      Origin = 'STOKBODRO.GIRISTUTAR'
      DisplayFormat = '###,###'
    end
    object UretimeCikisBodroIBQGIRISMATRAHI: TFloatField
      DisplayLabel = 'Giri'#351' Matrah'#305
      FieldName = 'GIRISMATRAHI'
      Origin = 'STOKBODRO.GIRISMATRAHI'
      DisplayFormat = '###,###'
    end
    object UretimeCikisBodroIBQCIKISMATRAHI: TFloatField
      DisplayLabel = #199#305'k'#305#351' Matrah'#305
      FieldName = 'CIKISMATRAHI'
      Origin = 'STOKBODRO.CIKISMATRAHI'
      DisplayFormat = '###,###'
    end
    object UretimeCikisBodroIBQISKONTO1: TFloatField
      DisplayLabel = #304'sk.1'
      FieldName = 'ISKONTO1'
      Origin = 'STOKBODRO.ISKONTO1'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object UretimeCikisBodroIBQISKONTO2: TFloatField
      DisplayLabel = #304'sk.2'
      FieldName = 'ISKONTO2'
      Origin = 'STOKBODRO.ISKONTO2'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object UretimeCikisBodroIBQISKONTO3: TFloatField
      DisplayLabel = #304'sk.3'
      FieldName = 'ISKONTO3'
      Origin = 'STOKBODRO.ISKONTO3'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object UretimeCikisBodroIBQISKONTO4: TFloatField
      DisplayLabel = #304'sk.4'
      FieldName = 'ISKONTO4'
      Origin = 'STOKBODRO.ISKONTO4'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object UretimeCikisBodroIBQKDVORANI: TFloatField
      DisplayLabel = 'Kdv Oran'#305
      FieldName = 'KDVORANI'
      Origin = 'STOKBODRO.KDVORANI'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object UretimeCikisBodroIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'STOKBODRO.BAKIYE'
      DisplayFormat = '###,###'
    end
    object UretimeCikisBodroIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'STOKBODRO.DURUM'
    end
    object UretimeCikisBodroIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'STOKBODRO.ACIKLAMA'
      Size = 60
    end
    object UretimeCikisBodroIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'STOKBODRO.KAPATMA'
    end
    object UretimeCikisBodroIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'STOKBODRO.VADE'
    end
    object UretimeCikisBodroIBQFATURANO: TIntegerField
      DisplayLabel = 'Fatura No'
      FieldName = 'FATURANO'
      Origin = 'STOKBODRO.FATURANO'
    end
    object UretimeCikisBodroIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'STOKBODRO.STOKYERIKOD'
    end
    object UretimeCikisBodroIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'STOKBODRO.ISLEMKURU'
    end
    object UretimeCikisBodroIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'STOKBODRO.GELGITKOD'
      Size = 80
    end
    object UretimeCikisBodroIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'STOKBODRO.PERSONELKOD'
    end
    object UretimeCikisBodroIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'STOKBODRO.KULLANKOD'
    end
    object UretimeCikisBodroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'STOKBODRO.SISTEM'
    end
    object UretimeCikisBodroIBQEVRAKDURUMU: TIntegerField
      FieldName = 'EVRAKDURUMU'
      Origin = 'STOKBODRO.EVRAKDURUMU'
    end
    object UretimeCikisBodroIBQSERINO: TIBStringField
      DisplayLabel = 'Seri No'
      FieldName = 'SERINO'
      Origin = 'STOKBODRO.SERINO'
      Size = 30
    end
    object UretimeCikisBodroIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'STOKBODRO.CARIHESAPILISKI'
    end
    object UretimeCikisBodroIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'STOKBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object UretimeCikisBodroIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'STOKBODRO.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object UretimeCikisBodroIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'STOKBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object UretimeCikisBodroIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'STOKBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object UretimeCikisBodroIBQC_REELGIRIS: TFloatField
      DisplayLabel = 'Reel Giri'#351
      FieldKind = fkInternalCalc
      FieldName = 'C_REELGIRIS'
      Origin = 'STOKBODRO.C_REELGIRIS'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object UretimeCikisBodroIBQC_REELCIKIS: TFloatField
      DisplayLabel = 'Reel '#199#305'k'#305#351
      FieldKind = fkInternalCalc
      FieldName = 'C_REELCIKIS'
      Origin = 'STOKBODRO.C_REELCIKIS'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object UretimeCikisBodroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'STOKBODRO.ISLEMKOD'
    end
    object UretimeCikisBodroIBQKDVSECIM: TIBStringField
      DisplayLabel = 'KDV S.'
      FieldName = 'KDVSECIM'
      Origin = 'STOKBODRO.KDVSECIM'
      Size = 5
    end
    object UretimeCikisBodroIBQC_TLGIRISTUTARI: TFloatField
      DisplayLabel = 'TL Giri'#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISTUTARI'
      Origin = 'STOKBODRO.C_TLGIRISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object UretimeCikisBodroIBQC_TLGIRISMATRAHI: TFloatField
      DisplayLabel = 'TL Giri'#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISMATRAHI'
      Origin = 'STOKBODRO.C_TLGIRISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object UretimeCikisBodroIBQC_TLCIKISTUTARI: TFloatField
      DisplayLabel = 'TL '#199#305'k'#305#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISTUTARI'
      Origin = 'STOKBODRO.C_TLCIKISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object UretimeCikisBodroIBQC_TLCIKISMATRAHI: TFloatField
      DisplayLabel = 'TL '#199#305'k'#305#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISMATRAHI'
      Origin = 'STOKBODRO.C_TLCIKISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object UretimeCikisBodroIBQC_TLBIRIMFIYAT: TFloatField
      DisplayLabel = 'TL Birim Fiyat'
      FieldKind = fkInternalCalc
      FieldName = 'C_TLBIRIMFIYAT'
      Origin = 'STOKBODRO.C_TLBIRIMFIYAT'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object UretimeCikisBodroIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G.G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'STOKBODRO.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object UretimeCikisBodroIBQC_GIRISKDVTUTAR: TFloatField
      DisplayLabel = 'Giri'#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_GIRISKDVTUTAR'
      Origin = 'STOKBODRO.C_GIRISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object UretimeCikisBodroIBQC_CIKISKDVTUTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CIKISKDVTUTAR'
      Origin = 'STOKBODRO.C_CIKISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object UretimeCikisBodroIBQC_TLGIRISKDVTUTAR: TFloatField
      DisplayLabel = 'TL Giri'#351' KDV Tuatr'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISKDVTUTAR'
      Origin = 'STOKBODRO.C_TLGIRISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object UretimeCikisBodroIBQC_TLCIKISKDVTUTARI: TFloatField
      DisplayLabel = 'TL '#199#305'k'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISKDVTUTARI'
      Origin = 'STOKBODRO.C_TLCIKISKDVTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
  end
  object UretimeCikisBodroUSQL: TIBUpdateSQL
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
    Left = 448
    Top = 528
  end
  object UretimeCikisBodroDS: TDataSource
    DataSet = UretimeCikisBodroIBQ
    Left = 560
    Top = 528
  end
end
