--Find the titles of workers that earn the highest salary. Output the highest-paid title or multiple titles
--that share the highest salary.

select worker_title as best_paid_title from
    worker
    join title on worker.worker_id = title.worker_ref_id
where salary = (select max(salary) as top_salary from
    worker
    join title on worker.worker_id = title.worker_ref_id
group by worker_title
order by top_salary desc
limit 1 )

