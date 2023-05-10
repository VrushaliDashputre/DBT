drop procedure if exists p8;
delimiter $
create procedure p8()
begin
   declare x int default 1;
       truncate proc8;
   lbl : loop
   if(x%2=0)
   then
   insert into proc8 values(x,'i is even');
   else
    insert into proc8 values(x,'i is odd');
   end if;
   if x>9
    then 
      leave lbl;
   end if;
   set x:=x+1;
  end loop lbl;
  select * from proc8;
end $
delimiter ;
  