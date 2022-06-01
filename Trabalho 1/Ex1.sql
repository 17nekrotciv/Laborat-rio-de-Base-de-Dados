SELECT 
	SUM(a.Points) TotalPoints,
	b.DriverRef,
	c.Year
FROM DriverStandings a
INNER JOIN Driver b ON (b.DriverId = a.DriverId)
INNER JOIN Races c ON (c.RaceId = a.RaceId)
GROUP BY c.Year, b.DriverRef
ORDER BY c.Year DESC, TotalPoints DESC