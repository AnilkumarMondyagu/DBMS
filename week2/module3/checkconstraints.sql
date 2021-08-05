ALTER TABLE EventRequest ADD CHECK (status in("Pending","Denied","Approved"));

ALTER TABLE EventRequest ADD CHECK (estaudience>0);

ALTER TABLE ResourceTbl ADD CHECK (rate>0);

ALTER TABLE EventPlanLine ADD CHECK (timestart<timeend);