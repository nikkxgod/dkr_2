var i,x,n,j,flag:integer; A:array [1..20] of integer;
begin
  flag:=0;
  for i:=1 to 20 do begin
    writeln('Введи ',i,'-й', ' элемент массива');
    read(x);
    A[i]:=x;
  end;
writeln('Исходный массив: ',A);
for i:=1 to 20 do begin
  if flag=1 then break
  else
  for j:=i to 20 do begin
    if A[i]+A[j]>=A[i]*A[j] then begin
      flag:=1;
      writeln('Произведение ',A[i],' и ',A[j],' не привышает их сумму');
      break;
      end;
  end;
  end;
if flag=0 then writeln('Нет элементов удовлетворяющих условию');
end.