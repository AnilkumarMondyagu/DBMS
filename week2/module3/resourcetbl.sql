CREATE TABLE ResourceTbl(
	resno VARCHAR(4),
    resname VARCHAR(20) NOT NULL,
    rate DECIMAL(4,2) NOT NULL,
    CONSTRAINT ResourceTblPk PRIMARY KEY(resno)
);