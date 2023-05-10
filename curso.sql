drop procedure if exists p;
delimiter $
create procedure p(x int)
begin
    declare _empno, _sal , _deptno int;
	declare _ename, _job varchar(40);
	declare _hiredate date;
	  
	 declare c1 cursor for select empno,ename,job,hiredate,sal,deptno from emp;
	 
	 declare exit handler for 1329 select "No more records to fetch";
	 open c1;
            lbl : LOOP   
			      fetch c1 into _empno,_ename,_job,_hiredate,_sal,_deptno;
				  if _deptno=x THEN 
				       select _empno,_ename, _job, _hiredate, _sal, _deptno;
				  end if;
		     end loop lbl;
     close c1;	    
end $
delimiter ;