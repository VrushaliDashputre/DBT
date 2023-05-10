drop procedure if exists p1;
delimiter $
create procedure p1(username varchar(20),password varchar(20),email varchar(20))
   begin
      insert into login values(username,password,email);
   end $
delimiter ;