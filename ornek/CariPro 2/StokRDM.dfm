object DMRStok: TDMRStok
  OldCreateOrder = False
  Left = 192
  Top = 114
  Height = 497
  Width = 615
  object StokDurumuIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STOKKART'
      'Where BAKIYE<>0'
      'Order By StokAdi')
    Left = 64
    Top = 16
    object StokDurumuIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'STOKKART.STOKKOD'
      Required = True
    end
    object StokDurumuIBQSTOKNO: TIntegerField
      DisplayLabel = 'Stok No'
      FieldName = 'STOKNO'
      Origin = 'STOKKART.STOKNO'
    end
    object StokDurumuIBQBARKOD: TIBStringField
      DisplayLabel = 'Barkod'
      FieldName = 'BARKOD'
      Origin = 'STOKKART.BARKOD'
      Size = 25
    end
    object StokDurumuIBQSTOKADI: TIBStringField
      DisplayLabel = 'Stok Ad'#305
      FieldName = 'STOKADI'
      Origin = 'STOKKART.STOKADI'
      Size = 40
    end
    object StokDurumuIBQSTOKTURU: TIBStringField
      FieldName = 'STOKTURU'
      Origin = 'STOKKART.STOKTURU'
    end
    object StokDurumuIBQBAKIYE: TFloatField
      DisplayLabel = 'Miktar'
      FieldName = 'BAKIYE'
      Origin = 'STOKKART.BAKIYE'
      DisplayFormat = '###,###'
    end
    object StokDurumuIBQBIRIM: TIBStringField
      DisplayLabel = 'Birim'
      FieldName = 'BIRIM'
      Origin = 'STOKKART.BIRIM'
      Size = 10
    end
    object StokDurumuIBQC_DURUM: TIBStringField
      DisplayLabel = 'Durum'
      FieldKind = fkInternalCalc
      FieldName = 'C_DURUM'
      Origin = 'STOKKART.C_DURUM'
      ReadOnly = True
      Size = 5
    end
  end
  object StokDurumuDS: TDataSource
    DataSet = StokDurumuIBQ
    Left = 160
    Top = 16
  end
  object Query1: TQuery
    DatabaseName = 'Online Cari Pro2'
    SQL.Strings = (
      
        'SELECT SUM(   (Alissatisbodro.GIRISMIKTAR + Irsaliyebodro.GIRISM' +
        'IKTAR)  + Stokbodro.GIRISMIKTAR  ) GirisMiktar, SUM(   (Irsaliye' +
        'bodro.CIKISMIKTAR + Stokbodro.CIKISMIKTAR)  + Alissatisbodro.CIK' +
        'ISMIKTAR  ) CikisMiktar, Stokkart.STOKNO, Stokkart.STOKADI, Stok' +
        'kart.BAKIYE, Stokkart.C_DURUM, Alissatisbodro.C_ISLEMTURKOD, Irs' +
        'aliyebodro.C_ISLEMTURKOD, Stokbodro.C_ISLEMTURKOD, Alissatisbodr' +
        'o.TARIH, Irsaliyebodro.TARIH, Stokbodro.TARIH'
      'FROM ALISSATISBODRO Alissatisbodro'
      '   INNER JOIN STOKKART Stokkart'
      '   ON  (Stokkart.STOKKOD = Alissatisbodro.STOKKOD)  '
      '   INNER JOIN IRSALIYEBODRO Irsaliyebodro'
      '   ON  (Alissatisbodro.STOKKOD = Irsaliyebodro.STOKKOD)  '
      '   INNER JOIN STOKBODRO Stokbodro'
      '   ON  (Irsaliyebodro.STOKKOD = Stokbodro.STOKKOD)  '
      
        'GROUP BY Stokkart.STOKNO, Stokkart.STOKADI, Stokkart.BAKIYE, Sto' +
        'kkart.C_DURUM, Alissatisbodro.C_ISLEMTURKOD, Irsaliyebodro.C_ISL' +
        'EMTURKOD, Stokbodro.C_ISLEMTURKOD, Alissatisbodro.TARIH, Irsaliy' +
        'ebodro.TARIH, Stokbodro.TARIH')
    Left = 480
    Top = 24
  end
  object StokHareketIBQvvvv: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT Alissatisbodro.STOKKOD, Irsaliyebodro.STOKKOD,'
      
        'SUM(   (Alissatisbodro.GIRISMIKTAR + Irsaliyebodro.GIRISMIKTAR) ' +
        ' + Stokbodro.GIRISMIKTAR  ) GirisMiktar,'
      
        'SUM(   (Irsaliyebodro.CIKISMIKTAR + Stokbodro.CIKISMIKTAR)  + Al' +
        'issatisbodro.CIKISMIKTAR  ) CikisMiktar,'
      
        'Stokbodro.STOKKOD, Stokkart.STOKNO, Stokkart.STOKADI, Stokkart.B' +
        'AKIYE, Stokkart.C_DURUM'
      'FROM ALISSATISBODRO Alissatisbodro'
      '   INNER JOIN IRSALIYEBODRO Irsaliyebodro'
      '   ON  (Alissatisbodro.STOKKOD = Irsaliyebodro.STOKKOD)'
      '   INNER JOIN STOKBODRO Stokbodro'
      '   ON  (Irsaliyebodro.STOKKOD = Stokbodro.STOKKOD)  '
      '   INNER JOIN STOKKART Stokkart'
      '   ON  (Stokbodro.STOKKOD = Stokkart.STOKKOD)  '
      
        'GROUP BY Alissatisbodro.STOKKOD, Irsaliyebodro.STOKKOD, Stokbodr' +
        'o.STOKKOD, Stokkart.STOKNO,'
      'Stokkart.STOKADI, Stokkart.BAKIYE, Stokkart.C_DURUM')
    Left = 64
    Top = 80
    object IntegerField1: TIntegerField
      FieldName = 'STOKKOD'
    end
    object IntegerField2: TIntegerField
      FieldName = 'STOKKOD1'
    end
    object FloatField1: TFloatField
      FieldName = 'GIRISMIKTAR'
    end
    object FloatField2: TFloatField
      FieldName = 'CIKISMIKTAR'
    end
    object IntegerField3: TIntegerField
      FieldName = 'STOKKOD2'
    end
    object IntegerField4: TIntegerField
      FieldName = 'STOKNO'
    end
    object IBStringField1: TIBStringField
      FieldName = 'STOKADI'
      Size = 40
    end
    object FloatField3: TFloatField
      FieldName = 'BAKIYE'
    end
    object IBStringField2: TIBStringField
      FieldName = 'C_DURUM'
      Size = 5
    end
  end
  object StokHareketDS: TDataSource
    DataSet = StokHareketIBQ
    Left = 168
    Top = 152
  end
  object Query2: TQuery
    DatabaseName = 'Online Cari Pro2'
    SQL.Strings = (
      
        'SELECT Alissatisbodro.BODROKOD, Alissatisbodro.SIRANO, Alissatis' +
        'bodro.ISLEMTUR, Alissatisbodro.C_ISLEMTURKOD, Alissatisbodro.CAR' +
        'IKOD, Alissatisbodro.PARABIRIMKOD, Alissatisbodro.TARIH, Alissat' +
        'isbodro.STOKKOD, Alissatisbodro.STOKNO, Alissatisbodro.BARKOD, A' +
        'lissatisbodro.STOKADI, Alissatisbodro.MIKTAR, Alissatisbodro.MIK' +
        'TARCARPAN, Alissatisbodro.GIRISMIKTAR, Alissatisbodro.CIKISMIKTA' +
        'R, Alissatisbodro.BIRIM, Alissatisbodro.BIRIMFIYAT, Alissatisbod' +
        'ro.ALISFIYAT, Alissatisbodro.SATISTUTAR, Alissatisbodro.SATISFIY' +
        'AT, Alissatisbodro.ALISTUTAR, Alissatisbodro.ALISMATRAHI, Alissa' +
        'tisbodro.SATISMATRAHI, Alissatisbodro.ISKONTO1, Alissatisbodro.I' +
        'SKONTO2, Alissatisbodro.ISKONTO3, Alissatisbodro.ISKONTO4, Aliss' +
        'atisbodro.KDVORANI, Alissatisbodro.BAKIYE, Alissatisbodro.DURUM,' +
        ' Alissatisbodro.ACIKLAMA, Alissatisbodro.KAPATMA, Alissatisbodro' +
        '.VADE, Alissatisbodro.FATURANO, Alissatisbodro.STOKYERIKOD, Alis' +
        'satisbodro.ISLEMKURU, Alissatisbodro.GELGITKOD, Alissatisbodro.P' +
        'ERSONELKOD, Alissatisbodro.KULLANKOD, Alissatisbodro.EVRAKDURUMU' +
        ', Alissatisbodro.SERINO, Alissatisbodro.CARIHESAPILISKI, Alissat' +
        'isbodro.C_CARIADI, Alissatisbodro.C_STOKYERI, Alissatisbodro.C_K' +
        'ULLANICIADI, Alissatisbodro.C_PARABIRIMI, Alissatisbodro.C_REELA' +
        'LIS, Alissatisbodro.C_REELSATIS, Alissatisbodro.ISLEMKOD, Alissa' +
        'tisbodro.KDVSECIM, Alissatisbodro.C_TLALISTUTARI, Alissatisbodro' +
        '.C_TLALISMATRAHI, Alissatisbodro.C_TLSATISTUTARI, Alissatisbodro' +
        '.C_TLSATISMATRAHI, Alissatisbodro.C_TLBIRIMFIYAT, Alissatisbodro' +
        '.C_GGMERKEZI, Alissatisbodro.C_ALISKDVTUTAR, Alissatisbodro.C_SA' +
        'TISKDVTUTAR, Alissatisbodro.C_TLALISKDVTUTAR, Alissatisbodro.C_T' +
        'LSATISKDVTUTARI, Alissatisbodro.SISTEM, Alissatisbodro.MALIYETFI' +
        'YATI, Alissatisbodro.C_MALIYETTUTARI, Alissatisbodro.C_KARZARAR,' +
        ' Alissatisbodro.C_ISLEMTUR, Irsaliyebodro.BODROKOD, Irsaliyebodr' +
        'o.ISLEMKOD, Irsaliyebodro.SIRANO, Irsaliyebodro.ISLEMTUR, Irsali' +
        'yebodro.C_ISLEMTURKOD, Irsaliyebodro.CARIKOD, Irsaliyebodro.PARA' +
        'BIRIMKOD, Irsaliyebodro.TARIH, Irsaliyebodro.STOKKOD, Irsaliyebo' +
        'dro.STOKNO, Irsaliyebodro.BARKOD, Irsaliyebodro.STOKADI, Irsaliy' +
        'ebodro.MIKTAR, Irsaliyebodro.MIKTARCARPAN, Irsaliyebodro.GIRISMI' +
        'KTAR, Irsaliyebodro.CIKISMIKTAR, Irsaliyebodro.BIRIM, Irsaliyebo' +
        'dro.BIRIMFIYAT, Irsaliyebodro.GIRISFIYAT, Irsaliyebodro.CIKISFIY' +
        'AT, Irsaliyebodro.CIKISTUTAR, Irsaliyebodro.GIRISTUTAR, Irsaliye' +
        'bodro.GIRISMATRAHI, Irsaliyebodro.CIKISMATRAHI, Irsaliyebodro.IS' +
        'KONTO1, Irsaliyebodro.ISKONTO2, Irsaliyebodro.ISKONTO3, Irsaliye' +
        'bodro.ISKONTO4, Irsaliyebodro.KDVORANI, Irsaliyebodro.BAKIYE, Ir' +
        'saliyebodro.DURUM, Irsaliyebodro.ACIKLAMA, Irsaliyebodro.KAPATMA' +
        ', Irsaliyebodro.VADE, Irsaliyebodro.FATURANO, Irsaliyebodro.STOK' +
        'YERIKOD, Irsaliyebodro.ISLEMKURU, Irsaliyebodro.GELGITKOD, Irsal' +
        'iyebodro.PERSONELKOD, Irsaliyebodro.KULLANKOD, Irsaliyebodro.SIS' +
        'TEM, Irsaliyebodro.EVRAKDURUMU, Irsaliyebodro.SERINO, Irsaliyebo' +
        'dro.CARIHESAPILISKI, Irsaliyebodro.C_CARIADI, Irsaliyebodro.C_ST' +
        'OKYERI, Irsaliyebodro.C_KULLANICIADI, Irsaliyebodro.C_PARABIRIMI' +
        ', Irsaliyebodro.C_REELGIRIS, Irsaliyebodro.C_REELCIKIS, Irsaliye' +
        'bodro.KDVSECIM, Irsaliyebodro.C_TLGIRISTUTARI, Irsaliyebodro.C_T' +
        'LGIRISMATRAHI, Irsaliyebodro.C_TLCIKISTUTARI, Irsaliyebodro.C_TL' +
        'CIKISMATRAHI, Irsaliyebodro.C_TLBIRIMFIYAT, Irsaliyebodro.C_GGME' +
        'RKEZI, Irsaliyebodro.C_GIRISKDVTUTAR, Irsaliyebodro.C_CIKISKDVTU' +
        'TAR, Irsaliyebodro.C_TLGIRISKDVTUTAR, Irsaliyebodro.C_TLCIKISKDV' +
        'TUTARI, Irsaliyebodro.C_ISLEMTUR, Stokbodro.BODROKOD, Stokbodro.' +
        'SIRANO, Stokbodro.ISLEMTUR, Stokbodro.C_ISLEMTURKOD, Stokbodro.C' +
        'ARIKOD, Stokbodro.PARABIRIMKOD, Stokbodro.TARIH, Stokbodro.STOKK' +
        'OD, Stokbodro.STOKNO, Stokbodro.BARKOD, Stokbodro.STOKADI, Stokb' +
        'odro.MIKTAR, Stokbodro.MIKTARCARPAN, Stokbodro.GIRISMIKTAR, Stok' +
        'bodro.CIKISMIKTAR, Stokbodro.BIRIM, Stokbodro.BIRIMFIYAT, Stokbo' +
        'dro.GIRISFIYAT, Stokbodro.CIKISFIYAT, Stokbodro.CIKISTUTAR, Stok' +
        'bodro.GIRISTUTAR, Stokbodro.GIRISMATRAHI, Stokbodro.CIKISMATRAHI' +
        ', Stokbodro.ISKONTO1, Stokbodro.ISKONTO2, Stokbodro.ISKONTO3, St' +
        'okbodro.ISKONTO4, Stokbodro.KDVORANI, Stokbodro.BAKIYE, Stokbodr' +
        'o.DURUM, Stokbodro.ACIKLAMA, Stokbodro.KAPATMA, Stokbodro.VADE, ' +
        'Stokbodro.FATURANO, Stokbodro.STOKYERIKOD, Stokbodro.ISLEMKURU, ' +
        'Stokbodro.GELGITKOD, Stokbodro.PERSONELKOD, Stokbodro.KULLANKOD,' +
        ' Stokbodro.SISTEM, Stokbodro.EVRAKDURUMU, Stokbodro.SERINO, Stok' +
        'bodro.CARIHESAPILISKI, Stokbodro.C_CARIADI, Stokbodro.C_STOKYERI' +
        ', Stokbodro.C_KULLANICIADI, Stokbodro.C_PARABIRIMI, Stokbodro.C_' +
        'REELGIRIS, Stokbodro.C_REELCIKIS, Stokbodro.ISLEMKOD, Stokbodro.' +
        'KDVSECIM, Stokbodro.C_TLGIRISTUTARI, Stokbodro.C_TLGIRISMATRAHI,' +
        ' Stokbodro.C_TLCIKISTUTARI, Stokbodro.C_TLCIKISMATRAHI, Stokbodr' +
        'o.C_TLBIRIMFIYAT, Stokbodro.C_GGMERKEZI, Stokbodro.C_GIRISKDVTUT' +
        'AR, Stokbodro.C_CIKISKDVTUTAR, Stokbodro.C_TLGIRISKDVTUTAR, Stok' +
        'bodro.C_TLCIKISKDVTUTARI, Stokbodro.C_ISLEMTUR'
      'FROM ALISSATISBODRO Alissatisbodro'
      '   INNER JOIN IRSALIYEBODRO Irsaliyebodro'
      '   ON  (Alissatisbodro.STOKKOD = Irsaliyebodro.STOKKOD)  '
      '   INNER JOIN STOKBODRO Stokbodro'
      '   ON  (Irsaliyebodro.STOKKOD = Stokbodro.STOKKOD)  '
      'WHERE  Alissatisbodro.ALISFIYAT = 1 ')
    Left = 480
    Top = 88
  end
  object StokHareketIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DMStok.StokGrupKartDS
    SQL.Strings = (
      'SELECT ALISSATISBODRO .*, IRSALIYEBODRO.*,Stokbodro.*'
      'FROM ALISSATISBODRO Alissatisbodro'
      '   INNER JOIN IRSALIYEBODRO Irsaliyebodro'
      '   ON  (Alissatisbodro.STOKKOD = Irsaliyebodro.STOKKOD)  '
      '   INNER JOIN STOKBODRO Stokbodro'
      '   ON  (Irsaliyebodro.STOKKOD = Stokbodro.STOKKOD)  '
      'Where (Alissatisbodro.STOKKOD =:STOKKOD or'
      'Irsaliyebodro.STOKKOD=:STOKKOD or'
      'Alissatisbodro.STOKKOD=:STOKKOD)')
    Left = 64
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'STOKKOD'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'STOKKOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'STOKKOD'
        ParamType = ptUnknown
      end>
    object StokHareketIBQBODROKOD: TIntegerField
      FieldName = 'BODROKOD'
      Origin = 'ALISSATISBODRO.BODROKOD'
      Required = True
    end
    object StokHareketIBQSIRANO: TIntegerField
      FieldName = 'SIRANO'
      Origin = 'ALISSATISBODRO.SIRANO'
    end
    object StokHareketIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'ALISSATISBODRO.ISLEMTUR'
      Size = 40
    end
    object StokHareketIBQC_ISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_ISLEMTURKOD'
      Origin = 'ALISSATISBODRO.C_ISLEMTURKOD'
      ReadOnly = True
    end
    object StokHareketIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'ALISSATISBODRO.CARIKOD'
    end
    object StokHareketIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'ALISSATISBODRO.PARABIRIMKOD'
    end
    object StokHareketIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'ALISSATISBODRO.TARIH'
    end
    object StokHareketIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'ALISSATISBODRO.STOKKOD'
    end
    object StokHareketIBQSTOKNO: TIntegerField
      FieldName = 'STOKNO'
      Origin = 'ALISSATISBODRO.STOKNO'
    end
    object StokHareketIBQBARKOD: TIBStringField
      FieldName = 'BARKOD'
      Origin = 'ALISSATISBODRO.BARKOD'
      Size = 25
    end
    object StokHareketIBQSTOKADI: TIBStringField
      FieldName = 'STOKADI'
      Origin = 'ALISSATISBODRO.STOKADI'
      Size = 80
    end
    object StokHareketIBQMIKTAR: TFloatField
      FieldName = 'MIKTAR'
      Origin = 'ALISSATISBODRO.MIKTAR'
    end
    object StokHareketIBQMIKTARCARPAN: TIntegerField
      FieldName = 'MIKTARCARPAN'
      Origin = 'ALISSATISBODRO.MIKTARCARPAN'
    end
    object StokHareketIBQGIRISMIKTAR: TFloatField
      FieldName = 'GIRISMIKTAR'
      Origin = 'ALISSATISBODRO.GIRISMIKTAR'
    end
    object StokHareketIBQCIKISMIKTAR: TFloatField
      FieldName = 'CIKISMIKTAR'
      Origin = 'ALISSATISBODRO.CIKISMIKTAR'
    end
    object StokHareketIBQBIRIM: TIBStringField
      FieldName = 'BIRIM'
      Origin = 'ALISSATISBODRO.BIRIM'
      Size = 10
    end
    object StokHareketIBQBIRIMFIYAT: TFloatField
      FieldName = 'BIRIMFIYAT'
      Origin = 'ALISSATISBODRO.BIRIMFIYAT'
    end
    object StokHareketIBQALISFIYAT: TFloatField
      FieldName = 'ALISFIYAT'
      Origin = 'ALISSATISBODRO.ALISFIYAT'
    end
    object StokHareketIBQSATISTUTAR: TFloatField
      FieldName = 'SATISTUTAR'
      Origin = 'ALISSATISBODRO.SATISTUTAR'
    end
    object StokHareketIBQSATISFIYAT: TFloatField
      FieldName = 'SATISFIYAT'
      Origin = 'ALISSATISBODRO.SATISFIYAT'
    end
    object StokHareketIBQALISTUTAR: TFloatField
      FieldName = 'ALISTUTAR'
      Origin = 'ALISSATISBODRO.ALISTUTAR'
    end
    object StokHareketIBQALISMATRAHI: TFloatField
      FieldName = 'ALISMATRAHI'
      Origin = 'ALISSATISBODRO.ALISMATRAHI'
    end
    object StokHareketIBQSATISMATRAHI: TFloatField
      FieldName = 'SATISMATRAHI'
      Origin = 'ALISSATISBODRO.SATISMATRAHI'
    end
    object StokHareketIBQISKONTO1: TFloatField
      FieldName = 'ISKONTO1'
      Origin = 'ALISSATISBODRO.ISKONTO1'
    end
    object StokHareketIBQISKONTO2: TFloatField
      FieldName = 'ISKONTO2'
      Origin = 'ALISSATISBODRO.ISKONTO2'
    end
    object StokHareketIBQISKONTO3: TFloatField
      FieldName = 'ISKONTO3'
      Origin = 'ALISSATISBODRO.ISKONTO3'
    end
    object StokHareketIBQISKONTO4: TFloatField
      FieldName = 'ISKONTO4'
      Origin = 'ALISSATISBODRO.ISKONTO4'
    end
    object StokHareketIBQKDVORANI: TFloatField
      FieldName = 'KDVORANI'
      Origin = 'ALISSATISBODRO.KDVORANI'
    end
    object StokHareketIBQBAKIYE: TFloatField
      FieldName = 'BAKIYE'
      Origin = 'ALISSATISBODRO.BAKIYE'
    end
    object StokHareketIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'ALISSATISBODRO.DURUM'
    end
    object StokHareketIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'ALISSATISBODRO.ACIKLAMA'
      Size = 60
    end
    object StokHareketIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'ALISSATISBODRO.KAPATMA'
    end
    object StokHareketIBQVADE: TDateField
      FieldName = 'VADE'
      Origin = 'ALISSATISBODRO.VADE'
    end
    object StokHareketIBQFATURANO: TIntegerField
      FieldName = 'FATURANO'
      Origin = 'ALISSATISBODRO.FATURANO'
    end
    object StokHareketIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'ALISSATISBODRO.STOKYERIKOD'
    end
    object StokHareketIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'ALISSATISBODRO.ISLEMKURU'
    end
    object StokHareketIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'ALISSATISBODRO.GELGITKOD'
      Size = 80
    end
    object StokHareketIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'ALISSATISBODRO.PERSONELKOD'
    end
    object StokHareketIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'ALISSATISBODRO.KULLANKOD'
    end
    object StokHareketIBQEVRAKDURUMU: TIntegerField
      FieldName = 'EVRAKDURUMU'
      Origin = 'ALISSATISBODRO.EVRAKDURUMU'
    end
    object StokHareketIBQSERINO: TIBStringField
      FieldName = 'SERINO'
      Origin = 'ALISSATISBODRO.SERINO'
      Size = 30
    end
    object StokHareketIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'ALISSATISBODRO.CARIHESAPILISKI'
    end
    object StokHareketIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'ALISSATISBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object StokHareketIBQC_STOKYERI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'ALISSATISBODRO.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object StokHareketIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'ALISSATISBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object StokHareketIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'ALISSATISBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object StokHareketIBQC_REELALIS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_REELALIS'
      Origin = 'ALISSATISBODRO.C_REELALIS'
      ReadOnly = True
    end
    object StokHareketIBQC_REELSATIS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_REELSATIS'
      Origin = 'ALISSATISBODRO.C_REELSATIS'
      ReadOnly = True
    end
    object StokHareketIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'ALISSATISBODRO.ISLEMKOD'
    end
    object StokHareketIBQKDVSECIM: TIBStringField
      FieldName = 'KDVSECIM'
      Origin = 'ALISSATISBODRO.KDVSECIM'
      Size = 5
    end
    object StokHareketIBQC_TLALISTUTARI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISTUTARI'
      Origin = 'ALISSATISBODRO.C_TLALISTUTARI'
      ReadOnly = True
    end
    object StokHareketIBQC_TLALISMATRAHI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISMATRAHI'
      Origin = 'ALISSATISBODRO.C_TLALISMATRAHI'
      ReadOnly = True
    end
    object StokHareketIBQC_TLSATISTUTARI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISTUTARI'
      Origin = 'ALISSATISBODRO.C_TLSATISTUTARI'
      ReadOnly = True
    end
    object StokHareketIBQC_TLSATISMATRAHI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISMATRAHI'
      Origin = 'ALISSATISBODRO.C_TLSATISMATRAHI'
      ReadOnly = True
    end
    object StokHareketIBQC_TLBIRIMFIYAT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLBIRIMFIYAT'
      Origin = 'ALISSATISBODRO.C_TLBIRIMFIYAT'
      ReadOnly = True
    end
    object StokHareketIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'ALISSATISBODRO.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object StokHareketIBQC_ALISKDVTUTAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_ALISKDVTUTAR'
      Origin = 'ALISSATISBODRO.C_ALISKDVTUTAR'
      ReadOnly = True
    end
    object StokHareketIBQC_SATISKDVTUTAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_SATISKDVTUTAR'
      Origin = 'ALISSATISBODRO.C_SATISKDVTUTAR'
      ReadOnly = True
    end
    object StokHareketIBQC_TLALISKDVTUTAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISKDVTUTAR'
      Origin = 'ALISSATISBODRO.C_TLALISKDVTUTAR'
      ReadOnly = True
    end
    object StokHareketIBQC_TLSATISKDVTUTARI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISKDVTUTARI'
      Origin = 'ALISSATISBODRO.C_TLSATISKDVTUTARI'
      ReadOnly = True
    end
    object StokHareketIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'ALISSATISBODRO.SISTEM'
    end
    object StokHareketIBQMALIYETFIYATI: TFloatField
      FieldName = 'MALIYETFIYATI'
      Origin = 'ALISSATISBODRO.MALIYETFIYATI'
    end
    object StokHareketIBQC_MALIYETTUTARI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_MALIYETTUTARI'
      Origin = 'ALISSATISBODRO.C_MALIYETTUTARI'
      ReadOnly = True
    end
    object StokHareketIBQC_KARZARAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_KARZARAR'
      Origin = 'ALISSATISBODRO.C_KARZARAR'
      ReadOnly = True
    end
    object StokHareketIBQC_ISLEMTUR: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_ISLEMTUR'
      Origin = 'ALISSATISBODRO.C_ISLEMTUR'
      ReadOnly = True
      Size = 10
    end
    object StokHareketIBQBODROKOD1: TIntegerField
      FieldName = 'BODROKOD1'
      Origin = 'IRSALIYEBODRO.BODROKOD'
      Required = True
    end
    object StokHareketIBQISLEMKOD1: TIntegerField
      FieldName = 'ISLEMKOD1'
      Origin = 'IRSALIYEBODRO.ISLEMKOD'
    end
    object StokHareketIBQSIRANO1: TIntegerField
      FieldName = 'SIRANO1'
      Origin = 'IRSALIYEBODRO.SIRANO'
    end
    object StokHareketIBQISLEMTUR1: TIBStringField
      FieldName = 'ISLEMTUR1'
      Origin = 'IRSALIYEBODRO.ISLEMTUR'
      Size = 40
    end
    object StokHareketIBQC_ISLEMTURKOD1: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_ISLEMTURKOD1'
      Origin = 'IRSALIYEBODRO.C_ISLEMTURKOD'
      ReadOnly = True
    end
    object StokHareketIBQCARIKOD1: TIntegerField
      FieldName = 'CARIKOD1'
      Origin = 'IRSALIYEBODRO.CARIKOD'
    end
    object StokHareketIBQPARABIRIMKOD1: TIntegerField
      FieldName = 'PARABIRIMKOD1'
      Origin = 'IRSALIYEBODRO.PARABIRIMKOD'
    end
    object StokHareketIBQTARIH1: TDateField
      FieldName = 'TARIH1'
      Origin = 'IRSALIYEBODRO.TARIH'
    end
    object StokHareketIBQSTOKKOD1: TIntegerField
      FieldName = 'STOKKOD1'
      Origin = 'IRSALIYEBODRO.STOKKOD'
    end
    object StokHareketIBQSTOKNO1: TIntegerField
      FieldName = 'STOKNO1'
      Origin = 'IRSALIYEBODRO.STOKNO'
    end
    object StokHareketIBQBARKOD1: TIBStringField
      FieldName = 'BARKOD1'
      Origin = 'IRSALIYEBODRO.BARKOD'
      Size = 25
    end
    object StokHareketIBQSTOKADI1: TIBStringField
      FieldName = 'STOKADI1'
      Origin = 'IRSALIYEBODRO.STOKADI'
      Size = 40
    end
    object StokHareketIBQMIKTAR1: TFloatField
      FieldName = 'MIKTAR1'
      Origin = 'IRSALIYEBODRO.MIKTAR'
    end
    object StokHareketIBQMIKTARCARPAN1: TIntegerField
      FieldName = 'MIKTARCARPAN1'
      Origin = 'IRSALIYEBODRO.MIKTARCARPAN'
    end
    object StokHareketIBQGIRISMIKTAR1: TFloatField
      FieldName = 'GIRISMIKTAR1'
      Origin = 'IRSALIYEBODRO.GIRISMIKTAR'
    end
    object StokHareketIBQCIKISMIKTAR1: TFloatField
      FieldName = 'CIKISMIKTAR1'
      Origin = 'IRSALIYEBODRO.CIKISMIKTAR'
    end
    object StokHareketIBQBIRIM1: TIBStringField
      FieldName = 'BIRIM1'
      Origin = 'IRSALIYEBODRO.BIRIM'
      Size = 10
    end
    object StokHareketIBQBIRIMFIYAT1: TFloatField
      FieldName = 'BIRIMFIYAT1'
      Origin = 'IRSALIYEBODRO.BIRIMFIYAT'
    end
    object StokHareketIBQGIRISFIYAT: TFloatField
      FieldName = 'GIRISFIYAT'
      Origin = 'IRSALIYEBODRO.GIRISFIYAT'
    end
    object StokHareketIBQCIKISFIYAT: TFloatField
      FieldName = 'CIKISFIYAT'
      Origin = 'IRSALIYEBODRO.CIKISFIYAT'
    end
    object StokHareketIBQCIKISTUTAR: TFloatField
      FieldName = 'CIKISTUTAR'
      Origin = 'IRSALIYEBODRO.CIKISTUTAR'
    end
    object StokHareketIBQGIRISTUTAR: TFloatField
      FieldName = 'GIRISTUTAR'
      Origin = 'IRSALIYEBODRO.GIRISTUTAR'
    end
    object StokHareketIBQGIRISMATRAHI: TFloatField
      FieldName = 'GIRISMATRAHI'
      Origin = 'IRSALIYEBODRO.GIRISMATRAHI'
    end
    object StokHareketIBQCIKISMATRAHI: TFloatField
      FieldName = 'CIKISMATRAHI'
      Origin = 'IRSALIYEBODRO.CIKISMATRAHI'
    end
    object StokHareketIBQISKONTO11: TFloatField
      FieldName = 'ISKONTO11'
      Origin = 'IRSALIYEBODRO.ISKONTO1'
    end
    object StokHareketIBQISKONTO21: TFloatField
      FieldName = 'ISKONTO21'
      Origin = 'IRSALIYEBODRO.ISKONTO2'
    end
    object StokHareketIBQISKONTO31: TFloatField
      FieldName = 'ISKONTO31'
      Origin = 'IRSALIYEBODRO.ISKONTO3'
    end
    object StokHareketIBQISKONTO41: TFloatField
      FieldName = 'ISKONTO41'
      Origin = 'IRSALIYEBODRO.ISKONTO4'
    end
    object StokHareketIBQKDVORANI1: TFloatField
      FieldName = 'KDVORANI1'
      Origin = 'IRSALIYEBODRO.KDVORANI'
    end
    object StokHareketIBQBAKIYE1: TFloatField
      FieldName = 'BAKIYE1'
      Origin = 'IRSALIYEBODRO.BAKIYE'
    end
    object StokHareketIBQDURUM1: TIntegerField
      FieldName = 'DURUM1'
      Origin = 'IRSALIYEBODRO.DURUM'
    end
    object StokHareketIBQACIKLAMA1: TIBStringField
      FieldName = 'ACIKLAMA1'
      Origin = 'IRSALIYEBODRO.ACIKLAMA'
      Size = 60
    end
    object StokHareketIBQKAPATMA1: TIntegerField
      FieldName = 'KAPATMA1'
      Origin = 'IRSALIYEBODRO.KAPATMA'
    end
    object StokHareketIBQVADE1: TDateField
      FieldName = 'VADE1'
      Origin = 'IRSALIYEBODRO.VADE'
    end
    object StokHareketIBQFATURANO1: TIntegerField
      FieldName = 'FATURANO1'
      Origin = 'IRSALIYEBODRO.FATURANO'
    end
    object StokHareketIBQSTOKYERIKOD1: TIntegerField
      FieldName = 'STOKYERIKOD1'
      Origin = 'IRSALIYEBODRO.STOKYERIKOD'
    end
    object StokHareketIBQISLEMKURU1: TFloatField
      FieldName = 'ISLEMKURU1'
      Origin = 'IRSALIYEBODRO.ISLEMKURU'
    end
    object StokHareketIBQGELGITKOD1: TIBStringField
      FieldName = 'GELGITKOD1'
      Origin = 'IRSALIYEBODRO.GELGITKOD'
      Size = 80
    end
    object StokHareketIBQPERSONELKOD1: TIntegerField
      FieldName = 'PERSONELKOD1'
      Origin = 'IRSALIYEBODRO.PERSONELKOD'
    end
    object StokHareketIBQKULLANKOD1: TIntegerField
      FieldName = 'KULLANKOD1'
      Origin = 'IRSALIYEBODRO.KULLANKOD'
    end
    object StokHareketIBQSISTEM1: TIntegerField
      FieldName = 'SISTEM1'
      Origin = 'IRSALIYEBODRO.SISTEM'
    end
    object StokHareketIBQEVRAKDURUMU1: TIntegerField
      FieldName = 'EVRAKDURUMU1'
      Origin = 'IRSALIYEBODRO.EVRAKDURUMU'
    end
    object StokHareketIBQSERINO1: TIBStringField
      FieldName = 'SERINO1'
      Origin = 'IRSALIYEBODRO.SERINO'
      Size = 30
    end
    object StokHareketIBQCARIHESAPILISKI1: TIntegerField
      FieldName = 'CARIHESAPILISKI1'
      Origin = 'IRSALIYEBODRO.CARIHESAPILISKI'
    end
    object StokHareketIBQC_CARIADI1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI1'
      Origin = 'IRSALIYEBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object StokHareketIBQC_STOKYERI1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI1'
      Origin = 'IRSALIYEBODRO.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object StokHareketIBQC_KULLANICIADI1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI1'
      Origin = 'IRSALIYEBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object StokHareketIBQC_PARABIRIMI1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI1'
      Origin = 'IRSALIYEBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object StokHareketIBQC_REELGIRIS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_REELGIRIS'
      Origin = 'IRSALIYEBODRO.C_REELGIRIS'
      ReadOnly = True
    end
    object StokHareketIBQC_REELCIKIS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_REELCIKIS'
      Origin = 'IRSALIYEBODRO.C_REELCIKIS'
      ReadOnly = True
    end
    object StokHareketIBQKDVSECIM1: TIBStringField
      FieldName = 'KDVSECIM1'
      Origin = 'IRSALIYEBODRO.KDVSECIM'
      Size = 5
    end
    object StokHareketIBQC_TLGIRISTUTARI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISTUTARI'
      Origin = 'IRSALIYEBODRO.C_TLGIRISTUTARI'
      ReadOnly = True
    end
    object StokHareketIBQC_TLGIRISMATRAHI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISMATRAHI'
      Origin = 'IRSALIYEBODRO.C_TLGIRISMATRAHI'
      ReadOnly = True
    end
    object StokHareketIBQC_TLCIKISTUTARI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISTUTARI'
      Origin = 'IRSALIYEBODRO.C_TLCIKISTUTARI'
      ReadOnly = True
    end
    object StokHareketIBQC_TLCIKISMATRAHI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISMATRAHI'
      Origin = 'IRSALIYEBODRO.C_TLCIKISMATRAHI'
      ReadOnly = True
    end
    object StokHareketIBQC_TLBIRIMFIYAT1: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLBIRIMFIYAT1'
      Origin = 'IRSALIYEBODRO.C_TLBIRIMFIYAT'
      ReadOnly = True
    end
    object StokHareketIBQC_GGMERKEZI1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI1'
      Origin = 'IRSALIYEBODRO.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object StokHareketIBQC_GIRISKDVTUTAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_GIRISKDVTUTAR'
      Origin = 'IRSALIYEBODRO.C_GIRISKDVTUTAR'
      ReadOnly = True
    end
    object StokHareketIBQC_CIKISKDVTUTAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_CIKISKDVTUTAR'
      Origin = 'IRSALIYEBODRO.C_CIKISKDVTUTAR'
      ReadOnly = True
    end
    object StokHareketIBQC_TLGIRISKDVTUTAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISKDVTUTAR'
      Origin = 'IRSALIYEBODRO.C_TLGIRISKDVTUTAR'
      ReadOnly = True
    end
    object StokHareketIBQC_TLCIKISKDVTUTARI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISKDVTUTARI'
      Origin = 'IRSALIYEBODRO.C_TLCIKISKDVTUTARI'
      ReadOnly = True
    end
    object StokHareketIBQC_ISLEMTUR1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_ISLEMTUR1'
      Origin = 'IRSALIYEBODRO.C_ISLEMTUR'
      ReadOnly = True
      Size = 10
    end
    object StokHareketIBQBODROKOD2: TIntegerField
      FieldName = 'BODROKOD2'
      Origin = 'STOKBODRO.BODROKOD'
      Required = True
    end
    object StokHareketIBQSIRANO2: TIntegerField
      FieldName = 'SIRANO2'
      Origin = 'STOKBODRO.SIRANO'
    end
    object StokHareketIBQISLEMTUR2: TIBStringField
      FieldName = 'ISLEMTUR2'
      Origin = 'STOKBODRO.ISLEMTUR'
      Size = 40
    end
    object StokHareketIBQC_ISLEMTURKOD2: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_ISLEMTURKOD2'
      Origin = 'STOKBODRO.C_ISLEMTURKOD'
      ReadOnly = True
    end
    object StokHareketIBQCARIKOD2: TIntegerField
      FieldName = 'CARIKOD2'
      Origin = 'STOKBODRO.CARIKOD'
    end
    object StokHareketIBQPARABIRIMKOD2: TIntegerField
      FieldName = 'PARABIRIMKOD2'
      Origin = 'STOKBODRO.PARABIRIMKOD'
    end
    object StokHareketIBQTARIH2: TDateField
      FieldName = 'TARIH2'
      Origin = 'STOKBODRO.TARIH'
    end
    object StokHareketIBQSTOKKOD2: TIntegerField
      FieldName = 'STOKKOD2'
      Origin = 'STOKBODRO.STOKKOD'
    end
    object StokHareketIBQSTOKNO2: TIntegerField
      FieldName = 'STOKNO2'
      Origin = 'STOKBODRO.STOKNO'
    end
    object StokHareketIBQBARKOD2: TIBStringField
      FieldName = 'BARKOD2'
      Origin = 'STOKBODRO.BARKOD'
      Size = 25
    end
    object StokHareketIBQSTOKADI2: TIBStringField
      FieldName = 'STOKADI2'
      Origin = 'STOKBODRO.STOKADI'
      Size = 40
    end
    object StokHareketIBQMIKTAR2: TFloatField
      FieldName = 'MIKTAR2'
      Origin = 'STOKBODRO.MIKTAR'
    end
    object StokHareketIBQMIKTARCARPAN2: TIntegerField
      FieldName = 'MIKTARCARPAN2'
      Origin = 'STOKBODRO.MIKTARCARPAN'
    end
    object StokHareketIBQGIRISMIKTAR2: TFloatField
      FieldName = 'GIRISMIKTAR2'
      Origin = 'STOKBODRO.GIRISMIKTAR'
    end
    object StokHareketIBQCIKISMIKTAR2: TFloatField
      FieldName = 'CIKISMIKTAR2'
      Origin = 'STOKBODRO.CIKISMIKTAR'
    end
    object StokHareketIBQBIRIM2: TIBStringField
      FieldName = 'BIRIM2'
      Origin = 'STOKBODRO.BIRIM'
      Size = 10
    end
    object StokHareketIBQBIRIMFIYAT2: TFloatField
      FieldName = 'BIRIMFIYAT2'
      Origin = 'STOKBODRO.BIRIMFIYAT'
    end
    object StokHareketIBQGIRISFIYAT1: TFloatField
      FieldName = 'GIRISFIYAT1'
      Origin = 'STOKBODRO.GIRISFIYAT'
    end
    object StokHareketIBQCIKISFIYAT1: TFloatField
      FieldName = 'CIKISFIYAT1'
      Origin = 'STOKBODRO.CIKISFIYAT'
    end
    object StokHareketIBQCIKISTUTAR1: TFloatField
      FieldName = 'CIKISTUTAR1'
      Origin = 'STOKBODRO.CIKISTUTAR'
    end
    object StokHareketIBQGIRISTUTAR1: TFloatField
      FieldName = 'GIRISTUTAR1'
      Origin = 'STOKBODRO.GIRISTUTAR'
    end
    object StokHareketIBQGIRISMATRAHI1: TFloatField
      FieldName = 'GIRISMATRAHI1'
      Origin = 'STOKBODRO.GIRISMATRAHI'
    end
    object StokHareketIBQCIKISMATRAHI1: TFloatField
      FieldName = 'CIKISMATRAHI1'
      Origin = 'STOKBODRO.CIKISMATRAHI'
    end
    object StokHareketIBQISKONTO12: TFloatField
      FieldName = 'ISKONTO12'
      Origin = 'STOKBODRO.ISKONTO1'
    end
    object StokHareketIBQISKONTO22: TFloatField
      FieldName = 'ISKONTO22'
      Origin = 'STOKBODRO.ISKONTO2'
    end
    object StokHareketIBQISKONTO32: TFloatField
      FieldName = 'ISKONTO32'
      Origin = 'STOKBODRO.ISKONTO3'
    end
    object StokHareketIBQISKONTO42: TFloatField
      FieldName = 'ISKONTO42'
      Origin = 'STOKBODRO.ISKONTO4'
    end
    object StokHareketIBQKDVORANI2: TFloatField
      FieldName = 'KDVORANI2'
      Origin = 'STOKBODRO.KDVORANI'
    end
    object StokHareketIBQBAKIYE2: TFloatField
      FieldName = 'BAKIYE2'
      Origin = 'STOKBODRO.BAKIYE'
    end
    object StokHareketIBQDURUM2: TIntegerField
      FieldName = 'DURUM2'
      Origin = 'STOKBODRO.DURUM'
    end
    object StokHareketIBQACIKLAMA2: TIBStringField
      FieldName = 'ACIKLAMA2'
      Origin = 'STOKBODRO.ACIKLAMA'
      Size = 60
    end
    object StokHareketIBQKAPATMA2: TIntegerField
      FieldName = 'KAPATMA2'
      Origin = 'STOKBODRO.KAPATMA'
    end
    object StokHareketIBQVADE2: TDateField
      FieldName = 'VADE2'
      Origin = 'STOKBODRO.VADE'
    end
    object StokHareketIBQFATURANO2: TIntegerField
      FieldName = 'FATURANO2'
      Origin = 'STOKBODRO.FATURANO'
    end
    object StokHareketIBQSTOKYERIKOD2: TIntegerField
      FieldName = 'STOKYERIKOD2'
      Origin = 'STOKBODRO.STOKYERIKOD'
    end
    object StokHareketIBQISLEMKURU2: TFloatField
      FieldName = 'ISLEMKURU2'
      Origin = 'STOKBODRO.ISLEMKURU'
    end
    object StokHareketIBQGELGITKOD2: TIBStringField
      FieldName = 'GELGITKOD2'
      Origin = 'STOKBODRO.GELGITKOD'
      Size = 80
    end
    object StokHareketIBQPERSONELKOD2: TIntegerField
      FieldName = 'PERSONELKOD2'
      Origin = 'STOKBODRO.PERSONELKOD'
    end
    object StokHareketIBQKULLANKOD2: TIntegerField
      FieldName = 'KULLANKOD2'
      Origin = 'STOKBODRO.KULLANKOD'
    end
    object StokHareketIBQSISTEM2: TIntegerField
      FieldName = 'SISTEM2'
      Origin = 'STOKBODRO.SISTEM'
    end
    object StokHareketIBQEVRAKDURUMU2: TIntegerField
      FieldName = 'EVRAKDURUMU2'
      Origin = 'STOKBODRO.EVRAKDURUMU'
    end
    object StokHareketIBQSERINO2: TIBStringField
      FieldName = 'SERINO2'
      Origin = 'STOKBODRO.SERINO'
      Size = 30
    end
    object StokHareketIBQCARIHESAPILISKI2: TIntegerField
      FieldName = 'CARIHESAPILISKI2'
      Origin = 'STOKBODRO.CARIHESAPILISKI'
    end
    object StokHareketIBQC_CARIADI2: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI2'
      Origin = 'STOKBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object StokHareketIBQC_STOKYERI2: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI2'
      Origin = 'STOKBODRO.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object StokHareketIBQC_KULLANICIADI2: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI2'
      Origin = 'STOKBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object StokHareketIBQC_PARABIRIMI2: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI2'
      Origin = 'STOKBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object StokHareketIBQC_REELGIRIS1: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_REELGIRIS1'
      Origin = 'STOKBODRO.C_REELGIRIS'
      ReadOnly = True
    end
    object StokHareketIBQC_REELCIKIS1: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_REELCIKIS1'
      Origin = 'STOKBODRO.C_REELCIKIS'
      ReadOnly = True
    end
    object StokHareketIBQISLEMKOD2: TIntegerField
      FieldName = 'ISLEMKOD2'
      Origin = 'STOKBODRO.ISLEMKOD'
    end
    object StokHareketIBQKDVSECIM2: TIBStringField
      FieldName = 'KDVSECIM2'
      Origin = 'STOKBODRO.KDVSECIM'
      Size = 5
    end
    object StokHareketIBQC_TLGIRISTUTARI1: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISTUTARI1'
      Origin = 'STOKBODRO.C_TLGIRISTUTARI'
      ReadOnly = True
    end
    object StokHareketIBQC_TLGIRISMATRAHI1: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISMATRAHI1'
      Origin = 'STOKBODRO.C_TLGIRISMATRAHI'
      ReadOnly = True
    end
    object StokHareketIBQC_TLCIKISTUTARI1: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISTUTARI1'
      Origin = 'STOKBODRO.C_TLCIKISTUTARI'
      ReadOnly = True
    end
    object StokHareketIBQC_TLCIKISMATRAHI1: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISMATRAHI1'
      Origin = 'STOKBODRO.C_TLCIKISMATRAHI'
      ReadOnly = True
    end
    object StokHareketIBQC_TLBIRIMFIYAT2: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLBIRIMFIYAT2'
      Origin = 'STOKBODRO.C_TLBIRIMFIYAT'
      ReadOnly = True
    end
    object StokHareketIBQC_GGMERKEZI2: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI2'
      Origin = 'STOKBODRO.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object StokHareketIBQC_GIRISKDVTUTAR1: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_GIRISKDVTUTAR1'
      Origin = 'STOKBODRO.C_GIRISKDVTUTAR'
      ReadOnly = True
    end
    object StokHareketIBQC_CIKISKDVTUTAR1: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_CIKISKDVTUTAR1'
      Origin = 'STOKBODRO.C_CIKISKDVTUTAR'
      ReadOnly = True
    end
    object StokHareketIBQC_TLGIRISKDVTUTAR1: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLGIRISKDVTUTAR1'
      Origin = 'STOKBODRO.C_TLGIRISKDVTUTAR'
      ReadOnly = True
    end
    object StokHareketIBQC_TLCIKISKDVTUTARI1: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLCIKISKDVTUTARI1'
      Origin = 'STOKBODRO.C_TLCIKISKDVTUTARI'
      ReadOnly = True
    end
    object StokHareketIBQC_ISLEMTUR2: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_ISLEMTUR2'
      Origin = 'STOKBODRO.C_ISLEMTUR'
      ReadOnly = True
      Size = 10
    end
  end
  object Query3: TQuery
    DatabaseName = 'Online Cari Pro2'
    SQL.Strings = (
      'SELECT Alissatisbodro_1.STOKNO, Alissatisbodro_1.STOKADI,'
      ' SUM( Alissatisbodro_1.CIKISMIKTAR ) '
      'FROM ALISSATISBODRO Alissatisbodro_1'
      '   INNER JOIN ALISSATISBODRO Alissatisbodro_2'
      '   ON  (Alissatisbodro_1.STOKKOD = Alissatisbodro_2.STOKKOD)  '
      '   INNER JOIN ALISSATISBODRO Alissatisbodro_3'
      '   ON  (Alissatisbodro_2.SIRANO = Alissatisbodro_3.STOKKOD)  '
      'GROUP BY Alissatisbodro_1.STOKNO, Alissatisbodro_1.STOKADI')
    Left = 488
    Top = 168
    object Query3STOKNO: TIntegerField
      FieldName = 'STOKNO'
    end
    object Query3STOKADI: TStringField
      FieldName = 'STOKADI'
      Size = 40
    end
  end
  object YillikStokHDS: TDataSource
    DataSet = YillikStokHIBQ
    Left = 168
    Top = 224
  end
  object YillikStokHIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DMStok.StokGrupKartDS
    SQL.Strings = (
      'select * from ALISSATISBODRO')
    Left = 64
    Top = 224
    object YillikStokHIBQBODROKOD: TIntegerField
      FieldName = 'BODROKOD'
      Origin = 'ALISSATISBODRO.BODROKOD'
      Required = True
    end
    object YillikStokHIBQSIRANO: TIntegerField
      FieldName = 'SIRANO'
      Origin = 'ALISSATISBODRO.SIRANO'
    end
    object YillikStokHIBQISLEMTUR: TIBStringField
      FieldName = 'ISLEMTUR'
      Origin = 'ALISSATISBODRO.ISLEMTUR'
      Size = 40
    end
    object YillikStokHIBQC_ISLEMTURKOD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_ISLEMTURKOD'
      Origin = 'ALISSATISBODRO.C_ISLEMTURKOD'
      ReadOnly = True
    end
    object YillikStokHIBQCARIKOD: TIntegerField
      FieldName = 'CARIKOD'
      Origin = 'ALISSATISBODRO.CARIKOD'
    end
    object YillikStokHIBQPARABIRIMKOD: TIntegerField
      FieldName = 'PARABIRIMKOD'
      Origin = 'ALISSATISBODRO.PARABIRIMKOD'
    end
    object YillikStokHIBQTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'ALISSATISBODRO.TARIH'
    end
    object YillikStokHIBQSTOKKOD: TIntegerField
      FieldName = 'STOKKOD'
      Origin = 'ALISSATISBODRO.STOKKOD'
    end
    object YillikStokHIBQSTOKNO: TIntegerField
      FieldName = 'STOKNO'
      Origin = 'ALISSATISBODRO.STOKNO'
    end
    object YillikStokHIBQBARKOD: TIBStringField
      FieldName = 'BARKOD'
      Origin = 'ALISSATISBODRO.BARKOD'
      Size = 25
    end
    object YillikStokHIBQSTOKADI: TIBStringField
      FieldName = 'STOKADI'
      Origin = 'ALISSATISBODRO.STOKADI'
      Size = 80
    end
    object YillikStokHIBQMIKTAR: TFloatField
      FieldName = 'MIKTAR'
      Origin = 'ALISSATISBODRO.MIKTAR'
    end
    object YillikStokHIBQMIKTARCARPAN: TIntegerField
      FieldName = 'MIKTARCARPAN'
      Origin = 'ALISSATISBODRO.MIKTARCARPAN'
    end
    object YillikStokHIBQGIRISMIKTAR: TFloatField
      FieldName = 'GIRISMIKTAR'
      Origin = 'ALISSATISBODRO.GIRISMIKTAR'
    end
    object YillikStokHIBQCIKISMIKTAR: TFloatField
      FieldName = 'CIKISMIKTAR'
      Origin = 'ALISSATISBODRO.CIKISMIKTAR'
    end
    object YillikStokHIBQBIRIM: TIBStringField
      FieldName = 'BIRIM'
      Origin = 'ALISSATISBODRO.BIRIM'
      Size = 10
    end
    object YillikStokHIBQBIRIMFIYAT: TFloatField
      FieldName = 'BIRIMFIYAT'
      Origin = 'ALISSATISBODRO.BIRIMFIYAT'
    end
    object YillikStokHIBQALISFIYAT: TFloatField
      FieldName = 'ALISFIYAT'
      Origin = 'ALISSATISBODRO.ALISFIYAT'
    end
    object YillikStokHIBQSATISTUTAR: TFloatField
      FieldName = 'SATISTUTAR'
      Origin = 'ALISSATISBODRO.SATISTUTAR'
    end
    object YillikStokHIBQSATISFIYAT: TFloatField
      FieldName = 'SATISFIYAT'
      Origin = 'ALISSATISBODRO.SATISFIYAT'
    end
    object YillikStokHIBQALISTUTAR: TFloatField
      FieldName = 'ALISTUTAR'
      Origin = 'ALISSATISBODRO.ALISTUTAR'
    end
    object YillikStokHIBQALISMATRAHI: TFloatField
      FieldName = 'ALISMATRAHI'
      Origin = 'ALISSATISBODRO.ALISMATRAHI'
    end
    object YillikStokHIBQSATISMATRAHI: TFloatField
      FieldName = 'SATISMATRAHI'
      Origin = 'ALISSATISBODRO.SATISMATRAHI'
    end
    object YillikStokHIBQISKONTO1: TFloatField
      FieldName = 'ISKONTO1'
      Origin = 'ALISSATISBODRO.ISKONTO1'
    end
    object YillikStokHIBQISKONTO2: TFloatField
      FieldName = 'ISKONTO2'
      Origin = 'ALISSATISBODRO.ISKONTO2'
    end
    object YillikStokHIBQISKONTO3: TFloatField
      FieldName = 'ISKONTO3'
      Origin = 'ALISSATISBODRO.ISKONTO3'
    end
    object YillikStokHIBQISKONTO4: TFloatField
      FieldName = 'ISKONTO4'
      Origin = 'ALISSATISBODRO.ISKONTO4'
    end
    object YillikStokHIBQKDVORANI: TFloatField
      FieldName = 'KDVORANI'
      Origin = 'ALISSATISBODRO.KDVORANI'
    end
    object YillikStokHIBQBAKIYE: TFloatField
      FieldName = 'BAKIYE'
      Origin = 'ALISSATISBODRO.BAKIYE'
    end
    object YillikStokHIBQDURUM: TIntegerField
      FieldName = 'DURUM'
      Origin = 'ALISSATISBODRO.DURUM'
    end
    object YillikStokHIBQACIKLAMA: TIBStringField
      FieldName = 'ACIKLAMA'
      Origin = 'ALISSATISBODRO.ACIKLAMA'
      Size = 60
    end
    object YillikStokHIBQKAPATMA: TIntegerField
      FieldName = 'KAPATMA'
      Origin = 'ALISSATISBODRO.KAPATMA'
    end
    object YillikStokHIBQVADE: TDateField
      FieldName = 'VADE'
      Origin = 'ALISSATISBODRO.VADE'
    end
    object YillikStokHIBQFATURANO: TIntegerField
      FieldName = 'FATURANO'
      Origin = 'ALISSATISBODRO.FATURANO'
    end
    object YillikStokHIBQSTOKYERIKOD: TIntegerField
      FieldName = 'STOKYERIKOD'
      Origin = 'ALISSATISBODRO.STOKYERIKOD'
    end
    object YillikStokHIBQISLEMKURU: TFloatField
      FieldName = 'ISLEMKURU'
      Origin = 'ALISSATISBODRO.ISLEMKURU'
    end
    object YillikStokHIBQGELGITKOD: TIBStringField
      FieldName = 'GELGITKOD'
      Origin = 'ALISSATISBODRO.GELGITKOD'
      Size = 80
    end
    object YillikStokHIBQPERSONELKOD: TIntegerField
      FieldName = 'PERSONELKOD'
      Origin = 'ALISSATISBODRO.PERSONELKOD'
    end
    object YillikStokHIBQKULLANKOD: TIntegerField
      FieldName = 'KULLANKOD'
      Origin = 'ALISSATISBODRO.KULLANKOD'
    end
    object YillikStokHIBQEVRAKDURUMU: TIntegerField
      FieldName = 'EVRAKDURUMU'
      Origin = 'ALISSATISBODRO.EVRAKDURUMU'
    end
    object YillikStokHIBQSERINO: TIBStringField
      FieldName = 'SERINO'
      Origin = 'ALISSATISBODRO.SERINO'
      Size = 30
    end
    object YillikStokHIBQCARIHESAPILISKI: TIntegerField
      FieldName = 'CARIHESAPILISKI'
      Origin = 'ALISSATISBODRO.CARIHESAPILISKI'
    end
    object YillikStokHIBQC_CARIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CARIADI'
      Origin = 'ALISSATISBODRO.C_CARIADI'
      ReadOnly = True
      Size = 60
    end
    object YillikStokHIBQC_STOKYERI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_STOKYERI'
      Origin = 'ALISSATISBODRO.C_STOKYERI'
      ReadOnly = True
      Size = 25
    end
    object YillikStokHIBQC_KULLANICIADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KULLANICIADI'
      Origin = 'ALISSATISBODRO.C_KULLANICIADI'
      ReadOnly = True
    end
    object YillikStokHIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'ALISSATISBODRO.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object YillikStokHIBQC_REELALIS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_REELALIS'
      Origin = 'ALISSATISBODRO.C_REELALIS'
      ReadOnly = True
    end
    object YillikStokHIBQC_REELSATIS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_REELSATIS'
      Origin = 'ALISSATISBODRO.C_REELSATIS'
      ReadOnly = True
    end
    object YillikStokHIBQISLEMKOD: TIntegerField
      FieldName = 'ISLEMKOD'
      Origin = 'ALISSATISBODRO.ISLEMKOD'
    end
    object YillikStokHIBQKDVSECIM: TIBStringField
      FieldName = 'KDVSECIM'
      Origin = 'ALISSATISBODRO.KDVSECIM'
      Size = 5
    end
    object YillikStokHIBQC_TLALISTUTARI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISTUTARI'
      Origin = 'ALISSATISBODRO.C_TLALISTUTARI'
      ReadOnly = True
    end
    object YillikStokHIBQC_TLALISMATRAHI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISMATRAHI'
      Origin = 'ALISSATISBODRO.C_TLALISMATRAHI'
      ReadOnly = True
    end
    object YillikStokHIBQC_TLSATISTUTARI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISTUTARI'
      Origin = 'ALISSATISBODRO.C_TLSATISTUTARI'
      ReadOnly = True
    end
    object YillikStokHIBQC_TLSATISMATRAHI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISMATRAHI'
      Origin = 'ALISSATISBODRO.C_TLSATISMATRAHI'
      ReadOnly = True
    end
    object YillikStokHIBQC_TLBIRIMFIYAT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLBIRIMFIYAT'
      Origin = 'ALISSATISBODRO.C_TLBIRIMFIYAT'
      ReadOnly = True
    end
    object YillikStokHIBQC_GGMERKEZI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_GGMERKEZI'
      Origin = 'ALISSATISBODRO.C_GGMERKEZI'
      ReadOnly = True
      Size = 30
    end
    object YillikStokHIBQC_ALISKDVTUTAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_ALISKDVTUTAR'
      Origin = 'ALISSATISBODRO.C_ALISKDVTUTAR'
      ReadOnly = True
    end
    object YillikStokHIBQC_SATISKDVTUTAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_SATISKDVTUTAR'
      Origin = 'ALISSATISBODRO.C_SATISKDVTUTAR'
      ReadOnly = True
    end
    object YillikStokHIBQC_TLALISKDVTUTAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLALISKDVTUTAR'
      Origin = 'ALISSATISBODRO.C_TLALISKDVTUTAR'
      ReadOnly = True
    end
    object YillikStokHIBQC_TLSATISKDVTUTARI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TLSATISKDVTUTARI'
      Origin = 'ALISSATISBODRO.C_TLSATISKDVTUTARI'
      ReadOnly = True
    end
    object YillikStokHIBQSISTEM: TIntegerField
      FieldName = 'SISTEM'
      Origin = 'ALISSATISBODRO.SISTEM'
    end
    object YillikStokHIBQMALIYETFIYATI: TFloatField
      FieldName = 'MALIYETFIYATI'
      Origin = 'ALISSATISBODRO.MALIYETFIYATI'
    end
    object YillikStokHIBQC_MALIYETTUTARI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_MALIYETTUTARI'
      Origin = 'ALISSATISBODRO.C_MALIYETTUTARI'
      ReadOnly = True
    end
    object YillikStokHIBQC_KARZARAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_KARZARAR'
      Origin = 'ALISSATISBODRO.C_KARZARAR'
      ReadOnly = True
    end
    object YillikStokHIBQC_ISLEMTUR: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_ISLEMTUR'
      Origin = 'ALISSATISBODRO.C_ISLEMTUR'
      ReadOnly = True
      Size = 10
    end
    object YillikStokHIBQOcak: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Ocak'
      Calculated = True
    end
  end
  object IBQuery1: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT Alissatisbodro.STOKKOD, Irsaliyebodro.STOKKOD,'
      
        'SUM(   (Alissatisbodro.GIRISMIKTAR + Irsaliyebodro.GIRISMIKTAR) ' +
        ' + Stokbodro.GIRISMIKTAR  ) GirisMiktar,'
      
        'SUM(   (Irsaliyebodro.CIKISMIKTAR + Stokbodro.CIKISMIKTAR)  + Al' +
        'issatisbodro.CIKISMIKTAR  ) CikisMiktar,'
      
        'Stokbodro.STOKKOD, Stokkart.STOKNO, Stokkart.STOKADI, Stokkart.B' +
        'AKIYE, Stokkart.C_DURUM'
      'FROM ALISSATISBODRO Alissatisbodro'
      '   INNER JOIN IRSALIYEBODRO Irsaliyebodro'
      '   ON  (Alissatisbodro.STOKKOD = Irsaliyebodro.STOKKOD)'
      '   INNER JOIN STOKBODRO Stokbodro'
      '   ON  (Irsaliyebodro.STOKKOD = Stokbodro.STOKKOD)  '
      '   INNER JOIN STOKKART Stokkart'
      '   ON  (Stokbodro.STOKKOD = Stokkart.STOKKOD)  '
      
        'GROUP BY Alissatisbodro.STOKKOD, Irsaliyebodro.STOKKOD, Stokbodr' +
        'o.STOKKOD, Stokkart.STOKNO,'
      'Stokkart.STOKADI, Stokkart.BAKIYE, Stokkart.C_DURUM')
    Left = 280
    Top = 24
    object IntegerField5: TIntegerField
      FieldName = 'STOKKOD'
    end
    object IntegerField6: TIntegerField
      FieldName = 'STOKKOD1'
    end
    object FloatField4: TFloatField
      FieldName = 'GIRISMIKTAR'
    end
    object FloatField5: TFloatField
      FieldName = 'CIKISMIKTAR'
    end
    object IntegerField7: TIntegerField
      FieldName = 'STOKKOD2'
    end
    object IntegerField8: TIntegerField
      FieldName = 'STOKNO'
    end
    object IBStringField3: TIBStringField
      FieldName = 'STOKADI'
      Size = 40
    end
    object FloatField6: TFloatField
      FieldName = 'BAKIYE'
    end
    object IBStringField4: TIBStringField
      FieldName = 'C_DURUM'
      Size = 5
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 376
    Top = 24
  end
  object SiparisGerekIBQ: TIBQuery
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STOKKART'
      'Where SIPSEVIYE>BAKIYE')
    Left = 56
    Top = 288
    object SiparisGerekIBQSTOKNO: TIntegerField
      FieldName = 'STOKNO'
      Origin = 'STOKKART.STOKNO'
    end
    object SiparisGerekIBQBARKOD: TIBStringField
      FieldName = 'BARKOD'
      Origin = 'STOKKART.BARKOD'
      Size = 25
    end
    object SiparisGerekIBQSTOKADI: TIBStringField
      FieldName = 'STOKADI'
      Origin = 'STOKKART.STOKADI'
      Size = 80
    end
    object SiparisGerekIBQBIRIM: TIBStringField
      FieldName = 'BIRIM'
      Origin = 'STOKKART.BIRIM'
      Size = 10
    end
    object SiparisGerekIBQMINSEVIYE: TIntegerField
      FieldName = 'MINSEVIYE'
      Origin = 'STOKKART.MINSEVIYE'
    end
    object SiparisGerekIBQMAXSEVIYE: TIntegerField
      FieldName = 'MAXSEVIYE'
      Origin = 'STOKKART.MAXSEVIYE'
    end
    object SiparisGerekIBQSIPSEVIYE: TIntegerField
      FieldName = 'SIPSEVIYE'
      Origin = 'STOKKART.SIPSEVIYE'
    end
    object SiparisGerekIBQALISFIYAT: TFloatField
      FieldName = 'ALISFIYAT'
      Origin = 'STOKKART.ALISFIYAT'
    end
    object SiparisGerekIBQBAKIYE: TFloatField
      FieldName = 'BAKIYE'
      Origin = 'STOKKART.BAKIYE'
    end
    object SiparisGerekIBQORTALAMALIS: TFloatField
      FieldName = 'ORTALAMALIS'
      Origin = 'STOKKART.ORTALAMALIS'
    end
    object SiparisGerekIBQORTALAMSATIS: TFloatField
      FieldName = 'ORTALAMSATIS'
      Origin = 'STOKKART.ORTALAMSATIS'
    end
    object SiparisGerekIBQSONALIS: TFloatField
      FieldName = 'SONALIS'
      Origin = 'STOKKART.SONALIS'
    end
    object SiparisGerekIBQSONSATIS: TFloatField
      FieldName = 'SONSATIS'
      Origin = 'STOKKART.SONSATIS'
    end
    object SiparisGerekIBQACIKLAMA: TMemoField
      FieldName = 'ACIKLAMA'
      Origin = 'STOKKART.ACIKLAMA'
      BlobType = ftMemo
      Size = 8
    end
    object SiparisGerekIBQC_PARABIRIMI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_PARABIRIMI'
      Origin = 'STOKKART.C_PARABIRIMI'
      ReadOnly = True
      Size = 10
    end
    object SiparisGerekIBQC_KAYNAKADI: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_KAYNAKADI'
      Origin = 'STOKKART.C_KAYNAKADI'
      ReadOnly = True
      Size = 60
    end
    object SiparisGerekIBQALINANSIPARIS: TFloatField
      FieldName = 'ALINANSIPARIS'
      Origin = 'STOKKART.ALINANSIPARIS'
    end
    object SiparisGerekIBQVERILENSIPARIS: TFloatField
      FieldName = 'VERILENSIPARIS'
      Origin = 'STOKKART.VERILENSIPARIS'
    end
    object SiparisGerekIBQC_DURUM: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_DURUM'
      Origin = 'STOKKART.C_DURUM'
      ReadOnly = True
      Size = 5
    end
  end
  object SiparisGerekDS: TDataSource
    DataSet = SiparisGerekIBQ
    Left = 168
    Top = 288
  end
end
