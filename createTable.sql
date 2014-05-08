SET ECHO ON
--
DROP TABLE Users;
--
CREATE TABLE Users
(userID     varchar(9)     NOT NULL
,lastName   varchar(32)
,firstName  varchar(32)
,email      varchar(32)    NOT NULL
,password   varchar(32)    NOT NULL
,valid    tinyint(1)       NOT NULL DEFAULT 0
,CONSTRAINT PKUser PRIMARY KEY (userID)
--,CONSTRAINT ChkEmail CHECK (email LIKE '%bcit.ca')
);
--Display Table info for debug
DESCRIBE Users;
--
--
DROP TABLE FriendList;
--
CREATE TABLE FriendList
(ownerID    varchar(9)     NOT NULL
,userID     varchar(9)     NOT NULL
,CONSTRAINT PKFriend PRIMARY KEY (userID, ownerID)
,CONSTRAINT FKFriend1 FOREIGN KEY (ownerID) references Users(userID) 
,CONSTRAINT FKFriend2 FOREIGN KEY (userID) references Users(userID)
--,CONSTRAINT ChkEmail CHECK (email LIKE '%bcit.ca')
);
--Display Table info for debug
DESCRIBE FriendList;
--
--
--
DROP TABLE Location;
--
CREATE TABLE location
(buildingID    varchar(4)     NOT NULL
,roomID        varchar(5)     NOT NULL
,CONSTRAINT PKLocation PRIMARY KEY (buildingID, roomID)
,CONSTRAINT ChkBuilding CHECK (buildingID LIKE 'NE%' OR buildingID LIKE 'NW%' OR buildingID LIKE 'SE%' OR buildingID LIKE 'SW%')
);
--Display Table info for debug
DESCRIBE location;
--
--
--
DROP TABLE currentLocation;
--
CREATE TABLE location
(userID        varchar(9)     NOT NULL
,buildingID    varchar(4)     NOT NULL
,roomID        varchar(5)     NOT NULL
,currentFromTime     time     NOT NULL
,currentToTime       time     NOT NULL
,CONSTRAINT PKCurrentLocation PRIMARY KEY (userID, )
,CONSTRAINT FKFriend1 FOREIGN KEY (userID) references Users(userID) 
,CONSTRAINT ChkBuilding CHECK (buildingID LIKE 'NE%' OR buildingID LIKE 'NW%' OR buildingID LIKE 'SE%' OR buildingID LIKE 'SW%')
);
--Display Table info for debug
DESCRIBE location;