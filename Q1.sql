-- Write a SQL query to find the total revenue and average units sold for each Model_ID in each Country. 
-- Rank the models by total revenue and then by average units sold within each country.
SELECT 
    Country,
    SUM(revenue) AS total_Revenue,
    AVG(Units_Sold) AS Average_Units_Sold
FROM
    sales_data
GROUP BY Country , Model_ID
ORDER BY total_Revenue DESC , Average_Units_Sold DESC;