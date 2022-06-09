CREATE DATABASE Select_réservation;

CREATE TABLE client(
    id_client bigserial primary key,
    nom varchar(150) not null,
    prenom varchar(150),
    cin varchar(12),
    contact varchar(15)
);

CREATE TABLE offre(
  id_offre serial primary key,
  tarif int not null check(tarif > 0),
  label varchar(100) not null
);

CREATE TABLE ville(
    id_ville serial primary key,
    nom_ville varchar(100) not null
);

CREATE TABLE vehicule(
    id_vehicule serial primary key,
    matricule varchar(8),
    nb_place int not null,
    status boolean
);

CREATE TABLE voyage(
    id_voyage bigserial primary key,
    date_voyage date not null, 
    heure_dep time not null, 
    id_offre int REFERENCES offre(id_offre), 
    id_vehicule int REFERENCES vehicule(id_vehicule),
    id_ville_depart int not null REFERENCES ville(id_ville),
    id_ville_arrivee int not null REFERENCES ville(id_ville)
);

CREATE TABLE reserver(
    id_client int not null REFERENCES client(id_client),
    id_voyage int REFERENCES voyage(id_voyage),
    date_reservation date DEFAULT current_date,
    place int not null, 
    montant_paye int check (montant_paye > 0) DEFAULT 0
);
--INSERT
/*Insert into client (nom, prenom, cin, contact) values ('RONDRARIMALALA', 'Michellah', '203158796203', '+261345988745'),
('RAKOTONDRAVELO', 'Rija', '102335448695', '+261335879948'),('RANDRIAMPARANY', 'Jonatana', '256447663214', '+261395488795'), 
('RAKOTO', 'Bob', '265478963165', '+261396877512'),('RABARIARIVO', 'Marie Claire', '526489752123', '+261325689456'), 
('RATIARISON', 'Celine', '301598741452', '+261205146253'), ('RASOANAIVO', 'Toky Ny Aina', '321159753648', '+261345175362'), 
('RAJAONAH', 'Malala', '126459756153', '+261345986143'), ('RABARIARIVO', 'Haingo', '201341651844', '+261325587945'), 
('RABEKOTO', 'Tahiry', '211458796365', '+2616654879'), ('NOMENJANAHARY', 'Tiavina', '201556897425', '+261345988745');*/

/*Insert into offre (tarif,label) values (15000, 'Lite'),(20000, 'Premium'), (40000, 'Lite'), (50000, 'Premium'), 
(30000, 'Lite'), (40000, 'Premium'), (35000, 'Lite'), (45000, 'Premium');*/

/*Insert into ville (nom_ville) values ('Antananarivo'),('Antsirabe'),('Fianarantsoa'),('Toamasina'),('Diego'),('Morondava');*/

/*insert into voyage(date_voyage, heure_dep, id_offre,id_vehicule, id_ville_depart, id_ville_arrivee) values ('2022-06-10', '09:00:00',1,1,1,4 ),
('2022-01-10', '09:00:00',1,3,1,4 ),('2022-02-10', '09:00:00',1,2,1,4 ),('2022-06-11', '09:00:00',1,1,1,4 ),('2022-06-12', '09:00:00',1,3,1,4 ),
('2022-06-12', '09:50:00',1,1,1,4 ),('2022-06-15', '09:00:00',1,2,3,4 ),('2022-06-13', '09:00:00',1,3,1,4 ),('2022-06-11', '09:00:00',3,1,1,4 ),
('2022-07-01', '09:00:00',1,3,1,4 );*/

/*insert into vehicule (matricule,nb_place,status) values ('5674 WWT', 10,'true'),('7513 TBA', 16,'true'),('9819 TBU', 10,'true'),
('5512 TBT', 16,'true'),('4622 TBD', 10,'true'),('7986 WWT', 16,'true'),('2024 TBF', 10,'true'),('3556 TBD', 16,'true'),('7659 TBA', 10,'false'),
('6615 TBU', 16,'false');*/

/*insert into reserver values (1,1,'2022-01-01',1,10000),(2,1,'2021-01-01',5,20000),(3,1,current_date,1,30000),(4,2,'2022-04-01',4,40000),
(5,2,'2022-04-12',7,35000),(6,2,'2022-04-30',2,20000),(7,3,'2022-04-30',1,20000),(8,3,'2022-05-12',3,20000),(9,4,'2022-06-12',2,15000),
(10,5,'2022-06-30',1,16000);*/

--SELECT
/*SELECT nom, prenom, date_reservation, date_voyage, nom_ville FROM client cl INNER JOIN reserver r ON cl.id_client=r.id_client INNER JOIN 
voyage v ON v.id_voyage=r.id_voyage INNER JOIN ville vil ON vil.id_ville=v.id_ville_arrivee;*/