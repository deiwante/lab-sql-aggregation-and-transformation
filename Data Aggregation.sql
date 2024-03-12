

-- 1. 
SELECT  
MIN(length) AS 'min_duration',
MAX(length) AS 'max_duration'
FROM film;

SELECT FLOOR(AVG(length)) FROM film;
SELECT ROUND(AVG(length)/60) FROM film;

-- 2
SELECT  
MIN(rental_date),
MAX(rental_date)
FROM rental;

SELECT DATEDIFF('2006-02-14 15:16:03', '2005-05-24 22:53:30');

SELECT DATE_FORMAT(CONVERT(rental_date, DATE), '%Y-%M-%D')  
FROM rental;

SELECT 
DATE_FORMAT(CONVERT(rental_date, DATE), '%M') AS 'rental_month',
DATE_FORMAT(CONVERT(rental_date, DATE), '%D') AS 'rental_day'
FROM rental
LIMIT 20; 

-- 3 
SELECT
title,
IFNULL(rental_duration ,'Not Available')
FROM film
ORDER BY title;


-- Challenge 2 

SELECT COUNT(*) FROM film;

SELECT rating,
SUM(film_id) AS Total_amount
FROM film
GROUP BY rating 
ORDER BY Total_amount DESC;

-- 2
SELECT rating,
ROUND(AVG(length),2) AS Movie_mean
FROM film
GROUP BY rating
ORDER BY Movie_mean DESC;

SELECT rating,
ROUND(AVG(length),2) AS Movie_mean
FROM film
GROUP BY rating
HAVING Movie_mean >120
ORDER BY Movie_mean DESC;