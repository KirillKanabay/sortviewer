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
    CheckDataInd: TShape;
    SwapDataInd: TShape;
    SortedDataInd: TShape;
    CheckDataLabel: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DataGrid: TStringGrid;
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
    procedure CountDataEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DataGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox1Click(Sender: TObject);
    procedure unableElements();
    procedure enableElements();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SortDemoForm: TSortDemoForm;
  disableButtons: boolean;
implementation

{$R *.dfm}
uses
  SortInfoFormUnit, DesignUnit, Utils, Sorts;

procedure TSortDemoForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {Очищаем данные}
  for var i := 0 to DataGrid.ColCount-1 do begin
    DataGrid.Cells[i,0]:='';
    {Устанавливаем всем клеткам стандартный цвет}
    DataGrid.Rows[0].Objects[i] := TObject(1);
  end;
end;


procedure TSortDemoForm.FormShow(Sender: TObject);
begin
   Randomize;
   SetDemoLabel();
   EnableElements();
   StopDemo:=true;
end;

procedure TSortDemoForm.SetDemoLabel();
begin
  SortName.Caption:=SortsName[SortID];
  {Центровка надписи}
  SortName.Left:=(SortDemoForm.Width-SortName.Width) div 2;
  if SortID = 3 then
     CheckDataLabel.Caption:='-минимальный элемент на текущей итерации';
end;

procedure TSortDemoForm.DataGridDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
type
  TSave = record
    FontColor : TColor;
    FontStyle : TFontStyles;
    BrColor : TColor;
  end;
var
  Flag : Integer;
begin
  //Читаем значение флага, которое записано под видом указателя на объект.
  Flag := Integer(DataGrid.Rows[ARow].Objects[ACol]);
  //Если флаг не равен 1 - выходим.
  if (Flag < 1) or (Flag > 4) then Exit;
  //В противном случае, изменяем цвет ячейки.
  with DataGrid.Canvas do begin
    case Flag of
      1:
      {default}
        Brush.Color := clWindow;
      2:
      {compare}
        Brush.Color := $0040E3F0;
      3:
      {swap}
        Brush.Color := $00612CDE;
      4:
      {sorted}
        Brush.Color := $003CBD42;
    end;
    //Прорисовываем ячейку.
    FillRect(rect);
    //Прорисовываем в ячейке текст. Здесь +2 - так мы задаём ширину полей в ячейке.
    TextOut(Rect.Left + 2, Rect.Top + 2, DataGrid.Cells[ACol, ARow]);
  end;
end;
////////////////////////////////////////////////////////////////////////////////
//>Buttons
////////////////////////////////////////////////////////////////////////////////
procedure TSortDemoForm.UnableElements();
begin
  HoverButton(GenDataButton);
  HoverButton(SubmitCountButton);

  GenDataButton.Enabled:=false;
  SubmitCountButton.Enabled:=false;
  CheckBox1.Enabled:=false;
  CountDataEdit.Enabled:=false;
end;

procedure TSortDemoForm.EnableElements();
begin
  UnhoverButton(GenDataButton);
  UnhoverButton(SubmitCountButton);

  GenDataButton.Enabled:=true;
  SubmitCountButton.Enabled:=true;
  CheckBox1.Enabled:=true;
  CountDataEdit.Enabled:=true;
end;
{#-----------------------------GenDataButton----------------------------------#}
procedure TSortDemoForm.GenDataButtonMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  HoverButton(GenDataButton);
end;

procedure TSortDemoForm.GenDataButtonMouseLeave(Sender: TObject);
begin
  UnhoverButton(GenDataButton);
end;

procedure TSortDemoForm.GenDataButtonClick(Sender: TObject);
var i:integer;
begin
  for i := 0 to DataGrid.ColCount-1 do begin
    DataGrid.Cells[i,0]:=IntToStr(RandomRange(0, 99));
    {Устанавливаем всем клеткам стандартный цвет}
    DataGrid.Rows[0].Objects[i] := TObject(1);
  end;

end;
{#-----------------------------SortDataButton----------------------------------#}
procedure TSortDemoForm.SortDataButtonMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   HoverButton(SortDataButton);
end;

procedure TSortDemoForm.SortDataButtonMouseLeave(Sender: TObject);
begin
   UnHoverButton(SortDataButton);
end;

procedure TSortDemoForm.SortDataButtonClick(Sender: TObject);
begin
  if StopDemo and ShowDemo then StopDemo:=false
  else if not ShowDemo then StopDemo:=false
  else begin
    StopDemo:=true;
    exit;
  end;
  UnableElements(); // Отключаем все элементы формы, мешающие работе алгоритма
  SortDataButton.Caption:='Остановить демонстрацию';
  case sortID of
    0:
      BubbleSort(DataGrid);
    1:
      ShakeSort(DataGrid);
    2:
      InsertionSort(DataGrid);
    3:
      SelectionSort(DataGrid);
    4:
      ShellSort(DataGrid);
    5:
      QuickSort(DataGrid,0,DataGrid.ColCount-1);
  end;
  StopDemo:=true;
  EnableElements();
  SortDataButton.Caption:='Отсортировать данные';
end;


{#---------------------------SubmitCountButton--------------------------------#}
procedure TSortDemoForm.SubmitCountButtonMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   HoverButton(SubmitCountButton);
end;

procedure TSortDemoForm.SubmitCountButtonMouseLeave(Sender: TObject);
begin
   UnhoverButton(SubmitCountButton);
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

procedure TSortDemoForm.Button1Click(Sender: TObject);
begin
  DataGrid.Rows[0].Objects[1]:=TObject(1);

 // ShowMessage('YES');
end;

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
{#--------------------------------Checkbox------------------------------------#}
procedure TSortDemoForm.CheckBox1Click(Sender: TObject);
begin
    case CheckBox1.State of
      cbUnchecked:
        ShowDemo:=false;
      cbChecked:
        ShowDemo:=true;
    end;
end;
end.
