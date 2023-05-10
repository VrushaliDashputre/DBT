drop PROCEDURE if exists pro1;
delimiter $
CREATE procedure pro1()
b1:BEGIN
	DECLARE deptno1 int;
	DECLARE _dname, _loc varchar(30);
	declare c1 cursor for select deptno, dname, loc from dept;
	declare exit handler for 1329 select "Done";
	open c1;
		lbl:LOOP
			fetch c1 into deptno1, _dname, _loc;
			select deptno1, _dname, _loc;
			b2:BEGIN
				declare _empno,_sal, deptno2 int;
				declare _ename, _job varchar(40);
				declare c2 cursor for select empno, ename, job, sal, deptno from emp where deptno=deptno1;
				declare exit handler for 1329 select "Done";
				open c2;
					lbl2:LOOP
						fetch c2 into _empno, _ename, _job, _sal, deptno2;
						select _empno, _ename, _job, _sal, deptno2;
					end loop lbl2;
				close c2;
			end b2;
		end loop lbl;
	close c1;
end b1$
delimiter ;