--Exercício 1 Letra b
SELECT S.Status , COUNT(*)
FROM Results Re
JOIN Status S ON S.StatusID = Re.StatusID
WHERE S.Status = 'Accident' 
GROUP BY ROLLUP (S.Status )
ORDER BY COUNT(*) DESC 
LIMIT 1;

--Exercício 1 Letra c
SELECT C.Nationality , S.Status , COUNT(*)
FROM Results Re
JOIN Constructors C ON C.ConstructorID = Re.ConstructorID
JOIN Status S ON S.StatusID = Re.StatusID
WHERE C.Nationality = 'British' AND S.Status = 'Accident'
GROUP BY ROLLUP (C.Nationality , S.Status )
ORDER BY COUNT(*) DESC 
LIMIT 1;

--Exercício 1 Letra d
SELECT C.name, C.Nationality , S.Status , COUNT(*)
FROM Results Re
JOIN Constructors C ON C.ConstructorID = Re.ConstructorID
JOIN Status S ON S.StatusID = Re.StatusID
WHERE C.Nationality = 'Brazilian' AND S.Status = 'Accident'
GROUP BY ROLLUP (C.name, C.Nationality , S.Status )
ORDER BY COUNT(*) DESC;
