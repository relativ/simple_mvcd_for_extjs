object DMCek: TDMCek
  OldCreateOrder = False
  Left = 191
  Top = 114
  Height = 597
  Width = 681
  object CeklerIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CEKBODRO'
      'Where  ISLEMTURKOD = 11 AND SISTEM<>2 AND KAPATMA =1')
    UpdateObject = CeklerUSQL
    Left = 336
    Top = 16
    object CeklerIBQCEKBODROKOD: TIntegerField
      FieldName = 'CEKBODROKOD'
      Origin = 'CEKBODRO.CEKBODROKOD'
      Required = True
    end
    object CeklerIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'CEKBODRO.ISLEMKOD'
    end
    object CeklerIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'CEKBODRO.CARIKOD'
    end
    object CeklerIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'CEKBODRO.CARINO'
    end
    object CeklerIBQSIRA: TIntegerField
      DisplayLabel = #199'ek No'
      FieldName = 'SIRA'
      Origin = 'CEKBODRO.SIRA'
    end
    object CeklerIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'CEKBODRO.ACIKLAMA'
      Size = 80
    end
    object CeklerIBQTEDIYE: TFloatField
      DisplayLabel = 'TL '#199'ek '#199#305'k'#305#351#305
      FieldName = 'TEDIYE'
      Origin = 'CEKBODRO.TEDIYE'
      EditFormat = '###.###'
    end
    object CeklerIBQTAHSILAT: TFloatField
      DisplayLabel = 'TL '#199'ek Giri'#351'i'
      FieldName = 'TAHSILAT'
      Origin = 'CEKBODRO.TAHSILAT'
      EditFormat = '###.###'
    end
    object CeklerIBQD_TEDIYE: TFloatField
      DisplayLabel = #199'ek '#199#305'k'#305#351#305
      FieldName = 'D_TEDIYE'
      Origin = 'CEKBODRO.D_TEDIYE'
      EditFormat = '###.###'
    end
    object CeklerIBQD_TAHSILAT: TFloatField
      DisplayLabel = #199'ek Giri'#351'i'
      FieldName = 'D_TAHSILAT'
      Origin = 'CEKBODRO.D_TAHSILAT'
      EditFormat = '###.###'
    end
    object CeklerIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'CEKBODRO.ISLEMKURU'
      EditFormat = '###.###'
    end
    object CeklerIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'CEKBODRO.VADE'
      EditMask = '!99/99/00;1;_'
    end
    object CeklerIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'CEKBODRO.BANKAKOD'
    end
    object CeklerIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'CEKBODRO.PARABIRIMKOD'
    end
    object CeklerIBQBANKA: TIBStringField
      DisplayLabel = 'Banka'
      FieldName = 'BANKA'
      Origin = 'CEKBODRO.BANKA'
      Size = 30
    end
    object CeklerIBQKESIDEYERI: TIBStringField
      DisplayLabel = 'Ke'#351'ide Yeri'
      FieldName = 'KESIDEYERI'
      Origin = 'CEKBODRO.KESIDEYERI'
      Size = 30
    end
    object CeklerIBQILKCIRO: TIBStringField
      DisplayLabel = #304'lk Ciro'
      FieldName = 'ILKCIRO'
      Origin = 'CEKBODRO.ILKCIRO'
      Size = 30
    end
    object CeklerIBQCEKSERINO: TIBStringField
      DisplayLabel = #199'ek Seri No'
      FieldName = 'CEKSERINO'
      Origin = 'CEKBODRO.CEKSERINO'
    end
    object CeklerIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'CEKBODRO.KULLANKOD'
    end
    object CeklerIBQEVRAKDURUMU: TIntegerField
      DisplayLabel = #199'ek Durumu'
      FieldName = 'EVRAKDURUMU'
      Origin = 'CEKBODRO.EVRAKDURUMU'
    end
    object CeklerIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'CEKBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object CeklerIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'CEKBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object CeklerIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'CEKBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object CeklerIBQC_BANKAADI: TIBStringField
      DisplayLabel = 'Banka Hesap'
      FieldKind = fkInternalCalc
      FieldName = 'C_BANKAADI'
      Origin = 'CEKBODRO.C_BANKAADI'
      ReadOnly = True
      Size = 30
    end
    object CeklerIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'CEKBODRO.KAPATMA'
    end
    object CeklerIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'CEKBODRO.SISTEM'
    end
    object CeklerIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'CEKBODRO.PERSONELKOD'
    end
    object CeklerIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'CEKBODRO.ISLEMTUR'
      Size = 10
    end
    object CeklerIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'CEKBODRO.ISLEMTURKOD'
      ReadOnly = True
    end
    object CeklerIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'CEKBODRO.BAGLANTINO'
    end
    object CeklerIBQODENEN: TFloatField
      DisplayLabel = #214'denen'
      FieldName = 'ODENEN'
      Origin = 'CEKBODRO.ODENEN'
      EditFormat = '###.###'
    end
    object CeklerIBQTAHSILEDILEN: TFloatField
      DisplayLabel = 'Tahsil Edilen'
      FieldName = 'TAHSILEDILEN'
      Origin = 'CEKBODRO.TAHSILEDILEN'
      EditFormat = '###.###'
    end
    object CeklerIBQKALAN: TFloatField
      DisplayLabel = 'Kalan'
      FieldName = 'KALAN'
      Origin = 'CEKBODRO.KALAN'
      EditFormat = '###.###'
    end
  end
  object CekGirisIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterEdit = CekGirisIBQAfterEdit
    AfterPost = CekGirisIBQAfterPost
    OnNewRecord = CekGirisIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CEKISLEM'
      'Where ISLEMTURKOD=11 and SISTEM<>2')
    UpdateObject = CekGirisUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'CEKISLEM'
    Left = 40
    Top = 16
    object CekGirisIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'CEKISLEM.ISLEMKOD'
      Required = True
    end
    object CekGirisIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'CEKISLEM.CARIKOD'
    end
    object CekGirisIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'CEKISLEM.ISLEMTUR'
      Size = 40
    end
    object CekGirisIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'CEKISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object CekGirisIBQCEKISLEMNO: TIntegerField
      FieldName = 'CEKISLEMNO'
      Origin = 'CEKISLEM.CEKISLEMNO'
    end
    object CekGirisIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'CEKISLEM.TARIH'
    end
    object CekGirisIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'CEKISLEM.SAAT'
    end
    object CekGirisIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'CEKISLEM.ACIKLAMA'
      Size = 80
    end
    object CekGirisIBQTEDIYE: TFloatField
      FieldName = 'TEDIYE'
      Origin = 'CEKISLEM.TEDIYE'
    end
    object CekGirisIBQTAHSILAT: TFloatField
      FieldName = 'TAHSILAT'
      Origin = 'CEKISLEM.TAHSILAT'
    end
    object CekGirisIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'CEKISLEM.D_TEDIYE'
    end
    object CekGirisIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'CEKISLEM.D_TAHSILAT'
    end
    object CekGirisIBQCARIKURU: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'CEKISLEM.CARIKURU'
    end
    object CekGirisIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'CEKISLEM.ISLEMKURU'
    end
    object CekGirisIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'CEKISLEM.CARINO'
    end
    object CekGirisIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'CEKISLEM.GELGITKOD'
      Size = 80
    end
    object CekGirisIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'CEKISLEM.KASAKOD'
    end
    object CekGirisIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'CEKISLEM.BAGLANTINO'
    end
    object CekGirisIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'CEKISLEM.BANKAKOD'
    end
    object CekGirisIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'CEKISLEM.PARABIRIMKOD'
    end
    object CekGirisIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'CEKISLEM.KULLANKOD'
    end
    object CekGirisIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'CEKISLEM.CARIPARABIRIMKOD'
    end
    object CekGirisIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'CEKISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object CekGirisIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'CEKISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object CekGirisIBQC_KASAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KASAADI'
      Origin = 'CEKISLEM.C_KASAADI'
      ReadOnly = True
      Size = 25
    end
    object CekGirisIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'CEKISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object CekGirisIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'CEKISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object CekGirisIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'CEKISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object CekGirisIBQC_BANKAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_BANKAADI'
      Origin = 'CEKISLEM.C_BANKAADI'
      ReadOnly = True
      Size = 30
    end
    object CekGirisIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'CEKISLEM.KAPATMA'
    end
    object CekGirisIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'CEKISLEM.SISTEM'
    end
    object CekGirisIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'CEKISLEM.PERSONELKOD'
    end
    object CekGirisIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'CEKISLEM.MAKBUZNO'
    end
    object CekGirisIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'CEKISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object CekGirisIBQC_CARITAHSILAT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARITAHSILAT'
      Origin = 'CEKISLEM.C_CARITAHSILAT'
      ReadOnly = True
    end
    object CekGirisIBQC_CARITEDIYE: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARITEDIYE'
      Origin = 'CEKISLEM.C_CARITEDIYE'
      ReadOnly = True
    end
  end
  object CekGirisUSQL: TIBUpdateSQL
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
        ' '
      'TAHSILAT, '
      
        '   D_TEDIYE, D_TAHSILAT, BANKAKOD, KASAKOD, MAKBUZNO, KULLANKOD,' +
        ' '
      'CARIKURU, '
      
        '   ISLEMKURU, PARABIRIMKOD, PERSONELKOD, BAGLANTINO, CEKISLEMNO,' +
        ' '
      'SAAT, '
      '   GELGITKOD, CARIPARABIRIMKOD, KAPATMA, SISTEM)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :CARINO, :ISLEMTUR, :TARIH, :ACIKLAMA, :' +
        'TEDIYE, '
      
        '   :TAHSILAT, :D_TEDIYE, :D_TAHSILAT, :BANKAKOD, :KASAKOD, :MAKB' +
        'UZNO, '
      ':KULLANKOD, '
      
        '   :CARIKURU, :ISLEMKURU, :PARABIRIMKOD, :PERSONELKOD, :BAGLANTI' +
        'NO, '
      ':CEKISLEMNO, '
      '   :SAAT, :GELGITKOD, :CARIPARABIRIMKOD, :KAPATMA, :SISTEM)')
    DeleteSQL.Strings = (
      'delete from CEKISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 139
    Top = 16
  end
  object CekGirisDS: TDataSource
    DataSet = CekGirisIBQ
    Left = 231
    Top = 16
  end
  object CGBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterEdit = CGBodroIBQAfterEdit
    AfterPost = CGBodroIBQAfterPost
    OnNewRecord = CGBodroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = CekGirisDS
    SQL.Strings = (
      'select * from CEKBODRO'
      'Where ISLEMKOD=:ISLEMKOD')
    UpdateObject = CGBodroUSQL
    GeneratorField.Field = 'CEKBODROKOD'
    GeneratorField.Generator = 'CEKBODRO'
    Left = 40
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object CGBodroIBQCEKBODROKOD: TIntegerField
      FieldName = 'CEKBODROKOD'
      Origin = 'CEKBODRO.CEKBODROKOD'
      Required = True
    end
    object CGBodroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'CEKBODRO.ISLEMKOD'
    end
    object CGBodroIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'CEKBODRO.CARIKOD'
    end
    object CGBodroIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'CEKBODRO.CARINO'
    end
    object CGBodroIBQSIRA: TIntegerField
      DisplayLabel = #199'ek No'
      FieldName = 'SIRA'
      Origin = 'CEKBODRO.SIRA'
    end
    object CGBodroIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'CEKBODRO.ACIKLAMA'
      Size = 80
    end
    object CGBodroIBQTEDIYE: TFloatField
      DisplayLabel = 'TL '#199'ek '#199#305'k'#305#351#305
      FieldName = 'TEDIYE'
      Origin = 'CEKBODRO.TEDIYE'
      EditFormat = '###.###'
    end
    object CGBodroIBQTAHSILAT: TFloatField
      DisplayLabel = 'TL '#199'ek Giri'#351'i'
      FieldName = 'TAHSILAT'
      Origin = 'CEKBODRO.TAHSILAT'
      EditFormat = '###.###'
    end
    object CGBodroIBQD_TEDIYE: TFloatField
      DisplayLabel = #199'ek '#199#305'k'#305#351#305
      FieldName = 'D_TEDIYE'
      Origin = 'CEKBODRO.D_TEDIYE'
      EditFormat = '###.###'
    end
    object CGBodroIBQD_TAHSILAT: TFloatField
      DisplayLabel = #199'ek Giri'#351'i'
      FieldName = 'D_TAHSILAT'
      Origin = 'CEKBODRO.D_TAHSILAT'
      EditFormat = '###.###'
    end
    object CGBodroIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'CEKBODRO.ISLEMKURU'
      EditFormat = '###.###'
    end
    object CGBodroIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'CEKBODRO.VADE'
      EditMask = '!99/99/00;1;_'
    end
    object CGBodroIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'CEKBODRO.BANKAKOD'
    end
    object CGBodroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'CEKBODRO.PARABIRIMKOD'
    end
    object CGBodroIBQBANKA: TIBStringField
      DisplayLabel = 'Banka'
      FieldName = 'BANKA'
      Origin = 'CEKBODRO.BANKA'
      Size = 30
    end
    object CGBodroIBQKESIDEYERI: TIBStringField
      DisplayLabel = 'Ke'#351'ide Yeri'
      FieldName = 'KESIDEYERI'
      Origin = 'CEKBODRO.KESIDEYERI'
      Size = 30
    end
    object CGBodroIBQILKCIRO: TIBStringField
      DisplayLabel = #304'lk Ciro'
      FieldName = 'ILKCIRO'
      Origin = 'CEKBODRO.ILKCIRO'
      Size = 30
    end
    object CGBodroIBQCEKSERINO: TIBStringField
      DisplayLabel = #199'ek Seri No'
      FieldName = 'CEKSERINO'
      Origin = 'CEKBODRO.CEKSERINO'
    end
    object CGBodroIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'CEKBODRO.KULLANKOD'
    end
    object CGBodroIBQEVRAKDURUMU: TIntegerField
      DisplayLabel = #199'ek Durumu'
      FieldName = 'EVRAKDURUMU'
      Origin = 'CEKBODRO.EVRAKDURUMU'
    end
    object CGBodroIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'CEKBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object CGBodroIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'CEKBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object CGBodroIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'CEKBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object CGBodroIBQC_BANKAADI: TIBStringField
      DisplayLabel = 'Banka Hesap'
      FieldKind = fkInternalCalc
      FieldName = 'C_BANKAADI'
      Origin = 'CEKBODRO.C_BANKAADI'
      ReadOnly = True
      Size = 30
    end
    object CGBodroIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'CEKBODRO.KAPATMA'
    end
    object CGBodroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'CEKBODRO.SISTEM'
    end
    object CGBodroIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'CEKBODRO.PERSONELKOD'
    end
    object CGBodroIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'CEKBODRO.ISLEMTUR'
      Size = 10
    end
    object CGBodroIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'CEKBODRO.ISLEMTURKOD'
      ReadOnly = True
    end
    object CGBodroIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'CEKBODRO.BAGLANTINO'
    end
    object CGBodroIBQODENEN: TFloatField
      DisplayLabel = #214'denen'
      FieldName = 'ODENEN'
      Origin = 'CEKBODRO.ODENEN'
      EditFormat = '###.###'
    end
    object CGBodroIBQTAHSILEDILEN: TFloatField
      DisplayLabel = 'Tahsil Edilen'
      FieldName = 'TAHSILEDILEN'
      Origin = 'CEKBODRO.TAHSILEDILEN'
      EditFormat = '###.###'
    end
    object CGBodroIBQKALAN: TFloatField
      DisplayLabel = 'Kalan'
      FieldName = 'KALAN'
      Origin = 'CEKBODRO.KALAN'
      EditFormat = '###.###'
    end
  end
  object CGBodroUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CEKBODROKOD,'
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  CARINO,'
      '  SIRA,'
      '  ACIKLAMA,'
      '  TEDIYE,'
      '  TAHSILAT,'
      '  D_TEDIYE,'
      '  D_TAHSILAT,'
      '  ISLEMKURU,'
      '  VADE,'
      '  BANKAKOD,'
      '  PARABIRIMKOD,'
      '  BANKA,'
      '  KESIDEYERI,'
      '  ILKCIRO,'
      '  CEKSERINO,'
      '  KULLANKOD,'
      '  EVRAKDURUMU,'
      '  C_PARABIRIMI,'
      '  C_CARIADI,'
      '  C_KULLANICIADI,'
      '  C_BANKAADI,'
      '  KAPATMA,'
      '  SISTEM,'
      '  PERSONELKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  BAGLANTINO,'
      '  ODENEN,'
      '  TAHSILEDILEN,'
      '  KALAN'
      'from CEKBODRO '
      'where'
      '  CEKBODROKOD = :CEKBODROKOD')
    ModifySQL.Strings = (
      'update CEKBODRO'
      'set'
      '  CEKBODROKOD = :CEKBODROKOD,'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  CARINO = :CARINO,'
      '  SIRA = :SIRA,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  TEDIYE = :TEDIYE,'
      '  TAHSILAT = :TAHSILAT,'
      '  D_TEDIYE = :D_TEDIYE,'
      '  D_TAHSILAT = :D_TAHSILAT,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  VADE = :VADE,'
      '  BANKAKOD = :BANKAKOD,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  BANKA = :BANKA,'
      '  KESIDEYERI = :KESIDEYERI,'
      '  ILKCIRO = :ILKCIRO,'
      '  CEKSERINO = :CEKSERINO,'
      '  KULLANKOD = :KULLANKOD,'
      '  EVRAKDURUMU = :EVRAKDURUMU,'
      '  KAPATMA = :KAPATMA,'
      '  SISTEM = :SISTEM,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  ODENEN = :ODENEN,'
      '  TAHSILEDILEN = :TAHSILEDILEN,'
      '  KALAN = :KALAN'
      'where'
      '  CEKBODROKOD = :OLD_CEKBODROKOD')
    InsertSQL.Strings = (
      'insert into CEKBODRO'
      
        '  (CEKBODROKOD, ISLEMKOD, CARIKOD, CARINO, SIRA, ACIKLAMA, TEDIY' +
        'E, TAHSILAT, '
      
        '   D_TEDIYE, D_TAHSILAT, ISLEMKURU, VADE, BANKAKOD, PARABIRIMKOD' +
        ', BANKA, '
      
        '   KESIDEYERI, ILKCIRO, CEKSERINO, KULLANKOD, EVRAKDURUMU, KAPAT' +
        'MA, SISTEM, '
      
        '   PERSONELKOD, ISLEMTUR, BAGLANTINO, ODENEN, TAHSILEDILEN, KALA' +
        'N)'
      'values'
      
        '  (:CEKBODROKOD, :ISLEMKOD, :CARIKOD, :CARINO, :SIRA, :ACIKLAMA,' +
        ' :TEDIYE, '
      
        '   :TAHSILAT, :D_TEDIYE, :D_TAHSILAT, :ISLEMKURU, :VADE, :BANKAK' +
        'OD, :PARABIRIMKOD, '
      
        '   :BANKA, :KESIDEYERI, :ILKCIRO, :CEKSERINO, :KULLANKOD, :EVRAK' +
        'DURUMU, '
      
        '   :KAPATMA, :SISTEM, :PERSONELKOD, :ISLEMTUR, :BAGLANTINO, :ODE' +
        'NEN, :TAHSILEDILEN, '
      '   :KALAN)')
    DeleteSQL.Strings = (
      'delete from CEKBODRO'
      'where'
      '  CEKBODROKOD = :OLD_CEKBODROKOD')
    Left = 139
    Top = 72
  end
  object CGBodroDS: TDataSource
    DataSet = CGBodroIBQ
    Left = 231
    Top = 72
  end
  object CekYazmaIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterEdit = CekYazmaIBQAfterEdit
    AfterPost = CekyazmaIBQAfterPost
    OnNewRecord = CekyazmaIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CEKISLEM'
      'Where ISLEMTURKOD=12 and SISTEM<>2')
    UpdateObject = CekYazmaUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'CEKISLEM'
    Left = 40
    Top = 120
    object CekYazmaIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'CEKISLEM.ISLEMKOD'
      Required = True
    end
    object CekYazmaIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'CEKISLEM.CARIKOD'
    end
    object CekYazmaIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'CEKISLEM.CARINO'
    end
    object CekYazmaIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'CEKISLEM.ISLEMTUR'
      Size = 40
    end
    object CekYazmaIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'CEKISLEM.TARIH'
    end
    object CekYazmaIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'CEKISLEM.ACIKLAMA'
      Size = 80
    end
    object CekYazmaIBQTEDIYE: TFloatField
      FieldName = 'TEDIYE'
      Origin = 'CEKISLEM.TEDIYE'
    end
    object CekYazmaIBQTAHSILAT: TFloatField
      FieldName = 'TAHSILAT'
      Origin = 'CEKISLEM.TAHSILAT'
    end
    object CekYazmaIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'CEKISLEM.D_TEDIYE'
    end
    object CekYazmaIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'CEKISLEM.D_TAHSILAT'
    end
    object CekYazmaIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'CEKISLEM.BANKAKOD'
    end
    object CekYazmaIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'CEKISLEM.KASAKOD'
    end
    object CekYazmaIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'CEKISLEM.MAKBUZNO'
    end
    object CekYazmaIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'CEKISLEM.KULLANKOD'
    end
    object CekYazmaIBQCARIKURU: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'CEKISLEM.CARIKURU'
    end
    object CekYazmaIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'CEKISLEM.ISLEMKURU'
    end
    object CekYazmaIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'CEKISLEM.PARABIRIMKOD'
    end
    object CekYazmaIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'CEKISLEM.PERSONELKOD'
    end
    object CekYazmaIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'CEKISLEM.BAGLANTINO'
    end
    object CekYazmaIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'CEKISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object CekYazmaIBQCEKISLEMNO: TIntegerField
      FieldName = 'CEKISLEMNO'
      Origin = 'CEKISLEM.CEKISLEMNO'
    end
    object CekYazmaIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'CEKISLEM.SAAT'
    end
    object CekYazmaIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'CEKISLEM.GELGITKOD'
      Size = 80
    end
    object CekYazmaIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'CEKISLEM.CARIPARABIRIMKOD'
    end
    object CekYazmaIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'CEKISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object CekYazmaIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'CEKISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object CekYazmaIBQC_KASAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KASAADI'
      Origin = 'CEKISLEM.C_KASAADI'
      ReadOnly = True
      Size = 25
    end
    object CekYazmaIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'CEKISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object CekYazmaIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'CEKISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object CekYazmaIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'CEKISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object CekYazmaIBQC_BANKAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_BANKAADI'
      Origin = 'CEKISLEM.C_BANKAADI'
      ReadOnly = True
      Size = 30
    end
    object CekYazmaIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'CEKISLEM.KAPATMA'
    end
    object CekYazmaIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'CEKISLEM.SISTEM'
    end
    object CekYazmaIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'CEKISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object CekYazmaIBQC_CARITAHSILAT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARITAHSILAT'
      Origin = 'CEKISLEM.C_CARITAHSILAT'
      ReadOnly = True
    end
    object CekYazmaIBQC_CARITEDIYE: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARITEDIYE'
      Origin = 'CEKISLEM.C_CARITEDIYE'
      ReadOnly = True
    end
  end
  object CekYazmaUSQL: TIBUpdateSQL
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
    Left = 139
    Top = 120
  end
  object CekYazmaDS: TDataSource
    DataSet = CekYazmaIBQ
    Left = 231
    Top = 120
  end
  object CYBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterEdit = CYBodroIBQAfterEdit
    AfterPost = CYBodroIBQAfterPost
    OnNewRecord = CYBodroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = CekYazmaDS
    SQL.Strings = (
      'select * from CEKBODRO'
      'Where ISLEMKOD=:ISLEMKOD')
    UpdateObject = CYBodroUSQL
    GeneratorField.Field = 'CEKBODROKOD'
    GeneratorField.Generator = 'CEKBODRO'
    Left = 40
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object CYBodroIBQCEKBODROKOD: TIntegerField
      FieldName = 'CEKBODROKOD'
      Origin = 'CEKBODRO.CEKBODROKOD'
      Required = True
    end
    object CYBodroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'CEKBODRO.ISLEMKOD'
    end
    object CYBodroIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'CEKBODRO.CARIKOD'
    end
    object CYBodroIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'CEKBODRO.CARINO'
    end
    object CYBodroIBQSIRA: TIntegerField
      DisplayLabel = #199'ek No'
      FieldName = 'SIRA'
      Origin = 'CEKBODRO.SIRA'
    end
    object CYBodroIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'CEKBODRO.ACIKLAMA'
      Size = 80
    end
    object CYBodroIBQTEDIYE: TFloatField
      DisplayLabel = 'TL '#199'ek '#199#305'k'#305#351#305
      FieldName = 'TEDIYE'
      Origin = 'CEKBODRO.TEDIYE'
      EditFormat = '###.###'
    end
    object CYBodroIBQTAHSILAT: TFloatField
      DisplayLabel = 'TL '#199'ek Giri'#351'i'
      FieldName = 'TAHSILAT'
      Origin = 'CEKBODRO.TAHSILAT'
      EditFormat = '###.###'
    end
    object CYBodroIBQD_TEDIYE: TFloatField
      DisplayLabel = #199'ek '#199#305'k'#305#351#305
      FieldName = 'D_TEDIYE'
      Origin = 'CEKBODRO.D_TEDIYE'
      EditFormat = '###.###'
    end
    object CYBodroIBQD_TAHSILAT: TFloatField
      DisplayLabel = #199'ek Giri'#351'i'
      FieldName = 'D_TAHSILAT'
      Origin = 'CEKBODRO.D_TAHSILAT'
      EditFormat = '###.###'
    end
    object CYBodroIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'CEKBODRO.ISLEMKURU'
      EditFormat = '###.###'
    end
    object CYBodroIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'CEKBODRO.VADE'
      EditMask = '!99/99/00;1;_'
    end
    object CYBodroIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'CEKBODRO.BANKAKOD'
    end
    object CYBodroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'CEKBODRO.PARABIRIMKOD'
    end
    object CYBodroIBQBANKA: TIBStringField
      DisplayLabel = 'Banka'
      FieldName = 'BANKA'
      Origin = 'CEKBODRO.BANKA'
      Size = 30
    end
    object CYBodroIBQKESIDEYERI: TIBStringField
      DisplayLabel = 'Ke'#351'ide Yeri'
      FieldName = 'KESIDEYERI'
      Origin = 'CEKBODRO.KESIDEYERI'
      Size = 30
    end
    object CYBodroIBQILKCIRO: TIBStringField
      DisplayLabel = #304'lk Ciro'
      FieldName = 'ILKCIRO'
      Origin = 'CEKBODRO.ILKCIRO'
      Size = 30
    end
    object CYBodroIBQCEKSERINO: TIBStringField
      DisplayLabel = #199'ek Seri No'
      FieldName = 'CEKSERINO'
      Origin = 'CEKBODRO.CEKSERINO'
    end
    object CYBodroIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'CEKBODRO.KULLANKOD'
    end
    object CYBodroIBQEVRAKDURUMU: TIntegerField
      DisplayLabel = #199'ek Durumu'
      FieldName = 'EVRAKDURUMU'
      Origin = 'CEKBODRO.EVRAKDURUMU'
    end
    object CYBodroIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'CEKBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object CYBodroIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'CEKBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object CYBodroIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'CEKBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object CYBodroIBQC_BANKAADI: TIBStringField
      DisplayLabel = 'Banka Hesap'
      FieldKind = fkInternalCalc
      FieldName = 'C_BANKAADI'
      Origin = 'CEKBODRO.C_BANKAADI'
      ReadOnly = True
      Size = 30
    end
    object CYBodroIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'CEKBODRO.KAPATMA'
    end
    object CYBodroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'CEKBODRO.SISTEM'
    end
    object CYBodroIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'CEKBODRO.PERSONELKOD'
    end
    object CYBodroIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'CEKBODRO.ISLEMTUR'
      Size = 10
    end
    object CYBodroIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'CEKBODRO.ISLEMTURKOD'
      ReadOnly = True
    end
    object CYBodroIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'CEKBODRO.BAGLANTINO'
    end
    object CYBodroIBQODENEN: TFloatField
      DisplayLabel = #214'denen'
      FieldName = 'ODENEN'
      Origin = 'CEKBODRO.ODENEN'
      EditFormat = '###.###'
    end
    object CYBodroIBQTAHSILEDILEN: TFloatField
      DisplayLabel = 'Tahsil Edilen'
      FieldName = 'TAHSILEDILEN'
      Origin = 'CEKBODRO.TAHSILEDILEN'
      EditFormat = '###.###'
    end
    object CYBodroIBQKALAN: TFloatField
      DisplayLabel = 'Kalan'
      FieldName = 'KALAN'
      Origin = 'CEKBODRO.KALAN'
      EditFormat = '###.###'
    end
  end
  object CYBodroUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CEKBODROKOD,'
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  CARINO,'
      '  SIRA,'
      '  ACIKLAMA,'
      '  TEDIYE,'
      '  TAHSILAT,'
      '  D_TEDIYE,'
      '  D_TAHSILAT,'
      '  ISLEMKURU,'
      '  VADE,'
      '  BANKAKOD,'
      '  PARABIRIMKOD,'
      '  BANKA,'
      '  KESIDEYERI,'
      '  ILKCIRO,'
      '  CEKSERINO,'
      '  KULLANKOD,'
      '  EVRAKDURUMU,'
      '  C_PARABIRIMI,'
      '  C_CARIADI,'
      '  C_KULLANICIADI,'
      '  C_BANKAADI,'
      '  KAPATMA,'
      '  SISTEM,'
      '  PERSONELKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  BAGLANTINO,'
      '  ODENEN,'
      '  TAHSILEDILEN,'
      '  KALAN'
      'from CEKBODRO '
      'where'
      '  CEKBODROKOD = :CEKBODROKOD')
    ModifySQL.Strings = (
      'update CEKBODRO'
      'set'
      '  CEKBODROKOD = :CEKBODROKOD,'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  CARINO = :CARINO,'
      '  SIRA = :SIRA,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  TEDIYE = :TEDIYE,'
      '  TAHSILAT = :TAHSILAT,'
      '  D_TEDIYE = :D_TEDIYE,'
      '  D_TAHSILAT = :D_TAHSILAT,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  VADE = :VADE,'
      '  BANKAKOD = :BANKAKOD,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  BANKA = :BANKA,'
      '  KESIDEYERI = :KESIDEYERI,'
      '  ILKCIRO = :ILKCIRO,'
      '  CEKSERINO = :CEKSERINO,'
      '  KULLANKOD = :KULLANKOD,'
      '  EVRAKDURUMU = :EVRAKDURUMU,'
      '  KAPATMA = :KAPATMA,'
      '  SISTEM = :SISTEM,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  ODENEN = :ODENEN,'
      '  TAHSILEDILEN = :TAHSILEDILEN,'
      '  KALAN = :KALAN'
      'where'
      '  CEKBODROKOD = :OLD_CEKBODROKOD')
    InsertSQL.Strings = (
      'insert into CEKBODRO'
      
        '  (CEKBODROKOD, ISLEMKOD, CARIKOD, CARINO, SIRA, ACIKLAMA, TEDIY' +
        'E, TAHSILAT, '
      
        '   D_TEDIYE, D_TAHSILAT, ISLEMKURU, VADE, BANKAKOD, PARABIRIMKOD' +
        ', BANKA, '
      
        '   KESIDEYERI, ILKCIRO, CEKSERINO, KULLANKOD, EVRAKDURUMU, KAPAT' +
        'MA, SISTEM, '
      
        '   PERSONELKOD, ISLEMTUR, BAGLANTINO, ODENEN, TAHSILEDILEN, KALA' +
        'N)'
      'values'
      
        '  (:CEKBODROKOD, :ISLEMKOD, :CARIKOD, :CARINO, :SIRA, :ACIKLAMA,' +
        ' :TEDIYE, '
      
        '   :TAHSILAT, :D_TEDIYE, :D_TAHSILAT, :ISLEMKURU, :VADE, :BANKAK' +
        'OD, :PARABIRIMKOD, '
      
        '   :BANKA, :KESIDEYERI, :ILKCIRO, :CEKSERINO, :KULLANKOD, :EVRAK' +
        'DURUMU, '
      
        '   :KAPATMA, :SISTEM, :PERSONELKOD, :ISLEMTUR, :BAGLANTINO, :ODE' +
        'NEN, :TAHSILEDILEN, '
      '   :KALAN)')
    DeleteSQL.Strings = (
      'delete from CEKBODRO'
      'where'
      '  CEKBODROKOD = :OLD_CEKBODROKOD')
    Left = 139
    Top = 176
  end
  object CYBodroDS: TDataSource
    DataSet = CYBodroIBQ
    Left = 231
    Top = 176
  end
  object CekCiroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterEdit = CekCiroIBQAfterEdit
    AfterPost = CekCiroIBQAfterPost
    OnNewRecord = CekCiroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CEKISLEM'
      'Where ISLEMTURKOD=17 and SISTEM<>2')
    UpdateObject = CekCiroUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'CEKISLEM'
    Left = 40
    Top = 224
    object CekCiroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'CEKISLEM.ISLEMKOD'
      Required = True
    end
    object CekCiroIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'CEKISLEM.CARIKOD'
    end
    object CekCiroIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'CEKISLEM.CARINO'
    end
    object CekCiroIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'CEKISLEM.ISLEMTUR'
      Size = 40
    end
    object CekCiroIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'CEKISLEM.TARIH'
    end
    object CekCiroIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'CEKISLEM.ACIKLAMA'
      Size = 80
    end
    object CekCiroIBQTEDIYE: TFloatField
      FieldName = 'TEDIYE'
      Origin = 'CEKISLEM.TEDIYE'
    end
    object CekCiroIBQTAHSILAT: TFloatField
      FieldName = 'TAHSILAT'
      Origin = 'CEKISLEM.TAHSILAT'
    end
    object CekCiroIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'CEKISLEM.D_TEDIYE'
    end
    object CekCiroIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'CEKISLEM.D_TAHSILAT'
    end
    object CekCiroIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'CEKISLEM.BANKAKOD'
    end
    object CekCiroIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'CEKISLEM.KASAKOD'
    end
    object CekCiroIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'CEKISLEM.MAKBUZNO'
    end
    object CekCiroIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'CEKISLEM.KULLANKOD'
    end
    object CekCiroIBQCARIKURU: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'CEKISLEM.CARIKURU'
    end
    object CekCiroIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'CEKISLEM.ISLEMKURU'
    end
    object CekCiroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'CEKISLEM.PARABIRIMKOD'
    end
    object CekCiroIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'CEKISLEM.PERSONELKOD'
    end
    object CekCiroIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'CEKISLEM.BAGLANTINO'
    end
    object CekCiroIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'CEKISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object CekCiroIBQCEKISLEMNO: TIntegerField
      FieldName = 'CEKISLEMNO'
      Origin = 'CEKISLEM.CEKISLEMNO'
    end
    object CekCiroIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'CEKISLEM.SAAT'
    end
    object CekCiroIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'CEKISLEM.GELGITKOD'
      Size = 80
    end
    object CekCiroIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'CEKISLEM.CARIPARABIRIMKOD'
    end
    object CekCiroIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'CEKISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object CekCiroIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'CEKISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object CekCiroIBQC_KASAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KASAADI'
      Origin = 'CEKISLEM.C_KASAADI'
      ReadOnly = True
      Size = 25
    end
    object CekCiroIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'CEKISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object CekCiroIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'CEKISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object CekCiroIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'CEKISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object CekCiroIBQC_BANKAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_BANKAADI'
      Origin = 'CEKISLEM.C_BANKAADI'
      ReadOnly = True
      Size = 30
    end
    object CekCiroIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'CEKISLEM.KAPATMA'
    end
    object CekCiroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'CEKISLEM.SISTEM'
    end
    object CekCiroIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'CEKISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object CekCiroIBQC_CARITAHSILAT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARITAHSILAT'
      Origin = 'CEKISLEM.C_CARITAHSILAT'
      ReadOnly = True
    end
    object CekCiroIBQC_CARITEDIYE: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARITEDIYE'
      Origin = 'CEKISLEM.C_CARITEDIYE'
      ReadOnly = True
    end
  end
  object CekCiroUSQL: TIBUpdateSQL
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
    Left = 139
    Top = 224
  end
  object CekCiroDS: TDataSource
    DataSet = CekCiroIBQ
    Left = 231
    Top = 224
  end
  object CCBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterEdit = CCBodroIBQAfterEdit
    AfterPost = CCBodroIBQAfterPost
    OnNewRecord = CCBodroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = CekCiroDS
    SQL.Strings = (
      'select * from CEKBODRO'
      'Where ISLEMKOD=:ISLEMKOD')
    UpdateObject = CCBodroUSQL
    GeneratorField.Field = 'CEKBODROKOD'
    GeneratorField.Generator = 'CEKBODRO'
    Left = 40
    Top = 280
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object CCBodroIBQCEKBODROKOD: TIntegerField
      FieldName = 'CEKBODROKOD'
      Origin = 'CEKBODRO.CEKBODROKOD'
      Required = True
    end
    object CCBodroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'CEKBODRO.ISLEMKOD'
    end
    object CCBodroIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'CEKBODRO.CARIKOD'
    end
    object CCBodroIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'CEKBODRO.CARINO'
    end
    object CCBodroIBQSIRA: TIntegerField
      DisplayLabel = #199'ek No'
      FieldName = 'SIRA'
      Origin = 'CEKBODRO.SIRA'
    end
    object CCBodroIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'CEKBODRO.ACIKLAMA'
      Size = 80
    end
    object CCBodroIBQTEDIYE: TFloatField
      DisplayLabel = 'TL '#199'ek '#199#305'k'#305#351#305
      FieldName = 'TEDIYE'
      Origin = 'CEKBODRO.TEDIYE'
      EditFormat = '###.###'
    end
    object CCBodroIBQTAHSILAT: TFloatField
      DisplayLabel = 'TL '#199'ek Giri'#351'i'
      FieldName = 'TAHSILAT'
      Origin = 'CEKBODRO.TAHSILAT'
      EditFormat = '###.###'
    end
    object CCBodroIBQD_TEDIYE: TFloatField
      DisplayLabel = #199'ek '#199#305'k'#305#351#305
      FieldName = 'D_TEDIYE'
      Origin = 'CEKBODRO.D_TEDIYE'
      EditFormat = '###.###'
    end
    object CCBodroIBQD_TAHSILAT: TFloatField
      DisplayLabel = #199'ek Giri'#351'i'
      FieldName = 'D_TAHSILAT'
      Origin = 'CEKBODRO.D_TAHSILAT'
      EditFormat = '###.###'
    end
    object CCBodroIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'CEKBODRO.ISLEMKURU'
      EditFormat = '###.###'
    end
    object CCBodroIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'CEKBODRO.VADE'
      EditMask = '!99/99/00;1;_'
    end
    object CCBodroIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'CEKBODRO.BANKAKOD'
    end
    object CCBodroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'CEKBODRO.PARABIRIMKOD'
    end
    object CCBodroIBQBANKA: TIBStringField
      DisplayLabel = 'Banka'
      FieldName = 'BANKA'
      Origin = 'CEKBODRO.BANKA'
      Size = 30
    end
    object CCBodroIBQKESIDEYERI: TIBStringField
      DisplayLabel = 'Ke'#351'ide Yeri'
      FieldName = 'KESIDEYERI'
      Origin = 'CEKBODRO.KESIDEYERI'
      Size = 30
    end
    object CCBodroIBQILKCIRO: TIBStringField
      DisplayLabel = #304'lk Ciro'
      FieldName = 'ILKCIRO'
      Origin = 'CEKBODRO.ILKCIRO'
      Size = 30
    end
    object CCBodroIBQCEKSERINO: TIBStringField
      DisplayLabel = #199'ek Seri No'
      FieldName = 'CEKSERINO'
      Origin = 'CEKBODRO.CEKSERINO'
    end
    object CCBodroIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'CEKBODRO.KULLANKOD'
    end
    object CCBodroIBQEVRAKDURUMU: TIntegerField
      DisplayLabel = #199'ek Durumu'
      FieldName = 'EVRAKDURUMU'
      Origin = 'CEKBODRO.EVRAKDURUMU'
    end
    object CCBodroIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'CEKBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object CCBodroIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'CEKBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object CCBodroIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'CEKBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object CCBodroIBQC_BANKAADI: TIBStringField
      DisplayLabel = 'Banka Hesap'
      FieldKind = fkInternalCalc
      FieldName = 'C_BANKAADI'
      Origin = 'CEKBODRO.C_BANKAADI'
      ReadOnly = True
      Size = 30
    end
    object CCBodroIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'CEKBODRO.KAPATMA'
    end
    object CCBodroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'CEKBODRO.SISTEM'
    end
    object CCBodroIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'CEKBODRO.PERSONELKOD'
    end
    object CCBodroIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'CEKBODRO.ISLEMTUR'
      Size = 10
    end
    object CCBodroIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'CEKBODRO.ISLEMTURKOD'
      ReadOnly = True
    end
    object CCBodroIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'CEKBODRO.BAGLANTINO'
    end
    object CCBodroIBQODENEN: TFloatField
      DisplayLabel = #214'denen'
      FieldName = 'ODENEN'
      Origin = 'CEKBODRO.ODENEN'
      EditFormat = '###.###'
    end
    object CCBodroIBQTAHSILEDILEN: TFloatField
      DisplayLabel = 'Tahsil Edilen'
      FieldName = 'TAHSILEDILEN'
      Origin = 'CEKBODRO.TAHSILEDILEN'
      EditFormat = '###.###'
    end
    object CCBodroIBQKALAN: TFloatField
      DisplayLabel = 'Kalan'
      FieldName = 'KALAN'
      Origin = 'CEKBODRO.KALAN'
      EditFormat = '###.###'
    end
  end
  object CCBodroUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CEKBODROKOD,'
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  CARINO,'
      '  SIRA,'
      '  ACIKLAMA,'
      '  TEDIYE,'
      '  TAHSILAT,'
      '  D_TEDIYE,'
      '  D_TAHSILAT,'
      '  ISLEMKURU,'
      '  VADE,'
      '  BANKAKOD,'
      '  PARABIRIMKOD,'
      '  BANKA,'
      '  KESIDEYERI,'
      '  ILKCIRO,'
      '  CEKSERINO,'
      '  KULLANKOD,'
      '  EVRAKDURUMU,'
      '  C_PARABIRIMI,'
      '  C_CARIADI,'
      '  C_KULLANICIADI,'
      '  C_BANKAADI,'
      '  KAPATMA,'
      '  SISTEM,'
      '  PERSONELKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  BAGLANTINO,'
      '  ODENEN,'
      '  TAHSILEDILEN,'
      '  KALAN'
      'from CEKBODRO '
      'where'
      '  CEKBODROKOD = :CEKBODROKOD')
    ModifySQL.Strings = (
      'update CEKBODRO'
      'set'
      '  CEKBODROKOD = :CEKBODROKOD,'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  CARINO = :CARINO,'
      '  SIRA = :SIRA,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  TEDIYE = :TEDIYE,'
      '  TAHSILAT = :TAHSILAT,'
      '  D_TEDIYE = :D_TEDIYE,'
      '  D_TAHSILAT = :D_TAHSILAT,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  VADE = :VADE,'
      '  BANKAKOD = :BANKAKOD,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  BANKA = :BANKA,'
      '  KESIDEYERI = :KESIDEYERI,'
      '  ILKCIRO = :ILKCIRO,'
      '  CEKSERINO = :CEKSERINO,'
      '  KULLANKOD = :KULLANKOD,'
      '  EVRAKDURUMU = :EVRAKDURUMU,'
      '  KAPATMA = :KAPATMA,'
      '  SISTEM = :SISTEM,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  ODENEN = :ODENEN,'
      '  TAHSILEDILEN = :TAHSILEDILEN,'
      '  KALAN = :KALAN'
      'where'
      '  CEKBODROKOD = :OLD_CEKBODROKOD')
    InsertSQL.Strings = (
      'insert into CEKBODRO'
      
        '  (CEKBODROKOD, ISLEMKOD, CARIKOD, CARINO, SIRA, ACIKLAMA, TEDIY' +
        'E, TAHSILAT, '
      
        '   D_TEDIYE, D_TAHSILAT, ISLEMKURU, VADE, BANKAKOD, PARABIRIMKOD' +
        ', BANKA, '
      
        '   KESIDEYERI, ILKCIRO, CEKSERINO, KULLANKOD, EVRAKDURUMU, KAPAT' +
        'MA, SISTEM, '
      
        '   PERSONELKOD, ISLEMTUR, BAGLANTINO, ODENEN, TAHSILEDILEN, KALA' +
        'N)'
      'values'
      
        '  (:CEKBODROKOD, :ISLEMKOD, :CARIKOD, :CARINO, :SIRA, :ACIKLAMA,' +
        ' :TEDIYE, '
      
        '   :TAHSILAT, :D_TEDIYE, :D_TAHSILAT, :ISLEMKURU, :VADE, :BANKAK' +
        'OD, :PARABIRIMKOD, '
      
        '   :BANKA, :KESIDEYERI, :ILKCIRO, :CEKSERINO, :KULLANKOD, :EVRAK' +
        'DURUMU, '
      
        '   :KAPATMA, :SISTEM, :PERSONELKOD, :ISLEMTUR, :BAGLANTINO, :ODE' +
        'NEN, :TAHSILEDILEN, '
      '   :KALAN)')
    DeleteSQL.Strings = (
      'delete from CEKBODRO'
      'where'
      '  CEKBODROKOD = :OLD_CEKBODROKOD')
    Left = 139
    Top = 280
  end
  object CCBodroDS: TDataSource
    DataSet = CCBodroIBQ
    Left = 231
    Top = 280
  end
  object CeklerDS: TDataSource
    DataSet = CeklerIBQ
    Left = 416
    Top = 16
  end
  object CeklerUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CEKBODROKOD,'
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  CARINO,'
      '  SIRA,'
      '  ACIKLAMA,'
      '  TEDIYE,'
      '  TAHSILAT,'
      '  D_TEDIYE,'
      '  D_TAHSILAT,'
      '  ISLEMKURU,'
      '  VADE,'
      '  BANKAKOD,'
      '  PARABIRIMKOD,'
      '  BANKA,'
      '  KESIDEYERI,'
      '  ILKCIRO,'
      '  CEKSERINO,'
      '  KULLANKOD,'
      '  EVRAKDURUMU,'
      '  C_PARABIRIMI,'
      '  C_CARIADI,'
      '  C_KULLANICIADI,'
      '  C_BANKAADI,'
      '  KAPATMA,'
      '  SISTEM,'
      '  PERSONELKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  BAGLANTINO'
      'from CEKBODRO '
      'where'
      '  CEKBODROKOD = :CEKBODROKOD')
    ModifySQL.Strings = (
      'update CEKBODRO'
      'set'
      '  CEKBODROKOD = :CEKBODROKOD,'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  CARINO = :CARINO,'
      '  SIRA = :SIRA,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  TEDIYE = :TEDIYE,'
      '  TAHSILAT = :TAHSILAT,'
      '  D_TEDIYE = :D_TEDIYE,'
      '  D_TAHSILAT = :D_TAHSILAT,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  VADE = :VADE,'
      '  BANKAKOD = :BANKAKOD,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  BANKA = :BANKA,'
      '  KESIDEYERI = :KESIDEYERI,'
      '  ILKCIRO = :ILKCIRO,'
      '  CEKSERINO = :CEKSERINO,'
      '  KULLANKOD = :KULLANKOD,'
      '  EVRAKDURUMU = :EVRAKDURUMU,'
      '  KAPATMA = :KAPATMA,'
      '  SISTEM = :SISTEM,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  BAGLANTINO = :BAGLANTINO'
      'where'
      '  CEKBODROKOD = :OLD_CEKBODROKOD')
    InsertSQL.Strings = (
      'insert into CEKBODRO'
      
        '  (CEKBODROKOD, ISLEMKOD, CARIKOD, CARINO, SIRA, ACIKLAMA, TEDIY' +
        'E, TAHSILAT, '
      
        '   D_TEDIYE, D_TAHSILAT, ISLEMKURU, VADE, BANKAKOD, PARABIRIMKOD' +
        ', BANKA, '
      
        '   KESIDEYERI, ILKCIRO, CEKSERINO, KULLANKOD, EVRAKDURUMU, KAPAT' +
        'MA, SISTEM, '
      '   PERSONELKOD, ISLEMTUR, BAGLANTINO)'
      'values'
      
        '  (:CEKBODROKOD, :ISLEMKOD, :CARIKOD, :CARINO, :SIRA, :ACIKLAMA,' +
        ' :TEDIYE, '
      
        '   :TAHSILAT, :D_TEDIYE, :D_TAHSILAT, :ISLEMKURU, :VADE, :BANKAK' +
        'OD, :PARABIRIMKOD, '
      
        '   :BANKA, :KESIDEYERI, :ILKCIRO, :CEKSERINO, :KULLANKOD, :EVRAK' +
        'DURUMU, '
      '   :KAPATMA, :SISTEM, :PERSONELKOD, :ISLEMTUR, :BAGLANTINO)')
    DeleteSQL.Strings = (
      'delete from CEKBODRO'
      'where'
      '  CEKBODROKOD = :OLD_CEKBODROKOD')
    Left = 488
    Top = 16
  end
  object CekListIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CEKBODRO'
      'Where  (ISLEMTURKOD = 11 or ISLEMTURKOD = 12) AND SISTEM<>2 ')
    UpdateObject = CekListUSQL
    Left = 336
    Top = 80
    object CekListIBQCEKBODROKOD: TIntegerField
      FieldName = 'CEKBODROKOD'
      Origin = 'CEKBODRO.CEKBODROKOD'
      Required = True
    end
    object CekListIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'CEKBODRO.ISLEMKOD'
    end
    object CekListIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'CEKBODRO.CARIKOD'
    end
    object CekListIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'CEKBODRO.CARINO'
    end
    object CekListIBQSIRA: TIntegerField
      DisplayLabel = #199'ek No'
      FieldName = 'SIRA'
      Origin = 'CEKBODRO.SIRA'
    end
    object CekListIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'CEKBODRO.ACIKLAMA'
      Size = 80
    end
    object CekListIBQTEDIYE: TFloatField
      DisplayLabel = 'TL '#199'ek '#199#305'k'#305#351#305
      FieldName = 'TEDIYE'
      Origin = 'CEKBODRO.TEDIYE'
      EditFormat = '###.###'
    end
    object CekListIBQTAHSILAT: TFloatField
      DisplayLabel = 'TL '#199'ek Giri'#351'i'
      FieldName = 'TAHSILAT'
      Origin = 'CEKBODRO.TAHSILAT'
      EditFormat = '###.###'
    end
    object CekListIBQD_TEDIYE: TFloatField
      DisplayLabel = #199'ek '#199#305'k'#305#351#305
      FieldName = 'D_TEDIYE'
      Origin = 'CEKBODRO.D_TEDIYE'
      EditFormat = '###.###'
    end
    object CekListIBQD_TAHSILAT: TFloatField
      DisplayLabel = #199'ek Giri'#351'i'
      FieldName = 'D_TAHSILAT'
      Origin = 'CEKBODRO.D_TAHSILAT'
      EditFormat = '###.###'
    end
    object CekListIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'CEKBODRO.ISLEMKURU'
      EditFormat = '###.###'
    end
    object CekListIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'CEKBODRO.VADE'
      EditMask = '!99/99/00;1;_'
    end
    object CekListIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'CEKBODRO.BANKAKOD'
    end
    object CekListIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'CEKBODRO.PARABIRIMKOD'
    end
    object CekListIBQBANKA: TIBStringField
      DisplayLabel = 'Banka'
      FieldName = 'BANKA'
      Origin = 'CEKBODRO.BANKA'
      Size = 30
    end
    object CekListIBQKESIDEYERI: TIBStringField
      DisplayLabel = 'Ke'#351'ide Yeri'
      FieldName = 'KESIDEYERI'
      Origin = 'CEKBODRO.KESIDEYERI'
      Size = 30
    end
    object CekListIBQILKCIRO: TIBStringField
      DisplayLabel = #304'lk Ciro'
      FieldName = 'ILKCIRO'
      Origin = 'CEKBODRO.ILKCIRO'
      Size = 30
    end
    object CekListIBQCEKSERINO: TIBStringField
      DisplayLabel = #199'ek Seri No'
      FieldName = 'CEKSERINO'
      Origin = 'CEKBODRO.CEKSERINO'
    end
    object CekListIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'CEKBODRO.KULLANKOD'
    end
    object CekListIBQEVRAKDURUMU: TIntegerField
      DisplayLabel = #199'ek Durumu'
      FieldName = 'EVRAKDURUMU'
      Origin = 'CEKBODRO.EVRAKDURUMU'
    end
    object CekListIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'CEKBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object CekListIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'CEKBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object CekListIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'CEKBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object CekListIBQC_BANKAADI: TIBStringField
      DisplayLabel = 'Banka Hesap'
      FieldKind = fkInternalCalc
      FieldName = 'C_BANKAADI'
      Origin = 'CEKBODRO.C_BANKAADI'
      ReadOnly = True
      Size = 30
    end
    object CekListIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'CEKBODRO.KAPATMA'
    end
    object CekListIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'CEKBODRO.SISTEM'
    end
    object CekListIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'CEKBODRO.PERSONELKOD'
    end
    object CekListIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'CEKBODRO.ISLEMTUR'
      Size = 10
    end
    object CekListIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'CEKBODRO.ISLEMTURKOD'
      ReadOnly = True
    end
    object CekListIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'CEKBODRO.BAGLANTINO'
    end
    object CekListIBQODENEN: TFloatField
      DisplayLabel = #214'denen'
      FieldName = 'ODENEN'
      Origin = 'CEKBODRO.ODENEN'
      EditFormat = '###.###'
    end
    object CekListIBQTAHSILEDILEN: TFloatField
      DisplayLabel = 'Tahsil Edilen'
      FieldName = 'TAHSILEDILEN'
      Origin = 'CEKBODRO.TAHSILEDILEN'
      EditFormat = '###.###'
    end
    object CekListIBQKALAN: TFloatField
      DisplayLabel = 'Kalan'
      FieldName = 'KALAN'
      Origin = 'CEKBODRO.KALAN'
      EditFormat = '###.###'
    end
  end
  object CekListDS: TDataSource
    DataSet = CekListIBQ
    Left = 416
    Top = 80
  end
  object CekListUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CEKBODROKOD,'
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  CARINO,'
      '  SIRA,'
      '  ACIKLAMA,'
      '  TEDIYE,'
      '  TAHSILAT,'
      '  D_TEDIYE,'
      '  D_TAHSILAT,'
      '  ISLEMKURU,'
      '  VADE,'
      '  BANKAKOD,'
      '  PARABIRIMKOD,'
      '  BANKA,'
      '  KESIDEYERI,'
      '  ILKCIRO,'
      '  CEKSERINO,'
      '  KULLANKOD,'
      '  EVRAKDURUMU,'
      '  C_PARABIRIMI,'
      '  C_CARIADI,'
      '  C_KULLANICIADI,'
      '  C_BANKAADI,'
      '  KAPATMA,'
      '  SISTEM,'
      '  PERSONELKOD,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
      '  BAGLANTINO'
      'from CEKBODRO '
      'where'
      '  CEKBODROKOD = :CEKBODROKOD')
    ModifySQL.Strings = (
      'update CEKBODRO'
      'set'
      '  CEKBODROKOD = :CEKBODROKOD,'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  CARINO = :CARINO,'
      '  SIRA = :SIRA,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  TEDIYE = :TEDIYE,'
      '  TAHSILAT = :TAHSILAT,'
      '  D_TEDIYE = :D_TEDIYE,'
      '  D_TAHSILAT = :D_TAHSILAT,'
      '  ISLEMKURU = :ISLEMKURU,'
      '  VADE = :VADE,'
      '  BANKAKOD = :BANKAKOD,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  BANKA = :BANKA,'
      '  KESIDEYERI = :KESIDEYERI,'
      '  ILKCIRO = :ILKCIRO,'
      '  CEKSERINO = :CEKSERINO,'
      '  KULLANKOD = :KULLANKOD,'
      '  EVRAKDURUMU = :EVRAKDURUMU,'
      '  KAPATMA = :KAPATMA,'
      '  SISTEM = :SISTEM,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  BAGLANTINO = :BAGLANTINO'
      'where'
      '  CEKBODROKOD = :OLD_CEKBODROKOD')
    InsertSQL.Strings = (
      'insert into CEKBODRO'
      
        '  (CEKBODROKOD, ISLEMKOD, CARIKOD, CARINO, SIRA, ACIKLAMA, TEDIY' +
        'E, TAHSILAT, '
      
        '   D_TEDIYE, D_TAHSILAT, ISLEMKURU, VADE, BANKAKOD, PARABIRIMKOD' +
        ', BANKA, '
      
        '   KESIDEYERI, ILKCIRO, CEKSERINO, KULLANKOD, EVRAKDURUMU, KAPAT' +
        'MA, SISTEM, '
      '   PERSONELKOD, ISLEMTUR, BAGLANTINO)'
      'values'
      
        '  (:CEKBODROKOD, :ISLEMKOD, :CARIKOD, :CARINO, :SIRA, :ACIKLAMA,' +
        ' :TEDIYE, '
      
        '   :TAHSILAT, :D_TEDIYE, :D_TAHSILAT, :ISLEMKURU, :VADE, :BANKAK' +
        'OD, :PARABIRIMKOD, '
      
        '   :BANKA, :KESIDEYERI, :ILKCIRO, :CEKSERINO, :KULLANKOD, :EVRAK' +
        'DURUMU, '
      '   :KAPATMA, :SISTEM, :PERSONELKOD, :ISLEMTUR, :BAGLANTINO)')
    DeleteSQL.Strings = (
      'delete from CEKBODRO'
      'where'
      '  CEKBODROKOD = :OLD_CEKBODROKOD')
    Left = 488
    Top = 80
  end
  object EldenCTahsilatIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterEdit = EldenCTahsilatIBQAfterEdit
    AfterPost = EldenCTahsilatIBQAfterPost
    OnNewRecord = EldenCTahsilatIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CEKISLEM'
      'Where ISLEMTURKOD=13 and SISTEM<>2')
    UpdateObject = EldenCTahsilatSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'CEKISLEM'
    Left = 40
    Top = 336
    object EldenCTahsilatIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'CEKISLEM.ISLEMKOD'
      Required = True
    end
    object EldenCTahsilatIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'CEKISLEM.CARIKOD'
    end
    object EldenCTahsilatIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'CEKISLEM.CARINO'
    end
    object EldenCTahsilatIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'CEKISLEM.ISLEMTUR'
      Size = 40
    end
    object EldenCTahsilatIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'CEKISLEM.TARIH'
    end
    object EldenCTahsilatIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'CEKISLEM.ACIKLAMA'
      Size = 80
    end
    object EldenCTahsilatIBQTEDIYE: TFloatField
      FieldName = 'TEDIYE'
      Origin = 'CEKISLEM.TEDIYE'
      DisplayFormat = '###,###'
    end
    object EldenCTahsilatIBQTAHSILAT: TFloatField
      FieldName = 'TAHSILAT'
      Origin = 'CEKISLEM.TAHSILAT'
      DisplayFormat = '###,###'
    end
    object EldenCTahsilatIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'CEKISLEM.D_TEDIYE'
      DisplayFormat = '###,###'
    end
    object EldenCTahsilatIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'CEKISLEM.D_TAHSILAT'
      DisplayFormat = '###,###'
    end
    object EldenCTahsilatIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'CEKISLEM.BANKAKOD'
    end
    object EldenCTahsilatIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'CEKISLEM.KASAKOD'
    end
    object EldenCTahsilatIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'CEKISLEM.MAKBUZNO'
    end
    object EldenCTahsilatIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'CEKISLEM.KULLANKOD'
    end
    object EldenCTahsilatIBQCARIKURU: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'CEKISLEM.CARIKURU'
      DisplayFormat = '###,###'
    end
    object EldenCTahsilatIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'CEKISLEM.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object EldenCTahsilatIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'CEKISLEM.PARABIRIMKOD'
    end
    object EldenCTahsilatIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'CEKISLEM.PERSONELKOD'
    end
    object EldenCTahsilatIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'CEKISLEM.BAGLANTINO'
    end
    object EldenCTahsilatIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'CEKISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object EldenCTahsilatIBQCEKISLEMNO: TIntegerField
      FieldName = 'CEKISLEMNO'
      Origin = 'CEKISLEM.CEKISLEMNO'
    end
    object EldenCTahsilatIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'CEKISLEM.SAAT'
    end
    object EldenCTahsilatIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'CEKISLEM.GELGITKOD'
      Size = 80
    end
    object EldenCTahsilatIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'CEKISLEM.CARIPARABIRIMKOD'
    end
    object EldenCTahsilatIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'CEKISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object EldenCTahsilatIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'CEKISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object EldenCTahsilatIBQC_KASAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KASAADI'
      Origin = 'CEKISLEM.C_KASAADI'
      ReadOnly = True
      Size = 25
    end
    object EldenCTahsilatIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'CEKISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object EldenCTahsilatIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'CEKISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object EldenCTahsilatIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'CEKISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object EldenCTahsilatIBQC_BANKAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_BANKAADI'
      Origin = 'CEKISLEM.C_BANKAADI'
      ReadOnly = True
      Size = 30
    end
    object EldenCTahsilatIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'CEKISLEM.KAPATMA'
    end
    object EldenCTahsilatIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'CEKISLEM.SISTEM'
    end
    object EldenCTahsilatIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'CEKISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object EldenCTahsilatIBQC_CARITEDIYE: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARITEDIYE'
      Origin = 'CEKISLEM.C_CARITEDIYE'
      ReadOnly = True
    end
    object EldenCTahsilatIBQC_CARITAHSILAT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARITAHSILAT'
      Origin = 'CEKISLEM.C_CARITAHSILAT'
      ReadOnly = True
    end
  end
  object EldenCTahsilatSQL: TIBUpdateSQL
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
    Left = 139
    Top = 336
  end
  object EldenCTahsilatDS: TDataSource
    DataSet = EldenCTahsilatIBQ
    Left = 231
    Top = 336
  end
  object ECTahBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = ECTahBodroIBQAfterPost
    OnNewRecord = ECTahBodroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = EldenCTahsilatDS
    SQL.Strings = (
      'select * from CEKTAHSILAT'
      'where CEKISLEMKOD =:ISLEMKOD')
    UpdateObject = ECTahBodroSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'CEKTAHSILAT'
    Left = 40
    Top = 394
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object ECTahBodroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'CEKTAHSILAT.ISLEMKOD'
      Required = True
    end
    object ECTahBodroIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'CEKTAHSILAT.TARIH'
    end
    object ECTahBodroIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'CEKTAHSILAT.ACIKLAMA'
      Size = 80
    end
    object ECTahBodroIBQODENEN: TFloatField
      DisplayLabel = #214'denen'
      FieldName = 'ODENEN'
      Origin = 'CEKTAHSILAT.ODENEN'
      DisplayFormat = '###,###'
    end
    object ECTahBodroIBQTAHSILEDILEN: TFloatField
      DisplayLabel = 'Tahsil Edilen'
      FieldName = 'TAHSILEDILEN'
      Origin = 'CEKTAHSILAT.TAHSILEDILEN'
      DisplayFormat = '###,###'
    end
    object ECTahBodroIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'CEKTAHSILAT.BAGLANTINO'
      OnChange = ECTahBodroIBQBAGLANTINOChange
    end
    object ECTahBodroIBQCEKNO: TIBStringField
      DisplayLabel = #199'ek No'
      FieldName = 'CEKNO'
      Origin = 'CEKTAHSILAT.CEKNO'
    end
    object ECTahBodroIBQCEKISLEMKOD: TIntegerField
      FieldName = 'CEKISLEMKOD'
      Origin = 'CEKTAHSILAT.CEKISLEMKOD'
    end
    object ECTahBodroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'CEKTAHSILAT.SISTEM'
    end
    object ECTahBodroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'CEKTAHSILAT.PARABIRIMKOD'
    end
    object ECTahBodroIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'CEKTAHSILAT.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object ECTahBodroIBQC_TLTAHSILEDILEN: TFloatField
      DisplayLabel = 'TL Tahsil Edilen'
      FieldKind = fkInternalCalc
      FieldName = 'C_TLTAHSILEDILEN'
      Origin = 'CEKTAHSILAT.C_TLTAHSILEDILEN'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object ECTahBodroIBQC_TLODENEN: TFloatField
      DisplayLabel = 'TL '#214'denen'
      FieldKind = fkInternalCalc
      FieldName = 'C_TLODENEN'
      Origin = 'CEKTAHSILAT.C_TLODENEN'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object ECTahBodroIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'CEKTAHSILAT.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
  end
  object ECTahBodroSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  TARIH,'
      '  CEKNO,'
      '  ACIKLAMA,'
      '  ODENEN,'
      '  TAHSILEDILEN,'
      '  BAGLANTINO,'
      '  CEKISLEMKOD,'
      '  SISTEM,'
      '  PARABIRIMKOD,'
      '  ISLEMKURU,'
      '  C_TLTAHSILEDILEN,'
      '  C_TLODENEN,'
      '  C_PARABIRIMI'
      'from CEKTAHSILAT '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update CEKTAHSILAT'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  TARIH = :TARIH,'
      '  CEKNO = :CEKNO,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  ODENEN = :ODENEN,'
      '  TAHSILEDILEN = :TAHSILEDILEN,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  CEKISLEMKOD = :CEKISLEMKOD,'
      '  SISTEM = :SISTEM,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  ISLEMKURU = :ISLEMKURU'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into CEKTAHSILAT'
      
        '  (ISLEMKOD, TARIH, CEKNO, ACIKLAMA, ODENEN, TAHSILEDILEN, BAGLA' +
        'NTINO, '
      '   CEKISLEMKOD, SISTEM, PARABIRIMKOD, ISLEMKURU)'
      'values'
      
        '  (:ISLEMKOD, :TARIH, :CEKNO, :ACIKLAMA, :ODENEN, :TAHSILEDILEN,' +
        ' :BAGLANTINO, '
      '   :CEKISLEMKOD, :SISTEM, :PARABIRIMKOD, :ISLEMKURU)')
    DeleteSQL.Strings = (
      'delete from CEKTAHSILAT'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 139
    Top = 394
  end
  object ECTahBodroDS: TDataSource
    DataSet = ECTahBodroIBQ
    Left = 231
    Top = 394
  end
  object BankadanCTahsilatIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterEdit = BankadanCTahsilatIBQAfterEdit
    AfterPost = BankadanCTahsilatIBQAfterPost
    OnNewRecord = BankadanCTahsilatIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CEKISLEM'
      'Where ISLEMTURKOD=15 and SISTEM<>2')
    UpdateObject = BankadanCTahsilatSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'CEKISLEM'
    Left = 40
    Top = 448
    object BankadanCTahsilatIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'CEKISLEM.ISLEMKOD'
      Required = True
    end
    object BankadanCTahsilatIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'CEKISLEM.CARIKOD'
    end
    object BankadanCTahsilatIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'CEKISLEM.CARINO'
    end
    object BankadanCTahsilatIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'CEKISLEM.ISLEMTUR'
      Size = 40
    end
    object BankadanCTahsilatIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'CEKISLEM.TARIH'
    end
    object BankadanCTahsilatIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'CEKISLEM.ACIKLAMA'
      Size = 80
    end
    object BankadanCTahsilatIBQTEDIYE: TFloatField
      FieldName = 'TEDIYE'
      Origin = 'CEKISLEM.TEDIYE'
      DisplayFormat = '###,###'
    end
    object BankadanCTahsilatIBQTAHSILAT: TFloatField
      FieldName = 'TAHSILAT'
      Origin = 'CEKISLEM.TAHSILAT'
      DisplayFormat = '###,###'
    end
    object BankadanCTahsilatIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'CEKISLEM.D_TEDIYE'
      DisplayFormat = '###,###'
    end
    object BankadanCTahsilatIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'CEKISLEM.D_TAHSILAT'
      DisplayFormat = '###,###'
    end
    object BankadanCTahsilatIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'CEKISLEM.BANKAKOD'
    end
    object BankadanCTahsilatIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'CEKISLEM.KASAKOD'
    end
    object BankadanCTahsilatIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'CEKISLEM.MAKBUZNO'
    end
    object BankadanCTahsilatIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'CEKISLEM.KULLANKOD'
    end
    object BankadanCTahsilatIBQCARIKURU: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'CEKISLEM.CARIKURU'
      DisplayFormat = '###,###'
    end
    object BankadanCTahsilatIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'CEKISLEM.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object BankadanCTahsilatIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'CEKISLEM.PARABIRIMKOD'
    end
    object BankadanCTahsilatIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'CEKISLEM.PERSONELKOD'
    end
    object BankadanCTahsilatIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'CEKISLEM.BAGLANTINO'
    end
    object BankadanCTahsilatIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'CEKISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object BankadanCTahsilatIBQCEKISLEMNO: TIntegerField
      FieldName = 'CEKISLEMNO'
      Origin = 'CEKISLEM.CEKISLEMNO'
    end
    object BankadanCTahsilatIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'CEKISLEM.SAAT'
    end
    object BankadanCTahsilatIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'CEKISLEM.GELGITKOD'
      Size = 80
    end
    object BankadanCTahsilatIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'CEKISLEM.CARIPARABIRIMKOD'
    end
    object BankadanCTahsilatIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'CEKISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object BankadanCTahsilatIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'CEKISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object BankadanCTahsilatIBQC_KASAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KASAADI'
      Origin = 'CEKISLEM.C_KASAADI'
      ReadOnly = True
      Size = 25
    end
    object BankadanCTahsilatIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'CEKISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object BankadanCTahsilatIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'CEKISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object BankadanCTahsilatIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'CEKISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object BankadanCTahsilatIBQC_BANKAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_BANKAADI'
      Origin = 'CEKISLEM.C_BANKAADI'
      ReadOnly = True
      Size = 30
    end
    object BankadanCTahsilatIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'CEKISLEM.KAPATMA'
    end
    object BankadanCTahsilatIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'CEKISLEM.SISTEM'
    end
    object BankadanCTahsilatIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'CEKISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object BankadanCTahsilatIBQC_CARITEDIYE: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARITEDIYE'
      Origin = 'CEKISLEM.C_CARITEDIYE'
      ReadOnly = True
    end
    object BankadanCTahsilatIBQC_CARITAHSILAT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARITAHSILAT'
      Origin = 'CEKISLEM.C_CARITAHSILAT'
      ReadOnly = True
    end
  end
  object BankadanCTahsilatSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  CARINO,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
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
    Left = 139
    Top = 448
  end
  object BankadanCTahsilatDS: TDataSource
    DataSet = BankadanCTahsilatIBQ
    Left = 231
    Top = 448
  end
  object BCTahBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = BCTahBodroIBQAfterPost
    OnNewRecord = BCTahBodroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = BankadanCTahsilatDS
    SQL.Strings = (
      'select * from CEKTAHSILAT'
      'where CEKISLEMKOD =:ISLEMKOD')
    UpdateObject = BCTahBodroSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'CEKTAHSILAT'
    Left = 40
    Top = 506
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object BCTahBodroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'CEKTAHSILAT.ISLEMKOD'
      Required = True
    end
    object BCTahBodroIBQTARIH: TDateField
      DisplayLabel = 'Tarih'
      FieldName = 'TARIH'
      Origin = 'CEKTAHSILAT.TARIH'
    end
    object BCTahBodroIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'CEKTAHSILAT.ACIKLAMA'
      Size = 80
    end
    object BCTahBodroIBQODENEN: TFloatField
      DisplayLabel = #214'denen'
      FieldName = 'ODENEN'
      Origin = 'CEKTAHSILAT.ODENEN'
      DisplayFormat = '###,###'
    end
    object BCTahBodroIBQTAHSILEDILEN: TFloatField
      DisplayLabel = 'Tahsil Edilen'
      FieldName = 'TAHSILEDILEN'
      Origin = 'CEKTAHSILAT.TAHSILEDILEN'
      DisplayFormat = '###,###'
    end
    object BCTahBodroIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'CEKTAHSILAT.BAGLANTINO'
      OnChange = BCTahBodroIBQBAGLANTINOChange
    end
    object BCTahBodroIBQCEKNO: TIBStringField
      DisplayLabel = #199'ek No'
      FieldName = 'CEKNO'
      Origin = 'CEKTAHSILAT.CEKNO'
    end
    object BCTahBodroIBQCEKISLEMKOD: TIntegerField
      FieldName = 'CEKISLEMKOD'
      Origin = 'CEKTAHSILAT.CEKISLEMKOD'
    end
    object BCTahBodroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'CEKTAHSILAT.SISTEM'
    end
    object BCTahBodroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'CEKTAHSILAT.PARABIRIMKOD'
    end
    object BCTahBodroIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'CEKTAHSILAT.ISLEMKURU'
      DisplayFormat = '###,###'
    end
    object BCTahBodroIBQC_TLTAHSILEDILEN: TFloatField
      DisplayLabel = 'TL Tahsil Edilen'
      FieldKind = fkInternalCalc
      FieldName = 'C_TLTAHSILEDILEN'
      Origin = 'CEKTAHSILAT.C_TLTAHSILEDILEN'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object BCTahBodroIBQC_TLODENEN: TFloatField
      DisplayLabel = 'TL '#214'denen'
      FieldKind = fkInternalCalc
      FieldName = 'C_TLODENEN'
      Origin = 'CEKTAHSILAT.C_TLODENEN'
      ReadOnly = True
      DisplayFormat = '###,###'
    end
    object BCTahBodroIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'CEKTAHSILAT.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
  end
  object BCTahBodroSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  TARIH,'
      '  CEKNO,'
      '  ACIKLAMA,'
      '  ODENEN,'
      '  TAHSILEDILEN,'
      '  BAGLANTINO,'
      '  CEKISLEMKOD,'
      '  SISTEM,'
      '  PARABIRIMKOD,'
      '  ISLEMKURU,'
      '  C_TLTAHSILEDILEN,'
      '  C_TLODENEN,'
      '  C_PARABIRIMI'
      'from CEKTAHSILAT '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update CEKTAHSILAT'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  TARIH = :TARIH,'
      '  CEKNO = :CEKNO,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  ODENEN = :ODENEN,'
      '  TAHSILEDILEN = :TAHSILEDILEN,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  CEKISLEMKOD = :CEKISLEMKOD,'
      '  SISTEM = :SISTEM,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  ISLEMKURU = :ISLEMKURU'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into CEKTAHSILAT'
      
        '  (ISLEMKOD, TARIH, CEKNO, ACIKLAMA, ODENEN, TAHSILEDILEN, BAGLA' +
        'NTINO, '
      '   CEKISLEMKOD, SISTEM, PARABIRIMKOD, ISLEMKURU)'
      'values'
      
        '  (:ISLEMKOD, :TARIH, :CEKNO, :ACIKLAMA, :ODENEN, :TAHSILEDILEN,' +
        ' :BAGLANTINO, '
      '   :CEKISLEMKOD, :SISTEM, :PARABIRIMKOD, :ISLEMKURU)')
    DeleteSQL.Strings = (
      'delete from CEKTAHSILAT'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 139
    Top = 506
  end
  object BCTahBodroDS: TDataSource
    DataSet = BCTahBodroIBQ
    Left = 231
    Top = 506
  end
end
