
drop procedure if exists pro3;
delimiter $
create procedure pro3(x int,y varchar(20))
begin
      declare exit handler for 1062 
	  select "ID already exit" r1;
      insert into table1 values(x,y);
end $
delimiter ;

