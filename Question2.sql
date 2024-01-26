
select * from forquerying2;

SELECT EXTRACT(MONTH FROM dates::timestamp) AS extracted_month
FROM forquerying2;

-- Which month in 2022 has had the highest revenue?

-- answering question 2 -- prints month as number 8 = august 

SELECT EXTRACT(MONTH FROM dates::timestamp) AS month,
       SUM(sale_price) AS total_revenue
FROM forquerying2
WHERE EXTRACT(YEAR FROM dates::timestamp) = 2022
GROUP BY EXTRACT(MONTH FROM dates::timestamp)
ORDER BY total_revenue DESC
LIMIT 1;

