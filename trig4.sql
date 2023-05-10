drop trigger if exists trig4;
delimiter $

create trigger trig4 before delete on student for each row
begin
    insert into student_log values(old.id,old.sname,old.city);
end $
delimiter ;