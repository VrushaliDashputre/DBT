
drop procedure if exists pro2;
delimiter $
create procedure pro2(in x int,in y int,out z int)
begin
      set z := x + y ;
      select @g;
end $
delimiter ;

