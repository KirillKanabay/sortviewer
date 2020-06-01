unit MainFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Grids,
  Vcl.ExtCtrls,Style, Vcl.Buttons;

type
  TMainForm = class(TForm)
    WindowBorderTop: TShape;
    WindowBorderLeft: TShape;
    WindowBorderBottom: TShape;
    WindowBorderRight: TShape;
    Button1: TButton;
    CloseButton: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}



procedure TMainForm.Button1Click(Sender: TObject);
begin
  MainForm.Close;
end;


procedure TMainForm.FormCreate(Sender: TObject);
var WBS: TWindowBorderStyle;
    Res : TResourceStream;
begin
  {Подключаем иконки}
  LoadFont('AwesomeFont','fontawesome5.otf');
  CloseButton.Caption:=chr($f00d);
  {Оформляем окно программы}
  WBS.SetStyle(WindowBorderTop, WindowBorderRight,
WindowBorderBottom,WindowBorderLeft);
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  DestroyFont('fontawesome5.otf');
end;

end.
