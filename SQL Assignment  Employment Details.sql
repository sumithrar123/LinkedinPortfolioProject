Create database List_of_Employee_Details
Use List_of_Employee_Details
Create table Employees
(Emp_id_PK INT,
First_Name Varchar (50),
Last_Name Varchar (50),
Salary INT,
Joining_Date Varchar(50),
Department Varchar(50)
);

select *from Employees

Insert into Employees values 
(1,'Anika', 'Arora', 100000, '2020-02-14 9:00:00', 'HR'),
(2, 'Venna', 'Verma', 80000, '2011-06-15 9:00:00', 'Admin'),
(3, 'Vishal', 'Singhal', 3000000, '2020-02-16 9:00:00', 'HR'),
(4, 'Sushant', 'Singh', 500000, '2020-02-17 9:00:00', 'Admin'),
(5, 'Bhupal', 'Bhati', 500000, '2011-06-18 9:00:00', 'Admin'),
(6, 'Dheeraj', 'Diwan', 200000, '2011-06-19 9:00:00', 'Account'),
(7, 'Karan', 'Kumar', 75000, '2020-01-14 9:00:00', 'Account'),
(8, 'Chandrika', 'Chauhan', 90000, '2011-04-15 9:00:00', 'Admin');
select *from Employees

Create table Employee_Bonus
(Emp_ref_id_FK INT,
Bonus_Amount INT,
Bonus_Date Date);

select *from Employee_Bonus

Insert into Employee_Bonus values
(1,5000,'2020-02-16 0:00:00'),
(2,3000,'2011-06-16 0:00:00'),
(3,4000,'2020-02-16 0:00:00'),
(1,4500, '2020-02-16 0:00:00'),
(2,3500, '2011-06-16 0:00:00');

Select *from Employee_Bonus

Create table Employee_Title
(Emp_ref_id INT,
Emp_title Varchar(50),
Affective_Date Date);


Select *from Employee_Title

Insert into Employee_Title Values 
(1, 'Manager', '2016-02-20 0:00:00'),
(2, 'Executive', '2016-06-11 0:00:00'),
(8, 'Executive', '2016-06-11 0:00:00'),
(5, 'Manager', '2016-06-11 0:00:00'),
(4, 'Asst. Manager', '2016-06-11 0:00:00'),
(7, 'Executive', '2016-06-11 0:00:00'),
(6, 'Lead', '2016-06-11 0:00:00'),
(3, 'Lead', '2016-06-11 0:00:00');


Select *from Employee_Title

---1 Display the “FIRST_NAME” from Employee table using the alias name
as Employee_name.
Select First_Name from Employees as Employee_name;

---2 Display “LAST_NAME” from Employee table in upper case.
Select Upper(Last_Name) As Cap_of_Last_Name from Employees;

---3 Display unique values of DEPARTMENT from EMPLOYEE table.Select distinct(Department) from Employees;

---4 Display the first three characters of LAST_NAME from EMPLOYEE table.Select substring (Last_Name,2,3) from Employees;

---5 Display the unique values of DEPARTMENT from EMPLOYEE table and
prints its length.
Select distinct Department,(Len(Department)) from Employees group by Department;

---6 Display the FIRST_NAME and LAST_NAME from EMPLOYEE table into a
single column AS FULL_NAME. 

---7 DISPLAY all EMPLOYEE details from the employee table
order by FIRST_NAME Ascending.
Select *from Employees 
order by First_Name Asc;

---8. Display all EMPLOYEE details order by FIRST_NAME Ascending and
DEPARTMENT Descending.
Select *from Employees 
order by first_name ASC, Department Desc;

---9 Display details for EMPLOYEE with the first name as “VEENA” and
“KARAN” from EMPLOYEE table.
Select *from Employees Where First_Name = 'Veena' UNION Select *from Employees where First_Name = 'Karan';

---10 Display details of EMPLOYEE with DEPARTMENT name as “Admin”.
Select *from Employees where Department = 'Admin';

---11 DISPLAY details of the EMPLOYEES whose FIRST_NAME contains ‘V’.
Select *FROM Employees where First_name like'V%';

---12 DISPLAY details of the EMPLOYEES whose SALARY lies between
100000 and 500000.
Select *from Employees where salary between 100000 and 500000 order by salary asc;

---13 Display details of the employees who have joined in Feb-2020.
Select *from Employees where Month(Joining_date)=2 and Year(Joining_date) = 2020;

---14 Display employee names with salaries >= 50000 and <= 100000.Select concat(First_Name,' ',Last_Name) as Full_Name from Employees Where Salary between 50000 and 100000;

---16 DISPLAY details of the EMPLOYEES who are also Managers.


---17 DISPLAY duplicate records having matching data in some fields of a
table.
Select Emp_title, Affective_Date from Employee_Title group by Emp_title, Affective_date having count(*)>1;

---18 Display only odd rows from a table.
select *from Employees where Emp_id_PK %2<>0;

---19 Clone a new table from EMPLOYEE table.Create table Employee_Clone 
(Emp_id Int,
Fisrt_Name Varchar(50),
Last_name Varchar(50),
Salary Int,
Joining_date Date);
Select *from Employee_Clone 
Insert into Employee_Clone Values
(1, 'Sushant', 'Singh', 500000, '2020-06-11'),
(3, 'Parvathy', 'Singh', 700000, '2020-06-11'),
(8, 'Mahendra', 'Singh', 80000, '2020-06-11');
Select *from Employee_Clone

---20 DISPLAY the TOP 2 highest salary from a table
Select salary from Employees order by salary desc;

---21. DISPLAY the list of employees with the same salary.
Select First_name from Employees where salary in(select salary from Employees e where Employees.Emp_id_PK<>e.Emp_id_PK);

---22 Display the second highest salary from a table.
Select distinct Salary from Employees order by salary desc;

---23 Display the first 50% records from a table.
Select top 50 percent*from employees;

---24. Display the departments that have less than 4 people in it.
Select Department, count(First_Name) from Employees 
group by Department
having count(*) >=4;

---25. Display all departments along with the number of people in there.
Select Department, Count(First_Name) as Count from Employees group by Department;

---26 Display the name of employees having the highest salary in each
department.
Select concat(First_Name,' ',Last_Name) as Full_Name, Department, Salary from Employees where Salary in (Select max(salary) from Employees group by Department);

---27 Display the names of employees who earn the highest salary.
Select concat(First_Name,' ',Last_Name) as Full_Name from Employees where Salary in (select max(salary) from Employees);

---28 Diplay the average salaries for each department
Select avg(salary) as avg_salary from employees group by department;

---29 display the name of the employee who has got maximum bonus
Select max(Bonus_Amount) as Max_Bonus_Amount from Employee_Bonus;

---30 Display the first name and title of all the employees

