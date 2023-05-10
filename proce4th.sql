drop procedure if exists addQualification;
delimiter $
create procedure addQualification(name varchar(20),number int,address varchar(20))
begin
   insert into student values(name);
   insert into phone values(number);
   insert into addr values(address);
end $
delimiter ;