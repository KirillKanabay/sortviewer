program QuickSortAlgorithm;

const
  ArrSize = 10;

type
  TArray = array [1..ArrSize] of integer;

var
  Arr: TArray;

procedure QuickSort(Left, Right: integer);
var
  NewLeft, NewRight : integer; //границы массива
  TempElement, Pivot : integer;
begin
  NewLeft := Left;
  NewRight := Right;

  {опорный элемент массива}
  Pivot := Arr[(Left + Right) div 2];

  repeat
    while Arr[NewLeft] < Pivot do
      NewLeft := NewLeft + 1;

    while Arr[NewRight] > Pivot do
      NewRight := NewRight - 1;

    if NewLeft <= NewRight then
    begin
      {обмен значений}
      TempElement := Arr[NewLeft];
      Arr[NewLeft] := Arr[NewRight];
      Arr[NewRight] := TempElement;

      NewLeft := NewLeft + 1;
      NewRight := NewRight - 1;
    end;
  until NewLeft > NewRight;

  {рекурсивный вызов сортировки для "меньших" элементов}
  if Left < NewRight then
    QuickSort(Left, NewRight);

  {сортировка - для "больших" элементов}
  if NewLeft < Right then
    QuickSort(NewLeft, Right);
end;

begin
  Randomize;
  for var i := 1 to ArrSize do
    Arr[i] := Random(100);
  Writeln('Исходный массив:', Arr);
  
  QuickSort(1 , ArrSize);
  Writeln('Отсортированный массив:', Arr); 
end.