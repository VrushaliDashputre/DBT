drop procedure if exists pro1;
delimiter $
CREATE procedure pro1(in _deptno int)
BEGIN
	declare flag bool default false;
	select distinct true into flag  from emp where deptno = _deptno;
	if flag then
		select empno, ename, job, hiredate, sal, deptno from emp where deptno = _deptno;
	ELSE
		select "Employee Not found..";
	end if;
end $
delimiter ;