drop procedure if exists pro5;
delimiter $
create procedure pro5()
begin
       declare x INT default 0;
	   lb : LOOP
	      set x=x+1;
		  select x;
		  if x>9 THEN 
		     leave lb;
		  end if;
		end loop lb;
end $	  
delimiter ;

 