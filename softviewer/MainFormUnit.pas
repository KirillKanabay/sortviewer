unit MainFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Grids,
  Vcl.ExtCtrls,Style, Vcl.Buttons, Vcl.WinXPickers, Vcl.Imaging.pngimage,
  Vcl.TitleBarCtrls;

type
  TMainForm = class(TForm)
    MainMenu: TPanel;
    HelpPanel: TPanel;
    HelpIcon: TImage;
    MainFormLabel: TLabel;
    BubbleSortPanel: TPanel;
    ShakeSortPanel: TPanel;
    InsertionSortPanel: TPanel;
    SelectionSortPanel: TPanel;
    InsertionSortCaption: TLabel;
    BorderBottomBS: TShape;
    BorderBottomIS: TShape;
    BorderBottomSS: TShape;
    BorderBottomSkS: TShape;
    BubbleSortIcon: TImage;
    InsertionSortIcon: TImage;
    SelectionSortIcon: TImage;
    ShakeSortIcon: TImage;
    SelectIndBS: TShape;
    SelectIndIS: TShape;
    SelectIndSkS: TShape;
    SelectIndSS: TShape;
    ShellSortPanel: TPanel;
    ShellSortCaption: TLabel;
    BorderBottomShS: TShape;
    ShellSortIcon: TImage;
    SelectIndShS: TShape;
    QuickSortPanel: TPanel;
    QuickSortCaption: TLabel;
    QuickSortIcon: TImage;
    SelectIndQS: TShape;
    SortsListPanel: TPanel;
    BSitem: TPanel;
    ScrollBar1: TScrollBar;
    SortsPanel: TPanel;
    BSborder: TImage;
    BSIcon: TImage;
    BSDescription: TLabel;
    BSbutton: TPanel;
    ShakeSort: TPanel;
    SkSBorder: TImage;
    SkSIcon: TImage;
    SkSDescription: TLabel;
    SkSButton: TPanel;
    ISItem: TPanel;
    ISborder: TImage;
    ISIcon: TImage;
    ISDescription: TLabel;
    ISButton: TPanel;
    SSItem: TPanel;
    SSBorder: TImage;
    SSIcon: TImage;
    SSDescription: TLabel;
    SSButton: TPanel;
    ShSItem: TPanel;
    ShSBorder: TImage;
    ShSIcon: TImage;
    ShSDescription: TLabel;
    ShSButton: TPanel;
    QSItem: TPanel;
    QSBorder: TImage;
    QSIcon: TImage;
    QSDescription: TLabel;
    QSButton: TPanel;
    HomeIcon: TImage;
    HomePanel: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure HelpPanelMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure HelpPanelMouseLeave(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure HelpPanelClick(Sender: TObject);
    procedure BubbleSortPanelClick(Sender: TObject);
    procedure BubbleSortPanelMouseLeave(Sender: TObject);
    procedure BubbleSortPanelMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ShakeSortPanelMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ShakeSortPanelMouseLeave(Sender: TObject);
    procedure InsertionSortPanelMouseLeave(Sender: TObject);
    procedure InsertionSortPanelMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure QuickSortPanelMouseLeave(Sender: TObject);
    procedure QuickSortPanelMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SelectionSortPanelMouseLeave(Sender: TObject);
    procedure SelectionSortPanelMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure ShellSortPanelMouseLeave(Sender: TObject);
    procedure ShellSortPanelMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ShakeSortIconClick(Sender: TObject);
    procedure InsertionSortIconClick(Sender: TObject);
    procedure SelectionSortIconClick(Sender: TObject);
    procedure ShellSortIconClick(Sender: TObject);
    procedure QuickSortIconClick(Sender: TObject);
    procedure BSbuttonClick(Sender: TObject);
    procedure SkSButtonClick(Sender: TObject);
    procedure ISButtonClick(Sender: TObject);
    procedure SSButtonClick(Sender: TObject);
    procedure QSButtonClick(Sender: TObject);
    procedure ShSButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  isHoverHI: boolean;

implementation

{$R *.dfm}

uses InfoFormUnit,SortInfoFormUnit;

procedure TMainForm.FormCreate(Sender: TObject);
var
  Res : TResourceStream;
begin
  {Подключаем шрифты}
  LoadFont();
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  {уничтожаем шрифты}
  DestroyFont();
end;


procedure TMainForm.HelpPanelClick(Sender: TObject);
begin
  InfoForm.ShowModal();
end;

procedure TMainForm.ScrollBar1Change(Sender: TObject);
begin
    SortsListPanel.Top:=-ScrollBar1.Position;
end;

////////////////////////////////////////////////////////////////////////////////
//>Menu
////////////////////////////////////////////////////////////////////////////////
{#---------------------------------Leave--------------------------------------#}


procedure TMainForm.BubbleSortPanelMouseLeave(Sender: TObject);
begin
  BubbleSortPanel.Color:=$00C1820C;
  SelectIndBS.Visible:=false;
  Screen.Cursor:=crArrow;
end;

procedure TMainForm.InsertionSortPanelMouseLeave(Sender: TObject);
begin
  InsertionSortPanel.Color:=$00C1820C;
  SelectIndIS.Visible:=false;
  Screen.Cursor:=crArrow;
end;

procedure TMainForm.QuickSortPanelMouseLeave(Sender: TObject);
begin
  QuickSortPanel.Color:=$00C1820C;
  SelectIndQS.Visible:=false;
  Screen.Cursor:=crArrow;
end;

procedure TMainForm.ShellSortPanelMouseLeave(Sender: TObject);
begin
  ShellSortPanel.Color:=$00C1820C;
  SelectIndShS.Visible:=false;
  Screen.Cursor:=crArrow;
end;

procedure TMainForm.SelectionSortPanelMouseLeave(Sender: TObject);
begin
  SelectionSortPanel.Color:=$00C1820C;
  SelectIndSS.Visible:=false;
  Screen.Cursor:=crArrow;
end;

procedure TMainForm.ShakeSortPanelMouseLeave(Sender: TObject);
begin
  ShakeSortPanel.Color:=$00C1820C;
  SelectIndSkS.Visible:=false;
  Screen.Cursor:=crArrow
end;

procedure TMainForm.HelpPanelMouseLeave(Sender: TObject);
begin
  if (isHoverHI) then begin
    loadPngFromRes(HelpIcon,1);
    isHoverHI:=false;
   end;
  Screen.Cursor:=crArrow;
end;
{#----------------------------------------------------------------------------#}
{#---------------------------------Move---------------------------------------#}
procedure TMainForm.BubbleSortPanelMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  BubbleSortPanel.Color:=$00805508;
  SelectIndBS.Visible:=true;
  Screen.Cursor:=crHandPoint;
end;

procedure TMainForm.HelpPanelMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   if not (isHoverHI) then begin
    loadPngFromRes(HelpIcon,2);
    isHoverHI:=true;
   end;
   Screen.Cursor:=crHandPoint;
end;

procedure TMainForm.InsertionSortPanelMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  InsertionSortPanel.Color:=$00805508;
  SelectIndIS.Visible:=true;
  Screen.Cursor:=crHandPoint;
end;

procedure TMainForm.QuickSortPanelMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  QuickSortPanel.Color:=$00805508;
  SelectIndQS.Visible:=true;
  Screen.Cursor:=crHandPoint;
end;

procedure TMainForm.ShellSortPanelMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ShellSortPanel.Color:=$00805508;
  SelectIndShS.Visible:=true;
  Screen.Cursor:=crHandPoint;
end;

procedure TMainForm.SelectionSortPanelMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  SelectionSortPanel.Color:=$00805508;
  if not (SelectIndSS.Visible) then SelectIndSS.Visible:=true;
  Screen.Cursor:=crHandPoint;
end;

procedure TMainForm.ShakeSortPanelMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  ShakeSortPanel.Color:=$00805508;
  SelectIndSkS.Visible:=true;
  Screen.Cursor:=crHandPoint;
end;
{#-----------------------------Click------------------------------------------#}
procedure TMainForm.BubbleSortPanelClick(Sender: TObject);
begin
  SortID:=0;
  SortInfoForm.Show();
  MainForm.Hide();
end;

procedure TMainForm.ShakeSortIconClick(Sender: TObject);
begin
  SortID:=1;
  SortInfoForm.Show();
  MainForm.Hide();
end;

procedure TMainForm.InsertionSortIconClick(Sender: TObject);
begin
  SortID:=2;
  SortInfoForm.Show();
  MainForm.Hide();
end;

procedure TMainForm.SelectionSortIconClick(Sender: TObject);
begin
  SortID:=3;
  SortInfoForm.Show();
  MainForm.Hide();
end;

procedure TMainForm.ShellSortIconClick(Sender: TObject);
begin
  SortID:=4;
  SortInfoForm.Show();
  MainForm.Hide();
end;

procedure TMainForm.QuickSortIconClick(Sender: TObject);
begin
  SortID:=5;
  SortInfoForm.Show();
  MainForm.Hide();
end;

////////////////////////////////////////////////////////////////////////////////
//>SortPanel
////////////////////////////////////////////////////////////////////////////////
{#-----------------------------Click------------------------------------------#}
 procedure TMainForm.BSbuttonClick(Sender: TObject);
begin
  ShowMessage('kek');
  SortID:=0;
  SortInfoForm.Show();
  MainForm.Hide();
end;

procedure TMainForm.SkSButtonClick(Sender: TObject);
begin
  SortID:=1;
  SortInfoForm.Show();
  MainForm.Hide();
end;

procedure TMainForm.ISButtonClick(Sender: TObject);
begin
  SortID:=2;
  SortInfoForm.Show();
  MainForm.Hide();
end;

procedure TMainForm.SSButtonClick(Sender: TObject);
begin
  SortID:=3;
  SortInfoForm.Show();
  MainForm.Hide();
end;

procedure TMainForm.ShSButtonClick(Sender: TObject);
begin
  SortID:=4;
  SortInfoForm.Show();
  MainForm.Hide();
end;

procedure TMainForm.QSButtonClick(Sender: TObject);
begin
  SortID:=5;
  SortInfoForm.Show();
  MainForm.Hide();
end;



end.

