object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'MainForm'
  ClientHeight = 580
  ClientWidth = 900
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clHighlightText
  Font.Height = 50
  Font.Name = 'Font Awesome 5 Free Regular'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 50
  object WindowBorderTop: TShape
    Left = 0
    Top = 0
    Width = 900
    Height = 25
    Align = alTop
    Brush.Color = 11761163
    Pen.Color = 11761163
    Pen.Width = 0
    ExplicitWidth = 740
  end
  object WindowBorderRight: TShape
    Left = 895
    Top = 25
    Width = 5
    Height = 550
    Align = alRight
    Brush.Color = 11761163
    Pen.Color = 11761163
    Pen.Width = 0
    ExplicitLeft = 830
  end
  object WindowBorderLeft: TShape
    Left = 0
    Top = 25
    Width = 5
    Height = 550
    Align = alLeft
    Brush.Color = 11761163
    Pen.Color = 11761163
    ExplicitLeft = 675
    ExplicitHeight = 435
  end
  object WindowBorderBottom: TShape
    Left = 0
    Top = 575
    Width = 900
    Height = 5
    Align = alBottom
    Brush.Color = 11761163
    Pen.Color = 11761163
    ExplicitTop = 515
  end
  object Button1: TButton
    Left = 560
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Button1'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object CloseButton: TPanel
    Left = 875
    Top = 0
    Width = 25
    Height = 25
    BevelOuter = bvNone
    Caption = #61453
    Color = clCream
    Font.Charset = ANSI_CHARSET
    Font.Color = clInactiveBorder
    Font.Height = -25
    Font.Name = 'Font Awesome 5 Free Regular'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    VerticalAlignment = taAlignTop
  end
end
