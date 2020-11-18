#Practice SQL - Final Questions

/* Question 1:
Find the average salary of the male and female employees in each department.*/

USE employees;

SELECT 
    e.gender,
    d.dept_name,
    ROUND(AVG(s.salary), 2) AS salary
FROM
    salaries s
        JOIN
    employees e ON s.emp_no = e.emp_no
        JOIN
    dept_emp de ON de.emp_no = e.emp_no
        JOIN
    departments d ON d.dept_no = de.dept_no
GROUP BY d.dept_name , e.gender
ORDER BY d.dept_name;