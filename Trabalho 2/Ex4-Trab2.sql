--Exercício 4
SELECT CONCAT(D.Forename, ' ', D.Surname) AS Name, R.RaceId, AVG(Lt.Milliseconds) as Average
FROM LapTimes Lt
JOIN Driver D ON D.DriverId = Lt.Driverid
JOIN Races R ON R.RaceId = Lt.RaceId
GROUP BY CUBE(CONCAT(D.Forename, ' ', D.Surname) , R.RaceId)
ORDER BY Name,R.RaceiD, Average

--Exercício 4 Letra a
SELECT CONCAT(D.Forename, ' ', D.Surname) AS Name, R.RaceId, AVG(Lt.Milliseconds) as Average
FROM LapTimes Lt
JOIN Driver D ON D.DriverId = Lt.Driverid
JOIN Races R ON R.RaceId = Lt.RaceId
WHERE R.RaceId = '1051'
GROUP BY CUBE(CONCAT(D.Forename, ' ', D.Surname) , R.RaceId)
ORDER BY Name,R.RaceiD, Average

--Exercício 4 Letra b
SELECT CONCAT(D.Forename, ' ', D.Surname) AS Name, R.RaceId, AVG(Lt.Milliseconds) as Average
FROM Driver D
JOIN LapTimes Lt ON D.DriverId = Lt.Driverid
JOIN Races R ON R.RaceId = Lt.RaceId
WHERE CONCAT(D.Forename, ' ', D.Surname) = 'Daniel Ricciardo' AND R.RaceId = '1053'
GROUP BY CUBE(CONCAT(D.Forename, ' ', D.Surname),R.RaceId)
ORDER BY Name,R.RaceiD, Average