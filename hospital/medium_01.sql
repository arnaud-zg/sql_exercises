/*
Show unique birth years from patients and order them by ascending.
*/

SELECT Year(birth_date) AS birth_year
FROM   patients
GROUP  BY birth_year
ORDER  BY birth_date ASC 
