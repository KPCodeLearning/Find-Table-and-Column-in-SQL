//Find Table in SQL
        SELECT DISTINCT
        o.name AS Object_Name,
        o.type_desc
        FROM sys.sql_modules m
        INNER JOIN
        sys.objects o
        ON m.object_id = o.object_id
        WHERE m.definition Like '%TABLE_NAME%';
  
      
      
//Find Column in SQL
        SELECT c.name AS ColName, t.name AS TableName
        FROM sys.columns c
        JOIN sys.tables t ON c.object_id = t.object_id
        WHERE c.name LIKE '%COLUMN_NAME%'
        order by TableName
