-- Question 1
SELECT *
FROM actor
WHERE last_name = 'Wahlberg';
-- Answer: 2

-- Question 2
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
-- Answer: 5,607

-- Question 3
SELECT film_id
FROM inventory
GROUP BY film_id
HAVING COUNT(film_id) = 7;
-- Answer: 116 total (see query for all film_ids)

-- Question 4
SELECT *
FROM customer 
WHERE first_name = 'Willie';
-- Answer: 2

-- Question 5
SELECT COUNT(staff_id)
FROM rental
GROUP BY staff_id;
-- Answer: Staff_id 1 sold the most rentals(8,040) 

-- Question 6
SELECT district
FROM address
GROUP BY district;
-- Answer: 378 unique districts

-- Question 7
SELECT film_id, COUNT(film_id)
FROM film_actor
GROUP BY film_id
ORDER BY count DESC;
-- Answer: Film_id 508 has the most actors in it

-- Question 8
SELECT store_id, COUNT(*)
FROM customer
WHERE last_name LIKE '%es'
GROUP BY store_id
ORDER BY store_id;
-- Answer: 13 customers have a last name ending in an 'es'

-- Question 9
SELECT amount, COUNT(amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(amount) > 250;
-- Answer: 3 (0.99, 2.99, 4.99)

-- Question 10
SELECT rating, COUNT(*)
FROM film
GROUP BY rating;
-- Answer: 5 rating categories and PG-13 has the most movies total (223 movies)




