ALTER TABLE location
ADD CONSTRAINT ChkBuilding CHECK (buildingID LIKE 'NE%' OR buildingID LIKE 'NW%' OR buildingID LIKE 'SE%' OR buildingID LIKE 'SW%')
;

ALTER TABLE location
ADD CONSTRAINT ChkBuilding CHECK (buildingID CONTAINS ('NE' OR 'NW' OR 'SE' OR 'SW'))
;