object DMAlisSatis: TDMAlisSatis
  OldCreateOrder = False
  Left = 207
  Top = 160
  Height = 543
  Width = 617
  object AlisIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = AlisIBQAfterDelete
    AfterEdit = AlisIBQAfterEdit
    AfterPost = AlisIBQAfterPost
    OnNewRecord = AlisIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ALISSATIS '
      'where ISLEMTURKOD=1 and SISTEM<>2'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = AlisUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'ALISSATIS'
    Left = 40
    Top = 8
    object AlisIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'ALISSATIS.ISLEMKOD'
      Required = True
    end
    object AlisIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'ALISSATIS.CARIKOD'
    end
    object AlisIBQALISSATISNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'ALISSATISNO'
      Origin = 'ALISSATIS.ALISSATISNO'
    end
    object AlisIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'ALISSATIS.TARIH'
    end
    object AlisIBQIRSALIYETARIH: TDateField
      DisplayLabel = #304'rsaliye Tarihi'
      FieldName = 'IRSALIYETARIH'
      Origin = 'ALISSATIS.IRSALIYETARIH'
    end
    object AlisIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'ALISSATIS.SAAT'
    end
    object AlisIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'ALISSATIS.ACIKLAMA'
      Size = 80
    end
    object AlisIBQALISTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' Tutar'#305
      FieldName = 'ALISTUTAR'
      Origin = 'ALISSATIS.ALISTUTAR'
      DisplayFormat = '###,###'
    end
    object AlisIBQSATISTUTAR: TFloatField
      DisplayLabel = 'Sat'#305#351' Tutar'#305
      FieldName = 'SATISTUTAR'
      Origin = 'ALISSATIS.SATISTUTAR'
      DisplayFormat = '###,###'
    end
    object AlisIBQALISMATRAH: TFloatField
      DisplayLabel = 'Al'#305#351' Matrah'
      FieldName = 'ALISMATRAH'
      Origin = 'ALISSATIS.ALISMATRAH'
      DisplayFormat = '###,###'
    end
    object AlisIBQALISKDVTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' KDV Tutar'#305
      FieldName = 'ALISKDVTUTAR'
      Origin = 'ALISSATIS.ALISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object AlisIBQSATISMATRAH: TFloatField
      FieldName = 'SATISMATRAH'
      Origin = 'ALISSATIS.SATISMATRAH'
      DisplayFormat = '###,###'
    end
    object AlisIBQSATISKDVTUTAR: TFloatField
      FieldName = 'SATISKDVTUTAR'
      Origin = 'ALISSATIS.SATISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object AlisIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'ALISSATIS.D_TEDIYE'
      DisplayFormat = '###,###'
    end
    object AlisIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'ALISSATIS.D_TAHSILAT'
      DisplayFormat = '###,###'
    end
    object AlisIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'ALISSATIS.CARIKURU'
      DisplayFormat = '###,###'
    end
    object AlisIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'ALISSATIS.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object AlisIBQTAHSILATMATRAH: TFloatField
      FieldName = 'TAHSILATMATRAH'
      Origin = 'ALISSATIS.TAHSILATMATRAH'
      DisplayFormat = '###,###'
    end
    object AlisIBQTEDIYEMATRAH: TFloatField
      FieldName = 'TEDIYEMATRAH'
      Origin = 'ALISSATIS.TEDIYEMATRAH'
      DisplayFormat = '###,###'
    end
    object AlisIBQKAPATMA: TIntegerField
      DisplayLabel = 'Kapatma'
      FieldName = 'KAPATMA'
      Origin = 'ALISSATIS.KAPATMA'
    end
    object AlisIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'ALISSATIS.CARINO'
    end
    object AlisIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'ALISSATIS.GELGITKOD'
      Size = 80
    end
    object AlisIBQEVRAKNO: TIntegerField
      FieldName = 'EVRAKNO'
      Origin = 'ALISSATIS.EVRAKNO'
    end
    object AlisIBQBELGENO: TIntegerField
      FieldName = 'BELGENO'
      Origin = 'ALISSATIS.BELGENO'
    end
    object AlisIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'ALISSATIS.BAGLANTINO'
    end
    object AlisIBQTAHSILKOD: TIntegerField
      FieldName = 'TAHSILKOD'
      Origin = 'ALISSATIS.TAHSILKOD'
    end
    object AlisIBQBODROKOD: TIntegerField
      FieldName = 'BODROKOD'
      Origin = 'ALISSATIS.BODROKOD'
    end
    object AlisIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'ALISSATIS.CARIHESAPILISKI'
    end
    object AlisIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'ALISSATIS.PARABIRIMKOD'
    end
    object AlisIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'ALISSATIS.STOKYERIKOD'
    end
    object AlisIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'ALISSATIS.MAKBUZNO'
    end
    object AlisIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'ALISSATIS.BILGIKOD'
    end
    object AlisIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'ALISSATIS.KULLANKOD'
    end
    object AlisIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'ALISSATIS.PERSONELKOD'
    end
    object AlisIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'ALISSATIS.SISTEM'
    end
    object AlisIBQTAHSILEDILEN: TFloatField
      FieldName = 'TAHSILEDILEN'
      Origin = 'ALISSATIS.TAHSILEDILEN'
      DisplayFormat = '###,###'
    end
    object AlisIBQODENEN: TFloatField
      DisplayLabel = #214'denen'
      FieldName = 'ODENEN'
      Origin = 'ALISSATIS.ODENEN'
      DisplayFormat = '###,###'
    end
    object AlisIBQKALAN: TFloatField
      DisplayLabel = 'Kalan'
      FieldName = 'KALAN'
      Origin = 'ALISSATIS.KALAN'
      DisplayFormat = '###,###'
    end
    object AlisIBQCARIPARABIRIMKOD: TIntegerField
      DisplayLabel = 'Cari P.B.'
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'ALISSATIS.CARIPARABIRIMKOD'
    end
    object AlisIBQC_CARIPARABIRIM: TIBStringField
      DisplayLabel = 'Cari P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'ALISSATIS.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object AlisIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'ALISSATIS.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object AlisIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Unvan ( Soyad'#305' Ad'#305')'
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'ALISSATIS.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object AlisIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'ALISSATIS.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object AlisIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'ALISSATIS.C_KULLANICIADI'
      ReadOnly = True
    end
    object AlisIBQC_PERSONEL: TIBStringField
      DisplayLabel = 'Personel'
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'ALISSATIS.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object AlisIBQFATURATARIH: TDateField
      DisplayLabel = 'F. Tarihi'
      FieldName = 'FATURATARIH'
      Origin = 'ALISSATIS.FATURATARIH'
    end
    object AlisIBQKDVSECIM: TIBStringField
      FieldName = 'KDVSECIM'
      Origin = 'ALISSATIS.KDVSECIM'
      Size = 5
    end
    object AlisIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'ALISSATIS.ISLEMTUR'
      Size = 10
    end
    object AlisIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'ALISSATIS.ISLEMTURKOD'
      ReadOnly = True
    end
    object AlisIBQD_ALISTUTAR: TFloatField
      DisplayLabel = 'D. Al'#305#351' Tutar'
      FieldName = 'D_ALISTUTAR'
      Origin = 'ALISSATIS.D_ALISTUTAR'
      DisplayFormat = '###,###'
    end
    object AlisIBQD_ALISKDVTUTAR: TFloatField
      DisplayLabel = 'D. Al'#305#351' KDV Tutar'
      FieldName = 'D_ALISKDVTUTAR'
      Origin = 'ALISSATIS.D_ALISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object AlisIBQD_ALISMATRAH: TFloatField
      DisplayLabel = 'D. Al'#305#351' Matrah'
      FieldName = 'D_ALISMATRAH'
      Origin = 'ALISSATIS.D_ALISMATRAH'
      DisplayFormat = '###,###'
    end
    object AlisIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G. G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'ALISSATIS.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object AlisIBQALTISKONTO: TFloatField
      FieldName = 'ALTISKONTO'
      Origin = 'ALISSATIS.ALTISKONTO'
      DisplayFormat = '###,###'
    end
    object AlisIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'ALISSATIS.VADE'
    end
    object AlisIBQD_SATISTUTAR: TFloatField
      FieldName = 'D_SATISTUTAR'
      Origin = 'ALISSATIS.D_SATISTUTAR'
    end
    object AlisIBQD_SATISKDVTUTAR: TFloatField
      FieldName = 'D_SATISKDVTUTAR'
      Origin = 'ALISSATIS.D_SATISKDVTUTAR'
    end
    object AlisIBQD_SATISMATRAH: TFloatField
      FieldName = 'D_SATISMATRAH'
      Origin = 'ALISSATIS.D_SATISMATRAH'
    end
    object AlisIBQIRSALIYENO: TIntegerField
      FieldName = 'IRSALIYENO'
      Origin = 'ALISSATIS.IRSALIYENO'
    end
    object AlisIBQEVRAKTARIH: TDateField
      FieldName = 'EVRAKTARIH'
      Origin = 'ALISSATIS.EVRAKTARIH'
    end
    object AlisIBQC_FIYATSEC: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_FIYATSEC'
      Origin = 'ALISSATIS.C_FIYATSEC'
      ReadOnly = True
    end
  end
  object AlisUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  ALISSATISNO,'
      '  TARIH,'
      '  IRSALIYETARIH,'
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
      '  CARINO,'
      '  GELGITKOD,'
      '  EVRAKNO,'
      '  BELGENO,'
      '  BAGLANTINO,'
      '  TAHSILKOD,'
      '  BODROKOD,'
      '  CARIHESAPILISKI,'
      '  PARABIRIMKOD,'
      '  STOKYERIKOD,'
      '  MAKBUZNO,'
      '  BILGIKOD,'
      '  KULLANKOD,'
      '  PERSONELKOD,'
      '  SISTEM,'
      '  TAHSILEDILEN,'
      '  ODENEN,'
      '  KALAN,'
      '  CARIPARABIRIMKOD,'
      '  C_CARIPARABIRIM,'
      '  C_PARABIRIMI,'
      '  C_CARIADI,'
      '  C_STOKYERI,'
      '  C_KULLANICIADI,'
      '  C_PERSONEL,'
      '  FATURATARIH,'
      '  KDVSECIM,'
      '  D_ALISTUTAR,'
      '  D_ALISKDVTUTAR,'
      '  D_ALISMATRAH,'
      '  C_GGMERKEZI,'
      '  ALTISKONTO,'
      '  D_SATISTUTAR,'
      '  D_SATISKDVTUTAR,'
      '  D_SATISMATRAH,'
      '  IRSALIYENO,'
      '  EVRAKTARIH'
      'from ALISSATIS '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update ALISSATIS'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  ALISSATISNO = :ALISSATISNO,'
      '  TARIH = :TARIH,'
      '  IRSALIYETARIH = :IRSALIYETARIH,'
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
      '  CARINO = :CARINO,'
      '  GELGITKOD = :GELGITKOD,'
      '  EVRAKNO = :EVRAKNO,'
      '  BELGENO = :BELGENO,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  TAHSILKOD = :TAHSILKOD,'
      '  BODROKOD = :BODROKOD,'
      '  CARIHESAPILISKI = :CARIHESAPILISKI,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  STOKYERIKOD = :STOKYERIKOD,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  BILGIKOD = :BILGIKOD,'
      '  KULLANKOD = :KULLANKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  SISTEM = :SISTEM,'
      '  TAHSILEDILEN = :TAHSILEDILEN,'
      '  ODENEN = :ODENEN,'
      '  KALAN = :KALAN,'
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  FATURATARIH = :FATURATARIH,'
      '  KDVSECIM = :KDVSECIM,'
      '  D_ALISTUTAR = :D_ALISTUTAR,'
      '  D_ALISKDVTUTAR = :D_ALISKDVTUTAR,'
      '  D_ALISMATRAH = :D_ALISMATRAH,'
      '  ALTISKONTO = :ALTISKONTO,'
      '  IRSALIYENO = :IRSALIYENO,'
      '  EVRAKTARIH = :EVRAKTARIH'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into ALISSATIS'
      
        '  (ISLEMKOD, CARIKOD, ISLEMTUR, ALISSATISNO, TARIH, IRSALIYETARI' +
        'H, SAAT, '
      
        '   ACIKLAMA, ALISTUTAR, SATISTUTAR, ALISMATRAH, ALISKDVTUTAR, SA' +
        'TISMATRAH, '
      
        '   SATISKDVTUTAR, D_TEDIYE, D_TAHSILAT, CARIKURU, ISLEMKURU, TAH' +
        'SILATMATRAH, '
      
        '   TEDIYEMATRAH, KAPATMA, VADE, CARINO, GELGITKOD, EVRAKNO, BELG' +
        'ENO, BAGLANTINO, '
      
        '   TAHSILKOD, BODROKOD, CARIHESAPILISKI, PARABIRIMKOD, STOKYERIK' +
        'OD, MAKBUZNO, '
      
        '   BILGIKOD, KULLANKOD, PERSONELKOD, SISTEM, TAHSILEDILEN, ODENE' +
        'N, KALAN, '
      
        '   CARIPARABIRIMKOD, FATURATARIH, KDVSECIM, D_ALISTUTAR, D_ALISK' +
        'DVTUTAR, '
      '   D_ALISMATRAH, ALTISKONTO, IRSALIYENO, EVRAKTARIH)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :ISLEMTUR, :ALISSATISNO, :TARIH, :IRSALI' +
        'YETARIH, '
      
        '   :SAAT, :ACIKLAMA, :ALISTUTAR, :SATISTUTAR, :ALISMATRAH, :ALIS' +
        'KDVTUTAR, '
      
        '   :SATISMATRAH, :SATISKDVTUTAR, :D_TEDIYE, :D_TAHSILAT, :CARIKU' +
        'RU, :ISLEMKURU, '
      
        '   :TAHSILATMATRAH, :TEDIYEMATRAH, :KAPATMA, :VADE, :CARINO, :GE' +
        'LGITKOD, '
      
        '   :EVRAKNO, :BELGENO, :BAGLANTINO, :TAHSILKOD, :BODROKOD, :CARI' +
        'HESAPILISKI, '
      
        '   :PARABIRIMKOD, :STOKYERIKOD, :MAKBUZNO, :BILGIKOD, :KULLANKOD' +
        ', :PERSONELKOD, '
      
        '   :SISTEM, :TAHSILEDILEN, :ODENEN, :KALAN, :CARIPARABIRIMKOD, :' +
        'FATURATARIH, '
      
        '   :KDVSECIM, :D_ALISTUTAR, :D_ALISKDVTUTAR, :D_ALISMATRAH, :ALT' +
        'ISKONTO, '
      '   :IRSALIYENO, :EVRAKTARIH)')
    DeleteSQL.Strings = (
      'delete from ALISSATIS'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 136
    Top = 8
  end
  object AlisDS: TDataSource
    DataSet = AlisIBQ
    Left = 224
    Top = 8
  end
  object AlisBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = AlisBodroIBQAfterDelete
    AfterPost = AlisBodroIBQAfterPost
    OnNewRecord = AlisBodroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = AlisDS
    SQL.Strings = (
      'select * from ALISSATISBODRO'
      'where ISLEMKOD=:ISLEMKOD'
      'ORDER BY BODROKOD')
    UpdateObject = AlisBodroUSQL
    GeneratorField.Field = 'BODROKOD'
    GeneratorField.Generator = 'ALISSATISBODRO'
    Left = 40
    Top = 64
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
      OnChange = AlisBodroIBQBARKODChange
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
      OnChange = AlisBodroIBQBIRIMChange
      Size = 10
    end
    object AlisBodroIBQBIRIMFIYAT: TFloatField
      DisplayLabel = 'Birim Fiyat'
      FieldName = 'BIRIMFIYAT'
      Origin = 'ALISSATISBODRO.BIRIMFIYAT'
      OnChange = AlisBodroIBQBIRIMFIYATChange
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
      DisplayLabel = 'Kullan'#305'c'#305
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
    Left = 136
    Top = 64
  end
  object AlisBodroDS: TDataSource
    DataSet = AlisBodroIBQ
    Left = 224
    Top = 64
  end
  object AlisBilgiIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = AlisBilgiIBQAfterPost
    OnNewRecord = AlisBilgiIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = AlisDS
    SQL.Strings = (
      'select * from ISLEMBILGI'
      'Where ISLEMKOD=:ISLEMKOD and ISLEMTURKOD=:ISLEMTURKOD')
    UpdateObject = AlisBilgiUSQL
    GeneratorField.Field = 'BILGIKOD'
    GeneratorField.Generator = 'ISLEMBILGI'
    Left = 40
    Top = 232
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
    object AlisBilgiIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'ISLEMBILGI.BILGIKOD'
      Required = True
    end
    object AlisBilgiIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'ISLEMBILGI.ISLEMKOD'
    end
    object AlisBilgiIBQALTBILGI: TMemoField
      FieldName = 'ALTBILGI'
      Origin = 'ISLEMBILGI.ALTBILGI'
      BlobType = ftMemo
      Size = 8
    end
    object AlisBilgiIBQUSTBILGI: TMemoField
      FieldName = 'USTBILGI'
      Origin = 'ISLEMBILGI.USTBILGI'
      BlobType = ftMemo
      Size = 8
    end
    object AlisBilgiIBQALTISKONTO: TFloatField
      FieldName = 'ALTISKONTO'
      Origin = 'ISLEMBILGI.ALTISKONTO'
    end
    object AlisBilgiIBQISLEMTURKOD: TIntegerField
      FieldName = 'ISLEMTURKOD'
      Origin = 'ISLEMBILGI.ISLEMTURKOD'
    end
  end
  object AlisBilgiUSQL: TIBUpdateSQL
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
    Top = 232
  end
  object AlisBilgiDS: TDataSource
    DataSet = AlisBilgiIBQ
    Left = 224
    Top = 232
  end
  object SatisIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = SatisIBQAfterDelete
    AfterEdit = SatisIBQAfterEdit
    AfterPost = SatisIBQAfterPost
    OnNewRecord = SatisIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ALISSATIS '
      'where ISLEMTURKOD=2 and SISTEM<>2'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = SatisUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'ALISSATIS'
    Left = 40
    Top = 120
    object SatisIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'ALISSATIS.ISLEMKOD'
      Required = True
    end
    object SatisIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'ALISSATIS.CARIKOD'
    end
    object SatisIBQALISSATISNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'ALISSATISNO'
      Origin = 'ALISSATIS.ALISSATISNO'
    end
    object SatisIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'ALISSATIS.TARIH'
    end
    object SatisIBQIRSALIYETARIH: TDateField
      DisplayLabel = #304'rsaliye Tarihi'
      FieldName = 'IRSALIYETARIH'
      Origin = 'ALISSATIS.IRSALIYETARIH'
    end
    object SatisIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'ALISSATIS.SAAT'
    end
    object SatisIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'ALISSATIS.ACIKLAMA'
      Size = 80
    end
    object SatisIBQALISTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' Tutar'#305
      FieldName = 'ALISTUTAR'
      Origin = 'ALISSATIS.ALISTUTAR'
      DisplayFormat = '###,###'
    end
    object SatisIBQSATISTUTAR: TFloatField
      DisplayLabel = 'Sat'#305#351' Tutar'#305
      FieldName = 'SATISTUTAR'
      Origin = 'ALISSATIS.SATISTUTAR'
      DisplayFormat = '###,###'
    end
    object SatisIBQALISMATRAH: TFloatField
      DisplayLabel = 'Al'#305#351' Matrah'
      FieldName = 'ALISMATRAH'
      Origin = 'ALISSATIS.ALISMATRAH'
      DisplayFormat = '###,###'
    end
    object SatisIBQALISKDVTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' KDV Tutar'#305
      FieldName = 'ALISKDVTUTAR'
      Origin = 'ALISSATIS.ALISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object SatisIBQSATISMATRAH: TFloatField
      FieldName = 'SATISMATRAH'
      Origin = 'ALISSATIS.SATISMATRAH'
      DisplayFormat = '###,###'
    end
    object SatisIBQSATISKDVTUTAR: TFloatField
      FieldName = 'SATISKDVTUTAR'
      Origin = 'ALISSATIS.SATISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object SatisIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'ALISSATIS.D_TEDIYE'
      DisplayFormat = '###,###'
    end
    object SatisIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'ALISSATIS.D_TAHSILAT'
      DisplayFormat = '###,###'
    end
    object SatisIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'ALISSATIS.CARIKURU'
      DisplayFormat = '###,###'
    end
    object SatisIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'ALISSATIS.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object SatisIBQTAHSILATMATRAH: TFloatField
      FieldName = 'TAHSILATMATRAH'
      Origin = 'ALISSATIS.TAHSILATMATRAH'
      DisplayFormat = '###,###'
    end
    object SatisIBQTEDIYEMATRAH: TFloatField
      FieldName = 'TEDIYEMATRAH'
      Origin = 'ALISSATIS.TEDIYEMATRAH'
      DisplayFormat = '###,###'
    end
    object SatisIBQKAPATMA: TIntegerField
      DisplayLabel = 'Kapatma'
      FieldName = 'KAPATMA'
      Origin = 'ALISSATIS.KAPATMA'
    end
    object SatisIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'ALISSATIS.CARINO'
    end
    object SatisIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'ALISSATIS.GELGITKOD'
      Size = 80
    end
    object SatisIBQEVRAKNO: TIntegerField
      FieldName = 'EVRAKNO'
      Origin = 'ALISSATIS.EVRAKNO'
    end
    object SatisIBQBELGENO: TIntegerField
      FieldName = 'BELGENO'
      Origin = 'ALISSATIS.BELGENO'
    end
    object SatisIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'ALISSATIS.BAGLANTINO'
    end
    object SatisIBQTAHSILKOD: TIntegerField
      FieldName = 'TAHSILKOD'
      Origin = 'ALISSATIS.TAHSILKOD'
    end
    object SatisIBQBODROKOD: TIntegerField
      FieldName = 'BODROKOD'
      Origin = 'ALISSATIS.BODROKOD'
    end
    object SatisIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'ALISSATIS.CARIHESAPILISKI'
    end
    object SatisIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'ALISSATIS.PARABIRIMKOD'
    end
    object SatisIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'ALISSATIS.STOKYERIKOD'
    end
    object SatisIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'ALISSATIS.MAKBUZNO'
    end
    object SatisIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'ALISSATIS.BILGIKOD'
    end
    object SatisIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'ALISSATIS.KULLANKOD'
    end
    object SatisIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'ALISSATIS.PERSONELKOD'
    end
    object SatisIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'ALISSATIS.SISTEM'
    end
    object SatisIBQTAHSILEDILEN: TFloatField
      FieldName = 'TAHSILEDILEN'
      Origin = 'ALISSATIS.TAHSILEDILEN'
      DisplayFormat = '###,###'
    end
    object SatisIBQODENEN: TFloatField
      DisplayLabel = #214'denen'
      FieldName = 'ODENEN'
      Origin = 'ALISSATIS.ODENEN'
      DisplayFormat = '###,###'
    end
    object SatisIBQKALAN: TFloatField
      DisplayLabel = 'Kalan'
      FieldName = 'KALAN'
      Origin = 'ALISSATIS.KALAN'
      DisplayFormat = '###,###'
    end
    object SatisIBQCARIPARABIRIMKOD: TIntegerField
      DisplayLabel = 'Cari P.B.'
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'ALISSATIS.CARIPARABIRIMKOD'
    end
    object SatisIBQC_CARIPARABIRIM: TIBStringField
      DisplayLabel = 'Cari P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'ALISSATIS.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object SatisIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'ALISSATIS.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object SatisIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Unvan ( Soyad'#305' Ad'#305')'
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'ALISSATIS.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object SatisIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'ALISSATIS.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object SatisIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'ALISSATIS.C_KULLANICIADI'
      ReadOnly = True
    end
    object SatisIBQC_PERSONEL: TIBStringField
      DisplayLabel = 'Personel'
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'ALISSATIS.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object SatisIBQFATURATARIH: TDateField
      DisplayLabel = 'F. Tarihi'
      FieldName = 'FATURATARIH'
      Origin = 'ALISSATIS.FATURATARIH'
    end
    object SatisIBQKDVSECIM: TIBStringField
      FieldName = 'KDVSECIM'
      Origin = 'ALISSATIS.KDVSECIM'
      Size = 5
    end
    object SatisIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'ALISSATIS.ISLEMTUR'
      Size = 10
    end
    object SatisIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'ALISSATIS.ISLEMTURKOD'
      ReadOnly = True
    end
    object SatisIBQD_ALISTUTAR: TFloatField
      DisplayLabel = 'D. Al'#305#351' Tutar'
      FieldName = 'D_ALISTUTAR'
      Origin = 'ALISSATIS.D_ALISTUTAR'
      DisplayFormat = '###,###'
    end
    object SatisIBQD_ALISKDVTUTAR: TFloatField
      DisplayLabel = 'D. Al'#305#351' KDV Tutar'
      FieldName = 'D_ALISKDVTUTAR'
      Origin = 'ALISSATIS.D_ALISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object SatisIBQD_ALISMATRAH: TFloatField
      DisplayLabel = 'D. Al'#305#351' Matrah'
      FieldName = 'D_ALISMATRAH'
      Origin = 'ALISSATIS.D_ALISMATRAH'
      DisplayFormat = '###,###'
    end
    object SatisIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G. G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'ALISSATIS.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object SatisIBQALTISKONTO: TFloatField
      FieldName = 'ALTISKONTO'
      Origin = 'ALISSATIS.ALTISKONTO'
      DisplayFormat = '###,###'
    end
    object SatisIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'ALISSATIS.VADE'
    end
    object SatisIBQD_SATISTUTAR: TFloatField
      FieldName = 'D_SATISTUTAR'
      Origin = 'ALISSATIS.D_SATISTUTAR'
    end
    object SatisIBQD_SATISKDVTUTAR: TFloatField
      FieldName = 'D_SATISKDVTUTAR'
      Origin = 'ALISSATIS.D_SATISKDVTUTAR'
    end
    object SatisIBQD_SATISMATRAH: TFloatField
      FieldName = 'D_SATISMATRAH'
      Origin = 'ALISSATIS.D_SATISMATRAH'
    end
    object SatisIBQIRSALIYENO: TIntegerField
      FieldName = 'IRSALIYENO'
      Origin = 'ALISSATIS.IRSALIYENO'
    end
    object SatisIBQEVRAKTARIH: TDateField
      FieldName = 'EVRAKTARIH'
      Origin = 'ALISSATIS.EVRAKTARIH'
    end
    object SatisIBQC_FIYATSEC: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_FIYATSEC'
      Origin = 'ALISSATIS.C_FIYATSEC'
      ReadOnly = True
    end
  end
  object SatisUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  ALISSATISNO,'
      '  TARIH,'
      '  IRSALIYETARIH,'
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
      '  CARINO,'
      '  GELGITKOD,'
      '  EVRAKNO,'
      '  BELGENO,'
      '  BAGLANTINO,'
      '  TAHSILKOD,'
      '  BODROKOD,'
      '  CARIHESAPILISKI,'
      '  PARABIRIMKOD,'
      '  STOKYERIKOD,'
      '  MAKBUZNO,'
      '  BILGIKOD,'
      '  KULLANKOD,'
      '  PERSONELKOD,'
      '  TAHSILEDILEN,'
      '  ODENEN,'
      '  KALAN,'
      '  CARIPARABIRIMKOD,'
      '  C_CARIPARABIRIM,'
      '  C_PARABIRIMI,'
      '  C_CARIADI,'
      '  C_STOKYERI,'
      '  C_KULLANICIADI,'
      '  C_PERSONEL,'
      '  FATURATARIH,'
      '  KDVSECIM,'
      '  D_ALISTUTAR,'
      '  D_ALISKDVTUTAR,'
      '  D_ALISMATRAH,'
      '  C_GGMERKEZI,'
      '  C_FIYATSEC,'
      '  ALTISKONTO,'
      '  D_SATISTUTAR,'
      '  D_SATISKDVTUTAR,'
      '  D_SATISMATRAH,'
      '  IRSALIYENO,'
      '  EVRAKTARIH,'
      '  SISTEM'
      'from ALISSATIS '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update ALISSATIS'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  ALISSATISNO = :ALISSATISNO,'
      '  TARIH = :TARIH,'
      '  IRSALIYETARIH = :IRSALIYETARIH,'
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
      '  CARINO = :CARINO,'
      '  GELGITKOD = :GELGITKOD,'
      '  EVRAKNO = :EVRAKNO,'
      '  BELGENO = :BELGENO,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  TAHSILKOD = :TAHSILKOD,'
      '  BODROKOD = :BODROKOD,'
      '  CARIHESAPILISKI = :CARIHESAPILISKI,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  STOKYERIKOD = :STOKYERIKOD,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  BILGIKOD = :BILGIKOD,'
      '  KULLANKOD = :KULLANKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  TAHSILEDILEN = :TAHSILEDILEN,'
      '  ODENEN = :ODENEN,'
      '  KALAN = :KALAN,'
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  FATURATARIH = :FATURATARIH,'
      '  KDVSECIM = :KDVSECIM,'
      '  D_ALISTUTAR = :D_ALISTUTAR,'
      '  D_ALISKDVTUTAR = :D_ALISKDVTUTAR,'
      '  D_ALISMATRAH = :D_ALISMATRAH,'
      '  D_SATISTUTAR = :D_SATISTUTAR,'
      '  D_SATISKDVTUTAR = :D_SATISKDVTUTAR,'
      '  D_SATISMATRAH = :D_SATISMATRAH,'
      '  IRSALIYENO = :IRSALIYENO,'
      '  EVRAKTARIH = :EVRAKTARIH,'
      '  SISTEM = :SISTEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into ALISSATIS'
      
        '  (ISLEMKOD, CARIKOD, ISLEMTUR, ALISSATISNO, TARIH, IRSALIYETARI' +
        'H, '
      'SAAT, '
      '   ACIKLAMA, ALISTUTAR, SATISTUTAR, ALISMATRAH, ALISKDVTUTAR, '
      'SATISMATRAH, '
      '   SATISKDVTUTAR, D_TEDIYE, D_TAHSILAT, CARIKURU, ISLEMKURU, '
      'TAHSILATMATRAH, '
      '   TEDIYEMATRAH, KAPATMA, VADE, CARINO, GELGITKOD, EVRAKNO, '
      'BELGENO, BAGLANTINO, '
      
        '   TAHSILKOD, BODROKOD, CARIHESAPILISKI, PARABIRIMKOD, STOKYERIK' +
        'OD, '
      'MAKBUZNO, '
      
        '   BILGIKOD, KULLANKOD, PERSONELKOD, TAHSILEDILEN, ODENEN, KALAN' +
        ', '
      'CARIPARABIRIMKOD, '
      '   FATURATARIH, KDVSECIM, D_ALISTUTAR, D_ALISKDVTUTAR, '
      'D_ALISMATRAH, D_SATISTUTAR, '
      
        '   D_SATISKDVTUTAR, D_SATISMATRAH, IRSALIYENO, EVRAKTARIH, SISTE' +
        'M)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :ISLEMTUR, :ALISSATISNO, :TARIH, :IRSALI' +
        'YETARIH, '
      '   :SAAT, :ACIKLAMA, :ALISTUTAR, :SATISTUTAR, :ALISMATRAH, '
      ':ALISKDVTUTAR, '
      
        '   :SATISMATRAH, :SATISKDVTUTAR, :D_TEDIYE, :D_TAHSILAT, :CARIKU' +
        'RU, '
      ':ISLEMKURU, '
      '   :TAHSILATMATRAH, :TEDIYEMATRAH, :KAPATMA, :VADE, :CARINO, '
      ':GELGITKOD, '
      '   :EVRAKNO, :BELGENO, :BAGLANTINO, :TAHSILKOD, :BODROKOD, '
      ':CARIHESAPILISKI, '
      
        '   :PARABIRIMKOD, :STOKYERIKOD, :MAKBUZNO, :BILGIKOD, :KULLANKOD' +
        ', '
      ':PERSONELKOD, '
      
        '   :TAHSILEDILEN, :ODENEN, :KALAN, :CARIPARABIRIMKOD, :FATURATAR' +
        'IH, '
      ':KDVSECIM, '
      '   :D_ALISTUTAR, :D_ALISKDVTUTAR, :D_ALISMATRAH, :D_SATISTUTAR, '
      ':D_SATISKDVTUTAR, '
      '   :D_SATISMATRAH, :IRSALIYENO, :EVRAKTARIH, :SISTEM)')
    DeleteSQL.Strings = (
      'delete from ALISSATIS'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 136
    Top = 120
  end
  object SatisDS: TDataSource
    DataSet = SatisIBQ
    Left = 224
    Top = 120
  end
  object SatisBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = SatisBodroIBQAfterPost
    OnNewRecord = SatisBodroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = SatisDS
    SQL.Strings = (
      'select * from ALISSATISBODRO'
      'where ISLEMKOD=:ISLEMKOD'
      'ORDER BY BODROKOD')
    UpdateObject = SatisBodroUSQL
    GeneratorField.Field = 'BODROKOD'
    GeneratorField.Generator = 'ALISSATISBODRO'
    Left = 40
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SatisBodroIBQBODROKOD: TIntegerField
      FieldName = 'BODROKOD'
      Origin = 'ALISSATISBODRO.BODROKOD'
      Required = True
    end
    object SatisBodroIBQSIRANO: TIntegerField
      DisplayLabel = 'S'#305'ra'
      FieldName = 'SIRANO'
      Origin = 'ALISSATISBODRO.SIRANO'
    end
    object SatisBodroIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'ALISSATISBODRO.ISLEMTUR'
      Size = 40
    end
    object SatisBodroIBQC_ISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_ISLEMTURKOD'
      Origin = 'ALISSATISBODRO.C_ISLEMTURKOD'
      ReadOnly = True
    end
    object SatisBodroIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'ALISSATISBODRO.CARIKOD'
    end
    object SatisBodroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'ALISSATISBODRO.PARABIRIMKOD'
    end
    object SatisBodroIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'ALISSATISBODRO.TARIH'
    end
    object SatisBodroIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'ALISSATISBODRO.STOKKOD'
    end
    object SatisBodroIBQSTOKNO: TIntegerField
      DisplayLabel = 'Stok No'
      FieldName = 'STOKNO'
      Origin = 'ALISSATISBODRO.STOKNO'
    end
    object SatisBodroIBQBARKOD: TIBStringField
      DisplayLabel = 'Barkod'
      FieldName = 'BARKOD'
      Origin = 'ALISSATISBODRO.BARKOD'
      OnChange = SatisBodroIBQBARKODChange
      Size = 25
    end
    object SatisBodroIBQSTOKADI: TIBStringField
      DisplayLabel = 'Stok Ad'#305
      FieldName = 'STOKADI'
      Origin = 'ALISSATISBODRO.STOKADI'
      Size = 80
    end
    object SatisBodroIBQMIKTAR: TFloatField
      DisplayLabel = 'Miktar'
      FieldName = 'MIKTAR'
      Origin = 'ALISSATISBODRO.MIKTAR'
      OnChange = SatisBodroIBQMIKTARChange
      DisplayFormat = '###,###'
    end
    object SatisBodroIBQMIKTARCARPAN: TIntegerField
      DisplayLabel = 'Birim '#199'arpan'
      FieldName = 'MIKTARCARPAN'
      Origin = 'ALISSATISBODRO.MIKTARCARPAN'
      DisplayFormat = '###,###'
    end
    object SatisBodroIBQGIRISMIKTAR: TFloatField
      DisplayLabel = 'Giri'#351' Miktar'#305
      FieldName = 'GIRISMIKTAR'
      Origin = 'ALISSATISBODRO.GIRISMIKTAR'
      DisplayFormat = '###,###'
    end
    object SatisBodroIBQCIKISMIKTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Miktar'#305
      FieldName = 'CIKISMIKTAR'
      Origin = 'ALISSATISBODRO.CIKISMIKTAR'
      DisplayFormat = '###,###'
    end
    object SatisBodroIBQBIRIM: TIBStringField
      DisplayLabel = 'Birim'
      FieldName = 'BIRIM'
      Origin = 'ALISSATISBODRO.BIRIM'
      OnChange = SatisBodroIBQBIRIMChange
      Size = 10
    end
    object SatisBodroIBQBIRIMFIYAT: TFloatField
      DisplayLabel = 'Birim Fiyat'
      FieldName = 'BIRIMFIYAT'
      Origin = 'ALISSATISBODRO.BIRIMFIYAT'
      OnChange = SatisBodroIBQBIRIMFIYATChange
      DisplayFormat = '###,###'
    end
    object SatisBodroIBQALISFIYAT: TFloatField
      DisplayLabel = 'Al'#305#351' Fiyat'#305
      FieldName = 'ALISFIYAT'
      Origin = 'ALISSATISBODRO.ALISFIYAT'
      DisplayFormat = '###,###'
    end
    object SatisBodroIBQSATISTUTAR: TFloatField
      DisplayLabel = 'Sat'#305#351' Tutar'#305
      FieldName = 'SATISTUTAR'
      Origin = 'ALISSATISBODRO.SATISTUTAR'
      DisplayFormat = '###,###'
    end
    object SatisBodroIBQSATISFIYAT: TFloatField
      DisplayLabel = 'Sat'#305#351' Fiyat'#305
      FieldName = 'SATISFIYAT'
      Origin = 'ALISSATISBODRO.SATISFIYAT'
      DisplayFormat = '###,###'
    end
    object SatisBodroIBQALISTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' Tutar'#305
      FieldName = 'ALISTUTAR'
      Origin = 'ALISSATISBODRO.ALISTUTAR'
      DisplayFormat = '###,###'
    end
    object SatisBodroIBQALISMATRAHI: TFloatField
      DisplayLabel = 'Al'#305#351' Matrah'#305
      FieldName = 'ALISMATRAHI'
      Origin = 'ALISSATISBODRO.ALISMATRAHI'
      DisplayFormat = '###,###'
    end
    object SatisBodroIBQSATISMATRAHI: TFloatField
      DisplayLabel = 'Sat'#305#351' Matrah'#305
      FieldName = 'SATISMATRAHI'
      Origin = 'ALISSATISBODRO.SATISMATRAHI'
      DisplayFormat = '###,###'
    end
    object SatisBodroIBQISKONTO1: TFloatField
      DisplayLabel = #304'sk.1'
      FieldName = 'ISKONTO1'
      Origin = 'ALISSATISBODRO.ISKONTO1'
      DisplayFormat = '###,###'
    end
    object SatisBodroIBQISKONTO2: TFloatField
      DisplayLabel = #304'sk.2'
      FieldName = 'ISKONTO2'
      Origin = 'ALISSATISBODRO.ISKONTO2'
      DisplayFormat = '###,###'
    end
    object SatisBodroIBQISKONTO3: TFloatField
      DisplayLabel = #304'sk.3'
      FieldName = 'ISKONTO3'
      Origin = 'ALISSATISBODRO.ISKONTO3'
      DisplayFormat = '###,###'
    end
    object SatisBodroIBQISKONTO4: TFloatField
      DisplayLabel = #304'sk.4'
      FieldName = 'ISKONTO4'
      Origin = 'ALISSATISBODRO.ISKONTO4'
      DisplayFormat = '###,###'
    end
    object SatisBodroIBQKDVORANI: TFloatField
      DisplayLabel = 'Kdv Oran'#305
      FieldName = 'KDVORANI'
      Origin = 'ALISSATISBODRO.KDVORANI'
      DisplayFormat = '###,###'
    end
    object SatisBodroIBQBAKIYE: TFloatField
      FieldName = 'BAKIYE'
      Origin = 'ALISSATISBODRO.BAKIYE'
      DisplayFormat = '###,###'
    end
    object SatisBodroIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'ALISSATISBODRO.DURUM'
    end
    object SatisBodroIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'ALISSATISBODRO.ACIKLAMA'
      Size = 60
    end
    object SatisBodroIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'ALISSATISBODRO.KAPATMA'
    end
    object SatisBodroIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'ALISSATISBODRO.VADE'
    end
    object SatisBodroIBQFATURANO: TIntegerField
      FieldName = 'FATURANO'
      Origin = 'ALISSATISBODRO.FATURANO'
    end
    object SatisBodroIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'ALISSATISBODRO.STOKYERIKOD'
    end
    object SatisBodroIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'ALISSATISBODRO.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object SatisBodroIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'ALISSATISBODRO.GELGITKOD'
      Size = 80
    end
    object SatisBodroIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'ALISSATISBODRO.PERSONELKOD'
    end
    object SatisBodroIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'ALISSATISBODRO.KULLANKOD'
    end
    object SatisBodroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'ALISSATISBODRO.SISTEM'
    end
    object SatisBodroIBQEVRAKDURUMU: TIntegerField
      FieldName = 'EVRAKDURUMU'
      Origin = 'ALISSATISBODRO.EVRAKDURUMU'
    end
    object SatisBodroIBQSERINO: TIBStringField
      DisplayLabel = 'Seri No'
      FieldName = 'SERINO'
      Origin = 'ALISSATISBODRO.SERINO'
      Size = 30
    end
    object SatisBodroIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'ALISSATISBODRO.CARIHESAPILISKI'
    end
    object SatisBodroIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'ALISSATISBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object SatisBodroIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri_C'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'ALISSATISBODRO.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object SatisBodroIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'ALISSATISBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object SatisBodroIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'ALISSATISBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object SatisBodroIBQC_REELALIS: TFloatField
      DisplayLabel = 'Reeal Al'#305#351'_C'
      FieldKind = fkInternalCalc
      FieldName = 'C_REELALIS'
      Origin = 'ALISSATISBODRO.C_REELALIS'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SatisBodroIBQC_REELSATIS: TFloatField
      DisplayLabel = 'Reel Sat'#305#351'_C'
      FieldKind = fkInternalCalc
      FieldName = 'C_REELSATIS'
      Origin = 'ALISSATISBODRO.C_REELSATIS'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SatisBodroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'ALISSATISBODRO.ISLEMKOD'
    end
    object SatisBodroIBQKDVSECIM: TIBStringField
      DisplayLabel = 'K.S.'
      FieldName = 'KDVSECIM'
      Origin = 'ALISSATISBODRO.KDVSECIM'
      Size = 5
    end
    object SatisBodroIBQC_TLALISTUTARI: TFloatField
      DisplayLabel = 'TL Al'#305#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISTUTARI'
      Origin = 'ALISSATISBODRO.C_TLALISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SatisBodroIBQC_TLALISMATRAHI: TFloatField
      DisplayLabel = 'TL Al'#305#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISMATRAHI'
      Origin = 'ALISSATISBODRO.C_TLALISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SatisBodroIBQC_TLALISKDVTUTAR: TFloatField
      DisplayLabel = 'TL Al'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISKDVTUTAR'
      Origin = 'ALISSATISBODRO.C_TLALISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SatisBodroIBQC_TLSATISTUTARI: TFloatField
      DisplayLabel = 'TL Sat'#305#351' Tutar'#305'_C'
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISTUTARI'
      Origin = 'ALISSATISBODRO.C_TLSATISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SatisBodroIBQC_TLSATISKDVTUTARI: TFloatField
      DisplayLabel = 'TL Sat'#305#351' KDV Tutar'#305'_C'
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISKDVTUTARI'
      Origin = 'ALISSATISBODRO.C_TLSATISKDVTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SatisBodroIBQC_TLSATISMATRAHI: TFloatField
      DisplayLabel = 'TL Sat'#305#351' Matrah'#305'_C'
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISMATRAHI'
      Origin = 'ALISSATISBODRO.C_TLSATISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SatisBodroIBQC_TLBIRIMFIYAT: TFloatField
      DisplayLabel = 'TL Birim Fiyat'
      FieldKind = fkInternalCalc
      FieldName = 'C_TLBIRIMFIYAT'
      Origin = 'ALISSATISBODRO.C_TLBIRIMFIYAT'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SatisBodroIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G.G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'ALISSATISBODRO.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object SatisBodroIBQC_ALISKDVTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' Kdv Tutar'#305'_C'
      FieldKind = fkInternalCalc
      FieldName = 'C_ALISKDVTUTAR'
      Origin = 'ALISSATISBODRO.C_ALISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SatisBodroIBQC_SATISKDVTUTAR: TFloatField
      DisplayLabel = 'Sat'#305#351' KDV Tutar'#305'_C'
      FieldKind = fkInternalCalc
      FieldName = 'C_SATISKDVTUTAR'
      Origin = 'ALISSATISBODRO.C_SATISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SatisBodroIBQMALIYETFIYATI: TFloatField
      FieldName = 'MALIYETFIYATI'
      Origin = 'ALISSATISBODRO.MALIYETFIYATI'
    end
    object SatisBodroIBQC_MALIYETTUTARI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_MALIYETTUTARI'
      Origin = 'ALISSATISBODRO.C_MALIYETTUTARI'
      ReadOnly = True
    end
    object SatisBodroIBQC_KARZARAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_KARZARAR'
      Origin = 'ALISSATISBODRO.C_KARZARAR'
      ReadOnly = True
    end
  end
  object SatisBodroUSQL: TIBUpdateSQL
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
      '  SISTEM,'
      '  MALIYETFIYATI,'
      '  C_MALIYETTUTARI,'
      '  C_KARZARAR'
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
      
        '   PERSONELKOD, KULLANKOD, EVRAKDURUMU, SERINO, CARIHESAPILISKI,' +
        ' ISLEMKOD, '
      '   KDVSECIM, SISTEM, MALIYETFIYATI)'
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
      
        '   :ISLEMKURU, :GELGITKOD, :PERSONELKOD, :KULLANKOD, :EVRAKDURUM' +
        'U, :SERINO, '
      
        '   :CARIHESAPILISKI, :ISLEMKOD, :KDVSECIM, :SISTEM, :MALIYETFIYA' +
        'TI)')
    DeleteSQL.Strings = (
      'delete from ALISSATISBODRO'
      'where'
      '  BODROKOD = :OLD_BODROKOD')
    Left = 136
    Top = 176
  end
  object SatisBodroDS: TDataSource
    DataSet = SatisBodroIBQ
    Left = 224
    Top = 176
  end
  object SatisBilgiIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = SatisBilgiIBQAfterPost
    OnNewRecord = SatisBilgiIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = SatisDS
    SQL.Strings = (
      'select * from ISLEMBILGI'
      'Where ISLEMKOD=:ISLEMKOD and ISLEMTURKOD=:ISLEMTURKOD')
    UpdateObject = SatisBilgiUSQL
    GeneratorField.Field = 'BILGIKOD'
    GeneratorField.Generator = 'ISLEMBILGI'
    Left = 40
    Top = 285
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
    object SatisBilgiIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'ISLEMBILGI.BILGIKOD'
      Required = True
    end
    object SatisBilgiIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'ISLEMBILGI.ISLEMKOD'
    end
    object SatisBilgiIBQALTBILGI: TMemoField
      FieldName = 'ALTBILGI'
      Origin = 'ISLEMBILGI.ALTBILGI'
      BlobType = ftMemo
      Size = 8
    end
    object SatisBilgiIBQUSTBILGI: TMemoField
      FieldName = 'USTBILGI'
      Origin = 'ISLEMBILGI.USTBILGI'
      BlobType = ftMemo
      Size = 8
    end
    object SatisBilgiIBQALTISKONTO: TFloatField
      FieldName = 'ALTISKONTO'
      Origin = 'ISLEMBILGI.ALTISKONTO'
    end
    object SatisBilgiIBQISLEMTURKOD: TIntegerField
      FieldName = 'ISLEMTURKOD'
      Origin = 'ISLEMBILGI.ISLEMTURKOD'
    end
  end
  object SatisBilgiUSQL: TIBUpdateSQL
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
    Top = 285
  end
  object SatisBilgiDS: TDataSource
    DataSet = SatisBilgiIBQ
    Left = 224
    Top = 285
  end
  object AcikSatislarIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = AcikSatislarIBQAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DMKasa.TahsilatDS
    SQL.Strings = (
      'select * from ALISSATIS '
      
        'where  CARIKOD=:CARIKOD and ((ISLEMTURKOD=2 OR ISLEMTURKOD=34)  ' +
        'and KAPATMA=1 and SISTEM<>2)'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = AcikSatislarUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'ALISSATIS'
    Left = 326
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CARIKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object AcikSatislarIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'ALISSATIS.ISLEMKOD'
      Required = True
    end
    object AcikSatislarIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'ALISSATIS.CARIKOD'
    end
    object AcikSatislarIBQALISSATISNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'ALISSATISNO'
      Origin = 'ALISSATIS.ALISSATISNO'
    end
    object AcikSatislarIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'ALISSATIS.TARIH'
    end
    object AcikSatislarIBQIRSALIYETARIH: TDateField
      DisplayLabel = #304'rsaliye Tarihi'
      FieldName = 'IRSALIYETARIH'
      Origin = 'ALISSATIS.IRSALIYETARIH'
    end
    object AcikSatislarIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'ALISSATIS.SAAT'
    end
    object AcikSatislarIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'ALISSATIS.ACIKLAMA'
      Size = 80
    end
    object AcikSatislarIBQALISTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' Tutar'#305
      FieldName = 'ALISTUTAR'
      Origin = 'ALISSATIS.ALISTUTAR'
      DisplayFormat = '###,###'
    end
    object AcikSatislarIBQSATISTUTAR: TFloatField
      DisplayLabel = 'Sat'#305#351' Tutar'#305
      FieldName = 'SATISTUTAR'
      Origin = 'ALISSATIS.SATISTUTAR'
      DisplayFormat = '###,###'
    end
    object AcikSatislarIBQALISMATRAH: TFloatField
      DisplayLabel = 'Al'#305#351' Matrah'
      FieldName = 'ALISMATRAH'
      Origin = 'ALISSATIS.ALISMATRAH'
      DisplayFormat = '###,###'
    end
    object AcikSatislarIBQALISKDVTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' KDV Tutar'#305
      FieldName = 'ALISKDVTUTAR'
      Origin = 'ALISSATIS.ALISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object AcikSatislarIBQSATISMATRAH: TFloatField
      FieldName = 'SATISMATRAH'
      Origin = 'ALISSATIS.SATISMATRAH'
      DisplayFormat = '###,###'
    end
    object AcikSatislarIBQSATISKDVTUTAR: TFloatField
      FieldName = 'SATISKDVTUTAR'
      Origin = 'ALISSATIS.SATISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object AcikSatislarIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'ALISSATIS.D_TEDIYE'
      DisplayFormat = '###,###'
    end
    object AcikSatislarIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'ALISSATIS.D_TAHSILAT'
      DisplayFormat = '###,###'
    end
    object AcikSatislarIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'ALISSATIS.CARIKURU'
      DisplayFormat = '###,###'
    end
    object AcikSatislarIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'ALISSATIS.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object AcikSatislarIBQTAHSILATMATRAH: TFloatField
      FieldName = 'TAHSILATMATRAH'
      Origin = 'ALISSATIS.TAHSILATMATRAH'
      DisplayFormat = '###,###'
    end
    object AcikSatislarIBQTEDIYEMATRAH: TFloatField
      FieldName = 'TEDIYEMATRAH'
      Origin = 'ALISSATIS.TEDIYEMATRAH'
      DisplayFormat = '###,###'
    end
    object AcikSatislarIBQKAPATMA: TIntegerField
      DisplayLabel = 'Kapatma'
      FieldName = 'KAPATMA'
      Origin = 'ALISSATIS.KAPATMA'
    end
    object AcikSatislarIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'ALISSATIS.CARINO'
    end
    object AcikSatislarIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'ALISSATIS.GELGITKOD'
      Size = 80
    end
    object AcikSatislarIBQEVRAKNO: TIntegerField
      FieldName = 'EVRAKNO'
      Origin = 'ALISSATIS.EVRAKNO'
    end
    object AcikSatislarIBQBELGENO: TIntegerField
      FieldName = 'BELGENO'
      Origin = 'ALISSATIS.BELGENO'
    end
    object AcikSatislarIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'ALISSATIS.BAGLANTINO'
    end
    object AcikSatislarIBQTAHSILKOD: TIntegerField
      FieldName = 'TAHSILKOD'
      Origin = 'ALISSATIS.TAHSILKOD'
    end
    object AcikSatislarIBQBODROKOD: TIntegerField
      FieldName = 'BODROKOD'
      Origin = 'ALISSATIS.BODROKOD'
    end
    object AcikSatislarIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'ALISSATIS.CARIHESAPILISKI'
    end
    object AcikSatislarIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'ALISSATIS.PARABIRIMKOD'
    end
    object AcikSatislarIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'ALISSATIS.STOKYERIKOD'
    end
    object AcikSatislarIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'ALISSATIS.MAKBUZNO'
    end
    object AcikSatislarIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'ALISSATIS.BILGIKOD'
    end
    object AcikSatislarIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'ALISSATIS.KULLANKOD'
    end
    object AcikSatislarIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'ALISSATIS.PERSONELKOD'
    end
    object AcikSatislarIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'ALISSATIS.SISTEM'
    end
    object AcikSatislarIBQTAHSILEDILEN: TFloatField
      DisplayLabel = 'Tahsiledilen'
      FieldName = 'TAHSILEDILEN'
      Origin = 'ALISSATIS.TAHSILEDILEN'
      DisplayFormat = '###,###'
    end
    object AcikSatislarIBQODENEN: TFloatField
      DisplayLabel = #214'denen'
      FieldName = 'ODENEN'
      Origin = 'ALISSATIS.ODENEN'
      DisplayFormat = '###,###'
    end
    object AcikSatislarIBQKALAN: TFloatField
      DisplayLabel = 'Kalan'
      FieldName = 'KALAN'
      Origin = 'ALISSATIS.KALAN'
      DisplayFormat = '###,###'
    end
    object AcikSatislarIBQCARIPARABIRIMKOD: TIntegerField
      DisplayLabel = 'Cari P.B.'
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'ALISSATIS.CARIPARABIRIMKOD'
    end
    object AcikSatislarIBQC_CARIPARABIRIM: TIBStringField
      DisplayLabel = 'Cari P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'ALISSATIS.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object AcikSatislarIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'ALISSATIS.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object AcikSatislarIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Unvan ( Soyad'#305' Ad'#305')'
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'ALISSATIS.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object AcikSatislarIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'ALISSATIS.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object AcikSatislarIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'ALISSATIS.C_KULLANICIADI'
      ReadOnly = True
    end
    object AcikSatislarIBQC_PERSONEL: TIBStringField
      DisplayLabel = 'Personel'
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'ALISSATIS.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object AcikSatislarIBQFATURATARIH: TDateField
      DisplayLabel = 'F. Tarihi'
      FieldName = 'FATURATARIH'
      Origin = 'ALISSATIS.FATURATARIH'
    end
    object AcikSatislarIBQKDVSECIM: TIBStringField
      FieldName = 'KDVSECIM'
      Origin = 'ALISSATIS.KDVSECIM'
      Size = 5
    end
    object AcikSatislarIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'ALISSATIS.ISLEMTUR'
      Size = 10
    end
    object AcikSatislarIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'ALISSATIS.ISLEMTURKOD'
      ReadOnly = True
    end
    object AcikSatislarIBQD_ALISTUTAR: TFloatField
      DisplayLabel = 'D. Al'#305#351' Tutar'
      FieldName = 'D_ALISTUTAR'
      Origin = 'ALISSATIS.D_ALISTUTAR'
      DisplayFormat = '###,###'
    end
    object AcikSatislarIBQD_ALISKDVTUTAR: TFloatField
      DisplayLabel = 'D. Al'#305#351' KDV Tutar'
      FieldName = 'D_ALISKDVTUTAR'
      Origin = 'ALISSATIS.D_ALISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object AcikSatislarIBQD_ALISMATRAH: TFloatField
      DisplayLabel = 'D. Al'#305#351' Matrah'
      FieldName = 'D_ALISMATRAH'
      Origin = 'ALISSATIS.D_ALISMATRAH'
      DisplayFormat = '###,###'
    end
    object AcikSatislarIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G. G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'ALISSATIS.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object AcikSatislarIBQALTISKONTO: TFloatField
      FieldName = 'ALTISKONTO'
      Origin = 'ALISSATIS.ALTISKONTO'
      DisplayFormat = '###,###'
    end
    object AcikSatislarIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'ALISSATIS.VADE'
    end
    object AcikSatislarIBQD_SATISTUTAR: TFloatField
      FieldName = 'D_SATISTUTAR'
      Origin = 'ALISSATIS.D_SATISTUTAR'
    end
    object AcikSatislarIBQD_SATISKDVTUTAR: TFloatField
      FieldName = 'D_SATISKDVTUTAR'
      Origin = 'ALISSATIS.D_SATISKDVTUTAR'
    end
    object AcikSatislarIBQD_SATISMATRAH: TFloatField
      FieldName = 'D_SATISMATRAH'
      Origin = 'ALISSATIS.D_SATISMATRAH'
    end
    object AcikSatislarIBQIRSALIYENO: TIntegerField
      FieldName = 'IRSALIYENO'
      Origin = 'ALISSATIS.IRSALIYENO'
    end
    object AcikSatislarIBQEVRAKTARIH: TDateField
      FieldName = 'EVRAKTARIH'
      Origin = 'ALISSATIS.EVRAKTARIH'
    end
    object AcikSatislarIBQC_FIYATSEC: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_FIYATSEC'
      Origin = 'ALISSATIS.C_FIYATSEC'
      ReadOnly = True
    end
  end
  object AcikSatislarUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  ALISSATISNO,'
      '  TARIH,'
      '  IRSALIYETARIH,'
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
      '  CARINO,'
      '  GELGITKOD,'
      '  EVRAKNO,'
      '  BELGENO,'
      '  BAGLANTINO,'
      '  TAHSILKOD,'
      '  BODROKOD,'
      '  CARIHESAPILISKI,'
      '  PARABIRIMKOD,'
      '  STOKYERIKOD,'
      '  MAKBUZNO,'
      '  BILGIKOD,'
      '  KULLANKOD,'
      '  PERSONELKOD,'
      '  TAHSILEDILEN,'
      '  ODENEN,'
      '  KALAN,'
      '  CARIPARABIRIMKOD,'
      '  C_CARIPARABIRIM,'
      '  C_PARABIRIMI,'
      '  C_CARIADI,'
      '  C_STOKYERI,'
      '  C_KULLANICIADI,'
      '  C_PERSONEL,'
      '  FATURATARIH,'
      '  KDVSECIM,'
      '  D_ALISTUTAR,'
      '  D_ALISKDVTUTAR,'
      '  D_ALISMATRAH,'
      '  C_GGMERKEZI,'
      '  C_FIYATSEC,'
      '  ALTISKONTO,'
      '  D_SATISTUTAR,'
      '  D_SATISKDVTUTAR,'
      '  D_SATISMATRAH,'
      '  IRSALIYENO,'
      '  EVRAKTARIH,'
      '  SISTEM'
      'from ALISSATIS '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update ALISSATIS'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  ALISSATISNO = :ALISSATISNO,'
      '  TARIH = :TARIH,'
      '  IRSALIYETARIH = :IRSALIYETARIH,'
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
      '  CARINO = :CARINO,'
      '  GELGITKOD = :GELGITKOD,'
      '  EVRAKNO = :EVRAKNO,'
      '  BELGENO = :BELGENO,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  TAHSILKOD = :TAHSILKOD,'
      '  BODROKOD = :BODROKOD,'
      '  CARIHESAPILISKI = :CARIHESAPILISKI,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  STOKYERIKOD = :STOKYERIKOD,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  BILGIKOD = :BILGIKOD,'
      '  KULLANKOD = :KULLANKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  TAHSILEDILEN = :TAHSILEDILEN,'
      '  ODENEN = :ODENEN,'
      '  KALAN = :KALAN,'
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  FATURATARIH = :FATURATARIH,'
      '  KDVSECIM = :KDVSECIM,'
      '  D_ALISTUTAR = :D_ALISTUTAR,'
      '  D_ALISKDVTUTAR = :D_ALISKDVTUTAR,'
      '  D_ALISMATRAH = :D_ALISMATRAH,'
      '  ALTISKONTO = :ALTISKONTO,'
      '  IRSALIYENO = :IRSALIYENO,'
      '  EVRAKTARIH = :EVRAKTARIH,'
      '  SISTEM = :SISTEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into ALISSATIS'
      
        '  (ISLEMKOD, CARIKOD, ISLEMTUR, ALISSATISNO, TARIH, IRSALIYETARI' +
        'H, SAAT, '
      
        '   ACIKLAMA, ALISTUTAR, SATISTUTAR, ALISMATRAH, ALISKDVTUTAR, SA' +
        'TISMATRAH, '
      
        '   SATISKDVTUTAR, D_TEDIYE, D_TAHSILAT, CARIKURU, ISLEMKURU, TAH' +
        'SILATMATRAH, '
      
        '   TEDIYEMATRAH, KAPATMA, VADE, CARINO, GELGITKOD, EVRAKNO, BELG' +
        'ENO, BAGLANTINO, '
      
        '   TAHSILKOD, BODROKOD, CARIHESAPILISKI, PARABIRIMKOD, STOKYERIK' +
        'OD, MAKBUZNO, '
      
        '   BILGIKOD, KULLANKOD, PERSONELKOD, TAHSILEDILEN, ODENEN, KALAN' +
        ', CARIPARABIRIMKOD, '
      
        '   FATURATARIH, KDVSECIM, D_ALISTUTAR, D_ALISKDVTUTAR, D_ALISMAT' +
        'RAH, ALTISKONTO, '
      '   IRSALIYENO, EVRAKTARIH, SISTEM)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :ISLEMTUR, :ALISSATISNO, :TARIH, :IRSALI' +
        'YETARIH, '
      
        '   :SAAT, :ACIKLAMA, :ALISTUTAR, :SATISTUTAR, :ALISMATRAH, :ALIS' +
        'KDVTUTAR, '
      
        '   :SATISMATRAH, :SATISKDVTUTAR, :D_TEDIYE, :D_TAHSILAT, :CARIKU' +
        'RU, :ISLEMKURU, '
      
        '   :TAHSILATMATRAH, :TEDIYEMATRAH, :KAPATMA, :VADE, :CARINO, :GE' +
        'LGITKOD, '
      
        '   :EVRAKNO, :BELGENO, :BAGLANTINO, :TAHSILKOD, :BODROKOD, :CARI' +
        'HESAPILISKI, '
      
        '   :PARABIRIMKOD, :STOKYERIKOD, :MAKBUZNO, :BILGIKOD, :KULLANKOD' +
        ', :PERSONELKOD, '
      
        '   :TAHSILEDILEN, :ODENEN, :KALAN, :CARIPARABIRIMKOD, :FATURATAR' +
        'IH, :KDVSECIM, '
      
        '   :D_ALISTUTAR, :D_ALISKDVTUTAR, :D_ALISMATRAH, :ALTISKONTO, :I' +
        'RSALIYENO, '
      '   :EVRAKTARIH, :SISTEM)')
    DeleteSQL.Strings = (
      'delete from ALISSATIS'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 422
    Top = 8
  end
  object AcikSatislarDS: TDataSource
    DataSet = AcikSatislarIBQ
    Left = 510
    Top = 8
  end
  object SatisKapatmaIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = SatisKapatmaIBQAfterDelete
    AfterPost = SatisKapatmaIBQAfterPost
    OnNewRecord = SatisKapatmaIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DMKasa.TahsilatDS
    SQL.Strings = (
      'select *  from ALISSATISTAHSILAT'
      'Where BAGLANTINO=:ISLEMKOD'
      '')
    UpdateObject = SatisKapatmaUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'ALISSATISTAHSILAT'
    Left = 326
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SatisKapatmaIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'ALISSATISTAHSILAT.ISLEMKOD'
      Required = True
    end
    object SatisKapatmaIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'ALISSATISTAHSILAT.TARIH'
    end
    object SatisKapatmaIBQALISSATISNO: TIntegerField
      FieldName = 'ALISSATISNO'
      Origin = 'ALISSATISTAHSILAT.ALISSATISNO'
    end
    object SatisKapatmaIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'ALISSATISTAHSILAT.ACIKLAMA'
      Size = 80
    end
    object SatisKapatmaIBQODENEN: TFloatField
      FieldName = 'ODENEN'
      Origin = 'ALISSATISTAHSILAT.ODENEN'
    end
    object SatisKapatmaIBQTAHSILEDILEN: TFloatField
      FieldName = 'TAHSILEDILEN'
      Origin = 'ALISSATISTAHSILAT.TAHSILEDILEN'
    end
    object SatisKapatmaIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'ALISSATISTAHSILAT.BAGLANTINO'
    end
    object SatisKapatmaIBQALISSATISKOD: TIntegerField
      FieldName = 'ALISSATISKOD'
      Origin = 'ALISSATISTAHSILAT.ALISSATISKOD'
    end
  end
  object SatisKapatmaUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  TARIH,'
      '  ALISSATISNO,'
      '  ACIKLAMA,'
      '  ODENEN,'
      '  TAHSILEDILEN,'
      '  BAGLANTINO,'
      '  ALISSATISKOD,'
      '  SISTEM'
      'from ALISSATISTAHSILAT '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update ALISSATISTAHSILAT'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  TARIH = :TARIH,'
      '  ALISSATISNO = :ALISSATISNO,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  ODENEN = :ODENEN,'
      '  TAHSILEDILEN = :TAHSILEDILEN,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  ALISSATISKOD = :ALISSATISKOD,'
      '  SISTEM = :SISTEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into ALISSATISTAHSILAT'
      
        '  (ISLEMKOD, TARIH, ALISSATISNO, ACIKLAMA, ODENEN, TAHSILEDILEN,' +
        ' BAGLANTINO, '
      '   ALISSATISKOD, SISTEM)'
      'values'
      
        '  (:ISLEMKOD, :TARIH, :ALISSATISNO, :ACIKLAMA, :ODENEN, :TAHSILE' +
        'DILEN, '
      '   :BAGLANTINO, :ALISSATISKOD, :SISTEM)')
    DeleteSQL.Strings = (
      'delete from ALISSATISTAHSILAT'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 422
    Top = 64
  end
  object SatisKapatmaDS: TDataSource
    DataSet = SatisKapatmaIBQ
    Left = 510
    Top = 64
  end
  object AlisKapatmaIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = AlisKapatmaIBQAfterDelete
    AfterPost = AlisKapatmaIBQAfterPost
    OnNewRecord = AlisKapatmaIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DMKasa.OdemeDS
    SQL.Strings = (
      'select *  from ALISSATISTAHSILAT'
      'Where BAGLANTINO=:ISLEMKOD'
      '')
    UpdateObject = AlisKapatmaUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'ALISSATISTAHSILAT'
    Left = 326
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object AlisKapatmaIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'ALISSATISTAHSILAT.ISLEMKOD'
      Required = True
    end
    object AlisKapatmaIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'ALISSATISTAHSILAT.TARIH'
    end
    object AlisKapatmaIBQALISSATISNO: TIntegerField
      FieldName = 'ALISSATISNO'
      Origin = 'ALISSATISTAHSILAT.ALISSATISNO'
    end
    object AlisKapatmaIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'ALISSATISTAHSILAT.ACIKLAMA'
      Size = 80
    end
    object AlisKapatmaIBQODENEN: TFloatField
      FieldName = 'ODENEN'
      Origin = 'ALISSATISTAHSILAT.ODENEN'
    end
    object AlisKapatmaIBQTAHSILEDILEN: TFloatField
      FieldName = 'TAHSILEDILEN'
      Origin = 'ALISSATISTAHSILAT.TAHSILEDILEN'
    end
    object AlisKapatmaIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'ALISSATISTAHSILAT.BAGLANTINO'
    end
    object AlisKapatmaIBQALISSATISKOD: TIntegerField
      FieldName = 'ALISSATISKOD'
      Origin = 'ALISSATISTAHSILAT.ALISSATISKOD'
    end
  end
  object AlisKapatmaUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  TARIH,'
      '  ALISSATISNO,'
      '  ACIKLAMA,'
      '  ODENEN,'
      '  TAHSILEDILEN,'
      '  BAGLANTINO,'
      '  ALISSATISKOD,'
      '  SISTEM'
      'from ALISSATISTAHSILAT '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update ALISSATISTAHSILAT'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  TARIH = :TARIH,'
      '  ALISSATISNO = :ALISSATISNO,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  ODENEN = :ODENEN,'
      '  TAHSILEDILEN = :TAHSILEDILEN,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  ALISSATISKOD = :ALISSATISKOD,'
      '  SISTEM = :SISTEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into ALISSATISTAHSILAT'
      
        '  (ISLEMKOD, TARIH, ALISSATISNO, ACIKLAMA, ODENEN, TAHSILEDILEN,' +
        ' BAGLANTINO, '
      '   ALISSATISKOD, SISTEM)'
      'values'
      
        '  (:ISLEMKOD, :TARIH, :ALISSATISNO, :ACIKLAMA, :ODENEN, :TAHSILE' +
        'DILEN, '
      '   :BAGLANTINO, :ALISSATISKOD, :SISTEM)')
    DeleteSQL.Strings = (
      'delete from ALISSATISTAHSILAT'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 422
    Top = 184
  end
  object AlisKapatmaDS: TDataSource
    DataSet = AlisKapatmaIBQ
    Left = 510
    Top = 184
  end
  object AcikAlislarIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = AcikAlislarIBQAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DMKasa.OdemeDS
    SQL.Strings = (
      'select * from ALISSATIS '
      
        'where  CARIKOD=:CARIKOD and ((ISLEMTURKOD=1 OR ISLEMTURKOD=42) a' +
        'nd KAPATMA=1 and SISTEM<>2)'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = AcikAlislarSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'ALISSATIS'
    Left = 326
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CARIKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object AcikAlislarIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'ALISSATIS.ISLEMKOD'
      Required = True
    end
    object AcikAlislarIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'ALISSATIS.CARIKOD'
    end
    object AcikAlislarIBQALISSATISNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'ALISSATISNO'
      Origin = 'ALISSATIS.ALISSATISNO'
    end
    object AcikAlislarIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'ALISSATIS.TARIH'
    end
    object AcikAlislarIBQIRSALIYETARIH: TDateField
      DisplayLabel = #304'rsaliye Tarihi'
      FieldName = 'IRSALIYETARIH'
      Origin = 'ALISSATIS.IRSALIYETARIH'
    end
    object AcikAlislarIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'ALISSATIS.SAAT'
    end
    object AcikAlislarIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'ALISSATIS.ACIKLAMA'
      Size = 80
    end
    object AcikAlislarIBQALISTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' Tutar'#305
      FieldName = 'ALISTUTAR'
      Origin = 'ALISSATIS.ALISTUTAR'
      DisplayFormat = '###,###'
    end
    object AcikAlislarIBQSATISTUTAR: TFloatField
      DisplayLabel = 'Sat'#305#351' Tutar'#305
      FieldName = 'SATISTUTAR'
      Origin = 'ALISSATIS.SATISTUTAR'
      DisplayFormat = '###,###'
    end
    object AcikAlislarIBQALISMATRAH: TFloatField
      DisplayLabel = 'Al'#305#351' Matrah'
      FieldName = 'ALISMATRAH'
      Origin = 'ALISSATIS.ALISMATRAH'
      DisplayFormat = '###,###'
    end
    object AcikAlislarIBQALISKDVTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' KDV Tutar'#305
      FieldName = 'ALISKDVTUTAR'
      Origin = 'ALISSATIS.ALISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object AcikAlislarIBQSATISMATRAH: TFloatField
      FieldName = 'SATISMATRAH'
      Origin = 'ALISSATIS.SATISMATRAH'
      DisplayFormat = '###,###'
    end
    object AcikAlislarIBQSATISKDVTUTAR: TFloatField
      FieldName = 'SATISKDVTUTAR'
      Origin = 'ALISSATIS.SATISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object AcikAlislarIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'ALISSATIS.D_TEDIYE'
      DisplayFormat = '###,###'
    end
    object AcikAlislarIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'ALISSATIS.D_TAHSILAT'
      DisplayFormat = '###,###'
    end
    object AcikAlislarIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'ALISSATIS.CARIKURU'
      DisplayFormat = '###,###'
    end
    object AcikAlislarIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'ALISSATIS.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object AcikAlislarIBQTAHSILATMATRAH: TFloatField
      FieldName = 'TAHSILATMATRAH'
      Origin = 'ALISSATIS.TAHSILATMATRAH'
      DisplayFormat = '###,###'
    end
    object AcikAlislarIBQTEDIYEMATRAH: TFloatField
      FieldName = 'TEDIYEMATRAH'
      Origin = 'ALISSATIS.TEDIYEMATRAH'
      DisplayFormat = '###,###'
    end
    object AcikAlislarIBQKAPATMA: TIntegerField
      DisplayLabel = 'Kapatma'
      FieldName = 'KAPATMA'
      Origin = 'ALISSATIS.KAPATMA'
    end
    object AcikAlislarIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'ALISSATIS.CARINO'
    end
    object AcikAlislarIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'ALISSATIS.GELGITKOD'
      Size = 80
    end
    object AcikAlislarIBQEVRAKNO: TIntegerField
      FieldName = 'EVRAKNO'
      Origin = 'ALISSATIS.EVRAKNO'
    end
    object AcikAlislarIBQBELGENO: TIntegerField
      FieldName = 'BELGENO'
      Origin = 'ALISSATIS.BELGENO'
    end
    object AcikAlislarIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'ALISSATIS.BAGLANTINO'
    end
    object AcikAlislarIBQTAHSILKOD: TIntegerField
      FieldName = 'TAHSILKOD'
      Origin = 'ALISSATIS.TAHSILKOD'
    end
    object AcikAlislarIBQBODROKOD: TIntegerField
      FieldName = 'BODROKOD'
      Origin = 'ALISSATIS.BODROKOD'
    end
    object AcikAlislarIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'ALISSATIS.CARIHESAPILISKI'
    end
    object AcikAlislarIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'ALISSATIS.PARABIRIMKOD'
    end
    object AcikAlislarIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'ALISSATIS.STOKYERIKOD'
    end
    object AcikAlislarIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'ALISSATIS.MAKBUZNO'
    end
    object AcikAlislarIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'ALISSATIS.BILGIKOD'
    end
    object AcikAlislarIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'ALISSATIS.KULLANKOD'
    end
    object AcikAlislarIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'ALISSATIS.PERSONELKOD'
    end
    object AcikAlislarIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'ALISSATIS.SISTEM'
    end
    object AcikAlislarIBQTAHSILEDILEN: TFloatField
      DisplayLabel = 'Tahsiledilen'
      FieldName = 'TAHSILEDILEN'
      Origin = 'ALISSATIS.TAHSILEDILEN'
      DisplayFormat = '###,###'
    end
    object AcikAlislarIBQODENEN: TFloatField
      DisplayLabel = #214'denen'
      FieldName = 'ODENEN'
      Origin = 'ALISSATIS.ODENEN'
      DisplayFormat = '###,###'
    end
    object AcikAlislarIBQKALAN: TFloatField
      DisplayLabel = 'Kalan'
      FieldName = 'KALAN'
      Origin = 'ALISSATIS.KALAN'
      DisplayFormat = '###,###'
    end
    object AcikAlislarIBQCARIPARABIRIMKOD: TIntegerField
      DisplayLabel = 'Cari P.B.'
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'ALISSATIS.CARIPARABIRIMKOD'
    end
    object AcikAlislarIBQC_CARIPARABIRIM: TIBStringField
      DisplayLabel = 'Cari P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'ALISSATIS.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object AcikAlislarIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'ALISSATIS.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object AcikAlislarIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Unvan ( Soyad'#305' Ad'#305')'
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'ALISSATIS.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object AcikAlislarIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'ALISSATIS.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object AcikAlislarIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'ALISSATIS.C_KULLANICIADI'
      ReadOnly = True
    end
    object AcikAlislarIBQC_PERSONEL: TIBStringField
      DisplayLabel = 'Personel'
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'ALISSATIS.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object AcikAlislarIBQFATURATARIH: TDateField
      DisplayLabel = 'F. Tarihi'
      FieldName = 'FATURATARIH'
      Origin = 'ALISSATIS.FATURATARIH'
    end
    object AcikAlislarIBQKDVSECIM: TIBStringField
      FieldName = 'KDVSECIM'
      Origin = 'ALISSATIS.KDVSECIM'
      Size = 5
    end
    object AcikAlislarIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'ALISSATIS.ISLEMTUR'
      Size = 10
    end
    object AcikAlislarIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'ALISSATIS.ISLEMTURKOD'
      ReadOnly = True
    end
    object AcikAlislarIBQD_ALISTUTAR: TFloatField
      DisplayLabel = 'D. Al'#305#351' Tutar'
      FieldName = 'D_ALISTUTAR'
      Origin = 'ALISSATIS.D_ALISTUTAR'
      DisplayFormat = '###,###'
    end
    object AcikAlislarIBQD_ALISKDVTUTAR: TFloatField
      DisplayLabel = 'D. Al'#305#351' KDV Tutar'
      FieldName = 'D_ALISKDVTUTAR'
      Origin = 'ALISSATIS.D_ALISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object AcikAlislarIBQD_ALISMATRAH: TFloatField
      DisplayLabel = 'D. Al'#305#351' Matrah'
      FieldName = 'D_ALISMATRAH'
      Origin = 'ALISSATIS.D_ALISMATRAH'
      DisplayFormat = '###,###'
    end
    object AcikAlislarIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G. G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'ALISSATIS.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object AcikAlislarIBQALTISKONTO: TFloatField
      FieldName = 'ALTISKONTO'
      Origin = 'ALISSATIS.ALTISKONTO'
      DisplayFormat = '###,###'
    end
    object AcikAlislarIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'ALISSATIS.VADE'
    end
    object AcikAlislarIBQD_SATISTUTAR: TFloatField
      FieldName = 'D_SATISTUTAR'
      Origin = 'ALISSATIS.D_SATISTUTAR'
    end
    object AcikAlislarIBQD_SATISKDVTUTAR: TFloatField
      FieldName = 'D_SATISKDVTUTAR'
      Origin = 'ALISSATIS.D_SATISKDVTUTAR'
    end
    object AcikAlislarIBQD_SATISMATRAH: TFloatField
      FieldName = 'D_SATISMATRAH'
      Origin = 'ALISSATIS.D_SATISMATRAH'
    end
    object AcikAlislarIBQIRSALIYENO: TIntegerField
      FieldName = 'IRSALIYENO'
      Origin = 'ALISSATIS.IRSALIYENO'
    end
    object AcikAlislarIBQEVRAKTARIH: TDateField
      FieldName = 'EVRAKTARIH'
      Origin = 'ALISSATIS.EVRAKTARIH'
    end
    object AcikAlislarIBQC_FIYATSEC: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_FIYATSEC'
      Origin = 'ALISSATIS.C_FIYATSEC'
      ReadOnly = True
    end
  end
  object AcikAlislarSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  ALISSATISNO,'
      '  TARIH,'
      '  IRSALIYETARIH,'
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
      '  CARINO,'
      '  GELGITKOD,'
      '  EVRAKNO,'
      '  BELGENO,'
      '  BAGLANTINO,'
      '  TAHSILKOD,'
      '  BODROKOD,'
      '  CARIHESAPILISKI,'
      '  PARABIRIMKOD,'
      '  STOKYERIKOD,'
      '  MAKBUZNO,'
      '  BILGIKOD,'
      '  KULLANKOD,'
      '  PERSONELKOD,'
      '  TAHSILEDILEN,'
      '  ODENEN,'
      '  KALAN,'
      '  CARIPARABIRIMKOD,'
      '  C_CARIPARABIRIM,'
      '  C_PARABIRIMI,'
      '  C_CARIADI,'
      '  C_STOKYERI,'
      '  C_KULLANICIADI,'
      '  C_PERSONEL,'
      '  FATURATARIH,'
      '  KDVSECIM,'
      '  D_ALISTUTAR,'
      '  D_ALISKDVTUTAR,'
      '  D_ALISMATRAH,'
      '  C_GGMERKEZI,'
      '  C_FIYATSEC,'
      '  ALTISKONTO,'
      '  D_SATISTUTAR,'
      '  D_SATISKDVTUTAR,'
      '  D_SATISMATRAH,'
      '  IRSALIYENO,'
      '  EVRAKTARIH,'
      '  SISTEM'
      'from ALISSATIS '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update ALISSATIS'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  ALISSATISNO = :ALISSATISNO,'
      '  TARIH = :TARIH,'
      '  IRSALIYETARIH = :IRSALIYETARIH,'
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
      '  CARINO = :CARINO,'
      '  GELGITKOD = :GELGITKOD,'
      '  EVRAKNO = :EVRAKNO,'
      '  BELGENO = :BELGENO,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  TAHSILKOD = :TAHSILKOD,'
      '  BODROKOD = :BODROKOD,'
      '  CARIHESAPILISKI = :CARIHESAPILISKI,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  STOKYERIKOD = :STOKYERIKOD,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  BILGIKOD = :BILGIKOD,'
      '  KULLANKOD = :KULLANKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  TAHSILEDILEN = :TAHSILEDILEN,'
      '  ODENEN = :ODENEN,'
      '  KALAN = :KALAN,'
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  FATURATARIH = :FATURATARIH,'
      '  KDVSECIM = :KDVSECIM,'
      '  D_ALISTUTAR = :D_ALISTUTAR,'
      '  D_ALISKDVTUTAR = :D_ALISKDVTUTAR,'
      '  D_ALISMATRAH = :D_ALISMATRAH,'
      '  ALTISKONTO = :ALTISKONTO,'
      '  IRSALIYENO = :IRSALIYENO,'
      '  EVRAKTARIH = :EVRAKTARIH,'
      '  SISTEM = :SISTEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into ALISSATIS'
      
        '  (ISLEMKOD, CARIKOD, ISLEMTUR, ALISSATISNO, TARIH, IRSALIYETARI' +
        'H, SAAT, '
      
        '   ACIKLAMA, ALISTUTAR, SATISTUTAR, ALISMATRAH, ALISKDVTUTAR, SA' +
        'TISMATRAH, '
      
        '   SATISKDVTUTAR, D_TEDIYE, D_TAHSILAT, CARIKURU, ISLEMKURU, TAH' +
        'SILATMATRAH, '
      
        '   TEDIYEMATRAH, KAPATMA, VADE, CARINO, GELGITKOD, EVRAKNO, BELG' +
        'ENO, BAGLANTINO, '
      
        '   TAHSILKOD, BODROKOD, CARIHESAPILISKI, PARABIRIMKOD, STOKYERIK' +
        'OD, MAKBUZNO, '
      
        '   BILGIKOD, KULLANKOD, PERSONELKOD, TAHSILEDILEN, ODENEN, KALAN' +
        ', CARIPARABIRIMKOD, '
      
        '   FATURATARIH, KDVSECIM, D_ALISTUTAR, D_ALISKDVTUTAR, D_ALISMAT' +
        'RAH, ALTISKONTO, '
      '   IRSALIYENO, EVRAKTARIH, SISTEM)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :ISLEMTUR, :ALISSATISNO, :TARIH, :IRSALI' +
        'YETARIH, '
      
        '   :SAAT, :ACIKLAMA, :ALISTUTAR, :SATISTUTAR, :ALISMATRAH, :ALIS' +
        'KDVTUTAR, '
      
        '   :SATISMATRAH, :SATISKDVTUTAR, :D_TEDIYE, :D_TAHSILAT, :CARIKU' +
        'RU, :ISLEMKURU, '
      
        '   :TAHSILATMATRAH, :TEDIYEMATRAH, :KAPATMA, :VADE, :CARINO, :GE' +
        'LGITKOD, '
      
        '   :EVRAKNO, :BELGENO, :BAGLANTINO, :TAHSILKOD, :BODROKOD, :CARI' +
        'HESAPILISKI, '
      
        '   :PARABIRIMKOD, :STOKYERIKOD, :MAKBUZNO, :BILGIKOD, :KULLANKOD' +
        ', :PERSONELKOD, '
      
        '   :TAHSILEDILEN, :ODENEN, :KALAN, :CARIPARABIRIMKOD, :FATURATAR' +
        'IH, :KDVSECIM, '
      
        '   :D_ALISTUTAR, :D_ALISKDVTUTAR, :D_ALISMATRAH, :ALTISKONTO, :I' +
        'RSALIYENO, '
      '   :EVRAKTARIH, :SISTEM)')
    DeleteSQL.Strings = (
      'delete from ALISSATIS'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 422
    Top = 128
  end
  object AcikAlislarDS: TDataSource
    DataSet = AcikAlislarIBQ
    Left = 510
    Top = 128
  end
  object AlisiadeIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = AlisiadeIBQAfterPost
    OnNewRecord = AlisiadeIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ALISSATIS '
      'where ISLEMTURKOD=34 and SISTEM<>2'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = AlisiadeUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'ALISSATIS'
    Left = 320
    Top = 248
    object AlisiadeIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'ALISSATIS.ISLEMKOD'
      Required = True
    end
    object AlisiadeIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'ALISSATIS.CARIKOD'
    end
    object AlisiadeIBQALISSATISNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'ALISSATISNO'
      Origin = 'ALISSATIS.ALISSATISNO'
    end
    object AlisiadeIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'ALISSATIS.TARIH'
    end
    object AlisiadeIBQIRSALIYETARIH: TDateField
      DisplayLabel = #304'rsaliye Tarihi'
      FieldName = 'IRSALIYETARIH'
      Origin = 'ALISSATIS.IRSALIYETARIH'
    end
    object AlisiadeIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'ALISSATIS.SAAT'
    end
    object AlisiadeIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'ALISSATIS.ACIKLAMA'
      Size = 80
    end
    object AlisiadeIBQALISTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' Tutar'#305
      FieldName = 'ALISTUTAR'
      Origin = 'ALISSATIS.ALISTUTAR'
      DisplayFormat = '###,###'
    end
    object AlisiadeIBQSATISTUTAR: TFloatField
      DisplayLabel = 'Sat'#305#351' Tutar'#305
      FieldName = 'SATISTUTAR'
      Origin = 'ALISSATIS.SATISTUTAR'
      DisplayFormat = '###,###'
    end
    object AlisiadeIBQALISMATRAH: TFloatField
      DisplayLabel = 'Al'#305#351' Matrah'
      FieldName = 'ALISMATRAH'
      Origin = 'ALISSATIS.ALISMATRAH'
      DisplayFormat = '###,###'
    end
    object AlisiadeIBQALISKDVTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' KDV Tutar'#305
      FieldName = 'ALISKDVTUTAR'
      Origin = 'ALISSATIS.ALISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object AlisiadeIBQSATISMATRAH: TFloatField
      FieldName = 'SATISMATRAH'
      Origin = 'ALISSATIS.SATISMATRAH'
      DisplayFormat = '###,###'
    end
    object AlisiadeIBQSATISKDVTUTAR: TFloatField
      FieldName = 'SATISKDVTUTAR'
      Origin = 'ALISSATIS.SATISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object AlisiadeIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'ALISSATIS.D_TEDIYE'
      DisplayFormat = '###,###'
    end
    object AlisiadeIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'ALISSATIS.D_TAHSILAT'
      DisplayFormat = '###,###'
    end
    object AlisiadeIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'ALISSATIS.CARIKURU'
      DisplayFormat = '###,###'
    end
    object AlisiadeIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'ALISSATIS.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object AlisiadeIBQTAHSILATMATRAH: TFloatField
      FieldName = 'TAHSILATMATRAH'
      Origin = 'ALISSATIS.TAHSILATMATRAH'
      DisplayFormat = '###,###'
    end
    object AlisiadeIBQTEDIYEMATRAH: TFloatField
      FieldName = 'TEDIYEMATRAH'
      Origin = 'ALISSATIS.TEDIYEMATRAH'
      DisplayFormat = '###,###'
    end
    object AlisiadeIBQKAPATMA: TIntegerField
      DisplayLabel = 'Kapatma'
      FieldName = 'KAPATMA'
      Origin = 'ALISSATIS.KAPATMA'
    end
    object AlisiadeIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'ALISSATIS.CARINO'
    end
    object AlisiadeIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'ALISSATIS.GELGITKOD'
      Size = 80
    end
    object AlisiadeIBQEVRAKNO: TIntegerField
      FieldName = 'EVRAKNO'
      Origin = 'ALISSATIS.EVRAKNO'
    end
    object AlisiadeIBQBELGENO: TIntegerField
      FieldName = 'BELGENO'
      Origin = 'ALISSATIS.BELGENO'
    end
    object AlisiadeIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'ALISSATIS.BAGLANTINO'
    end
    object AlisiadeIBQTAHSILKOD: TIntegerField
      FieldName = 'TAHSILKOD'
      Origin = 'ALISSATIS.TAHSILKOD'
    end
    object AlisiadeIBQBODROKOD: TIntegerField
      FieldName = 'BODROKOD'
      Origin = 'ALISSATIS.BODROKOD'
    end
    object AlisiadeIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'ALISSATIS.CARIHESAPILISKI'
    end
    object AlisiadeIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'ALISSATIS.PARABIRIMKOD'
    end
    object AlisiadeIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'ALISSATIS.STOKYERIKOD'
    end
    object AlisiadeIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'ALISSATIS.MAKBUZNO'
    end
    object AlisiadeIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'ALISSATIS.BILGIKOD'
    end
    object AlisiadeIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'ALISSATIS.KULLANKOD'
    end
    object AlisiadeIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'ALISSATIS.PERSONELKOD'
    end
    object AlisiadeIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'ALISSATIS.SISTEM'
    end
    object AlisiadeIBQTAHSILEDILEN: TFloatField
      FieldName = 'TAHSILEDILEN'
      Origin = 'ALISSATIS.TAHSILEDILEN'
      DisplayFormat = '###,###'
    end
    object AlisiadeIBQODENEN: TFloatField
      DisplayLabel = #214'denen'
      FieldName = 'ODENEN'
      Origin = 'ALISSATIS.ODENEN'
      DisplayFormat = '###,###'
    end
    object AlisiadeIBQKALAN: TFloatField
      DisplayLabel = 'Kalan'
      FieldName = 'KALAN'
      Origin = 'ALISSATIS.KALAN'
      DisplayFormat = '###,###'
    end
    object AlisiadeIBQCARIPARABIRIMKOD: TIntegerField
      DisplayLabel = 'Cari P.B.'
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'ALISSATIS.CARIPARABIRIMKOD'
    end
    object AlisiadeIBQC_CARIPARABIRIM: TIBStringField
      DisplayLabel = 'Cari P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'ALISSATIS.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object AlisiadeIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'ALISSATIS.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object AlisiadeIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Unvan ( Soyad'#305' Ad'#305')'
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'ALISSATIS.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object AlisiadeIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'ALISSATIS.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object AlisiadeIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'ALISSATIS.C_KULLANICIADI'
      ReadOnly = True
    end
    object AlisiadeIBQC_PERSONEL: TIBStringField
      DisplayLabel = 'Personel'
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'ALISSATIS.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object AlisiadeIBQFATURATARIH: TDateField
      DisplayLabel = 'F. Tarihi'
      FieldName = 'FATURATARIH'
      Origin = 'ALISSATIS.FATURATARIH'
    end
    object AlisiadeIBQKDVSECIM: TIBStringField
      FieldName = 'KDVSECIM'
      Origin = 'ALISSATIS.KDVSECIM'
      Size = 5
    end
    object AlisiadeIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'ALISSATIS.ISLEMTUR'
      Size = 10
    end
    object AlisiadeIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'ALISSATIS.ISLEMTURKOD'
      ReadOnly = True
    end
    object AlisiadeIBQD_ALISTUTAR: TFloatField
      DisplayLabel = 'D. Al'#305#351' Tutar'
      FieldName = 'D_ALISTUTAR'
      Origin = 'ALISSATIS.D_ALISTUTAR'
      DisplayFormat = '###,###'
    end
    object AlisiadeIBQD_ALISKDVTUTAR: TFloatField
      DisplayLabel = 'D. Al'#305#351' KDV Tutar'
      FieldName = 'D_ALISKDVTUTAR'
      Origin = 'ALISSATIS.D_ALISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object AlisiadeIBQD_ALISMATRAH: TFloatField
      DisplayLabel = 'D. Al'#305#351' Matrah'
      FieldName = 'D_ALISMATRAH'
      Origin = 'ALISSATIS.D_ALISMATRAH'
      DisplayFormat = '###,###'
    end
    object AlisiadeIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G. G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'ALISSATIS.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object AlisiadeIBQALTISKONTO: TFloatField
      FieldName = 'ALTISKONTO'
      Origin = 'ALISSATIS.ALTISKONTO'
      DisplayFormat = '###,###'
    end
    object AlisiadeIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'ALISSATIS.VADE'
    end
    object AlisiadeIBQD_SATISTUTAR: TFloatField
      FieldName = 'D_SATISTUTAR'
      Origin = 'ALISSATIS.D_SATISTUTAR'
    end
    object AlisiadeIBQD_SATISKDVTUTAR: TFloatField
      FieldName = 'D_SATISKDVTUTAR'
      Origin = 'ALISSATIS.D_SATISKDVTUTAR'
    end
    object AlisiadeIBQD_SATISMATRAH: TFloatField
      FieldName = 'D_SATISMATRAH'
      Origin = 'ALISSATIS.D_SATISMATRAH'
    end
    object AlisiadeIBQIRSALIYENO: TIntegerField
      FieldName = 'IRSALIYENO'
      Origin = 'ALISSATIS.IRSALIYENO'
    end
    object AlisiadeIBQEVRAKTARIH: TDateField
      FieldName = 'EVRAKTARIH'
      Origin = 'ALISSATIS.EVRAKTARIH'
    end
    object AlisiadeIBQC_FIYATSEC: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_FIYATSEC'
      Origin = 'ALISSATIS.C_FIYATSEC'
      ReadOnly = True
    end
  end
  object AlisiadeUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  ALISSATISNO,'
      '  TARIH,'
      '  IRSALIYETARIH,'
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
      '  CARINO,'
      '  GELGITKOD,'
      '  EVRAKNO,'
      '  BELGENO,'
      '  BAGLANTINO,'
      '  TAHSILKOD,'
      '  BODROKOD,'
      '  CARIHESAPILISKI,'
      '  PARABIRIMKOD,'
      '  STOKYERIKOD,'
      '  MAKBUZNO,'
      '  BILGIKOD,'
      '  KULLANKOD,'
      '  PERSONELKOD,'
      '  TAHSILEDILEN,'
      '  ODENEN,'
      '  KALAN,'
      '  CARIPARABIRIMKOD,'
      '  C_CARIPARABIRIM,'
      '  C_PARABIRIMI,'
      '  C_CARIADI,'
      '  C_STOKYERI,'
      '  C_KULLANICIADI,'
      '  C_PERSONEL,'
      '  FATURATARIH,'
      '  KDVSECIM,'
      '  D_ALISTUTAR,'
      '  D_ALISKDVTUTAR,'
      '  D_ALISMATRAH,'
      '  C_GGMERKEZI,'
      '  C_FIYATSEC,'
      '  ALTISKONTO,'
      '  D_SATISTUTAR,'
      '  D_SATISKDVTUTAR,'
      '  D_SATISMATRAH,'
      '  IRSALIYENO,'
      '  EVRAKTARIH,'
      '  SISTEM'
      'from ALISSATIS '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update ALISSATIS'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  ALISSATISNO = :ALISSATISNO,'
      '  TARIH = :TARIH,'
      '  IRSALIYETARIH = :IRSALIYETARIH,'
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
      '  CARINO = :CARINO,'
      '  GELGITKOD = :GELGITKOD,'
      '  EVRAKNO = :EVRAKNO,'
      '  BELGENO = :BELGENO,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  TAHSILKOD = :TAHSILKOD,'
      '  BODROKOD = :BODROKOD,'
      '  CARIHESAPILISKI = :CARIHESAPILISKI,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  STOKYERIKOD = :STOKYERIKOD,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  BILGIKOD = :BILGIKOD,'
      '  KULLANKOD = :KULLANKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  TAHSILEDILEN = :TAHSILEDILEN,'
      '  ODENEN = :ODENEN,'
      '  KALAN = :KALAN,'
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  FATURATARIH = :FATURATARIH,'
      '  KDVSECIM = :KDVSECIM,'
      '  D_ALISTUTAR = :D_ALISTUTAR,'
      '  D_ALISKDVTUTAR = :D_ALISKDVTUTAR,'
      '  D_ALISMATRAH = :D_ALISMATRAH,'
      '  D_SATISTUTAR = :D_SATISTUTAR,'
      '  D_SATISKDVTUTAR = :D_SATISKDVTUTAR,'
      '  D_SATISMATRAH = :D_SATISMATRAH,'
      '  IRSALIYENO = :IRSALIYENO,'
      '  EVRAKTARIH = :EVRAKTARIH,'
      '  SISTEM = :SISTEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into ALISSATIS'
      
        '  (ISLEMKOD, CARIKOD, ISLEMTUR, ALISSATISNO, TARIH, IRSALIYETARI' +
        'H, SAAT, '
      
        '   ACIKLAMA, ALISTUTAR, SATISTUTAR, ALISMATRAH, ALISKDVTUTAR, SA' +
        'TISMATRAH, '
      
        '   SATISKDVTUTAR, D_TEDIYE, D_TAHSILAT, CARIKURU, ISLEMKURU, TAH' +
        'SILATMATRAH, '
      
        '   TEDIYEMATRAH, KAPATMA, VADE, CARINO, GELGITKOD, EVRAKNO, BELG' +
        'ENO, BAGLANTINO, '
      
        '   TAHSILKOD, BODROKOD, CARIHESAPILISKI, PARABIRIMKOD, STOKYERIK' +
        'OD, MAKBUZNO, '
      
        '   BILGIKOD, KULLANKOD, PERSONELKOD, TAHSILEDILEN, ODENEN, KALAN' +
        ', CARIPARABIRIMKOD, '
      
        '   FATURATARIH, KDVSECIM, D_ALISTUTAR, D_ALISKDVTUTAR, D_ALISMAT' +
        'RAH, D_SATISTUTAR, '
      
        '   D_SATISKDVTUTAR, D_SATISMATRAH, IRSALIYENO, EVRAKTARIH, SISTE' +
        'M)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :ISLEMTUR, :ALISSATISNO, :TARIH, :IRSALI' +
        'YETARIH, '
      
        '   :SAAT, :ACIKLAMA, :ALISTUTAR, :SATISTUTAR, :ALISMATRAH, :ALIS' +
        'KDVTUTAR, '
      
        '   :SATISMATRAH, :SATISKDVTUTAR, :D_TEDIYE, :D_TAHSILAT, :CARIKU' +
        'RU, :ISLEMKURU, '
      
        '   :TAHSILATMATRAH, :TEDIYEMATRAH, :KAPATMA, :VADE, :CARINO, :GE' +
        'LGITKOD, '
      
        '   :EVRAKNO, :BELGENO, :BAGLANTINO, :TAHSILKOD, :BODROKOD, :CARI' +
        'HESAPILISKI, '
      
        '   :PARABIRIMKOD, :STOKYERIKOD, :MAKBUZNO, :BILGIKOD, :KULLANKOD' +
        ', :PERSONELKOD, '
      
        '   :TAHSILEDILEN, :ODENEN, :KALAN, :CARIPARABIRIMKOD, :FATURATAR' +
        'IH, :KDVSECIM, '
      
        '   :D_ALISTUTAR, :D_ALISKDVTUTAR, :D_ALISMATRAH, :D_SATISTUTAR, ' +
        ':D_SATISKDVTUTAR, '
      '   :D_SATISMATRAH, :IRSALIYENO, :EVRAKTARIH, :SISTEM)')
    DeleteSQL.Strings = (
      'delete from ALISSATIS'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 424
    Top = 248
  end
  object AlisiadeDS: TDataSource
    DataSet = AlisiadeIBQ
    Left = 520
    Top = 248
  end
  object AlisiadeBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = AlisiadeBodroIBQAfterPost
    OnNewRecord = AlisiadeBodroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = AlisiadeDS
    SQL.Strings = (
      'select * from ALISSATISBODRO'
      'where ISLEMKOD=:ISLEMKOD'
      'ORDER BY BODROKOD')
    UpdateObject = AlisiadeBodroUSQL
    GeneratorField.Field = 'BODROKOD'
    GeneratorField.Generator = 'ALISSATISBODRO'
    Left = 320
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object AlisiadeBodroIBQBODROKOD: TIntegerField
      FieldName = 'BODROKOD'
      Origin = 'ALISSATISBODRO.BODROKOD'
      Required = True
    end
    object AlisiadeBodroIBQSIRANO: TIntegerField
      DisplayLabel = 'S'#305'ra'
      FieldName = 'SIRANO'
      Origin = 'ALISSATISBODRO.SIRANO'
    end
    object AlisiadeBodroIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'ALISSATISBODRO.ISLEMTUR'
      Size = 40
    end
    object AlisiadeBodroIBQC_ISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_ISLEMTURKOD'
      Origin = 'ALISSATISBODRO.C_ISLEMTURKOD'
      ReadOnly = True
    end
    object AlisiadeBodroIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'ALISSATISBODRO.CARIKOD'
    end
    object AlisiadeBodroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'ALISSATISBODRO.PARABIRIMKOD'
    end
    object AlisiadeBodroIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'ALISSATISBODRO.TARIH'
    end
    object AlisiadeBodroIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'ALISSATISBODRO.STOKKOD'
    end
    object AlisiadeBodroIBQSTOKNO: TIntegerField
      DisplayLabel = 'Stok No'
      FieldName = 'STOKNO'
      Origin = 'ALISSATISBODRO.STOKNO'
    end
    object AlisiadeBodroIBQBARKOD: TIBStringField
      DisplayLabel = 'Barkod'
      FieldName = 'BARKOD'
      Origin = 'ALISSATISBODRO.BARKOD'
      OnChange = AlisiadeBodroIBQBARKODChange
      Size = 25
    end
    object AlisiadeBodroIBQSTOKADI: TIBStringField
      DisplayLabel = 'Stok Ad'#305
      FieldName = 'STOKADI'
      Origin = 'ALISSATISBODRO.STOKADI'
      Size = 80
    end
    object AlisiadeBodroIBQMIKTAR: TFloatField
      DisplayLabel = 'Miktar'
      FieldName = 'MIKTAR'
      Origin = 'ALISSATISBODRO.MIKTAR'
      OnChange = AlisiadeBodroIBQMIKTARChange
      DisplayFormat = '###,###'
    end
    object AlisiadeBodroIBQMIKTARCARPAN: TIntegerField
      DisplayLabel = 'Birim '#199'arpan'
      FieldName = 'MIKTARCARPAN'
      Origin = 'ALISSATISBODRO.MIKTARCARPAN'
      DisplayFormat = '###,###'
    end
    object AlisiadeBodroIBQGIRISMIKTAR: TFloatField
      DisplayLabel = 'Giri'#351' Miktar'#305
      FieldName = 'GIRISMIKTAR'
      Origin = 'ALISSATISBODRO.GIRISMIKTAR'
      DisplayFormat = '###,###'
    end
    object AlisiadeBodroIBQCIKISMIKTAR: TFloatField
      DisplayLabel = #199#305'k'#305#351' Miktar'#305
      FieldName = 'CIKISMIKTAR'
      Origin = 'ALISSATISBODRO.CIKISMIKTAR'
      DisplayFormat = '###,###'
    end
    object AlisiadeBodroIBQBIRIM: TIBStringField
      DisplayLabel = 'Birim'
      FieldName = 'BIRIM'
      Origin = 'ALISSATISBODRO.BIRIM'
      OnChange = AlisiadeBodroIBQBIRIMChange
      Size = 10
    end
    object AlisiadeBodroIBQBIRIMFIYAT: TFloatField
      DisplayLabel = 'Birim Fiyat'
      FieldName = 'BIRIMFIYAT'
      Origin = 'ALISSATISBODRO.BIRIMFIYAT'
      OnChange = AlisiadeBodroIBQBIRIMFIYATChange
      DisplayFormat = '###,###'
    end
    object AlisiadeBodroIBQALISFIYAT: TFloatField
      DisplayLabel = 'Al'#305#351' Fiyat'#305
      FieldName = 'ALISFIYAT'
      Origin = 'ALISSATISBODRO.ALISFIYAT'
      DisplayFormat = '###,###'
    end
    object AlisiadeBodroIBQSATISTUTAR: TFloatField
      DisplayLabel = 'Sat'#305#351' Tutar'#305
      FieldName = 'SATISTUTAR'
      Origin = 'ALISSATISBODRO.SATISTUTAR'
      DisplayFormat = '###,###'
    end
    object AlisiadeBodroIBQSATISFIYAT: TFloatField
      DisplayLabel = 'Sat'#305#351' Fiyat'#305
      FieldName = 'SATISFIYAT'
      Origin = 'ALISSATISBODRO.SATISFIYAT'
      DisplayFormat = '###,###'
    end
    object AlisiadeBodroIBQALISTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' Tutar'#305
      FieldName = 'ALISTUTAR'
      Origin = 'ALISSATISBODRO.ALISTUTAR'
      DisplayFormat = '###,###'
    end
    object AlisiadeBodroIBQALISMATRAHI: TFloatField
      DisplayLabel = 'Al'#305#351' Matrah'#305
      FieldName = 'ALISMATRAHI'
      Origin = 'ALISSATISBODRO.ALISMATRAHI'
      DisplayFormat = '###,###'
    end
    object AlisiadeBodroIBQSATISMATRAHI: TFloatField
      DisplayLabel = 'Sat'#305#351' Matrah'#305
      FieldName = 'SATISMATRAHI'
      Origin = 'ALISSATISBODRO.SATISMATRAHI'
      DisplayFormat = '###,###'
    end
    object AlisiadeBodroIBQISKONTO1: TFloatField
      DisplayLabel = #304'sk.1'
      FieldName = 'ISKONTO1'
      Origin = 'ALISSATISBODRO.ISKONTO1'
      DisplayFormat = '###,###'
    end
    object AlisiadeBodroIBQISKONTO2: TFloatField
      DisplayLabel = #304'sk.2'
      FieldName = 'ISKONTO2'
      Origin = 'ALISSATISBODRO.ISKONTO2'
      DisplayFormat = '###,###'
    end
    object AlisiadeBodroIBQISKONTO3: TFloatField
      DisplayLabel = #304'sk.3'
      FieldName = 'ISKONTO3'
      Origin = 'ALISSATISBODRO.ISKONTO3'
      DisplayFormat = '###,###'
    end
    object AlisiadeBodroIBQISKONTO4: TFloatField
      DisplayLabel = #304'sk.4'
      FieldName = 'ISKONTO4'
      Origin = 'ALISSATISBODRO.ISKONTO4'
      DisplayFormat = '###,###'
    end
    object AlisiadeBodroIBQKDVORANI: TFloatField
      DisplayLabel = 'Kdv Oran'#305
      FieldName = 'KDVORANI'
      Origin = 'ALISSATISBODRO.KDVORANI'
      DisplayFormat = '###,###'
    end
    object AlisiadeBodroIBQBAKIYE: TFloatField
      FieldName = 'BAKIYE'
      Origin = 'ALISSATISBODRO.BAKIYE'
      DisplayFormat = '###,###'
    end
    object AlisiadeBodroIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'ALISSATISBODRO.DURUM'
    end
    object AlisiadeBodroIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'ALISSATISBODRO.ACIKLAMA'
      Size = 60
    end
    object AlisiadeBodroIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'ALISSATISBODRO.KAPATMA'
    end
    object AlisiadeBodroIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'ALISSATISBODRO.VADE'
    end
    object AlisiadeBodroIBQFATURANO: TIntegerField
      FieldName = 'FATURANO'
      Origin = 'ALISSATISBODRO.FATURANO'
    end
    object AlisiadeBodroIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'ALISSATISBODRO.STOKYERIKOD'
    end
    object AlisiadeBodroIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'ALISSATISBODRO.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object AlisiadeBodroIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'ALISSATISBODRO.GELGITKOD'
      Size = 80
    end
    object AlisiadeBodroIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'ALISSATISBODRO.PERSONELKOD'
    end
    object AlisiadeBodroIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'ALISSATISBODRO.KULLANKOD'
    end
    object AlisiadeBodroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'ALISSATISBODRO.SISTEM'
    end
    object AlisiadeBodroIBQEVRAKDURUMU: TIntegerField
      FieldName = 'EVRAKDURUMU'
      Origin = 'ALISSATISBODRO.EVRAKDURUMU'
    end
    object AlisiadeBodroIBQSERINO: TIBStringField
      DisplayLabel = 'Seri No'
      FieldName = 'SERINO'
      Origin = 'ALISSATISBODRO.SERINO'
      Size = 30
    end
    object AlisiadeBodroIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'ALISSATISBODRO.CARIHESAPILISKI'
    end
    object AlisiadeBodroIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'ALISSATISBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object AlisiadeBodroIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri_C'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'ALISSATISBODRO.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object AlisiadeBodroIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'ALISSATISBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object AlisiadeBodroIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'ALISSATISBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object AlisiadeBodroIBQC_REELALIS: TFloatField
      DisplayLabel = 'Reeal Al'#305#351'_C'
      FieldKind = fkInternalCalc
      FieldName = 'C_REELALIS'
      Origin = 'ALISSATISBODRO.C_REELALIS'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object AlisiadeBodroIBQC_REELSATIS: TFloatField
      DisplayLabel = 'Reel Sat'#305#351'_C'
      FieldKind = fkInternalCalc
      FieldName = 'C_REELSATIS'
      Origin = 'ALISSATISBODRO.C_REELSATIS'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object AlisiadeBodroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'ALISSATISBODRO.ISLEMKOD'
    end
    object AlisiadeBodroIBQKDVSECIM: TIBStringField
      DisplayLabel = 'K.S.'
      FieldName = 'KDVSECIM'
      Origin = 'ALISSATISBODRO.KDVSECIM'
      Size = 5
    end
    object AlisiadeBodroIBQC_TLALISTUTARI: TFloatField
      DisplayLabel = 'TL Al'#305#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISTUTARI'
      Origin = 'ALISSATISBODRO.C_TLALISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object AlisiadeBodroIBQC_TLALISMATRAHI: TFloatField
      DisplayLabel = 'TL Al'#305#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISMATRAHI'
      Origin = 'ALISSATISBODRO.C_TLALISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object AlisiadeBodroIBQC_TLALISKDVTUTAR: TFloatField
      DisplayLabel = 'TL Al'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISKDVTUTAR'
      Origin = 'ALISSATISBODRO.C_TLALISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object AlisiadeBodroIBQC_TLSATISTUTARI: TFloatField
      DisplayLabel = 'TL Sat'#305#351' Tutar'#305'_C'
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISTUTARI'
      Origin = 'ALISSATISBODRO.C_TLSATISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object AlisiadeBodroIBQC_TLSATISKDVTUTARI: TFloatField
      DisplayLabel = 'TL Sat'#305#351' KDV Tutar'#305'_C'
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISKDVTUTARI'
      Origin = 'ALISSATISBODRO.C_TLSATISKDVTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object AlisiadeBodroIBQC_TLSATISMATRAHI: TFloatField
      DisplayLabel = 'TL Sat'#305#351' Matrah'#305'_C'
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISMATRAHI'
      Origin = 'ALISSATISBODRO.C_TLSATISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object AlisiadeBodroIBQC_TLBIRIMFIYAT: TFloatField
      DisplayLabel = 'TL Birim Fiyat'
      FieldKind = fkInternalCalc
      FieldName = 'C_TLBIRIMFIYAT'
      Origin = 'ALISSATISBODRO.C_TLBIRIMFIYAT'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object AlisiadeBodroIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G.G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'ALISSATISBODRO.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object AlisiadeBodroIBQC_ALISKDVTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' Kdv Tutar'#305'_C'
      FieldKind = fkInternalCalc
      FieldName = 'C_ALISKDVTUTAR'
      Origin = 'ALISSATISBODRO.C_ALISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object AlisiadeBodroIBQC_SATISKDVTUTAR: TFloatField
      DisplayLabel = 'Sat'#305#351' KDV Tutar'#305'_C'
      FieldKind = fkInternalCalc
      FieldName = 'C_SATISKDVTUTAR'
      Origin = 'ALISSATISBODRO.C_SATISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object AlisiadeBodroIBQMALIYETFIYATI: TFloatField
      FieldName = 'MALIYETFIYATI'
      Origin = 'ALISSATISBODRO.MALIYETFIYATI'
    end
    object AlisiadeBodroIBQC_MALIYETTUTARI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_MALIYETTUTARI'
      Origin = 'ALISSATISBODRO.C_MALIYETTUTARI'
      ReadOnly = True
    end
    object AlisiadeBodroIBQC_KARZARAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_KARZARAR'
      Origin = 'ALISSATISBODRO.C_KARZARAR'
      ReadOnly = True
    end
  end
  object AlisiadeBodroUSQL: TIBUpdateSQL
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
      '  SISTEM,'
      '  MALIYETFIYATI,'
      '  C_MALIYETTUTARI,'
      '  C_KARZARAR'
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
      
        '   PERSONELKOD, KULLANKOD, EVRAKDURUMU, SERINO, CARIHESAPILISKI,' +
        ' ISLEMKOD, '
      '   KDVSECIM, SISTEM, MALIYETFIYATI)'
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
      
        '   :ISLEMKURU, :GELGITKOD, :PERSONELKOD, :KULLANKOD, :EVRAKDURUM' +
        'U, :SERINO, '
      
        '   :CARIHESAPILISKI, :ISLEMKOD, :KDVSECIM, :SISTEM, :MALIYETFIYA' +
        'TI)')
    DeleteSQL.Strings = (
      'delete from ALISSATISBODRO'
      'where'
      '  BODROKOD = :OLD_BODROKOD')
    Left = 424
    Top = 304
  end
  object AlisiadeBodroDS: TDataSource
    DataSet = AlisiadeBodroIBQ
    Left = 520
    Top = 304
  end
  object AlisiadeBilgiIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    OnNewRecord = SatisBilgiIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = AlisiadeDS
    SQL.Strings = (
      'select * from ISLEMBILGI'
      'Where ISLEMKOD=:ISLEMKOD and ISLEMTURKOD=:ISLEMTURKOD')
    UpdateObject = AlisiadeBilgiUSQL
    GeneratorField.Field = 'BILGIKOD'
    GeneratorField.Generator = 'ISLEMBILGI'
    Left = 40
    Top = 333
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
    object AlisiadeBilgiIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'ISLEMBILGI.BILGIKOD'
      Required = True
    end
    object AlisiadeBilgiIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'ISLEMBILGI.ISLEMKOD'
    end
    object AlisiadeBilgiIBQALTBILGI: TMemoField
      FieldName = 'ALTBILGI'
      Origin = 'ISLEMBILGI.ALTBILGI'
      BlobType = ftMemo
      Size = 8
    end
    object AlisiadeBilgiIBQUSTBILGI: TMemoField
      FieldName = 'USTBILGI'
      Origin = 'ISLEMBILGI.USTBILGI'
      BlobType = ftMemo
      Size = 8
    end
    object AlisiadeBilgiIBQALTISKONTO: TFloatField
      FieldName = 'ALTISKONTO'
      Origin = 'ISLEMBILGI.ALTISKONTO'
    end
    object AlisiadeBilgiIBQISLEMTURKOD: TIntegerField
      FieldName = 'ISLEMTURKOD'
      Origin = 'ISLEMBILGI.ISLEMTURKOD'
    end
  end
  object AlisiadeBilgiUSQL: TIBUpdateSQL
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
    Top = 333
  end
  object AlisiadeBilgiDS: TDataSource
    DataSet = AlisiadeBilgiIBQ
    Left = 224
    Top = 333
  end
  object SatisiadeIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = SatisiadeIBQAfterDelete
    AfterEdit = SatisiadeIBQAfterEdit
    AfterPost = SatisiadeIBQAfterPost
    OnNewRecord = SatisiadeIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ALISSATIS '
      'where ISLEMTURKOD=42 and SISTEM<>2'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = SatisiadeUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'ALISSATIS'
    Left = 40
    Top = 392
    object SatisiadeIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'ALISSATIS.ISLEMKOD'
      Required = True
    end
    object SatisiadeIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'ALISSATIS.CARIKOD'
    end
    object SatisiadeIBQALISSATISNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'ALISSATISNO'
      Origin = 'ALISSATIS.ALISSATISNO'
    end
    object SatisiadeIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'ALISSATIS.TARIH'
    end
    object SatisiadeIBQIRSALIYETARIH: TDateField
      DisplayLabel = #304'rsaliye Tarihi'
      FieldName = 'IRSALIYETARIH'
      Origin = 'ALISSATIS.IRSALIYETARIH'
    end
    object SatisiadeIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'ALISSATIS.SAAT'
    end
    object SatisiadeIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'ALISSATIS.ACIKLAMA'
      Size = 80
    end
    object SatisiadeIBQALISTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' Tutar'#305
      FieldName = 'ALISTUTAR'
      Origin = 'ALISSATIS.ALISTUTAR'
      DisplayFormat = '###,###'
    end
    object SatisiadeIBQSATISTUTAR: TFloatField
      DisplayLabel = 'Sat'#305#351' Tutar'#305
      FieldName = 'SATISTUTAR'
      Origin = 'ALISSATIS.SATISTUTAR'
      DisplayFormat = '###,###'
    end
    object SatisiadeIBQALISMATRAH: TFloatField
      DisplayLabel = 'Al'#305#351' Matrah'
      FieldName = 'ALISMATRAH'
      Origin = 'ALISSATIS.ALISMATRAH'
      DisplayFormat = '###,###'
    end
    object SatisiadeIBQALISKDVTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' KDV Tutar'#305
      FieldName = 'ALISKDVTUTAR'
      Origin = 'ALISSATIS.ALISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object SatisiadeIBQSATISMATRAH: TFloatField
      FieldName = 'SATISMATRAH'
      Origin = 'ALISSATIS.SATISMATRAH'
      DisplayFormat = '###,###'
    end
    object SatisiadeIBQSATISKDVTUTAR: TFloatField
      FieldName = 'SATISKDVTUTAR'
      Origin = 'ALISSATIS.SATISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object SatisiadeIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'ALISSATIS.D_TEDIYE'
      DisplayFormat = '###,###'
    end
    object SatisiadeIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'ALISSATIS.D_TAHSILAT'
      DisplayFormat = '###,###'
    end
    object SatisiadeIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'ALISSATIS.CARIKURU'
      DisplayFormat = '###,###'
    end
    object SatisiadeIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'ALISSATIS.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object SatisiadeIBQTAHSILATMATRAH: TFloatField
      FieldName = 'TAHSILATMATRAH'
      Origin = 'ALISSATIS.TAHSILATMATRAH'
      DisplayFormat = '###,###'
    end
    object SatisiadeIBQTEDIYEMATRAH: TFloatField
      FieldName = 'TEDIYEMATRAH'
      Origin = 'ALISSATIS.TEDIYEMATRAH'
      DisplayFormat = '###,###'
    end
    object SatisiadeIBQKAPATMA: TIntegerField
      DisplayLabel = 'Kapatma'
      FieldName = 'KAPATMA'
      Origin = 'ALISSATIS.KAPATMA'
    end
    object SatisiadeIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'ALISSATIS.CARINO'
    end
    object SatisiadeIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'ALISSATIS.GELGITKOD'
      Size = 80
    end
    object SatisiadeIBQEVRAKNO: TIntegerField
      FieldName = 'EVRAKNO'
      Origin = 'ALISSATIS.EVRAKNO'
    end
    object SatisiadeIBQBELGENO: TIntegerField
      FieldName = 'BELGENO'
      Origin = 'ALISSATIS.BELGENO'
    end
    object SatisiadeIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'ALISSATIS.BAGLANTINO'
    end
    object SatisiadeIBQTAHSILKOD: TIntegerField
      FieldName = 'TAHSILKOD'
      Origin = 'ALISSATIS.TAHSILKOD'
    end
    object SatisiadeIBQBODROKOD: TIntegerField
      FieldName = 'BODROKOD'
      Origin = 'ALISSATIS.BODROKOD'
    end
    object SatisiadeIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'ALISSATIS.CARIHESAPILISKI'
    end
    object SatisiadeIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'ALISSATIS.PARABIRIMKOD'
    end
    object SatisiadeIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'ALISSATIS.STOKYERIKOD'
    end
    object SatisiadeIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'ALISSATIS.MAKBUZNO'
    end
    object SatisiadeIBQBILGIKOD: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'ALISSATIS.BILGIKOD'
    end
    object SatisiadeIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'ALISSATIS.KULLANKOD'
    end
    object SatisiadeIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'ALISSATIS.PERSONELKOD'
    end
    object SatisiadeIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'ALISSATIS.SISTEM'
    end
    object SatisiadeIBQTAHSILEDILEN: TFloatField
      FieldName = 'TAHSILEDILEN'
      Origin = 'ALISSATIS.TAHSILEDILEN'
      DisplayFormat = '###,###'
    end
    object SatisiadeIBQODENEN: TFloatField
      DisplayLabel = #214'denen'
      FieldName = 'ODENEN'
      Origin = 'ALISSATIS.ODENEN'
      DisplayFormat = '###,###'
    end
    object SatisiadeIBQKALAN: TFloatField
      DisplayLabel = 'Kalan'
      FieldName = 'KALAN'
      Origin = 'ALISSATIS.KALAN'
      DisplayFormat = '###,###'
    end
    object SatisiadeIBQCARIPARABIRIMKOD: TIntegerField
      DisplayLabel = 'Cari P.B.'
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'ALISSATIS.CARIPARABIRIMKOD'
    end
    object SatisiadeIBQC_CARIPARABIRIM: TIBStringField
      DisplayLabel = 'Cari P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'ALISSATIS.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object SatisiadeIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'ALISSATIS.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object SatisiadeIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Unvan ( Soyad'#305' Ad'#305')'
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'ALISSATIS.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object SatisiadeIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'ALISSATIS.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object SatisiadeIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'ALISSATIS.C_KULLANICIADI'
      ReadOnly = True
    end
    object SatisiadeIBQC_PERSONEL: TIBStringField
      DisplayLabel = 'Personel'
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'ALISSATIS.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object SatisiadeIBQFATURATARIH: TDateField
      DisplayLabel = 'F. Tarihi'
      FieldName = 'FATURATARIH'
      Origin = 'ALISSATIS.FATURATARIH'
    end
    object SatisiadeIBQKDVSECIM: TIBStringField
      FieldName = 'KDVSECIM'
      Origin = 'ALISSATIS.KDVSECIM'
      Size = 5
    end
    object SatisiadeIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'ALISSATIS.ISLEMTUR'
      Size = 10
    end
    object SatisiadeIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'ALISSATIS.ISLEMTURKOD'
      ReadOnly = True
    end
    object SatisiadeIBQD_ALISTUTAR: TFloatField
      DisplayLabel = 'D. Al'#305#351' Tutar'
      FieldName = 'D_ALISTUTAR'
      Origin = 'ALISSATIS.D_ALISTUTAR'
      DisplayFormat = '###,###'
    end
    object SatisiadeIBQD_ALISKDVTUTAR: TFloatField
      DisplayLabel = 'D. Al'#305#351' KDV Tutar'
      FieldName = 'D_ALISKDVTUTAR'
      Origin = 'ALISSATIS.D_ALISKDVTUTAR'
      DisplayFormat = '###,###'
    end
    object SatisiadeIBQD_ALISMATRAH: TFloatField
      DisplayLabel = 'D. Al'#305#351' Matrah'
      FieldName = 'D_ALISMATRAH'
      Origin = 'ALISSATIS.D_ALISMATRAH'
      DisplayFormat = '###,###'
    end
    object SatisiadeIBQC_GGMERKEZI: TIBStringField
      DisplayLabel = 'G. G. Merkezi'
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'ALISSATIS.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object SatisiadeIBQALTISKONTO: TFloatField
      FieldName = 'ALTISKONTO'
      Origin = 'ALISSATIS.ALTISKONTO'
      DisplayFormat = '###,###'
    end
    object SatisiadeIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'ALISSATIS.VADE'
    end
    object SatisiadeIBQD_SATISTUTAR: TFloatField
      FieldName = 'D_SATISTUTAR'
      Origin = 'ALISSATIS.D_SATISTUTAR'
    end
    object SatisiadeIBQD_SATISKDVTUTAR: TFloatField
      FieldName = 'D_SATISKDVTUTAR'
      Origin = 'ALISSATIS.D_SATISKDVTUTAR'
    end
    object SatisiadeIBQD_SATISMATRAH: TFloatField
      FieldName = 'D_SATISMATRAH'
      Origin = 'ALISSATIS.D_SATISMATRAH'
    end
    object SatisiadeIBQIRSALIYENO: TIntegerField
      FieldName = 'IRSALIYENO'
      Origin = 'ALISSATIS.IRSALIYENO'
    end
    object SatisiadeIBQEVRAKTARIH: TDateField
      FieldName = 'EVRAKTARIH'
      Origin = 'ALISSATIS.EVRAKTARIH'
    end
    object SatisiadeIBQC_FIYATSEC: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_FIYATSEC'
      Origin = 'ALISSATIS.C_FIYATSEC'
      ReadOnly = True
    end
  end
  object SatisiadeUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  ALISSATISNO,'
      '  TARIH,'
      '  IRSALIYETARIH,'
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
      '  CARINO,'
      '  GELGITKOD,'
      '  EVRAKNO,'
      '  BELGENO,'
      '  BAGLANTINO,'
      '  TAHSILKOD,'
      '  BODROKOD,'
      '  CARIHESAPILISKI,'
      '  PARABIRIMKOD,'
      '  STOKYERIKOD,'
      '  MAKBUZNO,'
      '  BILGIKOD,'
      '  KULLANKOD,'
      '  PERSONELKOD,'
      '  SISTEM,'
      '  TAHSILEDILEN,'
      '  ODENEN,'
      '  KALAN,'
      '  CARIPARABIRIMKOD,'
      '  C_CARIPARABIRIM,'
      '  C_PARABIRIMI,'
      '  C_CARIADI,'
      '  C_STOKYERI,'
      '  C_KULLANICIADI,'
      '  C_PERSONEL,'
      '  FATURATARIH,'
      '  KDVSECIM,'
      '  D_ALISTUTAR,'
      '  D_ALISKDVTUTAR,'
      '  D_ALISMATRAH,'
      '  C_GGMERKEZI,'
      '  ALTISKONTO,'
      '  D_SATISTUTAR,'
      '  D_SATISKDVTUTAR,'
      '  D_SATISMATRAH,'
      '  IRSALIYENO,'
      '  EVRAKTARIH'
      'from ALISSATIS '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update ALISSATIS'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  ALISSATISNO = :ALISSATISNO,'
      '  TARIH = :TARIH,'
      '  IRSALIYETARIH = :IRSALIYETARIH,'
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
      '  CARINO = :CARINO,'
      '  GELGITKOD = :GELGITKOD,'
      '  EVRAKNO = :EVRAKNO,'
      '  BELGENO = :BELGENO,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  TAHSILKOD = :TAHSILKOD,'
      '  BODROKOD = :BODROKOD,'
      '  CARIHESAPILISKI = :CARIHESAPILISKI,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  STOKYERIKOD = :STOKYERIKOD,'
      '  MAKBUZNO = :MAKBUZNO,'
      '  BILGIKOD = :BILGIKOD,'
      '  KULLANKOD = :KULLANKOD,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  SISTEM = :SISTEM,'
      '  TAHSILEDILEN = :TAHSILEDILEN,'
      '  ODENEN = :ODENEN,'
      '  KALAN = :KALAN,'
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  FATURATARIH = :FATURATARIH,'
      '  KDVSECIM = :KDVSECIM,'
      '  D_ALISTUTAR = :D_ALISTUTAR,'
      '  D_ALISKDVTUTAR = :D_ALISKDVTUTAR,'
      '  D_ALISMATRAH = :D_ALISMATRAH,'
      '  ALTISKONTO = :ALTISKONTO,'
      '  IRSALIYENO = :IRSALIYENO,'
      '  EVRAKTARIH = :EVRAKTARIH'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into ALISSATIS'
      
        '  (ISLEMKOD, CARIKOD, ISLEMTUR, ALISSATISNO, TARIH, IRSALIYETARI' +
        'H, SAAT, '
      
        '   ACIKLAMA, ALISTUTAR, SATISTUTAR, ALISMATRAH, ALISKDVTUTAR, SA' +
        'TISMATRAH, '
      
        '   SATISKDVTUTAR, D_TEDIYE, D_TAHSILAT, CARIKURU, ISLEMKURU, TAH' +
        'SILATMATRAH, '
      
        '   TEDIYEMATRAH, KAPATMA, VADE, CARINO, GELGITKOD, EVRAKNO, BELG' +
        'ENO, BAGLANTINO, '
      
        '   TAHSILKOD, BODROKOD, CARIHESAPILISKI, PARABIRIMKOD, STOKYERIK' +
        'OD, MAKBUZNO, '
      
        '   BILGIKOD, KULLANKOD, PERSONELKOD, SISTEM, TAHSILEDILEN, ODENE' +
        'N, KALAN, '
      
        '   CARIPARABIRIMKOD, FATURATARIH, KDVSECIM, D_ALISTUTAR, D_ALISK' +
        'DVTUTAR, '
      '   D_ALISMATRAH, ALTISKONTO, IRSALIYENO, EVRAKTARIH)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :ISLEMTUR, :ALISSATISNO, :TARIH, :IRSALI' +
        'YETARIH, '
      
        '   :SAAT, :ACIKLAMA, :ALISTUTAR, :SATISTUTAR, :ALISMATRAH, :ALIS' +
        'KDVTUTAR, '
      
        '   :SATISMATRAH, :SATISKDVTUTAR, :D_TEDIYE, :D_TAHSILAT, :CARIKU' +
        'RU, :ISLEMKURU, '
      
        '   :TAHSILATMATRAH, :TEDIYEMATRAH, :KAPATMA, :VADE, :CARINO, :GE' +
        'LGITKOD, '
      
        '   :EVRAKNO, :BELGENO, :BAGLANTINO, :TAHSILKOD, :BODROKOD, :CARI' +
        'HESAPILISKI, '
      
        '   :PARABIRIMKOD, :STOKYERIKOD, :MAKBUZNO, :BILGIKOD, :KULLANKOD' +
        ', :PERSONELKOD, '
      
        '   :SISTEM, :TAHSILEDILEN, :ODENEN, :KALAN, :CARIPARABIRIMKOD, :' +
        'FATURATARIH, '
      
        '   :KDVSECIM, :D_ALISTUTAR, :D_ALISKDVTUTAR, :D_ALISMATRAH, :ALT' +
        'ISKONTO, '
      '   :IRSALIYENO, :EVRAKTARIH)')
    DeleteSQL.Strings = (
      'delete from ALISSATIS'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 136
    Top = 392
  end
  object SatisiadeDS: TDataSource
    DataSet = SatisiadeIBQ
    Left = 224
    Top = 392
  end
  object SatisiadeBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = SatisiadeBodroIBQAfterDelete
    AfterPost = SatisiadeBodroIBQAfterPost
    OnNewRecord = SatisiadeBodroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = SatisiadeDS
    SQL.Strings = (
      'select * from ALISSATISBODRO'
      'where ISLEMKOD=:ISLEMKOD'
      'ORDER BY BODROKOD')
    UpdateObject = SatisiadeBodroUSQL
    GeneratorField.Field = 'BODROKOD'
    GeneratorField.Generator = 'ALISSATISBODRO'
    Left = 40
    Top = 448
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SatisiadeBodroIBQBODROKOD: TIntegerField
      FieldName = 'BODROKOD'
      Origin = 'ALISSATISBODRO.BODROKOD'
      Required = True
    end
    object SatisiadeBodroIBQSIRANO: TIntegerField
      DisplayLabel = 'S'#305'ra'
      FieldName = 'SIRANO'
      Origin = 'ALISSATISBODRO.SIRANO'
    end
    object SatisiadeBodroIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'ALISSATISBODRO.ISLEMTUR'
      Size = 40
    end
    object SatisiadeBodroIBQC_ISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_ISLEMTURKOD'
      Origin = 'ALISSATISBODRO.C_ISLEMTURKOD'
      ReadOnly = True
    end
    object SatisiadeBodroIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'ALISSATISBODRO.CARIKOD'
    end
    object SatisiadeBodroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'ALISSATISBODRO.PARABIRIMKOD'
    end
    object SatisiadeBodroIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'ALISSATISBODRO.TARIH'
    end
    object SatisiadeBodroIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'ALISSATISBODRO.STOKKOD'
    end
    object SatisiadeBodroIBQSTOKNO: TIntegerField
      DisplayLabel = 'Stok No'
      FieldName = 'STOKNO'
      Origin = 'ALISSATISBODRO.STOKNO'
    end
    object SatisiadeBodroIBQBARKOD: TIBStringField
      DisplayLabel = 'Barkod'
      FieldName = 'BARKOD'
      Origin = 'ALISSATISBODRO.BARKOD'
      OnChange = SatisiadeBodroIBQBARKODChange
      Size = 25
    end
    object SatisiadeBodroIBQSTOKADI: TIBStringField
      DisplayLabel = 'Stok Ad'#305
      FieldName = 'STOKADI'
      Origin = 'ALISSATISBODRO.STOKADI'
      Size = 80
    end
    object SatisiadeBodroIBQMIKTAR: TFloatField
      DisplayLabel = 'Miktar'
      FieldName = 'MIKTAR'
      Origin = 'ALISSATISBODRO.MIKTAR'
      DisplayFormat = '###,###'
    end
    object SatisiadeBodroIBQMIKTARCARPAN: TIntegerField
      DisplayLabel = 'Birim '#199'arpan'
      FieldName = 'MIKTARCARPAN'
      Origin = 'ALISSATISBODRO.MIKTARCARPAN'
      DisplayFormat = '###,###'
    end
    object SatisiadeBodroIBQGIRISMIKTAR: TFloatField
      DisplayLabel = 'Giri'#351' Miktar'#305
      FieldName = 'GIRISMIKTAR'
      Origin = 'ALISSATISBODRO.GIRISMIKTAR'
      DisplayFormat = '###,###'
    end
    object SatisiadeBodroIBQCIKISMIKTAR: TFloatField
      FieldName = 'CIKISMIKTAR'
      Origin = 'ALISSATISBODRO.CIKISMIKTAR'
      DisplayFormat = '###,###'
    end
    object SatisiadeBodroIBQBIRIM: TIBStringField
      DisplayLabel = 'Birim'
      FieldName = 'BIRIM'
      Origin = 'ALISSATISBODRO.BIRIM'
      OnChange = SatisiadeBodroIBQBIRIMChange
      Size = 10
    end
    object SatisiadeBodroIBQBIRIMFIYAT: TFloatField
      DisplayLabel = 'Birim Fiyat'
      FieldName = 'BIRIMFIYAT'
      Origin = 'ALISSATISBODRO.BIRIMFIYAT'
      OnChange = SatisiadeBodroIBQBIRIMFIYATChange
      DisplayFormat = '###,###'
    end
    object SatisiadeBodroIBQALISFIYAT: TFloatField
      DisplayLabel = 'Al'#305#351' Fiyat'#305
      FieldName = 'ALISFIYAT'
      Origin = 'ALISSATISBODRO.ALISFIYAT'
      DisplayFormat = '###,###'
    end
    object SatisiadeBodroIBQSATISTUTAR: TFloatField
      FieldName = 'SATISTUTAR'
      Origin = 'ALISSATISBODRO.SATISTUTAR'
      DisplayFormat = '###,###'
    end
    object SatisiadeBodroIBQSATISFIYAT: TFloatField
      FieldName = 'SATISFIYAT'
      Origin = 'ALISSATISBODRO.SATISFIYAT'
      DisplayFormat = '###,###'
    end
    object SatisiadeBodroIBQALISTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' Tutar'#305
      FieldName = 'ALISTUTAR'
      Origin = 'ALISSATISBODRO.ALISTUTAR'
      DisplayFormat = '###,###'
    end
    object SatisiadeBodroIBQALISMATRAHI: TFloatField
      DisplayLabel = 'Al'#305#351' Matrah'#305
      FieldName = 'ALISMATRAHI'
      Origin = 'ALISSATISBODRO.ALISMATRAHI'
      DisplayFormat = '###,###'
    end
    object SatisiadeBodroIBQSATISMATRAHI: TFloatField
      FieldName = 'SATISMATRAHI'
      Origin = 'ALISSATISBODRO.SATISMATRAHI'
      DisplayFormat = '###,###'
    end
    object SatisiadeBodroIBQISKONTO1: TFloatField
      DisplayLabel = #304'sk.1'
      FieldName = 'ISKONTO1'
      Origin = 'ALISSATISBODRO.ISKONTO1'
      DisplayFormat = '###,###'
    end
    object SatisiadeBodroIBQISKONTO2: TFloatField
      DisplayLabel = #304'sk.2'
      FieldName = 'ISKONTO2'
      Origin = 'ALISSATISBODRO.ISKONTO2'
      DisplayFormat = '###,###'
    end
    object SatisiadeBodroIBQISKONTO3: TFloatField
      DisplayLabel = #304'sk.3'
      FieldName = 'ISKONTO3'
      Origin = 'ALISSATISBODRO.ISKONTO3'
      DisplayFormat = '###,###'
    end
    object SatisiadeBodroIBQISKONTO4: TFloatField
      DisplayLabel = #304'sk.4'
      FieldName = 'ISKONTO4'
      Origin = 'ALISSATISBODRO.ISKONTO4'
      DisplayFormat = '###,###'
    end
    object SatisiadeBodroIBQKDVORANI: TFloatField
      DisplayLabel = 'Kdv Oran'#305
      FieldName = 'KDVORANI'
      Origin = 'ALISSATISBODRO.KDVORANI'
      DisplayFormat = '###,###'
    end
    object SatisiadeBodroIBQBAKIYE: TFloatField
      FieldName = 'BAKIYE'
      Origin = 'ALISSATISBODRO.BAKIYE'
      DisplayFormat = '###,###'
    end
    object SatisiadeBodroIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'ALISSATISBODRO.DURUM'
    end
    object SatisiadeBodroIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'ALISSATISBODRO.ACIKLAMA'
      Size = 60
    end
    object SatisiadeBodroIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'ALISSATISBODRO.KAPATMA'
    end
    object SatisiadeBodroIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'ALISSATISBODRO.VADE'
    end
    object SatisiadeBodroIBQFATURANO: TIntegerField
      FieldName = 'FATURANO'
      Origin = 'ALISSATISBODRO.FATURANO'
    end
    object SatisiadeBodroIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'ALISSATISBODRO.STOKYERIKOD'
    end
    object SatisiadeBodroIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'ALISSATISBODRO.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object SatisiadeBodroIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'ALISSATISBODRO.GELGITKOD'
      Size = 80
    end
    object SatisiadeBodroIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'ALISSATISBODRO.PERSONELKOD'
    end
    object SatisiadeBodroIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'ALISSATISBODRO.KULLANKOD'
    end
    object SatisiadeBodroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'ALISSATISBODRO.SISTEM'
    end
    object SatisiadeBodroIBQEVRAKDURUMU: TIntegerField
      FieldName = 'EVRAKDURUMU'
      Origin = 'ALISSATISBODRO.EVRAKDURUMU'
    end
    object SatisiadeBodroIBQSERINO: TIBStringField
      DisplayLabel = 'Seri No'
      FieldName = 'SERINO'
      Origin = 'ALISSATISBODRO.SERINO'
      Size = 30
    end
    object SatisiadeBodroIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'ALISSATISBODRO.CARIHESAPILISKI'
    end
    object SatisiadeBodroIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'ALISSATISBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object SatisiadeBodroIBQC_STOKYERI: TIBStringField
      DisplayLabel = 'Stok Yeri_C'
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'ALISSATISBODRO.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object SatisiadeBodroIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'ALISSATISBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object SatisiadeBodroIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'ALISSATISBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object SatisiadeBodroIBQC_REELALIS: TFloatField
      DisplayLabel = 'Reeal Al'#305#351'_C'
      FieldKind = fkInternalCalc
      FieldName = 'C_REELALIS'
      Origin = 'ALISSATISBODRO.C_REELALIS'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SatisiadeBodroIBQC_REELSATIS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_REELSATIS'
      Origin = 'ALISSATISBODRO.C_REELSATIS'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SatisiadeBodroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'ALISSATISBODRO.ISLEMKOD'
    end
    object SatisiadeBodroIBQKDVSECIM: TIBStringField
      DisplayLabel = 'K.S.'
      FieldName = 'KDVSECIM'
      Origin = 'ALISSATISBODRO.KDVSECIM'
      Size = 5
    end
    object SatisiadeBodroIBQC_TLALISTUTARI: TFloatField
      DisplayLabel = 'TL Al'#305#351' Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISTUTARI'
      Origin = 'ALISSATISBODRO.C_TLALISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SatisiadeBodroIBQC_TLALISMATRAHI: TFloatField
      DisplayLabel = 'TL Al'#305#351' Matrah'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISMATRAHI'
      Origin = 'ALISSATISBODRO.C_TLALISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SatisiadeBodroIBQC_TLALISKDVTUTAR: TFloatField
      DisplayLabel = 'TL Al'#305#351' KDV Tutar'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISKDVTUTAR'
      Origin = 'ALISSATISBODRO.C_TLALISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SatisiadeBodroIBQC_TLSATISTUTARI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISTUTARI'
      Origin = 'ALISSATISBODRO.C_TLSATISTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SatisiadeBodroIBQC_TLSATISKDVTUTARI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISKDVTUTARI'
      Origin = 'ALISSATISBODRO.C_TLSATISKDVTUTARI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SatisiadeBodroIBQC_TLSATISMATRAHI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISMATRAHI'
      Origin = 'ALISSATISBODRO.C_TLSATISMATRAHI'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SatisiadeBodroIBQC_TLBIRIMFIYAT: TFloatField
      DisplayLabel = 'TL Birim Fiyat'
      FieldKind = fkInternalCalc
      FieldName = 'C_TLBIRIMFIYAT'
      Origin = 'ALISSATISBODRO.C_TLBIRIMFIYAT'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SatisiadeBodroIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'ALISSATISBODRO.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object SatisiadeBodroIBQC_ALISKDVTUTAR: TFloatField
      DisplayLabel = 'Al'#305#351' Kdv Tutar'#305'_C'
      FieldKind = fkInternalCalc
      FieldName = 'C_ALISKDVTUTAR'
      Origin = 'ALISSATISBODRO.C_ALISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object SatisiadeBodroIBQC_SATISKDVTUTAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_SATISKDVTUTAR'
      Origin = 'ALISSATISBODRO.C_SATISKDVTUTAR'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
  end
  object SatisiadeBodroUSQL: TIBUpdateSQL
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
    Top = 448
  end
  object SatisiadeBodroDS: TDataSource
    DataSet = SatisiadeBodroIBQ
    Left = 232
    Top = 448
  end
  object SatisiadeBilgiIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    OnNewRecord = AlisBilgiIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = SatisiadeDS
    SQL.Strings = (
      'select * from ISLEMBILGI'
      'Where ISLEMKOD=:ISLEMKOD and ISLEMTURKOD=:ISLEMTURKOD')
    UpdateObject = SatisiadeBilgiUSQL
    GeneratorField.Field = 'BILGIKOD'
    GeneratorField.Generator = 'ISLEMBILGI'
    Left = 320
    Top = 360
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
    object IntegerField1: TIntegerField
      FieldName = 'BILGIKOD'
      Origin = 'ISLEMBILGI.BILGIKOD'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'ISLEMBILGI.ISLEMKOD'
    end
    object MemoField1: TMemoField
      FieldName = 'ALTBILGI'
      Origin = 'ISLEMBILGI.ALTBILGI'
      BlobType = ftMemo
      Size = 8
    end
    object MemoField2: TMemoField
      FieldName = 'USTBILGI'
      Origin = 'ISLEMBILGI.USTBILGI'
      BlobType = ftMemo
      Size = 8
    end
    object FloatField1: TFloatField
      FieldName = 'ALTISKONTO'
      Origin = 'ISLEMBILGI.ALTISKONTO'
    end
    object IntegerField3: TIntegerField
      FieldName = 'ISLEMTURKOD'
      Origin = 'ISLEMBILGI.ISLEMTURKOD'
    end
  end
  object SatisiadeBilgiUSQL: TIBUpdateSQL
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
    Left = 408
    Top = 360
  end
  object SatisiadeBilgiDS: TDataSource
    DataSet = SatisiadeBilgiIBQ
    Left = 512
    Top = 360
  end
end
