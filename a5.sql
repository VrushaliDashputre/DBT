drop procedure if exists a5;
delimiter $

create procedure a5(str varchar(20))
begin
    declare subu int default 0;
    declare str1 varchar(20) default ' ';
    declare str2 varchar(20) default ' ';
    declare s varchar(20);
    declare x int;
    set x :=1;
	loop1: loop
          set s :=substr(str,x,1);
	  set subu=ascii(s);
          
	  if subu between 65 and 90 then
	     set str1 := concat(str1,s);
          else
             if subu between 48 and 53 then
		set str2 :=concat(str2,s);
 	     end if;
	  end if;

          set x :=x+1;
	  if x>length(str) then 
             leave loop1;
	  end if;
     end loop loop1;
     select str1; 
     select str2;
end $
delimiter ;