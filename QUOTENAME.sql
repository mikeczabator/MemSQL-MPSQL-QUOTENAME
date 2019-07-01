delimiter // 
CREATE FUNCTION QUOTENAME(_in_str varchar(64), _in_delimiter char(1) default '`') 
returns varchar(66) as 
DECLARE 
  retval varchar(66); 
  delimiter char(1);
BEGIN
  delimiter='`';
  retval=CONCAT(_in_delimiter, REPLACE(_in_str, _in_delimiter, CONCAT(_in_delimiter,_in_delimiter)), _in_delimiter);
  return (retval);
end;
// 
delimiter ;
