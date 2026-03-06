CREATE DATABASE PIZZAHUT;
CREATE TABLE PIZZAS(PIZZA_ID VARCHAR(50) PRIMARY KEY, PIZZA_TYPE_ID VARCHAR(50), 
SI_ZE VARCHAR(20), PRICE INT);
INSERT INTO PIZZAS(PIZZA_ID, PIZZA_TYPE_ID, SI_ZE, PRICE)
VALUES
('bbq_dns_s', 'bbq_dn', 'S', 12.75),
('bq_dn_m', 'bq_dn', 'M', 16.75),
('bbq_dn_i', 'bbq_dkn', 'L', 20.75),
('cal_dn_s', 'cal_dn', 'S', 12.75),
('cal_dn_m', 'ca_dn_m', 'L', 16.75),
('dn_alfredo_s', 'dn_alfredo', 'S', 12.76),
('dn_pesto_s', 'dn_pesto', 'M', 20.75);
SELECT * FROM PIZZAS;
select * from pizzatypes;
create table pizzatypes(pizz_type_id varchar(50), name varchar(50), 
category varchar(50), ingredients varchar(60));
INSERT INTO pizzatypes(pizz_type_id, name, category, ingredients)
values('bbq_dn', 'The Barbeque chicken pizza', 'chicken', 'red peper, green peper, chicken, salt'),
('cal_dn', 'The California chicken pizza', 'chicken', 'chicken, red onion, red peppers, green peper'),
('dn_pesto', 'The chicken pesto pizza', 'chicken', 'chicken, Bacon, tomato, green peper'),
('dn_alfero', 'The chicken alfredo pizza', 'chicken', 'chicken, red onion, red peppers, green peper'),
('cal_dn', 'The California chicken pizza', 'chicken', 'chicken, red onion, red peppers, green peper'),
('ca_dn_m', 'The big meat pizza', 'chicken', 'chicken, red onion'),
('dbq_dkn', 'The Classic Deluxe pizza', 'chicken', 'chicken, red onion, red peppers, green peper');

select * from order90;
create table order90(order_id int primary key, DATE date, time time);
INSERT INTO order90(ORDER_ID, DATE, TIME)
VALUES(1, '2015-01-01', '11:38:36'),
(2, '2015-01-01', '11:38:36'),
(3, '2015-01-01', '11:57:40'),
(4, '2015-01-01', '12:12:36'),
(5, '2015-01-01', '12:16:31'),
(6, '2015-01-01', '12:16:31'),
(7, '2015-01-01', '12:21:30');


select * from order_details;
create table order_details(order_det int primary key, order_id int, pizza_id varchar(50), 
quantity int);
insert into order_details(order_det, order_id, pizza_id, quantity)
values(1, 1, 'bbq_dns_s', 1),
(2, 2, 'bq_dn_m', 2),
(3, 3, 'bbq_dn_i', 3), 
(4, 4, 'cal_dn_s', 7),
(5, 5, 'cal_dn_m', 3),
(6, 6, 'dn_alfredo_s', 5),
(7, 7, 'cal_dn_s', 2);
select * from pizzas;
select * from pizzatypes;
select * from order_details;
select * from order90;
alter table pizzatypes
rename column pizz_type_id to pizza_type_id;

-- Reterive total number of orders placed
select count(order_id) as total_order_placed from order_details;

-- calculate total revnue generated from pizza sales
select sum(price) as revenue from pizzas;
select sum(p.price*o.quantity) as total_revenue from pizzas as p
join order_details as o
on p.pizza_id = o.pizza_id;

-- identify the highest price pizza
select pt.name, max(p.price) from pizzas as p
join pizzatypes as pt
on p.pizza_type_id = pt.pizza_type_id
group by pt.name, p.price
order by p.price desc limit 1;

-- identify most common size pizza ordered
select * from order_details as od
join pizzas as p
on od
CREATE DATABASE PIZZAHUT;
CREATE TABLE PIZZAS(PIZZA_ID VARCHAR(50) PRIMARY KEY, PIZZA_TYPE_ID VARCHAR(50), 
SI_ZE VARCHAR(20), PRICE INT);
INSERT INTO PIZZAS(PIZZA_ID, PIZZA_TYPE_ID, SI_ZE, PRICE)
VALUES
('bbq_dns_s', 'bbq_dn', 'S', 12.75),
('bq_dn_m', 'bq_dn', 'M', 16.75),
('bbq_dn_i', 'bbq_dkn', 'L', 20.75),
('cal_dn_s', 'cal_dn', 'S', 12.75),
('cal_dn_m', 'ca_dn_m', 'L', 16.75),
('dn_alfredo_s', 'dn_alfredo', 'S', 12.76),
('dn_pesto_s', 'dn_pesto', 'M', 20.75);
SELECT * FROM PIZZAS;
select * from pizzatypes;
create table pizzatypes(pizz_type_id varchar(50), name varchar(50), 
category varchar(50), ingredients varchar(60));
INSERT INTO pizzatypes(pizz_type_id, name, category, ingredients)
values('bbq_dn', 'The Barbeque chicken pizza', 'chicken', 'red peper, green peper, chicken, salt'),
('cal_dn', 'The California chicken pizza', 'chicken', 'chicken, red onion, red peppers, green peper'),
('dn_pesto', 'The chicken pesto pizza', 'chicken', 'chicken, Bacon, tomato, green peper'),
('dn_alfero', 'The chicken alfredo pizza', 'chicken', 'chicken, red onion, red peppers, green peper'),
('cal_dn', 'The California chicken pizza', 'chicken', 'chicken, red onion, red peppers, green peper'),
('ca_dn_m', 'The big meat pizza', 'chicken', 'chicken, red onion'),
('dbq_dkn', 'The Classic Deluxe pizza', 'chicken', 'chicken, red onion, red peppers, green peper');

