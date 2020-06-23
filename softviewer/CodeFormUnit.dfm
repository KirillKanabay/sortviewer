object SortCodeForm: TSortCodeForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'SortCodeForm'
  ClientHeight = 621
  ClientWidth = 925
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object CodeFormLabel: TLabel
    Left = 179
    Top = 8
    Width = 237
    Height = 40
    Caption = #1048#1089#1093#1086#1076#1085#1099#1081' '#1082#1086#1076': '
    Font.Charset = ANSI_CHARSET
    Font.Color = 3881787
    Font.Height = 40
    Font.Name = 'Gilroy Bold'
    Font.Style = []
    Font.Quality = fqAntialiased
    ParentFont = False
  end
  object LangTabs: TTabControl
    Left = 0
    Top = 56
    Width = 925
    Height = 561
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Gilroy Bold'
    Font.Style = []
    Font.Quality = fqAntialiased
    ParentFont = False
    TabOrder = 0
    Tabs.Strings = (
      'Pascal'
      'C++')
    TabIndex = 0
    OnChange = LangTabsChange
    object SortCode: TWebBrowser
      Left = 3
      Top = 24
      Width = 925
      Height = 537
      TabOrder = 0
      ControlData = {
        4C0000007B4C0000672C00000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
  end
end
