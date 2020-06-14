unit SortInfoFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Winapi.ActiveX,Vcl.OleCtrls, SHDocVw, Utils,
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
     ProductInfoFormUnit,
     DesignUnit;

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
begin
  {Подсвечиваем активную вкладку}
  case SortID of
    0:
      SelectPanel(BubbleSortPanel, SelectIndBS);
    1:
      SelectPanel(ShakeSortPanel, SelectIndSkS);
    2:
      SelectPanel(InsertionSortPanel, SelectIndIS);
    3:
      SelectPanel(SelectionSortPanel, SelectIndSS);
    4:
      SelectPanel(ShellSortPanel, SelectIndShS);
    5:
      SelectPanel(QuickSortPanel, SelectIndQS);
  end;
end;

procedure TSortInfoForm.unselectActivePanel(Sender: TObject; nonActivePanel: integer);
begin
  {Убираем подсветку меню}
  case nonActivePanel of
    0:
      begin
        UnselectPanel(BubbleSortPanel, SelectIndBS);
      end;
    1:
      begin
        UnselectPanel(ShakeSortPanel, SelectIndSkS);
      end;
    2:
      begin
        UnselectPanel(InsertionSortPanel, SelectIndIS);
      end;
    3:
      begin
        UnselectPanel(SelectionSortPanel, SelectIndSS);
      end;
    4:
      begin
        UnselectPanel(ShellSortPanel, SelectIndShS);
      end;
    5:
      begin
        UnselectPanel(QuickSortPanel, SelectIndQS);
      end;
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
  if SortID = 0 then exit //Не даем выполнить изменение состояния пункта меню, если он выделен
  else UnhoverPanel(BubbleSortPanel,SelectIndBS);
end;

procedure TSortInfoForm.InsertionSortPanelMouseLeave(Sender: TObject);
begin
  if SortID = 2 then exit //Не даем выполнить изменение состояния пункта меню, если он выделен
  else UnhoverPanel(InsertionSortPanel,SelectIndIS);
end;

procedure TSortInfoForm.QuickSortPanelMouseLeave(Sender: TObject);
begin
  if SortID = 5 then exit //Не даем выполнить изменение состояния пункта меню, если он выделен
  else UnhoverPanel(QuickSortPanel,SelectIndQS);
end;

procedure TSortInfoForm.ShellSortPanelMouseLeave(Sender: TObject);
begin
  if SortID = 4 then exit //Не даем выполнить изменение состояния пункта меню, если он выделен
  else UnhoverPanel(ShellSortPanel,SelectIndShS);
end;

procedure TSortInfoForm.SelectionSortPanelMouseLeave(Sender: TObject);
begin
  if SortID = 3 then exit //Не даем выполнить изменение состояния пункта меню, если он выделен
  else UnhoverPanel(SelectionSortPanel, SelectIndSS);
end;

procedure TSortInfoForm.ShakeSortPanelMouseLeave(Sender: TObject);
begin
  if SortID = 1 then exit //Не даем выполнить изменение состояния пункта меню, если он выделен
  else UnhoverPanel(ShakeSortPanel, SelectIndSkS);
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
  if SortID = 0 then exit //Не даем выполнить изменение состояния пункта меню, если он выделен
  else HoverPanel(BubbleSortPanel, SelectIndBS);
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
  if SortID = 2 then exit //Не даем выполнить изменение состояния пункта меню, если он выделен
  else HoverPanel(InsertionSortPanel, SelectIndIS);
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
  if SortID = 5 then exit //Не даем выполнить изменение состояния пункта меню, если он выделен
  else HoverPanel(QuickSortPanel, SelectIndQS);
end;

procedure TSortInfoForm.ShellSortPanelMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if SortID = 4 then exit //Не даем выполнить изменение состояния пункта меню, если он выделен
  else HoverPanel(ShellSortPanel, SelectIndShS);
end;

procedure TSortInfoForm.SelectionSortPanelMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if SortID = 3 then exit //Не даем выполнить изменение состояния пункта меню, если он выделен
  else HoverPanel(SelectionSortPanel, SelectIndSS);
end;

procedure TSortInfoForm.ShakeSortPanelMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if SortID = 1 then exit //Не даем выполнить изменение состояния пункта меню, если он выделен
  else HoverPanel(ShakeSortPanel, SelectIndSkS);
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
   HoverButton(ShowDemoButton);
end;

procedure TSortInfoForm.ShowDemoButtonMouseLeave(Sender: TObject);
begin
   UnhoverButton(ShowDemoButton);
end;

procedure TSortInfoForm.ShowCodeButtonMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   HoverButton(ShowCodeButton);
end;

procedure TSortInfoForm.ShowCodeButtonMouseLeave(Sender: TObject);
begin
  UnhoverButton(ShowCodeButton);
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
