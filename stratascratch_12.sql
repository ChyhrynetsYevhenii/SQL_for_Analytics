--Find the number of apartments per nationality that are owned by people under 30 years old.
--Since a person can own 1 or more properties, duplicates should be removed.
--Output the nationality along with the number of apartments.
--Sort records by the apartments count in descending order.

with preptable as (select distinct * from
    airbnb_hosts
    join airbnb_units using(host_id)
where unit_type = 'Apartment' and age < 30)

select nationality, count(unit_type) from
    preptable