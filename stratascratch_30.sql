--Write a select statement that takes name from person table and return "Hello, <name> how are you doing
--today?" results in a column named greeting

--person table has name data
select ('Hello, ' || name || ' how are you doing today?') as greeting from person

--Write a query that will return unique product values by time limit

select
 distinct p.name as 'Товар'
from
 product p
    join delivery d on p.id = d.product
where date between '2019-09-07' and '2019-11-11'