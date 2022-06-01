ALTER TABLE Qualifying ADD COLUMN IF NOT EXISTS Pole_Position VARCHAR(10);

UPDATE Qualifying SET Pole_Position = 'Pole' WHERE Position = 1;