select * from order90;
create table order90(order_id int primary key, DATE date, time time);
INSERT INTO order90(ORDER_ID, DATE, TIME)
VALUES(1, '2015-01-01', '11:38:36'),
(2, '2015-01-01', '11:38:36'),
(3, '2015-01-01', '11:57:40'),
(4, '2015-01-01', '12:12:36'),
(5, '2015-01-01', '12:16:31'),
(6, '2015-01-01', '12:16:31'),
(7, '2015-01-01', '12:21:30');


select * from order_details;
create table order_details(order_det int primary key, order_id int, pizza_id varchar(50), 
quantity int);
insert into order_details(order_det, order_id, pizza_id, quantity)
values(1, 1, 'bbq_dns_s', 1),
(2, 2, 'bq_dn_m', 2),
(3, 3, 'bbq_dn_i', 3), 
(4, 4, 'cal_dn_s', 7),
(5, 5, 'cal_dn_m', 3),
(6, 6, 'dn_alfredo_s', 5),
(7, 7, 'cal_dn_s', 2);
select * from pizzas;
select * from pizzatypes;
select * from order_details;
select * from order90;
alter table pizzatypes
rename column pizz_type_id to pizza_type_id;

-- Reterive total number of orders placed
select count(order_id) as total_order_placed from order_details;

-- calculate total revnue generated from pizza sales
select sum(price) as revenue from pizzas;
select sum(p.price*o.quantity) as total_revenue from pizzas as p
join order_details as o
on p.pizza_id = o.pizza_id;

-- identify the highest price pizza
select pt.name, max(p.price) from pizzas as p
join pizzatypes as pt
on p.pizza_type_id = pt.pizza_type_id
group by pt.name, p.price
order by p.price desc limit 1;

-- identify most common size pizza ordered
select p.si_ze, count(od.order_det) as order_count from order_details as od
join pizzas as p
on od.pizza_id = p.pizza_id
group by p.si_ze, od.order_det;


-- top 5  pizza name are the most ordered
select pt.name, sum(od.quantity) as total_quantity from pizzatypes as pt
join pizzas as p
on pt.pizza_type_id = p.pizza_type_id 
join order_details as od
on od.pizza_id = p.pizza_id
group by od.quantity, pt.name
order by od.quantity desc limit 5;

-- total quantity of each pizza ordered
select pt.name, pt.category, od.quantity as total_quantity from pizzatypes as pt
join pizzas as p
on pt.pizza_type_id = p.pizza_type_id 
join order_details as od
on od.pizza_id = p.pizza_id
group by od.quantity, pt.name, pt.category
order by od.quantity desc limit 5;
alter table order90
rename column time to order_time;

select * from order90;
SELECT * FROM ORDER_DETAILS;
SELECT * FROM PIZZAS;
SELECT * FROM PIZZATYPES;
-- determine the distribution by hour of the day
select hour(order_time), count(order_id) as order_count from order90
group by hour(order_time);

-- JOIN THE TABLES TO JOIN CATEGORY WISE DISTRIBUTION OF PIZZAS
SELECT CATEGORY, COUNT(name) from pizzatypes
f

