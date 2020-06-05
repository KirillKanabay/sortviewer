unit SortInfoFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, WebView2, Winapi.ActiveX, Vcl.Edge, Vcl.OleCtrls, SHDocVw, Utils,
  Vcl.Buttons;

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
    ShowDemoButton: TPanel;
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
    procedure ShowCodeButtonClick(Sender: TObject);
    procedure HomeIconClick(Sender: TObject);
    procedure BubbleSortPanelClick(Sender: TObject);
    procedure ShakeSortPanelClick(Sender: TObject);
    procedure HelpPanelClick(Sender: TObject);
    procedure QuickSortPanelClick(Sender: TObject);
    procedure InsertionSortPanelClick(Sender: TObject);
    procedure SelectionSortPanelClick(Sender: TObject);
    procedure ShellSortPanelClick(Sender: TObject);
    procedure ShowDemoButtonClick(Sender: TObject);
    procedure selectActivePanel(Sender: TObject);
    procedure unselectActivePanel(Sender: TObject;nonActivePanel: integer);
    procedure ShowDemoButtonMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ShowDemoButtonMouseLeave(Sender: TObject);
    procedure ShowCodeButtonMouseLeave(Sender: TObject);
    procedure ShowCodeButtonMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
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
    -1 - MainMenu
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

uses MainFormUnit,
     DemoFormUnit,
     CodeFormUnit,
     ProductInfoFormUnit;

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
  selectActivePanel(Sender);//Подсвечиваем активную вкладку
  SortInfoForm.Caption:=SortsName[SortID];

  SetSortName();
  SetSortDescription();
end;

procedure TSortInfoForm.selectActivePanel(Sender: TObject);
var fakeShift:TShiftState; {необходим для вызова процедуры подсветки активной вкладки меню}
begin
  {Подсвечиваем активную вкладку}
  case SortID of
    0:
      BubbleSortPanelMouseMove(Sender,fakeShift,0,0);
    1:
      ShakeSortPanelMouseMove(Sender,fakeShift,0,0);
    2:
      InsertionSortPanelMouseMove(Sender,fakeShift,0,0);
    3:
      SelectionSortPanelMouseMove(Sender,fakeShift,0,0);
    4:
      ShellSortPanelMouseMove(Sender,fakeShift,0,0);
    5:
      QuickSortPanelMouseMove(Sender,fakeShift,0,0);
  end;
end;

procedure TSortInfoForm.unselectActivePanel(Sender: TObject; nonActivePanel: integer);
var fakeShift:TShiftState; {необходим для вызова процедуры чтобы убрать подсветку пункта меню}
begin
  {Убираем подсветку меню}
  case nonActivePanel of
    0:
      BubbleSortPanelMouseLeave(Sender);
    1:
      ShakeSortPanelMouseLeave(Sender);
    2:
      InsertionSortPanelMouseLeave(Sender);
    3:
      SelectionSortPanelMouseLeave(Sender);
    4:
      ShellSortPanelMouseLeave(Sender);
    5:
      QuickSortPanelMouseLeave(Sender);
  end;
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
  if SortID = 0 then exit; //Не даем выполнить изменение состояния пункта меню, если он выделен

  BubbleSortPanel.Color:=$00C1820C;
  SelectIndBS.Visible:=false;
  Screen.Cursor:=crArrow;
end;

procedure TSortInfoForm.InsertionSortPanelMouseLeave(Sender: TObject);
begin
  if SortID = 2 then exit; //Не даем выполнить изменение состояния пункта меню, если он выделен

  InsertionSortPanel.Color:=$00C1820C;
  SelectIndIS.Visible:=false;
  Screen.Cursor:=crArrow;
end;

procedure TSortInfoForm.QuickSortPanelMouseLeave(Sender: TObject);
begin
  if SortID = 5 then exit; //Не даем выполнить изменение состояния пункта меню, если он выделен

  QuickSortPanel.Color:=$00C1820C;
  SelectIndQS.Visible:=false;
  Screen.Cursor:=crArrow;
end;

procedure TSortInfoForm.ShellSortPanelMouseLeave(Sender: TObject);
begin
  if SortID = 4 then exit; //Не даем выполнить изменение состояния пункта меню, если он выделен

  ShellSortPanel.Color:=$00C1820C;
  SelectIndShS.Visible:=false;
  Screen.Cursor:=crArrow;
end;

