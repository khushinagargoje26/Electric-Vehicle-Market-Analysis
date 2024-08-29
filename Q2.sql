-- Write a SQL query to analyze the relationship between the presence of government incentives and the number of units sold. 
-- Calculate the average units sold for models with incentives versus those without.
SELECT 
    i.Country,
    COUNT(s.Sale_ID) AS Units_Sold_With_Incentive,
    (SELECT COUNT(Sale_ID) FROM Sales_Data s 
     WHERE s.Model_ID NOT IN (SELECT Eligible_Models FROM Government_Incentives i 
                              WHERE i.Country = s.Country)) AS Units_Sold_Without_Incentive
FROM Sales_Data s
JOIN Government_Incentives i ON s.Country = i.Country
GROUP BY i.Country;
