drop function if exists sumSalary
delimiter $
create function sumSalary(DEPTNO int) returns int
begin
  declare no int default 0;
  set no:=DEPTNO;
  return select sum(sal) from emp where deptno=no;
end $ 
delimiter ;
 