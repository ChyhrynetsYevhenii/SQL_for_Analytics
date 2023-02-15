--You have a table of in-app purchases by user. Users that make their first in-app purchase are
--placed in a marketing campaign where they see call-to-actions for more in-app purchases. Find
--the number of users that made additional in-app purchases due to the success of the marketing campaign.
--
--
--The marketing campaign doesn't start until one day after the initial in-app purchase so users that
--only made one or multiple purchases on the first day do not count, nor do we count users that
--over time purchase only the products they purchased on the first day.

with t1 as (select user_id, created_at,product_id,
    dense_rank() over(partition by user_id order by created_at) date_rnk,
    dense_rank() over(partition by user_id, product_id order by created_at) product_rnk
from marketing_campaign)

select count(distinct user_id) from t1
where (date_rnk > 1) and (product_rnk = 1)