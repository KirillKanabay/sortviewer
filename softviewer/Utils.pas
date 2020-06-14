unit Utils;

interface
  uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Grids,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.Imaging.pngimage;

  procedure loadFont();
  procedure DestroyFont();
  procedure loadPngFromRes(Image:TImage; id: integer);
  procedure Delay(Value: Cardinal);

const
  ProductVersion = 'Alpha 0.01';
  DeveloperName = 'Kirill Kanabay';
  DeveloperEmail = 'kirillkanabay@gmail.com';

var
  FontArray: array of string = ['GilroyBold','GilroyLight','GilroyRegular','GilroyMedium'];
  WinTempPath: string;

implementation

  function GetTempDir: String;
  var
    tempFolder: array[0..MAX_PATH] of Char;
  begin
    GetTempPath(MAX_PATH, @tempFolder);
    result := StrPas(tempFolder);
  end;

  procedure loadFont();
  var
    ResStream : TResourceStream;
    FontsCount : DWORD;
    i:integer;
  begin
    for I := 0 to Length(FontArray)-1 do begin
      ResStream := TResourceStream.Create(hInstance, FontArray[i], 'GF');
      try
        AddFontMemResourceEx(ResStream.Memory, ResStream.Size, nil, @FontsCount);
      finally
        ResStream.Free;
      end;
    end;
  end;

  procedure DestroyFont();
  var
    fontIdx:integer;
  begin
    for  fontIdx:= 0 to Length(FontArray)-1 do
      RemoveFontResource(PChar(WinTempPath+FontArray[fontIdx]+'.ttf'));
    SendMessage(HWND_BROADCAST,WM_FONTCHANGE,0,0);
  end;

  procedure loadPngFromRes(Image:TImage; id: integer);
  var
    png: TPNGObject;
  begin
  {
  Res:
  HelpIcon, 1 - not hovered,
  HelpIcon, 2 - hover;

  HomeIcon, 1 - not hovered,
  HomeIcon, 2 - hover.
  }
    png := TPNGObject.Create; // создаем
    Image.Picture :=nil;
    png.LoadFromResourceID(HInstance, id); // грузим ресурс
    Image.Picture.Assign(png);
    png.Free; // высвобождаем
  end;

  procedure Delay(Value: Cardinal);
  var
    F, N: Cardinal;
  begin
    N := 0;
    while N <= (Value div 10) do
    begin
      SleepEx(1, True);
      Application.ProcessMessages;
      Inc(N);
    end;
    F := GetTickCount;
    repeat
      Application.ProcessMessages;
      N := GetTickCount;
    until (N - F >= (Value mod 10)) or (N < F);
  end;
end.
