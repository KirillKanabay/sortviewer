program ShellSortAlgorithm;

const
  ArrSize = 13;

type
  TArray = array [1..ArrSize] of integer;

var
  Arr: TArray;

procedure ShellSort(var Arr: TArray);
var 
  TempElement, d, i, j: integer;
begin
  d:=ArrSize div 2; //Вычисляем приращение
  
  while (d>0) do begin
    for i:=1 to ArrSize - d  do begin
      j:=i;
      while (j>=1) and (Arr[j] > Arr[j+d]) do begin
        {обмен элементов}
        TempElement:=Arr[j];
        Arr[j]:=Arr[j+d];
        Arr[j+d]:=TempElement;
        j:=j - 1;
      end;
    end; 
    d:=d div 2;
  end;
end;

begin
  Randomize;
  for var i := 1 to ArrSize do
    Arr[i] := Random(100);
  Writeln('Исходный массив:', Arr);
  
  ShellSort(Arr);
  Writeln('Отсортированный массив:', Arr);   
end.