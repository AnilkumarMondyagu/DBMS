CREATE TABLE EventPlan(
	planno VARCHAR(4) NOT NULL,
    eventno VARCHAR(4) NOT NULL,
    workdate DATE NOT NULL,
    notes VARCHAR(30),
    activity VARCHAR(10) NOT NULL,
    empno CHAR(4),
    CONSTRAINT EventPlanPk PRIMARY KEY(planno),
    CONSTRAINT EmployeeFk FOREIGN KEY(empno) REFERENCES Employee(empNo),
    CONSTRAINT EventRequestFk FOREIGN KEY(eventno) REFERENCES EventRequest(eventno)
);
    