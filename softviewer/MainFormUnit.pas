unit MainFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Grids,
  Vcl.ExtCtrls,Style, Vcl.Buttons, Vcl.WinXPickers, Vcl.Imaging.pngimage;

type
  TMainForm = class(TForm)
    WindowBorderLeft: TShape;
    WindowBorderBottom: TShape;
    WindowBorderRight: TShape;
    MainMenu: TPanel;
    MenuTitle: TPanel;
    MenuCaption: TLabel;
    HelpPanel: TPanel;
    HelpCaption: TLabel;
    HelpIcon: TImage;
    MenuIcon: TImage;
    Label1: TLabel;
    BubbleSortPanel: TPanel;
    ShakeSortPanel: TPanel;
    InsertionSortPanel: TPanel;
    SelectionSortPanel: TPanel;
    ShellSortPanel: TPanel;
    QuickSortPanel: TPanel;
    BubbleSortCaption: TLabel;
    ShakeSortCaption: TLabel;
    InsertionSortCaption: TLabel;
    ShellSortCaption: TLabel;
    SelectionSortCaption: TLabel;
    QuickSortCaption: TLabel;
    BorderBottomBS: TShape;
    BorderBottomIS: TShape;
    BorderBottomSS: TShape;
    BorderBottomSkS: TShape;
    BubbleSortIcon: TImage;
    InsertionSortIcon: TImage;
    QuickSortIcon: TImage;
    SelectionSortIcon: TImage;
    ShakeSortIcon: TImage;
    ShellSortIcon: TImage;
    BorderBottomShS: TShape;
    SelectIndBS: TShape;
    SelectIndIS: TShape;
    SelectIndSkS: TShape;
    SelectIndShS: TShape;
    SelectIndSS: TShape;
    SelectIndQS: TShape;
    SelectAreaBS: TShape;
    SelectAreaIS: TShape;
    SelectAreaQS: TShape;
    SelectAreaSS: TShape;
    SelectionAreaSkS: TShape;
    SelectAreaShS: TShape;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SelectAreaBSMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SelectAreaBSMouseLeave(Sender: TObject);
    procedure SelectAreaISMouseLeave(Sender: TObject);
    procedure SelectAreaISMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SelectionAreaSkSMouseLeave(Sender: TObject);
    procedure SelectionAreaSkSMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SelectAreaSSMouseLeave(Sender: TObject);
    procedure SelectAreaSSMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SelectAreaShSMouseLeave(Sender: TObject);
    procedure SelectAreaShSMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SelectAreaQSMouseLeave(Sender: TObject);
    procedure SelectAreaQSMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
var WBS: TWindowBorderStyle;
    Res : TResourceStream;
begin
  {Подключаем иконки}
  LoadFont('AwesomeFont','fontawesome5.otf');
  {Оформляем окно программы}
  WBS.SetStyle(WindowBorderRight,WindowBorderBottom,WindowBorderLeft);
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  DestroyFont('fontawesome5.otf');
end;





////////////////////////////////////////////////////////////////////////////////
//>HOVER EFFECT MainMenu
////////////////////////////////////////////////////////////////////////////////
procedure TMainForm.SelectAreaBSMouseLeave(Sender: TObject);
begin
  BubbleSortPanel.Color:=$00C1820C;
  SelectIndBS.Visible:=false;
  Screen.Cursor:=crArrow;
end;

procedure TMainForm.SelectAreaISMouseLeave(Sender: TObject);
begin
  InsertionSortPanel.Color:=$00C1820C;
  SelectIndIS.Visible:=false;
  Screen.Cursor:=crArrow;
end;

procedure TMainForm.SelectAreaQSMouseLeave(Sender: TObject);
begin
  QuickSortPanel.Color:=$00C1820C;
  SelectIndQS.Visible:=false;
  Screen.Cursor:=crArrow;
end;

procedure TMainForm.SelectAreaShSMouseLeave(Sender: TObject);
begin
  ShellSortPanel.Color:=$00C1820C;
  SelectIndShS.Visible:=false;
  Screen.Cursor:=crArrow;
end;

procedure TMainForm.SelectAreaSSMouseLeave(Sender: TObject);
begin
  SelectionSortPanel.Color:=$00C1820C;
  SelectIndSS.Visible:=false;
  Screen.Cursor:=crArrow;
end;

procedure TMainForm.SelectionAreaSkSMouseLeave(Sender: TObject);
begin
  ShakeSortPanel.Color:=$00C1820C;
  SelectIndSkS.Visible:=false;
  Screen.Cursor:=crArrow
end;
{#--------------------------------Move----------------------------------------#}
procedure TMainForm.SelectAreaBSMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  BubbleSortPanel.Color:=$00805508;
  SelectIndBS.Visible:=true;
  Screen.Cursor:=crHandPoint;
end;


procedure TMainForm.SelectAreaISMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  InsertionSortPanel.Color:=$00805508;
  SelectIndIS.Visible:=true;
  Screen.Cursor:=crHandPoint;
end;



procedure TMainForm.SelectAreaQSMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  QuickSortPanel.Color:=$00805508;
  SelectIndQS.Visible:=true;
  Screen.Cursor:=crHandPoint;
end;

procedure TMainForm.SelectAreaShSMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ShellSortPanel.Color:=$00805508;
  SelectIndShS.Visible:=true;
  Screen.Cursor:=crHandPoint;
end;

procedure TMainForm.SelectAreaSSMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  SelectionSortPanel.Color:=$00805508;
  SelectIndSS.Visible:=true;
  Screen.Cursor:=crHandPoint;
end;

procedure TMainForm.SelectionAreaSkSMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  ShakeSortPanel.Color:=$00805508;
  SelectIndSkS.Visible:=true;
  Screen.Cursor:=crHandPoint;
end;

end.
