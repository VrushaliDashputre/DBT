/*drop procedure if exists p2;
delimiter $
create procedure p2(str varchar(20)) 
begin
    declare l int default 0;
    declare s varchar(20);
    declare x int;
    declare st varchar(20);
    set l := length(str);
    set x:=1;
    set st := "";
    lbl: loop
        set s := substr(str,x,1);
        set st := concat(s,',',' ');        
        set x :=x+1;
        if x>l then
           leave lbl;
        end if;
    end loop lbl;
      select st;
end $
delimiter ;*/
DROP PROCEDURE IF EXISTS comma;
DELIMITER ^

CREATE PROCEDURE comma(s varchar(20))

BEGIN

	DECLARE x int DEFAULT 1;
	DECLARE r varchar(20) DEFAULT "";
	
	loop1: LOOP
		
		SET r=concat(r,SUBSTR(s,x,1));
		
		IF x < LENGTH(s) THEN	
		SET r=concat(r,", ");
		END IF;
		SET x=x+1;		
		IF x> LENGTH(s) THEN
			LEAVE loop1;
		END IF;
	
	
	END LOOP loop1;
	SELECT r ;

END ^
DELIMITER ;
   

