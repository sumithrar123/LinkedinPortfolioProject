Create database Course_Details1
Use Course_details1
Create table STUDIES
(
PNAME Varchar(50),
INSTITUTE VARCHAR(50),
COURSE VARCHAR(50),
COURSE_FEE INT
);
Select *from Studies
Insert into  Studies values
('ANAND', 'SABHARI', 'PGDCA', 4500),
('ALTAF', 'COIT', 'DCA', 7200),
('JULIANA', 'BDPS', 'MCA', 22000),
('KAMALA', 'PRAGATHI', 'DCA', 5000),
('MARY', 'SABHARI', 'PGDCA', 4500),
('NELSON', 'PRAGATHI', 'DAP', 6200),
('PATRICK', 'PRAGATHI', 'DCAP', 5200),
('QADIR', 'APPLE', 'HDCA', 14000),
('RAMESH', 'SABHARI', 'PGDCA', 4500),
('REBECCA', 'BRILLIANT', 'DCAP', 11000),
('REMITHA', 'BDPS', 'DCS', 6000),
('REVATHI', 'SABHARI', 'DAP', 5000),
('VIJAYA', 'BDPS', 'DCA', 48000);
Select *from Studies

create table software
(PNAME varchar(50),
TITLE varchar(50),
DEVELOPIN varchar(50),
SCOST DECIMAL (10,2),
DCOST INT,
SOLD INT);

Select *from Software

Insert into software values
('MARY', 'README', 'CPP', 300, 1200, 84),
('ANAND', 'PARACHUTES', 'BASIC', 399.95, 6000, 43),
('ANAND', 'VIDEOTITLING', 'PASCAL', 7500, 16000, 9),
('JULIANA', 'INVENTORY', 'COBOL', 3000, 3500, 0),
('KAMALA', 'PAYROLL PKG', 'DBASE', 9000, 20000, 7),
('MARY', 'FINANCIAL ACCT', 'ORACLE', 18000, 85000, 4),
('MARY', 'CODEGENERATOR', 'C', 4500, 20000, 23),
('PATTRICK', 'README', 'CPP', 300, 1200, 84),
('QADIR', 'BOMBSAWAY', 'ASSEMBLY', 750, 3000, 11),
('QADIR', 'VACCINES', 'C', 1900, 3100, 21),
('RAMESH', 'HOTELMGMT', 'DBASE', 13000, 35000, 4),
('RAMESH', 'DEAD LEE', 'PASCAL', 599.95, 4500, 73),
('REMITHA', 'PC UTILITIES', 'C', 725, 5000, 51),
('REMITHA', 'TSR HELP PKG', 'ASSEMBLY', 2500, 6000, 7),
('REVATHI', 'HOSPITALMGMT', 'PASCAL', 1100, 75000, 2),
('VIJAYA', 'TSREDITOR', 'C', 900, 700, 6);

Select *from Software

Create table Programmer
(PNAME VARCHAR(50),
DOB Date,
DOJ Date,
GENDER varchar(50),
PROF1 varchar(50),
PROF2 varchar(50),
SALARY INT);

Select *from Programmer
Insert into Programmer values
('ANAND','12-Apr-66','21-Apr-92','M','PASCAL','BASIC',3200 ),
('ALTAF','02-Jul-64','13-Nov-90','M','CLIPPER','COBOL',2800 ),
('JULIANA','31-Jan-60','21-Apr-90','F','COBOL','DBASE',3000 ),
('KAMALA','30-Oct-68','02-Jan-92','F','C','DBASE',2900 ),
('MARY','24-Jun-70','01-Feb-91','F','CPP','ORACLE',4500 ),
('NELSON','11-Sep-85','11-Oct-89','M','COBOL','DBASE',2500 ),
('PATTRICK','10-Nov-65','21-Apr-90','M','PASCAL','CLIPPER',2800 ),
( 'QADIR','31-Aug-65','21-Apr-91','M','ASSEMBLY','C',3000 ),
('RAMESH','03-May-67','28-Feb-91','M','PASCAL','DBASE',3200 ),
('REBECCA','01-Jan-67','01-Dec-90','F','BASIC','COBOL',2500 ),
('REMITHA','19-Apr-70','20-Apr-93','F','C','ASSEMBLY',3600 ),
('REVATHI','02-Dec-69','02-Jan-92','F','PASCAL','BASIC',3700 ),
('VIJAYA','14-Dec-65','02-May-92','F','FOXPRO','C',3500);
Select *from Programmer

