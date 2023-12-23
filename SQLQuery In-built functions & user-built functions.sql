Create database orders_table1
use orders_table1
create table orders_table1
(Order_id int,
Order_date date,
Amount int,
Customer_id int);

Select *from orders_table1

insert into orders_table1 values
(3, '2020-10-01', 9000, 20),
(110, '2020-10-01', 9000, 10),
(111, '2020-10-02', 8000, 10),
(112, '2020-10-02', 7000, 3),
(113, '2020-10-04', 6000, 4),
(114, '2020-10-05', 5000, 5);

Select *from orders_table1

---1). Use the inbuilt functions and find the min, max and avg amount from the orders_table
select max(Amount) as max_amount, min(Amount) as min_amount, avg(Amount) as avg_amount  from Orders_table1;

---2). Create a user_defined function which will multiply the given number with 10
Create Function Multiply (@NUM INT)
Returns Int
As Begin
Return (@NUM *10)
END
Select dbo.multiply(10) as output

---3). Use the case statement to check if 100 less than 200, greater than 200 is equal to 200 and point the corresponding value

Case statement 

select 
case 
when 100<200 then 'Smaller'
when 100>200 then 'greater'
else 'equal'
end