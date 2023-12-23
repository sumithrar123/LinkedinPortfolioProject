Create database A5
Use A5

create table orders_table
(Order_id int,
Order_date date,
Amount int,
Customer_id int);

Select *from orders_table

insert into orders_table values
(3, '2020-10-01', 9000, 20),
(110, '2020-10-01', 9000, 10),
(111, '2020-10-02', 8000, 10),
(112, '2020-10-02', 7000, 3),
(113, '2020-10-04', 6000, 4),
(114, '2020-10-05', 5000, 5);

Select *from orders_table

---1). Arrange the 'Orders' dataset in degreasing order of amount
select*from orders_table
order by amount desc

---2). Create a table with name ‘Employee_details1’ and comprising of these columns – ‘Emp_id’,
‘Emp_name’, ‘Emp_salary’. Create another table with name ‘Employee_details2’, which
comprises of same columns as first table.

Create table Employee_Details1
(Emp_id int,
Emp_name varchar (20),
Emp_Salary Int);
select *from Employee_Details1

insert into Employee_Details1 values
(1, 'Francis', 5000),
(2, 'Sumit', 6000),
(3, 'Anitha', 7000),
(4, 'Kunal', 7000);

select *from Employee_Details1

Create table Employee_Details2
(Emp_id int,
Emp_name varchar(20),
Emp_salary Int);

select *from Employee_Details2

insert into Employee_Details2 values
(4, 'Kunal', 1000),
(1, 'Francis', 5000),
(5, 'Joel', 9000),
(7, 'Bik', 11000);

select *from Employee_Details2

---3). Apply the union operator on these two tables
Select *from Employee_Details1 
Union
Select *from Employee_Details2;

---4). Apply the intersect operator on these two tablesSelect *from Employee_Details1 
Intersect
Select *from Employee_Details2;

---5). Apply the except operator on these two tables
Select *from Employee_Details1 
Except
Select *from Employee_Details2;