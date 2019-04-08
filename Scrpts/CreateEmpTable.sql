
CREATE TABLE Employees(

    employeeNO int  NOT NULL,
	lastName varchar(50) NOT NULL,
	firstName varchar(50) NOT NULL,
	gender char(1) NOT NULL,
	IDNumber varchar(20) NOT NULL,
	salaryLevelID int NULL,
	departmentID int NOT NULL,
    PRIMARY KEY (employeeNO),
	Foreign Key (departmentID) References Department(departmentID),
	Foreign Key (salaryLevelID) References SalaryLevel(salaryLevelID)
);