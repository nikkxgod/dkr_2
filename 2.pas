var word1,word2,new_str,str:string;i,j,count_word1,count_word2:integer;
begin
  writeln('Введите первое слово');
  readln(word1);
  writeln('Введите второе слово');
  readln(word2);
  writeln('Введите строку');
  readln(str);
  for i:=1 to length(str)-length(word1)+1 do begin
    new_str:='';
    for j:=i to length(word1)-1+i do begin
      new_str:=new_str+str[j];
    end;
    if new_str=word1 then count_word1:=count_word1+1;
  end;
  for i:=1 to length(str)-length(word2)+1 do begin
    new_str:='';
    for j:=i to length(word2)-1+i do begin
      new_str:=new_str+str[j];
    end;
    if new_str=word2 then count_word2:=count_word2+1;
  end;
  if count_word1>count_word2 then
    writeln('Первое слово встречается чаще второго')
  else writeln('Второе слово встречается чаще первое');
end.