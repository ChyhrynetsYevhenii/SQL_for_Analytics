--Find the total number of downloads for paying and non-paying users by date. Include only records where
--non-paying customers have more downloads than paying customers. The output should be sorted by earliest
--date first and contain 3 columns date, non-paying downloads, paying downloads.

--1 Way

with table1 as (select date, paying_customer,
    sum(downloads) as paying
from ms_user_dimension
    join ms_acc_dimension using(acc_id)
    join ms_download_facts using(user_id)
where paying_customer = 'yes'
group by paying_customer, date
order by date),

table2 as (select date, paying_customer,
    sum(downloads) as non_paying
from ms_user_dimension
    join ms_acc_dimension using(acc_id)
    join ms_download_facts using(user_id)
where paying_customer = 'no'
group by paying_customer, date
order by date)

select date, non_paying, paying from
    table1
    join table2 using(date)
where non_paying > paying

--2 Way

select date,
sum(if(paying_customer = 'no', downloads, 0)) as non_paying,
sum(if(paying_customer = 'yes', downloads, 0)) as paying
from ms_user_dimension
    join ms_acc_dimension using(acc_id)
    join ms_download_facts using(user_id)
group by date
having non_paying > paying
order by date

