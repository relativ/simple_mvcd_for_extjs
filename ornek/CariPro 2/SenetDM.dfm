object DMSenet: TDMSenet
  OldCreateOrder = False
  Left = 218
  Top = 115
  Height = 597
  Width = 681
  object SenetlerIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SENETBODRO'
      'Where  ISLEMTURKOD = 27 AND SISTEM<>2 AND KAPATMA =1')
    Left = 328
    Top = 16
    object SenetlerIBQSENETBODROKOD: TIntegerField
      FieldName = 'SENETBODROKOD'
      Origin = 'SENETBODRO.SENETBODROKOD'
      Required = True
    end
    object SenetlerIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'SENETBODRO.ISLEMKOD'
    end
    object SenetlerIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'SENETBODRO.CARIKOD'
    end
    object SenetlerIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'SENETBODRO.CARINO'
    end
    object SenetlerIBQSIRA: TIntegerField
      FieldName = 'SIRA'
      Origin = 'SENETBODRO.SIRA'
    end
    object SenetlerIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'SENETBODRO.ACIKLAMA'
      Size = 80
    end
    object SenetlerIBQTEDIYE: TFloatField
      FieldName = 'TEDIYE'
      Origin = 'SENETBODRO.TEDIYE'
    end
    object SenetlerIBQTAHSILAT: TFloatField
      FieldName = 'TAHSILAT'
      Origin = 'SENETBODRO.TAHSILAT'
    end
    object SenetlerIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'SENETBODRO.D_TEDIYE'
    end
    object SenetlerIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'SENETBODRO.D_TAHSILAT'
    end
    object SenetlerIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'SENETBODRO.ISLEMKURU'
    end
    object SenetlerIBQVADE: TDateField
      FieldName = 'VADE'
      Origin = 'SENETBODRO.VADE'
    end
    object SenetlerIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'SENETBODRO.BANKAKOD'
    end
    object SenetlerIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'SENETBODRO.PARABIRIMKOD'
    end
    object SenetlerIBQBANKA: TIBStringField
      FieldName = 'BANKA'
      Origin = 'SENETBODRO.BANKA'
      Size = 30
    end
    object SenetlerIBQKESIDEYERI: TIBStringField
      FieldName = 'KESIDEYERI'
      Origin = 'SENETBODRO.KESIDEYERI'
      Size = 30
    end
    object SenetlerIBQILKCIRO: TIBStringField
      FieldName = 'ILKCIRO'
      Origin = 'SENETBODRO.ILKCIRO'
      Size = 30
    end
    object SenetlerIBQSENETSERINO: TIBStringField
      FieldName = 'SENETSERINO'
      Origin = 'SENETBODRO.SENETSERINO'
    end
    object SenetlerIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'SENETBODRO.KULLANKOD'
    end
    object SenetlerIBQEVRAKDURUMU: TIntegerField
      FieldName = 'EVRAKDURUMU'
      Origin = 'SENETBODRO.EVRAKDURUMU'
    end
    object SenetlerIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'SENETBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object SenetlerIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'SENETBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object SenetlerIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'SENETBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object SenetlerIBQC_BANKAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_BANKAADI'
      Origin = 'SENETBODRO.C_BANKAADI'
      ReadOnly = True
      Size = 30
    end
    object SenetlerIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'SENETBODRO.KAPATMA'
    end
    object SenetlerIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'SENETBODRO.SISTEM'
    end
    object SenetlerIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'SENETBODRO.PERSONELKOD'
    end
    object SenetlerIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'SENETBODRO.ISLEMTUR'
      Size = 10
    end
    object SenetlerIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'SENETBODRO.ISLEMTURKOD'
      ReadOnly = True
    end
    object SenetlerIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'SENETBODRO.BAGLANTINO'
    end
    object SenetlerIBQODENEN: TFloatField
      FieldName = 'ODENEN'
      Origin = 'SENETBODRO.ODENEN'
    end
    object SenetlerIBQTAHSILEDILEN: TFloatField
      FieldName = 'TAHSILEDILEN'
      Origin = 'SENETBODRO.TAHSILEDILEN'
    end
    object SenetlerIBQKALAN: TFloatField
      FieldName = 'KALAN'
      Origin = 'SENETBODRO.KALAN'
    end
  end
  object SenetGirisIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterEdit = SenetGirisIBQAfterEdit
    AfterPost = SenetGirisIBQAfterPost
    OnNewRecord = SenetGirisIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SENETISLEM'
      'Where ISLEMTURKOD=27 and SISTEM<>2')
    UpdateObject = SenetGirisUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'SENETISLEM'
    Left = 32
    Top = 16
    object SenetGirisIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'SENETISLEM.ISLEMKOD'
      Required = True
    end
    object SenetGirisIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'SENETISLEM.CARIKOD'
    end
    object SenetGirisIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'SENETISLEM.CARINO'
    end
    object SenetGirisIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'SENETISLEM.ISLEMTUR'
      Size = 40
    end
    object SenetGirisIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'SENETISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object SenetGirisIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'SENETISLEM.TARIH'
    end
    object SenetGirisIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'SENETISLEM.ACIKLAMA'
      Size = 80
    end
    object SenetGirisIBQTEDIYE: TFloatField
      FieldName = 'TEDIYE'
      Origin = 'SENETISLEM.TEDIYE'
    end
    object SenetGirisIBQTAHSILAT: TFloatField
      FieldName = 'TAHSILAT'
      Origin = 'SENETISLEM.TAHSILAT'
    end
    object SenetGirisIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'SENETISLEM.D_TEDIYE'
    end
    object SenetGirisIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'SENETISLEM.D_TAHSILAT'
    end
    object SenetGirisIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'SENETISLEM.BANKAKOD'
    end
    object SenetGirisIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'SENETISLEM.KASAKOD'
    end
    object SenetGirisIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'SENETISLEM.MAKBUZNO'
    end
    object SenetGirisIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'SENETISLEM.KULLANKOD'
    end
    object SenetGirisIBQCARIKURU: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'SENETISLEM.CARIKURU'
    end
    object SenetGirisIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'SENETISLEM.ISLEMKURU'
    end
    object SenetGirisIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'SENETISLEM.PARABIRIMKOD'
    end
    object SenetGirisIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'SENETISLEM.PERSONELKOD'
    end
    object SenetGirisIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'SENETISLEM.BAGLANTINO'
    end
    object SenetGirisIBQSENETISLEMNO: TIntegerField
      FieldName = 'SENETISLEMNO'
      Origin = 'SENETISLEM.SENETISLEMNO'
    end
    object SenetGirisIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'SENETISLEM.SAAT'
    end
    object SenetGirisIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'SENETISLEM.GELGITKOD'
      Size = 80
    end
    object SenetGirisIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'SENETISLEM.CARIPARABIRIMKOD'
    end
    object SenetGirisIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'SENETISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object SenetGirisIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'SENETISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object SenetGirisIBQC_KASAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KASAADI'
      Origin = 'SENETISLEM.C_KASAADI'
      ReadOnly = True
      Size = 25
    end
    object SenetGirisIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'SENETISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object SenetGirisIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'SENETISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object SenetGirisIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'SENETISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object SenetGirisIBQC_BANKAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_BANKAADI'
      Origin = 'SENETISLEM.C_BANKAADI'
      ReadOnly = True
      Size = 30
    end
    object SenetGirisIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'SENETISLEM.KAPATMA'
    end
    object SenetGirisIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'SENETISLEM.SISTEM'
    end
    object SenetGirisIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'SENETISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object SenetGirisIBQC_CARITEDIYE: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARITEDIYE'
      Origin = 'SENETISLEM.C_CARITEDIYE'
      ReadOnly = True
    end
    object SenetGirisIBQC_CARITAHSILAT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARITAHSILAT'
      Origin = 'SENETISLEM.C_CARITAHSILAT'
      ReadOnly = True
    end
  end
  object SenetGirisUSQL: TIBUpdateSQL
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
      '  SENETISLEMNO,'
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
      'from SENETISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update SENETISLEM'
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
      '  SENETISLEMNO = :SENETISLEMNO,'
      '  SAAT = :SAAT,'
      '  GELGITKOD = :GELGITKOD,'
      '  KAPATMA = :KAPATMA,'
      '  SISTEM = :SISTEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into SENETISLEM'
      
        '  (ISLEMKOD, CARIKOD, CARINO, ISLEMTUR, TARIH, ACIKLAMA, TEDIYE,' +
        ' TAHSILAT, '
      
        '   D_TEDIYE, D_TAHSILAT, BANKAKOD, KASAKOD, MAKBUZNO, KULLANKOD,' +
        ' CARIKURU, '
      
        '   ISLEMKURU, PARABIRIMKOD, PERSONELKOD, BAGLANTINO, SENETISLEMN' +
        'O, SAAT, '
      '   GELGITKOD, KAPATMA, SISTEM)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :CARINO, :ISLEMTUR, :TARIH, :ACIKLAMA, :' +
        'TEDIYE, '
      
        '   :TAHSILAT, :D_TEDIYE, :D_TAHSILAT, :BANKAKOD, :KASAKOD, :MAKB' +
        'UZNO, :KULLANKOD, '
      
        '   :CARIKURU, :ISLEMKURU, :PARABIRIMKOD, :PERSONELKOD, :BAGLANTI' +
        'NO, :SENETISLEMNO, '
      '   :SAAT, :GELGITKOD, :KAPATMA, :SISTEM)')
    DeleteSQL.Strings = (
      'delete from SENETISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 131
    Top = 16
  end
  object SenetGirisDS: TDataSource
    DataSet = SenetGirisIBQ
    Left = 223
    Top = 16
  end
  object SGBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterEdit = SGBodroIBQAfterEdit
    AfterPost = SGBodroIBQAfterPost
    OnNewRecord = SGBodroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = SenetGirisDS
    SQL.Strings = (
      'select * from SENETBODRO'
      'Where ISLEMKOD=:ISLEMKOD')
    UpdateObject = SGBodroUSQL
    GeneratorField.Field = 'SENETBODROKOD'
    GeneratorField.Generator = 'SENETBODRO'
    Left = 32
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SGBodroIBQSENETBODROKOD: TIntegerField
      FieldName = 'SENETBODROKOD'
      Origin = 'SENETBODRO.SENETBODROKOD'
      Required = True
    end
    object SGBodroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'SENETBODRO.ISLEMKOD'
    end
    object SGBodroIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'SENETBODRO.CARIKOD'
    end
    object SGBodroIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'SENETBODRO.CARINO'
    end
    object SGBodroIBQSIRA: TIntegerField
      FieldName = 'SIRA'
      Origin = 'SENETBODRO.SIRA'
    end
    object SGBodroIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'SENETBODRO.ACIKLAMA'
      Size = 80
    end
    object SGBodroIBQTEDIYE: TFloatField
      FieldName = 'TEDIYE'
      Origin = 'SENETBODRO.TEDIYE'
    end
    object SGBodroIBQTAHSILAT: TFloatField
      FieldName = 'TAHSILAT'
      Origin = 'SENETBODRO.TAHSILAT'
    end
    object SGBodroIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'SENETBODRO.D_TEDIYE'
    end
    object SGBodroIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'SENETBODRO.D_TAHSILAT'
    end
    object SGBodroIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'SENETBODRO.ISLEMKURU'
    end
    object SGBodroIBQVADE: TDateField
      FieldName = 'VADE'
      Origin = 'SENETBODRO.VADE'
    end
    object SGBodroIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'SENETBODRO.BANKAKOD'
    end
    object SGBodroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'SENETBODRO.PARABIRIMKOD'
    end
    object SGBodroIBQBANKA: TIBStringField
      FieldName = 'BANKA'
      Origin = 'SENETBODRO.BANKA'
      Size = 30
    end
    object SGBodroIBQKESIDEYERI: TIBStringField
      FieldName = 'KESIDEYERI'
      Origin = 'SENETBODRO.KESIDEYERI'
      Size = 30
    end
    object SGBodroIBQILKCIRO: TIBStringField
      FieldName = 'ILKCIRO'
      Origin = 'SENETBODRO.ILKCIRO'
      Size = 30
    end
    object SGBodroIBQSENETSERINO: TIBStringField
      FieldName = 'SENETSERINO'
      Origin = 'SENETBODRO.SENETSERINO'
    end
    object SGBodroIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'SENETBODRO.KULLANKOD'
    end
    object SGBodroIBQEVRAKDURUMU: TIntegerField
      FieldName = 'EVRAKDURUMU'
      Origin = 'SENETBODRO.EVRAKDURUMU'
    end
    object SGBodroIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'SENETBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object SGBodroIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'SENETBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object SGBodroIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'SENETBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object SGBodroIBQC_BANKAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_BANKAADI'
      Origin = 'SENETBODRO.C_BANKAADI'
      ReadOnly = True
      Size = 30
    end
    object SGBodroIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'SENETBODRO.KAPATMA'
    end
    object SGBodroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'SENETBODRO.SISTEM'
    end
    object SGBodroIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'SENETBODRO.PERSONELKOD'
    end
    object SGBodroIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'SENETBODRO.ISLEMTUR'
      Size = 40
    end
    object SGBodroIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'SENETBODRO.ISLEMTURKOD'
      ReadOnly = True
    end
    object SGBodroIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'SENETBODRO.BAGLANTINO'
    end
    object SGBodroIBQODENEN: TFloatField
      FieldName = 'ODENEN'
      Origin = 'SENETBODRO.ODENEN'
    end
    object SGBodroIBQTAHSILEDILEN: TFloatField
      FieldName = 'TAHSILEDILEN'
      Origin = 'SENETBODRO.TAHSILEDILEN'
    end
    object SGBodroIBQKALAN: TFloatField
      FieldName = 'KALAN'
      Origin = 'SENETBODRO.KALAN'
    end
  end
  object SGBodroUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  SENETBODROKOD,'
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
      '  SENETSERINO,'
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
      'from SENETBODRO '
      'where'
      '  SENETBODROKOD = :SENETBODROKOD')
    ModifySQL.Strings = (
      'update SENETBODRO'
      'set'
      '  SENETBODROKOD = :SENETBODROKOD,'
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
      '  SENETSERINO = :SENETSERINO,'
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
      '  SENETBODROKOD = :OLD_SENETBODROKOD')
    InsertSQL.Strings = (
      'insert into SENETBODRO'
      
        '  (SENETBODROKOD, ISLEMKOD, CARIKOD, CARINO, SIRA, ACIKLAMA, TED' +
        'IYE, TAHSILAT, '
      
        '   D_TEDIYE, D_TAHSILAT, ISLEMKURU, VADE, BANKAKOD, PARABIRIMKOD' +
        ', BANKA, '
      
        '   KESIDEYERI, ILKCIRO, SENETSERINO, KULLANKOD, EVRAKDURUMU, KAP' +
        'ATMA, SISTEM, '
      
        '   PERSONELKOD, ISLEMTUR, BAGLANTINO, ODENEN, TAHSILEDILEN, KALA' +
        'N)'
      'values'
      
        '  (:SENETBODROKOD, :ISLEMKOD, :CARIKOD, :CARINO, :SIRA, :ACIKLAM' +
        'A, :TEDIYE, '
      
        '   :TAHSILAT, :D_TEDIYE, :D_TAHSILAT, :ISLEMKURU, :VADE, :BANKAK' +
        'OD, :PARABIRIMKOD, '
      
        '   :BANKA, :KESIDEYERI, :ILKCIRO, :SENETSERINO, :KULLANKOD, :EVR' +
        'AKDURUMU, '
      
        '   :KAPATMA, :SISTEM, :PERSONELKOD, :ISLEMTUR, :BAGLANTINO, :ODE' +
        'NEN, :TAHSILEDILEN, '
      '   :KALAN)')
    DeleteSQL.Strings = (
      'delete from SENETBODRO'
      'where'
      '  SENETBODROKOD = :OLD_SENETBODROKOD')
    Left = 131
    Top = 72
  end
  object SGBodroDS: TDataSource
    DataSet = SGBodroIBQ
    Left = 223
    Top = 72
  end
  object SenetYazmaIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterEdit = SenetYazmaIBQAfterEdit
    AfterPost = SenetYazmaIBQAfterPost
    OnNewRecord = SenetYazmaIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SENETISLEM'
      'Where ISLEMTURKOD=28 and SISTEM<>2')
    UpdateObject = SenetYazmaUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'SENETISLEM'
    Left = 32
    Top = 120
    object SenetYazmaIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'SENETISLEM.ISLEMKOD'
      Required = True
    end
    object SenetYazmaIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'SENETISLEM.CARIKOD'
    end
    object SenetYazmaIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'SENETISLEM.CARINO'
    end
    object SenetYazmaIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'SENETISLEM.ISLEMTUR'
      Size = 40
    end
    object SenetYazmaIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'SENETISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object SenetYazmaIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'SENETISLEM.TARIH'
    end
    object SenetYazmaIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'SENETISLEM.ACIKLAMA'
      Size = 80
    end
    object SenetYazmaIBQTEDIYE: TFloatField
      FieldName = 'TEDIYE'
      Origin = 'SENETISLEM.TEDIYE'
    end
    object SenetYazmaIBQTAHSILAT: TFloatField
      FieldName = 'TAHSILAT'
      Origin = 'SENETISLEM.TAHSILAT'
    end
    object SenetYazmaIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'SENETISLEM.D_TEDIYE'
    end
    object SenetYazmaIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'SENETISLEM.D_TAHSILAT'
    end
    object SenetYazmaIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'SENETISLEM.BANKAKOD'
    end
    object SenetYazmaIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'SENETISLEM.KASAKOD'
    end
    object SenetYazmaIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'SENETISLEM.MAKBUZNO'
    end
    object SenetYazmaIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'SENETISLEM.KULLANKOD'
    end
    object SenetYazmaIBQCARIKURU: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'SENETISLEM.CARIKURU'
    end
    object SenetYazmaIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'SENETISLEM.ISLEMKURU'
    end
    object SenetYazmaIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'SENETISLEM.PARABIRIMKOD'
    end
    object SenetYazmaIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'SENETISLEM.PERSONELKOD'
    end
    object SenetYazmaIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'SENETISLEM.BAGLANTINO'
    end
    object SenetYazmaIBQSENETISLEMNO: TIntegerField
      FieldName = 'SENETISLEMNO'
      Origin = 'SENETISLEM.SENETISLEMNO'
    end
    object SenetYazmaIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'SENETISLEM.SAAT'
    end
    object SenetYazmaIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'SENETISLEM.GELGITKOD'
      Size = 80
    end
    object SenetYazmaIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'SENETISLEM.CARIPARABIRIMKOD'
    end
    object SenetYazmaIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'SENETISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object SenetYazmaIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'SENETISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object SenetYazmaIBQC_KASAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KASAADI'
      Origin = 'SENETISLEM.C_KASAADI'
      ReadOnly = True
      Size = 25
    end
    object SenetYazmaIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'SENETISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object SenetYazmaIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'SENETISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object SenetYazmaIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'SENETISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object SenetYazmaIBQC_BANKAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_BANKAADI'
      Origin = 'SENETISLEM.C_BANKAADI'
      ReadOnly = True
      Size = 30
    end
    object SenetYazmaIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'SENETISLEM.KAPATMA'
    end
    object SenetYazmaIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'SENETISLEM.SISTEM'
    end
    object SenetYazmaIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'SENETISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object SenetYazmaIBQC_CARITEDIYE: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARITEDIYE'
      Origin = 'SENETISLEM.C_CARITEDIYE'
      ReadOnly = True
    end
    object SenetYazmaIBQC_CARITAHSILAT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARITAHSILAT'
      Origin = 'SENETISLEM.C_CARITAHSILAT'
      ReadOnly = True
    end
  end
  object SenetYazmaUSQL: TIBUpdateSQL
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
      '  SENETISLEMNO,'
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
      'from SENETISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update SENETISLEM'
      'set'
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
      '  SENETISLEMNO = :SENETISLEMNO,'
      '  SAAT = :SAAT,'
      '  GELGITKOD = :GELGITKOD,'
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  KAPATMA = :KAPATMA,'
      '  SISTEM = :SISTEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into SENETISLEM'
      
        '  (TARIH, ACIKLAMA, TEDIYE, TAHSILAT, D_TEDIYE, D_TAHSILAT, BANK' +
        'AKOD, KASAKOD, '
      
        '   MAKBUZNO, KULLANKOD, CARIKURU, ISLEMKURU, PARABIRIMKOD, PERSO' +
        'NELKOD, '
      
        '   BAGLANTINO, SENETISLEMNO, SAAT, GELGITKOD, CARIPARABIRIMKOD, ' +
        'KAPATMA, '
      '   SISTEM)'
      'values'
      
        '  (:TARIH, :ACIKLAMA, :TEDIYE, :TAHSILAT, :D_TEDIYE, :D_TAHSILAT' +
        ', :BANKAKOD, '
      
        '   :KASAKOD, :MAKBUZNO, :KULLANKOD, :CARIKURU, :ISLEMKURU, :PARA' +
        'BIRIMKOD, '
      
        '   :PERSONELKOD, :BAGLANTINO, :SENETISLEMNO, :SAAT, :GELGITKOD, ' +
        ':CARIPARABIRIMKOD, '
      '   :KAPATMA, :SISTEM)')
    DeleteSQL.Strings = (
      'delete from SENETISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 131
    Top = 120
  end
  object SenetYazmaDS: TDataSource
    DataSet = SenetYazmaIBQ
    Left = 223
    Top = 120
  end
  object SYBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterEdit = SYBodroIBQAfterEdit
    AfterPost = SYBodroIBQAfterPost
    OnNewRecord = SYBodroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = SenetYazmaDS
    SQL.Strings = (
      'select * from SENETBODRO'
      'Where ISLEMKOD=:ISLEMKOD')
    UpdateObject = SYBodroUSQL
    GeneratorField.Field = 'SENETBODROKOD'
    GeneratorField.Generator = 'SENETISLEM'
    Left = 32
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SYBodroIBQSENETBODROKOD: TIntegerField
      FieldName = 'SENETBODROKOD'
      Origin = 'SENETBODRO.SENETBODROKOD'
      Required = True
    end
    object SYBodroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'SENETBODRO.ISLEMKOD'
    end
    object SYBodroIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'SENETBODRO.CARIKOD'
    end
    object SYBodroIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'SENETBODRO.CARINO'
    end
    object SYBodroIBQSIRA: TIntegerField
      FieldName = 'SIRA'
      Origin = 'SENETBODRO.SIRA'
    end
    object SYBodroIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'SENETBODRO.ACIKLAMA'
      Size = 80
    end
    object SYBodroIBQTEDIYE: TFloatField
      FieldName = 'TEDIYE'
      Origin = 'SENETBODRO.TEDIYE'
    end
    object SYBodroIBQTAHSILAT: TFloatField
      FieldName = 'TAHSILAT'
      Origin = 'SENETBODRO.TAHSILAT'
    end
    object SYBodroIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'SENETBODRO.D_TEDIYE'
    end
    object SYBodroIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'SENETBODRO.D_TAHSILAT'
    end
    object SYBodroIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'SENETBODRO.ISLEMKURU'
    end
    object SYBodroIBQVADE: TDateField
      FieldName = 'VADE'
      Origin = 'SENETBODRO.VADE'
    end
    object SYBodroIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'SENETBODRO.BANKAKOD'
    end
    object SYBodroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'SENETBODRO.PARABIRIMKOD'
    end
    object SYBodroIBQBANKA: TIBStringField
      FieldName = 'BANKA'
      Origin = 'SENETBODRO.BANKA'
      Size = 30
    end
    object SYBodroIBQKESIDEYERI: TIBStringField
      FieldName = 'KESIDEYERI'
      Origin = 'SENETBODRO.KESIDEYERI'
      Size = 30
    end
    object SYBodroIBQILKCIRO: TIBStringField
      FieldName = 'ILKCIRO'
      Origin = 'SENETBODRO.ILKCIRO'
      Size = 30
    end
    object SYBodroIBQSENETSERINO: TIBStringField
      FieldName = 'SENETSERINO'
      Origin = 'SENETBODRO.SENETSERINO'
    end
    object SYBodroIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'SENETBODRO.KULLANKOD'
    end
    object SYBodroIBQEVRAKDURUMU: TIntegerField
      FieldName = 'EVRAKDURUMU'
      Origin = 'SENETBODRO.EVRAKDURUMU'
    end
    object SYBodroIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'SENETBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object SYBodroIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'SENETBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object SYBodroIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'SENETBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object SYBodroIBQC_BANKAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_BANKAADI'
      Origin = 'SENETBODRO.C_BANKAADI'
      ReadOnly = True
      Size = 30
    end
    object SYBodroIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'SENETBODRO.KAPATMA'
    end
    object SYBodroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'SENETBODRO.SISTEM'
    end
    object SYBodroIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'SENETBODRO.PERSONELKOD'
    end
    object SYBodroIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'SENETBODRO.ISLEMTUR'
      Size = 40
    end
    object SYBodroIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'SENETBODRO.ISLEMTURKOD'
      ReadOnly = True
    end
    object SYBodroIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'SENETBODRO.BAGLANTINO'
    end
    object SYBodroIBQODENEN: TFloatField
      FieldName = 'ODENEN'
      Origin = 'SENETBODRO.ODENEN'
    end
    object SYBodroIBQTAHSILEDILEN: TFloatField
      FieldName = 'TAHSILEDILEN'
      Origin = 'SENETBODRO.TAHSILEDILEN'
    end
    object SYBodroIBQKALAN: TFloatField
      FieldName = 'KALAN'
      Origin = 'SENETBODRO.KALAN'
    end
  end
  object SYBodroUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  SENETBODROKOD,'
      '  ISLEMKOD,'
      '  CARIKOD,'
      '  CARINO,'
      '  SIRA,'
      '  ISLEMTUR,'
      '  ISLEMTURKOD,'
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
      '  SENETSERINO,'
      '  KULLANKOD,'
      '  EVRAKDURUMU,'
      '  C_PARABIRIMI,'
      '  C_CARIADI,'
      '  C_KULLANICIADI,'
      '  C_BANKAADI,'
      '  KAPATMA,'
      '  SISTEM,'
      '  PERSONELKOD,'
      '  BAGLANTINO,'
      '  ODENEN,'
      '  TAHSILEDILEN,'
      '  KALAN'
      'from SENETBODRO '
      'where'
      '  SENETBODROKOD = :SENETBODROKOD')
    ModifySQL.Strings = (
      'update SENETBODRO'
      'set'
      '  SENETBODROKOD = :SENETBODROKOD,'
      '  ISLEMKOD = :ISLEMKOD,'
      '  CARIKOD = :CARIKOD,'
      '  CARINO = :CARINO,'
      '  SIRA = :SIRA,'
      '  ISLEMTUR = :ISLEMTUR,'
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
      '  SENETSERINO = :SENETSERINO,'
      '  KULLANKOD = :KULLANKOD,'
      '  EVRAKDURUMU = :EVRAKDURUMU,'
      '  KAPATMA = :KAPATMA,'
      '  SISTEM = :SISTEM,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  ODENEN = :ODENEN,'
      '  TAHSILEDILEN = :TAHSILEDILEN,'
      '  KALAN = :KALAN'
      'where'
      '  SENETBODROKOD = :OLD_SENETBODROKOD')
    InsertSQL.Strings = (
      'insert into SENETBODRO'
      
        '  (SENETBODROKOD, ISLEMKOD, CARIKOD, CARINO, SIRA, ISLEMTUR, ACI' +
        'KLAMA, '
      
        '   TEDIYE, TAHSILAT, D_TEDIYE, D_TAHSILAT, ISLEMKURU, VADE, BANK' +
        'AKOD, PARABIRIMKOD, '
      
        '   BANKA, KESIDEYERI, ILKCIRO, SENETSERINO, KULLANKOD, EVRAKDURU' +
        'MU, KAPATMA, '
      '   SISTEM, PERSONELKOD, BAGLANTINO, ODENEN, TAHSILEDILEN, KALAN)'
      'values'
      
        '  (:SENETBODROKOD, :ISLEMKOD, :CARIKOD, :CARINO, :SIRA, :ISLEMTU' +
        'R, :ACIKLAMA, '
      
        '   :TEDIYE, :TAHSILAT, :D_TEDIYE, :D_TAHSILAT, :ISLEMKURU, :VADE' +
        ', :BANKAKOD, '
      
        '   :PARABIRIMKOD, :BANKA, :KESIDEYERI, :ILKCIRO, :SENETSERINO, :' +
        'KULLANKOD, '
      
        '   :EVRAKDURUMU, :KAPATMA, :SISTEM, :PERSONELKOD, :BAGLANTINO, :' +
        'ODENEN, '
      '   :TAHSILEDILEN, :KALAN)')
    DeleteSQL.Strings = (
      'delete from SENETBODRO'
      'where'
      '  SENETBODROKOD = :OLD_SENETBODROKOD')
    Left = 131
    Top = 176
  end
  object SYBodroDS: TDataSource
    DataSet = SYBodroIBQ
    Left = 223
    Top = 176
  end
  object SenetCiroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterEdit = SenetCiroIBQAfterEdit
    AfterPost = SenetCiroIBQAfterPost
    OnNewRecord = SenetCiroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SenetISLEM'
      'Where ISLEMTURKOD=31 and SISTEM<>2')
    UpdateObject = SenetCiroUSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'SENETISLEM'
    Left = 32
    Top = 224
    object SenetCiroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'SENETISLEM.ISLEMKOD'
      Required = True
    end
    object SenetCiroIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'SENETISLEM.CARIKOD'
    end
    object SenetCiroIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'SENETISLEM.CARINO'
    end
    object SenetCiroIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'SENETISLEM.ISLEMTUR'
      Size = 40
    end
    object SenetCiroIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'SENETISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object SenetCiroIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'SENETISLEM.TARIH'
    end
    object SenetCiroIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'SENETISLEM.ACIKLAMA'
      Size = 80
    end
    object SenetCiroIBQTEDIYE: TFloatField
      FieldName = 'TEDIYE'
      Origin = 'SENETISLEM.TEDIYE'
    end
    object SenetCiroIBQTAHSILAT: TFloatField
      FieldName = 'TAHSILAT'
      Origin = 'SENETISLEM.TAHSILAT'
    end
    object SenetCiroIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'SENETISLEM.D_TEDIYE'
    end
    object SenetCiroIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'SENETISLEM.D_TAHSILAT'
    end
    object SenetCiroIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'SENETISLEM.BANKAKOD'
    end
    object SenetCiroIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'SENETISLEM.KASAKOD'
    end
    object SenetCiroIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'SENETISLEM.MAKBUZNO'
    end
    object SenetCiroIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'SENETISLEM.KULLANKOD'
    end
    object SenetCiroIBQCARIKURU: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'SENETISLEM.CARIKURU'
    end
    object SenetCiroIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'SENETISLEM.ISLEMKURU'
    end
    object SenetCiroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'SENETISLEM.PARABIRIMKOD'
    end
    object SenetCiroIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'SENETISLEM.PERSONELKOD'
    end
    object SenetCiroIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'SENETISLEM.BAGLANTINO'
    end
    object SenetCiroIBQSENETISLEMNO: TIntegerField
      FieldName = 'SENETISLEMNO'
      Origin = 'SENETISLEM.SENETISLEMNO'
    end
    object SenetCiroIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'SENETISLEM.SAAT'
    end
    object SenetCiroIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'SENETISLEM.GELGITKOD'
      Size = 80
    end
    object SenetCiroIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'SENETISLEM.CARIPARABIRIMKOD'
    end
    object SenetCiroIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'SENETISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object SenetCiroIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'SENETISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object SenetCiroIBQC_KASAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KASAADI'
      Origin = 'SENETISLEM.C_KASAADI'
      ReadOnly = True
      Size = 25
    end
    object SenetCiroIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'SENETISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object SenetCiroIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'SENETISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object SenetCiroIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'SENETISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object SenetCiroIBQC_BANKAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_BANKAADI'
      Origin = 'SENETISLEM.C_BANKAADI'
      ReadOnly = True
      Size = 30
    end
    object SenetCiroIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'SENETISLEM.KAPATMA'
    end
    object SenetCiroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'SENETISLEM.SISTEM'
    end
    object SenetCiroIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'SENETISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object SenetCiroIBQC_CARITEDIYE: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARITEDIYE'
      Origin = 'SENETISLEM.C_CARITEDIYE'
      ReadOnly = True
    end
    object SenetCiroIBQC_CARITAHSILAT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARITAHSILAT'
      Origin = 'SENETISLEM.C_CARITAHSILAT'
      ReadOnly = True
    end
  end
  object SenetCiroUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from SenetISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update SenetISLEM'
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
      '  SENETISLEMNO = :SENETISLEMNO,'
      '  SAAT = :SAAT,'
      '  GELGITKOD = :GELGITKOD,'
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  KAPATMA = :KAPATMA,'
      '  SISTEM = :SISTEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into SenetISLEM'
      
        '  (ISLEMKOD, CARIKOD, CARINO, ISLEMTUR, TARIH, ACIKLAMA, TEDIYE,' +
        ' TAHSILAT, '
      
        '   D_TEDIYE, D_TAHSILAT, BANKAKOD, KASAKOD, MAKBUZNO, KULLANKOD,' +
        ' CARIKURU, '
      
        '   ISLEMKURU, PARABIRIMKOD, PERSONELKOD, BAGLANTINO, SENETISLEMN' +
        'O, SAAT, '
      '   GELGITKOD, CARIPARABIRIMKOD, KAPATMA, SISTEM)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :CARINO, :ISLEMTUR, :TARIH, :ACIKLAMA, :' +
        'TEDIYE, '
      
        '   :TAHSILAT, :D_TEDIYE, :D_TAHSILAT, :BANKAKOD, :KASAKOD, :MAKB' +
        'UZNO, :KULLANKOD, '
      
        '   :CARIKURU, :ISLEMKURU, :PARABIRIMKOD, :PERSONELKOD, :BAGLANTI' +
        'NO, :SENETISLEMNO, '
      '   :SAAT, :GELGITKOD, :CARIPARABIRIMKOD, :KAPATMA, :SISTEM)')
    DeleteSQL.Strings = (
      'delete from SenetISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 131
    Top = 224
  end
  object SenetCiroDS: TDataSource
    DataSet = SenetCiroIBQ
    Left = 223
    Top = 224
  end
  object SCBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterEdit = SCBodroIBQAfterEdit
    AfterPost = SCBodroIBQAfterPost
    OnNewRecord = SCBodroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = SenetCiroDS
    SQL.Strings = (
      'select * from SenetBODRO'
      'Where ISLEMKOD=:ISLEMKOD')
    UpdateObject = SCBodroUSQL
    GeneratorField.Field = 'SENETBODROKOD'
    GeneratorField.Generator = 'SENETBODRO'
    Left = 32
    Top = 280
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SCBodroIBQSENETBODROKOD: TIntegerField
      FieldName = 'SENETBODROKOD'
      Origin = 'SENETBODRO.SENETBODROKOD'
      Required = True
    end
    object SCBodroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'SENETBODRO.ISLEMKOD'
    end
    object SCBodroIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'SENETBODRO.CARIKOD'
    end
    object SCBodroIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'SENETBODRO.CARINO'
    end
    object SCBodroIBQSIRA: TIntegerField
      FieldName = 'SIRA'
      Origin = 'SENETBODRO.SIRA'
    end
    object SCBodroIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'SENETBODRO.ACIKLAMA'
      Size = 80
    end
    object SCBodroIBQTEDIYE: TFloatField
      FieldName = 'TEDIYE'
      Origin = 'SENETBODRO.TEDIYE'
    end
    object SCBodroIBQTAHSILAT: TFloatField
      FieldName = 'TAHSILAT'
      Origin = 'SENETBODRO.TAHSILAT'
    end
    object SCBodroIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'SENETBODRO.D_TEDIYE'
    end
    object SCBodroIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'SENETBODRO.D_TAHSILAT'
    end
    object SCBodroIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'SENETBODRO.ISLEMKURU'
    end
    object SCBodroIBQVADE: TDateField
      FieldName = 'VADE'
      Origin = 'SENETBODRO.VADE'
    end
    object SCBodroIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'SENETBODRO.BANKAKOD'
    end
    object SCBodroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'SENETBODRO.PARABIRIMKOD'
    end
    object SCBodroIBQBANKA: TIBStringField
      FieldName = 'BANKA'
      Origin = 'SENETBODRO.BANKA'
      Size = 30
    end
    object SCBodroIBQKESIDEYERI: TIBStringField
      FieldName = 'KESIDEYERI'
      Origin = 'SENETBODRO.KESIDEYERI'
      Size = 30
    end
    object SCBodroIBQILKCIRO: TIBStringField
      FieldName = 'ILKCIRO'
      Origin = 'SENETBODRO.ILKCIRO'
      Size = 30
    end
    object SCBodroIBQSENETSERINO: TIBStringField
      FieldName = 'SENETSERINO'
      Origin = 'SENETBODRO.SENETSERINO'
    end
    object SCBodroIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'SENETBODRO.KULLANKOD'
    end
    object SCBodroIBQEVRAKDURUMU: TIntegerField
      FieldName = 'EVRAKDURUMU'
      Origin = 'SENETBODRO.EVRAKDURUMU'
    end
    object SCBodroIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'SENETBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object SCBodroIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'SENETBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object SCBodroIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'SENETBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object SCBodroIBQC_BANKAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_BANKAADI'
      Origin = 'SENETBODRO.C_BANKAADI'
      ReadOnly = True
      Size = 30
    end
    object SCBodroIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'SENETBODRO.KAPATMA'
    end
    object SCBodroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'SENETBODRO.SISTEM'
    end
    object SCBodroIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'SENETBODRO.PERSONELKOD'
    end
    object SCBodroIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'SENETBODRO.ISLEMTUR'
      Size = 10
    end
    object SCBodroIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'SENETBODRO.ISLEMTURKOD'
      ReadOnly = True
    end
    object SCBodroIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'SENETBODRO.BAGLANTINO'
    end
    object SCBodroIBQODENEN: TFloatField
      FieldName = 'ODENEN'
      Origin = 'SENETBODRO.ODENEN'
    end
    object SCBodroIBQTAHSILEDILEN: TFloatField
      FieldName = 'TAHSILEDILEN'
      Origin = 'SENETBODRO.TAHSILEDILEN'
    end
    object SCBodroIBQKALAN: TFloatField
      FieldName = 'KALAN'
      Origin = 'SENETBODRO.KALAN'
    end
  end
  object SCBodroUSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from SenetBODRO '
      'where'
      '  SENETBODROKOD = :SENETBODROKOD')
    ModifySQL.Strings = (
      'update SenetBODRO'
      'set'
      '  SENETBODROKOD = :SENETBODROKOD,'
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
      '  SENETSERINO = :SENETSERINO,'
      '  KULLANKOD = :KULLANKOD,'
      '  EVRAKDURUMU = :EVRAKDURUMU,'
      '  KAPATMA = :KAPATMA,'
      '  SISTEM = :SISTEM,'
      '  PERSONELKOD = :PERSONELKOD,'
      '  ISLEMTUR = :ISLEMTUR,'
      '  ISLEMTURKOD = :ISLEMTURKOD,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  ODENEN = :ODENEN,'
      '  TAHSILEDILEN = :TAHSILEDILEN,'
      '  KALAN = :KALAN'
      'where'
      '  SENETBODROKOD = :OLD_SENETBODROKOD')
    InsertSQL.Strings = (
      'insert into SenetBODRO'
      
        '  (SENETBODROKOD, ISLEMKOD, CARIKOD, CARINO, SIRA, ACIKLAMA, TED' +
        'IYE, TAHSILAT, '
      
        '   D_TEDIYE, D_TAHSILAT, ISLEMKURU, VADE, BANKAKOD, PARABIRIMKOD' +
        ', BANKA, '
      
        '   KESIDEYERI, ILKCIRO, SENETSERINO, KULLANKOD, EVRAKDURUMU, KAP' +
        'ATMA, SISTEM, '
      
        '   PERSONELKOD, ISLEMTUR, ISLEMTURKOD, BAGLANTINO, ODENEN, TAHSI' +
        'LEDILEN, '
      '   KALAN)'
      'values'
      
        '  (:SENETBODROKOD, :ISLEMKOD, :CARIKOD, :CARINO, :SIRA, :ACIKLAM' +
        'A, :TEDIYE, '
      
        '   :TAHSILAT, :D_TEDIYE, :D_TAHSILAT, :ISLEMKURU, :VADE, :BANKAK' +
        'OD, :PARABIRIMKOD, '
      
        '   :BANKA, :KESIDEYERI, :ILKCIRO, :SENETSERINO, :KULLANKOD, :EVR' +
        'AKDURUMU, '
      
        '   :KAPATMA, :SISTEM, :PERSONELKOD, :ISLEMTUR, :ISLEMTURKOD, :BA' +
        'GLANTINO, '
      '   :ODENEN, :TAHSILEDILEN, :KALAN)')
    DeleteSQL.Strings = (
      'delete from SenetBODRO'
      'where'
      '  SENETBODROKOD = :OLD_SENETBODROKOD')
    Left = 131
    Top = 280
  end
  object SCBodroDS: TDataSource
    DataSet = SCBodroIBQ
    Left = 223
    Top = 280
  end
  object SenetlerDS: TDataSource
    DataSet = SenetlerIBQ
    Left = 408
    Top = 16
  end
  object SenetListIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CEKBODRO'
      'Where  (ISLEMTURKOD = 27 or ISLEMTURKOD = 28) AND SISTEM<>2 ')
    Left = 328
    Top = 80
    object SenetListIBQCEKBODROKOD: TIntegerField
      FieldName = 'CEKBODROKOD'
      Origin = 'CEKBODRO.CEKBODROKOD'
      Required = True
    end
    object SenetListIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'CEKBODRO.ISLEMKOD'
    end
    object SenetListIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'CEKBODRO.CARIKOD'
    end
    object SenetListIBQCARINO: TIntegerField
      DisplayLabel = 'Cari No'
      FieldName = 'CARINO'
      Origin = 'CEKBODRO.CARINO'
    end
    object SenetListIBQSIRA: TIntegerField
      DisplayLabel = #199'ek No'
      FieldName = 'SIRA'
      Origin = 'CEKBODRO.SIRA'
    end
    object SenetListIBQACIKLAMA: TIBStringField
      DisplayLabel = 'A'#231#305'klama'
      FieldName = 'ACIKLAMA'
      Origin = 'CEKBODRO.ACIKLAMA'
      Size = 80
    end
    object SenetListIBQTEDIYE: TFloatField
      DisplayLabel = 'TL '#199'ek '#199#305'k'#305#351#305
      FieldName = 'TEDIYE'
      Origin = 'CEKBODRO.TEDIYE'
      EditFormat = '###.###'
    end
    object SenetListIBQTAHSILAT: TFloatField
      DisplayLabel = 'TL '#199'ek Giri'#351'i'
      FieldName = 'TAHSILAT'
      Origin = 'CEKBODRO.TAHSILAT'
      EditFormat = '###.###'
    end
    object SenetListIBQD_TEDIYE: TFloatField
      DisplayLabel = #199'ek '#199#305'k'#305#351#305
      FieldName = 'D_TEDIYE'
      Origin = 'CEKBODRO.D_TEDIYE'
      EditFormat = '###.###'
    end
    object SenetListIBQD_TAHSILAT: TFloatField
      DisplayLabel = #199'ek Giri'#351'i'
      FieldName = 'D_TAHSILAT'
      Origin = 'CEKBODRO.D_TAHSILAT'
      EditFormat = '###.###'
    end
    object SenetListIBQISLEMKURU: TFloatField
      DisplayLabel = #304#351'lem Kuru'
      FieldName = 'ISLEMKURU'
      Origin = 'CEKBODRO.ISLEMKURU'
      EditFormat = '###.###'
    end
    object SenetListIBQVADE: TDateField
      DisplayLabel = 'Vade'
      FieldName = 'VADE'
      Origin = 'CEKBODRO.VADE'
      EditMask = '!99/99/00;1;_'
    end
    object SenetListIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'CEKBODRO.BANKAKOD'
    end
    object SenetListIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'CEKBODRO.PARABIRIMKOD'
    end
    object SenetListIBQBANKA: TIBStringField
      DisplayLabel = 'Banka'
      FieldName = 'BANKA'
      Origin = 'CEKBODRO.BANKA'
      Size = 30
    end
    object SenetListIBQKESIDEYERI: TIBStringField
      DisplayLabel = 'Ke'#351'ide Yeri'
      FieldName = 'KESIDEYERI'
      Origin = 'CEKBODRO.KESIDEYERI'
      Size = 30
    end
    object SenetListIBQILKCIRO: TIBStringField
      DisplayLabel = #304'lk Ciro'
      FieldName = 'ILKCIRO'
      Origin = 'CEKBODRO.ILKCIRO'
      Size = 30
    end
    object SenetListIBQCEKSERINO: TIBStringField
      DisplayLabel = #199'ek Seri No'
      FieldName = 'CEKSERINO'
      Origin = 'CEKBODRO.CEKSERINO'
    end
    object SenetListIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'CEKBODRO.KULLANKOD'
    end
    object SenetListIBQEVRAKDURUMU: TIntegerField
      DisplayLabel = #199'ek Durumu'
      FieldName = 'EVRAKDURUMU'
      Origin = 'CEKBODRO.EVRAKDURUMU'
    end
    object SenetListIBQC_PARABIRIMI: TIBStringField
      DisplayLabel = 'P.B.'
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'CEKBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object SenetListIBQC_CARIADI: TIBStringField
      DisplayLabel = 'Cari Unvan'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'CEKBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object SenetListIBQC_KULLANICIADI: TIBStringField
      DisplayLabel = 'Kullan'#305'c'#305
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'CEKBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object SenetListIBQC_BANKAADI: TIBStringField
      DisplayLabel = 'Banka Hesap'
      FieldKind = fkInternalCalc
      FieldName = 'C_BANKAADI'
      Origin = 'CEKBODRO.C_BANKAADI'
      ReadOnly = True
      Size = 30
    end
    object SenetListIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'CEKBODRO.KAPATMA'
    end
    object SenetListIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'CEKBODRO.SISTEM'
    end
    object SenetListIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'CEKBODRO.PERSONELKOD'
    end
    object SenetListIBQISLEMTUR: TIBStringField
      DisplayLabel = #304#351'lem T'#252'r'#252
      FieldName = 'ISLEMTUR'
      Origin = 'CEKBODRO.ISLEMTUR'
      Size = 10
    end
    object SenetListIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'CEKBODRO.ISLEMTURKOD'
      ReadOnly = True
    end
    object SenetListIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'CEKBODRO.BAGLANTINO'
    end
    object SenetListIBQODENEN: TFloatField
      DisplayLabel = #214'denen'
      FieldName = 'ODENEN'
      Origin = 'CEKBODRO.ODENEN'
      EditFormat = '###.###'
    end
    object SenetListIBQTAHSILEDILEN: TFloatField
      DisplayLabel = 'Tahsil Edilen'
      FieldName = 'TAHSILEDILEN'
      Origin = 'CEKBODRO.TAHSILEDILEN'
      EditFormat = '###.###'
    end
    object SenetListIBQKALAN: TFloatField
      DisplayLabel = 'Kalan'
      FieldName = 'KALAN'
      Origin = 'CEKBODRO.KALAN'
      EditFormat = '###.###'
    end
  end
  object SenetListDS: TDataSource
    DataSet = SenetListIBQ
    Left = 408
    Top = 80
  end
  object EldenSTahsilatIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterEdit = EldenSTahsilatIBQAfterEdit
    AfterPost = EldenSTahsilatIBQAfterPost
    OnNewRecord = EldenSTahsilatIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SENETISLEM'
      'Where ISLEMTURKOD=51 and SISTEM<>2')
    UpdateObject = EldenSTahsilatSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'SENETISLEM'
    Left = 32
    Top = 336
    object EldenSTahsilatIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'SENETISLEM.ISLEMKOD'
      Required = True
    end
    object EldenSTahsilatIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'SENETISLEM.CARIKOD'
    end
    object EldenSTahsilatIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'SENETISLEM.CARINO'
    end
    object EldenSTahsilatIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'SENETISLEM.ISLEMTUR'
      Size = 40
    end
    object EldenSTahsilatIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'SENETISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object EldenSTahsilatIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'SENETISLEM.TARIH'
    end
    object EldenSTahsilatIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'SENETISLEM.ACIKLAMA'
      Size = 80
    end
    object EldenSTahsilatIBQTEDIYE: TFloatField
      FieldName = 'TEDIYE'
      Origin = 'SENETISLEM.TEDIYE'
    end
    object EldenSTahsilatIBQTAHSILAT: TFloatField
      FieldName = 'TAHSILAT'
      Origin = 'SENETISLEM.TAHSILAT'
    end
    object EldenSTahsilatIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'SENETISLEM.D_TEDIYE'
    end
    object EldenSTahsilatIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'SENETISLEM.D_TAHSILAT'
    end
    object EldenSTahsilatIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'SENETISLEM.BANKAKOD'
    end
    object EldenSTahsilatIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'SENETISLEM.KASAKOD'
    end
    object EldenSTahsilatIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'SENETISLEM.MAKBUZNO'
    end
    object EldenSTahsilatIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'SENETISLEM.KULLANKOD'
    end
    object EldenSTahsilatIBQCARIKURU: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'SENETISLEM.CARIKURU'
    end
    object EldenSTahsilatIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'SENETISLEM.ISLEMKURU'
    end
    object EldenSTahsilatIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'SENETISLEM.PARABIRIMKOD'
    end
    object EldenSTahsilatIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'SENETISLEM.PERSONELKOD'
    end
    object EldenSTahsilatIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'SENETISLEM.BAGLANTINO'
    end
    object EldenSTahsilatIBQSENETISLEMNO: TIntegerField
      FieldName = 'SENETISLEMNO'
      Origin = 'SENETISLEM.SENETISLEMNO'
    end
    object EldenSTahsilatIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'SENETISLEM.SAAT'
    end
    object EldenSTahsilatIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'SENETISLEM.GELGITKOD'
      Size = 80
    end
    object EldenSTahsilatIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'SENETISLEM.CARIPARABIRIMKOD'
    end
    object EldenSTahsilatIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'SENETISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object EldenSTahsilatIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'SENETISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object EldenSTahsilatIBQC_KASAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KASAADI'
      Origin = 'SENETISLEM.C_KASAADI'
      ReadOnly = True
      Size = 25
    end
    object EldenSTahsilatIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'SENETISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object EldenSTahsilatIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'SENETISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object EldenSTahsilatIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'SENETISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object EldenSTahsilatIBQC_BANKAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_BANKAADI'
      Origin = 'SENETISLEM.C_BANKAADI'
      ReadOnly = True
      Size = 30
    end
    object EldenSTahsilatIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'SENETISLEM.KAPATMA'
    end
    object EldenSTahsilatIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'SENETISLEM.SISTEM'
    end
    object EldenSTahsilatIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'SENETISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object EldenSTahsilatIBQC_CARITEDIYE: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARITEDIYE'
      Origin = 'SENETISLEM.C_CARITEDIYE'
      ReadOnly = True
    end
    object EldenSTahsilatIBQC_CARITAHSILAT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARITAHSILAT'
      Origin = 'SENETISLEM.C_CARITAHSILAT'
      ReadOnly = True
    end
  end
  object EldenSTahsilatSQL: TIBUpdateSQL
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
      '  SENETISLEMNO,'
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
      'from SENETISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update SENETISLEM'
      'set'
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
      '  SENETISLEMNO = :SENETISLEMNO,'
      '  SAAT = :SAAT,'
      '  GELGITKOD = :GELGITKOD,'
      '  KAPATMA = :KAPATMA,'
      '  SISTEM = :SISTEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into SENETISLEM'
      
        '  (TARIH, ACIKLAMA, TEDIYE, TAHSILAT, D_TEDIYE, D_TAHSILAT, BANK' +
        'AKOD, KASAKOD, '
      
        '   MAKBUZNO, KULLANKOD, CARIKURU, ISLEMKURU, PARABIRIMKOD, PERSO' +
        'NELKOD, '
      '   BAGLANTINO, SENETISLEMNO, SAAT, GELGITKOD, KAPATMA, SISTEM)'
      'values'
      
        '  (:TARIH, :ACIKLAMA, :TEDIYE, :TAHSILAT, :D_TEDIYE, :D_TAHSILAT' +
        ', :BANKAKOD, '
      
        '   :KASAKOD, :MAKBUZNO, :KULLANKOD, :CARIKURU, :ISLEMKURU, :PARA' +
        'BIRIMKOD, '
      
        '   :PERSONELKOD, :BAGLANTINO, :SENETISLEMNO, :SAAT, :GELGITKOD, ' +
        ':KAPATMA, '
      '   :SISTEM)')
    DeleteSQL.Strings = (
      'delete from SENETISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 131
    Top = 336
  end
  object EldenSTahsilatDS: TDataSource
    DataSet = EldenSTahsilatIBQ
    Left = 223
    Top = 336
  end
  object ESTahBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = ESTahBodroIBQAfterPost
    OnNewRecord = ESTahBodroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = EldenSTahsilatDS
    SQL.Strings = (
      'select * from SENETTAHSILAT'
      'where SENETISLEMKOD =:ISLEMKOD')
    UpdateObject = ESTahBodroSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'SENETTAHSILAT'
    Left = 32
    Top = 394
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object ESTahBodroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'SENETTAHSILAT.ISLEMKOD'
      Required = True
    end
    object ESTahBodroIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'SENETTAHSILAT.TARIH'
    end
    object ESTahBodroIBQSENETNO: TIBStringField
      FieldName = 'SENETNO'
      Origin = 'SENETTAHSILAT.SENETNO'
    end
    object ESTahBodroIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'SENETTAHSILAT.ACIKLAMA'
      Size = 80
    end
    object ESTahBodroIBQODENEN: TFloatField
      FieldName = 'ODENEN'
      Origin = 'SENETTAHSILAT.ODENEN'
    end
    object ESTahBodroIBQTAHSILEDILEN: TFloatField
      FieldName = 'TAHSILEDILEN'
      Origin = 'SENETTAHSILAT.TAHSILEDILEN'
    end
    object ESTahBodroIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'SENETTAHSILAT.BAGLANTINO'
    end
    object ESTahBodroIBQSENETISLEMKOD: TIntegerField
      FieldName = 'SENETISLEMKOD'
      Origin = 'SENETTAHSILAT.SENETISLEMKOD'
    end
    object ESTahBodroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'SENETTAHSILAT.SISTEM'
    end
    object ESTahBodroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'SENETTAHSILAT.PARABIRIMKOD'
    end
    object ESTahBodroIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'SENETTAHSILAT.ISLEMKURU'
    end
    object ESTahBodroIBQC_TLTAHSILEDILEN: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLTAHSILEDILEN'
      Origin = 'SENETTAHSILAT.C_TLTAHSILEDILEN'
      ReadOnly = True
    end
    object ESTahBodroIBQC_TLODENEN: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLODENEN'
      Origin = 'SENETTAHSILAT.C_TLODENEN'
      ReadOnly = True
    end
    object ESTahBodroIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'SENETTAHSILAT.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
  end
  object ESTahBodroSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ISLEMKOD,'
      '  TARIH,'
      '  SENETNO,'
      '  ACIKLAMA,'
      '  ODENEN,'
      '  TAHSILEDILEN,'
      '  BAGLANTINO,'
      '  SENETISLEMKOD,'
      '  SISTEM,'
      '  PARABIRIMKOD,'
      '  ISLEMKURU,'
      '  C_TLTAHSILEDILEN,'
      '  C_TLODENEN,'
      '  C_PARABIRIMI'
      'from SENETTAHSILAT '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update SENETTAHSILAT'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  TARIH = :TARIH,'
      '  SENETNO = :SENETNO,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  ODENEN = :ODENEN,'
      '  TAHSILEDILEN = :TAHSILEDILEN,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  SENETISLEMKOD = :SENETISLEMKOD,'
      '  SISTEM = :SISTEM,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  ISLEMKURU = :ISLEMKURU'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into SENETTAHSILAT'
      
        '  (ISLEMKOD, TARIH, SENETNO, ACIKLAMA, ODENEN, TAHSILEDILEN, BAG' +
        'LANTINO, '
      '   SENETISLEMKOD, SISTEM, PARABIRIMKOD, ISLEMKURU)'
      'values'
      
        '  (:ISLEMKOD, :TARIH, :SENETNO, :ACIKLAMA, :ODENEN, :TAHSILEDILE' +
        'N, :BAGLANTINO, '
      '   :SENETISLEMKOD, :SISTEM, :PARABIRIMKOD, :ISLEMKURU)')
    DeleteSQL.Strings = (
      'delete from SENETTAHSILAT'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 131
    Top = 394
  end
  object ESTahBodroDS: TDataSource
    DataSet = ESTahBodroIBQ
    Left = 223
    Top = 394
  end
  object BankadanSTahsilatIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterEdit = BankadanSTahsilatIBQAfterEdit
    AfterPost = BankadanSTahsilatIBQAfterPost
    OnNewRecord = BankadanSTahsilatIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SENETISLEM'
      'Where ISLEMTURKOD=53 and SISTEM<>2')
    UpdateObject = BankadanSTahsilatSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'SENETISLEM'
    Left = 32
    Top = 448
    object BankadanSTahsilatIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'SENETISLEM.ISLEMKOD'
      Required = True
    end
    object BankadanSTahsilatIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'SENETISLEM.CARIKOD'
    end
    object BankadanSTahsilatIBQCARINO: TIntegerField
      FieldName = 'CARINO'
      Origin = 'SENETISLEM.CARINO'
    end
    object BankadanSTahsilatIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'SENETISLEM.ISLEMTUR'
      Size = 40
    end
    object BankadanSTahsilatIBQISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ISLEMTURKOD'
      Origin = 'SENETISLEM.ISLEMTURKOD'
      ReadOnly = True
    end
    object BankadanSTahsilatIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'SENETISLEM.TARIH'
    end
    object BankadanSTahsilatIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'SENETISLEM.ACIKLAMA'
      Size = 80
    end
    object BankadanSTahsilatIBQTEDIYE: TFloatField
      FieldName = 'TEDIYE'
      Origin = 'SENETISLEM.TEDIYE'
    end
    object BankadanSTahsilatIBQTAHSILAT: TFloatField
      FieldName = 'TAHSILAT'
      Origin = 'SENETISLEM.TAHSILAT'
    end
    object BankadanSTahsilatIBQD_TEDIYE: TFloatField
      FieldName = 'D_TEDIYE'
      Origin = 'SENETISLEM.D_TEDIYE'
    end
    object BankadanSTahsilatIBQD_TAHSILAT: TFloatField
      FieldName = 'D_TAHSILAT'
      Origin = 'SENETISLEM.D_TAHSILAT'
    end
    object BankadanSTahsilatIBQBANKAKOD: TIntegerField
      FieldName = 'BANKAKOD'
      Origin = 'SENETISLEM.BANKAKOD'
    end
    object BankadanSTahsilatIBQKASAKOD: TIntegerField
      FieldName = 'KASAKOD'
      Origin = 'SENETISLEM.KASAKOD'
    end
    object BankadanSTahsilatIBQMAKBUZNO: TIntegerField
      FieldName = 'MAKBUZNO'
      Origin = 'SENETISLEM.MAKBUZNO'
    end
    object BankadanSTahsilatIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'SENETISLEM.KULLANKOD'
    end
    object BankadanSTahsilatIBQCARIKURU: TFloatField
      FieldName = 'CARIKURU'
      Origin = 'SENETISLEM.CARIKURU'
    end
    object BankadanSTahsilatIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'SENETISLEM.ISLEMKURU'
    end
    object BankadanSTahsilatIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'SENETISLEM.PARABIRIMKOD'
    end
    object BankadanSTahsilatIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'SENETISLEM.PERSONELKOD'
    end
    object BankadanSTahsilatIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'SENETISLEM.BAGLANTINO'
    end
    object BankadanSTahsilatIBQSENETISLEMNO: TIntegerField
      FieldName = 'SENETISLEMNO'
      Origin = 'SENETISLEM.SENETISLEMNO'
    end
    object BankadanSTahsilatIBQSAAT: TTimeField
      FieldName = 'SAAT'
      Origin = 'SENETISLEM.SAAT'
    end
    object BankadanSTahsilatIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'SENETISLEM.GELGITKOD'
      Size = 80
    end
    object BankadanSTahsilatIBQCARIPARABIRIMKOD: TIntegerField
      FieldName = 'CARIPARABIRIMKOD'
      Origin = 'SENETISLEM.CARIPARABIRIMKOD'
    end
    object BankadanSTahsilatIBQC_CARIPARABIRIM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIPARABIRIM'
      Origin = 'SENETISLEM.C_CARIPARABIRIM'
      ReadOnly = True
      Size = 10
    end
    object BankadanSTahsilatIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'SENETISLEM.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object BankadanSTahsilatIBQC_KASAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KASAADI'
      Origin = 'SENETISLEM.C_KASAADI'
      ReadOnly = True
      Size = 25
    end
    object BankadanSTahsilatIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'SENETISLEM.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object BankadanSTahsilatIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'SENETISLEM.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object BankadanSTahsilatIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'SENETISLEM.C_KULLANICIADI'
      ReadOnly = True
    end
    object BankadanSTahsilatIBQC_BANKAADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_BANKAADI'
      Origin = 'SENETISLEM.C_BANKAADI'
      ReadOnly = True
      Size = 30
    end
    object BankadanSTahsilatIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'SENETISLEM.KAPATMA'
    end
    object BankadanSTahsilatIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'SENETISLEM.SISTEM'
    end
    object BankadanSTahsilatIBQC_PERSONEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PERSONEL'
      Origin = 'SENETISLEM.C_PERSONEL'
      ReadOnly = True
      Size = 15
    end
    object BankadanSTahsilatIBQC_CARITEDIYE: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARITEDIYE'
      Origin = 'SENETISLEM.C_CARITEDIYE'
      ReadOnly = True
    end
    object BankadanSTahsilatIBQC_CARITAHSILAT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARITAHSILAT'
      Origin = 'SENETISLEM.C_CARITAHSILAT'
      ReadOnly = True
    end
  end
  object BankadanSTahsilatSQL: TIBUpdateSQL
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
      '  SENETISLEMNO,'
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
      'from SENETISLEM '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update SENETISLEM'
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
      '  SENETISLEMNO = :SENETISLEMNO,'
      '  SAAT = :SAAT,'
      '  GELGITKOD = :GELGITKOD,'
      '  CARIPARABIRIMKOD = :CARIPARABIRIMKOD,'
      '  KAPATMA = :KAPATMA,'
      '  SISTEM = :SISTEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into SENETISLEM'
      
        '  (ISLEMKOD, CARIKOD, CARINO, ISLEMTUR, TARIH, ACIKLAMA, TEDIYE,' +
        ' TAHSILAT, '
      
        '   D_TEDIYE, D_TAHSILAT, BANKAKOD, KASAKOD, MAKBUZNO, KULLANKOD,' +
        ' CARIKURU, '
      
        '   ISLEMKURU, PARABIRIMKOD, PERSONELKOD, BAGLANTINO, SENETISLEMN' +
        'O, SAAT, '
      '   GELGITKOD, CARIPARABIRIMKOD, KAPATMA, SISTEM)'
      'values'
      
        '  (:ISLEMKOD, :CARIKOD, :CARINO, :ISLEMTUR, :TARIH, :ACIKLAMA, :' +
        'TEDIYE, '
      
        '   :TAHSILAT, :D_TEDIYE, :D_TAHSILAT, :BANKAKOD, :KASAKOD, :MAKB' +
        'UZNO, :KULLANKOD, '
      
        '   :CARIKURU, :ISLEMKURU, :PARABIRIMKOD, :PERSONELKOD, :BAGLANTI' +
        'NO, :SENETISLEMNO, '
      '   :SAAT, :GELGITKOD, :CARIPARABIRIMKOD, :KAPATMA, :SISTEM)')
    DeleteSQL.Strings = (
      'delete from SENETISLEM'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 131
    Top = 448
  end
  object BankadanSTahsilatDS: TDataSource
    DataSet = BankadanSTahsilatIBQ
    Left = 223
    Top = 448
  end
  object BSTahBodroIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    AfterPost = BSTahBodroIBQAfterPost
    OnNewRecord = BSTahBodroIBQNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = BankadanSTahsilatDS
    SQL.Strings = (
      'select * from SenetTAHSILAT'
      'where SenetISLEMKOD =:ISLEMKOD')
    UpdateObject = BSTahBodroSQL
    GeneratorField.Field = 'ISLEMKOD'
    GeneratorField.Generator = 'SENETTAHSILAT'
    Left = 32
    Top = 506
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object BSTahBodroIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'SENETTAHSILAT.ISLEMKOD'
      Required = True
    end
    object BSTahBodroIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'SENETTAHSILAT.TARIH'
    end
    object BSTahBodroIBQSENETNO: TIBStringField
      FieldName = 'SENETNO'
      Origin = 'SENETTAHSILAT.SENETNO'
    end
    object BSTahBodroIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'SENETTAHSILAT.ACIKLAMA'
      Size = 80
    end
    object BSTahBodroIBQODENEN: TFloatField
      FieldName = 'ODENEN'
      Origin = 'SENETTAHSILAT.ODENEN'
    end
    object BSTahBodroIBQTAHSILEDILEN: TFloatField
      FieldName = 'TAHSILEDILEN'
      Origin = 'SENETTAHSILAT.TAHSILEDILEN'
    end
    object BSTahBodroIBQBAGLANTINO: TIntegerField
      FieldName = 'BAGLANTINO'
      Origin = 'SENETTAHSILAT.BAGLANTINO'
    end
    object BSTahBodroIBQSENETISLEMKOD: TIntegerField
      FieldName = 'SENETISLEMKOD'
      Origin = 'SENETTAHSILAT.SENETISLEMKOD'
    end
    object BSTahBodroIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'SENETTAHSILAT.SISTEM'
    end
    object BSTahBodroIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'SENETTAHSILAT.PARABIRIMKOD'
    end
    object BSTahBodroIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'SENETTAHSILAT.ISLEMKURU'
    end
    object BSTahBodroIBQC_TLTAHSILEDILEN: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLTAHSILEDILEN'
      Origin = 'SENETTAHSILAT.C_TLTAHSILEDILEN'
      ReadOnly = True
    end
    object BSTahBodroIBQC_TLODENEN: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLODENEN'
      Origin = 'SENETTAHSILAT.C_TLODENEN'
      ReadOnly = True
    end
    object BSTahBodroIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'SENETTAHSILAT.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
  end
  object BSTahBodroSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from SenetTAHSILAT '
      'where'
      '  ISLEMKOD = :ISLEMKOD')
    ModifySQL.Strings = (
      'update SenetTAHSILAT'
      'set'
      '  ISLEMKOD = :ISLEMKOD,'
      '  TARIH = :TARIH,'
      '  SENETNO = :SENETNO,'
      '  ACIKLAMA = :ACIKLAMA,'
      '  ODENEN = :ODENEN,'
      '  TAHSILEDILEN = :TAHSILEDILEN,'
      '  BAGLANTINO = :BAGLANTINO,'
      '  SENETISLEMKOD = :SENETISLEMKOD,'
      '  SISTEM = :SISTEM,'
      '  PARABIRIMKOD = :PARABIRIMKOD,'
      '  ISLEMKURU = :ISLEMKURU'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    InsertSQL.Strings = (
      'insert into SenetTAHSILAT'
      
        '  (ISLEMKOD, TARIH, SENETNO, ACIKLAMA, ODENEN, TAHSILEDILEN, BAG' +
        'LANTINO, '
      '   SENETISLEMKOD, SISTEM, PARABIRIMKOD, ISLEMKURU)'
      'values'
      
        '  (:ISLEMKOD, :TARIH, :SENETNO, :ACIKLAMA, :ODENEN, :TAHSILEDILE' +
        'N, :BAGLANTINO, '
      '   :SENETISLEMKOD, :SISTEM, :PARABIRIMKOD, :ISLEMKURU)')
    DeleteSQL.Strings = (
      'delete from SenetTAHSILAT'
      'where'
      '  ISLEMKOD = :OLD_ISLEMKOD')
    Left = 131
    Top = 506
  end
  object BSTahBodroDS: TDataSource
    DataSet = BSTahBodroIBQ
    Left = 223
    Top = 506
  end
end
