object DMCari: TDMCari
  Height = 660
  Width = 873
  PixelsPerInch = 120
  object CariKartIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = CariKartIBQAfterPost
    AfterPost = CariKartIBQAfterPost
    OnNewRecord = CariKartIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from CARIKART')
    UpdateObject = CariKartUSQL
    GeneratorField.Field = 'CARIKOD'
    GeneratorField.Generator = 'CARIKART'
    PrecommittedReads = False
    Left = 50
    Top = 10
    object CariKartIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'CARIKART.CARIKOD'
      Required = True
    end
    object CariKartIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'CARIKART.CARINO'
    end
    object CariKartIBQKOD: TIBStringField
      DisplayLabel = 'Kod'
      FieldName = 'KOD'
      Origin = 'CARIKART.KOD'
      Size = 30
    end
    object CariKartIBQCARIUNVAN1: TIBStringField
      DisplayLabel = 'Ad'#305' (Unvan'#305')'
      FieldName = 'CARIUNVAN1'
      Origin = 'CARIKART.CARIUNVAN1'
      OnChange = CariKartIBQCARIUNVAN1Change
      Size = 80
    end
    object CariKartIBQCARIUNVAN2: TIBStringField
      DisplayLabel = 'Soyad'#305
      FieldName = 'CARIUNVAN2'
      Origin = 'CARIKART.CARIUNVAN2'
      OnChange = CariKartIBQCARIUNVAN1Change
    end
    object CariKartIBQTAMADI: TIBStringField
      DisplayLabel = 'Unvan'#305' ( Soyad'#305' Ad'#305')'
      FieldName = 'TAMADI'
      Origin = 'CARIKART.TAMADI'
      Size = 60
    end
    object CariKartIBQACIKLAMA: TMemoField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'CARIKART.ACIKLAMA'
      BlobType = ftMemo
      Size = 8
    end
    object CariKartIBQCARITIPKOD: TIBStringField
      FieldName = 'CARITIPKOD'
      Origin = 'CARIKART.CARITIPKOD'
    end
    object CariKartIBQSEKTORKOD: TIBStringField
      FieldName = 'SEKTORKOD'
      Origin = 'CARIKART.SEKTORKOD'
      Size = 40
    end
    object CariKartIBQTEL1: TIBStringField
      DisplayLabel = 'Telefon 1'
      FieldName = 'TEL1'
      Origin = 'CARIKART.TEL1'
      EditMask = '(999) 999 99 99;1;_'
      Size = 17
    end
    object CariKartIBQTEL2: TIBStringField
      DisplayLabel = 'Telefon 2'
      FieldName = 'TEL2'
      Origin = 'CARIKART.TEL2'
      EditMask = '(999) 999 99 99;1;_'
      Size = 17
    end
    object CariKartIBQTEL3: TIBStringField
      DisplayLabel = 'Telefon 3'
      FieldName = 'TEL3'
      Origin = 'CARIKART.TEL3'
      EditMask = '(999) 999 99 99;1;_'
      Size = 17
    end
    object CariKartIBQFAKS: TIBStringField
      DisplayLabel = 'Faks'
      FieldName = 'FAKS'
      Origin = 'CARIKART.FAKS'
      EditMask = '(999) 999 99 99;1;_'
      Size = 17
    end
    object CariKartIBQGSM: TIBStringField
      DisplayLabel = 'Gsm'
      FieldName = 'GSM'
      Origin = 'CARIKART.GSM'
      EditMask = '(999) 999 99 99;1;_'
      Size = 17
    end
    object CariKartIBQMAHALLE: TIBStringField
      DisplayLabel = 'Mahalle'
      FieldName = 'MAHALLE'
      Origin = 'CARIKART.MAHALLE'
      Size = 40
    end
    object CariKartIBQCADDE: TIBStringField
      DisplayLabel = 'Cadde'
      FieldName = 'CADDE'
      Origin = 'CARIKART.CADDE'
      Size = 40
    end
    object CariKartIBQSOKAK: TIBStringField
      DisplayLabel = 'Sokak'
      FieldName = 'SOKAK'
      Origin = 'CARIKART.SOKAK'
      Size = 40
    end
    object CariKartIBQAPARTMAN: TIBStringField
      DisplayLabel = 'Apartman'
      FieldName = 'APARTMAN'
      Origin = 'CARIKART.APARTMAN'
      Size = 40
    end
    object CariKartIBQNOSU: TIBStringField
      DisplayLabel = 'Nosu'
      FieldName = 'NOSU'
      Origin = 'CARIKART.NOSU'
    end
    object CariKartIBQILCEKOD: TIntegerField
      FieldName = 'ILCEKOD'
      Origin = 'CARIKART.ILCEKOD'
    end
    object CariKartIBQSEHIRKOD: TIntegerField
      FieldName = 'SEHIRKOD'
      Origin = 'CARIKART.SEHIRKOD'
    end
    object CariKartIBQVERDAIRE: TIBStringField
      DisplayLabel = 'Vergi Dairesi'
      FieldName = 'VERDAIRE'
      Origin = 'CARIKART.VERDAIRE'
      Size = 25
    end
    object CariKartIBQVERGINO: TIBStringField
      DisplayLabel = 'Vergi No'
      FieldName = 'VERGINO'
      Origin = 'CARIKART.VERGINO'
      Size = 25
    end
    object CariKartIBQAKTIVITE: TIntegerField
      DisplayLabel = 'Aktif'
      FieldName = 'AKTIVITE'
      Origin = 'CARIKART.AKTIVITE'
    end
    object CariKartIBQBLOKE: TIntegerField
      DisplayLabel = 'Bloke'
      FieldName = 'BLOKE'
      Origin = 'CARIKART.BLOKE'
    end
    object CariKartIBQKREDILIMIT: TFloatField
      DisplayLabel = 'Kredi Limiti'
      FieldName = 'KREDILIMIT'
      Origin = 'CARIKART.KREDILIMIT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CariKartIBQRISKLIMIT: TFloatField
      DisplayLabel = 'Risk Limiti'
      FieldName = 'RISKLIMIT'
      Origin = 'CARIKART.RISKLIMIT'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CariKartIBQFIYATSECIM: TIntegerField
      DisplayLabel = 'Fiyat Se'#231'imi'
      FieldName = 'FIYATSECIM'
      Origin = 'CARIKART.FIYATSECIM'
    end
    object CariKartIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'CARIKART.PARABIRIMKOD'
    end
    object CariKartIBQMAIL: TIBStringField
      DisplayLabel = 'Mail'
      FieldName = 'MAIL'
      Origin = 'CARIKART.MAIL'
      Size = 50
    end
    object CariKartIBQWEB: TIBStringField
      DisplayLabel = 'Web'
      FieldName = 'WEB'
      Origin = 'CARIKART.WEB'
      Size = 50
    end
    object CariKartIBQKEFILKOD: TIntegerField
      FieldName = 'KEFILKOD'
      Origin = 'CARIKART.KEFILKOD'
    end
    object CariKartIBQUYARI: TIntegerField
      FieldName = 'UYARI'
      Origin = 'CARIKART.UYARI'
    end
    object CariKartIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'CARIKART.BAKIYE'
      DisplayFormat = '###,###'
      EditFormat = '#'
    end
    object CariKartIBQDURUM: TIBStringField
      DisplayLabel = 'Durum'
      FieldName = 'DURUM'
      Origin = 'CARIKART.DURUM'
      Size = 10
    end
    object CariKartIBQMESAJ: TMemoField
      FieldName = 'MESAJ'
      Origin = 'CARIKART.MESAJ'
      BlobType = ftMemo
      Size = 8
    end
    object CariKartIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'CARIKART.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object CariKartIBQYETKILI: TIBStringField
      DisplayLabel = 'Yetkili'
      FieldName = 'YETKILI'
      Origin = 'CARIKART.YETKILI'
      Size = 50
    end
    object CariKartIBQISTIHBARAT: TMemoField
      FieldName = 'ISTIHBARAT'
      Origin = 'CARIKART.ISTIHBARAT'
      BlobType = ftMemo
      Size = 8
    end
    object CariKartIBQC_ILCEADI: TIBStringField
      DisplayLabel = #304'l'#231'e'
      FieldKind = fkInternalCalc
      FieldName = 'C_ILCEADI'
      Origin = 'CARIKART.C_ILCEADI'
      ReadOnly = True
      Size = 25
    end
    object CariKartIBQC_SEHIRADI: TIBStringField
      DisplayLabel = #304'l'
      FieldKind = fkInternalCalc
      FieldName = 'C_SEHIRADI'
      Origin = 'CARIKART.C_SEHIRADI'
      ReadOnly = True
      Size = 25
    end
    object CariKartIBQSECIM: TIntegerField
      FieldName = 'SECIM'
      Origin = 'CARIKART.SECIM'
    end
  end
  object CariKartUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CARIKOD,'
      '  CARINO,'
      '  KOD,'
      '  CARIUNVAN1,'
      '  CARIUNVAN2,'
      '  TAMADI,'
      '  ACIKLAMA,'
      '  CARITIPKOD,'
      '  SEKTORKOD,'
      '  TEL1,'
      '  TEL2,'
      '  TEL3,'
      '  FAKS,'
      '  GSM,'
      '  MAHALLE,'
      '  CADDE,'
      '  SOKAK,'
      '  APARTMAN,'
      '  NOSU,'
      '  ILCEKOD,'
      '  SEHIRKOD,'
      '  VERDAIRE,'
      '  VERGINO,'
      '  AKTIVITE,'
      '  BLOKE,'
      '  KREDILIMIT,'
      '  RISKLIMIT,'
      '  FIYATSECIM,'
      '  PARABIRIMKOD,'
      '  MAIL,'
      '  WEB,'
      '  KEFILKOD,'
      '  UYARI,'
      '  BAKIYE,'
      '  DURUM,'
      '  MESAJ,'
      '  C_PARABIRIMI,'
      '  YETKILI,'
      '  ISTIHBARAT,'
      '  C_ILCEADI,'
      '  C_SEHIRADI,'
      '  SECIM'
      'from CARIKART '
      'where'
      '  CARIKOD = :CARIKOD')
    ModifySQL.Strings = (
      'update CARIKART'
      'set'
      '  CARIKOD = :CARIKOD,'
      '  CARINO = :CARINO,'
      '  KOD = :KOD,'
      '  CARIUNVAN1 = :CARIUNVAN1,'
      '  CARIUNVAN2 = :CARIUNVAN2,'
      '  TAMADI = :TAMADI,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  CARITIPKOD = :CARITIPKOD,'
      '  SEKTORKOD = :SEKTORKOD,'
      '  TEL1 = :TEL1,'
      '  TEL2 = :TEL2,'
      '  TEL3 = :TEL3,'
      '  FAKS = :FAKS,'
      '  GSM = :GSM,'
      '  MAHALLE = :MAHALLE,'
      '  CADDE = :CADDE,'
      '  SOKAK = :SOKAK,'
      '  APARTMAN = :APARTMAN,'
      '  NOSU = :NOSU,'
      '  ILCEKOD = :ILCEKOD,'
      '  SEHIRKOD = :SEHIRKOD,'
      '  VERDAIRE = :VERDAIRE,'
      '  VERGINO = :VERGINO,'
      '  AKTIVITE = :AKTIVITE,'
      '  BLOKE = :BLOKE,'
      '  KREDILIMIT = :KREDILIMIT,'
      '  RISKLIMIT = :RISKLIMIT,'
      '  FIYATSECIM = :FIYATSECIM,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  MAIL = :MAIL,'
      '  WEB = :WEB,'
      '  KEFILKOD = :KEFILKOD,'
      '  UYARI = :UYARI,'
      '  BAKIYE = :BAKIYE,'
      '  DURUM = :DURUM,'
      '  MESAJ = :MESAJ,'
      '  YETKILI = :YETKILI,'
      '  ISTIHBARAT = :ISTIHBARAT,'
      '  SECIM = :SECIM'
      'where'
      '  CARIKOD = :OLD_CARIKOD')
    InsertSQL.Strings = (
      'insert into CARIKART'
      
        '  (CARIKOD, CARINO, KOD, CARIUNVAN1, CARIUNVAN2, TAMADI, ACIKLAM' +
        'A, CARITIPKOD, '
      
        '   SEKTORKOD, TEL1, TEL2, TEL3, FAKS, GSM, MAHALLE, CADDE, SOKAK' +
        ', APARTMAN, '
      
        '   NOSU, ILCEKOD, SEHIRKOD, VERDAIRE, VERGINO, AKTIVITE, BLOKE, ' +
        'KREDILIMIT, '
      
        '   RISKLIMIT, FIYATSECIM, PARABIRIMKOD, MAIL, WEB, KEFILKOD, UYA' +
        'RI, BAKIYE, '
      '   DURUM, MESAJ, YETKILI, ISTIHBARAT, SECIM)'
      'values'
      
        '  (:CARIKOD, :CARINO, :KOD, :CARIUNVAN1, :CARIUNVAN2, :TAMADI, :' +
        'ACIKLAMA, '
      
        '   :CARITIPKOD, :SEKTORKOD, :TEL1, :TEL2, :TEL3, :FAKS, :GSM, :M' +
        'AHALLE, '
      
        '   :CADDE, :SOKAK, :APARTMAN, :NOSU, :ILCEKOD, :SEHIRKOD, :VERDA' +
        'IRE, :VERGINO, '
      
        '   :AKTIVITE, :BLOKE, :KREDILIMIT, :RISKLIMIT, :FIYATSECIM, :PAR' +
        'ABIRIMKOD, '
      
        '   :MAIL, :WEB, :KEFILKOD, :UYARI, :BAKIYE, :DURUM, :MESAJ, :YET' +
        'KILI, :ISTIHBARAT, '
      '   :SECIM)')
    DeleteSQL.Strings = (
      'delete from CARIKART'
      'where'
      '  CARIKOD = :OLD_CARIKOD')
    Left = 170
    Top = 10
  end
  object CariKartDS: TDataSource
    DataSet = CariKartIBQ
    Left = 280
    Top = 10
  end
  object CariKartLookupIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from CARIKART')
    PrecommittedReads = False
    Left = 760
    Top = 330
    object CariKartLookupIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'CARIKART.CARIKOD'
      Required = True
    end
    object CariKartLookupIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'CARIKART.CARINO'
    end
    object CariKartLookupIBQKOD: TIBStringField
      FieldName = 'KOD'
      Origin = 'CARIKART.KOD'
      Size = 30
    end
    object CariKartLookupIBQCARIUNVAN1: TIBStringField
      FieldName = 'CARIUNVAN1'
      Origin = 'CARIKART.CARIUNVAN1'
      Size = 80
    end
    object CariKartLookupIBQCARIUNVAN2: TIBStringField
      FieldName = 'CARIUNVAN2'
      Origin = 'CARIKART.CARIUNVAN2'
    end
    object CariKartLookupIBQTAMADI: TIBStringField
      FieldName = 'TAMADI'
      Origin = 'CARIKART.TAMADI'
      Size = 60
    end
  end
  object KefilIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = KefilIBQAfterDelete
    AfterPost = KefilIBQAfterPost
    OnNewRecord = KefilIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from KEFIL'
      'Where CARIKOD=CARIKOD')
    UpdateObject = IKefilUSQL
    GeneratorField.Field = 'KEFILKOD'
    GeneratorField.Generator = 'KEFIL'
    PrecommittedReads = False
    Left = 50
    Top = 80
    object KefilIBQKEFILKOD: TIntegerField
      FieldName = 'KEFILKOD'
      Origin = 'KEFIL.KEFILKOD'
      Required = True
    end
    object KefilIBQADI: TIBStringField
      FieldName = 'ADI'
      Origin = 'KEFIL.ADI'
    end
    object KefilIBQSOYADI: TIBStringField
      FieldName = 'SOYADI'
      Origin = 'KEFIL.SOYADI'
    end
    object KefilIBQMESLEGI: TIBStringField
      FieldName = 'MESLEGI'
      Origin = 'KEFIL.MESLEGI'
      Size = 25
    end
    object KefilIBQMEMLEKETI: TIBStringField
      FieldName = 'MEMLEKETI'
      Origin = 'KEFIL.MEMLEKETI'
    end
    object KefilIBQADRES: TIBStringField
      FieldName = 'ADRES'
      Origin = 'KEFIL.ADRES'
      Size = 80
    end
    object KefilIBQTELEFON: TIBStringField
      FieldName = 'TELEFON'
      Origin = 'KEFIL.TELEFON'
      Size = 17
    end
    object KefilIBQGSM: TIBStringField
      FieldName = 'GSM'
      Origin = 'KEFIL.GSM'
      Size = 17
    end
    object KefilIBQACIKLAMA: TMemoField
      FieldName = 'ACIKLAMA'
      Origin = 'KEFIL.ACIKLAMA'
      BlobType = ftMemo
      Size = 8
    end
    object KefilIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'KEFIL.CARIKOD'
    end
  end
  object IKefilUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  KEFILKOD,'
      '  ADI,'
      '  SOYADI,'
      '  MESLEGI,'
      '  MEMLEKETI,'
      '  ADRES,'
      '  TELEFON,'
      '  GSM,'
      '  ACIKLAMA,'
      '  CARIKOD'
      'from KEFIL '
      'where'
      '  KEFILKOD = :KEFILKOD')
    ModifySQL.Strings = (
      'update KEFIL'
      'set'
      '  KEFILKOD = :KEFILKOD,'
      '  ADI = :ADI,'
      '  SOYADI = :SOYADI,'
      '  MESLEGI = :MESLEGI,'
      '  MEMLEKETI = :MEMLEKETI,'
      '  ADRES = :ADRES,'
      '  TELEFON = :TELEFON,'
      '  GSM = :GSM,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  CARIKOD = :CARIKOD'
      'where'
      '  KEFILKOD = :OLD_KEFILKOD')
    InsertSQL.Strings = (
      'insert into KEFIL'
      
        '  (KEFILKOD, ADI, SOYADI, MESLEGI, MEMLEKETI, ADRES, TELEFON, GS' +
        'M, ACIKLAMA, '
      '   CARIKOD)'
      'values'
      
        '  (:KEFILKOD, :ADI, :SOYADI, :MESLEGI, :MEMLEKETI, :ADRES, :TELE' +
        'FON, :GSM, '
      '   :ACIKLAMA, :CARIKOD)')
    DeleteSQL.Strings = (
      'delete from KEFIL'
      'where'
      '  KEFILKOD = :OLD_KEFILKOD')
    Left = 170
    Top = 80
  end
  object KefilDS: TDataSource
    DataSet = KefilIBQ
    Left = 280
    Top = 80
  end
  object CiftDenetimIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from CARIKART')
    PrecommittedReads = False
    Left = 760
    Top = 240
  end
  object AktifCariIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DMSabit.CariTipDS
    ParamCheck = True
    SQL.Strings = (
      'select * from CARIKART')
    PrecommittedReads = False
    Left = 760
    Top = 90
    object AktifCariIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'CARIKART.CARIKOD'
      Required = True
    end
    object AktifCariIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'CARIKART.CARINO'
    end
    object AktifCariIBQKOD: TIBStringField
      DisplayLabel = 'Kod'
      FieldName = 'KOD'
      Origin = 'CARIKART.KOD'
      Size = 30
    end
    object AktifCariIBQCARIUNVAN1: TIBStringField
      DisplayLabel = 'Ad'#305' (Unvan'#305')'
      FieldName = 'CARIUNVAN1'
      Origin = 'CARIKART.CARIUNVAN1'
      OnChange = CariKartIBQCARIUNVAN1Change
      Size = 80
    end
    object AktifCariIBQCARIUNVAN2: TIBStringField
      DisplayLabel = 'Soyad'#305
      FieldName = 'CARIUNVAN2'
      Origin = 'CARIKART.CARIUNVAN2'
      OnChange = CariKartIBQCARIUNVAN1Change
    end
    object AktifCariIBQTAMADI: TIBStringField
      DisplayLabel = 'Unvan'#305' ( Soyad'#305' Ad'#305')'
      FieldName = 'TAMADI'
      Origin = 'CARIKART.TAMADI'
      Size = 60
    end
    object AktifCariIBQACIKLAMA: TMemoField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'CARIKART.ACIKLAMA'
      BlobType = ftMemo
      Size = 8
    end
    object AktifCariIBQCARITIPKOD: TIBStringField
      FieldName = 'CARITIPKOD'
      Origin = 'CARIKART.CARITIPKOD'
    end
    object AktifCariIBQSEKTORKOD: TIBStringField
      FieldName = 'SEKTORKOD'
      Origin = 'CARIKART.SEKTORKOD'
      Size = 40
    end
    object AktifCariIBQTEL1: TIBStringField
      DisplayLabel = 'Telefon 1'
      FieldName = 'TEL1'
      Origin = 'CARIKART.TEL1'
      Size = 17
    end
    object AktifCariIBQTEL2: TIBStringField
      DisplayLabel = 'Telefon 2'
      FieldName = 'TEL2'
      Origin = 'CARIKART.TEL2'
      Size = 17
    end
    object AktifCariIBQTEL3: TIBStringField
      DisplayLabel = 'Telefon 3'
      FieldName = 'TEL3'
      Origin = 'CARIKART.TEL3'
      Size = 17
    end
    object AktifCariIBQFAKS: TIBStringField
      DisplayLabel = 'Faks'
      FieldName = 'FAKS'
      Origin = 'CARIKART.FAKS'
      Size = 17
    end
    object AktifCariIBQGSM: TIBStringField
      DisplayLabel = 'Gsm'
      FieldName = 'GSM'
      Origin = 'CARIKART.GSM'
      Size = 17
    end
    object AktifCariIBQMAHALLE: TIBStringField
      DisplayLabel = 'Mahalle'
      FieldName = 'MAHALLE'
      Origin = 'CARIKART.MAHALLE'
      Size = 40
    end
    object AktifCariIBQCADDE: TIBStringField
      DisplayLabel = 'Cadde'
      FieldName = 'CADDE'
      Origin = 'CARIKART.CADDE'
      Size = 40
    end
    object AktifCariIBQSOKAK: TIBStringField
      DisplayLabel = 'Sokak'
      FieldName = 'SOKAK'
      Origin = 'CARIKART.SOKAK'
      Size = 40
    end
    object AktifCariIBQAPARTMAN: TIBStringField
      DisplayLabel = 'Apartman'
      FieldName = 'APARTMAN'
      Origin = 'CARIKART.APARTMAN'
      Size = 40
    end
    object AktifCariIBQNOSU: TIBStringField
      DisplayLabel = 'Nosu'
      FieldName = 'NOSU'
      Origin = 'CARIKART.NOSU'
    end
    object AktifCariIBQILCEKOD: TIntegerField
      FieldName = 'ILCEKOD'
      Origin = 'CARIKART.ILCEKOD'
    end
    object AktifCariIBQSEHIRKOD: TIntegerField
      FieldName = 'SEHIRKOD'
      Origin = 'CARIKART.SEHIRKOD'
    end
    object AktifCariIBQVERDAIRE: TIBStringField
      DisplayLabel = 'Vergi Dairesi'
      FieldName = 'VERDAIRE'
      Origin = 'CARIKART.VERDAIRE'
      Size = 25
    end
    object AktifCariIBQVERGINO: TIBStringField
      DisplayLabel = 'Vergi No'
      FieldName = 'VERGINO'
      Origin = 'CARIKART.VERGINO'
      Size = 25
    end
    object AktifCariIBQAKTIVITE: TIntegerField
      DisplayLabel = 'Aktif'
      FieldName = 'AKTIVITE'
      Origin = 'CARIKART.AKTIVITE'
    end
    object AktifCariIBQBLOKE: TIntegerField
      DisplayLabel = 'Bloke'
      FieldName = 'BLOKE'
      Origin = 'CARIKART.BLOKE'
    end
    object AktifCariIBQKREDILIMIT: TFloatField
      DisplayLabel = 'Kredi Limiti'
      FieldName = 'KREDILIMIT'
      Origin = 'CARIKART.KREDILIMIT'
    end
    object AktifCariIBQRISKLIMIT: TFloatField
      DisplayLabel = 'Risk Limiti'
      FieldName = 'RISKLIMIT'
      Origin = 'CARIKART.RISKLIMIT'
    end
    object AktifCariIBQFIYATSECIM: TIntegerField
      DisplayLabel = 'Fiyat Se'#231'imi'
      FieldName = 'FIYATSECIM'
      Origin = 'CARIKART.FIYATSECIM'
    end
    object AktifCariIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'CARIKART.PARABIRIMKOD'
    end
    object AktifCariIBQMAIL: TIBStringField
      DisplayLabel = 'Mail'
      FieldName = 'MAIL'
      Origin = 'CARIKART.MAIL'
      Size = 50
    end
    object AktifCariIBQWEB: TIBStringField
      DisplayLabel = 'Web'
      FieldName = 'WEB'
      Origin = 'CARIKART.WEB'
      Size = 50
    end
    object AktifCariIBQKEFILKOD: TIntegerField
      FieldName = 'KEFILKOD'
      Origin = 'CARIKART.KEFILKOD'
    end
    object AktifCariIBQUYARI: TIntegerField
      FieldName = 'UYARI'
      Origin = 'CARIKART.UYARI'
    end
    object AktifCariIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'CARIKART.BAKIYE'
      DisplayFormat = '###,###.0'
    end
    object AktifCariIBQDURUM: TIBStringField
      DisplayLabel = 'Durum'
      FieldName = 'DURUM'
      Origin = 'CARIKART.DURUM'
      Size = 10
    end
    object AktifCariIBQMESAJ: TMemoField
      FieldName = 'MESAJ'
      Origin = 'CARIKART.MESAJ'
      BlobType = ftMemo
      Size = 8
    end
    object AktifCariIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'CARIKART.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object AktifCariIBQYETKILI: TIBStringField
      DisplayLabel = 'Yetkili'
      FieldName = 'YETKILI'
      Origin = 'CARIKART.YETKILI'
      Size = 50
    end
    object AktifCariIBQISTIHBARAT: TMemoField
      FieldName = 'ISTIHBARAT'
      Origin = 'CARIKART.ISTIHBARAT'
      BlobType = ftMemo
      Size = 8
    end
    object AktifCariIBQC_ILCEADI: TIBStringField
      DisplayLabel = #304'l'#231'e'
      FieldKind = fkInternalCalc
      FieldName = 'C_ILCEADI'
      Origin = 'CARIKART.C_ILCEADI'
      ReadOnly = True
      Size = 25
    end
    object AktifCariIBQC_SEHIRADI: TIBStringField
      DisplayLabel = #304'l'
      FieldKind = fkInternalCalc
      FieldName = 'C_SEHIRADI'
      Origin = 'CARIKART.C_SEHIRADI'
      ReadOnly = True
      Size = 25
    end
  end
  object BosIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    PrecommittedReads = False
    Left = 760
    Top = 10
  end
  object CariislemIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = CariislemIBQAfterDelete
    AfterPost = CariislemIBQAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = CariKartDS
    ParamCheck = True
    SQL.Strings = (
      'select * from CARIISLEM'
      'Where CARIKOD=:CARIKOD AND SISTEM <> 2'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = CariislemUSQL
    PrecommittedReads = False
    Left = 50
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CARIKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object CariislemIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'CARIISLEM.ISLEMKOD'
      Required = True
    end
    object CariislemIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'CARIISLEM.CARIKOD'
    end
    object CariislemIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'CARIISLEM.ISLEMTUR'
      Size = 40
    end
    object CariislemIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'CARIISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object CariislemIBQCAISLEMNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'CAISLEMNO'
      Origin = 'CARIISLEM.CAISLEMNO'
    end
    object CariislemIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'CARIISLEM.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object CariislemIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'CARIISLEM.SAAT'
      EditMask = '!90:00;1;_'
    end
    object CariislemIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'CARIISLEM.ACIKLAMA'
      Size = 80
    end
    object CariislemIBQTEDIYE: TFloatField
      DisplayLabel = 'Alaca'#287#305'm'#305'z'
      FieldName = 'TEDIYE'
      Origin = 'CARIISLEM.TEDIYE'
      DisplayFormat = '###,###'
    end
    object CariislemIBQTAHSILAT: TFloatField
      DisplayLabel = 'Borcumuz'
      FieldName = 'TAHSILAT'
      Origin = 'CARIISLEM.TAHSILAT'
      DisplayFormat = '###,###'
    end
    object CariislemIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'CARIISLEM.BAKIYE'
      DisplayFormat = '###,###'
    end
    object CariislemIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'CARIISLEM.DURUM'
    end
    object CariislemIBQD_TEDIYE: TFloatField
      DisplayLabel = 'D. Alaca'#287#305'm'#305'z'
      FieldName = 'D_TEDIYE'
      Origin = 'CARIISLEM.D_TEDIYE'
      DisplayFormat = '###,###'
    end
    object CariislemIBQD_TAHSILAT: TFloatField
      DisplayLabel = 'D. Borcumuz'
      FieldName = 'D_TAHSILAT'
      Origin = 'CARIISLEM.D_TAHSILAT'
      DisplayFormat = '###,###'
    end
    object CariislemIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'CARIISLEM.CARIKURU'
      DisplayFormat = '###,###'
    end
    object CariislemIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'CARIISLEM.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object CariislemIBQKAPATMA: TIntegerField
      DisplayLabel = 'Kapatma'
      FieldName = 'KAPATMA'
      Origin = 'CARIISLEM.KAPATMA'
    end
    object CariislemIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'CARIISLEM.CARINO'
    end
    object CariislemIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'CARIISLEM.BAGLANTINO'
    end
    object CariislemIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'CARIISLEM.CARIHESAPILISKI'
    end
    object CariislemIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'CARIISLEM.PARABIRIMKOD'
    end
    object CariislemIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'CARIISLEM.MAKBUZNO'
    end
    object CariislemIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'CARIISLEM.KULLANKOD'
    end
    object CariislemIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'CARIISLEM.PERSONELKOD'
    end
    object CariislemIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'CARIISLEM.SISTEM'
    end
    object CariislemIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'CARIISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object CariislemIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'CARIISLEM.CARIPARABIRIMKOD'
    end
    object CariislemIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'CARIISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object CariislemIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'CARIISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object CariislemIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'CARIISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object CariislemIBQC_DURUM: TIBStringField
      DisplayLabel = 'D'
      FieldKind = fkInternalCalc
      FieldName = 'C_DURUM'
      Origin = 'CARIISLEM.C_DURUM'
      ReadOnly = True
      Size = 5
    end
    object CariislemIBQGELGITKOD: TIntegerField
      FieldName = 'GELGITKOD'
      Origin = 'CARIISLEM.GELGITKOD'
    end
  end
  object CariislemUSQL: TIBUpdateSQL
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
      '  C_PARABIRIMI,'
      '  CARIPARABIRIMKOD,'
      '  C_CARIPARABIRIM,'
      '  C_CARIADI,'
      '  C_PERSONEL,'
      '  SISTEM,'
      '  C_DURUM,'
      '  GELGITKOD,'
      '  C_GGMERKEZI'
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
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  SISTEM = :SISTEM,'
      '  GELGITKOD = :GELGITKOD'
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
      '   KULLANKOD, PERSONELKOD, CARIPARABIRIMKOD, SISTEM, GELGITKOD)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :ISLEMTUR, :CAISLEMNO, :TARIH, :SAAT, :A' +
        'CIKLAMA, '
      
        '   :TEDIYE, :TAHSILAT, :BAKIYE, :DURUM, :D_TEDIYE, :D_TAHSILAT, ' +
        ':CARIKURU, '
      
        '   :ISLEMKURU, :KAPATMA, :CARINO, :BAGLANTINO, :CARIHESAPILISKI,' +
        ' :PARABIRIMKOD, '
      
        '   :MAKBUZNO, :KULLANKOD, :PERSONELKOD, :CARIPARABIRIMKOD, :SIST' +
        'EM, :GELGITKOD)')
    DeleteSQL.Strings = (
      'delete from CARIISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 170
    Top = 160
  end
  object CariislemDS: TDataSource
    DataSet = CariislemIBQ
    Left = 279
    Top = 160
  end
  object CariStokIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = CariKartDS
    ParamCheck = True
    SQL.Strings = (
      'SELECT STOKBODRO.*, ALISSATISBODRO.*  FROM STOKBODRO'
      '   INNER JOIN ALISSATISBODRO'
      '   ON  STOKBODRO.STOKKOD= ALISSATISBODRO.STOKKOD'
      'Where CariKod=:CariKod')
    PrecommittedReads = False
    Left = 430
    Top = 20
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CARIKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object CariStokIBQSTOKNO: TIntegerField
      FieldName = 'STOKNO'
      Origin = 'STOKBODRO.STOKNO'
    end
    object CariStokIBQSTOKADI: TIBStringField
      FieldName = 'STOKADI'
      Origin = 'ALISSATISBODRO.STOKADI'
      Size = 40
    end
    object CariStokIBQBODROKOD: TIntegerField
      FieldName = 'BODROKOD'
      Origin = 'STOKBODRO.BODROKOD'
      Required = True
    end
    object CariStokIBQSIRANO: TIntegerField
      FieldName = 'SIRANO'
      Origin = 'STOKBODRO.SIRANO'
    end
    object CariStokIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'STOKBODRO.ISLEMTUR'
      Size = 40
    end
    object CariStokIBQC_ISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_ISLEMTURKOD'
      Origin = 'STOKBODRO.C_ISLEMTURKOD'
      ReadOnly = True
    end
    object CariStokIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'STOKBODRO.CARIKOD'
    end
    object CariStokIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'STOKBODRO.PARABIRIMKOD'
    end
    object CariStokIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'STOKBODRO.TARIH'
    end
    object CariStokIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'STOKBODRO.STOKKOD'
    end
    object CariStokIBQBARKOD: TIBStringField
      FieldName = 'BARKOD'
      Origin = 'STOKBODRO.BARKOD'
      Size = 25
    end
    object CariStokIBQMIKTAR: TFloatField
      FieldName = 'MIKTAR'
      Origin = 'STOKBODRO.MIKTAR'
    end
    object CariStokIBQMIKTARCARPAN: TIntegerField
      FieldName = 'MIKTARCARPAN'
      Origin = 'STOKBODRO.MIKTARCARPAN'
    end
    object CariStokIBQGIRISMIKTAR: TFloatField
      FieldName = 'GIRISMIKTAR'
      Origin = 'STOKBODRO.GIRISMIKTAR'
    end
    object CariStokIBQCIKISMIKTAR: TFloatField
      FieldName = 'CIKISMIKTAR'
      Origin = 'STOKBODRO.CIKISMIKTAR'
    end
    object CariStokIBQBIRIM: TIBStringField
      FieldName = 'BIRIM'
      Origin = 'STOKBODRO.BIRIM'
      Size = 10
    end
    object CariStokIBQBIRIMFIYAT: TFloatField
      FieldName = 'BIRIMFIYAT'
      Origin = 'STOKBODRO.BIRIMFIYAT'
    end
    object CariStokIBQGIRISFIYAT: TFloatField
      FieldName = 'GIRISFIYAT'
      Origin = 'STOKBODRO.GIRISFIYAT'
    end
    object CariStokIBQCIKISFIYAT: TFloatField
      FieldName = 'CIKISFIYAT'
      Origin = 'STOKBODRO.CIKISFIYAT'
    end
    object CariStokIBQCIKISTUTAR: TFloatField
      FieldName = 'CIKISTUTAR'
      Origin = 'STOKBODRO.CIKISTUTAR'
    end
    object CariStokIBQGIRISTUTAR: TFloatField
      FieldName = 'GIRISTUTAR'
      Origin = 'STOKBODRO.GIRISTUTAR'
    end
    object CariStokIBQGIRISMATRAHI: TFloatField
      FieldName = 'GIRISMATRAHI'
      Origin = 'STOKBODRO.GIRISMATRAHI'
    end
    object CariStokIBQCIKISMATRAHI: TFloatField
      FieldName = 'CIKISMATRAHI'
      Origin = 'STOKBODRO.CIKISMATRAHI'
    end
    object CariStokIBQISKONTO1: TFloatField
      FieldName = 'ISKONTO1'
      Origin = 'STOKBODRO.ISKONTO1'
    end
    object CariStokIBQISKONTO2: TFloatField
      FieldName = 'ISKONTO2'
      Origin = 'STOKBODRO.ISKONTO2'
    end
    object CariStokIBQISKONTO3: TFloatField
      FieldName = 'ISKONTO3'
      Origin = 'STOKBODRO.ISKONTO3'
    end
    object CariStokIBQISKONTO4: TFloatField
      FieldName = 'ISKONTO4'
      Origin = 'STOKBODRO.ISKONTO4'
    end
    object CariStokIBQKDVORANI: TFloatField
      FieldName = 'KDVORANI'
      Origin = 'STOKBODRO.KDVORANI'
    end
    object CariStokIBQBAKIYE: TFloatField
      FieldName = 'BAKIYE'
      Origin = 'STOKBODRO.BAKIYE'
    end
    object CariStokIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'STOKBODRO.DURUM'
    end
    object CariStokIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'STOKBODRO.ACIKLAMA'
      Size = 60
    end
    object CariStokIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'STOKBODRO.KAPATMA'
    end
    object CariStokIBQVADE: TDateField
      FieldName = 'VADE'
      Origin = 'STOKBODRO.VADE'
    end
    object CariStokIBQFATURANO: TIntegerField
      FieldName = 'FATURANO'
      Origin = 'STOKBODRO.FATURANO'
    end
    object CariStokIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'STOKBODRO.STOKYERIKOD'
    end
    object CariStokIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'STOKBODRO.ISLEMKURU'
    end
    object CariStokIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'STOKBODRO.GELGITKOD'
      Size = 80
    end
    object CariStokIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'STOKBODRO.PERSONELKOD'
    end
    object CariStokIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'STOKBODRO.KULLANKOD'
    end
    object CariStokIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'STOKBODRO.SISTEM'
    end
    object CariStokIBQEVRAKDURUMU: TIntegerField
      FieldName = 'EVRAKDURUMU'
      Origin = 'STOKBODRO.EVRAKDURUMU'
    end
    object CariStokIBQSERINO: TIBStringField
      FieldName = 'SERINO'
      Origin = 'STOKBODRO.SERINO'
      Size = 30
    end
    object CariStokIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'STOKBODRO.CARIHESAPILISKI'
    end
    object CariStokIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'STOKBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object CariStokIBQC_STOKYERI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'STOKBODRO.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object CariStokIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'STOKBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object CariStokIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'STOKBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object CariStokIBQC_REELGIRIS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_REELGIRIS'
      Origin = 'STOKBODRO.C_REELGIRIS'
      ReadOnly = True
    end
    object CariStokIBQC_REELCIKIS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_REELCIKIS'
      Origin = 'STOKBODRO.C_REELCIKIS'
      ReadOnly = True
    end
    object CariStokIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'STOKBODRO.ISLEMKOD'
    end
    object CariStokIBQKDVSECIM: TIBStringField
      FieldName = 'KDVSECIM'
      Origin = 'STOKBODRO.KDVSECIM'
      Size = 5
    end
    object CariStokIBQC_TLGIRISTUTARI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISTUTARI'
      Origin = 'STOKBODRO.C_TLGIRISTUTARI'
      ReadOnly = True
    end
    object CariStokIBQC_TLGIRISMATRAHI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISMATRAHI'
      Origin = 'STOKBODRO.C_TLGIRISMATRAHI'
      ReadOnly = True
    end
    object CariStokIBQC_TLCIKISTUTARI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISTUTARI'
      Origin = 'STOKBODRO.C_TLCIKISTUTARI'
      ReadOnly = True
    end
    object CariStokIBQC_TLCIKISMATRAHI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISMATRAHI'
      Origin = 'STOKBODRO.C_TLCIKISMATRAHI'
      ReadOnly = True
    end
    object CariStokIBQC_TLBIRIMFIYAT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLBIRIMFIYAT'
      Origin = 'STOKBODRO.C_TLBIRIMFIYAT'
      ReadOnly = True
    end
    object CariStokIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'STOKBODRO.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object CariStokIBQC_GIRISKDVTUTAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_GIRISKDVTUTAR'
      Origin = 'STOKBODRO.C_GIRISKDVTUTAR'
      ReadOnly = True
    end
    object CariStokIBQC_CIKISKDVTUTAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_CIKISKDVTUTAR'
      Origin = 'STOKBODRO.C_CIKISKDVTUTAR'
      ReadOnly = True
    end
    object CariStokIBQC_TLGIRISKDVTUTAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISKDVTUTAR'
      Origin = 'STOKBODRO.C_TLGIRISKDVTUTAR'
      ReadOnly = True
    end
    object CariStokIBQC_TLCIKISKDVTUTARI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISKDVTUTARI'
      Origin = 'STOKBODRO.C_TLCIKISKDVTUTARI'
      ReadOnly = True
    end
    object CariStokIBQBODROKOD1: TIntegerField
      FieldName = 'BODROKOD1'
      Origin = 'ALISSATISBODRO.BODROKOD'
      Required = True
    end
    object CariStokIBQSIRANO1: TIntegerField
      FieldName = 'SIRANO1'
      Origin = 'ALISSATISBODRO.SIRANO'
    end
    object CariStokIBQISLEMTUR1: TIBStringField
      FieldName = 'ISLEMTUR1'
      Origin = 'ALISSATISBODRO.ISLEMTUR'
      Size = 40
    end
    object CariStokIBQC_ISLEMTURKOD1: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_ISLEMTURKOD1'
      Origin = 'ALISSATISBODRO.C_ISLEMTURKOD'
      ReadOnly = True
    end
    object CariStokIBQCARIKOD1: TIntegerField
      FieldName = 'CARIKOD1'
      Origin = 'ALISSATISBODRO.CARIKOD'
    end
    object CariStokIBQPARABIRIMKOD1: TIntegerField
      FieldName = 'PARABIRIMKOD1'
      Origin = 'ALISSATISBODRO.PARABIRIMKOD'
    end
    object CariStokIBQTARIH1: TDateField
      FieldName = 'TARIH1'
      Origin = 'ALISSATISBODRO.TARIH'
    end
    object CariStokIBQSTOKKOD1: TIntegerField
      FieldName = 'STOKKOD1'
      Origin = 'ALISSATISBODRO.STOKKOD'
    end
    object CariStokIBQSTOKNO1: TIntegerField
      FieldName = 'STOKNO1'
      Origin = 'ALISSATISBODRO.STOKNO'
    end
    object CariStokIBQBARKOD1: TIBStringField
      FieldName = 'BARKOD1'
      Origin = 'ALISSATISBODRO.BARKOD'
      Size = 25
    end
    object CariStokIBQSTOKADI1: TIBStringField
      FieldName = 'STOKADI1'
      Origin = 'ALISSATISBODRO.STOKADI'
      Size = 40
    end
    object CariStokIBQMIKTAR1: TFloatField
      FieldName = 'MIKTAR1'
      Origin = 'ALISSATISBODRO.MIKTAR'
    end
    object CariStokIBQMIKTARCARPAN1: TIntegerField
      FieldName = 'MIKTARCARPAN1'
      Origin = 'ALISSATISBODRO.MIKTARCARPAN'
    end
    object CariStokIBQGIRISMIKTAR1: TFloatField
      FieldName = 'GIRISMIKTAR1'
      Origin = 'ALISSATISBODRO.GIRISMIKTAR'
    end
    object CariStokIBQCIKISMIKTAR1: TFloatField
      FieldName = 'CIKISMIKTAR1'
      Origin = 'ALISSATISBODRO.CIKISMIKTAR'
    end
    object CariStokIBQBIRIM1: TIBStringField
      FieldName = 'BIRIM1'
      Origin = 'ALISSATISBODRO.BIRIM'
      Size = 10
    end
    object CariStokIBQBIRIMFIYAT1: TFloatField
      FieldName = 'BIRIMFIYAT1'
      Origin = 'ALISSATISBODRO.BIRIMFIYAT'
    end
    object CariStokIBQALISFIYAT: TFloatField
      FieldName = 'ALISFIYAT'
      Origin = 'ALISSATISBODRO.ALISFIYAT'
    end
    object CariStokIBQSATISTUTAR: TFloatField
      FieldName = 'SATISTUTAR'
      Origin = 'ALISSATISBODRO.SATISTUTAR'
    end
    object CariStokIBQSATISFIYAT: TFloatField
      FieldName = 'SATISFIYAT'
      Origin = 'ALISSATISBODRO.SATISFIYAT'
    end
    object CariStokIBQALISTUTAR: TFloatField
      FieldName = 'ALISTUTAR'
      Origin = 'ALISSATISBODRO.ALISTUTAR'
    end
    object CariStokIBQALISMATRAHI: TFloatField
      FieldName = 'ALISMATRAHI'
      Origin = 'ALISSATISBODRO.ALISMATRAHI'
    end
    object CariStokIBQSATISMATRAHI: TFloatField
      FieldName = 'SATISMATRAHI'
      Origin = 'ALISSATISBODRO.SATISMATRAHI'
    end
    object CariStokIBQISKONTO11: TFloatField
      FieldName = 'ISKONTO11'
      Origin = 'ALISSATISBODRO.ISKONTO1'
    end
    object CariStokIBQISKONTO21: TFloatField
      FieldName = 'ISKONTO21'
      Origin = 'ALISSATISBODRO.ISKONTO2'
    end
    object CariStokIBQISKONTO31: TFloatField
      FieldName = 'ISKONTO31'
      Origin = 'ALISSATISBODRO.ISKONTO3'
    end
    object CariStokIBQISKONTO41: TFloatField
      FieldName = 'ISKONTO41'
      Origin = 'ALISSATISBODRO.ISKONTO4'
    end
    object CariStokIBQKDVORANI1: TFloatField
      FieldName = 'KDVORANI1'
      Origin = 'ALISSATISBODRO.KDVORANI'
    end
    object CariStokIBQBAKIYE1: TFloatField
      FieldName = 'BAKIYE1'
      Origin = 'ALISSATISBODRO.BAKIYE'
    end
    object CariStokIBQDURUM1: TIntegerField
      FieldName = 'DURUM1'
      Origin = 'ALISSATISBODRO.DURUM'
    end
    object CariStokIBQACIKLAMA1: TIBStringField
      FieldName = 'ACIKLAMA1'
      Origin = 'ALISSATISBODRO.ACIKLAMA'
      Size = 60
    end
    object CariStokIBQKAPATMA1: TIntegerField
      FieldName = 'KAPATMA1'
      Origin = 'ALISSATISBODRO.KAPATMA'
    end
    object CariStokIBQVADE1: TDateField
      FieldName = 'VADE1'
      Origin = 'ALISSATISBODRO.VADE'
    end
    object CariStokIBQFATURANO1: TIntegerField
      FieldName = 'FATURANO1'
      Origin = 'ALISSATISBODRO.FATURANO'
    end
    object CariStokIBQSTOKYERIKOD1: TIntegerField
      FieldName = 'STOKYERIKOD1'
      Origin = 'ALISSATISBODRO.STOKYERIKOD'
    end
    object CariStokIBQISLEMKURU1: TFloatField
      FieldName = 'ISLEMKURU1'
      Origin = 'ALISSATISBODRO.ISLEMKURU'
    end
    object CariStokIBQGELGITKOD1: TIBStringField
      FieldName = 'GELGITKOD1'
      Origin = 'ALISSATISBODRO.GELGITKOD'
      Size = 80
    end
    object CariStokIBQPERSONELKOD1: TIntegerField
      FieldName = 'PERSONELKOD1'
      Origin = 'ALISSATISBODRO.PERSONELKOD'
    end
    object CariStokIBQKULLANKOD1: TIntegerField
      FieldName = 'KULLANKOD1'
      Origin = 'ALISSATISBODRO.KULLANKOD'
    end
    object CariStokIBQEVRAKDURUMU1: TIntegerField
      FieldName = 'EVRAKDURUMU1'
      Origin = 'ALISSATISBODRO.EVRAKDURUMU'
    end
    object CariStokIBQSERINO1: TIBStringField
      FieldName = 'SERINO1'
      Origin = 'ALISSATISBODRO.SERINO'
      Size = 30
    end
    object CariStokIBQCARIHESAPILISKI1: TIntegerField
      FieldName = 'CARIHESAPILISKI1'
      Origin = 'ALISSATISBODRO.CARIHESAPILISKI'
    end
    object CariStokIBQC_CARIADI1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI1'
      Origin = 'ALISSATISBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object CariStokIBQC_STOKYERI1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI1'
      Origin = 'ALISSATISBODRO.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object CariStokIBQC_KULLANICIADI1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI1'
      Origin = 'ALISSATISBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object CariStokIBQC_PARABIRIMI1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI1'
      Origin = 'ALISSATISBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object CariStokIBQC_REELALIS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_REELALIS'
      Origin = 'ALISSATISBODRO.C_REELALIS'
      ReadOnly = True
    end
    object CariStokIBQC_REELSATIS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_REELSATIS'
      Origin = 'ALISSATISBODRO.C_REELSATIS'
      ReadOnly = True
    end
    object CariStokIBQISLEMKOD1: TIntegerField
      FieldName = 'ISLEMKOD1'
      Origin = 'ALISSATISBODRO.ISLEMKOD'
    end
    object CariStokIBQKDVSECIM1: TIBStringField
      FieldName = 'KDVSECIM1'
      Origin = 'ALISSATISBODRO.KDVSECIM'
      Size = 5
    end
    object CariStokIBQC_TLALISTUTARI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISTUTARI'
      Origin = 'ALISSATISBODRO.C_TLALISTUTARI'
      ReadOnly = True
    end
    object CariStokIBQC_TLALISMATRAHI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISMATRAHI'
      Origin = 'ALISSATISBODRO.C_TLALISMATRAHI'
      ReadOnly = True
    end
    object CariStokIBQC_TLSATISTUTARI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISTUTARI'
      Origin = 'ALISSATISBODRO.C_TLSATISTUTARI'
      ReadOnly = True
    end
    object CariStokIBQC_TLSATISMATRAHI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISMATRAHI'
      Origin = 'ALISSATISBODRO.C_TLSATISMATRAHI'
      ReadOnly = True
    end
    object CariStokIBQC_TLBIRIMFIYAT1: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLBIRIMFIYAT1'
      Origin = 'ALISSATISBODRO.C_TLBIRIMFIYAT'
      ReadOnly = True
    end
    object CariStokIBQC_GGMERKEZI1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI1'
      Origin = 'ALISSATISBODRO.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object CariStokIBQC_ALISKDVTUTAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_ALISKDVTUTAR'
      Origin = 'ALISSATISBODRO.C_ALISKDVTUTAR'
      ReadOnly = True
    end
    object CariStokIBQC_SATISKDVTUTAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_SATISKDVTUTAR'
      Origin = 'ALISSATISBODRO.C_SATISKDVTUTAR'
      ReadOnly = True
    end
    object CariStokIBQC_TLALISKDVTUTAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISKDVTUTAR'
      Origin = 'ALISSATISBODRO.C_TLALISKDVTUTAR'
      ReadOnly = True
    end
    object CariStokIBQC_TLSATISKDVTUTARI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISKDVTUTARI'
      Origin = 'ALISSATISBODRO.C_TLSATISKDVTUTARI'
      ReadOnly = True
    end
    object CariStokIBQSISTEM1: TIntegerField
      FieldName = 'SISTEM1'
      Origin = 'ALISSATISBODRO.SISTEM'
    end
    object CariStokIBQMALIYETFIYATI: TFloatField
      FieldName = 'MALIYETFIYATI'
      Origin = 'ALISSATISBODRO.MALIYETFIYATI'
    end
    object CariStokIBQC_MALIYETTUTARI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_MALIYETTUTARI'
      Origin = 'ALISSATISBODRO.C_MALIYETTUTARI'
      ReadOnly = True
    end
    object CariStokIBQC_KARZARAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_KARZARAR'
      Origin = 'ALISSATISBODRO.C_KARZARAR'
      ReadOnly = True
    end
  end
  object CariStokDS: TDataSource
    DataSet = CariStokIBQ
    Left = 550
    Top = 20
  end
  object CariCekIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from CEKISLEM')
    PrecommittedReads = False
    Left = 430
    Top = 90
    object CariCekIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'CEKISLEM.ISLEMKOD'
      Required = True
    end
    object CariCekIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'CEKISLEM.CARIKOD'
    end
    object CariCekIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'CEKISLEM.ISLEMTUR'
      Size = 40
    end
    object CariCekIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'CEKISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object CariCekIBQCEKISLEMNO: TIntegerField
      FieldName = 'CEKISLEMNO'
      Origin = 'CEKISLEM.CEKISLEMNO'
    end
    object CariCekIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'CEKISLEM.TARIH'
    end
    object CariCekIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'CEKISLEM.SAAT'
    end
    object CariCekIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'CEKISLEM.ACIKLAMA'
      Size = 80
    end
    object CariCekIBQTEDIYE: TFloatField
      FieldName = 'TEDIYE'
      Origin = 'CEKISLEM.TEDIYE'
    end
    object CariCekIBQTAHSILAT: TFloatField
      FieldName = 'TAHSILAT'
      Origin = 'CEKISLEM.TAHSILAT'
    end
    object CariCekIBQBAKIYE: TFloatField
      FieldName = 'BAKIYE'
      Origin = 'CEKISLEM.BAKIYE'
    end
    object CariCekIBQDURUM: TIBStringField
      FieldName = 'DURUM'
      Origin = 'CEKISLEM.DURUM'
      Size = 10
    end
    object CariCekIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'CEKISLEM.D_TEDIYE'
    end
    object CariCekIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'CEKISLEM.D_TAHSILAT'
    end
    object CariCekIBQCARIKURU: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'CEKISLEM.CARIKURU'
    end
    object CariCekIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'CEKISLEM.ISLEMKURU'
    end
    object CariCekIBQVADE: TDateField
      FieldName = 'VADE'
      Origin = 'CEKISLEM.VADE'
    end
    object CariCekIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'CEKISLEM.CARINO'
    end
    object CariCekIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'CEKISLEM.GELGITKOD'
      Size = 80
    end
    object CariCekIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'CEKISLEM.KASAKOD'
    end
    object CariCekIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'CEKISLEM.BAGLANTINO'
    end
    object CariCekIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'CEKISLEM.BANKAKOD'
    end
    object CariCekIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'CEKISLEM.PARABIRIMKOD'
    end
    object CariCekIBQBANKA: TIBStringField
      FieldName = 'BANKA'
      Origin = 'CEKISLEM.BANKA'
      Size = 30
    end
    object CariCekIBQKESIDEYERI: TIBStringField
      FieldName = 'KESIDEYERI'
      Origin = 'CEKISLEM.KESIDEYERI'
      Size = 30
    end
    object CariCekIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'CEKISLEM.MAKBUZNO'
    end
    object CariCekIBQILKCIRO: TIBStringField
      FieldName = 'ILKCIRO'
      Origin = 'CEKISLEM.ILKCIRO'
      Size = 30
    end
    object CariCekIBQCEKSERINO: TIBStringField
      FieldName = 'CEKSERINO'
      Origin = 'CEKISLEM.CEKSERINO'
    end
    object CariCekIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'CEKISLEM.KULLANKOD'
    end
    object CariCekIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'CEKISLEM.SISTEM'
    end
    object CariCekIBQEVRAKDURUMU: TIntegerField
      FieldName = 'EVRAKDURUMU'
      Origin = 'CEKISLEM.EVRAKDURUMU'
    end
    object CariCekIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'CEKISLEM.CARIPARABIRIMKOD'
    end
    object CariCekIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'CEKISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
  end
  object CariCekDS: TDataSource
    DataSet = CariCekIBQ
    Left = 550
    Top = 90
  end
  object CariBankaIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *  from BANKAISLEM')
    PrecommittedReads = False
    Left = 430
    Top = 160
    object CariBankaIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'BANKAISLEM.ISLEMKOD'
      Required = True
    end
    object CariBankaIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'BANKAISLEM.CARIKOD'
    end
    object CariBankaIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'BANKAISLEM.BANKAKOD'
    end
    object CariBankaIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'BANKAISLEM.ISLEMTUR'
      Size = 40
    end
    object CariBankaIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'BANKAISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object CariBankaIBQBANKAISLEMNO: TIntegerField
      FieldName = 'BANKAISLEMNO'
      Origin = 'BANKAISLEM.BANKAISLEMNO'
    end
    object CariBankaIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'BANKAISLEM.TARIH'
    end
    object CariBankaIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'BANKAISLEM.SAAT'
    end
    object CariBankaIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'BANKAISLEM.ACIKLAMA'
      Size = 80
    end
    object CariBankaIBQTEDIYE: TFloatField
      FieldName = 'TEDIYE'
      Origin = 'BANKAISLEM.TEDIYE'
    end
    object CariBankaIBQTAHSILAT: TFloatField
      FieldName = 'TAHSILAT'
      Origin = 'BANKAISLEM.TAHSILAT'
    end
    object CariBankaIBQBAKIYE: TFloatField
      FieldName = 'BAKIYE'
      Origin = 'BANKAISLEM.BAKIYE'
    end
    object CariBankaIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'BANKAISLEM.DURUM'
    end
    object CariBankaIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'BANKAISLEM.KASAKOD'
    end
    object CariBankaIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'BANKAISLEM.CARINO'
    end
    object CariBankaIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'BANKAISLEM.GELGITKOD'
      Size = 80
    end
    object CariBankaIBQEVRAKNO: TIntegerField
      FieldName = 'EVRAKNO'
      Origin = 'BANKAISLEM.EVRAKNO'
    end
    object CariBankaIBQBELGENO: TIntegerField
      FieldName = 'BELGENO'
      Origin = 'BANKAISLEM.BELGENO'
    end
    object CariBankaIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'BANKAISLEM.BAGLANTINO'
    end
    object CariBankaIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'BANKAISLEM.PARABIRIMKOD'
    end
    object CariBankaIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'BANKAISLEM.MAKBUZNO'
    end
    object CariBankaIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'BANKAISLEM.KULLANKOD'
    end
    object CariBankaIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'BANKAISLEM.PERSONELKOD'
    end
    object CariBankaIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'BANKAISLEM.SISTEM'
    end
    object CariBankaIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'BANKAISLEM.D_TEDIYE'
    end
    object CariBankaIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'BANKAISLEM.D_TAHSILAT'
    end
    object CariBankaIBQCARIKURU: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'BANKAISLEM.CARIKURU'
    end
    object CariBankaIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'BANKAISLEM.ISLEMKURU'
    end
    object CariBankaIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'BANKAISLEM.CARIPARABIRIMKOD'
    end
    object CariBankaIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'BANKAISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object CariBankaIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'BANKAISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object CariBankaIBQC_KASAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KASAADI'
      Origin = 'BANKAISLEM.C_KASAADI'
      ReadOnly = True
      Size = 25
    end
    object CariBankaIBQC_HESAPADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_HESAPADI'
      Origin = 'BANKAISLEM.C_HESAPADI'
      ReadOnly = True
      Size = 50
    end
  end
  object CariBankaDS: TDataSource
    DataSet = CariBankaIBQ
    Left = 550
    Top = 160
  end
  object AktifCariDS: TDataSource
    DataSet = AktifCariIBQ
    Left = 760
    Top = 160
  end
  object CariSecimProc: TIBStoredProc
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    StoredProcName = 'CARI_SECIM'
    Left = 760
    Top = 400
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD_IN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CARIKOD_IN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ISLEMTURU'
        ParamType = ptInput
      end>
  end
  object GirisDekontuIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = GirisDekontuIBQAfterDelete
    AfterEdit = GirisDekontuIBQAfterEdit
    AfterPost = GirisDekontuIBQAfterPost
    OnNewRecord = GirisDekontuIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from CARIISLEM'
      'Where ((ISLEMTURKOD=7) and (SISTEM<>2))'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = GirisDekontuUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'CARIISLEM'
    PrecommittedReads = False
    Left = 50
    Top = 230
    object GirisDekontuIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'CARIISLEM.ISLEMKOD'
      Required = True
    end
    object GirisDekontuIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'CARIISLEM.CARIKOD'
    end
    object GirisDekontuIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'CARIISLEM.ISLEMTUR'
      Size = 40
    end
    object GirisDekontuIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'CARIISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object GirisDekontuIBQCAISLEMNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'CAISLEMNO'
      Origin = 'CARIISLEM.CAISLEMNO'
    end
    object GirisDekontuIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'CARIISLEM.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object GirisDekontuIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'CARIISLEM.SAAT'
      EditMask = '!90:00;1;_'
    end
    object GirisDekontuIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'CARIISLEM.ACIKLAMA'
      Size = 80
    end
    object GirisDekontuIBQTEDIYE: TFloatField
      DisplayLabel = 'Alaca'#287#305'm'#305'z'
      FieldName = 'TEDIYE'
      Origin = 'CARIISLEM.TEDIYE'
      DisplayFormat = '###,###'
    end
    object GirisDekontuIBQTAHSILAT: TFloatField
      DisplayLabel = 'Borcumuz'
      FieldName = 'TAHSILAT'
      Origin = 'CARIISLEM.TAHSILAT'
      DisplayFormat = '###,###'
    end
    object GirisDekontuIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'CARIISLEM.BAKIYE'
      DisplayFormat = '###,###'
    end
    object GirisDekontuIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'CARIISLEM.DURUM'
    end
    object GirisDekontuIBQD_TEDIYE: TFloatField
      DisplayLabel = 'D. Alaca'#287#305'm'#305'z'
      FieldName = 'D_TEDIYE'
      Origin = 'CARIISLEM.D_TEDIYE'
      DisplayFormat = '###,###'
    end
    object GirisDekontuIBQD_TAHSILAT: TFloatField
      DisplayLabel = 'D. Borcumuz'
      FieldName = 'D_TAHSILAT'
      Origin = 'CARIISLEM.D_TAHSILAT'
      DisplayFormat = '###,###'
    end
    object GirisDekontuIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'CARIISLEM.CARIKURU'
      DisplayFormat = '###,###'
    end
    object GirisDekontuIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'CARIISLEM.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object GirisDekontuIBQKAPATMA: TIntegerField
      DisplayLabel = 'Kapatma'
      FieldName = 'KAPATMA'
      Origin = 'CARIISLEM.KAPATMA'
    end
    object GirisDekontuIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'CARIISLEM.CARINO'
    end
    object GirisDekontuIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'CARIISLEM.BAGLANTINO'
    end
    object GirisDekontuIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'CARIISLEM.CARIHESAPILISKI'
    end
    object GirisDekontuIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'CARIISLEM.PARABIRIMKOD'
    end
    object GirisDekontuIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'CARIISLEM.MAKBUZNO'
    end
    object GirisDekontuIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'CARIISLEM.KULLANKOD'
    end
    object GirisDekontuIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'CARIISLEM.PERSONELKOD'
    end
    object GirisDekontuIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'CARIISLEM.SISTEM'
    end
    object GirisDekontuIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'CARIISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object GirisDekontuIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'CARIISLEM.CARIPARABIRIMKOD'
    end
    object GirisDekontuIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'CARIISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object GirisDekontuIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'CARIISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object GirisDekontuIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'CARIISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object GirisDekontuIBQC_DURUM: TIBStringField
      DisplayLabel = 'D'
      FieldKind = fkInternalCalc
      FieldName = 'C_DURUM'
      Origin = 'CARIISLEM.C_DURUM'
      ReadOnly = True
      Size = 5
    end
    object GirisDekontuIBQGELGITKOD: TIntegerField
      FieldName = 'GELGITKOD'
      Origin = 'CARIISLEM.GELGITKOD'
    end
    object GirisDekontuIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'CARIISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
  end
  object GirisDekontuUSQL: TIBUpdateSQL
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
      '  C_PARABIRIMI,'
      '  CARIPARABIRIMKOD,'
      '  C_CARIPARABIRIM,'
      '  C_CARIADI,'
      '  C_PERSONEL,'
      '  SISTEM,'
      '  C_DURUM,'
      '  GELGITKOD'
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
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  SISTEM = :SISTEM,'
      '  GELGITKOD = :GELGITKOD'
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
      '   KULLANKOD, PERSONELKOD, CARIPARABIRIMKOD, SISTEM, GELGITKOD)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :ISLEMTUR, :CAISLEMNO, :TARIH, :SAAT, :A' +
        'CIKLAMA, '
      
        '   :TEDIYE, :TAHSILAT, :BAKIYE, :DURUM, :D_TEDIYE, :D_TAHSILAT, ' +
        ':CARIKURU, '
      
        '   :ISLEMKURU, :KAPATMA, :CARINO, :BAGLANTINO, :CARIHESAPILISKI,' +
        ' :PARABIRIMKOD, '
      
        '   :MAKBUZNO, :KULLANKOD, :PERSONELKOD, :CARIPARABIRIMKOD, :SIST' +
        'EM, :GELGITKOD)')
    DeleteSQL.Strings = (
      'delete from CARIISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 170
    Top = 230
  end
  object GirisDekontuDS: TDataSource
    DataSet = GirisDekontuIBQ
    Left = 279
    Top = 230
  end
  object CikisDekontuIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterDelete = CikisDekontuIBQAfterDelete
    AfterEdit = CikisDekontuIBQAfterEdit
    AfterPost = CikisDekontuIBQAfterPost
    OnNewRecord = CikisDekontuIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from CARIISLEM'
      'Where ISLEMTURKOD=8 AND SISTEM<>2'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = CikisDekontuUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'CARIISLEM'
    PrecommittedReads = False
    Left = 50
    Top = 295
    object CikisDekontuIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'CARIISLEM.ISLEMKOD'
      Required = True
    end
    object CikisDekontuIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'CARIISLEM.CARIKOD'
    end
    object CikisDekontuIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'CARIISLEM.ISLEMTUR'
      Size = 40
    end
    object CikisDekontuIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'CARIISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object CikisDekontuIBQCAISLEMNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'CAISLEMNO'
      Origin = 'CARIISLEM.CAISLEMNO'
    end
    object CikisDekontuIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'CARIISLEM.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object CikisDekontuIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'CARIISLEM.SAAT'
      EditMask = '!90:00;1;_'
    end
    object CikisDekontuIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'CARIISLEM.ACIKLAMA'
      Size = 80
    end
    object CikisDekontuIBQTEDIYE: TFloatField
      DisplayLabel = 'Alaca'#287#305'm'#305'z'
      FieldName = 'TEDIYE'
      Origin = 'CARIISLEM.TEDIYE'
      DisplayFormat = '###,###'
    end
    object CikisDekontuIBQTAHSILAT: TFloatField
      DisplayLabel = 'Borcumuz'
      FieldName = 'TAHSILAT'
      Origin = 'CARIISLEM.TAHSILAT'
      DisplayFormat = '###,###'
    end
    object CikisDekontuIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'CARIISLEM.BAKIYE'
      DisplayFormat = '###,###'
    end
    object CikisDekontuIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'CARIISLEM.DURUM'
    end
    object CikisDekontuIBQD_TEDIYE: TFloatField
      DisplayLabel = 'D. Alaca'#287#305'm'#305'z'
      FieldName = 'D_TEDIYE'
      Origin = 'CARIISLEM.D_TEDIYE'
      DisplayFormat = '###,###'
    end
    object CikisDekontuIBQD_TAHSILAT: TFloatField
      DisplayLabel = 'D. Borcumuz'
      FieldName = 'D_TAHSILAT'
      Origin = 'CARIISLEM.D_TAHSILAT'
      DisplayFormat = '###,###'
    end
    object CikisDekontuIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'CARIISLEM.CARIKURU'
      DisplayFormat = '###,###'
    end
    object CikisDekontuIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'CARIISLEM.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object CikisDekontuIBQKAPATMA: TIntegerField
      DisplayLabel = 'Kapatma'
      FieldName = 'KAPATMA'
      Origin = 'CARIISLEM.KAPATMA'
    end
    object CikisDekontuIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'CARIISLEM.CARINO'
    end
    object CikisDekontuIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'CARIISLEM.BAGLANTINO'
    end
    object CikisDekontuIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'CARIISLEM.CARIHESAPILISKI'
    end
    object CikisDekontuIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'CARIISLEM.PARABIRIMKOD'
    end
    object CikisDekontuIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'CARIISLEM.MAKBUZNO'
    end
    object CikisDekontuIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'CARIISLEM.KULLANKOD'
    end
    object CikisDekontuIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'CARIISLEM.PERSONELKOD'
    end
    object CikisDekontuIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'CARIISLEM.SISTEM'
    end
    object CikisDekontuIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'CARIISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object CikisDekontuIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'CARIISLEM.CARIPARABIRIMKOD'
    end
    object CikisDekontuIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'CARIISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object CikisDekontuIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'CARIISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object CikisDekontuIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'CARIISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object CikisDekontuIBQC_DURUM: TIBStringField
      DisplayLabel = 'D'
      FieldKind = fkInternalCalc
      FieldName = 'C_DURUM'
      Origin = 'CARIISLEM.C_DURUM'
      ReadOnly = True
      Size = 5
    end
    object CikisDekontuIBQGELGITKOD: TIntegerField
      FieldName = 'GELGITKOD'
      Origin = 'CARIISLEM.GELGITKOD'
    end
    object CikisDekontuIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'CARIISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
  end
  object CikisDekontuUSQL: TIBUpdateSQL
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
      '  C_PARABIRIMI,'
      '  CARIPARABIRIMKOD,'
      '  C_CARIPARABIRIM,'
      '  C_CARIADI,'
      '  C_PERSONEL,'
      '  SISTEM,'
      '  C_DURUM,'
      '  GELGITKOD'
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
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  SISTEM = :SISTEM,'
      '  GELGITKOD = :GELGITKOD'
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
      '   KULLANKOD, PERSONELKOD, CARIPARABIRIMKOD, SISTEM, GELGITKOD)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :ISLEMTUR, :CAISLEMNO, :TARIH, :SAAT, :A' +
        'CIKLAMA, '
      
        '   :TEDIYE, :TAHSILAT, :BAKIYE, :DURUM, :D_TEDIYE, :D_TAHSILAT, ' +
        ':CARIKURU, '
      
        '   :ISLEMKURU, :KAPATMA, :CARINO, :BAGLANTINO, :CARIHESAPILISKI,' +
        ' :PARABIRIMKOD, '
      
        '   :MAKBUZNO, :KULLANKOD, :PERSONELKOD, :CARIPARABIRIMKOD, :SIST' +
        'EM, :GELGITKOD)')
    DeleteSQL.Strings = (
      'delete from CARIISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 170
    Top = 295
  end
  object CikisDekontuDS: TDataSource
    DataSet = CikisDekontuIBQ
    Left = 279
    Top = 295
  end
  object DBAlacakIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterEdit = DBAlacakIBQAfterEdit
    AfterPost = DBAlacakIBQAfterPost
    OnNewRecord = DBAlacakIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from CARIISLEM'
      'Where ((ISLEMTURKOD=9) and (SISTEM<>2))'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = DBAlacakUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'CARIISLEM'
    PrecommittedReads = False
    Left = 50
    Top = 365
    object DBAlacakIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'CARIISLEM.ISLEMKOD'
      Required = True
    end
    object DBAlacakIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'CARIISLEM.CARIKOD'
    end
    object DBAlacakIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'CARIISLEM.ISLEMTUR'
      Size = 40
    end
    object DBAlacakIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'CARIISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object DBAlacakIBQCAISLEMNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'CAISLEMNO'
      Origin = 'CARIISLEM.CAISLEMNO'
    end
    object DBAlacakIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'CARIISLEM.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object DBAlacakIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'CARIISLEM.SAAT'
      EditMask = '!90:00;1;_'
    end
    object DBAlacakIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'CARIISLEM.ACIKLAMA'
      Size = 80
    end
    object DBAlacakIBQTEDIYE: TFloatField
      DisplayLabel = 'Alaca'#287#305'm'#305'z'
      FieldName = 'TEDIYE'
      Origin = 'CARIISLEM.TEDIYE'
      DisplayFormat = '###,###'
    end
    object DBAlacakIBQTAHSILAT: TFloatField
      DisplayLabel = 'Borcumuz'
      FieldName = 'TAHSILAT'
      Origin = 'CARIISLEM.TAHSILAT'
      DisplayFormat = '###,###'
    end
    object DBAlacakIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'CARIISLEM.BAKIYE'
      DisplayFormat = '###,###'
    end
    object DBAlacakIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'CARIISLEM.DURUM'
    end
    object DBAlacakIBQD_TEDIYE: TFloatField
      DisplayLabel = 'D. Alaca'#287#305'm'#305'z'
      FieldName = 'D_TEDIYE'
      Origin = 'CARIISLEM.D_TEDIYE'
      DisplayFormat = '###,###'
    end
    object DBAlacakIBQD_TAHSILAT: TFloatField
      DisplayLabel = 'D. Borcumuz'
      FieldName = 'D_TAHSILAT'
      Origin = 'CARIISLEM.D_TAHSILAT'
      DisplayFormat = '###,###'
    end
    object DBAlacakIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'CARIISLEM.CARIKURU'
      DisplayFormat = '###,###'
    end
    object DBAlacakIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'CARIISLEM.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object DBAlacakIBQKAPATMA: TIntegerField
      DisplayLabel = 'Kapatma'
      FieldName = 'KAPATMA'
      Origin = 'CARIISLEM.KAPATMA'
    end
    object DBAlacakIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'CARIISLEM.CARINO'
    end
    object DBAlacakIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'CARIISLEM.BAGLANTINO'
    end
    object DBAlacakIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'CARIISLEM.CARIHESAPILISKI'
    end
    object DBAlacakIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'CARIISLEM.PARABIRIMKOD'
    end
    object DBAlacakIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'CARIISLEM.MAKBUZNO'
    end
    object DBAlacakIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'CARIISLEM.KULLANKOD'
    end
    object DBAlacakIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'CARIISLEM.PERSONELKOD'
    end
    object DBAlacakIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'CARIISLEM.SISTEM'
    end
    object DBAlacakIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'CARIISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object DBAlacakIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'CARIISLEM.CARIPARABIRIMKOD'
    end
    object DBAlacakIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'CARIISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object DBAlacakIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'CARIISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object DBAlacakIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'CARIISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object DBAlacakIBQC_DURUM: TIBStringField
      DisplayLabel = 'D'
      FieldKind = fkInternalCalc
      FieldName = 'C_DURUM'
      Origin = 'CARIISLEM.C_DURUM'
      ReadOnly = True
      Size = 5
    end
    object DBAlacakIBQGELGITKOD: TIntegerField
      FieldName = 'GELGITKOD'
      Origin = 'CARIISLEM.GELGITKOD'
    end
    object DBAlacakIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'CARIISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
  end
  object DBAlacakUSQL: TIBUpdateSQL
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
      '  C_PARABIRIMI,'
      '  CARIPARABIRIMKOD,'
      '  C_CARIPARABIRIM,'
      '  C_CARIADI,'
      '  C_PERSONEL,'
      '  SISTEM,'
      '  C_DURUM,'
      '  GELGITKOD'
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
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  SISTEM = :SISTEM,'
      '  GELGITKOD = :GELGITKOD'
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
      '   KULLANKOD, PERSONELKOD, CARIPARABIRIMKOD, SISTEM, GELGITKOD)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :ISLEMTUR, :CAISLEMNO, :TARIH, :SAAT, :A' +
        'CIKLAMA, '
      
        '   :TEDIYE, :TAHSILAT, :BAKIYE, :DURUM, :D_TEDIYE, :D_TAHSILAT, ' +
        ':CARIKURU, '
      
        '   :ISLEMKURU, :KAPATMA, :CARINO, :BAGLANTINO, :CARIHESAPILISKI,' +
        ' :PARABIRIMKOD, '
      
        '   :MAKBUZNO, :KULLANKOD, :PERSONELKOD, :CARIPARABIRIMKOD, :SIST' +
        'EM, :GELGITKOD)')
    DeleteSQL.Strings = (
      'delete from CARIISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 170
    Top = 365
  end
  object DBAlacakDS: TDataSource
    DataSet = DBAlacakIBQ
    Left = 279
    Top = 365
  end
  object DBBorcIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = DBBorcIBQAfterPost
    OnNewRecord = DBBorcIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from CARIISLEM'
      'Where ISLEMTURKOD=10 AND SISTEM<>2'
      'ORDER BY TARIH, ISLEMKOD')
    UpdateObject = DBBorcUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'CARIISLEM'
    PrecommittedReads = False
    Left = 50
    Top = 429
    object DBBorcIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'CARIISLEM.ISLEMKOD'
      Required = True
    end
    object DBBorcIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'CARIISLEM.CARIKOD'
    end
    object DBBorcIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'CARIISLEM.ISLEMTUR'
      Size = 40
    end
    object DBBorcIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'CARIISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object DBBorcIBQCAISLEMNO: TIntegerField
      DisplayLabel = #304#351'lem No'
      FieldName = 'CAISLEMNO'
      Origin = 'CARIISLEM.CAISLEMNO'
    end
    object DBBorcIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'CARIISLEM.TARIH'
      EditMask = '!99/99/00;1;_'
    end
    object DBBorcIBQSAAT: TTimeField
      DisplayLabel = 'Saat'
      FieldName = 'SAAT'
      Origin = 'CARIISLEM.SAAT'
      EditMask = '!90:00;1;_'
    end
    object DBBorcIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'CARIISLEM.ACIKLAMA'
      Size = 80
    end
    object DBBorcIBQTEDIYE: TFloatField
      DisplayLabel = 'Alaca'#287#305'm'#305'z'
      FieldName = 'TEDIYE'
      Origin = 'CARIISLEM.TEDIYE'
      DisplayFormat = '###,###'
    end
    object DBBorcIBQTAHSILAT: TFloatField
      DisplayLabel = 'Borcumuz'
      FieldName = 'TAHSILAT'
      Origin = 'CARIISLEM.TAHSILAT'
      DisplayFormat = '###,###'
    end
    object DBBorcIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'CARIISLEM.BAKIYE'
      DisplayFormat = '###,###'
    end
    object DBBorcIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'CARIISLEM.DURUM'
    end
    object DBBorcIBQD_TEDIYE: TFloatField
      DisplayLabel = 'D. Alaca'#287#305'm'#305'z'
      FieldName = 'D_TEDIYE'
      Origin = 'CARIISLEM.D_TEDIYE'
      DisplayFormat = '###,###'
    end
    object DBBorcIBQD_TAHSILAT: TFloatField
      DisplayLabel = 'D. Borcumuz'
      FieldName = 'D_TAHSILAT'
      Origin = 'CARIISLEM.D_TAHSILAT'
      DisplayFormat = '###,###'
    end
    object DBBorcIBQCARIKURU: TFloatField
      DisplayLabel = 'Cari Kuru'
      FieldName = 'CARIKURU'
      Origin = 'CARIISLEM.CARIKURU'
      DisplayFormat = '###,###'
    end
    object DBBorcIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'CARIISLEM.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object DBBorcIBQKAPATMA: TIntegerField
      DisplayLabel = 'Kapatma'
      FieldName = 'KAPATMA'
      Origin = 'CARIISLEM.KAPATMA'
    end
    object DBBorcIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'CARIISLEM.CARINO'
    end
    object DBBorcIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'CARIISLEM.BAGLANTINO'
    end
    object DBBorcIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'CARIISLEM.CARIHESAPILISKI'
    end
    object DBBorcIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'CARIISLEM.PARABIRIMKOD'
    end
    object DBBorcIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'CARIISLEM.MAKBUZNO'
    end
    object DBBorcIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'CARIISLEM.KULLANKOD'
    end
    object DBBorcIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'CARIISLEM.PERSONELKOD'
    end
    object DBBorcIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'CARIISLEM.SISTEM'
    end
    object DBBorcIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'CARIISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object DBBorcIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'CARIISLEM.CARIPARABIRIMKOD'
    end
    object DBBorcIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'CARIISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object DBBorcIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'CARIISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object DBBorcIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'CARIISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object DBBorcIBQC_DURUM: TIBStringField
      DisplayLabel = 'D'
      FieldKind = fkInternalCalc
      FieldName = 'C_DURUM'
      Origin = 'CARIISLEM.C_DURUM'
      ReadOnly = True
      Size = 5
    end
    object DBBorcIBQGELGITKOD: TIntegerField
      FieldName = 'GELGITKOD'
      Origin = 'CARIISLEM.GELGITKOD'
    end
    object DBBorcIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'CARIISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
  end
  object DBBorcUSQL: TIBUpdateSQL
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
      '  C_PARABIRIMI,'
      '  CARIPARABIRIMKOD,'
      '  C_CARIPARABIRIM,'
      '  C_CARIADI,'
      '  C_PERSONEL,'
      '  SISTEM,'
      '  C_DURUM,'
      '  GELGITKOD'
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
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  SISTEM = :SISTEM,'
      '  GELGITKOD = :GELGITKOD'
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
      '   KULLANKOD, PERSONELKOD, CARIPARABIRIMKOD, SISTEM, GELGITKOD)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :ISLEMTUR, :CAISLEMNO, :TARIH, :SAAT, :A' +
        'CIKLAMA, '
      
        '   :TEDIYE, :TAHSILAT, :BAKIYE, :DURUM, :D_TEDIYE, :D_TAHSILAT, ' +
        ':CARIKURU, '
      
        '   :ISLEMKURU, :KAPATMA, :CARINO, :BAGLANTINO, :CARIHESAPILISKI,' +
        ' :PARABIRIMKOD, '
      
        '   :MAKBUZNO, :KULLANKOD, :PERSONELKOD, :CARIPARABIRIMKOD, :SIST' +
        'EM, :GELGITKOD)')
    DeleteSQL.Strings = (
      'delete from CARIISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 170
    Top = 429
  end
  object DBBorcDS: TDataSource
    DataSet = DBBorcIBQ
    Left = 279
    Top = 429
  end
end
