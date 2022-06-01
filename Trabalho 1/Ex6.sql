SELECT 
	 b.DriverRef,
	 MAX((SELECT 
	  	COUNT(c.Position) 
	  FROM Qualifying c 
	  WHERE a.DriverId = c.driverId
	    AND c.Position = 1)) Total
FROM Qualifying a
INNER JOIN Driver b ON (b.DriverId = a.DriverId)
GROUP BY b.DriverRef
ORDER BY Total DESC
LIMIT 1