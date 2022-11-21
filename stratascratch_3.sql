--Write a query that'll identify returning active users. A returning active
--user is a user that has made a second purchase within 7 days of any other
--of their purchases. Output a list of user_ids of these returning active users.

select distinct user_id
from (select *, lead(created_at) over(partition by user_id order by created_at) as next_at
from amazon_transactions) sbqry

where datediff(next_at, created_at) <=7