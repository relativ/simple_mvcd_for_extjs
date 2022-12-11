object FPersonelSec: TFPersonelSec
  Left = 508
  Top = 139
  Width = 286
  Height = 409
  BorderStyle = bsSizeToolWin
  Caption = 'Personel Se'#231'imi'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 278
    Height = 382
    Align = alClient
    BevelInner = bvLowered
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 274
      Height = 378
      Align = alClient
      BevelInner = bvLowered
      TabOrder = 0
      object BitBtn11: TTechButton
        Left = 61
        Top = 345
        Width = 75
        Height = 25
        Caption = '&Se'#231
        TabOrder = 0
        TabStop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BitBtn11Click
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
        ModalResult = 1
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
          '&Se'#231)
        Multiline = False
        Cizim = True
      end
      object BitBtn2: TTechButton
        Left = 142
        Top = 345
        Width = 75
        Height = 25
        Caption = '&Kapat'
        TabOrder = 1
        TabStop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BitBtn2Click
        Cornerradius = 5
        Cancel = True
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
        ModalResult = 2
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
          '&Kapat')
        Multiline = False
        Cizim = True
      end
      object OnlineDBGrid2: TTechDBGrid
        Left = 7
        Top = 7
        Width = 255
        Height = 287
        BorderStyle = bsNone
        DataSource = DMSabit.PersonelDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDblClick = OnlineDBGrid2DblClick
        About = 
          'Online Yaz'#305'l'#305'm/ Serkan G'#252'ne'#351' '#13#10'E-Mail: online@onlinebilgisayar.c' +
          'om. '#13#10'Web: www.onlinebilgisayar.com'
        WordExport = True
        SatirRenk = True
        SatirRenk1 = 13041663
        SatirFontRengi = clBlack
        SatirFontRengi2 = clBlack
        SatirRenk2 = 13758931
        DefaultRowHeight = 17
        GridOptions = [goColSizing]
        Columns = <
          item
            Expanded = False
            FieldName = 'PERSONELNO'
            Width = 41
            Visible = True
            Siralama = False
            CokluTus = False
            Sirala1_Rengi = clBlack
            Sirala2_Rengi = clBlack
          end
          item
            Expanded = False
            FieldName = 'PERSONELADI'
            Width = 180
            Visible = True
            Siralama = False
            CokluTus = False
            Sirala1_Rengi = clBlack
            Sirala2_Rengi = clBlack
          end>
      end
      object OnlineSearchEdit1: TTechSearchEdit
        Left = 8
        Top = 303
        Width = 257
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        DataField = 'PERSONELADI'
        DataSource = DMSabit.PersonelDS
        Locate = False
        Like = True
      end
      object RadioButton1: TRadioButton
        Left = 140
        Top = 325
        Width = 57
        Height = 17
        Caption = 'Arama'
        TabOrder = 4
        OnClick = RadioButton1Click
      end
      object RadioButton2: TRadioButton
        Left = 84
        Top = 325
        Width = 49
        Height = 17
        Alignment = taLeftJustify
        Caption = 'S'#252'zme'
        Checked = True
        TabOrder = 5
        TabStop = True
        OnClick = RadioButton2Click
      end
    end
  end
end
