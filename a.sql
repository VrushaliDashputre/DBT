drop procedure if exists  a;
drop table if exists e10;
drop table if exists e20;
drop table if exists e30;
create table  e10   like emp;
create table  e20   like emp;
create table  e30   like emp;


delimiter $
create procedure a()
b1:BEGIN
declare _deptno int;
declare s int;
declare c1 cursor for select deptno from dept;
open c1;
l1 : LOOP
fetch c1 into _deptno;
b2 : begin
declare  _empno,_mgr,_sal,_comm,__deptno,_bonusid int;
declare   _job, username,_pwd,_ename,_phone varchar(40);
declare _GENDER CHAR(1);
declare _hiredate date;
declare  _isActive tinyint;
declare c2 cursor for select  empno ,ename , gender,job,mgr,hiredate,sal,comm,deptno,bonusid,`user name`,
pwd,phone,isActive from emp  where deptno=_deptno;
open c2;
l2 : LOOP
fetch c2 into _empno ,_ename , _gender,_job,_mgr,_hiredate,_sal,_comm,__deptno,_bonusid,username,
_pwd,_phone,_isActive;
case 
	when __deptno = 10 THEN
	insert into e10 values (_empno ,_ename , _gender,_job,_mgr,_hiredate,_sal,_comm,__deptno,_bonusid,username,
_pwd,_phone,_isActive);
	when __deptno = 20 THEN
	insert into e20 values (_empno ,_ename , _gender,_job,_mgr,_hiredate,_sal,_comm,__deptno,_bonusid,username,
_pwd,_phone,_isActive);
when __deptno = 30 THEN
	insert into e30 values (_empno ,_ename , _gender,_job,_mgr,_hiredate,_sal,_comm,__deptno,_bonusid,username,
_pwd,_phone,_isActive);
ELSE
set s=1;
end case;
close c2;
end loop l2;
end b2;
close c1;
end loop l1;
end  b1 $
delimiter ;