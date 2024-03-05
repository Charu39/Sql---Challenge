--List the employee number, last name, first name, sex, and salary of each employee (2 points)
SELECT * FROM "Employees";
SELECT * FROM "Salaries";

--Query 1
SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM "Employees" as e
INNER JOIN "Salaries" as s ON
	e.emp_no = s.emp_no
ORDER BY emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
--Query 2
SELECT first_name, last_name, hire_date
FROM "Employees"
WHERE hire_date >= '1986-01-01' AND
	hire_date <= '1986-12-31';

--list the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)
SELECT * FROM "Department_Manager";
SELECT * FROM "Departments"; 

--Query 3
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM "Departments" as d
INNER JOIN "Department_Manager" as dm ON d.dept_no = dm.dept_no
INNER JOIN "Employees" as e ON e.emp_no = dm.emp_no;		
	
--List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
SELECT * FROM "Department_Employees";

--Query 4
SELECT e.emp_no, e.last_name, e.first_name,d.dept_no, d.dept_name
FROM "Employees" AS e
INNER JOIN "Department_Employees" AS de ON e.emp_no = de.emp_no
INNER JOIN "Departments" AS d ON de.dept_no = d.dept_no
ORDER BY emp_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)
--Query 5
SELECT first_name, last_name, sex
FROM "Employees"
WHERE first_name = 'Hercules' AND
	last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name (2 points)
--Query 6
SELECT e.emp_no, e.last_name, e.first_name
FROM "Employees" AS e
INNER JOIN "Department_Employees" AS de ON e.emp_no = de.emp_no
INNER JOIN "Departments" AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';


--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)
--Query 7
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Employees" AS e
INNER JOIN "Department_Employees" AS de ON e.emp_no = de.emp_no
INNER JOIN "Departments" AS d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development')
ORDER BY emp_no;

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)
--Query 8
SELECT last_name, COUNT(*) AS frequency_count
FROM "Employees"
GROUP BY last_name
ORDER BY frequency_count DESC;