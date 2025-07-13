/* 
Show all allergies ordered by popularity. Remove NULL values from query.
*/

SELECT   allergies,
         Count(allergies) AS total_diagnosis
FROM     patients
WHERE    patients.allergies NOT null
GROUP BY patients.allergies
ORDER BY total_diagnosis DESC
