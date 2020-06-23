unit IterationsSortFormUnit;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Math, Utils;

type
  TIterationsSortForm = class(TForm)
    IterationsGrid: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure IterationsGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;
  procedure pushIteration(Iteration:TStringGrid);
  procedure clearIterationsGrid();
var
  IterationsSortForm: TIterationsSortForm;
  IterationsCount: integer; //������ ���������� ��������
  CellsState: array of integer; //������ ��������� ����� ��������
  implementation
{$R *.dfm}

procedure pushIteration(Iteration:TStringGrid);
begin
  {��������� � ������� ��������}
  with IterationsSortForm.IterationsGrid do begin
    if IterationsCount=0 then begin
      ColCount:= Iteration.ColCount+1;//��������� ���������� ������ ��������
      RowCount:=1; //��������� ����� ������ ��� ��������

      Cells[0,RowCount-1]:='�������� ������';
    end
    else begin
      RowCount:=IterationsCount+1; //��������� ����� ������ ��� ��������
      Cells[0,RowCount-1]:='�������� �'+IntToStr(IterationsCount);
      ColCount:= Iteration.ColCount+1;//��������� ���������� ������ ��������
    end;

    Inc(IterationsCount);
    for var i := 0 to Iteration.ColCount-1 do begin
      Cells[i+1,RowCount-1]:= Iteration.Cells[i,0];
      Rows[RowCount-1].Objects[i+1]:=TObject(CellsState[i]);
    end;

  end;
end;

procedure clearIterationsGrid();
begin
  with IterationsSortForm.IterationsGrid do begin
    for var i := 0 to RowCount-1 do
      for var j := 0 to ColCount-1 do
        Cells[j,i]:='';

    ColCount:=0;
    RowCount:=0;
    IterationsCount:=0;
  end;
end;

procedure TIterationsSortForm.FormCreate(Sender: TObject);
begin
  IterationsGrid.ColWidths[0]:=160;
end;

procedure TIterationsSortForm.FormShow(Sender: TObject);
var
  GridHeight: integer;
  GridWidth: integer;
begin
  IterationsGrid.Width:=(IterationsGrid.ColCount-1)*55+185;
  IterationsSortForm.Width:=IterationsGrid.Width+6;
end;

procedure TIterationsSortForm.IterationsGridDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  Flag : Integer;
begin
  //������ �������� �����, ������� �������� ��� ����� ��������� �� ������.
  Flag := Integer(IterationsGrid.Rows[ARow].Objects[ACol]);
  //���� ���� �� ����� 1 - �������.
  if (Flag < 1) or (Flag > 4) then Exit;
  //� ��������� ������, �������� ���� ������.
  with IterationsGrid.Canvas do begin
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
    //������������� ������.
    FillRect(rect);
    //������������� � ������ �����. ����� +2 - ��� �� ����� ������ ����� � ������.
    TextOut(Rect.Left + 2, Rect.Top + 2, IterationsGrid.Cells[ACol, ARow]);
  end;
  end;
end.
