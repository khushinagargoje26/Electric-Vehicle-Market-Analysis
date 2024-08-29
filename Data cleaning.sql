-- Remove Duplicates:
DELETE t1 FROM Sales_Data t1
INNER JOIN Sales_Data t2 
ON t1.Model_ID = t2.Model_ID 
AND t1.Sale_Date = t2.Sale_Date 
AND t1.Country = t2.Country 
AND t1.Sale_ID < t2.Sale_ID;

-- Validate Foreign Keys:
SELECT DISTINCT Model_ID 
FROM Sales_Data 
WHERE Model_ID NOT IN (SELECT Model_ID FROM Vehicle_Models);
-- Check for Null Values:
SELECT * 
FROM Charging_Stations 
WHERE Number_of_Chargers IS NULL OR Operating_Hours IS NULL;

-- Correct Data Type Mismatches:
SELECT * 
FROM Battery_Performance 
WHERE Replacement_Cost < 0;

-- Check Consistency in Dates:
SELECT * 
FROM Government_Incentives 
WHERE End_Date < Start_Date;

