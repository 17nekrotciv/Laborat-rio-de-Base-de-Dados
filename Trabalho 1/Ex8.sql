SELECT * INTO Countries2 FROM Countries;

DELETE FROM Countries2 a 
WHERE a.Code NOT IN (SELECT 
						b.IsoCountry
					 FROM Airports b
					 GROUP BY b.IsoCountry
					 HAVING COUNT(*) < 10);