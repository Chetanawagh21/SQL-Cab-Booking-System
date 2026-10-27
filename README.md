# SQL-Cab-Booking-System
SQL project for cab booking management and booking data analysis.
# 🚖 SQL Cab Booking System

<p align="center">
  <strong>A SQL-Based Database Management & Data Analysis Project</strong>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/SQL-Database-blue?style=for-the-badge&logo=mysql&logoColor=white" alt="SQL Badge"/>
  <img src="https://img.shields.io/badge/Project-Data%20Analysis-orange?style=for-the-badge" alt="Data Analysis Badge"/>
  <img src="https://img.shields.io/badge/Status-Completed-success?style=for-the-badge" alt="Project Status"/>
</p>

---

## 📌 Project Overview

The **SQL Cab Booking System** is a database management and data analysis project designed to manage cab booking operations efficiently.

This project uses SQL to organize customer information, driver details, cab types, trip records, and customer feedback. It also analyzes booking trends, completed trips, and cancellation patterns to generate useful business insights.

## 🎯 Project Objectives

- 🚕 Manage customer, driver, and cab information.
- 📅 Maintain cab booking and trip records.
- 💰 Analyze trip fares and travel distances.
- 📊 Identify customers with the highest number of completed bookings.
- ❌ Analyze booking cancellations and cancellation percentages.
- 📈 Understand booking patterns across different days.
- ⭐ Store driver ratings and customer feedback.

## 🗄️ Database Schema

The project contains five relational database tables:

| Table | Description |
|---|---|
| 👤 `Customers` | Customer IDs and names |
| 🚘 `Drivers` | Driver details and ratings |
| 🚖 `Cabs` | Cab IDs and vehicle types |
| 📋 `Bookings` | Booking times, trip details, fares, status, and locations |
| ⭐ `Feedback` | Customer ratings and comments |

## 🛠️ Technologies & SQL Concepts

**Technology:** SQL (MySQL-compatible syntax)

**SQL concepts used:**

- Database and table creation
- `PRIMARY KEY` and `FOREIGN KEY`
- `INSERT INTO` and `SELECT`
- `WHERE`, `ORDER BY`, and `GROUP BY`
- Aggregate functions: `COUNT()` and `SUM()`
- Conditional logic using `CASE WHEN`
- Group filtering using `HAVING`
- Date functions: `DAYNAME()` and `DAYOFWEEK()`
- Cancellation percentage calculations

## 📊 Key Business Analysis

### 1. Completed Bookings
Identify the number of completed trips for each customer.

### 2. Top Customers
Find customers with the highest number of completed bookings.

### 3. Cancellation Analysis
Calculate booking cancellation percentages and identify customers whose cancellation rate exceeds 30%.

### 4. Booking Trends
Analyze booking volume by day of the week to understand demand patterns.

### 5. Customer Feedback
Review customer ratings and comments to understand service quality.

## 📁 Project Structure

```text
SQL-Cab-Booking-System/
│
├── cab_booking.sql
└── README.md
```

- 📄 `cab_booking.sql` — Database creation, sample records, and analysis queries.
- 📘 `README.md` — Project overview, documentation, and usage instructions.

## ▶️ How to Run the Project

1. Install or open MySQL Workbench.
2. Download or clone this repository.
3. Open the `cab_booking.sql` file in your SQL editor.
4. Execute the database creation, table creation, and sample data statements in order.
5. Run the analysis queries to explore the results.

## 💡 Learning Outcomes

- Understanding relational database design.
- Working with primary and foreign key relationships.
- Writing SQL queries for real-world business scenarios.
- Performing data aggregation and conditional analysis.
- Extracting insights from booking and cancellation data.

👩‍💻 Author

Chetana Wagh

📌 Aspiring Data Analyst | SQL | Excel | Power BI | Tableau

