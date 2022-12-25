--Write a query that calculates the difference between the highest salaries found in the marketing and engineering
-- departments. Output just the absolute difference in salaries.

select abs(max(a.salary))-abs(max(b.salary)) as sal_diff
from db_employee a, db_employee b
where a.department_id= 4 and b.department_id = 1