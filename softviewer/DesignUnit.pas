unit DesignUnit;

interface
  uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Grids,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.WinXPickers, Vcl.Imaging.pngimage,
  Vcl.TitleBarCtrls, Utils;

  procedure hoverPanel(Panel:TPanel; SelectInd:TShape);
  procedure UnhoverPanel(Panel:TPanel; SelectInd:TShape);

  procedure hoverButton(Button:TPanel);
  procedure UnhoverButton(Button:TPanel);

  procedure SelectPanel(Panel:TPanel; SelectInd:TShape);
  procedure UnselectPanel(Panel:TPanel; SelectInd:TShape);

implementation
  procedure hoverPanel(Panel:TPanel; SelectInd:TShape);
  {��� ��������� �������� ����� ����}
  begin
    Panel.Color:=$00805508;
    SelectInd.Visible:=true;
    Screen.Cursor:=crHandPoint;
  end;

  procedure UnhoverPanel(Panel:TPanel; SelectInd:TShape);
  {������� ���������, ����� ������ ���������}
  begin
    Panel.Color:=$00C1820C;
    SelectInd.Visible:=false;
    Screen.Cursor:=crArrow;
  end;

  procedure hoverButton(Button:TPanel);
  {��� ��������� �������� ������}
  begin
    Button.Color:=$00805508;
    Screen.Cursor:=crHandPoint;
  end;

  procedure UnhoverButton(Button:TPanel);
  {������� ���������, ����� ������ ���������}
  begin
    Button.Color:=$00C1820C;
    Screen.Cursor:=crArrow;
  end;

  procedure SelectPanel(Panel:TPanel; SelectInd:TShape);
  {�������� �������� ����� ����}
  begin
    Panel.Color:=$00664506;
    SelectInd.Visible:=true;
    SelectInd.Brush.Color:=$003CBD42;
  end;

  procedure UnselectPanel(Panel:TPanel; SelectInd:TShape);
  begin
    Panel.Color:=$00C1820C;
    SelectInd.Visible:=false;
    SelectInd.Brush.Color:=$0040E3F0;
  end;
end.
