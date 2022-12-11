object DMProcedure: TDMProcedure
  OldCreateOrder = False
  Left = 269
  Top = 183
  Height = 328
  Width = 510
  object CeviriProc: TIBStoredProc
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    StoredProcName = 'ISLEM_CEVIRME'
    Left = 48
    Top = 16
    object CeviriProcISLEMKOD3_IN: TIntegerField
      FieldName = 'ISLEMKOD3_IN'
      Origin = 'ALISSATIS_KOPYALA.ISLEMKOD3_IN'
    end
  end
  object AlisToSatisProc: TIBStoredProc
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    StoredProcName = 'COPY_CARIISLEM_ALIS_SATISA'
    Left = 48
    Top = 80
  end
  object Silme_Kontrol_Proc: TIBStoredProc
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    StoredProcName = 'SILME_KONTROL'
    Left = 48
    Top = 160
  end
  object TumunuStokKaydetProc: TIBStoredProc
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    StoredProcName = 'TUMUNU_STOKA_KAYDET'
    Left = 176
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD_IN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ISLEMADI'
        ParamType = ptInput
      end>
  end
  object TumuStokSilProc: TIBStoredProc
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    StoredProcName = 'TUMUNU_STOKTAN_SIL'
    Left = 176
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD_IN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ISLEMADI'
        ParamType = ptInput
      end>
  end
  object AlisSatisKapatmaProc: TIBStoredProc
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    StoredProcName = 'ALISSATIS_KAPATMA'
    Left = 168
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CARIKOD_IN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ISLEMTURKOD_IN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'GIRISLEMKOD_IN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TUTAR_IN'
        ParamType = ptInput
      end>
  end
  object KayitSilProc: TIBStoredProc
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    StoredProcName = 'HAFIZA_SILME'
    Left = 312
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'ISLEMTUR_IN'
        ParamType = ptInput
      end>
  end
end
