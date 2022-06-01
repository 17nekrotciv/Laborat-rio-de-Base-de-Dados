--Exercício 3
SELECT C.Name, R.YEAR, COUNT(*)
FROM Results Re
JOIN Constructors C ON C.ConstructorID = Re.ConstructorID
JOIN Races R ON R.RaceId = Re.RaceId
WHERE Re.position = '1'
GROUP BY ROLLUP (C.name, R.YEAR)
ORDER BY C.name DESC, R.YEAR;

--Exercício 3 Letra a
SELECT C.Name, R.YEAR, COUNT(*)
FROM Results Re
JOIN Constructors C ON C.ConstructorID = Re.ConstructorID
JOIN Races R ON R.RaceId = Re.RaceId
WHERE Re.position = '1' AND C.name = 'Alfa Romeo'
GROUP BY ROLLUP (C.name, R.YEAR)
ORDER BY C.name DESC, R.YEAR

--Exercício 3 Letra b
SELECT C.Name, R.YEAR, COUNT(*)
FROM Results Re
JOIN Constructors C ON C.ConstructorID = Re.ConstructorID
JOIN Races R ON R.RaceId = Re.RaceId
WHERE Re.position = '1' AND R.YEAR = '2010'
GROUP BY ROLLUP (C.name, R.YEAR)
ORDER BY C.name DESC, R.YEAR