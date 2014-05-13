INSERT INTO Schedule
    VALUES ('A00855385', 1, 2, TIME('12:30:00'), TIME('13:30:00')); 
--
INSERT INTO Schedule (userID, locationID, days, fromTime, toTime)
SELECT 'A00855385', l.locationID, 3, TIME('12:30:00'), TIME('13:30:00')
FROM location l
WHERE l.buildingID = 'sw5'
    AND l.roomID = '1850'
;