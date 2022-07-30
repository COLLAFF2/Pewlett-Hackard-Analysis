-- Queries PH-EmployeeDB
-- retirement_titles query
Select e.emp_no, e.first_name, e.last_name, t.titles, t.from_date, t.to_date
Into retirement_titles
From employees As e
Inner Join titles  As t
    On(e.emp_no = t.emp_no)
-- filter on birth_date
Where(e.birth_date Between ('1952-01-01') And ('1955-12-31'))
Order By e.emp_no;

--using starter code
-- Use Dictinct with Orderby to remove duplicate rows
-- get emp_no,first and last name, titles
-- from retirement_titles table
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.titles

INTO unique_titles
FROM retirement_titles As rt
ORDER BY rt.emp_no, rt.to_date DESC;

--Create retiring_titles table
Select  Count(ut.titles),ut.titles
Into retiring_titles
From unique_titles as ut
Group By ut.titles
Order By Count Desc;


-- Deliverable 2
-- mentorship_elegibilty table

Select Distinct On(e.emp_no) e.emp_no,
  e.first_name,
  e.last_name,
  e.birth_date,
  de.from_date,
  de.to_date,
  t.titles
Into mentorship_eligibility
From employees As e
Inner join dept_employees As de
  On(e.emp_no = de.emp_no)
Inner join titles as t
  On(e.emp_no = t.emp_no)
-- filter on the to_date to get current emp.(9999-01-01)
Where de.to_date ='9999-01-01'
And e.birth_date Between '1965-01-01' And '1965-12-31'
Order By e.emp_no;

