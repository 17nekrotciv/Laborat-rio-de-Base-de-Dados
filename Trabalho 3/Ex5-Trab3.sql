
SELECT p.raceid,
	p.name,
	p.year,
	p.forename,
	p.surname,
	p.tempo,
	( p.tempo - Lag(p.tempo,1,0) OVER(Partition by p.raceid)) desvantagem
FROM(
	SELECT
	DISTINCT a.raceid,
	a.name,
	a.year,
	c.forename,
	c.surname,
	SUM(b.milliseconds) OVER (Partition by b.raceid, b.driverid) Tempo
FROM races a 
INNER JOIN laptimes b ON (b.raceid = a.raceid)
INNER JOIN driver c ON (c.driverid = b.driverid)
ORDER BY a.name, a.year, Tempo
)p ORDER BY p.name, p.year, p.Tempo
	