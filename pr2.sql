drop procedure if exists pr2;

delimiter $
create procedure pr2 (e varchar(20))
`e``*-03  3
begin
	declare y varchar(20);
	declare z varchar(20);
	declare _email varchar(20);
	set _email=e;
	select username,password into y,z from login where email=_email;
	 
	if(y is not null) THEN
		select username,password from login;
	else
		insert into log values(curr_date,curr_time,message);
		select curr_date,curr_time,message from log;
	end if;
end $
 delimiter ;