select * from pizza_sales

select DATENAME(DW,order_date) as Order_day, count(Distinct order_id)as Total_Sales
from pizza_sales
group by DATENAME(DW,order_date)
order by Total_Sales

select DATENAME(MONTH,order_date) as Month_Name, count(Distinct order_id)as Total_Orders
from pizza_sales
group by DATENAME(MONTH,order_date)
order by Total_Orders Desc

select  pizza_category,sum(total_price) as Total_Sales, sum(total_price)*100 / (select sum(total_price) from pizza_sales) as PCT
from pizza_sales
group by pizza_category

select  pizza_size,sum(total_price) as Total_Sales, sum(total_price)*100 / (select sum(total_price) from pizza_sales) as PCT
from pizza_sales
group by pizza_size
order by PCT DESC 

select  pizza_category,sum(total_price) as Total_Sales
from pizza_sales
group by pizza_category

SELECT top 5 pizza_name, sum(total_price) as Total_Revenue
from pizza_sales group by pizza_name
order by Total_Revenue desc

SELECT top 5 pizza_name, sum(quantity) as Total_Sales
from pizza_sales group by pizza_name
order by Total_Sales desc

SELECT top 5 pizza_name, count(distinct order_id) as Total_Orders 
from pizza_sales group by pizza_name
order by Total_Orders desc

SELECT top 5 pizza_name, sum(total_price) as Total_Revenue
from pizza_sales group by pizza_name
order by Total_Revenue

SELECT top 5 pizza_name, sum(quantity) as Total_Sales
from pizza_sales group by pizza_name
order by Total_Sales

SELECT top 5 pizza_name, count(distinct order_id) as Total_Orders 
from pizza_sales group by pizza_name
order by Total_Orders
