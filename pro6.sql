drop procedure if exists pro6;
delimiter $
create procedure pro6(inout x int)
begin
       set x := x * x;
end $	  
delimiter ;

 