-- trips: trips information
-- riders: user data
-- cars: autonomous cars

SELECT * FROM trips;
 
SELECT * FROM riders;
 
SELECT * FROM cars;



-- What’s the primary key of trips?

-- What’s the primary key of riders?

-- What’s the primary key of cars?

id, id, id

-- Try out a simple cross join between riders and cars.

-- Is the result useful?
SELECT
  *
FROM riders
CROSS JOIN cars;

-- Find the columns to join between trips and riders and combine the two tables using a LEFT JOIN.
SELECT
  *
FROM trips
LEFT JOIN riders ON trips.rider_id = riders.id;

-- Find the columns to join on and combine the trips and cars table using an INNER JOIN.
SELECT
  *
FROM trips
JOIN cars ON trips.car_id = cars.id;

-- UNION due to new users in the month

SELECT *
FROM riders
UNION
SELECT *
FROM riders2;

-- What is the average cost for a trip?

SELECT
  AVG(cost) as average_cost
FROM trips;

-- Find all the riders who have used Lyft less than 500 times!
SELECT
  username,
  total_trips
FROM riders
WHERE total_trips < 500
UNION 
SELECT
  username,
  total_trips
FROM riders
WHERE total_trips < 500;

-- Calculate the number of cars that are active.
SELECT
  COUNT(*) AS num_of_active_cars
FROM cars
WHERE status = 'active';

-- Write a query that finds the two cars that have the highest trips_completed.



