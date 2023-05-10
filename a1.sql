drop procedure if exists p1;
delimiter $
create procedure p1(str varchar(20))
begin
    declare l int default 0;
    declare i int default 0;
    set l := length(str);
     lp : loop
      if i<l then    
        select substr(str,i+1,1);
       set i :=i+1;
      end if;
   end loop lp;
end $
delimiter ;

   