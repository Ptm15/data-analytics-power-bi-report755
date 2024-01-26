
select * from forquerying2;


-- Which German store type had the highest revenue for 2022? 

SELECT store_type AS german_store_type,
       SUM(sale_price) AS total_revenue
FROM forquerying2
WHERE country = 'Germany'  
      AND EXTRACT(YEAR FROM dates::timestamp) = 2022  
GROUP BY store_type
ORDER BY total_revenue DESC
LIMIT 1;


