drop trigger if exists trig3;
delimiter $

create trigger trig3 after update on student for each row
begin
    insert into student_log values(new.id,new.sname,new.city);
end $
delimiter ;