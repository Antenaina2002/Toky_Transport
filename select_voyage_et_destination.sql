CREATE DATABASE voyage_destination;

CREATE TABLE voyage(
    id_voyage bigserial primary key,
    date_voyage date not null, 
    heure_dep time not null, 
    id_offre int REFERENCES offre(id_offre), 
    id_vehicule int REFERENCES vehicule(id_vehicule),
    id_ville_depart int not null REFERENCES ville(id_ville),
    id_ville_arrivee int not null REFERENCES ville(id_ville)
);

CREATE TABLE ville(
    id_ville serial primary key,
    nom_ville varchar(100) not null
);

CREATE TABLE offre(
  id_offre serial primary key,
  tarif int not null check(tarif > 0),
  label varchar(100) not null
);

CREATE TABLE vehicule(
    id_vehicule serial primary key,
    matricule varchar(8),
    nb_place int not null,
    status boolean
);

--INSERT
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

/*Insert into offre (tarif,label) values (15000, 'Lite'),(20000, 'Premium'), (40000, 'Lite'), (50000, 'Premium'), 
(30000, 'Lite'), (40000, 'Premium'), (35000, 'Lite'), (45000, 'Premium');*/

--SELECT
/*select id_voyage, nom_ville FROM voyage INNER JOIN ville ON voyage.id_ville_arrivee=ville.id_ville;*/