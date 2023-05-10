drop procedure if exists addQualifications;
delimiter $

create procedure addQualifications(studentid int,name varchar(20),college varchar(20),university varchar(20),marks int,year int)
begin
  declare R varchar(20);
   select namefirst into R from student where Id=studentId;
   if R is not null
   then
      insert into student_qualifications values(1,studentId,name,college,university,marks,year);
      select 'Record inserted';
   else
      select 'student not found';
    end if;
end $ 
delimiter ;