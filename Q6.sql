#Write a SQL query to find the correlation between Battery_Type and Revenue in the Sales_Data table.
#Calculate the average revenue generated for each Battery_Type from the Battery_Performance table.
SELECT 
    bp.Battery_Type, 
    AVG(sd.Revenue) AS Average_Revenue
FROM Sales_Data sd
JOIN Battery_Performance bp ON sd.Model_ID = bp.Model_ID
GROUP BY bp.Battery_Type;
