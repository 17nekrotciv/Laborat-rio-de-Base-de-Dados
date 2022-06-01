SELECT C.Name, C.Nationality, COUNT(*)
FROM Results R
JOIN Constructors C ON C.ConstructorId = R.ConstructorId
WHERE R.Position = '1'
GROUP BY  C.Nationality, C.Name
ORDER BY C.Nationality, COUNT



-----------Letra A-------------
SELECT C.Nationality, COUNT(*),
	SUM(COUNT(*)) OVER(Partition by C.Nationality) sum
FROM Results R
JOIN Constructors C ON C.ConstructorId = R.ConstructorId
WHERE R.Position = '1'
GROUP BY C.Nationality


-----------Letra B-------------
SELECT C.Name, C.Nationality, COUNT(*) AS vitorias_individuais,
	SUM(COUNT(*))OVER(Partition by C.Nationality) vitorias_nacionais,
	RANK() OVER(Partition BY C.Nationality ORDER by Count(*)DESC,C.Name) rank	
FROM Results R
JOIN Constructors C ON C.ConstructorId = R.ConstructorId
WHERE R.Position = '1'
GROUP BY C.Name ,C.Nationality
