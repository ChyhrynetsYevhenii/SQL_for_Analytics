--Calculate the total revenue from each customer in March 2019. Include only customers who were active in March 2019.
--
--Output the revenue along with the customer id and sort the results based on the revenue in descending order.

select cust_id, sum(total_order_cost) from orders
where month(order_date) = 3
group by 1
order by 2 desc