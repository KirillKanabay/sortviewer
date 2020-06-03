unit Style;

interface
  uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Grids,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.Imaging.pngimage;

  procedure loadFont();
  procedure DestroyFont();
  procedure loadPngFromRes(Image:TImage; id: integer);

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
    Res : TResourceStream;
    fontIdx:integer;
  begin
    {#-----Загрузка шрифтов из ресурсов программы-----#}
    if (Win32MajorVersion = 5) then
      WinTempPath:='C:\WINDOWS\Fonts\'
    else
    WinTempPath:=GetTempDir;
    for fontIdx:= 0 to Length(FontArray)-1 do begin
      Res := TResourceStream.Create(hInstance, FontArray[fontIdx], Pchar('GF'));
      Res.SavetoFile(WinTempPath+FontArray[fontIdx]+'.ttf');
      Res.Free;
      AddFontResource(PChar(WinTempPath+FontArray[fontIdx]+'.ttf'));
    end;
    SendMessage(HWND_BROADCAST,WM_FONTCHANGE,0,0);
    {#-----------------------------------------------#}
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
    png := TPNGObject.Create; // создаем
    Image.Picture :=nil;
    png.LoadFromResourceID(HInstance, id); // грузим ресурс
    Image.Picture.Assign(png);
    png.Free; // высвобождаем
  end;

end.
