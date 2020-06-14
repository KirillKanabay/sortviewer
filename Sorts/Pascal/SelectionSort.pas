program SelectionSortAlgorithm;

const
  ArrSize = 10;

type
  TArray = array [1..ArrSize] of integer;

var
  Arr: TArray;
  
procedure SelectionSort(var Arr:TArray);
var 
  TempElement,
  min: integer;
begin
  for var i:=1 to ArrSize do begin
    Min:=i; // хранит индекс минимального элемента массива
    {поиск минимального числа из рабочей области массива}
    for var j:=i to ArrSize do begin
      if (Arr[Min]>Arr[j]) then Min:=j;
    end;
    
    {Обмен минимального и первого элемента рабочей области массива}
    TempElement:= Arr[i];
    Arr[i]:=Arr[Min];
    Arr[Min]:=TempElement;
  end;
end;

begin
  Randomize;
  for var i := 1 to ArrSize do
    Arr[i] := Random(100);
  Writeln('Исходный массив:', Arr);
  
  SelectionSort(Arr);
  Writeln('Отсортированный массив:', Arr);
end.