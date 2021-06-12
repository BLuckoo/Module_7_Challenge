-- Module 7 Challenge

-- Module 7 Challenge Deliverable 1

-- Number of Retiring employees by title
-- Export table into retirement_titles.csv

SELECT 	e.emp_no,
		e.first_name,
		e.last_name,
		t.title,
		t.from_date,
		t.to_date
INTO retiring_employees_titles			
FROM employees AS e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31' 
ORDER BY e.emp_no;



-- Number of Retiring employees by title
-- Use Dictinct with Order by to remove duplicate rows of titles
-- Export table into unique_titles.csv
SELECT DISTINCT ON (ret.emp_no)
					ret.emp_no,
					ret.first_name,
					ret.last_name,
					ret.title
INTO unique_titles
FROM retiring_employees_titles AS ret
ORDER BY ret.emp_no, ret.to_date DESC;

-- Retrieve number of titles from the unique_titles table 
-- Export table into retiring_titles.csv

SELECT title, count(title) AS titlecount
INTO title_count
FROM unique_titles
GROUP BY title
ORDER BY titlecount DESC;

SELECT * FROM title_count;

--Module 7 Challenge Deliverable 2

SELECT DISTINCT ON	(e.emp_no)	
					e.emp_no,
					e.first_name,
					e.last_name,
					e.birth_date,
					de.from_date,
					de.to_date,
					ts.title
INTO elligible_mentors			
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ts
ON(e.emp_no = ts.emp_no)
WHERE (de.to_date = '9999-01-01')
		AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') 
ORDER BY e.emp_no;

-- content of elligible_mentors table
SELECT * FROM elligible_mentors;

-- Extras 
-- Supporting query & table for deliverable 3 - are there enough retirement-ready mentors
-- findings for Module 7 Challenge for report writing

-- count the number of current employees
SELECT COUNT(DISTINCT emp_no) as Employees
FROM current_emp;

-- count the number of retiring employees
SELECT COUNT(DISTINCT emp_no) as RetEmployees
FROM retirement_info;

-- count the number of retiring employees by Department
SELECT DISTINCT ON (ret.emp_no) 
					ret.emp_no,
					ret.first_name,
					ret.last_name,
					ret.title,
					d.dept_name
INTO ret_emp_dept					
FROM retiring_employees_titles AS ret
INNER JOIN dept_emp AS de
ON (ret.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no)
ORDER BY ret.emp_no;

--Group retiring employees by department
SELECT dept_name, count(dept_name) AS remdeptcount
FROM ret_emp_dept
GROUP BY dept_name
ORDER BY remdeptcount DESC;


-- content of elligible_mentors table
SELECT title, count(title) AS emtitlecount
FROM elligible_mentors
GROUP BY title
ORDER BY emtitlecount DESC;

-- Elligible mentors by department
SELECT 	DISTINCT ON (em.emp_no)
					em.emp_no,
					em.title,
					d.dept_name
INTO e_mentors_dept
FROM elligible_mentors AS em
INNER JOIN dept_emp AS de
ON (em.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no)
WHERE (em.to_date = '9999-01-01')
ORDER BY em.emp_no;

--Group retiring employees by department and by role
SELECT dept_name, title, COUNT(*) 
INTO retemployees_dept_role
FROM ret_emp_dept
GROUP BY dept_name, title
ORDER BY dept_name;

		
-- Group elligible mentors by department
SELECT title, count(title) AS em2titlecount
FROM e_mentors_dept
GROUP BY title
ORDER BY em2titlecount DESC;

--Roles by grouped by department
-- file saved into Mentors_Dept_Role
SELECT dept_name, title, COUNT(*) 
INTO mentors_dept_role
FROM e_mentors_dept
GROUP BY dept_name, title
ORDER BY dept_name;



-- testing code 
SELECT * FROM retiring_employees_titles;
SELECT * FROM title_count;
SELECT * FROM elligible_mentors;		
SELECT * FROM dept_emp;
SELECT * FROM departments;
SELECT * FROM e_mentors_dept;
SELECT * FROM mentors_dept_role;
SELECT * FROM ret_emp_dept;
SELECT * FROM retemployees_dept_role;

