object IterationsSortForm: TIterationsSortForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1048#1090#1077#1088#1072#1094#1080#1080' '#1089#1086#1088#1090#1080#1088#1086#1074#1082#1080
  ClientHeight = 550
  ClientWidth = 869
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = 20
  Font.Name = 'Gilroy Black'
  Font.Style = []
  Font.Quality = fqAntialiased
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 20
  object IterationsGrid: TStringGrid
    Left = 0
    Top = 0
    Width = 865
    Height = 550
    BevelInner = bvNone
    DefaultColWidth = 50
    DefaultRowHeight = 50
    RowCount = 1
    FixedRows = 0
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Gilroy'
    Font.Style = []
    Font.Quality = fqAntialiased
    GridLineWidth = 5
    ParentFont = False
    TabOrder = 0
    OnDrawCell = IterationsGridDrawCell
  end
end
