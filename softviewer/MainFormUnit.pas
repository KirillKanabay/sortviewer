unit MainFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Grids,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.WinXPickers, Vcl.Imaging.pngimage,Utils;

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
    BSitem: TPanel;
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
    SortsBox: TScrollBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure HelpPanelMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure HelpPanelMouseLeave(Sender: TObject);
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
    procedure BSbuttonMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SkSButtonMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ISButtonMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SSButtonMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure QSButtonMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ShSButtonMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ISButtonMouseLeave(Sender: TObject);
    procedure BSbuttonMouseLeave(Sender: TObject);
    procedure SSButtonMouseLeave(Sender: TObject);
    procedure SkSButtonMouseLeave(Sender: TObject);
    procedure QSButtonMouseLeave(Sender: TObject);
    procedure ShSButtonMouseLeave(Sender: TObject);
    procedure SortsBoxMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure SortsBoxMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
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

uses ProductInfoFormUnit,SortInfoFormUnit, DesignUnit, Sorts;

procedure TMainForm.FormCreate(Sender: TObject);
var
  Res : TResourceStream;
begin
  {Подключаем шрифты}
  LoadFont();
  if Win32MajorVersion <> 10 then kD:=0.1;

end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  {уничтожаем шрифты}
  DestroyFont();
end;


procedure TMainForm.HelpPanelClick(Sender: TObject);
begin
  ProductInfoForm.ShowModal();
end;


////////////////////////////////////////////////////////////////////////////////
//>Menu
////////////////////////////////////////////////////////////////////////////////
{
  BS - BubbleSort
  IS - InsertionSort
  QS - QuickSort
  ShS - ShellSort
  SkS - ShakeSort
  SS - SelectionSort
}
{#---------------------------------Leave--------------------------------------#}
procedure TMainForm.BubbleSortPanelMouseLeave(Sender: TObject);
begin
  UnhoverPanel(BubbleSortPanel, SelectIndBS);
end;

procedure TMainForm.InsertionSortPanelMouseLeave(Sender: TObject);
begin
  UnhoverPanel(InsertionSortPanel, SelectIndIS);
end;

procedure TMainForm.QuickSortPanelMouseLeave(Sender: TObject);
begin
  UnhoverPanel(QuickSortPanel, SelectIndQS);
end;

procedure TMainForm.ShellSortPanelMouseLeave(Sender: TObject);
begin
  UnhoverPanel(ShellSortPanel, SelectIndShS);
end;

procedure TMainForm.SelectionSortPanelMouseLeave(Sender: TObject);
begin
  UnhoverPanel(SelectionSortPanel, SelectIndSS);
end;

procedure TMainForm.ShakeSortPanelMouseLeave(Sender: TObject);
begin
  UnhoverPanel(ShakeSortPanel, SelectIndSkS);
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
  hoverPanel(BubbleSortPanel, SelectIndBS);
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
  hoverPanel(InsertionSortPanel, SelectIndIS);
end;

procedure TMainForm.QuickSortPanelMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  hoverPanel(QuickSortPanel, SelectIndQS);
end;

procedure TMainForm.ShellSortPanelMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  hoverPanel(ShellSortPanel, SelectIndShS);
end;

procedure TMainForm.SelectionSortPanelMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  hoverPanel(SelectionSortPanel, SelectIndSS);
end;

procedure TMainForm.ShakeSortPanelMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  hoverPanel(ShakeSortPanel, SelectIndSkS);
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
//>SortBox
////////////////////////////////////////////////////////////////////////////////
{#-----------------------------Leave------------------------------------------#}

procedure TMainForm.ISButtonMouseLeave(Sender: TObject);
begin
  UnhoverButton(ISButton);
end;

procedure TMainForm.BSbuttonMouseLeave(Sender: TObject);
begin
  UnhoverButton(BSButton);
end;

procedure TMainForm.SSButtonMouseLeave(Sender: TObject);
begin
   UnhoverButton(SSButton);
end;

procedure TMainForm.SkSButtonMouseLeave(Sender: TObject);
begin
  UnhoverButton(SkSButton);
end;

procedure TMainForm.QSButtonMouseLeave(Sender: TObject);
begin
  UnhoverButton(QSButton);
end;

procedure TMainForm.ShSButtonMouseLeave(Sender: TObject);
begin
   UnhoverButton(ShSButton);
end;
{#-----------------------------Move------------------------------------------#}

procedure TMainForm.BSbuttonMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   HoverButton(BSButton);
end;

procedure TMainForm.SkSButtonMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   HoverButton(SkSButton);
end;

procedure TMainForm.ISButtonMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   HoverButton(ISButton);
end;

procedure TMainForm.SSButtonMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   HoverButton(SSButton);
end;

procedure TMainForm.QSButtonMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   HoverButton(QSButton);
end;

procedure TMainForm.ShSButtonMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   HoverButton(ShSButton);
end;

{#-----------------------------Click------------------------------------------#}
 procedure TMainForm.BSbuttonClick(Sender: TObject);
begin
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
{#-----------------------------Scroll------------------------------------------#}
procedure TMainForm.SortsBoxMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  SortsBox.VertScrollBar.Position := SortsBox.VertScrollBar.Position + 40;
end;

procedure TMainForm.SortsBoxMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  SortsBox.VertScrollBar.Position:= SortsBox.VertScrollBar.Position-40;
end;

end.

