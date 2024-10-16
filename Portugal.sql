CREATE DATABASE Portugal;
USE portugal;

CREATE TABLE Cidades(
	codigo_postal INT  PRIMARY KEY,
	nome_cidade VARCHAR(20) NOT NULL
);

SELECT *FROM Cidades;