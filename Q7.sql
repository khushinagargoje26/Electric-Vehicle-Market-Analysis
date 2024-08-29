-- Write a SQL query to analyze the impact of the number of charging stations (Number_of_Chargers) on the sales volume. 
-- Find the average number of chargers for countries where the sales volume is above the average sales volume.

SELECT 
    SUBSTRING_INDEX(cs.Location, ', ', -1) AS Country, 
    AVG(cs.Number_of_Chargers) AS Avg_Number_of_Chargers
FROM Charging_Stations cs
JOIN Sales_Data sd ON SUBSTRING_INDEX(cs.Location, ', ', -1) = sd.Country
WHERE sd.Units_Sold > (
    SELECT AVG(Units_Sold) 
    FROM Sales_Data
)
GROUP BY SUBSTRING_INDEX(cs.Location, ', ', -1);
