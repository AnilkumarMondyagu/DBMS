INSERT INTO Facility (facNo, facName) VALUES ('F104', 'Swimming Pool');

INSERT INTO Location (locNo, facNo, locName) VALUES ('L107', 'F104', 'Door');

INSERT INTO Location (locNo, facNo, locName) VALUES ('L108', 'F104', 'Locker Room');

SET SQL_SAFE_UPDATES = 0;
UPDATE Location
SET locName = 'Gate'
WHERE locNo = 'L107';
SET SQL_SAFE_UPDATES = 1;

DELETE FROM Location
WHERE locNo = 'L108';
