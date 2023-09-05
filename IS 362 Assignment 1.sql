--	Part 1
--	Question 1:
SELECT * FROM planes WHERE speed IS NOT NULL ORDER BY speed ASC;
SELECT MIN(speed) FROM planes WHERE speed IS NOT NULL;
SELECT MAX(speed) FROM planes WHERE speed IS NOT NULL;
--	Question 2:
SELECT SUM(distance) FROM flights WHERE month = '1' AND year = '2013';
SELECT SUM(distance) FROM flights WHERE tailnum = '' AND month = '1' AND year = '2013'; 
--	Question 3:
SELECT SUM(flights.distance), planes.manufacturer FROM flights INNER JOIN planes ON flights.tailnum = planes.tailnum WHERE flights.month = '7' AND flights.day = '5' AND flights.year = '2013' GROUP BY planes.manufacturer;
SELECT SUM(flights.distance), planes.manufacturer FROM flights LEFT JOIN planes ON flights.tailnum = planes.tailnum WHERE flights.month = '7' AND flights.day = '5' AND flights.year = '2013' GROUP BY planes.manufacturer;
--	Question 4:
SELECT airlines.name, COUNT(airlines.name) AS 'number of flights' FROM airlines LEFT JOIN flights ON airlines.carrier = flights.carrier WHERE flights.origin = 'EWR' GROUP BY airlines.name ORDER BY COUNT(airlines.name) DESC LIMIT 1;
--	Part 2
SELECT airlines.name, COUNT(airlines.name) AS 'number of flights', flights.origin FROM airlines LEFT JOIN flights ON airlines.carrier = flights.carrier GROUP BY flights.origin, airlines.name ORDER BY flights.origin;