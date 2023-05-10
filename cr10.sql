drop procedure if exists cr10;
delimiter $
create procedure cr10()
begin
  declare _EMPNO,_SAL,_MGR,_COMM,_DEPTNO,_BONUSID int;
  declare _ENAME,_JOB,_USERNAME,_PWD,_PHONE varchar(20);     
  declare _HIREDATE date;
  declare _isActive tinyint(1);
  declare _GENDER char(1);
  declare c1 cursor for select EMPNO,ENAME,GENDER,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO,BONUSID,'USER NAME',PWD,PHONE,isActive from emp;
    open c1;
    lbl : loop
     fetch c1 into _EMPNO,_ENAME,_GENDER,_JOB,_MGR,_HIREDATE,_SAL,_COMM,_DEPTNO,_BONUSID,_USERNAME,_PWD,_PHONE,_isActive;
     insert into emp10 values(_EMPNO,_ENAME,_GENDER,_JOB,_MGR,_HIREDATE,_SAL,_COMM,_DEPTNO,_BONUSID,_USERNAME,_PWD,_PHONE,_isActive);
     end loop lbl;
   close c1;

end $
delimiter ;