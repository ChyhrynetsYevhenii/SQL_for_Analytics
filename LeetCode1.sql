--Write an SQL query to find all numbers that appear at least three times consecutively.
--Return the result table in any order.
--The query result format is in the following example.

--# Write your MySQL query statement below
with prep as (select num as ConsecutiveNums, count(num) from Logs
group by num
order by 2 desc
limit 1)

select ConsecutiveNums from prep


--Write an SQL query to find the employees who earn more than their managers.
--Return the result table in any order.
--The query result format is in the following example.


Write your MySQL query statement below
select a.name as Employee from Employee a join Employee b on a.managerId = b.id
where a.salary > b.salary


--Write an SQL query to report all the duplicate emails. Note that it's guaranteed that the email field is not NULL.
--Return the result table in any order.
--The query result format is in the following example.

select email as Email from Person
group by emails
having count(*) > 1