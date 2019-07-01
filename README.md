# MemSQL-MPSQL-QUOTENAME
QUOTENAME function for MemSQL MPSQL which mimics the functionality of T-SQL QUOTENAME

```
memsql> select concat("select " ,QUOTENAME('columnname'), ' from tablename');
+---------------------------------------------------------------+
| concat("select " ,QUOTENAME('columnname'), ' from tablename') |
+---------------------------------------------------------------+
| select `columnname` from tablename                            |
+---------------------------------------------------------------+
1 row in set (0.00 sec)
```
