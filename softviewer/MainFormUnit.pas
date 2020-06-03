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
    MenuTitle: TPanel;
    MenuCaption: TLabel;
    HelpPanel: TPanel;
    HelpCaption: TLabel;
    HelpIcon: TImage;
    MainFormLabel: TLabel;
    BubbleSortPanel: TPanel;
    ShakeSortPanel: TPanel;
    InsertionSortPanel: TPanel;
    SelectionSortPanel: TPanel;
    BubbleSortCaption: TLabel;
    ShakeSortCaption: TLabel;
    InsertionSortCaption: TLabel;
    SelectionSortCaption: TLabel;
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
    SelectAreaBS: TShape;
    SelectAreaIS: TShape;
    SelectAreaSS: TShape;
    SelectionAreaSkS: TShape;
    ShellSortPanel: TPanel;
    ShellSortCaption: TLabel;
    BorderBottomShS: TShape;
    ShellSortIcon: TImage;
    SelectIndShS: TShape;
    SelectAreaShS: TShape;
    QuickSortPanel: TPanel;
    QuickSortCaption: TLabel;
    QuickSortIcon: TImage;
    SelectIndQS: TShape;
    SelectAreaQS: TShape;
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
    procedure HelpPanelMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure HelpPanelMouseLeave(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure SortsListPanelClick(Sender: TObject);
    procedure TitleBarPanel1Paint(Sender: TObject; Canvas: TCanvas;
      var ARect: TRect);
    procedure HelpPanelClick(Sender: TObject);
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

uses InfoFormUnit;

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

procedure TMainForm.TitleBarPanel1Paint(Sender: TObject; Canvas: TCanvas;
  var ARect: TRect);
begin

end;

////////////////////////////////////////////////////////////////////////////////
//>MainMenu
////////////////////////////////////////////////////////////////////////////////
{#---------------------------------Leave--------------------------------------#}
procedure TMainForm.ScrollBar1Change(Sender: TObject);
begin
    SortsListPanel.Top:=-ScrollBar1.Position;
end;

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

procedure TMainForm.HelpPanelMouseLeave(Sender: TObject);
begin
  if (isHoverHI) then begin
    loadPngFromRes(HelpIcon,1);
    isHoverHI:=false;
   end;
  HelpCaption.Font.Color:=$00FFFFFF;
  Screen.Cursor:=crArrow;
end;
{#----------------------------------------------------------------------------#}
{#---------------------------------Move---------------------------------------#}
procedure TMainForm.SelectAreaBSMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
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
   HelpCaption.Font.Color:=$0040E3F0;
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
procedure TMainForm.SortsListPanelClick(Sender: TObject);
begin

end;

{#----------------------------------------------------------------------------#}
end.

