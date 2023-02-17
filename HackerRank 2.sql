--Pivot the Occupation column in OCCUPATIONS so that each Name is sorted
--alphabetically and displayed underneath its corresponding Occupation. The
--output column headers should be Doctor, Professor, Singer, and Actor, respectively.
--
--Note: Print NULL when there are no more names corresponding to an occupation.


with prep_table as (select name,occupation,Row_number()
    over(partition by occupation order by name) as row_num
from occupations
order by 2, 1)

select
    max(if(occupation="Doctor",name,null)) as Doctor,
    max(if(occupation="Professor",name,null)) as Professor,
    max(if(occupation="Singer",name,null)) as Singer,
    max(if(occupation="Actor",name,null))as Actor
from prep_table
group by row_num