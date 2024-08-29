-- Write a SQL query to calculate the total maintenance cost for each Model_ID over the last year. 
-- Provide the results along with the number of maintenance records and the average cost per maintenance.
SELECT 
    Model_ID, 
    SUM(Cost) AS Total_Maintenance_Cost, 
    COUNT(Record_ID) AS Number_of_Maintenance_Records,
    AVG(Cost) AS Average_Cost_Per_Maintenance
FROM Maintenance_Records
WHERE Service_Date >= CURDATE() - INTERVAL 1 YEAR
GROUP BY Model_ID;
