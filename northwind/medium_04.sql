/*
Show the total amount of orders for each year/month.
*/

SELECT Year(order_date)       AS order_year,
       Month(order_date)      AS order_month,
       Count(orders.order_id) AS no_of_orders
FROM   orders
GROUP  BY order_year,
          order_month 