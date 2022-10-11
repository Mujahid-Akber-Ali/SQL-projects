Create table Employee(
EmpID INT,
Emp_Name NVARCHAR(30),
Age INT,
EmailID NVARCHAR(30),
PhoneNo NVARCHAR(30),
City NVARCHAR(30)
);

INSERT INTO employee(EmpID,Emp_Name,Age,EmailID,PhoneNo,City)VALUES(1,'Aadil',24,'Aadil@gmail.com','0313-3226755','Karachi');
INSERT INTO employee(EmpID,Emp_Name,Age,EmailID,PhoneNo,City)VALUES(2,'Asad',25,'Asad@gmail.com','0212-3556755','Lahore');
INSERT INTO employee(EmpID,Emp_Name,Age,EmailID,PhoneNo,City)VALUES(3,'Ahmed',24,'AhmedAli@gmail.com','0341-3226788','Karachi');
INSERT INTO employee(EmpID,Emp_Name,Age,EmailID,PhoneNo,City)VALUES(4,'Shahryar',25,'Shahryar@gmail.com','0321-426755','Lahore');
INSERT INTO employee(EmpID,Emp_Name,Age,EmailID,PhoneNo,City)VALUES(5,'Areeb',24,'AreebAhmedKhan@gmail.com','0212-5526755','Karachi');
INSERT INTO employee(EmpID,Emp_Name,Age,EmailID,PhoneNo,City)VALUES(6,'Khushdil',28,'Khushdil@gmail.com','0215-9026755','Lahore');

Create table Project(
Emp_Name NVARCHAR(30),
Emp_id INT,
ProjectName NVARCHAR(30)
);

INSERT INTO Project(Emp_Name,Emp_ID,ProjectName)VALUES('Mujahid',1,'Project1');
INSERT INTO Project(Emp_Name,Emp_ID,ProjectName)VALUES('Akbar',2,'Project2');
INSERT INTO Project(Emp_Name,Emp_ID,ProjectName)VALUES('Ashar',3,'Project3');
INSERT INTO Project(Emp_Name,Emp_ID,ProjectName)VALUES('Aadil',4,'Project4');
INSERT INTO Project(Emp_Name,Emp_ID,ProjectName)VALUES('Asad',5,'Project5');
INSERT INTO Project(Emp_Name,Emp_ID,ProjectName)VALUES('Ahmed',6,'Project6');
INSERT INTO Project(Emp_Name,Emp_ID,ProjectName)VALUES('Akbar',7,'Project2');

SELECT * FROM employee.project;
SELECT * FROM employee.employee;

SELECT * FROM employee.project,employee.employee;

drop table project;
drop table Employee;

