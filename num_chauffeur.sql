CREATE DATABASE num_chauffeur;

CREATE TABLE chauffeur (
    id_chauffeur serial primary key, 
    nom varchar(150) not null,
    prenom varchar(150),
    cin varchar(12),
    contact varchar(15),
    email varchar(150) not null
);

CREATE TABLE conduire(
    id_chauffeur int not null REFERENCES chauffeur(id_chauffeur) not null,
    id_vehicule int not null REFERENCES vehicule(id_vehicule)
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

CREATE TABLE ville(
    id_ville serial primary key,
    nom_ville varchar(100) not null
);

CREATE TABLE offre(
  id_offre serial primary key,
  tarif int not null check(tarif > 0),
  label varchar(100) not null
);

--INSERT
/*insert into vehicule (matricule,nb_place,status) values ('5674 WWT', 10,'true'),('7513 TBA', 16,'true'),
('9819 TBU', 10,'true'),('5512 TBT', 16,'true'),('4622 TBD', 10,'true'),('7986 WWT', 16,'true'),
('2024 TBF', 10,'true'),('3556 TBD', 16,'true'),('7659 TBA', 10,'false'),('6615 TBU', 16,'false');*/

/*Insert into offre (tarif,label) values (15000, 'Lite'),(20000, 'Premium'), (40000, 'Lite'), (50000, 'Premium'), 
(30000, 'Lite'), (40000, 'Premium'), (35000, 'Lite'), (45000, 'Premium');*/

/*Insert into ville (nom_ville) values ('Antananarivo'),('Antsirabe'),('Fianarantsoa'),('Toamasina'),('Diego'),('Morondava');*/

/*insert into voyage(date_voyage, heure_dep, id_offre,id_vehicule, id_ville_depart, id_ville_arrivee) values ('2022-06-10', '09:00:00',1,1,1,4 ),
('2022-01-10', '09:00:00',1,3,1,4 ),('2022-02-10', '09:00:00',1,2,1,4 ),('2022-06-11', '09:00:00',1,1,1,4 ),('2022-06-12', '09:00:00',1,3,1,4 ),
('2022-06-12', '09:50:00',1,1,1,4 ),('2022-06-15', '09:00:00',1,2,3,4 ),('2022-06-13', '09:00:00',1,3,1,4 ),('2022-06-11', '09:00:00',3,1,1,4 ),
('2022-07-01', '09:00:00',1,3,1,4 );*/

/*Insert into chauffeur (nom,prenom,cin,contact,email) values ('ANDRIAMIERA', 'Mbola','117253058750','+261345078966', 'mbola@gmail.com'),
('RANAIVO', 'Hasina','118253068842','+261344283617', 'hasina@gmail.com'),('RAVOAVY', 'Monja','120586358214','+261348875628', 'monja@yahoo.fr'),
('ANDRIANAIVOSON', 'Fabrice','141563258745','+261332587557', 'fabrice@gmail.com'),('SOLO', 'Fitia','121589653471','+261325874562', 'fitia@gmail.com'),
('RAKOTOARIMALALA','Fitahiana','141258975632','+261335874155', 'fita@gmail.com'),
('RANDRIAMIARISOA', 'Safidy','141258654232','+261332587966', 'safidy@gmail.com'),('ANDRIAMBALO', 'Tsitohaina','121458658745','+261345698977', 'tsito@yahoo.com'),
('SIZA', 'Harisoa','142589856325','+261323334665', 'soa@gmail.com'),('FENOSOA', 'Mirado','142565855422','+261348966574', 'mirado@gmail.com');*/

--insert into conduire  values (2, 1),(5, 2),(6, 3),(1, 4),(3,1),(9, 5),(4,2),(7,3),(10, 7),(8, 1);

--SELECT
/*SELECT prenom, contact, matricule FROM chauffeur ch INNER JOIN conduire con ON ch.id_chauffeur=con.id_chauffeur INNER JOIN vehicule v ON v.id_vehicule=con.id_b=vehicule;*/
