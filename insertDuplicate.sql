drop trigger if exists insertDuplicate;

delimiter $
create trigger insertDuplicate after insert on student for each row
begin
      insert into student_log values(new.id,new.sname,new.city);
end $
delimiter ;