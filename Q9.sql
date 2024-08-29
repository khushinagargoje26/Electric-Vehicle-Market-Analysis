#Write a SQL query to calculate the average Rating for each Model_ID and identify the model with the most positive feedback. 
#Use Feedback to filter for positive reviews, assuming a positive review contains the word "great" or "excellent".
SELECT 
    Model_ID, 
    AVG(Rating) AS Average_Rating
FROM Customer_Reviews
WHERE Feedback LIKE '%great%' OR Feedback LIKE '%excellent%'
GROUP BY Model_ID
ORDER BY Average_Rating DESC
LIMIT 1;
