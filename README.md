## Overview of the Analysis

The objective of this analysis is to provide the Pewlett-Hackard HR Manager with the correct information to plan for upcoming retirements and ensuring that there are enough employees to fill the vacant positions.
To do so, data modelling, engineering and analysis techniques were used on data originally kept in Excel and CSV files which have been transferred in tables using SQL.

The analysis will provide the HR Manager with **the number of retiring employees per title** and **identify the employees who are eligible to participate in a mentorship program.**

The SQL concepts used in the analysis are comprised of:
- joining multiple data tables using common fields to the tables (known as primary keys) being joined
- using conditional statements to filter certain data out of the queries
- a SQL statement known as UNIQUE is being used to exclude duplicate data
- the data presented is being sorted using SQL statements
- the required data is being saved and provided to the HR department in Excel files in CSV  format.

## Retiring Employees Analysis Findings

The criteria set for retirement is based on employees born between January 1, 1952 and December 31, 1955. 

Applying those criteria to the current employee list generates the following results:

1.  A total of 133,766 employees met the retirement age criteria that were set. 
    This data is saved in the attached CSV file "retirement_titles". 
    However further filtering of this data is required due to employees having multiple job titles over the years at Pewlett Hackard – thus creating duplicates that need to be filtered out.
    https://github.com/BLuckoo/Module_7_Challenge/blob/main/retirement_titles.csv 
    

2. The duplicate records were removed from the “retirement_titles" by selecting employees based on their current job titles. The application of this filter resulted in the list of retiring employees to be narrowed down to 90,398 employees. 
    This data is saved in the attached CSV file "unique_titles".
   
   
3. The list of 90,398 retiring employees has been grouped by job title as shown in the table below (also found in the attached "retiring_titles.CSV" file):
     
     ![image](https://user-images.githubusercontent.com/82583576/121682005-8247b580-ca89-11eb-999b-b308c021c8c9.png)

    The 90,398 employees are in the departments as illustrated below:
    
    ![image](https://user-images.githubusercontent.com/82583576/121755629-a9cc6b80-cae5-11eb-91a7-462428096d18.png)


    

4.  To plan for the future, the HR Manager has been provided with a list of employees who were born between January 1, 1965 and December 31, 1965 who are eligible for a mentorship program. There is a total of 1,549 employees with different job titles who are eligible for the mentorship program.
    This list is saved in the attached "mentorship_eligibility.CSV" file.
    
    
## Summary of Analysis
   
   - In order for Pewlett Hackard to continue its business in this current state – it will require the replacement of 90,398 positions.
   
     The roles to be filled, sorted by department are illustrated in the chart below:
   
     ![image](https://user-images.githubusercontent.com/82583576/121759939-223b2880-caf6-11eb-9512-ff25478fcaab.png)
   
     ![image](https://user-images.githubusercontent.com/82583576/121759960-3ed76080-caf6-11eb-96eb-a7a7e8ac8009.png)

  - **Of the pool of retirees, 45,397 (almost 50% of the retirees) have an engineering job title. Special focus should be applied to the mentoring and hiring of this category of employees.**
    
  - Using the criteria set by the company, 1,549 employees have been identified as potential mentors. This list is summarized below, showing the number of eligible mentors by department and by role.
    
     ![image](https://user-images.githubusercontent.com/82583576/121759378-6da00780-caf3-11eb-9474-52a530333327.png)
     
   - There should be a review of the criteria used to be an eligible mentor as there are some positions without eligible mentors. This is particularly the case in the customer service and research department as illustrated in the attached "Retiring_employees_vs_Eligible_mentors.xlsx" file.
      https://github.com/BLuckoo/Module_7_Challenge/blob/main/Retiring_employees_vs_Eligible_mentors.xlsx 
   
   
   - The average percentage of eligible mentors compared to total number of retiring employees by department amount to 1.7%. The Human Resources department of Pewlett Hackard will have to decide if that percentage is appropriate.    
   
**To conclude, this analysis has provided a lot of information to Pewlett Hackard and we will be pleased to provide further analysis if required.**