procedure TSortInfoForm.SelectionSortPanelMouseLeave(Sender: TObject);
begin
  if SortID = 3 then exit; //Не даем выполнить изменение состояния пункта меню, если он выделен

  SelectionSortPanel.Color:=$00C1820C;
  SelectIndSS.Visible:=false;
  Screen.Cursor:=crArrow;
end;

procedure TSortInfoForm.ShakeSortPanelMouseLeave(Sender: TObject);
begin
  if SortID = 1 then exit; //Не даем выполнить изменение состояния пункта меню, если он выделен

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
{#---------------------------------Click-------------------------------------#}
procedure TSortInfoForm.HomeIconClick(Sender: TObject);
begin
  unselectActivePanel(Sender,sortID);//Убираем подсветку уже неактивной вкладки
  SortInfoForm.Close;
  MainForm.Show;
end;

procedure TSortInfoForm.HelpPanelClick(Sender: TObject);
begin
  ProductInfoForm.ShowModal;
end;

procedure TSortInfoForm.BubbleSortPanelClick(Sender: TObject);
var prevSortID:integer;
begin
  if SortID = 0 then exit //не обрабатываем событие пункт меню выделен
  else begin
    prevSortID:=sortID;
    SortID:=0;
    unselectActivePanel(Sender,prevSortID);//Убираем подсветку уже неактивной вкладки
    FormShow(Sender);
  end;
end;

procedure TSortInfoForm.ShakeSortPanelClick(Sender: TObject);
var prevSortID:integer;
begin
  if SortID = 1 then exit //не обрабатываем событие пункт меню выделен
  else begin
    prevSortID:=sortID;
    SortID:=1;
    unselectActivePanel(Sender,prevSortID);//Убираем подсветку уже неактивной вкладки
    FormShow(Sender);
  end;
end;

procedure TSortInfoForm.InsertionSortPanelClick(Sender: TObject);
var prevSortID:integer;
begin
  if SortID = 2 then exit //не обрабатываем событие пункт меню выделен
  else begin
    prevSortID:=sortID;
    SortID:=2;
    unselectActivePanel(Sender,prevSortID);//Убираем подсветку уже неактивной вкладки
    FormShow(Sender);
  end;
end;

procedure TSortInfoForm.SelectionSortPanelClick(Sender: TObject);
var prevSortID:integer;
begin
  if SortID = 3 then exit //не обрабатываем событие пункт меню выделен
  else begin
    prevSortID:=sortID;
    SortID:=3;
    unselectActivePanel(Sender,prevSortID);//Убираем подсветку уже неактивной вкладки
    FormShow(Sender);
  end;
end;

procedure TSortInfoForm.ShellSortPanelClick(Sender: TObject);
var prevSortID:integer;
begin
  if SortID = 4 then exit //не обрабатываем событие пункт меню выделен
  else begin
    prevSortID:=sortID;
    SortID:=4;
    unselectActivePanel(Sender,prevSortID);//Убираем подсветку уже неактивной вкладки
    FormShow(Sender);
  end;
end;

procedure TSortInfoForm.QuickSortPanelClick(Sender: TObject);
var prevSortID:integer;
begin
  if SortID = 5 then exit //не обрабатываем событие пункт меню выделен
  else begin
    prevSortID:=sortID;
    SortID:=5;
    unselectActivePanel(Sender,prevSortID);//Убираем подсветку уже неактивной вкладки
    FormShow(Sender);
  end;
end;
////////////////////////////////////////////////////////////////////////////////
//>Buttons
////////////////////////////////////////////////////////////////////////////////
procedure TSortInfoForm.ShowDemoButtonMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   ShowDemoButton.Color:=$00805508;
   Screen.Cursor:=crHandPoint;
end;

procedure TSortInfoForm.ShowDemoButtonMouseLeave(Sender: TObject);
begin
   ShowDemoButton.Color:=$00C1820C;
   Screen.Cursor:=crArrow;
end;

procedure TSortInfoForm.ShowCodeButtonMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   ShowCodeButton.Color:=$00805508;
   Screen.Cursor:=crHandPoint;
end;

procedure TSortInfoForm.ShowCodeButtonMouseLeave(Sender: TObject);
begin
   ShowCodeButton.Color:=$00C1820C;
   Screen.Cursor:=crArrow;
end;

procedure TSortInfoForm.ShowCodeButtonClick(Sender: TObject);
begin
  SortCodeForm.ShowModal;
end;

procedure TSortInfoForm.ShowDemoButtonClick(Sender: TObject);
begin
  SortDemoForm.ShowModal;
end;

end.
