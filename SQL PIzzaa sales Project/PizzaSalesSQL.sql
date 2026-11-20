CREATE DATABASE PizzaSales;
DROP database PizzaSales;

CREATE table orders(
order_id int not null,
order_date date not null,
order_time time not null,
primary key(order_id)
);

CREATE table order_details(
order_details_id int not null,
order_id int not null,
pizza_id text not null,
quantity int not null,
primary key(order_details_id)
);


select count(*) from order_details;

select count(*) from orders;

select count(*) from pizzas;
select count(*) from pizza_types;


-- Basic:
-- Retrieve the total number of orders placed.

select count(*) from orders;
select count(order_id) as total_orders from orders;


-- Calculate the total revenue generated from pizza sales.
SELECT 
    ROUND(SUM(order_details.quantity * pizzas.price),
            2) AS total_sales
FROM
    order_details
        JOIN
    pizzas ON pizzas.pizza_id = order_details.pizza_id; 		# Total Revenue : 817860.05

-- ========================================================================================================

-- Identify the highest-priced pizza.
SELECT pizza_types.name, pizzas.price
from pizza_types 
join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
order by pizzas.price desc limit 1;   # highest-priced pizza: The Greek Pizza	35.95


-- Identify the most common pizza size ordered.

SELECT * FROM pizzasales.order_details;

-- SELECT quantity, count(order_details_id) as odd from order_details group by quantity order by odd desc limit 1;
SELECT 
    pizzas.size,
    COUNT(order_details.order_details_id) AS order_count
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizzas.size
ORDER BY order_count DESC; 


-- List the top 5 most ordered pizza types along with their quantities.
SELECT 
    pizza_types.name, SUM(order_details.quantity) AS Qty
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.name
ORDER BY Qty DESC
LIMIT 5;
