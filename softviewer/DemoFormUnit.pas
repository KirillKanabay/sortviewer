unit DemoFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Math;

type
  TSortDemoForm = class(TForm)
    DemoLabel: TLabel;
    SortName: TLabel;
    SubmitCountButton: TPanel;
    GenDataButton: TPanel;
    SortDataButton: TPanel;
    CountDataLabel: TLabel;
    CountDataEdit: TEdit;
    MaxCountDataLabel: TLabel;
    CheckBox1: TCheckBox;
    DataGrid: TStringGrid;
    CheckDataInd: TShape;
    SwapDataInd: TShape;
    SortedDataInd: TShape;
    CheckDataLabel: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure SetDemoLabel();
    procedure FormShow(Sender: TObject);
    procedure GenDataButtonMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GenDataButtonMouseLeave(Sender: TObject);
    procedure GenDataButtonClick(Sender: TObject);
    procedure SortDataButtonClick(Sender: TObject);
    procedure SortDataButtonMouseLeave(Sender: TObject);
    procedure SortDataButtonMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SubmitCountButtonMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SubmitCountButtonMouseLeave(Sender: TObject);
    procedure SubmitCountButtonClick(Sender: TObject);
    procedure CountDataEditChange(Sender: TObject);
    procedure BubbleSort();
    procedure ShakeSort();
    procedure InsertionSort();
    procedure SelectionSort();
    procedure ShellSort();
    procedure QuickSort();
    procedure CountDataEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SortDemoForm: TSortDemoForm;

implementation

{$R *.dfm}
uses
  SortInfoFormUnit, Utils;

procedure TSortDemoForm.FormShow(Sender: TObject);
begin
   Randomize;
   SetDemoLabel();
end;

procedure TSortDemoForm.SetDemoLabel();
begin
  SortName.Caption:=SortsName[SortID];
  {Центровка надписи}
  SortName.Left:=(SortDemoForm.Width-SortName.Width) div 2;
end;

////////////////////////////////////////////////////////////////////////////////
//>SortsAlgorithms
////////////////////////////////////////////////////////////////////////////////
procedure TSortDemoForm.BubbleSort();
begin
  ShowMessage('BubbleSort');
end;

procedure TSortDemoForm.ShakeSort();
begin
   ShowMessage('ShakeSort');
end;

procedure TSortDemoForm.InsertionSort();
begin
   ShowMessage('InsertionSort');
end;

procedure TSortDemoForm.SelectionSort();
begin
   ShowMessage('SelectionSort');
end;

procedure TSortDemoForm.ShellSort();
begin
   ShowMessage('ShellSort');
end;

procedure TSortDemoForm.QuickSort();
begin
   ShowMessage('QuickSort');
end;

////////////////////////////////////////////////////////////////////////////////
//>Buttons
////////////////////////////////////////////////////////////////////////////////
{#-----------------------------GenDataButton----------------------------------#}
procedure TSortDemoForm.GenDataButtonMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   GenDataButton.Color:=$00805508;
   Screen.Cursor:=crHandPoint;
end;

procedure TSortDemoForm.GenDataButtonMouseLeave(Sender: TObject);
begin
   GenDataButton.Color:=$00C1820C;
   Screen.Cursor:=crArrow;
end;

procedure TSortDemoForm.GenDataButtonClick(Sender: TObject);
var i:integer;
begin
  for i := 0 to DataGrid.ColCount do begin
    DataGrid.Cells[i,0]:=IntToStr(RandomRange(0, 99));
  end;
end;
{#-----------------------------SortDataButton----------------------------------#}
procedure TSortDemoForm.SortDataButtonMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   SortDataButton.Color:=$00805508;
   Screen.Cursor:=crHandPoint;
end;

procedure TSortDemoForm.SortDataButtonMouseLeave(Sender: TObject);
begin
   SortDataButton.Color:=$00C1820C;
   Screen.Cursor:=crArrow;
end;

procedure TSortDemoForm.SortDataButtonClick(Sender: TObject);
begin
  case sortID of
    0:
      BubbleSort();
    1:
      ShakeSort();
    2:
      InsertionSort();
    3:
      SelectionSort();
    4:
      ShellSort();
    5:
      QuickSort();
  end;
end;
{#---------------------------SubmitCountButton--------------------------------#}
procedure TSortDemoForm.SubmitCountButtonMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   SubmitCountButton.Color:=$00805508;
   Screen.Cursor:=crHandPoint;
end;

procedure TSortDemoForm.SubmitCountButtonMouseLeave(Sender: TObject);
begin
   SubmitCountButton.Color:=$00C1820C;
   Screen.Cursor:=crArrow;
end;

procedure TSortDemoForm.SubmitCountButtonClick(Sender: TObject);
var i:integer;
begin
  if CountDataEdit.Color=clWhite then
    DataGrid.ColCount:= StrToInt(CountDataEdit.Text);
  {центруем элемент по середине формы}
  DataGrid.Width:=DataGrid.ColCount*55;
  DataGrid.Left:=(SortDemoForm.Width-DataGrid.Width) div 2;

end;
{#------------------------------CountDataEdit----------------------------------#}
procedure TSortDemoForm.CountDataEditChange(Sender: TObject);
var
  CountData: integer;
begin
  try
    CountData:= StrToInt(CountDataEdit.Text);
    if (CountData >15) or (CountData<1) then CountDataEdit.Color:=$00612CDE
    else CountDataEdit.Color:=clWhite;
  except
    CountDataEdit.Color:=$00612CDE;
  end;
end;
procedure TSortDemoForm.CountDataEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
    SubmitCountButtonClick(Sender);
end;

end.
