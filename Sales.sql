select * from Customers
select * from Orders
select * from Products

select [Product Name], sum(sales) as total_sales, sum(Profit) as total_profit from Products group by [Product Name] order by sum(Profit)

select distinct(State), sum(Sales) as total_sales,avg(Sales) as average_sales, sum(Profit) as total_profit  from Products P 
inner join Customers C on P.[Product ID] = C.[Product ID] group by State

select Region, sum(Sales) as total_sales,avg(Sales) as average_sales, sum(Profit) as total_profit  from Products P 
inner join Customers C on P.[Product ID] = C.[Product ID] group by Region order by sum(Sales) desc

select Region, sum(Sales) as total_sales,avg(Sales) as average_sales, sum(Profit) as total_profit, [Order Date] as Order_date  from Products P 
inner join Customers C on P.[Product ID] = C.[Product ID] inner join Orders o on C.[Customer ID]= o.[Customer ID] 
where Region = 'West' group by Region, [Order Date] order by sum(Sales) desc

select top 5 State, sum(Sales) as total_sales,avg(Sales) as average_sales, sum(Profit) as total_profit  from Products P 
inner join Customers C on P.[Product ID] = C.[Product ID] group by State order by sum(Sales) desc

select  State, sum(Sales) as total_sales, sum(Profit) as total_profit, sum(Sales)/sum(Profit) as comariation  from Products P 
inner join Customers C on P.[Product ID] = C.[Product ID] group by State order by comariation asc

select  State, sum(Sales) as total_sales, sum(Profit) as total_profit, sum(Sales)-sum(Profit) as dif_Money, count([Order ID]) as total_orders from Products P 
inner join Customers C on P.[Product ID] = C.[Product ID] inner join Orders o on C.[Customer ID]=o.[Customer ID]
where State = 'Delaware' group by State

select top 5 State, sum(Sales) as total_sales,avg(Sales) as average_sales, sum(Profit) as total_profit  from Products P 
inner join Customers C on P.[Product ID] = C.[Product ID] group by State order by sum(Sales) asc

select State, sum(Sales) as total_sales,avg(Sales) as average_sales, sum(Profit) as total_profit, [Order Date] as order_date
from Products P inner join Customers C on P.[Product ID] = C.[Product ID] inner join Orders O on C.[Customer ID] = O.[Customer ID]
where State = 'North Dakota' and [Order Date] between '2014-09-26 00:00:00.000' and '2017-11-13 00:00:00.000' 
group by State, [Order Date] order by sum(Sales) desc