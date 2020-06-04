unit SortInfoFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls,Style, WebView2, Winapi.ActiveX, Vcl.Edge, Vcl.OleCtrls, SHDocVw;

type
  TSortInfoForm = class(TForm)
    SortName: TLabel;
    Menu: TPanel;
    MenuTitle: TPanel;
    HelpPanel: TPanel;
    HelpIcon: TImage;
    BubbleSortPanel: TPanel;
    BorderBottomBS: TShape;
    SelectIndBS: TShape;
    ShakeSortPanel: TPanel;
    BorderBottomSkS: TShape;
    ShakeSortIcon: TImage;
    SelectIndSkS: TShape;
    InsertionSortPanel: TPanel;
    BorderBottomIS: TShape;
    InsertionSortIcon: TImage;
    SelectIndIS: TShape;
    SelectionSortPanel: TPanel;
    BorderBottomSS: TShape;
    SelectionSortIcon: TImage;
    SelectIndSS: TShape;
    ShellSortPanel: TPanel;
    BorderBottomShS: TShape;
    ShellSortIcon: TImage;
    SelectIndShS: TShape;
    QuickSortPanel: TPanel;
    QuickSortIcon: TImage;
    SelectIndQS: TShape;
    BubbleSortIcon: TImage;
    HomeIcon: TImage;
    SortDescription: TWebBrowser;
    ShowCodeButton: TPanel;
    ButtonLabel1: TLabel;
    ShowDemoSort: TPanel;
    ButtonLabel2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BubbleSortPanelMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BubbleSortPanelMouseLeave(Sender: TObject);
    procedure HelpPanelMouseLeave(Sender: TObject);
    procedure HelpPanelMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure InsertionSortPanelMouseLeave(Sender: TObject);
    procedure InsertionSortPanelMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure QuickSortPanelMouseLeave(Sender: TObject);
    procedure QuickSortPanelMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SelectionSortPanelMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure SelectionSortPanelMouseLeave(Sender: TObject);
    procedure ShakeSortPanelMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ShakeSortPanelMouseLeave(Sender: TObject);
    procedure ShellSortPanelMouseLeave(Sender: TObject);
    procedure ShellSortPanelMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure MenuTitleMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure MenuTitleMouseLeave(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SetSortName();
    procedure SetSortDescription();
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SortInfoForm: TSortInfoForm;
  SortID: integer;
  {
    Sorts ID:
    0 - BubbleSort
    1 - ShakeSort
    2 - InsertionSort
    3 - SelectionSort
    4 - ShellSort
    5 - QuickSort
  }
  SortsPathsName: array of string = [
  'BubbleSort',
  'ShakeSort',
  'InsertionSort',
  'SelectionSort',
  'ShellSort',
  'QuickSort'
  ];

  SortsName: array of string = [
  'Пузырьковая сортировка',
  'Шейкерная сортировка',
  'Сортировка вставками',
  'Сортировка выбором',
  'Сортировка Шелла',
  'Быстрая сортировка'
  ];

implementation

{$R *.dfm}

uses MainFormUnit;

procedure TSortInfoForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   MainForm.Show();
end;

procedure TSortInfoForm.FormCreate(Sender: TObject);
begin
  SortDescription.Silent:=true;
end;

procedure TSortInfoForm.FormShow(Sender: TObject);
begin
  SetSortName();
  SetSortDescription();
end;

procedure TSortInfoForm.SetSortName();
begin
  SortName.Caption:=SortsName[SortID];
  {Центровка надписи}
  SortName.Left:=(SortInfoForm.Width-SortName.Width) div 2;
end;

procedure TSortInfoForm.SetSortDescription();
begin
  SortDescription.Navigate(ExtractFilePath(paramstr(0))+'SortDescriptions/'+SortsPathsName[SortID]+'/index.html');
end;
////////////////////////////////////////////////////////////////////////////////
//>Menu
////////////////////////////////////////////////////////////////////////////////
{#---------------------------------Leave--------------------------------------#}

procedure TSortInfoForm.BubbleSortPanelMouseLeave(Sender: TObject);
begin
  BubbleSortPanel.Color:=$00C1820C;
  SelectIndBS.Visible:=false;
  Screen.Cursor:=crArrow;
end;

procedure TSortInfoForm.InsertionSortPanelMouseLeave(Sender: TObject);
begin
  InsertionSortPanel.Color:=$00C1820C;
  SelectIndIS.Visible:=false;
  Screen.Cursor:=crArrow;
end;

procedure TSortInfoForm.QuickSortPanelMouseLeave(Sender: TObject);
begin
  QuickSortPanel.Color:=$00C1820C;
  SelectIndQS.Visible:=false;
  Screen.Cursor:=crArrow;
end;

procedure TSortInfoForm.ShellSortPanelMouseLeave(Sender: TObject);
begin
  ShellSortPanel.Color:=$00C1820C;
  SelectIndShS.Visible:=false;
  Screen.Cursor:=crArrow;
end;

procedure TSortInfoForm.SelectionSortPanelMouseLeave(Sender: TObject);
begin
  SelectionSortPanel.Color:=$00C1820C;
  SelectIndSS.Visible:=false;
  Screen.Cursor:=crArrow;
end;

procedure TSortInfoForm.ShakeSortPanelMouseLeave(Sender: TObject);
begin
  ShakeSortPanel.Color:=$00C1820C;
  SelectIndSkS.Visible:=false;
  Screen.Cursor:=crArrow
end;

procedure TSortInfoForm.HelpPanelMouseLeave(Sender: TObject);
begin
  if (isHoverHI) then begin
    loadPngFromRes(HelpIcon,1);
    isHoverHI:=false;
   end;
  Screen.Cursor:=crArrow;
end;

procedure TSortInfoForm.MenuTitleMouseLeave(Sender: TObject);
begin
if (isHoverHI) then begin
    loadPngFromRes(HomeIcon,3);
    isHoverHI:=false;
   end;
  Screen.Cursor:=crArrow;
end;
{#----------------------------------------------------------------------------#}
{#---------------------------------Move---------------------------------------#}

procedure TSortInfoForm.BubbleSortPanelMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  BubbleSortPanel.Color:=$00805508;
  SelectIndBS.Visible:=true;
  Screen.Cursor:=crHandPoint;
end;

procedure TSortInfoForm.HelpPanelMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   if not (isHoverHI) then begin
    loadPngFromRes(HelpIcon,2);
    isHoverHI:=true;
   end;
   Screen.Cursor:=crHandPoint;
end;

procedure TSortInfoForm.InsertionSortPanelMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  InsertionSortPanel.Color:=$00805508;
  SelectIndIS.Visible:=true;
  Screen.Cursor:=crHandPoint;
end;

procedure TSortInfoForm.MenuTitleMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   if not (isHoverHI) then begin
    loadPngFromRes(HomeIcon,4);
    isHoverHI:=true;
   end;
   Screen.Cursor:=crHandPoint;
end;

procedure TSortInfoForm.QuickSortPanelMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  QuickSortPanel.Color:=$00805508;
  SelectIndQS.Visible:=true;
  Screen.Cursor:=crHandPoint;
end;

procedure TSortInfoForm.ShellSortPanelMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ShellSortPanel.Color:=$00805508;
  SelectIndShS.Visible:=true;
  Screen.Cursor:=crHandPoint;
end;

procedure TSortInfoForm.SelectionSortPanelMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  SelectionSortPanel.Color:=$00805508;
  SelectIndSS.Visible:=true;
  Screen.Cursor:=crHandPoint;
end;

procedure TSortInfoForm.ShakeSortPanelMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  ShakeSortPanel.Color:=$00805508;
  SelectIndSkS.Visible:=true;
  Screen.Cursor:=crHandPoint;
end;
{#----------------------------------------------------------------------------#}

end.
