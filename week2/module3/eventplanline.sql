CREATE TABLE EventPlanLine(
	planno VARCHAR(4) NOT NULL,
    lineno VARCHAR(4) NOT NULL,
    timestart TIME NOT NULL,
    timeend TIME NOT NULL,
    numberfld INT NOT NULL,
    locno VARCHAR(4) NOT NULL,
    resno VARCHAR(4) NOT NULL,
    CONSTRAINT EventPlaneLinePk PRIMARY KEY(planno,lineno),
    CONSTRAINT EventPlanFk FOREIGN KEY(planno) REFERENCES EventPlan(planno),
    CONSTRAINT LocationFk FOREIGN KEY(locno) REFERENCES Location(locNo),
    CONSTRAINT ResourceTblFk FOREIGN KEY(resno) REFERENCES ResourceTbl(resno)
);
    