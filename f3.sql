drop function if exists f3;
delimiter $
create function f3() returns varchar(20) 
begin
      declare x varchar(20);
	  --declare y varchar(20);
	  set x := 'hello world';
	  select f2();
	  return x;
end $
delimiter ;

