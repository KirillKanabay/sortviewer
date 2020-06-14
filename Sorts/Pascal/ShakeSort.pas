program CocktailSortAlgorithm;
const
  ArrSize = 10;

type
  TArray = array [1..ArrSize] of integer;

var
  Arr: TArray;

procedure CocktailSort(var Arr: TArray);
var 
  TempElement,
  FirstIndex, 
  LastIndex,
  i: integer;
begin
  FirstIndex:=1; //индекс первого элемента рабочей зоны массива
  LastIndex:=ArrSize; //индекс последнего элемента рабочей зоны массива
  
  while FirstIndex < LastIndex do begin
    {проход слева направо} 
    for i:= FirstIndex to LastIndex-1 do
      if Arr[i] > Arr[i+1] then
      begin
        {обмен элементов}
        TempElement := Arr[i];
        Arr[i] := Arr[i+1];
        Arr[i+1] := TempElement;
      end;

    {проход справа налево}
    for i:= LastIndex downto FirstIndex+1 do
      if Arr[i] < Arr[i-1] then
      begin
        {обмен элементов}
        TempElement := Arr[i];
        Arr[i] := Arr[i-1];
        Arr[i-1] := TempElement;
      end;

    {уменьшаем рабочую зону}  
    FirstIndex := firstIndex + 1;
    LastIndex := lastIndex - 1;  
  end;
end;

begin
  Randomize;
  for var i := 1 to ArrSize do
    Arr[i] := Random(100);
  Writeln('Исходный массив:', Arr);
  
  CocktailSort(Arr);
  Writeln('Отсортированный массив:', Arr);
end.
