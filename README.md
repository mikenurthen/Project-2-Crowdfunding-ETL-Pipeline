# Project 2 - Crowdfunding ETL Pipeline

## Introduction
This project processed crowdfunding data from Excel files and transformed it into a structured database using Python and PostgreSQL.

## Data Processing Steps

### Category and Subcategory DataFrames
- Created a category DataFrame containing "category_id" and "category" columns from the crowdfunding.xlsx data.
- Exported the category DataFrame as category.csv.
- Created a subcategory DataFrame with "subcategory_id" and "subcategory" columns from the crowdfunding.xlsx data.
- Exported the subcategory DataFrame as subcategory.csv.

### Campaign DataFrame
- Extracted data from crowdfunding.xlsx to create a campaign DataFrame with specified columns such as "cf_id", "contact_id", "company_name", etc.
- Converted data types and renamed columns as necessary.
- Exported the campaign DataFrame as campaign.csv.

### Contacts DataFrame
- Option 1: Utilized Python dictionary methods to iterate through the contacts.xlsx DataFrame, converted each row to a dictionary, split the "name" column value into first and last names, and exported the DataFrame as contacts.csv.
- Option 2: Used regular expressions to extract columns "contact_id", "name", and "email", split each "name" column value into first and last names, and exported the DataFrame as contacts.csv.

### Crowdfunding Database Creation
- Sketched an Entity-Relationship-Diagram (ERD) based on the provided CSV files using Quick DBD (https://www.quickdatabasediagrams.com).
- Created a table schema for each CSV file specifying data types, primary keys, foreign keys, and constraints.
- Saved the database schema as crowdfunding_db_schema.sql.
- Created a new PostgreSQL database named crowdfunding_db and tables in the correct order based on the schema.
- Verified table creation and imported CSV data into corresponding SQL tables.

## Contributors
The code and visualizations contained in this repository were created through equal efforts by Patrick Dean, Kiet Hoang, Jordan Mayville, Fara Nagahvi, and Michael Nurthen.
