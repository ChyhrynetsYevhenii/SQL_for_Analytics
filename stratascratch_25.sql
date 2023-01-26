--Find the rate of processed tickets for each type.

select type, sum(processed)/count(processed)
from facebook_complaints
group by type
