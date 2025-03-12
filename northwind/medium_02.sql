/* 
Show the category_name and the average product unit price for each category rounded to 2 decimal places.
*/

SELECT category_name,
       Round(Avg(products.unit_price), 2) AS average_unit_price
FROM   categories
       LEFT JOIN products
              ON categories.category_id = products.category_id
GROUP  BY categories.category_name 