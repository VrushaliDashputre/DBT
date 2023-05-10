drop function if exists f1;
delimiter $
create function f1() returns varchar(20) 
begin
      return "Hello world";
end $
delimiter ;

