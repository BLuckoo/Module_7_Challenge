## Overview of the Analysis

The objective of this analysis is to provide the Pewlett-Hackard HR Manager with the correct information to plan for upcoming retirements and ensuring that there are enough employees to fill the upcoming vacant positions.
To do so, data modelling, engineering and analysis techniques will be used on data originally kept in Excel and CSV files which have been transferred in tables using SQL.

The analysis will provide the HR Manager with **the number of retiring employees per title** and **identify the employees who are elligible to participate in a mentorship program.**

The SQL concepts used in the analysis is comprised of:
- joining multiple data tables using common fields to the tables (known as primary keys) being joined
- using conditional statements to filter certain data out of the queries
- a SQL statement known as UNIQUE is being used to exclude duplicate data
- the data presented is being sorted using SQL statements
- the required data is being saved and provided to the HR department in Excel files in CSV  format.

## Retiring Employee Analysis Findings

The retirement age criteria is for employees born between January 1, 1952 and December 31, 1955.
Using the aboove criteria on the current employees list, the following are the results:

1.  The total number of retiring employees who were born within the retirement age criteria amounts to 133,776 employees.
    This data is saved in the attached CSV file "retirement_titles").
    However, upon further analysis of the data, it was discovered that because the employees have had multiple titles over the years at Pewlett Hackard, further filtering of the data is required.
    
2. The duplicates were removed from the "retire_titles" by selecting the employees based on their current titles. 
   This resulted in the list of retiring employees to amount to 90,398 employees.
   This data is saved in the attached CSV file "unique_titles".
   
3. The list of 90,398 retiring employees has further been summarized into a table showing the number of employees retiring grouped by title and is as follows (also found in the attached "retiring_titles.CSV" file:
     
     ![image](https://user-images.githubusercontent.com/82583576/121682005-8247b580-ca89-11eb-999b-b308c021c8c9.png)

       
   










## Summary of the Analysis

