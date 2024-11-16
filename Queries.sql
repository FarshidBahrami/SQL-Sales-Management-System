-- Question 1:
-- Retrieve the names of employees who have made sales totaling over $5,000. 
-- List their full names, total sales amount, and the number of sales they have made.

SELECT 
    CONCAT(e.first_name, '', e.last_name) as full_name,
    SUM(s.total_amount) AS totl_sales,
    COUNT(s.sale_id) AS total_quantity_sales
FROM employee e
INNER JOIN sales s ON e.employee_id = s.employee_id
GROUP BY e.first_name, e.last_name
HAVING SUM(s.total_amount) > 5000;

-- Question 2:
-- Find the product category that generated the highest total revenue. 
-- Display the category name, total revenue, 
-- and the total number of units sold for that category.
select p.category,
	   Count(p.product_id) as total_product,
       sum(s.total_amount) as total_sales
from product p
inner join sales s on p.product_id = s.product_id
group by p.category;


-- Question 3:
-- List the top 3 best-selling products in terms of quantity sold. 
-- Show the product name, total quantity sold, 
-- and the total revenue generated from those sales.
select p.product_name,
       sum(s.quantity) as total_quantity_sales,
	   sum(s.total_amount) as total_revenue_generated
from product p
inner join sales s on p.product_id = s.product_id
group by p.product_id
order by total_quantity_sales DESC
LIMIT 3;