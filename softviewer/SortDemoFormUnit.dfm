object SortDemoForm: TSortDemoForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'SortDemoForm'
  ClientHeight = 580
  ClientWidth = 900
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Gilroy'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 15
  object DemoLabel: TLabel
    Left = 241
    Top = 24
    Width = 418
    Height = 40
    Caption = #1044#1077#1084#1086#1085#1089#1090#1088#1072#1094#1080#1103' '#1072#1083#1075#1086#1088#1080#1090#1084#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 3881787
    Font.Height = 40
    Font.Name = 'Gilroy Bold'
    Font.Style = []
    ParentFont = False
  end
  object SortName: TLabel
    Left = 288
    Top = 70
    Width = 336
    Height = 40
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077'_'#1072#1083#1075#1086#1088#1080#1090#1084#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 3881787
    Font.Height = 40
    Font.Name = 'Gilroy Bold'
    Font.Style = []
    ParentFont = False
  end
  object CountDataLabel: TLabel
    Left = 40
    Top = 140
    Width = 324
    Height = 25
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1101#1083#1077#1084#1077#1085#1090#1086#1074':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 25
    Font.Name = 'Gilroy'
    Font.Style = []
    Font.Quality = fqAntialiased
    ParentFont = False
  end
  object MaxCountDataLabel: TLabel
    Left = 393
    Top = 170
    Width = 53
    Height = 16
    Caption = '15 - max'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 16
    Font.Name = 'Gilroy'
    Font.Style = []
    ParentFont = False
  end
  object CheckDataInd: TShape
    Left = 168
    Top = 336
    Width = 30
    Height = 30
    Brush.Color = 4252656
    Pen.Color = 3881787
    Pen.Width = 2
  end
  object SwapDataInd: TShape
    Left = 168
    Top = 380
    Width = 30
    Height = 30
    Brush.Color = 6368478
    Pen.Color = 3881787
    Pen.Width = 2
  end
  object SortedDataInd: TShape
    Left = 168
    Top = 424
    Width = 30
    Height = 30
    Brush.Color = 3980610
    Pen.Color = 3881787
    Pen.Width = 2
  end
  object CheckDataLabel: TLabel
    Left = 204
    Top = 340
    Width = 462
    Height = 20
    Caption = '-'#1101#1083#1077#1084#1077#1085#1090#1099' '#1088#1072#1089#1089#1084#1072#1090#1088#1080#1074#1072#1077#1084#1099#1077' '#1074' '#1090#1077#1082#1091#1097#1080#1081' '#1084#1086#1084#1077#1085#1090' '#1074#1088#1077#1084#1077#1085#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 3881787
    Font.Height = 20
    Font.Name = 'Gilroy Bold'
    Font.Style = []
    Font.Quality = fqAntialiased
    ParentFont = False
  end
  object Label2: TLabel
    Left = 204
    Top = 385
    Width = 539
    Height = 20
    Caption = '-'#1101#1083#1077#1084#1077#1085#1090#1099','#1082#1086#1090#1086#1088#1099#1077' '#1084#1077#1085#1103#1102#1090#1089#1103' '#1084#1077#1089#1090#1072#1084#1080' '#1074' '#1090#1077#1082#1091#1097#1080#1081' '#1084#1086#1084#1077#1085#1090' '#1074#1088#1077#1084#1077#1085#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 3881787
    Font.Height = 20
    Font.Name = 'Gilroy Bold'
    Font.Style = []
    Font.Quality = fqAntialiased
    ParentFont = False
  end
  object Label3: TLabel
    Left = 204
    Top = 428
    Width = 236
    Height = 20
    Caption = '-'#1086#1090#1089#1086#1088#1090#1080#1088#1086#1074#1072#1085#1085#1099#1077' '#1101#1083#1077#1084#1077#1085#1090#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 3881787
    Font.Height = 20
    Font.Name = 'Gilroy Bold'
    Font.Style = []
    Font.Quality = fqAntialiased
    ParentFont = False
  end
  object SubmitCountButton: TPanel
    Left = 481
    Top = 138
    Width = 119
    Height = 30
    Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
    Color = 12681740
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = 22
    Font.Name = 'Gilroy'
    Font.Style = []
    Font.Quality = fqAntialiased
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object GenDataButton: TPanel
    Left = 168
    Top = 496
    Width = 260
    Height = 30
    Caption = #1057#1075#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100' '#1076#1072#1085#1085#1099#1077
    Color = 12681740
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = 22
    Font.Name = 'Gilroy'
    Font.Style = []
    Font.Quality = fqAntialiased
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  object SortDataButton: TPanel
    Left = 481
    Top = 496
    Width = 260
    Height = 30
    Caption = #1054#1090#1089#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1076#1072#1085#1085#1099#1077
    Color = 12681740
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = 22
    Font.Name = 'Gilroy'
    Font.Style = []
    Font.Quality = fqAntialiased
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
  end
  object CountDataEdit: TEdit
    Left = 378
    Top = 140
    Width = 87
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Gilroy'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = '10'
  end
  object CheckBox1: TCheckBox
    Left = 40
    Top = 192
    Width = 337
    Height = 30
    Alignment = taLeftJustify
    Caption = #1055#1086#1096#1072#1075#1086#1074#1086#1077' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1077' '#1072#1083#1075#1086#1088#1080#1090#1084#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 22
    Font.Name = 'Gilroy'
    Font.Style = []
    Font.Quality = fqAntialiased
    ParentFont = False
    TabOrder = 4
  end
  object StringGrid1: TStringGrid
    Left = 40
    Top = 248
    Width = 825
    Height = 57
    Color = clWhite
    ColCount = 15
    DefaultColWidth = 50
    DefaultRowHeight = 50
    FixedColor = clWhite
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    GradientEndColor = clBlack
    GridLineWidth = 5
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goFixedRowDefAlign]
    TabOrder = 5
  end
end
