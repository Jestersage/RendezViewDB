ALTER TABLE location
ADD CONSTRAINT ChkBuilding CHECK (buildingID LIKE 'NE%' OR buildingID LIKE 'NW%' OR buildingID LIKE 'SE%' OR buildingID LIKE 'SW%')
;
ALTER TABLE schedule
ADD CONSTRAINT FKLocation FOREIGN KEY (buildingID, roomID) references location(buildingID, roomID) 
;