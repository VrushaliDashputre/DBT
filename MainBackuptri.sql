drop trigger if exists t1;
delimiter $
create trigger t1 before delete on Main for each ROW
begin
  insert into backup values(old.name,old.password);
end $
delimiter ;

drop trigger if exists t2;
delimiter $
create trigger t2 after INSERT on backup for each ROW
begin
  insert into main values(new.name1,new.password1);
end $
delimiter ;