Select *from Studies
Select *from Software
Select *from Programmer

1. Find ou the selling cost AVG for packages developed in Pascal.
SELECT AVG (SCOST) AS AVG_SCOST FROM SOFTWARE
WHERE DEVELOPIN LIKE 'PASCAL'

2. Display Names, Ages of all Programmers.
select PNAME, DOB FROM PROGRAMMER;

3. Display the Names of those who have done the DAP Course.
SELECT PNAME FROM STUDIES 
WHERE COURSE LIKE 'DAP'

4. Display the Names and Date of Births of all Programmers Born in January.
SELECT PNAME, DOB FROM PROGRAMMER
WHERE DOB LIKE 'JANUARY'

5. What is the Highest Number of copies sold by a Package?
SELECT MAX(SOLD) AS MAX_SOLD_OF_COPIES FROM SOFTWARE;

6. Display lowest course Fee.
SELECT MIN(COURSE_FEE) AS MIN_COURSE_FEE FROM STUDIES;

7. How many programmers done the PGDCA Course?
SELECT count(*) from studies
where course like 'PGDCA'

8. How much revenue has been earned thru sales of Packages Developed in C.
SELECT sum(sold*scost) from software where developin like 'C';

9. Display the Details of the Software Developed by Ramesh.
SELECT *from software where PNAME = 'Ramesh';

10. How many Programmers Studied at Sabhari?
Select COUNT(PNAME) AS NO_OF_PNAME FROM STUDIES WHERE INSTITUTE LIKE 'SABHARI';

11. Display details of Packages whose sales crossed the 2000 Mark.
SELECT *FROM SOFTWARE WHERE (SOLD*SCOST)>2000;

12. Display the Details of Packages for which Development Cost have been recovered.
select *from software where (sold*scost) > dcost;

13. What is the cost of the costliest software development in Basic?
Select max(scost) from software where developin like 'basic';

14. How many Packages Developed in DBASE?
select count (title)as total from software where developin = 'DBASE';

15. How many programmers studied in Pragathi?
SELECT COUNT( INSTITUTE) AS TOTAL FROM STUDIES WHERE INSTITUTE = 'PRAGATHI';

16. How many Programmers Paid 5000 to 10000 for their course?
SELECT COUNT (PNAME) FROM STUDIES WHERE INSTITUTE = 'PRAGATHI';

17. What is AVG Course Fee
SELECT AVG (COURSE_FEE) AS AVG_COURSE_FEE FROM STUDIES

18. Display the details of the Programmers Knowing C.
select *from programmer where prof1 = 'c' or prof2 ='c';

19. How many Programmers know either COBOL or PASCAL.
select count (PNAME) AS PROGRAMMERS FROM PROGRAMMER WHERE PROF1 IN ('COBOL', 'PASCAL') OR PROF2 IN ('COBOL', 'PASCAL');

20. How many Programmers Don’t know PASCAL and C
SELECT COUNT(PNAME) AS NO_OF_PROGRAMMER FROM PROGRAMMER WHERE PROF1 NOT IN ('PASCAL', 'C') and Prof2 not in('PASCAL', 'C');
 
---21. How old is the Oldest Male Programmer.
SELECT MAX(FLOOR(SYSDATE - DOB/365)) AS OLDEST_MALE_PROGRAMMER FROM PROGRAMMER;

---22. What is the AVG age of Female Programmers?
SELECT AVG(FLOOR(SYSDATE - DOB)/365))) As Average_Female_Age From Programmer;

