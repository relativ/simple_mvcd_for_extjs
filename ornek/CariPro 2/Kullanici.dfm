object FKullanici: TFKullanici
  Left = 233
  Top = 138
  BorderStyle = bsToolWindow
  Caption = 'Kullan'#305'c'#305' Bilgileri'
  ClientHeight = 410
  ClientWidth = 650
  Color = clBtnFace
  TransparentColor = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Notebook1: TNotebook
    Left = 0
    Top = 0
    Width = 650
    Height = 410
    Align = alClient
    Color = 14215660
    PageIndex = 1
    ParentColor = False
    TabOrder = 0
    object TPage
      Left = 0
      Top = 0
      Caption = 'kullanici'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 650
        Height = 410
        Align = alClient
        BevelInner = bvLowered
        BevelOuter = bvLowered
        Caption = 'Panel1'
        TabOrder = 0
        object Panel2: TPanel
          Left = 2
          Top = 2
          Width = 646
          Height = 30
          Align = alTop
          BevelOuter = bvNone
          Caption = 'Kullan'#305'c'#305' Bilgileri'
          Color = 13395456
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object Panel3: TPanel
          Left = 2
          Top = 32
          Width = 646
          Height = 340
          Align = alClient
          BevelOuter = bvNone
          Color = 15335378
          TabOrder = 1
          object PageControl1: TPageControl
            Left = 0
            Top = 0
            Width = 646
            Height = 340
            ActivePage = TabSheet1
            Align = alClient
            TabIndex = 0
            TabOrder = 0
            object TabSheet1: TTabSheet
              Caption = ' Kullan'#305'c'#305' Bilgileri'
              OnShow = TabSheet1Show
              object GroupBox1: TGroupBox
                Left = 4
                Top = 2
                Width = 631
                Height = 304
                Caption = ' Kullan'#305'c'#305' Bilgileri  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                OnExit = GroupBox1Exit
                object Label1: TLabel
                  Left = 288
                  Top = 36
                  Width = 57
                  Height = 13
                  Caption = 'Kullan'#305'c'#305' Ad'#305
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label2: TLabel
                  Left = 324
                  Top = 68
                  Width = 21
                  Height = 13
                  Caption = #350'ifre'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label3: TLabel
                  Left = 288
                  Top = 95
                  Width = 57
                  Height = 13
                  Caption = #350'ifre Kontrol'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label4: TLabel
                  Left = 33
                  Top = 36
                  Width = 59
                  Height = 13
                  Caption = 'Personel Ad'#305
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label5: TLabel
                  Left = 16
                  Top = 68
                  Width = 76
                  Height = 13
                  Caption = 'Personel Soyad'#305
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object DBOnlineEdit4: TDBTechEdit
                  Left = 355
                  Top = 32
                  Width = 166
                  Height = 21
                  Color = 14811135
                  DataField = 'KULLANICI'
                  DataSource = DMSabit.KullaniciDS
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                  RenkGiris = 16777088
                  RenkCikis = 14811135
                  BuyukKucuk = True
                end
                object DBOnlineEdit7: TDBTechEdit
                  Left = 355
                  Top = 64
                  Width = 102
                  Height = 21
                  Color = 14811135
                  DataField = 'SIFRE'
                  DataSource = DMSabit.KullaniciDS
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  PasswordChar = '&'
                  TabOrder = 3
                  RenkGiris = 16777088
                  RenkCikis = 14811135
                  BuyukKucuk = True
                end
                object OnlineEdit1: TTechEdit
                  Left = 355
                  Top = 91
                  Width = 102
                  Height = 21
                  RenkGiris = 16777088
                  RenkCikis = 14811135
                  BuyukKucuk = True
                  Color = 14811135
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  PasswordChar = '&'
                  TabOrder = 4
                  OnExit = OnlineEdit1Exit
                end
                object DBOnlineEdit1: TDBTechEdit
                  Left = 99
                  Top = 32
                  Width = 166
                  Height = 21
                  Color = 14811135
                  DataField = 'PERADI'
                  DataSource = DMSabit.KullaniciDS
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  RenkGiris = 16777088
                  RenkCikis = 14811135
                  BuyukKucuk = True
                end
                object DBOnlineEdit2: TDBTechEdit
                  Left = 99
                  Top = 64
                  Width = 166
                  Height = 21
                  Color = 14811135
                  DataField = 'PERSOYAD'
                  DataSource = DMSabit.KullaniciDS
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  RenkGiris = 16777088
                  RenkCikis = 14811135
                  BuyukKucuk = True
                end
                object OnlineDBGrid1: TTechDBGrid
                  Left = 6
                  Top = 152
                  Width = 619
                  Height = 145
                  BorderStyle = bsNone
                  DataSource = DMSabit.KullaniciDS
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 5
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clNavy
                  TitleFont.Height = -11
                  TitleFont.Name = 'MS Sans Serif'
                  TitleFont.Style = [fsBold]
                  OnKeyDown = OnlineDBGrid1KeyDown
                  About = 
                    'Online Yaz'#305'l'#305'm/ Serkan G'#252'ne'#351' '#13#10'E-Mail: online@onlinebilgisayar.c' +
                    'om. '#13#10'Web: www.onlinebilgisayar.com'
                  WordExport = True
                  SatirRenk = False
                  SatirRenk1 = clBlack
                  SatirFontRengi = clBlack
                  SatirFontRengi2 = clBlack
                  SatirRenk2 = clBlack
                  DefaultRowHeight = 17
                  GridOptions = [goColSizing]
                  Columns = <
                    item
                      Color = 13369080
                      Expanded = False
                      FieldName = 'PERADI'
                      Title.Alignment = taCenter
                      Width = 190
                      Visible = True
                      Siralama = True
                      CokluTus = False
                      Sirala1_Rengi = 8454016
                      Sirala2_Rengi = 16777088
                    end
                    item
                      Color = 13369080
                      Expanded = False
                      FieldName = 'PERSOYAD'
                      Title.Alignment = taCenter
                      Width = 170
                      Visible = True
                      Siralama = True
                      CokluTus = False
                      Sirala1_Rengi = 8454016
                      Sirala2_Rengi = 16777088
                    end
                    item
                      Color = 13369080
                      Expanded = False
                      FieldName = 'KULLANICI'
                      Title.Alignment = taCenter
                      Width = 98
                      Visible = True
                      Siralama = True
                      CokluTus = False
                      Sirala1_Rengi = 8454016
                      Sirala2_Rengi = 16777088
                    end
                    item
                      Color = 13369080
                      Expanded = False
                      FieldName = 'TARIH'
                      Title.Alignment = taCenter
                      Width = 120
                      Visible = True
                      Siralama = False
                      CokluTus = False
                      Sirala1_Rengi = clBlack
                      Sirala2_Rengi = clBlack
                    end>
                end
                object BitBtn1: TTechButton
                  Left = 102
                  Top = 118
                  Width = 104
                  Height = 25
                  Caption = 'Kullan'#305'c'#305' Ekle'
                  TabOrder = 6
                  TabStop = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGreen
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  OnClick = BitBtn1Click
                  Cornerradius = 5
                  DrawDisabledImg = False
                  Glyph.Data = {
                    36010000424D3601000000000000760000002800000011000000100000000100
                    040000000000C0000000130B0000130B00001000000000000000000000000000
                    800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                    333B300000003BB3777BB7777BB33000000033B0000000000B33300000003330
                    FFFFFFFF0733300000003330FFFFFFFF0733300000003330FFFFFFFF07333000
                    00003330FFFFFFFF073330000000BBB0FFFFFFFF0BB3700000003BB0FFFFFFFF
                    0BBB300000003330FFFF00000333300000003330FFFF0FF03333300000003330
                    FFFF0F0B3333300000003330FFFF003BB3333000000033B000000333BB333000
                    00003BB3333BB3333BB330000000B333333B3333333B70000000}
                  Colors.BackgroundFrom = clWhite
                  Colors.BackgroundTo = 15199215
                  Colors.BorderLine = clGray
                  Colors.ClickedFrom = 13029334
                  Colors.ClickedTo = 15463415
                  Colors.FocusedFrom = 16771022
                  Colors.FocusedTo = 15697005
                  Colors.HighlightFrom = 13562879
                  Colors.HighlightTo = 38631
                  Colors.HotTrack = clRed
                  Colors.Downarrow = clBlack
                  Colors.GradientShift = 0
                  Colors.GradientStyle = gsButterfly
                  ShowAccelChar = True
                  ShowFocusRect = True
                  CanRepeat = False
                  ShowDownArrow = False
                  Lines.Strings = (
                    'Kullan'#305'c'#305' Ekle')
                  Multiline = False
                  Cizim = True
                end
                object BitBtn2: TTechButton
                  Left = 225
                  Top = 118
                  Width = 104
                  Height = 25
                  Caption = 'Kullan'#305'c'#305'y'#305' Sil'
                  TabOrder = 7
                  TabStop = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  OnClick = BitBtn2Click
                  Cornerradius = 5
                  DrawDisabledImg = False
                  Glyph.Data = {
                    F6000000424DF600000000000000760000002800000010000000100000000100
                    04000000000080000000120B0000120B00001000000000000000000000000000
                    800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
                    5555000000005550555500550005505555550055500555555555500550050055
                    5555550050501105555555550509991055555005550999910555500505509990
                    305555005055090B03055555555550B0B03055550555550B0B33555555555550
                    BBB35550555555550BBB55555555555550BB555555555555550B}
                  Colors.BackgroundFrom = clWhite
                  Colors.BackgroundTo = 15199215
                  Colors.BorderLine = clGray
                  Colors.ClickedFrom = 13029334
                  Colors.ClickedTo = 15463415
                  Colors.FocusedFrom = 16771022
                  Colors.FocusedTo = 15697005
                  Colors.HighlightFrom = 13562879
                  Colors.HighlightTo = 38631
                  Colors.HotTrack = clRed
                  Colors.Downarrow = clBlack
                  Colors.GradientShift = 0
                  Colors.GradientStyle = gsButterfly
                  ShowAccelChar = True
                  ShowFocusRect = True
                  CanRepeat = False
                  ShowDownArrow = False
                  Lines.Strings = (
                    'Kullan'#305'c'#305'y'#305' Sil')
                  Multiline = False
                  Cizim = True
                end
              end
            end
            object TabSheet2: TTabSheet
              Caption = ' Yaz'#305'c'#305' Bilgileri  '
              ImageIndex = 1
              object GroupBox3: TGroupBox
                Left = 4
                Top = 2
                Width = 631
                Height = 304
                Caption = ' Yaz'#305'c'#305' Bilgileri  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                OnExit = GroupBox1Exit
                object OnlineDBGrid2: TTechDBGrid
                  Left = 6
                  Top = 16
                  Width = 619
                  Height = 273
                  BorderStyle = bsNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
                  ParentFont = False
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clNavy
                  TitleFont.Height = -11
                  TitleFont.Name = 'MS Sans Serif'
                  TitleFont.Style = [fsBold]
                  OnKeyDown = OnlineDBGrid1KeyDown
                  About = 
                    'Online Yaz'#305'l'#305'm/ Serkan G'#252'ne'#351' '#13#10'E-Mail: online@onlinebilgisayar.c' +
                    'om. '#13#10'Web: www.onlinebilgisayar.com'
                  WordExport = True
                  SatirRenk = False
                  SatirRenk1 = clBlack
                  SatirFontRengi = clBlack
                  SatirFontRengi2 = clBlack
                  SatirRenk2 = clBlack
                  DefaultRowHeight = 17
                  GridOptions = [goColSizing]
                  Columns = <
                    item
                      Color = 13369080
                      Expanded = False
                      FieldName = 'FORMADI'
                      PopupMenu = PopupMenu1
                      ReadOnly = True
                      Title.Alignment = taCenter
                      Width = 233
                      Visible = True
                      Siralama = True
                      CokluTus = False
                      Sirala1_Rengi = 8454016
                      Sirala2_Rengi = 16777088
                    end
                    item
                      ButtonStyle = cbsEllipsis
                      Color = 13369080
                      Expanded = False
                      FieldName = 'YAZICI'
                      PopupMenu = PopupMenu2
                      Title.Alignment = taCenter
                      Width = 338
                      Visible = True
                      Siralama = True
                      CokluTus = False
                      Sirala1_Rengi = 8454016
                      Sirala2_Rengi = 16777088
                    end>
                end
              end
            end
          end
        end
        object Panel4: TPanel
          Left = 2
          Top = 372
          Width = 646
          Height = 36
          Align = alBottom
          BevelOuter = bvNone
          Color = 13395456
          TabOrder = 2
          DesignSize = (
            646
            36)
          object BitBtn3: TTechButton
            Left = 565
            Top = 6
            Width = 75
            Height = 25
            Caption = 'Kapat'
            TabOrder = 0
            TabStop = True
            Anchors = [akTop, akRight]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = BitBtn3Click
            Cornerradius = 5
            DrawDisabledImg = False
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              04000000000080000000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
              BB3333BB00BBBBBBBB3333BB0BBBBBB0BB3333BBB0BBBB000B3333BBB00BB00B
              BB3333BBBB0B00BBBB3333BBBB000BBBBB3333EEEE000EEEEE3333EE0E80000E
              EE3333EEE0800EEEEE3333EEEE000EEEEE3333EEEEE00EEEEE3333EEEEEE00EE
              EE3333EEEEEE00EEEE3333EEEEEEEEEEEE3333EEEEEEEEEEEE33}
            Layout = blGlyphRight
            Colors.BackgroundFrom = clWhite
            Colors.BackgroundTo = 15199215
            Colors.BorderLine = clGray
            Colors.ClickedFrom = 13029334
            Colors.ClickedTo = 15463415
            Colors.FocusedFrom = 16771022
            Colors.FocusedTo = 15697005
            Colors.HighlightFrom = 13562879
            Colors.HighlightTo = 38631
            Colors.HotTrack = clRed
            Colors.Downarrow = clBlack
            Colors.GradientShift = 0
            Colors.GradientStyle = gsButterfly
            ShowAccelChar = True
            ShowFocusRect = True
            CanRepeat = False
            ShowDownArrow = False
            Lines.Strings = (
              'Kapat')
            Multiline = False
            Cizim = True
          end
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'sifre'
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 650
        Height = 410
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Image1: TImage
          Left = 64
          Top = 32
          Width = 443
          Height = 84
          AutoSize = True
          Picture.Data = {
            0A544A504547496D61676537160000FFD8FFE000104A46494600010101006000
            600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
            0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
            3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
            3232323232323232323232323232323232323232323232323232323232323232
            32323232323232323232323232FFC0001108005401BB03012200021101031101
            FFC4001F0000010501010101010100000000000000000102030405060708090A
            0BFFC400B5100002010303020403050504040000017D01020300041105122131
            410613516107227114328191A1082342B1C11552D1F02433627282090A161718
            191A25262728292A3435363738393A434445464748494A535455565758595A63
            6465666768696A737475767778797A838485868788898A92939495969798999A
            A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
            D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
            01010101010101010000000000000102030405060708090A0BFFC400B5110002
            0102040403040705040400010277000102031104052131061241510761711322
            328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
            292A35363738393A434445464748494A535455565758595A636465666768696A
            737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
            A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
            E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F68A
            2A1BBB94B3B39EEA40C5218DA460BD4803271F9572BFF09B5C7FD02E2FFC0A3F
            FC454D2C3D4AA9B82B9956C4D2A2D2A8ED73B0A2B8FF00F84DAE3FE81717FE05
            1FFE228FF84DAE3FE81717FE051FFE22B6FA8623F97F15FE663FDA386FE6FC1F
            F91D8515C7FF00C26D71FF0040B8BFF028FF00F1147FC26D71FF0040B8BFF028
            FF00F1147D4311FCBF8AFF0030FED1C37F37E0FF00C8EC28AE3FFE136B8FFA05
            C5FF008147FF0088A3FE136B8FFA05C5FF008147FF0088A3EA188FE5FC57F987
            F68E1BF9BF07FE47614571FF00F09B5C7FD02E2FFC0A3FFC451FF09B5C7FD02E
            2FFC0A3FFC451F50C47F2FE2BFCC3FB470DFCDF83FF23B0A2B8FFF0084DAE3FE
            81717FE051FF00E228FF0084DAE3FE81717FE051FF00E228FA8623F97F15FE61
            FDA386FE6FC1FF0091D8515C7FFC26D71FF40B8BFF00028FFF001147FC26D71F
            F40B8BFF00028FFF001147D4311FCBF8AFF30FED1C37F37E0FFC8EC28AE3FF00
            E136B8FF00A05C5FF8147FF88A3FE136B8FF00A05C5FF8147FF88A3EA188FE5F
            C57F987F68E1BF9BF07FE4761454369729796705D461824D1AC8A1BA8046467F
            3A9AB91AB3B33B53BABA0A28A290C28A28A0028A28A0028A28A0028A28A0028A
            28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A
            28A0028A28A0028A28A0028A28A0028A28A0028A28A00CFD77FE45ED4FFEBD25
            FF00D00D79CD7A66A56CF79A55E5AC6543CD03C6A5BA0254819FCEB83FEC0D6B
            FE8192FF00DFD8BFF8BAF5F2DAB08464A4D23C4CD68D49CE2E116FD0CFA2B43F
            B035AFFA064BFF007F62FF00E2E8FEC0D6BFE8192FFDFD8BFF008BAF4BEB147F
            9D7DE8F2BEAB5FF91FDCCCFA2B43FB035AFF00A064BFF7F62FFE2E8FEC0D6BFE
            8192FF00DFD8BFF8BA3EB147F9D7DE83EAB5FF0091FDCCCFA2B43FB035AFFA06
            4BFF007F62FF00E2E8FEC0D6BFE8192FFDFD8BFF008BA3EB147F9D7DE83EAB5F
            F91FDCCCFA2B43FB035AFF00A064BFF7F62FFE2E8FEC0D6BFE8192FF00DFD8BF
            F8BA3EB147F9D7DE83EAB5FF0091FDCCCFA2B43FB035AFFA064BFF007F62FF00
            E2E8FEC0D6BFE8192FFDFD8BFF008BA3EB147F9D7DE83EAB5FF91FDCCCFA2B43
            FB035AFF00A064BFF7F62FFE2E8FEC0D6BFE8192FF00DFD8BFF8BA3EB147F9D7
            DE83EAB5FF0091FDCCCFA2B43FB035AFFA064BFF007F62FF00E2E8FEC0D6BFE8
            192FFDFD8BFF008BA3EB147F9D7DE83EAB5FF91FDCCEDB42FF00917B4CFF00AF
            48BFF4015A15574DB67B3D2ACED642A5E1812362BD090A01C7E556ABE626EF26
            D1F5B4D5A09339A37BE2EDC76E9362476266C7F5A4FB6F8C3FE81361FF007FFF
            00FAF5D3515BFD617F247F1FF330FAB3FF009F92FBD7F91CCFDB7C61FF00409B
            0FFBFF00FF00D7A3EDBE30FF00A04D87FDFF00FF00EBD74D451F585FC91FC7FC
            C3EACFFE7E4BEF5FE4733F6DF187FD026C3FEFFF00FF005E8FB6F8C3FE81361F
            F7FF00FF00AF5D35147D617F247F1FF30FAB3FF9F92FBD7F91CCFDB7C61FF409
            B0FF00BFFF00FD7A3EDBE30FFA04D87FDFFF00FEBD74D451F585FC91FC7FCC3E
            ACFF00E7E4BEF5FE4733F6DF187FD026C3FEFF00FF00F5E8FB6F8C3FE81361FF
            007FFF00FAF5D35147D617F247F1FF0030FAB3FF009F92FBD7F91CCFDB7C61FF
            00409B0FFBFF00FF00D7A3EDBE30FF00A04D87FDFF00FF00EBD74D451F585FC9
            1FC7FCC3EACFFE7E4BEF5FE4733F6DF187FD026C3FEFFF00FF005E8FB6F8C3FE
            81361FF7FF00FF00AF5D35147D617F247F1FF30FAB3FF9F92FBD7F91CCFDB7C6
            1FF409B0FF00BFFF00FD7A3EDBE30FFA04D87FDFFF00FEBD74D451F585FC91FC
            7FCC3EACFF00E7E4BEF5FE4733F6DF187FD026C3FEFF00FF00F5E8FB6F8C3FE8
            1361FF007FFF00FAF5D35147D617F247F1FF0030FAB3FF009F92FBD7F91CCFDB
            7C61FF00409B0FFBFF00FF00D7A3EDBE30FF00A04D87FDFF00FF00EBD74D451F
            585FC91FC7FCC3EACFFE7E4BEF5FE4733F6DF187FD026C3FEFFF00FF005E8FB6
            F8C3FE81361FF7FF00FF00AF5D35147D617F247F1FF30FAB3FF9F92FBD7F91CC
            FDB7C61FF409B0FF00BFFF00FD7A3EDBE30FFA04D87FDFFF00FEBD74D451F585
            FC91FC7FCC3EACFF00E7E4BEF5FE4733F6DF187FD026C3FEFF00FF00F5E8FB6F
            8C3FE81361FF007FFF00FAF5D35147D617F247F1FF0030FAB3FF009F92FBD7F9
            1CCFDB7C61FF00409B0FFBFF00FF00D7A3EDBE30FF00A04D87FDFF00FF00EBD7
            4D451F585FC91FC7FCC3EACFFE7E4BEF5FE4733F6DF187FD026C3FEFFF00FF00
            5E8FB6F8C3FE81361FF7FF00FF00AF5D35147D617F247F1FF30FAB3FF9F92FBD
            7F91CCFDB7C61FF409B0FF00BFFF00FD7A3EDBE30FFA04D87FDFFF00FEBD74D4
            51F585FC91FC7FCC3EACFF00E7E4BEF5FE4733F6DF187FD026C3FEFF00FF00F5
            E8FB6F8C3FE81361FF007FFF00FAF5D35147D617F247F1FF0030FAB3FF009F92
            FBD7F91CCFDB7C61FF00409B0FFBFF00FF00D7A3EDBE30FF00A04D87FDFF00FF
            00EBD74D451F585FC91FC7FCC3EACFFE7E4BEF5FE4733F6DF187FD026C3FEFFF
            00FF005EBA280CAD6F134EA166280BA8E81B1C8FCEA4A2B3A9514D7C297A1A53
            A4E0EFCCDFA851451591B051556044977CD3BC8CCCECAAAB2322AAAB151C03C9
            E3249A27810A06B695E2994E54B48EEA7D8827A5713C6C14B94D3D932D51557C
            EB9FF9E307FDFE3FFC4D453EA0F6A6237112049254881490B10CC7038C0EE6B6
            589A4DD9489F672EC5FA28A2B72428A2A1BBB94B3B39EEA40C5218DA460BD480
            3271F9534AEEC84DD95D93515CF7FC2417FF00F40DB6FF00C0B6FF00E3747FC2
            417FFF0040DB6FFC0B6FFE3751CF0FE65F7A35F6157F95FDCCE868AE7BFE120B
            FF00FA06DB7FE05B7FF1BA3FE120BFFF00A06DB7FE05B7FF001BA39E1FCCBEF4
            1EC2AFF2BFB99D0D15CF7FC2417FFF0040DB6FFC0B6FFE3747FC2417FF00F40D
            B6FF00C0B6FF00E37473C3F997DE83D855FE57F733A1A2B9EFF8482FFF00E81B
            6DFF00816DFF00C6E8FF008482FF00FE81B6DFF816DFFC6E8E787F32FBD07B0A
            BFCAFEE67434573DFF000905FF00FD036DBFF02DBFF8DD1FF0905FFF00D036DB
            FF0002DBFF008DD1CF0FE65F7A0F6157F95FDCCE868AE7BFE120BFFF00A06DB7
            FE05B7FF001BA3FE120BFF00FA06DB7FE05B7FF1BA39E1FCCBEF41EC2AFF002B
            FB99D0D159CBA94974967F61815E4BA80DC289E4F2C041B73920373F3AF18C75
            E7D65CEB3FF3E361FF0081AFFF00C6A954AB0A6F967249FA9829A7B7E4CB9455
            3CEB3FF3E361FF0081AFFF00C6A8CEB3FF003E361FF81AFF00FC6AA3EB347F9D
            7DE87CDE4FEE65CA2A9E759FF9F1B0FF00C0D7FF00E3546759FF009F1B0FFC0D
            7FFE3547D668FF003AFBD073793FB99728AA79D67FE7C6C3FF00035FFF008D51
            9D67FE7C6C3FF035FF00F8D51F59A3FCEBEF41CDE4FEE65CA2A9E759FF009F1B
            0FFC0D7FFE3546759FF9F1B0FF00C0D7FF00E3547D668FF3AFBD073793FB9972
            8AA79D67FE7C6C3FF035FF00F8D519D67FE7C6C3FF00035FFF008D51F59A3FCE
            BEF41CDE4FEE65CA2A9E759FF9F1B0FF00C0D7FF00E3546759FF009F1B0FFC0D
            7FFE3547D668FF003AFBD073793FB99728AA22E6F60B8B78EF6D6DE359DCC68D
            0DC190EE0ACDC828B81853CE4F38E3B8BD5AC64A4AF17740A498514514CA0A28
            A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
            A2803164BF4B38DE568FCDF2D9F119380CCD394504F6196155EF7C432D95A25E
            CD67A72DAB3EC76425DA1E3EF15654CAFD39E9C1A48E24BD6BE89C90049856EB
            86599DC1C77C10A7F0AC3F1969D2CDA64F7B753ACAB18458ADAD60D9BDCB0550
            C59CE54B3738C1C77AF2F0B2C3B6E353E26FCFF43A6AC6A6EB637A1D7660AF34
            D0D9792A339783C9007BB1661FA5679F14DDDCDEA43169DA601BE323E61295CB
            EDCF1D7B1EC466A9E8B790EBFA95E69EF287482376B792380A23745DCCAC4B6E
            5DDC76E7D45686AD7A0DE1BB9ED6D3ED168A898041E0918C395C8E493D38EB5E
            B7D4E9465AC7F1672AAB26B464B69E29BB325D9BDD1EF3226C22DBEC7545D8A7
            19CA939393D3B8AB83C5DA3A98D6E269AD5E42AA16E6DE48F04F62C576F5EF9C
            7BD616A9ACEA1A6231816013DD4992562DC5005002AE7AF0392475CF4E8387F1
            4CDA8CFA54B2DECF23E4A9019F38F98761C0AF423838CA1CCDD88E667B8D67EB
            BFF22F6A7FF5E92FFE806B42AAEA56CF79A55E5AC6543CD03C6A5BA0254819FC
            EBCF83B49363A8AF0691CD514EFB2EA7FF00409B9FFBF90FFF001747D9753FFA
            04DCFF00DFC87FF8BAF2FEAB57B7E28FA1FAF50FE6FC1FF90DA29DF65D4FFE81
            373FF7F21FFE2E8FB2EA7FF409B9FF00BF90FF00F1747D56AF6FC507D7A87F37
            E0FF00C86D14EFB2EA7FF409B9FF00BF90FF00F1747D9753FF00A04DCFFDFC87
            FF008BA3EAB57B7E283EBD43F9BF07FE4368A77D9753FF00A04DCFFDFC87FF00
            8BA3ECBA9FFD026E7FEFE43FFC5D1F55ABDBF141F5EA1FCDF83FF21B453BECBA
            9FFD026E7FEFE43FFC5D1F65D4FF00E81373FF007F21FF00E2E8FAAD5EDF8A0F
            AF50FE6FC1FF0090DA29DF65D4FF00E81373FF007F21FF00E2E8FB2EA7FF0040
            9B9FFBF90FFF001747D56AF6FC507D7A87F37E0FFC8D1D0BEF681FF6097FFDA1
            5D2D73D6D6B73A62696FE435C9B5B336D2240CB9DC7CBE46F2A31FBB3DF3C8E3
            AE2F7F6B5C7FD016FF00FEFB83FF008E5466786AB5ABF353575F2EECF9DA3250
            8DA5F93EC8D3A2B33FB5AE3FE80B7FFF007DC1FF00C728FED6B8FF00A02DFF00
            FDF707FF001CAF3FEA188FE5FC57F99B7B58F9FDCCD3A2B33FB5AE3FE80B7FFF
            007DC1FF00C728FED6B8FF00A02DFF00FDF707FF001CA3EA188FE5FC57F987B5
            8F9FDCCD3A2B33FB5AE3FE80B7FF00F7DC1FFC728FED6B8FFA02DFFF00DF707F
            F1CA3EA188FE5FC57F987B58F9FDCCD3A2B33FB5AE3FE80B7FFF007DC1FF00C7
            28FED6B8FF00A02DFF00FDF707FF001CA3EA188FE5FC57F987B58F9FDCCD3A2B
            33FB5AE3FE80B7FF00F7DC1FFC728FED6B8FFA02DFFF00DF707FF1CA3EA188FE
            5FC57F987B58F9FDCCD3A2B33FB5AE3FE80B7FFF007DC1FF00C728FED6B8FF00
            A02DFF00FDF707FF001CA3EA188FE5FC57F987B58F9FDCC356FF008FBD23FEBE
            DBFF00444B56AB3E596E350BBB226C2E2D92DE632B34CD1904796E981B598E72
            E0F3C601E7D742BDCC1D3953A318CD6BAFE6669DDB7FD6C828A28AE92828A28A
            0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
            00E7A6F0FEA2B77712596B22086690CBE5BDA89082793CEE1C67DAB2BC41A56A
            B6DA3BCF71AC453C51CB0BB27D8C2E71229EBB8E3D7A576D597E24D9FF0008BE
            AAD2052A9692BFCC338214907F0201FC2B1861A8C66A6A3ADEE5CAACDC5C6E70
            1E0EB98ACFC5F72B2B04468261923A1DF163E9D4D54D56CAC6F4F88EE2E23F39
            E36B89233E6363214638079A5D2AE2EAC3C7E62B4B749DE75950C6CFB430DA1F
            19F5F93BF19FCEA9DDDD966F11AB406020DC298DB1953B471C71F9576711C9C6
            5CD17D57E46FC334D544E2FA27F99D26AE19A0B020FCD8E093DF6D729E238445
            A1DC2F981DB2A5801D3E75FC7F33DABA9D4A2BA9AD2D1047137CA0EF2480381D
            AB97F11C36F16912DBBDC992F9D93CB817D37024851D38F5AF47DA28C6C704B7
            3DBE8A28AF20D4CAFF008A83FEA19FF9128FF8A83FEA19FF00912B568ADBDB7F
            757DC61EC3FBCFEF32BFE2A0FF00A867FE44A3FE2A0FFA867FE44AD5A28F6DFD
            D5F707B0FEF3FBCCAFF8A83FEA19FF009128FF008A83FEA19FF912B568A3DB7F
            757DC1EC3FBCFEF32BFE2A0FFA867FE44A3FE2A0FF00A867FE44AD5A28F6DFDD
            5F707B0FEF3FBCCAFF008A83FEA19FF9128FF8A83FEA19FF00912B568A3DB7F7
            57DC1EC3FBCFEF32BFE2A0FF00A867FE44A3FE2A0FFA867FE44AD5A28F6DFDD5
            F707B0FEF3FBCCAFF8A83FEA19FF009128FF008A83FEA19FF912B568A3DB7F75
            7DC1EC3FBCFEF32BFE2A0FFA867FE44A3FE2A0FF00A867FE44AD5A28F6DFDD5F
            707B0FEF3FBCCAFF008A83FEA19FF9128FF8A83FEA19FF00912B568A3DB7F757
            DC1EC3FBCFEF32BFE2A0FF00A867FE44A3FE2A0FFA867FE44AD5A28F6DFDD5F7
            07B0FEF3FBCCAFF8A83FEA19FF009128FF008A83FEA19FF912B568A3DB7F757D
            C1EC3FBCFEF32BFE2A0FFA867FE44A3FE2A0FF00A867FE44AD5A28F6DFDD5F70
            7B0FEF3FBCCAFF008A83FEA19FF9128FF8A83FEA19FF00912B568A3DB7F757DC
            1EC3FBCFEF32BFE2A0FF00A867FE44A3FE2A0FFA867FE44AD5A28F6DFDD5F707
            B0FEF3FBCCAFF8A83FEA19FF009128FF008A83FEA19FF912B568A3DB7F757DC1
            EC3FBCFEF32BFE2A0FFA867FE44A3FE2A0FF00A867FE44AD5A28F6DFDD5F707B
            0FEF3FBCCAFF008A83FEA19FF9128FF8A83FEA19FF00912B568A3DB7F757DC1E
            C3FBCFEF32BFE2A0FF00A867FE44A3FE2A0FFA867FE44AD5A28F6DFDD5F707B0
            FEF3FBCCAFF8A83FEA19FF009128FF008A83FEA19FF912B568A3DB7F757DC1EC
            3FBCFEF32BFE2A0FFA867FE44A3FE2A0FF00A867FE44AD5A28F6DFDD5F707B0F
            EF3FBCCAFF008A83FEA19FF9128FF8A83FEA19FF00912B568A3DB7F757DC1EC3
            FBCFEF32BFE2A0FF00A867FE44A3FE2A0FFA867FE44AD5A28F6DFDD5F707B0FE
            F3FBCCAFF8A83FEA19FF00912B4A2F33C94F3B6F9BB46FD9D33DF19ED4FA2A27
            3E6E89170A7CBD5BF50A28A2A0D02A1BCB58EFACAE2D25CF973C6D13EDEB8618
            38FCE8A2803C5FC0F773EA3F12637B990BB4225DA70064ED61938FA9AF49D73C
            17A46BF75F69B959A29480246824D9E6E3A6F1D0E3A7D38F4A28AEDA9FBCF8F5
            F530A72749FEEDDBD343CF3C4F737BA36B8DA2DB5FDC35A82BB5E521A4505412
            0363DEBD3744F0A691A065ED2DF7DC1FBD7331DF2375EFDBAF6C668A2A310DD9
            1A44DBA28A2B94B0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2803FFD9}
          Transparent = True
        end
        object Label6: TLabel
          Left = 72
          Top = 46
          Width = 71
          Height = 13
          Caption = 'Online Cari'
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label7: TLabel
          Left = 249
          Top = 78
          Width = 101
          Height = 13
          Caption = 'Kullan'#305'c'#305' '#350'ifresi'
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label8: TLabel
          Left = 145
          Top = 78
          Width = 94
          Height = 13
          Caption = 'G'#252'venlik ---->'
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object GroupBox2: TGroupBox
          Left = 136
          Top = 112
          Width = 361
          Height = 121
          Caption = 'Kullan'#305'c'#305' '#350'ifresi'
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Label9: TLabel
            Left = 62
            Top = 36
            Width = 69
            Height = 13
            Alignment = taRightJustify
            Caption = 'Kullan'#305'c'#305' Ad'#305
            Font.Charset = TURKISH_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label10: TLabel
            Left = 104
            Top = 60
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = #350'ifre'
            Font.Charset = TURKISH_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object OnlineEdit3: TTechEdit
            Left = 136
            Top = 56
            Width = 121
            Height = 21
            RenkGiris = 16777088
            RenkCikis = 13303807
            BuyukKucuk = True
            Color = 13303807
            Font.Charset = TURKISH_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            PasswordChar = '*'
            TabOrder = 0
          end
          object BitBtn4: TTechButton
            Left = 272
            Top = 88
            Width = 75
            Height = 25
            Caption = '&Tamam'
            TabOrder = 1
            TabStop = True
            Font.Charset = TURKISH_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = BitBtn4Click
            Cornerradius = 5
            DrawDisabledImg = False
            Colors.BackgroundFrom = clWhite
            Colors.BackgroundTo = 15199215
            Colors.BorderLine = clGray
            Colors.ClickedFrom = 13029334
            Colors.ClickedTo = 15463415
            Colors.FocusedFrom = 16771022
            Colors.FocusedTo = 15697005
            Colors.HighlightFrom = 13562879
            Colors.HighlightTo = 38631
            Colors.HotTrack = clRed
            Colors.Downarrow = clBlack
            Colors.GradientShift = 0
            Colors.GradientStyle = gsButterfly
            ShowAccelChar = True
            ShowFocusRect = True
            CanRepeat = False
            ShowDownArrow = False
            Lines.Strings = (
              '&Tamam')
            Multiline = False
            Cizim = True
          end
          object OnlineEdit2: TTechEdit
            Left = 136
            Top = 32
            Width = 121
            Height = 21
            RenkGiris = 16777088
            RenkCikis = 13303807
            BuyukKucuk = True
            Color = 13303807
            Font.Charset = TURKISH_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 32
    Top = 96
    object FormlarEkle1: TMenuItem
      Caption = 'Formlar'#305' Ekle'
      OnClick = FormlarEkle1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 304
    Top = 104
    object A1: TMenuItem
      Caption = 'A'
    end
    object B1: TMenuItem
      Caption = 'B'
    end
    object C1: TMenuItem
      Caption = 'C'
    end
  end
end
