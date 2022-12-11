object DMTeklif: TDMTeklif
  OldCreateOrder = False
  Left = 253
  Top = 115
  Height = 528
  Width = 713
  object TeklifVermeIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterEdit = TeklifVermeIBQAfterEdit
    AfterPost = TeklifVermeIBQAfterPost
    OnNewRecord = TeklifVermeIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TEKLIFISLEM'
      'Where ISLEMTURKOD=29 and SISTEM<>2'
      'Order By Tarih,ISLEMKOD')
    UpdateObject = TeklifVermeUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'TEKLIFISLEM'
    Left = 40
    Top = 80
    object TeklifVermeIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'TEKLIFISLEM.ISLEMKOD'
      Required = True
    end
    object TeklifVermeIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'TEKLIFISLEM.ISLEMTUR'
    end
    object TeklifVermeIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'TEKLIFISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object TeklifVermeIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'TEKLIFISLEM.CARIKOD'
    end
    object TeklifVermeIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'TEKLIFISLEM.CARINO'
    end
    object TeklifVermeIBQTEKLIFISLEMNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'TEKLIFISLEMNO'
      Origin = 'TEKLIFISLEM.TEKLIFISLEMNO'
    end
    object TeklifVermeIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'TEKLIFISLEM.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object TeklifVermeIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'TEKLIFISLEM.SAAT'
    end
    object TeklifVermeIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'TEKLIFISLEM.ACIKLAMA'
      Size = 80
    end
    object TeklifVermeIBQALISTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' Tutar'#305
      FieldName = 'ALISTUTAR'
      Origin = 'TEKLIFISLEM.ALISTUTAR'
      DisplayFormat = '###,###'
    end
    object TeklifVermeIBQSATISTUTAR: TFloatField
      DisplayLabel = 'Sat'#305#351' Tutar'#305
      FieldName = 'SATISTUTAR'
      Origin = 'TEKLIFISLEM.SATISTUTAR'
      DisplayFormat = '###,###'
    end
    object TeklifVermeIBQALISMATRAH: TFloatField
      DisplayLabel = 'Al'#305#351' Matrah'#305
      FieldName = 'ALISMATRAH'
      Origin = 'TEKLIFISLEM.ALISMATRAH'
      DisplayFormat = '###,###'
    end
    object TeklifVermeIBQALISKDVTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' KDV Tutar'#305
      FieldName = 'ALISKDVTUTAR'
      Origin = 'TEKLIFISLEM.ALISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object TeklifVermeIBQSATISMATRAH: TFloatField
      DisplayLabel = 'Sat'#305#351' Matrah'#305
      FieldName = 'SATISMATRAH'
      Origin = 'TEKLIFISLEM.SATISMATRAH'
      DisplayFormat = '###,###'
    end
    object TeklifVermeIBQSATISKDVTUTAR: TFloatField
      DisplayLabel = 'Sat'#305#351' KDV Tutar'#305
      FieldName = 'SATISKDVTUTAR'
      Origin = 'TEKLIFISLEM.SATISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object TeklifVermeIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'TEKLIFISLEM.CARIKURU'
      DisplayFormat = '###,###'
    end
    object TeklifVermeIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'TEKLIFISLEM.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object TeklifVermeIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'TEKLIFISLEM.KAPATMA'
    end
    object TeklifVermeIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'TEKLIFISLEM.VADE'
      EditMask = '!99/99/00;1;_'
    end
    object TeklifVermeIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'TEKLIFISLEM.GELGITKOD'
      Size = 80
    end
    object TeklifVermeIBQEVRAKNO: TIntegerField
      DisplayLabel = 'Evrak No'
      FieldName = 'EVRAKNO'
      Origin = 'TEKLIFISLEM.EVRAKNO'
    end
    object TeklifVermeIBQBELGENO: TIntegerField
      DisplayLabel = 'Belge No'
      FieldName = 'BELGENO'
      Origin = 'TEKLIFISLEM.BELGENO'
    end
    object TeklifVermeIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'TEKLIFISLEM.BAGLANTINO'
    end
    object TeklifVermeIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'TEKLIFISLEM.PARABIRIMKOD'
    end
    object TeklifVermeIBQMAKBUZNO: TIntegerField
      DisplayLabel = 'Makbuz No'
      FieldName = 'MAKBUZNO'
      Origin = 'TEKLIFISLEM.MAKBUZNO'
    end
    object TeklifVermeIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'TEKLIFISLEM.BILGIKOD'
    end
    object TeklifVermeIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'TEKLIFISLEM.KULLANKOD'
    end
    object TeklifVermeIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'TEKLIFISLEM.PERSONELKOD'
    end
    object TeklifVermeIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'TEKLIFISLEM.CARIPARABIRIMKOD'
    end
    object TeklifVermeIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'TEKLIFISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object TeklifVermeIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'TEKLIFISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object TeklifVermeIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Vari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'TEKLIFISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object TeklifVermeIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'TEKLIFISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object TeklifVermeIBQC_PERSONEL: TIBStringField
      DisplayLabel = 'Personel'
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'TEKLIFISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object TeklifVermeIBQKDVSECIM: TIBStringField
      FieldName = 'KDVSECIM'
      Origin = 'TEKLIFISLEM.KDVSECIM'
      Size = 5
    end
    object TeklifVermeIBQD_ALISTUTAR: TFloatField
      DisplayLabel = 'D. Al'#305#351' Tutar'
      FieldName = 'D_ALISTUTAR'
      Origin = 'TEKLIFISLEM.D_ALISTUTAR'
      DisplayFormat = '###,###'
    end
    object TeklifVermeIBQD_ALISKDVTUTAR: TFloatField
      DisplayLabel = 'D. Al'#305#351' KDV Tutar'#305
      FieldName = 'D_ALISKDVTUTAR'
      Origin = 'TEKLIFISLEM.D_ALISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object TeklifVermeIBQD_ALISMATRAH: TFloatField
      DisplayLabel = 'D. Al'#305#351' Matrah'#305
      FieldName = 'D_ALISMATRAH'
      Origin = 'TEKLIFISLEM.D_ALISMATRAH'
      DisplayFormat = '###,###'
    end
    object TeklifVermeIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G.G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'TEKLIFISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object TeklifVermeIBQC_FIYATSEC: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_FIYATSEC'
      Origin = 'TEKLIFISLEM.C_FIYATSEC'
      ReadOnly = True
    end
    object TeklifVermeIBQD_SATISTUTAR: TFloatField
      DisplayLabel = 'D. Sat'#305#351' Tutar'#305
      FieldName = 'D_SATISTUTAR'
      Origin = 'TEKLIFISLEM.D_SATISTUTAR'
      DisplayFormat = '###,###'
    end
    object TeklifVermeIBQD_SATISKDVTUTAR: TFloatField
      DisplayLabel = 'D. Sat'#305#351' KDV Tutar'#305
      FieldName = 'D_SATISKDVTUTAR'
      Origin = 'TEKLIFISLEM.D_SATISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object TeklifVermeIBQD_SATISMATRAH: TFloatField
      DisplayLabel = 'D. Sat'#305#351' Matrah'#305
      FieldName = 'D_SATISMATRAH'
      Origin = 'TEKLIFISLEM.D_SATISMATRAH'
      DisplayFormat = '###,###'
    end
    object TeklifVermeIBQEVRAKTARIH: TDateField
      DisplayLabel = 'Evrak Tarihi'
      FieldName = 'EVRAKTARIH'
      Origin = 'TEKLIFISLEM.EVRAKTARIH'
      EditMask = '!99/99/00;1;_'
    end
    object TeklifVermeIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'TEKLIFISLEM.SISTEM'
    end
    object TeklifVermeIBQEVRAKDURUM: TIntegerField
      FieldName = 'EVRAKDURUM'
      Origin = 'TEKLIFISLEM.EVRAKDURUM'
    end
  end
  object TeklifVermeUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  CARIKOD,'
      '  CARINO,'
      '  TEKLIFISLEMNO,'
      '  TARIH,'
      '  SAAT,'
      '  ACIKLAMA,'
      '  ALISTUTAR,'
      '  SATISTUTAR,'
      '  ALISMATRAH,'
      '  ALISKDVTUTAR,'
      '  SATISMATRAH,'
      '  SATISKDVTUTAR,'
      '  CARIKURU,'
      '  ISLEMKURU,'
      '  KAPATMA,'
      '  VADE,'
      '  GELGITKOD,'
      '  EVRAKNO,'
      '  BELGENO,'
      '  BAGLANTINO,'
      '  PARABIRIMKOD,'
      '  MAKBUZNO,'
      '  BILGIKOD,'
      '  KULLANKOD,'
      '  PERSONELKOD,'
      '  CARIPARABIRIMKOD,'
      '  C_CARIPARABIRIM,'
      '  C_PARABIRIMI,'
      '  C_CARIADI,'
      '  C_KULLANICIADI,'
      '  C_PERSONEL,'
      '  KDVSECIM,'
      '  D_ALISTUTAR,'
      '  D_ALISKDVTUTAR,'
      '  D_ALISMATRAH,'
      '  C_GGMERKEZI,'
      '  C_FIYATSEC,'
      '  D_SATISTUTAR,'
      '  D_SATISKDVTUTAR,'
      '  D_SATISMATRAH,'
      '  EVRAKTARIH,'
      '  SISTEM,'
      '  EVRAKDURUM'
      'from TEKLIFISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update TEKLIFISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  CARIKOD = :CARIKOD,'
      '  CARINO = :CARINO,'
      '  TEKLIFISLEMNO = :TEKLIFISLEMNO,'
      '  TARIH = :TARIH,'
      '  SAAT = :SAAT,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  ALISTUTAR = :ALISTUTAR,'
      '  SATISTUTAR = :SATISTUTAR,'
      '  ALISMATRAH = :ALISMATRAH,'
      '  ALISKDVTUTAR = :ALISKDVTUTAR,'
      '  SATISMATRAH = :SATISMATRAH,'
      '  SATISKDVTUTAR = :SATISKDVTUTAR,'
      '  CARIKURU = :CARIKURU,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  KAPATMA = :KAPATMA,'
      '  VADE = :VADE,'
      '  GELGITKOD = :GELGITKOD,'
      '  EVRAKNO = :EVRAKNO,'
      '  BELGENO = :BELGENO,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  BILGIKOD = :BILGIKOD,'
      '  KULLANKOD = :KULLANKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  KDVSECIM = :KDVSECIM,'
      '  D_ALISTUTAR = :D_ALISTUTAR,'
      '  D_ALISKDVTUTAR = :D_ALISKDVTUTAR,'
      '  D_ALISMATRAH = :D_ALISMATRAH,'
      '  D_SATISTUTAR = :D_SATISTUTAR,'
      '  D_SATISKDVTUTAR = :D_SATISKDVTUTAR,'
      '  D_SATISMATRAH = :D_SATISMATRAH,'
      '  EVRAKTARIH = :EVRAKTARIH,'
      '  SISTEM = :SISTEM,'
      '  EVRAKDURUM = :EVRAKDURUM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into TEKLIFISLEM'
      
        '  (ISLEMKOD, ISLEMTUR, CARIKOD, CARINO, TEKLIFISLEMNO, TARIH, SA' +
        'AT, ACIKLAMA, '
      
        '   ALISTUTAR, SATISTUTAR, ALISMATRAH, ALISKDVTUTAR, SATISMATRAH,' +
        ' SATISKDVTUTAR, '
      
        '   CARIKURU, ISLEMKURU, KAPATMA, VADE, GELGITKOD, EVRAKNO, BELGE' +
        'NO, BAGLANTINO, '
      
        '   PARABIRIMKOD, MAKBUZNO, BILGIKOD, KULLANKOD, PERSONELKOD, CAR' +
        'IPARABIRIMKOD, '
      
        '   KDVSECIM, D_ALISTUTAR, D_ALISKDVTUTAR, D_ALISMATRAH, D_SATIST' +
        'UTAR, D_SATISKDVTUTAR, '
      '   D_SATISMATRAH, EVRAKTARIH, SISTEM, EVRAKDURUM)'
      'values'
      
        '  (:ISLEMKOD, :ISLEMTUR, :CARIKOD, :CARINO, :TEKLIFISLEMNO, :TAR' +
        'IH, :SAAT, '
      
        '   :ACIKLAMA, :ALISTUTAR, :SATISTUTAR, :ALISMATRAH, :ALISKDVTUTA' +
        'R, :SATISMATRAH, '
      
        '   :SATISKDVTUTAR, :CARIKURU, :ISLEMKURU, :KAPATMA, :VADE, :GELG' +
        'ITKOD, '
      
        '   :EVRAKNO, :BELGENO, :BAGLANTINO, :PARABIRIMKOD, :MAKBUZNO, :B' +
        'ILGIKOD, '
      
        '   :KULLANKOD, :PERSONELKOD, :CARIPARABIRIMKOD, :KDVSECIM, :D_AL' +
        'ISTUTAR, '
      
        '   :D_ALISKDVTUTAR, :D_ALISMATRAH, :D_SATISTUTAR, :D_SATISKDVTUT' +
        'AR, :D_SATISMATRAH, '
      '   :EVRAKTARIH, :SISTEM, :EVRAKDURUM)')
    DeleteSQL.Strings = (
      'delete from TEKLIFISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 155
    Top = 80
  end
  object TeklifVermeDS: TDataSource
    DataSet = TeklifVermeIBQ
    Left = 269
    Top = 80
  end
  object TeklifVermeBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = TeklifVermeBodroIBQAfterDelete
    AfterEdit = TeklifVermeBodroIBQAfterEdit
    AfterPost = TeklifVermeBodroIBQAfterPost
    OnNewRecord = TeklifVermeBodroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = TeklifVermeDS
    SQL.Strings = (
      'select * from TEKLIFBODRO'
      'Where ISLEMKOD=:ISLEMKOD'
      'Order By SIRANO')
    UpdateObject = TeklifVermeBodroSQL
    GeneratorField.Field = 'BODROKOD'
    GeneratorField.Generator = 'TEKLIFBODRO'
    Left = 40
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
      end>
    object TeklifVermeBodroIBQBODROKOD: TIntegerField
      FieldName = 'BODROKOD'
      Origin = 'TEKLIFBODRO.BODROKOD'
      Required = True
    end
    object TeklifVermeBodroIBQSIRANO: TIntegerField
      DisplayLabel = 'S'#305'ra'
      FieldName = 'SIRANO'
      Origin = 'TEKLIFBODRO.SIRANO'
    end
    object TeklifVermeBodroIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'TEKLIFBODRO.ISLEMTUR'
      Size = 40
    end
    object TeklifVermeBodroIBQC_ISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_ISLEMTURKOD'
      Origin = 'TEKLIFBODRO.C_ISLEMTURKOD'
      ReadOnly = True
    end
    object TeklifVermeBodroIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'TEKLIFBODRO.CARIKOD'
    end
    object TeklifVermeBodroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'TEKLIFBODRO.PARABIRIMKOD'
    end
    object TeklifVermeBodroIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'TEKLIFBODRO.TARIH'
    end
    object TeklifVermeBodroIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'TEKLIFBODRO.STOKKOD'
    end
    object TeklifVermeBodroIBQSTOKNO: TIntegerField
      DisplayLabel = 'Stok No'
      FieldName = 'STOKNO'
      Origin = 'TEKLIFBODRO.STOKNO'
    end
    object TeklifVermeBodroIBQBARKOD: TIBStringField
      DisplayLabel = 'Barkod'
      FieldName = 'BARKOD'
      Origin = 'TEKLIFBODRO.BARKOD'
      Size = 25
    end
    object TeklifVermeBodroIBQSTOKADI: TIBStringField
      DisplayLabel = 'Stok Ad'#305
      FieldName = 'STOKADI'
      Origin = 'TEKLIFBODRO.STOKADI'
      Size = 80
    end
    object TeklifVermeBodroIBQMIKTAR: TFloatField
      DisplayLabel = 'Miktar'
      FieldName = 'MIKTAR'
      Origin = 'TEKLIFBODRO.MIKTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifVermeBodroIBQMIKTARCARPAN: TIntegerField
      DisplayLabel = 'Birim '#199'arpan'#305
      FieldName = 'MIKTARCARPAN'
      Origin = 'TEKLIFBODRO.MIKTARCARPAN'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifVermeBodroIBQGIRISMIKTAR: TFloatField
      DisplayLabel = 'Giri'#351' Miktar'#305
      FieldName = 'GIRISMIKTAR'
      Origin = 'TEKLIFBODRO.GIRISMIKTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifVermeBodroIBQCIKISMIKTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Miktar'#305
      FieldName = 'CIKISMIKTAR'
      Origin = 'TEKLIFBODRO.CIKISMIKTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifVermeBodroIBQBIRIM: TIBStringField
      DisplayLabel = 'Birim'
      FieldName = 'BIRIM'
      Origin = 'TEKLIFBODRO.BIRIM'
      Size = 10
    end
    object TeklifVermeBodroIBQBIRIMFIYAT: TFloatField
      DisplayLabel = 'Birim Fiyat'
      FieldName = 'BIRIMFIYAT'
      Origin = 'TEKLIFBODRO.BIRIMFIYAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifVermeBodroIBQALISFIYAT: TFloatField
      DisplayLabel = 'Al'#305#351' Fiyat'#305
      FieldName = 'ALISFIYAT'
      Origin = 'TEKLIFBODRO.ALISFIYAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifVermeBodroIBQSATISTUTAR: TFloatField
      DisplayLabel = 'Sat'#305#351' Tutar'#305
      FieldName = 'SATISTUTAR'
      Origin = 'TEKLIFBODRO.SATISTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifVermeBodroIBQSATISFIYAT: TFloatField
      DisplayLabel = 'Sat'#305#351' Fiyat'#305
      FieldName = 'SATISFIYAT'
      Origin = 'TEKLIFBODRO.SATISFIYAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifVermeBodroIBQALISTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' Tutar'#305
      FieldName = 'ALISTUTAR'
      Origin = 'TEKLIFBODRO.ALISTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifVermeBodroIBQALISMATRAHI: TFloatField
      DisplayLabel = 'Al'#305#351' Matrah'#305
      FieldName = 'ALISMATRAHI'
      Origin = 'TEKLIFBODRO.ALISMATRAHI'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifVermeBodroIBQSATISMATRAHI: TFloatField
      DisplayLabel = 'Sat'#305#351' Matrah'#305
      FieldName = 'SATISMATRAHI'
      Origin = 'TEKLIFBODRO.SATISMATRAHI'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifVermeBodroIBQISKONTO1: TFloatField
      DisplayLabel = #304'sk.1'
      FieldName = 'ISKONTO1'
      Origin = 'TEKLIFBODRO.ISKONTO1'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object TeklifVermeBodroIBQISKONTO2: TFloatField
      DisplayLabel = #304'sk.2'
      FieldName = 'ISKONTO2'
      Origin = 'TEKLIFBODRO.ISKONTO2'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object TeklifVermeBodroIBQISKONTO3: TFloatField
      DisplayLabel = #304'sk.3'
      FieldName = 'ISKONTO3'
      Origin = 'TEKLIFBODRO.ISKONTO3'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object TeklifVermeBodroIBQISKONTO4: TFloatField
      DisplayLabel = #304'sk.4'
      FieldName = 'ISKONTO4'
      Origin = 'TEKLIFBODRO.ISKONTO4'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object TeklifVermeBodroIBQKDVORANI: TFloatField
      DisplayLabel = 'Kdv Oran'#305
      FieldName = 'KDVORANI'
      Origin = 'TEKLIFBODRO.KDVORANI'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object TeklifVermeBodroIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'TEKLIFBODRO.BAKIYE'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifVermeBodroIBQDURUM: TIntegerField
      DisplayLabel = 'Durum'
      FieldName = 'DURUM'
      Origin = 'TEKLIFBODRO.DURUM'
    end
    object TeklifVermeBodroIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'TEKLIFBODRO.ACIKLAMA'
      Size = 60
    end
    object TeklifVermeBodroIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'TEKLIFBODRO.KAPATMA'
    end
    object TeklifVermeBodroIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'TEKLIFBODRO.VADE'
    end
    object TeklifVermeBodroIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'TEKLIFBODRO.ISLEMKURU'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifVermeBodroIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'TEKLIFBODRO.GELGITKOD'
      Size = 80
    end
    object TeklifVermeBodroIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'TEKLIFBODRO.PERSONELKOD'
    end
    object TeklifVermeBodroIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'TEKLIFBODRO.KULLANKOD'
    end
    object TeklifVermeBodroIBQEVRAKDURUMU: TIntegerField
      DisplayLabel = 'Evrak Durumu'
      FieldName = 'EVRAKDURUMU'
      Origin = 'TEKLIFBODRO.EVRAKDURUMU'
    end
    object TeklifVermeBodroIBQSERINO: TIBStringField
      DisplayLabel = 'Seri No'
      FieldName = 'SERINO'
      Origin = 'TEKLIFBODRO.SERINO'
      Size = 30
    end
    object TeklifVermeBodroIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'TEKLIFBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object TeklifVermeBodroIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'TEKLIFBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object TeklifVermeBodroIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'TEKLIFBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object TeklifVermeBodroIBQC_REELALIS: TFloatField
      DisplayLabel = 'Reel Al'#305#351
      FieldKind = fkInternalCalc
      FieldName = 'C_REELALIS'
      Origin = 'TEKLIFBODRO.C_REELALIS'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifVermeBodroIBQC_REELSATIS: TFloatField
      DisplayLabel = 'Reel Sat'#305#351
      FieldKind = fkInternalCalc
      FieldName = 'C_REELSATIS'
      Origin = 'TEKLIFBODRO.C_REELSATIS'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifVermeBodroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'TEKLIFBODRO.ISLEMKOD'
    end
    object TeklifVermeBodroIBQKDVSECIM: TIBStringField
      DisplayLabel = 'Kdv Se'#231'im'
      FieldName = 'KDVSECIM'
      Origin = 'TEKLIFBODRO.KDVSECIM'
      Size = 5
    end
    object TeklifVermeBodroIBQC_TLALISTUTARI: TFloatField
      DisplayLabel = 'TL Al'#305#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISTUTARI'
      Origin = 'TEKLIFBODRO.C_TLALISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifVermeBodroIBQC_TLALISMATRAHI: TFloatField
      DisplayLabel = 'TL Al'#305#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISMATRAHI'
      Origin = 'TEKLIFBODRO.C_TLALISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifVermeBodroIBQC_TLSATISTUTARI: TFloatField
      DisplayLabel = 'TL Sat'#305#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISTUTARI'
      Origin = 'TEKLIFBODRO.C_TLSATISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifVermeBodroIBQC_TLSATISMATRAHI: TFloatField
      DisplayLabel = 'TL Sat'#305#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISMATRAHI'
      Origin = 'TEKLIFBODRO.C_TLSATISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifVermeBodroIBQC_TLBIRIMFIYAT: TFloatField
      DisplayLabel = 'TL Birim Fiyat'
      FieldKind = fkInternalCalc
      FieldName = 'C_TLBIRIMFIYAT'
      Origin = 'TEKLIFBODRO.C_TLBIRIMFIYAT'
      ReadOnly = True
    end
    object TeklifVermeBodroIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G.G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'TEKLIFBODRO.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object TeklifVermeBodroIBQC_ALISKDVTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_ALISKDVTUTAR'
      Origin = 'TEKLIFBODRO.C_ALISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifVermeBodroIBQC_SATISKDVTUTAR: TFloatField
      DisplayLabel = 'Sat'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_SATISKDVTUTAR'
      Origin = 'TEKLIFBODRO.C_SATISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifVermeBodroIBQC_TLALISKDVTUTAR: TFloatField
      DisplayLabel = 'TL Al'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISKDVTUTAR'
      Origin = 'TEKLIFBODRO.C_TLALISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifVermeBodroIBQC_TLSATISKDVTUTARI: TFloatField
      DisplayLabel = 'TL Sat'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISKDVTUTARI'
      Origin = 'TEKLIFBODRO.C_TLSATISKDVTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifVermeBodroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'TEKLIFBODRO.SISTEM'
    end
    object TeklifVermeBodroIBQMALIYETFIYATI: TFloatField
      DisplayLabel = 'Maliyet Fiyat'#305
      FieldName = 'MALIYETFIYATI'
      Origin = 'TEKLIFBODRO.MALIYETFIYATI'
    end
    object TeklifVermeBodroIBQC_MALIYETTUTARI: TFloatField
      DisplayLabel = 'Maliyet Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_MALIYETTUTARI'
      Origin = 'TEKLIFBODRO.C_MALIYETTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifVermeBodroIBQC_KARZARAR: TFloatField
      DisplayLabel = 'Kar Zarar'
      FieldKind = fkInternalCalc
      FieldName = 'C_KARZARAR'
      Origin = 'TEKLIFBODRO.C_KARZARAR'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
  end
  object TeklifVermeBodroSQL: TIBUpdateSQL
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
      '  ISLEMKURU,'
      '  GELGITKOD,'
      '  PERSONELKOD,'
      '  KULLANKOD,'
      '  EVRAKDURUMU,'
      '  SERINO,'
      '  C_CARIADI,'
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
      'from TEKLIFBODRO '
      'where'
      '  BODROKOD = :BODROKOD')
    ModifySQL.Strings = (
      'update TEKLIFBODRO'
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
      '  ISLEMKURU = :ISLEMKURU,'
      '  GELGITKOD = :GELGITKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  KULLANKOD = :KULLANKOD,'
      '  EVRAKDURUMU = :EVRAKDURUMU,'
      '  SERINO = :SERINO,'
      '  ISLEMKOD = :ISLEMKOD,'
      '  KDVSECIM = :KDVSECIM,'
      '  SISTEM = :SISTEM,'
      '  MALIYETFIYATI = :MALIYETFIYATI'
      'where'
      '  BODROKOD = :OLD_BODROKOD')
    InsertSQL.Strings = (
      'insert into TEKLIFBODRO'
      
        '  (BODROKOD, SIRANO, ISLEMTUR, CARIKOD, PARABIRIMKOD, TARIH, STO' +
        'KKOD, STOKNO, '
      
        '   BARKOD, STOKADI, MIKTAR, MIKTARCARPAN, GIRISMIKTAR, CIKISMIKT' +
        'AR, BIRIM, '
      
        '   BIRIMFIYAT, ALISFIYAT, SATISTUTAR, SATISFIYAT, ALISTUTAR, ALI' +
        'SMATRAHI, '
      
        '   SATISMATRAHI, ISKONTO1, ISKONTO2, ISKONTO3, ISKONTO4, KDVORAN' +
        'I, BAKIYE, '
      
        '   DURUM, ACIKLAMA, KAPATMA, VADE, ISLEMKURU, GELGITKOD, PERSONE' +
        'LKOD, KULLANKOD, '
      
        '   EVRAKDURUMU, SERINO, ISLEMKOD, KDVSECIM, SISTEM, MALIYETFIYAT' +
        'I)'
      'values'
      
        '  (:BODROKOD, :SIRANO, :ISLEMTUR, :CARIKOD, :PARABIRIMKOD, :TARI' +
        'H, :STOKKOD, '
      
        '   :STOKNO, :BARKOD, :STOKADI, :MIKTAR, :MIKTARCARPAN, :GIRISMIK' +
        'TAR, :CIKISMIKTAR, '
      
        '   :BIRIM, :BIRIMFIYAT, :ALISFIYAT, :SATISTUTAR, :SATISFIYAT, :A' +
        'LISTUTAR, '
      
        '   :ALISMATRAHI, :SATISMATRAHI, :ISKONTO1, :ISKONTO2, :ISKONTO3,' +
        ' :ISKONTO4, '
      
        '   :KDVORANI, :BAKIYE, :DURUM, :ACIKLAMA, :KAPATMA, :VADE, :ISLE' +
        'MKURU, '
      
        '   :GELGITKOD, :PERSONELKOD, :KULLANKOD, :EVRAKDURUMU, :SERINO, ' +
        ':ISLEMKOD, '
      '   :KDVSECIM, :SISTEM, :MALIYETFIYATI)')
    DeleteSQL.Strings = (
      'delete from TEKLIFBODRO'
      'where'
      '  BODROKOD = :OLD_BODROKOD')
    Left = 155
    Top = 136
  end
  object TeklifVermeBodroDS: TDataSource
    DataSet = TeklifVermeBodroIBQ
    Left = 269
    Top = 136
  end
  object TekliflerIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = TekliflerIBQAfterDelete
    AfterEdit = TekliflerIBQAfterEdit
    AfterPost = TekliflerIBQAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TEKLIFISLEM'
      'Where SISTEM<>2'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = TekliflerSQL
    Left = 40
    Top = 16
    object TekliflerIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'TEKLIFISLEM.ISLEMKOD'
      Required = True
    end
    object TekliflerIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'TEKLIFISLEM.ISLEMTUR'
    end
    object TekliflerIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'TEKLIFISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object TekliflerIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'TEKLIFISLEM.CARIKOD'
    end
    object TekliflerIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'TEKLIFISLEM.CARINO'
    end
    object TekliflerIBQTEKLIFISLEMNO: TIntegerField
      FieldName = 'TEKLIFISLEMNO'
      Origin = 'TEKLIFISLEM.TEKLIFISLEMNO'
    end
    object TekliflerIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'TEKLIFISLEM.TARIH'
    end
    object TekliflerIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'TEKLIFISLEM.SAAT'
    end
    object TekliflerIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'TEKLIFISLEM.ACIKLAMA'
      Size = 80
    end
    object TekliflerIBQALISTUTAR: TFloatField
      FieldName = 'ALISTUTAR'
      Origin = 'TEKLIFISLEM.ALISTUTAR'
    end
    object TekliflerIBQSATISTUTAR: TFloatField
      FieldName = 'SATISTUTAR'
      Origin = 'TEKLIFISLEM.SATISTUTAR'
    end
    object TekliflerIBQALISMATRAH: TFloatField
      FieldName = 'ALISMATRAH'
      Origin = 'TEKLIFISLEM.ALISMATRAH'
    end
    object TekliflerIBQALISKDVTUTAR: TFloatField
      FieldName = 'ALISKDVTUTAR'
      Origin = 'TEKLIFISLEM.ALISKDVTUTAR'
    end
    object TekliflerIBQSATISMATRAH: TFloatField
      FieldName = 'SATISMATRAH'
      Origin = 'TEKLIFISLEM.SATISMATRAH'
    end
    object TekliflerIBQSATISKDVTUTAR: TFloatField
      FieldName = 'SATISKDVTUTAR'
      Origin = 'TEKLIFISLEM.SATISKDVTUTAR'
    end
    object TekliflerIBQCARIKURU: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'TEKLIFISLEM.CARIKURU'
    end
    object TekliflerIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'TEKLIFISLEM.ISLEMKURU'
    end
    object TekliflerIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'TEKLIFISLEM.KAPATMA'
    end
    object TekliflerIBQVADE: TDateField
      FieldName = 'VADE'
      Origin = 'TEKLIFISLEM.VADE'
    end
    object TekliflerIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'TEKLIFISLEM.GELGITKOD'
      Size = 80
    end
    object TekliflerIBQEVRAKNO: TIntegerField
      FieldName = 'EVRAKNO'
      Origin = 'TEKLIFISLEM.EVRAKNO'
    end
    object TekliflerIBQBELGENO: TIntegerField
      FieldName = 'BELGENO'
      Origin = 'TEKLIFISLEM.BELGENO'
    end
    object TekliflerIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'TEKLIFISLEM.BAGLANTINO'
    end
    object TekliflerIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'TEKLIFISLEM.PARABIRIMKOD'
    end
    object TekliflerIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'TEKLIFISLEM.MAKBUZNO'
    end
    object TekliflerIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'TEKLIFISLEM.BILGIKOD'
    end
    object TekliflerIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'TEKLIFISLEM.KULLANKOD'
    end
    object TekliflerIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'TEKLIFISLEM.PERSONELKOD'
    end
    object TekliflerIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'TEKLIFISLEM.CARIPARABIRIMKOD'
    end
    object TekliflerIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'TEKLIFISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object TekliflerIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'TEKLIFISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object TekliflerIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'TEKLIFISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object TekliflerIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'TEKLIFISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object TekliflerIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'TEKLIFISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object TekliflerIBQKDVSECIM: TIBStringField
      FieldName = 'KDVSECIM'
      Origin = 'TEKLIFISLEM.KDVSECIM'
      Size = 5
    end
    object TekliflerIBQD_ALISTUTAR: TFloatField
      FieldName = 'D_ALISTUTAR'
      Origin = 'TEKLIFISLEM.D_ALISTUTAR'
    end
    object TekliflerIBQD_ALISKDVTUTAR: TFloatField
      FieldName = 'D_ALISKDVTUTAR'
      Origin = 'TEKLIFISLEM.D_ALISKDVTUTAR'
    end
    object TekliflerIBQD_ALISMATRAH: TFloatField
      FieldName = 'D_ALISMATRAH'
      Origin = 'TEKLIFISLEM.D_ALISMATRAH'
    end
    object TekliflerIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'TEKLIFISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object TekliflerIBQC_FIYATSEC: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_FIYATSEC'
      Origin = 'TEKLIFISLEM.C_FIYATSEC'
      ReadOnly = True
    end
    object TekliflerIBQD_SATISTUTAR: TFloatField
      FieldName = 'D_SATISTUTAR'
      Origin = 'TEKLIFISLEM.D_SATISTUTAR'
    end
    object TekliflerIBQD_SATISKDVTUTAR: TFloatField
      FieldName = 'D_SATISKDVTUTAR'
      Origin = 'TEKLIFISLEM.D_SATISKDVTUTAR'
    end
    object TekliflerIBQD_SATISMATRAH: TFloatField
      FieldName = 'D_SATISMATRAH'
      Origin = 'TEKLIFISLEM.D_SATISMATRAH'
    end
    object TekliflerIBQEVRAKTARIH: TDateField
      FieldName = 'EVRAKTARIH'
      Origin = 'TEKLIFISLEM.EVRAKTARIH'
    end
    object TekliflerIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'TEKLIFISLEM.SISTEM'
    end
    object TekliflerIBQEVRAKDURUM: TIntegerField
      DisplayLabel = 'Durum'
      FieldName = 'EVRAKDURUM'
      Origin = 'TEKLIFISLEM.EVRAKDURUM'
    end
  end
  object TekliflerSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  CARIKOD,'
      '  CARINO,'
      '  TEKLIFISLEMNO,'
      '  TARIH,'
      '  SAAT,'
      '  ACIKLAMA,'
      '  ALISTUTAR,'
      '  SATISTUTAR,'
      '  ALISMATRAH,'
      '  ALISKDVTUTAR,'
      '  SATISMATRAH,'
      '  SATISKDVTUTAR,'
      '  CARIKURU,'
      '  ISLEMKURU,'
      '  KAPATMA,'
      '  VADE,'
      '  GELGITKOD,'
      '  EVRAKNO,'
      '  BELGENO,'
      '  BAGLANTINO,'
      '  PARABIRIMKOD,'
      '  MAKBUZNO,'
      '  BILGIKOD,'
      '  KULLANKOD,'
      '  PERSONELKOD,'
      '  CARIPARABIRIMKOD,'
      '  C_CARIPARABIRIM,'
      '  C_PARABIRIMI,'
      '  C_CARIADI,'
      '  C_KULLANICIADI,'
      '  C_PERSONEL,'
      '  KDVSECIM,'
      '  D_ALISTUTAR,'
      '  D_ALISKDVTUTAR,'
      '  D_ALISMATRAH,'
      '  C_GGMERKEZI,'
      '  C_FIYATSEC,'
      '  D_SATISTUTAR,'
      '  D_SATISKDVTUTAR,'
      '  D_SATISMATRAH,'
      '  EVRAKTARIH,'
      '  SISTEM,'
      '  EVRAKDURUM'
      'from TEKLIFISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update TEKLIFISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  CARIKOD = :CARIKOD,'
      '  CARINO = :CARINO,'
      '  TEKLIFISLEMNO = :TEKLIFISLEMNO,'
      '  TARIH = :TARIH,'
      '  SAAT = :SAAT,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  ALISTUTAR = :ALISTUTAR,'
      '  SATISTUTAR = :SATISTUTAR,'
      '  ALISMATRAH = :ALISMATRAH,'
      '  ALISKDVTUTAR = :ALISKDVTUTAR,'
      '  SATISMATRAH = :SATISMATRAH,'
      '  SATISKDVTUTAR = :SATISKDVTUTAR,'
      '  CARIKURU = :CARIKURU,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  KAPATMA = :KAPATMA,'
      '  VADE = :VADE,'
      '  GELGITKOD = :GELGITKOD,'
      '  EVRAKNO = :EVRAKNO,'
      '  BELGENO = :BELGENO,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  BILGIKOD = :BILGIKOD,'
      '  KULLANKOD = :KULLANKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  KDVSECIM = :KDVSECIM,'
      '  D_ALISTUTAR = :D_ALISTUTAR,'
      '  D_ALISKDVTUTAR = :D_ALISKDVTUTAR,'
      '  D_ALISMATRAH = :D_ALISMATRAH,'
      '  D_SATISTUTAR = :D_SATISTUTAR,'
      '  D_SATISKDVTUTAR = :D_SATISKDVTUTAR,'
      '  D_SATISMATRAH = :D_SATISMATRAH,'
      '  EVRAKTARIH = :EVRAKTARIH,'
      '  SISTEM = :SISTEM,'
      '  EVRAKDURUM = :EVRAKDURUM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into TEKLIFISLEM'
      
        '  (ISLEMKOD, ISLEMTUR, CARIKOD, CARINO, TEKLIFISLEMNO, TARIH, SA' +
        'AT, ACIKLAMA, '
      
        '   ALISTUTAR, SATISTUTAR, ALISMATRAH, ALISKDVTUTAR, SATISMATRAH,' +
        ' SATISKDVTUTAR, '
      
        '   CARIKURU, ISLEMKURU, KAPATMA, VADE, GELGITKOD, EVRAKNO, BELGE' +
        'NO, BAGLANTINO, '
      
        '   PARABIRIMKOD, MAKBUZNO, BILGIKOD, KULLANKOD, PERSONELKOD, CAR' +
        'IPARABIRIMKOD, '
      
        '   KDVSECIM, D_ALISTUTAR, D_ALISKDVTUTAR, D_ALISMATRAH, D_SATIST' +
        'UTAR, D_SATISKDVTUTAR, '
      '   D_SATISMATRAH, EVRAKTARIH, SISTEM, EVRAKDURUM)'
      'values'
      
        '  (:ISLEMKOD, :ISLEMTUR, :CARIKOD, :CARINO, :TEKLIFISLEMNO, :TAR' +
        'IH, :SAAT, '
      
        '   :ACIKLAMA, :ALISTUTAR, :SATISTUTAR, :ALISMATRAH, :ALISKDVTUTA' +
        'R, :SATISMATRAH, '
      
        '   :SATISKDVTUTAR, :CARIKURU, :ISLEMKURU, :KAPATMA, :VADE, :GELG' +
        'ITKOD, '
      
        '   :EVRAKNO, :BELGENO, :BAGLANTINO, :PARABIRIMKOD, :MAKBUZNO, :B' +
        'ILGIKOD, '
      
        '   :KULLANKOD, :PERSONELKOD, :CARIPARABIRIMKOD, :KDVSECIM, :D_AL' +
        'ISTUTAR, '
      
        '   :D_ALISKDVTUTAR, :D_ALISMATRAH, :D_SATISTUTAR, :D_SATISKDVTUT' +
        'AR, :D_SATISMATRAH, '
      '   :EVRAKTARIH, :SISTEM, :EVRAKDURUM)')
    DeleteSQL.Strings = (
      'delete from TEKLIFISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 155
    Top = 16
  end
  object TekliflerDS: TDataSource
    DataSet = TekliflerIBQ
    Left = 269
    Top = 16
  end
  object TVermeBilgiIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = TVermeBilgiIBQAfterDelete
    AfterPost = TVermeBilgiIBQAfterPost
    OnNewRecord = TVermeBilgiIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = TeklifVermeDS
    SQL.Strings = (
      'select * from ISLEMBILGI'
      'Where ISLEMKOD=:ISLEMKOD and ISLEMTURKOD=:ISLEMTURKOD')
    UpdateObject = TVermeBilgiSQL
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
    object TVermeBilgiIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'ISLEMBILGI.BILGIKOD'
      Required = True
    end
    object TVermeBilgiIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'ISLEMBILGI.ISLEMKOD'
    end
    object TVermeBilgiIBQALTBILGI: TMemoField
      FieldName = 'ALTBILGI'
      Origin = 'ISLEMBILGI.ALTBILGI'
      BlobType = ftMemo
      Size = 8
    end
    object TVermeBilgiIBQUSTBILGI: TMemoField
      FieldName = 'USTBILGI'
      Origin = 'ISLEMBILGI.USTBILGI'
      BlobType = ftMemo
      Size = 8
    end
    object TVermeBilgiIBQALTISKONTO: TFloatField
      FieldName = 'ALTISKONTO'
      Origin = 'ISLEMBILGI.ALTISKONTO'
    end
    object TVermeBilgiIBQISLEMTURKOD: TIntegerField
      FieldName = 'ISLEMTURKOD'
      Origin = 'ISLEMBILGI.ISLEMTURKOD'
    end
  end
  object TVermeBilgiSQL: TIBUpdateSQL
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
    Left = 160
    Top = 189
  end
  object TVermeBilgiDS: TDataSource
    DataSet = TVermeBilgiIBQ
    Left = 264
    Top = 189
  end
  object TeklifAlmaIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = TeklifAlmaIBQAfterDelete
    AfterEdit = TeklifAlmaIBQAfterEdit
    AfterPost = TeklifAlmaIBQAfterPost
    OnNewRecord = TeklifAlmaIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TEKLIFISLEM'
      'Where ISLEMTURKOD=30 and SISTEM<>2'
      'Order By Tarih,ISLEMKOD')
    UpdateObject = TeklifAlmaSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'TEKLIFISLEM'
    Left = 40
    Top = 248
    object TeklifAlmaIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'TEKLIFISLEM.ISLEMKOD'
      Required = True
    end
    object TeklifAlmaIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'TEKLIFISLEM.ISLEMTUR'
    end
    object TeklifAlmaIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'TEKLIFISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object TeklifAlmaIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'TEKLIFISLEM.CARIKOD'
    end
    object TeklifAlmaIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'TEKLIFISLEM.CARINO'
    end
    object TeklifAlmaIBQTEKLIFISLEMNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'TEKLIFISLEMNO'
      Origin = 'TEKLIFISLEM.TEKLIFISLEMNO'
    end
    object TeklifAlmaIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'TEKLIFISLEM.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object TeklifAlmaIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'TEKLIFISLEM.SAAT'
    end
    object TeklifAlmaIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'TEKLIFISLEM.ACIKLAMA'
      Size = 80
    end
    object TeklifAlmaIBQALISTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' Tutar'#305
      FieldName = 'ALISTUTAR'
      Origin = 'TEKLIFISLEM.ALISTUTAR'
      DisplayFormat = '###,###'
    end
    object TeklifAlmaIBQSATISTUTAR: TFloatField
      DisplayLabel = 'Sat'#305#351' Tutar'#305
      FieldName = 'SATISTUTAR'
      Origin = 'TEKLIFISLEM.SATISTUTAR'
      DisplayFormat = '###,###'
    end
    object TeklifAlmaIBQALISMATRAH: TFloatField
      DisplayLabel = 'Al'#305#351' Matrah'#305
      FieldName = 'ALISMATRAH'
      Origin = 'TEKLIFISLEM.ALISMATRAH'
      DisplayFormat = '###,###'
    end
    object TeklifAlmaIBQALISKDVTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' KDV Tutar'#305
      FieldName = 'ALISKDVTUTAR'
      Origin = 'TEKLIFISLEM.ALISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object TeklifAlmaIBQSATISMATRAH: TFloatField
      DisplayLabel = 'Sat'#305#351' Matrah'#305
      FieldName = 'SATISMATRAH'
      Origin = 'TEKLIFISLEM.SATISMATRAH'
      DisplayFormat = '###,###'
    end
    object TeklifAlmaIBQSATISKDVTUTAR: TFloatField
      DisplayLabel = 'Sat'#305#351' KDV Tutar'#305
      FieldName = 'SATISKDVTUTAR'
      Origin = 'TEKLIFISLEM.SATISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object TeklifAlmaIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'TEKLIFISLEM.CARIKURU'
      DisplayFormat = '###,###'
    end
    object TeklifAlmaIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'TEKLIFISLEM.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object TeklifAlmaIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'TEKLIFISLEM.KAPATMA'
    end
    object TeklifAlmaIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'TEKLIFISLEM.VADE'
      EditMask = '!99/99/00;1;_'
    end
    object TeklifAlmaIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'TEKLIFISLEM.GELGITKOD'
      Size = 80
    end
    object TeklifAlmaIBQEVRAKNO: TIntegerField
      DisplayLabel = 'Evrak No'
      FieldName = 'EVRAKNO'
      Origin = 'TEKLIFISLEM.EVRAKNO'
    end
    object TeklifAlmaIBQBELGENO: TIntegerField
      DisplayLabel = 'Belge No'
      FieldName = 'BELGENO'
      Origin = 'TEKLIFISLEM.BELGENO'
    end
    object TeklifAlmaIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'TEKLIFISLEM.BAGLANTINO'
    end
    object TeklifAlmaIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'TEKLIFISLEM.PARABIRIMKOD'
    end
    object TeklifAlmaIBQMAKBUZNO: TIntegerField
      DisplayLabel = 'Makbuz No'
      FieldName = 'MAKBUZNO'
      Origin = 'TEKLIFISLEM.MAKBUZNO'
    end
    object TeklifAlmaIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'TEKLIFISLEM.BILGIKOD'
    end
    object TeklifAlmaIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'TEKLIFISLEM.KULLANKOD'
    end
    object TeklifAlmaIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'TEKLIFISLEM.PERSONELKOD'
    end
    object TeklifAlmaIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'TEKLIFISLEM.CARIPARABIRIMKOD'
    end
    object TeklifAlmaIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'TEKLIFISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object TeklifAlmaIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'TEKLIFISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object TeklifAlmaIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Vari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'TEKLIFISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object TeklifAlmaIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'TEKLIFISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object TeklifAlmaIBQC_PERSONEL: TIBStringField
      DisplayLabel = 'Personel'
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'TEKLIFISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object TeklifAlmaIBQKDVSECIM: TIBStringField
      FieldName = 'KDVSECIM'
      Origin = 'TEKLIFISLEM.KDVSECIM'
      Size = 5
    end
    object TeklifAlmaIBQD_ALISTUTAR: TFloatField
      DisplayLabel = 'D. Al'#305#351' Tutar'
      FieldName = 'D_ALISTUTAR'
      Origin = 'TEKLIFISLEM.D_ALISTUTAR'
      DisplayFormat = '###,###'
    end
    object TeklifAlmaIBQD_ALISKDVTUTAR: TFloatField
      DisplayLabel = 'D. Al'#305#351' KDV Tutar'#305
      FieldName = 'D_ALISKDVTUTAR'
      Origin = 'TEKLIFISLEM.D_ALISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object TeklifAlmaIBQD_ALISMATRAH: TFloatField
      DisplayLabel = 'D. Al'#305#351' Matrah'#305
      FieldName = 'D_ALISMATRAH'
      Origin = 'TEKLIFISLEM.D_ALISMATRAH'
      DisplayFormat = '###,###'
    end
    object TeklifAlmaIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G.G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'TEKLIFISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object TeklifAlmaIBQC_FIYATSEC: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_FIYATSEC'
      Origin = 'TEKLIFISLEM.C_FIYATSEC'
      ReadOnly = True
    end
    object TeklifAlmaIBQD_SATISTUTAR: TFloatField
      DisplayLabel = 'D. Sat'#305#351' Tutar'#305
      FieldName = 'D_SATISTUTAR'
      Origin = 'TEKLIFISLEM.D_SATISTUTAR'
      DisplayFormat = '###,###'
    end
    object TeklifAlmaIBQD_SATISKDVTUTAR: TFloatField
      DisplayLabel = 'D. Sat'#305#351' KDV Tutar'#305
      FieldName = 'D_SATISKDVTUTAR'
      Origin = 'TEKLIFISLEM.D_SATISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object TeklifAlmaIBQD_SATISMATRAH: TFloatField
      DisplayLabel = 'D. Sat'#305#351' Matrah'#305
      FieldName = 'D_SATISMATRAH'
      Origin = 'TEKLIFISLEM.D_SATISMATRAH'
      DisplayFormat = '###,###'
    end
    object TeklifAlmaIBQEVRAKTARIH: TDateField
      DisplayLabel = 'Evrak Tarihi'
      FieldName = 'EVRAKTARIH'
      Origin = 'TEKLIFISLEM.EVRAKTARIH'
      EditMask = '!99/99/00;1;_'
    end
    object TeklifAlmaIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'TEKLIFISLEM.SISTEM'
    end
    object TeklifAlmaIBQEVRAKDURUM: TIntegerField
      FieldName = 'EVRAKDURUM'
      Origin = 'TEKLIFISLEM.EVRAKDURUM'
    end
  end
  object TeklifAlmaSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  CARIKOD,'
      '  CARINO,'
      '  TEKLIFISLEMNO,'
      '  TARIH,'
      '  SAAT,'
      '  ACIKLAMA,'
      '  ALISTUTAR,'
      '  SATISTUTAR,'
      '  ALISMATRAH,'
      '  ALISKDVTUTAR,'
      '  SATISMATRAH,'
      '  SATISKDVTUTAR,'
      '  CARIKURU,'
      '  ISLEMKURU,'
      '  KAPATMA,'
      '  VADE,'
      '  GELGITKOD,'
      '  EVRAKNO,'
      '  BELGENO,'
      '  BAGLANTINO,'
      '  PARABIRIMKOD,'
      '  MAKBUZNO,'
      '  BILGIKOD,'
      '  KULLANKOD,'
      '  PERSONELKOD,'
      '  CARIPARABIRIMKOD,'
      '  C_CARIPARABIRIM,'
      '  C_PARABIRIMI,'
      '  C_CARIADI,'
      '  C_KULLANICIADI,'
      '  C_PERSONEL,'
      '  KDVSECIM,'
      '  D_ALISTUTAR,'
      '  D_ALISKDVTUTAR,'
      '  D_ALISMATRAH,'
      '  C_GGMERKEZI,'
      '  C_FIYATSEC,'
      '  D_SATISTUTAR,'
      '  D_SATISKDVTUTAR,'
      '  D_SATISMATRAH,'
      '  EVRAKTARIH,'
      '  SISTEM,'
      '  EVRAKDURUM'
      'from TEKLIFISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update TEKLIFISLEM'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  CARIKOD = :CARIKOD,'
      '  CARINO = :CARINO,'
      '  TEKLIFISLEMNO = :TEKLIFISLEMNO,'
      '  TARIH = :TARIH,'
      '  SAAT = :SAAT,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  ALISTUTAR = :ALISTUTAR,'
      '  SATISTUTAR = :SATISTUTAR,'
      '  ALISMATRAH = :ALISMATRAH,'
      '  ALISKDVTUTAR = :ALISKDVTUTAR,'
      '  SATISMATRAH = :SATISMATRAH,'
      '  SATISKDVTUTAR = :SATISKDVTUTAR,'
      '  CARIKURU = :CARIKURU,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  KAPATMA = :KAPATMA,'
      '  VADE = :VADE,'
      '  GELGITKOD = :GELGITKOD,'
      '  EVRAKNO = :EVRAKNO,'
      '  BELGENO = :BELGENO,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  BILGIKOD = :BILGIKOD,'
      '  KULLANKOD = :KULLANKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  KDVSECIM = :KDVSECIM,'
      '  D_ALISTUTAR = :D_ALISTUTAR,'
      '  D_ALISKDVTUTAR = :D_ALISKDVTUTAR,'
      '  D_ALISMATRAH = :D_ALISMATRAH,'
      '  D_SATISTUTAR = :D_SATISTUTAR,'
      '  D_SATISKDVTUTAR = :D_SATISKDVTUTAR,'
      '  D_SATISMATRAH = :D_SATISMATRAH,'
      '  EVRAKTARIH = :EVRAKTARIH,'
      '  SISTEM = :SISTEM,'
      '  EVRAKDURUM = :EVRAKDURUM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into TEKLIFISLEM'
      
        '  (ISLEMKOD, ISLEMTUR, CARIKOD, CARINO, TEKLIFISLEMNO, TARIH, SA' +
        'AT, ACIKLAMA, '
      
        '   ALISTUTAR, SATISTUTAR, ALISMATRAH, ALISKDVTUTAR, SATISMATRAH,' +
        ' SATISKDVTUTAR, '
      
        '   CARIKURU, ISLEMKURU, KAPATMA, VADE, GELGITKOD, EVRAKNO, BELGE' +
        'NO, BAGLANTINO, '
      
        '   PARABIRIMKOD, MAKBUZNO, BILGIKOD, KULLANKOD, PERSONELKOD, CAR' +
        'IPARABIRIMKOD, '
      
        '   KDVSECIM, D_ALISTUTAR, D_ALISKDVTUTAR, D_ALISMATRAH, D_SATIST' +
        'UTAR, D_SATISKDVTUTAR, '
      '   D_SATISMATRAH, EVRAKTARIH, SISTEM, EVRAKDURUM)'
      'values'
      
        '  (:ISLEMKOD, :ISLEMTUR, :CARIKOD, :CARINO, :TEKLIFISLEMNO, :TAR' +
        'IH, :SAAT, '
      
        '   :ACIKLAMA, :ALISTUTAR, :SATISTUTAR, :ALISMATRAH, :ALISKDVTUTA' +
        'R, :SATISMATRAH, '
      
        '   :SATISKDVTUTAR, :CARIKURU, :ISLEMKURU, :KAPATMA, :VADE, :GELG' +
        'ITKOD, '
      
        '   :EVRAKNO, :BELGENO, :BAGLANTINO, :PARABIRIMKOD, :MAKBUZNO, :B' +
        'ILGIKOD, '
      
        '   :KULLANKOD, :PERSONELKOD, :CARIPARABIRIMKOD, :KDVSECIM, :D_AL' +
        'ISTUTAR, '
      
        '   :D_ALISKDVTUTAR, :D_ALISMATRAH, :D_SATISTUTAR, :D_SATISKDVTUT' +
        'AR, :D_SATISMATRAH, '
      '   :EVRAKTARIH, :SISTEM, :EVRAKDURUM)')
    DeleteSQL.Strings = (
      'delete from TEKLIFISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 155
    Top = 248
  end
  object TeklifAlmaDS: TDataSource
    DataSet = TeklifAlmaIBQ
    Left = 269
    Top = 248
  end
  object TeklifAlmaBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = TeklifAlmaBodroIBQAfterDelete
    AfterEdit = TeklifAlmaBodroIBQAfterEdit
    AfterPost = TeklifAlmaBodroIBQAfterPost
    OnNewRecord = TeklifAlmaBodroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = TeklifAlmaDS
    SQL.Strings = (
      'select * from TEKLIFBODRO'
      'Where ISLEMKOD=:ISLEMKOD'
      'Order By SIRANO')
    UpdateObject = TeklifAlmaBodroSQL
    GeneratorField.Field = 'BODROKOD'
    GeneratorField.Generator = 'TEKLIFBODRO'
    Left = 40
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
      end>
    object TeklifAlmaBodroIBQBODROKOD: TIntegerField
      FieldName = 'BODROKOD'
      Origin = 'TEKLIFBODRO.BODROKOD'
      Required = True
    end
    object TeklifAlmaBodroIBQSIRANO: TIntegerField
      DisplayLabel = 'S'#305'ra'
      FieldName = 'SIRANO'
      Origin = 'TEKLIFBODRO.SIRANO'
    end
    object TeklifAlmaBodroIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'TEKLIFBODRO.ISLEMTUR'
      Size = 40
    end
    object TeklifAlmaBodroIBQC_ISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_ISLEMTURKOD'
      Origin = 'TEKLIFBODRO.C_ISLEMTURKOD'
      ReadOnly = True
    end
    object TeklifAlmaBodroIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'TEKLIFBODRO.CARIKOD'
    end
    object TeklifAlmaBodroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'TEKLIFBODRO.PARABIRIMKOD'
    end
    object TeklifAlmaBodroIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'TEKLIFBODRO.TARIH'
    end
    object TeklifAlmaBodroIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'TEKLIFBODRO.STOKKOD'
    end
    object TeklifAlmaBodroIBQSTOKNO: TIntegerField
      DisplayLabel = 'Stok No'
      FieldName = 'STOKNO'
      Origin = 'TEKLIFBODRO.STOKNO'
    end
    object TeklifAlmaBodroIBQBARKOD: TIBStringField
      DisplayLabel = 'Barkod'
      FieldName = 'BARKOD'
      Origin = 'TEKLIFBODRO.BARKOD'
      Size = 25
    end
    object TeklifAlmaBodroIBQSTOKADI: TIBStringField
      DisplayLabel = 'Stok Ad'#305
      FieldName = 'STOKADI'
      Origin = 'TEKLIFBODRO.STOKADI'
      Size = 80
    end
    object TeklifAlmaBodroIBQMIKTAR: TFloatField
      DisplayLabel = 'Miktar'
      FieldName = 'MIKTAR'
      Origin = 'TEKLIFBODRO.MIKTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifAlmaBodroIBQMIKTARCARPAN: TIntegerField
      DisplayLabel = 'Birim '#199'arpan'#305
      FieldName = 'MIKTARCARPAN'
      Origin = 'TEKLIFBODRO.MIKTARCARPAN'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifAlmaBodroIBQGIRISMIKTAR: TFloatField
      DisplayLabel = 'Giri'#351' Miktar'#305
      FieldName = 'GIRISMIKTAR'
      Origin = 'TEKLIFBODRO.GIRISMIKTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifAlmaBodroIBQCIKISMIKTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Miktar'#305
      FieldName = 'CIKISMIKTAR'
      Origin = 'TEKLIFBODRO.CIKISMIKTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifAlmaBodroIBQBIRIM: TIBStringField
      DisplayLabel = 'Birim'
      FieldName = 'BIRIM'
      Origin = 'TEKLIFBODRO.BIRIM'
      Size = 10
    end
    object TeklifAlmaBodroIBQBIRIMFIYAT: TFloatField
      DisplayLabel = 'Birim Fiyat'
      FieldName = 'BIRIMFIYAT'
      Origin = 'TEKLIFBODRO.BIRIMFIYAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifAlmaBodroIBQALISFIYAT: TFloatField
      DisplayLabel = 'Al'#305#351' Fiyat'#305
      FieldName = 'ALISFIYAT'
      Origin = 'TEKLIFBODRO.ALISFIYAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifAlmaBodroIBQSATISTUTAR: TFloatField
      DisplayLabel = 'Sat'#305#351' Tutar'#305
      FieldName = 'SATISTUTAR'
      Origin = 'TEKLIFBODRO.SATISTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifAlmaBodroIBQSATISFIYAT: TFloatField
      DisplayLabel = 'Sat'#305#351' Fiyat'#305
      FieldName = 'SATISFIYAT'
      Origin = 'TEKLIFBODRO.SATISFIYAT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifAlmaBodroIBQALISTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' Tutar'#305
      FieldName = 'ALISTUTAR'
      Origin = 'TEKLIFBODRO.ALISTUTAR'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifAlmaBodroIBQALISMATRAHI: TFloatField
      DisplayLabel = 'Al'#305#351' Matrah'#305
      FieldName = 'ALISMATRAHI'
      Origin = 'TEKLIFBODRO.ALISMATRAHI'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifAlmaBodroIBQSATISMATRAHI: TFloatField
      DisplayLabel = 'Sat'#305#351' Matrah'#305
      FieldName = 'SATISMATRAHI'
      Origin = 'TEKLIFBODRO.SATISMATRAHI'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifAlmaBodroIBQISKONTO1: TFloatField
      DisplayLabel = #304'sk.1'
      FieldName = 'ISKONTO1'
      Origin = 'TEKLIFBODRO.ISKONTO1'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object TeklifAlmaBodroIBQISKONTO2: TFloatField
      DisplayLabel = #304'sk.2'
      FieldName = 'ISKONTO2'
      Origin = 'TEKLIFBODRO.ISKONTO2'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object TeklifAlmaBodroIBQISKONTO3: TFloatField
      DisplayLabel = #304'sk.3'
      FieldName = 'ISKONTO3'
      Origin = 'TEKLIFBODRO.ISKONTO3'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object TeklifAlmaBodroIBQISKONTO4: TFloatField
      DisplayLabel = #304'sk.4'
      FieldName = 'ISKONTO4'
      Origin = 'TEKLIFBODRO.ISKONTO4'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object TeklifAlmaBodroIBQKDVORANI: TFloatField
      DisplayLabel = 'Kdv Oran'#305
      FieldName = 'KDVORANI'
      Origin = 'TEKLIFBODRO.KDVORANI'
      DisplayFormat = '% ##'
      EditFormat = '#'
    end
    object TeklifAlmaBodroIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'TEKLIFBODRO.BAKIYE'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifAlmaBodroIBQDURUM: TIntegerField
      DisplayLabel = 'Durum'
      FieldName = 'DURUM'
      Origin = 'TEKLIFBODRO.DURUM'
    end
    object TeklifAlmaBodroIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'TEKLIFBODRO.ACIKLAMA'
      Size = 60
    end
    object TeklifAlmaBodroIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'TEKLIFBODRO.KAPATMA'
    end
    object TeklifAlmaBodroIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'TEKLIFBODRO.VADE'
    end
    object TeklifAlmaBodroIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'TEKLIFBODRO.ISLEMKURU'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifAlmaBodroIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'TEKLIFBODRO.GELGITKOD'
      Size = 80
    end
    object TeklifAlmaBodroIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'TEKLIFBODRO.PERSONELKOD'
    end
    object TeklifAlmaBodroIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'TEKLIFBODRO.KULLANKOD'
    end
    object TeklifAlmaBodroIBQEVRAKDURUMU: TIntegerField
      DisplayLabel = 'Evrak Durumu'
      FieldName = 'EVRAKDURUMU'
      Origin = 'TEKLIFBODRO.EVRAKDURUMU'
    end
    object TeklifAlmaBodroIBQSERINO: TIBStringField
      DisplayLabel = 'Seri No'
      FieldName = 'SERINO'
      Origin = 'TEKLIFBODRO.SERINO'
      Size = 30
    end
    object TeklifAlmaBodroIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'TEKLIFBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object TeklifAlmaBodroIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'TEKLIFBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object TeklifAlmaBodroIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'TEKLIFBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object TeklifAlmaBodroIBQC_REELALIS: TFloatField
      DisplayLabel = 'Reel Al'#305#351
      FieldKind = fkInternalCalc
      FieldName = 'C_REELALIS'
      Origin = 'TEKLIFBODRO.C_REELALIS'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifAlmaBodroIBQC_REELSATIS: TFloatField
      DisplayLabel = 'Reel Sat'#305#351
      FieldKind = fkInternalCalc
      FieldName = 'C_REELSATIS'
      Origin = 'TEKLIFBODRO.C_REELSATIS'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifAlmaBodroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'TEKLIFBODRO.ISLEMKOD'
    end
    object TeklifAlmaBodroIBQKDVSECIM: TIBStringField
      DisplayLabel = 'Kdv Se'#231'im'
      FieldName = 'KDVSECIM'
      Origin = 'TEKLIFBODRO.KDVSECIM'
      Size = 5
    end
    object TeklifAlmaBodroIBQC_TLALISTUTARI: TFloatField
      DisplayLabel = 'TL Al'#305#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISTUTARI'
      Origin = 'TEKLIFBODRO.C_TLALISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifAlmaBodroIBQC_TLALISMATRAHI: TFloatField
      DisplayLabel = 'TL Al'#305#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISMATRAHI'
      Origin = 'TEKLIFBODRO.C_TLALISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifAlmaBodroIBQC_TLSATISTUTARI: TFloatField
      DisplayLabel = 'TL Sat'#305#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISTUTARI'
      Origin = 'TEKLIFBODRO.C_TLSATISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifAlmaBodroIBQC_TLSATISMATRAHI: TFloatField
      DisplayLabel = 'TL Sat'#305#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISMATRAHI'
      Origin = 'TEKLIFBODRO.C_TLSATISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifAlmaBodroIBQC_TLBIRIMFIYAT: TFloatField
      DisplayLabel = 'TL Birim Fiyat'
      FieldKind = fkInternalCalc
      FieldName = 'C_TLBIRIMFIYAT'
      Origin = 'TEKLIFBODRO.C_TLBIRIMFIYAT'
      ReadOnly = True
    end
    object TeklifAlmaBodroIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G.G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'TEKLIFBODRO.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object TeklifAlmaBodroIBQC_ALISKDVTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_ALISKDVTUTAR'
      Origin = 'TEKLIFBODRO.C_ALISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifAlmaBodroIBQC_SATISKDVTUTAR: TFloatField
      DisplayLabel = 'Sat'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_SATISKDVTUTAR'
      Origin = 'TEKLIFBODRO.C_SATISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifAlmaBodroIBQC_TLALISKDVTUTAR: TFloatField
      DisplayLabel = 'TL Al'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISKDVTUTAR'
      Origin = 'TEKLIFBODRO.C_TLALISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifAlmaBodroIBQC_TLSATISKDVTUTARI: TFloatField
      DisplayLabel = 'TL Sat'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISKDVTUTARI'
      Origin = 'TEKLIFBODRO.C_TLSATISKDVTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifAlmaBodroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'TEKLIFBODRO.SISTEM'
    end
    object TeklifAlmaBodroIBQMALIYETFIYATI: TFloatField
      DisplayLabel = 'Maliyet Fiyat'#305
      FieldName = 'MALIYETFIYATI'
      Origin = 'TEKLIFBODRO.MALIYETFIYATI'
    end
    object TeklifAlmaBodroIBQC_MALIYETTUTARI: TFloatField
      DisplayLabel = 'Maliyet Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_MALIYETTUTARI'
      Origin = 'TEKLIFBODRO.C_MALIYETTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object TeklifAlmaBodroIBQC_KARZARAR: TFloatField
      DisplayLabel = 'Kar Zarar'
      FieldKind = fkInternalCalc
      FieldName = 'C_KARZARAR'
      Origin = 'TEKLIFBODRO.C_KARZARAR'
      ReadOnly = True
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
  end
  object TeklifAlmaBodroSQL: TIBUpdateSQL
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
      '  ISLEMKURU,'
      '  GELGITKOD,'
      '  PERSONELKOD,'
      '  KULLANKOD,'
      '  EVRAKDURUMU,'
      '  SERINO,'
      '  C_CARIADI,'
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
      'from TEKLIFBODRO '
      'where'
      '  BODROKOD = :BODROKOD')
    ModifySQL.Strings = (
      'update TEKLIFBODRO'
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
      '  ISLEMKURU = :ISLEMKURU,'
      '  GELGITKOD = :GELGITKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  KULLANKOD = :KULLANKOD,'
      '  EVRAKDURUMU = :EVRAKDURUMU,'
      '  SERINO = :SERINO,'
      '  ISLEMKOD = :ISLEMKOD,'
      '  KDVSECIM = :KDVSECIM,'
      '  SISTEM = :SISTEM,'
      '  MALIYETFIYATI = :MALIYETFIYATI'
      'where'
      '  BODROKOD = :OLD_BODROKOD')
    InsertSQL.Strings = (
      'insert into TEKLIFBODRO'
      
        '  (BODROKOD, SIRANO, ISLEMTUR, CARIKOD, PARABIRIMKOD, TARIH, STO' +
        'KKOD, STOKNO, '
      
        '   BARKOD, STOKADI, MIKTAR, MIKTARCARPAN, GIRISMIKTAR, CIKISMIKT' +
        'AR, BIRIM, '
      
        '   BIRIMFIYAT, ALISFIYAT, SATISTUTAR, SATISFIYAT, ALISTUTAR, ALI' +
        'SMATRAHI, '
      
        '   SATISMATRAHI, ISKONTO1, ISKONTO2, ISKONTO3, ISKONTO4, KDVORAN' +
        'I, BAKIYE, '
      
        '   DURUM, ACIKLAMA, KAPATMA, VADE, ISLEMKURU, GELGITKOD, PERSONE' +
        'LKOD, KULLANKOD, '
      
        '   EVRAKDURUMU, SERINO, ISLEMKOD, KDVSECIM, SISTEM, MALIYETFIYAT' +
        'I)'
      'values'
      
        '  (:BODROKOD, :SIRANO, :ISLEMTUR, :CARIKOD, :PARABIRIMKOD, :TARI' +
        'H, :STOKKOD, '
      
        '   :STOKNO, :BARKOD, :STOKADI, :MIKTAR, :MIKTARCARPAN, :GIRISMIK' +
        'TAR, :CIKISMIKTAR, '
      
        '   :BIRIM, :BIRIMFIYAT, :ALISFIYAT, :SATISTUTAR, :SATISFIYAT, :A' +
        'LISTUTAR, '
      
        '   :ALISMATRAHI, :SATISMATRAHI, :ISKONTO1, :ISKONTO2, :ISKONTO3,' +
        ' :ISKONTO4, '
      
        '   :KDVORANI, :BAKIYE, :DURUM, :ACIKLAMA, :KAPATMA, :VADE, :ISLE' +
        'MKURU, '
      
        '   :GELGITKOD, :PERSONELKOD, :KULLANKOD, :EVRAKDURUMU, :SERINO, ' +
        ':ISLEMKOD, '
      '   :KDVSECIM, :SISTEM, :MALIYETFIYATI)')
    DeleteSQL.Strings = (
      'delete from TEKLIFBODRO'
      'where'
      '  BODROKOD = :OLD_BODROKOD')
    Left = 155
    Top = 304
  end
  object TeklifAlmaBodroDS: TDataSource
    DataSet = TeklifAlmaBodroIBQ
    Left = 269
    Top = 304
  end
  object TAlmaBilgiIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = TVermeBilgiIBQAfterDelete
    AfterPost = TVermeBilgiIBQAfterPost
    OnNewRecord = TVermeBilgiIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = TeklifAlmaDS
    SQL.Strings = (
      'select * from ISLEMBILGI'
      'Where ISLEMKOD=:ISLEMKOD and ISLEMTURKOD=:ISLEMTURKOD')
    UpdateObject = TAlmaBilgiSQL
    GeneratorField.Field = 'BILGIKOD'
    GeneratorField.Generator = 'ISLEMBILGI'
    Left = 40
    Top = 357
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
    object TAlmaBilgiIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'ISLEMBILGI.BILGIKOD'
      Required = True
    end
    object TAlmaBilgiIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'ISLEMBILGI.ISLEMKOD'
    end
    object TAlmaBilgiIBQALTBILGI: TMemoField
      FieldName = 'ALTBILGI'
      Origin = 'ISLEMBILGI.ALTBILGI'
      BlobType = ftMemo
      Size = 8
    end
    object TAlmaBilgiIBQUSTBILGI: TMemoField
      FieldName = 'USTBILGI'
      Origin = 'ISLEMBILGI.USTBILGI'
      BlobType = ftMemo
      Size = 8
    end
    object TAlmaBilgiIBQALTISKONTO: TFloatField
      FieldName = 'ALTISKONTO'
      Origin = 'ISLEMBILGI.ALTISKONTO'
    end
    object TAlmaBilgiIBQISLEMTURKOD: TIntegerField
      FieldName = 'ISLEMTURKOD'
      Origin = 'ISLEMBILGI.ISLEMTURKOD'
    end
  end
  object TAlmaBilgiSQL: TIBUpdateSQL
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
    Left = 160
    Top = 357
  end
  object TAlmaBilgiDS: TDataSource
    DataSet = TAlmaBilgiIBQ
    Left = 264
    Top = 357
  end
end
