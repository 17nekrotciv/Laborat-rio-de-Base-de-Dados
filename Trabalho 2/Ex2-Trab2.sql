--Exercício 2
SELECT A.IsoCountry , A.City, COUNT(*)
FROM Airports A
GROUP BY CUBE ( A.IsoCountry , A.City);

--Exercício 2 Letra a
SELECT A.IsoCountry , A.City, COUNT(*)
FROM Airports A
WHERE A.IsoCountry = 'BR'
GROUP BY CUBE ( A.IsoCountry , A.City );

--Exercício 2 Letra b
SELECT A.IsoCountry , A.City, COUNT(*)
FROM Airports A
WHERE A.IsoCountry = 'BR'
GROUP BY CUBE ( A.IsoCountry , A.City )
ORDER BY COUNT(*) DESC
LIMIT 8