Create Database Customer1
use Customer1
Create table Customer1
(Customer_id int,
First_name varchar(30),
Last_name varchar(30),
Email varchar(30),
Address varchar(30),
City varchar (30),
State varchar(30),
Zip int);

select *from customer1

Insert into customer1 values
(10, 'JEMMI', 'JORDAN', 'jemi@gmail.com', '2nd floor gandhi nagar', 'Bangalore', 'Karnataka', 382008),
(20, 'GAGANA', 'AVANTHIK', 'avanthik@gmail.com', '3rd floor jaya nagar', 'shanti nagar', 'Karnataka', 382002),
(30, 'JESSICA', 'VANYA', 'jessica@gmail.com', '19th block bommari', 'Alleppy', 'Kerala', 688001),
(40, 'JERUSHA', 'JERU', 'jerusha@gmail.com', '4th floor', 'ooty', 'Tamilnadu', 643001),
(50, 'GRACE', 'ZIPPORA', 'grace@gmail.com', '5th floor', 'Sanjose', 'USA', 94088);


select *from customer1

---1).Create an 'Orders' table which comprises of these columns 'order_id', 'order_date', 'amount', 'customer_id'
Create table Orders
(
Orders_id int,
Order_date date,
Amount int,
Customer_id int);

select *from orders

insert into orders values 
(10, '2023-04-02', 6000, 1),
(20, '2001-10-10', 5000, 2),
(30, '1995-11-09', 8000, 3),
(40, '2010-05-07', 4000, 8),
(50, '2011-04-11', 1000, 9);

select *from orders

Select *from Customer1
Select *from Orders

---2). Make an inner join on 'Customer' and 'Order' tables on the 'Customer_id' column
select c.customer_id, c.first_name, o.customer_id, o.amount 
from customer1 c inner join orders o
on c.customer_id = o.customer_id;

---3). Make left and right joins on ;customer' and 'order' tables on the 'customer_id' column
select c.customer_id, c.first_name, o.customer_id, o.amount
from customer1 c left join orders o
on c.customer_id = o.customer_id;

select c.customer_id, c.first_name, o.customer_id, o.amount
from customer1 c right join orders o
on c.customer_id = o.customer_id;


---4). Update the 'Orders table' set the amount to the 100 where 'customer_id' is 30
update orders
set amount = 100
where customer_id = 3
select *from orders;


