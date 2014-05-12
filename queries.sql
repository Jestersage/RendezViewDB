--
--given userID, find the friend of user
SELECT f.userID
FROM friendlist f
    inner join users u
        on u.userID = f.ownerID
WHERE f.ownerID = 'a00112234'
;
--
--add friend
INSERT INTO friendlist
VALUES('a00112234', 'a00223456')
;
--given userID = A00855385, find its schedule
SELECT s.userID, l.buildingID, l.roomID, s.fromTime, s.toTime
FROM schedule s
    inner join users u
        on u.userID = s.userID
    inner join location l
        on s.locationID = l.locationID
WHERE s.userID = 'A00855385'
;
--give first name of a user, find their schedule
--given userID = A00855385, find its schedule
SELECT u.firstName, u.lastName, l.buildingID, l.roomID, s.fromTime, s.toTime
FROM schedule s
    inner join users u
        on u.userID = s.userID
    inner join location l
        on s.locationID = l.locationID
WHERE u.firstName = 'Lewis'
;
--Inset data from schedule to currentLocation
INSERT INTO currentLocation
