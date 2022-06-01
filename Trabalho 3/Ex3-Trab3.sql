SELECT
	a.name Corrida,
	a.year Ano,
	c.forename Nome,
	c.surname Sobrenome,
	ROUND(AVG(b.milliseconds) OVER (Partition by b.raceid,b.driverid), 2) Tempo_Médio,
	Rank() OVER (Partition by a.raceid ORDER BY b.duration) Rank
FROM races a 
INNER JOIN pitstops b ON (b.raceid = a.raceid)
INNER JOIN driver c ON (c.driverid = b.driverid)
ORDER BY a.name, a.year, Rank;