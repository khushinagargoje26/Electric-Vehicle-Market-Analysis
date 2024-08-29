#Write a SQL query to analyze how the Warranty_Period affects Degradation_Rate in the Battery_Performance table.
#Calculate the average Degradation_Rate for each Warranty_Period.
SELECT 
    Warranty_Period, 
    AVG(Degradation_Rate) AS Average_Degradation_Rate
FROM Battery_Performance
GROUP BY Warranty_Period;
