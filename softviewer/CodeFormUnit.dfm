object SortCodeForm: TSortCodeForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'SortCodeForm'
  ClientHeight = 509
  ClientWidth = 867
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
  object LangTabs: TTabControl
    Left = 0
    Top = 0
    Width = 865
    Height = 513
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
      Left = 0
      Top = 24
      Width = 890
      Height = 481
      TabOrder = 0
      ControlData = {
        4C00000096490000C52700000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
  end
end
