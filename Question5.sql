
SELECT * FROM forquerying2;

-- Which product category generated the most profit for the "Wiltshire, UK" region in 2021?

SELECT category,
       SUM(sale_price) AS total_profit
FROM forquerying2
WHERE full_region = 'Wiltshire, UK' 
      AND EXTRACT(YEAR FROM dates::timestamp) = 2021 
GROUP BY category
ORDER BY total_profit DESC
LIMIT 1;

-- This actually calculates the profit where as above was returning the sum of the sales in that region for that year 

SELECT category,
       SUM(sale_price - cost_price) AS total_profit
FROM forquerying2
WHERE full_region = 'Wiltshire, UK' 
      AND EXTRACT(YEAR FROM dates::timestamp) = 2021 
GROUP BY category
ORDER BY total_profit DESC
LIMIT 1;

