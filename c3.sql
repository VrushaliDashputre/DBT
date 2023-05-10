drop PROCEDURE if exists pro1;
delimiter $
CREATE procedure pro1()
BEGIN
	DECLARE _deptno int;
	DECLARE _dname, _loc varchar(30);
	declare c1 cursor for select deptno, dname, loc from dept;
	open c1;
			fetch c1 into _deptno, _dname, _loc;
			select _deptno, _dname, _loc;
     close c1;		
 end $
delimiter ;