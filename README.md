# Crime Data Analysis Project

## Project Overview

This project analyzes crime data to identify crime patterns, offender demographics, and crime trends over time.
The goal is to extract useful insights that can help understand crime distribution and behavior.

## Tools Used

* Python (Data Cleaning)
* SQL (Data Analysis)
* Power BI (Data Visualization)

## Data Cleaning

Using Python and pandas:

* Checked missing values
* Removed duplicate records
* Converted **Crime Date** to datetime format
* Converted **Latitude** and **Longitude** to numeric values
* Verified dataset structure using `info()`

## Data Analysis (SQL)

Several SQL queries were used to analyze the data, including:

* Total number of crimes
* Crime distribution by type
* Solved vs unsolved crimes
* Crime by gender
* Crime by ethnicity
* Crime trends by day, month, and year

## Dashboard

The dashboard created in Power BI visualizes:

* Crime types distribution
* Crime trends over time
* Offender demographics
* Role distribution (Offender, Victim, etc.)

## Key Insights

* Some crime types occur more frequently than others.
* Certain demographic groups appear more frequently in offender data.
* Crime incidents show trends over time.

## Files in this Repository

* `data_cleaning.py` → Python script used for data cleaning
* `crime_analysis.sql` → SQL queries used for analysis
* `crime_dashboard.pbix` → Power BI dashboard file
* `dashboard.png` → Screenshot of the dashboard
