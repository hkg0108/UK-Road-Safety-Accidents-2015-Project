# UK-Road-Safety-Accidents-2015-Project
python and Mysql (Data Analysis)


**Overview**

This project involves analyzing the UK Road Safety data from 2015 to understand the severity of accidents involving different vehicle types, with a particular focus on motorcycles. The project utilizes MySQL for data storage and manipulation, and Python (with pymysql) for executing SQL queries and performing data analysis.

**Database Schema**

accident

accident_index: Unique identifier for each accident (VARCHAR).

accident_severity: Severity level of the accident (INT).



vehicles

accident_index: Unique identifier linking to the accident table (VARCHAR).

vehicle_type: Type of vehicle involved in the accident (VARCHAR).



vehicle_types

vehicle_code: Unique code representing a vehicle type (INT).

vehicle_type: Description of the vehicle type (VARCHAR).



accidents_median

vehicle_types: Type of vehicle (VARCHAR).

severity: Median severity of accidents for the vehicle type (INT).



**Key SQL Queries**

**Accident Severity and Total Accidents per Vehicle Type:** Retrieves accident severity and the total number of accidents grouped by vehicle type.

**Average Severity by Vehicle Type:** Computes the average severity of accidents by vehicle type.

**Average Severity and Total Accidents by Motorcycle:** Filters the data to focus on motorcycles and calculates the average severity and the total number of accidents.


**Python Integration**
Python **(pymysql**) is used to connect to the MySQL database, execute the SQL queries, and process the results. The key operations include:

Fetching vehicle types that contain "motorcycle".
Calculating the median severity for accidents involving motorcycles.
Inserting the calculated median values into the accidents_median table.


**Data Loading**

Data from CSV files (Accidents_2015.csv, Vehicles_2015.csv, vehicle_types.csv) is loaded into the respective MySQL tables using the LOAD DATA INFILE command.


**Indexing**

Indexes are created on the accident_index column in both the accident and vehicles tables to optimize the performance of join operations in SQL queries.


**Conclusion**

The project effectively demonstrates how to analyze road safety data using SQL and Python, with a specific focus on understanding the severity of accidents involving motorcycles. The methods and queries developed in this project can be extended or adapted for further analysis or applied to other datasets.
