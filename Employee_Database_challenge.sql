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
-- Use Dictinct with Orderby to remove duplicate rows of titles
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














