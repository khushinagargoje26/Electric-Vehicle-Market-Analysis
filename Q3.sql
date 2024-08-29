#write a SQL query to find the average rating and count of reviews for each Model_ID, 
#and list the top 5 models with the highest average rating.
 SELECT 
    Model_ID,
    AVG(Rating) AS Average_ratings,
    COUNT(review_ID) no_of_reviews
FROM
    customer_reviews
GROUP BY Model_ID
ORDER BY Average_ratings desc
LIMIT 5;