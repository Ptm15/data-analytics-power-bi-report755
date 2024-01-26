
SELECT * FROM forquerying2;

-- Create a view where the rows are the store types and the columns are the total sales, percentage of total sales and the count of orders 


CREATE VIEW sales_summary_stores AS
SELECT 
    store_type,
    SUM(sale_price) AS total_sales,
    (SUM(sale_price) / (SELECT SUM(sale_price) FROM forquerying2)) * 100 AS percentage_of_total_sales,
    COUNT(*) AS order_count
FROM forquerying2
GROUP BY store_type;

-- Selecting everything from that view to show that query above works 

SELECT * from sales_summary_stores;