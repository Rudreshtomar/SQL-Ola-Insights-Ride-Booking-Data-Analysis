CREATE TABLE ola_bookings (
    date DATE,
    time TIME,
    booking_id TEXT,
    booking_status TEXT,
    customer_id TEXT,
    vehicle_type TEXT,
    pickup_location TEXT,
    drop_location TEXT,
    v_tat INTEGER,
    c_tat INTEGER,
    canceled_rides_by_customer TEXT,
    canceled_rides_by_driver TEXT, 
    incomplete_rides TEXT,
    incomplete_rides_reason TEXT,
    booking_value NUMERIC,
    payment_method TEXT,
    ride_distance NUMERIC,
    driver_ratings NUMERIC,
    customer_rating NUMERIC
);


--Q1. Retrieve all successful bookings:

SELECT * FROM ola_bookings
WHERE booking_status = 'Success'

--Q2. Find the average ride distance for each vehicle type:

SELECT vehicle_type, AVG(ride_distance)
AS Average_Distance FROM ola_bookings
GROUP BY 1

--Q3. Get the total number of cancelled rides by customers:

SELECT booking_status,
COUNT(booking_id) AS number_of_cancelled_rides_by_customers
FROM ola_bookings
WHERE booking_status = 'Canceled by Customer'
GROUP BY 1

--Q4. List the top 5 customers who booked the highest number of rides:

SELECT customer_id,
COUNT(booking_id) as Total_rides
FROM ola_bookings
GROUP BY 1
ORDER BY 2 DESC LIMIT 5;


--Q5. Get the number of rides cancelled by drivers due to personal and car-related issues:

SELECT COUNT (*) FROM ola_bookings
WHERE canceled_rides_by_driver = 'Personal & Car related issue'


--Q6. Find the maximum and minimum driver ratings for Prime Sedan bookings:

SELECT MIN(driver_ratings) AS Lowest_rating,
MAX(driver_ratings) AS Highest_rating
FROM ola_bookings
WHERE vehicle_type = 'Prime Sedan'

--Q7. Retrieve all rides where payment was made using UPI:

SELECT * FROM ola_bookings
WHERE payment_method = 'UPI'

--Q8. Find the average customer rating per vehicle type:

SELECT vehicle_type,
ROUND(AVG(customer_rating),2) AS Avg_Cust_Rating_By_Vehicle
FROM ola_bookings
GROUP BY 1

--Q9. Calculate the total booking value of rides completed successfully:

SELECT SUM(booking_value) 
AS Total_Revenue 
FROM ola_bookings
WHERE booking_status = 'Success'

--Q10. List all incomplete rides along with the reason:
SELECT booking_id, incomplete_rides_reason
FROM ola_bookings
WHERE incomplete_rides = 'Yes'



