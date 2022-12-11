object DMRCari: TDMRCari
  OldCreateOrder = False
  Left = 264
  Top = 159
  Height = 353
  Width = 593
  object AlacaklarimizIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CARIKART'
      'Where Bakiye>=1 and Durum='#39'Bor'#231'lu'#39)
    GeneratorField.Field = 'CARIKOD'
    GeneratorField.Generator = 'CARIKART'
    Left = 48
    Top = 16
    object AlacaklarimizIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'CARIKART.CARIKOD'
      Required = True
    end
    object AlacaklarimizIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'CARIKART.CARINO'
    end
    object AlacaklarimizIBQKOD: TIBStringField
      DisplayLabel = 'Kod'
      FieldName = 'KOD'
      Origin = 'CARIKART.KOD'
      Size = 30
    end
    object AlacaklarimizIBQCARIUNVAN1: TIBStringField
      DisplayLabel = 'Ad'#305' (Unvan'#305')'
      FieldName = 'CARIUNVAN1'
      Origin = 'CARIKART.CARIUNVAN1'
      Size = 80
    end
    object AlacaklarimizIBQCARIUNVAN2: TIBStringField
      DisplayLabel = 'Soyad'#305
      FieldName = 'CARIUNVAN2'
      Origin = 'CARIKART.CARIUNVAN2'
    end
    object AlacaklarimizIBQTAMADI: TIBStringField
      DisplayLabel = 'Unvan'#305' ( Soyad'#305' Ad'#305')'
      FieldName = 'TAMADI'
      Origin = 'CARIKART.TAMADI'
      Size = 60
    end
    object AlacaklarimizIBQACIKLAMA: TMemoField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'CARIKART.ACIKLAMA'
      BlobType = ftMemo
      Size = 8
    end
    object AlacaklarimizIBQCARITIPKOD: TIBStringField
      FieldName = 'CARITIPKOD'
      Origin = 'CARIKART.CARITIPKOD'
    end
    object AlacaklarimizIBQSEKTORKOD: TIBStringField
      FieldName = 'SEKTORKOD'
      Origin = 'CARIKART.SEKTORKOD'
      Size = 40
    end
    object AlacaklarimizIBQTEL1: TIBStringField
      DisplayLabel = 'Telefon 1'
      FieldName = 'TEL1'
      Origin = 'CARIKART.TEL1'
      Size = 17
    end
    object AlacaklarimizIBQTEL2: TIBStringField
      DisplayLabel = 'Telefon 2'
      FieldName = 'TEL2'
      Origin = 'CARIKART.TEL2'
      Size = 17
    end
    object AlacaklarimizIBQTEL3: TIBStringField
      DisplayLabel = 'Telefon 3'
      FieldName = 'TEL3'
      Origin = 'CARIKART.TEL3'
      Size = 17
    end
    object AlacaklarimizIBQFAKS: TIBStringField
      DisplayLabel = 'Faks'
      FieldName = 'FAKS'
      Origin = 'CARIKART.FAKS'
      Size = 17
    end
    object AlacaklarimizIBQGSM: TIBStringField
      DisplayLabel = 'Gsm'
      FieldName = 'GSM'
      Origin = 'CARIKART.GSM'
      Size = 17
    end
    object AlacaklarimizIBQMAHALLE: TIBStringField
      DisplayLabel = 'Mahalle'
      FieldName = 'MAHALLE'
      Origin = 'CARIKART.MAHALLE'
      Size = 40
    end
    object AlacaklarimizIBQCADDE: TIBStringField
      DisplayLabel = 'Cadde'
      FieldName = 'CADDE'
      Origin = 'CARIKART.CADDE'
      Size = 40
    end
    object AlacaklarimizIBQSOKAK: TIBStringField
      DisplayLabel = 'Sokak'
      FieldName = 'SOKAK'
      Origin = 'CARIKART.SOKAK'
      Size = 40
    end
    object AlacaklarimizIBQAPARTMAN: TIBStringField
      DisplayLabel = 'Apartman'
      FieldName = 'APARTMAN'
      Origin = 'CARIKART.APARTMAN'
      Size = 40
    end
    object AlacaklarimizIBQNOSU: TIBStringField
      DisplayLabel = 'Nosu'
      FieldName = 'NOSU'
      Origin = 'CARIKART.NOSU'
    end
    object AlacaklarimizIBQILCEKOD: TIntegerField
      FieldName = 'ILCEKOD'
      Origin = 'CARIKART.ILCEKOD'
    end
    object AlacaklarimizIBQSEHIRKOD: TIntegerField
      FieldName = 'SEHIRKOD'
      Origin = 'CARIKART.SEHIRKOD'
    end
    object AlacaklarimizIBQVERDAIRE: TIBStringField
      DisplayLabel = 'Vergi Dairesi'
      FieldName = 'VERDAIRE'
      Origin = 'CARIKART.VERDAIRE'
      Size = 25
    end
    object AlacaklarimizIBQVERGINO: TIBStringField
      DisplayLabel = 'Vergi No'
      FieldName = 'VERGINO'
      Origin = 'CARIKART.VERGINO'
      Size = 25
    end
    object AlacaklarimizIBQAKTIVITE: TIntegerField
      DisplayLabel = 'Aktif'
      FieldName = 'AKTIVITE'
      Origin = 'CARIKART.AKTIVITE'
    end
    object AlacaklarimizIBQBLOKE: TIntegerField
      DisplayLabel = 'Bloke'
      FieldName = 'BLOKE'
      Origin = 'CARIKART.BLOKE'
    end
    object AlacaklarimizIBQKREDILIMIT: TFloatField
      DisplayLabel = 'Kredi Limiti'
      FieldName = 'KREDILIMIT'
      Origin = 'CARIKART.KREDILIMIT'
      DisplayFormat = '###,###'
    end
    object AlacaklarimizIBQRISKLIMIT: TFloatField
      DisplayLabel = 'Risk Limiti'
      FieldName = 'RISKLIMIT'
      Origin = 'CARIKART.RISKLIMIT'
      DisplayFormat = '###,###'
    end
    object AlacaklarimizIBQFIYATSECIM: TIntegerField
      DisplayLabel = 'Fiyat Se'#231'imi'
      FieldName = 'FIYATSECIM'
      Origin = 'CARIKART.FIYATSECIM'
    end
    object AlacaklarimizIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'CARIKART.PARABIRIMKOD'
    end
    object AlacaklarimizIBQMAIL: TIBStringField
      DisplayLabel = 'Mail'
      FieldName = 'MAIL'
      Origin = 'CARIKART.MAIL'
      Size = 50
    end
    object AlacaklarimizIBQWEB: TIBStringField
      DisplayLabel = 'Web'
      FieldName = 'WEB'
      Origin = 'CARIKART.WEB'
      Size = 50
    end
    object AlacaklarimizIBQKEFILKOD: TIntegerField
      FieldName = 'KEFILKOD'
      Origin = 'CARIKART.KEFILKOD'
    end
    object AlacaklarimizIBQUYARI: TIntegerField
      FieldName = 'UYARI'
      Origin = 'CARIKART.UYARI'
    end
    object AlacaklarimizIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'CARIKART.BAKIYE'
      DisplayFormat = '###,###'
    end
    object AlacaklarimizIBQDURUM: TIBStringField
      DisplayLabel = 'Durum'
      FieldName = 'DURUM'
      Origin = 'CARIKART.DURUM'
      Size = 10
    end
    object AlacaklarimizIBQMESAJ: TMemoField
      FieldName = 'MESAJ'
      Origin = 'CARIKART.MESAJ'
      BlobType = ftMemo
      Size = 8
    end
    object AlacaklarimizIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'CARIKART.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object AlacaklarimizIBQYETKILI: TIBStringField
      DisplayLabel = 'Yetkili'
      FieldName = 'YETKILI'
      Origin = 'CARIKART.YETKILI'
      Size = 50
    end
    object AlacaklarimizIBQISTIHBARAT: TMemoField
      FieldName = 'ISTIHBARAT'
      Origin = 'CARIKART.ISTIHBARAT'
      BlobType = ftMemo
      Size = 8
    end
    object AlacaklarimizIBQC_ILCEADI: TIBStringField
      DisplayLabel = #304'l'#231'e'
      FieldKind = fkInternalCalc
      FieldName = 'C_ILCEADI'
      Origin = 'CARIKART.C_ILCEADI'
      ReadOnly = True
      Size = 25
    end
    object AlacaklarimizIBQC_SEHIRADI: TIBStringField
      DisplayLabel = #304'l'
      FieldKind = fkInternalCalc
      FieldName = 'C_SEHIRADI'
      Origin = 'CARIKART.C_SEHIRADI'
      ReadOnly = True
      Size = 25
    end
    object AlacaklarimizIBQSECIM: TIntegerField
      FieldName = 'SECIM'
      Origin = 'CARIKART.SECIM'
    end
  end
  object AlacaklarimizDS: TDataSource
    DataSet = AlacaklarimizIBQ
    Left = 160
    Top = 16
  end
  object BorclarimizIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CARIKART'
      'Where Bakiye>=1 and Durum='#39'Alacakl'#305#39)
    GeneratorField.Field = 'CARIKOD'
    GeneratorField.Generator = 'CARIKART'
    Left = 48
    Top = 72
    object BorclarimizIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'CARIKART.CARIKOD'
      Required = True
    end
    object BorclarimizIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'CARIKART.CARINO'
    end
    object BorclarimizIBQKOD: TIBStringField
      DisplayLabel = 'Kod'
      FieldName = 'KOD'
      Origin = 'CARIKART.KOD'
      Size = 30
    end
    object BorclarimizIBQCARIUNVAN1: TIBStringField
      DisplayLabel = 'Ad'#305' (Unvan'#305')'
      FieldName = 'CARIUNVAN1'
      Origin = 'CARIKART.CARIUNVAN1'
      Size = 80
    end
    object BorclarimizIBQCARIUNVAN2: TIBStringField
      DisplayLabel = 'Soyad'#305
      FieldName = 'CARIUNVAN2'
      Origin = 'CARIKART.CARIUNVAN2'
    end
    object BorclarimizIBQTAMADI: TIBStringField
      DisplayLabel = 'Unvan'#305' ( Soyad'#305' Ad'#305')'
      FieldName = 'TAMADI'
      Origin = 'CARIKART.TAMADI'
      Size = 60
    end
    object BorclarimizIBQACIKLAMA: TMemoField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'CARIKART.ACIKLAMA'
      BlobType = ftMemo
      Size = 8
    end
    object BorclarimizIBQCARITIPKOD: TIBStringField
      FieldName = 'CARITIPKOD'
      Origin = 'CARIKART.CARITIPKOD'
    end
    object BorclarimizIBQSEKTORKOD: TIBStringField
      FieldName = 'SEKTORKOD'
      Origin = 'CARIKART.SEKTORKOD'
      Size = 40
    end
    object BorclarimizIBQTEL1: TIBStringField
      DisplayLabel = 'Telefon 1'
      FieldName = 'TEL1'
      Origin = 'CARIKART.TEL1'
      Size = 17
    end
    object BorclarimizIBQTEL2: TIBStringField
      DisplayLabel = 'Telefon 2'
      FieldName = 'TEL2'
      Origin = 'CARIKART.TEL2'
      Size = 17
    end
    object BorclarimizIBQTEL3: TIBStringField
      DisplayLabel = 'Telefon 3'
      FieldName = 'TEL3'
      Origin = 'CARIKART.TEL3'
      Size = 17
    end
    object BorclarimizIBQFAKS: TIBStringField
      DisplayLabel = 'Faks'
      FieldName = 'FAKS'
      Origin = 'CARIKART.FAKS'
      Size = 17
    end
    object BorclarimizIBQGSM: TIBStringField
      DisplayLabel = 'Gsm'
      FieldName = 'GSM'
      Origin = 'CARIKART.GSM'
      Size = 17
    end
    object BorclarimizIBQMAHALLE: TIBStringField
      DisplayLabel = 'Mahalle'
      FieldName = 'MAHALLE'
      Origin = 'CARIKART.MAHALLE'
      Size = 40
    end
    object BorclarimizIBQCADDE: TIBStringField
      DisplayLabel = 'Cadde'
      FieldName = 'CADDE'
      Origin = 'CARIKART.CADDE'
      Size = 40
    end
    object BorclarimizIBQSOKAK: TIBStringField
      DisplayLabel = 'Sokak'
      FieldName = 'SOKAK'
      Origin = 'CARIKART.SOKAK'
      Size = 40
    end
    object BorclarimizIBQAPARTMAN: TIBStringField
      DisplayLabel = 'Apartman'
      FieldName = 'APARTMAN'
      Origin = 'CARIKART.APARTMAN'
      Size = 40
    end
    object BorclarimizIBQNOSU: TIBStringField
      DisplayLabel = 'Nosu'
      FieldName = 'NOSU'
      Origin = 'CARIKART.NOSU'
    end
    object BorclarimizIBQILCEKOD: TIntegerField
      FieldName = 'ILCEKOD'
      Origin = 'CARIKART.ILCEKOD'
    end
    object BorclarimizIBQSEHIRKOD: TIntegerField
      FieldName = 'SEHIRKOD'
      Origin = 'CARIKART.SEHIRKOD'
    end
    object BorclarimizIBQVERDAIRE: TIBStringField
      DisplayLabel = 'Vergi Dairesi'
      FieldName = 'VERDAIRE'
      Origin = 'CARIKART.VERDAIRE'
      Size = 25
    end
    object BorclarimizIBQVERGINO: TIBStringField
      DisplayLabel = 'Vergi No'
      FieldName = 'VERGINO'
      Origin = 'CARIKART.VERGINO'
      Size = 25
    end
    object BorclarimizIBQAKTIVITE: TIntegerField
      DisplayLabel = 'Aktif'
      FieldName = 'AKTIVITE'
      Origin = 'CARIKART.AKTIVITE'
    end
    object BorclarimizIBQBLOKE: TIntegerField
      DisplayLabel = 'Bloke'
      FieldName = 'BLOKE'
      Origin = 'CARIKART.BLOKE'
    end
    object BorclarimizIBQKREDILIMIT: TFloatField
      DisplayLabel = 'Kredi Limiti'
      FieldName = 'KREDILIMIT'
      Origin = 'CARIKART.KREDILIMIT'
      DisplayFormat = '###,###'
    end
    object BorclarimizIBQRISKLIMIT: TFloatField
      DisplayLabel = 'Risk Limiti'
      FieldName = 'RISKLIMIT'
      Origin = 'CARIKART.RISKLIMIT'
      DisplayFormat = '###,###'
    end
    object BorclarimizIBQFIYATSECIM: TIntegerField
      DisplayLabel = 'Fiyat Se'#231'imi'
      FieldName = 'FIYATSECIM'
      Origin = 'CARIKART.FIYATSECIM'
    end
    object BorclarimizIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'CARIKART.PARABIRIMKOD'
    end
    object BorclarimizIBQMAIL: TIBStringField
      DisplayLabel = 'Mail'
      FieldName = 'MAIL'
      Origin = 'CARIKART.MAIL'
      Size = 50
    end
    object BorclarimizIBQWEB: TIBStringField
      DisplayLabel = 'Web'
      FieldName = 'WEB'
      Origin = 'CARIKART.WEB'
      Size = 50
    end
    object BorclarimizIBQKEFILKOD: TIntegerField
      FieldName = 'KEFILKOD'
      Origin = 'CARIKART.KEFILKOD'
    end
    object BorclarimizIBQUYARI: TIntegerField
      FieldName = 'UYARI'
      Origin = 'CARIKART.UYARI'
    end
    object BorclarimizIBQBAKIYE: TFloatField
      DisplayLabel = 'Bakiye'
      FieldName = 'BAKIYE'
      Origin = 'CARIKART.BAKIYE'
      DisplayFormat = '###,###'
    end
    object BorclarimizIBQDURUM: TIBStringField
      DisplayLabel = 'Durum'
      FieldName = 'DURUM'
      Origin = 'CARIKART.DURUM'
      Size = 10
    end
    object BorclarimizIBQMESAJ: TMemoField
      FieldName = 'MESAJ'
      Origin = 'CARIKART.MESAJ'
      BlobType = ftMemo
      Size = 8
    end
    object BorclarimizIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'CARIKART.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object BorclarimizIBQYETKILI: TIBStringField
      DisplayLabel = 'Yetkili'
      FieldName = 'YETKILI'
      Origin = 'CARIKART.YETKILI'
      Size = 50
    end
    object BorclarimizIBQISTIHBARAT: TMemoField
      FieldName = 'ISTIHBARAT'
      Origin = 'CARIKART.ISTIHBARAT'
      BlobType = ftMemo
      Size = 8
    end
    object BorclarimizIBQC_ILCEADI: TIBStringField
      DisplayLabel = #304'l'#231'e'
      FieldKind = fkInternalCalc
      FieldName = 'C_ILCEADI'
      Origin = 'CARIKART.C_ILCEADI'
      ReadOnly = True
      Size = 25
    end
    object BorclarimizIBQC_SEHIRADI: TIBStringField
      DisplayLabel = #304'l'
      FieldKind = fkInternalCalc
      FieldName = 'C_SEHIRADI'
      Origin = 'CARIKART.C_SEHIRADI'
      ReadOnly = True
      Size = 25
    end
    object BorclarimizIBQSECIM: TIntegerField
      FieldName = 'SECIM'
      Origin = 'CARIKART.SECIM'
    end
  end
  object BorclarimizDS: TDataSource
    DataSet = BorclarimizIBQ
    Left = 160
    Top = 72
  end
  object AlacakAltTopProc: TIBStoredProc
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    StoredProcName = 'CARIKART_BAKIYE_TOPLAM'
    Left = 272
    Top = 16
    ParamData = <
      item
        DataType = ftFloat
        Name = 'TOPLAM_OUT'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'ISLEMTURU_IN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARABIRKOD_IN'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'TARIH_IN'
        ParamType = ptInput
      end>
  end
end
