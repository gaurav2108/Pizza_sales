select * from pizza_sales


select sum(total_price) / count(distinct order_id) as average_order from pizza_sales;

select sum(quantity) as total_pizza_sold from pizza_sales

select count(distinct order_id) as total_order_placed from pizza_sales

select cast(sum(quantity) as decimal(10,2)) / cast(count(distinct order_id) as decimal(10,2)) as avg_pizza_per_order from pizza_sales



select datename(dw, order_date) as order_day, count(distinct order_id) as total_orders from pizza_sales group by datename(dw, order_date)

select datename(month, order_date) as month_name, count(distinct order_id) as order_id from pizza_sales group by datename(month, order_date)