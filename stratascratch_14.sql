--Find the average total compensation based on employee titles and gender. Total compensation
--is calculated by adding both the salary and bonus of each employee. However, not every employee
--receives a bonus so disregard employees without bonuses in your calculation. Employee can receive
--more than one bonus.Output the employee title, gender (i.e., sex), along with the average total compensation.

select employee_title, sex, avg(salary+bonus) from
    sf_employee e
    join (select worker_ref_id, sum(bonus) as bonus from sf_bonus
group by 1) as b on b.worker_ref_id = e.id
where b.worker_ref_id is not null
group by employee_title
