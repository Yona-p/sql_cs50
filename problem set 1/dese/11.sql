-- 11.sql
-- Is there a relationship between school expenditures and graduation rates? In 11.sql, write a SQL query to display the names of schools, their per-pupil expenditure, and their graduation rate. Sort the schools from greatest per-pupil expenditure to least. If two schools have the same per-pupil expenditure, sort by school name.

--  You should assume a school spends the same amount per-pupil their district as a whole spends.

SELECT 
  "name",
  "per_pupil_expenditure", 
  "graduated"
FROM 
  "schools" AS "s"
INNER JOIN 
  "graduation_rates" AS "g" ON
  "g"."school_id" = "s"."id"
INNER JOIN
  "expenditures" AS "e" ON
  "s"."district_id" = "e"."district_id"
ORDER BY 
  "per_pupil_expenditure" DESC, 
  "name" ASC;
