CREATE TABLE Employee (
  empNo CHAR(4) NOT NULL,
  empName VARCHAR(20) NOT NULL,
  department VARCHAR(20) NOT NULL,
  email VARCHAR(40) NOT NULL,
  phone VARCHAR(10) NOT NULL,
  CONSTRAINT EmployeePK PRIMARY KEY (empNo)
);
