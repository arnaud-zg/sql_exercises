/* 
Show the ProductName, CompanyName, CategoryName from the products, suppliers, and categories table
*/

SELECT product_name,
       suppliers.company_name,
       categories.category_name
FROM   products
       LEFT JOIN suppliers
              ON products.supplier_id = suppliers.supplier_id
       LEFT JOIN categories
              ON products.category_id = categories.category_id 