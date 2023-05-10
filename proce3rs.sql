drop procedure if exists getqualifications;
delimiter $

create procedure getqualifications(studentID int)
begin 
    declare R varchar(20);
    select namefirst into R from student where ID=studentID;
    if R is not null then
       select * from student inner join student_qualifications ON student.id=student_qualifications.id;
    else
      select 'not';

       
    end if;
end $
delimiter ;

/*


    declare N int;
    select namefirst as N from student where ID= studentID;
    if N is not null
     then
       select 'Student not found';
    else
      select * from student as R inner join student_qualifications as M  ON R.Id=M.id;  
    end if;
end $
delimiter ;*/