---23. Calculate the Experience in Years for each Programmer and Display with theirnames in Descending order.
SELECT PNAME, FLOOR(SYSDATE -DOJ)/365) AS EXPERIENCE FROM PROGRAMMER ORDER BY PNAME DESC;


 ---24. Who are the Programmers who celebrate their Birthday’s During the Current Month?
 SELECT PNAME FROM PROGRAMMER WHERE TO_CHAR(DOB, 'MM') = TO_CHAR(SYSDATE, 'MM');
 
---25. How many Female Programmers are there?
SELECT COUNT(PNAME) AS FEMALE_PROGRAMMER FROM PROGRAMMER WHERE GENDER ='F';

---26. What are the Languages studied by Male Programmers.
SELECT DISTINCT PROF1 LANGUAGES FROM PROGRAMMER WHERE GENDER = 'M' UNION SELECT DISTINCT PROF2 FROM PROGRAMMER WHERE GENDER = 'M';

---27. What is the AVG Salary?
SELECT AVG (SALARY) AS AVG_SALARY FROM PROGRAMMER;

---28. How many people draw salary 2000 to 4000?
SELECT PNAME FROM PROGRAMMER WHERE SALARY BETWEEN 2000 AND 4000;

---29. Display the details of those who don’t know Clipper, COBOL or PASCAL.
 SELECT *FROM PROGRAMMER WHERE PROF1 NOT IN ('CLIPPER', 'COBOL', 'PASCAL') AND PROF2 NOT IN ('CLIPPER', 'COBOL', 'PASCAL');

---30. Display the Cost of Package Developed By each Programmer.
SELECT PNAME, SUM(DCOST * SOLD) AS TOTAL_COST FROM SOFTWARE GROUP BY PNAME;

---25. How many Female Programmers are there?
SELECT COUNT(PNAME) AS FEMALE_PROG FROM PROGRAMMER WHERE GENDER ='F';


---26. What are the Languages studied by Male Programmers.
SELECT DISTINCT PROF1 LANGUAGES FROM PROGRAMMER WHERE GENDER = 'M' UNION SELECT DISTINCT PROF2 FROM PROGRAMMER WHERE GENDER = 'M';

---27. What is the AVG Salary?
SELECT AVG (SALARY) AS AVG_SALARY FROM PROGRAMMER;

---28. How many people draw salary 2000 to 4000?
SELECT PNAME FROM PROGRAMMER WHERE SALARY BETWEEN 2000 AND 4000;

---29. Display the details of those who don’t know Clipper, COBOL or PASCAL.
 SELECT *FROM PROGRAMMER WHERE PROF1 NOT IN ('CLIPPER', 'COBOL', 'PASCAL') AND PROF2 NOT IN ('CLIPPER', 'COBOL', 'PASCAL');

---30. Display the Cost of Package Developed By each Programmer.
SELECT PNAME, SUM(DCOST * SOLD) AS TOTAL_COST FROM SOFTWARE GROUP BY PNAME;

---31. Display the sales values of the Packages Developed by the each Programmer.
SELECT PNAME, SUM(SCOST*SOLD)  FROM SOFTWARE GROUP BY PNAME;
 
---32. Display the Number of Packages sold by Each Programmer.
SELECT PNAME, COUNT(TITLE) AS TOTAL_PACK FROM SOFTWARE GROUP BY PNAME;

---33. Display the sales cost of the packages Developed by each Programmer Language wise. 
SELECT DEVELOPIN, SUM(SCOST) FROM SOFTWARE GROUP BY DEVELOPIN;


---34. Display each language name with AVG Development Cost, AVG Selling Cost and AVG Price per Copy.
SELECT DEVELOPIN, AVG(DCOST), AVG(SCOST) FROM SOFTWARE GROUP BY DEVELOPIN;

---35. Display each programmer’s name, costliest and cheapest Packages Developed by him or her.
SELECT PNAME, MIN(SCOST), MAX(DCOST) FROM SOFTWARE GROUP BY PNAME;

---36. Display each institute name with number of Courses, Average Cost per Course.
SELECT INSTITUTE,COUNT(COURSE) AS NO_OF_COURSE FROM STUDIES 
GROUP BY INSTITUTE;
SELECT AVG(COURSE_FEE) AS AVG_COST_PER_COURSE FROM STUDIES;

