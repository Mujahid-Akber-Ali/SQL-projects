SELECT * FROM employee_data.employee;

/* Create Employee Table*/
Create table Employee(
EmpID INT,
Emp_Name NVARCHAR(30),
Age INT,
EmailID NVARCHAR(30),
PhoneNo NVARCHAR(30),
City NVARCHAR(30)
);

/* Enter Data in Employee Table*/
INSERT INTO employee(EmpID,Emp_Name,Age,EmailID,PhoneNo,City)VALUES(1,'Aadil',24,'Aadil@gmail.com','0313-3226755','Karachi');
INSERT INTO employee(EmpID,Emp_Name,Age,EmailID,PhoneNo,City)VALUES(2,'Asad',25,'Asad@gmail.com','0212-3556755','Lahore');
INSERT INTO employee(EmpID,Emp_Name,Age,EmailID,PhoneNo,City)VALUES(3,'Ahmed',24,'AhmedAli@gmail.com','0341-3226788','Karachi');
INSERT INTO employee(EmpID,Emp_Name,Age,EmailID,PhoneNo,City)VALUES(4,'Shahryar',25,'Shahryar@gmail.com','0321-426755','Lahore');
INSERT INTO employee(EmpID,Emp_Name,Age,EmailID,PhoneNo,City)VALUES(5,'Areeb',24,'AreebAhmedKhan@gmail.com','0212-5526755','Karachi');
INSERT INTO employee(EmpID,Emp_Name,Age,EmailID,PhoneNo,City)VALUES(6,'Khushdil',28,'Khushdil@gmail.com','0215-9026755','Lahore');
INSERT INTO employee(EmpID,Emp_Name,Age,EmailID,PhoneNo,City)VALUES(7,'Jaffer',28,'Jaffer@gmail.com','0215-23455644','Peshawar');


SELECT * FROM employee_data.project;


/* Create Project Table*/
Create table Project(
Emp_Name NVARCHAR(30),
Emp_id INT,
ProjectName NVARCHAR(30)
);


/* Add data in Project Table*/
INSERT INTO Project(Emp_Name,Emp_ID,ProjectName)
VALUES('Mujahid',1,'Project1'),
('Akbar',2,'Project2'),
('Ashar',3,'Project3'),
('Aadil',4,'Project4'),
('Asad',5,'Project5'),
('Ahmed',6,'Project6'),
('Akbar',7,'Project2');


/* Update Table Values*/
UPDATE Project
SET Emp_Name = 'Smith', ProjectName= 'Project23'
WHERE Emp_id = 1;

/* Reset Table Values Table Values*/
UPDATE Project
SET Emp_Name = 'Mujahid', ProjectName= 'Project2'
WHERE Emp_id = 1;


/* Select Specific values from table*/
Select EmpID, EmailID from employee_data.employee;


/* Select distinct from Table*/
Select  distinct(City) from employee_data.employee;

/* Count values*/
select count(City) as count_of_City from employee_data.employee;

/* Count distinc values*/
select count(distinct City) as count_of_City from employee_data.employee;


/* Use Where*/
Select * from employee_data.employee where city = 'karachi';
Select EmailID,PhoneNo from employee_data.employee where PhoneNo = '0313-3226755';

/* Use AND*/
Select EmailID, PhoneNo, City from employee_data.employee where PhoneNo = '0313-3226755' AND City ='Karachi';

/* Use OR*/
Select EmailID, PhoneNo, City from employee_data.employee where PhoneNo = '0313-3226755' OR City ='Karachi';

/* Use NOT*/
Select EmailID, PhoneNo, City from employee_data.employee where NOT PhoneNo = '0313-3226755' AND NOT City ='Lahore';

/* Use OrderBy*/
select * from employee_data.employee order by Age; /* ASC*/ 
select * from employee_data.employee order by Age DESC; /* DESC*/

/* Use GroupBy*/
select Count(City) as City_Count,Count(PhoneNo) as Total_Numbers, City from employee_data.employee group by City; 

/* Use Having*/
select Count(City) as City_Count,Count(PhoneNo) as Total_Numbers, City from employee_data.employee group by City having City_Count > 1; 

/* Use NuLL*/
INSERT INTO employee(EmpID,Emp_Name,Age,EmailID,PhoneNo,City)VALUES(7,'Jaffer',28,'Jaffer@gmail.com',NULL,NULL);
select * from employee_data.employee where City is null;

/* Use NOT NuLL*/
select * from employee_data.employee where City is not null;

/* Delete Value*/
delete from employee_data.employee where EmpID = 7 and Emp_Name = 'Jaffer';

/* Use Like*/
select * from employee_data.employee where City Like 'k%';
select * from employee_data.employee where City Like 'Lah%';
select * from employee_data.employee where City Like '%chi';
select * from employee_data.employee where City Like '%ara%';

/* Use Avg,Sum,Min and Max*/
Select Avg(Age) from employee_data.employee;
Select Max(Age) from employee_data.employee;
Select Min(Age) from employee_data.employee;
Select Sum(Age) from employee_data.employee;


/* Use Between*/
Select * from employee_data.employee where age between 23 and 28;

/* Use Limit*/
Select * from employee_data.employee where age between 23 and 28 Limit 3;


INSERT INTO employee(EmpID,Emp_Name,Age,EmailID,PhoneNo,City)VALUES(8,'Waleed',28,'Waleed@gmail.com','0231-22343','Peshawar');

/* Use Join*/
Select * from employee_data.employee e join employee_data.project p
on e.EmpID = p.Emp_id; 

/* Use Left Join*/
Select * from employee_data.employee e Left join employee_data.project p
on e.EmpID = p.Emp_id;

/* Use Right Join*/
Select * from employee_data.employee e Right join employee_data.project p
on e.EmpID = p.Emp_id;

/* Use Right Join*/
drop table employee_data.employee;
drop table employee_data.project;