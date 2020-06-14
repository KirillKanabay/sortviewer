unit Sorts;

interface
  uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Math, Utils;

  procedure Swap(Arr:TStringGrid; idx1,idx2:integer);
  function compare(Arr:TStringGrid;idx1,idx2:integer):boolean;
  procedure setCellColor(Arr:TStringGrid; idx,color:integer;dTime:real);
  procedure fillCells(Arr:TStringGrid; color:integer);

  procedure BubbleSort(Arr:TStringGrid);
  procedure InsertionSort(Arr:TStringGrid);
  procedure QuickSort(Arr:TStringGrid; Left, Right: integer);
  procedure SelectionSort(Arr:TStringGrid);
  procedure ShakeSort(Arr:TStringGrid);
  procedure ShellSort(Arr:TStringGrid);

  var
    StopDemo, ShowDemo: boolean;
    kD: real = 1.0; {Решение бага с задержкой анимации на разных версиях винды,
    путем умножения времени задержки на коэфицент. Если win10 kD = 1, если 7 и ниже то 0,1}

  implementation

procedure Swap(Arr:TStringGrid; idx1,idx2:integer);
var
  TempElement: string;
begin
  setCellColor(Arr,idx1,3,0);
  setCellColor(Arr,idx2,3,Round(2000*kD));

  {swap}
  TempElement := Arr.Cells[idx1,0];
  Arr.Cells[idx1,0] := Arr.Cells[idx2,0];
  Arr.Cells[idx2,0] := TempElement;

  setCellColor(Arr,idx2,3,Round(2000*kD));

  setCellColor(Arr,idx1,1,0);
  setCellColor(Arr,idx2,1,0);
end;

function compare(Arr:TStringGrid;idx1,idx2:integer):boolean;
var
  Ans: boolean;
begin
  setCellColor(Arr,idx1,2,0);
  setCellColor(Arr,idx2,2,Round(4000*kD));

  setCellColor(Arr,idx1,1,0);
  setCellColor(Arr,idx2,1,0);

  compare:=true;
end;

procedure setCellColor(Arr:TStringGrid; idx,color:integer;dTime:real);
begin
  if not ShowDemo then exit;
  {
    colors:
    1 - default (White),
    2 - selected (Yellow),
    3 - swap (Red),
    4 - sorted (Green)
  }
  Arr.Rows[0].Objects[idx] := TObject(color);
  Delay(trunc(dTime));
end;

procedure fillCells(Arr:TStringGrid; color:integer);
begin
  for var i := 0 to Arr.ColCount-1 do
    setCellColor(Arr,i,color,0);
end;

procedure BubbleSort(Arr:TStringGrid);
begin
  for var i := 0 to Arr.ColCount - 1 do begin
    for var j := 0 to Arr.ColCount - i - 2 do
    begin
      if StopDemo then exit;
      {проход слева направо}
      compare(Arr,j,j+1);
      if (StrToInt(Arr.Cells[j,0])>StrToInt(Arr.Cells[j+1,0])) then begin
        {обмен элементов}
        swap(Arr,j,j+1);
      end;
    end;
    setCellColor(Arr,Arr.ColCount - 1- i, 4, 0);
  end;
end;

procedure InsertionSort(Arr:TStringGrid);
var
  i,j: integer;
  key:string;
begin
  for i := 1 to Arr.ColCount - 1 do
    begin
      if StopDemo then exit;
      key := Arr.Cells[i,0];
      j := i;
      compare(Arr,j-1,j);
      while (j > 0) and (StrToInt(Arr.Cells[j-1,0])>StrToInt(key))  do
        begin
          if StopDemo then exit;
          {обмен элементов}
          swap(Arr,j,j-1);
          j := j - 1;
        end;
      Arr.Cells[j,0] := key;
    end;
    for i := 0 to Arr.ColCount - 1 do
      setCellColor(Arr,i, 4, 0);

end;

procedure QuickSort(Arr:TStringGrid; Left, Right: integer);
var
  NewLeft, NewRight : integer; //границы массива
  Pivot : string;
