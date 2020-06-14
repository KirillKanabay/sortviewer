program BubbleSortAlgorithm;

const
  ArrSize = 10;

type
  TArray = array [1..ArrSize] of integer;

var
  Arr: TArray;

procedure BubbleSort(var arr: TArray);
var
  TempElement: integer;
begin
  for var i := 1 to ArrSize - 1 do
    for var j := 1 to ArrSize - i do
    begin
      {проход слева направо}
      if Arr[j] > Arr[j + 1] then begin
        {обмен элементов}
        TempElement := Arr[j];
        Arr[j] := Arr[j + 1];
        Arr[j + 1] := TempElement;
      end;
    end;
end;

begin
  Randomize;
  for var i := 1 to ArrSize do
    Arr[i] := Random(100);
  Writeln('Исходный массив:', Arr);
  
  BubbleSort(Arr);
  Writeln('Отсортированный массив:', Arr);
end.