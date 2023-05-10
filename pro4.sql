
drop procedure if exists pro4;
delimiter $
create procedure pro4(x int,y varchar(20),z varchar(20))
begin
      declare exit handler for 1062 
	  select "ID already exists" r1;
	  if binary z='pune' THEN
	       insert into table1 values(x,y,z);
      ELSE
	       select "invalid city";
	  end IF;
end $
delimiter ;

 