CREATE DATABASE PIZZAHUT;
CREATE TABLE PIZZAS(PIZZA_ID VARCHAR(50) PRIMARY KEY, PIZZA_TYPE_ID VARCHAR(50), 
SI_ZE VARCHAR(20), PRICE INT);
INSERT INTO PIZZAS(PIZZA_ID, PIZZA_TYPE_ID, SI_ZE, PRICE)
VALUES
('bbq_dns_s', 'bbq_dn', 'S', 12.75),
('bq_dn_m', 'bq_dn', 'M', 16.75),
('bbq_dn_i', 'bbq_dkn', 'L', 20.75),
('cal_dn_s', 'cal_dn', 'S', 12.75),
('cal_dn_m', 'ca_dn_m', 'L', 16.75),
('dn_alfredo_s', 'dn_alfredo', 'S', 12.76),
('dn_pesto_s', 'dn_pesto', 'M', 20.75);
SELECT * FROM PIZZAS;
select * from pizzatypes;
create table pizzatypes(pizz_type_id varchar(50), name varchar(50), 
category varchar(50), ingredients varchar(60));
INSERT INTO pizzatypes(pizz_type_id, name, category, ingredients)
values('bbq_dn', 'The Barbeque chicken pizza', 'chicken', 'red peper, green peper, chicken, salt'),
('cal_dn', 'The California chicken pizza', 'chicken', 'chicken, red onion, red peppers, green peper'),
('dn_pesto', 'The chicken pesto pizza', 'chicken', 'chicken, Bacon, tomato, green peper'),
('dn_alfero', 'The chicken alfredo pizza', 'chicken', 'chicken, red onion, red peppers, green peper'),
('cal_dn', 'The California chicken pizza', 'chicken', 'chicken, red onion, red peppers, green peper'),
('ca_dn_m', 'The big meat pizza', 'chicken', 'chicken, red onion'),
('dbq_dkn', 'The Classic Deluxe pizza', 'chicken', 'chicken, red onion, red peppers, green peper');

select * from order90;
create table order90(order_id int primary key, DATE date, time time);
INSERT INTO order90(ORDER_ID, DATE, TIME)
VALUES(1, '2015-01-01', '11:38:36'),
(2, '2015-01-01', '11:38:36'),
(3, '2015-01-01', '11:57:40'),
(4, '2015-01-01', '12:12:36'),
(5, '2015-01-01', '12:16:31'),
(6, '2015-01-01', '12:16:31'),
(7, '2015-01-01', '12:21:30');


select * from order_details;
create table order_details(order_det int primary key, order_id int, pizza_id varchar(50), 
quantity int);
insert into order_details(order_det, order_id, pizza_id, quantity)
values(1, 1, 'bbq_dns_s', 1),
(2, 2, 'bq_dn_m', 2),
(3, 3, 'bbq_dn_i', 3), 
(4, 4, 'cal_dn_s', 7),
(5, 5, 'cal_dn_m', 3),
(6, 6, 'dn_alfredo_s', 5),
(7, 7, 'cal_dn_s', 2);
select * from pizzas;
select * from pizzatypes;
select * from order_details;
select * from order90;
alter table pizzatypes
rename column pizz_type_id to pizza_type_id;

-- Reterive total number of orders placed
select count(order_id) as total_order_placed from order_details;

-- calculate total revnue generated from pizza sales
select sum(price) as revenue from pizzas;
select sum(p.price*o.quantity) as total_revenue from pizzas as p
join order_details as o
on p.pizza_id = o.pizza_id;

-- identify the highest price pizza
select pt.name, max(p.price) from pizzas as p
join pizzatypes as pt
on p.pizza_type_id = pt.pizza_type_id
group by pt.name, p.price
order by p.price desc limit 1;

-- identify most common size pizza ordered
select * from order_details as od
join pizzas as p
on od
CREATE DATABASE PIZZAHUT;
CREATE TABLE PIZZAS(PIZZA_ID VARCHAR(50) PRIMARY KEY, PIZZA_TYPE_ID VARCHAR(50), 
SI_ZE VARCHAR(20), PRICE INT);
INSERT INTO PIZZAS(PIZZA_ID, PIZZA_TYPE_ID, SI_ZE, PRICE)
VALUES
('bbq_dns_s', 'bbq_dn', 'S', 12.75),
('bq_dn_m', 'bq_dn', 'M', 16.75),
('bbq_dn_i', 'bbq_dkn', 'L', 20.75),
('cal_dn_s', 'cal_dn', 'S', 12.75),
('cal_dn_m', 'ca_dn_m', 'L', 16.75),
('dn_alfredo_s', 'dn_alfredo', 'S', 12.76),
('dn_pesto_s', 'dn_pesto', 'M', 20.75);
SELECT * FROM PIZZAS;
select * from pizzatypes;
create table pizzatypes(pizz_type_id varchar(50), name varchar(50), 
category varchar(50), ingredients varchar(60));
INSERT INTO pizzatypes(pizz_type_id, name, category, ingredients)
values('bbq_dn', 'The Barbeque chicken pizza', 'chicken', 'red peper, green peper, chicken, salt'),
('cal_dn', 'The California chicken pizza', 'chicken', 'chicken, red onion, red peppers, green peper'),
('dn_pesto', 'The chicken pesto pizza', 'chicken', 'chicken, Bacon, tomato, green peper'),
('dn_alfero', 'The chicken alfredo pizza', 'chicken', 'chicken, red onion, red peppers, green peper'),
('cal_dn', 'The California chicken pizza', 'chicken', 'chicken, red onion, red peppers, green peper'),
('ca_dn_m', 'The big meat pizza', 'chicken', 'chicken, red onion'),
('dbq_dkn', 'The Classic Deluxe pizza', 'chicken', 'chicken, red onion, red peppers, green peper');

