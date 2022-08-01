use LearnSqlDB;
create table Employee_Details (Name varchar(20) Not null primary key , Age int(2) Not Null , 
Department varchar(30) NOT NULL , Salary int(10) Not Null); 

select * from Employee;

Insert into Employee Values ('Simran' , 20 , 'Technical' , 50000);
Insert into Employee Values ('Harsh' , 22, 'Marketing' , 40000);
Insert into Employee Values ('Abishek' , 21 , 'Marketing' , 30000);
Insert into Employee Values ('Tanuja' , 20 , 'Technical' , 45000);
Insert into Employee Values ('Vijay' , 21 , 'Marketing' , 35000);

SELECT Name, Age, Department, Salary, 
avg(Salary) OVER( PARTITION BY Department ORDER BY Age) AS Avg_Salary
FROM employee;

SELECT Name, Age, Department, Salary, 
count(Name) OVER( PARTITION BY Department ORDER BY Salary Desc) AS Employee_Count
FROM employee;

SELECT row_number() OVER( PARTITION BY Department ORDER BY Salary Desc) AS Roll_NO_By_Dept,Name , Age, Department, Salary,
Rank() OVER( PARTITION BY Department ORDER BY Salary Desc) AS Employee_Rank, 
Dense_Rank() OVER( PARTITION BY Department ORDER BY Salary Desc) AS Employee_Dense_Rank
FROM employee;

SELECT Name, Age, Department, Salary, 
ntile(2) OVER( PARTITION BY Department ORDER BY Salary) AS Employee_Group
FROM employee order by Employee_Group;


SELECT Name, Age, Department, Salary, 
ntile(2) OVER( ) AS Employee_Group
FROM employee;


SELECT Name, Age, Department, Salary, 
cume_dist() OVER( PARTITION BY Department ORDER BY Salary) AS Cumulative
FROM employee;


SELECT Name, Age, Department, Salary, 
cume_dist() OVER( ORDER BY Salary) AS Cumulative
FROM employee;


SELECT Name, Age, Department, Salary, 
lead(salary,1) OVER( ORDER BY Salary) AS NExt_salary
FROM employee;

SELECT Name, Age, Department, Salary, 
Lag(salary,1) OVER( ORDER BY Salary) AS Previous_salary
FROM employee;




SELECT Name, Age, Department, Salary, 
first_value(Salary) OVER( PARTITION BY Department ORDER BY Salary) AS Lowest_salary
FROM employee;


SELECT Name, Age, Department, Salary, 
nth_value(Salary,2) OVER( PARTITION BY Department ORDER BY Salary) AS 2nd_Lowest_salary
FROM employee;