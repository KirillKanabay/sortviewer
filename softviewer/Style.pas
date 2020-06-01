unit Style;

interface
  uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Grids,
  Vcl.ExtCtrls, Vcl.Buttons;

  type
    TWindowBorderStyle = record
  {#----------------����� ����----------------#}
      //������ ������ �����
      borderWidth: integer;
      //������ ������ ������� �����
      borderTopWidth: integer;
      //������ ���� �����
      borderColor: TColor;

      //������ ����� ����
      procedure setStyle(WindowBorderTop, WindowBorderRight,WindowBorderBottom,WindowBorderLeft: TShape);
   {#------------------------------------------#}
  end;

   {#--------�������� � �������� ������--------#}
   procedure loadFont(FontName,FontFile: string);
   procedure DestroyFont(FontFile:string);
   {#------------------------------------------#}

implementation

  procedure TWindowBorderStyle.SetStyle(WindowBorderTop, WindowBorderRight,
WindowBorderBottom,WindowBorderLeft: TShape);
  var WS: TWindowBorderStyle;
  begin

    With WS do begin
    {#-----��������� �������� ������ ����-----#}
    borderWidth:=5;
    borderTopWidth:=25;

    borderColor:=RGB(11, 118, 179); {hex:0B76B3}
    {#----------------------------------------#}

    {������������� ������������}
    WindowBorderTop.Align := alTop;
    WindowBorderLeft.Align := alLeft;
    WindowBorderRight.Align := alRight;
    WindowBorderBottom.Align := alBottom;

    {������������� ������ �����}
    WindowBorderTop.Height := borderTopWidth;
    WindowBorderBottom.Height := borderWidth;

    WindowBorderLeft.Width := borderWidth;
    WindowBorderRight.Width := borderWidth;

    {������������� ���� �����}
    WindowBorderTop.Brush.Color:= borderColor;
    WindowBorderLeft.Brush.Color:= borderColor;
    WindowBorderRight.Brush.Color:= borderColor;
    WindowBorderBottom.Brush.Color:= borderColor;

    {������� ������� �����}
    WindowBorderTop.Pen.Color:=borderColor;
    WindowBorderRight.Pen.Color:=borderColor;
    WindowBorderBottom.Pen.Color:=borderColor;
    WindowBorderLeft.Pen.Color:=borderColor;
    end;
  end;

  procedure loadFont(FontName,FontFile: string);
  var
    Res : TResourceStream;
  begin
    {#-----�������� ������ �� �������� ���������-----#}
    Res := TResourceStream.Create(hInstance, FontName, Pchar('AF'));
    Res.SavetoFile(FontFile);
    Res.Free;
    AddFontResource(PChar(FontFile));
    SendMessage(HWND_BROADCAST,WM_FONTCHANGE,0,0);
    {#-----------------------------------------------#}
  end;

  procedure DestroyFont(FontFile:string);
  begin
    RemoveFontResource(PChar(FontFile));
    SendMessage(HWND_BROADCAST,WM_FONTCHANGE,0,0);
  end;
end.
