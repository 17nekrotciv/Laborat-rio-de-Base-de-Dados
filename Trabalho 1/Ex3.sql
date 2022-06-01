SELECT
	Continent,
	COUNT(Ident) amountAirports
FROM Airports
GROUP BY Continent