delimiter // 
CREATE FUNCTION QUOTENAME(str varchar(64)) 
returns varchar(66) as 
DECLARE 
  retval varchar(66); 
  delimiter char(1);
BEGIN
  delimiter='`';
  retval=CONCAT(delimiter, REPLACE(str, delimiter, CONCAT(delimiter,delimiter)), delimiter);
  return (retval);
end;
// 
delimiter ;