select * from order90;
create table order90(order_id int primary key, DATE date, time time);
INSERT INTO order90(ORDER_ID, DATE, TIME)
VALUES(1, '2015-01-01', '11:38:36'),
(2, '2015-01-01', '11:38:36'),
(3, '2015-01-01', '11:57:40'),
(4, '2015-01-01', '12:12:36'),
(5, '2015-01-01', '12:16:31'),
(6, '2015-01-01', '12:16:31'),
(7, '2015-01-01', '12:21:30');


select * from order_details;
create table order_details(order_det int primary key, order_id int, pizza_id varchar(50), 
quantity int);
insert into order_details(order_det, order_id, pizza_id, quantity)
values(1, 1, 'bbq_dns_s', 1),
(2, 2, 'bq_dn_m', 2),
(3, 3, 'bbq_dn_i', 3), 
(4, 4, 'cal_dn_s', 7),
(5, 5, 'cal_dn_m', 3),
(6, 6, 'dn_alfredo_s', 5),
(7, 7, 'cal_dn_s', 2);
select * from pizzas;
select * from pizzatypes;
select * from order_details;
select * from order90;
alter table pizzatypes
rename column pizz_type_id to pizza_type_id;

-- Reterive total number of orders placed
select count(order_id) as total_order_placed from order_details;

-- calculate total revnue generated from pizza sales
select sum(price) as revenue from pizzas;
select sum(p.price*o.quantity) as total_revenue from pizzas as p
join order_details as o
on p.pizza_id = o.pizza_id;

-- identify the highest price pizza
select pt.name, max(p.price) from pizzas as p
join pizzatypes as pt
on p.pizza_type_id = pt.pizza_type_id
group by pt.name, p.price
order by p.price desc limit 1;

-- identify most common size pizza ordered
select p.si_ze, count(od.order_det) as order_count from order_details as od
join pizzas as p
on od.pizza_id = p.pizza_id
group by p.si_ze, od.order_det;


-- top 5  pizza name are the most ordered
select pt.name, sum(od.quantity) as total_quantity from pizzatypes as pt
join pizzas as p
on pt.pizza_type_id = p.pizza_type_id 
join order_details as od
on od.pizza_id = p.pizza_id
group by od.quantity, pt.name
order by od.quantity desc limit 5;

-- total quantity of each pizza ordered
select pt.name, pt.category, od.quantity as total_quantity from pizzatypes as pt
join pizzas as p
on pt.pizza_type_id = p.pizza_type_id 
join order_details as od
on od.pizza_id = p.pizza_id
group by od.quantity, pt.name, pt.category
order by od.quantity desc limit 5;
alter table order90
rename column time to order_time;

select * from order90;
SELECT * FROM ORDER_DETAILS;
SELECT * FROM PIZZAS;
SELECT * FROM PIZZATYPES;
-- determine the distribution by hour of the day
select hour(order_time), count(order_id) as order_count from order90
group by hour(order_time);

-- JOIN THE TABLES TO JOIN CATEGORY WISE DISTRIBUTION OF PIZZAS
SELECT CATEGORY, COUNT(name) from pizzatypes
group by category;

-- group the orders by date calculate the average number of pizza ordered per day
select avg(od.quantity) from
(select o.date, sum(od.quantity) as quantity_sum avg(od.order_id) from order90 as o
join order_details as od
on od.order_id = o.order_id
group by od.quantity, o.date);

--determine top 3 most ordered pizza types based on revenue

select sum(od.quantity*p.price) as revenue, pt.name from order_details as od
join pizzas as p
on p.pizza_id = od.pizza_id
join pizzatypes as pt
on p.pizza_id = od.pizza_id
group by od.quantity, pt.name, p.price
order by revenue desc limit 3;

-- calculate the percentage contribution of each pizzatype to total revenue
select pt.category, sum(od.quantity*p.price) * 100 /(select sum(od.quantity*p.price) 
from order_details as od
join pizzas as p
on od.pizza_id = p.pizza_id ) as revenue_percentage
from order_details as od
join pizzatypes as pt
on p.pizza_type_id = pt.pizza_type_id
group by pt.category
order by revenue_percentage desc;

-- analyze the cumalative revenue generated over time

select date, sum(revenue) as cum_revenue 
(select o.date, sum(od.quantity*p.price) as revenue from order_details as od 
join pizzas as p
on od.pizza_id = p.pizza_id
join orders as o
on o.order_id = od.order_id
group by o.date) as sales
order by date;
 




































