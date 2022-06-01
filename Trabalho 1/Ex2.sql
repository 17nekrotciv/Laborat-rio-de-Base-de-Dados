SELECT
	Year,
	COUNT(RaceId) AmountRaces
FROM Races
GROUP BY Year
ORDER BY AmountRaces DESC