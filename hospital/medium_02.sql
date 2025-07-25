/*
Show unique first names from the patients table which only occurs once in the list.

For example, if two or more people are named 'John' in the first_name column then don't include their name in the output list. If only 1 person is named 'Leo' then include them in the output.
*/

SELECT patients.first_name AS first_name
FROM   patients
GROUP  BY first_name
HAVING Count(first_name) = 1 
