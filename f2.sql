drop function if exists f2;
delimiter $
create function f2() returns varchar(20) 
begin
      declare x varchar(20);
	  select 'hello world' into x;
	  return x;
end $
delimiter ;

