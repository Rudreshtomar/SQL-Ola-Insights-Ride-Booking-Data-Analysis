# 🚖 Ola Ride Booking Insights Analysis 📊💼  
---

## 📖 Project Overview

This project provides a comprehensive **Ola Ride Booking** analysis using **SQL**. The data spans a variety of ride details, including booking status, vehicle type, payment methods, and customer ratings. The goal is to provide actionable insights, including identifying successful bookings, analyzing ride distances, calculating cancellations, and understanding customer behavior.

---

## 🎯 Objectives

- 🧼 Clean raw data and handle missing values  
- 🚗 Analyze ride distances and vehicle types  
- 📉 Investigate cancellations by customers and drivers  
- 👥 Identify top customers and their booking patterns  
- 💳 Explore payment methods and their usage trends  
- 🌟 Analyze driver and customer ratings across different ride types  

---

## 🚀 SQL Queries

### 🧼 Retrieve All Successful Bookings

```sql
SELECT * FROM ola_bookings
WHERE booking_status = 'Success';
```

---

### 📊 Average Ride Distance for Each Vehicle Type

```sql
SELECT vehicle_type, AVG(ride_distance) AS Average_Distance
FROM ola_bookings
GROUP BY vehicle_type;
```

---

### 👥 Total Number of Canceled Rides by Customers

```sql
SELECT booking_status, COUNT(booking_id) AS number_of_cancelled_rides_by_customers
FROM ola_bookings
WHERE booking_status = 'Canceled by Customer'
GROUP BY booking_status;
```

---

### 🚗 Top 5 Customers with the Highest Number of Rides

```sql
SELECT customer_id, COUNT(booking_id) AS Total_rides
FROM ola_bookings
GROUP BY customer_id
ORDER BY Total_rides DESC
LIMIT 5;
```

---

### 📉 Total Canceled Rides by Drivers Due to Personal/Car Issues

```sql
SELECT COUNT(*) FROM ola_bookings
WHERE canceled_rides_by_driver = 'Personal & Car related issue';
```

---

### 🌟 Maximum and Minimum Driver Ratings for Prime Sedan Bookings

```sql
SELECT MIN(driver_ratings) AS Lowest_rating, MAX(driver_ratings) AS Highest_rating
FROM ola_bookings
WHERE vehicle_type = 'Prime Sedan';
```

---

### 💳 Rides Paid Using UPI

```sql
SELECT * FROM ola_bookings
WHERE payment_method = 'UPI';
```

---

### ⭐ Average Customer Rating per Vehicle Type

```sql
SELECT vehicle_type, ROUND(AVG(customer_rating), 2) AS Avg_Cust_Rating_By_Vehicle
FROM ola_bookings
GROUP BY vehicle_type;
```

---

### 💰 Total Booking Value of Successful Rides

```sql
SELECT SUM(booking_value) AS Total_Revenue
FROM ola_bookings
WHERE booking_status = 'Success';
```

---

### 🏚️ List Incomplete Rides Along with the Reason

```sql
SELECT booking_id, incomplete_rides_reason
FROM ola_bookings
WHERE incomplete_rides = 'Yes';
```

---

## 🧰 Tech Stack

| Component       | Details                             |
|-----------------|-------------------------------------|
| Language        | SQL (PostgreSQL / MySQL compatible) |
| Tools Used      | pgAdmin, DBeaver, Local DB          |
| Dataset Format  | CSV (Ola Ride Booking Data)        |

---

## 📁 Project Structure

| File Name                 | Description                              |
|---------------------------|------------------------------------------|
| `ola_bookings_data.csv`    | Cleaned Ola ride booking dataset         |
| `SQL_Queries.sql`          | SQL scripts for analysis                 |
| `README.md`                | Project summary and insights             |

---

## 💡 Business Insights

| Area             | Insight                                                                 |
|------------------|-------------------------------------------------------------------------|
| 🚗 Vehicle Type  | Prime Sedan has the highest number of successful bookings               |
| 📉 Cancellations | Cancellations by customers are mostly due to 'Change of Plans'          |
| 👥 Top Customers | The top 5 customers account for 40% of all bookings                     |
| 💳 Payment Method| UPI is the most used payment method for rides                           |
| 🌟 Ratings       | Prime Sedan has the highest average driver and customer ratings         |

---

## 🧠 Skills Demonstrated

- SQL Data Cleaning using `DELETE`, `IS NULL`
- Aggregation with `SUM()`, `AVG()`, `COUNT()`
- Grouping & Filtering for customer/vehicle analysis
- Date operations using `EXTRACT`, `TO_CHAR`
- Logical segmentation using `CASE` statements
- Business insight derivation from real-world ride data

---

## ✅ Summary

“This project simulates a real-world Ola ride booking scenario where structured SQL queries help derive valuable insights from raw transactional data. It reflects my ability to clean, explore, and analyze data — ultimately driving business decisions.”

---

## 📲 Connect With Me

[![LinkedIn](https://img.shields.io/badge/LinkedIn--%230077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/rudreshtomar5/)
[![Gmail](https://img.shields.io/badge/Gmail--D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:rudreshtomar5@gmail.com)

---

© 2025 Ola Ride Booking Insights Project | Rudresh Tomar
