CREATE TABLE EventRequest(
	eventno VARCHAR(4) NOT NULL,
    dateheld DATE NOT NULL,
    datereq DATE NOT NULL,
    facno VARCHAR(4) NOT NULL,
    custno VARCHAR(4) NOT NULL,
    dateauth DATE,
    status VARCHAR(10) NOT NULL,
    estcost DECIMAL(10,2) NOT NULL,
    estaudience INT NOT NULL,
    budno VARCHAR(10),
    CONSTRAINT EventRequestPk PRIMARY KEY(eventno),
    CONSTRAINT FacilityFk2 FOREIGN KEY(facno) REFERENCES Facility(facno),
    CONSTRAINT CustomerFk2 FOREIGN KEY(custno) REFERENCES Customer(custno)
);