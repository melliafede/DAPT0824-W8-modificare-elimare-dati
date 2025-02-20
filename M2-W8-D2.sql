-- Creazione database per gestire le anagrafiche degli store di un'ipotetica azienda
create database stores;

-- Selezione del database in uso
use stores;

-- Creazione tabella per la gestione delle aree geografiche
create table Region (
	ID int auto_increment primary key,
    citta varchar(50) not null,
    regione varchar(50),
    area_geografica varchar(50) -- Nord, Centro, Sud
);

-- Mostra tabella Region
select * from Region;

-- Creazione tabella per la gestione degli store
create table Store (
	ID int auto_increment primary key,
    nome varchar(50) not null,
    data_apertura date,
    regionID int not null,
    foreign key (regionID) references Region(ID)
);

-- Mostra tabella Store
select * from Store;

-- Popolazione tabella regione
INSERT INTO Region (citta, regione, area_geografica) VALUES
('Milano', 'Lombardia', 'Nord'),
('Torino', 'Piemonte', 'Nord'),
('Genova', 'Liguria', 'Nord'),
('Bologna', 'Emilia-Romagna', 'Nord'),
('Firenze', 'Toscana', 'Centro'),
('Roma', 'Lazio', 'Centro'),
('Napoli', 'Campania', 'Sud'),
('Bari', 'Puglia', 'Sud'),
('Palermo', 'Sicilia', 'Sud'),
('Cagliari', 'Sardegna', 'Sud');

-- Popolazione tabella store    
INSERT INTO Store (nome, data_apertura, regionID) VALUES
('Store Milano Centro', '2015-03-15', 1),
('Store Torino Porta Nuova', '2018-07-10', 2),
('Store Genova Mare', '2020-09-25', 3),
('Store Bologna Centrale', '2016-06-20', 4),
('Store Firenze Duomo', '2019-11-05', 5),
('Store Roma Termini', '2017-04-30', 6),
('Store Napoli Vesuvio', '2021-08-12', 7),
('Store Bari Vecchia', '2014-12-01', 8),
('Store Palermo Centro', '2022-01-18', 9),
('Store Cagliari Marina', '2013-05-22', 10);

delete from Store where id = 3;

select * from Store;




