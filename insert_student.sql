drop trigger if exists insert_student;
delimiter $

create trigger insert_student after insert on insertStudent
for each row
begin
     insert into log values(default,date(now()),'Record inserted successfully',time(now()));
end $
delimiter ;   