begin
  NewLeft := Left;
  NewRight := Right;

  {опорный элемент массива}
  Pivot :=Arr.Cells[(Left + Right) div 2,0];

  setCellColor(Arr,(Left + Right) div 2,4,Round(4000*kD)); //Подсвечиваем сепаратор
  if StopDemo then exit;
  repeat
    {Слева до сепаратора}
    while (StrToInt(Arr.Cells[NewLeft,0])<StrToInt(Pivot)) do begin
      setCellColor(Arr,NewLeft,1,0); //Убираем подсветку у предыдущего элемента

      if StopDemo then exit;
      NewLeft := NewLeft + 1;

      setCellColor(Arr,NewLeft,2,Round(2000*kD));
    end;

    {Справа до сепаратора}
    while (StrToInt(Arr.Cells[NewRight,0])> StrToInt(Pivot)) do begin
      setCellColor(Arr,NewRight,1,0); //Убираем подсветку у предыдущего элемента
      if StopDemo then exit;

      NewRight := NewRight - 1;

      setCellColor(Arr,NewRight,2,Round(2000*kD));
    end;
    if NewLeft <= NewRight then
    begin
      {обмен значений}
      swap(Arr, NewLeft, NewRight);
      NewLeft := NewLeft + 1;
      NewRight := NewRight - 1;
    end;
  until NewLeft > NewRight;


  for var i := 0 to Arr.ColCount-1 do
    setCellColor(Arr,i,1,0); //Убираем подсведку с элементов

  {рекурсивный вызов сортировки для "меньших" элементов}
  if Left < NewRight then
    QuickSort(Arr,Left, NewRight);

  {сортировка - для "больших" элементов}
  if NewLeft < Right then
    QuickSort(Arr, NewLeft, Right);
end;

procedure SelectionSort(Arr:TStringGrid);
var
  min: integer;
begin
  for var i := 0 to Arr.ColCount - 1 do begin
    Min:=i; // хранит индекс минимального элемента массива
    {поиск минимального числа из рабочей области массива}
    for var j:=i to Arr.ColCount - 1 do begin
      if (StrToInt(Arr.Cells[Min,0])>StrToInt(Arr.Cells[j,0])) then begin
        Min:=j;
      end;
    end;
    if StopDemo then exit;
    {Выделяем минимальный элемент}
    setCellColor(Arr,min,2,Round(4000*kD));
    {Обмен минимального и первого элемента рабочей области массива}
    swap(Arr, i, min);
    setCellColor(Arr,i, 4,0);
  end;
end;

procedure ShakeSort(Arr:TStringGrid);
var
  FirstIndex,
  LastIndex,
  i: integer;
begin
  FirstIndex:=0; //индекс первого элемента рабочей зоны массива
  LastIndex:=Arr.ColCount-1; //индекс последнего элемента рабочей зоны массива
  if StopDemo then exit;
  while FirstIndex < LastIndex do begin
    {проход слева направо}
    for i:= FirstIndex to LastIndex-1 do begin
      compare(Arr,i,i+1);
      if (StrToInt(Arr.Cells[i,0])>StrToInt(Arr.Cells[i+1,0])) then
      begin
        if StopDemo then exit;
        {обмен элементов}
        swap(Arr,i,i+1);
      end;
    end;
     setCellColor(Arr,LastIndex, 4,0);
    {проход справа налево}
    for i:= LastIndex-1 downto FirstIndex+1 do begin
      compare(Arr,i,i-1);
      if (StrToInt(Arr.Cells[i-1,0])>StrToInt(Arr.Cells[i,0])) then
      begin
        if StopDemo then exit;
        {обмен элементов}
        swap(Arr,i,i-1);
      end;
    end;
    setCellColor(Arr,FirstIndex, 4, 0);

    {уменьшаем рабочую зону}
    FirstIndex := firstIndex + 1;
    LastIndex := lastIndex - 1;
  end;
end;

procedure ShellSort(Arr:TStringGrid);
var
  d, i, j: integer;
begin
  d:=(Arr.ColCount-1) div 2; //Вычисляем приращение

  while (d>0) do begin
    for i:=0 to Arr.ColCount-1 - d  do begin
      j:=i;
      if StopDemo then exit;
      while (j>=0) and (StrToInt(Arr.Cells[j,0])>StrToInt(Arr.Cells[j+d,0])) and compare(Arr,j,j+d) do begin
        {обмен элементов}
        if StopDemo then exit;
        swap(Arr,j,j+d);
        j:=j - 1;
      end;
    end;
    d:=d div 2;
  end;

  for i := 0 to Arr.ColCount - 1 do
     setCellColor(Arr,i, 4, 0);
end;
end.
