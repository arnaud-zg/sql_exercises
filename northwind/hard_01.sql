/*
Show the employee's first_name and last_name, a "num_orders" column with a count of the orders taken, and a column called "Shipped" that displays "On Time" if the order shipped_date is less or equal to the required_date, "Late" if the order shipped late, "Not Shipped" if shipped_date is null.
Order by employee last_name, then by first_name, and then descending by number of orders.
*/

SELECT first_name,
       last_name,
       Count(orders.order_id) AS num_orders,
       ( CASE
           WHEN orders.shipped_date <= orders.required_date THEN 'On Time'
           WHEN orders.shipped_date > orders.required_date THEN 'Late'
           WHEN orders.shipped_date IS NULL THEN 'Not Shipped'
         END )                AS 'shipped'
FROM   employees
       LEFT JOIN orders
              ON employees.employee_id = orders.employee_id
GROUP  BY employees.first_name,
          employees.last_name,
          shipped
ORDER  BY employees.last_name,
          employees.first_name,
          num_orders DESC 