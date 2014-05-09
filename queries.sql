--
--given userID, find the friend of user
SELECT f.userID
FROM friendlist f
WHERE f.ownerID = 'a00112234'
;
--
--add friend
INSERT INTO friendlist
VALUES('a00112234', 'a00223456')
;