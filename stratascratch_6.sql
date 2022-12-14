--Find the popularity percentage for each user on Meta/Facebook. The popularity percentage is defined as
--the total number of friends the user has divided by the total number of users on the platform, then converted
--into a percentage by multiplying by 100.
--Output each user along with their popularity percentage. Order records in ascending order by user id.
--The 'user1' and 'user2' column are pairs of friends.

with preptable as (select * from facebook_friends

union

select user2 AS user1, user1 AS user2 from facebook_friends
order BY user1)

select user1, 100 * (count(user2) / (select count(distinct(user1)) from preptable)) as
 percentage_popularity from preptable
group by user1

