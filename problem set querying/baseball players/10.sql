--In 10.sql, write SQL query to answer a question of your choice. This query should:

    --Make use of AS to rename a column
    --Involve at least condition, using WHERE
    --Sort by at least one column using ORDER BY

SELECT 
  "first_name", 
  "last_name" 
FROM 
  "players"
WHERE 
  "birth_year" 
BETWEEN "2000" AND "2015"
ORDER BY 
  "first_name", 
  "last_name" ASC;
