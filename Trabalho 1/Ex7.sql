SELECT 
	a.Name,
	(SELECT 
		COUNT(b.Ident)
	FROM Airports b
	WHERE b.IsoCountry = a.Code) NumberAirports,
	(SELECT 
		COUNT(c.geonameId)
	FROM Geocities15K c
	WHERE c.Country = a.Code) NumberCities
FROM Countries a