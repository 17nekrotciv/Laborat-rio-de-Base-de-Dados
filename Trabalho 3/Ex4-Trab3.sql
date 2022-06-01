SELECT DISTINCT Nationality,
	ARRAY_AGG(Name) OVER(Partition by Nationality ) array_final
FROM Constructors
GROUP BY Nationality, Name
ORDER BY Nationality;