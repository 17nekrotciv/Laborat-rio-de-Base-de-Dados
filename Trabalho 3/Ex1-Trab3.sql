SELECT
	a.name Corrida,
	a.year Ano,
	b.lap Volta,
	b.milliseconds Msegundos,
	c.forename Nome,
	c.surname Sobrenome,
	Min(b.time) OVER (Partition by lap) Mín,
	Max(b.time) OVER (Partition by lap) Max
FROM races a 
INNER JOIN laptimes b ON (b.raceid = a.raceid)
INNER JOIN driver c ON (c.driverid = b.driverid)
ORDER BY a.name, a.year, b.lap;
	