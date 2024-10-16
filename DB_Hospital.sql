# sintaxe para criar base de dados
CREATE DATABASE Hospital; 
USE HOSPITAL;
#sintaxe para criar a tabela Mãe
CREATE TABLE Mae(
	id_mae INT PRIMARY KEY,
	nome VARCHAR(20) NOT NULL,
	morada VARCHAR(20) NOT NULL,
	contacto int,
	data_nascimento DATE NOT NULL,
	FOREIGN KEY(id_bebe) REFERENCES Bebe(id_bebe),
	FOREIGN KEY(id_medico) REFERENCES Medico( id_medico)
);
#sintaxe para criar tabela Bebé
CREATE TABLE Bebe(
	id_bebe INT PRIMARY KEY,
	nome varchar(50) NOT NULL,
	data_nascimento date not null,	
    
	peso DOUBLE,
	altura DOUBLE,
	foreign key(id_medico) references Medico(id_medico)
);
#sintaxe para criar tabela Médico

create table Medico(
	id_medico INT PRIMARY KEY,
	contacto int,
	especialidade varchar(100),
	foreign key(id_bebe)references Bebe(id_bebe),
	foreign key(id_mae) references Mae(id_mae)
);