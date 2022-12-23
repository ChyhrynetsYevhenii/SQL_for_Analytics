--Find the date with the highest total energy consumption from the Meta/Facebook data centers. Output
--the date along with the total energy consumption across all data centers.

with combined as (
    select *
    from fb_eu_energy
    union all
    select *
    from fb_asia_energy
    union all
    select *
    from fb_na_energy
),

preptable as (select date, sum(consumption) as total from combined
group by date)

select date, total from preptable
where total = (select max(total) from preptable)
order by 1
