-- Intermediate:
-- Join the necessary tables to find the total quantity of each pizza category ordered.

SELECT pizza_types.category, SUM(order_details.quantity) as QTY
FROM pizza_types
JOIN pizzas
ON pizza_types.pizza_type_id = pizzas.pizza_type_id
JOIN order_details
ON order_details.pizza_id = pizzas.pizza_id group by pizza_types.category order by QTY desc limit 5;


-- Determine the distribution of orders by hour of the day. 
-- ANS: Grouping the orders based on the orders ordered by each hour

SELECT HOUR(order_time) AS hour, count(order_id) as order_cnt
from orders group by HOUR(order_time);


-- Join relevant tables to find the category-wise distribution of pizzas.

SELECT category, count(name) from pizza_types
group by category;

-- Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT round(avg(Total_Qty), 0) AS Avg_Pizzas_Per_Day from
(SELECT orders.order_date, sum(order_details.quantity) AS Total_Qty
FROM orders 
JOIN order_details 
ON orders.order_id = order_details.order_id group by orders.order_date) AS AvgCal;


-- Determine the top 3 most ordered pizza types based on revenue.
# first Calulate the Revenue and Then Display the Top 3 most ordered pozza types

SELECT pizza_types.name, 
round(sum(order_details.quantity * pizzas.price),1) as Revenue
from pizza_types 
JOIN pizzas 
ON pizzas.pizza_type_id = pizza_types.pizza_type_id
JOIN order_details
ON order_details.pizza_id = pizzas.pizza_id
group by pizza_types.name order by Revenue desc limit 3;