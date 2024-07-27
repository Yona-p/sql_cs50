--4.sql
--You need to make a recommendation about which players the team should consider hiring. With the team’s dwindling budget, the general manager wants to know which players were paid the lowest salaries in 2001. In 4.sql, write a SQL query to find the 50 players paid the least in 2001.

--Sort players by salary, lowest to highest.
--If two players have the same salary, sort alphabetically by first name and then by last name.
--If two players have the same first and last name, sort by player ID.
--Your query should return three columns, one for players’ first names, one for their last names, and one for their salaries

SELECT 
  "first_name", 
  "last_name", 
  "salary" 
FROM 
  "players" AS "a"
JOIN 
  "salaries" AS "b" ON
  "a"."id" = "b"."player_id"
WHERE 
  "year" = 2001
ORDER BY 
  "salary",
  "first_name", 
  "last_name", 
  "player_id"  ASC 
LIMIT 50;
