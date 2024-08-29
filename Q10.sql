#Write a SQL query to compare the average Cost of Maintenance_Records with the average Revenue in Sales_Data for each country. 
#Provide the results for countries where the average maintenance cost is greater than the average revenue.
SELECT 
    amc.Country, 
    amc.Avg_Maintenance_Cost, 
    ar.Avg_Revenue
FROM (
    SELECT 
        sd.Country, 
        AVG(mr.Cost) AS Avg_Maintenance_Cost
    FROM Maintenance_Records mr
    JOIN Sales_Data sd ON mr.Model_ID = sd.Model_ID
    GROUP BY sd.Country
) amc
JOIN (
    SELECT 
        Country, 
        AVG(Revenue) AS Avg_Revenue
    FROM Sales_Data
    GROUP BY Country
) ar ON amc.Country = ar.Country;
