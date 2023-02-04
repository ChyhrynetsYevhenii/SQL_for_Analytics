--Find the employee with the highest salary per department.
--Output the department name, employee's first name along with the corresponding salary.

select department, first_name, max(salary) from employee
group by 1
order by 3 desc