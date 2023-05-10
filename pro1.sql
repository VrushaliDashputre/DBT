
drop procedure if exists pro1;
delimiter $
create procedure pro1(in x int,in y int)
begin
   select x + y R1;
end $
delimiter ;

