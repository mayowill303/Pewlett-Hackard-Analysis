--Deliverable 1: The Number of Retiring Employees by Title
select distinct on (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
into retirement_titles
from titles as t
inner join employees as e
on t.emp_no = e.emp_no
where e.birth_date between '1952-01-01' and '1955-12-31'
order by e.emp_no;

SELECT * FROM retirement_titles

--Deliverable 2: The Employees Eligible for the Mentorship Program
select
distinct on (e.emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
into mentorship_eligibility
from employees as e
inner join dept_emp de
on e.emp_no = de.emp_no
inner join titles as t
on t.emp_no = e.emp_no
where (de.to_date = '9999-01-01') and (e.birth_date between '1965-01-01' and '1965-12-31')
order by e.emp_no;

SELECT * FROM mentorship_eligibility

--Deliverable 3: A written report on the employee database analysis (README.md)

-- Employee Database Analysis

-- Overview
-- The purpose of this analysis is to determine the number of retiring employees per title and 
-- identify the employees who are eligible to participate in the mentorship program.  The data 
-- about retiring employees provides insight about the titles of employees born between 1952 and 
-- 1955.  The data’s goal is to help prepare management for the high amount of employees retiring 
-- by guiding the transition through a strategic mentorship program to address the skills, knowledge 
-- and leadership gaps.

-- Results
-- •	83% of retiring employees are senior staff and senior engineers. 
-- •	Only 1549 of employees are eligible for mentoring the next generation of 
-- senior engineers and senior staff.
-- •	30% of total employees are eligible for retirement (90,398 out of 300,024).
-- •	Development, Production and Sales departments have the highest number of retirees. 
 
-- Summary
-- •	An estimated 90k employee roles will need to be filled as the silver tsunami 
-- begins to make an impact.  
-- •	There are 1549 qualified retirement ready employees available to mentor the 
-- next generation of employees.
-- •	This is of major concern.  The low amount of employees eligible for mentorship 
-- compared to the 90k gap is a serious cause for concern.
-- •	Leadership will need to consider options for streamlining operations to assist 
-- in decreasing the impact of this loss of skills, knowledge, and experience. 
