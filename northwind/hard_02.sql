/*
Show how much money the company lost due to giving discounts each year, order the years from most recent to least recent. Round to 2 decimal places
*/

SELECT Year(orders.order_date) AS order_year,
       Round(Sum(order_details.discount * order_details.quantity *
                 products.unit_price)
       , 2)                    AS discount_amount
FROM   orders
       LEFT JOIN order_details
              ON orders.order_id = order_details.order_id
       LEFT JOIN products
              ON order_details.product_id = products.product_id
GROUP  BY Year(orders.order_date)
ORDER  BY Year(orders.order_date) DESC 