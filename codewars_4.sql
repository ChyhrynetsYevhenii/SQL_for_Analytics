-- # write your SQL statement here: you are given a table 'nospace' with column 'x',
--return a table with column 'x' and your result in a column named 'res'.

select x, replace(x, ' ', '') as res from nospace

--For this challenge you need to create a simple SELECT statement that will return all columns from
--the people table, and join to the sales table so that you can return the COUNT of all sales and RANK
--each person by their sale_count.

select p.id, p.name, count(s.sale) as sale_count,
      rank() over(ORDER BY COUNT(s.sale) ASC) as sale_rank
from people p
        join sales s on p.id = s.people_id
group by 1

--For this challenge you need to create a simple HAVING statement, you want to count how many people have the
--same age and return the groups with 10 or more people who have that age.

elect age, count(name) as total_people from people
group by 1
having count(name) >= 10

-- # write your SQL statement here: you are given a table 'solution' with column 'str', return a
--table with column 'str' and your result in a column named 'res'.

select str, reverse(str) as res from solution

--Given a Divisor and a Bound , Find the largest integer N , Such That ,
--
--Conditions :
--N is divisible by divisor
--N is less than or equal to bound
--N is greater than 0.

select bound-(bound % divisor) as res from max_multiple