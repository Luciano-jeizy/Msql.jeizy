SELECT *FROM cidades;
use cidades;

#Exercício1
ALTER TABLE  cidades 
	RENAME TO Codigo_Postal;

#Exercício2
SELECT *FROM Codigo_Postal;

#Exercício 3
ALTER TABLE  Codigo_Postal RENAME COLUMN Area to   Area_Km;
ALTER TABLE Codigo_Postal RENAME COLUMN Area_km to Area_Km2;

#Exercício 4
SELECT AVG(Area_Km2 )
	AS media_Area 
	FROM codigo_postal;	

#Exercício 5
SELECT Nome, codigo_postal
	FROM codigo_postal
	WHERE Area_Km2 > 80;

#eXERCÍCIO 6
SELECT *FROM codigo_postal
	WHERE codigo_postal = 7830;
