DROP PROCEDURE IF EXISTS a3;
delimiter $

CREATE PROCEDURE a3(str varchar(20))
BEGIN
    DECLARE i int DEFAULT 1;
    DECLARE x varchar(20);
    declare y int;
    DECLARE len int DEFAULT 0;
    declare s1 varchar(20) default ' ';
    declare s2 varchar(20) default ' ';

    set len :=length(str);
    lp: LOOP
     set x :=substr(str,i,1);
     set y :=ascii(x);
        if y between 97 and 122 then
            set s1 :=concat(s1,y);
        else
          if y between 48 and 57 then
	    set s2 :=concat(s2,y);
	  end if;
        end if;

        set i:=i+1;
        if i>len then
          leave lp;
        end if;
    end loop lp;
    select s1;
    select s2;
 END $
delimiter ;