---37. Display each institute Name with Number of Students.
SELECT INSTITUTE, COUNT(PNAME) FROM STUDIES GROUP BY INSTITUTE;

---38. Display Names of Male and Female Programmers. Gender also.
SELECT PNAME, GENDER FROM PROGRAMMER ORDER BY GENDER ASC;

---39. Display the Name of Programmers and Their Packages.
SELECT PNAME, SALARY FROM PROGRAMMER;

---40. Display the Number of Packages in Each Language Except C and C++.
SELECT COUNT(TITLE) DEVELOPIN FROM SOFTWARE 
GROUP BY DEVELOPIN;

---41. Display the Number of Packages in Each Language for which Development Cost is less than 1000.
SELECT COUNT(TITLE), DEVELOPIN FROM SOFTWARE WHERE DCOST<1000 GROUP BY DEVELOPIN;

---42. Display AVG Difference between SCOST, DCOST for Each Package.
SELECT DEVELOPIN, AVG(DCOST - SCOST) FROM SOFTWARE GROUP BY DEVELOPIN;

---43. Display the total SCOST, DCOST and amount to Be Recovered for each Programmer for Those Whose Cost has not yet been Recovered.
SELECT SUM(SCOST), SUM(DCOST), SUM(DCOST-(SOLD*SCOST)) FROM SOFTWARE GROUP BY PNAME
HAVING SUM(DCOST)>SUM(SOLD*SCOST);

---44. Display Highest, Lowest and Average Salaries for those earning more than 2000.
SELECT MAX(SALARY), MIN(SALARY), AVG(SALARY) FROM PROGRAMMER WHERE SALARY > 2000;

---45. Who is the Highest Paid C Programmers?
SELECT *FROM PROGRAMMER WHERE SALARY = (SELECT MAX(SALARY) FROM PROGRAMMER WHERE PROF1 LIKE 'C' OR PROF2 LIKE 'C');

---46. Who is the Highest Paid Female COBOL Programmer?
SELECT *FROM PROGRAMMER WHERE SALARY = (SELECT MAX(SALARY) FROM PROGRAMMER WHERE (PROF1 LIKE 'COBOL' OR PROF2 LIKE 'COBOL')) AND GENDER LIKE 'F';

---47. Display the names of the highest paid programmers for each Language.
SELECT PNAME, SALARY, PROF1 FROM PROGRAMMER WHERE  PROF1 IN (SELECT MAX(SALARY),PROF1 FROM PROGRAMMER GROUP BY PROF1);

---48. Who is the least experienced Programmer.);
SELECT FLOOR((SYSDATE-DOJ)/365) EXP, PNMAME FROM PROGRAMMER WHERE FLOOR((SYSDATE-DOJ)/365) = (SELECT MIN(FLOOR((SYSDATE-DOJ)/365)) FROM PROGRAMMER);

---49. Who is the most experienced male programmer knowing PASCAL.




50. Which Language is known by only one Programmer?
51. Who is the Above Programmer Referred in 50?
52. Who is the Youngest Programmer knowing DBASE?
53. Which Female Programmer earning more than 3000 does not know C, C++,
ORACLE or DBASE?
54. Which Institute has most number of Students?
55. What is the Costliest course?
56. Which course has been done by the most of the Students?
57. Which Institute conducts costliest course.
58. Display the name of the Institute and Course, which has below AVG course fee.
59. Display the names of the courses whose fees are within 1000 (+ or -) of the
Average Fee,
60. Which package has the Highest Development cost?
61. Which course has below AVG number of Students?
62. Which Package has the lowest selling cost?
63. Who Developed the Package that has sold the least number of copies?
64. Which language has used to develop the package, which has the highest
sales amount?
65. How many copies of package that has the least difference between
development and selling cost where sold.
66. Which is the costliest package developed in PASCAL.
67. Which language was used to develop the most number of Packages.
68. Which programmer has developed the highest number of Packages? 