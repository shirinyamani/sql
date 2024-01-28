--ASSESMENT 2
--1
SELECT * FROM cd.facilities;

--2
SELECT name, membercost FROM
cd.facilities;

--3
SELECT * FROM
cd.facilities WHERE membercost> 0
LIMIT 5;

--4
SELECT facid, name, membercost, monthlymaintenance
FROM cd.facilities WHERE 
membercost BETWEEN 1 AND monthlymaintenance / 50;

--5
SELECT * FROM
cd.facilities
WHERE name LIKE '%Tennis%';

--6
SELECT * FROM cd.facilities
WHERE facid IN (1, 5);

--7
SELECT memid, surname, firstname, joindate 
FROM cd.members
WHERE joindate > '2012-09-01';


--8
SELECT DISTINCT(surname) FROM cd.members
ORDER BY surname LIMIT 10;

--9
SELECT joindate FROM cd.members
ORDER BY joindate DESC LIMIT 1;

--10
SELECT COUNT(facid) FROM cd.facilities
WHERE guestcost >=10;

--11
SELECT facid, COUNT(facid) AS Total_slot
FROM cd.bookings
WHERE EXTRACT(YEAR FROM starttime) = 2012 AND EXTRACT(MONTH FROM starttime) = 9
GROUP BY facid
ORDER BY Total_slot;


