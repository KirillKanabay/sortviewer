program InsertionSortAlgorithm;

const
  ArrSize = 10;

type
  TArray = array [1..ArrSize] of integer;

var
  Arr: TArray;
  
procedure InsertionSort(var Arr:TArray);
var 
  i,j,key,TempElement: integer;
begin
  for i := 2 to ArrSize do
    begin
      key := Arr[i];
      j := i;
      while (j > 1) and (Arr[j - 1] > key) do
        begin
          {обмен элементов}
          TempElement :=  Arr[j];
          Arr[j] := Arr[j - 1];
          Arr[j - 1] := TempElement;
          j := j - 1;
        end;
      Arr[j] := key;
    end;  
end;

begin
  Randomize;
  for var i := 1 to ArrSize do
    Arr[i] := Random(100);
  Writeln('Исходный массив:', Arr);
  
  InsertionSort(Arr);
  Writeln('Отсортированный массив:', Arr);
end.