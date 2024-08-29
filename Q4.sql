-- Write a SQL query to find the correlation between Battery_Type and Energy_Consumption.
--  Provide the average Energy_Consumption for each type of battery and compare it with the Replacement_Cost.
SELECT 
    bp.Battery_Type, 
    AVG(e.Energy_Consumption) AS Average_Energy_Consumption,
    AVG(bp.Replacement_Cost) AS Average_Replacement_Cost
FROM Environmental_Impact e
JOIN Battery_Performance bp ON e.Model_ID = bp.Model_ID
JOIN Vehicle_Models vm ON bp.Model_ID = vm.Model_ID
GROUP BY bp.Battery_Type;
